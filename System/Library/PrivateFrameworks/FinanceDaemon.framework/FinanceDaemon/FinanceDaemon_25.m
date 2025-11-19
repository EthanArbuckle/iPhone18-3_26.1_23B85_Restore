uint64_t sub_226D1E68C()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);

  return swift_deallocClassInstance();
}

uint64_t sub_226D1E728(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226D1E788@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_226D671FC() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);
  v6 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_226D1C570(a1);
}

void sub_226D1E82C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_226D1DA10(*(v0 + 16));
}

uint64_t sub_226D1E86C(uint64_t a1)
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

  return sub_226D1CF34(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_226D1E9A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226D1E9E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_226D1DB90(a1);
}

uint64_t sub_226D1EA08()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_226D6E39C();
    v0 = v3;

    v4 = objc_allocWithZone(MEMORY[0x277CF0188]);
    v5 = sub_226D6E36C();
    v6 = [v4 initWithIdentifier_];

    if (v6)
    {

      return v6;
    }

    __break(1u);
  }

  sub_226D6EEFC();

  v8 = [v0 mainBundle];
  v9 = [v8 description];

  v10 = sub_226D6E39C();
  v12 = v11;

  MEMORY[0x22AA8A510](v10, v12);

  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t BankConnectServiceImplementation.insertOrUpdateInstitution(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_226D1EBD0, 0, 0);
}

uint64_t sub_226D1EBD0()
{
  v2 = v0[2];
  v1 = v0[3];
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

id sub_226D1ECD0(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226D6AA6C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_226D6AA5C();
  v7 = sub_226D6AA3C();

  if (!v2)
  {

    v11[0] = 0;
    if ([a2 save_])
    {
      result = v11[0];
    }

    else
    {
      v9 = v11[0];
      sub_226D6D04C();

      result = swift_willThrow();
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ApplicationIdentifier.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void *sub_226D1EE0C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_226D1EE18@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_226D1EE40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 944))
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

uint64_t sub_226D1EE88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 936) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 944) = 1;
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

    *(result + 944) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_226D1EFD0(uint64_t a1)
{
  result = sub_226B41FC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226D1EFF8(uint64_t a1)
{
  result = sub_226B6CA08();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226D1F020@<X0>(uint64_t *a1@<X8>)
{
  sub_226AE532C(v1 + 416, v14);
  sub_226AE532C(v1 + 248, v13);
  sub_226AE532C(v1 + 8, v12);
  v3 = *(v1 + 408);
  v4 = *(v1 + 456);
  sub_226D1F810(v1 + 664, v10);
  sub_226AE532C(v1 + 128, v9);
  v5 = type metadata accessor for BankConnectPassMatcher();
  v6 = swift_allocObject();
  sub_226AC484C(v14, v6 + 16);
  sub_226AC484C(v13, v6 + 56);
  sub_226AC484C(v12, v6 + 96);
  *(v6 + 136) = v3;
  *(v6 + 144) = v4;
  v7 = v10[1];
  *(v6 + 152) = v10[0];
  *(v6 + 168) = v7;
  *(v6 + 184) = v11;
  sub_226AC484C(v9, v6 + 192);
  a1[3] = v5;
  a1[4] = &protocol witness table for BankConnectPassMatcher;
  *a1 = v6;
}

uint64_t sub_226D1F120@<X0>(void *a1@<X8>)
{
  v40 = *v1;
  v41 = a1;
  sub_226AE532C((v1 + 6), v59);
  sub_226AE532C((v1 + 21), v57);
  sub_226AE532C((v1 + 16), v56);
  sub_226AE532C((v1 + 11), v55);
  sub_226AE532C((v1 + 1), v54);
  v52 = &type metadata for BankConnectEnvironmentImplementation;
  v53 = sub_226B41FC0();
  *&v51 = swift_allocObject();
  sub_226B42014(v1, v51 + 16);
  v2 = sub_226D6BE3C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  v5 = sub_226D6BDFC();
  v52 = v2;
  v53 = MEMORY[0x277CC8178];
  *&v51 = v5;
  sub_226D1F610(v49);
  sub_226D1F020(v48);
  v6 = v58;
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  __swift_mutable_project_boxed_opaque_existential_1(v55, v55[3]);
  v12 = v50;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v47[3] = &type metadata for BankConnectAccountMatcherProvider;
  v47[4] = &off_283A6A768;
  v19 = swift_allocObject();
  v47[0] = v19;
  v20 = v10[1];
  v19[1] = *v10;
  v19[2] = v20;
  v19[3] = v10[2];
  v46[3] = &type metadata for BankConnectPassKitTransactionsDataSourceProvider;
  v46[4] = &off_283A71A38;
  v21 = type metadata accessor for BankConnectAccountUnlinker();
  v45[3] = v21;
  v45[4] = &off_283A720F8;
  v45[0] = v18;
  v22 = type metadata accessor for BankConnectAccountLinker();
  v23 = swift_allocObject();
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v47, &type metadata for BankConnectAccountMatcherProvider);
  v25 = *(off_283A6A738 + 8);
  MEMORY[0x28223BE20](v24);
  v27 = (&v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  __swift_mutable_project_boxed_opaque_existential_1(v46, &type metadata for BankConnectPassKitTransactionsDataSourceProvider);
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v45, v21);
  v30 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = (&v39 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  v34 = *v32;
  v43 = &type metadata for BankConnectAccountMatcherProvider;
  v44 = &off_283A6A768;
  v35 = swift_allocObject();
  *&v42 = v35;
  v36 = v27[1];
  v35[1] = *v27;
  v35[2] = v36;
  v35[3] = v27[2];
  v23[21] = &type metadata for BankConnectPassKitTransactionsDataSourceProvider;
  v23[22] = &off_283A71A38;
  v23[36] = v21;
  v23[37] = &off_283A720F8;
  v23[33] = v34;
  v23[2] = v40;
  sub_226AC484C(v59, (v23 + 3));
  sub_226AC484C(&v42, (v23 + 8));
  sub_226AC484C(v56, (v23 + 13));
  sub_226AC484C(v54, (v23 + 23));
  sub_226AC484C(&v51, (v23 + 28));
  sub_226AC484C(v48, (v23 + 38));
  __swift_destroy_boxed_opaque_existential_0Tm(v45);
  __swift_destroy_boxed_opaque_existential_0Tm(v46);
  __swift_destroy_boxed_opaque_existential_0Tm(v47);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  __swift_destroy_boxed_opaque_existential_0Tm(v55);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v57);
  v38 = v41;
  v41[3] = v22;
  v38[4] = &off_283A72158;
  *v38 = v23;
  return result;
}

uint64_t sub_226D1F610@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_226AE532C((v1 + 6), v9);
  sub_226AE532C((v1 + 58), v8);
  sub_226AE532C((v1 + 1), v7);
  v4 = type metadata accessor for BankConnectAccountUnlinker();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  sub_226AC484C(v9, v5 + 24);
  sub_226AC484C(v8, v5 + 64);
  sub_226AC484C(v7, v5 + 104);
  a1[3] = v4;
  a1[4] = &off_283A720F8;
  *a1 = v5;
}

uint64_t sub_226D1F810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FD0, &qword_226D708A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D1F888@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v166 = a5;
  v151 = a4;
  v157 = a2;
  v145 = a7;
  v147 = sub_226D677FC();
  v146 = *(v147 - 8);
  v10 = *(v146 + 64);
  MEMORY[0x28223BE20](v147);
  v144 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6690, &qword_226D74720);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v143 = &v143 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v161 = &v143 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6678, &unk_226D71890);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v160 = &v143 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v159 = &v143 - v23;
  v24 = _s7ChangesV11FulfillmentVMa(0);
  v168 = *(v24 - 1);
  v25 = *(v168 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v154 = &v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v167 = &v143 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v153 = &v143 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v143 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6688, &unk_226D718A0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v158 = &v143 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v165 = &v143 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v143 - v41;
  MEMORY[0x28223BE20](v40);
  v155 = &v143 - v43;
  v150 = a3;
  v149 = a6;
  v148 = a1;
  if (!a1)
  {
    v170 = sub_226B22808(MEMORY[0x277D84F90]);
LABEL_41:
    v89 = sub_226D6B30C();
    v90 = sub_226B22808(MEMORY[0x277D84F90]);
    v91 = v167;
    if (v89 >> 62)
    {
      goto LABEL_77;
    }

    v92 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v92)
    {
LABEL_78:

      v136 = v150;
      v137 = v143;
      sub_226AC40E8(v150, v143, &qword_27D7A6690, &qword_226D74720);
      v138 = v146;
      v139 = v144;
      v140 = v149;
      v141 = v147;
      (*(v146 + 16))(v144, v149, v147);
      sub_226D20CB0(v170, v157 & 1, v137, v90, v166 & 1, v139, v145);

      (*(v138 + 8))(v140, v141);
      return sub_226AC47B0(v136, &qword_27D7A6690, &qword_226D74720);
    }

LABEL_43:
    v93 = 0;
    v169 = (v89 & 0xC000000000000001);
    v163 = v89;
    v164 = v89 & 0xFFFFFFFFFFFFFF8;
    v171 = (v168 + 56);
    v156 = (v168 + 48);
    v162 = v92;
    while (1)
    {
      if (v169)
      {
        v98 = MEMORY[0x22AA8AFD0](v93, v89);
      }

      else
      {
        if (v93 >= *(v164 + 16))
        {
          goto LABEL_74;
        }

        v98 = *(v89 + 8 * v93 + 32);
      }

      v99 = v98;
      if (__OFADD__(v93, 1))
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        v92 = sub_226D6EDFC();
        if (!v92)
        {
          goto LABEL_78;
        }

        goto LABEL_43;
      }

      v172 = v93 + 1;
      v100 = [v98 trackingNumber];
      v174 = v90;
      if (v100)
      {
        v101 = v100;
        v173 = sub_226D6E39C();
        v103 = v102;
      }

      else
      {
        v173 = 0;
        v103 = 0;
      }

      v104 = v24[5];
      v105 = sub_226D6763C();
      (*(*(v105 - 8) + 56))(v91 + v104, 1, 1, v105);
      v106 = v24[6];
      v107 = sub_226D6760C();
      (*(*(v107 - 8) + 56))(v91 + v106, 1, 1, v107);
      v108 = v24[7];
      v109 = sub_226D6762C();
      (*(*(v109 - 8) + 56))(v91 + v108, 1, 1, v109);
      if ((v166 & 1) == 0)
      {
        sub_226AC47B0(v91 + v104, &qword_27D7A6680, &unk_226D74710);
        sub_226AC47B0(v91 + v106, &qword_27D7A6678, &unk_226D71890);
        sub_226AC47B0(v91 + v108, &qword_27D7A6670, &qword_226D71888);
        v116 = *v171;
        v115 = v165;
        (*v171)(v165, 1, 1, v24);
LABEL_61:
        sub_226AC47B0(v115, &qword_27D7A6688, &unk_226D718A0);
        v90 = v174;
        v126 = sub_226C2FD40(v173, v103);
        v128 = v127;

        if (v128)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v175 = v90;
          v95 = v158;
          v96 = v172;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_226C3788C();
            v95 = v158;
            v90 = v175;
          }

          v130 = *(v90[6] + 16 * v126 + 8);

          sub_226D22808(v90[7] + *(v168 + 72) * v126, v95);
          sub_226D4A50C(v126, v90);

          v94 = 0;
        }

        else
        {

          v94 = 1;
          v95 = v158;
          v96 = v172;
        }

        v116(v95, v94, 1, v24);
        sub_226AC47B0(v95, &qword_27D7A6688, &unk_226D718A0);
        v97 = v162;
        v89 = v163;
        goto LABEL_46;
      }

      v89 = v99;
      sub_226D6C6AC();
      v110 = v24;
      v111 = v159;
      sub_226D6C68C();
      v112 = v111;
      v24 = v110;
      v91 = v167;
      sub_226AFD680(v112, &v167[v104], &qword_27D7A6680, &unk_226D74710);
      v113 = v160;
      sub_226D6C66C();
      sub_226AFD680(v113, v91 + v106, &qword_27D7A6678, &unk_226D71890);
      v114 = v161;
      sub_226D6C67C();

      sub_226AFD680(v114, v91 + v108, &qword_27D7A6670, &qword_226D71888);
      v115 = v165;
      sub_226D227A4(v91, v165);
      v116 = *v171;
      (*v171)(v115, 0, 1, v24);
      sub_226D22924(v91);
      if ((*v156)(v115, 1, v24) == 1)
      {
        goto LABEL_61;
      }

      sub_226D22808(v115, v154);
      v90 = v174;
      v117 = swift_isUniquelyReferenced_nonNull_native();
      v175 = v90;
      v118 = v173;
      v119 = sub_226C2FD40(v173, v103);
      v121 = v90[2];
      v122 = (v120 & 1) == 0;
      v76 = __OFADD__(v121, v122);
      v123 = v121 + v122;
      if (v76)
      {
        goto LABEL_75;
      }

      v124 = v120;
      if (v90[3] < v123)
      {
        break;
      }

      if (v117)
      {
        goto LABEL_66;
      }

      v132 = v119;
      sub_226C3788C();
      v119 = v132;
      if ((v124 & 1) == 0)
      {
LABEL_70:
        v90 = v175;
        v175[(v119 >> 6) + 8] |= 1 << v119;
        v133 = (v90[6] + 16 * v119);
        *v133 = v118;
        v133[1] = v103;
        sub_226D22808(v154, v90[7] + *(v168 + 72) * v119);

        v134 = v90[2];
        v76 = __OFADD__(v134, 1);
        v135 = v134 + 1;
        if (v76)
        {
          goto LABEL_76;
        }

        v90[2] = v135;
        goto LABEL_72;
      }

LABEL_67:
      v131 = v119;

      v90 = v175;
      sub_226AFD6E8(v154, v175[7] + *(v168 + 72) * v131);

LABEL_72:
      v97 = v162;
      v89 = v163;
      v96 = v172;
LABEL_46:
      ++v93;
      if (v96 == v97)
      {
        goto LABEL_78;
      }
    }

    sub_226C30E60(v123, v117);
    v119 = sub_226C2FD40(v118, v103);
    if ((v124 & 1) != (v125 & 1))
    {
      goto LABEL_79;
    }

LABEL_66:
    if ((v124 & 1) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  v44 = a1;
  v45 = sub_226D6B30C();

  v46 = sub_226B22808(MEMORY[0x277D84F90]);
  if (v45 >> 62)
  {
    goto LABEL_39;
  }

  v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v48 = v155;
  if (!v47)
  {
LABEL_40:
    v170 = v46;

    goto LABEL_41;
  }

LABEL_4:
  v49 = 0;
  v163 = v45 & 0xFFFFFFFFFFFFFF8;
  v164 = v45 & 0xC000000000000001;
  v169 = (v168 + 56);
  v152 = (v168 + 48);
  v162 = v45;
  v156 = v47;
  while (1)
  {
    if (v164)
    {
      v51 = MEMORY[0x22AA8AFD0](v49, v45);
      v52 = (v49 + 1);
      if (__OFADD__(v49, 1))
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v49 >= *(v163 + 16))
      {
        goto LABEL_36;
      }

      v51 = *(v45 + 8 * v49 + 32);
      v52 = (v49 + 1);
      if (__OFADD__(v49, 1))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        v47 = sub_226D6EDFC();
        v48 = v155;
        if (!v47)
        {
          goto LABEL_40;
        }

        goto LABEL_4;
      }
    }

    v170 = v46;
    v174 = v51;
    v53 = [v51 trackingNumber];
    if (v53)
    {
      v54 = v53;
      v172 = sub_226D6E39C();
      v173 = v55;
    }

    else
    {
      v172 = 0;
      v173 = 0;
    }

    v171 = v52;
    v56 = v24[5];
    v57 = sub_226D6763C();
    (*(*(v57 - 8) + 56))(&v33[v56], 1, 1, v57);
    v58 = v24[6];
    v59 = sub_226D6760C();
    (*(*(v59 - 8) + 56))(&v33[v58], 1, 1, v59);
    v60 = v24[7];
    v61 = sub_226D6762C();
    (*(*(v61 - 8) + 56))(&v33[v60], 1, 1, v61);
    if ((v157 & 1) == 0)
    {
      sub_226AC47B0(&v33[v56], &qword_27D7A6680, &unk_226D74710);
      sub_226AC47B0(&v33[v58], &qword_27D7A6678, &unk_226D71890);
      sub_226AC47B0(&v33[v60], &qword_27D7A6670, &qword_226D71888);
      v68 = *v169;
      (*v169)(v48, 1, 1, v24);
      v46 = v170;
LABEL_21:
      sub_226AC47B0(v48, &qword_27D7A6688, &unk_226D718A0);
      v80 = sub_226C2FD40(v172, v173);
      v82 = v81;

      if (v82)
      {
        v83 = swift_isUniquelyReferenced_nonNull_native();
        v175 = v46;
        if (!v83)
        {
          sub_226C3788C();
          v46 = v175;
        }

        v84 = *(v46[6] + 16 * v80 + 8);

        sub_226D22808(v46[7] + *(v168 + 72) * v80, v42);
        sub_226D4A50C(v80, v46);

        v50 = 0;
      }

      else
      {

        v50 = 1;
      }

      v68(v42, v50, 1, v24);
      sub_226AC47B0(v42, &qword_27D7A6688, &unk_226D718A0);
      goto LABEL_7;
    }

    v62 = v174;
    sub_226D6C6AC();
    v63 = v42;
    v64 = v159;
    sub_226D6C68C();
    v65 = v64;
    v42 = v63;
    v48 = v155;
    sub_226AFD680(v65, &v33[v56], &qword_27D7A6680, &unk_226D74710);
    v66 = v160;
    sub_226D6C66C();
    sub_226AFD680(v66, &v33[v58], &qword_27D7A6678, &unk_226D71890);
    v67 = v161;
    sub_226D6C67C();

    sub_226AFD680(v67, &v33[v60], &qword_27D7A6670, &qword_226D71888);
    sub_226D227A4(v33, v48);
    v68 = *v169;
    (*v169)(v48, 0, 1, v24);
    sub_226D22924(v33);
    v69 = (*v152)(v48, 1, v24);
    v46 = v170;
    if (v69 == 1)
    {
      goto LABEL_21;
    }

    sub_226D22808(v48, v153);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v175 = v46;
    v71 = v172;
    v70 = v173;
    v46 = v170;
    v72 = sub_226C2FD40(v172, v173);
    v74 = *(v170 + 16);
    v75 = (v73 & 1) == 0;
    v76 = __OFADD__(v74, v75);
    v77 = v74 + v75;
    if (v76)
    {
      goto LABEL_37;
    }

    v78 = v73;
    if (*(v170 + 24) < v77)
    {
      break;
    }

    if (v45)
    {
      goto LABEL_26;
    }

    v45 = v72;
    sub_226C3788C();
    v72 = v45;
    if (v78)
    {
LABEL_27:
      v85 = v72;

      v46 = v175;
      sub_226AFD6E8(v153, v175[7] + *(v168 + 72) * v85);

      v48 = v155;
      goto LABEL_7;
    }

LABEL_32:
    v46 = v175;
    v175[(v72 >> 6) + 8] |= 1 << v72;
    v86 = (v46[6] + 16 * v72);
    *v86 = v71;
    v86[1] = v70;
    sub_226D22808(v153, v46[7] + *(v168 + 72) * v72);

    v87 = v46[2];
    v76 = __OFADD__(v87, 1);
    v88 = v87 + 1;
    if (v76)
    {
      goto LABEL_38;
    }

    v46[2] = v88;
    v48 = v155;
LABEL_7:
    v45 = v162;
    ++v49;
    if (v171 == v156)
    {
      goto LABEL_40;
    }
  }

  sub_226C30E60(v77, v45);
  v72 = sub_226C2FD40(v71, v70);
  if ((v78 & 1) == (v79 & 1))
  {
LABEL_26:
    if (v78)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

LABEL_79:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6698, &unk_226D718B0);
  result = sub_226D6F25C();
  __break(1u);
  return result;
}

