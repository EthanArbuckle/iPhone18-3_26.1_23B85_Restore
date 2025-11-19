uint64_t sub_22FED8708(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    v4 = 0x72656D6F74737563;
    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xED000079786F7250;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7972726163;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE800000000000000;
  if (a2 != 2)
  {
    v7 = 0xED000079786F7250;
  }

  if (a2)
  {
    v2 = 0x7972726163;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0x72656D6F74737563;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_22FFB1BC8();
  }

  return v10 & 1;
}

BOOL sub_22FED8854(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_22FFB4DB8[a1];
  }

  if (a4)
  {
    a3 = qword_22FFB4DB8[a3];
  }

  return a1 == a3;
}

BOOL sub_22FED8878(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_22FFB4DF0[a1];
  }

  if (a4)
  {
    a3 = qword_22FFB4DF0[a3];
  }

  return a1 == a3;
}

uint64_t sub_22FED88FC()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_281491400);
  __swift_project_value_buffer(v0, qword_281491400);
  return sub_22FFB12E8();
}

uint64_t DarwinInitPolicy.init<A>(securityPolicies:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  *a3 = sub_22FFB1748();
  result = (*(v6 + 8))(a1, a2);
  a3[1] = MEMORY[0x277D84F90];
  return result;
}

uint64_t DarwinInitPolicy.init<A>(restrictedSecurityPolicies:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  *a3 = &unk_2844D8628;
  (*(v6 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v9 = sub_22FFB1748();
  result = (*(v6 + 8))(a1, a2);
  a3[1] = v9;
  return result;
}

uint64_t DarwinInitPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
  *(v3 + 96) = *v2;
  return MEMORY[0x2822009F8](sub_22FED8BD4, 0, 0);
}

uint64_t sub_22FED8BD4()
{
  v105 = v0;
  if (qword_281490278 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = sub_22FFB12F8();
  __swift_project_value_buffer(v3, qword_281491400);

  v4 = sub_22FFB12D8();
  v5 = sub_22FFB1848();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v103 = v9;
    *v8 = 136446466;
    v10 = MEMORY[0x23190DEA0](v7, &type metadata for DarwinInit.SecureConfigSecurityPolicy);
    v12 = sub_22FF9E448(v10, v11, &v103);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v13 = MEMORY[0x23190DEA0](v6, &type metadata for DarwinInit.SecureConfigSecurityPolicy);
    v15 = sub_22FF9E448(v13, v14, &v103);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_22FE99000, v4, v5, "Evaluating DarwinInit against allowed policies %{public}s and restricted policies %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190EFF0](v9, -1, -1);
    MEMORY[0x23190EFF0](v8, -1, -1);
  }

  v16 = *(v0 + 96);
  v17 = *(v16 + 16);
  v18 = (v16 + 32);

  v19 = (v16 + 32);
  while (1)
  {
    v21 = v17;
    if (!v17)
    {
      break;
    }

    if (!*v19)
    {

LABEL_10:
      v22 = sub_22FFB12D8();
      v23 = sub_22FFB1838();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_22FE99000, v22, v23, "Allowing absent or invalid darwin-init since DarwinInitPolicy allows config-security-policy=none", v24, 2u);
        MEMORY[0x23190EFF0](v24, -1, -1);
      }

      break;
    }

    v20 = sub_22FFB1BC8();

    ++v19;
    --v17;
    if (v20)
    {
      goto LABEL_10;
    }
  }

  v25 = *(v0 + 80);
  v26 = sub_22FFA7ED0();
  if (!v26)
  {
    v27 = *(v0 + 96);

    v28 = sub_22FFB12D8();
    v29 = sub_22FFB1838();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22FE99000, v28, v29, "Missing secure config in Attestation Bundle", v30, 2u);
      MEMORY[0x23190EFF0](v30, -1, -1);
    }

    if (!v21)
    {
      sub_22FED9ED8();
      swift_allocError();
      *v43 = xmmword_22FFB4C40;
      goto LABEL_86;
    }

LABEL_18:
    v31 = *(v0 + 8);
    goto LABEL_87;
  }

  sub_22FED9948(v26, &v103);
  v102 = v0;
  v32 = *(v0 + 104);

  v100 = v103;
  v33 = v104;
  v34 = (v32 + 32);
  v35 = *(v32 + 16);

  v101 = v33;
  while (v35)
  {
    v38 = 0xED000079786F7250;
    if (*v34 == 2)
    {
      v38 = 0xE800000000000000;
    }

    v39 = 0x7972726163;
    if (!*v34)
    {
      v39 = 1701736302;
    }

    v40 = 0xE400000000000000;
    if (*v34)
    {
      v40 = 0xE500000000000000;
    }

    if (*v34 <= 1u)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0x72656D6F74737563;
    }

    if (*v34 <= 1u)
    {
      v42 = v40;
    }

    else
    {
      v42 = v38;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v36 = 0xE800000000000000;
      }

      else
      {
        v36 = 0xED000079786F7250;
      }

      if (v41 != 0x72656D6F74737563)
      {
        goto LABEL_24;
      }
    }

    else if (v33)
    {
      v36 = 0xE500000000000000;
      if (v41 != 0x7972726163)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v36 = 0xE400000000000000;
      if (v41 != 1701736302)
      {
        goto LABEL_24;
      }
    }

    if (v42 == v36)
    {
      v0 = v102;
      v53 = *(v102 + 96);

LABEL_72:

      v55 = sub_22FFB12D8();
      v56 = sub_22FFB1838();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v103 = v58;
        *v57 = 136446210;
        v59 = 0xE400000000000000;
        v60 = 0xE800000000000000;
        if (v101 != 2)
        {
          v60 = 0xED000079786F7250;
        }

        v61 = 0x7972726163;
        if (v101)
        {
          v59 = 0xE500000000000000;
        }

        else
        {
          v61 = 1701736302;
        }

        if (v101 <= 1)
        {
          v62 = v61;
        }

        else
        {
          v62 = 0x72656D6F74737563;
        }

        if (v101 <= 1)
        {
          v63 = v59;
        }

        else
        {
          v63 = v60;
        }

        v64 = sub_22FF9E448(v62, v63, &v103);

        *(v57 + 4) = v64;
        _os_log_impl(&dword_22FE99000, v55, v56, "Darwin-Init security policy %{public}s is restricted", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v58);
        MEMORY[0x23190EFF0](v58, -1, -1);
        MEMORY[0x23190EFF0](v57, -1, -1);
      }

      v65 = *(v0 + 104);
      sub_22FED9ED8();
      swift_allocError();
      *v66 = v101 | 0x4000000000000000;
      v66[1] = v65;
      goto LABEL_86;
    }

LABEL_24:
    v37 = sub_22FFB1BC8();

    ++v34;
    --v35;
    if (v37)
    {
      v0 = v102;
      v54 = *(v102 + 96);
      goto LABEL_72;
    }
  }

  v44 = *(v102 + 104);

  v45 = *(v16 + 16);
  while (v45)
  {
    v48 = 0xED000079786F7250;
    if (*v18 == 2)
    {
      v48 = 0xE800000000000000;
    }

    v49 = 0x7972726163;
    if (*v18)
    {
      v50 = 0xE500000000000000;
    }

    else
    {
      v49 = 1701736302;
      v50 = 0xE400000000000000;
    }

    if (*v18 <= 1u)
    {
      v51 = v49;
    }

    else
    {
      v51 = 0x72656D6F74737563;
    }

    if (*v18 <= 1u)
    {
      v52 = v50;
    }

    else
    {
      v52 = v48;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v46 = 0xE800000000000000;
      }

      else
      {
        v46 = 0xED000079786F7250;
      }

      if (v51 != 0x72656D6F74737563)
      {
        goto LABEL_51;
      }
    }

    else if (v33)
    {
      v46 = 0xE500000000000000;
      if (v51 != 0x7972726163)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v46 = 0xE400000000000000;
      if (v51 != 1701736302)
      {
        goto LABEL_51;
      }
    }

    if (v52 == v46)
    {
      v0 = v102;
      v86 = *(v102 + 96);

      v87 = *(v102 + 96);
LABEL_107:
      v89 = *(v0 + 104);
      v90 = *(v0 + 88);

      *(v0 + 40) = &type metadata for DarwinInit;
      *(v0 + 16) = v100;
      *(v0 + 24) = v101;
      sub_22FED6328(v0 + 16, v0 + 48);
      sub_22FECBD14(v0 + 48, &type metadata for DarwinInitPolicy, &protocol witness table for DarwinInitPolicy, 0xD000000000000013, 0x800000022FFC9E30);
      sub_22FED62C0(v0 + 16);

      v91 = sub_22FFB12D8();
      v92 = sub_22FFB1848();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = *(v0 + 96);
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v103 = v95;
        *v94 = 136446210;
        v96 = MEMORY[0x23190DEA0](v93, &type metadata for DarwinInit.SecureConfigSecurityPolicy);
        v98 = sub_22FF9E448(v96, v97, &v103);

        *(v94 + 4) = v98;
        _os_log_impl(&dword_22FE99000, v91, v92, "AttestationBundle passed DarwinInitPolicy: reported darwin-init config-security-policy matches allowed list: %{public}s", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v95);
        MEMORY[0x23190EFF0](v95, -1, -1);
        MEMORY[0x23190EFF0](v94, -1, -1);
      }

      goto LABEL_18;
    }

LABEL_51:
    v47 = sub_22FFB1BC8();

    ++v18;
    --v45;
    if (v47)
    {
      v0 = v102;
      v88 = *(v102 + 96);
      goto LABEL_107;
    }
  }

  v0 = v102;
  v69 = *(v102 + 96);
  v68 = *(v102 + 104);

  v70 = sub_22FFB12D8();
  v71 = sub_22FFB1838();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v103 = v73;
    *v72 = 136446466;
    v74 = 0xE400000000000000;
    v75 = 0xE800000000000000;
    if (v101 != 2)
    {
      v75 = 0xED000079786F7250;
    }

    v76 = 0x7972726163;
    if (v101)
    {
      v74 = 0xE500000000000000;
    }

    else
    {
      v76 = 1701736302;
    }

    if (v101 <= 1)
    {
      v77 = v76;
    }

    else
    {
      v77 = 0x72656D6F74737563;
    }

    if (v101 <= 1)
    {
      v78 = v74;
    }

    else
    {
      v78 = v75;
    }

    v79 = *(v102 + 96);
    v80 = sub_22FF9E448(v77, v78, &v103);

    *(v72 + 4) = v80;
    *(v72 + 12) = 2082;
    v81 = MEMORY[0x23190DEA0](v79, &type metadata for DarwinInit.SecureConfigSecurityPolicy);
    v83 = sub_22FF9E448(v81, v82, &v103);

    *(v72 + 14) = v83;
    _os_log_impl(&dword_22FE99000, v70, v71, "Darwin-Init security policy %{public}s not in list of allowed policies: %{public}s", v72, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190EFF0](v73, -1, -1);
    MEMORY[0x23190EFF0](v72, -1, -1);
  }

  v84 = *(v102 + 96);
  if (v21)
  {
    v85 = *(v102 + 96);

    goto LABEL_18;
  }

  sub_22FED9ED8();
  swift_allocError();
  *v99 = v101;
  v99[1] = v84;
LABEL_86:
  swift_willThrow();
  v31 = *(v0 + 8);
LABEL_87:

  return v31();
}

uint64_t sub_22FED9948@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = result + 64;
    v5 = MEMORY[0x277D84F90];
    v37 = *(result + 16);
    v33 = result + 64;
    while (1)
    {
      v35 = v5;
      v6 = (v4 + 40 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          return result;
        }

        v3 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_39;
        }

        v8 = *(v6 - 2);
        if (!*(v8 + 16))
        {
          goto LABEL_6;
        }

        v9 = *(v6 - 4);
        v10 = *(v6 - 3);
        v11 = *(v6 - 1);
        v12 = *v6;
        sub_22FEA5608(v9, v10);

        sub_22FEA5608(v11, v12);
        v13 = sub_22FFA619C(1701667182, 0xE400000000000000);
        if (v14)
        {
          v15 = (*(v8 + 56) + 16 * v13);
          v16 = *v15 == 0x692D6E6977726164 && v15[1] == 0xEB0000000074696ELL;
          if (v16 || (sub_22FFB1BC8() & 1) != 0)
          {
            if (!*(v8 + 16) || (v17 = sub_22FFA619C(0x7079745F656D696DLL, 0xE900000000000065), (v18 & 1) == 0))
            {
              sub_22FEA55AC(v9, v10);

              sub_22FEA55AC(v11, v12);

              goto LABEL_5;
            }

            v19 = (*(v8 + 56) + 16 * v17);
            v20 = *v19 == 0xD000000000000010 && 0x800000022FFC9E50 == v19[1];
            if (v20 || (sub_22FFB1BC8() & 1) != 0)
            {
              break;
            }
          }
        }

        sub_22FEA55AC(v9, v10);

        result = sub_22FEA55AC(v11, v12);
LABEL_5:
        v2 = v37;
LABEL_6:
        ++v7;
        v6 += 5;
        if (v3 == v2)
        {
          v5 = v35;
          goto LABEL_32;
        }
      }

      v5 = v35;
      result = swift_isUniquelyReferenced_nonNull_native();
      v36[0] = v35;
      if ((result & 1) == 0)
      {
        result = sub_22FECDAD4(0, *(v35 + 16) + 1, 1);
        v5 = v36[0];
      }

      v22 = v5[2];
      v21 = v5[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        result = sub_22FECDAD4((v21 > 1), v22 + 1, 1);
        v23 = v22 + 1;
        v5 = v36[0];
      }

      v5[2] = v23;
      v24 = &v5[5 * v22];
      v24[4] = v9;
      v24[5] = v10;
      v24[6] = v8;
      v24[7] = v11;
      v24[8] = v12;
      v2 = v37;
      v4 = v33;
      if (v3 == v37)
      {
LABEL_32:
        v25 = v5[2];
        if (!v25)
        {
          goto LABEL_36;
        }

LABEL_33:
        v26 = v5[4];
        v27 = v5[5];
        v29 = v5[6];
        v28 = v5[7];
        v30 = v5[8];
        sub_22FEA5608(v26, v27);

        sub_22FEA5608(v28, v30);

        if (v25 == 1)
        {
          v36[0] = v26;
          v36[1] = v27;
          v36[2] = v29;
          v36[3] = v28;
          v36[4] = v30;
          return DarwinInit.init(from:)(v36, a2);
        }

        else
        {
          sub_22FEDA044();
          swift_allocError();
          *v32 = xmmword_22FFB4C50;
          *(v32 + 16) = 2;
          swift_willThrow();
          sub_22FEA55AC(v26, v27);

          return sub_22FEA55AC(v28, v30);
        }
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
  v25 = *(MEMORY[0x277D84F90] + 16);
  if (v25)
  {
    goto LABEL_33;
  }

LABEL_36:

  sub_22FEDA044();
  swift_allocError();
  *v31 = xmmword_22FFB4C60;
  *(v31 + 16) = 2;
  return swift_willThrow();
}

void static DarwinInitPolicy.validatedDarwinInitKey.getter(void *a1@<X8>)
{
  *a1 = &type metadata for DarwinInitPolicy;
  a1[1] = &protocol witness table for DarwinInitPolicy;
  a1[2] = 0xD000000000000013;
  a1[3] = 0x800000022FFC9E30;
}

uint64_t sub_22FED9D50(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FEAA0D4;

  return DarwinInitPolicy.evaluate(bundle:context:)(a1, a2);
}

uint64_t AttestationPolicyContext.validatedDarwinInit.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(v3 + 16) || (v4 = sub_22FFA62AC(&type metadata for DarwinInitPolicy, &protocol witness table for DarwinInitPolicy, 0xD000000000000013, 0x800000022FFC9E30), (v5 & 1) == 0))
  {
    v7 = 0u;
    v8 = 0u;

    goto LABEL_7;
  }

  sub_22FEBF2A4(*(v3 + 56) + 32 * v4, &v7);

  if (!*(&v8 + 1))
  {
LABEL_7:
    result = sub_22FED62C0(&v7);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return result;
}

unint64_t sub_22FED9ED8()
{
  result = qword_27DAF1F50;
  if (!qword_27DAF1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1F50);
  }

  return result;
}

uint64_t sub_22FED9F2C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16CloudAttestation16DarwinInitPolicyV5ErrorO(uint64_t a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 & 3 | (4 * *(a1 + 8))) + 2;
  }
}

uint64_t sub_22FED9F74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_22FED9FC4(uint64_t result, int a2, int a3)
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
      *result = 4 * -a2;
      *(result + 8) = 0;
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

void *sub_22FEDA004(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) & 3 | 0x8000000000000000;
    result[1] = (a2 - 2) >> 2;
  }

  return result;
}

unint64_t sub_22FEDA044()
{
  result = qword_27DAF1F58;
  if (!qword_27DAF1F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1F58);
  }

  return result;
}

CloudAttestation::DeviceModePolicy::Constraint __swiftcall DeviceModePolicy.Constraint.init(_:)(CloudAttestation::DeviceModePolicy::Constraint result)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *v1 = v2;
  return result;
}

_BYTE *DeviceModePolicy.init(restrictedExecution:ephemeralData:developer:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = 0x10002u >> (8 * *a2);
  *a4 = 0x10002u >> (8 * *result);
  *(a4 + 1) = v5;
  *(a4 + 2) = 0x10002u >> (8 * v4);
  *(a4 + 5) = 0;
  *(a4 + 3) = 2;
  return result;
}

uint64_t sub_22FEDA0F8()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_2814913E8);
  __swift_project_value_buffer(v0, qword_2814913E8);
  return sub_22FFB12E8();
}

unsigned __int8 *DeviceModePolicy.init(_:restrictedExecution:ephemeralData:developer:)@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = result[2];
  v6 = 0x10002u >> (8 * *a3);
  v7 = 0x10002u >> (8 * *a4);
  if (result[1])
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | *result;
  *a5 = 0x10002u >> (8 * *a2);
  *(a5 + 1) = v6;
  *(a5 + 2) = v7;
  *(a5 + 5) = v5 != 0;
  *(a5 + 3) = v9;
  return result;
}

uint64_t DeviceModePolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 28) = *v2;
  *(v3 + 29) = *(v2 + 1);
  v4 = *(v2 + 3);
  *(v3 + 26) = *(v2 + 5);
  *(v3 + 24) = v4;
  return MEMORY[0x2822009F8](sub_22FEDA22C, 0, 0);
}

