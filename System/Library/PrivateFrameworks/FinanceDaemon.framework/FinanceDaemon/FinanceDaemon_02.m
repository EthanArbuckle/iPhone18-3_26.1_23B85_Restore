uint64_t sub_226AE79C0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[47];
  v3 = v0[39];
  v2 = v0[40];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[36];
  v7 = v0[33];
  v8 = v0[30];

  v9 = v0[1];

  return v9();
}

uint64_t sub_226AE7A84()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BankConnectAccountMatcher.Configuration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BankConnectAccountMatcher.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_226AE7BB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_226AE7C00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226AE7C7C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  matched = type metadata accessor for AccountMatchResult(0);
  v2[4] = matched;
  v4 = *(matched - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A64A0, &qword_226D71310) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_226D6715C();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v10 = sub_226D67C0C();
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AE7E5C, 0, 0);
}

id sub_226AE7E5C()
{
  v145 = v0;
  v1 = v0[2];
  v130 = *(v1 + 16);
  if (v130)
  {
    v2 = 0;
    v3 = 0;
    v4 = v0[15];
    v5 = *(v4 + 16);
    v4 += 16;
    v129 = v5;
    v123 = (*(v4 + 64) + 32) & ~*(v4 + 64);
    v128 = v1 + v123;
    v6 = v0[9];
    v126 = (v6 + 104);
    v137 = (v6 + 56);
    v141 = (v6 + 32);
    v139 = (v6 + 8);
    v124 = (v4 + 16);
    v127 = (v4 - 8);
    v131 = *(v4 + 56);
    v7 = *MEMORY[0x277CC6B58];
    v135 = *MEMORY[0x277CC6B58];
    v136 = *MEMORY[0x277CC6B50];
    v125 = MEMORY[0x277D84F90];
    v132 = v6;
    while (1)
    {
      v13 = v0[3];
      v129(v0[17], v128 + v3 * v131, v0[14]);
      result = [v13 paymentApplications];
      if (!result)
      {
        break;
      }

      v15 = result;
      v134 = v3;
      sub_226AE59B4(0, &qword_27D7A64A8, 0x277D37FE0);
      sub_226AEE9F8();
      v16 = sub_226D6E89C();

      sub_226AE5A94(v16);
      v18 = v17;
      v133 = v2;

      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = (v18 + 32);
        v21 = MEMORY[0x277D84F90];
        while (1)
        {
          v24 = *v20++;
          v23 = v24;
          if (v24 <= 5)
          {
            if (((1 << v23) & 0x2A) != 0)
            {
              v25 = v136;
LABEL_14:
              v26 = v0[10];
              v28 = v0[7];
              v27 = v0[8];
              (*v126)(v28, v25, v27);
              (*v137)(v28, 0, 1, v27);
              v29 = *v141;
              (*v141)(v26, v28, v27);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v21 = sub_226BBAE1C(0, v21[2] + 1, 1, v21);
              }

              v31 = v21[2];
              v30 = v21[3];
              if (v31 >= v30 >> 1)
              {
                v21 = sub_226BBAE1C(v30 > 1, v31 + 1, 1, v21);
              }

              v32 = v0[10];
              v33 = v0[8];
              v21[2] = v31 + 1;
              v29(v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v31, v32, v33);
              goto LABEL_9;
            }

            v25 = v135;
            if (((1 << v23) & 0x14) != 0)
            {
              goto LABEL_14;
            }
          }

          v22 = v0[7];
          (*v137)(v22, 1, 1, v0[8]);
          sub_226AC47B0(v22, &qword_27D7A64A0, &qword_226D71310);
LABEL_9:
          if (!--v19)
          {
            goto LABEL_20;
          }
        }
      }

      v21 = MEMORY[0x277D84F90];
LABEL_20:
      v34 = v0[8];

      v35 = v21[2];
      v36 = sub_226AEE790(&qword_27D7A6230, MEMORY[0x277CC6B60]);
      v37 = MEMORY[0x22AA8A960](v35, v34, v36);
      v144[0] = v37;
      v38 = v21[2];
      if (v38)
      {
        v39 = v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v138 = *(v6 + 72);
        v40 = *(v6 + 16);
        do
        {
          v42 = v0[11];
          v41 = v0[12];
          v43 = v0[8];
          v40(v42, v39, v43);
          v44 = v42;
          v45 = v139;
          sub_226C24E64(v41, v44);
          (*v139)(v41, v43);
          v39 += v138;
          --v38;
        }

        while (v38);

        v46 = v144[0];
        v6 = v132;
      }

      else
      {
        v46 = v37;

        v45 = v139;
      }

      v47 = v0[17];
      v48 = v0[13];
      sub_226D67B6C();
      if (*(v46 + 16))
      {
        v49 = v0[13];
        v50 = v0[8];
        v51 = *(v46 + 40);
        v52 = sub_226D6E2FC();
        v53 = -1 << *(v46 + 32);
        v54 = v52 & ~v53;
        if ((*(v46 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
        {
          v55 = ~v53;
          v56 = *(v132 + 72);
          v57 = *(v132 + 16);
          while (1)
          {
            v58 = v0[12];
            v59 = v0[8];
            v57(v58, *(v46 + 48) + v54 * v56, v59);
            sub_226AEE790(&qword_27D7A6548, MEMORY[0x277CC6B60]);
            v60 = sub_226D6E35C();
            v61 = *v139;
            (*v139)(v58, v59);
            if (v60)
            {
              break;
            }

            v54 = (v54 + 1) & v55;
            if (((*(v46 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
            {
              goto LABEL_3;
            }
          }

          v66 = v0[16];
          v67 = v0[17];
          v69 = v0[13];
          v68 = v0[14];
          v70 = v0[8];

          v61(v69, v70);
          v71 = *v124;
          (*v124)(v66, v67, v68);
          v72 = v125;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_226AE1E98(0, *(v125 + 16) + 1, 1);
            v72 = v125;
          }

          v2 = v133;
          v12 = v134;
          v6 = v132;
          v74 = *(v72 + 16);
          v73 = *(v72 + 24);
          if (v74 >= v73 >> 1)
          {
            sub_226AE1E98(v73 > 1, v74 + 1, 1);
            v72 = v125;
          }

          v75 = v0[16];
          v76 = v0[14];
          *(v72 + 16) = v74 + 1;
          v125 = v72;
          v71(v72 + v123 + v74 * v131, v75, v76);
        }

        else
        {
LABEL_3:
          v8 = v0[17];
          v10 = v0[13];
          v9 = v0[14];
          v11 = v0[8];

          (*v139)(v10, v11);
          (*v127)(v8, v9);
          v2 = v133;
          v12 = v134;
          v6 = v132;
        }
      }

      else
      {
        v62 = v0[17];
        v64 = v0[13];
        v63 = v0[14];
        v65 = v0[8];

        (*v45)(v64, v65);
        (*v127)(v62, v63);
        v2 = v133;
        v12 = v134;
      }

      v3 = v12 + 1;
      if (v3 == v130)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
  }

  else
  {
    v125 = MEMORY[0x277D84F90];
LABEL_38:
    v77 = *(v125 + 16);
    if (v77)
    {
      v78 = v0[15];
      v79 = v0[5];
      v142 = v0[4];
      v144[0] = MEMORY[0x277D84F90];
      sub_226AE1E54(0, v77, 0);
      v80 = v144[0];
      v81 = *(v78 + 16);
      v78 += 16;
      v140 = v81;
      v82 = v125 + ((*(v78 + 64) + 32) & ~*(v78 + 64));
      v83 = *(v78 + 56);
      v84 = *MEMORY[0x277CC75D0];
      do
      {
        v85 = v0[6];
        v140(v85, v82, v0[14]);
        v86 = *(v142 + 20);
        v87 = sub_226D68CBC();
        (*(*(v87 - 8) + 104))(v85 + v86, v84, v87);
        v144[0] = v80;
        v89 = *(v80 + 16);
        v88 = *(v80 + 24);
        if (v89 >= v88 >> 1)
        {
          sub_226AE1E54(v88 > 1, v89 + 1, 1);
          v80 = v144[0];
        }

        v90 = v0[6];
        *(v80 + 16) = v89 + 1;
        sub_226AEF064(v90, v80 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v89, type metadata accessor for AccountMatchResult);
        v82 += v83;
        --v77;
      }

      while (v77);
      v92 = v0[16];
      v91 = v0[17];
      v94 = v0[12];
      v93 = v0[13];
      v96 = v0[10];
      v95 = v0[11];
      v98 = v0[6];
      v97 = v0[7];

      v99 = v0[1];

      return v99(v80);
    }

    else
    {

      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v100 = v0[3];
      v101 = sub_226D6E07C();
      __swift_project_value_buffer(v101, qword_28105F710);
      v102 = v100;
      v103 = sub_226D6E05C();
      v104 = sub_226D6E9CC();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = v0[8];
        v106 = v0[3];
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v144[0] = v108;
        *v107 = 136315138;
        sub_226AE8A00();
        sub_226AEE790(&qword_27D7A6230, MEMORY[0x277CC6B60]);
        v109 = sub_226D6E8AC();
        v111 = v110;

        v112 = sub_226AC4530(v109, v111, v144);

        *(v107 + 4) = v112;
        _os_log_impl(&dword_226AB4000, v103, v104, "Failed to match an account. Can't find an account with one of the types: %s.", v107, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v108);
        MEMORY[0x22AA8BEE0](v108, -1, -1);
        MEMORY[0x22AA8BEE0](v107, -1, -1);
      }

      v113 = v0[16];
      v114 = v0[17];
      v115 = v0[12];
      v116 = v0[13];
      v117 = v0[10];
      v118 = v0[11];
      v119 = v0[7];
      v143 = v0[6];
      v120 = sub_226D6B66C();
      sub_226AEE790(&qword_27D7A6468, MEMORY[0x277CC7FB8]);
      swift_allocError();
      (*(*(v120 - 8) + 104))(v121, *MEMORY[0x277CC7F88], v120);
      swift_willThrow();

      v122 = v0[1];

      return v122();
    }
  }

  return result;
}

id sub_226AE8A00()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A64A0, &qword_226D71310);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  v6 = sub_226D6715C();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 paymentApplications];
  if (result)
  {
    v11 = result;
    sub_226AE59B4(0, &qword_27D7A64A8, 0x277D37FE0);
    sub_226AEE9F8();
    v12 = sub_226D6E89C();

    sub_226AE5A94(v12);
    v14 = v13;

    v15 = *(v14 + 16);
    if (v15)
    {
      v28 = *MEMORY[0x277CC6B50];
      v29 = (v32 + 104);
      v16 = (v32 + 56);
      v17 = (v32 + 32);
      v18 = MEMORY[0x277D84F90];
      v27 = *MEMORY[0x277CC6B58];
      v19 = 32;
      v30 = v14;
      v31 = v9;
      while (1)
      {
        v20 = *(v14 + v19);
        if (v20 <= 5)
        {
          if (((1 << v20) & 0x2A) != 0)
          {
            v21 = v28;
LABEL_10:
            (*v29)(v5, v21, v6);
            (*v16)(v5, 0, 1, v6);
            v22 = *v17;
            (*v17)(v9, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_226BBAE1C(0, v18[2] + 1, 1, v18);
            }

            v24 = v18[2];
            v23 = v18[3];
            if (v24 >= v23 >> 1)
            {
              v18 = sub_226BBAE1C(v23 > 1, v24 + 1, 1, v18);
            }

            v18[2] = v24 + 1;
            v25 = v18 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v24;
            v9 = v31;
            v22(v25, v31, v6);
            v14 = v30;
            goto LABEL_5;
          }

          v21 = v27;
          if (((1 << v20) & 0x14) != 0)
          {
            goto LABEL_10;
          }
        }

        (*v16)(v5, 1, 1, v6);
        sub_226AC47B0(v5, &qword_27D7A64A0, &qword_226D71310);
LABEL_5:
        v19 += 8;
        if (!--v15)
        {

          goto LABEL_17;
        }
      }
    }

    v18 = MEMORY[0x277D84F90];
LABEL_17:
    v26 = sub_226AE4230(v18);

    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226AE8D7C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AEF2B8;

  return sub_226AE7C7C(a1, a2);
}

uint64_t sub_226AE8E40(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6540, &qword_226D71528) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  matched = type metadata accessor for AccountMatchResult(0);
  v2[5] = matched;
  v5 = *(matched - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_226D67C0C();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AE8F94, 0, 0);
}

uint64_t sub_226AE8F94()
{
  v1 = v0[2];
  v52 = *(v1 + 16);
  if (v52)
  {
    v2 = 0;
    v3 = v0[9];
    v45 = v0[5];
    v4 = *(v3 + 16);
    v3 += 16;
    v51 = v4;
    v50 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v49 = *(v3 + 56);
    v42 = *MEMORY[0x277CC75C8];
    v43 = (v3 - 8);
    v44 = (v3 + 16);
    v46 = v0[6];
    v48 = (v46 + 56);
    v47 = *MEMORY[0x277CC75D0];
    v5 = MEMORY[0x277D84F90];
    v4(v0[10], v50, v0[8]);
    while (1)
    {
      v10 = *(sub_226D67BEC() + 16);

      v11 = v47;
      if (v10)
      {
        v12 = v0[10];
        v13 = v0[3];
        v14 = sub_226D67BEC();
        v15 = sub_226AE3C28(v14);

        v16 = [v13 primaryAccountIdentifier];
        v17 = sub_226D6E39C();
        v19 = v18;

        if (!*(v15 + 16) || (v20 = *(v15 + 40), sub_226D6F2FC(), sub_226D6E42C(), v21 = sub_226D6F35C(), v22 = -1 << *(v15 + 32), v23 = v21 & ~v22, ((*(v15 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0))
        {
LABEL_3:
          v6 = v0[10];
          v7 = v0[8];
          v9 = v0[4];
          v8 = v0[5];

          (*v43)(v6, v7);
          (*v48)(v9, 1, 1, v8);
          sub_226AC47B0(v9, &qword_27D7A6540, &qword_226D71528);
          goto LABEL_4;
        }

        v24 = ~v22;
        while (1)
        {
          v25 = (*(v15 + 48) + 16 * v23);
          v26 = *v25 == v17 && v25[1] == v19;
          if (v26 || (sub_226D6F21C() & 1) != 0)
          {
            break;
          }

          v23 = (v23 + 1) & v24;
          if (((*(v15 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        v11 = v42;
      }

      v27 = v0[10];
      v29 = v0[7];
      v28 = v0[8];
      v31 = v0[4];
      v30 = v0[5];
      v32 = *(v45 + 20);
      v33 = sub_226D68CBC();
      (*(*(v33 - 8) + 104))(v31 + v32, v11, v33);
      (*v44)(v31, v27, v28);
      (*v48)(v31, 0, 1, v30);
      sub_226AEF064(v31, v29, type metadata accessor for AccountMatchResult);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_226BBAC18(0, v5[2] + 1, 1, v5);
      }

      v35 = v5[2];
      v34 = v5[3];
      if (v35 >= v34 >> 1)
      {
        v5 = sub_226BBAC18(v34 > 1, v35 + 1, 1, v5);
      }

      v36 = v0[7];
      v5[2] = v35 + 1;
      sub_226AEF064(v36, v5 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v35, type metadata accessor for AccountMatchResult);
LABEL_4:
      if (++v2 == v52)
      {
        goto LABEL_24;
      }

      v51(v0[10], v50 + v2 * v49, v0[8]);
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_24:
  v37 = v0[10];
  v38 = v0[7];
  v39 = v0[4];

  v40 = v0[1];

  return v40(v5);
}

uint64_t sub_226AE93D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE947C;

  return sub_226AE8E40(a1, a2);
}

uint64_t sub_226AE947C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_226AE9594(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6540, &qword_226D71528) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  matched = type metadata accessor for AccountMatchResult(0);
  v2[5] = matched;
  v5 = *(matched - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AE96A4, 0, 0);
}

uint64_t sub_226AE96A4()
{
  v59 = v0;
  v1 = [*(v0 + 24) primaryAccountNumberSuffix];
  v2 = sub_226D6E39C();
  v4 = v3;

  v5 = sub_226AE9C34(v2, v4);
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = *(*(v0 + 16) + 16);
    if (v9)
    {
      v54 = *(v0 + 48);
      v10 = (v54 + 48);
      v11 = *(sub_226D67C0C() - 8);
      v56 = *(v11 + 72);
      v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v13 = MEMORY[0x277D84F90];
      do
      {
        v15 = *(v0 + 32);
        v14 = *(v0 + 40);
        sub_226AE9DA4(*(v0 + 16) + v12, v5, v7, v15);
        if ((*v10)(v15, 1, v14) == 1)
        {
          sub_226AC47B0(*(v0 + 32), &qword_27D7A6540, &qword_226D71528);
        }

        else
        {
          v17 = *(v0 + 64);
          v16 = *(v0 + 72);
          sub_226AEF064(*(v0 + 32), v16, type metadata accessor for AccountMatchResult);
          sub_226AEF064(v16, v17, type metadata accessor for AccountMatchResult);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_226BBAC18(0, v13[2] + 1, 1, v13);
          }

          v19 = v13[2];
          v18 = v13[3];
          if (v19 >= v18 >> 1)
          {
            v13 = sub_226BBAC18(v18 > 1, v19 + 1, 1, v13);
          }

          v20 = *(v0 + 64);
          v13[2] = v19 + 1;
          sub_226AEF064(v20, v13 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v19, type metadata accessor for AccountMatchResult);
          v10 = (v54 + 48);
        }

        v12 += v56;
        --v9;
      }

      while (v9);
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }
  }

  else
  {

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 24);
    v22 = sub_226D6E07C();
    __swift_project_value_buffer(v22, qword_28105F710);
    v23 = v21;
    v24 = sub_226D6E05C();
    v25 = sub_226D6E9EC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 24);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v58 = v28;
      *v27 = 136315138;
      v29 = [v26 primaryAccountNumberSuffix];
      v30 = sub_226D6E39C();
      v32 = v31;

      v33 = sub_226AC4530(v30, v32, &v58);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_226AB4000, v24, v25, "Failed to match an account by PAN suffix. The pass doesn't have the Funding PAN suffix. primaryAccountNumberSuffix: %s.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x22AA8BEE0](v28, -1, -1);
      MEMORY[0x22AA8BEE0](v27, -1, -1);
    }

    v34 = *(v0 + 16);
    v35 = *(v34 + 16);
    v13 = MEMORY[0x277D84F90];
    if (v35)
    {
      v36 = *(v0 + 48);
      v57 = *(v0 + 40);
      v58 = MEMORY[0x277D84F90];
      sub_226AE1E54(0, v35, 0);
      v13 = v58;
      v55 = sub_226D67C0C();
      v37 = *(v55 - 8);
      v53 = *(v37 + 16);
      v38 = v34 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
      v39 = *(v37 + 72);
      v40 = *MEMORY[0x277CC75D0];
      do
      {
        v41 = *(v0 + 56);
        v53(v41, v38, v55);
        v42 = *(v57 + 20);
        v43 = sub_226D68CBC();
        (*(*(v43 - 8) + 104))(v41 + v42, v40, v43);
        v58 = v13;
        v45 = v13[2];
        v44 = v13[3];
        if (v45 >= v44 >> 1)
        {
          sub_226AE1E54(v44 > 1, v45 + 1, 1);
          v13 = v58;
        }

        v46 = *(v0 + 56);
        v13[2] = v45 + 1;
        sub_226AEF064(v46, v13 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v45, type metadata accessor for AccountMatchResult);
        v38 += v39;
        --v35;
      }

      while (v35);
    }
  }

  v48 = *(v0 + 64);
  v47 = *(v0 + 72);
  v49 = *(v0 + 56);
  v50 = *(v0 + 32);

  v51 = *(v0 + 8);

  return v51(v13);
}

uint64_t sub_226AE9C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6CCFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  v19[0] = a1;
  v19[1] = a2;
  sub_226D6CCCC();
  sub_226D6CCEC();
  v12 = *(v5 + 8);
  v12(v11, v4);
  sub_226AEEF6C();
  v13 = sub_226D6ECCC();
  v12(v9, v4);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = (v13 + 16 + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t sub_226AE9DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  v40[0] = a2;
  v40[1] = a3;
  v5 = sub_226D6A04C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v40 - v11;
  v13 = sub_226D6767C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  sub_226D67BAC();
  sub_226D6765C();
  v41 = *(v14 + 8);
  v41(v17, v13);
  (*(v6 + 104))(v10, *MEMORY[0x277CC7A90], v5);
  sub_226AEE790(&qword_27D7A6550, MEMORY[0x277CC7A98]);
  sub_226D6E53C();
  sub_226D6E53C();
  v18 = *(v6 + 8);
  v18(v10, v5);
  v18(v12, v5);
  if (v45 != v44)
  {
    v29 = sub_226D67C0C();
    v28 = v43;
    (*(*(v29 - 8) + 16))(v43, v42, v29);
LABEL_9:
    matched = type metadata accessor for AccountMatchResult(0);
    v32 = *(matched + 20);
    v33 = MEMORY[0x277CC75D0];
    goto LABEL_12;
  }

  v20 = v42;
  v19 = v43;
  sub_226D67BAC();
  v21 = sub_226D6766C();
  v23 = v22;
  v41(v17, v13);
  v24 = sub_226AE9C34(v21, v23);
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

    v30 = sub_226D67C0C();
    v28 = v19;
    (*(*(v30 - 8) + 16))(v19, v20, v30);
    goto LABEL_9;
  }

  v28 = v19;
  if (sub_226D6E4DC())
  {
  }

  else
  {
    v34 = sub_226D6E4DC();

    if ((v34 & 1) == 0)
    {
      v39 = type metadata accessor for AccountMatchResult(0);
      return (*(*(v39 - 8) + 56))(v19, 1, 1, v39);
    }
  }

  v35 = sub_226D67C0C();
  (*(*(v35 - 8) + 16))(v19, v20, v35);
  matched = type metadata accessor for AccountMatchResult(0);
  v32 = *(matched + 20);
  v33 = MEMORY[0x277CC75D8];
LABEL_12:
  v36 = *v33;
  v37 = sub_226D68CBC();
  (*(*(v37 - 8) + 104))(v28 + v32, v36, v37);
  return (*(*(matched - 8) + 56))(v28, 0, 1, matched);
}

uint64_t sub_226AEA258(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AEF2B8;

  return sub_226AE9594(a1, a2);
}

uint64_t sub_226AEA318(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_226D6EB9C();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  matched = type metadata accessor for TransactionsMatchStrategy(0);
  v3[13] = matched;
  v8 = *(matched - 8);
  v3[14] = v8;
  v3[15] = *(v8 + 64);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v9 = type metadata accessor for AccountMatchResult(0);
  v3[18] = v9;
  v10 = *(v9 - 8);
  v3[19] = v10;
  v11 = *(v10 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v12 = sub_226D67C0C();
  v3[25] = v12;
  v13 = *(v12 - 8);
  v3[26] = v13;
  v3[27] = *(v13 + 64);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  v3[30] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AEA584, 0, 0);
}

uint64_t sub_226AEA584()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = *(v1 + 20);
  *(v0 + 392) = v3;
  v4 = *(v2 + v3);
  *(v0 + 256) = v4;
  if (v4 < 1)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v25 = sub_226D6E07C();
    __swift_project_value_buffer(v25, qword_28105F710);
    v26 = sub_226D6E05C();
    v27 = sub_226D6E9EC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_226AB4000, v26, v27, "Transactions matching is turned off in the internal system settings.", v28, 2u);
      MEMORY[0x22AA8BEE0](v28, -1, -1);
    }

    v29 = v0;
    v30 = *(v0 + 56);

    v31 = *(v30 + 16);
    v32 = MEMORY[0x277D84F90];
    if (v31)
    {
      v33 = v29[26];
      v34 = v29[19];
      v66 = v29[18];
      v35 = v29[7];
      v71 = MEMORY[0x277D84F90];
      sub_226AE1E54(0, v31, 0);
      v32 = v71;
      v36 = *(v33 + 16);
      v33 += 16;
      v64 = v36;
      v37 = v35 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
      v38 = *(v33 + 56);
      v39 = *MEMORY[0x277CC75D0];
      v40 = v29;
      do
      {
        v41 = v40[20];
        v64(v41, v37, v40[25]);
        v42 = v40;
        v43 = *(v66 + 20);
        v44 = sub_226D68CBC();
        (*(*(v44 - 8) + 104))(v41 + v43, v39, v44);
        v46 = *(v71 + 16);
        v45 = *(v71 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_226AE1E54(v45 > 1, v46 + 1, 1);
        }

        v47 = v42[20];
        *(v71 + 16) = v46 + 1;
        sub_226AEF064(v47, v71 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v46, type metadata accessor for AccountMatchResult);
        v37 += v38;
        --v31;
        v40 = v42;
      }

      while (v31);
    }

    else
    {
      v40 = v29;
    }

    v53 = v40[31];
    v55 = v40[28];
    v54 = v40[29];
    v57 = v40[23];
    v56 = v40[24];
    v59 = v40[21];
    v58 = v40[22];
    v60 = v40[20];
    v61 = v40[17];
    v67 = v40[16];
    v69 = v40[12];

    v62 = v40[1];

    return v62(v32);
  }

  else
  {
    v5 = *(v0 + 56);
    v6 = *(v5 + 16);
    *(v0 + 264) = v6;
    v7 = MEMORY[0x277D84F90];
    v68 = v0;
    if (v6)
    {
      v8 = *(v0 + 208);
      v70 = MEMORY[0x277D84F90];
      sub_226AE1D68(0, v6, 0);
      v7 = v70;
      v9 = *(v8 + 16);
      v8 += 16;
      v10 = v5 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
      v63 = *(v8 + 56);
      v65 = v9;
      v11 = (v8 - 8);
      do
      {
        v12 = *(v0 + 232);
        v13 = *(v0 + 200);
        v65(v12, v10, v13);
        v14 = sub_226D67BFC();
        v16 = v15;
        (*v11)(v12, v13);
        v18 = *(v70 + 16);
        v17 = *(v70 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_226AE1D68((v17 > 1), v18 + 1, 1);
        }

        *(v70 + 16) = v18 + 1;
        v19 = v70 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
        v10 += v63;
        --v6;
      }

      while (v6);
      v1 = *(v0 + 104);
      v2 = *(v0 + 72);
    }

    v20 = *(v0 + 240);
    v21 = *(v0 + 248);
    v22 = *(v0 + 64);
    v23 = sub_226AE3C28(v7);
    v68[34] = v23;

    v68[35] = *(v2 + *(v1 + 28));
    v24 = swift_task_alloc();
    *(v24 + 16) = v22;
    *(v24 + 24) = v2;
    sub_226D6EB8C();
    v68[36] = 0;

    v48 = swift_task_alloc();
    v68[37] = v48;
    *v48 = v68;
    v48[1] = sub_226AEAB88;
    v49 = v68[31];
    v50 = v68[8];
    v51 = v68[9];

    return sub_226AECA38(v50, v23, v49);
  }
}