uint64_t sub_226D208E8()
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A30, &qword_226D738B0);
  v1 = *(v33 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v33);
  v35 = &v25 - v3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F28, &unk_226D738C0);
  v4 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v25 - v5;
  v6 = *(v0 + *(_s7ChangesVMa(0) + 24));
  v7 = *(v6 + 64);
  v26 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7;
  v11 = (v8 + 63) >> 6;
  v30 = v1 + 16;
  v29 = *MEMORY[0x277CC8598];
  v34 = v1;
  v27 = v1 + 8;
  v28 = v1 + 104;
  v36 = v6;

  v13 = 0;
  v14 = v34;
  while (v10)
  {
    v15 = v13;
LABEL_10:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = v16 | (v15 << 6);
    v18 = (*(v36 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = v31;
    v22 = v33;
    (*(v14 + 16))(&v31[*(v32 + 48)], *(v36 + 56) + *(v14 + 72) * v17, v33);
    *v21 = v19;
    v21[1] = v20;
    v23 = v35;
    (*(v14 + 104))(v35, v29, v22);
    sub_226B50A44();

    LOBYTE(v19) = sub_226D6E35C();
    (*(v14 + 8))(v23, v22);
    result = sub_226AC47B0(v21, &qword_27D7A6F28, &unk_226D738C0);
    if ((v19 & 1) == 0)
    {
      v24 = 1;
LABEL_13:

      return v24;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      v24 = 0;
      goto LABEL_13;
    }

    v10 = *(v26 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226D20BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_226D6CB3C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_226D677FC();
  sub_226D228DC(&qword_27D7A6F18, MEMORY[0x277CC6E00]);
  if ((sub_226D6CB3C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);

  return sub_226B4FCA8(v8, v9);
}

uint64_t sub_226D20CB0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v171 = a6;
  v167 = a5;
  v172 = a3;
  v166 = a2;
  v170 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6690, &qword_226D74720);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v169 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v168 = &v166 - v13;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A30, &qword_226D738B0);
  v14 = *(v200 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v200);
  v185 = &v166 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v175 = &v166 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v192 = &v166 - v21;
  MEMORY[0x28223BE20](v20);
  v182 = &v166 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6688, &unk_226D718A0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v178 = &v166 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v189 = &v166 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v188 = &v166 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v166 - v32;
  MEMORY[0x28223BE20](v31);
  v199 = &v166 - v34;
  v197 = _s7ChangesV11FulfillmentVMa(0);
  v35 = *(v197 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v197);
  v194 = &v166 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v198 = &v166 - v40;
  MEMORY[0x28223BE20](v39);
  v184 = &v166 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92D0, &qword_226D7D128);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v177 = (&v166 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = MEMORY[0x28223BE20](v44);
  v176 = (&v166 - v47);
  v48 = MEMORY[0x28223BE20](v46);
  v50 = (&v166 - v49);
  MEMORY[0x28223BE20](v48);
  v183 = (&v166 - v51);
  v52 = sub_226B22610(MEMORY[0x277D84F90]);
  v53 = *(a4 + 64);
  v174 = a4 + 64;
  v54 = 1 << *(a4 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & v53;
  v173 = (v54 + 63) >> 6;
  v193 = v35;
  v195 = (v14 + 32);
  v196 = (v35 + 56);
  v187 = v14;
  v179 = v14 + 40;
  v186 = a4;

  v57 = 0;
  v180 = v50;
  v181 = v33;
  if (!v56)
  {
    goto LABEL_7;
  }

LABEL_6:
  v59 = a1;
  v60 = v57;
LABEL_15:
  v63 = __clz(__rbit64(v56));
  v56 &= v56 - 1;
  v64 = v63 | (v60 << 6);
  v65 = (*(v186 + 48) + 16 * v64);
  v66 = *v65;
  v67 = v65[1];
  v68 = v184;
  sub_226D227A4(*(v186 + 56) + *(v193 + 72) * v64, v184);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92D8, &qword_226D7D130);
  v70 = *(v69 + 48);
  *v50 = v66;
  v50[1] = v67;
  sub_226D22808(v68, v50 + v70);
  (*(*(v69 - 8) + 56))(v50, 0, 1, v69);

  v191 = v60;
  v62 = v183;
  a1 = v59;
  while (1)
  {
    sub_226D2286C(v50, v62);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92D8, &qword_226D7D130);
    v72 = *(v71 - 8);
    v73 = *(v72 + 48);
    v74 = v73(v62, 1, v71);
    v201 = a1;
    if (v74 == 1)
    {
      break;
    }

    v75 = v62;
    v76 = *v62;
    v77 = v62[1];
    sub_226D22808(v75 + *(v71 + 48), v198);
    if (*(a1 + 16))
    {
      v78 = sub_226C2FD40(v76, v77);
      v79 = v181;
      if (v80)
      {
        sub_226D227A4(*(a1 + 56) + *(v193 + 72) * v78, v199);
        v81 = 0;
      }

      else
      {
        v81 = 1;
      }
    }

    else
    {
      v81 = 1;
      v79 = v181;
    }

    v82 = *v196;
    v83 = 1;
    (*v196)(v199, v81, 1, v197);
    v84 = v201;
    v85 = sub_226C2FD40(v76, v77);
    v190 = v76;
    if (v86)
    {
      v87 = v85;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v202 = v84;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_226C3788C();
        v84 = v202;
      }

      v89 = *(*(v84 + 48) + 16 * v87 + 8);

      sub_226D22808(*(v84 + 56) + *(v193 + 72) * v87, v79);
      v201 = v84;
      sub_226D4A50C(v87, v84);
      v83 = 0;
    }

    v90 = v83;
    v91 = v197;
    v82(v79, v90, 1, v197);
    sub_226AC47B0(v79, &qword_27D7A6688, &unk_226D718A0);
    sub_226AC40E8(v199, v188, &qword_27D7A6688, &unk_226D718A0);
    v92 = v189;
    sub_226D227A4(v198, v189);
    v82(v92, 0, 1, v91);
    sub_226D228DC(&qword_27D7A92E0, _s7ChangesV11FulfillmentVMa);
    v93 = v182;
    sub_226D6CB4C();
    v94 = *v195;
    (*v195)(v192, v93, v200);
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v52;
    v96 = v190;
    v97 = sub_226C2FD40(v190, v77);
    v99 = v52[2];
    v100 = (v98 & 1) == 0;
    v101 = __OFADD__(v99, v100);
    v102 = v99 + v100;
    if (v101)
    {
      goto LABEL_74;
    }

    v103 = v98;
    if (v52[3] >= v102)
    {
      v50 = v180;
      if ((v95 & 1) == 0)
      {
        v109 = v97;
        sub_226C37604();
        v50 = v180;
        v97 = v109;
      }

      a1 = v201;
    }

    else
    {
      sub_226C30AA4(v102, v95);
      v97 = sub_226C2FD40(v96, v77);
      if ((v103 & 1) != (v104 & 1))
      {
        goto LABEL_78;
      }

      a1 = v201;
      v50 = v180;
    }

    if (v103)
    {
      v58 = v97;

      v52 = v202;
      (*(v187 + 40))(v202[7] + *(v187 + 72) * v58, v192, v200);
      sub_226AC47B0(v199, &qword_27D7A6688, &unk_226D718A0);
      sub_226D22924(v198);
      v57 = v191;
      if (v56)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v52 = v202;
      v202[(v97 >> 6) + 8] |= 1 << v97;
      v105 = (v52[6] + 16 * v97);
      *v105 = v96;
      v105[1] = v77;
      v94((v52[7] + *(v187 + 72) * v97), v192, v200);
      sub_226AC47B0(v199, &qword_27D7A6688, &unk_226D718A0);
      sub_226D22924(v198);
      v106 = v52[2];
      v101 = __OFADD__(v106, 1);
      v107 = v106 + 1;
      if (v101)
      {
        goto LABEL_76;
      }

      v52[2] = v107;
      v57 = v191;
      if (v56)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    if (v173 <= (v57 + 1))
    {
      v61 = (v57 + 1);
    }

    else
    {
      v61 = v173;
    }

    v62 = v183;
    while (1)
    {
      v60 = (v57 + 1);
      if (__OFADD__(v57, 1))
      {
        __break(1u);
        goto LABEL_73;
      }

      if (v60 >= v173)
      {
        break;
      }

      v56 = *(v174 + 8 * v60);
      ++v57;
      if (v56)
      {
        v59 = a1;
        goto LABEL_15;
      }
    }

    v191 = (v61 - 1);
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92D8, &qword_226D7D130);
    (*(*(v108 - 8) + 56))(v50, 1, 1, v108);
    v56 = 0;
  }

  v191 = v73;

  v110 = *(a1 + 64);
  v190 = a1 + 64;
  v111 = 1 << *(a1 + 32);
  v112 = -1;
  if (v111 < 64)
  {
    v112 = ~(-1 << v111);
  }

  v113 = v112 & v110;
  v183 = ((v111 + 63) >> 6);
  v192 = (v72 + 56);

  v114 = 0;
  v115 = v178;
  while (v113)
  {
    v116 = v115;
    v117 = v114;
LABEL_53:
    v120 = __clz(__rbit64(v113));
    v113 &= v113 - 1;
    v121 = v120 | (v117 << 6);
    v122 = (*(a1 + 48) + 16 * v121);
    v123 = *v122;
    v124 = v122[1];
    v125 = *(a1 + 56) + *(v193 + 72) * v121;
    v126 = v184;
    sub_226D227A4(v125, v184);
    v127 = *(v71 + 48);
    v128 = v177;
    *v177 = v123;
    v128[1] = v124;
    sub_226D22808(v126, v128 + v127);
    (*v192)(v128, 0, 1, v71);

    v119 = v117;
    v129 = v128;
    v115 = v116;
LABEL_54:
    v130 = v176;
    sub_226D2286C(v129, v176);
    v131 = (v191)(v130, 1, v71);
    v132 = v186;
    if (v131 == 1)
    {

      v158 = _s7ChangesVMa(0);
      *(v170 + *(v158 + 24)) = v52;
      LOBYTE(v202) = v166 & 1;
      v203 = v167 & 1;
      sub_226D6CB4C();
      v159 = v172;
      sub_226AC40E8(v172, v168, &qword_27D7A6690, &qword_226D74720);
      v160 = sub_226D677FC();
      v161 = *(v160 - 8);
      v162 = v169;
      v163 = v171;
      (*(v161 + 16))(v169, v171, v160);
      (*(v161 + 56))(v162, 0, 1, v160);
      v164 = *(v158 + 20);
      sub_226D228DC(&qword_27D7A6F18, MEMORY[0x277CC6E00]);
      sub_226D6CB4C();
      (*(v161 + 8))(v163, v160);
      sub_226AC47B0(v159, &qword_27D7A6690, &qword_226D74720);
    }

    v198 = v119;
    v133 = *v130;
    v134 = v130[1];
    sub_226D22808(v130 + *(v71 + 48), v194);
    v135 = *(v132 + 16);
    v199 = v134;
    if (v135 && (v136 = sub_226C2FD40(v133, v134), (v137 & 1) != 0))
    {
      sub_226D227A4(*(v132 + 56) + *(v193 + 72) * v136, v115);
      v138 = 0;
    }

    else
    {
      v138 = 1;
    }

    v139 = v197;
    v140 = *v196;
    (*v196)(v115, v138, 1, v197);
    v141 = v188;
    sub_226D227A4(v194, v188);
    v140(v141, 0, 1, v139);
    sub_226AC40E8(v115, v189, &qword_27D7A6688, &unk_226D718A0);
    sub_226D228DC(&qword_27D7A92E0, _s7ChangesV11FulfillmentVMa);
    v142 = v175;
    sub_226D6CB4C();
    v143 = *v195;
    (*v195)(v185, v142, v200);
    v144 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v52;
    v146 = sub_226C2FD40(v133, v199);
    v147 = v52[2];
    v148 = (v145 & 1) == 0;
    v149 = v147 + v148;
    if (__OFADD__(v147, v148))
    {
      goto LABEL_75;
    }

    v150 = v145;
    if (v52[3] >= v149)
    {
      if (v144)
      {
        v151 = v199;
        if (v145)
        {
          goto LABEL_41;
        }
      }

      else
      {
        sub_226C37604();
        v151 = v199;
        if (v150)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      sub_226C30AA4(v149, v144);
      v151 = v199;
      v152 = sub_226C2FD40(v133, v199);
      if ((v150 & 1) != (v153 & 1))
      {
        goto LABEL_78;
      }

      v146 = v152;
      if (v150)
      {
LABEL_41:

        v52 = v202;
        (*(v187 + 40))(v202[7] + *(v187 + 72) * v146, v185, v200);
        v115 = v178;
        sub_226AC47B0(v178, &qword_27D7A6688, &unk_226D718A0);
        sub_226D22924(v194);
        goto LABEL_42;
      }
    }

    v52 = v202;
    v202[(v146 >> 6) + 8] |= 1 << v146;
    v154 = (v52[6] + 16 * v146);
    *v154 = v133;
    v154[1] = v151;
    v143((v52[7] + *(v187 + 72) * v146), v185, v200);
    v115 = v178;
    sub_226AC47B0(v178, &qword_27D7A6688, &unk_226D718A0);
    sub_226D22924(v194);
    v155 = v52[2];
    v101 = __OFADD__(v155, 1);
    v156 = v155 + 1;
    if (v101)
    {
      goto LABEL_77;
    }

    v52[2] = v156;
LABEL_42:
    v114 = v198;
    a1 = v201;
  }

  if (v183 <= v114 + 1)
  {
    v118 = (v114 + 1);
  }

  else
  {
    v118 = v183;
  }

  v119 = v118 - 1;
  while (1)
  {
    v117 = v114 + 1;
    if (__OFADD__(v114, 1))
    {
      break;
    }

    if (v117 >= v183)
    {
      v157 = v177;
      (*v192)(v177, 1, 1, v71);
      v129 = v157;
      v113 = 0;
      goto LABEL_54;
    }

    v113 = *(v190 + 8 * v117);
    ++v114;
    if (v113)
    {
      v116 = v115;
      goto LABEL_53;
    }
  }

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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6698, &unk_226D718B0);
  result = sub_226D6F25C();
  __break(1u);
  return result;
}

BOOL sub_226D21DB8(uint64_t a1, uint64_t a2)
{
  v71 = sub_226D6762C();
  v73 = *(v71 - 8);
  v4 = *(v73 + 64);
  MEMORY[0x28223BE20](v71);
  v68 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v79 = &v67 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9330, &qword_226D7D1B0);
  v9 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v80 = &v67 - v10;
  v11 = sub_226D6760C();
  v77 = *(v11 - 8);
  v78 = v11;
  v12 = *(v77 + 64);
  MEMORY[0x28223BE20](v11);
  v69 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6678, &unk_226D71890);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v72 = &v67 - v16;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9338, &qword_226D7D1B8);
  v17 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v76 = &v67 - v18;
  v19 = sub_226D6763C();
  v81 = *(v19 - 8);
  v20 = *(v81 + 64);
  MEMORY[0x28223BE20](v19);
  v74 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v67 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9340, &unk_226D7D1C0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v67 - v28;
  sub_226D6C69C();
  sub_226D228DC(&qword_27D7A9348, MEMORY[0x277CC8348]);
  sub_226D6E53C();
  v30 = a2;
  sub_226D6E53C();
  if (v83 != v82)
  {
    return 0;
  }

  v67 = _s7ChangesV11FulfillmentVMa(0);
  v31 = v67[5];
  v32 = *(v26 + 48);
  v33 = a1;
  sub_226AC40E8(a1 + v31, v29, &qword_27D7A6680, &unk_226D74710);
  sub_226AC40E8(v30 + v31, &v29[v32], &qword_27D7A6680, &unk_226D74710);
  v34 = v81;
  v35 = *(v81 + 48);
  v36 = v30;
  if (v35(v29, 1, v19) == 1)
  {
    if (v35(&v29[v32], 1, v19) == 1)
    {
      sub_226AC47B0(v29, &qword_27D7A6680, &unk_226D74710);
      goto LABEL_10;
    }

LABEL_7:
    v37 = &qword_27D7A9340;
    v38 = &unk_226D7D1C0;
LABEL_8:
    v39 = v29;
LABEL_16:
    sub_226AC47B0(v39, v37, v38);
    return 0;
  }

  sub_226AC40E8(v29, v25, &qword_27D7A6680, &unk_226D74710);
  if (v35(&v29[v32], 1, v19) == 1)
  {
    (*(v34 + 8))(v25, v19);
    goto LABEL_7;
  }

  v40 = v74;
  (*(v34 + 32))(v74, &v29[v32], v19);
  sub_226D228DC(&qword_27D7A9360, MEMORY[0x277CC6D20]);
  v41 = sub_226D6E35C();
  v42 = *(v34 + 8);
  v42(v40, v19);
  v42(v25, v19);
  sub_226AC47B0(v29, &qword_27D7A6680, &unk_226D74710);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v43 = v67[6];
  v44 = v76;
  v45 = *(v75 + 48);
  sub_226AC40E8(v33 + v43, v76, &qword_27D7A6678, &unk_226D71890);
  v81 = v36;
  sub_226AC40E8(v36 + v43, v44 + v45, &qword_27D7A6678, &unk_226D71890);
  v47 = v77;
  v46 = v78;
  v48 = *(v77 + 48);
  if (v48(v44, 1, v78) != 1)
  {
    v51 = v72;
    sub_226AC40E8(v44, v72, &qword_27D7A6678, &unk_226D71890);
    v52 = v48(v44 + v45, 1, v46);
    v50 = v79;
    v29 = v80;
    if (v52 != 1)
    {
      v54 = v44 + v45;
      v55 = v69;
      (*(v47 + 32))(v69, v54, v46);
      sub_226D228DC(&qword_27D7A9358, MEMORY[0x277CC6CB0]);
      v56 = sub_226D6E35C();
      v57 = *(v47 + 8);
      v57(v55, v46);
      v57(v51, v46);
      sub_226AC47B0(v44, &qword_27D7A6678, &unk_226D71890);
      if ((v56 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_20;
    }

    (*(v47 + 8))(v51, v46);
LABEL_15:
    v37 = &qword_27D7A9338;
    v38 = &qword_226D7D1B8;
    v39 = v44;
    goto LABEL_16;
  }

  v49 = v48(v44 + v45, 1, v46);
  v50 = v79;
  v29 = v80;
  if (v49 != 1)
  {
    goto LABEL_15;
  }

  sub_226AC47B0(v44, &qword_27D7A6678, &unk_226D71890);
LABEL_20:
  v58 = v67[7];
  v59 = *(v70 + 48);
  sub_226AC40E8(v33 + v58, v29, &qword_27D7A6670, &qword_226D71888);
  sub_226AC40E8(v81 + v58, &v29[v59], &qword_27D7A6670, &qword_226D71888);
  v60 = *(v73 + 48);
  v61 = v71;
  if (v60(v29, 1, v71) == 1)
  {
    if (v60(&v29[v59], 1, v61) == 1)
    {
      sub_226AC47B0(v29, &qword_27D7A6670, &qword_226D71888);
      return 1;
    }

    goto LABEL_25;
  }

  sub_226AC40E8(v29, v50, &qword_27D7A6670, &qword_226D71888);
  if (v60(&v29[v59], 1, v61) == 1)
  {
    (*(v73 + 8))(v50, v61);
LABEL_25:
    v37 = &qword_27D7A9330;
    v38 = &qword_226D7D1B0;
    goto LABEL_8;
  }

  v62 = v73;
  v63 = &v29[v59];
  v64 = v68;
  (*(v73 + 32))(v68, v63, v61);
  sub_226D228DC(&qword_27D7A9350, MEMORY[0x277CC6CD0]);
  v65 = sub_226D6E35C();
  v66 = *(v62 + 8);
  v66(v64, v61);
  v66(v50, v61);
  sub_226AC47B0(v29, &qword_27D7A6670, &qword_226D71888);
  return (v65 & 1) != 0;
}

uint64_t sub_226D227A4(uint64_t a1, uint64_t a2)
{
  v4 = _s7ChangesV11FulfillmentVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D22808(uint64_t a1, uint64_t a2)
{
  v4 = _s7ChangesV11FulfillmentVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D2286C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92D0, &qword_226D7D128);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D228DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226D22924(uint64_t a1)
{
  v2 = _s7ChangesV11FulfillmentVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_226D229A8()
{
  sub_226D22A44();
  if (v0 <= 0x3F)
  {
    sub_226D22A9C();
    if (v1 <= 0x3F)
    {
      sub_226D22B30();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_226D22A44()
{
  if (!qword_27D7A9300)
  {
    v0 = sub_226D6CB5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A9300);
    }
  }
}

void sub_226D22A9C()
{
  if (!qword_27D7A9308)
  {
    sub_226D677FC();
    sub_226D228DC(&qword_27D7A6F18, MEMORY[0x277CC6E00]);
    v0 = sub_226D6CB5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A9308);
    }
  }
}

void sub_226D22B30()
{
  if (!qword_27D7A9310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A6698, &unk_226D718B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A6A30, &qword_226D738B0);
    sub_226D22BC4();
    v0 = sub_226D6E2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A9310);
    }
  }
}

unint64_t sub_226D22BC4()
{
  result = qword_27D7A9318;
  if (!qword_27D7A9318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A6698, &unk_226D718B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A9318);
  }

  return result;
}

void sub_226D22C68()
{
  sub_226D6C69C();
  if (v0 <= 0x3F)
  {
    sub_226D22D70(319, &qword_27D7A8458, MEMORY[0x277CC6D20]);
    if (v1 <= 0x3F)
    {
      sub_226D22D70(319, &qword_27D7A8448, MEMORY[0x277CC6CB0]);
      if (v2 <= 0x3F)
      {
        sub_226D22D70(319, &qword_27D7A8450, MEMORY[0x277CC6CD0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_226D22D70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_226D22DE4()
{
  v16 = v0;
  sub_226AE532C(v0[12], (v0 + 2));
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v1 = v0[5];
  v2 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[10] = &type metadata for BankConnectEnvironmentImplementation;
  v0[11] = sub_226B6A16C();
  v6 = swift_allocObject();
  v0[7] = v6;
  memcpy((v6 + 16), v5, 0x3B0uLL);
  type metadata accessor for TransactionClassificationSystemTask();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), &type metadata for BankConnectEnvironmentImplementation);
  v9 = off_283A722F0;
  v10 = *(off_283A722F0 + 8) + 15;
  v11 = swift_task_alloc();
  v9[2](v11, v8, &type metadata for BankConnectEnvironmentImplementation);
  v0[13] = sub_226D24948(v11, v14, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_226D2302C;

  return sub_226D23208();
}

uint64_t sub_226D2302C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_226D231A4;
  }

  else
  {
    v3 = sub_226D23140;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226D23140()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226D231A4()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_226D23208()
{
  v1[18] = v0;
  v2 = sub_226D6EB9C();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D232D4, 0, 0);
}

uint64_t sub_226D232D4()
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  *(v0 + 184) = __swift_project_value_buffer(v1, qword_28105F710);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Starting background transaction classification.", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  v7 = *(v0 + 160);
  v8 = *(v0 + 144);

  v9 = *__swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
  v10 = sub_226D676AC();
  *(v0 + 192) = v10;
  v11 = swift_allocObject();
  *(v0 + 200) = v11;
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  *(v0 + 320) = *MEMORY[0x277CBE110];
  v12 = *(v7 + 104);
  *(v0 + 208) = v12;
  *(v0 + 216) = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v12(v5);
  v13 = *(MEMORY[0x277CBE118] + 4);

  v10;
  v14 = swift_task_alloc();
  *(v0 + 224) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6560, &qword_226D7CCF0);
  *(v0 + 232) = v15;
  *v14 = v0;
  v14[1] = sub_226D23500;
  v16 = *(v0 + 176);

  return MEMORY[0x28210EE50](v0 + 128, v16, sub_226D248EC, v11, v15);
}

uint64_t sub_226D23500()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  v2[30] = v0;

  v5 = v2[25];
  v6 = v2[22];
  v7 = v2[20];
  v8 = v2[19];
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (v0)
  {
    v10(v6, v8);

    v12 = sub_226D23AC0;
  }

  else
  {
    v2[31] = v10;
    v2[32] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);

    v12 = sub_226D236AC;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

void sub_226D236AC()
{
  v1 = v0[16];
  v0[15] = v1;
  swift_beginAccess();
  if (!*(v1 + 16))
  {
    v10 = v0[23];
    v5 = sub_226D6E05C();
    v6 = sub_226D6E9AC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = 12;
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = 0;
      v9 = "Background transaction classification done.\n%ld submitted for classification.";
      goto LABEL_7;
    }

LABEL_8:
    v11 = v0[24];
    goto LABEL_9;
  }

  v2 = v0[30];
  v0[33] = v1;
  v3 = sub_226D6E82C();
  v4 = v0[23];
  if (v3)
  {
    v5 = sub_226D6E05C();
    v6 = sub_226D6E9AC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = 2;
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Background classification task expired. Pausing classification.";
LABEL_7:
      v11 = v5;
      _os_log_impl(&dword_226AB4000, v5, v6, v9, v8, v7);
      MEMORY[0x22AA8BEE0](v8, -1, -1);
      v5 = v0[24];
LABEL_9:
      v13 = v0[21];
      v12 = v0[22];

      v14 = v0[1];

      v14();
      return;
    }

    goto LABEL_8;
  }

  v15 = sub_226D6E05C();
  v16 = sub_226D6E9AC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = *(v1 + 16);
    _os_log_impl(&dword_226AB4000, v15, v16, "Background transaction classification: classifying next batch\n(%ld transactions).", v17, 0xCu);
    MEMORY[0x22AA8BEE0](v17, -1, -1);
  }

  v0[34] = *(v1 + 16);
  v18 = __swift_project_boxed_opaque_existential_1((v0[18] + 16), *(v0[18] + 40));
  v19 = __swift_project_boxed_opaque_existential_1(v18 + 26, v18[29]);
  v0[10] = &type metadata for BankConnectEnvironmentImplementation;
  v0[11] = sub_226B41FC0();
  v20 = swift_allocObject();
  v0[7] = v20;
  sub_226B42014(v18, v20 + 16);
  v21 = *(*v19 + 16);
  *(swift_task_alloc() + 16) = v0 + 7;
  os_unfair_lock_lock(v21 + 14);
  sub_226CF1B10(&v21[4], (v0 + 2));
  v22 = v21 + 14;
  if (v2)
  {

    os_unfair_lock_unlock(v22);
  }

  else
  {
    os_unfair_lock_unlock(v22);

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    v23 = v0[5];
    v24 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v23);
    v25 = *(v24 + 8);

    v28 = (v25 + *v25);
    v26 = v25[1];
    v27 = swift_task_alloc();
    v0[35] = v27;
    *v27 = v0;
    v27[1] = sub_226D23B34;

    (v28)(v1, 0, v23, v24);
  }
}

uint64_t sub_226D23AC0()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226D23B34()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v7 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = sub_226D243A8;
  }

  else
  {
    v5 = *(v2 + 264);

    v4 = sub_226D23C50;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D23C50()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 320);
  v4 = *(v0 + 192);
  v5 = *(v0 + 168);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v8 = swift_allocObject();
  *(v0 + 296) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  v2(v5, v3, v6);
  v9 = *(MEMORY[0x277CBE118] + 4);

  v10 = v4;
  v11 = swift_task_alloc();
  *(v0 + 304) = v11;
  *v11 = v0;
  v11[1] = sub_226D23D80;
  v12 = *(v0 + 232);
  v13 = *(v0 + 192);
  v14 = *(v0 + 168);

  return MEMORY[0x28210EE50](v0 + 136, v14, sub_226D24EAC, v8, v12);
}