uint64_t sub_22FEDA22C()
{
  v54 = v0;
  v1 = *(v0 + 24);
  v2 = v1 | (*(v0 + 26) << 16);
  if (v1 == 2)
  {
    v43 = **(v0 + 16);
    AttestationPolicyContext.validatedAttestation.getter(&v46);
    v3 = v47;
    if (v47 >> 60 == 15)
    {
      LOBYTE(v2) = 0;
    }

    else
    {
      v7 = v48;
      v6 = v49;
      v8 = v46;
      v50 = v46;
      v51 = v47;
      v52 = v48;
      v53 = v49;
      LOBYTE(v2) = SEP.Attestation.restrictedExecutionMode.getter();
      sub_22FECB858(v8, v3, v7, v6);
    }

    v44 = **(v0 + 16);
    AttestationPolicyContext.validatedAttestation.getter(&v46);
    v9 = v47;
    if (v47 >> 60 == 15)
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v11 = v48;
      v10 = v49;
      v12 = v46;
      v50 = v46;
      v51 = v47;
      v52 = v48;
      v53 = v49;
      LOBYTE(v4) = SEP.Attestation.ephemeralDataMode.getter();
      sub_22FECB858(v12, v9, v11, v10);
    }

    v45 = **(v0 + 16);
    AttestationPolicyContext.validatedAttestation.getter(&v46);
    v13 = v47;
    if (v47 >> 60 == 15)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = v48;
      v14 = v49;
      v15 = v46;
      v50 = v46;
      v51 = v47;
      v52 = v48;
      v53 = v49;
      v16 = SEP.Attestation.developerMode.getter();
      sub_22FECB858(v15, v13, v5, v14);
      LOBYTE(v5) = (v16 == 2) | v16;
    }
  }

  else
  {
    v4 = (v2 >> 8) & 1;
    LODWORD(v5) = HIWORD(v2) & 1;
  }

  v17 = *(v0 + 28);
  if (v17 == 2)
  {
    if (qword_281490270 != -1)
    {
      swift_once();
    }

    v18 = sub_22FFB12F8();
    __swift_project_value_buffer(v18, qword_2814913E8);
    v19 = sub_22FFB12D8();
    v20 = sub_22FFB1848();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22FE99000, v19, v20, "Skipping assertion of Restricted Execution Mode", v21, 2u);
      MEMORY[0x23190EFF0](v21, -1, -1);
    }
  }

  else
  {
    v22 = v17 & 1;
    v23 = v2 & 1;
    if ((v2 & 1) != v22)
    {
      v24 = v22 << 8;
      goto LABEL_36;
    }
  }

  v25 = *(v0 + 29);
  if (v25 != 2)
  {
    if ((v4 & 1) == (v25 & 1))
    {
      goto LABEL_28;
    }

    v24 = v4 & 1 | ((v25 & 1) << 8);
    v23 = 0x4000;
LABEL_36:
    v35 = v24 | v23;
    sub_22FEDA894();
    swift_allocError();
    *v36 = v35;
    swift_willThrow();
    v37 = *(v0 + 8);
    goto LABEL_42;
  }

  if (qword_281490270 != -1)
  {
    swift_once();
  }

  v26 = sub_22FFB12F8();
  __swift_project_value_buffer(v26, qword_2814913E8);
  v27 = sub_22FFB12D8();
  v28 = sub_22FFB1848();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_22FE99000, v27, v28, "Skipping assertion of Ephemeral Data Mode", v29, 2u);
    MEMORY[0x23190EFF0](v29, -1, -1);
  }

LABEL_28:
  v30 = *(v0 + 30);
  if (v30 == 2)
  {
    if (qword_281490270 != -1)
    {
      swift_once();
    }

    v31 = sub_22FFB12F8();
    __swift_project_value_buffer(v31, qword_2814913E8);
    v32 = sub_22FFB12D8();
    v33 = sub_22FFB1848();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_22FE99000, v32, v33, "Skipping developer mode restriction", v34, 2u);
      MEMORY[0x23190EFF0](v34, -1, -1);
    }

    goto LABEL_37;
  }

  if ((v5 & 1) != (v30 & 1))
  {
    v24 = v5 & 1 | ((v30 & 1) << 8);
    v23 = 0x8000;
    goto LABEL_36;
  }

LABEL_37:
  if (qword_281490270 != -1)
  {
    swift_once();
  }

  v38 = sub_22FFB12F8();
  __swift_project_value_buffer(v38, qword_2814913E8);
  v39 = sub_22FFB12D8();
  v40 = sub_22FFB1848();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_22FE99000, v39, v40, "AttestationBundle passed DeviceModePolicy: device has satisfactory REM, EphDM, and DevMode states", v41, 2u);
    MEMORY[0x23190EFF0](v41, -1, -1);
  }

  v37 = *(v0 + 8);
LABEL_42:

  return v37();
}

uint64_t sub_22FEDA778(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FEAA0D4;

  return DeviceModePolicy.evaluate(bundle:context:)(v4, a2);
}

uint64_t DeviceModePolicy.Constraint.hashValue.getter()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

unint64_t sub_22FEDA894()
{
  result = qword_27DAF1F60;
  if (!qword_27DAF1F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1F60);
  }

  return result;
}

unint64_t sub_22FEDA8EC()
{
  result = qword_27DAF1F68;
  if (!qword_27DAF1F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1F68);
  }

  return result;
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DeviceModePolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[6])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceModePolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DeviceModePolicy.ModeLoader(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    v2 = (a2 + 16776962) >> 24 == 255 ? 2 : 1;
    v3 = (a2 + 16776962) >> 24 ? v2 : 0;
    if (v3)
    {
      if (v3 == 2)
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776962;
        }
      }

      else
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776962;
        }
      }
    }
  }

  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  if (v8 + 1 >= 2)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DeviceModePolicy.ModeLoader(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 16776962) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 16776962) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v4)
    {
      v5 = ((a2 - 254) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v4 == 2)
    {
      *(result + 3) = 0;
LABEL_13:
      if (!a2)
      {
        return result;
      }

LABEL_19:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_22FEDAB54(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceModePolicy.Error(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 65410 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65410 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65410;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65410;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65410;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 7) & 0x7C | (*a1 >> 14)) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for DeviceModePolicy.Error(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65410 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65410 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 16) + 1;
    *result = a2 - 126;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = (((-a2 >> 2) & 0x1F) - 32 * a2) << 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22FEDAD3C()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB059F0);
  __swift_project_value_buffer(v0, qword_27DB059F0);
  return sub_22FFB12E8();
}

uint64_t EnsembleMembersPolicy.init(required:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = result;
  return result;
}

uint64_t EnsembleMembersPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 32) = *v2;
  v4 = *(v2 + 8);
  *(v3 + 16) = a2;
  *(v3 + 24) = v4;
  *(v3 + 33) = *(v2 + 16);

  return MEMORY[0x2822009F8](sub_22FEDAE4C, 0, 0);
}

uint64_t sub_22FEDAE4C()
{
  v23 = v0;
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 33);
  }

  else
  {
    v20 = **(v0 + 16);
    AttestationPolicyContext.validatedDarwinInit.getter(&v21);
    v1 = v21;
    if (!v21)
    {
      if (*(v0 + 32) == 1)
      {
        if (qword_27DAF1278 != -1)
        {
          swift_once();
        }

        v14 = sub_22FFB12F8();
        __swift_project_value_buffer(v14, qword_27DB059F0);
        v5 = sub_22FFB12D8();
        v6 = sub_22FFB1838();
        v7 = 0;
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_22;
        }

        v8 = "Validated darwin-init not available";
        goto LABEL_21;
      }

      if (qword_27DAF1278 != -1)
      {
        swift_once();
      }

      v18 = sub_22FFB12F8();
      __swift_project_value_buffer(v18, qword_27DB059F0);
      v10 = sub_22FFB12D8();
      v11 = sub_22FFB1838();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        v13 = "Validated darwin-init not available, failing open";
        goto LABEL_27;
      }

LABEL_28:

      goto LABEL_29;
    }

    v2 = v22;
  }

  v21 = v1;
  v22 = v2;
  v3 = DarwinInit.ensembleCertificateFingerprints.getter();

  if (!v3)
  {
    if (*(v0 + 32))
    {
      if (qword_27DAF1278 != -1)
      {
        swift_once();
      }

      v4 = sub_22FFB12F8();
      __swift_project_value_buffer(v4, qword_27DB059F0);
      v5 = sub_22FFB12D8();
      v6 = sub_22FFB1838();
      v7 = 1;
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_22;
      }

      v8 = "Ensemble member fingerprints not found in secure-config";
LABEL_21:
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22FE99000, v5, v6, v8, v15, 2u);
      MEMORY[0x23190EFF0](v15, -1, -1);
LABEL_22:

      sub_22FEDB25C();
      swift_allocError();
      *v16 = v7;
      swift_willThrow();
      v17 = *(v0 + 8);
      goto LABEL_30;
    }

    if (qword_27DAF1278 != -1)
    {
      swift_once();
    }

    v9 = sub_22FFB12F8();
    __swift_project_value_buffer(v9, qword_27DB059F0);
    v10 = sub_22FFB12D8();
    v11 = sub_22FFB1838();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Ensemble member fingerprints not found in secure-config, failing open";
LABEL_27:
      _os_log_impl(&dword_22FE99000, v10, v11, v13, v12, 2u);
      MEMORY[0x23190EFF0](v12, -1, -1);
      goto LABEL_28;
    }

    goto LABEL_28;
  }

LABEL_29:
  v17 = *(v0 + 8);
LABEL_30:

  return v17();
}

uint64_t sub_22FEDB1C8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FEAA0D4;

  return EnsembleMembersPolicy.evaluate(bundle:context:)(v4, a2);
}

unint64_t sub_22FEDB25C()
{
  result = qword_27DAF1F70;
  if (!qword_27DAF1F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1F70);
  }

  return result;
}

uint64_t sub_22FEDB2B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_22FEDB30C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_22FEDB384()
{
  result = qword_27DAF1F78;
  if (!qword_27DAF1F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1F78);
  }

  return result;
}

uint64_t sub_22FEDB3D8()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05A08);
  __swift_project_value_buffer(v0, qword_27DB05A08);
  return sub_22FFB12E8();
}

unsigned __int8 *FusingPolicy.init(_:is:)@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = result[2];
  v5 = a2[1];
  v6 = a2[2];
  if (result[1])
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  *a3 = *a2;
  *(a3 + 1) = v5;
  *(a3 + 2) = v6;
  *(a3 + 5) = v4;
  *(a3 + 3) = v7 | v3;
  return result;
}

_BYTE *FusingPolicy.Constraints.init(productionStatus:securityMode:securityDomain:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = *result;
  a4[1] = v4;
  a4[2] = v5;
  return result;
}

unsigned __int8 *FusingPolicy.init(_:matches:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = result[2];
  v5 = *(a2 + 2);
  if (result[1])
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  *a3 = *a2;
  *(a3 + 2) = v5;
  *(a3 + 5) = v4;
  *(a3 + 3) = v6 | v3;
  return result;
}

_BYTE *FusingPolicy.init(is:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  v3 = result[2];
  *a2 = *result;
  *(a2 + 1) = v2;
  *(a2 + 2) = v3;
  *(a2 + 5) = 0;
  *(a2 + 3) = 2;
  return result;
}

uint64_t FusingPolicy.init(matches:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 2);
  *a2 = *result;
  *(a2 + 2) = v2;
  *(a2 + 5) = 0;
  *(a2 + 3) = 2;
  return result;
}

uint64_t FusingPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  *(v3 + 32) = a2;
  *(v3 + 44) = *v2;
  *(v3 + 45) = *(v2 + 1);
  v4 = *(v2 + 3);
  *(v3 + 42) = *(v2 + 5);
  *(v3 + 40) = v4;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FEDB5E4, 0, 0);
}

uint64_t sub_22FEDB5E4()
{
  v31 = v0;
  v30 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 40) | (*(v0 + 42) << 16);
  if (*(v0 + 40) == 2)
  {
    v24 = **(v0 + 32);
    AttestationPolicyContext.validatedAttestation.getter(&v25);
    v2 = v26;
    if (v26 >> 60 == 15)
    {
      goto LABEL_4;
    }

    v4 = v27;
    v3 = v28;
    v5 = v25;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    v6 = swift_task_alloc();
    *(v6 + 16) = v0 + 16;
    *(v6 + 24) = v0 + 24;
    sub_22FED55F8(v4, v3, sub_22FEB341C);
    sub_22FECB858(v5, v2, v4, v3);

    v1 = v29;
    if (v29 == 2)
    {
LABEL_4:
      v7 = 2;
LABEL_16:
      sub_22FEDBA30();
      swift_allocError();
      *(v15 + 4) = WORD2(v7);
      *v15 = v7;
      swift_willThrow();
      v16 = *(v0 + 8);
      v17 = *MEMORY[0x277D85DE8];
      goto LABEL_17;
    }

    v8 = (v29 >> 8) & 1;
    v9 = BYTE2(v29);
  }

  else
  {
    LODWORD(v8) = (v1 >> 8) & 1;
    v9 = HIWORD(v1);
  }

  v10 = *(v0 + 44);
  v11 = *(v0 + 45);
  if (v10 != 2 && ((v1 ^ v10) & 1) != 0 || v11 != 2 && ((v8 ^ v11) & 1) != 0 || (v12 = *(v0 + 46), v12 != 4) && v9 != v12)
  {
    v13 = v8 == 0;
    v14 = 256;
    if (v13)
    {
      v14 = 0;
    }

    v7 = v14 & 0xFFFFFFFFFFFFFFFELL | v1 & 1 | (v9 << 16) | (v10 << 24) | (v11 << 32) | (*(v0 + 46) << 40);
    goto LABEL_16;
  }

  if (qword_27DAF1280 != -1)
  {
    swift_once();
  }

  v19 = sub_22FFB12F8();
  __swift_project_value_buffer(v19, qword_27DB05A08);
  v20 = sub_22FFB12D8();
  v21 = sub_22FFB1848();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_22FE99000, v20, v21, "AttestationBundle passed FusingPolicy: device has expected fuse bits", v22, 2u);
    MEMORY[0x23190EFF0](v22, -1, -1);
  }

  v16 = *(v0 + 8);
  v23 = *MEMORY[0x277D85DE8];
LABEL_17:

  return v16();
}

BOOL static FusingPolicy.Constraints.~= infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[2];
  if (v2 != 2 && ((*a2 ^ v2) & 1) != 0)
  {
    return 0;
  }

  v5 = a1[1];
  if (v5 != 2 && ((a2[1] ^ v5) & 1) != 0)
  {
    return 0;
  }

  return v3 == 4 || a2[2] == v3;
}

uint64_t sub_22FEDB920(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FEAA0D4;

  return FusingPolicy.evaluate(bundle:context:)(v4, a2);
}

BOOL FusingPolicy.Constraints.matches(_:)(unsigned __int8 *a1)
{
  v2 = *v1;
  v3 = v1[2];
  if (v2 != 2 && ((*a1 ^ v2) & 1) != 0)
  {
    return 0;
  }

  v5 = v1[1];
  if (v5 != 2 && ((a1[1] ^ v5) & 1) != 0)
  {
    return 0;
  }

  return v3 == 4 || a1[2] == v3;
}

unint64_t sub_22FEDBA30()
{
  result = qword_27DAF1F80[0];
  if (!qword_27DAF1F80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DAF1F80);
  }

  return result;
}

uint64_t FusingPolicy.Constraint.matches(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14, a2);
  v15 = 1;
  if ((*(v4 + 48))(v12, 1, v3) != 1)
  {
    (*(v4 + 32))(v8, v12, v3);
    v16 = *(a2 + 24);
    v15 = sub_22FFB1478();
    (*(v4 + 8))(v8, v3);
  }

  return v15 & 1;
}

uint64_t getEnumTagSinglePayload for FusingPolicy.Constraints(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *a1;
  if (v4 >= 2)
  {
    v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FusingPolicy.Constraints(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_22FEDBDF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_22FEDBE50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_22FEDBFD0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FusingPolicy.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[6])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FEDC250(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

_BYTE *HardwareIdentifiersPolicy.init(matches:)@<X0>(_BYTE *result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = result[1];
  v5 = result[2];
  *a4 = *result;
  *(a4 + 1) = v4;
  *(a4 + 2) = v5;
  *(a4 + 4) = a2;
  *(a4 + 8) = a3;
  *(a4 + 12) = 2;
  *(a4 + 20) = 0;
  return result;
}

uint64_t sub_22FEDC2C8()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05A20);
  __swift_project_value_buffer(v0, qword_27DB05A20);
  return sub_22FFB12E8();
}

unsigned __int8 *HardwareIdentifiersPolicy.init(_:matches:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, int a3@<W2>, _BYTE *a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v7 = *result;
  v8 = result[2];
  v9 = a4[1];
  v10 = a4[2];
  v11 = 256;
  if (!result[1])
  {
    v11 = 0;
  }

  *a7 = *a4;
  *(a7 + 1) = v9;
  *(a7 + 2) = v10;
  *(a7 + 4) = a5;
  *(a7 + 8) = a6;
  *(a7 + 12) = v11 | v7 | (v8 << 16) | (a2 << 32);
  *(a7 + 20) = a3;
  return result;
}

uint64_t HardwareIdentifiersPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  *(v3 + 60) = *v2;
  *(v3 + 61) = *(v2 + 1);
  *(v3 + 62) = *(v2 + 2);
  *(v3 + 48) = *(v2 + 4);
  v4 = *(v2 + 12);
  *(v3 + 32) = a2;
  *(v3 + 40) = v4;
  *(v3 + 56) = *(v2 + 20);
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FEDC450, 0, 0);
}