uint64_t sub_226AEAB88(uint64_t a1)
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 304) = a1;

  return MEMORY[0x2822009F8](sub_226AEACA8, 0, 0);
}

uint64_t sub_226AEACA8()
{
  v1 = *(v0 + 304);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v108 = *(v0 + 304);
    }

    v2 = sub_226D6EDFC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < *(v0 + 256))
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 304);
    v4 = sub_226D6E07C();
    __swift_project_value_buffer(v4, qword_28105F710);

    v5 = sub_226D6E05C();
    v6 = sub_226D6E9CC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      if (v1 >> 62)
      {
        v35 = *(v0 + 304);
        if (v1 < 0)
        {
          v36 = *(v0 + 304);
        }

        v8 = sub_226D6EDFC();
      }

      else
      {
        v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v37 = *(v0 + 304);

      *(v7 + 4) = v8;

      _os_log_impl(&dword_226AB4000, v5, v6, "Failed to match an account using Apple Pay tranactions. Insufficient CNS transactions to match an account: %ld", v7, 0xCu);
      MEMORY[0x22AA8BEE0](v7, -1, -1);
    }

    else
    {
      v15 = *(v0 + 304);
      swift_bridgeObjectRelease_n();
    }

    if (*(*(v0 + 72) + *(v0 + 392) + 8) == 1)
    {
      v39 = *(v0 + 248);
      v38 = *(v0 + 256);
      v40 = sub_226D6B66C();
      sub_226AEE790(&qword_27D7A6468, MEMORY[0x277CC7FB8]);
      swift_allocError();
      *v41 = v2;
      v41[1] = v38;
      (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277CC7FB0], v40);
      swift_willThrow();
      v42 = v39;
LABEL_22:
      sub_226AC47B0(v42, &qword_27D7A6558, &qword_226D7CCE0);
      goto LABEL_23;
    }

    v54 = *(v0 + 264);
    if (v54)
    {
      v55 = *(v0 + 208);
      v56 = *(v0 + 152);
      v121 = *(v0 + 144);
      v57 = *(v0 + 56);
      v126 = MEMORY[0x277D84F90];
      sub_226AE1E54(0, v54, 0);
      v58 = 0;
      v59 = v126;
      v60 = *(v55 + 16);
      v55 += 16;
      v117 = v60;
      v61 = v57 + ((*(v55 + 64) + 32) & ~*(v55 + 64));
      v62 = *(v55 + 56);
      v63 = *MEMORY[0x277CC75D0];
      do
      {
        v64 = *(v0 + 168);
        v117(v64, v61, *(v0 + 200));
        v65 = *(v121 + 20);
        v66 = sub_226D68CBC();
        (*(*(v66 - 8) + 104))(v64 + v65, v63, v66);
        v68 = *(v126 + 16);
        v67 = *(v126 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_226AE1E54(v67 > 1, v68 + 1, 1);
        }

        v69 = *(v0 + 264);
        v70 = *(v0 + 168);
        ++v58;
        *(v126 + 16) = v68 + 1;
        sub_226AEF064(v70, v126 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v68, type metadata accessor for AccountMatchResult);
        v61 += v62;
      }

      while (v58 != v69);
LABEL_43:
      sub_226AC47B0(*(v0 + 248), &qword_27D7A6558, &qword_226D7CCE0);
LABEL_45:
      v98 = *(v0 + 248);
      v100 = *(v0 + 224);
      v99 = *(v0 + 232);
      v102 = *(v0 + 184);
      v101 = *(v0 + 192);
      v104 = *(v0 + 168);
      v103 = *(v0 + 176);
      v105 = *(v0 + 160);
      v106 = *(v0 + 136);
      v123 = *(v0 + 128);
      v125 = *(v0 + 96);

      v107 = *(v0 + 8);

      return v107(v59);
    }

    goto LABEL_44;
  }

  v9 = *(v0 + 288);
  v10 = *(v0 + 72);
  v11 = *(v0 + 56);
  v12 = swift_task_alloc();
  *(v12 + 16) = v10;

  v13 = sub_226B86820(sub_226AEEFDC, v12, v11);
  *(v0 + 312) = v13;
  if (v9)
  {
    v14 = *(v0 + 304);
    sub_226AC47B0(*(v0 + 248), &qword_27D7A6558, &qword_226D7CCE0);

LABEL_23:
    v43 = *(v0 + 248);
    v45 = *(v0 + 224);
    v44 = *(v0 + 232);
    v47 = *(v0 + 184);
    v46 = *(v0 + 192);
    v49 = *(v0 + 168);
    v48 = *(v0 + 176);
    v50 = *(v0 + 160);
    v51 = *(v0 + 128);
    v52 = *(v0 + 136);
    v120 = *(v0 + 96);

    v53 = *(v0 + 8);

    return v53();
  }

  v16 = v13;

  v17 = *(v16 + 16);
  *(v0 + 320) = v17;
  if (!v17)
  {
    v71 = *(v0 + 304);

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v72 = sub_226D6E07C();
    __swift_project_value_buffer(v72, qword_28105F710);
    v73 = sub_226D6E05C();
    v74 = sub_226D6E9CC();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_226AB4000, v73, v74, "Failed to match an account using Apple Pay tranactions. Insufficient Bank Connect transactions to match an account.", v75, 2u);
      MEMORY[0x22AA8BEE0](v75, -1, -1);
    }

    v76 = *(v0 + 392);
    v77 = *(v0 + 72);

    if (*(v77 + v76 + 8) == 1)
    {
      v78 = *(v0 + 248);
      v79 = *(v0 + 256);
      v80 = sub_226D6B66C();
      sub_226AEE790(&qword_27D7A6468, MEMORY[0x277CC7FB8]);
      swift_allocError();
      *v81 = v79;
      (*(*(v80 - 8) + 104))(v81, *MEMORY[0x277CC7F80], v80);
      swift_willThrow();
      v42 = v78;
      goto LABEL_22;
    }

    v82 = *(v0 + 264);
    if (v82)
    {
      v83 = *(v0 + 208);
      v84 = *(v0 + 152);
      v122 = *(v0 + 144);
      v85 = *(v0 + 56);
      v127 = MEMORY[0x277D84F90];
      sub_226AE1E54(0, v82, 0);
      v86 = 0;
      v59 = v127;
      v87 = *(v83 + 16);
      v83 += 16;
      v118 = v87;
      v88 = v85 + ((*(v83 + 64) + 32) & ~*(v83 + 64));
      v89 = *(v83 + 56);
      v90 = *MEMORY[0x277CC75D0];
      do
      {
        v91 = *(v0 + 192);
        v118(v91, v88, *(v0 + 200));
        v92 = *(v122 + 20);
        v93 = sub_226D68CBC();
        (*(*(v93 - 8) + 104))(v91 + v92, v90, v93);
        v95 = *(v127 + 16);
        v94 = *(v127 + 24);
        if (v95 >= v94 >> 1)
        {
          sub_226AE1E54(v94 > 1, v95 + 1, 1);
        }

        v96 = *(v0 + 264);
        v97 = *(v0 + 192);
        ++v86;
        *(v127 + 16) = v95 + 1;
        sub_226AEF064(v97, v127 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v95, type metadata accessor for AccountMatchResult);
        v88 += v89;
      }

      while (v86 != v96);
      goto LABEL_43;
    }

LABEL_44:
    sub_226AC47B0(*(v0 + 248), &qword_27D7A6558, &qword_226D7CCE0);
    v59 = MEMORY[0x277D84F90];
    goto LABEL_45;
  }

  v19 = *(v0 + 200);
  v18 = *(v0 + 208);
  v20 = *(v18 + 80);
  *(v0 + 396) = v20;
  *(v0 + 328) = *(v18 + 72);
  v21 = *(v18 + 16);
  v114 = (v20 + 24) & ~v20;
  v124 = *MEMORY[0x277CBE110];
  *(v0 + 400) = *MEMORY[0x277CBE110];
  *(v0 + 404) = *MEMORY[0x277CC75B8];
  v22 = MEMORY[0x277D84F90];
  *(v0 + 336) = v21;
  *(v0 + 344) = 0;
  v23 = *(v0 + 312);
  v115 = *(v0 + 304);
  v24 = *(v0 + 224);
  v25 = *(v0 + 232);
  v112 = *(v0 + 216);
  v26 = *(v0 + 136);
  v111 = *(v0 + 112);
  v113 = *(v0 + 120);
  v27 = *(v0 + 88);
  v116 = *(v0 + 96);
  v119 = *(v0 + 80);
  v110 = *(v0 + 72);
  *(v0 + 352) = v22;
  *(v0 + 360) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v24, v23 + ((v20 + 32) & ~v20), v19);
  v21(v25, v24, v19);
  sub_226AEEFFC(v110, v26, type metadata accessor for TransactionsMatchStrategy);
  v28 = (v114 + v112 + *(v111 + 80)) & ~*(v111 + 80);
  v29 = swift_allocObject();
  *(v0 + 368) = v29;
  *(v29 + 16) = v115;
  (*(v18 + 32))(v29 + v114, v25, v19);
  sub_226AEF064(v26, v29 + v28, type metadata accessor for TransactionsMatchStrategy);
  (*(v27 + 104))(v116, v124, v119);
  v30 = *(MEMORY[0x277CBE118] + 4);

  v31 = swift_task_alloc();
  *(v0 + 376) = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6560, &qword_226D7CCF0);
  *v31 = v0;
  v31[1] = sub_226AEB7E0;
  v33 = *(v0 + 280);
  v34 = *(v0 + 96);

  return MEMORY[0x28210EE50](v0 + 40, v34, sub_226AEF0CC, v29, v32);
}

uint64_t sub_226AEB7E0()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = v2[46];
  (*(v2[11] + 8))(v2[12], v2[10]);

  if (v0)
  {
    v6 = sub_226AEC12C;
  }

  else
  {
    v6 = sub_226AEB964;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226AEB964()
{
  v1 = *(v0 + 40);
  if (*(v1 + 16) >= *(v0 + 256))
  {
    v13 = *(v0 + 352);
    v14 = *(v0 + 360);
    v15 = *(v0 + 404);
    v16 = *(v0 + 336);
    v17 = *(v0 + 224);
    v18 = *(v0 + 200);
    v19 = *(v0 + 184);
    v20 = *(v0 + 144);

    v16(v19, v17, v18);
    v21 = *(v20 + 20);
    v22 = sub_226D68CBC();
    (*(*(v22 - 8) + 104))(v19 + v21, v15, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v0 + 352);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_226BBAC18(0, v24[2] + 1, 1, *(v0 + 352));
    }

    v26 = v24[2];
    v25 = v24[3];
    if (v26 >= v25 >> 1)
    {
      v24 = sub_226BBAC18(v25 > 1, v26 + 1, 1, v24);
    }

    v27 = *(v0 + 184);
    v28 = *(v0 + 152);
    (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
    v24[2] = v26 + 1;
    sub_226AEF064(v27, v24 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v26, type metadata accessor for AccountMatchResult);
  }

  else
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 128);
    v3 = *(v0 + 72);
    v4 = sub_226D6E07C();
    __swift_project_value_buffer(v4, qword_28105F710);
    sub_226AEEFFC(v3, v2, type metadata accessor for TransactionsMatchStrategy);

    v5 = sub_226D6E05C();
    v6 = sub_226D6E9EC();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 128);
    if (v7)
    {
      v9 = *(v0 + 104);
      v10 = swift_slowAlloc();
      *v10 = 134218240;
      v11 = *(v1 + 16);

      *(v10 + 4) = v11;

      *(v10 + 12) = 2048;
      v12 = *(v8 + *(v9 + 20));
      sub_226AEF1A0(v8, type metadata accessor for TransactionsMatchStrategy);
      *(v10 + 14) = v12;
      _os_log_impl(&dword_226AB4000, v5, v6, "Failed to match an account using Apple Pay tranactions. Similar transactions' count(%ld) is below the threshold(%ld).", v10, 0x16u);
      MEMORY[0x22AA8BEE0](v10, -1, -1);
    }

    else
    {
      sub_226AEF1A0(*(v0 + 128), type metadata accessor for TransactionsMatchStrategy);
      swift_bridgeObjectRelease_n();
    }

    (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
    v24 = *(v0 + 352);
  }

  v29 = *(v0 + 344) + 1;
  if (v29 == *(v0 + 320))
  {
    v31 = *(v0 + 304);
    v30 = *(v0 + 312);

    if (v24[2] || (*(*(v0 + 72) + *(v0 + 392) + 8) & 1) != 0)
    {
      v87 = v24;
      sub_226AC47B0(*(v0 + 248), &qword_27D7A6558, &qword_226D7CCE0);
    }

    else
    {
      v61 = *(v0 + 264);
      if (v61)
      {
        v62 = *(v0 + 56);
        v63 = (*(v0 + 396) + 32) & ~*(v0 + 396);
        v88 = MEMORY[0x277D84F90];
        sub_226AE1E54(0, v61, 0);
        v64 = 0;
        v65 = v62 + v63;
        v66 = *MEMORY[0x277CC75D0];
        do
        {
          v67 = *(v0 + 360);
          v68 = *(v0 + 176);
          v69 = *(v0 + 144);
          (*(v0 + 336))(v68, v65 + *(v0 + 328) * v64, *(v0 + 200));
          v70 = *(v69 + 20);
          v71 = sub_226D68CBC();
          (*(*(v71 - 8) + 104))(v68 + v70, v66, v71);
          v73 = v88[2];
          v72 = v88[3];
          if (v73 >= v72 >> 1)
          {
            sub_226AE1E54(v72 > 1, v73 + 1, 1);
          }

          v74 = *(v0 + 264);
          v75 = *(v0 + 176);
          v76 = *(v0 + 152);
          ++v64;
          v88[2] = v73 + 1;
          sub_226AEF064(v75, v88 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v73, type metadata accessor for AccountMatchResult);
        }

        while (v64 != v74);
        sub_226AC47B0(*(v0 + 248), &qword_27D7A6558, &qword_226D7CCE0);

        v87 = v88;
      }

      else
      {
        sub_226AC47B0(*(v0 + 248), &qword_27D7A6558, &qword_226D7CCE0);

        v87 = MEMORY[0x277D84F90];
      }
    }

    v32 = *(v0 + 248);
    v33 = *(v0 + 224);
    v34 = *(v0 + 232);
    v36 = *(v0 + 184);
    v35 = *(v0 + 192);
    v38 = *(v0 + 168);
    v37 = *(v0 + 176);
    v39 = *(v0 + 160);
    v40 = *(v0 + 128);
    v41 = *(v0 + 136);
    v85 = *(v0 + 96);

    v42 = *(v0 + 8);

    return v42(v87);
  }

  else
  {
    *(v0 + 344) = v29;
    *(v0 + 352) = v24;
    v86 = *(v0 + 400);
    v44 = *(v0 + 336);
    v45 = *(v0 + 396);
    v83 = *(v0 + 304);
    v46 = *(v0 + 224);
    v47 = *(v0 + 232);
    v48 = *(v0 + 208);
    v49 = *(v0 + 200);
    v50 = *(v0 + 136);
    v78 = v50;
    v79 = *(v0 + 112);
    v80 = *(v0 + 120);
    v81 = (v45 + 24) & ~v45;
    v77 = *(v0 + 216) + v81;
    v51 = *(v0 + 88);
    v84 = *(v0 + 96);
    v52 = *(v0 + 72);
    v82 = *(v0 + 80);
    v53 = *(v0 + 312) + ((v45 + 32) & ~v45) + *(v0 + 328) * v29;
    *(v0 + 360) = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v44(v46, v53, v49);
    v44(v47, v46, v49);
    sub_226AEEFFC(v52, v78, type metadata accessor for TransactionsMatchStrategy);
    v54 = (v77 + *(v79 + 80)) & ~*(v79 + 80);
    v55 = swift_allocObject();
    *(v0 + 368) = v55;
    *(v55 + 16) = v83;
    (*(v48 + 32))(v55 + v81, v47, v49);
    sub_226AEF064(v78, v55 + v54, type metadata accessor for TransactionsMatchStrategy);
    (*(v51 + 104))(v84, v86, v82);
    v56 = *(MEMORY[0x277CBE118] + 4);

    v57 = swift_task_alloc();
    *(v0 + 376) = v57;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6560, &qword_226D7CCF0);
    *v57 = v0;
    v57[1] = sub_226AEB7E0;
    v59 = *(v0 + 280);
    v60 = *(v0 + 96);

    return MEMORY[0x28210EE50](v0 + 40, v60, sub_226AEF0CC, v55, v58);
  }
}

uint64_t sub_226AEC12C()
{
  v102 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 384);
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 384);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v101 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    v12 = *(v0 + 32);
    v13 = sub_226D6F26C();
    v15 = sub_226AC4530(v13, v14, &v101);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to find similar transactions. %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  if (*(MEMORY[0x277D84FA0] + 16) >= *(v0 + 256))
  {
    v27 = *(v0 + 352);
    v28 = *(v0 + 360);
    v29 = *(v0 + 404);
    v30 = *(v0 + 336);
    v31 = *(v0 + 224);
    v32 = *(v0 + 200);
    v33 = *(v0 + 184);
    v34 = *(v0 + 144);

    v30(v33, v31, v32);
    v35 = *(v34 + 20);
    v36 = sub_226D68CBC();
    (*(*(v36 - 8) + 104))(v33 + v35, v29, v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v0 + 352);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_226BBAC18(0, v38[2] + 1, 1, *(v0 + 352));
    }

    v40 = v38[2];
    v39 = v38[3];
    if (v40 >= v39 >> 1)
    {
      v38 = sub_226BBAC18(v39 > 1, v40 + 1, 1, v38);
    }

    v41 = *(v0 + 184);
    v42 = *(v0 + 152);
    (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
    v38[2] = v40 + 1;
    sub_226AEF064(v41, v38 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v40, type metadata accessor for AccountMatchResult);
  }

  else
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 128);
    v17 = *(v0 + 72);
    __swift_project_value_buffer(v2, qword_28105F710);
    sub_226AEEFFC(v17, v16, type metadata accessor for TransactionsMatchStrategy);
    v18 = MEMORY[0x277D84FA0];

    v19 = sub_226D6E05C();
    v20 = sub_226D6E9EC();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 128);
    if (v21)
    {
      v23 = *(v0 + 104);
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      v25 = *(v18 + 16);

      *(v24 + 4) = v25;

      *(v24 + 12) = 2048;
      v26 = *(v22 + *(v23 + 20));
      sub_226AEF1A0(v22, type metadata accessor for TransactionsMatchStrategy);
      *(v24 + 14) = v26;
      _os_log_impl(&dword_226AB4000, v19, v20, "Failed to match an account using Apple Pay tranactions. Similar transactions' count(%ld) is below the threshold(%ld).", v24, 0x16u);
      MEMORY[0x22AA8BEE0](v24, -1, -1);
    }

    else
    {
      sub_226AEF1A0(*(v0 + 128), type metadata accessor for TransactionsMatchStrategy);
      swift_bridgeObjectRelease_n();
    }

    (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
    v38 = *(v0 + 352);
  }

  v43 = *(v0 + 344) + 1;
  if (v43 == *(v0 + 320))
  {
    v45 = *(v0 + 304);
    v44 = *(v0 + 312);

    if (v38[2] || (*(*(v0 + 72) + *(v0 + 392) + 8) & 1) != 0)
    {
      v99 = v38;
      sub_226AC47B0(*(v0 + 248), &qword_27D7A6558, &qword_226D7CCE0);
    }

    else
    {
      v74 = *(v0 + 264);
      if (v74)
      {
        v75 = *(v0 + 56);
        v76 = (*(v0 + 396) + 32) & ~*(v0 + 396);
        v101 = MEMORY[0x277D84F90];
        sub_226AE1E54(0, v74, 0);
        v77 = 0;
        v78 = v101;
        v79 = v75 + v76;
        v80 = *MEMORY[0x277CC75D0];
        do
        {
          v81 = *(v0 + 360);
          v82 = *(v0 + 176);
          v83 = *(v0 + 144);
          (*(v0 + 336))(v82, v79 + *(v0 + 328) * v77, *(v0 + 200));
          v84 = *(v83 + 20);
          v85 = sub_226D68CBC();
          (*(*(v85 - 8) + 104))(v82 + v84, v80, v85);
          v101 = v78;
          v87 = *(v78 + 16);
          v86 = *(v78 + 24);
          if (v87 >= v86 >> 1)
          {
            sub_226AE1E54(v86 > 1, v87 + 1, 1);
            v78 = v101;
          }

          v88 = *(v0 + 264);
          v89 = *(v0 + 176);
          v90 = *(v0 + 152);
          ++v77;
          *(v78 + 16) = v87 + 1;
          sub_226AEF064(v89, v78 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v87, type metadata accessor for AccountMatchResult);
        }

        while (v77 != v88);
        sub_226AC47B0(*(v0 + 248), &qword_27D7A6558, &qword_226D7CCE0);

        v99 = v78;
      }

      else
      {
        sub_226AC47B0(*(v0 + 248), &qword_27D7A6558, &qword_226D7CCE0);

        v99 = MEMORY[0x277D84F90];
      }
    }

    v46 = *(v0 + 248);
    v48 = *(v0 + 224);
    v47 = *(v0 + 232);
    v50 = *(v0 + 184);
    v49 = *(v0 + 192);
    v52 = *(v0 + 168);
    v51 = *(v0 + 176);
    v53 = *(v0 + 160);
    v54 = *(v0 + 128);
    v55 = *(v0 + 136);
    v97 = *(v0 + 96);

    v56 = *(v0 + 8);

    return v56(v99);
  }

  else
  {
    *(v0 + 344) = v43;
    *(v0 + 352) = v38;
    v100 = *(v0 + 400);
    v58 = *(v0 + 336);
    v59 = *(v0 + 396);
    v96 = *(v0 + 304);
    v60 = *(v0 + 224);
    v61 = *(v0 + 232);
    v62 = *(v0 + 208);
    v63 = *(v0 + 200);
    v64 = *(v0 + 136);
    v92 = *(v0 + 112);
    v93 = *(v0 + 120);
    v91 = *(v0 + 216) + ((v59 + 24) & ~v59);
    v98 = *(v0 + 96);
    v95 = *(v0 + 88);
    v65 = *(v0 + 72);
    v94 = *(v0 + 80);
    v66 = *(v0 + 312) + ((v59 + 32) & ~v59) + *(v0 + 328) * v43;
    *(v0 + 360) = (v62 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v58(v60, v66, v63);
    v58(v61, v60, v63);
    sub_226AEEFFC(v65, v64, type metadata accessor for TransactionsMatchStrategy);
    v67 = (v91 + *(v92 + 80)) & ~*(v92 + 80);
    v68 = swift_allocObject();
    *(v0 + 368) = v68;
    *(v68 + 16) = v96;
    (*(v62 + 32))(v68 + ((v59 + 24) & ~v59), v61, v63);
    sub_226AEF064(v64, v68 + v67, type metadata accessor for TransactionsMatchStrategy);
    (*(v95 + 104))(v98, v100, v94);
    v69 = *(MEMORY[0x277CBE118] + 4);

    v70 = swift_task_alloc();
    *(v0 + 376) = v70;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6560, &qword_226D7CCF0);
    *v70 = v0;
    v70[1] = sub_226AEB7E0;
    v72 = *(v0 + 280);
    v73 = *(v0 + 96);

    return MEMORY[0x28210EE50](v0 + 40, v73, sub_226AEF0CC, v68, v71);
  }
}

uint64_t sub_226AECA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_226D6CD7C();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AECB34, 0, 0);
}

uint64_t sub_226AECB34()
{
  v1 = v0[5];
  v2 = (v1 + *(type metadata accessor for TransactionsMatchStrategy(0) + 24));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v4 + 8);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_226AECC70;
  v8 = v0[2];

  return v10(v8, v3, v4);
}

uint64_t sub_226AECC70(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_226AECD70, 0, 0);
}

uint64_t sub_226AECD70()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_226AEF224(v0[4], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_226AC47B0(v0[6], &qword_27D7A6558, &qword_226D7CCE0);
    v4 = v0[11];
  }

  else
  {
    v5 = v0[11];
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    v9 = v0[3];
    (*(v7 + 32))(v6, v0[6], v8);
    v10 = swift_task_alloc();
    *(v10 + 16) = v6;
    *(v10 + 24) = v9;
    v4 = sub_226B906B0(sub_226AEF294, v10, v5);

    (*(v7 + 8))(v6, v8);
  }

  v11 = v0[9];
  v12 = v0[6];

  v13 = v0[1];

  return v13(v4);
}

BOOL sub_226AECED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6B9BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226D67B4C();
  matched = type metadata accessor for TransactionsMatchStrategy(0);
  v10 = *(a2 + *(matched + 28));
  v16 = v8;
  v17 = a2;
  sub_226D6EB8C();
  v11 = (v5 + 8);
  if (v2)
  {
    (*v11)(v8, v4);
  }

  else
  {
    v13 = v18;
    (*v11)(v8, v4);
    return v13 >= *(a2 + *(matched + 20));
  }

  return v12;
}

void sub_226AED03C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = a3;
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6568, &qword_226D71560);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  sub_226D6AC0C();
  v12 = sub_226D6AAFC();
  v13 = sub_226D6CD7C();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = *MEMORY[0x277CC71E8];
  v15 = sub_226D6823C();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v7, v14, v15);
  (*(v16 + 56))(v7, 0, 1, v15);
  v17 = MEMORY[0x22AA86C40](a1, 0, v11, v7);
  sub_226AC47B0(v7, &qword_27D7A6568, &qword_226D71560);
  sub_226AC47B0(v11, &qword_27D7A6558, &qword_226D7CCE0);
  [v12 setPredicate_];

  v18 = *(v22 + *(type metadata accessor for TransactionsMatchStrategy(0) + 28));
  v19 = v23;
  v20 = sub_226D6EBAC();

  if (!v19)
  {
    *v21 = v20;
  }
}