uint64_t sub_226D23D80()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 296);
  v6 = *(v2 + 256);
  (*(v2 + 248))(*(v2 + 168), *(v2 + 152));

  if (v0)
  {
    v7 = sub_226D24328;
  }

  else
  {
    v7 = sub_226D23F0C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_226D23F0C()
{
  v1 = v0[17];
  v0[15] = v1;
  v2 = v0[33];

  if (!*(v1 + 16))
  {
    v12 = v0[34];
    v13 = v0[23];
    v7 = sub_226D6E05C();
    v8 = sub_226D6E9AC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = 12;
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v12;
      v11 = "Background transaction classification done.\n%ld submitted for classification.";
      goto LABEL_7;
    }

LABEL_8:
    v14 = v0[24];
    goto LABEL_9;
  }

  v3 = v0[39];
  v4 = v0[34];
  v0[33] = v1;
  v5 = sub_226D6E82C();
  v6 = v0[23];
  if (v5)
  {
    v7 = sub_226D6E05C();
    v8 = sub_226D6E9AC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = 2;
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Background classification task expired. Pausing classification.";
LABEL_7:
      v14 = v7;
      _os_log_impl(&dword_226AB4000, v7, v8, v11, v10, v9);
      MEMORY[0x22AA8BEE0](v10, -1, -1);
      v7 = v0[24];
LABEL_9:
      v16 = v0[21];
      v15 = v0[22];

      v17 = v0[1];

      v17();
      return;
    }

    goto LABEL_8;
  }

  v18 = sub_226D6E05C();
  v19 = sub_226D6E9AC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = *(v1 + 16);
    _os_log_impl(&dword_226AB4000, v18, v19, "Background transaction classification: classifying next batch\n(%ld transactions).", v20, 0xCu);
    MEMORY[0x22AA8BEE0](v20, -1, -1);
  }

  v21 = *(v1 + 16);
  v0[34] = v4 + v21;
  if (__OFADD__(v4, v21))
  {
    __break(1u);
  }

  else
  {
    v22 = __swift_project_boxed_opaque_existential_1((v0[18] + 16), *(v0[18] + 40));
    v23 = __swift_project_boxed_opaque_existential_1(v22 + 26, v22[29]);
    v0[10] = &type metadata for BankConnectEnvironmentImplementation;
    v0[11] = sub_226B41FC0();
    v24 = swift_allocObject();
    v0[7] = v24;
    sub_226B42014(v22, v24 + 16);
    v25 = *(*v23 + 16);
    *(swift_task_alloc() + 16) = v0 + 7;
    os_unfair_lock_lock(v25 + 14);
    sub_226CF1B10(&v25[4], (v0 + 2));
    v26 = v25 + 14;
    if (v3)
    {

      os_unfair_lock_unlock(v26);
    }

    else
    {
      os_unfair_lock_unlock(v26);

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
      v27 = v0[5];
      v28 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v27);
      v29 = *(v28 + 8);

      v32 = (v29 + *v29);
      v30 = v29[1];
      v31 = swift_task_alloc();
      v0[35] = v31;
      *v31 = v0;
      v31[1] = sub_226D23B34;

      (v32)(v1, 0, v27, v28);
    }
  }
}

uint64_t sub_226D24328()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 312);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226D243A8()
{
  v1 = *(v0 + 264);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v2 = *(v0 + 288);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226D24438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a2;
  v39 = a3;
  v4 = sub_226D6D52C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = sub_226D6D4AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *__swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
  sub_226D6D46C();
  v18 = v41;
  v19 = sub_226D47648(0, 1, 0, v16, v40);
  if (v18)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v21 = v19;
  v40 = v4;
  (*(v13 + 8))(v16, v12);
  v38 = 0;
  if (v21 >> 62)
  {
    v22 = sub_226D6EDFC();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = v21;
  v24 = v39;
  if (!v22)
  {

    v25 = MEMORY[0x277D84F90];
LABEL_19:
    v37 = sub_226AE45DC(v25);

    *v24 = v37;
    return result;
  }

  v41 = v23;
  v42 = MEMORY[0x277D84F90];
  result = sub_226AE20D4(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v25 = v42;
    if ((v41 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v22; ++i)
      {
        MEMORY[0x22AA8AFD0](i, v41);
        v27 = [swift_unknownObjectRetain() publicTransactionObject];
        v28 = [v27 id];
        sub_226D6D4FC();
        swift_unknownObjectRelease_n();

        v42 = v25;
        v30 = *(v25 + 16);
        v29 = *(v25 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_226AE20D4(v29 > 1, v30 + 1, 1);
          v25 = v42;
        }

        *(v25 + 16) = v30 + 1;
        (*(v5 + 32))(v25 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v30, v11, v40);
      }

      v24 = v39;
    }

    else
    {
      v39 = (v5 + 32);
      v31 = 32;
      do
      {
        v32 = *(v41 + v31);
        v33 = [v32 publicTransactionObject];
        v34 = [v33 id];
        sub_226D6D4FC();

        v42 = v25;
        v36 = *(v25 + 16);
        v35 = *(v25 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_226AE20D4(v35 > 1, v36 + 1, 1);
          v25 = v42;
        }

        *(v25 + 16) = v36 + 1;
        (*(v5 + 32))(v25 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v36, v9, v40);
        v31 += 8;
        --v22;
      }

      while (v22);
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_226D24888()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226D24948(const void *a1, uint64_t a2, uint64_t a3)
{
  v19[3] = &type metadata for BankConnectEnvironmentImplementation;
  v19[4] = sub_226B6A16C();
  v19[0] = swift_allocObject();
  memcpy((v19[0] + 16), a1, 0x3B0uLL);
  sub_226AE532C(v19, a3 + 16);
  sub_226D24E3C(a2, &v14);
  if (v15)
  {
    sub_226AC47B0(a2, &qword_27D7A9368, &qword_226D7D218);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    sub_226B6B030(&v14, &v16);
  }

  else
  {
    v17 = sub_226D66E1C();
    v18 = MEMORY[0x277CC6538];
    __swift_allocate_boxed_opaque_existential_1(&v16);
    sub_226D66E0C();
    v6 = sub_226D6C7EC();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_226D6C7BC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_226D71F20;
    sub_226D6AC0C();
    *(v10 + 32) = sub_226D6AB6C();
    v11 = type metadata accessor for ClassifiableTransactionSource();
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    *(v12 + 32) = 0;
    *(v12 + 40) = 1;
    *(v12 + 48) = &unk_283A6A2E8;
    v17 = v11;
    v18 = &off_283A72E60;
    *&v16 = v12;
    sub_226AC47B0(a2, &qword_27D7A9368, &qword_226D7D218);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    if (v15)
    {
      sub_226AC47B0(&v14, &qword_27D7A9368, &qword_226D7D218);
    }
  }

  sub_226B6B030(&v16, a3 + 56);
  return a3;
}

void sub_226D24B38()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v0 = objc_allocWithZone(MEMORY[0x277CF07D8]);
  v1 = sub_226D6E36C();
  v2 = [v0 initWithIdentifier_];

  v3 = v2;
  [v3 setPriority_];
  [v3 setInterval_];
  [v3 setMinDurationBetweenInstances_];
  [v3 setRequiresProtectionClass_];
  [v3 setRequiresUserInactivity_];
  [v3 setRequiresExternalPower_];
  [v3 setRequiresInexpensiveNetworkConnectivity_];

  v4 = [objc_opt_self() sharedScheduler];
  v18[0] = 0;
  v5 = [v4 submitTaskRequest:v3 error:v18];

  if (v5)
  {
    v6 = v18[0];
  }

  else
  {
    v7 = v18[0];
    v8 = sub_226D6D04C();

    swift_willThrow();
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v9 = sub_226D6E07C();
    __swift_project_value_buffer(v9, qword_28105F710);
    v10 = v8;
    v11 = sub_226D6E05C();
    v12 = sub_226D6E9CC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v8;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_226AB4000, v11, v12, "Couldn't submit request for transaction classification system task: %@", v13, 0xCu);
      sub_226AC47B0(v14, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v14, -1, -1);
      MEMORY[0x22AA8BEE0](v13, -1, -1);
    }

    else
    {
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226D24E3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9368, &qword_226D7D218);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D24EC4(uint64_t a1)
{
  v3 = sub_226D6D1AC();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_226D6EDFC();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v51 = MEMORY[0x277D84F90];
    sub_226AE2A04(0, v8 & ~(v8 >> 63), 0);
    v46 = v51;
    if (v45)
    {
      result = sub_226D6EDAC();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = sub_226D6ED6C();
      v10 = *(a1 + 36);
    }

    v48 = result;
    v49 = v10;
    v50 = v45 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v41 = v8;
      v42 = v44 + 32;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v39 = a1 + 56;
      v40 = v13;
      v37[1] = v1;
      v38 = a1 + 64;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v48;
        v17 = v49;
        v18 = v50;
        v19 = a1;
        sub_226CCD1C4(v48, v49, v50, a1);
        v21 = v20;
        v22 = [v20 URIRepresentation];
        sub_226D6D14C();

        v23 = v46;
        v51 = v46;
        v25 = *(v46 + 16);
        v24 = *(v46 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_226AE2A04(v24 > 1, v25 + 1, 1);
          v23 = v51;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v46 = v23;
        result = (*(v44 + 32))(v23 + v26 + *(v44 + 72) * v25, v7, v43);
        if (v45)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (sub_226D6EDCC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9398, &unk_226D7D370);
          v14 = sub_226D6E8CC();
          sub_226D6EE4C();
          result = v14(v47, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_226AE5444(v48, v49, v50);
            return v46;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v27 = 1 << *(v19 + 32);
          if (v16 >= v27)
          {
            goto LABEL_38;
          }

          v28 = v16 >> 6;
          v29 = *(v39 + 8 * (v16 >> 6));
          if (((v29 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_40;
          }

          v30 = v29 & (-2 << (v16 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = sub_226AE5444(v16, v17, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            result = sub_226AE5444(v16, v17, 0);
          }

LABEL_33:
          v36 = *(v19 + 36);
          v48 = v27;
          v49 = v36;
          v50 = 0;
          v8 = v41;
          if (v12 == v41)
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
  }

  return result;
}

uint64_t sub_226D252D0()
{
  v0 = sub_226B1EC00(&unk_283A6A318);
  result = swift_arrayDestroy();
  qword_281064558 = v0;
  return result;
}

uint64_t static DaemonFinancialDataHistoricalQuery.fetchHistoricalTransactions(context:lastToken:entityName:auxEntitiesPredicateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9370, &qword_226D7D228) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v7 = sub_226D66F9C();
  v5[25] = v7;
  v8 = *(v7 - 8);
  v5[26] = v8;
  v9 = *(v8 + 64) + 15;
  v5[27] = swift_task_alloc();
  v10 = sub_226D66F2C();
  v5[28] = v10;
  v11 = *(v10 - 8);
  v5[29] = v11;
  v12 = *(v11 + 64) + 15;
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DA8, &unk_226D7D230) - 8) + 64) + 15;
  v5[32] = swift_task_alloc();
  v14 = sub_226D66F0C();
  v5[33] = v14;
  v15 = *(v14 - 8);
  v5[34] = v15;
  v16 = *(v15 + 64) + 15;
  v5[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D2552C, 0, 0);
}

void sub_226D2552C()
{
  v1 = *(v0 + 144);
  *(swift_task_alloc() + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F0, &unk_226D79950);
  sub_226D6EB8C();
  v146 = *(v0 + 144);

  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = swift_task_alloc();
  *(v4 + 16) = v146;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  sub_226D6EB8C();

  if (*(v0 + 33) == 1)
  {
    v5 = *(v0 + 264);
    v6 = *(v0 + 272);
    v7 = *(v0 + 256);
    sub_226AC40E8(*(v0 + 152), v7, &qword_27D7A8DA8, &unk_226D7D230);
    if ((*(v6 + 48))(v7, 1, v5) == 1)
    {
      sub_226AC47B0(*(v0 + 256), &qword_27D7A8DA8, &unk_226D7D230);
      if (v2 < 2)
      {
        v8 = 1;
      }

      else
      {
        v8 = v3;
      }

      if (v8)
      {
        v9 = *(v0 + 160);
        v10 = *(v0 + 144);
        v11 = swift_task_alloc();
        v12 = *(v0 + 168);
        *(v11 + 16) = v10;
        *(v11 + 24) = v9;
        *(v11 + 32) = v12;
        *(v11 + 48) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9378, &qword_226D7D240);
        sub_226D6EB8C();

        v13 = *(v0 + 96);
LABEL_36:
        v93 = *(v0 + 280);
        v95 = *(v0 + 248);
        v94 = *(v0 + 256);
        v96 = *(v0 + 240);
        v97 = *(v0 + 216);
        v99 = *(v0 + 184);
        v98 = *(v0 + 192);

        v100 = *(v0 + 8);

        v100(v13);
        return;
      }

      v38 = *(v0 + 184);
      v40 = *(v0 + 160);
      v39 = *(v0 + 168);
      v41 = *(v0 + 144);
      (*(*(v0 + 208) + 56))(v38, 1, 1, *(v0 + 200));
      v42 = swift_task_alloc();
      v42[2] = v2;
      v42[3] = v40;
      v42[4] = v39;
      v42[5] = v38;
      v42[6] = 300;
      v42[7] = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9380, &qword_226D7D248);
      sub_226D6EB8C();

      v13 = *(v0 + 16);
      if ((*(v0 + 32) & 1) != 0 || (v59 = *(v0 + 24), v60 = *(v0 + 144), (v61 = sub_226D6EB3C()) == 0) || (v62 = v61, v63 = [v61 identifier], v62, !v63))
      {
        v83 = *(v0 + 160);
        v84 = *(v0 + 144);
        v148 = *(v0 + 168);

        v85 = swift_task_alloc();
        *(v85 + 16) = v84;
        *(v85 + 24) = v83;
        *(v85 + 32) = v148;
        *(v85 + 48) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9378, &qword_226D7D240);
        sub_226D6EB8C();

        v13 = *(v0 + 104);
LABEL_35:
        sub_226AC47B0(*(v0 + 184), &qword_27D7A9370, &qword_226D7D228);
        goto LABEL_36;
      }

      v64 = *(v0 + 144);
      v65 = sub_226D6E39C();
      v67 = v66;
      v68 = sub_226D6EB6C();
      if (!v68)
      {
        goto LABEL_55;
      }

      v69 = v68;
      v70 = [v68 storeTokens];
      if (v70)
      {
        v71 = v70;
        sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
        v72 = sub_226D6E2BC();

        if (*(v72 + 16))
        {
          v73 = sub_226C2FDD4(v65, v67);
          if (v74)
          {
            v75 = v73;

            v76 = *(*(v72 + 56) + 8 * v75);

            v77 = [v76 integerValue];

            if (v77 >= v59)
            {
              v135 = v69;
              v136 = *(v0 + 160);
              v137 = *(v0 + 144);
              v150 = *(v0 + 168);
              v138 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
              v139 = [objc_allocWithZone(MEMORY[0x277CBE4C0]) initWithTransactionNumber:v138 andStoreID:v63];

              v140 = swift_task_alloc();
              *(v140 + 16) = v137;
              *(v140 + 24) = v136;
              *(v140 + 32) = v150;
              *(v140 + 48) = v139;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9378, &qword_226D7D240);
              sub_226D6EB8C();

              sub_226CEE4E4(*(v0 + 112));
            }

            else
            {
              v78 = v77;

              if (qword_28105F5F8 != -1)
              {
                swift_once();
              }

              v79 = sub_226D6E07C();
              __swift_project_value_buffer(v79, qword_28105F600);
              v80 = sub_226D6E05C();
              v81 = sub_226D6E9CC();
              if (os_log_type_enabled(v80, v81))
              {
                v82 = swift_slowAlloc();
                *v82 = 134218240;
                *(v82 + 4) = v59;
                *(v82 + 12) = 2048;
                *(v82 + 14) = v78;
                _os_log_impl(&dword_226AB4000, v80, v81, "Some history has been lost when purging.\nLatest transactionID for insertion history: %lld,\ncurrent transaction in context: %ld", v82, 0x16u);
                MEMORY[0x22AA8BEE0](v82, -1, -1);
              }
            }

            goto LABEL_35;
          }
        }

        goto LABEL_54;
      }

      __break(1u);
LABEL_61:

      __break(1u);
      return;
    }

    v24 = *(v0 + 248);
    v25 = *(v0 + 224);
    v26 = *(v0 + 232);
    (*(*(v0 + 272) + 32))(*(v0 + 280), *(v0 + 256), *(v0 + 264));
    sub_226D66EFC();
    v27 = (*(v26 + 88))(v24, v25);
    if (v27 == *MEMORY[0x277CC6640])
    {
      v28 = *(v0 + 272);
      v29 = *(v0 + 248);
      v30 = *(v0 + 160);
      v31 = *(v0 + 144);
      v147 = *(v0 + 168);
      (*(*(v0 + 232) + 96))(v29, *(v0 + 224));
      v32 = *v29;
      v33 = *v29;
      v34 = swift_task_alloc();
      *(v34 + 16) = v31;
      *(v34 + 24) = v30;
      *(v34 + 32) = v147;
      *(v34 + 48) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9378, &qword_226D7D240);
      sub_226D6EB8C();
      v35 = (v28 + 8);
      v36 = *(v0 + 280);
      v37 = *(v0 + 264);

      v13 = *(v0 + 136);

      (*v35)(v36, v37);
      goto LABEL_36;
    }

    if (v27 != *MEMORY[0x277CC6638])
    {
      v53 = *(v0 + 280);
      v55 = *(v0 + 232);
      v54 = *(v0 + 240);
      v56 = *(v0 + 224);
      sub_226D6EEFC();
      *(v0 + 64) = 0;
      *(v0 + 72) = 0xE000000000000000;
      MEMORY[0x22AA8A510](0xD00000000000001CLL, 0x8000000226D88110);
      sub_226D66EFC();
      sub_226D6EFBC();
      (*(v55 + 8))(v54, v56);
      v57 = *(v0 + 64);
      v58 = *(v0 + 72);
LABEL_19:
      sub_226D6F0AC();
      return;
    }

    v43 = *(v0 + 248);
    v45 = *(v0 + 208);
    v44 = *(v0 + 216);
    v46 = *(v0 + 200);
    (*(*(v0 + 232) + 96))(v43, *(v0 + 224));
    (*(v45 + 32))(v44, v43, v46);
    if ((v3 & 1) == 0)
    {
      v86 = *(v0 + 208);
      v88 = *(v0 + 192);
      v87 = *(v0 + 200);
      v90 = *(v0 + 160);
      v89 = *(v0 + 168);
      v91 = *(v0 + 144);
      (*(v86 + 16))(v88, *(v0 + 216), v87);
      (*(v86 + 56))(v88, 0, 1, v87);
      v92 = swift_task_alloc();
      v92[2] = v2;
      v92[3] = v90;
      v92[4] = v89;
      v92[5] = v88;
      v92[6] = 300;
      v92[7] = v91;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9380, &qword_226D7D248);
      sub_226D6EB8C();

      v13 = *(v0 + 40);
      if ((*(v0 + 56) & 1) == 0 && (v101 = *(v0 + 48), v102 = *(v0 + 144), (v103 = sub_226D6EB3C()) != 0) && (v104 = v103, v63 = [v103 identifier], v104, v63))
      {
        v105 = *(v0 + 144);
        v106 = sub_226D6E39C();
        v108 = v107;
        v109 = sub_226D6EB6C();
        if (!v109)
        {
LABEL_55:

          goto LABEL_19;
        }

        v110 = v109;
        v111 = [v109 storeTokens];
        if (!v111)
        {
          goto LABEL_61;
        }

        v112 = v111;
        sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
        v113 = sub_226D6E2BC();
        v114 = v112;
        v115 = v113;

        if (!*(v115 + 16) || (v116 = sub_226C2FDD4(v106, v108), (v117 & 1) == 0))
        {

LABEL_54:

          goto LABEL_55;
        }

        v118 = v116;
        v119 = v110;

        v120 = *(*(v115 + 56) + 8 * v118);

        v121 = [v120 integerValue];

        if (v121 >= v101)
        {
          v141 = *(v0 + 160);
          v142 = *(v0 + 144);
          v151 = *(v0 + 168);
          v143 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
          v144 = [objc_allocWithZone(MEMORY[0x277CBE4C0]) initWithTransactionNumber:v143 andStoreID:v63];

          v145 = swift_task_alloc();
          *(v145 + 16) = v142;
          *(v145 + 24) = v141;
          *(v145 + 32) = v151;
          *(v145 + 48) = v144;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9378, &qword_226D7D240);
          sub_226D6EB8C();

          sub_226CEE4E4(*(v0 + 128));
        }

        else
        {

          if (qword_28105F5F8 != -1)
          {
            swift_once();
          }

          v122 = sub_226D6E07C();
          __swift_project_value_buffer(v122, qword_28105F600);
          v123 = sub_226D6E05C();
          v124 = sub_226D6E9CC();
          if (os_log_type_enabled(v123, v124))
          {
            v125 = swift_slowAlloc();
            *v125 = 134218240;
            *(v125 + 4) = v101;
            *(v125 + 12) = 2048;
            *(v125 + 14) = v121;
            _os_log_impl(&dword_226AB4000, v123, v124, "Some history has been lost when purging.\nLatest transactionID for insertion history: %lld,\ncurrent transaction in context: %ld", v125, 0x16u);
            MEMORY[0x22AA8BEE0](v125, -1, -1);
          }
        }
      }

      else
      {
        v126 = *(v0 + 160);
        v127 = *(v0 + 144);
        v149 = *(v0 + 168);

        v128 = swift_task_alloc();
        *(v128 + 16) = v127;
        *(v128 + 24) = v126;
        *(v128 + 32) = v149;
        *(v128 + 48) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9378, &qword_226D7D240);
        sub_226D6EB8C();

        v13 = *(v0 + 120);
      }

      v130 = *(v0 + 272);
      v129 = *(v0 + 280);
      v131 = *(v0 + 264);
      v133 = *(v0 + 208);
      v132 = *(v0 + 216);
      v134 = *(v0 + 200);
      sub_226AC47B0(*(v0 + 192), &qword_27D7A9370, &qword_226D7D228);
      (*(v133 + 8))(v132, v134);
      (*(v130 + 8))(v129, v131);
      goto LABEL_36;
    }

    v48 = *(v0 + 272);
    v47 = *(v0 + 280);
    v49 = *(v0 + 264);
    v51 = *(v0 + 208);
    v50 = *(v0 + 216);
    v52 = *(v0 + 200);
    sub_226C1A7A0();
    swift_allocError();
    swift_willThrow();
    (*(v51 + 8))(v50, v52);
    (*(v48 + 8))(v47, v49);
  }

  else
  {
    v14 = sub_226D66EDC();
    sub_226CD740C();
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277CC65E8], v14);
    swift_willThrow();
  }

  v16 = *(v0 + 280);
  v17 = *(v0 + 248);
  v18 = *(v0 + 256);
  v19 = *(v0 + 240);
  v20 = *(v0 + 216);
  v22 = *(v0 + 184);
  v21 = *(v0 + 192);

  v23 = *(v0 + 8);

  v23();
}

void sub_226D264F8(uint64_t a1@<X8>)
{
  sub_226D29828(*(v1 + 16));
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v5 & 1;
  }
}

void sub_226D26530(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  sub_226D6BA1C();
  v11 = sub_226D6B9FC();
  [v11 setFetchLimit_];
  v12 = sub_226D6EBBC();
  if (v5)
  {

    return;
  }

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    v16 = 0;
    v15 = 0;
    goto LABEL_11;
  }

  v17 = v12;
  v18 = sub_226D6EDFC();
  v12 = v17;
  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x22AA8AFD0](0);
    goto LABEL_8;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 32);
LABEL_8:
    v14 = v13;

    v15 = v14;
    v16 = sub_226D6B9CC();

LABEL_11:
    v19 = sub_226D29AC4(a1, a2, a3, a4 & 1, v16);

    *a5 = v19 & 1;
    return;
  }

  __break(1u);
}