uint64_t sub_22FEDC450()
{
  v37 = v0;
  v36 = *MEMORY[0x277D85DE8];
  v31 = **(v0 + 32);
  AttestationPolicyContext.validatedAttestation.getter(&v32);
  v2 = v32;
  v1 = v33;
  v4 = v34;
  v3 = v35;
  if (v33 >> 60 == 15)
  {
    LODWORD(v5) = 0;
    v6 = 0;
    LOBYTE(v7) = 1;
    LODWORD(v8) = 2;
  }

  else
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    v9 = swift_task_alloc();
    *(v9 + 16) = v0 + 16;
    *(v9 + 24) = v0 + 24;
    sub_22FEDC90C(v2, v1, v4, v3);
    sub_22FED55F8(v4, v3, sub_22FEB341C);
    sub_22FECB858(v2, v1, v4, v3);

    v6 = v32;
    LODWORD(v8) = v34;
    v32 = v2;
    v33 = v1;
    v34 = v4;
    v35 = v3;
    v5 = SEP.Attestation.boardID.getter();
    v7 = HIDWORD(v5) & 1;
  }

  if (*(v0 + 40) == 2)
  {
    if ((v8 == 2) | v7 & 1)
    {
      sub_22FEDC8B8();
      swift_allocError();
      v10[1] = 0;
      v10[2] = 0;
      *v10 = 2;
LABEL_33:
      swift_willThrow();
      sub_22FECB858(v2, v1, v4, v3);
      v21 = *(v0 + 8);
      v29 = *MEMORY[0x277D85DE8];
      goto LABEL_34;
    }
  }

  else
  {
    v6 = HIDWORD(*(v0 + 40));
    LODWORD(v5) = *(v0 + 56);
    v8 = *(v0 + 40);
  }

  v11 = WORD1(v8) & 3;
  v12 = *(v0 + 62);
  if ((v8 & 0x100) != 0)
  {
    v11 |= 4u;
    v13 = v12 & 3 | 4;
    if (!*(v0 + 61))
    {
      v13 = v12 & 3;
    }

    v14 = 8 * (v8 & 1);
  }

  else
  {
    v13 = v12 & 3 | 4;
    if (!*(v0 + 61))
    {
      v13 = v12 & 3;
    }

    if (v8)
    {
      v14 = 8;
    }

    else
    {
      v14 = 0;
    }
  }

  v15 = v11 | v14;
  if (*(v0 + 60))
  {
    v16 = 8;
  }

  else
  {
    v16 = 0;
  }

  if (v15 != (v16 | v13) || v6 != *(v0 + 48) || v5 != *(v0 + 52))
  {
    v23 = *(v0 + 48);
    v24 = v8 & 0xFF0101 | (v6 << 32);
    v25 = 0x100000000;
    if (!*(v0 + 60))
    {
      v25 = 0;
    }

    v26 = 0x10000000000;
    if (!*(v0 + 61))
    {
      v26 = 0;
    }

    v27 = v25 | v26 | (v12 << 48) | v5;
    sub_22FEDC8B8();
    swift_allocError();
    *v28 = v24;
    v28[1] = v27;
    v28[2] = v23;
    goto LABEL_33;
  }

  if (qword_27DAF1288 != -1)
  {
    swift_once();
  }

  v17 = sub_22FFB12F8();
  __swift_project_value_buffer(v17, qword_27DB05A20);
  v18 = sub_22FFB12D8();
  v19 = sub_22FFB1848();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_22FE99000, v18, v19, "AttestationBundle passed HardwareIdentifiersPolicy: device has expected hardware identifiers", v20, 2u);
    MEMORY[0x23190EFF0](v20, -1, -1);
  }

  sub_22FECB858(v2, v1, v4, v3);

  v21 = *(v0 + 8);
  v22 = *MEMORY[0x277D85DE8];
LABEL_34:

  return v21();
}

uint64_t sub_22FEDC824(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FEAA0D4;

  return HardwareIdentifiersPolicy.evaluate(bundle:context:)(v4, a2);
}

unint64_t sub_22FEDC8B8()
{
  result = qword_27DAF2008;
  if (!qword_27DAF2008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2008);
  }

  return result;
}

uint64_t sub_22FEDC90C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_22FEA5608(result, a2);

    return sub_22FEA5608(a3, a4);
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HardwareIdentifiersPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
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

uint64_t storeEnumTagSinglePayload for HardwareIdentifiersPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HardwareIdentifiersPolicy.IdentifiersLoader(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[12])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HardwareIdentifiersPolicy.IdentifiersLoader(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_22FEDCAC4(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HardwareIdentifiersPolicy.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[24])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HardwareIdentifiersPolicy.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 12) = 0;
    *(result + 4) = 0;
    *(result + 20) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_22FEDCB9C(void *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_22FEDCC1C()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_2814913D0);
  __swift_project_value_buffer(v0, qword_2814913D0);
  return sub_22FFB12E8();
}

uint64_t sub_22FEDCCA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A28, &unk_22FFB3830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FEDCD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22FFB0A08();
  (*(*(v6 - 8) + 32))(a3, a2, v6);
  type metadata accessor for KeyOptionsPolicy.Assertion(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(type metadata accessor for KeyOptionsPolicy(0) + 20);
  sub_22FEDCCA8(a1, a3 + v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A28, &unk_22FFB3830);
  v9 = *(*(v8 - 8) + 56);

  return v9(a3 + v7, 0, 1, v8);
}

uint64_t sub_22FEDCE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22FFB0A08();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for KeyOptionsPolicy.Assertion(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(type metadata accessor for KeyOptionsPolicy(0) + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A28, &unk_22FFB3830);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t KeyOptionsPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v4 = type metadata accessor for KeyOptionsPolicy.Assertion(0);
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v6 = *(*(type metadata accessor for KeyOptionsPolicy.OptionsLoader(0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A28, &unk_22FFB3830);
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = sub_22FFB0A08();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEDD0E0, 0, 0);
}

uint64_t sub_22FEDD0E0()
{
  v85 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = type metadata accessor for KeyOptionsPolicy(0);
  sub_22FEDD998(v4 + *(v5 + 20), v3, type metadata accessor for KeyOptionsPolicy.OptionsLoader);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v80 = **(v0 + 32);
    v6 = AttestationPolicyContext.validatedAttestation.getter(&v81);
    v7 = v82;
    if (v82 >> 60 == 15)
    {
      (*(*(v0 + 104) + 56))(*(v0 + 88), 1, 1, *(v0 + 96), v6);
    }

    else
    {
      v9 = v83;
      v8 = v84;
      v10 = v81;
      sub_22FEDDADC(v83, v84, *(v0 + 88));
      sub_22FECB858(v10, v7, v9, v8);
    }
  }

  else
  {
    sub_22FEDCCA8(*(v0 + 64), *(v0 + 88));
  }

  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  v13 = *(v0 + 88);
  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    sub_22FEDD910(v13);
    type metadata accessor for KeyOptionsPolicy.Error(0);
    sub_22FEDDA00(&qword_27DAF2010, type metadata accessor for KeyOptionsPolicy.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_8:
    v15 = *(v0 + 160);
    v14 = *(v0 + 168);
    v17 = *(v0 + 144);
    v16 = *(v0 + 152);
    v19 = *(v0 + 128);
    v18 = *(v0 + 136);
    v21 = *(v0 + 112);
    v20 = *(v0 + 120);
    v22 = *(v0 + 88);
    v23 = *(v0 + 64);
    v74 = *(v0 + 56);

    v24 = *(v0 + 8);
    goto LABEL_18;
  }

  v26 = *(v0 + 48);
  v25 = *(v0 + 56);
  v27 = *(v0 + 40);
  v28 = *(v12 + 32);
  v28(*(v0 + 168), v13, v11);
  sub_22FEDD998(v27, v25, type metadata accessor for KeyOptionsPolicy.Assertion);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v30 = *(v0 + 168);
  v31 = *(v0 + 96);
  v32 = *(v0 + 56);
  if (EnumCaseMultiPayload == 1)
  {
    v33 = (v0 + 112);
    v28(*(v0 + 112), v32, *(v0 + 96));
    sub_22FEDDA00(&qword_27DAF2018, MEMORY[0x277CEE010]);
    sub_22FFB1678();
    sub_22FFB1678();
    if (*(v0 + 16) != *(v0 + 24))
    {
      v34 = *(v0 + 168);
      v35 = *(v0 + 104);
      v75 = *(v0 + 112);
      v36 = *(v0 + 96);
      type metadata accessor for KeyOptionsPolicy.Error(0);
      sub_22FEDDA00(&qword_27DAF2010, type metadata accessor for KeyOptionsPolicy.Error);
      swift_allocError();
      v38 = v37;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2020, &qword_22FFB52B0) + 48);
      v40 = *(v35 + 16);
      v40(v38, v34, v36);
      v40(v38 + v39, v75, v36);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v41 = *(v35 + 8);
      v41(v75, v36);
      v41(v34, v36);
      goto LABEL_8;
    }
  }

  else
  {
    v33 = (v0 + 160);
    v28(*(v0 + 160), v32, *(v0 + 96));
    sub_22FEDDA00(&qword_281491308, MEMORY[0x277CEE010]);
    if ((sub_22FFB1918() & 1) == 0)
    {
      v55 = *(v0 + 160);
      v56 = *(v0 + 168);
      v67 = *(v0 + 144);
      v57 = *(v0 + 128);
      v58 = *(v0 + 136);
      v59 = *(v0 + 120);
      v60 = *(v0 + 96);
      v71 = *(v0 + 104);
      v73 = v55;
      v77 = *(v0 + 152);
      v79 = *(v71 + 16);
      v79();
      (v79)(v57, v55, v60);
      v61 = v56;
      v69 = v56;
      (v79)(v59, v56, v60);
      sub_22FFB1908();
      sub_22FFB18F8();
      v62 = *(v71 + 8);
      v62(v58, v60);
      type metadata accessor for KeyOptionsPolicy.Error(0);
      sub_22FEDDA00(&qword_27DAF2010, type metadata accessor for KeyOptionsPolicy.Error);
      swift_allocError();
      v64 = v63;
      v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2028, &qword_22FFB52B8) + 48);
      (v79)(v64, v61, v60);
      (v79)(v64 + v65, v77, v60);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v62(v77, v60);
      v62(v73, v60);
      v62(v69, v60);
      goto LABEL_8;
    }
  }

  v78 = *(*(v0 + 104) + 8);
  v78(*v33, *(v0 + 96));
  if (qword_2814901B0 != -1)
  {
    swift_once();
  }

  v42 = sub_22FFB12F8();
  __swift_project_value_buffer(v42, qword_2814913D0);
  v43 = sub_22FFB12D8();
  v44 = sub_22FFB1848();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_22FE99000, v43, v44, "AttestationBundle passed KeyOptionsPolicy: attested key has expected flags set", v45, 2u);
    MEMORY[0x23190EFF0](v45, -1, -1);
  }

  v47 = *(v0 + 160);
  v46 = *(v0 + 168);
  v49 = *(v0 + 144);
  v48 = *(v0 + 152);
  v51 = *(v0 + 128);
  v50 = *(v0 + 136);
  v66 = *(v0 + 120);
  v68 = *(v0 + 112);
  v53 = *(v0 + 96);
  v52 = *(v0 + 104);
  v70 = *(v0 + 88);
  v72 = *(v0 + 64);
  v76 = *(v0 + 56);

  v78(v46, v53);

  v24 = *(v0 + 8);
LABEL_18:

  return v24();
}

uint64_t sub_22FEDD910(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A28, &unk_22FFB3830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FEDD998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FEDDA00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FEDDA48(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FEAA0D4;

  return KeyOptionsPolicy.evaluate(bundle:context:)(v4, a2);
}

uint64_t sub_22FEDDADC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = a1;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    result = sub_22FEDDF9C(v5, a3);
    goto LABEL_12;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    goto LABEL_7;
  }

LABEL_8:
  if (aks_attest_context_get_uint64())
  {
    v8 = 1;
  }

  else
  {
    sub_22FFB09F8();
    v8 = 0;
  }

  v9 = sub_22FFB0A08();
  result = (*(*(v9 - 8) + 56))(a3, v8, 1, v9);
LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FEDDC9C()
{
  result = type metadata accessor for KeyOptionsPolicy.Assertion(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for KeyOptionsPolicy.OptionsLoader(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22FEDDD20()
{
  sub_22FEDDDB4(319, &qword_27DAF2040);
  if (v0 <= 0x3F)
  {
    sub_22FEDDDB4(319, &qword_27DAF2048);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22FEDDDB4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_22FFB0A08();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_22FEDDE44()
{
  sub_22FEDDE9C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_22FEDDE9C()
{
  if (!qword_281491300)
  {
    sub_22FFB0A08();
    v0 = sub_22FFB1888();
    if (!v1)
    {
      atomic_store(v0, &qword_281491300);
    }
  }
}

void sub_22FEDDEF4()
{
  sub_22FEDDF54();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_22FEDDF54()
{
  if (!qword_281491310)
  {
    v0 = sub_22FFB0A08();
    if (!v1)
    {
      atomic_store(v0, &qword_281491310);
    }
  }
}

uint64_t sub_22FEDDF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = sub_22FFB0588();
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = sub_22FFB05B8();
  if (__OFSUB__(a1, v6))
  {
    __break(1u);
LABEL_9:
    sub_22FFB05A8();
LABEL_10:
    __break(1u);
  }

  v7 = a1 - v6 + v5;
  sub_22FFB05A8();
  if (!v7)
  {
    goto LABEL_10;
  }

  if (aks_attest_context_get_uint64())
  {
    v8 = 1;
  }

  else
  {
    sub_22FFB09F8();
    v8 = 0;
  }

  v9 = sub_22FFB0A08();
  result = (*(*(v9 - 8) + 56))(a2, v8, 1, v9);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t LocalBootPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_22FFB13F8();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = sub_22FFB13B8();
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v8 = *(v7 + 64) + 15;
  v2[19] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v10 = type metadata accessor for Proto_LocalPolicy(0);
  v2[22] = v10;
  v11 = *(v10 - 8);
  v2[23] = v11;
  v12 = *(v11 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FEDE2B0, 0, 0);
}

uint64_t sub_22FEDE2B0()
{
  v83 = v0;
  v82 = *MEMORY[0x277D85DE8];
  v77 = **(v0 + 104);
  AttestationPolicyContext.validatedAttestation.getter(&v78);
  v1 = v79;
  if (v79 >> 60 == 15)
  {
    sub_22FEDEA98();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();
LABEL_3:
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    v7 = *(v0 + 152);
    v8 = *(v0 + 128);

    v9 = *(v0 + 8);
    v10 = *MEMORY[0x277D85DE8];
    goto LABEL_27;
  }

  v11 = v78;
  v13 = v80;
  v12 = v81;
  *(v0 + 72) = 0;
  *(v0 + 64) = 0;
  v14 = swift_task_alloc();
  *(v14 + 16) = v0 + 64;
  *(v14 + 24) = v0 + 72;
  sub_22FED55F8(v13, v12, sub_22FED545C);

  if (v78 == 3)
  {
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
    v15 = swift_task_alloc();
    v15[2] = v0 + 80;
    v15[3] = v0 + 88;
    v15[4] = v11;
    v15[5] = v1;
    v15[6] = v13;
    v15[7] = v12;
    sub_22FED55F8(v13, v12, sub_22FEDEAEC);

    if ((~v80 & 0x3000000000000000) == 0)
    {
      sub_22FEDEA98();
      swift_allocError();
      *v16 = 0;
      swift_willThrow();
LABEL_23:
      sub_22FECB858(v11, v1, v13, v12);
      goto LABEL_3;
    }

    v73 = v11;
    v17 = *(v0 + 176);
    v18 = *(v0 + 184);
    v19 = *(v0 + 168);
    v21 = v80 & 0xDFFFFFFFFFFFFFFFLL;
    v75 = v79;
    v76 = v80;
    v74 = v78;
    if ((v80 & 0x2000000000000000) != 0)
    {
      v22 = v79;
    }

    else
    {
      v22 = v78;
    }

    if ((v80 & 0x2000000000000000) == 0)
    {
      v21 = v79;
    }

    v68 = v21;
    v70 = v22;
    v20 = *(v0 + 96);
    v23 = *(v20 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
    v24 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
    swift_beginAccess();
    v66 = v23;
    sub_22FEDEB10(v23 + v24, v19);
    v25 = *(v18 + 48);
    v26 = v25(v19, 1, v17);
    v27 = *(v0 + 200);
    if (v26 == 1)
    {
      v29 = *(v0 + 168);
      v28 = *(v0 + 176);
      *v27 = xmmword_22FFB33B0;
      *(v27 + 16) = 0;
      *(v27 + 24) = 1;
      v30 = v27 + *(v28 + 24);
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      if (v25(v29, 1, v28) != 1)
      {
        sub_22FEDEB80(*(v0 + 168));
      }
    }

    else
    {
      sub_22FEDEC44(*(v0 + 168), v27);
    }

    v31 = *(v0 + 200);
    sub_22FF1E7D4();
    v33 = v32;
    v72 = v34;
    sub_22FEDEBE8(*(v0 + 200));
    v11 = v73;
    if ((sub_22FECAAF4(v33, v72, v70, v68) & 1) == 0)
    {
      sub_22FEDEA98();
      swift_allocError();
      *v42 = 2;
      swift_willThrow();
      sub_22FEA55AC(v33, v72);
      sub_22FED5840(v74, v75, v76);
      goto LABEL_23;
    }

    v71 = v33;
    v35 = *(v0 + 176);
    v36 = *(v0 + 160);
    sub_22FEDEB10(v66 + v24, v36);
    v37 = v25(v36, 1, v35);
    v38 = *(v0 + 192);
    if (v37 == 1)
    {
      v39 = *(v0 + 176);
      v40 = *(v0 + 160);
      *v38 = xmmword_22FFB33B0;
      *(v38 + 16) = 0;
      *(v38 + 24) = 1;
      v41 = v38 + *(v39 + 24);
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      if (v25(v40, 1, v39) != 1)
      {
        sub_22FEDEB80(*(v0 + 160));
      }
    }

    else
    {
      sub_22FEDEC44(*(v0 + 160), v38);
    }

    v43 = *(v0 + 192);
    sub_22FF1EBDC();
    v44 = *(v0 + 128);
    v62 = *(v0 + 152);
    v63 = *(v0 + 120);
    v64 = v45;
    v65 = *(v0 + 112);
    v69 = v46;
    sub_22FEDEBE8(*(v0 + 192));
    swift_beginAccess();
    v47 = *(v66 + 32);
    v48 = *(v66 + 40);
    sub_22FEA5608(v47, v48);
    sub_22FED57E8();
    sub_22FFB1388();
    sub_22FEA5608(v47, v48);
    sub_22FED5478(v47, v48);
    sub_22FEA55AC(v47, v48);
    sub_22FFB1368();
    sub_22FEA55AC(v47, v48);
    (*(v63 + 8))(v44, v65);
    v49 = sub_22FECA81C(v62, v64, v69);
    v51 = *(v0 + 144);
    v50 = *(v0 + 152);
    v52 = *(v0 + 136);
    if ((v49 & 1) == 0)
    {
      v67 = *(v0 + 152);
      sub_22FEDEA98();
      swift_allocError();
      *v61 = 2;
      swift_willThrow();
      sub_22FEA55AC(v64, v69);
      sub_22FEA55AC(v71, v72);
      sub_22FECB858(v73, v1, v13, v12);
      sub_22FED5840(v74, v75, v76);
      (*(v51 + 8))(v67, v52);
      goto LABEL_3;
    }

    (*(v51 + 8))(*(v0 + 152), *(v0 + 136));
    sub_22FEA55AC(v64, v69);
    sub_22FEA55AC(v71, v72);
    sub_22FED5840(v74, v75, v76);
  }

  sub_22FECB858(v11, v1, v13, v12);
  v54 = *(v0 + 192);
  v53 = *(v0 + 200);
  v56 = *(v0 + 160);
  v55 = *(v0 + 168);
  v57 = *(v0 + 152);
  v58 = *(v0 + 128);

  v9 = *(v0 + 8);
  v59 = *MEMORY[0x277D85DE8];
LABEL_27:

  return v9();
}

uint64_t sub_22FEDE974(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FEAA0D4;

  return LocalBootPolicy.evaluate(bundle:context:)(a1, a2);
}

uint64_t LocalBootPolicy.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

unint64_t sub_22FEDEA98()
{
  result = qword_27DAF2058;
  if (!qword_27DAF2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2058);
  }

  return result;
}

_BYTE *sub_22FEDEAEC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_22FF54258(*(v1 + 16), *(v1 + 24), *(v1 + 48), *(v1 + 56), a1);
}

uint64_t sub_22FEDEB10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FEDEB80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FEDEBE8(uint64_t a1)
{
  v2 = type metadata accessor for Proto_LocalPolicy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FEDEC44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_LocalPolicy(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FEDECAC()
{
  result = qword_27DAF2060;
  if (!qword_27DAF2060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2060);
  }

  return result;
}

uint64_t static PolicyBuilder.buildBlock<each A>(_:)@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a1;
  v7 = 8 * a2;
  v40 = a5;
  v41 = a4;
  if (a2 == 1)
  {
    v8 = a3;
    TupleTypeMetadata = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v11 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v12 = 0;
      v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v11[-v13] < 0x20)
      {
        goto LABEL_9;
      }

      v12 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v14 = (v13 + 16);
      v15 = v11 + 16;
      v16 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v17 = *v14;
        *(v15 - 1) = *(v14 - 1);
        *v15 = v17;
        v14 += 2;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v12 != a2)
      {
LABEL_9:
        v18 = a2 - v12;
        v19 = 8 * v12;
        v20 = &v11[8 * v12];
        v21 = (v13 + v19);
        do
        {
          v22 = *v21++;
          *v20 = v22;
          v20 += 8;
          --v18;
        }

        while (v18);
      }
    }

    v8 = v10;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v23 = *(*(TupleTypeMetadata - 8) + 64);
  v24 = MEMORY[0x28223BE20](TupleTypeMetadata);
  v26 = v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[1] = v39;
  v27 = MEMORY[0x28223BE20](v24);
  v28 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v29 = (v8 & 0xFFFFFFFFFFFFFFFELL);
    v30 = (v27 + 32);
    v31 = (v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = a2;
    do
    {
      if (a2 == 1)
      {
        v33 = 0;
      }

      else
      {
        v33 = *v30;
      }

      v35 = *v29++;
      v34 = v35;
      v36 = &v26[v33];
      v37 = *v6++;
      (*(*(v34 - 8) + 16))(&v26[v33], v37);
      *v31++ = v36;
      v30 += 4;
      --v32;
    }

    while (v32);
  }

  return PolicyBuilder.TuplePolicy.init(policies:)(v28, a2, v8, v40);
}

uint64_t static PolicyBuilder.buildOptional<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22FFB1888();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, a1, v4);
  return (*(v5 + 32))(a2, v8, v4);
}

uint64_t static PolicyBuilder.buildExpression(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2068, &qword_22FFB5470);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t PolicyBuilder.TuplePolicy.init(policies:)@<X0>(uint64_t TupleTypeMetadata@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = TupleTypeMetadata;
  v40 = a4;
  if (a2 == 1)
  {
    v7 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v10 = 0;
      v11 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v10 != a2)
      {
LABEL_9:
        v16 = a2 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v21 = *(v7 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for PolicyBuilder.TuplePolicy();
  v39 = &v37;
  v25 = *(v38 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v38);
  v28 = &v37 - v27;
  if (a2)
  {
    v29 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v30 = (v7 + 32);
    v31 = a2;
    do
    {
      if (a2 == 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = *v30;
      }

      v34 = *v29++;
      v33 = v34;
      v35 = *v6++;
      (*(*(v33 - 8) + 32))(&v24[v32], v35);
      v30 += 4;
      --v31;
    }

    while (v31);
  }

  (*(v21 + 16))(v28, v24, v7);
  (*(v25 + 32))(v40, v28, v38);
  return (*(v21 + 8))(v24, v7);
}

uint64_t PolicyBuilder.OptionalPolicy.init(policy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22FFB1888();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t static PolicyBuilder.buildEither<A, B>(first:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  type metadata accessor for PolicyBuilder.ConditionalPolicy();
  return swift_storeEnumTagMultiPayload();
}

uint64_t static PolicyBuilder.buildEither<A, B>(second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1);
  type metadata accessor for PolicyBuilder.ConditionalPolicy();
  return swift_storeEnumTagMultiPayload();
}

uint64_t PolicyBuilder.PredicatePolicy.init(predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2068, &qword_22FFB5470);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t PolicyBuilder.TuplePolicy.policies.getter@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = TupleTypeMetadata;
  v6 = *(TupleTypeMetadata + 16);
  if (v6 == 1)
  {
    v7 = *(*(TupleTypeMetadata + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v6)
    {
      v10 = 0;
      v11 = *(v4 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v6 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v6 != v10)
      {
LABEL_9:
        v16 = v6 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v21 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v24 + 16))(v23, v3, v7);
  if (v6)
  {
    v26 = (*(v4 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v27 = (v7 + 32);
    v28 = v6;
    do
    {
      if (v6 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = *v27;
      }

      v31 = *v26++;
      v30 = v31;
      v32 = *a2++;
      result = (*(*(v30 - 8) + 32))(v32, &v23[v29]);
      v27 += 4;
      --v28;
    }

    while (v28);
  }

  return result;
}

uint64_t PolicyBuilder.TuplePolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = *(a3 + 16);
  v4[6] = v6;
  if (v6 == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v8 = 16;
  }

  else
  {
    v8 = (8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0;
    v9 = swift_task_alloc();
    if (v6)
    {
      v10 = 0;
      v11 = *(a3 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v6 < 4)
      {
        goto LABEL_9;
      }

      if (v9 - v11 < 0x20)
      {
        goto LABEL_9;
      }

      v10 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = (v9 + 16);
      v14 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v6 != v10)
      {
LABEL_9:
        v16 = v6 - v10;
        v17 = 8 * v10;
        v18 = (v9 + 8 * v10);
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18++ = v20;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v4[7] = v8;
  v4[8] = TupleTypeMetadata;
  v21 = *(TupleTypeMetadata - 8);
  v4[9] = v21;
  v22 = *(v21 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEDFA24, 0, 0);
}

uint64_t sub_22FEDFA24()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = swift_task_alloc();
  v0[11] = v3;
  if (v2)
  {
    v4 = 0;
    v5 = 32;
    do
    {
      v7 = v0[6];
      if (v7 == 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = *(v0[8] + v5);
      }

      v3[v4++] = v0[10] + v6;
      v5 += 16;
    }

    while (v4 != v7);
    v8 = v0[4];
    PolicyBuilder.TuplePolicy.policies.getter(v8, v3);
    v9 = *(v8 + 24);
    v0[12] = v9;
    v10 = *(v8 + 32);
    v9 &= ~1uLL;
    v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
    v0[13] = v10;
    v0[14] = 0;
    v12 = v0[6];
    v13 = *v9;
    v0[15] = *v9;
    v14 = *v11;
    if (v12 != 1)
    {
      v15 = *(v0[8] + 32);
    }

    v16 = v0[10];
    v17 = *(v13 - 8);
    v18 = v17;
    v0[16] = v17;
    v19 = *(v17 + 64) + 15;
    v0[17] = swift_task_alloc();
    (*(v18 + 16))();
    v20 = *(v14 + 8);
    v29 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    v0[18] = v22;
    *v22 = v0;
    v22[1] = sub_22FEDFCE0;
    v24 = v0[2];
    v23 = v0[3];

    return v29(v24, v23, v13, v14);
  }

  else
  {
    v26 = v0[5];
    PolicyBuilder.TuplePolicy.policies.getter(v0[4], v3);
    v27 = v0[11];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_22FEDFCE0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);
  if (v0)
  {
    v5 = sub_22FEE00AC;
  }

  else
  {

    v5 = sub_22FEDFE54;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FEDFE54()
{
  v1 = v0[6];
  v2 = v0[14] + 1;
  if (v2 == v1)
  {
    v3 = v0[11];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[14] = v2;
    v6 = v0[13] & 0xFFFFFFFFFFFFFFFELL;
    v7 = *((v0[12] & 0xFFFFFFFFFFFFFFFELL) + 8 * v2);
    v0[15] = v7;
    v8 = *(v6 + 8 * v2);
    if (v1 != 1)
    {
      v9 = *(v0[8] + 16 * v2 + 32);
    }

    v10 = v0[10];
    v11 = *(v7 - 8);
    v12 = v11;
    v0[16] = v11;
    v13 = *(v11 + 64) + 15;
    v0[17] = swift_task_alloc();
    (*(v12 + 16))();
    v14 = *(v8 + 8);
    v19 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    v0[18] = v16;
    *v16 = v0;
    v16[1] = sub_22FEDFCE0;
    v18 = v0[2];
    v17 = v0[3];

    return v19(v18, v17, v7, v8);
  }
}

uint64_t sub_22FEE00AC()
{
  v1 = v0[17];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];

  (*(v5 + 8))(v2, v4);

  v6 = v0[1];
  v7 = v0[19];

  return v6();
}

uint64_t sub_22FEE0148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FEAA538;

  return PolicyBuilder.TuplePolicy.evaluate(bundle:context:)(a1, a2, a3);
}

uint64_t sub_22FEE0234()
{
  if (**(v0 + 16) != 1)
  {
    sub_22FEE02E0();
    swift_allocError();
    *v2 = 0;
    v2[1] = 0;
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_22FEE02E0()
{
  result = qword_27DAF2070;
  if (!qword_27DAF2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2070);
  }

  return result;
}

uint64_t PolicyBuilder.PredicatePolicy.predicate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2068, &qword_22FFB5470);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_22FEE03E8()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2068, &qword_22FFB5470);
  if ((sub_22FFB0978() & 1) == 0)
  {
    v3 = *(v0 + 16);
    sub_22FEE02E0();
    swift_allocError();
    v5 = v4;
    *v4 = sub_22FFB0968();
    v5[1] = v6;
    swift_willThrow();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t PolicyBuilder.OptionalPolicy.policy.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_22FFB1888();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t PolicyBuilder.OptionalPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a3 + 16);
  v4[6] = v5;
  v6 = sub_22FFB1888();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = *(v5 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEE0690, 0, 0);
}

uint64_t sub_22FEE0690()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[5];
  v3 = v0[6];
  v5 = sub_22FFB1888();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v6 = v0[11];
    (*(v0[8] + 8))(v0[9], v0[7]);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[4];
    (*(v0[10] + 32))(v0[11], v0[9], v0[6]);
    v10 = *(v9 + 24);
    v17 = (*(v10 + 8) + **(v10 + 8));
    v11 = *(*(v10 + 8) + 4);
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_22FEE08B0;
    v13 = v0[11];
    v14 = v0[6];
    v16 = v0[2];
    v15 = v0[3];

    return v17(v16, v15, v14, v10);
  }
}

uint64_t sub_22FEE08B0()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_22FEE0A50;
  }

  else
  {
    v3 = sub_22FEE09C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FEE09C4()
{
  v1 = v0[9];
  (*(v0[10] + 8))(v0[11], v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_22FEE0A50()
{
  v1 = v0[9];
  (*(v0[10] + 8))(v0[11], v0[6]);

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_22FEE0ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FEAA538;

  return PolicyBuilder.OptionalPolicy.evaluate(bundle:context:)(a1, a2, a3);
}

uint64_t PolicyBuilder.ConditionalPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = *(a3 + 24);
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  v9 = *(a3 + 16);
  v4[9] = v9;
  v10 = *(v9 - 8);
  v4[10] = v10;
  v11 = *(v10 + 64) + 15;
  v4[11] = swift_task_alloc();
  v12 = *(a3 - 8);
  v4[12] = v12;
  v13 = *(v12 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEE0CF4, 0, 0);
}

uint64_t sub_22FEE0CF4()
{
  (*(v0[12] + 16))(v0[13], v0[5], v0[4]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = v0[4];
    (*(v0[7] + 32))(v0[8], v0[13], v0[6]);
    v3 = *(v8 + 40);
    v15 = (*(v3 + 8) + **(v3 + 8));
    v9 = *(*(v3 + 8) + 4);
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = sub_22FEE1150;
    v11 = v0[8];
    v7 = v0[6];
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      return sub_22FFB1AA8();
    }

    v2 = v0[4];
    (*(v0[10] + 32))(v0[11], v0[13], v0[9]);
    v3 = *(v2 + 32);
    v15 = (*(v3 + 8) + **(v3 + 8));
    v4 = *(*(v3 + 8) + 4);
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_22FEE0FA0;
    v6 = v0[11];
    v7 = v0[9];
  }

  v13 = v0[2];
  v12 = v0[3];

  return v15(v13, v12, v7, v3);
}

uint64_t sub_22FEE0FA0()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_22FEE1304;
  }

  else
  {
    v3 = sub_22FEE10B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FEE10B4()
{
  v1 = v0[13];
  v2 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FEE1150()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_22FEE13A0;
  }

  else
  {
    v3 = sub_22FEE1264;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FEE1264()
{
  v1 = v0[13];
  v2 = v0[11];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FEE1304()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FEE13A0()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[11];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FEE1440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FEAA0D4;

  return PolicyBuilder.ConditionalPolicy.evaluate(bundle:context:)(a1, a2, a3);
}

uint64_t _s16CloudAttestation13PolicyBuilderV5ErrorO2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_22FFB1BC8();
}

uint64_t sub_22FEE157C(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *(*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL);
    result = swift_checkMetadataState();
    if (v4 > 0x3F)
    {
      return result;
    }

LABEL_13:
    v20[7] = 0;
    v21 = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  MEMORY[0x28223BE20](a1);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v5)
  {
    v8 = 0;
    v9 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (v5 < 4)
    {
      goto LABEL_10;
    }

    if (&v7[-v9] < 0x20)
    {
      goto LABEL_10;
    }

    v8 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = (v9 + 16);
    v11 = v7 + 16;
    v12 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v13 = *v10;
      *(v11 - 1) = *(v10 - 1);
      *v11 = v13;
      v10 += 2;
      v11 += 2;
      v12 -= 4;
    }

    while (v12);
    if (v5 != v8)
    {
LABEL_10:
      v14 = v5 - v8;
      v15 = 8 * v8;
      v16 = &v7[8 * v8];
      v17 = (v9 + v15);
      do
      {
        v18 = *v17++;
        *v16++ = v18;
        --v14;
      }

      while (v14);
    }
  }

  result = swift_getTupleTypeMetadata();
  if (v19 <= 0x3F)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PolicyBuilder.BooleanPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t type metadata accessor for PolicyBuilder.PredicatePolicy()
{
  result = qword_27DAF2078;
  if (!qword_27DAF2078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22FEE181C()
{
  sub_22FEE1888();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22FEE1888()
{
  if (!qword_27DAF2088)
  {
    v0 = sub_22FFB0988();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAF2088);
    }
  }
}

uint64_t sub_22FEE18E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_22FFB1888();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FEE1968(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22FEE19E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_22FEE1B0C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_22FEE1CD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FEE1D24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22FEE1D78(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_22FEE1D90(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FEE1DD4()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05A38);
  __swift_project_value_buffer(v0, qword_27DB05A38);
  return sub_22FFB12E8();
}

uint64_t RoutingHintPolicy.init(_:required:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 9) = a2;
  *(a3 + 10) = 0;
  return result;
}

uint64_t RoutingHintPolicy.init(required:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 9) = result;
  *(a2 + 10) = 0;
  return result;
}

uint64_t RoutingHintPolicy.init(_:required:fallback:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(result + 8);
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 9) = a2;
  *(a4 + 10) = a3;
  return result;
}

uint64_t RoutingHintPolicy.init(required:fallback:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 9) = result;
  *(a3 + 10) = a2;
  return result;
}

uint64_t RoutingHintPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v3 + 80) = a2;
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v2 + 8);
  *(v3 + 97) = *(v2 + 9);
  *(v3 + 98) = *(v2 + 10);

  return MEMORY[0x2822009F8](sub_22FEE1F3C, 0, 0);
}

uint64_t sub_22FEE1F3C()
{
  v35 = v0;
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 96);
    goto LABEL_5;
  }

  v34 = **(v0 + 80);
  AttestationPolicyContext.validatedDarwinInit.getter(&v32);
  v1 = v32;
  if (v32)
  {
    v2 = v33;
LABEL_5:
    v32 = v1;
    v33 = v2;
    v3 = DarwinInit.secureConfigRoutingHint.getter();
    if (v4)
    {
      v5 = v3;
      v6 = v4;

LABEL_7:
      if (qword_28148FD58 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 80);
      v8 = xmmword_28148FD60;
      v9 = qword_28148FD70;
      v10 = unk_28148FD78;
      *(v0 + 40) = MEMORY[0x277D837D0];
      *(v0 + 16) = v5;
      *(v0 + 24) = v6;
      sub_22FED6328(v0 + 16, v0 + 48);

      sub_22FECBD14(v0 + 48, v8, *(&v8 + 1), v9, v10);
      sub_22FED62C0(v0 + 16);
      goto LABEL_40;
    }

    if (*(v0 + 98))
    {
      if (qword_27DAF1290 != -1)
      {
        swift_once();
      }

      v11 = sub_22FFB12F8();
      __swift_project_value_buffer(v11, qword_27DB05A38);
      v12 = sub_22FFB12D8();
      v13 = sub_22FFB1818();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_22FE99000, v12, v13, "Reading fallback routing hint from Preferences", v14, 2u);
        MEMORY[0x23190EFF0](v14, -1, -1);
      }

      v32 = v1;
      v33 = v2;
      v5 = DarwinInit.cfPrefsRoutingHint.getter();
      v6 = v15;

      if (v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    if (*(v0 + 97) == 1)
    {
      if (qword_27DAF1290 != -1)
      {
        swift_once();
      }

      v16 = sub_22FFB12F8();
      __swift_project_value_buffer(v16, qword_27DB05A38);
      v17 = sub_22FFB12D8();
      v18 = sub_22FFB1838();
      v19 = 1;
      if (!os_log_type_enabled(v17, v18))
      {
        goto LABEL_29;
      }

      v20 = "Required routing hint missing from darwin-init";
LABEL_28:
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22FE99000, v17, v18, v20, v22, 2u);
      MEMORY[0x23190EFF0](v22, -1, -1);
LABEL_29:

      sub_22FEE26E4();
      swift_allocError();
      *v23 = v19;
      swift_willThrow();
      v24 = *(v0 + 8);
      goto LABEL_41;
    }

    if (qword_27DAF1290 != -1)
    {
      swift_once();
    }

    v25 = sub_22FFB12F8();
    __swift_project_value_buffer(v25, qword_27DB05A38);
    v26 = sub_22FFB12D8();
    v27 = sub_22FFB1838();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "Optional routing hint missing from darwin-init";