id sub_226AED29C(void **a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v5 = sub_226D6D4AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v30 - v15;
  v17 = *a1;
  v18 = [v17 transactionDate];
  if (!v18)
  {
    (*(v6 + 56))(v16, 1, 1, v5);
    sub_226AC47B0(v16, &qword_27D7A8BE0, &unk_226D718F0);
    goto LABEL_9;
  }

  v31 = a3;
  v19 = v18;
  sub_226D6D45C();

  (*(v6 + 32))(v16, v12, v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  sub_226AC47B0(v16, &qword_27D7A8BE0, &unk_226D718F0);
  v20 = [v17 amount];
  if (!v20)
  {
    goto LABEL_9;
  }

  v21 = [v17 currencyCode];
  if (!v21)
  {
    goto LABEL_9;
  }

  v22 = v21;
  v23 = sub_226D6E39C();
  v25 = v24;

  result = [v17 transactionDate];
  if (result)
  {
    v27 = result;
    sub_226D6D45C();

    v28 = sub_226D6CD5C();
    (*(v6 + 8))(v10, v5);
    if (v28)
    {
      v29 = sub_226D4D7A0(v23, v25, v31);

      return (v29 & 1);
    }

LABEL_9:
    v29 = 0;
    return (v29 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_226AED57C@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a2;
  v77 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = v66 - v6;
  v7 = sub_226D6D6DC();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = *(v71 + 64);
  MEMORY[0x28223BE20](v7);
  v70 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6823C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v74 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v66 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v75 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v66 - v21;
  v23 = sub_226D6D4AC();
  v24 = *(v23 - 8);
  v79 = v23;
  v80 = v24;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v69 = v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v78 = v66 - v28;
  v29 = sub_226D6AC0C();
  v76 = a1;
  v30 = [a1 primaryAccountIdentifier];
  sub_226D6E39C();

  v31 = *MEMORY[0x277CC71E8];
  v83 = v11;
  v32 = *(v11 + 104);
  v32(v16, v31, v10);
  matched = type metadata accessor for TransactionsMatchStrategy(0);
  v34 = v82;
  v35 = *&v81[*(matched + 28)];
  v81 = v22;
  v36 = v35;
  sub_226D6AAAC();
  if (v34)
  {
    (*(v83 + 8))(v16, v10);
  }

  v66[1] = v36;
  v67 = v32;
  v68 = v31;
  v82 = v29;
  v39 = v83 + 8;
  v38 = *(v83 + 8);
  v40 = v10;
  v38(v16, v10);

  v41 = v81;
  v42 = *(v80 + 48);
  v43 = v79;
  if (v42(v81, 1, v79) == 1)
  {
    v44 = v41;
LABEL_5:
    sub_226AC47B0(v44, &qword_27D7A8BE0, &unk_226D718F0);
    v45 = sub_226D6CD7C();
    return (*(*(v45 - 8) + 56))(v77, 1, 1, v45);
  }

  v83 = v39;
  v66[0] = v42;
  v81 = *(v80 + 32);
  (v81)(v78, v41, v43);
  v46 = [v76 primaryAccountIdentifier];
  sub_226D6E39C();

  v47 = v74;
  v67(v74, v68, v40);
  v48 = v47;
  v49 = v75;
  sub_226D6AA9C();
  v50 = v81;
  v38(v48, v40);

  v51 = v79;
  if ((v66[0])(v49, 1, v79) == 1)
  {
    (*(v80 + 8))(v78, v51);
    v44 = v49;
    goto LABEL_5;
  }

  v52 = v69;
  v50(v69, v49, v51);
  v53 = v70;
  sub_226D6D66C();
  v54 = v73;
  sub_226D6D60C();
  v55 = sub_226D6CD7C();
  v56 = *(v55 - 8);
  v57 = *(v56 + 48);
  v58 = v57(v54, 1, v55);
  v59 = v80;
  if (v58 == 1)
  {
    sub_226D6CD6C();
    (*(v71 + 8))(v53, v72);
    v60 = *(v59 + 8);
    v61 = v79;
    v60(v52, v79);
    v60(v78, v61);
    v62 = v57(v54, 1, v55);
    v63 = v77;
    if (v62 != 1)
    {
      sub_226AC47B0(v54, &qword_27D7A6558, &qword_226D7CCE0);
    }
  }

  else
  {
    (*(v71 + 8))(v53, v72);
    v64 = *(v59 + 8);
    v65 = v79;
    v64(v52, v79);
    v64(v78, v65);
    v63 = v77;
    (*(v56 + 32))(v77, v54, v55);
  }

  return (*(v56 + 56))(v63, 0, 1, v55);
}

void sub_226AEDCF4(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v68 = a3;
  v67 = a2;
  v59 = sub_226D6D52C();
  v8 = *(v59 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v59);
  v58 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v57 = &v54 - v12;
  v66 = sub_226D6D6DC();
  v13 = *(v66 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v66);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_226D6B9BC();
  v17 = *(v65 - 8);
  v18 = *(v17 + 8);
  MEMORY[0x28223BE20](v65);
  v64 = (&v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = sub_226D6D4AC();
  v20 = *(v70 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v70);
  v69 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v89 = &v54 - v24;
  v97 = MEMORY[0x277D84FA0];
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v63 = v16;
    v55 = a4;
    v80 = v5;
    v16 = 0;
    v90 = a1 & 0xC000000000000001;
    v71 = a1 & 0xFFFFFFFFFFFFFF8;
    v87 = (v20 + 4);
    v61 = (v13 + 8);
    v62 = (v17 + 8);
    v56 = v8 + 1;
    v88 = (v20 + 1);
    v60 = a1;
    v13 = v70;
    a4 = v89;
    v17 = v69;
    v5 = i;
    while (1)
    {
      if (v90)
      {
        v25 = MEMORY[0x22AA8AFD0](v16, a1);
      }

      else
      {
        if (v16 >= *(v71 + 16))
        {
          goto LABEL_33;
        }

        v25 = *(a1 + 8 * v16 + 32);
      }

      v20 = v25;
      v26 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v27 = [v25 transactionDate];
      if (v27)
      {
        v8 = v27;
        sub_226D6D45C();

        (*v87)(a4, v17, v13);
        v28 = [v20 amount];
        if (v28)
        {
          v8 = v28;
          [v28 decimalValue];
          v86 = v91;
          v85 = v92;
          v84 = v93;
          v83 = v94;
          v81 = v96;
          v82 = v95;

          v29 = [v20 currencyCode];
          if (v29)
          {
            v30 = v29;
            v31 = sub_226D6E39C();
            v79 = v32;

            v33 = [v20 paymentHash];
            if (v33)
            {
              v34 = v33;
              v76 = sub_226D6E39C();
              v77 = v35;
            }

            else
            {
              v76 = 0;
              v77 = 0;
            }

            v36 = v64;
            v37 = [v20 merchant];
            v78 = v31;
            v72 = (v16 + 1);
            if (v37 && (v38 = v37, v39 = [v37 displayName], v38, v39) || (v40 = objc_msgSend(v20, sel_merchant)) != 0 && (v41 = v40, v39 = objc_msgSend(v40, sel_name), v41, v39))
            {
              v75 = sub_226D6E39C();
            }

            else
            {
              v75 = 0;
            }

            v74 = sub_226D6AC0C();
            sub_226D6EC7C();
            v85 = v42;
            LODWORD(v84) = v43;
            v44 = sub_226D67B4C();
            v86 = &v54;
            MEMORY[0x28223BE20](v44);
            v53 = &v97;
            v45 = *(v68 + *(type metadata accessor for TransactionsMatchStrategy(0) + 28));
            v8 = v36;
            v46 = v63;
            sub_226D6D66C();
            v52[1] = v52;
            v53 = v45;
            v52[0] = sub_226AEF200;
            v47 = v80;
            v48 = sub_226D6AA7C();
            v80 = v47;
            if (v47)
            {

              (*v61)(v46, v66);
              (*v62)(v8, v65);
              (*v88)(v89, v70);

              return;
            }

            v49 = v48;

            (*v61)(v46, v66);
            (*v62)(v8, v65);
            if (v49)
            {
              v8 = v58;
              sub_226D6ABCC();
              v50 = v57;
              sub_226C2514C(v57, v8);

              (*v56)(v50, v59);
              a4 = v89;
              v13 = v70;
              (*v88)(v89, v70);
            }

            else
            {
              a4 = v89;
              v13 = v70;
              (*v88)(v89, v70);
            }

            a1 = v60;
            v17 = v69;
            v26 = v72;
            v5 = i;
          }

          else
          {
            a4 = v89;
            (*v88)(v89, v13);

            v5 = i;
          }
        }

        else
        {

          (*v88)(a4, v13);
        }
      }

      else
      {
      }

      ++v16;
      if (v26 == v5)
      {
        v51 = v97;
        a4 = v55;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v51 = MEMORY[0x277D84FA0];
LABEL_36:
  *a4 = v51;
}

BOOL sub_226AEE5D4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_226D6D52C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;

  sub_226D6ABCC();
  v9 = sub_226D4D898(v7, v8);

  (*(v4 + 8))(v7, v3);
  return (v9 & 1) == 0;
}

uint64_t sub_226AEE6D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AEF2B8;

  return sub_226AEA318(a1, a2);
}

uint64_t sub_226AEE790(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226AEE858(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226AEE890()
{
  v0 = sub_226D6B5EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6B58C();
  sub_226D6B5DC();
  (*(v1 + 8))(v4, v0);
  if (v11)
  {
    sub_226AE59B4(0, &qword_27D7A6498, 0x277CCACA8);
    if (swift_dynamicCast())
    {
      v5 = v9;
      v6 = [v9 intValue];

      return v6;
    }
  }

  else
  {
    sub_226AC47B0(v10, &unk_27D7A8BB0, &unk_226D74340);
  }

  return 5;
}

unint64_t sub_226AEE9F8()
{
  result = qword_27D7A64B0;
  if (!qword_27D7A64B0)
  {
    sub_226AE59B4(255, &qword_27D7A64A8, 0x277D37FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A64B0);
  }

  return result;
}

unint64_t sub_226AEEA88()
{
  result = sub_226D68CBC();
  if (v1 <= 0x3F)
  {
    result = sub_226AEEB3C();
    if (v2 <= 0x3F)
    {
      result = sub_226AE59B4(319, &qword_27D7A64D8, 0x277CBE440);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_226AEEB3C()
{
  result = qword_27D7A64D0;
  if (!qword_27D7A64D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D7A64D0);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_23Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D68CBC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_24Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D68CBC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226AEECF4()
{
  result = sub_226D68CBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_226AEED88()
{
  result = sub_226D67C0C();
  if (v1 <= 0x3F)
  {
    result = sub_226D68CBC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_226AEEE0C(uint64_t a1)
{
  result = sub_226AEE790(&qword_27D7A6520, type metadata accessor for TransactionsMatchStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226AEEE64(uint64_t a1)
{
  result = sub_226AEE790(&qword_27D7A6528, type metadata accessor for PANSuffixMatchStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226AEEEBC(uint64_t a1)
{
  result = sub_226AEE790(&qword_27D7A6530, type metadata accessor for AccountTypeMatchStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226AEEF14(uint64_t a1)
{
  result = sub_226AEE790(&qword_27D7A6538, type metadata accessor for FPANIDMatchStrategy);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226AEEF6C()
{
  result = qword_28105F580;
  if (!qword_28105F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105F580);
  }

  return result;
}

uint64_t sub_226AEEFFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226AEF064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_226AEF0CC(void *a1@<X8>)
{
  v3 = *(sub_226D67C0C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TransactionsMatchStrategy(0) - 8);
  sub_226AEDCF4(*(v1 + 16), v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t sub_226AEF1A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226AEF224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226AEF2BC(uint64_t a1)
{
  sub_226D6F2FC();
  sub_226D6D52C();
  sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0]);
  sub_226D6E30C();
  v3 = *(v1 + *(a1 + 20));
  sub_226D6EC4C();
  v4 = *(a1 + 24);
  sub_226D6D4AC();
  sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578]);
  sub_226D6E30C();
  return sub_226D6F35C();
}

uint64_t sub_226AEF3BC(uint64_t a1, uint64_t a2)
{
  sub_226D6D52C();
  sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0]);
  sub_226D6E30C();
  v4 = *(v2 + *(a2 + 20));
  sub_226D6EC4C();
  v5 = *(a2 + 24);
  sub_226D6D4AC();
  sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578]);
  return sub_226D6E30C();
}

uint64_t sub_226AEF4AC(uint64_t a1, uint64_t a2)
{
  sub_226D6F2FC();
  sub_226D6D52C();
  sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0]);
  sub_226D6E30C();
  v4 = *(v2 + *(a2 + 20));
  sub_226D6EC4C();
  v5 = *(a2 + 24);
  sub_226D6D4AC();
  sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578]);
  sub_226D6E30C();
  return sub_226D6F35C();
}

uint64_t sub_226AEF5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_226D6D4EC() & 1) == 0)
  {
    return 0;
  }

  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if ((sub_226D6EC3C() & 1) == 0)
  {
    return 0;
  }

  v9 = *(a3 + 24);

  return sub_226D6D44C();
}

uint64_t sub_226AEF640()
{
  v1 = _s8MetadataV9CloudItemV6ObjectVMa(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(_s8MetadataV9CloudItemVMa(0) + 24));
  v7 = *(v6 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v14 = MEMORY[0x277D84F90];
    sub_226D6EF8C();
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_226AF1E24(v9, v5, _s8MetadataV9CloudItemV6ObjectVMa);
      v11 = *&v5[*(v1 + 20)];
      sub_226AF1D84(v5, _s8MetadataV9CloudItemV6ObjectVMa);
      sub_226D6EF6C();
      v12 = *(v14 + 16);
      sub_226D6EF9C();
      sub_226D6EFAC();
      sub_226D6EF7C();
      v9 += v10;
      --v7;
    }

    while (v7);
    return v14;
  }

  return result;
}

uint64_t sub_226AEF7BC(uint64_t a1)
{
  v3 = v1;
  sub_226D6F2FC();
  sub_226D6D52C();
  sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0]);
  sub_226D6E30C();
  v4 = _s8MetadataV9CloudItemV6ObjectVMa(0);
  v5 = *(v1 + *(v4 + 20));
  sub_226D6EC4C();
  v6 = *(v4 + 24);
  sub_226D6D4AC();
  sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578]);
  sub_226D6E30C();
  v7 = v3 + *(a1 + 20);
  sub_226D6E30C();
  v8 = *(v7 + *(v4 + 20));
  sub_226D6EC4C();
  v9 = v7 + *(v4 + 24);
  sub_226D6E30C();
  sub_226AF0B04(v11, *(v3 + *(a1 + 24)));
  return sub_226D6F35C();
}

uint64_t sub_226AEF93C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_226D6D52C();
  sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0]);
  sub_226D6E30C();
  v6 = _s8MetadataV9CloudItemV6ObjectVMa(0);
  v7 = *(v2 + *(v6 + 20));
  sub_226D6EC4C();
  v8 = *(v6 + 24);
  sub_226D6D4AC();
  sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578]);
  sub_226D6E30C();
  v9 = v4 + *(a2 + 20);
  sub_226D6E30C();
  v10 = *(v9 + *(v6 + 20));
  sub_226D6EC4C();
  v11 = v9 + *(v6 + 24);
  sub_226D6E30C();
  v12 = *(v4 + *(a2 + 24));

  return sub_226AF0B04(a1, v12);
}

uint64_t sub_226AEFAB0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_226D6F2FC();
  sub_226D6D52C();
  sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0]);
  sub_226D6E30C();
  v5 = _s8MetadataV9CloudItemV6ObjectVMa(0);
  v6 = *(v2 + *(v5 + 20));
  sub_226D6EC4C();
  v7 = *(v5 + 24);
  sub_226D6D4AC();
  sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578]);
  sub_226D6E30C();
  v8 = v4 + *(a2 + 20);
  sub_226D6E30C();
  v9 = *(v8 + *(v5 + 20));
  sub_226D6EC4C();
  v10 = v8 + *(v5 + 24);
  sub_226D6E30C();
  sub_226AF0B04(v12, *(v4 + *(a2 + 24)));
  return sub_226D6F35C();
}

uint64_t sub_226AEFC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_226D6D4EC() & 1) == 0)
  {
    return 0;
  }

  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  v6 = _s8MetadataV9CloudItemV6ObjectVMa(0);
  v7 = *(v6 + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if ((sub_226D6EC3C() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v6 + 24);
  if ((sub_226D6D44C() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 20);
  v12 = a1 + v11;
  v13 = a2 + v11;
  if ((sub_226D6D4EC() & 1) == 0)
  {
    return 0;
  }

  v14 = *(v6 + 20);
  v15 = *(v12 + v14);
  v16 = *(v13 + v14);
  if ((sub_226D6EC3C() & 1) == 0)
  {
    return 0;
  }

  v17 = *(v6 + 24);
  if ((sub_226D6D44C() & 1) == 0)
  {
    return 0;
  }

  v18 = *(a3 + 24);
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);

  return sub_226B2E200(v19, v20);
}

uint64_t sub_226AEFD40(uint64_t a1)
{
  v2 = v1;
  v4 = _s8MetadataV9CloudItemVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s8MetadataV15CloudItemStatusOMa(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226AF1E24(v2, v12, _s8MetadataV15CloudItemStatusOMa);
  v13 = (*(v5 + 48))(v12, 2, v4);
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = 2;
    }

    return MEMORY[0x22AA8B3B0](v14);
  }

  else
  {
    sub_226AF25F4(v12, v8, _s8MetadataV9CloudItemVMa);
    MEMORY[0x22AA8B3B0](1);
    sub_226D6D52C();
    sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0]);
    sub_226D6E30C();
    v15 = _s8MetadataV9CloudItemV6ObjectVMa(0);
    v16 = *&v8[*(v15 + 20)];
    sub_226D6EC4C();
    v17 = *(v15 + 24);
    sub_226D6D4AC();
    sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578]);
    sub_226D6E30C();
    v18 = &v8[*(v4 + 20)];
    sub_226D6E30C();
    v19 = *&v18[*(v15 + 20)];
    sub_226D6EC4C();
    v20 = &v18[*(v15 + 24)];
    sub_226D6E30C();
    sub_226AF0B04(a1, *&v8[*(v4 + 24)]);
    return sub_226AF1D84(v8, _s8MetadataV9CloudItemVMa);
  }
}

uint64_t sub_226AF0048(uint64_t a1)
{
  sub_226D6F2FC();
  v3 = *v1;
  sub_226D6EC4C();
  v4 = *(a1 + 20);
  sub_226D6D4AC();
  sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578]);
  sub_226D6E30C();
  return sub_226D6F35C();
}

uint64_t sub_226AF00F4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_226D6EC4C();
  v5 = *(a2 + 20);
  sub_226D6D4AC();
  sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578]);
  return sub_226D6E30C();
}

uint64_t sub_226AF0184(uint64_t a1, uint64_t a2)
{
  sub_226D6F2FC();
  v4 = *v2;
  sub_226D6EC4C();
  v5 = *(a2 + 20);
  sub_226D6D4AC();
  sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578]);
  sub_226D6E30C();
  return sub_226D6F35C();
}

uint64_t sub_226AF022C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  v6 = *a1;
  v7 = *a2;
  if ((sub_226D6EC3C() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 20);

  return sub_226D6D44C();
}

uint64_t sub_226AF02B8()
{
  v1 = v0;
  v2 = _s8MetadataV9LocalItemVMa(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = _s8MetadataV15LocalItemStatusOMa(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226AF1E24(v1, v10, _s8MetadataV15LocalItemStatusOMa);
  v11 = (*(v3 + 48))(v10, 2, v2);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    return MEMORY[0x22AA8B3B0](v12);
  }

  else
  {
    sub_226AF25F4(v10, v6, _s8MetadataV9LocalItemVMa);
    MEMORY[0x22AA8B3B0](1);
    v13 = *v6;
    sub_226D6EC4C();
    v14 = *(v2 + 20);
    sub_226D6D4AC();
    sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578]);
    sub_226D6E30C();
    return sub_226AF1D84(v6, _s8MetadataV9LocalItemVMa);
  }
}

uint64_t sub_226AF04B8(uint64_t a1)
{
  v42 = _s8MetadataV9LocalItemVMa(0);
  v40 = *(v42 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v38 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = _s8MetadataV15LocalItemStatusOMa(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s8MetadataV9CloudItemVMa(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s8MetadataV15CloudItemStatusOMa(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D52C();
  sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0]);
  sub_226D6E30C();
  v17 = _s8MetadataVMa(0);
  v18 = *(v17 + 20);
  v41 = v1;
  sub_226AF1E24(v1 + v18, v16, _s8MetadataV15CloudItemStatusOMa);
  v19 = (*(v9 + 48))(v16, 2, v8);
  if (v19)
  {
    if (v19 == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = 2;
    }

    MEMORY[0x22AA8B3B0](v20);
  }

  else
  {
    sub_226AF25F4(v16, v12, _s8MetadataV9CloudItemVMa);
    MEMORY[0x22AA8B3B0](1);
    sub_226D6E30C();
    v21 = _s8MetadataV9CloudItemV6ObjectVMa(0);
    v22 = *&v12[*(v21 + 20)];
    sub_226D6EC4C();
    v23 = *(v21 + 24);
    v37 = sub_226D6D4AC();
    sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578]);
    sub_226D6E30C();
    v24 = &v12[*(v8 + 20)];
    sub_226D6E30C();
    v25 = *&v24[*(v21 + 20)];
    sub_226D6EC4C();
    v26 = &v24[*(v21 + 24)];
    sub_226D6E30C();
    sub_226AF0B04(a1, *&v12[*(v8 + 24)]);
    sub_226AF1D84(v12, _s8MetadataV9CloudItemVMa);
  }

  v27 = v42;
  v29 = v39;
  v28 = v40;
  sub_226AF1E24(v41 + *(v17 + 24), v39, _s8MetadataV15LocalItemStatusOMa);
  v30 = (*(v28 + 48))(v29, 2, v27);
  if (v30)
  {
    if (v30 == 1)
    {
      v31 = 0;
    }

    else
    {
      v31 = 2;
    }

    return MEMORY[0x22AA8B3B0](v31);
  }

  else
  {
    v32 = v29;
    v33 = v38;
    sub_226AF25F4(v32, v38, _s8MetadataV9LocalItemVMa);
    MEMORY[0x22AA8B3B0](1);
    v34 = *v33;
    sub_226D6EC4C();
    v35 = *(v27 + 20);
    sub_226D6D4AC();
    sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578]);
    sub_226D6E30C();
    return sub_226AF1D84(v33, _s8MetadataV9LocalItemVMa);
  }
}

uint64_t sub_226AF09E0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_226D6F2FC();
  a3(v5);
  return sub_226D6F35C();
}

uint64_t sub_226AF0A44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_226D6F2FC();
  a4(v6);
  return sub_226D6F35C();
}

uint64_t sub_226AF0A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_226D6D4EC() & 1) == 0 || (sub_226AF15F4(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return sub_226AF19D8(a1 + v6, a2 + v6);
}

uint64_t sub_226AF0B04(uint64_t a1, uint64_t a2)
{
  v3 = _s8MetadataV9CloudItemV6ObjectVMa(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x22AA8B3B0](v8);
  if (v8)
  {
    v10 = *(v3 + 20);
    v11 = *(v3 + 24);
    v12 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_226AF1E24(v12, v7, _s8MetadataV9CloudItemV6ObjectVMa);
      sub_226D6D52C();
      sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0]);
      sub_226D6E30C();
      v14 = *&v7[v10];
      sub_226D6EC4C();
      sub_226D6D4AC();
      sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578]);
      sub_226D6E30C();
      result = sub_226AF1D84(v7, _s8MetadataV9CloudItemV6ObjectVMa);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_226AF0CF0(uint64_t a1, uint64_t a2)
{
  v3 = _s8MetadataV9CloudItemV6ObjectVMa_1(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  result = MEMORY[0x22AA8B3B0](v8);
  if (v8)
  {
    v10 = *(v3 + 20);
    v11 = *(v3 + 24);
    v12 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_226AF1E24(v12, v7, _s8MetadataV9CloudItemV6ObjectVMa_1);
      v14 = *v7;
      sub_226D6EC4C();
      sub_226D6D52C();
      sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0]);
      sub_226D6E30C();
      sub_226D6D4AC();
      sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578]);
      sub_226D6E30C();
      result = sub_226AF1D84(v7, _s8MetadataV9CloudItemV6ObjectVMa_1);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

void sub_226AF0EDC(uint64_t a1, uint64_t a2)
{
  v3 = sub_226D6D4AC();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a2 + 16);
  MEMORY[0x22AA8B3B0](v16);
  if (v16)
  {
    v17 = v11[5];
    v27 = v11[6];
    v28 = v17;
    v18 = v11[7];
    v19 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v25 = *(v12 + 72);
    v26 = v18;
    v20 = v23;
    v21 = (v23 + 48);
    v23 += 8;
    v24 = (v20 + 32);
    do
    {
      sub_226AF1E24(v19, v15, _s8MetadataV9CloudItemV6ObjectVMa_0);
      MEMORY[0x22AA8B3E0](*v15);
      sub_226D6D52C();
      sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0]);
      sub_226D6E30C();
      sub_226AF265C(v15 + v27, v10);
      if ((*v21)(v10, 1, v3) == 1)
      {
        sub_226D6F31C();
      }

      else
      {
        (*v24)(v6, v10, v3);
        sub_226D6F31C();
        sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578]);
        sub_226D6E30C();
        (*v23)(v6, v3);
      }

      v22 = *(v15 + v26);
      sub_226D6EC4C();
      sub_226AF1D84(v15, _s8MetadataV9CloudItemV6ObjectVMa_0);

      v19 += v25;
      --v16;
    }

    while (v16);
  }
}