void sub_226D266C0(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v7 = v6;
  v95 = a5;
  v93 = a6;
  v104[4] = *MEMORY[0x277D85DE8];
  v12 = sub_226D66F0C();
  v13 = *(v12 - 8);
  v99 = v12;
  v100 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AccountIDAbsentPolicy();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v90 - v23;
  v25 = objc_opt_self();
  v97 = [v25 fetchRequest];
  if (!v97)
  {
    goto LABEL_63;
  }

  v94 = v16;
  v98 = a1;
  v26 = [v25 entityDescriptionWithContext_];
  if (!v26)
  {
    goto LABEL_64;
  }

  v96 = v26;
  v27 = [v26 propertiesByName];
  sub_226AE59B4(0, &unk_28105F430, 0x277CBE4F0);
  v28 = sub_226D6E2BC();
  if (!*(v28 + 16) || (v29 = sub_226C2FDD4(0x456465676E616863, 0xED0000797469746ELL), (v30 & 1) == 0))
  {

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
  }

  v31 = v29;

  v32 = *(*(v28 + 56) + 8 * v31);

  if (qword_281062750 != -1)
  {
LABEL_57:
    swift_once();
  }

  if ((sub_226D4D7A0(a2, a3, qword_281064558) & 1) == 0)
  {
    sub_226C1A7A0();
    swift_allocError();
    swift_willThrow();

    goto LABEL_10;
  }

  v33 = sub_226D6D52C();
  (*(*(v33 - 8) + 56))(v24, 1, 1, v33);
  v34 = sub_226D6A34C();
  (*(*(v34 - 8) + 56))(v20, 1, 1, v34);
  v35 = sub_226D2A284(a2, a3, v24, a4, v20);
  if (v7)
  {

    sub_226D2A8D8(v20, type metadata accessor for AccountIDAbsentPolicy);
    sub_226AC47B0(v24, &qword_27D7A6D68, &qword_226D75210);
    goto LABEL_10;
  }

  v7 = v35;
  v90[1] = 0;
  v92 = v32;
  sub_226D2A8D8(v20, type metadata accessor for AccountIDAbsentPolicy);
  sub_226AC47B0(v24, &qword_27D7A6D68, &qword_226D75210);
  v37 = MEMORY[0x277D84F90];
  v104[0] = MEMORY[0x277D84F90];
  a2 = v7 + 56;
  v38 = 1 << *(v7 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v7 + 56);
  a4 = (v38 + 63) >> 6;

  v32 = 0;
  v91 = v37;
  if (!v40)
  {
    goto LABEL_16;
  }

  do
  {
LABEL_14:
    while (1)
    {
      v41 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v42 = (*(v7 + 48) + ((v32 << 10) | (16 * v41)));
      v43 = *v42;
      v44 = v42[1];
      v24 = objc_opt_self();

      a3 = sub_226D6E36C();
      v20 = [v24 entityForName:a3 inManagedObjectContext:v98];

      if (v20)
      {
        break;
      }

      if (!v40)
      {
        goto LABEL_16;
      }
    }

    MEMORY[0x22AA8A610]();
    if (*((v104[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v24 = *((v104[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_226D6E61C();
    }

    sub_226D6E65C();
    v91 = v104[0];
  }

  while (v40);
  while (1)
  {
LABEL_16:
    v45 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_57;
    }

    if (v45 >= a4)
    {
      break;
    }

    v40 = *(a2 + 8 * v45);
    ++v32;
    if (v40)
    {
      v32 = v45;
      goto LABEL_14;
    }
  }

  v102 = MEMORY[0x277D84F90];
  if (!v95)
  {

    v61 = v97;
    v48 = v94;
    goto LABEL_35;
  }

  v46 = v95;
  v47 = sub_226D6EB3C();
  v48 = v94;
  if (!v47 || (v49 = v47, v50 = [v47 identifier], v49, !v50))
  {

LABEL_33:
    v61 = v97;
LABEL_35:
    v62 = MEMORY[0x277D837D0];
    goto LABEL_36;
  }

  v51 = sub_226D6E39C();
  v53 = v52;

  v54 = [v46 storeTokens];
  if (!v54)
  {
    __break(1u);
    return;
  }

  v55 = v54;

  v56 = sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
  v57 = sub_226D6E2BC();

  if (!*(v57 + 16))
  {

    goto LABEL_33;
  }

  v58 = sub_226C2FDD4(v51, v53);
  v60 = v59;

  v61 = v97;
  v62 = MEMORY[0x277D837D0];
  if ((v60 & 1) == 0)
  {

    goto LABEL_55;
  }

  v63 = *(*(v57 + 56) + 8 * v58);

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_226D70840;
  *(v64 + 56) = v56;
  *(v64 + 64) = sub_226C8BE70(&qword_27D7A8D30, &qword_27D7A6278, 0x277CCABB0);
  *(v64 + 32) = v63;
  v65 = v63;
  v66 = sub_226D6E91C();
  MEMORY[0x22AA8A610]();
  if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    sub_226D6E65C();

LABEL_55:
LABEL_36:
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_226D71840;
    v68 = [v92 name];
    v69 = sub_226D6E39C();
    v71 = v70;

    *(v67 + 56) = v62;
    *(v67 + 64) = sub_226B16404();
    *(v67 + 32) = v69;
    *(v67 + 40) = v71;
    *(v67 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D40, &qword_226D7B320);
    *(v67 + 104) = sub_226AC4194(&unk_28105F508, &qword_27D7A8D40, &qword_226D7B320);
    *(v67 + 72) = v91;
    v72 = sub_226D6E91C();
    MEMORY[0x22AA8A610]();
    if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v89 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_226D6E61C();
    }

    sub_226D6E65C();
    v46 = v102;
    v73 = sub_226D6E5CC();
    v74 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v61 setPredicate_];
    v62 = [objc_opt_self() fetchHistoryWithFetchRequest_];
    [v62 setResultType_];
    v104[0] = 0;
    v75 = [v98 executeRequest:v62 error:v104];
    v76 = v104[0];
    if (!v75)
    {
      v88 = v104[0];

      sub_226D6D04C();

      swift_willThrow();
      goto LABEL_10;
    }

    v65 = v75;
    objc_opt_self();
    v77 = swift_dynamicCastObjCClassUnconditional();
    v78 = v76;
    if (![v77 result])
    {

      *v93 = MEMORY[0x277D84F90];
      goto LABEL_10;
    }

    sub_226D6ED0C();
    swift_unknownObjectRelease();
    sub_226AC4708(v104, v103);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
    swift_dynamicCast();
    v66 = v101;
    if (v101 >> 62)
    {
      v79 = sub_226D6EDFC();
      if (!v79)
      {
LABEL_59:

        __swift_destroy_boxed_opaque_existential_0Tm(v104);

        *v93 = MEMORY[0x277D84F90];
        goto LABEL_10;
      }
    }

    else
    {
      v79 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v79)
      {
        goto LABEL_59;
      }
    }

    v90[0] = v65;
    v91 = v62;
    v94 = v46;
    v95 = v72;
    v103[0] = MEMORY[0x277D84F90];
    sub_226AE29C0(0, v79 & ~(v79 >> 63), 0);
    v98 = v79;
    if ((v79 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_61:
    sub_226D6E61C();
  }

  v80 = 0;
  v81 = v103[0];
  v82 = v66;
  do
  {
    if ((v66 & 0xC000000000000001) != 0)
    {
      v83 = MEMORY[0x22AA8AFD0](v80, v82);
    }

    else
    {
      v83 = *(v82 + 8 * v80 + 32);
    }

    v84 = v83;
    v85 = [v83 token];
    sub_226D66F1C();

    v103[0] = v81;
    v87 = *(v81 + 16);
    v86 = *(v81 + 24);
    if (v87 >= v86 >> 1)
    {
      sub_226AE29C0(v86 > 1, v87 + 1, 1);
      v81 = v103[0];
    }

    v80 = v80 + 1;
    *(v81 + 16) = v87 + 1;
    (*(v100 + 32))(v81 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v87, v48, v99);
    v82 = v66;
  }

  while (v98 != v80);
  __swift_destroy_boxed_opaque_existential_0Tm(v104);

  *v93 = v81;
LABEL_10:
  v36 = *MEMORY[0x277D85DE8];
}

void sub_226D2742C(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X5>, void *a6@<X8>)
{
  v76 = a5;
  v74 = a1;
  v75 = a3;
  v66 = a6;
  v8 = sub_226D66F0C();
  v80 = *(v8 - 8);
  v81 = v8;
  v9 = *(v80 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v79 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v83 = &v60 - v12;
  v82 = sub_226D66F9C();
  v73 = *(v82 - 8);
  v13 = *(v73 + 64);
  v14 = MEMORY[0x28223BE20](v82);
  v78 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - v16;
  sub_226D6A26C();
  v18 = sub_226D6A21C();
  [v18 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_226D71F30;
  *(v19 + 32) = sub_226D6A24C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D70840;
  *(inited + 32) = v74;
  *(inited + 40) = a2;

  sub_226AE3C28(inited);
  swift_setDeallocating();
  sub_226BC751C(inited + 32);
  v21 = sub_226D6A22C();

  *(v19 + 40) = v21;
  *(v19 + 48) = sub_226D6A23C();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v22 = sub_226D6E5CC();

  v23 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v18 setPredicate_];
  [v18 setFetchBatchSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_226D71840;
  v25 = MEMORY[0x277D837D0];
  *(v24 + 32) = 25705;
  *(v24 + 40) = 0xE200000000000000;
  *(v24 + 88) = v25;
  *(v24 + 56) = v25;
  *(v24 + 64) = 0xD000000000000011;
  *(v24 + 72) = 0x8000000226D881C0;
  v26 = sub_226D6E5CC();

  [v18 setPropertiesToFetch_];

  [v18 setIncludesSubentities_];
  v27 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v28 = sub_226D6E36C();
  v29 = [v27 initWithKey:v28 ascending:1];

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_226D71F20;
  *(v30 + 32) = v29;
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v31 = v29;
  v32 = sub_226D6E5CC();

  [v18 setSortDescriptors_];

  v33 = v77;
  v34 = sub_226D6EBBC();
  if (v33)
  {

    return;
  }

  v62 = v31;
  v63 = 0;
  v35 = v73;
  v36 = v66;
  v64 = v23;
  v77 = v17;
  v65 = v34;
  if (!(v34 >> 62))
  {
    v37 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v38 = v37;
    v39 = v80;
    v40 = v81;
    v41 = v79;
    v42 = v66;
    if (v37)
    {
      goto LABEL_5;
    }

LABEL_41:

    *v42 = MEMORY[0x277D84F90];
    v42[1] = 0;
    *(v42 + 16) = 1;
    return;
  }

LABEL_39:
  v58 = sub_226D6EDFC();
  v39 = v80;
  v40 = v81;
  v41 = v79;
  v42 = v36;
  if (!v58)
  {
    goto LABEL_41;
  }

  v59 = v58;
  v34 = sub_226D6EDFC();
  v37 = v59;
  v38 = v34;
LABEL_5:
  v61 = v37;
  v60 = v18;
  if (!a4)
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v72 = 0;
  v43 = 0;
  v76 = 0;
  v74 = v65 & 0xFFFFFFFFFFFFFF8;
  v75 = v65 & 0xC000000000000001;
  v73 = v65 + 32;
  v69 = (v39 + 2);
  v70 = (v35 + 2);
  v68 = v39 + 1;
  ++v35;
  v67 = v39 + 4;
  v39 = MEMORY[0x277D84F90];
  v71 = a4;
  v18 = v77;
  while (1)
  {
    v44 = v38 >= v43;
    if (a4 > 0)
    {
      v44 = v43 >= v38;
    }

    if (v44)
    {
      break;
    }

    v46 = !__OFADD__(v43, a4);
    HIDWORD(v72) = v46;
    v47 = 0x8000000000000000;
    if (!__OFADD__(v43, a4))
    {
      v47 = 0;
    }

    v76 = v47;
    if (__OFADD__(v43, a4))
    {
      v45 = ((v43 + a4) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v45 = v43 + a4;
    }

LABEL_21:
    a4 = v83;
    if (v75)
    {
      v48 = MEMORY[0x22AA8AFD0]();
    }

    else
    {
      if (v43 < 0)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (v43 >= *(v74 + 16))
      {
        goto LABEL_38;
      }

      v48 = *(v73 + 8 * v43);
    }

    v49 = v48;
    [v48 id];
    sub_226D66F7C();
    (*v70)(v78, v18, v82);
    sub_226D66EEC();
    (*v69)(v41, a4, v40);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_226BBBE10(0, v39[2] + 1, 1, v39);
    }

    v51 = v39[2];
    v50 = v39[3];
    v18 = v77;
    if (v51 >= v50 >> 1)
    {
      v39 = sub_226BBBE10(v50 > 1, v51 + 1, 1, v39);
    }

    v52 = v80;
    v36 = v81;
    (*(v80 + 8))(v83, v81);
    (*v35)(v18, v82);
    v39[2] = v51 + 1;
    v40 = v36;
    v53 = v39 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v51;
    v54 = *(v52 + 32);
    v41 = v79;
    v54(v53, v79, v36);
    v43 = v45;
    a4 = v71;
  }

  if (!((v43 != v38) | v72 & 1) && BYTE4(v72) & 1 | (v76 != 0x8000000000000000))
  {
    LODWORD(v72) = 1;
    v45 = v43;
    goto LABEL_21;
  }

  v42 = v66;
  *v66 = v39;
  v34 = v61 - 1;
  if (__OFSUB__(v61, 1))
  {
    goto LABEL_43;
  }

  v39 = v60;
  v18 = v64;
  if (v75)
  {
LABEL_44:
    v55 = MEMORY[0x22AA8AFD0](v34, v65);
LABEL_36:
    v56 = v55;

    v57 = [v56 transactionNumber];

    v42[1] = v57;
    *(v42 + 16) = 0;
    return;
  }

  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v34 < *(v74 + 16))
  {
    v55 = *(v73 + 8 * v34);
    goto LABEL_36;
  }

  __break(1u);
}

uint64_t static DaemonFinancialDataHistoricalQuery.computeChangeset(withBundleID:coreDataStorePolicyLevel:withToken:forEntityNamed:forAccountID:auxEntityPredicateProvider:insertionHistoryBatchSize:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v10;
  v8[11] = v11;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_226D27D34, 0, 0);
}

uint64_t sub_226D27D34()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 16);
  v7 = swift_task_alloc();
  v8 = *(v0 + 56);
  *(v7 + 16) = *(v0 + 24);
  *(v7 + 32) = v4;
  *(v7 + 40) = v8;
  *(v7 + 56) = v1;
  *(v7 + 64) = v3;
  *(v7 + 72) = v5;
  *(v7 + 80) = v2;
  sub_226D6C32C();
  sub_226D6EB8C();

  v9 = *(v0 + 8);

  return v9();
}

void sub_226D27E24(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v189 = a8;
  v200 = a7;
  v201 = a6;
  v211 = a5;
  v207 = a1;
  v208 = a2;
  v184 = a9;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9390, &qword_226D7D358);
  v12 = *(*(v182 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v182);
  v181 = (&v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v180 = &v170 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9370, &qword_226D7D228);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v185 = &v170 - v18;
  v19 = sub_226D66F9C();
  v191 = *(v19 - 8);
  v192 = v19;
  v20 = *(v191 + 64);
  MEMORY[0x28223BE20](v19);
  v190 = &v170 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_226D66F2C();
  v187 = *(v188 - 8);
  v22 = *(v187 + 64);
  v23 = MEMORY[0x28223BE20](v188);
  v179 = &v170 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v186 = (&v170 - v25);
  v26 = type metadata accessor for AccountIDAbsentPolicy();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v195 = &v170 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for HistoricalChangesParser();
  v29 = *(*(v194 - 8) + 64);
  MEMORY[0x28223BE20](v194);
  v197 = &v170 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v198 = &v170 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v196 = &v170 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v170 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v170 - v41;
  v202 = sub_226D6D52C();
  v43 = *(v202 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v202);
  v183 = &v170 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v193 = &v170 - v48;
  MEMORY[0x28223BE20](v47);
  v50 = &v170 - v49;
  v51 = sub_226D6A34C();
  v205 = *(v51 - 8);
  v206 = v51;
  v52 = *(v205 + 64);
  MEMORY[0x28223BE20](v51);
  v54 = &v170 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_226D67F1C();
  v55 = *(v204 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v204);
  v58 = &v170 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281062750 != -1)
  {
    swift_once();
  }

  v199 = a3;
  if ((sub_226D4D7A0(a3, a4, qword_281064558) & 1) == 0)
  {
    goto LABEL_14;
  }

  v178 = a4;
  v59 = *(v55 + 16);
  v176 = v55 + 16;
  v173 = v59;
  v59(v58, v207, v204);
  v60 = *(v205 + 16);
  v175 = v205 + 16;
  v174 = v60;
  v60(v54, v208, v206);
  v61 = v201;
  v62 = sub_226B724B0(v58, v54, v61);
  sub_226AC40E8(v211, v42, &qword_27D7A6D68, &qword_226D75210);
  v63 = *(v43 + 48);
  v64 = v43;
  v65 = v202;
  v66 = v63(v42, 1, v202);
  v177 = v64;
  if (v66 == 1)
  {

    sub_226AC47B0(v42, &qword_27D7A6D68, &qword_226D75210);
    goto LABEL_12;
  }

  v172 = v61;
  v171 = *(v64 + 32);
  v171(v50, v42, v65);
  v67 = sub_226D6D4AC();
  v68 = v198;
  (*(*(v67 - 8) + 56))(v198, 1, 1, v67);
  (*(v64 + 16))(v40, v50, v65);
  (*(v64 + 56))(v40, 0, 1, v65);
  v201 = v62;
  if (v62)
  {
    v69 = v196;
    sub_226AC40E8(v40, v196, &qword_27D7A6D68, &qword_226D75210);
    if (v63(v69, 1, v65) == 1)
    {

      sub_226AC47B0(v40, &qword_27D7A6D68, &qword_226D75210);
      (*(v177 + 8))(v50, v65);
      sub_226AC47B0(v69, &qword_27D7A6D68, &qword_226D75210);
      sub_226AC47B0(v68, &qword_27D7A8BE0, &unk_226D718F0);
LABEL_14:
      sub_226C1A7A0();
      swift_allocError();
      swift_willThrow();
      return;
    }

    v70 = v193;
    v71 = (v171)(v193, v69, v65);
    MEMORY[0x28223BE20](v71);
    v168 = v70;
    v169 = v68;
    v72 = i;
    v73 = sub_226CCB4D4(sub_226B36EA8, (&v170 - 4), v201);
    i = v72;

    sub_226AC47B0(v40, &qword_27D7A6D68, &qword_226D75210);
    v74 = *(v177 + 8);
    v74(v50, v65);
    v74(v70, v65);
    sub_226AC47B0(v68, &qword_27D7A8BE0, &unk_226D718F0);
    if ((v73 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_226AC47B0(v40, &qword_27D7A6D68, &qword_226D75210);
    (*(v64 + 8))(v50, v65);
    sub_226AC47B0(v68, &qword_27D7A8BE0, &unk_226D718F0);
  }

  v61 = v172;
LABEL_12:
  v75 = v200;
  v76 = sub_226D6BA6C();
  v77 = i;
  sub_226D29828(v61);
  if (v77)
  {
  }

  else
  {
    LODWORD(v198) = v79;
    v201 = v78;
    v80 = v194;
    v81 = v197;
    v82 = &v197[*(v194 + 20)];
    v83 = v208;
    i = 0;
    v84 = v206;
    v85 = v174;
    v174(v82, v208, v206);
    v173(&v81[v80[7]], v207, v204);
    v86 = v178;
    *v81 = v199;
    *(v81 + 1) = v86;
    *&v81[v80[6]] = v61;
    *&v81[v80[8]] = v76;
    v87 = v195;
    v85(v195, v83, v84);
    (*(v205 + 56))(v87, 0, 1, v84);
    v88 = v61;
    v89 = v178;

    v90 = v89;
    v91 = i;
    v92 = sub_226D2A284(v199, v90, v211, v75, v87);
    sub_226D2A8D8(v87, type metadata accessor for AccountIDAbsentPolicy);
    if (v91)
    {
      sub_226D2A8D8(v81, type metadata accessor for HistoricalChangesParser);
    }

    else
    {
      v208 = v88;
      v93 = v186;
      sub_226D66EFC();
      v94 = v187;
      v95 = v188;
      v96 = (*(v187 + 88))(v93, v188);
      if (v96 == *MEMORY[0x277CC6640])
      {
        (*(v94 + 96))(v93, v95);
        v97 = *v93;
        v98 = v208;
        sub_226D2A938(*v93, v92, v208);
        v118 = v117;

        v119 = sub_226CB303C(v118);

        while (1)
        {
          v121 = v197;
          v122 = v178;
          v123 = v199;
          if (!v119[2])
          {

            sub_226D6C31C();
            goto LABEL_54;
          }

          v124 = sub_226B342A8(v119, v211);
          v126 = v125;
          v128 = v127;
          v129 = v124;

          v130 = v129;
          v131 = sub_226B34224(v129, v126, v128);
          v132 = v126;
          if (v131)
          {
            break;
          }

          sub_226D2B66C(v130, v126, v128, v211, v123, v122, v98);
          v134 = v133;
          v102 = 0;
          v206 = v130;
          v207 = v128;
          if ((v130 & 0xC000000000000001) != 0)
          {
            if (v130 >= 0)
            {
              v130 &= 0xFFFFFFFFFFFFFF8uLL;
            }

            v135 = sub_226D6EDFC();
            v128 = v207;
            v136 = sub_226C27938(v130, v135);
          }

          else
          {
          }

          v137 = v177;
          v138 = sub_226D29450(v134, v136);
          v139 = sub_226D24EC4(v138);

          v199 = v139;
          v200 = v132;
          if ((v132 & 0xC000000000000001) != 0)
          {
            if (v132 < 0)
            {
              v140 = v132;
            }

            else
            {
              v140 = v132 & 0xFFFFFFFFFFFFFF8;
            }

            v141 = sub_226D6EDFC();
            v142 = sub_226C27938(v140, v141);
          }

          else
          {

            v142 = v132;
          }

          v143 = sub_226D29450(v134, v142);

          v198 = sub_226D24EC4(v143);

          v144 = v128 + 64;
          v145 = 1 << *(v128 + 32);
          v146 = -1;
          if (v145 < 64)
          {
            v146 = ~(-1 << v145);
          }

          v147 = v146 & *(v128 + 64);
          v148 = (v145 + 63) >> 6;
          v201 = (v137 + 16);
          v211 = v137 + 32;
          swift_bridgeObjectRetain_n();
          v149 = 0;
          v150 = MEMORY[0x277D84F90];
          v204 = v128 + 64;
          v205 = v148;
          for (i = 0; v147; v144 = v204)
          {
            v151 = v150;
LABEL_47:
            v153 = __clz(__rbit64(v147)) | (v149 << 6);
            v154 = *(v207 + 56);
            v155 = *(*(v207 + 48) + 8 * v153);
            v208 = *(v137 + 72);
            v156 = v182;
            v157 = v180;
            v158 = v202;
            (*(v137 + 16))(&v180[*(v182 + 48)], v154 + v208 * v153, v202);
            *v157 = v155;
            v159 = v181;
            sub_226D2C00C(v157, v181);
            v160 = *v159;
            v161 = v155;

            v162 = v158;
            v163 = *(v137 + 32);
            v163(v183, v159 + *(v156 + 48), v162);
            v150 = v151;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v150 = sub_226BBB95C(0, v151[2] + 1, 1, v151);
            }

            v148 = v205;
            v165 = v150[2];
            v164 = v150[3];
            if (v165 >= v164 >> 1)
            {
              v150 = sub_226BBB95C(v164 > 1, v165 + 1, 1, v150);
            }

            v166 = v202;
            v102 = i;
            v147 &= v147 - 1;
            v150[2] = v165 + 1;
            v163(v150 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + v165 * v208, v183, v166);
          }

          while (1)
          {
            v152 = v149 + 1;
            if (__OFADD__(v149, 1))
            {
              break;
            }

            if (v152 >= v148)
            {

              swift_bridgeObjectRelease_n();

              sub_226D6C30C();
              v121 = v197;
              goto LABEL_54;
            }

            v147 = *(v144 + 8 * v152);
            ++v149;
            if (v147)
            {
              v151 = v150;
              v149 = v152;
              goto LABEL_47;
            }
          }

          __break(1u);
LABEL_56:
          sub_226D6E61C();
LABEL_21:
          sub_226D6E65C();
          sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
          v107 = sub_226D6E5CC();

          v108 = [objc_opt_self() andPredicateWithSubpredicates_];

          [v102 setPredicate_];
          [v102 setFetchLimit_];
          [v102 setIncludesSubentities_];
          v109 = objc_allocWithZone(MEMORY[0x277CCAC98]);
          v110 = sub_226D6E36C();
          v111 = [v109 initWithKey:v110 ascending:1];

          v112 = swift_allocObject();
          *(v112 + 16) = xmmword_226D71F20;
          *(v112 + 32) = v111;
          sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
          v113 = v111;
          v114 = sub_226D6E5CC();

          [v102 setSortDescriptors_];

          v98 = v208;
          v115 = i;
          v116 = sub_226D6EBBC();
          if (v115)
          {

            (*(v191 + 8))(v190, v192);
            sub_226D2A8D8(v197, type metadata accessor for HistoricalChangesParser);
            return;
          }

          v120 = v116;

          v119 = sub_226CB321C(v120);

          (*(v191 + 8))(v190, v192);
        }

        sub_226D6C31C();
        v121 = v197;
LABEL_54:
        sub_226D2A8D8(v121, type metadata accessor for HistoricalChangesParser);
      }

      else
      {
        i = 0;
        if (v96 == *MEMORY[0x277CC6638])
        {
          v207 = a10;
          (*(v94 + 96))(v93, v95);
          v99 = v190;
          v100 = v191;
          v101 = v192;
          (*(v191 + 32))(v190, v93, v192);
          sub_226D6A26C();
          v102 = sub_226D6A21C();
          [v102 setReturnsObjectsAsFaults_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_226D71F40;
          v104 = sub_226D6A22C();

          *(v103 + 32) = v104;
          v105 = v185;
          (*(v100 + 16))(v185, v99, v101);
          (*(v100 + 56))(v105, 0, 1, v101);
          v106 = sub_226D6A23C();
          sub_226AC47B0(v105, &qword_27D7A9370, &qword_226D7D228);
          *(v103 + 40) = v106;
          v209 = v103;
          sub_226D6A24C();
          MEMORY[0x22AA8A610]();
          if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_56;
          }

          goto LABEL_21;
        }

        v209 = 0;
        v210 = 0xE000000000000000;
        sub_226D6EEFC();
        MEMORY[0x22AA8A510](0xD00000000000001BLL, 0x8000000226D88130);
        v167 = v179;
        sub_226D66EFC();
        sub_226D6EFBC();
        (*(v94 + 8))(v167, v95);
        LODWORD(v169) = 0;
        v168 = 344;
        sub_226D6F0AC();
        __break(1u);
      }
    }
  }
}

unint64_t sub_226D293B0()
{
  result = qword_27D7A9388;
  if (!qword_27D7A9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A9388);
  }

  return result;
}