LABEL_38:
      _os_log_impl(&dword_22FE99000, v26, v27, v29, v28, 2u);
      MEMORY[0x23190EFF0](v28, -1, -1);
      goto LABEL_39;
    }

    goto LABEL_39;
  }

  if (*(v0 + 97) == 1)
  {
    if (qword_27DAF1290 != -1)
    {
      swift_once();
    }

    v21 = sub_22FFB12F8();
    __swift_project_value_buffer(v21, qword_27DB05A38);
    v17 = sub_22FFB12D8();
    v18 = sub_22FFB1838();
    v19 = 0;
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_29;
    }

    v20 = "Required validated darwin-init unavailable";
    goto LABEL_28;
  }

  if (qword_27DAF1290 != -1)
  {
    swift_once();
  }

  v30 = sub_22FFB12F8();
  __swift_project_value_buffer(v30, qword_27DB05A38);
  v26 = sub_22FFB12D8();
  v27 = sub_22FFB1838();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Optional validated darwin-init unavailable";
    goto LABEL_38;
  }

LABEL_39:

LABEL_40:
  v24 = *(v0 + 8);
LABEL_41:

  return v24();
}

uint64_t sub_22FEE2434(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FEAA0D4;

  return RoutingHintPolicy.evaluate(bundle:context:)(v4, a2);
}

void sub_22FEE24C8()
{
  *&xmmword_28148FD60 = &type metadata for RoutingHintPolicy;
  *(&xmmword_28148FD60 + 1) = &protocol witness table for RoutingHintPolicy;
  qword_28148FD70 = 0xD000000000000014;
  unk_28148FD78 = 0x800000022FFC9F10;
}

uint64_t static RoutingHintPolicy.validatedRoutingHintKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28148FD58 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_28148FD70;
  v2 = unk_28148FD78;
  *a1 = xmmword_28148FD60;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

uint64_t sub_22FEE2580()
{
  v1 = *v0;
  if (qword_28148FD58 == -1)
  {
    if (!*(v1 + 16))
    {
      return 0;
    }
  }

  else
  {
    swift_once();
    if (!*(v1 + 16))
    {
      return 0;
    }
  }

  v2 = sub_22FFA62AC(xmmword_28148FD60, *(&xmmword_28148FD60 + 1), qword_28148FD70, unk_28148FD78);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_22FEBF2A4(*(v1 + 56) + 32 * v2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t RoutingHintPolicy.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

unint64_t sub_22FEE26E4()
{
  result = qword_27DAF2090;
  if (!qword_27DAF2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2090);
  }

  return result;
}

unint64_t sub_22FEE273C()
{
  result = qword_27DAF2098;
  if (!qword_27DAF2098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2098);
  }

  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_22FEE27A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 11))
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

uint64_t sub_22FEE2800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_22FEE2878(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FEE28C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_22FEE2920(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t SecureConfigPolicy.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SEP.SealedHash(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_22FEE29BC()
{
  v0 = sub_22FFB0958();
  __swift_allocate_value_buffer(v0, qword_28148FBD8);
  v1 = __swift_project_value_buffer(v0, qword_28148FBD8);
  if (qword_28148FA40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814913A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static SecureConfigPolicy.slot.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28148FBD0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB0958();
  v3 = __swift_project_value_buffer(v2, qword_28148FBD8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22FEE2B2C()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_2814913B8);
  __swift_project_value_buffer(v0, qword_2814913B8);
  return sub_22FFB12E8();
}

uint64_t SecureConfigPolicy.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22FED8260(a1, a2, type metadata accessor for SEP.SealedHash);
  v3 = type metadata accessor for SEP.SealedHash(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t SecureConfigPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for SEP.SealedHash.Value(0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v5 = type metadata accessor for SEP.SealedHash(0);
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = *(*(type metadata accessor for SecureConfigPolicy.SealedHashLoader(0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F08, &qword_22FFB4B00) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FEE2DD8, 0, 0);
}

uint64_t sub_22FEE2DD8()
{
  v78 = v0;
  v77 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_22FEE3930(*(v0 + 32), v1, type metadata accessor for SecureConfigPolicy.SealedHashLoader);
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v72 = **(v0 + 24);
    v5 = AttestationPolicyContext.validatedAttestation.getter(&v73);
    v6 = v74;
    if (v74 >> 60 == 15)
    {
      (*(*(v0 + 64) + 56))(*(v0 + 96), 1, 1, *(v0 + 56), v5);
    }

    else
    {
      v10 = (v0 + 112);
      v71 = v73;
      v11 = v75;
      v12 = v76;
      if (qword_28148FBD0 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 96);
      v14 = sub_22FFB0958();
      v15 = __swift_project_value_buffer(v14, qword_28148FBD8);
      *v10 = 0u;
      *(v0 + 128) = 0u;
      *(v0 + 144) = 0u;
      *(v0 + 160) = 0u;
      *(v0 + 176) = 0u;
      *(v0 + 190) = 0;
      v16 = swift_task_alloc();
      *(v16 + 16) = v15;
      *(v16 + 24) = v10;
      sub_22FED55F8(v11, v12, sub_22FED86EC);
      sub_22FECB858(v71, v6, v11, v12);
    }
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    sub_22FED8260(*(v0 + 80), v7, type metadata accessor for SEP.SealedHash);
    (*(v9 + 56))(v7, 0, 1, v8);
  }

  v17 = *(v0 + 16);
  sub_22FEE374C(*(v0 + 96), *(v0 + 104));
  if (sub_22FFA7ED0())
  {
  }

  else if (v4(*(v0 + 104), 1, *(v0 + 56)) == 1)
  {
    if (qword_28148FBC8 != -1)
    {
      swift_once();
    }

    v18 = sub_22FFB12F8();
    __swift_project_value_buffer(v18, qword_2814913B8);
    v19 = sub_22FFB12D8();
    v20 = sub_22FFB1838();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22FE99000, v19, v20, "Device has no secure-config loaded", v21, 2u);
      MEMORY[0x23190EFF0](v21, -1, -1);
    }

    goto LABEL_35;
  }

  v22 = *(v0 + 16);
  v23 = sub_22FFA7ED0();
  if (!v23)
  {
    type metadata accessor for SecureConfigPolicy.Error(0);
    sub_22FEE38E8(&qword_27DAF20A0, type metadata accessor for SecureConfigPolicy.Error);
    swift_allocError();
    goto LABEL_20;
  }

  v24 = v23;
  v25 = *(v0 + 88);
  v26 = *(v0 + 56);
  sub_22FED80E0(*(v0 + 104), v25);
  v27 = v4(v25, 1, v26);
  v28 = *(v0 + 88);
  if (v27 != 1)
  {
    v29 = *(v0 + 72);
    sub_22FED8260(*(v0 + 88), v29, type metadata accessor for SEP.SealedHash);
    if ((*v29 & 4) != 0)
    {
      if (qword_28148FBC8 != -1)
      {
        swift_once();
      }

      v30 = sub_22FFB12F8();
      __swift_project_value_buffer(v30, qword_2814913B8);
      v31 = sub_22FFB12D8();
      v32 = sub_22FFB1838();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_22FE99000, v31, v32, "SecureConfig sealed hash is unexpectedly locked", v33, 2u);
        MEMORY[0x23190EFF0](v33, -1, -1);
      }
    }

    v34 = *(v0 + 16);
    v35 = sub_22FFA874C();
    if (!v35)
    {
      v37 = sub_22FFB13F8();
      v36 = sub_22FEE38E8(&qword_28148F188, MEMORY[0x277CC5550]);
      v35 = v37;
    }

    sub_22FFA8BA4(v35, v36, v24, *(v0 + 40));
    v38 = *(v0 + 72);
    v39 = *(v0 + 48);
    v40 = *(v0 + 56);
    v41 = *(v0 + 40);

    sub_22FED8260(v41, v39, type metadata accessor for SEP.SealedHash.Value);
    v42 = *(v40 + 20);
    if ((_s16CloudAttestation3SEPO10SealedHashV5ValueO2eeoiySbAG_AGtFZ_0(v39, v38 + v42) & 1) == 0)
    {
      v58 = *(v0 + 72);
      v59 = *(v0 + 48);
      type metadata accessor for SecureConfigPolicy.Error(0);
      sub_22FEE38E8(&qword_27DAF20A0, type metadata accessor for SecureConfigPolicy.Error);
      swift_allocError();
      v61 = v60;
      v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F20, &qword_22FFB5830) + 48);
      sub_22FEE3930(v59, v61, type metadata accessor for SEP.SealedHash.Value);
      sub_22FEE3930(v38 + v42, v61 + v62, type metadata accessor for SEP.SealedHash.Value);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_22FED82C8(v59, type metadata accessor for SEP.SealedHash.Value);
      sub_22FED82C8(v58, type metadata accessor for SEP.SealedHash);
      goto LABEL_37;
    }

    if (qword_28148FBC8 != -1)
    {
      swift_once();
    }

    v43 = sub_22FFB12F8();
    __swift_project_value_buffer(v43, qword_2814913B8);
    v44 = sub_22FFB12D8();
    v45 = sub_22FFB1848();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 72);
    v48 = *(v0 + 48);
    if (v46)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_22FE99000, v44, v45, "AttestationBundle passed SecureConfigPolicy: reported secure configs match SEP attestation", v49, 2u);
      MEMORY[0x23190EFF0](v49, -1, -1);
    }

    sub_22FED82C8(v48, type metadata accessor for SEP.SealedHash.Value);
    sub_22FED82C8(v47, type metadata accessor for SEP.SealedHash);
LABEL_35:
    v50 = *(v0 + 96);
    v52 = *(v0 + 80);
    v51 = *(v0 + 88);
    v53 = *(v0 + 72);
    v55 = *(v0 + 40);
    v54 = *(v0 + 48);
    sub_22FEE37BC(*(v0 + 104));

    v56 = *(v0 + 8);
    v57 = *MEMORY[0x277D85DE8];
    goto LABEL_38;
  }

  sub_22FEE37BC(v28);
  type metadata accessor for SecureConfigPolicy.Error(0);
  sub_22FEE38E8(&qword_27DAF20A0, type metadata accessor for SecureConfigPolicy.Error);
  swift_allocError();
LABEL_20:
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
LABEL_37:
  v63 = *(v0 + 96);
  v65 = *(v0 + 80);
  v64 = *(v0 + 88);
  v66 = *(v0 + 72);
  v68 = *(v0 + 40);
  v67 = *(v0 + 48);
  sub_22FEE37BC(*(v0 + 104));

  v56 = *(v0 + 8);
  v69 = *MEMORY[0x277D85DE8];
LABEL_38:

  return v56();
}

uint64_t sub_22FEE374C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F08, &qword_22FFB4B00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FEE37BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F08, &qword_22FFB4B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FEE3824(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FEAA0D4;

  return SecureConfigPolicy.evaluate(bundle:context:)(a1, a2);
}

uint64_t sub_22FEE38E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FEE3930(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FEE39E0()
{
  result = type metadata accessor for SecureConfigPolicy.SealedHashLoader(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FEE3A4C()
{
  sub_22FEE3AD4();
  if (v0 <= 0x3F)
  {
    sub_22FED856C();
    if (v1 <= 0x3F)
    {
      sub_22FED85D4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_22FEE3AD4()
{
  if (!qword_27DAF20B8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DAF20B8);
    }
  }
}

uint64_t sub_22FEE3B5C()
{
  v0 = type metadata accessor for SEP.SealedHash(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void SEPAttestationPolicy.init(insecure:)(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    if (qword_28148FAF8 != -1)
    {
      swift_once();
    }

    v3 = sub_22FFB12F8();
    __swift_project_value_buffer(v3, qword_28148FB00);
    v4 = sub_22FFB12D8();
    v5 = sub_22FFB1838();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22FE99000, v4, v5, "Using Insecure SEPAttestationPolicy", v6, 2u);
      MEMORY[0x23190EFF0](v6, -1, -1);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  a2[1] = 0;
  a2[2] = 0;
  *a2 = v7;
}

uint64_t SEPAttestationPolicy.verifies(body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  *a3 = v7;
  sub_22FECB480(v7);
  sub_22FE9AC3C(v8);

  result = sub_22FEA5C80(v8);
  a3[1] = a1;
  a3[2] = a2;
  return result;
}

double AttestationPolicyContext.validatedAttestation.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(v3 + 16) || (v4 = sub_22FFA62AC(&type metadata for SEPAttestationPolicy, &protocol witness table for SEPAttestationPolicy, 0xD000000000000014, 0x800000022FFC9B50), (v5 & 1) == 0))
  {
    v7 = 0u;
    v8 = 0u;

    goto LABEL_7;
  }

  sub_22FEBF2A4(*(v3 + 56) + 32 * v4, &v7);

  if (!*(&v8 + 1))
  {
LABEL_7:
    sub_22FEAEA34(&v7, &qword_27DAF1A78, &unk_22FFB3A50);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    result = 0.0;
    *a1 = xmmword_22FFB2D00;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t SEPAttestationPolicy.body.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_22FE9AC3C(v1);
  return v1;
}

uint64_t SEPAttestationPolicy.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  result = sub_22FEA5C80(*(v2 + 8));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_22FEE3E9C()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_28148FB00);
  __swift_project_value_buffer(v0, qword_28148FB00);
  return sub_22FFB12E8();
}

uint64_t static SEPAttestationPolicy.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28148FAF8 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB12F8();
  v3 = __swift_project_value_buffer(v2, qword_28148FB00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void SEPAttestationPolicy.init()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t SEPAttestationPolicy.init(signer:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = result;
  return result;
}

uint64_t SEPAttestationPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  *(v3 + 312) = a1;
  *(v3 + 320) = a2;
  v4 = *v2;
  *(v3 + 328) = *v2;
  *(v3 + 344) = *(v2 + 2);
  sub_22FECB480(v4);
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FEE4090, 0, 0);
}

uint64_t sub_22FEE4090()
{
  v114 = v0;
  v113 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 328);
  if (!v1)
  {
    v103 = **(v0 + 320);
    AttestationPolicyContext.validatedCert.getter(&v108);
    v6 = v108;
    if (!v108)
    {
      sub_22FEE57D8();
      swift_allocError();
      *v53 = 1;
      swift_willThrow();
LABEL_55:
      v68 = *(v0 + 8);
      v96 = *MEMORY[0x277D85DE8];
      goto LABEL_56;
    }

    v7 = *(&v108 + 1);
    v8 = *(&v108 + 1);
    sub_22FED1EDC(v6, v7);
    v9 = v8;
    v1 = *(v0 + 328);
LABEL_7:
    *(v0 + 400) = v9;
    v10 = *(v0 + 312);
    v11 = *(v10 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
    swift_beginAccess();
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    sub_22FECB480(v1);
    sub_22FEA5608(v12, v13);
    SEP.Attestation.init(from:signer:)(v12, v13, v9, &v108);
    v14 = *(&v108 + 1);
    v15 = v108;
    *(v0 + 408) = v108;
    *(v0 + 416) = v14;
    v99 = v14;
    v17 = v109;
    v16 = v110;
    *(v0 + 424) = v109;
    *(v0 + 432) = v16;
    if (qword_28148FAF8 != -1)
    {
      swift_once();
    }

    v18 = sub_22FFB12F8();
    __swift_project_value_buffer(v18, qword_28148FB00);
    v19 = sub_22FFB12D8();
    v20 = sub_22FFB1848();
    v101 = v15;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22FE99000, v19, v20, "AttestationBundle passed SEPAttestationPolicy: SEP attestation signed by trusted authority", v21, 2u);
      v22 = v21;
      v15 = v101;
      MEMORY[0x23190EFF0](v22, -1, -1);
    }

    v23 = *(v0 + 320);

    v103 = *v23;
    AttestationPolicyContext.validatedCert.getter(&v108);
    v24 = v108;
    if (v108)
    {
      v25 = v17;
      v26 = v16;
      v27 = v111;
      v28 = v112;
      v29 = *(&v108 + 1);

      v30 = v29;
      v31 = v27;
      sub_22FED1EDC(v24, v30);
      if (v28)
      {
        *(v0 + 280) = 0;
        *(v0 + 288) = 0;
        v32 = swift_task_alloc();
        *(v32 + 16) = v0 + 280;
        *(v32 + 24) = v0 + 288;

        v16 = v26;
        sub_22FED55F8(v25, v26, sub_22FEB341C);

        if (v105 == 2)
        {

          v17 = v25;
          goto LABEL_15;
        }

        LODWORD(v108) = v103;
        *(&v108 + 1) = v104;
        LOWORD(v109) = v105 & 0x101;
        BYTE2(v109) = v106;
        HIDWORD(v109) = v107;
        if (v31 == SEP.Identity.string.getter() && v28 == v56)
        {

          swift_bridgeObjectRelease_n();
          v15 = v101;
          v17 = v25;
        }

        else
        {
          v62 = sub_22FFB1BC8();

          v17 = v25;
          if ((v62 & 1) == 0)
          {
LABEL_15:

            v33 = v99;
            sub_22FEA5608(v101, v99);
            sub_22FEA5608(v17, v16);
            v34 = sub_22FFB12D8();
            v35 = sub_22FFB1838();

            sub_22FEA55AC(v101, v99);
            sub_22FEA55AC(v17, v16);
            if (os_log_type_enabled(v34, v35))
            {
              v98 = v35;
              v36 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              v102 = v97;
              *v36 = 136315394;
              v37 = sub_22FF9E448(v31, v28, &v102);

              *(v36 + 4) = v37;
              *(v36 + 12) = 2080;
              *(v0 + 296) = 0;
              *(v0 + 304) = 0;
              v38 = swift_task_alloc();
              *(v38 + 16) = v0 + 296;
              *(v38 + 24) = v0 + 304;
              sub_22FED55F8(v17, v16, sub_22FEBFA54);

              if (v105 == 2)
              {
                v39 = 0xE500000000000000;
                v40 = 0x3E6C696E3CLL;
              }

              else
              {
                LODWORD(v108) = v103;
                *(&v108 + 1) = v104;
                LOWORD(v109) = v105 & 0x101;
                BYTE2(v109) = v106;
                HIDWORD(v109) = v107;
                v40 = SEP.Identity.string.getter();
                v39 = v75;
              }

              v76 = sub_22FF9E448(v40, v39, &v102);

              *(v36 + 14) = v76;
              _os_log_impl(&dword_22FE99000, v34, v98, "Certificate DeviceIdentity %s != %s", v36, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x23190EFF0](v97, -1, -1);
              MEMORY[0x23190EFF0](v36, -1, -1);

              v33 = v99;
            }

            else
            {
            }

            sub_22FEE57D8();
            v77 = swift_allocError();
            *v78 = 2;
            swift_willThrow();
            sub_22FEA55AC(v101, v33);
            sub_22FEA55AC(v17, v16);
            *(v0 + 272) = v77;
            v79 = v77;
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
            if (swift_dynamicCast() && *(v0 + 456) == 3)
            {

              if (qword_28148FAF8 != -1)
              {
                swift_once();
              }

              v80 = sub_22FFB12F8();
              __swift_project_value_buffer(v80, qword_28148FB00);
              v81 = sub_22FFB12D8();
              v82 = sub_22FFB1838();
              if (os_log_type_enabled(v81, v82))
              {
                v83 = swift_slowAlloc();
                *v83 = 0;
                _os_log_impl(&dword_22FE99000, v81, v82, "SEP Attestation signature failed verification", v83, 2u);
                MEMORY[0x23190EFF0](v83, -1, -1);
              }

              v84 = *(v0 + 400);

              sub_22FEE57D8();
              swift_allocError();
              *v85 = 0;
              swift_willThrow();
            }

            else
            {

              if (qword_28148FAF8 != -1)
              {
                swift_once();
              }

              v86 = sub_22FFB12F8();
              __swift_project_value_buffer(v86, qword_28148FB00);
              v87 = v77;
              v88 = sub_22FFB12D8();
              v89 = sub_22FFB1838();

              if (os_log_type_enabled(v88, v89))
              {
                v90 = swift_slowAlloc();
                v91 = swift_slowAlloc();
                *v90 = 138543362;
                v92 = v77;
                v93 = _swift_stdlib_bridgeErrorToNSError();
                *(v90 + 4) = v93;
                *v91 = v93;
                _os_log_impl(&dword_22FE99000, v88, v89, "SEP Attestation verification failed with unknown reason: %{public}@", v90, 0xCu);
                sub_22FEAEA34(v91, &qword_27DAF1680, &unk_22FFB4B10);
                MEMORY[0x23190EFF0](v91, -1, -1);
                MEMORY[0x23190EFF0](v90, -1, -1);
              }

              v94 = *(v0 + 400);

              sub_22FEE57D8();
              swift_allocError();
              *v95 = v77;
              swift_willThrow();
            }

            goto LABEL_55;
          }

          v15 = v101;
        }
      }

      else
      {
        v15 = v101;
        v16 = v26;
        v17 = v25;
      }
    }

    v63 = *(v0 + 336);
    v64 = *(v0 + 320);
    *(v0 + 184) = &type metadata for SEP.Attestation;
    v65 = swift_allocObject();
    *(v0 + 160) = v65;
    v65[2] = v15;
    v65[3] = v99;
    v65[4] = v17;
    v65[5] = v16;
    sub_22FED6328(v0 + 160, v0 + 192);
    sub_22FEA5608(v15, v99);
    sub_22FEA5608(v17, v16);
    sub_22FECBD14(v0 + 192, &type metadata for SEPAttestationPolicy, &protocol witness table for SEPAttestationPolicy, 0xD000000000000014, 0x800000022FFC9B50);
    sub_22FEAEA34(v0 + 160, &qword_27DAF1A78, &unk_22FFB3A50);
    if (v63)
    {
      v67 = *(v0 + 336);
      v66 = *(v0 + 344);
      *&v108 = v15;
      *(&v108 + 1) = v99;
      v109 = v17;
      v110 = v16;

      v67(&v108);
      v57 = *(v0 + 80);
      v58 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v57);
      v100 = (*(v58 + 8) + **(v58 + 8));
      v70 = *(*(v58 + 8) + 4);
      v60 = swift_task_alloc();
      *(v0 + 440) = v60;
      *v60 = v0;
      v61 = sub_22FEE50E4;
      goto LABEL_38;
    }

    sub_22FEA55AC(v15, v99);
    v54 = v17;
    v55 = v16;
    goto LABEL_37;
  }

  if (v1 != 1)
  {
    v9 = *(v0 + 328);
    goto LABEL_7;
  }

  v2 = *(v0 + 312);
  v3 = *(v2 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  sub_22FEA5608(v5, v4);
  SEP.Attestation.init(from:)(v5, v4, &v108);
  v41 = *(v0 + 320);
  v42 = v108;
  *(v0 + 352) = v108;
  v43 = v109;
  v44 = v110;
  *(v0 + 368) = v109;
  *(v0 + 376) = v44;
  *(v0 + 120) = &type metadata for SEP.Attestation;
  v45 = swift_allocObject();
  *(v0 + 96) = v45;
  *(v45 + 16) = v42;
  *(v45 + 32) = v43;
  *(v45 + 40) = v44;
  sub_22FED6328(v0 + 96, v0 + 128);
  sub_22FEA5608(v42, *(&v42 + 1));
  sub_22FEA5608(v43, v44);
  sub_22FECBD14(v0 + 128, &type metadata for SEPAttestationPolicy, &protocol witness table for SEPAttestationPolicy, 0xD000000000000014, 0x800000022FFC9B50);
  sub_22FEAEA34(v0 + 96, &qword_27DAF1A78, &unk_22FFB3A50);
  if (qword_28148FAF8 != -1)
  {
    swift_once();
  }

  v46 = sub_22FFB12F8();
  __swift_project_value_buffer(v46, qword_28148FB00);
  v47 = sub_22FFB12D8();
  v48 = sub_22FFB1848();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_22FE99000, v47, v48, "AttestationBundle passed SEPAttestationPolicy: SEP Attestation has valid structure, but signature was not checked", v49, 2u);
    MEMORY[0x23190EFF0](v49, -1, -1);
  }

  v50 = *(v0 + 336);

  if (v50)
  {
    v52 = *(v0 + 336);
    v51 = *(v0 + 344);
    v108 = v42;
    v109 = v43;
    v110 = v44;

    v52(&v108);
    v57 = *(v0 + 40);
    v58 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v57);
    v100 = (*(v58 + 8) + **(v58 + 8));
    v59 = *(*(v58 + 8) + 4);
    v60 = swift_task_alloc();
    *(v0 + 384) = v60;
    *v60 = v0;
    v61 = sub_22FEE4EDC;