uint64_t sub_226AF1254(uint64_t a1, uint64_t a2)
{
  v3 = sub_226D6D4AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - v9;
  v11 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  result = MEMORY[0x22AA8B3B0](v16);
  if (v16)
  {
    v18 = v11[5];
    v34 = v11[6];
    v35 = v18;
    v19 = v11[7];
    v32 = v11[8];
    v33 = v19;
    v20 = v11[9];
    v21 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v30 = *(v12 + 72);
    v31 = v20;
    v27 = (v4 + 8);
    v28 = (v4 + 32);
    do
    {
      sub_226AF1E24(v21, v15, _s8MetadataV9CloudItemV6ObjectVMa_2);
      sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578]);
      sub_226D6E30C();
      sub_226D6D52C();
      sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0]);
      sub_226D6E30C();
      v23 = *&v15[v34];
      sub_226D6EC4C();
      v24 = v15[v33];
      sub_226D6F31C();
      sub_226AF265C(&v15[v32], v10);
      if ((*(v4 + 48))(v10, 1, v3) == 1)
      {
        sub_226D6F31C();
      }

      else
      {
        v25 = v29;
        (*v28)(v29, v10, v3);
        sub_226D6F31C();
        sub_226D6E30C();
        (*v27)(v25, v3);
      }

      v22 = *&v15[v31];
      sub_226D6F32C();
      result = sub_226AF1D84(v15, _s8MetadataV9CloudItemV6ObjectVMa_2);
      v21 += v30;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_226AF15F4(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataV9CloudItemVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s8MetadataV15CloudItemStatusOMa(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6628, &qword_226D71828);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v34 - v16;
  v18 = *(v15 + 56);
  sub_226AF1E24(a1, &v34 - v16, _s8MetadataV15CloudItemStatusOMa);
  sub_226AF1E24(a2, &v17[v18], _s8MetadataV15CloudItemStatusOMa);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (v20)
  {
    if (v20 == 1)
    {
      if (v19(&v17[v18], 2, v4) != 1)
      {
        goto LABEL_9;
      }

LABEL_8:
      sub_226AF1D84(v17, _s8MetadataV15CloudItemStatusOMa);
      return 1;
    }

    if (v19(&v17[v18], 2, v4) == 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_226AF1E24(v17, v12, _s8MetadataV15CloudItemStatusOMa);
    if (!v19(&v17[v18], 2, v4))
    {
      sub_226AF25F4(&v17[v18], v8, _s8MetadataV9CloudItemVMa);
      if ((sub_226D6D4EC() & 1) == 0)
      {
        goto LABEL_19;
      }

      sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
      v22 = _s8MetadataV9CloudItemV6ObjectVMa(0);
      v23 = *(v22 + 20);
      v24 = *&v12[v23];
      v25 = *&v8[v23];
      if ((sub_226D6EC3C() & 1) == 0)
      {
        goto LABEL_19;
      }

      v26 = *(v22 + 24);
      if ((sub_226D6D44C() & 1) == 0 || (v27 = *(v4 + 20), v28 = &v12[v27], v29 = &v8[v27], (sub_226D6D4EC() & 1) == 0) || (v30 = *(v22 + 20), v31 = *&v28[v30], v32 = *&v29[v30], (sub_226D6EC3C() & 1) == 0) || (v33 = *(v22 + 24), (sub_226D6D44C() & 1) == 0) || (sub_226B2E200(*&v12[*(v4 + 24)], *&v8[*(v4 + 24)]) & 1) == 0)
      {
LABEL_19:
        sub_226AF1D84(v8, _s8MetadataV9CloudItemVMa);
        sub_226AF1D84(v12, _s8MetadataV9CloudItemVMa);
        sub_226AF1D84(v17, _s8MetadataV15CloudItemStatusOMa);
        return 0;
      }

      sub_226AF1D84(v8, _s8MetadataV9CloudItemVMa);
      sub_226AF1D84(v12, _s8MetadataV9CloudItemVMa);
      goto LABEL_8;
    }

    sub_226AF1D84(v12, _s8MetadataV9CloudItemVMa);
  }

LABEL_9:
  sub_226AC47B0(v17, &qword_27D7A6628, &qword_226D71828);
  return 0;
}

uint64_t sub_226AF19D8(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataV9LocalItemVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = _s8MetadataV15LocalItemStatusOMa(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6578, &qword_226D71568);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v25 - v16;
  v18 = *(v15 + 56);
  sub_226AF1E24(a1, &v25 - v16, _s8MetadataV15LocalItemStatusOMa);
  sub_226AF1E24(a2, &v17[v18], _s8MetadataV15LocalItemStatusOMa);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (v20)
  {
    if (v20 == 1)
    {
      if (v19(&v17[v18], 2, v4) != 1)
      {
        goto LABEL_9;
      }

LABEL_8:
      sub_226AF1D84(v17, _s8MetadataV15LocalItemStatusOMa);
      return 1;
    }

    if (v19(&v17[v18], 2, v4) == 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_226AF1E24(v17, v12, _s8MetadataV15LocalItemStatusOMa);
    if (!v19(&v17[v18], 2, v4))
    {
      sub_226AF25F4(&v17[v18], v8, _s8MetadataV9LocalItemVMa);
      sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
      v22 = *v12;
      v23 = *v8;
      if ((sub_226D6EC3C() & 1) == 0 || (v24 = *(v4 + 20), (sub_226D6D44C() & 1) == 0))
      {
        sub_226AF1D84(v8, _s8MetadataV9LocalItemVMa);
        sub_226AF1D84(v12, _s8MetadataV9LocalItemVMa);
        sub_226AF1D84(v17, _s8MetadataV15LocalItemStatusOMa);
        return 0;
      }

      sub_226AF1D84(v8, _s8MetadataV9LocalItemVMa);
      sub_226AF1D84(v12, _s8MetadataV9LocalItemVMa);
      goto LABEL_8;
    }

    sub_226AF1D84(v12, _s8MetadataV9LocalItemVMa);
  }

LABEL_9:
  sub_226AC47B0(v17, &qword_27D7A6578, &qword_226D71568);
  return 0;
}

uint64_t sub_226AF1D84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226AF1E24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226AF1EB4()
{
  result = sub_226D6D52C();
  if (v1 <= 0x3F)
  {
    result = sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
    if (v2 <= 0x3F)
    {
      result = sub_226D6D4AC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_226AF1F88()
{
  _s8MetadataV9CloudItemV6ObjectVMa(319);
  if (v0 <= 0x3F)
  {
    sub_226AF200C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_226AF200C()
{
  if (!qword_27D7A65A8)
  {
    _s8MetadataV9CloudItemV6ObjectVMa(255);
    v0 = sub_226D6E6AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A65A8);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_17Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = (*(*(v6 - 8) + 48))(a1, a2, v6);
  if (v7 >= 3)
  {
    return v7 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_store_extra_inhabitant_index_18Tm(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    v7 = (a2 + 2);
  }

  else
  {
    v7 = 0;
  }

  v8 = a5(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, a3, v8);
}

uint64_t sub_226AF2200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

uint64_t sub_226AF2284()
{
  result = sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
  if (v1 <= 0x3F)
  {
    result = sub_226D6D4AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_226AF2360()
{
  result = sub_226D6D52C();
  if (v1 <= 0x3F)
  {
    result = _s8MetadataV15CloudItemStatusOMa(319);
    if (v2 <= 0x3F)
    {
      result = _s8MetadataV15LocalItemStatusOMa(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_226AF248C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226AF25F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226AF265C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226AF26D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int64_t a4@<X8>)
{
  v8 = sub_226D6781C();
  v9 = *(v8 - 8);
  v141 = v8;
  v142 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v140 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A8, &qword_226D718C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v123 = &v115 - v14;
  v120 = sub_226D6708C();
  v119 = *(v120 - 8);
  v15 = *(v119 + 64);
  MEMORY[0x28223BE20](v120);
  v118 = (&v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v117 = sub_226D670CC();
  v116 = *(v117 - 8);
  v17 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v121 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_226D6B49C();
  v130 = *(v133 - 8);
  v19 = *(v130 + 64);
  MEMORY[0x28223BE20](v133);
  v21 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66B0, &qword_226D718C8);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v122 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v136 = &v115 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6638, &unk_226D71860);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v126 = (&v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v135 = &v115 - v31;
  v147 = sub_226D67B3C();
  v32 = *(v147 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v147);
  v146 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus();
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v127 = &v115 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v115 - v39;
  v41 = *(a2 + 16);
  v42 = MEMORY[0x277D84F90];
  v128 = a2;
  v129 = a4;
  v137 = a3;
  v138 = &v115 - v39;
  v131 = v32;
  v125 = v41;
  if (v41)
  {
    v132 = v21;
    v134 = a1;
    v148 = MEMORY[0x277D84F90];
    v43 = v41;
    sub_226AE1D68(0, v41, 0);
    v42 = v148;
    v44 = v32 + 16;
    v45 = *(v32 + 16);
    v46 = a2 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v143 = *(v44 + 56);
    v144 = v45;
    v145 = v44;
    v47 = (v44 - 8);
    do
    {
      v49 = v146;
      v48 = v147;
      v144(v146, v46, v147);
      v50 = sub_226D67ADC();
      v52 = v51;
      (*v47)(v49, v48);
      v148 = v42;
      v54 = *(v42 + 16);
      v53 = *(v42 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_226AE1D68((v53 > 1), v54 + 1, 1);
        v42 = v148;
      }

      *(v42 + 16) = v54 + 1;
      v55 = v42 + 16 * v54;
      *(v55 + 32) = v50;
      *(v55 + 40) = v52;
      v46 += v143;
      --v43;
    }

    while (v43);
    a3 = v137;
    v40 = v138;
    a1 = v134;
    v21 = v132;
  }

  v56 = sub_226AE3C28(v42);

  v57 = sub_226D677EC();
  v59 = v58;
  sub_226D69D0C();
  v60 = v139;
  sub_226BDBB64(v56, v57, v59, a3, v40);
  if (v60)
  {
  }

  v145 = 0;
  v146 = v57;
  v144 = v59;

  v62 = v135;
  sub_226D677BC();
  if (v125)
  {
    v63 = v131;
    v64 = v136;
    v65 = v147;
    (*(v131 + 16))(v136, v128 + ((*(v131 + 80) + 32) & ~*(v131 + 80)), v147);
    v66 = 0;
    v67 = v133;
    v68 = v127;
  }

  else
  {
    v66 = 1;
    v67 = v133;
    v68 = v127;
    v64 = v136;
    v65 = v147;
    v63 = v131;
  }

  (*(v63 + 56))(v64, v66, 1, v65);
  v69 = v126;
  sub_226AC40E8(v62, v126, &qword_27D7A6638, &unk_226D71860);
  v70 = v130;
  if ((*(v130 + 48))(v69, 1, v67) == 1)
  {
    sub_226AC47B0(v69, &qword_27D7A6638, &unk_226D71860);
    v71 = v129;
  }

  else
  {
    v134 = a1;
    v127 = *(v70 + 32);
    (v127)(v21, v69, v67);
    v139 = *(v70 + 16);
    v139(v68, v21, v67);
    v72 = v67;
    v73 = v40;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    v75 = *(v74 - 8);
    v76 = *(v75 + 56);
    v143 = v75 + 56;
    (v76)(v68, 0, 4, v74);
    LOBYTE(v73) = _s10FinanceKit22ManagedCloudOrderEventC0A6DaemonE14TrackingStatusO2eeoiySbAF_AFtFZ_0(v73, v68);
    sub_226AFBC34(v68, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
    if (v73)
    {
      (*(v70 + 8))(v21, v72);
      v71 = v129;
      v62 = v135;
      v40 = v138;
    }

    else
    {
      v126 = v76;
      v132 = v21;
      v85 = v136;
      v86 = v122;
      sub_226AC40E8(v136, v122, &qword_27D7A66B0, &qword_226D718C8);
      v87 = v131;
      v88 = v147;
      if ((*(v131 + 48))(v86, 1, v147) == 1)
      {

        (*(v130 + 8))(v132, v133);
        sub_226AC47B0(v85, &qword_27D7A66B0, &qword_226D718C8);
        sub_226AC47B0(v135, &qword_27D7A6638, &unk_226D71860);
        sub_226AFBC34(v138, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
        sub_226AC47B0(v86, &qword_27D7A66B0, &qword_226D718C8);
        return (v126)(v129, 1, 4, v74);
      }

      v98 = sub_226D67ADC();
      v99 = v87;
      v101 = v100;
      (*(v99 + 8))(v86, v88);
      v102 = *v124;
      v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66B8, &unk_226D718D0) + 64);
      v104 = v118;
      *v118 = v98;
      v104[1] = v101;
      v105 = v137;
      v106 = v144;
      v104[2] = v146;
      v104[3] = v106;
      v139(v104 + v103, v132, v133);
      v107 = v104;
      v108 = v119;
      v109 = v104;
      v110 = v120;
      (*(v119 + 104))(v109, *MEMORY[0x277CC6AD0], v120);

      v111 = v145;
      sub_226CC2F28(v107, v105, v121);
      if (v111)
      {

        (*(v108 + 8))(v107, v110);
        (*(v130 + 8))(v132, v133);
        sub_226AC47B0(v136, &qword_27D7A66B0, &qword_226D718C8);
        sub_226AC47B0(v135, &qword_27D7A6638, &unk_226D71860);
        return sub_226AFBC34(v138, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
      }

      v145 = 0;
      (*(v108 + 8))(v107, v110);
      (*(v116 + 8))(v121, v117);
      v113 = v138;
      sub_226AFBC34(v138, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
      (v127)(v113, v132, v133);
      v114 = v74;
      v40 = v113;
      (v126)(v113, 0, 4, v114);
      v71 = v129;
      v62 = v135;
    }
  }

  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
  (*(*(v77 - 8) + 56))(v68, 1, 4, v77);
  v78 = _s10FinanceKit22ManagedCloudOrderEventC0A6DaemonE14TrackingStatusO2eeoiySbAF_AFtFZ_0(v40, v68);
  sub_226AFBC34(v68, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
  if (v78)
  {
    v79 = v123;
    sub_226D6784C();
    v80 = v79;
    v81 = sub_226D6783C();
    v82 = *(v81 - 8);
    if ((*(v82 + 48))(v80, 1, v81) == 1)
    {
      sub_226AC47B0(v80, &qword_27D7A66A8, &qword_226D718C0);
      v83 = 0;
      v84 = v146;
LABEL_31:
      sub_226AF3524(v84, v144, v83, v137, v71);
      v112 = v138;

      sub_226AC47B0(v136, &qword_27D7A66B0, &qword_226D718C8);
      sub_226AC47B0(v62, &qword_27D7A6638, &unk_226D71860);
      return sub_226AFBC34(v112, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
    }

    else
    {
      v89 = sub_226D6782C();
      result = (*(v82 + 8))(v80, v81);
      v90 = 0;
      v91 = *(v89 + 16);
      v84 = v146;
      v92 = v142;
      while (1)
      {
        if (v91 == v90)
        {

          v83 = 0;
          goto LABEL_30;
        }

        if (v90 >= *(v89 + 16))
        {
          break;
        }

        v93 = v140;
        v94 = v141;
        (*(v92 + 16))(v140, v89 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v90++, v141);
        sub_226D6780C();
        v96 = v95;
        v97 = v94;
        v84 = v146;
        result = (*(v92 + 8))(v93, v97);
        if (v96)
        {

          v83 = 1;
LABEL_30:
          v71 = v129;
          v62 = v135;
          goto LABEL_31;
        }
      }

      __break(1u);
    }
  }

  else
  {

    sub_226AC47B0(v136, &qword_27D7A66B0, &qword_226D718C8);
    sub_226AC47B0(v62, &qword_27D7A6638, &unk_226D71860);
    return sub_226AFBBCC(v40, v71, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
  }

  return result;
}

uint64_t sub_226AF3524@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, int a3@<W3>, void *a4@<X4>, int64_t a5@<X8>)
{
  v288 = a4;
  v272 = a3;
  v276 = sub_226D6A15C();
  v275 = *(v276 - 8);
  v9 = *(v275 + 64);
  MEMORY[0x28223BE20](v276);
  v274 = &v257 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = sub_226D6708C();
  v286 = *(v285 - 8);
  v11 = *(v286 + 64);
  v12 = MEMORY[0x28223BE20](v285);
  v282 = (&v257 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v264 = (&v257 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v273 = &v257 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v266 = (&v257 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v270 = &v257 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v265 = (&v257 - v23);
  MEMORY[0x28223BE20](v22);
  v269 = &v257 - v24;
  v283 = sub_226D670CC();
  v278 = *(v283 - 8);
  v25 = *(v278 + 64);
  v26 = MEMORY[0x28223BE20](v283);
  v281 = &v257 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v263 = &v257 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v271 = &v257 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v262 = &v257 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v268 = &v257 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v261 = &v257 - v37;
  MEMORY[0x28223BE20](v36);
  v267 = &v257 - v38;
  v284 = sub_226D6A1EC();
  v287 = *(v284 - 8);
  v39 = *(v287 + 64);
  MEMORY[0x28223BE20](v284);
  v277 = &v257 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66C0, &unk_226D75EC0);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v279 = &v257 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v280 = &v257 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v257 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v257 - v50;
  v52 = sub_226D67A5C();
  v294 = *(v52 - 8);
  v295 = v52;
  v53 = *(v294 + 64);
  MEMORY[0x28223BE20](v52);
  v293 = &v257 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v309 = sub_226D67A8C();
  v305 = *(v309 - 8);
  v55 = *(v305 + 64);
  MEMORY[0x28223BE20](v309);
  v308 = (&v257 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_226D67AAC();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  v60 = MEMORY[0x28223BE20](v57);
  v307 = (&v257 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v60);
  v306 = (&v257 - v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66C8, &unk_226D718E0);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63 - 8);
  v298 = &v257 - v65;
  v66 = sub_226D67B3C();
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v72 = &v257 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v70 + 16))
  {
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v99 = sub_226D6E07C();
    __swift_project_value_buffer(v99, qword_28105F6A8);

    v100 = sub_226D6E05C();
    v101 = sub_226D6E9CC();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = a5;
      v104 = swift_slowAlloc();
      v310 = v104;
      *v102 = 136315138;
      *(v102 + 4) = sub_226AC4530(a1, a2, &v310);
      _os_log_impl(&dword_226AB4000, v100, v101, "There are no mail items to track an order with number %s", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v104);
      v105 = v104;
      a5 = v103;
      MEMORY[0x22AA8BEE0](v105, -1, -1);
      MEMORY[0x22AA8BEE0](v102, -1, -1);
    }

    goto LABEL_20;
  }

  v257 = v49;
  v296 = a1;
  v289 = a2;
  v258 = v51;
  v260 = a5;
  v292 = v5;
  v290 = v69;
  v73 = *(v69 + 16);
  v74 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v259 = v70;
  v291 = v68;
  v73(v72, v70 + v74);
  v297 = v72;
  v75 = sub_226D67ABC();
  v76 = v75;
  v77 = v75 + 56;
  v78 = 1 << *(v75 + 32);
  v79 = -1;
  if (v78 < 64)
  {
    v79 = ~(-1 << v78);
  }

  v80 = v79 & *(v75 + 56);
  v81 = (v78 + 63) >> 6;
  v303 = v58 + 16;
  v304 = v58 + 32;
  v302 = (v305 + 8);
  v305 = v58 + 8;

  v83 = 0;
  v84 = v57;
  v300 = v82;
  v301 = v58;
  v85 = v307;
  if (!v80)
  {
LABEL_6:
    while (1)
    {
      v86 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        break;
      }

      if (v86 >= v81)
      {

        v93 = 1;
        v94 = v298;
        goto LABEL_13;
      }

      v80 = *(v77 + 8 * v86);
      ++v83;
      if (v80)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  while (1)
  {
    v86 = v83;
LABEL_9:
    v87 = *(v76 + 48) + *(v58 + 72) * (__clz(__rbit64(v80)) | (v86 << 6));
    v88 = v306;
    (*(v58 + 16))(v306, v87, v84);
    v89 = *(v58 + 32);
    v89(v85, v88, v84);
    v90 = v308;
    v91 = v84;
    sub_226D67A9C();
    v92 = sub_226D67A7C();
    (*v302)(v90, v309);
    if (v92)
    {
      break;
    }

    v80 &= v80 - 1;
    (*v305)(v85, v91);
    v83 = v86;
    v84 = v91;
    v76 = v300;
    v58 = v301;
    if (!v80)
    {
      goto LABEL_6;
    }
  }

  v94 = v298;
  v89(v298, v85, v91);
  v93 = 0;
  v84 = v91;
  v58 = v301;
LABEL_13:
  (*(v58 + 56))(v94, v93, 1, v84);

  v95 = (*(v58 + 48))(v94, 1, v84);
  v97 = v296;
  v96 = v297;
  v98 = v289;
  if (v95 == 1)
  {
    sub_226AC47B0(v94, &qword_27D7A66C8, &unk_226D718E0);
    v308 = 0;
    v309 = 0;
  }

  else
  {
    v110 = v293;
    sub_226D67A6C();
    (*v305)(v94, v84);
    v308 = sub_226D67A4C();
    v309 = v111;
    (*(v294 + 8))(v110, v295);
  }

  v112 = sub_226D67AEC();
  v114 = v113;
  v115 = sub_226D67ACC();
  v117 = v116;
  v118 = v292;
  v119 = sub_226AFC648(v96, v97, v98);
  if (v118)
  {
    (*(v290 + 8))(v96, v291);
  }

  v306 = v115;
  v307 = v112;
  if ((v119 & 1) == 0)
  {
    (*(v290 + 8))(v297, v291);

    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    return (*(*(v123 - 8) + 56))(v260, 1, 4, v123);
  }

  v120 = v309;
  v121 = v98;
  v122 = sub_226AFA2B0(v259, v308, v309, v296, v98, v288);
  v81 = v260;
  if (v122)
  {
    (*(v290 + 8))(v297, v291);

LABEL_36:

LABEL_37:
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    v107 = *(*(v106 - 8) + 56);
    v108 = v81;
    return v107(v108, 1, 4, v106);
  }

  if (!v120)
  {
LABEL_35:
    (*(v290 + 8))(v297, v291);

    goto LABEL_36;
  }

  if ((MEMORY[0x22AA83AB0](v259) & 1) == 0)
  {

    swift_bridgeObjectRelease_n();

    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v124 = sub_226D6E07C();
    __swift_project_value_buffer(v124, qword_28105F6A8);

    v125 = sub_226D6E05C();
    v126 = sub_226D6E9CC();

    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v310 = v128;
      *v127 = 136315138;
      *(v127 + 4) = sub_226AC4530(v296, v121, &v310);
      _os_log_impl(&dword_226AB4000, v125, v126, "Order with number %s does not contain physical goods, skipping automatic ingestion.", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v128);
      v81 = v260;
      MEMORY[0x22AA8BEE0](v128, -1, -1);
      MEMORY[0x22AA8BEE0](v127, -1, -1);
    }

    (*(v290 + 8))(v297, v291);
    goto LABEL_37;
  }

  if (sub_226B16018(v307, v114, v308, v120, v288))
  {

    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v129 = sub_226D6E07C();
    __swift_project_value_buffer(v129, qword_28105F6A8);

    v130 = v120;
    v131 = sub_226D6E05C();
    v132 = sub_226D6E9EC();

    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v310 = v134;
      *v133 = 136315650;
      v135 = sub_226AC4530(v308, v130, &v310);

      *(v133 + 4) = v135;
      *(v133 + 12) = 2080;
      v136 = sub_226AC4530(v307, v114, &v310);

      *(v133 + 14) = v136;
      v137 = v296;
      *(v133 + 22) = 2080;
      *(v133 + 24) = sub_226AC4530(v137, v121, &v310);
      _os_log_impl(&dword_226AB4000, v131, v132, "Merchant %s with email address: %s was previously allowlisted. Automatically ingesting order %s.", v133, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v134, -1, -1);
      MEMORY[0x22AA8BEE0](v133, -1, -1);

      v138 = v283;
    }

    else
    {

      v138 = v283;
      v137 = v296;
    }

    v152 = *v299;
    v153 = v297;
    v154 = sub_226D67ADC();
    v155 = v282;
    *v282 = v154;
    v155[1] = v156;
    v155[2] = v137;
    v155[3] = v121;
    v157 = v286;
    v158 = v285;
    (*(v286 + 104))(v155, *MEMORY[0x277CC6AB8], v285);

    v159 = v281;
    sub_226CC2F28(v155, v288, v281);
    (*(v157 + 8))(v155, v158);
    (*(v278 + 8))(v159, v138);
    (*(v290 + 8))(v153, v291);
LABEL_64:
    v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    return (*(*(v183 - 8) + 56))(v260, 3, 4, v183);
  }

  v139 = v299;
  v140 = *__swift_project_boxed_opaque_existential_1(v299 + 16, v299[19]);
  v141 = v258;
  sub_226BCAFF0(v307, v114, v258);
  v142 = *__swift_project_boxed_opaque_existential_1(v139 + 16, v139[19]);
  v143 = v257;
  sub_226BCB99C(v306, v117, v257);
  v144 = v279;
  sub_226AC40E8(v141, v279, &qword_27D7A66C0, &unk_226D75EC0);
  v145 = *(v287 + 48);
  v146 = v284;
  v147 = v145(v144, 1, v284);
  v306 = v145;
  if (v147 == 1)
  {
    v148 = v143;
    v149 = v280;
    sub_226AC40E8(v148, v280, &qword_27D7A66C0, &unk_226D75EC0);
    v150 = v145(v144, 1, v146);
    v151 = v287;
    if (v150 != 1)
    {
      sub_226AC47B0(v144, &qword_27D7A66C0, &unk_226D75EC0);
    }
  }

  else
  {
    v151 = v287;
    v149 = v280;
    (*(v287 + 32))(v280, v144, v146);
    (*(v151 + 56))(v149, 0, 1, v146);
  }

  v160 = (v306)(v149, 1, v146);
  v161 = v146;
  v162 = v299;
  if (v160 != 1)
  {

    v166 = v277;
    (*(v151 + 32))(v277, v149, v161);
    if (sub_226D6A18C())
    {
      if (sub_226D6A19C())
      {
        v167 = v299;
        if (qword_28105F6A0 != -1)
        {
          swift_once();
        }

        v168 = sub_226D6E07C();
        __swift_project_value_buffer(v168, qword_28105F6A8);

        v169 = sub_226D6E05C();
        v170 = sub_226D6E9EC();

        v171 = os_log_type_enabled(v169, v170);
        v172 = v269;
        if (v171)
        {
          v173 = swift_slowAlloc();
          v174 = swift_slowAlloc();
          v310 = v174;
          *v173 = 136315394;
          *(v173 + 4) = sub_226AC4530(v307, v114, &v310);
          *(v173 + 12) = 2080;
          *(v173 + 14) = sub_226AC4530(v296, v121, &v310);
          _os_log_impl(&dword_226AB4000, v169, v170, "Merchant %s is on allowlist for automatic ingestion. Tracking the order with number %s", v173, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v174, -1, -1);
          MEMORY[0x22AA8BEE0](v173, -1, -1);
        }

        v175 = *v167;
        v176 = v308;
        *v172 = v307;
        v172[1] = v114;
        v177 = v309;
        v172[2] = v176;
        v172[3] = v177;
        v178 = *MEMORY[0x277CC6B00];
        v179 = v286;
        v180 = v285;
        v308 = *(v286 + 104);
        (v308)(v172, v178, v285);
        v181 = v267;
        v182 = v288;
        v309 = v175;
        sub_226CC2F28(v172, v288, v267);
        v248 = *(v179 + 8);
        v249 = v172;
        v286 = v179 + 8;
        v250 = v248;
        v248(v249, v180);
        v251 = *(v278 + 8);
        v278 += 8;
        v251(v181, v283);
        v252 = sub_226D67ADC();
        v253 = v265;
        *v265 = v252;
        v253[1] = v254;
        v253[2] = v296;
        v253[3] = v121;
        (v308)(v253, *MEMORY[0x277CC6AB8], v180);

        sub_226CC2F28(v253, v182, v261);
        v255 = (v287 + 8);
        v256 = (v290 + 8);
        v250(v265, v285);
        v251(v261, v283);
        (*v255)(v277, v284);
        sub_226AC47B0(v257, &qword_27D7A66C0, &unk_226D75EC0);
        sub_226AC47B0(v258, &qword_27D7A66C0, &unk_226D75EC0);
        (*v256)(v297, v291);
        goto LABEL_64;
      }

      (*(v151 + 8))(v166, v284);
      v162 = v299;
      goto LABEL_76;
    }

    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v207 = sub_226D6E07C();
    __swift_project_value_buffer(v207, qword_28105F6A8);
    v208 = v114;

    v209 = sub_226D6E05C();
    v210 = sub_226D6E9EC();

    v211 = os_log_type_enabled(v209, v210);
    v212 = v307;
    a5 = v260;
    if (v211)
    {
      v213 = v166;
      v214 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      v310 = v215;
      *v214 = 136315138;
      v216 = sub_226AC4530(v212, v208, &v310);

      *(v214 + 4) = v216;
      _os_log_impl(&dword_226AB4000, v209, v210, "Merchant %s was on denylist", v214, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v215);
      v217 = v215;
      a5 = v260;
      MEMORY[0x22AA8BEE0](v217, -1, -1);
      MEMORY[0x22AA8BEE0](v214, -1, -1);

      (*(v287 + 8))(v213, v284);
    }

    else
    {

      (*(v287 + 8))(v166, v284);
    }

    sub_226AC47B0(v257, &qword_27D7A66C0, &unk_226D75EC0);
    sub_226AC47B0(v258, &qword_27D7A66C0, &unk_226D75EC0);
    (*(v290 + 8))(v297, v291);
LABEL_20:
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    v107 = *(*(v106 - 8) + 56);
    v108 = a5;
    return v107(v108, 1, 4, v106);
  }

  sub_226AC47B0(v149, &qword_27D7A66C0, &unk_226D75EC0);
  v163 = *__swift_project_boxed_opaque_existential_1(v162 + 16, v162[19]);
  v164 = v274;
  ExtractedOrderConfigurationProvider.defaultBehavior.getter();
  v165 = (*(v275 + 88))(v164, v276);
  if (v165 == *MEMORY[0x277CC7AE8])
  {

LABEL_76:
    v218 = v273;
    if (v272)
    {
      if (qword_28105F6A0 != -1)
      {
        swift_once();
      }

      v219 = sub_226D6E07C();
      __swift_project_value_buffer(v219, qword_28105F6A8);

      v220 = sub_226D6E05C();
      v221 = sub_226D6E9EC();

      if (os_log_type_enabled(v220, v221))
      {
        v222 = swift_slowAlloc();
        v223 = swift_slowAlloc();
        v310 = v223;
        *v222 = 136315138;
        *(v222 + 4) = sub_226AC4530(v296, v121, &v310);
        _os_log_impl(&dword_226AB4000, v220, v221, "Order with number %s was automatically tracked as it has a linked transaction.", v222, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v223);
        MEMORY[0x22AA8BEE0](v223, -1, -1);
        MEMORY[0x22AA8BEE0](v222, -1, -1);
      }

      v224 = *v162;
      v225 = v308;
      *v218 = v307;
      v218[1] = v114;
      v226 = v309;
      v218[2] = v225;
      v218[3] = v226;
      v227 = *MEMORY[0x277CC6B00];
      v228 = v286;
      v229 = v285;
      v308 = *(v286 + 104);
      (v308)(v218, v227, v285);
      v230 = v271;
      v231 = v288;
      v309 = v224;
      sub_226CC2F28(v218, v288, v271);
      v307 = *(v228 + 8);
      (v307)(v218, v229);
      v241 = *(v278 + 8);
      v278 += 8;
      v306 = v241;
      (v241)(v230, v283);
      v242 = v297;
      v243 = sub_226D67ADC();
      v244 = v264;
      *v264 = v243;
      v244[1] = v245;
      v244[2] = v296;
      v244[3] = v121;
      (v308)(v244, *MEMORY[0x277CC6AB8], v229);

      v246 = v263;
      sub_226CC2F28(v244, v231, v263);
      v247 = (v290 + 8);
      (v307)(v244, v229);
      (v306)(v246, v283);
      sub_226AC47B0(v257, &qword_27D7A66C0, &unk_226D75EC0);
      sub_226AC47B0(v258, &qword_27D7A66C0, &unk_226D75EC0);
      (*v247)(v242, v291);
      goto LABEL_64;
    }

    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v232 = sub_226D6E07C();
    __swift_project_value_buffer(v232, qword_28105F6A8);

    v233 = sub_226D6E05C();
    v234 = sub_226D6E9EC();

    if (!os_log_type_enabled(v233, v234))
    {
LABEL_95:

      sub_226AC47B0(v257, &qword_27D7A66C0, &unk_226D75EC0);
      sub_226AC47B0(v258, &qword_27D7A66C0, &unk_226D75EC0);
      (*(v290 + 8))(v297, v291);
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
      v107 = *(*(v106 - 8) + 56);
      v108 = v260;
      return v107(v108, 1, 4, v106);
    }

    v235 = swift_slowAlloc();
    v236 = swift_slowAlloc();
    v310 = v236;
    *v235 = 136315138;
    *(v235 + 4) = sub_226AC4530(v296, v121, &v310);
    v237 = "Order with number %s was not tracked automatically.";
LABEL_91:
    _os_log_impl(&dword_226AB4000, v233, v234, v237, v235, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v236);
    MEMORY[0x22AA8BEE0](v236, -1, -1);
    MEMORY[0x22AA8BEE0](v235, -1, -1);
    goto LABEL_95;
  }

  if (v165 == *MEMORY[0x277CC7AF0])
  {

    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v184 = sub_226D6E07C();
    __swift_project_value_buffer(v184, qword_28105F6A8);

    v185 = sub_226D6E05C();
    v186 = sub_226D6E9EC();

    v187 = os_log_type_enabled(v185, v186);
    v188 = v270;
    if (v187)
    {
      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v310 = v190;
      *v189 = 136315394;
      *(v189 + 4) = sub_226AC4530(v307, v114, &v310);
      *(v189 + 12) = 2080;
      *(v189 + 14) = sub_226AC4530(v296, v121, &v310);
      _os_log_impl(&dword_226AB4000, v185, v186, "Merchant %s is not an allow list but default is to automatically ingest. Tracking the order with number %s", v189, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v190, -1, -1);
      MEMORY[0x22AA8BEE0](v189, -1, -1);
    }

    v191 = *v162;
    v192 = v308;
    *v188 = v307;
    v188[1] = v114;
    v193 = v309;
    v188[2] = v192;
    v188[3] = v193;
    v194 = *MEMORY[0x277CC6B00];
    v195 = v286;
    v196 = v285;
    v308 = *(v286 + 104);
    (v308)(v188, v194, v285);
    v197 = v268;
    v198 = v288;
    v309 = v191;
    sub_226CC2F28(v188, v288, v268);
    v199 = *(v195 + 8);
    v200 = v188;
    v286 = v195 + 8;
    v201 = v199;
    v199(v200, v196);
    v202 = *(v278 + 8);
    v278 += 8;
    v202(v197, v283);
    v203 = sub_226D67ADC();
    v204 = v266;
    *v266 = v203;
    v204[1] = v205;
    v204[2] = v296;
    v204[3] = v121;
    (v308)(v204, *MEMORY[0x277CC6AB8], v196);

    sub_226CC2F28(v204, v198, v262);
    v206 = (v290 + 8);
    v201(v266, v285);
    v202(v262, v283);
    sub_226AC47B0(v257, &qword_27D7A66C0, &unk_226D75EC0);
    sub_226AC47B0(v258, &qword_27D7A66C0, &unk_226D75EC0);
    (*v206)(v297, v291);
    goto LABEL_64;
  }

  if (v165 == *MEMORY[0x277CC7AF8])
  {
    swift_bridgeObjectRelease_n();

    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v238 = sub_226D6E07C();
    __swift_project_value_buffer(v238, qword_28105F6A8);
    v239 = v114;

    v233 = sub_226D6E05C();
    v234 = sub_226D6E9EC();

    if (!os_log_type_enabled(v233, v234))
    {

      goto LABEL_95;
    }

    v235 = swift_slowAlloc();
    v236 = swift_slowAlloc();
    v310 = v236;
    *v235 = 136315138;
    v240 = sub_226AC4530(v307, v239, &v310);

    *(v235 + 4) = v240;
    v237 = "Merchant %s not on denylist, but default is to deny";
    goto LABEL_91;
  }

  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226AF5B30@<X0>(void (*a1)(void, void, void)@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v350 = a2;
  v351 = a1;
  v334 = a3;
  v337 = sub_226D67B3C();
  v329 = *(v337 - 8);
  v3 = *(v329 + 64);
  MEMORY[0x28223BE20](v337);
  v336 = &v309 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v321 = &v309 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v320 = &v309 - v10;
  MEMORY[0x28223BE20](v9);
  v323 = &v309 - v11;
  v328 = sub_226D6B49C();
  v327 = *(v328 - 8);
  v12 = *(v327 + 64);
  v13 = MEMORY[0x28223BE20](v328);
  v313 = &v309 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v319 = &v309 - v16;
  MEMORY[0x28223BE20](v15);
  v324 = &v309 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6638, &unk_226D71860);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v326 = &v309 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v331 = &v309 - v22;
  v23 = sub_226D6785C();
  v344 = *(v23 - 8);
  v24 = *(v344 + 64);
  MEMORY[0x28223BE20](v23);
  v342 = &v309 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_226D696EC();
  v339 = *(v26 - 8);
  v340 = v26;
  v27 = *(v339 + 8);
  MEMORY[0x28223BE20](v26);
  v338 = &v309 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6640, &qword_226D75B50);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v341 = &v309 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v345 = &v309 - v33;
  v34 = sub_226D6D52C();
  v35 = *(v34 - 1);
  v36 = *(v35 + 8);
  v37 = MEMORY[0x28223BE20](v34);
  v330 = &v309 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v325 = &v309 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v347 = &v309 - v42;
  MEMORY[0x28223BE20](v41);
  v352 = &v309 - v43;
  v349 = sub_226D6DFCC();
  v44 = *(v349 - 1);
  v45 = *(v44 + 64);
  v46 = MEMORY[0x28223BE20](v349);
  v315 = &v309 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v314 = &v309 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v52 = &v309 - v51;
  MEMORY[0x28223BE20](v50);
  v54 = &v309 - v53;
  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v55 = sub_226D6DFFC();
  v56 = __swift_project_value_buffer(v55, qword_281064510);
  sub_226D6DFBC();
  v316 = v56;
  v57 = sub_226D6DFDC();
  v58 = sub_226D6EABC();
  v59 = sub_226D6EC8C();
  v343 = v23;
  if (v59)
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    v61 = sub_226D6DFAC();
    _os_signpost_emit_with_name_impl(&dword_226AB4000, v57, v58, v61, "InsertOrUpdateExtractedOrder", "", v60, 2u);
    MEMORY[0x22AA8BEE0](v60, -1, -1);
  }

  v62 = v349;
  (*(v44 + 16))(v52, v54, v349);
  v63 = sub_226D6E03C();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  v66 = sub_226D6E02C();
  v67 = *(v44 + 8);
  v318 = v44 + 8;
  v317 = v67;
  v67(v54, v62);
  v68 = v351;
  v69 = v352;
  sub_226D694BC();
  if (qword_28105F6A0 != -1)
  {
    swift_once();
  }

  v70 = sub_226D6E07C();
  v71 = __swift_project_value_buffer(v70, qword_28105F6A8);
  v72 = (v35 + 16);
  v73 = *(v35 + 2);
  v74 = v35;
  v75 = v347;
  v333 = v72;
  v332 = v73;
  v73(v347, v69, v34);
  v335 = v71;
  v76 = sub_226D6E05C();
  v77 = sub_226D6E9EC();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v346 = v66;
    v79 = v78;
    v311 = v78;
    v312 = swift_slowAlloc();
    *&v353[0] = v312;
    *v79 = 136315138;
    sub_226AFD8B4(&qword_27D7A6648, MEMORY[0x277CC95F0]);
    v80 = sub_226D6F1CC();
    v82 = v81;
    v83 = *(v74 + 1);
    v83(v75, v34);
    v84 = sub_226AC4530(v80, v82, v353);
    v68 = v351;

    v85 = v311;
    *(v311 + 4) = v84;
    v86 = v85;
    _os_log_impl(&dword_226AB4000, v76, v77, "Inserting cascade order with ID: %s", v85, 0xCu);
    v87 = v312;
    __swift_destroy_boxed_opaque_existential_0Tm(v312);
    MEMORY[0x22AA8BEE0](v87, -1, -1);
    v66 = v346;
    MEMORY[0x22AA8BEE0](v86, -1, -1);
  }

  else
  {

    v83 = *(v74 + 1);
    v83(v75, v34);
  }

  v88 = v350;
  v89 = v348;
  v90 = sub_226BD5618(v68, v350);
  if (!v89)
  {
    v347 = v74;
    v312 = v34;
    v348 = 0;
    v346 = v66;
    if (v90 >= 0)
    {
      v91 = v90;
    }

    else
    {
      v91 = (v90 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v310 = v91;
    v311 = (v90 & 0x7FFFFFFFFFFFFFFFLL);
    sub_226D693FC();
    v92 = sub_226D67B0C();

    (*(v339 + 2))(v338, v68, v340);
    v93 = v345;
    v94 = v343;
    sub_226D677CC();
    v95 = v341;
    sub_226AC40E8(v93, v341, &qword_27D7A6640, &qword_226D75B50);
    v96 = v344;
    if ((*(v344 + 48))(v95, 1, v94) == 1)
    {

      sub_226AC47B0(v95, &qword_27D7A6640, &qword_226D75B50);
      v97 = v330;
      v98 = v352;
      v99 = v312;
      v332(v330, v352, v312);
      v100 = sub_226D6E05C();
      v101 = sub_226D6E9CC();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        *&v353[0] = v103;
        *v102 = 136315138;
        sub_226AFD8B4(&qword_27D7A6648, MEMORY[0x277CC95F0]);
        v104 = sub_226D6F1CC();
        v105 = v97;
        v106 = v83;
        v108 = v107;
        v106(v105, v99);
        v109 = sub_226AC4530(v104, v108, v353);

        *(v102 + 4) = v109;
        _os_log_impl(&dword_226AB4000, v100, v101, "Invalid extracted order with cascade ID: %s", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v103);
        MEMORY[0x22AA8BEE0](v103, -1, -1);
        MEMORY[0x22AA8BEE0](v102, -1, -1);

        v110 = v311;
        sub_226AC47B0(v345, &qword_27D7A6640, &qword_226D75B50);
        v106(v352, v99);
      }

      else
      {

        v118 = v311;
        v83(v97, v99);
        sub_226AC47B0(v345, &qword_27D7A6640, &qword_226D75B50);
        v83(v98, v99);
      }

LABEL_28:
      v143 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult(0);
      (*(*(v143 - 8) + 56))(v334, 1, 1, v143);
      goto LABEL_29;
    }

    (*(v96 + 32))(v342, v95, v94);
    if (!*(v92 + 16))
    {

      v119 = v325;
      v120 = v352;
      v121 = v312;
      v332(v325, v352, v312);
      v122 = sub_226D6E05C();
      v123 = sub_226D6E9CC();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        *&v353[0] = v125;
        *v124 = 136315138;
        sub_226AFD8B4(&qword_27D7A6648, MEMORY[0x277CC95F0]);
        v126 = sub_226D6F1CC();
        v127 = v121;
        v129 = v128;
        v130 = v119;
        v131 = v127;
        v83(v130, v127);
        v132 = sub_226AC4530(v126, v129, v353);

        *(v124 + 4) = v132;
        _os_log_impl(&dword_226AB4000, v122, v123, "Mail items are empty ID: %s", v124, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v125);
        MEMORY[0x22AA8BEE0](v125, -1, -1);
        MEMORY[0x22AA8BEE0](v124, -1, -1);

        v133 = v311;
        (*(v344 + 8))(v342, v343);
        sub_226AC47B0(v345, &qword_27D7A6640, &qword_226D75B50);
        v83(v352, v131);
      }

      else
      {

        v142 = v311;
        v83(v119, v121);
        (*(v344 + 8))(v342, v343);
        sub_226AC47B0(v345, &qword_27D7A6640, &qword_226D75B50);
        v83(v120, v121);
      }

      goto LABEL_28;
    }

    v341 = v92;
    v111 = v331;
    sub_226D6932C();
    v112 = v111;
    v113 = v326;
    sub_226AC40E8(v112, v326, &qword_27D7A6638, &unk_226D71860);
    v114 = v327;
    v115 = v328;
    v116 = (*(v327 + 48))(v113, 1, v328);
    v117 = v348;
    if (v116 == 1)
    {
      v309 = v83;
      v338 = 0;
    }

    else
    {
      v134 = v113;
      v135 = v324;
      (*(v114 + 32))(v324, v134, v115);
      sub_226D6751C();
      v136 = sub_226D6745C();
      if (v117)
      {
        v137 = v311;

        (*(v114 + 8))(v135, v115);
        sub_226AC47B0(v331, &qword_27D7A6638, &unk_226D71860);
        v138 = *(v344 + 8);
        v139 = v342;
        v140 = v94;
LABEL_26:
        v138(v139, v140);
        v141 = v345;
LABEL_34:
        sub_226AC47B0(v141, &qword_27D7A6640, &qword_226D75B50);
        v83(v352, v312);
        goto LABEL_29;
      }

      v145 = v136;
      v309 = v83;
      (*(v114 + 8))(v135, v115);
      v338 = v145;
    }

    sub_226AC47B0(v331, &qword_27D7A6638, &unk_226D71860);
    v146 = sub_226D694AC();
    v148 = v147;
    v149 = sub_226D6933C();
    v151 = v150;
    v152 = sub_226D677EC();
    v154 = v153;
    v155 = sub_226D6990C();
    v156 = sub_226D6986C();
    if (v117)
    {

      v157 = v311;

      v158 = v344;
      v159 = v345;
      v83 = v309;
      v160 = v338;
LABEL_33:
      v161 = v343;

      (*(v158 + 8))(v342, v161);
      v141 = v159;
      goto LABEL_34;
    }

    v332 = v155;
    v331 = v146;
    v333 = v148;
    if (v156)
    {
      v339 = v156;

      v162 = v323;
      v160 = v338;
      v163 = v343;
LABEL_37:

      v354 = 0;
      memset(v353, 0, sizeof(v353));
      v164 = v341;
      sub_226AF26D8(v342, v341, v350, v162);
      v338 = v160;
      v348 = 0;
      v166 = *(v164 + 16);
      v167 = MEMORY[0x277D84F90];
      if (v166)
      {
        v355 = MEMORY[0x277D84F90];
        sub_226AE1D68(0, v166, 0);
        v167 = v355;
        v351 = *(v329 + 16);
        v168 = v164 + ((*(v329 + 80) + 32) & ~*(v329 + 80));
        v340 = *(v329 + 72);
        v329 += 16;
        v169 = (v329 - 8);
        do
        {
          v170 = v336;
          v171 = v337;
          v351(v336, v168, v337);
          v172 = sub_226D67ADC();
          v174 = v173;
          (*v169)(v170, v171);
          v355 = v167;
          v176 = *(v167 + 16);
          v175 = *(v167 + 24);
          if (v176 >= v175 >> 1)
          {
            sub_226AE1D68((v175 > 1), v176 + 1, 1);
            v167 = v355;
          }

          *(v167 + 16) = v176 + 1;
          v177 = v167 + 16 * v176;
          *(v177 + 32) = v172;
          *(v177 + 40) = v174;
          v168 += v340;
          --v166;
        }

        while (v166);
        v163 = v343;
        v178 = v323;
      }

      else
      {
        v178 = v162;
      }

      v336 = sub_226AE3C28(v167);

      v196 = sub_226D677EC();
      v198 = v197;
      v199 = sub_226D677DC();
      v201 = v200;
      v202 = v320;
      sub_226AFBB10(v178, v320, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);

      v203 = sub_226D6E05C();
      v204 = sub_226D6E9EC();

      v205 = os_log_type_enabled(v203, v204);
      v340 = v201;
      v351 = v199;
      v337 = v198;
      v333 = v196;
      if (v205)
      {
        v206 = v202;
        v207 = swift_slowAlloc();
        v332 = swift_slowAlloc();
        v355 = v332;
        *v207 = 136315650;
        *(v207 + 4) = sub_226AC4530(v199, v201, &v355);
        v208 = v204;
        *(v207 + 12) = 2080;
        *(v207 + 14) = sub_226AC4530(v196, v198, &v355);
        *(v207 + 22) = 2080;
        v209 = ManagedCloudOrderEvent.TrackingStatus.description.getter();
        v211 = v210;
        sub_226AFBC34(v206, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
        v212 = sub_226AC4530(v209, v211, &v355);
        v163 = v343;
        v83 = v309;

        *(v207 + 24) = v212;
        _os_log_impl(&dword_226AB4000, v203, v208, "Order with id: %s sanitizedOrderNumber: %s has status: %s", v207, 0x20u);
        v213 = v332;
        swift_arrayDestroy();
        v214 = v323;
        v215 = v342;
        MEMORY[0x22AA8BEE0](v213, -1, -1);
        MEMORY[0x22AA8BEE0](v207, -1, -1);

        v216 = v348;
        v217 = v350;
        v218 = v328;
        v219 = v321;
      }

      else
      {

        sub_226AFBC34(v202, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
        v216 = v348;
        v217 = v350;
        v218 = v328;
        v214 = v178;
        v219 = v321;
        v83 = v309;
        v215 = v342;
      }

      sub_226AFBB10(v214, v219, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
      v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
      v221 = (*(*(v220 - 8) + 48))(v219, 4, v220);
      if (v221 > 1)
      {
        v222 = v339;
        v223 = v351;
        if ((v221 - 2) < 2)
        {
          v309 = v83;

          sub_226AF87BC(v215, v310, v222, v336, v341, v333, v337, v217, v334);

          v224 = v311;

          sub_226AFBC34(v323, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
          sub_226AFBB78(v353);
          (*(v344 + 8))(v215, v163);
          sub_226AC47B0(v345, &qword_27D7A6640, &qword_226D75B50);
          goto LABEL_103;
        }

LABEL_81:

        v252 = v315;
        sub_226D6DFBC();
        v253 = sub_226D6DFDC();
        v254 = sub_226D6EACC();
        if (sub_226D6EC8C())
        {
          v255 = swift_slowAlloc();
          *v255 = 0;
          v256 = sub_226D6DFAC();
          _os_signpost_emit_with_name_impl(&dword_226AB4000, v253, v254, v256, "InsertOrUpdateExtractedOrder", "UntrackOrder", v255, 2u);
          MEMORY[0x22AA8BEE0](v255, -1, -1);
        }

        v317(v252, v349);
        v257 = v312;
        if (v339)
        {
          v258 = sub_226D6E05C();
          v259 = sub_226D6E9EC();
          if (os_log_type_enabled(v258, v259))
          {
            v260 = swift_slowAlloc();
            *v260 = 0;
            _os_log_impl(&dword_226AB4000, v258, v259, "Deleting the existing tracked order", v260, 2u);
            MEMORY[0x22AA8BEE0](v260, -1, -1);
          }

          v261 = v339;
          v262 = v348;
          sub_226CCAA84(v339, v350);
          if (v262)
          {

            v263 = v311;
            sub_226AFBC34(v323, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
            sub_226AFBB78(v353);
            (*(v344 + 8))(v215, v163);
            sub_226AC47B0(v345, &qword_27D7A6640, &qword_226D75B50);
            v83(v352, v257);
            goto LABEL_29;
          }

          v276 = v311;

          v270 = v344;
          v223 = v351;
        }

        else
        {
          v269 = v311;

          v270 = v344;
        }

        sub_226AFBC34(v323, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
        sub_226AFBB78(v353);
        (*(v270 + 8))(v215, v163);
        sub_226AC47B0(v345, &qword_27D7A6640, &qword_226D75B50);
        v83(v352, v257);
        v277 = v334;
        v278 = v340;
        *v334 = v223;
        v277[1] = v278;
        type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult(0);
        swift_storeEnumTagMultiPayload();
        v279 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult(0);
        *(v277 + *(v279 + 20)) = 0;
        (*(*(v279 - 8) + 56))(v277, 0, 1, v279);
        goto LABEL_29;
      }

      v223 = v351;
      if (!v221)
      {
        (*(v327 + 32))(v319, v219, v218);
        v225 = v314;
        sub_226D6DFBC();
        v226 = sub_226D6DFDC();
        v227 = sub_226D6EACC();
        if (sub_226D6EC8C())
        {
          v228 = swift_slowAlloc();
          *v228 = 0;
          v229 = sub_226D6DFAC();
          _os_signpost_emit_with_name_impl(&dword_226AB4000, v226, v227, v229, "InsertOrUpdateExtractedOrder", "LinkToClassicOrder", v228, 2u);
          v230 = v228;
          v217 = v350;
          MEMORY[0x22AA8BEE0](v230, -1, -1);
        }

        v317(v225, v349);
        v231 = v339;
        if (v339)
        {
          v232 = v215;
          v233 = v83;
          v234 = v340;

          v235 = v231;
          v236 = sub_226D6E05C();
          v237 = sub_226D6E9EC();

          if (os_log_type_enabled(v236, v237))
          {
            v238 = swift_slowAlloc();
            v239 = swift_slowAlloc();
            v355 = v239;
            *v238 = 136315138;
            *(v238 + 4) = sub_226AC4530(v351, v234, &v355);
            _os_log_impl(&dword_226AB4000, v236, v237, "Order %s is linked to a classic order, so we are deleting extrated order", v238, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v239);
            v240 = v239;
            v231 = v339;
            v232 = v342;
            v163 = v343;
            MEMORY[0x22AA8BEE0](v240, -1, -1);
            v241 = v238;
            v217 = v350;
            MEMORY[0x22AA8BEE0](v241, -1, -1);
          }

          v83 = v233;
          v242 = v348;
          sub_226CCAA84(v235, v217);
          v243 = v242;
          if (v242)
          {

            v244 = v311;

            (*(v327 + 8))(v319, v328);
            sub_226AFBC34(v323, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
            sub_226AFBB78(v353);
            v138 = *(v344 + 8);
            v139 = v232;
LABEL_111:
            v140 = v163;
            goto LABEL_26;
          }

          v215 = v232;
        }

        else
        {
          v243 = v348;
        }

        v280 = v328;
        v281 = v327;
        v282 = v338;
        if (v338)
        {
          v309 = v83;
          v348 = v243;
          v283 = v313;
          (*(v327 + 16))(v313, v319, v328);
          v284 = v282;
          v285 = v281;
          v286 = sub_226D6E05C();
          v287 = sub_226D6E9EC();
          if (os_log_type_enabled(v286, v287))
          {
            v288 = swift_slowAlloc();
            v289 = swift_slowAlloc();
            v355 = v289;
            *v288 = 136315138;
            sub_226AFD8B4(&qword_27D7A6658, MEMORY[0x277CC7F28]);
            v290 = v287;
            v291 = sub_226D6F1CC();
            v292 = v285;
            v293 = v284;
            v295 = v294;
            v349 = *(v292 + 8);
            (v349)(v283, v280);
            v296 = sub_226AC4530(v291, v295, &v355);
            v284 = v293;

            *(v288 + 4) = v296;
            _os_log_impl(&dword_226AB4000, v286, v290, "Updating classic order %s with new mail items.", v288, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v289);
            v297 = v289;
            v163 = v343;
            MEMORY[0x22AA8BEE0](v297, -1, -1);
            v298 = v288;
            v217 = v350;
            MEMORY[0x22AA8BEE0](v298, -1, -1);
          }

          else
          {

            v349 = *(v285 + 8);
            (v349)(v283, v280);
          }

          v231 = v339;
          v301 = v348;
          sub_226AFA06C(v284, v341, v217);
          v243 = v301;
          v300 = v333;
          if (v301)
          {

            v302 = v311;

            (v349)(v319, v328);
            sub_226AFBC34(v323, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
            sub_226AFBB78(v353);
            (*(v344 + 8))(v342, v163);
            goto LABEL_38;
          }

          [v310 setClassicOrder_];

          v83 = v309;
          v215 = v342;
        }

        else
        {

          v300 = v333;
        }

        v303 = *v322;
        sub_226CC3218(v336, v300, v337, v217);
        if (!v243)
        {

          v305 = v311;

          (*(v327 + 8))(v319, v328);
          sub_226AFBC34(v323, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
          sub_226AFBB78(v353);
          (*(v344 + 8))(v215, v163);
          sub_226AC47B0(v345, &qword_27D7A6640, &qword_226D75B50);
          v83(v352, v312);
          v306 = v334;
          v307 = v340;
          *v334 = v351;
          v306[1] = v307;
          type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult(0);
          swift_storeEnumTagMultiPayload();
          v308 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult(0);
          *(v306 + *(v308 + 20)) = v338;
          (*(*(v308 - 8) + 56))(v306, 0, 1, v308);
          goto LABEL_29;
        }

        v304 = v311;

        (*(v327 + 8))(v319, v328);
        sub_226AFBC34(v323, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
        sub_226AFBB78(v353);
        v138 = *(v344 + 8);
        v139 = v215;
        goto LABEL_111;
      }

      v246 = v339;
      if (!v339)
      {
        goto LABEL_81;
      }

      v309 = v83;

      v247 = sub_226D6E05C();
      v248 = sub_226D6E9EC();
      if (os_log_type_enabled(v247, v248))
      {
        v249 = swift_slowAlloc();
        *v249 = 0;
        _os_log_impl(&dword_226AB4000, v247, v248, "The status is not tracked, but extracted order already exists (e.g. the user signed out\nfrom iCloud account). So we still going to update it.", v249, 2u);
        v250 = v249;
        v216 = v348;
        MEMORY[0x22AA8BEE0](v250, -1, -1);
      }

      sub_226AF87BC(v215, v310, v246, v336, v341, v333, v337, v217, v334);
      if (!v216)
      {

        v299 = v311;

        sub_226AFBC34(v323, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
        sub_226AFBB78(v353);
        (*(v344 + 8))(v215, v163);
        sub_226AC47B0(v345, &qword_27D7A6640, &qword_226D75B50);
        goto LABEL_103;
      }

      v251 = v311;

      sub_226AFBC34(v323, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
      sub_226AFBB78(v353);
      (*(v344 + 8))(v215, v163);
LABEL_38:
      sub_226AC47B0(v345, &qword_27D7A6640, &qword_226D75B50);
LABEL_103:
      v309(v352, v312);
      goto LABEL_29;
    }

    v160 = v338;
    v165 = v151;
    if (!v151 || (v163 = v343, v331 == v149) && v165 == v333)
    {
      v326 = v152;
      v330 = v154;
    }

    else
    {
      v179 = v165;
      if ((sub_226D6F21C() & 1) == 0)
      {
        v245 = sub_226D6986C();
        if (v245)
        {
          v271 = v245;

          v339 = v271;
          v272 = [v271 trackedOrderIdentifier];
          v273 = sub_226D6E39C();
          v275 = v274;

          sub_226AFBC94(v273, v275, v331, v333);

LABEL_95:
          v162 = v323;
          goto LABEL_37;
        }
      }

      v326 = v152;
      v330 = v154;
      v165 = v179;
    }

    v180 = v341;
    v181 = *(v341 + 16);
    v182 = MEMORY[0x277D84F90];
    if (v181)
    {
      v325 = v165;
      v348 = 0;
      *&v353[0] = MEMORY[0x277D84F90];
      sub_226AE1D68(0, v181, 0);
      v182 = *&v353[0];
      v183 = *(v329 + 16);
      v184 = v180 + ((*(v329 + 80) + 32) & ~*(v329 + 80));
      v339 = *(v329 + 72);
      v340 = v183;
      v351 = (v329 + 16);
      v185 = (v329 + 8);
      do
      {
        v186 = v336;
        v187 = v337;
        (v340)(v336, v184, v337);
        v188 = sub_226D67ADC();
        v190 = v189;
        (*v185)(v186, v187);
        *&v353[0] = v182;
        v192 = *(v182 + 16);
        v191 = *(v182 + 24);
        if (v192 >= v191 >> 1)
        {
          sub_226AE1D68((v191 > 1), v192 + 1, 1);
          v182 = *&v353[0];
        }

        *(v182 + 16) = v192 + 1;
        v193 = v182 + 16 * v192;
        *(v193 + 32) = v188;
        *(v193 + 40) = v190;
        v184 += v339;
        --v181;
      }

      while (v181);
      v117 = v348;
      v88 = v350;
    }

    v194 = sub_226AE3C28(v182);

    sub_226BDF504(v194, v326, v330, v88);
    v83 = v309;
    v160 = v338;
    if (v117)
    {

      v195 = v311;

      v158 = v344;
      v159 = v345;
      goto LABEL_33;
    }

    v264 = sub_226D6985C();

    v163 = v343;
    v309 = v83;
    if (v264)
    {
      v339 = v264;
      v265 = [v264 trackedOrderIdentifier];
      v266 = sub_226D6E39C();
      v268 = v267;

      sub_226AFBC94(v266, v268, v331, v333);
    }

    else
    {

      v339 = 0;
    }

    goto LABEL_95;
  }

  v83(v352, v34);
LABEL_29:
  sub_226AF8530();
}

uint64_t sub_226AF8530()
{
  v0 = sub_226D6E00C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6DFCC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v10 = sub_226D6DFFC();
  __swift_project_value_buffer(v10, qword_281064510);
  v11 = sub_226D6DFDC();
  sub_226D6E01C();
  v12 = sub_226D6EAAC();
  if (sub_226D6EC8C())
  {

    sub_226D6E04C();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_226D6DFAC();
    _os_signpost_emit_with_name_impl(&dword_226AB4000, v11, v12, v15, "InsertOrUpdateExtractedOrder", v13, v14, 2u);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_226AF87BC@<X0>(char *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, id a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v218 = a8;
  v180 = a7;
  v179 = a6;
  v208 = a5;
  v177 = a4;
  v217 = a3;
  v207 = a2;
  v219 = a1;
  v175 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v214 = &v172 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6678, &unk_226D71890);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v213 = &v172 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v212 = &v172 - v19;
  v215 = _s7ChangesV11FulfillmentVMa(0);
  v194 = *(v215 - 8);
  v20 = v194[8];
  v21 = MEMORY[0x28223BE20](v215);
  v209 = &v172 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v211 = &v172 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6688, &unk_226D718A0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v172 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v210 = &v172 - v29;
  v190 = sub_226D677FC();
  v189 = *(v190 - 8);
  v30 = *(v189 + 64);
  v31 = MEMORY[0x28223BE20](v190);
  v182 = &v172 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v186 = &v172 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6690, &qword_226D74720);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v181 = &v172 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v185 = &v172 - v38;
  v39 = _s7ChangesVMa(0);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v176 = &v172 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v188 = &v172 - v43;
  v193 = sub_226D6A6BC();
  v191 = *(v193 - 8);
  v44 = *(v191 + 64);
  MEMORY[0x28223BE20](v193);
  v192 = (&v172 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v206 = sub_226D6D71C();
  v205 = *(v206 - 8);
  v46 = *(v205 + 64);
  MEMORY[0x28223BE20](v206);
  v202 = &v172 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_226D6D6DC();
  v203 = *(v204 - 1);
  v48 = v203[8];
  MEMORY[0x28223BE20](v204);
  v199 = &v172 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_226D6D4AC();
  v200 = *(v201 - 8);
  v50 = *(v200 + 64);
  MEMORY[0x28223BE20](v201);
  v198 = &v172 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_226D6785C();
  v196 = *(v197 - 1);
  v52 = *(v196 + 64);
  MEMORY[0x28223BE20](v197);
  v195 = &v172 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for ManagedExtractedOrderTracker.TrackingResult(0);
  v54 = *(*(v183 - 8) + 64);
  v55 = MEMORY[0x28223BE20](v183);
  v184 = (&v172 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v55);
  v187 = (&v172 - v57);
  v216 = type metadata accessor for ManagedExtractedOrderTracker(0);
  v58 = *(*(v216 - 8) + 64);
  MEMORY[0x28223BE20](v216);
  v60 = &v172 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_226D6DFCC();
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  v65 = &v172 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v66 = sub_226D6DFFC();
  __swift_project_value_buffer(v66, qword_281064510);
  sub_226D6DFBC();
  v67 = sub_226D6DFDC();
  v68 = sub_226D6EACC();
  if (sub_226D6EC8C())
  {
    v69 = swift_slowAlloc();
    v174 = v9;
    v70 = v28;
    v71 = v60;
    v72 = v69;
    *v69 = 0;
    v73 = sub_226D6DFAC();
    _os_signpost_emit_with_name_impl(&dword_226AB4000, v67, v68, v73, "InsertOrUpdateExtractedOrder", "TrackOrder", v72, 2u);
    v74 = v72;
    v60 = v71;
    v28 = v70;
    v10 = v174;
    MEMORY[0x22AA8BEE0](v74, -1, -1);
  }

  (*(v62 + 8))(v65, v61);
  *(v60 + 4) = 0;
  *v60 = 0u;
  *(v60 + 1) = 0u;
  v75 = *(v216 + 20);
  v76 = _s21NotificationSchedulerVMa();
  (*(*(v76 - 8) + 56))(&v60[v75], 1, 1, v76);
  if (v217)
  {
    v77 = [v217 trackedOrderIdentifier];
    sub_226D6E39C();

    v78 = v219;
  }

  else
  {
    v78 = v219;
    sub_226D677DC();
  }

  v79 = v218;
  sub_226D6990C();
  v80 = sub_226D6986C();
  if (v10)
  {
    sub_226AFBC34(v60, type metadata accessor for ManagedExtractedOrderTracker);
  }

  v82 = v80;
  v219 = v60;

  sub_226D6B31C();
  (*(v196 + 16))(v195, v78, v197);
  v83 = v79;
  v84 = sub_226D6B2CC();
  memset(v220, 0, sizeof(v220));
  if (v82)
  {
    v85 = v82;
    v218 = [v85 orderContent];
    v86 = v83;
    v87 = v198;
    sub_226D6D46C();
    v88 = v199;
    sub_226D6D66C();
    v89 = v202;
    sub_226D6D70C();
    sub_226D6982C();
    (*(v205 + 8))(v89, v206);
    (v203[1])(v88, v204);
    v90 = v87;
    v91 = v86;
    (*(v200 + 8))(v90, v201);
    sub_226D677DC();
    v92 = sub_226D6E36C();

    [v85 setTrackedOrderIdentifier_];

    [v207 setExtractedOrder_];
    v93 = v219;
    sub_226B4EFDC(v85, v208, v86);
    v108 = v218;
    sub_226B42120(v85, v91);
    v109 = 0;
    v110 = v108;
    v111 = v185;
    sub_226D6B2EC();
    (*(v189 + 56))(v111, 0, 1, v190);
    v112 = v84;
    v113 = v186;
    sub_226D6B2EC();
    sub_226D1F888(v108, 1, v111, v112, 1, v113, v188);
    [v91 deleteObject_];

    sub_226AFD62C(v220);
    v114 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840) + 48);
    v115 = v187;
    *v187 = v85;
    sub_226AFBBCC(v188, v115 + v114, _s7ChangesVMa);
    goto LABEL_43;
  }

  v94 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v95 = v83;
  v96 = v198;
  sub_226D6D46C();
  v97 = v199;
  sub_226D6D66C();
  v98 = v202;
  sub_226D6D70C();
  v197 = v84;
  sub_226D6982C();
  (*(v205 + 8))(v98, v206);
  (v203[1])(v97, v204);
  v99 = v96;
  v100 = v95;
  (*(v200 + 8))(v99, v201);
  sub_226D677DC();
  v101 = sub_226D6E36C();

  [v94 setTrackedOrderIdentifier_];

  sub_226D6A72C();
  v102 = v192;
  *v192 = v94;
  (*(v191 + 104))(v102, *MEMORY[0x277CC7C58], v193);
  v103 = v95;
  v104 = v94;
  v105 = sub_226D6A6CC();
  [v104 setDashboardItem_];

  v106 = v104;
  [v207 setExtractedOrder_];
  v107 = v104;
  v93 = v219;
  sub_226B4EFDC(v107, v208, v103);
  sub_226B42120(v106, v103);
  v109 = 0;
  v199 = v106;
  (*(v189 + 56))(v181, 1, 1, v190);
  sub_226D6B2EC();
  v116 = MEMORY[0x277D84F90];
  v198 = sub_226B22808(MEMORY[0x277D84F90]);
  v117 = sub_226D6B30C();
  v208 = sub_226B22808(v116);
  if (v117 >> 62)
  {
    goto LABEL_50;
  }

  v118 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
  v200 = v100;
  if (v118)
  {
    v119 = 0;
    v206 = v117 & 0xC000000000000001;
    v205 = v117 & 0xFFFFFFFFFFFFFF8;
    v207 = v194 + 7;
    v204 = (v194 + 6);
    v203 = v109;
    v173 = v28;
    v202 = v117;
    v201 = v118;
    while (1)
    {
      if (v206)
      {
        v121 = MEMORY[0x22AA8AFD0](v119, v117);
      }

      else
      {
        if (v119 >= *(v205 + 16))
        {
          goto LABEL_47;
        }

        v121 = *(v117 + 8 * v119 + 32);
      }

      v122 = v121;
      if (__OFADD__(v119, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v118 = sub_226D6EDFC();
        goto LABEL_14;
      }

      v216 = v119 + 1;
      v123 = [v121 trackingNumber];
      if (v123)
      {
        v124 = v123;
        v217 = sub_226D6E39C();
        v218 = v125;
      }

      else
      {
        v217 = 0;
        v218 = 0;
      }

      v28 = v215;
      v126 = *(v215 + 20);
      v127 = sub_226D6763C();
      v117 = v211;
      (*(*(v127 - 8) + 56))(&v211[v126], 1, 1, v127);
      v100 = *(v28 + 6);
      v128 = sub_226D6760C();
      (*(*(v128 - 8) + 56))(v117 + v100, 1, 1, v128);
      v129 = *(v28 + 7);
      v130 = sub_226D6762C();
      (*(*(v130 - 8) + 56))(v117 + v129, 1, 1, v130);
      v109 = v122;
      sub_226D6C6AC();
      v131 = v212;
      sub_226D6C68C();
      sub_226AFD680(v131, v117 + v126, &qword_27D7A6680, &unk_226D74710);
      v132 = v213;
      sub_226D6C66C();
      sub_226AFD680(v132, v117 + v100, &qword_27D7A6678, &unk_226D71890);
      v133 = v214;
      sub_226D6C67C();

      sub_226AFD680(v133, v117 + v129, &qword_27D7A6670, &qword_226D71888);
      v134 = v210;
      sub_226AFBB10(v117, v210, _s7ChangesV11FulfillmentVMa);
      v135 = *v207;
      (*v207)(v134, 0, 1, v28);
      sub_226AFBC34(v117, _s7ChangesV11FulfillmentVMa);
      if ((*v204)(v134, 1, v28) == 1)
      {
        sub_226AC47B0(v134, &qword_27D7A6688, &unk_226D718A0);
        v136 = v208;
        v137 = sub_226C2FD40(v217, v218);
        v139 = v138;

        v28 = v173;
        if (v139)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v221 = v136;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_226C3788C();
            v136 = v221;
          }

          v141 = *(*(v136 + 48) + 16 * v137 + 8);

          sub_226AFBBCC(*(v136 + 56) + v194[9] * v137, v28, _s7ChangesV11FulfillmentVMa);
          v208 = v136;
          sub_226D4A50C(v137, v136);

          v120 = 0;
        }

        else
        {

          v120 = 1;
        }

        v135(v28, v120, 1, v215);
        sub_226AC47B0(v28, &qword_27D7A6688, &unk_226D718A0);
        goto LABEL_18;
      }

      sub_226AFBBCC(v134, v209, _s7ChangesV11FulfillmentVMa);
      v142 = v208;
      v100 = swift_isUniquelyReferenced_nonNull_native();
      v221 = v142;
      v143 = v217;
      v93 = v218;
      v144 = sub_226C2FD40(v217, v218);
      v146 = *(v142 + 16);
      v147 = (v145 & 1) == 0;
      v148 = __OFADD__(v146, v147);
      v149 = v146 + v147;
      if (v148)
      {
        goto LABEL_48;
      }

      v150 = v145;
      if (*(v142 + 24) < v149)
      {
        break;
      }

      if (v100)
      {
        goto LABEL_36;
      }

      v117 = v144;
      sub_226C3788C();
      v144 = v117;
      if (v150)
      {
LABEL_37:
        v152 = v144;

        v208 = v221;
        sub_226AFD6E8(v209, *(v221 + 56) + v194[9] * v152);

        goto LABEL_18;
      }

LABEL_40:
      v153 = v221;
      *(v221 + 8 * (v144 >> 6) + 64) |= 1 << v144;
      v154 = (v153[6] + 16 * v144);
      *v154 = v143;
      v154[1] = v93;
      sub_226AFBBCC(v209, v153[7] + v194[9] * v144, _s7ChangesV11FulfillmentVMa);

      v155 = v153[2];
      v148 = __OFADD__(v155, 1);
      v156 = v155 + 1;
      if (v148)
      {
        goto LABEL_49;
      }

      v208 = v153;
      v153[2] = v156;
LABEL_18:
      v93 = v219;
      v109 = v203;
      v117 = v202;
      ++v119;
      if (v216 == v201)
      {
        goto LABEL_42;
      }
    }

    sub_226C30E60(v149, v100);
    v144 = sub_226C2FD40(v143, v93);
    if ((v150 & 1) != (v151 & 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6698, &unk_226D718B0);
      result = sub_226D6F25C();
      __break(1u);
      return result;
    }

LABEL_36:
    if (v150)
    {
      goto LABEL_37;
    }

    goto LABEL_40;
  }

LABEL_42:

  v157 = v181;
  v158 = v185;
  sub_226AC40E8(v181, v185, &qword_27D7A6690, &qword_226D74720);
  v159 = v189;
  v160 = v186;
  v161 = v182;
  v162 = v190;
  (*(v189 + 16))(v186, v182, v190);
  v163 = v176;
  v164 = v158;
  v91 = v200;
  sub_226D20CB0(v198, 0, v164, v208, 1, v160, v176);

  (*(v159 + 8))(v161, v162);
  sub_226AC47B0(v157, &qword_27D7A6690, &qword_226D74720);
  sub_226AFD62C(v220);
  v165 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840) + 48);
  v115 = v187;
  *v187 = v199;
  sub_226AFBBCC(v163, v115 + v165, _s7ChangesVMa);
LABEL_43:
  swift_storeEnumTagMultiPayload();
  v166 = v184;
  sub_226AFBB10(v115, v184, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
  v167 = *v166;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840);
  sub_226AFBC34(v166 + *(v168 + 48), _s7ChangesVMa);
  sub_226B20478(v167, v91);
  if (v109)
  {

    sub_226AFBC34(v115, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
    return sub_226AFBC34(v93, type metadata accessor for ManagedExtractedOrderTracker);
  }

  else
  {
    v169 = *v178;
    sub_226CC3218(v177, v179, v180, v91);
    sub_226AFBC34(v93, type metadata accessor for ManagedExtractedOrderTracker);

    v170 = v175;
    sub_226AFBBCC(v115, v175, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
    type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult(0);
    swift_storeEnumTagMultiPayload();
    v171 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult(0);
    *(v170 + *(v171 + 20)) = 0;
    return (*(*(v171 - 8) + 56))(v170, 0, 1, v171);
  }
}

uint64_t sub_226AFA06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v22 = sub_226D6B73C();
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v22);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D674FC();
  v11 = sub_226AE447C(v10);

  v25 = v11;
  v24[1] = sub_226D6746C();
  v12 = *(a2 + 16);
  if (v12)
  {
    v21[1] = a1;
    v13 = *(sub_226D67B3C() - 8);
    v14 = (v6 + 8);
    v15 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v16 = *(v13 + 72);
    while (1)
    {
      sub_226D6B72C();
      v17 = sub_226D6B71C();
      if (v3)
      {
        break;
      }

      v18 = v17;
      sub_226C25988(v24, v18);

      sub_226B04214(v19);

      (*v14)(v9, v22);
      v15 += v16;
      if (!--v12)
      {
        v11 = v25;
        goto LABEL_6;
      }
    }

    (*v14)(v9, v22);
  }

  else
  {
LABEL_6:
    sub_226B38644(v11);

    sub_226D6750C();
    return sub_226D6747C();
  }
}

uint64_t sub_226AFA2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v8 = v6;
  v13 = sub_226AFA930(a1);
  sub_226D69D0C();
  v14 = sub_226B11DCC(v13, a6);
  if (!v7)
  {
    if (v14)
    {
      if (qword_28105F6A0 != -1)
      {
        swift_once();
      }

      v17 = sub_226D6E07C();
      __swift_project_value_buffer(v17, qword_28105F6A8);

      v18 = sub_226D6E05C();
      v19 = sub_226D6E9EC();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v32 = v31;
        *v20 = 136315394;
        sub_226AE5084();
        v21 = sub_226D6E8AC();
        v30 = v19;
        v23 = sub_226AC4530(v21, v22, &v32);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2080;
        *(v20 + 14) = sub_226AC4530(a4, a5, &v32);
        _os_log_impl(&dword_226AB4000, v18, v30, "Merchant with sources %s is blocklisted, skipping automatic ingestion for order with number %s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v31, -1, -1);
        MEMORY[0x22AA8BEE0](v20, -1, -1);
      }

      v24 = *v8;
      sub_226CC3898(v13, a6);
    }

    else
    {

      if (a3)
      {
        v15 = 0;
        return v15 & 1;
      }

      if (qword_28105F6A0 != -1)
      {
        swift_once();
      }

      v25 = sub_226D6E07C();
      __swift_project_value_buffer(v25, qword_28105F6A8);

      v26 = sub_226D6E05C();
      v27 = sub_226D6E9CC();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v32 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_226AC4530(a4, a5, &v32);
        _os_log_impl(&dword_226AB4000, v26, v27, "First email in the order with number %s has no merchant information. Skipping automatic ingestion.", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        MEMORY[0x22AA8BEE0](v29, -1, -1);
        MEMORY[0x22AA8BEE0](v28, -1, -1);
      }
    }

    v15 = 1;
    return v15 & 1;
  }

  return v15 & 1;
}

uint64_t sub_226AFA614@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_226D6D4AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D67B1C();
  sub_226AFD8B4(&qword_27D7A66D8, MEMORY[0x277CC9578]);
  v7 = sub_226D6E34C();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7 & 1;
  return result;
}

uint64_t sub_226AFA750(void (*a1)(uint64_t *__return_ptr, char *))
{
  v14 = a1;
  v3 = sub_226D6D4AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v13 - v10;
  sub_226AC40E8(v1, &v13 - v10, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    return 2;
  }

  (*(v4 + 32))(v7, v11, v3);
  v14(&v15, v7);
  if (v2)
  {
    result = (*(v4 + 8))(v7, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    return v15;
  }

  return result;
}

uint64_t sub_226AFA930(uint64_t a1)
{
  v92 = sub_226D67A5C();
  v2 = *(v92 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v92);
  v91 = v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D67A8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_226D67AAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v88 = v77 - v16;
  v17 = sub_226D67B3C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(a1 + 16);
  if (v82)
  {
    v22 = 0;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v81 = v24;
    v80 = a1 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v98 = v11 + 16;
    v97 = v11 + 32;
    v96 = (v6 + 8);
    v95 = (v11 + 8);
    v90 = (v2 + 8);
    v77[0] = v23 - 8;
    v79 = *(v23 + 56);
    v107 = MEMORY[0x277D84FA0];
    v25 = v88;
    v87 = v5;
    v86 = v9;
    v85 = v10;
    v84 = v11;
    v83 = v15;
    v78 = v17;
    v77[1] = v23;
    v93 = v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      v89 = v22 + 1;
      v81(v21, v80 + v79 * v22, v17);
      v26 = v21;
      v27 = sub_226D67ABC();
      v28 = 0;
      v30 = v27 + 56;
      v29 = *(v27 + 56);
      v101 = v27;
      v31 = 1 << *(v27 + 32);
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v33 = v32 & v29;
      v34 = (v31 + 63) >> 6;
      v100 = v27 + 56;
      v99 = v34;
      v35 = v107;
      while (1)
      {
        v106 = v35 + 56;
        v107 = v35;
        if (!v33)
        {
          goto LABEL_11;
        }

LABEL_15:
        while (1)
        {
          v102 = (v33 - 1) & v33;
          (*(v11 + 16))(v25, *(v101 + 48) + *(v11 + 72) * (__clz(__rbit64(v33)) | (v28 << 6)), v10);
          (*(v11 + 32))(v15, v25, v10);
          sub_226D67A9C();
          v26 = v9;
          v37 = sub_226D67A7C();
          (*v96)(v9, v5);
          if (v37)
          {
            break;
          }

          (*v95)(v15, v10);
          v30 = v100;
          v34 = v99;
          v33 = v102;
          if (!v102)
          {
            goto LABEL_11;
          }
        }

        v94 = v28;
        v38 = v91;
        sub_226D67A6C();
        v21 = sub_226D67A4C();
        v26 = v39;
        (*v90)(v38, v92);
        if (!v26)
        {
          (*v95)(v15, v10);
          goto LABEL_36;
        }

        v25 = v26;
        v40 = sub_226D67AEC();
        v42 = v41;
        v43 = v107;
        v44 = *(v107 + 40);
        sub_226D6F2FC();
        v26 = &v111;
        MEMORY[0x22AA8B3B0](1);
        v109 = v42;
        sub_226D6E42C();
        v108 = v25;
        sub_226D6E42C();
        v45 = sub_226D6F35C();
        v104 = ~(-1 << *(v43 + 32));
        v105 = v21;
        v46 = v45 & v104;
        if ((*(v106 + (((v45 & v104) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v45 & v104)))
        {
          break;
        }

LABEL_38:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v110 = v43;
        v56 = *(v43 + 16);
        if (*(v43 + 24) <= v56)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            sub_226C28280(v56 + 1);
          }

          else
          {
            sub_226C2DE40(v56 + 1);
          }

          v57 = v110;
          v58 = *(v110 + 40);
          sub_226D6F2FC();
          v26 = &v111;
          MEMORY[0x22AA8B3B0](1);
          sub_226D6E42C();
          sub_226D6E42C();
          v59 = sub_226D6F35C();
          v105 = (v57 + 56);
          v106 = v57;
          v60 = -1 << *(v57 + 32);
          v46 = v59 & ~v60;
          if ((*(v57 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
          {
            v104 = ~v60;
            v61 = v109;
            while (1)
            {
              v62 = *(v106 + 48) + 56 * v46;
              v11 = *v62;
              v10 = *(v62 + 8);
              v64 = *(v62 + 16);
              v63 = *(v62 + 24);
              v25 = *(v62 + 32);
              v65 = *(v62 + 40);
              v66 = *(v62 + 48);
              v111 = *v62;
              v112 = v10;
              v113 = v64;
              v114 = v63;
              v115 = v25;
              v116 = v65;
              v107 = v65;
              v117 = v66;
              v118 = v40;
              v119 = v61;
              v26 = v108;
              v120 = v21;
              v121 = v108;
              v122 = 0;
              v123 = 0;
              v124 = 1;
              if (v66 == 1 && (v11 == v40 ? (v67 = v10 == v61) : (v67 = 0), v67 || (v68 = sub_226D6F21C(), v26 = v108, (v68 & 1) != 0)))
              {
                if (v64 == v21 && v63 == v26)
                {
                  goto LABEL_67;
                }

                v70 = sub_226D6F21C();

                sub_226AFD74C(v11, v10, v64, v63, v25, v107, 1u);
                sub_226AC47B0(&v111, &unk_27D7A9640, &qword_226D7A5E0);
                if (v70)
                {
                  goto LABEL_68;
                }
              }

              else
              {

                sub_226AFD74C(v11, v10, v64, v63, v25, v107, v66);
                sub_226AC47B0(&v111, &unk_27D7A9640, &qword_226D7A5E0);
              }

              v46 = (v46 + 1) & v104;
              v61 = v109;
              if (((*&v105[(v46 >> 3) & 0xFFFFFFFFFFFFFF8] >> v46) & 1) == 0)
              {
                goto LABEL_61;
              }
            }
          }
        }

        else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = &v110;
          sub_226C2CD40();
        }

        v61 = v109;
LABEL_61:
        v35 = v110;
        *(v110 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v46;
        v71 = *(v35 + 48) + 56 * v46;
        *v71 = v40;
        *(v71 + 8) = v61;
        v72 = v108;
        *(v71 + 16) = v21;
        *(v71 + 24) = v72;
        *(v71 + 32) = 0;
        *(v71 + 40) = 0;
        *(v71 + 48) = 1;
        v73 = *(v35 + 16);
        v74 = __OFADD__(v73, 1);
        v75 = v73 + 1;
        if (v74)
        {
          goto LABEL_66;
        }

        *(v35 + 16) = v75;
        v15 = v83;
        v10 = v85;
        (*v95)(v83, v85);
        v5 = v87;
        v9 = v86;
        v11 = v84;
        v25 = v88;
        v30 = v100;
        v34 = v99;
        v33 = v102;
        v28 = v94;
      }

      while (1)
      {
        v47 = *(v43 + 48) + 56 * v46;
        v48 = *v47;
        v10 = *(v47 + 8);
        v11 = *(v47 + 16);
        v26 = *(v47 + 24);
        v49 = *(v47 + 32);
        v25 = *(v47 + 40);
        v50 = *(v47 + 48);
        v111 = *v47;
        v112 = v10;
        v113 = v11;
        v114 = v26;
        v115 = v49;
        v116 = v25;
        v117 = v50;
        v51 = v108;
        v118 = v40;
        v119 = v109;
        v120 = v21;
        v121 = v108;
        v122 = 0;
        v123 = 0;
        v124 = 1;
        if (v50 != 1 || (v48 == v40 ? (v52 = v10 == v109) : (v52 = 0), !v52 && (v53 = sub_226D6F21C(), v51 = v108, (v53 & 1) == 0)))
        {

          sub_226AFD74C(v48, v10, v11, v26, v49, v25, v50);
          sub_226AC47B0(&v111, &unk_27D7A9640, &qword_226D7A5E0);
          goto LABEL_20;
        }

        if (v11 == v21 && v26 == v51)
        {
          break;
        }

        v21 = v51;
        v103 = sub_226D6F21C();

        sub_226AFD74C(v48, v10, v11, v26, v49, v25, 1u);
        sub_226AC47B0(&v111, &unk_27D7A9640, &qword_226D7A5E0);
        if (v103)
        {

          goto LABEL_35;
        }

LABEL_20:
        v21 = v105;
        v46 = (v46 + 1) & v104;
        v43 = v107;
        if (((*(v106 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      sub_226AC47B0(&v111, &unk_27D7A9640, &qword_226D7A5E0);
LABEL_35:
      v15 = v83;
      v10 = v85;
      (*v95)(v83, v85);
      v5 = v87;
      v9 = v86;
      v11 = v84;
      v25 = v88;
LABEL_36:
      v30 = v100;
      v34 = v99;
      v33 = v102;
      v28 = v94;
      if (v102)
      {
        goto LABEL_15;
      }

LABEL_11:
      while (2)
      {
        v36 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:

          sub_226AFD74C(v11, v10, v21, v26, v25, v107, 1u);
          sub_226AC47B0(&v111, &unk_27D7A9640, &qword_226D7A5E0);
LABEL_68:
          result = sub_226D6F24C();
          __break(1u);
          return result;
        }

        if (v36 < v34)
        {
          v33 = *(v30 + 8 * v36);
          ++v28;
          if (!v33)
          {
            continue;
          }

          v28 = v36;
          goto LABEL_15;
        }

        break;
      }

      v21 = v93;
      v17 = v78;
      (*v77[0])(v93, v78);
      v22 = v89;
      if (v89 == v82)
      {
        return v107;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226AFB524(uint64_t a1)
{
  v42 = type metadata accessor for ManagedExtractedOrderTracker(0);
  v2 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v44 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s21NotificationSchedulerVMa();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ManagedExtractedOrderTracker.TrackingResult(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v39 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult(0);
  v10 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  updated = type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult(0);
  v14 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated - 8);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6630, &unk_226D71850);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - v22;
  v24 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226AFBB10(a1, v16, type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult);
  v29 = *(v25 + 48);
  v30 = 1;
  if (v29(v16, 1, v24) != 1)
  {
    sub_226AFBBCC(v16, v21, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult);
    v30 = 0;
  }

  (*(v25 + 56))(v21, v30, 1, v24);
  sub_226AFD80C(v21, v23, &qword_27D7A6630, &unk_226D71850);
  if (v29(v23, 1, v24) == 1)
  {
    return sub_226AC47B0(v23, &qword_27D7A6630, &unk_226D71850);
  }

  sub_226AFBBCC(v23, v28, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult);
  sub_226AFBB10(v28, v12, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v12;
    v33 = v12[1];
    sub_226AC40E8(v46 + 8, v48, &unk_27D7A7660, &unk_226D7B420);
    sub_226CCAC20(v32, v33);

    sub_226AFBB78(v48);
  }

  else
  {
    v34 = v39;
    sub_226AFBBCC(v12, v39, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
    v35 = v46;
    sub_226AE532C(v46 + 48, v48);
    sub_226AE532C(v35 + 88, v47);
    v36 = v43;
    sub_226B836E0(v48, v47, v43);
    v37 = v44;
    sub_226AC40E8(v35 + 8, v44, &unk_27D7A7660, &unk_226D7B420);
    v38 = *(v42 + 20);
    sub_226AFBB10(v36, v37 + v38, _s21NotificationSchedulerVMa);
    (*(v40 + 56))(v37 + v38, 0, 1, v41);
    sub_226B4E744(v34);
    sub_226AFBC34(v37, type metadata accessor for ManagedExtractedOrderTracker);
    sub_226AFBC34(v36, _s21NotificationSchedulerVMa);
    sub_226AFBC34(v34, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
  }

  return sub_226AFBC34(v28, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult);
}

uint64_t sub_226AFBB10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226AFBBCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226AFBC34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226AFBC94(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_28105F6A0 != -1)
  {
    swift_once();
  }

  v10 = sub_226D6E07C();
  __swift_project_value_buffer(v10, qword_28105F6A8);

  v11 = sub_226D6E05C();
  v12 = sub_226D6E9CC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_226AC4530(a1, a2, &v16);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_226AC4530(a3, a4, &v16);
    _os_log_impl(&dword_226AB4000, v11, v12, "ExtractedOrder trackedOrderIdentifier changed from %s to %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v14, -1, -1);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
  }

  if (*(v5 + 168))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6660, &qword_226D74320);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D71840;
    *(inited + 32) = 0xD000000000000019;
    *(inited + 40) = 0x8000000226D7EEB0;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 64) = 0xD000000000000019;
    *(inited + 72) = 0x8000000226D7EED0;
    *(inited + 80) = a3;
    *(inited + 88) = a4;

    sub_226B224FC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6668, &qword_226D71880);
    swift_arrayDestroy();
    sub_226BA2954();
  }
}

uint64_t sub_226AFBF00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult(0);
  v10 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6768, &unk_226D71A10);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v27 - v16;
  v18 = *(v15 + 56);
  sub_226AFBB10(a1, &v27 - v16, type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult);
  sub_226AFBB10(a2, &v17[v18], type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
LABEL_3:
      sub_226AFBC34(v17, type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult);
      return 1;
    }

    goto LABEL_6;
  }

  sub_226AFBB10(v17, v12, type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult);
  if (v19(&v17[v18], 1, v4) != 1)
  {
    sub_226AFBBCC(&v17[v18], v8, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult);
    if (sub_226AFC2F4(v12, v8))
    {
      v21 = *(v4 + 20);
      v22 = *&v12[v21];
      v23 = *&v8[v21];
      if (v22)
      {
        if (v23)
        {
          sub_226D6751C();
          v24 = v23;
          v25 = v22;
          v26 = sub_226D6EC3C();

          if (v26)
          {
            goto LABEL_11;
          }
        }
      }

      else if (!v23)
      {
LABEL_11:
        sub_226AFBC34(v8, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult);
        sub_226AFBC34(v12, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult);
        goto LABEL_3;
      }
    }

    sub_226AFBC34(v8, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult);
    sub_226AFBC34(v12, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult);
    sub_226AFBC34(v17, type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult);
    return 0;
  }

  sub_226AFBC34(v12, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult);
LABEL_6:
  sub_226AC47B0(v17, &qword_27D7A6768, &unk_226D71A10);
  return 0;
}

uint64_t sub_226AFC260(uint64_t a1, uint64_t a2)
{
  if (sub_226AFC2F4(a1, a2))
  {
    v4 = *(type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    if (v5)
    {
      if (v6)
      {
        sub_226D6751C();
        v7 = v6;
        v8 = v5;
        v9 = sub_226D6EC3C();

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_226AFC2F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedExtractedOrderTracker.TrackingResult(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6760, &qword_226D71A08);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v29 - v18;
  v20 = (&v29 + *(v17 + 56) - v18);
  sub_226AFBB10(a1, &v29 - v18, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult);
  sub_226AFBB10(a2, v20, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_226AFBB10(v19, v14, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_226AFBBCC(v20, v7, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
      v26 = sub_226B4EFD8(v14, v7);
      sub_226AFBC34(v7, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
      sub_226AFBC34(v14, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
      sub_226AFBC34(v19, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult);
      return v26 & 1;
    }

    sub_226AFBC34(v14, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
    goto LABEL_12;
  }

  sub_226AFBB10(v19, v12, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult);
  v22 = *v12;
  v21 = v12[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_12:
    sub_226AC47B0(v19, &qword_27D7A6760, &qword_226D71A08);
    goto LABEL_13;
  }

  if (v22 == *v20 && v21 == v20[1])
  {
    v27 = v20[1];

    goto LABEL_16;
  }

  v24 = v20[1];
  v25 = sub_226D6F21C();

  if (v25)
  {
LABEL_16:
    sub_226AFBC34(v19, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult);
    v26 = 1;
    return v26 & 1;
  }

  sub_226AFBC34(v19, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult);
LABEL_13:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_226AFC648(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v144 = a3;
  v138 = a2;
  v140 = a1;
  v134 = sub_226D6D4AC();
  v132 = *(v134 - 8);
  v4 = *(v132 + 64);
  v5 = MEMORY[0x28223BE20](v134);
  v133 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v130 = &v122 - v7;
  v8 = sub_226D67B3C();
  v141 = *(v8 - 8);
  v142 = v8;
  v9 = *(v141 + 8);
  v10 = MEMORY[0x28223BE20](v8);
  v136 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v139 = &v122 - v13;
  MEMORY[0x28223BE20](v12);
  v135 = &v122 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v131 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v137 = &v122 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v122 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66D0, &unk_226D75B80);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v122 - v28;
  v30 = v3[9];
  v31 = v3[10];
  v143 = v3;
  v32 = __swift_project_boxed_opaque_existential_1(v3 + 6, v30);
  v146[3] = v30;
  v146[4] = *(v31 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v146);
  (*(*(v30 - 8) + 16))(boxed_opaque_existential_1, v32, v30);
  *v29 = sub_226B5A79C(&v29[*(v23 + 48)]) & 1;
  sub_226AC40E8(v29, v27, &qword_27D7A66D0, &unk_226D75B80);
  LODWORD(v30) = *v27;
  sub_226AC47B0(&v27[*(v23 + 48)], &qword_27D7A8BE0, &unk_226D718F0);
  if (v30 != 1)
  {
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v64 = sub_226D6E07C();
    __swift_project_value_buffer(v64, qword_28105F6A8);
    v65 = v144;

    v66 = sub_226D6E05C();
    v67 = sub_226D6E9EC();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v147 = v69;
      *v68 = 136315138;
      *(v68 + 4) = sub_226AC4530(v138, v65, &v147);
      _os_log_impl(&dword_226AB4000, v66, v67, "Automatic order ingestion is disabled, skipping order with number %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v69);
      MEMORY[0x22AA8BEE0](v69, -1, -1);
      MEMORY[0x22AA8BEE0](v68, -1, -1);
    }

    goto LABEL_15;
  }

  sub_226AC40E8(v29, v27, &qword_27D7A66D0, &unk_226D75B80);
  v34 = sub_226AFD80C(&v27[*(v23 + 48)], v22, &qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v34);
  v35 = v140;
  *(&v122 - 2) = v140;
  v36 = v145;
  v37 = sub_226AFA750(sub_226AFD874);
  v145 = v36;
  v38 = v22;
  v39 = v141;
  v40 = v35;
  if (v37 != 2 && (v37 & 1) == 0)
  {
    v41 = v144;
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v42 = sub_226D6E07C();
    v43 = __swift_project_value_buffer(v42, qword_28105F6A8);
    v44 = v135;
    v45 = v142;
    v39[2](v135, v40, v142);
    v46 = v137;
    sub_226AC40E8(v38, v137, &qword_27D7A8BE0, &unk_226D718F0);
    v128 = v43;
    v47 = sub_226D6E05C();
    v127 = sub_226D6E9CC();
    if (os_log_type_enabled(v47, v127))
    {
      v126 = v47;
      v129 = v38;
      v48 = swift_slowAlloc();
      v123 = v48;
      v125 = swift_slowAlloc();
      v147 = v125;
      *v48 = 136315394;
      v49 = v130;
      sub_226D67B1C();
      v50 = sub_226AFD8B4(&qword_281062B80, MEMORY[0x277CC9578]);
      v51 = v134;
      v124 = v50;
      v52 = sub_226D6F1CC();
      v54 = v53;
      v55 = v132;
      v130 = *(v132 + 8);
      (v130)(v49, v51);
      v56 = v39;
      v57 = v55;
      v58 = v44;
      v59 = v123;
      v56[1](v58, v45);
      v60 = sub_226AC4530(v52, v54, &v147);

      *(v59 + 1) = v60;
      *(v59 + 6) = 2080;
      v61 = v131;
      sub_226AC40E8(v137, v131, &qword_27D7A8BE0, &unk_226D718F0);
      v62 = *(v57 + 48);
      if (v62(v61, 1, v51) == 1)
      {
        v63 = v133;
        sub_226D6D39C();
        if (v62(v61, 1, v51) != 1)
        {
          sub_226AC47B0(v61, &qword_27D7A8BE0, &unk_226D718F0);
        }
      }

      else
      {
        v63 = v133;
        (*(v57 + 32))(v133, v61, v51);
      }

      v71 = sub_226D6F1CC();
      v73 = v72;
      (v130)(v63, v51);
      sub_226AC47B0(v137, &qword_27D7A8BE0, &unk_226D718F0);
      v74 = sub_226AC4530(v71, v73, &v147);

      *(v59 + 14) = v74;
      v75 = v126;
      _os_log_impl(&dword_226AB4000, v126, v127, "Order email sent date: %s is before user gave consent to automatically track orders: %s.", v59, 0x16u);
      v76 = v125;
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v76, -1, -1);
      MEMORY[0x22AA8BEE0](v59, -1, -1);

      v40 = v140;
      v39 = v141;
      v38 = v129;
      v41 = v144;
    }

    else
    {

      sub_226AC47B0(v46, &qword_27D7A8BE0, &unk_226D718F0);
      (v39[1])(v44, v45);
    }

    v77 = *(type metadata accessor for ManagedExtractedOrderImporter(0) + 44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
    sub_226D66FEC();
    if ((v147 & 1) == 0)
    {

      v118 = sub_226D6E05C();
      v119 = sub_226D6E9CC();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v147 = v121;
        *v120 = 136315138;
        *(v120 + 4) = sub_226AC4530(v138, v41, &v147);
        _os_log_impl(&dword_226AB4000, v118, v119, "Skipping automatic ingestion for order with number %s", v120, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v121);
        MEMORY[0x22AA8BEE0](v121, -1, -1);
        MEMORY[0x22AA8BEE0](v120, -1, -1);
      }

      sub_226AC47B0(v38, &qword_27D7A8BE0, &unk_226D718F0);
      goto LABEL_15;
    }

    v78 = sub_226D6E05C();
    v79 = sub_226D6E9CC();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_226AB4000, v78, v79, "Continuing automatic ingestion evaluation due to email sent date override flag", v80, 2u);
      MEMORY[0x22AA8BEE0](v80, -1, -1);
    }
  }

  v81 = v143[25];
  v82 = v143[26];
  __swift_project_boxed_opaque_existential_1(v143 + 22, v81);
  v83 = (*(v82 + 16))(v40, v81, v82);
  v84 = v139;
  if ((v83 & 1) == 0)
  {
    v129 = v38;
    v99 = v142;
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v100 = sub_226D6E07C();
    __swift_project_value_buffer(v100, qword_28105F6A8);
    v39[2](v84, v40, v99);
    v101 = sub_226D6E05C();
    v102 = sub_226D6E9CC();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = v84;
      v105 = swift_slowAlloc();
      v147 = v105;
      *v103 = 136315138;
      v106 = sub_226D67B2C();
      v141 = v29;
      v108 = v107;
      (v39[1])(v104, v142);
      v109 = sub_226AC4530(v106, v108, &v147);
      v29 = v141;

      *(v103 + 4) = v109;
      _os_log_impl(&dword_226AB4000, v101, v102, "Email with messageID: %s is not authenticated.", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v105);
      MEMORY[0x22AA8BEE0](v105, -1, -1);
      MEMORY[0x22AA8BEE0](v103, -1, -1);
    }

    else
    {

      (v39[1])(v84, v99);
    }

    v111 = v144;
    v112 = *(type metadata accessor for ManagedExtractedOrderImporter(0) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
    sub_226D66FEC();
    if (v147)
    {
      v88 = sub_226D6E05C();
      v113 = sub_226D6E9CC();
      if (!os_log_type_enabled(v88, v113))
      {
LABEL_38:

        v110 = v129;
        goto LABEL_39;
      }

      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_226AB4000, v88, v113, "Continuing automatic ingestion evaluation due to authentication override flag", v91, 2u);
LABEL_37:
      MEMORY[0x22AA8BEE0](v91, -1, -1);
      goto LABEL_38;
    }

    v114 = sub_226D6E05C();
    v115 = sub_226D6E9CC();

    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v147 = v117;
      *v116 = 136315138;
      *(v116 + 4) = sub_226AC4530(v138, v111, &v147);
      _os_log_impl(&dword_226AB4000, v114, v115, "Skipping automatic ingestion for order with number %s", v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v117);
      MEMORY[0x22AA8BEE0](v117, -1, -1);
      MEMORY[0x22AA8BEE0](v116, -1, -1);
    }

    sub_226AC47B0(v129, &qword_27D7A8BE0, &unk_226D718F0);
LABEL_15:
    sub_226AC47B0(v29, &qword_27D7A66D0, &unk_226D75B80);
    sub_226AFD7B8(v146);
    return 0;
  }

  v85 = v142;
  if (qword_28105F6A0 != -1)
  {
    swift_once();
  }

  v86 = sub_226D6E07C();
  __swift_project_value_buffer(v86, qword_28105F6A8);
  v87 = v136;
  v39[2](v136, v40, v85);
  v88 = sub_226D6E05C();
  v89 = sub_226D6E9EC();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = v87;
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v129 = v38;
    v93 = v92;
    v147 = v92;
    *v91 = 136315138;
    v94 = sub_226D67B2C();
    v95 = v85;
    v97 = v96;
    (v39[1])(v90, v95);
    v98 = sub_226AC4530(v94, v97, &v147);

    *(v91 + 4) = v98;
    _os_log_impl(&dword_226AB4000, v88, v89, "Email with messageID: %s is authenticated. Continue automatic ingestion evaluation.", v91, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v93);
    MEMORY[0x22AA8BEE0](v93, -1, -1);
    goto LABEL_37;
  }

  (v39[1])(v87, v85);
  v110 = v38;
LABEL_39:
  sub_226AC47B0(v110, &qword_27D7A8BE0, &unk_226D718F0);
  sub_226AC47B0(v29, &qword_27D7A66D0, &unk_226D75B80);
  sub_226AFD7B8(v146);
  return 1;
}

uint64_t sub_226AFD680(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_226AFD6E8(uint64_t a1, uint64_t a2)
{
  v4 = _s7ChangesV11FulfillmentVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_226AFD74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  result = a2;
  if (a7 >= 2u)
  {
    if (a7 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_226AFD80C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_226AFD8B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_226AFD924()
{
  type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult(319);
  if (v0 <= 0x3F)
  {
    sub_226AFDCF0(319, &qword_27D7A66F0, MEMORY[0x277CC6C20]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_226AFDA14()
{
  result = type metadata accessor for ManagedExtractedOrderTracker.TrackingResult(319);
  if (v1 <= 0x3F)
  {
    result = sub_226AFDA88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_226AFDA88()
{
  result = qword_27D7A6708;
  if (!qword_27D7A6708)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27D7A6708);
  }

  return result;
}

uint64_t sub_226AFDAE0()
{
  v0 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_226AFDB60()
{
  type metadata accessor for ExtractedOrderUserEventDonator();
  if (v0 <= 0x3F)
  {
    sub_226AFDDA0(319, &qword_27D7A6730, &type metadata for TrackedOrderBiomeStreamDonator, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_226AFDD44(319, &qword_27D7A6738);
      if (v2 <= 0x3F)
      {
        sub_226AFDD44(319, &qword_27D7A6740);
        if (v3 <= 0x3F)
        {
          sub_226AFDCF0(319, &qword_27D7A6748, type metadata accessor for OrdersAutoBugCaptureReporter);
          if (v4 <= 0x3F)
          {
            sub_226AFDD44(319, &qword_27D7A6750);
            if (v5 <= 0x3F)
            {
              sub_226AFDDA0(319, &qword_27D7A6758, MEMORY[0x277D839B0], MEMORY[0x277CC6A60]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_226AFDCF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_226AFDD44(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_226AFDDA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_226AFDE10()
{
  sub_226D6B9BC();
  if (v0 <= 0x3F)
  {
    sub_226AFDF34();
    if (v1 <= 0x3F)
    {
      sub_226AFDF64();
      if (v2 <= 0x3F)
      {
        sub_226AFE088(319, &qword_28105F540, sub_226AFDF94);
        if (v3 <= 0x3F)
        {
          sub_226AFDFEC();
          if (v4 <= 0x3F)
          {
            sub_226AFE058();
            if (v5 <= 0x3F)
            {
              sub_226AFE088(319, &qword_281062B68, MEMORY[0x277CC95F0]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_226AFDF34()
{
  result = qword_28105F550;
  if (!qword_28105F550)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28105F550);
  }

  return result;
}

uint64_t sub_226AFDF64()
{
  result = qword_28105F570;
  if (!qword_28105F570)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28105F570);
  }

  return result;
}

void sub_226AFDF94()
{
  if (!qword_28105F538)
  {
    sub_226D6B9BC();
    v0 = sub_226D6E6AC();
    if (!v1)
    {
      atomic_store(v0, &qword_28105F538);
    }
  }
}

void sub_226AFDFEC()
{
  if (!qword_281062B98)
  {
    sub_226D6B9BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281062B98);
    }
  }
}

uint64_t sub_226AFE058()
{
  result = qword_28105F568;
  if (!qword_28105F568)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28105F568);
  }

  return result;
}

void sub_226AFE088(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_226AFE0F4()
{
  result = sub_226D6B9BC();
  if (v1 <= 0x3F)
  {
    result = sub_226AFDF34();
    if (v2 <= 0x3F)
    {
      result = sub_226AFDF64();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_226AFE17C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v4 = sub_226D66DFC();
  v2[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = sub_226B0186C(&qword_27D7A6780, type metadata accessor for BankConnectNotificationEventsUnregisterTask);
  v7 = *(v6 + 16);
  v8 = type metadata accessor for BankConnectNotificationEventsUnregisterTask();
  v12 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  v2[8] = v10;
  *v10 = v2;
  v10[1] = sub_226AFE320;

  return v12(a1, v8, v6);
}

uint64_t sub_226AFE320()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226AFE468, 0, 0);
  }

  else
  {
    v5 = v3[6];
    v4 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_226AFE468()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v1;
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);

    sub_226B01960(v6, v5);
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_226AFE5C0;
    v8 = *(v0 + 48);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);

    return sub_226B1CEC8(v8, v9);
  }

  else
  {

    swift_willThrow();
    v12 = *(v0 + 72);
    v14 = *(v0 + 48);
    v13 = *(v0 + 56);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_226AFE5C0()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_226B031B4;
  }

  else
  {
    v3 = sub_226B031BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226AFE6D4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v4 = sub_226D66DFC();
  v2[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[8] = v6;
  *v6 = v2;
  v6[1] = sub_226AFE7B0;

  return sub_226B5C2D0(a1);
}

uint64_t sub_226AFE7B0()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226AFE8F8, 0, 0);
  }

  else
  {
    v5 = v3[6];
    v4 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_226AFE8F8()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v1;
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);

    sub_226B01960(v6, v5);
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_226AFE5C0;
    v8 = *(v0 + 48);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);

    return sub_226B5CD3C(v8, v9);
  }

  else
  {

    swift_willThrow();
    v12 = *(v0 + 72);
    v14 = *(v0 + 48);
    v13 = *(v0 + 56);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_226AFEA50(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v4 = sub_226D66DFC();
  v2[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[8] = v6;
  *v6 = v2;
  v6[1] = sub_226AFEB2C;

  return sub_226B9F6C0(a1);
}

uint64_t sub_226AFEB2C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226AFEC74, 0, 0);
  }

  else
  {
    v5 = v3[6];
    v4 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_226AFEC74()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v1;
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);

    sub_226B01960(v6, v5);
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_226AFEDCC;
    v8 = *(v0 + 48);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);

    return sub_226BA13EC(v8, v9);
  }

  else
  {

    swift_willThrow();
    v12 = *(v0 + 72);
    v14 = *(v0 + 48);
    v13 = *(v0 + 56);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_226AFEDCC()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_226AFEF70;
  }

  else
  {
    v3 = sub_226AFEEE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226AFEEE0()
{
  sub_226B03154(*(v0 + 48), MEMORY[0x277CC6528]);

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_226AFEF70()
{
  sub_226B03154(*(v0 + 48), MEMORY[0x277CC6528]);

  v1 = *(v0 + 88);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226AFF000(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v4 = sub_226D66DFC();
  v2[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[8] = v6;
  *v6 = v2;
  v6[1] = sub_226AFF0DC;

  return sub_226BD93DC(a1);
}

uint64_t sub_226AFF0DC()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226AFF224, 0, 0);
  }

  else
  {
    v5 = v3[6];
    v4 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_226AFF224()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v1;
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);

    sub_226B01960(v6, v5);
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_226AFE5C0;
    v8 = *(v0 + 48);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);

    return sub_226BDA0A8(v8, v9);
  }

  else
  {

    swift_willThrow();
    v12 = *(v0 + 72);
    v14 = *(v0 + 48);
    v13 = *(v0 + 56);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_226AFF37C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v4 = sub_226D66DFC();
  v2[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[8] = v6;
  *v6 = v2;
  v6[1] = sub_226AFF458;

  return sub_226BF2990(a1);
}

uint64_t sub_226AFF458()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226AFF5A0, 0, 0);
  }

  else
  {
    v5 = v3[6];
    v4 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_226AFF5A0()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v1;
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);

    sub_226B01960(v6, v5);
    v7 = sub_226B0186C(&qword_27D7A6798, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
    v8 = *(v7 + 24);
    Task = type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask();
    v20 = (v8 + *v8);
    v10 = v8[1];
    v11 = swift_task_alloc();
    *(v0 + 80) = v11;
    *v11 = v0;
    v11[1] = sub_226AFE5C0;
    v12 = *(v0 + 48);
    v13 = *(v0 + 24);
    v14 = *(v0 + 32);

    return v20(v12, v13, Task, v7);
  }

  else
  {

    swift_willThrow();
    v16 = *(v0 + 72);
    v18 = *(v0 + 48);
    v17 = *(v0 + 56);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_226AFF7B8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v4 = sub_226D66DFC();
  v2[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[8] = v6;
  *v6 = v2;
  v6[1] = sub_226AFF894;

  return sub_226C64A54(a1);
}

uint64_t sub_226AFF894()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226AFF9DC, 0, 0);
  }

  else
  {
    v5 = v3[6];
    v4 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_226AFF9DC()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v1;
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);

    sub_226B01960(v6, v5);
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_226AFE5C0;
    v8 = *(v0 + 48);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);

    return sub_226C66C4C(v8, v9);
  }

  else
  {

    swift_willThrow();
    v12 = *(v0 + 72);
    v14 = *(v0 + 48);
    v13 = *(v0 + 56);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_226AFFB34(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D66DFC();
  v2[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v5 = sub_226D6764C();
  v2[8] = v5;
  v6 = *(v5 - 8);
  v2[9] = v6;
  v7 = *(v6 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AFFC30, 0, 0);
}

uint64_t sub_226AFFC30()
{
  v1 = sub_226D6E82C();
  v2 = v0[10];
  if (v1)
  {
    v4 = v0[6];
    v3 = v0[7];
    v5 = v0[10];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[8];
    v9 = v0[9];
    v10 = v0[3];
    v11 = v0[4];
    v12 = *(type metadata accessor for BankConnectBackgroundRefreshTask() + 28);
    v13 = sub_226D6D52C();
    (*(*(v13 - 8) + 16))(v2, v11 + v12, v13);
    (*(v9 + 104))(v2, *MEMORY[0x277CC6D30], v8);
    v14 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v15 = swift_task_alloc();
    v0[11] = v15;
    *v15 = v0;
    v15[1] = sub_226AFFDC0;
    v16 = v0[10];
    v17 = v0[4];

    return sub_226D01590(v14, v16, v17);
  }
}

uint64_t sub_226AFFDC0()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 24);
  v4 = *v0;

  v5 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v6 = swift_task_alloc();
  v1[12] = v6;
  *v6 = v4;
  v6[1] = sub_226AFFF3C;
  v7 = v1[10];
  v8 = v1[4];

  return sub_226D02088(v5, v7, v8);
}

uint64_t sub_226AFFF3C()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 24);
  v4 = *v0;

  v5 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v6 = swift_task_alloc();
  v1[13] = v6;
  *v6 = v4;
  v6[1] = sub_226B000B8;
  v7 = v1[10];
  v8 = v1[4];

  return sub_226D0305C(v5, v7, v8);
}

uint64_t sub_226B000B8()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 24);
  v4 = *v0;

  v5 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v6 = swift_task_alloc();
  v1[14] = v6;
  *v6 = v4;
  v6[1] = sub_226B00234;
  v7 = v1[10];
  v8 = v1[4];

  return sub_226D03AA0(v5, v7, v8);
}

uint64_t sub_226B00234()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226B00330, 0, 0);
}

uint64_t sub_226B00330()
{
  v1 = *(v0 + 32);
  v2 = *__swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v3 = sub_226D676AC();
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  sub_226D6EB7C();
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 64);

  (*(v6 + 8))(v5, v7);
  v8 = *(v0 + 80);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_226B0058C()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_226B0073C;
  }

  else
  {
    v3 = sub_226B006A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B006A0()
{
  sub_226B03154(*(v0 + 48), MEMORY[0x277CC6528]);

  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226B0073C()
{
  sub_226B03154(*(v0 + 48), MEMORY[0x277CC6528]);

  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226B007E0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v4 = sub_226D66DFC();
  v2[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[8] = v6;
  *v6 = v2;
  v6[1] = sub_226B008BC;

  return sub_226D5C6F0(a1);
}

uint64_t sub_226B008BC()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B00A04, 0, 0);
  }

  else
  {
    v5 = v3[6];
    v4 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_226B00A04()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v1;
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);

    sub_226B01960(v6, v5);
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_226AFE5C0;
    v8 = *(v0 + 48);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);

    return sub_226D5D330(v8, v9);
  }

  else
  {

    swift_willThrow();
    v12 = *(v0 + 72);
    v14 = *(v0 + 48);
    v13 = *(v0 + 56);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_226B00B5C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v4 = sub_226D66DFC();
  v2[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[8] = v6;
  *v6 = v2;
  v6[1] = sub_226B00C38;

  return sub_226D2ED88(a1);
}

uint64_t sub_226B00C38()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B00D80, 0, 0);
  }

  else
  {
    v5 = v3[6];
    v4 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_226B00D80()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v1;
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);

    sub_226B01960(v6, v5);
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_226AFE5C0;
    v8 = *(v0 + 48);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);

    return sub_226D2FEC0(v8, v9);
  }

  else
  {

    swift_willThrow();
    v12 = *(v0 + 72);
    v14 = *(v0 + 48);
    v13 = *(v0 + 56);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_226B00ED8(uint64_t a1)
{
  v43[1] = a1;
  v2 = sub_226D6D52C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6B9BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v43 - v13;
  v15 = type metadata accessor for BankConnectWebServiceTaskIdentifier(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226B01F40(v1, v18, type metadata accessor for BankConnectWebServiceTaskIdentifier);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v8 + 32))(v14, v18, v7);
      v19 = 1;
      goto LABEL_12;
    case 2u:
      (*(v8 + 32))(v14, v18, v7);
      v19 = 2;
      goto LABEL_12;
    case 3u:
      v28 = *v18;
      v29 = v18[1];
      v22 = 3;
      goto LABEL_20;
    case 4u:
      v23 = *v18;
      v24 = v18[1];
      v22 = 4;
      goto LABEL_20;
    case 5u:
      (*(v8 + 32))(v14, v18, v7);
      v19 = 5;
      goto LABEL_12;
    case 6u:
      v33 = *v18;
      MEMORY[0x22AA8B3B0](6);
      MEMORY[0x22AA8B3B0](*(v33 + 16));
      v34 = *(v33 + 16);
      if (v34)
      {
        v37 = *(v8 + 16);
        v36 = v8 + 16;
        v35 = v37;
        v38 = (*(v36 + 64) + 32) & ~*(v36 + 64);
        v43[0] = v33;
        v39 = v33 + v38;
        v40 = *(v36 + 56);
        do
        {
          v35(v12, v39, v7);
          sub_226B0186C(&qword_27D7A6790, MEMORY[0x277CC8058]);
          sub_226D6E30C();
          (*(v36 - 8))(v12, v7);
          v39 += v40;
          --v34;
        }

        while (v34);
      }

      goto LABEL_21;
    case 7u:
      v30 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67A0, &unk_226D7E670) + 48));
      v31 = *v30;
      v32 = v30[1];
      (*(v8 + 32))(v14, v18, v7);
      MEMORY[0x22AA8B3B0](7);
      sub_226B0186C(&qword_27D7A6790, MEMORY[0x277CC8058]);
      sub_226D6E30C();
      sub_226D6E42C();

      goto LABEL_13;
    case 8u:
      v41 = *v18;
      v42 = v18[1];
      v22 = 8;
      goto LABEL_20;
    case 9u:
      v26 = *v18;
      v27 = v18[1];
      v22 = 9;
      goto LABEL_20;
    case 0xAu:
      (*(v3 + 32))(v6, v18, v2);
      MEMORY[0x22AA8B3B0](10);
      sub_226B0186C(&qword_281062B60, MEMORY[0x277CC95F0]);
      sub_226D6E30C();
      return (*(v3 + 8))(v6, v2);
    case 0xBu:
      v20 = *v18;
      v21 = v18[1];
      v22 = 12;
LABEL_20:
      MEMORY[0x22AA8B3B0](v22);
      sub_226D6E42C();
LABEL_21:

      break;
    case 0xCu:
      result = MEMORY[0x22AA8B3B0](11);
      break;
    default:
      (*(v8 + 32))(v14, v18, v7);
      v19 = 0;
LABEL_12:
      MEMORY[0x22AA8B3B0](v19);
      sub_226B0186C(&qword_27D7A6790, MEMORY[0x277CC8058]);
      sub_226D6E30C();
LABEL_13:
      result = (*(v8 + 8))(v14, v7);
      break;
  }

  return result;
}

uint64_t sub_226B01458()
{
  v1 = sub_226D6B9BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226B01F40(v0, v9, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v14 = 5;
      }

      else
      {
        v14 = 6;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v14 = 7;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v14 = 8;
    }

    else
    {
      v14 = 9;
    }

    return MEMORY[0x22AA8B3B0](v14);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16 = *v9;
      v17 = v9[1];
      v13 = 2;
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v11 = *v9;
      v12 = v9[1];
      v13 = 3;
LABEL_15:
      MEMORY[0x22AA8B3B0](v13);
      sub_226D6E42C();
    }

    v14 = 4;
    return MEMORY[0x22AA8B3B0](v14);
  }

  if (EnumCaseMultiPayload)
  {
    (*(v2 + 32))(v5, v9, v1);
    v15 = 1;
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    v15 = 0;
  }

  MEMORY[0x22AA8B3B0](v15);
  sub_226B0186C(&qword_27D7A6790, MEMORY[0x277CC8058]);
  sub_226D6E30C();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_226B01730(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_226D6F2FC();
  a3(v5);
  return sub_226D6F35C();
}

uint64_t sub_226B01794(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_226D6F2FC();
  a4(v6);
  return sub_226D6F35C();
}

uint64_t sub_226B0186C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226B018B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226AFE17C(a1);
}

uint64_t sub_226B01960(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D66DFC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B019C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226AFE6D4(a1);
}

uint64_t sub_226B01A70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226AFEA50(a1);
}

uint64_t sub_226B01B1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226AFF000(a1);
}

uint64_t sub_226B01BC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226AFF37C(a1);
}

uint64_t sub_226B01C74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226AFF7B8(a1);
}

uint64_t sub_226B01D20(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226AFFB34(a1);
}

uint64_t sub_226B01DCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226B00B5C(a1);
}

uint64_t sub_226B01E78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226B007E0(a1);
}

uint64_t sub_226B01F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B01FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6B9BC();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v48 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v47 = &v47 - v8;
  v9 = type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v47 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v47 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v47 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67B0, &qword_226D72480);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v47 - v25;
  v27 = (&v47 + *(v24 + 56) - v25);
  sub_226B01F40(a1, &v47 - v25, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
  sub_226B01F40(a2, v27, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_41;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_41;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_41;
      }
    }

    else if (EnumCaseMultiPayload == 8)
    {
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_41;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 9)
    {
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_226B01F40(v26, v19, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v49 + 8))(v19, v50);
        goto LABEL_43;
      }

      v37 = v48;
      v36 = v49;
      v38 = v27;
      v39 = v50;
      (*(v49 + 32))(v48, v38, v50);
      v40 = MEMORY[0x22AA87A30](v19, v37);
      v41 = *(v36 + 8);
      v41(v37, v39);
      v42 = v19;
    }

    else
    {
      sub_226B01F40(v26, v21, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v49 + 8))(v21, v50);
        goto LABEL_43;
      }

      v44 = v49;
      v45 = v47;
      v46 = v27;
      v39 = v50;
      (*(v49 + 32))(v47, v46, v50);
      v40 = MEMORY[0x22AA87A30](v21, v45);
      v41 = *(v44 + 8);
      v41(v45, v39);
      v42 = v21;
    }

    v41(v42, v39);
    sub_226B03154(v26, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
    return v40 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_226B01F40(v26, v13, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
      v30 = *v13;
      v29 = v13[1];
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        if (v30 != *v27 || v29 != v27[1])
        {
          goto LABEL_27;
        }

LABEL_40:

        goto LABEL_41;
      }

      goto LABEL_31;
    }

    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_41;
    }

LABEL_43:
    sub_226AC47B0(v26, &qword_27D7A67B0, &qword_226D72480);
    goto LABEL_44;
  }

  sub_226B01F40(v26, v16, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
  v33 = *v16;
  v32 = v16[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_31:

    goto LABEL_43;
  }

  if (v33 == *v27 && v32 == v27[1])
  {
    goto LABEL_40;
  }

LABEL_27:
  v35 = sub_226D6F21C();

  if ((v35 & 1) == 0)
  {
    sub_226B03154(v26, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
LABEL_44:
    v40 = 0;
    return v40 & 1;
  }

LABEL_41:
  sub_226B03154(v26, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
  v40 = 1;
  return v40 & 1;
}

uint64_t sub_226B02558(uint64_t a1, void *a2)
{
  v129 = a1;
  v130 = a2;
  v2 = sub_226D6D52C();
  v125 = *(v2 - 8);
  v126 = v2;
  v3 = *(v125 + 64);
  MEMORY[0x28223BE20](v2);
  v117 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6B9BC();
  v6 = *(v5 - 8);
  v127 = v5;
  v128 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v118 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v116 = &v113 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v115 = &v113 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v114 = &v113 - v15;
  MEMORY[0x28223BE20](v14);
  v113 = &v113 - v16;
  v17 = type metadata accessor for BankConnectWebServiceTaskIdentifier(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v122 = (&v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v124 = &v113 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v120 = (&v113 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v119 = (&v113 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v123 = &v113 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = (&v113 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v121 = &v113 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = (&v113 - v35);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = (&v113 - v38);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v113 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v113 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v113 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67A8, &unk_226D71CF0);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v48 - 8);
  v52 = &v113 - v51;
  v53 = &v113 + *(v50 + 56) - v51;
  sub_226B01F40(v129, &v113 - v51, type metadata accessor for BankConnectWebServiceTaskIdentifier);
  v54 = v130;
  v130 = v53;
  sub_226B01F40(v54, v53, type metadata accessor for BankConnectWebServiceTaskIdentifier);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_226B01F40(v52, v45, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v84 = v130;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v86 = v127;
        v85 = v128;
        v87 = v114;
        (*(v128 + 32))(v114, v84, v127);
        v65 = MEMORY[0x22AA87A30](v45, v87);
        v66 = *(v85 + 8);
        v66(v87, v86);
        v67 = v45;
        v88 = v86;
        goto LABEL_30;
      }

      (*(v128 + 8))(v45, v127);
      goto LABEL_44;
    case 2u:
      sub_226B01F40(v52, v42, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v61 = v130;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v128 + 8))(v42, v127);
        goto LABEL_44;
      }

      v63 = v127;
      v62 = v128;
      v64 = v115;
      (*(v128 + 32))(v115, v61, v127);
      v65 = MEMORY[0x22AA87A30](v42, v64);
      v66 = *(v62 + 8);
      v66(v64, v63);
      v67 = v42;
LABEL_29:
      v88 = v63;
LABEL_30:
      v66(v67, v88);
      goto LABEL_48;
    case 3u:
      sub_226B01F40(v52, v39, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v58 = *v39;
      v57 = v39[1];
      v59 = v130;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_15;
      }

      goto LABEL_39;
    case 4u:
      sub_226B01F40(v52, v36, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v58 = *v36;
      v57 = v36[1];
      v59 = v130;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_39;
      }

      goto LABEL_15;
    case 5u:
      v71 = v121;
      sub_226B01F40(v52, v121, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v89 = v130;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_42;
      }

      v63 = v127;
      v90 = v128;
      v91 = v116;
      (*(v128 + 32))(v116, v89, v127);
      v65 = MEMORY[0x22AA87A30](v71, v91);
      v66 = *(v90 + 8);
      v66(v91, v63);
      v67 = v71;
      goto LABEL_29;
    case 6u:
      sub_226B01F40(v52, v31, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v92 = *v31;
      v93 = v130;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_39;
      }

      v65 = sub_226B2DFEC(v92, *v93);

      goto LABEL_48;
    case 7u:
      v71 = v123;
      sub_226B01F40(v52, v123, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67A0, &unk_226D7E670) + 48);
      v74 = *(v71 + v72);
      v73 = *(v71 + v72 + 8);
      v75 = v130;
      if (swift_getEnumCaseMultiPayload() != 7)
      {

LABEL_42:
        (*(v128 + 8))(v71, v127);
        goto LABEL_44;
      }

      v77 = *(v75 + v72);
      v76 = *(v75 + v72 + 8);
      v79 = v127;
      v78 = v128;
      v80 = v118;
      (*(v128 + 32))(v118, v75, v127);
      v81 = MEMORY[0x22AA87A30](v71, v80);
      v82 = v71;
      v83 = *(v78 + 8);
      v83(v82, v79);
      if ((v81 & 1) == 0)
      {
        v83(v80, v79);

        goto LABEL_54;
      }

      if (v74 == v77 && v73 == v76)
      {

        v83(v80, v79);
        goto LABEL_19;
      }

      v112 = sub_226D6F21C();

      v83(v80, v79);
      if ((v112 & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_19;
    case 8u:
      v100 = v119;
      sub_226B01F40(v52, v119, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v102 = *v100;
      v101 = v100[1];
      v103 = v130;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_39;
      }

      v104 = *v103;
      v105 = v103[1];
      if (v102 == v104 && v101 == v105)
      {
        goto LABEL_17;
      }

      v111 = sub_226D6F21C();

      if ((v111 & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_19;
    case 9u:
      v60 = v120;
      sub_226B01F40(v52, v120, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v58 = *v60;
      v57 = v60[1];
      v59 = v130;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_39;
      }

      goto LABEL_15;
    case 0xAu:
      v94 = v124;
      sub_226B01F40(v52, v124, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v95 = v130;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v97 = v125;
        v96 = v126;
        v98 = v117;
        (*(v125 + 32))(v117, v95, v126);
        v65 = sub_226D6D4EC();
        v99 = *(v97 + 8);
        v99(v98, v96);
        v99(v94, v96);
        goto LABEL_48;
      }

      (*(v125 + 8))(v94, v126);
      goto LABEL_44;
    case 0xBu:
      v56 = v122;
      sub_226B01F40(v52, v122, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v58 = *v56;
      v57 = v56[1];
      v59 = v130;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
LABEL_39:

LABEL_44:
        sub_226AC47B0(v52, &qword_27D7A67A8, &unk_226D71CF0);
        goto LABEL_45;
      }

LABEL_15:
      v68 = *v59;
      v69 = v59[1];
      if (v58 == v68 && v57 == v69)
      {
LABEL_17:

LABEL_19:
        sub_226B03154(v52, type metadata accessor for BankConnectWebServiceTaskIdentifier);
        v65 = 1;
        return v65 & 1;
      }

      v70 = sub_226D6F21C();

      if (v70)
      {
        goto LABEL_19;
      }

LABEL_54:
      sub_226B03154(v52, type metadata accessor for BankConnectWebServiceTaskIdentifier);
LABEL_45:
      v65 = 0;
      return v65 & 1;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_44;
      }

      goto LABEL_19;
    default:
      sub_226B01F40(v52, v47, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v55 = v130;
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v128 + 8))(v47, v127);
        goto LABEL_44;
      }

      v107 = v127;
      v106 = v128;
      v108 = v113;
      (*(v128 + 32))(v113, v55, v127);
      v65 = MEMORY[0x22AA87A30](v47, v108);
      v109 = *(v106 + 8);
      v109(v108, v107);
      v109(v47, v107);
LABEL_48:
      sub_226B03154(v52, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      return v65 & 1;
  }
}