uint64_t type metadata accessor for AccountIDAbsentPolicy()
{
  result = qword_281061E58;
  if (!qword_281061E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226D29450(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_226D295F0(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_226D2C07C(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x22AA8BEE0](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_226D295F0(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 62)
  {
LABEL_25:
    v29 = a3 & 0xFFFFFFFFFFFFFF8;
    v23 = a3;
    v31 = sub_226D6EDFC();
    v4 = v23;
  }

  else
  {
    v29 = a3 & 0xFFFFFFFFFFFFFF8;
    v31 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = a3;
  }

  v5 = 0;
  v6 = 0;
  v30 = v4 & 0xC000000000000001;
  v24 = v4;
  v28 = v4 + 32;
  v32 = a4 + 56;
LABEL_4:
  v26 = v5;
  while (v6 != v31)
  {
    if (v30)
    {
      v7 = MEMORY[0x22AA8AFD0](v6, v24);
    }

    else
    {
      if (v6 >= *(v29 + 16))
      {
        goto LABEL_24;
      }

      v7 = *(v28 + 8 * v6);
    }

    v8 = v7;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v10 = *(a4 + 40);
    v11 = sub_226D6EC2C();
    v12 = -1 << *(a4 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & *(v32 + 8 * (v13 >> 6))) != 0)
    {
      sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
      v16 = *(*(a4 + 48) + 8 * v13);
      v17 = sub_226D6EC3C();

      if ((v17 & 1) == 0)
      {
        v18 = ~v12;
        do
        {
          v13 = (v13 + 1) & v18;
          v14 = v13 >> 6;
          v15 = 1 << v13;
          if (((1 << v13) & *(v32 + 8 * (v13 >> 6))) == 0)
          {
            goto LABEL_5;
          }

          v19 = *(*(a4 + 48) + 8 * v13);
          v20 = sub_226D6EC3C();
        }

        while ((v20 & 1) == 0);
      }

      v21 = a1[v14];
      a1[v14] = v21 | v15;
      if ((v21 & v15) == 0)
      {
        v5 = v26 + 1;
        if (!__OFADD__(v26, 1))
        {
          goto LABEL_4;
        }

        __break(1u);
        break;
      }
    }

    else
    {
LABEL_5:
    }
  }

  return sub_226D56910(a1, a2, v26, a4);
}

void sub_226D29828(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() fetchHistoryAfterToken_];
  [v2 setFetchLimit_];
  *&v14[0] = 0;
  v3 = [a1 executeRequest:v2 error:v14];
  v4 = *&v14[0];
  if (!v3)
  {
    v10 = *&v14[0];
    sub_226D6D04C();

    swift_willThrow();
    goto LABEL_17;
  }

  v5 = v3;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  v7 = v4;
  if (![v6 result])
  {
LABEL_16:

    goto LABEL_17;
  }

  sub_226D6ED0C();
  swift_unknownObjectRelease();
  sub_226B24A98(v13, v14);
  sub_226AC4708(v14, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    goto LABEL_16;
  }

  if (v12 >> 62)
  {
    if (sub_226D6EDFC())
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    __swift_destroy_boxed_opaque_existential_0Tm(v14);

    goto LABEL_16;
  }

LABEL_6:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x22AA8AFD0](0);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v8 = *(v12 + 32);
  }

  v9 = v8;

  if ([v9 transactionNumber] < 2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  else
  {
    [v9 transactionNumber];

    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

LABEL_17:
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226D29AC4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v70 = a5;
  v71 = a1;
  LODWORD(v74) = a4;
  v69[0] = a3;
  v6 = sub_226D66F9C();
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = v72[8];
  MEMORY[0x28223BE20](v6);
  v9 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D66F2C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v69[1] = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (v69 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DA8, &unk_226D7D230);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v69 - v19;
  v21 = sub_226D66F0C();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v69 - v26;
  v29 = v28;
  v31 = v30;
  sub_226AC40E8(a2, v20, &qword_27D7A8DA8, &unk_226D7D230);
  if ((*(v29 + 48))(v20, 1, v31) == 1)
  {
    sub_226AC47B0(v20, &qword_27D7A8DA8, &unk_226D7D230);
    return 1;
  }

  (*(v29 + 32))(v27, v20, v31);
  sub_226D66EFC();
  v33 = (*(v11 + 88))(v16, v10);
  v34 = v27;
  v35 = v11;
  if (v33 == *MEMORY[0x277CC6640])
  {
    (*(v11 + 96))(v16, v10);
    v36 = *v16;
    if (v74)
    {
      (*(v29 + 8))(v27, v31);

      return 1;
    }

    v39 = sub_226D6EB3C();
    if (v39)
    {
      v40 = v31;
      v41 = v39;
      v42 = [v39 identifier];

      if (v42)
      {
        v43 = sub_226D6E39C();
        v45 = v44;

        result = [v36 storeTokens];
        if (result)
        {
          v46 = result;
          v31 = v40;
          sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
          v47 = sub_226D6E2BC();

          if (*(v47 + 16))
          {
            v48 = sub_226C2FDD4(v43, v45);
            v50 = v49;

            if (v50)
            {
              v51 = *(*(v47 + 56) + 8 * v48);

              v52 = [v51 longLongValue];

              (*(v29 + 8))(v34, v40);
              return v52 >= v69[0];
            }

            (*(v29 + 8))(v34, v40);
            return 0;
          }

LABEL_27:
          (*(v29 + 8))(v34, v31);
          return 0;
        }

        __break(1u);
        return result;
      }

      (*(v29 + 8))(v27, v40);
    }

    else
    {
      (*(v29 + 8))(v27, v31);
    }

    return 0;
  }

  if (v33 == *MEMORY[0x277CC6638])
  {
    (*(v11 + 96))(v16, v10);
    v38 = v72;
    v37 = v73;
    (v72[4])(v9, v16, v73);
    if ((v74 & 1) == 0)
    {
      v66 = v31;
      v67 = sub_226D66F8C();
      (v38[1])(v9, v37);
      (*(v29 + 8))(v34, v66);
      return v67 <= v70;
    }

    (v38[1])(v9, v37);
    goto LABEL_27;
  }

  if (qword_28105F5F8 != -1)
  {
    swift_once();
  }

  v53 = sub_226D6E07C();
  __swift_project_value_buffer(v53, qword_28105F600);
  (*(v29 + 16))(v25, v27, v31);
  v54 = sub_226D6E05C();
  v55 = sub_226D6E9CC();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v71 = v31;
    v57 = v56;
    v72 = swift_slowAlloc();
    v75 = v72;
    *v57 = 136315138;
    v73 = v27;
    sub_226D66EFC();
    v58 = sub_226D6E3FC();
    v60 = v59;
    v74 = v35;
    v61 = *(v29 + 8);
    v62 = v25;
    v63 = v71;
    v61(v62, v71);
    v64 = sub_226AC4530(v58, v60, &v75);

    *(v57 + 4) = v64;
    _os_log_impl(&dword_226AB4000, v54, v55, "Failed to cast history results %s", v57, 0xCu);
    v65 = v72;
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    MEMORY[0x22AA8BEE0](v65, -1, -1);
    MEMORY[0x22AA8BEE0](v57, -1, -1);

    v61(v73, v63);
    v35 = v74;
  }

  else
  {

    v68 = *(v29 + 8);
    v68(v25, v31);
    v68(v27, v31);
  }

  (*(v35 + 8))(v16, v10);
  return 0;
}

uint64_t sub_226D2A284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v55 = a3;
  v58 = a4;
  v57 = sub_226D6A34C();
  v56 = *(v57 - 8);
  v7 = *(v56 + 64);
  v8 = MEMORY[0x28223BE20](v57);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v52 - v11;
  v12 = type metadata accessor for AccountIDAbsentPolicy();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D70840;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v17 = sub_226B1EC00(inited);
  swift_setDeallocating();
  sub_226BC751C(inited + 32);
  v60 = v17;
  sub_226D6787C();
  v18 = [swift_getObjCClassFromMetadata() entityName];
  v19 = sub_226D6E39C();
  v21 = v20;

  if (v19 == a1 && v21 == a2)
  {

LABEL_5:
    sub_226D683BC();
    v23 = [swift_getObjCClassFromMetadata() entityName];
    v24 = sub_226D6E39C();
    v26 = v25;

    sub_226C24D14(&v59, v24, v26);

    goto LABEL_6;
  }

  v22 = sub_226D6F21C();

  if (v22)
  {
    goto LABEL_5;
  }

  v47 = sub_226D6D52C();
  if ((*(*(v47 - 8) + 48))(v55, 1, v47) != 1)
  {
    goto LABEL_6;
  }

  sub_226D2C0B0(v54, v15);
  if ((*(v56 + 48))(v15, 1, v57) == 1)
  {
    goto LABEL_6;
  }

  v48 = v56;
  v49 = v53;
  v50 = v57;
  (*(v56 + 32))(v53, v15, v57);
  (*(v48 + 16))(v10, v49, v50);
  v51 = (*(v48 + 88))(v10, v50);
  if (v51 == *MEMORY[0x277CC7BB8])
  {
LABEL_32:
    (*(v56 + 8))(v49, v57);
LABEL_6:
    result = sub_226D6BA6C();
    v28 = 0;
    v29 = result + 64;
    v30 = 1 << *(result + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(result + 64);
    v33 = (v30 + 63) >> 6;
    v57 = v33;
    v58 = result;
    while (v32)
    {
LABEL_16:
      v35 = (*(result + 48) + ((v28 << 10) | (16 * __clz(__rbit64(v32)))));
      v37 = *v35;
      v36 = v35[1];
      v38 = qword_281062750;

      if (v38 != -1)
      {
        swift_once();
      }

      v39 = qword_281064558;
      if (!*(qword_281064558 + 16) || (v40 = *(qword_281064558 + 40), sub_226D6F2FC(), sub_226D6E42C(), v41 = sub_226D6F35C(), v42 = -1 << *(v39 + 32), v43 = v41 & ~v42, ((*(v39 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0))
      {
LABEL_27:

        sub_226C1A7A0();
        swift_allocError();
        swift_willThrow();
      }

      v32 &= v32 - 1;
      v44 = ~v42;
      while (1)
      {
        v45 = (*(v39 + 48) + 16 * v43);
        v46 = *v45 == v37 && v45[1] == v36;
        if (v46 || (sub_226D6F21C() & 1) != 0)
        {
          break;
        }

        v43 = (v43 + 1) & v44;
        if (((*(v39 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      sub_226C24D14(&v59, v37, v36);

      v33 = v57;
      result = v58;
    }

    while (1)
    {
      v34 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_39;
      }

      if (v34 >= v33)
      {

        return v60;
      }

      v32 = *(v29 + 8 * v34);
      ++v28;
      if (v32)
      {
        v28 = v34;
        goto LABEL_16;
      }
    }
  }

  if (v51 == *MEMORY[0x277CC7BA0])
  {
    goto LABEL_34;
  }

  if (v51 == *MEMORY[0x277CC7BA8])
  {
    goto LABEL_32;
  }

  if (v51 == *MEMORY[0x277CC7BB0] || v51 == *MEMORY[0x277CC7BC0])
  {
LABEL_34:

    sub_226C1A7A0();
    swift_allocError();
    swift_willThrow();
    return (*(v56 + 8))(v49, v57);
  }

  result = sub_226D6F0AC();
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_226D2A8D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226D2A938(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v116 = *MEMORY[0x277D85DE8];
  v8 = objc_opt_self();
  v9 = [v8 fetchRequest];
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    goto LABEL_20;
  }

  v11 = v9;
  v12 = [v8 entityDescriptionWithContext_];
  if (!v12)
  {
LABEL_19:

    goto LABEL_20;
  }

  v13 = v12;
  v14 = [v12 propertiesByName];
  sub_226AE59B4(0, &unk_28105F430, 0x277CBE4F0);
  v15 = sub_226D6E2BC();

  if (!*(v15 + 16) || (v16 = sub_226C2FDD4(0x456465676E616863, 0xED0000797469746ELL), (v17 & 1) == 0))
  {

    goto LABEL_19;
  }

  v106 = a1;
  v107 = a3;
  v99 = v13;
  v103 = v11;
  v101 = *(*(v15 + 56) + 8 * v16);

  v109 = v10;
  *&v114 = v10;
  v18 = a2 + 56;
  v19 = 1 << *(a2 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a2 + 56);
  v22 = (v19 + 63) >> 6;

  v23 = 0;
  if (!v21)
  {
    goto LABEL_10;
  }

  do
  {
LABEL_8:
    while (1)
    {
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v25 = (*(a2 + 48) + ((v23 << 10) | (16 * v24)));
      v26 = *v25;
      v27 = v25[1];
      v4 = objc_opt_self();

      v28 = sub_226D6E36C();
      v14 = [v4 entityForName:v28 inManagedObjectContext:v107];

      if (v14)
      {
        break;
      }

      if (!v21)
      {
        goto LABEL_10;
      }
    }

    MEMORY[0x22AA8A610]();
    if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v4 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_226D6E61C();
    }

    sub_226D6E65C();
    v109 = v114;
  }

  while (v21);
  while (1)
  {
LABEL_10:
    v29 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (v29 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v29);
    ++v23;
    if (v21)
    {
      v23 = v29;
      goto LABEL_8;
    }
  }

  v31 = sub_226D6EB3C();
  if (!v31 || (v32 = v31, v33 = [v31 identifier], v32, !v33))
  {
LABEL_100:
    __break(1u);
    return;
  }

  v34 = sub_226D6E39C();
  v36 = v35;

  v37 = [v106 storeTokens];
  if (!v37)
  {
    __break(1u);
    goto LABEL_98;
  }

  v38 = v37;
  v39 = sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
  v40 = MEMORY[0x277D837D0];
  v41 = sub_226D6E2BC();

  if (!*(v41 + 16))
  {
LABEL_98:

    goto LABEL_99;
  }

  v42 = sub_226C2FDD4(v34, v36);
  v44 = v43;

  if ((v44 & 1) == 0)
  {
LABEL_99:

    goto LABEL_100;
  }

  v45 = *(*(v41 + 56) + 8 * v42);

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_226D70840;
  *(v46 + 56) = v39;
  *(v46 + 64) = sub_226C8BE70(&qword_27D7A8D30, &qword_27D7A6278, 0x277CCABB0);
  *(v46 + 32) = v45;
  v21 = v45;
  v47 = sub_226D6E91C();
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_226D71840;
  v49 = [v101 name];
  v50 = sub_226D6E39C();
  v51 = v101;
  v53 = v52;

  *(v48 + 56) = v40;
  *(v48 + 64) = sub_226B16404();
  *(v48 + 32) = v50;
  *(v48 + 40) = v53;
  *(v48 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D40, &qword_226D7B320);
  *(v48 + 104) = sub_226AC4194(&unk_28105F508, &qword_27D7A8D40, &qword_226D7B320);
  *(v48 + 72) = v109;
  v54 = sub_226D6E91C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_226D71F40;
  *(v55 + 32) = v47;
  *(v55 + 40) = v54;
  v56 = v47;
  v57 = v54;
  v58 = sub_226D6E5CC();

  v59 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v103 setPredicate_];
  v18 = [objc_opt_self() fetchHistoryWithFetchRequest_];
  [v18 setResultType_];
  *&v114 = 0;
  v60 = [v107 executeRequest:v18 error:&v114];
  v61 = v114;
  v100 = v60;
  if (!v60)
  {
    v63 = v114;
    sub_226D6D04C();

    swift_willThrow();
    goto LABEL_20;
  }

  v96 = v18;
  v97 = v57;
  v98 = v21;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClassUnconditional();
  v62 = v61;
  v4 = &selRef_setSortDescriptors_;
  if ([v14 result])
  {
    sub_226D6ED0C();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v114 = v112;
  v115 = v113;
  if (!*(&v113 + 1))
  {
LABEL_77:
    v18 = v51;
    sub_226AC47B0(&v114, &unk_27D7A8BB0, &unk_226D74340);
    goto LABEL_79;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = v101;
LABEL_79:
    v21 = v56;
    if (qword_28105F5F8 == -1)
    {
LABEL_80:
      v86 = sub_226D6E07C();
      __swift_project_value_buffer(v86, qword_28105F600);
      v87 = v100;
      v88 = sub_226D6E05C();
      v89 = sub_226D6E9CC();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *&v112 = v91;
        *v90 = 136315138;
        if ([v14 *(v4 + 816)])
        {
          sub_226D6ED0C();
          swift_unknownObjectRelease();
        }

        else
        {
          v114 = 0u;
          v115 = 0u;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BB0, &unk_226D74340);
        v92 = sub_226D6E3FC();
        v94 = sub_226AC4530(v92, v93, &v112);

        *(v90 + 4) = v94;
        _os_log_impl(&dword_226AB4000, v88, v89, "Failed to cast history results %s", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v91);
        MEMORY[0x22AA8BEE0](v91, -1, -1);
        MEMORY[0x22AA8BEE0](v90, -1, -1);
      }

      else
      {
      }

      goto LABEL_20;
    }

LABEL_94:
    swift_once();
    goto LABEL_80;
  }

  v14 = v111;
  if (v111 >> 62)
  {
    v4 = sub_226D6EDFC();
    v95 = v56;
    if (!v4)
    {
      goto LABEL_96;
    }

LABEL_35:
    v56 = 0;
    v51 = MEMORY[0x277D84F90];
    v102 = v4;
    while (1)
    {
      if ((v111 & 0xC000000000000001) != 0)
      {
        v64 = MEMORY[0x22AA8AFD0](v56, v14);
      }

      else
      {
        if (v56 >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_91;
        }

        v64 = *(v111 + 32 + 8 * v56);
      }

      v65 = v64;
      v66 = __OFADD__(v56++, 1);
      if (v66)
      {
        goto LABEL_88;
      }

      v67 = [v64 changes];
      if (!v67)
      {

        goto LABEL_37;
      }

      v68 = v67;
      v21 = sub_226AE59B4(0, &unk_27D7A8C30, 0x277CBE4A8);
      v18 = sub_226D6E5EC();

      v69 = v18 >> 62;
      v108 = v65;
      if (v18 >> 62)
      {
        v14 = sub_226D6EDFC();
      }

      else
      {
        v14 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v70 = v51 >> 62;
      if (v51 >> 62)
      {
        v85 = sub_226D6EDFC();
        v4 = v14 + v85;
        if (__OFADD__(v85, v14))
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }
      }

      else
      {
        v71 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v4 = v14 + v71;
        if (__OFADD__(v71, v14))
        {
          goto LABEL_76;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v70)
        {
          goto LABEL_55;
        }

        v110 = v51;
        v72 = v51 & 0xFFFFFFFFFFFFFF8;
        if (v4 <= *(v72 + 24) >> 1)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v70)
        {
LABEL_55:
          sub_226D6EDFC();
          goto LABEL_56;
        }

        v72 = v51 & 0xFFFFFFFFFFFFFF8;
      }

      v73 = *(v72 + 16);
LABEL_56:
      v110 = sub_226D6EF3C();
      v72 = v110 & 0xFFFFFFFFFFFFFF8;
LABEL_57:
      v74 = *(v72 + 16);
      v75 = *(v72 + 24);
      if (v69)
      {
        v4 = sub_226D6EDFC();
        if (!v4)
        {
LABEL_63:

          v78 = v14 <= 0;
          v51 = v110;
          v4 = v102;
          v14 = v111;
          if (!v78)
          {
            goto LABEL_89;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v4 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          goto LABEL_63;
        }
      }

      v105 = v14;
      if (((v75 >> 1) - v74) < v14)
      {
        goto LABEL_90;
      }

      v104 = v72;
      v76 = v72 + 8 * v74 + 32;
      v14 = &unk_226D758E0;
      if (v69)
      {
        if (v4 < 1)
        {
          goto LABEL_93;
        }

        sub_226AC4194(&qword_27D7A91B0, &qword_27D7A6F78, &unk_226D758E0);
        v79 = 0;
        v80 = v18;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F78, &unk_226D758E0);
          v21 = sub_226C3A888(&v114, v79, v80);
          v18 = *v81;
          (v21)(&v114, 0);
          *(v76 + 8 * v79++) = v18;
        }

        while (v4 != v79);

        v77 = v105;
      }

      else
      {
        v77 = v105;
        swift_arrayInitWithCopy();
      }

      v78 = v77 <= 0;
      v82 = v77;
      v4 = v102;
      v14 = v111;
      if (!v78)
      {
        v83 = *(v104 + 16);
        v66 = __OFADD__(v83, v82);
        v84 = v83 + v82;
        if (v66)
        {
          goto LABEL_92;
        }

        *(v104 + 16) = v84;
      }

      v51 = v110;
LABEL_37:
      if (v56 == v4)
      {
        goto LABEL_96;
      }
    }
  }

  v4 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v95 = v56;
  if (v4)
  {
    goto LABEL_35;
  }

LABEL_96:

LABEL_20:
  v30 = *MEMORY[0x277D85DE8];
}

void sub_226D2B66C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v79 = a4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v75 - v17;
  v19 = sub_226D6D52C();
  v81 = *(v19 - 8);
  v82 = v19;
  v20 = *(v81 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {

    if (sub_226D6EDFC())
    {
      goto LABEL_10;
    }
  }

  else
  {
    v23 = *(a1 + 16);

    if (v23)
    {
      goto LABEL_10;
    }
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    if (!sub_226D6EDFC())
    {
LABEL_9:
      if (!*(a3 + 16))
      {

LABEL_45:

        return;
      }
    }
  }

  else if (!*(a2 + 16))
  {
    goto LABEL_9;
  }

LABEL_10:
  v78 = v22;
  v80 = v8;
  sub_226B8C2B4(a2, a1);
  v25 = v24;
  v26 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v75[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v27 = swift_allocObject();
  v76 = xmmword_226D70840;
  *(v27 + 16) = xmmword_226D70840;
  *(v27 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D70, &qword_226D73128);
  *(v27 + 64) = sub_226AC4194(&qword_27D7A6D78, &qword_27D7A6D70, &qword_226D73128);
  *(v27 + 32) = v25;
  v77 = v26;
  v28 = sub_226D6E91C();
  sub_226AC40E8(v79, v18, &qword_27D7A6D68, &qword_226D75210);
  v30 = v81;
  v29 = v82;
  if ((*(v81 + 48))(v18, 1, v82) == 1)
  {
    sub_226AC47B0(v18, &qword_27D7A6D68, &qword_226D75210);
    goto LABEL_18;
  }

  (*(v30 + 32))(v78, v18, v29);
  sub_226D69F0C();
  v31 = [swift_getObjCClassFromMetadata() entityName];
  v32 = sub_226D6E39C();
  v34 = v33;

  v75[0] = a7;
  if (v32 != a5 || v34 != a6)
  {
    v35 = sub_226D6F21C();

    if (v35)
    {
      goto LABEL_16;
    }

    sub_226D6AC0C();
    v57 = [swift_getObjCClassFromMetadata() entityName];
    v58 = sub_226D6E39C();
    v60 = v59;

    if (v58 != a5 || v60 != a6)
    {
      v64 = sub_226D6F21C();

      if (v64)
      {
        goto LABEL_16;
      }

      sub_226D6B4FC();
      v65 = [swift_getObjCClassFromMetadata() entityName];
      v66 = sub_226D6E39C();
      v68 = v67;

      if (v66 == a5 && v68 == a6)
      {

        v41 = v82;
      }

      else
      {
        v69 = sub_226D6F21C();

        v41 = v82;
        if ((v69 & 1) == 0)
        {
          v73 = swift_allocObject();
          *(v73 + 16) = v76;
          v39 = v78;
          v74 = sub_226D6D4DC();
          *(v73 + 56) = sub_226AE59B4(0, &qword_27D7A8890, 0x277CCAD78);
          *(v73 + 64) = sub_226C8BE70(&qword_27D7A8898, &qword_27D7A8890, 0x277CCAD78);
          *(v73 + 32) = v74;
          goto LABEL_42;
        }
      }

      v82 = "Unsupported history marker ";
      v70 = swift_allocObject();
      *(v70 + 16) = v76;
      v71 = v78;
      v72 = sub_226D6D4DC();
      *(v70 + 56) = sub_226AE59B4(0, &qword_27D7A8890, 0x277CCAD78);
      *(v70 + 64) = sub_226C8BE70(&qword_27D7A8898, &qword_27D7A8890, 0x277CCAD78);
      *(v70 + 32) = v72;
      v39 = v71;
LABEL_42:
      v40 = sub_226D6E91C();
      goto LABEL_17;
    }
  }

LABEL_16:
  v36 = swift_allocObject();
  *(v36 + 16) = v76;
  v37 = v78;
  v38 = sub_226D6D4DC();
  *(v36 + 56) = sub_226AE59B4(0, &qword_27D7A8890, 0x277CCAD78);
  *(v36 + 64) = sub_226C8BE70(&qword_27D7A8898, &qword_27D7A8890, 0x277CCAD78);
  *(v36 + 32) = v38;
  v39 = v37;
  v40 = sub_226D6E91C();
  v41 = v82;
LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_226D71F40;
  *(v42 + 32) = v28;
  *(v42 + 40) = v40;
  v43 = v40;
  v44 = v28;
  v45 = sub_226D6E5CC();

  v28 = [objc_opt_self() andPredicateWithSubpredicates_];

  (*(v81 + 8))(v39, v41);
LABEL_18:
  v46 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v47 = sub_226D6E36C();
  v48 = [v46 initWithEntityName_];

  [v48 setPredicate_];
  [v48 setReturnsObjectsAsFaults_];
  sub_226AE59B4(0, &qword_27D7A67C8, 0x277CBE438);
  v49 = v80;
  v50 = sub_226D6EBBC();
  if (v49)
  {

    return;
  }

  v51 = v50;
  if (!(v50 >> 62))
  {
    v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

  v52 = sub_226D6EDFC();
  if (!v52)
  {
LABEL_44:

    goto LABEL_45;
  }

LABEL_22:
  v83 = MEMORY[0x277D84F90];
  sub_226D6EF8C();
  if (v52 < 0)
  {
    __break(1u);
  }

  else
  {
    v80 = 0;
    if ((v51 & 0xC000000000000001) != 0)
    {
      v53 = 0;
      do
      {
        v54 = v53 + 1;
        v55 = [MEMORY[0x22AA8AFD0]() objectID];
        swift_unknownObjectRelease();
        sub_226D6EF6C();
        v56 = *(v83 + 16);
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
        v53 = v54;
      }

      while (v52 != v54);
    }

    else
    {
      v61 = 32;
      do
      {
        v62 = [*(v51 + v61) objectID];
        sub_226D6EF6C();
        v63 = *(v83 + 16);
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
        v61 += 8;
        --v52;
      }

      while (v52);
    }
  }
}

uint64_t sub_226D2C00C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9390, &qword_226D7D358);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D2C07C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_226D295F0(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_226D2C0B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountIDAbsentPolicy();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D2C13C()
{
  v0 = sub_226D6A34C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

id sub_226D2C1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v51 = a4;
  v13 = sub_226D6734C();
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v47 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_226D6D1AC();
  v50 = *(v16 - 8);
  v17 = *(v50 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a3 + 8);
  v21 = sub_226D6EC9C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  v20(a1, a2, a3);
  v26 = *(a2 - 8);
  if ((*(v26 + 48))(v25, 1, a2) == 1)
  {
    (*(v22 + 8))(v25, v21);
    v27 = sub_226D6735C();
    return (*(*(v27 - 8) + 56))(v51, 1, 1, v27);
  }

  v53 = a2;
  v54 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v52);
  (*(v26 + 32))(boxed_opaque_existential_1, v25, a2);
  sub_226AC484C(&v52, v55);
  v30 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:a5 scale:{a6, a7}];
  [v30 setDrawBorder_];
  [v30 setShouldApplyMask_];
  [v30 setShape_];
  v31 = v56;
  v32 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  (*(a3 + 16))(v31, v32);
  v33 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v34 = sub_226D6D0DC();
  v35 = [v33 initWithURL_];

  (*(v50 + 8))(v19, v16);
  v36 = [v35 prepareImageForDescriptor_];
  if (!v36)
  {
    goto LABEL_7;
  }

  v37 = v36;
  result = [v36 CGImage];
  if (result)
  {
    v38 = result;
    sub_226D6E8FC();
    v40 = v39;

    if (v40 >> 60 == 15)
    {

LABEL_7:
      v41 = sub_226D6735C();
      (*(*(v41 - 8) + 56))(v51, 1, 1, v41);
      return __swift_destroy_boxed_opaque_existential_0Tm(v55);
    }

    result = [v37 pixelSize];
    if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v42 > -2147483650.0)
    {
      if (v42 < 2147483650.0)
      {
        result = [v37 pixelSize];
        if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v43 > -2147483650.0)
          {
            if (v43 < 2147483650.0)
            {
              (*(v48 + 104))(v47, *MEMORY[0x277CC6BC8], v49);
              v44 = v51;
              sub_226D6733C();

              v45 = sub_226D6735C();
              (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
              return __swift_destroy_boxed_opaque_existential_0Tm(v55);
            }

            goto LABEL_21;
          }

LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_226D2C7A0(void (*a1)(unint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_49;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v5 = 0;
    v36 = a3 & 0xFFFFFFFFFFFFFF8;
    v37 = a3 & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v32 = a3;
    v34 = v4;
    v35 = a3 + 32;
    while (1)
    {
      if (v37)
      {
        v7 = MEMORY[0x22AA8AFD0](v5, v32);
      }

      else
      {
        if (v5 >= *(v36 + 16))
        {
          goto LABEL_44;
        }

        v7 = *(v35 + 8 * v5);
      }

      v8 = v7;
      v9 = __OFADD__(v5++, 1);
      if (v9)
      {
        break;
      }

      v43 = v7;
      a1(&v42, &v43);
      if (v3)
      {
        goto LABEL_42;
      }

      v10 = v42;
      v11 = v42 >> 62;
      if (v42 >> 62)
      {
        v12 = sub_226D6EDFC();
      }

      else
      {
        v12 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = v6 >> 62;
      if (v6 >> 62)
      {
        v29 = sub_226D6EDFC();
        v8 = (v29 + v12);
        if (__OFADD__(v29, v12))
        {
LABEL_41:
          __break(1u);
LABEL_42:

          return v6;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v8 = (v14 + v12);
        if (__OFADD__(v14, v12))
        {
          goto LABEL_41;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v13)
        {
          goto LABEL_22;
        }

        v15 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v8 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v13)
        {
LABEL_22:
          sub_226D6EDFC();
          goto LABEL_23;
        }

        v15 = v6 & 0xFFFFFFFFFFFFFF8;
      }

      v16 = *(v15 + 16);
LABEL_23:
      v6 = sub_226D6EF3C();
      v15 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v40 = v12;
      v17 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v11)
      {
        v20 = v15;
        v21 = sub_226D6EDFC();
        v15 = v20;
        v19 = v21;
        if (!v21)
        {
LABEL_4:

          if (v40 > 0)
          {
            goto LABEL_45;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_4;
        }
      }

      if (((v18 >> 1) - v17) < v40)
      {
        goto LABEL_46;
      }

      v39 = v6;
      v22 = v15 + 8 * v17 + 32;
      v33 = v15;
      if (v11)
      {
        if (v19 < 1)
        {
          goto LABEL_48;
        }

        sub_226D2E764();
        for (i = 0; i != v19; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7DB0, &qword_226D76620);
          v24 = sub_226C3A888(v41, i, v10);
          v26 = *v25;
          (v24)(v41, 0);
          *(v22 + 8 * i) = v26;
        }
      }

      else
      {
        sub_226D69F0C();
        swift_arrayInitWithCopy();
      }

      v6 = v39;
      if (v40 > 0)
      {
        v27 = *(v33 + 16);
        v9 = __OFADD__(v27, v40);
        v28 = v27 + v40;
        if (v9)
        {
          goto LABEL_47;
        }

        *(v33 + 16) = v28;
      }

LABEL_5:
      if (v5 == v34)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v30 = a3;
    v4 = sub_226D6EDFC();
    a3 = v30;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_226D2CB00@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
  v5 = swift_allocBox();
  v19[47] = 0;
  sub_226AE532C(a1 + 48, v19);
  sub_226D6704C();
  sub_226D6701C();
  sub_226D66FEC();
  if (v19[0] == 1)
  {
    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v6 = sub_226D6E07C();
    __swift_project_value_buffer(v6, qword_28105F668);
    v7 = sub_226D6E05C();
    v8 = sub_226D6E9CC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_226AB4000, v7, v8, "**** Force FLL Enabled override is on. ****", v9, 2u);
      MEMORY[0x22AA8BEE0](v9, -1, -1);
    }
  }

  v10 = *(a1 + 88);
  sub_226D6842C();
  v11 = sub_226D6EBBC();
  if (v2)
  {
  }

  MEMORY[0x28223BE20](v11);
  v17 = v5;
  v18 = a1;
  v14 = sub_226B906B0(sub_226D2D020, v16, v13);
  MEMORY[0x28223BE20](v14);
  v17 = a1;
  v15 = sub_226D2C7A0(sub_226D2D14C, v16, v14);

  *a2 = v15;
  return result;
}

uint64_t sub_226D2CD98(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *a1;
  if ([v7 financialLabEnabled])
  {
    return 1;
  }

  v8 = swift_projectBox();
  (*(v3 + 16))(v6, v8, v2);
  sub_226D66FEC();
  (*(v3 + 8))(v6, v2);
  if (v22)
  {
    return 1;
  }

  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v10 = sub_226D6E07C();
  __swift_project_value_buffer(v10, qword_28105F668);
  v11 = v7;
  v12 = sub_226D6E05C();
  v13 = sub_226D6E9EC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    v16 = [v11 id];
    v17 = sub_226D6E39C();
    v19 = v18;

    v20 = sub_226AC4530(v17, v19, &v21);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_226AB4000, v12, v13, "Not considering any accounts for institution id: %s because FLL is not enabled for this institution.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x22AA8BEE0](v15, -1, -1);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
  }

  return 0;
}

uint64_t sub_226D2D020(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_226D2CD98(a1) & 1;
}

uint64_t sub_226D2D040@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  sub_226D69F0C();
  v7 = [v6 id];
  sub_226D6E39C();

  v8 = *(a2 + 88);
  v9 = sub_226D69E4C();
  if (v3)
  {
  }

  v11 = v9;

  MEMORY[0x28223BE20](v12);
  v13[2] = a2;
  result = sub_226B906B0(sub_226D2E7C8, v13, v11);
  *a3 = result;
  return result;
}

uint64_t sub_226D2D168(void **a1)
{
  v2 = sub_226D6D52C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v43 - v9;
  v11 = sub_226D680EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_226D69DBC();
  if (qword_27D7A5F88 != -1)
  {
    swift_once();
  }

  v17 = sub_226D4E14C(v15, qword_27D7B61F0);
  (*(v12 + 8))(v15, v11);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  v18 = [v16 earliestHistoricalTransactionsRequestStartDate];
  if (v18)
  {
    v19 = v18;
    sub_226D6D45C();

    v20 = sub_226D6D4AC();
    (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
    sub_226AC47B0(v10, &qword_27D7A8BE0, &unk_226D718F0);
    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v21 = sub_226D6E07C();
    __swift_project_value_buffer(v21, qword_28105F668);
    v22 = v16;
    v23 = sub_226D6E05C();
    v24 = sub_226D6E9EC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v44 = v26;
      *v25 = 136315138;
      sub_226D69EBC();
      sub_226D2EA10(&qword_27D7A6648, MEMORY[0x277CC95F0]);
      v27 = sub_226D6F1CC();
      v29 = v28;
      (*(v3 + 8))(v6, v2);
      v30 = sub_226AC4530(v27, v29, &v44);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_226AB4000, v23, v24, "Not considering acount id: %s because historical transactions have not been fetched", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x22AA8BEE0](v26, -1, -1);
      MEMORY[0x22AA8BEE0](v25, -1, -1);
    }

    return 0;
  }

  v32 = sub_226D6D4AC();
  (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
  sub_226AC47B0(v10, &qword_27D7A8BE0, &unk_226D718F0);
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v33 = sub_226D6E07C();
  __swift_project_value_buffer(v33, qword_28105F668);
  v34 = v16;
  v35 = sub_226D6E05C();
  v36 = sub_226D6E9EC();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v44 = v38;
    *v37 = 136315138;
    sub_226D69EBC();
    sub_226D2EA10(&qword_27D7A6648, MEMORY[0x277CC95F0]);
    v39 = sub_226D6F1CC();
    v41 = v40;
    (*(v3 + 8))(v6, v2);
    v42 = sub_226AC4530(v39, v41, &v44);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_226AB4000, v35, v36, "Account id: %s has fetched historical transactions. Account passed consideration test.", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    MEMORY[0x22AA8BEE0](v38, -1, -1);
    MEMORY[0x22AA8BEE0](v37, -1, -1);
  }

  return 1;
}

void sub_226D2D754(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_226D6842C();
  v5 = sub_226D6840C();
  v6 = sub_226D683CC();
  [v5 setPredicate_];

  v7 = *(a1 + 88);
  v16 = a1;
  v17 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7DB0, &qword_226D76620);
  sub_226D6EB8C();

  if (!v2)
  {
    MEMORY[0x28223BE20](v8);
    v15 = a1;
    v10 = sub_226B906B0(sub_226D2E9D0, v14, v9);
    v11 = MEMORY[0x28223BE20](v10);
    v15 = a1;
    sub_226C410A8(sub_226D2E9F0, v14, v11);
    v13 = v12;

    *a2 = v13;
  }
}

uint64_t sub_226D2D8CC(void **a1, uint64_t a2)
{
  v4 = sub_226D6767C();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v9 = sub_226D6E07C();
  __swift_project_value_buffer(v9, qword_28105F668);
  v10 = v8;
  v11 = sub_226D6E05C();
  v12 = sub_226D6E9EC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315394;
    v16 = sub_226D69DCC();
    v18 = sub_226AC4530(v16, v17, &v29);
    v27 = a2;
    v19 = v18;

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    sub_226D69E0C();
    v20 = sub_226D6766C();
    v22 = v21;
    (*(v28 + 8))(v7, v26);
    v23 = sub_226AC4530(v20, v22, &v29);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_226AB4000, v11, v12, "--------- Making determination for: %s (%s)----------", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v15, -1, -1);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
  }

  return sub_226D2DB48(v10) & 1;
}

uint64_t sub_226D2DB48(void *a1)
{
  v3 = v1;
  v97 = sub_226D6B9BC();
  v94 = *(v97 - 8);
  v5 = *(v94 + 64);
  v6 = MEMORY[0x28223BE20](v97);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v91 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v91 - v13;
  MEMORY[0x28223BE20](v12);
  v95 = &v91 - v15;
  sub_226D69D5C();
  v16 = sub_226D69DCC();
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v19 = v3[5];
  v96[3] = &type metadata for OfflineLabCoreDataAttributeProvider;
  v96[4] = &off_283A6FFD0;
  v96[0] = a1;
  v96[1] = v19;
  v20 = v19;
  v21 = a1;
  v22 = sub_226C06854(v96);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v96);
    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v23 = sub_226D6E07C();
    __swift_project_value_buffer(v23, qword_28105F668);
    v24 = v94;
    v25 = v95;
    (*(v94 + 16))(v14, v95, v97);
    v26 = v2;
    v27 = sub_226D6E05C();
    v28 = sub_226D6E9CC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v93 = v2;
      v30 = v29;
      v31 = v24;
      v32 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v96[0] = v92;
      *v30 = 136315394;
      sub_226D2EA10(&qword_27D7A6E40, MEMORY[0x277CC8058]);
      v33 = v97;
      v34 = sub_226D6F1CC();
      v35 = v33;
      v37 = v36;
      v38 = *(v31 + 8);
      v39 = v14;
      v40 = v35;
      v38(v39, v35);
      v41 = sub_226AC4530(v34, v37, v96);

      *(v30 + 4) = v41;
      *(v30 + 12) = 2112;
      v42 = v93;
      v43 = v93;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v44;
      *v32 = v44;
      _os_log_impl(&dword_226AB4000, v27, v28, "Error calling shouldProcess() for fqai: %s: %@", v30, 0x16u);
      sub_226AC47B0(v32, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v32, -1, -1);
      v45 = v92;
      __swift_destroy_boxed_opaque_existential_0Tm(v92);
      MEMORY[0x22AA8BEE0](v45, -1, -1);
      MEMORY[0x22AA8BEE0](v30, -1, -1);

      v38(v95, v40);
    }

    else
    {

      v65 = v97;
      v66 = *(v24 + 8);
      v66(v14, v97);
      v66(v25, v65);
    }

    return 0;
  }

  else
  {
    v46 = v22;
    v93 = v16;
    __swift_destroy_boxed_opaque_existential_0Tm(v96);
    if (v46)
    {
      v47 = v94;
      v48 = v95;
      if (qword_28105F660 != -1)
      {
        swift_once();
      }

      v49 = sub_226D6E07C();
      __swift_project_value_buffer(v49, qword_28105F668);
      v50 = v11;
      (*(v47 + 16))(v11, v48, v97);

      v51 = sub_226D6E05C();
      v52 = sub_226D6E9EC();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = v47;
        v55 = swift_slowAlloc();
        v96[0] = v55;
        *v53 = 136315394;
        v56 = sub_226AC4530(v93, v18, v96);
        LODWORD(v92) = v52;
        v57 = v56;

        *(v53 + 4) = v57;
        *(v53 + 12) = 2080;
        sub_226D2EA10(&qword_27D7A6E40, MEMORY[0x277CC8058]);
        v93 = 0;
        v58 = v97;
        v59 = sub_226D6F1CC();
        v61 = v60;
        v62 = *(v54 + 8);
        v62(v50, v58);
        v63 = sub_226AC4530(v59, v61, v96);

        *(v53 + 14) = v63;
        _os_log_impl(&dword_226AB4000, v51, v92, "%s fqai: %s has met the criteria for processing", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v55, -1, -1);
        MEMORY[0x22AA8BEE0](v53, -1, -1);

        v62(v95, v58);
      }

      else
      {

        v87 = v97;
        v88 = *(v47 + 8);
        v88(v50, v97);
        v88(v48, v87);
      }

      return 1;
    }

    else
    {
      v67 = v94;
      v68 = v95;
      if (qword_28105F660 != -1)
      {
        swift_once();
      }

      v69 = sub_226D6E07C();
      __swift_project_value_buffer(v69, qword_28105F668);
      v70 = v8;
      (*(v67 + 16))(v8, v68, v97);
      v71 = v18;

      v72 = sub_226D6E05C();
      v73 = sub_226D6E9EC();

      v74 = os_log_type_enabled(v72, v73);
      v75 = v93;
      if (v74)
      {
        v76 = swift_slowAlloc();
        v77 = v67;
        v78 = swift_slowAlloc();
        v96[0] = v78;
        *v76 = 136315394;
        v79 = sub_226AC4530(v75, v71, v96);
        LODWORD(v92) = v73;
        v80 = v79;

        *(v76 + 4) = v80;
        *(v76 + 12) = 2080;
        sub_226D2EA10(&qword_27D7A6E40, MEMORY[0x277CC8058]);
        v93 = 0;
        v81 = v97;
        v82 = sub_226D6F1CC();
        v84 = v83;
        v85 = *(v77 + 8);
        v85(v70, v81);
        v86 = sub_226AC4530(v82, v84, v96);

        *(v76 + 14) = v86;
        _os_log_impl(&dword_226AB4000, v72, v92, "%s fqai: %s has not met the criteria for processing", v76, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v78, -1, -1);
        MEMORY[0x22AA8BEE0](v76, -1, -1);

        v85(v95, v81);
      }

      else
      {

        v89 = v97;
        v90 = *(v67 + 8);
        v90(v70, v97);
        v90(v68, v89);
      }

      return 0;
    }
  }
}