LABEL_38:
    v60[1] = v61;
    v72 = *(v0 + 312);
    v71 = *(v0 + 320);
    v73 = *MEMORY[0x277D85DE8];

    return v100(v72, v71, v57, v58);
  }

  sub_22FEA55AC(v42, *(&v42 + 1));
  v54 = v43;
  v55 = v44;
LABEL_37:
  sub_22FEA55AC(v54, v55);
  v68 = *(v0 + 8);
  v69 = *MEMORY[0x277D85DE8];
LABEL_56:

  return v68();
}

uint64_t sub_22FEE4EDC()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 384);
  v7 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_22FEE5304;
  }

  else
  {
    v3 = sub_22FEE501C;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FEE501C()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[46];
  v2 = v0[47];
  v4 = v0[42];
  v3 = v0[43];
  sub_22FEA55AC(v0[44], v0[45]);
  sub_22FEA55AC(v1, v2);
  sub_22FEA5C80(v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_22FEE50E4()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 440);
  v7 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = sub_22FEE53CC;
  }

  else
  {
    v3 = sub_22FEE5224;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FEE5224()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v0 + 408);
  v3 = *(v0 + 416);
  v6 = *(v0 + 336);
  v5 = *(v0 + 344);

  sub_22FEA55AC(v4, v3);
  sub_22FEA55AC(v1, v2);
  sub_22FEA5C80(v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v7 = *(v0 + 8);
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_22FEE5304()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[46];
  v2 = v0[47];
  v4 = v0[42];
  v3 = v0[43];
  sub_22FEA55AC(v0[44], v0[45]);
  sub_22FEA55AC(v1, v2);
  sub_22FEA5C80(v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v0[49];
  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_22FEE53CC()
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  sub_22FEA55AC(*(v0 + 408), *(v0 + 416));
  sub_22FEA55AC(v1, v2);
  sub_22FEA5C80(v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v5 = *(v0 + 448);
  *(v0 + 272) = v5;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
  if (swift_dynamicCast() && *(v0 + 456) == 3)
  {

    if (qword_28148FAF8 != -1)
    {
      swift_once();
    }

    v7 = sub_22FFB12F8();
    __swift_project_value_buffer(v7, qword_28148FB00);
    v8 = sub_22FFB12D8();
    v9 = sub_22FFB1838();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22FE99000, v8, v9, "SEP Attestation signature failed verification", v10, 2u);
      MEMORY[0x23190EFF0](v10, -1, -1);
    }

    v11 = *(v0 + 400);

    sub_22FEE57D8();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
  }

  else
  {

    if (qword_28148FAF8 != -1)
    {
      swift_once();
    }

    v13 = sub_22FFB12F8();
    __swift_project_value_buffer(v13, qword_28148FB00);
    v14 = v5;
    v15 = sub_22FFB12D8();
    v16 = sub_22FFB1838();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      v19 = v5;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_22FE99000, v15, v16, "SEP Attestation verification failed with unknown reason: %{public}@", v17, 0xCu);
      sub_22FEAEA34(v18, &qword_27DAF1680, &unk_22FFB4B10);
      MEMORY[0x23190EFF0](v18, -1, -1);
      MEMORY[0x23190EFF0](v17, -1, -1);
    }

    v21 = *(v0 + 400);

    sub_22FEE57D8();
    swift_allocError();
    *v22 = v5;
    swift_willThrow();
  }

  v23 = *(v0 + 8);
  v24 = *MEMORY[0x277D85DE8];

  return v23();
}

uint64_t sub_22FEE5734(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FEAA0D4;

  return SEPAttestationPolicy.evaluate(bundle:context:)(a1, a2);
}

unint64_t sub_22FEE57D8()
{
  result = qword_27DAF20C0;
  if (!qword_27DAF20C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF20C0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22FEE5840(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_22FEE589C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22FEE5900(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FEE595C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_22FEE59BC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FEE5A10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_22FEE5A90()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_281491430);
  __swift_project_value_buffer(v0, qword_281491430);
  return sub_22FFB12E8();
}

uint64_t SEPImagePolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FEE5BA4, 0, 0);
}

uint64_t sub_22FEE5BA4()
{
  v80 = v0;
  v79 = *MEMORY[0x277D85DE8];
  v74 = **(v0 + 120);
  AttestationPolicyContext.validatedAttestation.getter(&v75);
  v1 = v76;
  if (v76 >> 60 == 15)
  {
    sub_22FEE63E8();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();
LABEL_17:
    v22 = *(v0 + 8);
    v23 = *MEMORY[0x277D85DE8];
    goto LABEL_18;
  }

  v3 = (v0 + 16);
  v4 = v75;
  v5 = v77;
  v6 = v78;
  *(v0 + 16) = 0;
  *(v0 + 56) = 0;
  v7 = swift_task_alloc();
  *(v7 + 16) = v0 + 16;
  *(v7 + 24) = v0 + 56;
  sub_22FED55F8(v5, v6, sub_22FED545C);
  v72 = 0;

  v73 = v4;
  if (v75 == 3)
  {
    v8 = *(v0 + 112);
    v9 = (*(v8 + *(type metadata accessor for Proto_AttestationBundle(0) + 20)) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest);
    swift_beginAccess();
    v10 = (v9 + 1);
  }

  else
  {
    v11 = *(v0 + 112);
    v12 = *(v11 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
    v9 = (v12 + 32);
    swift_beginAccess();
    v10 = (v12 + 40);
  }

  v13 = *v10;
  v14 = *v9;
  v15 = *v10 >> 62;
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_14;
    }

    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
LABEL_13:
    sub_22FEA5608(v14, v13);
    if (v16 != v17)
    {
      goto LABEL_21;
    }

LABEL_14:
    sub_22FEE63E8();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    sub_22FEA55AC(v14, v13);
    v19 = v73;
LABEL_15:
    v20 = v1;
    v21 = v5;
LABEL_16:
    sub_22FECB858(v19, v20, v21, v6);
    goto LABEL_17;
  }

  if (v15)
  {
    v16 = v14;
    v17 = v14 >> 32;
    goto LABEL_13;
  }

  if ((v13 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_21:
  v71 = v5;
  v25 = (v0 + 128);
  v26 = MEMORY[0x277CC9318];
  v27 = MEMORY[0x277CC9300];
  *(v0 + 40) = MEMORY[0x277CC9318];
  *(v0 + 48) = v27;
  *(v0 + 16) = v14;
  *(v0 + 24) = v13;
  v28 = __swift_project_boxed_opaque_existential_1((v0 + 16), v26);
  v29 = *v28;
  v30 = v28[1];
  v31 = v30 >> 62;
  if ((v30 >> 62) <= 1)
  {
    if (!v31)
    {
      *(v0 + 128) = v29;
      *(v0 + 136) = v30;
      *(v0 + 138) = BYTE2(v30);
      *(v0 + 139) = BYTE3(v30);
      *(v0 + 140) = BYTE4(v30);
      *(v0 + 141) = BYTE5(v30);
      sub_22FEA5608(v14, v13);
      v32 = (v0 + 128);
      v33 = v25 + BYTE6(v30);
LABEL_51:
      sub_22FF9E9E4(v32, v33, &v75);
      goto LABEL_36;
    }

    v70 = v6;
    v6 = v29;
    v48 = v29 >> 32;
    v49 = v48 - v6;
    if (v48 >= v6)
    {
      sub_22FEA5608(v14, v13);
      v7 = sub_22FFB0588();
      if (!v7)
      {
LABEL_43:
        v6 = v70;
        v51 = sub_22FFB05A8();
        if (v51 >= v49)
        {
          v52 = v49;
        }

        else
        {
          v52 = v51;
        }

        v53 = (v52 + v7);
        if (v7)
        {
          v33 = v53;
        }

        else
        {
          v33 = 0;
        }

        v32 = v7;
        goto LABEL_51;
      }

      v50 = sub_22FFB05B8();
      if (!__OFSUB__(v6, v50))
      {
        v7 += v6 - v50;
        goto LABEL_43;
      }

LABEL_69:
      __break(1u);
LABEL_70:
      swift_once();
      goto LABEL_62;
    }

    __break(1u);
    goto LABEL_67;
  }

  if (v31 != 2)
  {
    *(v0 + 134) = 0;
    *v25 = 0;
    sub_22FEA5608(v14, v13);
    v32 = (v0 + 128);
    v33 = (v0 + 128);
    goto LABEL_51;
  }

  v70 = v6;
  v6 = *(v29 + 16);
  v34 = *(v29 + 24);
  sub_22FEA5608(v14, v13);
  v7 = sub_22FFB0588();
  if (v7)
  {
    v35 = sub_22FFB05B8();
    if (__OFSUB__(v6, v35))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v7 += v6 - v35;
  }

  v36 = __OFSUB__(v34, v6);
  v37 = v34 - v6;
  if (v36)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v38 = sub_22FFB05A8();
  if (v38 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v38;
  }

  v40 = (v39 + v7);
  if (v7)
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  sub_22FF9E9E4(v7, v41, &v75);
  v6 = v70;
LABEL_36:
  v7 = v75;
  v42 = v76;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v75 = v7;
  v76 = v42;
  LOBYTE(v77) = 0;
  v43 = sub_22FEC6AAC();
  if (v44 >> 60 == 15)
  {
    sub_22FEE63E8();
    swift_allocError();
    *v45 = 2;
    swift_willThrow();
    v46 = v7;
    v47 = v42;
LABEL_38:
    sub_22FEA55AC(v46, v47);
    sub_22FEA55AC(v14, v13);
    v19 = v73;
    v20 = v1;
    v21 = v71;
    goto LABEL_16;
  }

  v69 = v7;
  v70 = v43;
  v72 = v44;
  v68 = v42;
  *v3 = 0;
  *(v0 + 104) = 0;
  v54 = swift_task_alloc();
  v54[2] = v3;
  v54[3] = v0 + 104;
  v54[4] = v73;
  v54[5] = v1;
  v5 = v71;
  v54[6] = v71;
  v54[7] = v6;
  sub_22FED55F8(v71, v6, sub_22FEE643C);

  v3 = v77;
  if ((~v77 & 0x3000000000000000) == 0)
  {
    sub_22FEE63E8();
    swift_allocError();
    *v55 = 3;
    swift_willThrow();
    sub_22FEA56EC(v70, v72);
    sub_22FEA55AC(v7, v68);
    sub_22FEA55AC(v14, v13);
    v19 = v73;
    goto LABEL_15;
  }

  v56 = v76;
  if ((v77 & 0x2000000000000000) != 0)
  {
    v57 = v76;
  }

  else
  {
    v57 = v75;
  }

  if ((v77 & 0x2000000000000000) != 0)
  {
    v58 = v77 & 0xDFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v58 = v76;
  }

  v66 = v76;
  v67 = v75;
  if ((sub_22FECAAF4(v57, v58, v70, v72) & 1) == 0)
  {
    sub_22FEE63E8();
    swift_allocError();
    *v65 = 4;
    swift_willThrow();
    sub_22FED5840(v67, v56, v3);
    sub_22FEA56EC(v70, v72);
    v47 = v68;
    v46 = v7;
    goto LABEL_38;
  }

  if (qword_281490288 != -1)
  {
    goto LABEL_70;
  }

LABEL_62:
  v59 = sub_22FFB12F8();
  __swift_project_value_buffer(v59, qword_281491430);
  v60 = sub_22FFB12D8();
  v61 = sub_22FFB1848();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_22FE99000, v60, v61, "AttestationBundle passed SEPImagePolicy: reported SEP Image from AP Ticket matches SEP attestation", v62, 2u);
    v63 = v62;
    v7 = v69;
    MEMORY[0x23190EFF0](v63, -1, -1);
  }

  sub_22FEA55AC(v14, v13);
  sub_22FED5840(v67, v66, v3);
  sub_22FEA56EC(v70, v72);
  sub_22FEA55AC(v7, v68);
  sub_22FECB858(v73, v1, v71, v6);

  v22 = *(v0 + 8);
  v64 = *MEMORY[0x277D85DE8];
LABEL_18:

  return v22();
}

uint64_t sub_22FEE634C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FEAA0D4;

  return SEPImagePolicy.evaluate(bundle:context:)(a1, a2);
}

unint64_t sub_22FEE63E8()
{
  result = qword_27DAF20C8;
  if (!qword_27DAF20C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF20C8);
  }

  return result;
}

_BYTE *sub_22FEE643C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_22FF54190(*(v1 + 16), *(v1 + 24), *(v1 + 48), *(v1 + 56), a1);
}

uint64_t getEnumTagSinglePayload for SEPImagePolicy.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SEPImagePolicy.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22FEE65C4()
{
  result = qword_27DAF20D0;
  if (!qword_27DAF20D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF20D0);
  }

  return result;
}

uint64_t sub_22FEE6684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Release();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FEE6708()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DAF20D8);
  __swift_project_value_buffer(v0, qword_27DAF20D8);
  return sub_22FFB12E8();
}