uint64_t sub_226D2E410@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v33 - v7;
  v9 = sub_226D6D4AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_226D6B9BC();
  v35 = *(v14 - 8);
  v36 = v14;
  v15 = *(v35 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  sub_226D69D5C();
  v19 = sub_226D69DCC();
  v33 = v20;
  v34 = v19;
  v21 = *(a2 + 40);
  v38[3] = &type metadata for OfflineLabCoreDataAttributeProvider;
  v38[4] = &off_283A6FFD0;
  v38[0] = v18;
  v38[1] = v21;
  v22 = __swift_project_boxed_opaque_existential_1(v38, &type metadata for OfflineLabCoreDataAttributeProvider);
  v23 = *v22;
  v24 = v22[1];
  v25 = v21;
  v26 = v18;
  sub_226CA0610(v23, v8);
  v27 = *(v10 + 48);
  if (v27(v8, 1, v9) == 1)
  {
    sub_226D6D39C();
    if (v27(v8, 1, v9) != 1)
    {
      sub_226AC47B0(v8, &qword_27D7A8BE0, &unk_226D718F0);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v38);
  v28 = v37;
  (*(v35 + 32))(v37, v17, v36);
  v29 = type metadata accessor for OfflineLabAccountInfo();
  v30 = (v28 + *(v29 + 20));
  v31 = v33;
  *v30 = v34;
  v30[1] = v31;
  return (*(v10 + 32))(v28 + *(v29 + 24), v13, v9);
}

uint64_t sub_226D2E6E0()
{
  v2 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F40, &qword_226D739F0);
  result = sub_226D6EB8C();
  if (!v1)
  {
    return v4;
  }

  return result;
}

unint64_t sub_226D2E764()
{
  result = qword_27D7A93A0;
  if (!qword_27D7A93A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A7DB0, &qword_226D76620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A93A0);
  }

  return result;
}

uint64_t type metadata accessor for OfflineLabAccountInfo()
{
  result = qword_27D7A93A8;
  if (!qword_27D7A93A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226D2E85C()
{
  result = sub_226D6B9BC();
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

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_226D2E904(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226D2E94C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226D2EA10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226D2EA58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226D2EAA0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_226D2EAFC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BankConnectNotificationEventsRegisterTask();
  sub_226AF265C(v1 + *(v12 + 32), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226AC47B0(v6, &qword_27D7A8BE0, &unk_226D718F0);
    v13 = 1;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = *(v1 + *(v12 + 28));
    v15 = v14 < 1;
    v16 = v14 - 1;
    if (!v15)
    {
      exp2(v16);
    }

    sub_226D6D3DC();
    (*(v8 + 8))(v11, v7);
    v13 = 0;
  }

  return (*(v8 + 56))(a1, v13, 1, v7);
}

unint64_t sub_226D2ED08()
{
  sub_226D6EEFC();

  MEMORY[0x22AA8A510](*v0, v0[1]);
  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0xD000000000000035;
}

uint64_t sub_226D2ED88(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(type metadata accessor for BankConnectNotificationEventsRegisterTask() - 8);
  v2[9] = v3;
  v2[10] = *(v3 + 64);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D2EE4C, 0, 0);
}

uint64_t sub_226D2EE4C()
{
  v1 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(MEMORY[0x277CC8088] + 4);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  v6 = sub_226B41FC0();
  *v5 = v0;
  v5[1] = sub_226D2EF14;

  return MEMORY[0x28211A3F8](v2, v3, &type metadata for BankConnectEnvironmentImplementation, v6);
}

uint64_t sub_226D2EF14(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_226D2F014, 0, 0);
}

uint64_t sub_226D2F014()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  sub_226AE532C(*(v0 + 56), v0 + 16);
  sub_226D30884(v3, v1, type metadata accessor for BankConnectNotificationEventsRegisterTask);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 112) = v6;
  sub_226AC484C((v0 + 16), v6 + 16);
  sub_226B9064C(v1, v6 + v5);
  v7 = *(MEMORY[0x277CC7780] + 4);
  v11 = (*MEMORY[0x277CC7780] + MEMORY[0x277CC7780]);
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = sub_226D2F15C;
  v9 = *(v0 + 104);

  return v11();
}

uint64_t sub_226D2F15C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_226D2F2E8;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_226D2F278;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D2F278()
{
  v1 = v0[13];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_226D2F2E8()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_226D2F360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v4 = sub_226D68BCC();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = sub_226D6C9FC();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v10 = sub_226D682FC();
  v3[15] = v10;
  v11 = *(v10 - 8);
  v3[16] = v11;
  v12 = *(v11 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D2F4E4, 0, 0);
}

uint64_t sub_226D2F4E4()
{
  v1 = v0[18];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v5 = *(v4 + 8);
  sub_226D6BACC();
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v7 = *v3;
  v8 = v3[1];
  sub_226D6A63C();
  v9 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[16];
  v13 = v0[14];
  v14 = v0[7];
  v15 = v0[8];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v16 = __swift_project_boxed_opaque_existential_1(v14, v2[3]);
  v17 = v16[5];
  __swift_project_boxed_opaque_existential_1(v16 + 1, v16[4]);
  v18 = sub_226D6C2AC();
  v0[19] = v18;
  (*(v12 + 16))(v9, v10, v11);
  v19 = v15 + *(type metadata accessor for BankConnectNotificationEventsRegisterTask() + 24);
  sub_226D6BD4C();
  v20 = *(v15 + 16);
  v21 = *(v15 + 24);

  sub_226D6C9EC();
  v22 = swift_task_alloc();
  v0[20] = v22;
  *(v22 + 16) = v18;
  *(v22 + 24) = v13;
  v23 = *(MEMORY[0x277CC7D90] + 4);
  v24 = swift_task_alloc();
  v0[21] = v24;
  *v24 = v0;
  v24[1] = sub_226D2F744;
  v25 = v0[11];
  v26 = v0[9];

  return MEMORY[0x282119B28](v25, &unk_226D7D550, v22, v26);
}

uint64_t sub_226D2F744()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);

  if (v0)
  {
    v6 = sub_226D2FAA0;
  }

  else
  {
    v6 = sub_226D2F878;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226D2F878()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *__swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
  v5 = sub_226D676AC();
  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = v2;
  sub_226D6EB7C();
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  if (v1)
  {
    v9 = *(v0 + 120);
    v10 = *(v0 + 128);
    v11 = *(v0 + 144);
    v12 = *(v0 + 104);
    v29 = *(v0 + 96);
    v31 = *(v0 + 112);
    v13 = *(v0 + 80);
    v25 = *(v0 + 72);
    v27 = *(v0 + 88);

    (*(v10 + 8))(v11, v9);
    (*(v13 + 8))(v27, v25);
    (*(v12 + 8))(v31, v29);
    v15 = *(v0 + 136);
    v14 = *(v0 + 144);
    v16 = *(v0 + 112);
    v17 = *(v0 + 88);
  }

  else
  {
    v19 = *(v0 + 128);
    v21 = *(v0 + 112);
    v20 = *(v0 + 120);
    v22 = *(v0 + 104);
    v30 = *(v0 + 96);
    v32 = *(v0 + 136);
    v23 = *(v0 + 80);
    v26 = *(v0 + 72);
    v28 = *(v0 + 88);

    (*(v19 + 8))(v7, v20);
    (*(v23 + 8))(v28, v26);
    (*(v22 + 8))(v21, v30);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_226D2FAA0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];

  (*(v4 + 8))(v2, v3);
  (*(v6 + 8))(v5, v7);
  v8 = v0[22];
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[14];
  v12 = v0[11];

  v13 = v0[1];

  return v13();
}

uint64_t sub_226D2FB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277CC7D98] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226AD827C;

  return MEMORY[0x282119B30](a1, a3);
}