uint64_t static SoftwareReleasePolicy.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAF1298 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB12F8();
  v3 = __swift_project_value_buffer(v2, qword_27DAF20D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SoftwareReleasePolicy.evaluate(bundle:context:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for SoftwareReleasePolicy() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v4 = *(*(type metadata accessor for Proto_AttestationBundle(0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = *(*(type metadata accessor for AttestationBundle(0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for Release();
  v2[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEE6990, 0, 0);
}

uint64_t sub_22FEE6990()
{
  v72 = v0;
  v1 = v0[13];
  v3 = v0[6];
  v2 = v0[7];
  sub_22FEEC130(v0[2], v2, type metadata accessor for AttestationBundle);
  sub_22FEEC130(v2, v3, type metadata accessor for Proto_AttestationBundle);
  sub_22FF68C5C(v3, 1, 0, v1);
  sub_22FEEC198(v2, type metadata accessor for AttestationBundle);
  sub_22FEEC1F8(v0[13], v0[14], type metadata accessor for Release);
  if (qword_27DAF1298 != -1)
  {
    swift_once();
  }

  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = sub_22FFB12F8();
  __swift_project_value_buffer(v7, qword_27DAF20D8);
  sub_22FEEC130(v6, v4, type metadata accessor for SoftwareReleasePolicy);
  sub_22FEEC130(v6, v5, type metadata accessor for SoftwareReleasePolicy);
  v8 = sub_22FFB12D8();
  v9 = sub_22FFB1848();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[12];
    v11 = v0[5];
    v65 = v0[4];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v69 = v13;
    *v12 = 136446466;
    sub_22FEEC130(v11, v10, type metadata accessor for Release);
    sub_22FFB19B8();

    v70 = 0xD000000000000010;
    v71 = 0x800000022FFC9F50;
    v14 = Release.sha256.getter();
    MEMORY[0x23190DD10](v14);

    MEMORY[0x23190DD10](41, 0xE100000000000000);
    sub_22FEEC198(v10, type metadata accessor for Release);
    sub_22FEEC198(v11, type metadata accessor for SoftwareReleasePolicy);
    v15 = sub_22FF9E448(0xD000000000000010, 0x800000022FFC9F50, &v69);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    v16 = Release.jsonString.getter();
    v18 = v17;
    sub_22FEEC198(v65, type metadata accessor for SoftwareReleasePolicy);
    v19 = sub_22FF9E448(v16, v18, &v69);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_22FE99000, v8, v9, "Local device is running %{public}s:\n%{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190EFF0](v13, -1, -1);
    MEMORY[0x23190EFF0](v12, -1, -1);
  }

  else
  {
    v20 = v0[4];
    v21 = v0[5];

    sub_22FEEC198(v20, type metadata accessor for SoftwareReleasePolicy);
    sub_22FEEC198(v21, type metadata accessor for SoftwareReleasePolicy);
  }

  v22 = v0[14];
  v23 = v0[10];
  sub_22FEEC130(v22, v0[11], type metadata accessor for Release);
  sub_22FEEC130(v22, v23, type metadata accessor for Release);
  v24 = sub_22FFB12D8();
  v25 = sub_22FFB1848();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[10];
  v28 = v0[11];
  if (v26)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v69 = v30;
    v70 = 0;
    *v29 = 136446466;
    v71 = 0xE000000000000000;
    sub_22FFB19B8();

    v70 = 0xD000000000000010;
    v71 = 0x800000022FFC9F50;
    v31 = Release.sha256.getter();
    MEMORY[0x23190DD10](v31);

    MEMORY[0x23190DD10](41, 0xE100000000000000);
    v33 = v70;
    v32 = v71;
    sub_22FEEC198(v28, type metadata accessor for Release);
    v34 = sub_22FF9E448(v33, v32, &v69);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2082;
    v35 = Release.jsonString.getter();
    v37 = v36;
    sub_22FEEC198(v27, type metadata accessor for Release);
    v38 = sub_22FF9E448(v35, v37, &v69);

    *(v29 + 14) = v38;
    _os_log_impl(&dword_22FE99000, v24, v25, "Remote device is running %{public}s:\n%{public}s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190EFF0](v30, -1, -1);
    MEMORY[0x23190EFF0](v29, -1, -1);
  }

  else
  {

    sub_22FEEC198(v27, type metadata accessor for Release);
    sub_22FEEC198(v28, type metadata accessor for Release);
  }

  v39 = v0[14];
  sub_22FEEC130(v0[3], v0[9], type metadata accessor for Release);
  if (sub_22FFB0C08() & 1) != 0 && (v40 = *(v0[8] + 20), (sub_22FEE72BC(*(v0[14] + v40), *(v0[9] + v40))) && (v41 = *(v0[8] + 24), (sub_22FEE800C(*(v0[14] + v41), *(v0[9] + v41))))
  {
    sub_22FEEC198(v0[9], type metadata accessor for Release);
    v42 = sub_22FFB12D8();
    v43 = sub_22FFB1848();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_22FE99000, v42, v43, "Remote device is running same release as local device", v44, 2u);
      MEMORY[0x23190EFF0](v44, -1, -1);
    }

    v46 = v0[13];
    v45 = v0[14];
    v48 = v0[11];
    v47 = v0[12];
    v50 = v0[9];
    v49 = v0[10];
    v52 = v0[6];
    v51 = v0[7];
    v66 = v0[5];
    v67 = v0[4];

    sub_22FEEC198(v45, type metadata accessor for Release);

    v53 = v0[1];
  }

  else
  {
    v54 = v0[14];
    sub_22FEEC198(v0[9], type metadata accessor for Release);
    sub_22FEEBF28();
    swift_allocError();
    swift_willThrow();
    sub_22FEEC198(v54, type metadata accessor for Release);
    v56 = v0[13];
    v55 = v0[14];
    v58 = v0[11];
    v57 = v0[12];
    v60 = v0[9];
    v59 = v0[10];
    v62 = v0[6];
    v61 = v0[7];
    v63 = v0[5];
    v68 = v0[4];

    v53 = v0[1];
  }

  return v53();
}

uint64_t sub_22FEE71B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FEAA0D4;

  return SoftwareReleasePolicy.evaluate(bundle:context:)(a1);
}

uint64_t SoftwareReleasePolicy.Error.hashValue.getter()
{
  sub_22FFB1CA8();
  MEMORY[0x23190E460](0);
  return sub_22FFB1CF8();
}

uint64_t sub_22FEE72BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0C28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_22FEEC260(&qword_28148F1F0, MEMORY[0x277D6A8E8]);
      v28 = sub_22FFB1428();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_22FEEC260(&qword_28148F1E8, MEMORY[0x277D6A8E8]);
        v33 = sub_22FFB1478();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FEE766C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_22FFB1BC8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_22FEE76FC(uint64_t a1, uint64_t a2)
{
  v42[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a2 + 48);
      v5 = (a1 + 48);
      while (1)
      {
        v6 = *(v5 - 2);
        v7 = *(v5 - 1);
        v8 = *v5;
        v9 = *(v4 - 2);
        v10 = *(v4 - 1);
        v11 = *v4;
        v12 = v7 >> 62;
        v13 = v10 >> 62;
        if (v7 >> 62 == 3)
        {
          break;
        }

        if (v12 > 1)
        {
          if (v12 == 2)
          {
            v24 = *(v6 + 16);
            v23 = *(v6 + 24);
            v21 = __OFSUB__(v23, v24);
            v15 = v23 - v24;
            if (v21)
            {
              goto LABEL_68;
            }

            goto LABEL_26;
          }

          v15 = 0;
          if (v13 <= 1)
          {
            goto LABEL_27;
          }
        }

        else if (v12)
        {
          LODWORD(v15) = HIDWORD(v6) - v6;
          if (__OFSUB__(HIDWORD(v6), v6))
          {
            goto LABEL_69;
          }

          v15 = v15;
          if (v13 <= 1)
          {
LABEL_27:
            if (v13)
            {
              LODWORD(v22) = HIDWORD(v9) - v9;
              if (__OFSUB__(HIDWORD(v9), v9))
              {
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
              }

              v22 = v22;
            }

            else
            {
              v22 = BYTE6(v10);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v15 = BYTE6(v7);
          if (v13 <= 1)
          {
            goto LABEL_27;
          }
        }

LABEL_20:
        if (v13 != 2)
        {
          if (v15)
          {
            goto LABEL_64;
          }

LABEL_38:
          sub_22FEA5608(*(v5 - 2), *(v5 - 1));
          v17 = v9;
          v18 = v10;
LABEL_39:
          sub_22FEA5608(v17, v18);
          goto LABEL_60;
        }

        v20 = *(v9 + 16);
        v19 = *(v9 + 24);
        v21 = __OFSUB__(v19, v20);
        v22 = v19 - v20;
        if (v21)
        {
          goto LABEL_67;
        }

LABEL_33:
        if (v15 != v22)
        {
          goto LABEL_64;
        }

        if (v15 < 1)
        {
          goto LABEL_38;
        }

        if (v12 > 1)
        {
          if (v12 == 2)
          {
            v38 = *v4;
            v39 = *v5;
            v40 = v3;
            v27 = *(v6 + 16);
            v37 = *(v6 + 24);
            sub_22FEA5608(v6, v7);
            sub_22FEA5608(v9, v10);
            sub_22FEA5608(v6, v7);
            sub_22FEA5608(v9, v10);
            v28 = sub_22FFB0588();
            if (v28)
            {
              v29 = sub_22FFB05B8();
              if (__OFSUB__(v27, v29))
              {
                goto LABEL_72;
              }

              v28 += v27 - v29;
            }

            if (__OFSUB__(v37, v27))
            {
              goto LABEL_71;
            }

            sub_22FFB05A8();
            v30 = v28;
            v31 = v9;
            v32 = v10;
            v3 = v40;
            goto LABEL_56;
          }

          memset(v42, 0, 14);
          sub_22FEA5608(v6, v7);
          sub_22FEA5608(v9, v10);
          sub_22FEA5608(v6, v7);
          sub_22FEA5608(v9, v10);
          v25 = v9;
          v26 = v10;
        }

        else
        {
          if (v12)
          {
            v38 = *v4;
            v39 = *v5;
            if (v6 >> 32 < v6)
            {
              goto LABEL_70;
            }

            sub_22FEA5608(v6, v7);
            sub_22FEA5608(v9, v10);
            sub_22FEA5608(v6, v7);
            sub_22FEA5608(v9, v10);
            v33 = sub_22FFB0588();
            if (v33)
            {
              v34 = sub_22FFB05B8();
              if (__OFSUB__(v6, v34))
              {
                goto LABEL_73;
              }

              v33 += v6 - v34;
            }

            sub_22FFB05A8();
            v30 = v33;
            v31 = v9;
            v32 = v10;
LABEL_56:
            sub_22FEEBB68(v30, v31, v32, v42);
            sub_22FEA55AC(v9, v10);
            sub_22FEA55AC(v6, v7);
            v11 = v38;
            v8 = v39;
            if ((v42[0] & 1) == 0)
            {
              goto LABEL_63;
            }

            goto LABEL_60;
          }

          v42[0] = *(v5 - 2);
          LOWORD(v42[1]) = v7;
          BYTE2(v42[1]) = BYTE2(v7);
          BYTE3(v42[1]) = BYTE3(v7);
          BYTE4(v42[1]) = BYTE4(v7);
          BYTE5(v42[1]) = BYTE5(v7);
          sub_22FEA5608(v6, v7);
          sub_22FEA5608(v9, v10);
          sub_22FEA5608(v6, v7);
          sub_22FEA5608(v9, v10);
          v25 = v9;
          v26 = v10;
        }

        sub_22FEEBB68(v42, v25, v26, &v41);
        sub_22FEA55AC(v9, v10);
        sub_22FEA55AC(v6, v7);
        if (!v41)
        {
LABEL_63:
          sub_22FEA55AC(v9, v10);
          sub_22FEA55AC(v6, v7);
          goto LABEL_64;
        }

LABEL_60:
        sub_22FEA55AC(v9, v10);
        sub_22FEA55AC(v6, v7);
        if (v8 != v11)
        {
          goto LABEL_64;
        }

        v5 += 24;
        v4 += 24;
        if (!--v2)
        {
          goto LABEL_62;
        }
      }

      if (v6)
      {
        v14 = 0;
      }

      else
      {
        v14 = v7 == 0xC000000000000000;
      }

      v15 = 0;
      v16 = v14 && v10 >> 62 == 3;
      if (v16 && !v9 && v10 == 0xC000000000000000)
      {
        sub_22FEA5608(0, 0xC000000000000000);
        v17 = 0;
        v18 = 0xC000000000000000;
        goto LABEL_39;
      }

LABEL_26:
      if (v13 <= 1)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

LABEL_62:
    result = 1;
  }

  else
  {
LABEL_64:
    result = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FEE7C00(uint64_t a1, uint64_t a2)
{
  v34[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a1 + 40);
      v5 = (a2 + 40);
      while (1)
      {
        v7 = *(v4 - 1);
        v6 = *v4;
        v9 = *(v5 - 1);
        v8 = *v5;
        v10 = *v4 >> 62;
        v11 = *v5 >> 62;
        if (v10 == 3)
        {
          break;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v20 = *(v7 + 16);
            v19 = *(v7 + 24);
            v17 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v17)
            {
              goto LABEL_63;
            }

            goto LABEL_28;
          }

          v13 = 0;
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

        else if (v10)
        {
          LODWORD(v13) = HIDWORD(v7) - v7;
          if (__OFSUB__(HIDWORD(v7), v7))
          {
            goto LABEL_64;
          }

          v13 = v13;
          if (v11 <= 1)
          {
LABEL_29:
            if (v11)
            {
              LODWORD(v18) = HIDWORD(v9) - v9;
              if (__OFSUB__(HIDWORD(v9), v9))
              {
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
              }

              v18 = v18;
            }

            else
            {
              v18 = BYTE6(v8);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v13 = BYTE6(v6);
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

LABEL_22:
        if (v11 != 2)
        {
          if (v13)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        }

        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        v17 = __OFSUB__(v15, v16);
        v18 = v15 - v16;
        if (v17)
        {
          goto LABEL_62;
        }

LABEL_33:
        if (v13 != v18)
        {
          goto LABEL_58;
        }

        if (v13 < 1)
        {
          goto LABEL_6;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v32 = v3;
            v21 = *(v7 + 16);
            v31 = *(v7 + 24);
            sub_22FEA5608(v7, v6);
            sub_22FEA5608(v9, v8);
            v22 = sub_22FFB0588();
            if (v22)
            {
              v23 = sub_22FFB05B8();
              if (__OFSUB__(v21, v23))
              {
                goto LABEL_67;
              }

              v22 += v21 - v23;
            }

            if (__OFSUB__(v31, v21))
            {
              goto LABEL_66;
            }

            sub_22FFB05A8();
            v24 = v22;
            v25 = v9;
            v26 = v8;
            v3 = v32;
            goto LABEL_54;
          }

          memset(v34, 0, 14);
          sub_22FEA5608(v7, v6);
          sub_22FEA5608(v9, v8);
        }

        else
        {
          if (v10)
          {
            if (v7 >> 32 < v7)
            {
              goto LABEL_65;
            }

            sub_22FEA5608(v7, v6);
            sub_22FEA5608(v9, v8);
            v27 = sub_22FFB0588();
            if (v27)
            {
              v28 = sub_22FFB05B8();
              if (__OFSUB__(v7, v28))
              {
                goto LABEL_68;
              }

              v27 += v7 - v28;
            }

            sub_22FFB05A8();
            v24 = v27;
            v25 = v9;
            v26 = v8;
LABEL_54:
            sub_22FEEBB68(v24, v25, v26, v34);
            sub_22FEA55AC(v9, v8);
            sub_22FEA55AC(v7, v6);
            if ((v34[0] & 1) == 0)
            {
              goto LABEL_58;
            }

            goto LABEL_6;
          }

          v34[0] = *(v4 - 1);
          LOWORD(v34[1]) = v6;
          BYTE2(v34[1]) = BYTE2(v6);
          BYTE3(v34[1]) = BYTE3(v6);
          BYTE4(v34[1]) = BYTE4(v6);
          BYTE5(v34[1]) = BYTE5(v6);
          sub_22FEA5608(v7, v6);
          sub_22FEA5608(v9, v8);
        }

        sub_22FEEBB68(v34, v9, v8, &v33);
        sub_22FEA55AC(v9, v8);
        sub_22FEA55AC(v7, v6);
        if (!v33)
        {
          goto LABEL_58;
        }

LABEL_6:
        v4 += 2;
        v5 += 2;
        if (!--v2)
        {
          goto LABEL_59;
        }
      }

      if (v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6 == 0xC000000000000000;
      }

      v13 = 0;
      v14 = v12 && *v5 >> 62 == 3;
      if (v14 && !v9 && v8 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v11 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

LABEL_59:
    result = 1;
  }

  else
  {
LABEL_58:
    result = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FEE800C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0CC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_22FEEC260(&qword_27DAF2160, MEMORY[0x277D6A988]);
    v22 = sub_22FFB1478();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_22FEE8220(uint64_t a1, uint64_t a2)
{
  v82[3] = *MEMORY[0x277D85DE8];
  v78 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v4 = *(v78 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v78);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v67 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2138, &qword_22FFB90D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v77 = &v67 - v14;
  v80 = type metadata accessor for Proto_SealedHash.Entry(0);
  v15 = *(*(v80 - 1) + 64);
  v16 = MEMORY[0x28223BE20](v80);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v67 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    goto LABEL_70;
  }

  if (!v22 || a1 == a2)
  {
    v64 = 1;
    goto LABEL_71;
  }

  v69 = v7;
  v70 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v75 = &v67 - v20;
  v76 = (v4 + 48);
  v26 = *(v19 + 72);
  v72 = 0;
  v73 = v26;
  v71 = v12;
  v74 = v18;
  while (1)
  {
    sub_22FEEC130(v24, v21, type metadata accessor for Proto_SealedHash.Entry);
    if (!v22)
    {
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
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
    }

    sub_22FEEC130(v25, v18, type metadata accessor for Proto_SealedHash.Entry);
    if (*v21 != *v18)
    {
      goto LABEL_69;
    }

    v27 = *(v21 + 1);
    v28 = *(v21 + 2);
    v30 = *(v18 + 1);
    v29 = *(v18 + 2);
    v31 = v28 >> 62;
    v32 = v29 >> 62;
    if (v28 >> 62 == 3)
    {
      v33 = 0;
      if (!v27 && v28 == 0xC000000000000000 && v29 >> 62 == 3)
      {
        v33 = 0;
        if (!v30 && v29 == 0xC000000000000000)
        {
          goto LABEL_57;
        }
      }

LABEL_23:
      if (v32 <= 1)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

    if (v31 > 1)
    {
      if (v31 == 2)
      {
        v39 = *(v27 + 16);
        v38 = *(v27 + 24);
        v36 = __OFSUB__(v38, v39);
        v33 = v38 - v39;
        if (v36)
        {
          goto LABEL_76;
        }

        goto LABEL_23;
      }

      v33 = 0;
      if (v32 <= 1)
      {
        goto LABEL_24;
      }
    }

    else if (v31)
    {
      LODWORD(v33) = HIDWORD(v27) - v27;
      if (__OFSUB__(HIDWORD(v27), v27))
      {
        goto LABEL_75;
      }

      v33 = v33;
      if (v32 <= 1)
      {
LABEL_24:
        if (v32)
        {
          LODWORD(v37) = HIDWORD(v30) - v30;
          if (__OFSUB__(HIDWORD(v30), v30))
          {
            goto LABEL_73;
          }

          v37 = v37;
        }

        else
        {
          v37 = BYTE6(v29);
        }

        goto LABEL_30;
      }
    }

    else
    {
      v33 = BYTE6(v28);
      if (v32 <= 1)
      {
        goto LABEL_24;
      }
    }

LABEL_17:
    if (v32 != 2)
    {
      if (v33)
      {
        goto LABEL_69;
      }

      goto LABEL_57;
    }

    v35 = *(v30 + 16);
    v34 = *(v30 + 24);
    v36 = __OFSUB__(v34, v35);
    v37 = v34 - v35;
    if (v36)
    {
      goto LABEL_74;
    }

LABEL_30:
    if (v33 != v37)
    {
      goto LABEL_69;
    }

    if (v33 < 1)
    {
      goto LABEL_57;
    }

    if (v31 > 1)
    {
      if (v31 != 2)
      {
        memset(v82, 0, 14);
LABEL_49:
        v51 = v72;
        sub_22FEEBB68(v82, v30, v29, &v81);
        v72 = v51;
        if (!v81)
        {
          goto LABEL_69;
        }

        goto LABEL_57;
      }

      v41 = *(v27 + 16);
      v40 = *(v27 + 24);
      v79 = v41;
      v68 = v40;
      v42 = sub_22FFB0588();
      if (v42)
      {
        v43 = v42;
        v44 = sub_22FFB05B8();
        v45 = v79;
        if (__OFSUB__(v79, v44))
        {
          goto LABEL_79;
        }

        v67 = v79 - v44 + v43;
      }

      else
      {
        v67 = 0;
        v45 = v79;
      }

      if (__OFSUB__(v68, v45))
      {
        goto LABEL_78;
      }

      sub_22FFB05A8();
      v52 = v67;
    }

    else
    {
      if (!v31)
      {
        v82[0] = *(v21 + 1);
        LOWORD(v82[1]) = v28;
        BYTE2(v82[1]) = BYTE2(v28);
        BYTE3(v82[1]) = BYTE3(v28);
        BYTE4(v82[1]) = BYTE4(v28);
        BYTE5(v82[1]) = BYTE5(v28);
        goto LABEL_49;
      }

      v46 = v27;
      v47 = v27 >> 32;
      v79 = v47 - v46;
      if (v47 < v46)
      {
        goto LABEL_77;
      }

      v48 = sub_22FFB0588();
      if (v48)
      {
        v68 = v48;
        v49 = sub_22FFB05B8();
        if (__OFSUB__(v46, v49))
        {
          goto LABEL_80;
        }

        v50 = v46 - v49 + v68;
      }

      else
      {
        v50 = 0;
      }

      sub_22FFB05A8();
      v52 = v50;
    }

    v53 = v72;
    sub_22FEEBB68(v52, v30, v29, v82);
    v72 = v53;
    v12 = v71;
    if ((v82[0] & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_57:
    v79 = v22;
    v54 = v80[6];
    v55 = *(v12 + 48);
    v56 = v77;
    sub_22FEBF3A4(&v21[v54], v77, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FEBF3A4(&v18[v54], v56 + v55, &qword_27DAF2130, &unk_22FFB5C80);
    v57 = *v76;
    v58 = v78;
    if ((*v76)(v56, 1, v78) != 1)
    {
      break;
    }

    if (v57(v56 + v55, 1, v58) != 1)
    {
      goto LABEL_68;
    }

    sub_22FEAEA34(v56, &qword_27DAF2130, &unk_22FFB5C80);
    v59 = v79;
    v18 = v74;
    v21 = v75;
LABEL_62:
    if (!sub_22FF1AD24(*&v21[v80[7]], *&v18[v80[7]]))
    {
      goto LABEL_69;
    }

    v63 = v80[8];
    sub_22FFB0F88();
    sub_22FEEC260(&qword_27DAF2128, MEMORY[0x277D216C8]);
    v64 = sub_22FFB1478();
    sub_22FEEC198(v18, type metadata accessor for Proto_SealedHash.Entry);
    sub_22FEEC198(v21, type metadata accessor for Proto_SealedHash.Entry);
    if (v64)
    {
      v22 = v59 - 1;
      v25 += v73;
      v24 += v73;
      if (v59 != 1)
      {
        continue;
      }
    }

    goto LABEL_71;
  }

  v60 = v70;
  sub_22FEBF3A4(v56, v70, &qword_27DAF2130, &unk_22FFB5C80);
  if (v57(v56 + v55, 1, v58) != 1)
  {
    v61 = v69;
    sub_22FEEC1F8(v56 + v55, v69, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    v62 = static Proto_SealedHash.Entry.OneOf_Info.== infix(_:_:)(v60, v61);
    sub_22FEEC198(v61, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    sub_22FEEC198(v60, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    sub_22FEAEA34(v56, &qword_27DAF2130, &unk_22FFB5C80);
    v12 = v71;
    v59 = v79;
    v18 = v74;
    v21 = v75;
    if ((v62 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_62;
  }

  sub_22FEEC198(v60, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
LABEL_68:
  sub_22FEAEA34(v56, &qword_27DAF2138, &qword_22FFB90D0);
  v18 = v74;
  v21 = v75;
LABEL_69:
  sub_22FEEC198(v18, type metadata accessor for Proto_SealedHash.Entry);
  sub_22FEEC198(v21, type metadata accessor for Proto_SealedHash.Entry);
LABEL_70:
  v64 = 0;
LABEL_71:
  v65 = *MEMORY[0x277D85DE8];
  return v64 & 1;
}

uint64_t sub_22FEE8A98(uint64_t a1, uint64_t a2)
{
  v131[3] = *MEMORY[0x277D85DE8];
  v125 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  v4 = *(v125 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v125);
  v114 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2140, &qword_22FFB5C90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v106 - v9;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2148, &qword_22FFB5C98);
  v11 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v120 = &v106 - v12;
  v119 = type metadata accessor for LogEntry(0);
  v13 = *(v119 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v119);
  v115 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v116 = &v106 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2158, &unk_22FFB7B80);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v118 = &v106 - v21;
  v127 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v22 = *(v127 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v127);
  v126 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v106 - v27;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2110, &qword_22FFB7B90);
  v29 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v124 = &v106 - v30;
  v129 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0);
  v31 = *(*(v129 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v129);
  v34 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v37 = &v106 - v36;
  v38 = *(a1 + 16);
  if (v38 != *(a2 + 16))
  {
    goto LABEL_112;
  }

  if (!v38 || a1 == a2)
  {
    v101 = 1;
    goto LABEL_113;
  }

  v109 = v19;
  v106 = v10;
  v110 = 0;
  v39 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v40 = a1 + v39;
  v41 = a2 + v39;
  v113 = (v22 + 48);
  v108 = (v13 + 48);
  v107 = (v4 + 48);
  v111 = *(v35 + 72);
  v42 = &qword_27DAF37C0;
  v43 = v124;
  v112 = v28;
  while (1)
  {
    v128 = v38;
    sub_22FEEC130(v40, v37, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse);
    if (!v128)
    {
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
    }

    sub_22FEEC130(v41, v34, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse);
    v44 = *v37;
    if (v37[8] == 1)
    {
      v44 = qword_22FFB5CA8[v44];
    }

    v45 = *v34;
    v46 = v34[8];
    v121 = v41;
    v122 = v40;
    if (v46)
    {
      if (v45 <= 2)
      {
        if (v45)
        {
          if (v45 == 1)
          {
            if (v44 != 1)
            {
              goto LABEL_111;
            }
          }

          else if (v44 != 3)
          {
            goto LABEL_111;
          }
        }

        else if (v44)
        {
          goto LABEL_111;
        }
      }

      else if (v45 > 4)
      {
        if (v45 == 5)
        {
          if (v44 != 6)
          {
            goto LABEL_111;
          }
        }

        else if (v44 != 7)
        {
          goto LABEL_111;
        }
      }

      else if (v45 == 3)
      {
        if (v44 != 4)
        {
          goto LABEL_111;
        }
      }

      else if (v44 != 5)
      {
        goto LABEL_111;
      }
    }

    else if (v44 != v45)
    {
      goto LABEL_111;
    }

    v47 = *(v37 + 2);
    v48 = *(v37 + 3);
    v49 = *(v34 + 2);
    v50 = *(v34 + 3);
    v51 = v48 >> 62;
    v52 = v50 >> 62;
    if (v48 >> 62 == 3)
    {
      v53 = 0;
      if (!v47 && v48 == 0xC000000000000000 && v50 >> 62 == 3)
      {
        v53 = 0;
        if (!v49 && v50 == 0xC000000000000000)
        {
          goto LABEL_71;
        }
      }

LABEL_31:
      if (v52 <= 1)
      {
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    if (v51 > 1)
    {
      if (v51 == 2)
      {
        v59 = *(v47 + 16);
        v58 = *(v47 + 24);
        v56 = __OFSUB__(v58, v59);
        v53 = v58 - v59;
        if (v56)
        {
          goto LABEL_118;
        }

        goto LABEL_31;
      }

      v53 = 0;
      if (v52 <= 1)
      {
        goto LABEL_32;
      }
    }

    else if (v51)
    {
      LODWORD(v53) = HIDWORD(v47) - v47;
      if (__OFSUB__(HIDWORD(v47), v47))
      {
        goto LABEL_117;
      }

      v53 = v53;
      if (v52 <= 1)
      {
LABEL_32:
        if (v52)
        {
          LODWORD(v57) = HIDWORD(v49) - v49;
          if (__OFSUB__(HIDWORD(v49), v49))
          {
            goto LABEL_116;
          }

          v57 = v57;
        }

        else
        {
          v57 = BYTE6(v50);
        }

        goto LABEL_42;
      }
    }

    else
    {
      v53 = BYTE6(v48);
      if (v52 <= 1)
      {
        goto LABEL_32;
      }
    }

LABEL_25:
    if (v52 != 2)
    {
      if (v53)
      {
        goto LABEL_111;
      }

      goto LABEL_71;
    }

    v55 = *(v49 + 16);
    v54 = *(v49 + 24);
    v56 = __OFSUB__(v54, v55);
    v57 = v54 - v55;
    if (v56)
    {
      goto LABEL_115;
    }

LABEL_42:
    if (v53 != v57)
    {
      goto LABEL_111;
    }

    if (v53 < 1)
    {
      goto LABEL_71;
    }

    if (v51 <= 1)
    {
      if (!v51)
      {
        v131[0] = *(v37 + 2);
        LOWORD(v131[1]) = v48;
        BYTE2(v131[1]) = BYTE2(v48);
        BYTE3(v131[1]) = BYTE3(v48);
        BYTE4(v131[1]) = BYTE4(v48);
        BYTE5(v131[1]) = BYTE5(v48);
        v60 = v110;
        sub_22FEEBB68(v131, v49, v50, &v130);
        v110 = v60;
        v43 = v124;
        if (!v130)
        {
          goto LABEL_111;
        }

        goto LABEL_71;
      }

      v65 = v42;
      v66 = v47;
      if (v47 >> 32 < v47)
      {
        goto LABEL_119;
      }

      v63 = sub_22FFB0588();
      if (v63)
      {
        v67 = sub_22FFB05B8();
        if (__OFSUB__(v66, v67))
        {
          goto LABEL_122;
        }

        v63 += v66 - v67;
      }

      v42 = v65;
      goto LABEL_68;
    }

    if (v51 == 2)
    {
      v61 = *(v47 + 16);
      v62 = *(v47 + 24);
      v63 = sub_22FFB0588();
      if (v63)
      {
        v64 = sub_22FFB05B8();
        if (__OFSUB__(v61, v64))
        {
          goto LABEL_121;
        }

        v63 += v61 - v64;
      }

      if (__OFSUB__(v62, v61))
      {
        goto LABEL_120;
      }

LABEL_68:
      sub_22FFB05A8();
      v68 = v63;
      v69 = v110;
      sub_22FEEBB68(v68, v49, v50, v131);
      v110 = v69;
      v28 = v112;
      v43 = v124;
      if ((v131[0] & 1) == 0)
      {
        goto LABEL_111;
      }

      goto LABEL_71;
    }

    memset(v131, 0, 14);
    v70 = v110;
    sub_22FEEBB68(v131, v49, v50, &v130);
    v110 = v70;
    v43 = v124;
    if (!v130)
    {
      goto LABEL_111;
    }

LABEL_71:
    v71 = *(v129 + 32);
    v72 = *(v123 + 48);
    sub_22FEBF3A4(&v37[v71], v43, v42, &unk_22FFB5C60);
    sub_22FEBF3A4(&v34[v71], v43 + v72, v42, &unk_22FFB5C60);
    v73 = *v113;
    v74 = v127;
    if ((*v113)(v43, 1, v127) == 1)
    {
      if (v73(v43 + v72, 1, v74) != 1)
      {
        goto LABEL_102;
      }

      sub_22FEAEA34(v43, v42, &unk_22FFB5C60);
      goto LABEL_88;
    }

    sub_22FEBF3A4(v43, v28, v42, &unk_22FFB5C60);
    if (v73(v43 + v72, 1, v74) == 1)
    {
      break;
    }

    v75 = v126;
    sub_22FEEC1F8(v43 + v72, v126, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    v76 = *(v74 + 20);
    v77 = *(v109 + 48);
    v78 = v118;
    sub_22FEBF3A4(&v28[v76], v118, &qword_27DAF2150, &qword_22FFB5CA0);
    sub_22FEBF3A4(v75 + v76, v78 + v77, &qword_27DAF2150, &qword_22FFB5CA0);
    v79 = *v108;
    v80 = v119;
    v81 = (*v108)(v78, 1, v119);
    v82 = v120;
    if (v81 == 1)
    {
      if (v79(v78 + v77, 1, v80) != 1)
      {
        goto LABEL_104;
      }

      sub_22FEAEA34(v78, &qword_27DAF2150, &qword_22FFB5CA0);
      v83 = v107;
      v28 = v112;
    }

    else
    {
      v84 = v116;
      sub_22FEBF3A4(v78, v116, &qword_27DAF2150, &qword_22FFB5CA0);
      if (v79(v78 + v77, 1, v80) == 1)
      {
        sub_22FEEC198(v84, type metadata accessor for LogEntry);
LABEL_104:
        sub_22FEAEA34(v78, &qword_27DAF2158, &unk_22FFB7B80);
LABEL_108:
        v28 = v112;
LABEL_109:
        sub_22FEEC198(v126, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
        sub_22FEEC198(v28, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
        v102 = &qword_27DAF37C0;
        v103 = &unk_22FFB5C60;
        goto LABEL_110;
      }

      v85 = v115;
      sub_22FEEC1F8(v78 + v77, v115, type metadata accessor for LogEntry);
      v86 = static LogEntry.== infix(_:_:)(v84, v85);
      v28 = v112;
      v43 = v124;
      sub_22FEEC198(v85, type metadata accessor for LogEntry);
      sub_22FEEC198(v84, type metadata accessor for LogEntry);
      sub_22FEAEA34(v78, &qword_27DAF2150, &qword_22FFB5CA0);
      v83 = v107;
      if ((v86 & 1) == 0)
      {
        goto LABEL_109;
      }
    }

    v87 = *(v127 + 24);
    v88 = *(v117 + 48);
    sub_22FEBF3A4(&v28[v87], v82, &qword_27DAF2140, &qword_22FFB5C90);
    sub_22FEBF3A4(v126 + v87, v82 + v88, &qword_27DAF2140, &qword_22FFB5C90);
    v89 = *v83;
    if ((*v83)(v82, 1, v125) == 1)
    {
      if (v89(v82 + v88, 1, v125) != 1)
      {
        goto LABEL_106;
      }

      sub_22FEAEA34(v82, &qword_27DAF2140, &qword_22FFB5C90);
      v42 = &qword_27DAF37C0;
    }

    else
    {
      v90 = v106;
      sub_22FEBF3A4(v82, v106, &qword_27DAF2140, &qword_22FFB5C90);
      if (v89(v82 + v88, 1, v125) == 1)
      {
        sub_22FEEC198(v90, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
        v28 = v112;
LABEL_106:
        sub_22FEAEA34(v82, &qword_27DAF2148, &qword_22FFB5C98);
        goto LABEL_109;
      }

      v91 = v114;
      sub_22FEEC1F8(v82 + v88, v114, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
      v92 = *(v125 + 20);
      v93 = *(v90 + v92);
      v94 = *(v91 + v92);
      if (v93 != v94)
      {
        v95 = *(v90 + v92);

        v96 = sub_22FEFFCE0(v93, v94);

        if (!v96)
        {
          sub_22FEEC198(v91, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
          sub_22FEEC198(v90, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
          sub_22FEAEA34(v82, &qword_27DAF2140, &qword_22FFB5C90);
          v43 = v124;
          goto LABEL_108;
        }
      }

      sub_22FFB0F88();
      sub_22FEEC260(&qword_27DAF2128, MEMORY[0x277D216C8]);
      v97 = sub_22FFB1478();
      sub_22FEEC198(v91, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
      sub_22FEEC198(v90, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
      sub_22FEAEA34(v82, &qword_27DAF2140, &qword_22FFB5C90);
      v43 = v124;
      v42 = &qword_27DAF37C0;
      v28 = v112;
      if ((v97 & 1) == 0)
      {
        goto LABEL_109;
      }
    }

    sub_22FFB0F88();
    sub_22FEEC260(&qword_27DAF2128, MEMORY[0x277D216C8]);
    v98 = v126;
    v99 = sub_22FFB1478();
    sub_22FEEC198(v98, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    sub_22FEEC198(v28, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    sub_22FEAEA34(v43, &qword_27DAF37C0, &unk_22FFB5C60);
    if ((v99 & 1) == 0)
    {
      goto LABEL_111;
    }

LABEL_88:
    if (*(v37 + 4) != *(v34 + 4))
    {
      goto LABEL_111;
    }

    v100 = *(v129 + 28);
    sub_22FFB0F88();
    sub_22FEEC260(&qword_27DAF2128, MEMORY[0x277D216C8]);
    v101 = sub_22FFB1478();
    sub_22FEEC198(v34, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse);
    sub_22FEEC198(v37, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse);
    if (v101)
    {
      v38 = v128 - 1;
      v41 = v121 + v111;
      v40 = v122 + v111;
      if (v128 != 1)
      {
        continue;
      }
    }

    goto LABEL_113;
  }

  sub_22FEEC198(v28, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
LABEL_102:
  v102 = &qword_27DAF2110;
  v103 = &qword_22FFB7B90;
LABEL_110:
  sub_22FEAEA34(v43, v102, v103);
LABEL_111:
  sub_22FEEC198(v34, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse);
  sub_22FEEC198(v37, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse);
LABEL_112:
  v101 = 0;
LABEL_113:
  v104 = *MEMORY[0x277D85DE8];
  return v101 & 1;
}