void sub_226D2FC2C(uint64_t *a1, void *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6BD9C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_226D6D52C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = *a1;
  v10 = a1[1];
  sub_226D6C5BC();
  v11 = sub_226D6C54C();
  if (!v2)
  {
    v12 = v11;
    if (!v11)
    {
      sub_226D6D51C();
      v17 = a2;
      v12 = sub_226D6C5AC();
      sub_226D6794C();
      v18 = sub_226D6788C();
      if (v18)
      {
        v20 = v18;
        [v18 setNotificationSubscriptionObject_];
      }
    }

    sub_226D68BBC();
    v13 = sub_226D6E36C();

    [v12 setSubscriptionID_];

    v14 = a1 + *(type metadata accessor for BankConnectNotificationEventsRegisterTask() + 24);
    sub_226D6BD4C();
    sub_226D6BD5C();
    sub_226D6C58C();
    [v12 setRegisterRequestAttemptCount_];
    [v12 setLastRegisterRequestAttemptDate_];
    v21[0] = 0;
    if ([a2 save_])
    {
      v15 = v21[0];
    }

    else
    {
      v16 = v21[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226D2FEC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D66DFC();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(type metadata accessor for BankConnectNotificationEventsRegisterTask() - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D2FF84, 0, 0);
}

uint64_t sub_226D2FF84()
{
  v29 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  sub_226D30884(v3, v2, type metadata accessor for BankConnectNotificationEventsRegisterTask);
  sub_226D30884(v4, v1, MEMORY[0x277CC6528]);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  if (!v8)
  {

    sub_226D308EC(v9, MEMORY[0x277CC6528]);
    sub_226D308EC(v10, type metadata accessor for BankConnectNotificationEventsRegisterTask);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v27 = *(v0 + 40);
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v28 = v13;
  *v11 = 136315394;
  v15 = *v10;
  v14 = v10[1];

  sub_226D308EC(v10, type metadata accessor for BankConnectNotificationEventsRegisterTask);
  v16 = sub_226AC4530(v15, v14, &v28);

  *(v11 + 4) = v16;
  *(v11 + 12) = 2112;
  sub_226D30C8C(&qword_27D7A6990, MEMORY[0x277CC6528]);
  swift_allocError();
  sub_226D30884(v9, v17, MEMORY[0x277CC6528]);
  v18 = _swift_stdlib_bridgeErrorToNSError();
  sub_226D308EC(v9, MEMORY[0x277CC6528]);
  *(v11 + 14) = v18;
  *v12 = v18;
  _os_log_impl(&dword_226AB4000, v6, v7, "Failed to register to notification events with consentID %s %@", v11, 0x16u);
  sub_226AC47B0(v12, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v12, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  MEMORY[0x22AA8BEE0](v13, -1, -1);
  MEMORY[0x22AA8BEE0](v11, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v19 = *(v0 + 32);
    v20 = *__swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
    v21 = sub_226D676AC();
    v22 = swift_task_alloc();
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    sub_226D6EB7C();
  }

LABEL_8:
  v24 = *(v0 + 48);
  v23 = *(v0 + 56);

  v25 = *(v0 + 8);

  return v25();
}

void sub_226D30348(uint64_t *a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6D52C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = *a1;
  v8 = a1[1];
  sub_226D6C5BC();
  v9 = sub_226D6C54C();
  if (!v2)
  {
    v10 = v9;
    if (!v9)
    {
      sub_226D6D51C();
      v16 = a2;
      v10 = sub_226D6C5AC();
      sub_226D6794C();
      v17 = sub_226D6788C();
      if (v17)
      {
        v19 = v17;
        [v17 setNotificationSubscriptionObject_];
      }
    }

    v11 = [v10 registerRequestAttemptCount];
    if (__OFADD__(v11, 1))
    {
      __break(1u);
    }

    [v10 setRegisterRequestAttemptCount_];
    v12 = a1 + *(type metadata accessor for BankConnectNotificationEventsRegisterTask() + 36);
    v13 = sub_226D6D3EC();
    [v10 setLastRegisterRequestAttemptDate_];

    v20[0] = 0;
    if ([a2 save_])
    {
      v14 = v20[0];
    }

    else
    {
      v15 = v20[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226D30564(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226D2ED88(a1);
}

uint64_t sub_226D305F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE5A84;

  return sub_226D2FEC0(a1, a2);
}

uint64_t sub_226D3069C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_226D30788(uint64_t a1)
{
  result = sub_226D30C8C(&qword_27D7A93B8, type metadata accessor for BankConnectNotificationEventsRegisterTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BankConnectNotificationEventsRegisterTask()
{
  result = qword_28105FA98;
  if (!qword_28105FA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226D3082C(uint64_t a1)
{
  result = sub_226D30C8C(&qword_27D7A93C0, type metadata accessor for BankConnectNotificationEventsRegisterTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226D30884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226D308EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226D30968(uint64_t a1)
{
  v4 = *(type metadata accessor for BankConnectNotificationEventsRegisterTask() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226D2F360(a1, v1 + 16, v1 + v5);
}

uint64_t sub_226D30A48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226D2FB78(a1, v5, v4);
}

void sub_226D30B3C()
{
  sub_226BBB5E0();
  if (v0 <= 0x3F)
  {
    sub_226D6BD9C();
    if (v1 <= 0x3F)
    {
      sub_226B20350();
      if (v2 <= 0x3F)
      {
        sub_226D6D4AC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_226D30C08(uint64_t a1)
{
  *(a1 + 8) = sub_226D30C8C(&qword_27D7A93C8, type metadata accessor for BankConnectNotificationEventsRegisterTask);
  result = sub_226D30C8C(&qword_27D7A93D0, type metadata accessor for BankConnectNotificationEventsRegisterTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226D30C8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226D30CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_226D30D04, 0, 0);
}

uint64_t sub_226D30D04()
{
  v1 = v0[8];
  if (sub_226D320D4())
  {
    v2 = sub_226D66EDC();
    sub_226CD740C();
    swift_allocError();
    v4 = v3;
    v5 = *MEMORY[0x277CC6A40];
    v6 = sub_226D66FDC();
    (*(*(v6 - 8) + 104))(v4, v5, v6);
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277CC65D0], v2);
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[8];
    v10 = *(v9 + 320);
    v11 = *(v9 + 56);
    v12 = sub_226D676AC();
    v0[9] = v12;
    v13 = swift_task_alloc();
    v0[10] = v13;
    *v13 = v0;
    v13[1] = sub_226D30ED0;
    v14 = v0[6];
    v15 = v0[7];
    v16 = v0[4];
    v17 = v0[5];
    v18 = v0[2];
    v19 = v0[3];

    return sub_226B7C558(v18, v19, v16, v17, v14, v15, v10, v12);
  }
}

uint64_t sub_226D30ED0()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226D3100C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_226D3100C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226D31070(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D6735C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_226D69FAC();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6828, &qword_226D782F0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A93D8, &qword_226D7D5E0);
  v3[16] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A93E0, &qword_226D7D5E8) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A93E8, &unk_226D7D5F0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D312BC, 0, 0);
}

uint64_t sub_226D312BC()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 24);
  v4 = *(*(v0 + 32) + 56);
  v5 = sub_226D676AC();
  *(v0 + 176) = v5;
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  sub_226D6EB8C();
  v7 = *(v0 + 168);
  v8 = *(v0 + 144);
  v9 = *(v0 + 152);
  v11 = *(v0 + 128);
  v10 = *(v0 + 136);
  v12 = *(v0 + 120);
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);

  v15 = *(v11 + 48);
  sub_226AFD80C(v10, v7, &qword_27D7A93E8, &unk_226D7D5F0);
  sub_226AFD80C(v10 + v15, v9, &qword_27D7A93E0, &qword_226D7D5E8);
  v16 = *(v14 + 56);
  *(v0 + 184) = v16;
  *(v0 + 192) = (v14 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v16(v12, 1, 1, v13);
  sub_226AC40E8(v9, v8, &qword_27D7A93E0, &qword_226D7D5E8);
  v17 = sub_226D6A8EC();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v8, 1, v17);
  v20 = *(v0 + 144);
  if (v19 == 1)
  {
    sub_226AC47B0(*(v0 + 144), &qword_27D7A93E0, &qword_226D7D5E8);
    goto LABEL_9;
  }

  v21 = *(v0 + 144);
  v22 = sub_226D6A87C();
  v24 = v23;
  v25 = (*(v18 + 8))(v20, v17);
  if ((v24 & 1) == 0)
  {
    if (v22 < 0)
    {
      __break(1u);
    }

    else
    {
      v29 = *(v0 + 32);
      v30 = *(v29 + 536);
      v31 = *(v29 + 544);
      v25 = GSMainScreenScaleFactor();
      if ((LODWORD(v32) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        if (v32 > -9.2234e18)
        {
          if (v32 < 9.2234e18)
          {
            v34 = *(v0 + 112);
            v33 = *(v0 + 120);
            sub_226D2C1C4(v22, v30, v31, v34, 100.0, 100.0, v32);
            sub_226AC47B0(v33, &qword_27D7A6828, &qword_226D782F0);
            sub_226AFD80C(v34, v33, &qword_27D7A6828, &qword_226D782F0);
            goto LABEL_9;
          }

LABEL_24:
          __break(1u);
          return MEMORY[0x282119258](v25, v26, v27, v28);
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_9:
  v35 = *(v0 + 104);
  v36 = *(v0 + 40);
  v37 = *(v0 + 48);
  sub_226AC40E8(*(v0 + 120), v35, &qword_27D7A6828, &qword_226D782F0);
  v38 = *(v37 + 48);
  *(v0 + 200) = v38;
  *(v0 + 208) = (v37 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v36) = v38(v35, 1, v36);
  sub_226AC47B0(v35, &qword_27D7A6828, &qword_226D782F0);
  if (v36 == 1)
  {
    v39 = *(v0 + 160);
    v40 = *(v0 + 64);
    v41 = *(v0 + 72);
    sub_226AC40E8(*(v0 + 168), v39, &qword_27D7A93E8, &unk_226D7D5F0);
    v42 = (*(v41 + 48))(v39, 1, v40);
    v43 = *(v0 + 160);
    if (v42 == 1)
    {
      sub_226AC47B0(*(v0 + 160), &qword_27D7A93E8, &unk_226D7D5F0);
      goto LABEL_12;
    }

    v62 = *(v0 + 32);
    (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 160), *(v0 + 64));
    v63 = v62[44];
    v64 = v62[45];
    __swift_project_boxed_opaque_existential_1(v62 + 41, v63);
    v65 = *(MEMORY[0x277CC7BE8] + 4);
    v66 = swift_task_alloc();
    *(v0 + 216) = v66;
    *v66 = v0;
    v66[1] = sub_226D31A58;
    v25 = *(v0 + 96);
    v26 = *(v0 + 80);
    v27 = v63;
    v28 = v64;

    return MEMORY[0x282119258](v25, v26, v27, v28);
  }

LABEL_12:
  v45 = *(v0 + 200);
  v44 = *(v0 + 208);
  v46 = *(v0 + 88);
  v47 = *(v0 + 40);
  sub_226AC40E8(*(v0 + 120), v46, &qword_27D7A6828, &qword_226D782F0);
  if (v45(v46, 1, v47) == 1)
  {
    v48 = *(v0 + 184);
    v86 = *(v0 + 192);
    v49 = *(v0 + 168);
    v50 = *(v0 + 152);
    v51 = *(v0 + 120);
    v52 = *(v0 + 88);
    v53 = *(v0 + 40);
    v54 = *(v0 + 16);

    sub_226AC47B0(v51, &qword_27D7A6828, &qword_226D782F0);
    sub_226AC47B0(v50, &qword_27D7A93E0, &qword_226D7D5E8);
    sub_226AC47B0(v49, &qword_27D7A93E8, &unk_226D7D5F0);
    sub_226AC47B0(v52, &qword_27D7A6828, &qword_226D782F0);
    v48(v54, 1, 1, v53);
  }

  else
  {
    v55 = *(v0 + 168);
    v56 = *(v0 + 176);
    v57 = *(v0 + 152);
    v58 = *(v0 + 120);
    v59 = *(v0 + 56);
    v60 = *(v0 + 24);
    (*(*(v0 + 48) + 32))(v59, *(v0 + 88), *(v0 + 40));
    v61 = swift_task_alloc();
    v61[2] = v56;
    v61[3] = v59;
    v61[4] = v60;
    sub_226D6EB7C();

    sub_226AC47B0(v58, &qword_27D7A6828, &qword_226D782F0);
    sub_226AC47B0(v57, &qword_27D7A93E0, &qword_226D7D5E8);
    sub_226AC47B0(v55, &qword_27D7A93E8, &unk_226D7D5F0);
    v68 = *(v0 + 184);
    v67 = *(v0 + 192);
    v70 = *(v0 + 48);
    v69 = *(v0 + 56);
    v71 = *(v0 + 40);
    v72 = *(v0 + 16);
    (*(v70 + 16))(v72, v69, v71);
    v68(v72, 0, 1, v71);
    (*(v70 + 8))(v69, v71);
  }

  v74 = *(v0 + 160);
  v73 = *(v0 + 168);
  v76 = *(v0 + 144);
  v75 = *(v0 + 152);
  v77 = *(v0 + 136);
  v79 = *(v0 + 112);
  v78 = *(v0 + 120);
  v81 = *(v0 + 96);
  v80 = *(v0 + 104);
  v82 = *(v0 + 88);
  v85 = *(v0 + 80);
  v87 = *(v0 + 56);

  v83 = *(v0 + 8);

  return v83();
}

uint64_t sub_226D31A58()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_226D31F5C;
  }

  else
  {
    v3 = sub_226D31B6C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226D31B6C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  sub_226AC47B0(v1, &qword_27D7A6828, &qword_226D782F0);
  sub_226AFD80C(v2, v1, &qword_27D7A6828, &qword_226D782F0);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 88);
  v7 = *(v0 + 40);
  sub_226AC40E8(*(v0 + 120), v6, &qword_27D7A6828, &qword_226D782F0);
  v8 = v5(v6, 1, v7);
  v9 = *(v0 + 40);
  if (v8 == 1)
  {
    v10 = *(v0 + 184);
    v54 = *(v0 + 192);
    v11 = *(v0 + 168);
    v12 = *(v0 + 152);
    v13 = *(v0 + 120);
    v14 = *(v0 + 88);
    v15 = *(v0 + 16);

    sub_226AC47B0(v13, &qword_27D7A6828, &qword_226D782F0);
    sub_226AC47B0(v12, &qword_27D7A93E0, &qword_226D7D5E8);
    sub_226AC47B0(v11, &qword_27D7A93E8, &unk_226D7D5F0);
    sub_226AC47B0(v14, &qword_27D7A6828, &qword_226D782F0);
    v10(v15, 1, 1, v9);
  }

  else
  {
    v16 = *(v0 + 168);
    v17 = *(v0 + 176);
    v18 = *(v0 + 152);
    v19 = *(v0 + 120);
    v20 = *(v0 + 56);
    v21 = *(v0 + 24);
    (*(*(v0 + 48) + 32))(v20, *(v0 + 88), *(v0 + 40));
    v22 = swift_task_alloc();
    v22[2] = v17;
    v22[3] = v20;
    v22[4] = v21;
    sub_226D6EB7C();

    sub_226AC47B0(v19, &qword_27D7A6828, &qword_226D782F0);
    sub_226AC47B0(v18, &qword_27D7A93E0, &qword_226D7D5E8);
    sub_226AC47B0(v16, &qword_27D7A93E8, &unk_226D7D5F0);
    if (v3)
    {
      (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
      v24 = *(v0 + 160);
      v23 = *(v0 + 168);
      v26 = *(v0 + 144);
      v25 = *(v0 + 152);
      v27 = *(v0 + 136);
      v29 = *(v0 + 112);
      v28 = *(v0 + 120);
      v31 = *(v0 + 96);
      v30 = *(v0 + 104);
      v32 = *(v0 + 88);
      v51 = *(v0 + 80);
      v52 = *(v0 + 56);

      v33 = *(v0 + 8);
      goto LABEL_7;
    }

    v35 = *(v0 + 184);
    v34 = *(v0 + 192);
    v37 = *(v0 + 48);
    v36 = *(v0 + 56);
    v38 = *(v0 + 40);
    v39 = *(v0 + 16);
    (*(v37 + 16))(v39, v36, v38);
    v35(v39, 0, 1, v38);
    (*(v37 + 8))(v36, v38);
  }

  v41 = *(v0 + 160);
  v40 = *(v0 + 168);
  v43 = *(v0 + 144);
  v42 = *(v0 + 152);
  v44 = *(v0 + 136);
  v46 = *(v0 + 112);
  v45 = *(v0 + 120);
  v48 = *(v0 + 96);
  v47 = *(v0 + 104);
  v49 = *(v0 + 88);
  v53 = *(v0 + 80);
  v55 = *(v0 + 56);

  v33 = *(v0 + 8);
LABEL_7:

  return v33();
}

uint64_t sub_226D31F5C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);

  (*(v5 + 8))(v4, v6);
  sub_226AC47B0(v3, &qword_27D7A6828, &qword_226D782F0);
  sub_226AC47B0(v2, &qword_27D7A93E0, &qword_226D7D5E8);
  sub_226AC47B0(v1, &qword_27D7A93E8, &unk_226D7D5F0);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  v11 = *(v0 + 136);
  v13 = *(v0 + 112);
  v12 = *(v0 + 120);
  v15 = *(v0 + 96);
  v14 = *(v0 + 104);
  v16 = *(v0 + 88);
  v19 = *(v0 + 80);
  v20 = *(v0 + 56);
  v21 = *(v0 + 224);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_226D320D4()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v2 = [v1 aa_primaryAppleAccount];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 aa_isManagedAppleID];

    if (v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v5 = *(v0 + 504);
  v6 = *(v0 + 512);
  if (((*(v6 + 24))(v5, v6) & 1) == 0)
  {
    v7 = (*(v6 + 8))(v5, v6) ^ 1;
    return v7 & 1;
  }

LABEL_6:
  v7 = 1;
  return v7 & 1;
}

void *sub_226D321AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A93E0, &qword_226D7D5E8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A93E8, &unk_226D7D5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v30 - v11;
  v13 = [objc_opt_self() currentQueryGenerationToken];
  v30[0] = 0;
  v14 = [a1 setQueryGenerationFromToken:v13 error:v30];

  v15 = v30[0];
  if (v14)
  {
    sub_226D6AC0C();
    v16 = v15;
    result = sub_226D6AABC();
    if (!v2)
    {
      if (result)
      {
        v18 = result;
        v19 = sub_226D6AAEC();

        if (v19)
        {
          v30[0] = v19;
          sub_226D32518(v30);

          v20 = sub_226D69FAC();
          (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
        }

        else
        {
          v24 = sub_226D69FAC();
          (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
        }

        v25 = v18;
        v26 = sub_226D6AB2C();

        if (v26)
        {
          sub_226D6A8FC();

          v23 = 0;
        }

        else
        {

          v23 = 1;
        }
      }

      else
      {
        v22 = sub_226D69FAC();
        v23 = 1;
        (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
      }

      v27 = sub_226D6A8EC();
      (*(*(v27 - 8) + 56))(v8, v23, 1, v27);
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A93D8, &qword_226D7D5E0) + 48);
      sub_226AFD80C(v12, a2, &qword_27D7A93E8, &unk_226D7D5F0);
      result = sub_226AFD80C(v8, a2 + v28, &qword_27D7A93E0, &qword_226D7D5E8);
    }
  }

  else
  {
    v21 = v30[0];
    sub_226D6D04C();

    result = swift_willThrow();
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226D32518(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6870, &qword_226D71EC8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6878, &unk_226D71ED0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6868, &qword_226D71EC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_226D6D4AC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = *a1;
  v15 = [v14 updatedAt];
  sub_226D6D45C();

  sub_226D6B50C();
  if ([v14 merchantObject])
  {
    sub_226D6754C();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_226D6753C();
  v18 = 1;
  (*(*(v17 - 8) + 56))(v9, v16, 1, v17);
  if ([v14 brandObject])
  {
    sub_226D6CB9C();
    v18 = 0;
  }

  v19 = sub_226D6CB8C();
  (*(*(v19 - 8) + 56))(v5, v18, 1, v19);
  return sub_226D69F9C();
}

void sub_226D327B8(void *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_self() currentQueryGenerationToken];
  v16[0] = 0;
  v4 = [a1 setQueryGenerationFromToken:v3 error:v16];

  v5 = v16[0];
  if (v4)
  {
    sub_226D69F8C();
    v6 = v5;
    v7 = sub_226D69F7C();
    if (!v1)
    {
      v8 = v7;
      sub_226D6AC0C();
      v9 = sub_226D6AABC();
      v12 = v9;
      if (v9)
      {
        v13 = sub_226D6ABBC();

        [v13 setTransactionIconObject_];
        v16[0] = 0;
        if ([a1 save_])
        {
          v14 = v16[0];

          goto LABEL_6;
        }

        v15 = v16[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }
  }

  else
  {
    v10 = v16[0];
    sub_226D6D04C();

    swift_willThrow();
  }

LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226D329B8()
{
  sub_226D6A3AC();
  v1 = sub_226D679FC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_226D679EC();
  v5 = MEMORY[0x277CC6EB0];
  v0[5] = v1;
  v0[6] = v5;
  v0[2] = v4;
  v6 = *(MEMORY[0x277CC7BE0] + 4);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_226D32A98;

  return MEMORY[0x282119248](v0 + 2);
}

uint64_t sub_226D32A98(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  v4[15] = a1;
  v4[16] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_226D32FB8, 0, 0);
  }

  else
  {
    v7 = v4[13];
    if (v7)
    {
      v8 = *(MEMORY[0x277CC7BD0] + 4);
      v9 = swift_task_alloc();
      v4[17] = v9;
      *v9 = v6;
      v9[1] = sub_226D32CA8;

      return MEMORY[0x282119238](v7);
    }

    else
    {
      v10 = *(MEMORY[0x277CC7BD8] + 4);
      v11 = swift_task_alloc();
      v4[19] = v11;
      *v11 = v6;
      v11[1] = sub_226D32E30;

      return MEMORY[0x282119240]();
    }
  }
}

uint64_t sub_226D32CA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = v1;
  v5 = v3[17];
  v8 = *v2;
  v4[18] = v1;

  if (v1)
  {
    v6 = sub_226D32FD0;
  }

  else
  {
    v6 = sub_226D32DC4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226D32DC4()
{
  v1 = v0[8];
  v2 = v0[15];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_226D32E30(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[10] = v2;
  v4[11] = a1;
  v4[12] = v1;
  v5 = v3[19];
  v8 = *v2;
  v4[20] = v1;

  if (v1)
  {
    v6 = sub_226D33034;
  }

  else
  {
    v6 = sub_226D32F4C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226D32F4C()
{
  v1 = v0[11];
  v2 = v0[15];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_226D32FD0()
{
  v1 = v0[15];

  v2 = v0[18];
  v3 = v0[1];

  return v3();
}

uint64_t sub_226D33034()
{
  v1 = v0[15];

  v2 = v0[20];
  v3 = v0[1];

  return v3();
}

void sub_226D330B4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_226D327B8(*(v0 + 16));
}

uint64_t sub_226D330D4@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  IsMarkedAsCompleteEntryVMa = _s8MetadataV23IsMarkedAsCompleteEntryVMa(0);
  v6 = *(IsMarkedAsCompleteEntryVMa - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](IsMarkedAsCompleteEntryVMa);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A93F8, &qword_226D7D608);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v36 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9090, &qword_226D7D610);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v20 = _s8MetadataV9CloudItemVMa_2(0);
  v21 = *(v1 + *(v20 + 24));
  sub_226D36924(v1 + *(v20 + 20), v19, _s8MetadataV9CloudItemV6ObjectVMa_2);
  v38 = v21;
  sub_226AC40E8(v19, v17, &qword_27D7A9090, &qword_226D7D610);

  sub_226CED91C(v17);
  sub_226AC47B0(v19, &qword_27D7A9090, &qword_226D7D610);
  v22 = v38;
  v23 = *(v38 + 16);
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v38 = MEMORY[0x277D84F90];
    sub_226AE21E4(0, v23, 0);
    v24 = v38;
    v25 = *(v34 + 80);
    v33 = v22;
    v26 = v22 + ((v25 + 32) & ~v25);
    v27 = *(v34 + 72);
    do
    {
      sub_226D36924(v26, v5, _s8MetadataV9CloudItemV6ObjectVMa_2);
      v28 = v5[*(v2 + 28)];
      sub_226AC40E8(&v5[*(v2 + 32)], &v9[*(IsMarkedAsCompleteEntryVMa + 20)], &qword_27D7A8BE0, &unk_226D718F0);
      *v9 = v28;
      sub_226D35E34(v5, _s8MetadataV9CloudItemV6ObjectVMa_2);
      v38 = v24;
      v30 = *(v24 + 16);
      v29 = *(v24 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_226AE21E4(v29 > 1, v30 + 1, 1);
        v24 = v38;
      }

      *(v24 + 16) = v30 + 1;
      sub_226D3698C(v9, v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v30, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
      v26 += v27;
      --v23;
    }

    while (v23);
  }

  v31 = v36;
  sub_226B2B07C(v24, v36);
  result = (*(v6 + 48))(v31, 1, IsMarkedAsCompleteEntryVMa);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return sub_226D3698C(v31, v35, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
  }

  return result;
}

uint64_t sub_226D334E0()
{
  v1 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(_s8MetadataV9CloudItemVMa_2(0) + 24));
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
      sub_226D36924(v9, v5, _s8MetadataV9CloudItemV6ObjectVMa_2);
      v11 = *&v5[*(v1 + 24)];
      sub_226D35E34(v5, _s8MetadataV9CloudItemV6ObjectVMa_2);
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

uint64_t sub_226D336C4()
{
  v1 = v0;
  v2 = sub_226D6D4AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  sub_226D37160(&qword_27D7A6620, MEMORY[0x277CC9578]);
  sub_226D6E30C();
  v11 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v12 = v11[5];
  sub_226D6D52C();
  sub_226D37160(&qword_281062B60, MEMORY[0x277CC95F0]);
  sub_226D6E30C();
  v13 = *(v1 + v11[6]);
  sub_226D6EC4C();
  v14 = *(v1 + v11[7]);
  sub_226D6F31C();
  sub_226AC40E8(v1 + v11[8], v10, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_226D6F31C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_226D6F31C();
    sub_226D6E30C();
    (*(v3 + 8))(v6, v2);
  }

  v15 = *(v1 + v11[9]);
  return sub_226D6F32C();
}

uint64_t sub_226D33994(uint64_t a1)
{
  v2 = v1;
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v37 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v38 = sub_226D37160(&qword_27D7A6620, MEMORY[0x277CC9578]);
  sub_226D6E30C();
  v15 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v16 = v15[5];
  v17 = sub_226D6D52C();
  sub_226D37160(&qword_281062B60, MEMORY[0x277CC95F0]);
  v36 = v17;
  sub_226D6E30C();
  v18 = *(v2 + v15[6]);
  sub_226D6EC4C();
  v19 = *(v2 + v15[7]);
  sub_226D6F31C();
  sub_226AC40E8(v2 + v15[8], v14, &qword_27D7A8BE0, &unk_226D718F0);
  v20 = *(v5 + 48);
  v21 = v20(v14, 1, v4);
  v34 = v8;
  v35 = v5;
  if (v21 == 1)
  {
    sub_226D6F31C();
  }

  else
  {
    (*(v5 + 32))(v8, v14, v4);
    sub_226D6F31C();
    sub_226D6E30C();
    (*(v5 + 8))(v8, v4);
  }

  v22 = *(v2 + v15[9]);
  sub_226D6F32C();
  v23 = _s8MetadataV9CloudItemVMa_2(0);
  v24 = v2 + *(v23 + 20);
  sub_226D6E30C();
  v25 = v24 + v15[5];
  sub_226D6E30C();
  v26 = *(v24 + v15[6]);
  sub_226D6EC4C();
  v27 = *(v24 + v15[7]);
  sub_226D6F31C();
  v28 = v37;
  sub_226AC40E8(v24 + v15[8], v37, &qword_27D7A8BE0, &unk_226D718F0);
  if (v20(v28, 1, v4) == 1)
  {
    sub_226D6F31C();
  }

  else
  {
    v30 = v34;
    v29 = v35;
    (*(v35 + 32))(v34, v28, v4);
    sub_226D6F31C();
    sub_226D6E30C();
    (*(v29 + 8))(v30, v4);
  }

  v31 = *(v24 + v15[9]);
  sub_226D6F32C();
  return sub_226AF1254(a1, *(v2 + *(v23 + 24)));
}

uint64_t sub_226D33DA0(uint64_t a1)
{
  v3 = sub_226D6D4AC();
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = _s8MetadataV9CloudItemVMa_2(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _s8MetadataV15CloudItemStatusOMa_2(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D36924(v1, v22, _s8MetadataV15CloudItemStatusOMa_2);
  v23 = (*(v15 + 48))(v22, 2, v14);
  if (v23)
  {
    if (v23 == 1)
    {
      v24 = 0;
    }

    else
    {
      v24 = 2;
    }

    return MEMORY[0x22AA8B3B0](v24);
  }

  else
  {
    sub_226D3698C(v22, v18, _s8MetadataV9CloudItemVMa_2);
    MEMORY[0x22AA8B3B0](1);
    v43 = sub_226D37160(&qword_27D7A6620, MEMORY[0x277CC9578]);
    sub_226D6E30C();
    v25 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
    v26 = v25[5];
    v27 = sub_226D6D52C();
    v41 = sub_226D37160(&qword_281062B60, MEMORY[0x277CC95F0]);
    v42 = v27;
    sub_226D6E30C();
    v28 = *&v18[v25[6]];
    sub_226D6EC4C();
    v29 = v18[v25[7]];
    sub_226D6F31C();
    sub_226AC40E8(&v18[v25[8]], v13, &qword_27D7A8BE0, &unk_226D718F0);
    v30 = v44;
    v40 = *(v44 + 48);
    if (v40(v13, 1, v3) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      (*(v30 + 32))(v6, v13, v3);
      sub_226D6F31C();
      sub_226D6E30C();
      (*(v30 + 8))(v6, v3);
    }

    v32 = *&v18[v25[9]];
    sub_226D6F32C();
    v33 = &v18[*(v14 + 20)];
    sub_226D6E30C();
    v34 = &v33[v25[5]];
    sub_226D6E30C();
    v35 = *&v33[v25[6]];
    sub_226D6EC4C();
    v36 = v33[v25[7]];
    sub_226D6F31C();
    sub_226AC40E8(&v33[v25[8]], v11, &qword_27D7A8BE0, &unk_226D718F0);
    if (v40(v11, 1, v3) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      v37 = v44;
      (*(v44 + 32))(v6, v11, v3);
      sub_226D6F31C();
      sub_226D6E30C();
      (*(v37 + 8))(v6, v3);
    }

    v38 = *&v33[v25[9]];
    sub_226D6F32C();
    sub_226AF1254(a1, *&v18[*(v14 + 24)]);
    return sub_226D35E34(v18, _s8MetadataV9CloudItemVMa_2);
  }
}

uint64_t sub_226D3432C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((sub_226D336C0)() & 1) == 0 || (sub_226D336C0(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_226B2ECEC(v7, v8);
}

uint64_t sub_226D343E0()
{
  v1 = v0;
  v2 = sub_226D6D4AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = *v0;
  sub_226D6EC4C();
  v12 = _s8MetadataV9LocalItemVMa_2(0);
  v13 = v12[5];
  sub_226D37160(&qword_27D7A6620, MEMORY[0x277CC9578]);
  sub_226D6E30C();
  v14 = *(v1 + v12[6]);
  sub_226D6F31C();
  sub_226AC40E8(v1 + v12[7], v10, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return sub_226D6F31C();
  }

  (*(v3 + 32))(v6, v10, v2);
  sub_226D6F31C();
  sub_226D6E30C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_226D34618()
{
  v1 = sub_226D6D4AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = _s8MetadataV9LocalItemVMa_2(0);
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = _s8MetadataV15LocalItemStatusOMa_2(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D36924(v0, v18, _s8MetadataV15LocalItemStatusOMa_2);
  v19 = (*(v11 + 48))(v18, 2, v10);
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

    return MEMORY[0x22AA8B3B0](v20);
  }

  else
  {
    sub_226D3698C(v18, v14, _s8MetadataV9LocalItemVMa_2);
    MEMORY[0x22AA8B3B0](1);
    v21 = *v14;
    sub_226D6EC4C();
    v22 = v10[5];
    sub_226D37160(&qword_27D7A6620, MEMORY[0x277CC9578]);
    sub_226D6E30C();
    v23 = *(v14 + v10[6]);
    sub_226D6F31C();
    sub_226AC40E8(v14 + v10[7], v9, &qword_27D7A8BE0, &unk_226D718F0);
    if ((*(v2 + 48))(v9, 1, v1) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      (*(v2 + 32))(v5, v9, v1);
      sub_226D6F31C();
      sub_226D6E30C();
      (*(v2 + 8))(v5, v1);
    }

    return sub_226D35E34(v14, _s8MetadataV9LocalItemVMa_2);
  }
}

uint64_t sub_226D349A0(uint64_t a1)
{
  v3 = _s8MetadataV9LocalItemVMa_2(0);
  v79 = *(v3 - 8);
  v80 = v3;
  v4 = *(v79 + 64);
  MEMORY[0x28223BE20](v3);
  v74 = (&v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_226D6D4AC();
  v76 = *(v6 - 8);
  v7 = *(v76 + 64);
  MEMORY[0x28223BE20](v6);
  v75 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v73 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v67 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v67 - v16;
  v18 = _s8MetadataV15LocalItemStatusOMa_2(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v78 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _s8MetadataV9CloudItemVMa_2(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = _s8MetadataV15CloudItemStatusOMa_2(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6B49C();
  sub_226D37160(&qword_27D7A7F78, MEMORY[0x277CC7F28]);
  v30 = v1;
  sub_226D6E30C();
  v77 = _s8MetadataVMa_2(0);
  sub_226D36924(v1 + *(v77 + 20), v29, _s8MetadataV15CloudItemStatusOMa_2);
  v31 = (*(v22 + 48))(v29, 2, v21);
  if (v31)
  {
    if (v31 == 1)
    {
      v32 = 0;
    }

    else
    {
      v32 = 2;
    }

    MEMORY[0x22AA8B3B0](v32);
  }

  else
  {
    v71 = v15;
    v72 = v1;
    sub_226D3698C(v29, v25, _s8MetadataV9CloudItemVMa_2);
    MEMORY[0x22AA8B3B0](1);
    sub_226D37160(&qword_27D7A6620, MEMORY[0x277CC9578]);
    sub_226D6E30C();
    v33 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
    v34 = v33[5];
    v35 = sub_226D6D52C();
    v69 = sub_226D37160(&qword_281062B60, MEMORY[0x277CC95F0]);
    v70 = v35;
    sub_226D6E30C();
    v36 = *&v25[v33[6]];
    sub_226D6EC4C();
    v37 = v25[v33[7]];
    sub_226D6F31C();
    sub_226AC40E8(&v25[v33[8]], v17, &qword_27D7A8BE0, &unk_226D718F0);
    v38 = v76;
    v68 = *(v76 + 48);
    if (v68(v17, 1, v6) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      v39 = *(v38 + 32);
      v67 = v21;
      v40 = v6;
      v41 = v75;
      v39(v75, v17, v40);
      sub_226D6F31C();
      sub_226D6E30C();
      v42 = v41;
      v6 = v40;
      v21 = v67;
      (*(v38 + 8))(v42, v40);
    }

    v43 = *&v25[v33[9]];
    sub_226D6F32C();
    v44 = &v25[*(v21 + 20)];
    sub_226D6E30C();
    v45 = &v44[v33[5]];
    sub_226D6E30C();
    v46 = *&v44[v33[6]];
    sub_226D6EC4C();
    v47 = v44[v33[7]];
    sub_226D6F31C();
    v48 = v71;
    sub_226AC40E8(&v44[v33[8]], v71, &qword_27D7A8BE0, &unk_226D718F0);
    if (v68(v48, 1, v6) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      v49 = v75;
      v50 = v76;
      (*(v76 + 32))(v75, v48, v6);
      sub_226D6F31C();
      sub_226D6E30C();
      (*(v50 + 8))(v49, v6);
    }

    v30 = v72;
    v51 = *&v44[v33[9]];
    sub_226D6F32C();
    sub_226AF1254(a1, *&v25[*(v21 + 24)]);
    sub_226D35E34(v25, _s8MetadataV9CloudItemVMa_2);
  }

  v53 = v78;
  v52 = v79;
  sub_226D36924(v30 + *(v77 + 24), v78, _s8MetadataV15LocalItemStatusOMa_2);
  v54 = (*(v52 + 48))(v53, 2, v80);
  if (v54)
  {
    if (v54 == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = 2;
    }

    return MEMORY[0x22AA8B3B0](v55);
  }

  else
  {
    v56 = v53;
    v57 = v74;
    sub_226D3698C(v56, v74, _s8MetadataV9LocalItemVMa_2);
    MEMORY[0x22AA8B3B0](1);
    v58 = *v57;
    sub_226D6EC4C();
    v59 = v80;
    v60 = *(v80 + 20);
    sub_226D37160(&qword_27D7A6620, MEMORY[0x277CC9578]);
    sub_226D6E30C();
    v61 = *(v57 + *(v59 + 24));
    sub_226D6F31C();
    v62 = v73;
    sub_226AC40E8(v57 + *(v59 + 28), v73, &qword_27D7A8BE0, &unk_226D718F0);
    v63 = v76;
    if ((*(v76 + 48))(v62, 1, v6) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      v65 = v6;
      v66 = v75;
      (*(v63 + 32))(v75, v62, v65);
      sub_226D6F31C();
      sub_226D6E30C();
      (*(v63 + 8))(v66, v65);
    }

    return sub_226D35E34(v57, _s8MetadataV9LocalItemVMa_2);
  }
}

uint64_t sub_226D352D4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_226D6F2FC();
  a3(v5);
  return sub_226D6F35C();
}

uint64_t sub_226D35338(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_226D6F2FC();
  a4(v6);
  return sub_226D6F35C();
}

uint64_t sub_226D3537C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x22AA87530]() & 1) == 0 || (sub_226D33D9C(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return sub_226D34614(a1 + v6, a2 + v6);
}

BOOL sub_226D353F8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  if (*a1 != *a2)
  {
    return 0;
  }

  v25 = v8;
  v17 = *(_s8MetadataV23IsMarkedAsCompleteEntryVMa(0) + 20);
  v18 = *(v13 + 48);
  sub_226AC40E8(&a1[v17], v16, &qword_27D7A8BE0, &unk_226D718F0);
  sub_226AC40E8(&a2[v17], &v16[v18], &qword_27D7A8BE0, &unk_226D718F0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_226AC47B0(v16, &qword_27D7A8BE0, &unk_226D718F0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_226AC40E8(v16, v12, &qword_27D7A8BE0, &unk_226D718F0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_226AC47B0(v16, &qword_27D7A6C30, &unk_226D74330);
    return 0;
  }

  v21 = v25;
  (*(v5 + 32))(v25, &v16[v18], v4);
  sub_226D37160(&qword_27D7A6C38, MEMORY[0x277CC9578]);
  v22 = sub_226D6E35C();
  v23 = *(v5 + 8);
  v23(v21, v4);
  v23(v12, v4);
  sub_226AC47B0(v16, &qword_27D7A8BE0, &unk_226D718F0);
  return (v22 & 1) != 0;
}

BOOL sub_226D3574C(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  v17 = *a1;
  v18 = *a2;
  if ((sub_226D6EC3C() & 1) == 0)
  {
    return 0;
  }

  v19 = _s8MetadataV9LocalItemVMa_2(0);
  v20 = v19[5];
  if ((sub_226D6D44C() & 1) == 0 || *(a1 + v19[6]) != *(a2 + v19[6]))
  {
    return 0;
  }

  v21 = v19[7];
  v22 = a1 + v21;
  v23 = *(v13 + 48);
  sub_226AC40E8(v22, v16, &qword_27D7A8BE0, &unk_226D718F0);
  sub_226AC40E8(a2 + v21, &v16[v23], &qword_27D7A8BE0, &unk_226D718F0);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v23], 1, v4) == 1)
    {
      sub_226AC47B0(v16, &qword_27D7A8BE0, &unk_226D718F0);
      return 1;
    }

    goto LABEL_9;
  }

  sub_226AC40E8(v16, v12, &qword_27D7A8BE0, &unk_226D718F0);
  if (v24(&v16[v23], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_226AC47B0(v16, &qword_27D7A6C30, &unk_226D74330);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v23], v4);
  sub_226D37160(&qword_27D7A6C38, MEMORY[0x277CC9578]);
  v26 = sub_226D6E35C();
  v27 = *(v5 + 8);
  v27(v8, v4);
  v27(v12, v4);
  sub_226AC47B0(v16, &qword_27D7A8BE0, &unk_226D718F0);
  return (v26 & 1) != 0;
}

BOOL sub_226D35AE4(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataV9LocalItemVMa_2(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = _s8MetadataV15LocalItemStatusOMa_2(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A93F0, &qword_226D7D600);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_226D36924(a1, &v23 - v16, _s8MetadataV15LocalItemStatusOMa_2);
  sub_226D36924(a2, &v17[v18], _s8MetadataV15LocalItemStatusOMa_2);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (!v20)
  {
    sub_226D36924(v17, v12, _s8MetadataV15LocalItemStatusOMa_2);
    if (!v19(&v17[v18], 2, v4))
    {
      sub_226D3698C(&v17[v18], v8, _s8MetadataV9LocalItemVMa_2);
      v21 = sub_226D3574C(v12, v8);
      sub_226D35E34(v8, _s8MetadataV9LocalItemVMa_2);
      sub_226D35E34(v12, _s8MetadataV9LocalItemVMa_2);
      sub_226D35E34(v17, _s8MetadataV15LocalItemStatusOMa_2);
      return v21;
    }

    sub_226D35E34(v12, _s8MetadataV9LocalItemVMa_2);
    goto LABEL_9;
  }

  if (v20 == 1)
  {
    if (v19(&v17[v18], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v19(&v17[v18], 2, v4) != 2)
  {
LABEL_9:
    sub_226AC47B0(v17, &qword_27D7A93F0, &qword_226D7D600);
    return 0;
  }

  sub_226D35E34(v17, _s8MetadataV15LocalItemStatusOMa_2);
  return 1;
}

uint64_t sub_226D35E34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_226D35E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  if ((sub_226D6D44C() & 1) == 0)
  {
    return 0;
  }

  v17 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v18 = v17[5];
  if ((sub_226D6D4EC() & 1) == 0)
  {
    return 0;
  }

  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  v19 = v17[6];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if ((sub_226D6EC3C() & 1) == 0 || *(a1 + v17[7]) != *(a2 + v17[7]))
  {
    return 0;
  }

  v22 = v17[8];
  v23 = *(v13 + 48);
  sub_226AC40E8(a1 + v22, v16, &qword_27D7A8BE0, &unk_226D718F0);
  v29 = v23;
  sub_226AC40E8(a2 + v22, &v16[v23], &qword_27D7A8BE0, &unk_226D718F0);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v29], 1, v4) == 1)
    {
      sub_226AC47B0(v16, &qword_27D7A8BE0, &unk_226D718F0);
      return *(a1 + v17[9]) == *(a2 + v17[9]);
    }

    goto LABEL_10;
  }

  sub_226AC40E8(v16, v12, &qword_27D7A8BE0, &unk_226D718F0);
  if (v24(&v16[v29], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_10:
    sub_226AC47B0(v16, &qword_27D7A6C30, &unk_226D74330);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v29], v4);
  sub_226D37160(&qword_27D7A6C38, MEMORY[0x277CC9578]);
  v26 = sub_226D6E35C();
  v27 = *(v5 + 8);
  v27(v8, v4);
  v27(v12, v4);
  sub_226AC47B0(v16, &qword_27D7A8BE0, &unk_226D718F0);
  if (v26)
  {
    return *(a1 + v17[9]) == *(a2 + v17[9]);
  }

  return 0;
}

uint64_t sub_226D36260(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataV9CloudItemVMa_2(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s8MetadataV15CloudItemStatusOMa_2(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94B0, &qword_226D7D958);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v22 - v16;
  v18 = *(v15 + 56);
  sub_226D36924(a1, &v22 - v16, _s8MetadataV15CloudItemStatusOMa_2);
  sub_226D36924(a2, &v17[v18], _s8MetadataV15CloudItemStatusOMa_2);
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
      sub_226D35E34(v17, _s8MetadataV15CloudItemStatusOMa_2);
      return 1;
    }

    if (v19(&v17[v18], 2, v4) == 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_226D36924(v17, v12, _s8MetadataV15CloudItemStatusOMa_2);
    if (!v19(&v17[v18], 2, v4))
    {
      sub_226D3698C(&v17[v18], v8, _s8MetadataV9CloudItemVMa_2);
      if (!sub_226D35E94(v12, v8) || !sub_226D35E94(&v12[*(v4 + 20)], &v8[*(v4 + 20)]) || (sub_226B2ECEC(*&v12[*(v4 + 24)], *&v8[*(v4 + 24)]) & 1) == 0)
      {
        sub_226D35E34(v8, _s8MetadataV9CloudItemVMa_2);
        sub_226D35E34(v12, _s8MetadataV9CloudItemVMa_2);
        sub_226D35E34(v17, _s8MetadataV15CloudItemStatusOMa_2);
        return 0;
      }

      sub_226D35E34(v8, _s8MetadataV9CloudItemVMa_2);
      sub_226D35E34(v12, _s8MetadataV9CloudItemVMa_2);
      goto LABEL_8;
    }

    sub_226D35E34(v12, _s8MetadataV9CloudItemVMa_2);
  }

LABEL_9:
  sub_226AC47B0(v17, &qword_27D7A94B0, &qword_226D7D958);
  return 0;
}