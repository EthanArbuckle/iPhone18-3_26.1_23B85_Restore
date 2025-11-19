uint64_t sub_24E2F1BC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_24DFD8654();
  if (!v2)
  {
LABEL_8:
    sub_24E347AC8();
  }

  v3 = v2;
  result = sub_24E348A68();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x25303F560](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v6 contact];

      sub_24E348A48();
      sub_24E348A78();
      sub_24E348A88();
      sub_24E348A58();
    }

    while (v3 != v5);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E2F1CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_24E2F1D04, 0, 0);
}

uint64_t sub_24E2F1D04()
{
  OUTLINED_FUNCTION_8_9();
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAAC0);
  OUTLINED_FUNCTION_13_59();
  *v3 = v4;
  v3[1] = sub_24E2F1DF8;
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_23_32();

  return MEMORY[0x2822007B8](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_24E2F1DF8()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24E2F1EFC()
{
  OUTLINED_FUNCTION_8_9();
  v1 = v0[5];
  v2 = v0[2];
  v0[9] = v2;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0F30);
  OUTLINED_FUNCTION_13_59();
  *v4 = v5;
  v4[1] = sub_24E2F1FF8;
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_23_32();

  return MEMORY[0x2822007B8](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_24E2F1FF8()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24E2F2118()
{
  v5 = v0;

  v4 = sub_24E0834DC(v1);
  sub_24E2F7CE8(&v4, sub_24E08452C, sub_24E155320, sub_24E2F83C0, sub_24E2F7E94);

  *(v0 + 32) = v4;
  sub_24E347AC8();

  OUTLINED_FUNCTION_12_5();

  return v2();
}

uint64_t sub_24E2F223C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAAE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = [objc_opt_self() proxyForLocalPlayer];
  v10 = [v9 utilityServicePrivate];

  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_24E2FA0FC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E2F316C;
  aBlock[3] = &block_descriptor_115_0;
  v13 = _Block_copy(aBlock);

  [v10 suggestedFriendsWithHandler_];
  _Block_release(v13);
  return swift_unknownObjectRelease();
}

void sub_24E2F2444(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v87 = *MEMORY[0x277D85DE8];
  v3 = sub_24E347358();
  v80 = *(v3 - 8);
  v81 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = (a1 + 32);
  for (i = MEMORY[0x277D84F90]; v6; --v6)
  {
    v83 = *v7;
    sub_24E2F2E14(&v83, &v84);
    v9 = v85;
    if (v85)
    {
      v10 = v84;
      v82 = v86;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E0789E8();
        i = v13;
      }

      v11 = i[2];
      if (v11 >= i[3] >> 1)
      {
        sub_24E0789E8();
        i = v14;
      }

      i[2] = v11 + 1;
      v12 = &i[4 * v11];
      v12[4] = v10;
      v12[5] = v9;
      *(v12 + 3) = v82;
    }

    ++v7;
  }

  v72 = 0;
  v15 = i[2];
  v16 = MEMORY[0x277D84F90];
  *&v82 = i;
  if (v15)
  {
    v84 = MEMORY[0x277D84F90];
    sub_24E12F080(0, v15, 0);
    v17 = v84;
    v18 = i + 5;
    do
    {
      v20 = *(v18 - 1);
      v19 = *v18;
      v84 = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      v23 = v17;

      if (v22 >= v21 >> 1)
      {
        sub_24E12F080((v21 > 1), v22 + 1, 1);
        v23 = v84;
      }

      *(v23 + 16) = v22 + 1;
      v24 = v23 + 16 * v22;
      *(v24 + 32) = v20;
      *(v24 + 40) = v19;
      v18 += 4;
      --v15;
      v17 = v23;
    }

    while (v15);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v25 = objc_allocWithZone(MEMORY[0x277CBDAB8]);
  v26 = [v25 init];
  v27 = objc_opt_self();
  v28 = MEMORY[0x277D837D0];
  v29 = sub_24E347EE8();
  v30 = [v27 predicateForContactsWithIdentifiers_];

  if (qword_27F1DDD48 != -1)
  {
LABEL_72:
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3D20);
  v31 = sub_24E347EE8();
  v84 = 0;
  v32 = [v26 unifiedContactsMatchingPredicate:v30 keysToFetch:v31 error:&v84];

  v33 = v84;
  if (!v32)
  {
    v53 = v84;

    v54 = sub_24E3431B8();

    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
    sub_24E347018();
    *(swift_allocObject() + 16) = xmmword_24E367D20;
    v84 = 0;
    v85 = 0xE000000000000000;
    sub_24E348998();
    MEMORY[0x25303E950](0xD00000000000003CLL, 0x800000024E3B2530);
    v83 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3D30);
    sub_24E348AA8();
    *(&v86 + 1) = v28;
    sub_24E346FE8();
    sub_24DFA9298(&v84, &qword_27F1E0370);
    v56 = v80;
    v55 = v81;
    (*(v80 + 104))(v5, *MEMORY[0x277D21DE8], v81);
    sub_24E0EF428();

    (*(v56 + 8))(v5, v55);
    v84 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAAE0);
    sub_24E348018();

    return;
  }

  v75 = v16;
  v76 = v17;
  v73 = v30;
  v74 = v26;
  sub_24DF88A8C(0, &qword_27F1E2F40);
  v28 = sub_24E347F08();
  v34 = v33;

  v81 = sub_24DFD8654();
  if (v81)
  {
    v17 = 0;
    v80 = v28 & 0xC000000000000001;
    v78 = v28 & 0xFFFFFFFFFFFFFF8;
    v16 = MEMORY[0x277D84F98];
    v79 = v28;
    while (1)
    {
      if (v80)
      {
        v35 = MEMORY[0x25303F560](v17, v28);
      }

      else
      {
        if (v17 >= *(v78 + 16))
        {
          goto LABEL_71;
        }

        v35 = *(v28 + 8 * v17 + 32);
      }

      v36 = v35;
      v37 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v38 = [v35 identifier];
      v28 = sub_24E347CF8();
      v30 = v39;

      v26 = v36;
      swift_isUniquelyReferenced_nonNull_native();
      v84 = v16;
      v40 = sub_24E26AE3C();
      v42 = v16[2];
      v43 = (v41 & 1) == 0;
      v16 = (v42 + v43);
      if (__OFADD__(v42, v43))
      {
        goto LABEL_69;
      }

      v5 = v40;
      v44 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAAF0);
      if (sub_24E348AB8())
      {
        v45 = sub_24E26AE3C();
        if ((v44 & 1) != (v46 & 1))
        {
          sub_24E348C98();
          __break(1u);
          return;
        }

        v5 = v45;
      }

      if (v44)
      {

        v16 = v84;
        v47 = *(v84 + 56);
        v48 = *(v47 + 8 * v5);
        *(v47 + 8 * v5) = v26;
      }

      else
      {
        v16 = v84;
        *(v84 + 8 * (v5 >> 6) + 64) |= 1 << v5;
        v49 = (v16[6] + 16 * v5);
        *v49 = v28;
        v49[1] = v30;
        *(v16[7] + 8 * v5) = v26;

        v50 = v16[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_70;
        }

        v16[2] = v52;
      }

      ++v17;
      v28 = v79;
      if (v37 == v81)
      {
        goto LABEL_37;
      }
    }
  }

  v16 = MEMORY[0x277D84F98];
LABEL_37:

  v30 = 0;
  v84 = MEMORY[0x277D84F90];
  v57 = *(v76 + 16);
  v17 = v76 + 40;
LABEL_38:
  v58 = v17 + 16 * v30;
  while (v57 != v30)
  {
    if (v30 >= v57)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v26 = (v30 + 1);
    if (__OFADD__(v30, 1))
    {
      goto LABEL_65;
    }

    if (v16[2])
    {
      v28 = *(v58 - 8);

      v59 = sub_24E26AE3C();
      if (v60)
      {
        v28 = *(v16[7] + 8 * v59);

        MEMORY[0x25303EA30](v61);
        if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24E347F48();
        }

        sub_24E347F88();
        v75 = v84;
        ++v30;
        goto LABEL_38;
      }
    }

    ++v30;
    v58 += 16;
  }

  v62 = 0;
  v26 = *(v82 + 16);
  v63 = v82 + 56;
  v28 = MEMORY[0x277D84F90];
  v81 = v82 + 56;
LABEL_50:
  v30 = v63 + 32 * v62;
  while (v26 != v62)
  {
    if (v62 >= v26)
    {
      goto LABEL_66;
    }

    v5 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      goto LABEL_67;
    }

    if (v16[2])
    {
      v64 = *(v30 - 8);
      v17 = *v30;

      v65 = sub_24E26AE3C();
      if (v66)
      {
        v67 = *(v16[7] + 8 * v65);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24E078928();
          v28 = v70;
        }

        v63 = v81;
        v68 = *(v28 + 16);
        if (v68 >= *(v28 + 24) >> 1)
        {
          sub_24E078928();
          v28 = v71;
        }

        *(v28 + 16) = v68 + 1;
        v69 = (v28 + 24 * v68);
        v69[4] = v67;
        v69[5] = v64;
        v69[6] = v17;
        ++v62;
        goto LABEL_50;
      }
    }

    ++v62;
    v30 += 32;
  }

  v84 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAAE0);
  sub_24E348018();
}

uint64_t sub_24E2F2E14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_24E347358();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_24E12CAE8(*a1, &v22);
  if (!v23)
  {
    v19 = a2;
    v24 = v2;
    sub_24DFA9298(&v22, &qword_27F1E0370);
LABEL_8:
    v15 = MEMORY[0x277D837D0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
    sub_24E347018();
    *(swift_allocObject() + 16) = xmmword_24E367D20;
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    sub_24E348998();
    MEMORY[0x25303E950](0xD000000000000066, 0x800000024E3B2570);
    v16 = sub_24E347C18();
    MEMORY[0x25303E950](v16);

    v23 = v15;
    sub_24E347008();
    sub_24DFA9298(&v22, &qword_27F1E0370);
    (*(v6 + 104))(v8, *MEMORY[0x277D21DE8], v5);
    sub_24E0EF428();

    result = (*(v6 + 8))(v8, v5);
    v17 = v19;
    *v19 = 0u;
    v17[1] = 0u;
    return result;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v19 = a2;
    v24 = v2;
    goto LABEL_8;
  }

  v10 = v20;
  v11 = v21;
  sub_24E12CAE8(v9, &v22);
  if (v23)
  {
    result = swift_dynamicCast();
    v13 = v20;
    v14 = v21;
    if (!result)
    {
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    result = sub_24DFA9298(&v22, &qword_27F1E0370);
    v13 = 0;
    v14 = 0;
  }

  *a2 = v10;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v14;
  return result;
}

uint64_t sub_24E2F316C(uint64_t a1)
{
  v1 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E24C8);
  v2 = sub_24E347F08();

  v1(v2);
}

void sub_24E2F31EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAAD0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - v9;
  v11 = [objc_opt_self() proxyForLocalPlayer];
  v12 = [v11 profileServicePrivate];

  v13 = *(a2 + 16);
  if (v13)
  {
    v29[1] = v8;
    v30 = v10;
    v31 = a1;
    v32 = v12;
    v33 = v6;
    v34 = a3;
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24E12F080(0, v13, 0);
    v14 = aBlock[0];
    v35 = a2;
    v15 = a2 + 48;
    do
    {
      v16 = *(v15 - 16);
      swift_bridgeObjectRetain_n();
      v17 = v16;
      v18 = [v17 identifier];
      v19 = sub_24E347CF8();
      v21 = v20;
      swift_bridgeObjectRelease_n();

      aBlock[0] = v14;
      v23 = *(v14 + 16);
      v22 = *(v14 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_24E12F080((v22 > 1), v23 + 1, 1);
        v14 = aBlock[0];
      }

      v15 += 24;
      *(v14 + 16) = v23 + 1;
      v24 = v14 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      --v13;
    }

    while (v13);
    a3 = v34;
    a2 = v35;
    v12 = v32;
    v6 = v33;
    v10 = v30;
    a1 = v31;
  }

  v25 = sub_24E347EE8();

  (*(v7 + 16))(v10, a1, v6);
  v26 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  *(v27 + 24) = a2;
  (*(v7 + 32))(v27 + v26, v10, v6);
  aBlock[4] = sub_24E2FA074;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E0F5058;
  aBlock[3] = &block_descriptor_109_0;
  v28 = _Block_copy(aBlock);

  [v12 filterForContactIDsSupportingFriendingViaPushFromContactIDs:v25 withCompletion:v28];
  _Block_release(v28);
  swift_unknownObjectRelease();
}

void sub_24E2F352C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24E347358();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
    sub_24E347018();
    *(swift_allocObject() + 16) = xmmword_24E367D20;
    v13 = a2;
    sub_24E346FB8();
    (*(v10 + 104))(v12, *MEMORY[0x277D21DE8], v9);
    sub_24E0EF428();

    (*(v10 + 8))(v12, v9);
    sub_24E347AB8();
  }

  else
  {
    v14 = *(a4 + 16);
    v15 = MEMORY[0x277D84F90];
    if (v14)
    {
      v26 = a5;
      v29 = MEMORY[0x277D84F90];
      sub_24E348A68();
      v27 = sub_24DFA0CB4();
      v16 = (a4 + 48);
      do
      {
        v17 = *(v16 - 2);
        v18 = *(v16 - 1);
        v19 = *v16;
        v28[3] = &type metadata for GKFeatureFlags;
        v28[4] = v27;
        LOBYTE(v28[0]) = 15;

        v20 = v17;
        sub_24E3435A8();
        __swift_destroy_boxed_opaque_existential_1(v28);
        if (a1)
        {
          v21 = [v20 identifier];
          v22 = sub_24E347CF8();
          v24 = v23;

          sub_24E00D4BC(v22, v24, a1);
        }

        v16 += 3;
        v25 = objc_allocWithZone(GKSuggestedFriend);
        sub_24E11EB64(v20, v18, v19);
        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        sub_24E348A58();
        --v14;
      }

      while (v14);
      v15 = v29;
    }

    v28[0] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAAD0);
    sub_24E348018();
  }
}

void sub_24E2F3884(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_24E2F7C88();
    v3 = swift_allocError();
    *v4 = a2;
    *(v4 + 8) = 2;
    v5 = a2;
    v6 = a2;
    sub_24E347AB8();
  }

  else
  {
    sub_24E347AC8();
  }
}

void sub_24E2F393C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a4;
  v22 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = [objc_opt_self() proxyForLocalPlayer];
  v14 = [v13 friendServicePrivate];

  v15 = sub_24E347CB8();
  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v9 + 32))(v18 + v16, v12, v8);
  v19 = (v18 + v17);
  *v19 = v21;
  v19[1] = a5;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v22;
  aBlock[4] = sub_24E2F9C54;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E052CF0;
  aBlock[3] = &block_descriptor_36_1;
  v20 = _Block_copy(aBlock);

  [v14 sendFriendInvitationWithPlayerID:0 contactAssociationID:v15 completion:v20];
  _Block_release(v20);
  swift_unknownObjectRelease();
}

void sub_24E2F3B98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v8 = sub_24E343F88();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  if (a1)
  {
    v16 = a1;
    sub_24E343CC8();
    v17 = a1;
    v18 = sub_24E343F78();
    v19 = sub_24E348258();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = a1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_24DE53000, v18, v19, "Unable to send friend invitation via push: %@", v20, 0xCu);
      sub_24DFA9298(v21, &unk_27F1DF730);
      MEMORY[0x253040EE0](v21, -1, -1);
      MEMORY[0x253040EE0](v20, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    aBlock[0] = a1;
    sub_24E348008();
  }

  else
  {
    v24 = [objc_opt_self() proxyForLocalPlayer];
    v25 = [v24 utilityServicePrivate];

    v40 = a3;
    v26 = v41;
    v27 = sub_24E347CB8();
    (*(v13 + 16))(v15, a2, v12);
    v28 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v29 = swift_allocObject();
    (*(v13 + 32))(v29 + v28, v15, v12);
    aBlock[4] = sub_24E2F9CFC;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E052CF0;
    aBlock[3] = &block_descriptor_42_0;
    v30 = _Block_copy(aBlock);

    [v25 denyContact:v27 handler:v30];
    _Block_release(v30);
    swift_unknownObjectRelease();

    v31 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCD8);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_24E367D20;
    *(v32 + 32) = v40;
    *(v32 + 40) = v26;

    v33 = sub_24E347EE8();

    v34 = [v31 predicateForContactsWithIdentifiers_];

    v35 = sub_24E2F42F8(v34);
    if (v36)
    {
      v37 = v35;
      v38 = v36;
      sub_24DF88A8C(0, &qword_280BDFA90);
      static GKLocalPlayer.presentActivitySharingRepromptInOverlay(recipientName:)(v37, v38);
    }
  }
}

uint64_t sub_24E2F4038(void *a1)
{
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  if (a1)
  {
    v9 = a1;
    sub_24E343CC8();
    v10 = a1;
    v11 = sub_24E343F78();
    v12 = sub_24E348258();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = a1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_24DE53000, v11, v12, "Unable to remove contact from friend suggestions list: %@", v13, 0xCu);
      sub_24DFA9298(v14, &unk_27F1DF730);
      MEMORY[0x253040EE0](v14, -1, -1);
      MEMORY[0x253040EE0](v13, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v21[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40);
    return sub_24E348008();
  }

  else
  {
    sub_24E343CC8();
    v18 = sub_24E343F78();
    v19 = sub_24E348238();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24DE53000, v18, v19, "Friend invitation sent via push.", v20, 2u);
      MEMORY[0x253040EE0](v20, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40);
    return sub_24E348018();
  }
}

uint64_t sub_24E2F42F8(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  if (qword_27F1DDD48 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3D20);
  v3 = sub_24E347EE8();
  v15[0] = 0;
  v4 = [v2 unifiedContactsMatchingPredicate:a1 keysToFetch:v3 error:v15];

  v5 = v15[0];
  if (!v4)
  {
    v12 = v15[0];
    v13 = sub_24E3431B8();

    swift_willThrow();
    return 0;
  }

  sub_24DF88A8C(0, &qword_27F1E2F40);
  v6 = sub_24E347F08();
  v7 = v5;

  if (!sub_24DFD8654(v6))
  {

    return 0;
  }

  sub_24DFFA844(0, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x25303F560](0, v6);
  }

  else
  {
    v8 = *(v6 + 32);
  }

  v9 = v8;

  v10 = [v9 givenName];
  v11 = sub_24E347CF8();

  return v11;
}

void sub_24E2F44F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v10 = sub_24DFD8654(a1);
    if (v10)
    {
      v11 = v10;
      sub_24E348A68();
      if (v11 < 0)
      {
        __break(1u);
        return;
      }

      v12 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x25303F560](v12, a1);
        }

        else
        {
          v13 = *(a1 + 8 * v12 + 32);
        }

        v14 = v13;
        ++v12;
        v15 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
        [objc_allocWithZone(MEMORY[0x277D0C068]) initWithInternalRepresentation:v14 player:v15];

        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        sub_24E348A58();
      }

      while (v11 != v12);
    }

    sub_24E347AC8();

    return;
  }

  sub_24E2F7C88();
  v5 = swift_allocError();
  *v6 = a2;
  *(v6 + 8) = 2;
  v7 = a2;
  sub_24E347AB8();
}

void sub_24E2F46D4(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = *(a1 + 32);
  sub_24DF88A8C(0, a4);
  v6 = sub_24E347F08();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_24E2F477C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA88);
  v2 = sub_24E347AD8();
  v3 = [objc_opt_self() proxyForLocalPlayer];
  v4 = [v3 utilityService];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCD8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24E367D20;
  *(v5 + 32) = sub_24E347CF8();
  *(v5 + 40) = v6;
  v7 = sub_24E347EE8();

  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  v11[4] = sub_24E2F9EA0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24E2F0A38;
  v11[3] = &block_descriptor_75_0;
  v9 = _Block_copy(v11);

  [v4 getStoreBagValuesForKeys:v7 handler:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  return v2;
}

void sub_24E2F4958(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = [objc_opt_self() proxyForLocalPlayer];
  v9 = [v8 gameServicePrivate];

  v10 = [a2 playerID];
  if (!v10)
  {
    sub_24E347CF8();
    v10 = sub_24E347CB8();
  }

  v12[4] = sub_24E2F9E98;
  v12[5] = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_24E2F4B7C;
  v12[3] = &block_descriptor_69_0;
  v11 = _Block_copy(v12);

  [v9 getGamesPlayedSummaries:v10 limit:a3 withinSecs:v7 handler:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();
}

void sub_24E2F4AC8(uint64_t a1, void *a2)
{
  if (sub_24DFD8654(a1) || !a2)
  {
    sub_24E347AC8();
  }

  else
  {
    sub_24E2F7C88();
    v3 = swift_allocError();
    *v4 = a2;
    *(v4 + 8) = 2;
    v5 = a2;
    sub_24E347AB8();
  }
}

void sub_24E2F4B90()
{
  if (qword_27F1DDD40 != -1)
  {
    swift_once();
  }

  v0 = qword_27F1EAA00;
  sub_24E347AC8();
}

void sub_24E2F4C08(void **a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v9 = *a1;
  v10 = [objc_opt_self() proxyForLocalPlayer];
  v11 = [v10 gameStatServicePrivate];

  v12 = sub_24E347CB8();
  v13 = [v9 integerValue];
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 25) = a5;
  v16[4] = sub_24E2F9ED0;
  v16[5] = v14;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_24E1D0094;
  v16[3] = &block_descriptor_93_0;
  v15 = _Block_copy(v16);

  [v11 getGamesFriendsPlayed:a2 type:v12 withinSecs:v13 matchingBundleIDs:0 handler:v15];
  _Block_release(v15);
  swift_unknownObjectRelease();
}

void sub_24E2F4D90(uint64_t a1, void *a2, uint64_t a3, int a4, int a5)
{
  v9 = sub_24E343F88();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = a2;
    sub_24E347AB8();

    return;
  }

  v65 = v12;

  v77 = sub_24E083508(v14);
  sub_24E2F7CE8(&v77, sub_24E08452C, sub_24E155348, sub_24E2F8A8C, sub_24E2F7FA0);
  v15 = v77;
  if (sub_24DFD8654(MEMORY[0x277D84F90]))
  {
    sub_24E1AE1F0(MEMORY[0x277D84F90]);
    v17 = v16;
  }

  else
  {
    v17 = MEMORY[0x277D84FA0];
  }

  v77 = v17;
  v18 = MEMORY[0x277D84F90];
  if (sub_24DFD8654(MEMORY[0x277D84F90]))
  {
    sub_24E1AE1F0(MEMORY[0x277D84F90]);
    v20 = v19;
  }

  else
  {
    v20 = MEMORY[0x277D84FA0];
  }

  v75 = v18;
  v76 = v20;
  v21 = sub_24DFD8654(v15);
  if (v21)
  {
    v62 = v10;
    v63 = v9;
    v64 = a3;
    if (v21 < 1)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v22 = v21;
    v23 = 0;
    v24 = v15 & 0xC000000000000001;
    v71 = v15 + 32;
    v70 = MEMORY[0x277D84F90];
    v25 = &selRef_iconURLString;
    v68 = a4;
    v69 = a5;
    v66 = v21;
    v67 = v15;
    v72 = v15 & 0xC000000000000001;
    while (1)
    {
      if (v24)
      {
        v26 = MEMORY[0x25303F560](v23, v15);
      }

      else
      {
        v26 = *(v71 + 8 * v23);
      }

      v27 = v26;
      v28 = [v26 v25[381]];
      if (v28)
      {
        v29 = v28;
        if ((a4 & 1) == 0 || [v28 isArcadeGame])
        {
          v30 = v76;
          v73 = v29;
          v31 = [v73 adamID];
          v32 = v31;
          if ((v30 & 0xC000000000000001) != 0)
          {
            v33 = v31;
            v34 = sub_24E3488B8();

            if (v34)
            {

              v35 = v73;
LABEL_37:
              v24 = v72;
              v25 = &selRef_iconURLString;
              goto LABEL_38;
            }
          }

          else
          {
            if (*(v30 + 16))
            {
              sub_24DF88A8C(0, &qword_27F1E50D0);
              v36 = sub_24E348618();
              v37 = ~(-1 << *(v30 + 32));
              while (1)
              {
                v38 = v36 & v37;
                if (((*(v30 + 56 + (((v36 & v37) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v36 & v37)) & 1) == 0)
                {
                  break;
                }

                v39 = *(*(v30 + 48) + 8 * v38);
                v40 = sub_24E348628();

                v36 = v38 + 1;
                if (v40)
                {

                  v41 = v73;
                  LOBYTE(a4) = v68;
                  LOBYTE(a5) = v69;
                  v22 = v66;
                  v15 = v67;
                  goto LABEL_37;
                }
              }
            }

            LOBYTE(a4) = v68;
            LOBYTE(a5) = v69;
            v22 = v66;
            v15 = v67;
          }

          v42 = v73;
          if (a5 & 1) != 0 || (sub_24E07FBCC(), v44 = sub_24E00DBF8(1, v43), , (v44))
          {
            v45 = [v42 adamID];
            v46 = [objc_allocWithZone(MEMORY[0x277CEC258]) initWithNumberValue_];

            v47 = [v42 adamID];
            sub_24E1C3BF0(&v74, v47);

            v48 = v46;
            MEMORY[0x25303EA30]();
            if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24E347F48();
            }

            sub_24E347F88();

            v70 = v75;
          }

          else
          {
            v49 = [v42 adamID];

            sub_24E1C3BF0(&v74, v49);
          }

          goto LABEL_37;
        }
      }

LABEL_38:
      if (++v23 == v22)
      {

        v9 = v63;
        v10 = v62;
        v18 = v70;
        goto LABEL_41;
      }
    }
  }

LABEL_41:

  v51 = sub_24E25C170(v50);

  if ((v51 & 1) == 0)
  {
    v52 = v65;
    sub_24E343C98();
    v53 = sub_24E343F78();
    v54 = sub_24E348238();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v70 = v18;
      v56 = v55;
      v73 = swift_slowAlloc();
      v74 = v73;
      *v56 = 136315138;
      sub_24DF88A8C(0, &qword_27F1E50D0);
      sub_24E2F9EE0();

      v57 = sub_24E348148();
      v59 = v58;

      v60 = sub_24E1C2BE0(v57, v59, &v74);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_24DE53000, v53, v54, "Filtering unsupported games friends are playing: %s", v56, 0xCu);
      v61 = v73;
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x253040EE0](v61, -1, -1);
      v18 = v70;
      MEMORY[0x253040EE0](v56, -1, -1);
    }

    (*(v10 + 8))(v52, v9);
  }

  v74 = v18;
  sub_24E347AC8();
}

uint64_t sub_24E2F5468(id *a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = sub_24E343368();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  *&v18 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v20 = &v34 - v19;
  v21 = *a2;
  v22 = [*a1 lastPlayedDate];
  v34 = v11;
  v35 = v20;
  if (v22)
  {
    v23 = v22;
    sub_24E343328();

    v24 = *(v11 + 32);
    v24(v9, v16, v10);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    v24(v20, v9, v10);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    sub_24E343338();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      sub_24DFA9298(v9, &unk_27F1E5890);
    }
  }

  v25 = [v21 lastPlayedDate];
  if (v25)
  {
    v26 = v25;
    sub_24E343328();

    v27 = v34;
    v28 = *(v34 + 32);
    v28(v6, v16, v10);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
    v28(v13, v6, v10);
    v29 = v35;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
    sub_24E343338();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v10);
    v27 = v34;
    v29 = v35;
    if (EnumTagSinglePayload != 1)
    {
      sub_24DFA9298(v6, &unk_27F1E5890);
    }
  }

  v31 = sub_24E3432F8();
  v32 = *(v27 + 8);
  v32(v13, v10);
  v32(v29, v10);
  return v31 & 1;
}

uint64_t sub_24E2F57E0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unsigned __int8 *a6)
{
  v69 = a2;
  sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v61 = v12;
  v62 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343368();
  OUTLINED_FUNCTION_0_14();
  v66 = v16;
  v67 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v64 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - v20;
  v22 = *a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAA60);
  v65 = sub_24E347AD8();
  v23 = [objc_opt_self() proxyForLocalPlayer];
  v63 = [v23 friendServicePrivate];

  if (a1)
  {
    v24 = a1;
    v25 = [v24 playerID];
    v68 = sub_24E347CF8();
    a1 = v26;
  }

  else
  {
    v68 = 0;
  }

  sub_24E343338();
  sub_24E343C68();

  v27 = sub_24E343F78();
  v28 = sub_24E348238();
  v60 = v14;
  v29 = v28;

  if (os_log_type_enabled(v27, v29))
  {
    v30 = swift_slowAlloc();
    v58 = v18;
    v31 = v30;
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v31 = 136315650;
    if (a1)
    {
      v33 = v68;
    }

    else
    {
      v33 = 7104878;
    }

    v59 = v21;
    if (a1)
    {
      v34 = a1;
    }

    else
    {
      v34 = 0xE300000000000000;
    }

    v35 = sub_24E1C2BE0(v33, v34, aBlock);
    v57 = v22;
    v36 = v35;

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    if (a3)
    {
      v37 = v69;
    }

    else
    {
      v37 = 7104878;
    }

    if (a3)
    {
      v38 = a3;
    }

    else
    {
      v38 = 0xE300000000000000;
    }

    v39 = sub_24E1C2BE0(v37, v38, aBlock);

    *(v31 + 14) = v39;
    *(v31 + 22) = 2080;
    if (a5)
    {
      v40 = a4;
    }

    else
    {
      v40 = 7104878;
    }

    if (a5)
    {
      v41 = a5;
    }

    else
    {
      v41 = 0xE300000000000000;
    }

    v42 = sub_24E1C2BE0(v40, v41, aBlock);
    v22 = v57;

    *(v31 + 24) = v42;
    v21 = v59;
    _os_log_impl(&dword_24DE53000, v27, v29, "fetchPlayerActivityFeed start for playerID: %s, bundleID: %s and continuation: %s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253040EE0](v32, -1, -1);
    v43 = v31;
    v18 = v58;
    MEMORY[0x253040EE0](v43, -1, -1);
  }

  else
  {
  }

  (*(v61 + 8))(v60, v62);
  if (a1)
  {
    v68 = sub_24E347CB8();

    if (a3)
    {
      goto LABEL_27;
    }

LABEL_30:
    v44 = 0;
    if (a5)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v68 = 0;
  if (!a3)
  {
    goto LABEL_30;
  }

LABEL_27:
  v44 = sub_24E347CB8();
  if (a5)
  {
LABEL_28:
    v45 = sub_24E347CB8();
    goto LABEL_32;
  }

LABEL_31:
  v45 = 0;
LABEL_32:
  v46 = 0;
  switch(v22)
  {
    case 3:
      break;
    default:
      v46 = sub_24E347CB8();

      break;
  }

  v48 = v66;
  v47 = v67;
  v49 = v64;
  (*(v66 + 16))(v64, v21, v67);
  v50 = v21;
  v51 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v52 = swift_allocObject();
  (*(v48 + 32))(v52 + v51, v49, v47);
  v53 = v65;
  *(v52 + ((v18 + v51 + 7) & 0xFFFFFFFFFFFFFFF8)) = v65;
  aBlock[4] = sub_24E2F9D8C;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E0121FC;
  aBlock[3] = &block_descriptor_57_0;
  v54 = _Block_copy(aBlock);

  v55 = v68;
  [v63 getPlayerActivityFeed:v68 bundleID:v44 continuation:v45 gameCategoryFilter:v46 handler:v54];
  _Block_release(v54);
  swift_unknownObjectRelease();

  (*(v48 + 8))(v50, v47);
  return v53;
}

uint64_t sub_24E2F5E34(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v7 = sub_24E343368();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  v14 = sub_24E343F88();
  v51 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v50 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  v53 = 0;
  v54 = 0xE000000000000000;
  v48 = a1;
  if (a1)
  {
    v19 = sub_24E078DC4(v48);
    if (v19)
    {
      sub_24E2EFCB8(v19);
    }
  }

  sub_24E343C68();
  (*(v8 + 16))(v13, a3, v7);
  v20 = sub_24E343F78();
  v21 = sub_24E348238();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v47 = a2;
    v23 = v14;
    v24 = v22;
    *v22 = 134217984;
    sub_24E343338();
    sub_24E3432C8();
    v26 = v25;
    v27 = *(v8 + 8);
    v27(v10, v7);
    v27(v13, v7);
    *(v24 + 1) = v26;
    _os_log_impl(&dword_24DE53000, v20, v21, "fetchPlayerActivityFeed took %fs", v24, 0xCu);
    v28 = v24;
    v14 = v23;
    a2 = v47;
    MEMORY[0x253040EE0](v28, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v29 = v51 + 8;
  v30 = *(v51 + 8);
  v30(v18, v14);
  v31 = v50;
  sub_24E343C68();
  v32 = a2;
  v33 = sub_24E343F78();
  v34 = sub_24E348238();

  if (os_log_type_enabled(v33, v34))
  {
    v51 = v29;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v52 = v36;
    *v35 = 136315394;
    swift_beginAccess();
    v38 = v53;
    v37 = v54;
    v39 = HIBYTE(v54) & 0xF;
    v40 = v14;
    if ((v54 & 0x2000000000000000) == 0)
    {
      v39 = v53 & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
    }

    else
    {
      v37 = 0xE700000000000000;
      v38 = 0x61746164206F6ELL;
    }

    v42 = sub_24E1C2BE0(v38, v37, &v52);

    *(v35 + 4) = v42;
    *(v35 + 12) = 2080;
    v43 = sub_24E2F0B3C(a2);
    v45 = sub_24E1C2BE0(v43, v44, &v52);

    *(v35 + 14) = v45;
    _os_log_impl(&dword_24DE53000, v33, v34, "gamed returned player activity data: %s, error: %s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253040EE0](v36, -1, -1);
    MEMORY[0x253040EE0](v35, -1, -1);

    v30(v50, v40);
    if (!a2)
    {
      goto LABEL_16;
    }
  }

  else
  {

    v30(v31, v14);
    if (!a2)
    {
LABEL_16:
      v52 = v48;
      sub_24E347AC8();
    }
  }

  v41 = a2;
  sub_24E347AB8();
}

void sub_24E2F6308(id *a1, void *a2)
{
  if (!*a1)
  {
    goto LABEL_21;
  }

  v3 = *a1;
  v4 = sub_24E078DC4(v3);
  if (!v4)
  {

LABEL_21:
    *&v46[0] = a2;
    sub_24E347AC8();
    return;
  }

  v5 = v4;
  v6 = sub_24E078DC4(a2);
  if (!v6)
  {

    goto LABEL_21;
  }

  v45 = v3;
  v47 = v6;

  v8 = sub_24E12E734(v7);

  if (v8)
  {
    if (!sub_24DFD8654(v5))
    {
LABEL_18:

      goto LABEL_38;
    }

    sub_24DFFA844(0, (v5 & 0xC000000000000001) == 0, v5);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x25303F560](0, v5);
    }

    else
    {
      v9 = *(v5 + 32);
    }

    v10 = v9;
    v11 = [v8 title];
    if (v11)
    {
      v12 = v11;
      v13 = sub_24E347CF8();
      v15 = v14;

      v16 = sub_24E078E9C(v10);
      if (!v17)
      {

LABEL_36:

        goto LABEL_38;
      }

      if (v13 == v16 && v17 == v15)
      {
      }

      else
      {
        v19 = sub_24E348C08();

        if ((v19 & 1) == 0)
        {
          MEMORY[0x25303EA30](v20);
          if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24E347F48();
          }

          sub_24E347F88();
          goto LABEL_18;
        }
      }

      v21 = sub_24E078E40(v10);
      if (v21)
      {
        v44 = v10;
        v22 = *(v21 + 16);
        for (i = v21 + 32; v22; --v22)
        {
          v24 = v8;
          v25 = sub_24E078E40(v24);
          if (v25)
          {
            v26 = v25;
            sub_24DFB4104(i, v46);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_24E077F98();
              v26 = v29;
            }

            v27 = *(v26 + 16);
            if (v27 >= *(v26 + 24) >> 1)
            {
              sub_24E077F98();
              v26 = v30;
            }

            *(v26 + 16) = v27 + 1;
            sub_24E024710(v46, (v26 + 32 * v27 + 32));
            v28 = sub_24E347EE8();

            [v24 setItems_];
          }

          else
          {
            [v24 setItems_];
          }

          i += 32;
        }

        goto LABEL_38;
      }
    }

    goto LABEL_36;
  }

LABEL_38:
  v31 = sub_24DFD8654(v5);
  if (v31 < 1)
  {
    goto LABEL_57;
  }

  v32 = v31;
  sub_24E05F66C(1, v5);
  sub_24E05F66C(v32, v5);
  if ((v5 & 0xC000000000000001) != 0)
  {
    if (v32 == 1)
    {
    }

    else
    {
      sub_24DF88A8C(0, &qword_280BDFA80);

      v33 = 1;
      do
      {
        v34 = v33 + 1;
        sub_24E3489E8();
        v33 = v34;
      }

      while (v32 != v34);
    }

    if (v5 >> 62)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v35 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
  v36 = 1;
  while (v32 != v36)
  {
    if (v36 >= v32)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:

      sub_24E348B38();
      v35 = v40;
      v36 = v41;
      v43 = v42;

      v32 = v43 >> 1;
    }

    else
    {
      v37 = *(v35 + 8 * v36);
      MEMORY[0x25303EA30]();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24E347F48();
      }

      sub_24E347F88();

      ++v36;
    }
  }

  swift_unknownObjectRelease();
  sub_24E078E34(v45);
  if (v38)
  {
    v39 = sub_24E347CB8();
  }

  else
  {
    v39 = 0;
  }

  [a2 setContinuationToken_];

  *&v46[0] = a2;
  sub_24E347AC8();
}

uint64_t sub_24E2F6804(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  OUTLINED_FUNCTION_35_3();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24E2F6830()
{
  OUTLINED_FUNCTION_8_9();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1F50);
  OUTLINED_FUNCTION_13_59();
  *v2 = v3;
  v2[1] = sub_24E2F6924;
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_23_32();

  return MEMORY[0x2822007B8](v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_24E2F6924()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_24E2F6A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAB08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - v7;
  v9 = [objc_opt_self() proxyForLocalPlayer];
  v10 = [v9 utilityServicePrivate];

  v11 = sub_24E343228();
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  (*(v6 + 32))(v13 + v12, v8, v5);
  aBlock[4] = sub_24E2FA26C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E2F6F64;
  aBlock[3] = &block_descriptor_123;
  v14 = _Block_copy(aBlock);

  [v10 invokeASCAppLaunchTrampolineWithURL:v11 handler:v14];
  _Block_release(v14);
  swift_unknownObjectRelease();
}

uint64_t sub_24E2F6C4C(id a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a5[2])
  {
    strcpy(&v24, "destinationUrl");
    HIBYTE(v24) = -18;

    v9 = MEMORY[0x277D837D0];
    sub_24E348918();
    if (a4)
    {
      *(&v25 + 1) = v9;
      *&v24 = a3;
      *(&v24 + 1) = a4;
      sub_24E024710(&v24, v23);

      swift_isUniquelyReferenced_nonNull_native();
      sub_24E059008(v23, v26);
      sub_24DF8BE60(v26);
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      sub_24DFA9298(&v24, &qword_27F1E0370);
      v10 = sub_24E26AE00();
      if (v11)
      {
        v12 = v10;
        swift_isUniquelyReferenced_nonNull_native();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1F60);
        sub_24E348AB8();
        sub_24DF8BE60(a5[6] + 40 * v12);
        sub_24E024710((a5[7] + 32 * v12), v23);
        sub_24E348AD8();
      }

      else
      {
        memset(v23, 0, sizeof(v23));
      }

      sub_24DF8BE60(v26);
      sub_24DFA9298(v23, &qword_27F1E0370);
    }

    v13 = objc_opt_self();
    v14 = [objc_opt_self() local];
    v15 = [v13 proxyForPlayer_];

    v16 = [v15 utilityServicePrivate];
    v17 = *MEMORY[0x277D0BE00];
    sub_24DF88A8C(0, &qword_27F1E50D0);
    v18 = v17;
    v19 = sub_24E3485E8();
    v20 = sub_24E347BE8();

    [v16 reportMetricsEventWithTopic:v18 shouldFlush:v19 metricsFields:v20];
    swift_unknownObjectRelease();
  }

  v26[0] = a1;
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAB08);
  return sub_24E348018();
}

uint64_t sub_24E2F6F64(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (a4)
  {
    v7 = sub_24E347CF8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a2;
  v11 = a3;
  v6(a2, a3, v7, v9);
}

uint64_t static GameCenterObjcHelper.fetchRecommendedFriends(completionHandler:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GameCenter();
  swift_initStaticObject();
  sub_24E2F1AE4();
  OUTLINED_FUNCTION_16_4();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  OUTLINED_FUNCTION_16_4();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_24DF88A8C(0, &qword_27F1DFCD0);
  swift_retain_n();
  sub_24E348368();
  OUTLINED_FUNCTION_12_59();
  OUTLINED_FUNCTION_26_23();

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void sub_24E2F717C(uint64_t a1, uint64_t a2)
{
  sub_24DF88A8C(0, &qword_27F1E2F40);
  v3 = sub_24E347EE8();
  (*(a2 + 16))(a2, v3);
}

uint64_t static GameCenterObjcHelper.fetchSuggestedFriends(completionHandler:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GameCenter();
  swift_initStaticObject();
  sub_24E2EFE4C();
  OUTLINED_FUNCTION_16_4();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  OUTLINED_FUNCTION_16_4();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_24DF88A8C(0, &qword_27F1DFCD0);
  swift_retain_n();
  sub_24E348368();
  OUTLINED_FUNCTION_12_59();
  OUTLINED_FUNCTION_26_23();

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_24E2F739C(int a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  a6(a5, v9);
}

void sub_24E2F7414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24DF88A8C(0, &qword_27F1E21A0);
  v5 = sub_24E347EE8();
  if (a2)
  {
    v6 = sub_24E3431A8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t static GameCenterObjcHelper.sendFriendInvitationViaPush(contactID:contactAssociationID:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  v13 = OUTLINED_FUNCTION_4_5(v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  v16 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = a4;
  v17[8] = a5;
  v17[9] = a6;

  sub_24DFC8700(0, 0, v15, &unk_24E38D130, v17);
}

uint64_t sub_24E2F75DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v12;
  type metadata accessor for GameCenter();
  swift_initStaticObject();
  v9 = swift_task_alloc();
  v8[4] = v9;
  *v9 = v8;
  v9[1] = sub_24E2F76BC;

  return sub_24E2EFF78();
}

uint64_t sub_24E2F76BC()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v2 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v3 = v2;
  *(v4 + 40) = v0;

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24E2F77BC()
{
  OUTLINED_FUNCTION_9_7();
  (*(v0 + 16))(0);
  OUTLINED_FUNCTION_12_5();

  return v1();
}

uint64_t sub_24E2F781C()
{
  OUTLINED_FUNCTION_8_9();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = v1;
  v2(v1);

  OUTLINED_FUNCTION_12_5();

  return v4();
}

uint64_t sub_24E2F78A0()
{
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24DFB4D64;
  v7 = OUTLINED_FUNCTION_3_66();

  return sub_24E2F75DC(v7, v8, v9, v10, v2, v3, v4, v5);
}

id GameCenterObjcHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GameCenterObjcHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GameCenterObjcHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for GameCenter.FriendType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E2F7C14()
{
  result = qword_27F1EAA10;
  if (!qword_27F1EAA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EAA10);
  }

  return result;
}

uint64_t block_copy_helper_100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E2F7C88()
{
  result = qword_27F1EAA28;
  if (!qword_27F1EAA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EAA28);
  }

  return result;
}

uint64_t sub_24E2F7CE8(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a5)
{
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = a2(v10);
    *a1 = v10;
  }

  v12 = *(v10 + 16);
  v14[0] = v10 + 32;
  v14[1] = v12;
  sub_24E2F7D94(v14, a3, a4, a5);
  return sub_24E348A58();
}

uint64_t sub_24E2F7D94(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a4)
{
  v9 = *(a1 + 8);
  result = sub_24E348B98();
  if (result < v9)
  {
    v11 = result;
    a4 = a2(v9 / 2);
    v13[0] = v12;
    v13[1] = v9 / 2;
    result = a3(v13, v14, a1, v11);
    if (v4)
    {
      if (v9 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v9 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

LABEL_5:
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v9)
  {
    return (a4)(0, v9, 1, a1);
  }

  return result;
}

void sub_24E2F7E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v18 = v6;
      while (1)
      {
        v10 = *v6;
        v11 = v8;
        v12 = v10;
        v13 = [v11 supportsFriendingViaPush];
        if (v13 == [v12 supportsFriendingViaPush])
        {
          break;
        }

        v14 = [v11 supportsFriendingViaPush];

        if (v14)
        {
          if (!v5)
          {
            __break(1u);
            return;
          }

          v15 = *v6;
          v8 = *(v6 + 8);
          *v6 = v8;
          *(v6 + 8) = v15;
          v6 -= 8;
          if (!__CFADD__(v9++, 1))
          {
            continue;
          }
        }

        goto LABEL_11;
      }

LABEL_11:
      ++v4;
      v6 = v18 + 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_24E2F7FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v45 - v11;
  v12 = sub_24E343368();
  MEMORY[0x28223BE20](v12);
  v51 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v56 = &v45 - v15;
  MEMORY[0x28223BE20](v16);
  v57 = &v45 - v18;
  v46 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v55 = (v17 + 32);
    v50 = (v17 + 8);
    v52 = v19;
    v20 = v19 + 8 * a3 - 8;
    v21 = a1 - a3;
    while (2)
    {
      v48 = v20;
      v49 = a3;
      v22 = *(v52 + 8 * a3);
      v47 = v21;
      do
      {
        v23 = *v20;
        v24 = v22;
        v25 = v23;
        v26 = [v24 lastPlayedDate];
        if (v26)
        {
          v27 = v26;
          v28 = v56;
          sub_24E343328();

          v29 = *v55;
          v30 = v53;
          (*v55)(v53, v28, v12);
          __swift_storeEnumTagSinglePayload(v30, 0, 1, v12);
          (v29)(v57, v30, v12);
        }

        else
        {
          v31 = v53;
          __swift_storeEnumTagSinglePayload(v53, 1, 1, v12);
          sub_24E343338();
          if (__swift_getEnumTagSinglePayload(v31, 1, v12) != 1)
          {
            sub_24DFA9298(v53, &unk_27F1E5890);
          }
        }

        v32 = [v25 lastPlayedDate];
        if (v32)
        {
          v33 = v32;
          v34 = v56;
          sub_24E343328();

          v35 = v54;
          v36 = *v55;
          (*v55)(v54, v34, v12);
          __swift_storeEnumTagSinglePayload(v35, 0, 1, v12);
          v37 = v51;
          v36();
        }

        else
        {
          v38 = v54;
          __swift_storeEnumTagSinglePayload(v54, 1, 1, v12);
          v37 = v51;
          sub_24E343338();
          if (__swift_getEnumTagSinglePayload(v38, 1, v12) != 1)
          {
            sub_24DFA9298(v54, &unk_27F1E5890);
          }
        }

        v39 = v57;
        v40 = sub_24E3432F8();
        v41 = v37;
        v42 = *v50;
        (*v50)(v41, v12);
        v42(v39, v12);

        if ((v40 & 1) == 0)
        {
          break;
        }

        if (!v52)
        {
          __break(1u);
          return;
        }

        v43 = *v20;
        v22 = *(v20 + 8);
        *v20 = v22;
        *(v20 + 8) = v43;
        v20 -= 8;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v49 + 1;
      v20 = v48 + 8;
      v21 = v47 - 1;
      if (v49 + 1 != v46)
      {
        continue;
      }

      break;
    }
  }
}

void sub_24E2F83C0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_98:
    v106 = *a1;
    if (!*a1)
    {
      goto LABEL_139;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_100:
      v89 = (v8 + 16);
      v90 = *(v8 + 16);
      while (v90 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_136;
        }

        v91 = v8;
        v92 = (v8 + 16 * v90);
        v93 = *v92;
        v94 = &v89[2 * v90];
        v8 = *(v94 + 1);
        sub_24E2F96D0((*a3 + 8 * *v92), (*a3 + 8 * *v94), (*a3 + 8 * v8), v106);
        if (v5)
        {
          break;
        }

        if (v8 < v93)
        {
          goto LABEL_124;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_125;
        }

        *v92 = v93;
        v92[1] = v8;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_126;
        }

        v90 = *v89 - 1;
        sub_24E081A34(v94 + 16, v95, v94);
        *v89 = v90;
        v8 = v91;
      }

LABEL_108:

      return;
    }

LABEL_133:
    v8 = sub_24E081A20(v8);
    goto LABEL_100;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v102 = v6;
      v97 = v8;
      v10 = *a3;
      v11 = *(*a3 + 8 * v9);
      v12 = *(*a3 + 8 * v7);
      v8 = v11;
      v13 = [v12 supportsFriendingViaPush];
      v106 = v5;
      if (v13 == [v8 supportsFriendingViaPush])
      {
        v100 = 0;
      }

      else
      {
        v100 = [v12 supportsFriendingViaPush];
      }

      v14 = 8 * v9;
      v15 = (v10 + 8 * v9 + 16);
      v16 = 8 * v9 + 8;
      v17 = v102;
      while (1)
      {
        v18 = v7;
        v5 = v7 + 1;
        if (v7 + 1 >= v17)
        {
          break;
        }

        v19 = *(v15 - 1);
        v8 = *v15;
        v20 = v19;
        v21 = [v8 supportsFriendingViaPush];
        if (v21 == [v20 supportsFriendingViaPush])
        {

          v17 = v102;
          if (v100)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v22 = [v8 supportsFriendingViaPush];

          v17 = v102;
          if (v100 != v22)
          {
            break;
          }
        }

        ++v15;
        v16 += 8;
        v7 = v5;
      }

      if (!v100)
      {
        v7 = v5;
        v5 = v106;
        v8 = v97;
        goto LABEL_25;
      }

LABEL_15:
      v7 = v18 + 1;
      if (v18 + 1 < v9)
      {
        goto LABEL_130;
      }

      if (v9 >= v7)
      {
        v5 = v106;
        v8 = v97;
      }

      else
      {
        v23 = v9;
        v5 = v106;
        v8 = v97;
        do
        {
          if (v23 != v18)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_137;
            }

            v25 = *(v24 + v14);
            *(v24 + v14) = *(v24 + v16);
            *(v24 + v16) = v25;
          }

          ++v23;
          v16 -= 8;
          v14 += 8;
          v26 = v23 < v18--;
        }

        while (v26);
      }
    }

LABEL_25:
    v27 = a3[1];
    if (v7 < v27)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_129;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_45:
    if (v7 < v9)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_24E076FA4(0, *(v8 + 16) + 1, 1, v8);
      v8 = v87;
    }

    v44 = *(v8 + 16);
    v43 = *(v8 + 24);
    v45 = v44 + 1;
    v106 = v5;
    if (v44 >= v43 >> 1)
    {
      sub_24E076FA4(v43 > 1, v44 + 1, 1, v8);
      v8 = v88;
    }

    *(v8 + 16) = v45;
    v46 = v8 + 32;
    v47 = (v8 + 32 + 16 * v44);
    *v47 = v9;
    v47[1] = v7;
    v104 = *a1;
    if (!*a1)
    {
      goto LABEL_138;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        v49 = (v46 + 16 * (v45 - 1));
        v50 = (v8 + 16 * v45);
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v51 = *(v8 + 32);
          v52 = *(v8 + 40);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_65:
          if (v54)
          {
            goto LABEL_115;
          }

          v66 = *v50;
          v65 = v50[1];
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_118;
          }

          v70 = v49[1];
          v71 = v70 - *v49;
          if (__OFSUB__(v70, *v49))
          {
            goto LABEL_121;
          }

          if (__OFADD__(v68, v71))
          {
            goto LABEL_123;
          }

          if (v68 + v71 >= v53)
          {
            if (v53 < v71)
            {
              v48 = v45 - 2;
            }

            goto LABEL_87;
          }

          goto LABEL_80;
        }

        if (v45 < 2)
        {
          goto LABEL_117;
        }

        v73 = *v50;
        v72 = v50[1];
        v61 = __OFSUB__(v72, v73);
        v68 = v72 - v73;
        v69 = v61;
LABEL_80:
        if (v69)
        {
          goto LABEL_120;
        }

        v75 = *v49;
        v74 = v49[1];
        v61 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v61)
        {
          goto LABEL_122;
        }

        if (v76 < v68)
        {
          goto LABEL_94;
        }

LABEL_87:
        if (v48 - 1 >= v45)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v80 = v8;
        v81 = (v46 + 16 * (v48 - 1));
        v82 = *v81;
        v83 = v48;
        v8 = v46 + 16 * v48;
        v5 = *(v8 + 8);
        sub_24E2F96D0((*a3 + 8 * *v81), (*a3 + 8 * *v8), (*a3 + 8 * v5), v104);
        if (v106)
        {
          goto LABEL_108;
        }

        if (v5 < v82)
        {
          goto LABEL_110;
        }

        v84 = v46;
        v85 = *(v80 + 16);
        if (v83 > v85)
        {
          goto LABEL_111;
        }

        *v81 = v82;
        v81[1] = v5;
        if (v83 >= v85)
        {
          goto LABEL_112;
        }

        v86 = v83;
        v45 = v85 - 1;
        sub_24E081A34((v8 + 16), v85 - 1 - v86, v8);
        v8 = v80;
        *(v80 + 16) = v85 - 1;
        v26 = v85 > 2;
        v46 = v84;
        if (!v26)
        {
          goto LABEL_94;
        }
      }

      v55 = v46 + 16 * v45;
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_113;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_114;
      }

      v62 = v50[1];
      v63 = v62 - *v50;
      if (__OFSUB__(v62, *v50))
      {
        goto LABEL_116;
      }

      v61 = __OFADD__(v53, v63);
      v64 = v53 + v63;
      if (v61)
      {
        goto LABEL_119;
      }

      if (v64 >= v58)
      {
        v78 = *v49;
        v77 = v49[1];
        v61 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v61)
        {
          goto LABEL_127;
        }

        if (v53 < v79)
        {
          v48 = v45 - 2;
        }

        goto LABEL_87;
      }

      goto LABEL_65;
    }

LABEL_94:
    v6 = a3[1];
    v5 = v106;
    if (v7 >= v6)
    {
      goto LABEL_98;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_131;
  }

  if (v9 + a4 >= v27)
  {
    v28 = a3[1];
  }

  else
  {
    v28 = v9 + a4;
  }

  if (v28 < v9)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v7 == v28)
  {
    goto LABEL_45;
  }

  v98 = v8;
  v106 = v5;
  v29 = *a3;
  v30 = v7;
  v31 = *a3 + 8 * v7 - 8;
  v101 = v28;
  v32 = v9 - v30;
LABEL_35:
  v103 = v30;
  v33 = *(v29 + 8 * v30);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    v36 = *v35;
    v37 = v33;
    v38 = v36;
    v39 = [v37 supportsFriendingViaPush];
    if (v39 == [v38 supportsFriendingViaPush])
    {

LABEL_43:
      v30 = v103 + 1;
      v31 += 8;
      --v32;
      if (v103 + 1 == v101)
      {
        v7 = v101;
        v5 = v106;
        v8 = v98;
        goto LABEL_45;
      }

      goto LABEL_35;
    }

    v40 = [v37 supportsFriendingViaPush];

    if ((v40 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v29)
    {
      break;
    }

    v41 = *v35;
    v33 = *(v35 + 8);
    *v35 = v33;
    *(v35 + 8) = v41;
    v35 -= 8;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

void sub_24E2F8A8C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v150 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890);
  MEMORY[0x28223BE20](v6 - 8);
  v166 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v165 = &v147 - v9;
  MEMORY[0x28223BE20](v10);
  v156 = &v147 - v11;
  MEMORY[0x28223BE20](v12);
  v155 = &v147 - v13;
  v14 = sub_24E343368();
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v170 = &v147 - v16;
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v168 = &v147 - v19;
  MEMORY[0x28223BE20](v20);
  v157 = a3;
  v158 = &v147 - v24;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_110:
    v26 = *v150;
    if (!*v150)
    {
      goto LABEL_152;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_112:
      v139 = (v27 + 16);
      for (i = *(v27 + 2); i >= 2; *v139 = i)
      {
        if (!*v157)
        {
          goto LABEL_149;
        }

        v141 = &v27[16 * i];
        v142 = *v141;
        v143 = &v139[2 * i];
        v144 = *(v143 + 1);
        v145 = v161;
        sub_24E2F9950((*v157 + 8 * *v141), (*v157 + 8 * *v143), (*v157 + 8 * v144), v26);
        v161 = v145;
        if (v145)
        {
          break;
        }

        if (v144 < v142)
        {
          goto LABEL_137;
        }

        if (i - 2 >= *v139)
        {
          goto LABEL_138;
        }

        *v141 = v142;
        *(v141 + 1) = v144;
        v146 = *v139 - i;
        if (*v139 < i)
        {
          goto LABEL_139;
        }

        i = *v139 - 1;
        sub_24E081A34(v143 + 16, v146, v143);
      }

LABEL_120:

      return;
    }

LABEL_146:
    v27 = sub_24E081A20(v27);
    goto LABEL_112;
  }

  v153 = v23;
  v162 = v22;
  v148 = a4;
  v26 = 0;
  v167 = (v21 + 32);
  v27 = MEMORY[0x277D84F90];
  v164 = (v21 + 8);
  while (1)
  {
    v28 = v26++;
    if (v26 < v25)
    {
      v29 = v26;
      v30 = *v157;
      v31 = v29;
      v172 = *(*v157 + 8 * v29);
      v171 = *(v30 + 8 * v28);
      v32 = v171;
      v33 = v172;
      v34 = v32;
      v35 = v161;
      LODWORD(v163) = sub_24E2F5468(&v172, &v171);
      v161 = v35;
      if (v35)
      {

        return;
      }

      v159 = v27;

      v152 = 8 * v28;
      v36 = v28;
      v37 = (v30 + 8 * v28 + 16);
      v149 = v36;
      v38 = (v36 + 2);
      v26 = v31;
      v154 = v25;
      while (1)
      {
        v27 = v38;
        if (v26 + 1 >= v25)
        {
          break;
        }

        v160 = v26;
        v39 = *(v37 - 1);
        v40 = *v37;
        v41 = v39;
        v169 = v40;
        v42 = [v40 lastPlayedDate];
        if (v42)
        {
          v43 = v42;
          v44 = v168;
          sub_24E343328();

          v45 = *v167;
          v46 = v155;
          (*v167)(v155, v44, v14);
          __swift_storeEnumTagSinglePayload(v46, 0, 1, v14);
          v45(v158, v46, v14);
        }

        else
        {
          v47 = v155;
          __swift_storeEnumTagSinglePayload(v155, 1, 1, v14);
          sub_24E343338();
          if (__swift_getEnumTagSinglePayload(v47, 1, v14) != 1)
          {
            sub_24DFA9298(v155, &unk_27F1E5890);
          }
        }

        v48 = [v41 lastPlayedDate];
        if (v48)
        {
          v49 = v48;
          v50 = v168;
          sub_24E343328();

          v51 = *v167;
          v52 = v156;
          (*v167)(v156, v50, v14);
          __swift_storeEnumTagSinglePayload(v52, 0, 1, v14);
          v53 = v153;
          v51(v153, v52, v14);
        }

        else
        {
          v54 = v156;
          __swift_storeEnumTagSinglePayload(v156, 1, 1, v14);
          v53 = v153;
          sub_24E343338();
          if (__swift_getEnumTagSinglePayload(v54, 1, v14) != 1)
          {
            sub_24DFA9298(v156, &unk_27F1E5890);
          }
        }

        v55 = v158;
        v56 = sub_24E3432F8();
        v57 = *v164;
        (*v164)(v53, v14);
        v57(v55, v14);

        ++v37;
        v26 = v160 + 1;
        v38 = v27 + 1;
        v25 = v154;
        if ((v163 ^ v56))
        {
          goto LABEL_18;
        }
      }

      v26 = v25;
LABEL_18:
      if (v163)
      {
        v28 = v149;
        if (v26 < v149)
        {
          goto LABEL_145;
        }

        if (v149 >= v26)
        {
          v27 = v159;
        }

        else
        {
          if (v25 >= v27)
          {
            v58 = v27;
          }

          else
          {
            v58 = v25;
          }

          v59 = 8 * v58 - 8;
          v60 = v26;
          v61 = v149;
          v27 = v159;
          v62 = v152;
          do
          {
            if (v61 != --v60)
            {
              v63 = *v157;
              if (!*v157)
              {
                goto LABEL_150;
              }

              v64 = *(v63 + v62);
              *(v63 + v62) = *(v63 + v59);
              *(v63 + v59) = v64;
            }

            ++v61;
            v59 -= 8;
            v62 += 8;
          }

          while (v61 < v60);
        }
      }

      else
      {
        v27 = v159;
        v28 = v149;
      }
    }

    v65 = v157[1];
    if (v26 < v65)
    {
      if (__OFSUB__(v26, v28))
      {
        goto LABEL_142;
      }

      if (v26 - v28 < v148)
      {
        break;
      }
    }

LABEL_56:
    if (v26 < v28)
    {
      goto LABEL_141;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_24E076FA4(0, *(v27 + 2) + 1, 1, v27);
      v27 = v137;
    }

    v93 = *(v27 + 2);
    v92 = *(v27 + 3);
    v94 = v93 + 1;
    if (v93 >= v92 >> 1)
    {
      sub_24E076FA4(v92 > 1, v93 + 1, 1, v27);
      v27 = v138;
    }

    *(v27 + 2) = v94;
    v95 = v27 + 32;
    v96 = &v27[16 * v93 + 32];
    *v96 = v28;
    *(v96 + 1) = v26;
    v169 = *v150;
    if (!v169)
    {
      goto LABEL_151;
    }

    if (v93)
    {
      v159 = v27;
      while (1)
      {
        v97 = v94 - 1;
        v98 = &v95[16 * v94 - 16];
        v99 = &v27[16 * v94];
        if (v94 >= 4)
        {
          break;
        }

        if (v94 == 3)
        {
          v100 = *(v27 + 4);
          v101 = *(v27 + 5);
          v110 = __OFSUB__(v101, v100);
          v102 = v101 - v100;
          v103 = v110;
LABEL_77:
          if (v103)
          {
            goto LABEL_128;
          }

          v115 = *v99;
          v114 = *(v99 + 1);
          v116 = __OFSUB__(v114, v115);
          v117 = v114 - v115;
          v118 = v116;
          if (v116)
          {
            goto LABEL_131;
          }

          v119 = *(v98 + 1);
          v120 = v119 - *v98;
          if (__OFSUB__(v119, *v98))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v117, v120))
          {
            goto LABEL_136;
          }

          if (v117 + v120 >= v102)
          {
            if (v102 < v120)
            {
              v97 = v94 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        if (v94 < 2)
        {
          goto LABEL_130;
        }

        v122 = *v99;
        v121 = *(v99 + 1);
        v110 = __OFSUB__(v121, v122);
        v117 = v121 - v122;
        v118 = v110;
LABEL_92:
        if (v118)
        {
          goto LABEL_133;
        }

        v124 = *v98;
        v123 = *(v98 + 1);
        v110 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v110)
        {
          goto LABEL_135;
        }

        if (v125 < v117)
        {
          goto LABEL_106;
        }

LABEL_99:
        if (v97 - 1 >= v94)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (!*v157)
        {
          goto LABEL_148;
        }

        v129 = &v95[16 * v97 - 16];
        v27 = *v129;
        v130 = v97;
        v131 = &v95[16 * v97];
        v132 = *(v131 + 1);
        v133 = v161;
        sub_24E2F9950((*v157 + 8 * *v129), (*v157 + 8 * *v131), (*v157 + 8 * v132), v169);
        v161 = v133;
        if (v133)
        {
          goto LABEL_120;
        }

        if (v132 < v27)
        {
          goto LABEL_123;
        }

        v134 = v95;
        v135 = v26;
        v26 = *(v159 + 2);
        if (v130 > v26)
        {
          goto LABEL_124;
        }

        *v129 = v27;
        *(v129 + 1) = v132;
        if (v130 >= v26)
        {
          goto LABEL_125;
        }

        v94 = v26 - 1;
        sub_24E081A34(v131 + 16, v26 - 1 - v130, v131);
        v27 = v159;
        *(v159 + 2) = v26 - 1;
        v136 = v26 > 2;
        v26 = v135;
        v95 = v134;
        if (!v136)
        {
          goto LABEL_106;
        }
      }

      v104 = &v95[16 * v94];
      v105 = *(v104 - 8);
      v106 = *(v104 - 7);
      v110 = __OFSUB__(v106, v105);
      v107 = v106 - v105;
      if (v110)
      {
        goto LABEL_126;
      }

      v109 = *(v104 - 6);
      v108 = *(v104 - 5);
      v110 = __OFSUB__(v108, v109);
      v102 = v108 - v109;
      v103 = v110;
      if (v110)
      {
        goto LABEL_127;
      }

      v111 = *(v99 + 1);
      v112 = v111 - *v99;
      if (__OFSUB__(v111, *v99))
      {
        goto LABEL_129;
      }

      v110 = __OFADD__(v102, v112);
      v113 = v102 + v112;
      if (v110)
      {
        goto LABEL_132;
      }

      if (v113 >= v107)
      {
        v127 = *v98;
        v126 = *(v98 + 1);
        v110 = __OFSUB__(v126, v127);
        v128 = v126 - v127;
        if (v110)
        {
          goto LABEL_140;
        }

        if (v102 < v128)
        {
          v97 = v94 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_77;
    }

LABEL_106:
    v25 = v157[1];
    if (v26 >= v25)
    {
      goto LABEL_110;
    }
  }

  v66 = (v28 + v148);
  if (__OFADD__(v28, v148))
  {
    goto LABEL_143;
  }

  if (v66 >= v65)
  {
    v66 = v157[1];
  }

  if (v66 < v28)
  {
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v26 == v66)
  {
    goto LABEL_56;
  }

  v159 = v27;
  v163 = *v157;
  v67 = v163 + 8 * v26 - 8;
  v149 = v28;
  v68 = v28 - v26;
  v151 = v66;
LABEL_41:
  v160 = v26;
  v69 = *(v163 + 8 * v26);
  v152 = v68;
  v154 = v67;
  v70 = v67;
  while (1)
  {
    v71 = *v70;
    v72 = v69;
    v73 = v71;
    v169 = v72;
    v74 = [v72 lastPlayedDate];
    if (v74)
    {
      v75 = v74;
      v76 = v168;
      sub_24E343328();

      v77 = *v167;
      v78 = v165;
      (*v167)(v165, v76, v14);
      __swift_storeEnumTagSinglePayload(v78, 0, 1, v14);
      v77(v170, v78, v14);
    }

    else
    {
      v79 = v165;
      __swift_storeEnumTagSinglePayload(v165, 1, 1, v14);
      sub_24E343338();
      if (__swift_getEnumTagSinglePayload(v79, 1, v14) != 1)
      {
        sub_24DFA9298(v165, &unk_27F1E5890);
      }
    }

    v80 = [v73 lastPlayedDate];
    if (v80)
    {
      v81 = v80;
      v82 = v168;
      sub_24E343328();

      v83 = v166;
      v84 = *v167;
      (*v167)(v166, v82, v14);
      __swift_storeEnumTagSinglePayload(v83, 0, 1, v14);
      v85 = v162;
      v84(v162, v83, v14);
    }

    else
    {
      v86 = v166;
      __swift_storeEnumTagSinglePayload(v166, 1, 1, v14);
      v85 = v162;
      sub_24E343338();
      if (__swift_getEnumTagSinglePayload(v86, 1, v14) != 1)
      {
        sub_24DFA9298(v166, &unk_27F1E5890);
      }
    }

    v87 = v170;
    v88 = sub_24E3432F8();
    v89 = *v164;
    (*v164)(v85, v14);
    v89(v87, v14);

    if ((v88 & 1) == 0)
    {
LABEL_54:
      v26 = v160 + 1;
      v67 = v154 + 8;
      v68 = v152 - 1;
      if ((v160 + 1) == v151)
      {
        v26 = v151;
        v27 = v159;
        v28 = v149;
        goto LABEL_56;
      }

      goto LABEL_41;
    }

    if (!v163)
    {
      break;
    }

    v90 = *v70;
    v69 = *(v70 + 8);
    *v70 = v69;
    *(v70 + 8) = v90;
    v70 -= 8;
    if (__CFADD__(v68++, 1))
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

uint64_t sub_24E2F96D0(char *a1, char *a2, id *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_24E130EB0(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_32;
      }

      v12 = v10;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      v16 = [v14 supportsFriendingViaPush];
      if (v16 == [v15 supportsFriendingViaPush])
      {
      }

      else
      {
        v17 = [v14 supportsFriendingViaPush];

        if (v17)
        {
          v18 = v6;
          v19 = v7 == v6++;
          goto LABEL_12;
        }
      }

      v18 = v4;
      v19 = v7 == v4++;
LABEL_12:
      v10 = v12;
      if (!v19)
      {
        *v7 = *v18;
      }

      ++v7;
    }
  }

  sub_24E130EB0(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
  v20 = &selRef_smallIconURLString;
  v36 = v4;
  v35 = v7;
LABEL_16:
  v21 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v23 = v6;
    v24 = v10;
    v25 = v10 - 1;
    v26 = v21;
    v27 = *v21;
    v28 = *(v10 - 1);
    v29 = v27;
    v30 = [v28 v20[106]];
    if (v30 == [v29 v20[106]])
    {

      v6 = v23;
    }

    else
    {
      v31 = [v28 v20[106]];

      v6 = v23;
      if (v31)
      {
        v19 = v5 + 1 == v23;
        v6 = v26;
        v20 = &selRef_smallIconURLString;
        v7 = v35;
        v10 = v24;
        v4 = v36;
        if (!v19)
        {
          *v5 = *v26;
          v6 = v26;
        }

        goto LABEL_16;
      }
    }

    v7 = v35;
    v21 = v26;
    if (v24 != v5 + 1)
    {
      *v5 = *v25;
    }

    --v5;
    v10 = v25;
    v20 = &selRef_smallIconURLString;
    v4 = v36;
  }

LABEL_32:
  v32 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v32])
  {
    memmove(v6, v4, 8 * v32);
  }

  return 1;
}

uint64_t sub_24E2F9950(char *a1, char *a2, id *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a1;
  v7 = (a2 - a1) / 8;
  v8 = (a3 - a2) / 8;
  if (v7 >= v8)
  {
    sub_24E130EB0(a2, (a3 - a2) / 8, a4);
    v25 = a2;
    v11 = &v4[v8];
    v26 = -v4;
    __src = v4;
LABEL_15:
    v27 = v25 - 1;
    v28 = v5 - 1;
    v29 = v11 + v26;
    v49 = v25;
    while (v11 > v4 && v25 > v6)
    {
      v50 = v29;
      v31 = v28;
      v32 = v11;
      v33 = v11 - 1;
      v53 = *(v11 - 1);
      v34 = v27;
      v52 = *v27;
      v35 = v52;
      v36 = v53;
      v37 = v35;
      v38 = sub_24E2F5468(&v53, &v52);
      if (v51)
      {

        v25 = v49;
        v46 = v50 / 8;
        v44 = __src;
        if (v49 < __src || v49 >= &__src[v50 / 8])
        {
          memmove(v49, __src, 8 * v46);
          return 1;
        }

        if (v49 != __src)
        {
          v43 = 8 * v46;
          goto LABEL_41;
        }

        return 1;
      }

      v39 = v38;

      if (v39)
      {
        v5 = v31;
        v4 = __src;
        v25 = v34;
        v11 = v32;
        if (v31 + 1 != v49)
        {
          *v31 = *v34;
          v25 = v34;
        }

        goto LABEL_15;
      }

      v25 = v49;
      v27 = v34;
      if (v32 != v31 + 1)
      {
        *v31 = *v33;
      }

      v28 = v31 - 1;
      v29 = v50 - 8;
      v11 = v33;
      v4 = __src;
    }

LABEL_29:
    v40 = v11 - v4;
    if (v25 < v4 || v25 >= &v4[v40])
    {
      goto LABEL_40;
    }

LABEL_39:
    if (v25 == v4)
    {
      return 1;
    }

    goto LABEL_40;
  }

  sub_24E130EB0(a1, (a2 - a1) / 8, a4);
  v10 = a2;
  v11 = &v4[v7];
  while (1)
  {
    if (v4 >= v11 || v10 >= v5)
    {
      v25 = v6;
      goto LABEL_29;
    }

    v13 = v11;
    v14 = v5;
    v15 = v6;
    v16 = v10;
    v53 = *v10;
    v52 = *v4;
    v17 = v52;
    v18 = v53;
    v19 = v17;
    v20 = sub_24E2F5468(&v53, &v52);
    if (v51)
    {
      break;
    }

    v21 = v20;
    v51 = 0;

    if (v21)
    {
      v22 = v16;
      v10 = v16 + 1;
      v23 = v15 == v16;
    }

    else
    {
      v22 = v4;
      v23 = v15 == v4++;
      v10 = v16;
    }

    v11 = v13;
    if (!v23)
    {
      *v15 = *v22;
    }

    v6 = (v15 + 1);
    v5 = v14;
  }

  v40 = v13 - v4;
  v25 = v15;
  if (v15 >= v4 && v15 < &v4[v40])
  {
    goto LABEL_39;
  }

LABEL_40:
  v43 = 8 * v40;
  v44 = v4;
LABEL_41:
  memmove(v25, v44, v43);
  return 1;
}

void sub_24E2F9C54(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40);
  OUTLINED_FUNCTION_6_15(v3);
  OUTLINED_FUNCTION_16_49();
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = v7[1];

  sub_24E2F3B98(a1, v1 + v4, v9, v10, v8);
}

uint64_t sub_24E2F9CFC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40);
  OUTLINED_FUNCTION_4_5(v2);

  return sub_24E2F4038(a1);
}

uint64_t sub_24E2F9D8C()
{
  v0 = sub_24E343368();
  OUTLINED_FUNCTION_6_15(v0);
  OUTLINED_FUNCTION_16_49();
  v1 = OUTLINED_FUNCTION_2_34();

  return sub_24E2F5E34(v1, v2, v3, v4);
}

unint64_t sub_24E2F9E34()
{
  result = qword_27F1EAA70;
  if (!qword_27F1EAA70)
  {
    sub_24E343368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EAA70);
  }

  return result;
}

unint64_t sub_24E2F9EE0()
{
  result = qword_27F1EAAA8;
  if (!qword_27F1EAAA8)
  {
    sub_24DF88A8C(255, &qword_27F1E50D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EAAA8);
  }

  return result;
}

uint64_t objectdestroy_24Tm(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

uint64_t sub_24E2F9FB4()
{
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24DFB3184;
  v4 = OUTLINED_FUNCTION_3_66();

  return sub_24E2F1CE4(v4, v5, v6, v7, v2);
}

void sub_24E2FA074()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAAD0);
  OUTLINED_FUNCTION_4_5(v0);
  v1 = OUTLINED_FUNCTION_2_34();

  sub_24E2F352C(v1, v2, v3, v4, v5);
}

void sub_24E2FA0FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAAE0);
  OUTLINED_FUNCTION_6_15(v3);
  OUTLINED_FUNCTION_16_49();

  sub_24E2F2444(a1, v1 + v4);
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI0aB0C0aB5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_24E2FA1B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E2FA1F8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24E2FA23C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_24E2FA26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_15_47();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAB08);
  OUTLINED_FUNCTION_4_5(v9);
  v10 = *(v4 + 16);

  return sub_24E2F6C4C(v7, v6, v5, a4, v10);
}

uint64_t OUTLINED_FUNCTION_19_33()
{

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_26_23()
{

  return sub_24E347A78();
}

uint64_t sub_24E2FA45C(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_24E2FA4AC(uint64_t a1, void *a2)
{
  v5 = sub_24E347218();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
  v11 = sub_24E347AD8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v29 = OUTLINED_FUNCTION_3_131();
    v30(v29);
    sub_24E347AC8();
LABEL_16:
    (*(v7 + 8))(v10, v5);
    return v11;
  }

  v13 = Strong;
  if ([*(v2 + 24) shouldAllowGameProgressSharing])
  {
    v56 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24E36BFC0;
    v15 = type metadata accessor for SharingAchievementMessage();
    v16 = objc_allocWithZone(v15);
    *&v16[OBJC_IVAR____TtC12GameCenterUI25SharingAchievementMessage_achievement] = a2;
    v58.receiver = v16;
    v58.super_class = v15;
    v17 = a2;
    *(inited + 32) = objc_msgSendSuper2(&v58, sel_init);
    v18 = type metadata accessor for SharingAchievementURL();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR____TtC12GameCenterUI21SharingAchievementURL_achievement] = v17;
    v57.receiver = v19;
    v57.super_class = v18;
    *(inited + 40) = objc_msgSendSuper2(&v57, sel_init);
    v20 = sub_24E07A7AC(inited);
    swift_setDeallocating();
    sub_24DFD7EB0();
    v21 = objc_allocWithZone(MEMORY[0x277D546D8]);
    v22 = sub_24E2FAC44(v20, 0);
    [v22 setAllowsCustomPresentationStyle_];
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23 && (v24 = v23, v25 = [v23 traitCollection], v24, v26 = objc_msgSend(v25, sel_userInterfaceIdiom), v25, v26 == 1) && a1)
    {
      v27 = v22;
      [v27 setModalPresentationStyle_];
      v28 = [v27 popoverPresentationController];

      [v28 setSourceView_];
    }

    else
    {
      [v22 setModalPresentationStyle_];
    }

    v11 = v56;
    v48 = [v13 presentedViewController];
    if (!v48)
    {
      OUTLINED_FUNCTION_0_184();
      OUTLINED_FUNCTION_1_65(COERCE_DOUBLE(1107296256));
      v60 = v53;
      v61 = &block_descriptor_7_3;
      v54 = _Block_copy(aBlock);

      [v13 presentViewController:v22 animated:1 completion:v54];

      _Block_release(v54);
      return v11;
    }

    v49 = v48;
    [v48 presentViewController:v22 animated:1 completion:0];
    v50 = OUTLINED_FUNCTION_3_131();
    v51(v50);
    sub_24E347AC8();

    goto LABEL_16;
  }

  v31 = sub_24E347CB8();
  v32 = GKGameCenterUIFrameworkBundle();
  v33 = OUTLINED_FUNCTION_4_9();

  if (!v33)
  {
    sub_24E347CF8();
    v33 = sub_24E347CB8();
  }

  v34 = [objc_opt_self() local];
  v35 = [v34 isUnderage];

  v36 = sub_24E347CB8();
  v37 = GKGameCenterUIFrameworkBundle();
  v38 = OUTLINED_FUNCTION_4_9();

  v39 = sub_24E347CF8();
  v41 = v40;

  v42 = sub_24E347CB8();
  v43 = GKGameCenterUIFrameworkBundle();
  v44 = GKGetLocalizedStringFromTableInBundle();

  if (!v44)
  {
    sub_24E347CF8();
    v44 = sub_24E347CB8();
  }

  OUTLINED_FUNCTION_0_184();
  OUTLINED_FUNCTION_1_65(COERCE_DOUBLE(1107296256));
  v60 = v45;
  v61 = &block_descriptor_101;
  v46 = _Block_copy(aBlock);

  v47 = sub_24E2FACE0(v33, v39, v41, v44, 0, v46, v13);

  _Block_release(v46);
  return v11;
}

uint64_t sub_24E2FAA9C()
{
  v0 = sub_24E347218();
  OUTLINED_FUNCTION_0_14();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v6, *MEMORY[0x277D21CA8], v0, v4);
  sub_24E347AC8();
  return (*(v2 + 8))(v6, v0);
}

uint64_t sub_24E2FAB7C()
{
  MEMORY[0x253040FB0](v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id sub_24E2FAC44(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E347EE8();

  if (a2)
  {
    sub_24E2FAD7C();
    v5 = sub_24E347EE8();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v2 initWithActivityItems:v4 applicationActivities:v5];

  return v6;
}

id sub_24E2FACE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_24E347CB8();

  v13 = [a7 _gkPresentAlertWithTitle_message_buttonTitle_dismissHandler_presentationCompletionHandler_];

  return v13;
}

unint64_t sub_24E2FAD7C()
{
  result = qword_27F1EAB10;
  if (!qword_27F1EAB10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1EAB10);
  }

  return result;
}

void OUTLINED_FUNCTION_0_184()
{
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
  *(v2 - 128) = MEMORY[0x277D85DD0];
}

void sub_24E2FAE04(double a1, double a2)
{
  if (a2 >= a1)
  {
    if (GKScreenClassGetPortraitWidth(7) < a1)
    {
      GKScreenClassGetPortraitWidth(8);
    }
  }

  else if (GKScreenClassGetLandscapeWidth(7) < a1)
  {
    GKScreenClassGetLandscapeWidth(8);
  }
}

void NSCollectionLayoutEnvironment.pageColumnMargin.getter()
{
  [objc_msgSend(v0 container)];
  v2 = v1;
  v4 = v3;
  swift_unknownObjectRelease();
  v5 = OUTLINED_FUNCTION_51_2();
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1 && (v7 = OUTLINED_FUNCTION_51_2(), v8 = [v7 horizontalSizeClass], v7, v8 == 2))
  {
    if (v4 >= v2)
    {
      if (v2 > GKScreenClassGetPortraitWidth(7))
      {
        GKScreenClassGetPortraitWidth(8);
      }
    }

    else if (v2 > GKScreenClassGetLandscapeWidth(7))
    {
      GKScreenClassGetLandscapeWidth(8);
    }
  }

  else if (v4 >= v2)
  {
    GKScreenClassGetPortraitWidth(1);
  }

  else
  {
    GKScreenClassGetLandscapeWidth(1);
  }
}

void NSCollectionLayoutEnvironment.defaultPageMargin.getter()
{
  [objc_msgSend(v0 container)];
  v2 = v1;
  v4 = v3;
  swift_unknownObjectRelease();
  v5 = OUTLINED_FUNCTION_51_2();
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1 && (v7 = OUTLINED_FUNCTION_51_2(), v8 = [v7 horizontalSizeClass], v7, v8 == 2))
  {
    if (v4 >= v2)
    {
      if (v2 > GKScreenClassGetPortraitWidth(7))
      {
        GKScreenClassGetPortraitWidth(8);
      }
    }

    else if (v2 > GKScreenClassGetLandscapeWidth(7))
    {
      GKScreenClassGetLandscapeWidth(8);
    }
  }

  else if (v4 >= v2)
  {
    GKScreenClassGetPortraitWidth(1);
  }

  else
  {
    GKScreenClassGetLandscapeWidth(1);
  }
}

void NSCollectionLayoutEnvironment.pageColumnWidth.getter()
{
  [objc_msgSend(v0 container)];
  v2 = v1;
  v4 = v3;
  swift_unknownObjectRelease();
  v5 = [v0 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1 && (v7 = [v0 traitCollection], v8 = objc_msgSend(v7, sel_horizontalSizeClass), v7, v8 == 2))
  {
    sub_24E2FAE04(v2, v4);
    NSCollectionLayoutEnvironment.pageColumnMargin.getter();
  }

  else
  {
    NSCollectionLayoutEnvironment.pageMarginInsets.getter();
    NSCollectionLayoutEnvironment.pageMarginInsets.getter();
  }
}

void sub_24E2FB274(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v156 = a6;
  v164 = a4;
  v166 = a3;
  v174 = a2;
  v172 = a1;
  v7 = type metadata accessor for ActivityFeedRelationshipAchievement();
  v157 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v165 = (&v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAB18);
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v175 = &v135 - v12;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAB20);
  MEMORY[0x28223BE20](v170);
  v160 = &v135 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAB28);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v173 = &v135 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAB30);
  OUTLINED_FUNCTION_0_14();
  v21 = v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v135 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAB38);
  sub_24DFB4C28(&qword_27F1EAB40, &qword_27F1EAB30);
  sub_24E343B38();
  sub_24E343B48();
  v28 = *(v21 + 8);
  v138 = v21 + 8;
  v136 = v28;
  v28(v25, v19);
  v181 = v172;
  v182 = v174;
  sub_24E2FD12C();
  v137 = v27;
  v139 = v19;
  v162 = sub_24E347C68();
  v29 = *(v162 + 16);
  v159 = v10 + 16;
  v169 = (v10 + 32);
  v163 = a5;
  v148 = a5 + 4;
  v161 = v10;
  v167 = v10 + 8;
  v30 = v17;
  OUTLINED_FUNCTION_8_86();
  v142 = v31 + 32;
  v141 = v164 + 4;
  v32 = v140;
  v155 = MEMORY[0x277D84F90];
  v135 = xmmword_24E367D20;
  v168 = v29;
LABEL_2:
  OUTLINED_FUNCTION_9_71();
  v34 = v170;
  v35 = v173;
  while (1)
  {
    if (v33 == v29)
    {
      v36 = 1;
      v174 = v29;
    }

    else
    {
      if ((v33 & 0x8000000000000000) != 0)
      {
        goto LABEL_78;
      }

      if (v33 >= *(v162 + 16))
      {
        goto LABEL_79;
      }

      v37 = v33 + 1;
      OUTLINED_FUNCTION_7_79();
      v42 = v39 + v38 + *(v40 + 72) * v41;
      v43 = *(v34 + 48);
      v44 = v160;
      *v160 = v41;
      (*(v40 + 16))(&v44[v43], v42, v32);
      v45 = v44;
      v35 = v173;
      sub_24E2FD180(v45, v30, &qword_27F1EAB20);
      v36 = 0;
      v174 = v37;
    }

    __swift_storeEnumTagSinglePayload(v30, v36, 1, v34);
    sub_24E2FD180(v30, v35, &qword_27F1EAB28);
    if (__swift_getEnumTagSinglePayload(v35, 1, v34) == 1)
    {
      v136(v137, v139);

      return;
    }

    v29 = v30;
    v171 = *v35;
    (*v169)(v175, &v35[*(v34 + 48)], v32);
    v30 = v32;
    sub_24E343B68();

    v178 = v183;
    v179 = v184;
    v180 = v185;
    v176 = 58;
    v177 = 0xE100000000000000;
    sub_24E2FD1E8();
    sub_24DF90C4C();
    v46 = sub_24E3486D8();

    if (v46[2] < 2uLL)
    {
      break;
    }

    v47 = v46[6];
    v48 = v46[7];

    v49 = sub_24E00EFC0(v47, v48);
    if (v50)
    {
      v51 = 0;
    }

    else
    {
      v51 = v49;
    }

    if (!v46[2])
    {
LABEL_47:

      v32 = v30;
      goto LABEL_50;
    }

    v52 = v46[4];
    v53 = v46[5];
    v54 = v52 == 0x73726579616C70 && v53 == 0xE700000000000000;
    if (v54 || (OUTLINED_FUNCTION_2_127() & 1) != 0)
    {
      if ((v51 & 0x8000000000000000) != 0)
      {
        goto LABEL_85;
      }

      OUTLINED_FUNCTION_8_86();
      if (v51 >= *(v100 + 16))
      {
        goto LABEL_86;
      }

      v101 = (v142 + 56 * v51);
      v102 = v101[1];
      v154 = *v101;
      v32 = v101[3];
      v75 = v101[5];
      v103 = v101[6];
      v158 = v102;

      v107 = v103;
      v104 = [v107 displayNameWithOptions_];
      v105 = sub_24E347CF8();
      v172 = v106;

      LODWORD(v152) = 0;
      LOBYTE(v107) = 0;
      v151 = 0;
      LOBYTE(v108) = 0;
      v153 = 0;
LABEL_61:
      OUTLINED_FUNCTION_6_100();
LABEL_62:
      v112 = sub_24E343B58();
      v149 = v113;
      v54 = v46[2] == 3;
      v150 = v112;
      if (v54)
      {

        if (v46[2] < 3uLL)
        {
          goto LABEL_84;
        }

        v105 = v46[8];
        v172 = v46[9];
      }

      v114 = v105;

      v115 = v107;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E076740();
        v155 = v133;
      }

      v27 = *(v155 + 16);
      v116 = v143;
      if (v27 >= *(v155 + 24) >> 1)
      {
        sub_24E076740();
        v155 = v134;
        v116 = v143;
      }

      v117 = v153 | v108;
      v118 = v151 | v115;
      v119 = v155;
      *(v155 + 16) = v27 + 1;
      v120 = v119 + (v27 << 7);
      *(v120 + 32) = v150;
      *(v120 + 40) = v149;
      *(v120 + 48) = v114;
      *(v120 + 56) = v172;
      *(v120 + 64) = v154;
      *(v120 + 72) = v158;
      *(v120 + 80) = v117;
      *(v120 + 88) = v144;
      *(v120 + 96) = v75;
      v121 = v146;
      *(v120 + 104) = v147;
      *(v120 + 112) = v121;
      *(v120 + 120) = v145;
      *(v120 + 128) = v118;
      *(v120 + 136) = v116;
      *(v120 + 144) = v152;
      LODWORD(v121) = v181;
      *(v120 + 148) = *(&v181 + 3);
      *(v120 + 145) = v121;
      *(v120 + 152) = v171;
      v122 = OUTLINED_FUNCTION_3_132();
      v123(v122);
      goto LABEL_2;
    }

    v55 = v52 == 0x73656D6167 && v53 == 0xE500000000000000;
    if (v55 || (OUTLINED_FUNCTION_2_127() & 1) != 0)
    {
      if ((v51 & 0x8000000000000000) != 0)
      {
        goto LABEL_87;
      }

      if (v51 >= v164[2])
      {
        goto LABEL_88;
      }

      v109 = &v141[9 * v51];
      v108 = *v109;
      v32 = v109[1];
      v105 = v109[2];
      v110 = v109[3];
      v111 = v109[7];
      v154 = v109[6];
      v153 = v108 & 0xFFFFFFFFFFFFFF00;
      v172 = v110;

      v158 = v111;

      v144 = v32;

      v75 = 0;
      v147 = 0;
      v146 = 0;
      v145 = 0;
      LOBYTE(v107) = 0;
      v151 = 0;
      LODWORD(v152) = 3;
      goto LABEL_61;
    }

    v56 = v52 == 0x6D65766569686361 && v53 == 0xEC00000073746E65;
    if (v56 || (OUTLINED_FUNCTION_2_127() & 1) != 0)
    {
      if ((v51 & 0x8000000000000000) != 0)
      {
        goto LABEL_80;
      }

      if (v51 >= *(v27 + 16))
      {
        goto LABEL_81;
      }

      OUTLINED_FUNCTION_7_79();
      v59 = v27 + v57 + *(v58 + 72) * v51;
      v60 = v165;
      sub_24DF911B8(v59, v165);
      v61 = *(v60 + 16);
      v172 = *(v60 + 24);

      v62 = v166;
      v63 = v164;
      sub_24E150D04(v166, v164);
      if (v64)
      {
        v65 = v64;
        v153 = v61;
        v66 = [v64 adamID];

        v67 = [v66 stringValue];
        v68 = sub_24E347CF8();
        v70 = v69;

        sub_24E150D04(v62, v63);
        if (v71)
        {
          v72 = v71;
          v158 = v68;
          v27 = [v71 bundleIdentifier];

          v73 = sub_24E347CF8();
          v75 = v74;

          if (v62[2])
          {
            v144 = v73;
            v124 = v166[5];
            v147 = v166[4];
            v107 = v166[7];
            v145 = v166[6];
            v54 = v46[2] == 3;
            v32 = v165;
            LOBYTE(v108) = v70;
            v146 = v124;
            if (v54)
            {

              v125 = OUTLINED_FUNCTION_1_149();
              v154 = sub_24E151234(v125, v126, v127, v156);
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCD8);
              v128 = swift_allocObject();
              *(v128 + 16) = v135;
              v129 = v32[1];
              *(v128 + 32) = *v32;
              *(v128 + 40) = v129;
              v154 = v128;
            }

            v105 = v153;
            sub_24DF9121C(v32);
            OUTLINED_FUNCTION_0_185();
            LODWORD(v152) = 2;
            goto LABEL_61;
          }

          v32 = v30;
          sub_24DF9121C(v165);

          OUTLINED_FUNCTION_9_71();
          goto LABEL_50;
        }

        sub_24DF9121C(v165);
      }

      else
      {
        sub_24DF9121C(v60);
      }

      v32 = v30;

LABEL_50:
      v34 = v170;
      v30 = v29;
      v35 = v173;
      v29 = v168;
      goto LABEL_51;
    }

    v76 = v52 == 0x6F6272656461656CLL && v53 == 0xEC00000073647261;
    if (!v76 && (OUTLINED_FUNCTION_2_127() & 1) == 0)
    {
      goto LABEL_47;
    }

    if ((v51 & 0x8000000000000000) != 0)
    {
      goto LABEL_82;
    }

    v32 = v163;
    if (v51 >= v163[2])
    {
      goto LABEL_83;
    }

    v77 = &v148[9 * v51];
    v78 = v77[1];
    v154 = *v77;
    v79 = v77[3];
    v150 = v77[2];
    v80 = v77[5];
    v82 = v77[7];
    v81 = v77[8];
    v172 = v79;
    swift_bridgeObjectRetain_n();
    v158 = v78;
    v83 = v166;

    v153 = v80;

    v84 = v81;
    sub_24E150D04(v83, v164);
    OUTLINED_FUNCTION_6_100();
    if (v85)
    {
      v86 = v85;
      v87 = [v85 adamID];

      v27 = [v87 stringValue];
      v75 = sub_24E347CF8();
      v89 = v88;

      OUTLINED_FUNCTION_9_71();
      v90 = OUTLINED_FUNCTION_1_149();
      sub_24E150D04(v90, v91);
      if (v92)
      {
        v93 = v92;
        v152 = v82;
        v27 = [v92 bundleIdentifier];

        v94 = sub_24E347CF8();
        v96 = v95;

        OUTLINED_FUNCTION_8_86();
        if (*(v97 + 16))
        {
          v145 = v96;
          v146 = v94;
          v147 = v89;
          OUTLINED_FUNCTION_8_86();
          v107 = *(v130 + 32);
          v131 = *(v130 + 40);
          v132 = v172;

          v143 = v131;

          v108 = v150;
          OUTLINED_FUNCTION_0_185();
          LODWORD(v152) = 1;
          v144 = v132;
          v105 = v108;
          goto LABEL_62;
        }

        swift_bridgeObjectRelease_n();

        OUTLINED_FUNCTION_9_71();
        goto LABEL_54;
      }
    }

    swift_bridgeObjectRelease_n();

LABEL_54:
    v34 = v170;
    v35 = v173;
LABEL_51:
    v98 = OUTLINED_FUNCTION_3_132();
    v99(v98);
    v33 = v174;
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
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
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

uint64_t sub_24E2FC264(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 17) | ((*(a1 + 21) | (*(a1 + 23) << 16)) << 32);
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 65) | ((*(a1 + 69) | (*(a1 + 71) << 16)) << 32);
  v11 = a1[9];
  switch(*(a1 + 80))
  {
    case 1:
      if (*(a2 + 80) != 1)
      {
        goto LABEL_91;
      }

      v63 = a1[6];
      v66 = a1[7];
      v34 = *(a2 + 16);
      v33 = *(a2 + 24);
      OUTLINED_FUNCTION_10_67();
      v50 = *(v36 + 64);
      v52 = v37;
      v48 = *(v36 + 72);
      v40 = v38 == v39 && v4 == v35;
      if (!v40 && (sub_24E348C08() & 1) == 0)
      {
        goto LABEL_91;
      }

      v41 = (v5 | (v6 << 8)) == v34 && v8 == v33;
      if (!v41 && (sub_24E348C08() & 1) == 0)
      {
        goto LABEL_91;
      }

      v42 = v7 == v57 && v9 == v55;
      if (!v42 && (sub_24E348C08() & 1) == 0)
      {
        goto LABEL_91;
      }

      v43 = v63 == v53 && v66 == v52;
      if (!v43 && (sub_24E348C08() & 1) == 0)
      {
        goto LABEL_91;
      }

      if ((v59 | (v10 << 8)) == v50 && v11 == v48)
      {
        goto LABEL_80;
      }

      goto LABEL_77;
    case 2:
      if (*(a2 + 80) != 2)
      {
        goto LABEL_91;
      }

      v61 = a1[6];
      v64 = a1[7];
      v16 = *(a2 + 16);
      v17 = *(a2 + 24);
      OUTLINED_FUNCTION_10_67();
      v49 = v18[8];
      v51 = v19;
      v20 = v18[1];
      if ((sub_24E12D524(v21, *v18) & 1) == 0)
      {
        goto LABEL_91;
      }

      v22 = v4 == v20 && (v5 | (v6 << 8)) == v16;
      if (!v22 && (sub_24E348C08() & 1) == 0)
      {
        goto LABEL_91;
      }

      v23 = v8 == v17 && v7 == v57;
      if (!v23 && (sub_24E348C08() & 1) == 0)
      {
        goto LABEL_91;
      }

      v24 = v9 == v55 && v61 == v53;
      if (!v24 && (sub_24E348C08() & 1) == 0)
      {
        goto LABEL_91;
      }

      if (v64 == v51 && (v59 | (v10 << 8)) == v49)
      {
LABEL_80:
        v15 = 1;
        return v15 & 1;
      }

LABEL_77:

      return sub_24E348C08();
    case 3:
      if (*(a2 + 80) != 3)
      {
        goto LABEL_91;
      }

      v62 = a1[6];
      v65 = a1[7];
      v27 = *(a2 + 16);
      v26 = *(a2 + 24);
      v29 = *(a2 + 32);
      v28 = *(a2 + 40);
      v54 = *(a2 + 48);
      v58 = *(a2 + 56);
      v60 = *(a1 + 64);
      v56 = *(a2 + 64);
      v30 = v3 == *a2 && v4 == *(a2 + 8);
      if (!v30 && (sub_24E348C08() & 1) == 0)
      {
        goto LABEL_91;
      }

      v31 = (v5 | (v6 << 8)) == v27 && v8 == v26;
      if (!v31 && (sub_24E348C08() & 1) == 0)
      {
        goto LABEL_91;
      }

      if (v9)
      {
        if (!v28)
        {
          goto LABEL_91;
        }

        v32 = v7 == v29 && v9 == v28;
        if (!v32 && (sub_24E348C08() & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      else if (v28)
      {
        goto LABEL_91;
      }

      if (!v65)
      {
        v46 = v60;
        if (!v58)
        {
          goto LABEL_89;
        }

LABEL_91:
        v15 = 0;
        return v15 & 1;
      }

      v46 = v60;
      if (!v58)
      {
        goto LABEL_91;
      }

      v47 = v62 == v54 && v65 == v58;
      if (!v47 && (sub_24E348C08() & 1) == 0)
      {
        goto LABEL_91;
      }

LABEL_89:
      v14 = v46 ^ v56;
LABEL_9:
      v15 = v14 ^ 1;
      return v15 & 1;
    default:
      if (*(a2 + 80))
      {
        goto LABEL_91;
      }

      v12 = *(a2 + 16);
      v13 = v3 == *a2 && v4 == *(a2 + 8);
      if (!v13 && (sub_24E348C08() & 1) == 0)
      {
        goto LABEL_91;
      }

      v14 = v5 ^ v12;
      goto LABEL_9;
  }
}

uint64_t sub_24E2FC614@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAB58);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v40 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAB30);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v45 = sub_24E343AF8();
  v10 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAB60);
  v46 = *(v44 - 8);
  v13 = MEMORY[0x28223BE20](v44);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v33 = &v30 - v16;
  v49 = 31524;
  v50 = 0xE200000000000000;
  v35 = sub_24E2FD23C();
  MEMORY[0x25303A110](v51, &v49, MEMORY[0x277D837D0], v35);
  sub_24E3435E8();
  sub_24E2FCB48(v6);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAB38);
  sub_24DFB4C28(&qword_27F1EAB70, &qword_27F1EAB58);
  v31 = v9;
  v32 = v1;
  sub_24E343AE8();
  v38 = *(v2 + 8);
  v39 = v2 + 8;
  v38(v6, v1);
  v18 = *(v10 + 8);
  v36 = v10 + 8;
  v37 = v18;
  v18(v12, v45);
  MEMORY[0x25303A160](v9, v17);
  v19 = sub_24DFB4C28(&qword_27F1EAB78, &qword_27F1EAB60);
  v20 = v33;
  v21 = v44;
  MEMORY[0x25303A110](v15, v44, v19);
  v22 = *(v46 + 8);
  v46 += 8;
  v34 = v22;
  v22(v15, v21);
  v47 = 125;
  v48 = 0xE100000000000000;
  MEMORY[0x25303A110](&v49, &v47, MEMORY[0x277D837D0], v35);
  v47 = v51[0];
  v48 = v51[1];
  sub_24E3435C8();

  sub_24E3435E8();
  v23 = v40;
  v24 = v32;
  sub_24E343AD8();
  v25 = v31;
  v26 = v20;
  v27 = v44;
  sub_24E343AB8();
  v28 = v38;
  v38(v23, v24);
  v37(v12, v45);
  sub_24E2FCEE4(v25, v49, v50, v43);

  (*(v41 + 8))(v25, v42);
  v28(v6, v24);
  return v34(v26, v27);
}

uint64_t sub_24E2FCB48@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAB58);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_24E343AF8();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAB80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_24E3435F8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAB88);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  sub_24E343B08();
  sub_24E343B18();
  v21 = sub_24E343B28();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v21);
  sub_24E3435E8();
  sub_24E2FD290();
  sub_24E343AC8();
  (*(v26 + 8))(v6, v27);
  sub_24E2FD2E8(v9);
  (*(v11 + 8))(v13, v10);
  MEMORY[0x25303A130](v3, MEMORY[0x277D83E40]);
  v22 = sub_24DFB4C28(&qword_27F1EAB98, &qword_27F1EAB88);
  MEMORY[0x25303A110](v18, v14, v22);
  v23 = *(v15 + 8);
  v23(v18, v14);
  sub_24E3435C8();
  return (v23)(v20, v14);
}

uint64_t sub_24E2FCEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = a4;
  v17 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAB58);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  v15 = sub_24E343AF8();
  v10 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E3435E8();
  v18 = a2;
  v19 = a3;
  sub_24E2FD23C();
  sub_24E343AD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAB38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAB30);
  sub_24DFB4C28(&qword_27F1EAB40, &qword_27F1EAB30);
  sub_24DFB4C28(&qword_27F1EAB70, &qword_27F1EAB58);
  sub_24E343AB8();
  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v15);
}

unint64_t sub_24E2FD12C()
{
  result = qword_27F1EAB48;
  if (!qword_27F1EAB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EAB48);
  }

  return result;
}

uint64_t sub_24E2FD180(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E2FD1E8()
{
  result = qword_27F1EAB50;
  if (!qword_27F1EAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EAB50);
  }

  return result;
}

unint64_t sub_24E2FD23C()
{
  result = qword_27F1EAB68;
  if (!qword_27F1EAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EAB68);
  }

  return result;
}

unint64_t sub_24E2FD290()
{
  result = qword_27F1EAB90;
  if (!qword_27F1EAB90)
  {
    sub_24E3435F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EAB90);
  }

  return result;
}

uint64_t sub_24E2FD2E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E2FD37C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 81))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 80);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E2FD3BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_127()
{

  return sub_24E348C08();
}

double sub_24E2FD4EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_24E2FE8BC(a1, a2, a5, v8);
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_24E3440E8();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

id sub_24E2FD580()
{
  v0 = sub_24E344158();
  __swift_allocate_value_buffer(v0, qword_27F1EABA0);
  v1 = __swift_project_value_buffer(v0, qword_27F1EABA0);
  v4 = *MEMORY[0x277D769D0];
  v2 = *MEMORY[0x277D74420];
  *v1 = *MEMORY[0x277D769D0];
  v1[1] = v2;
  (*(*(v0 - 8) + 104))();

  return v4;
}

uint64_t sub_24E2FD63C()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24E3444F8();
  __swift_allocate_value_buffer(v4, qword_27F1EABB8);
  __swift_project_value_buffer(v4, qword_27F1EABB8);
  if (qword_27F1DDD50 != -1)
  {
    swift_once();
  }

  v5 = sub_24E344158();
  v6 = __swift_project_value_buffer(v5, qword_27F1EABA0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  v10[3] = v0;
  v10[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

char *sub_24E2FD810(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = OBJC_IVAR____TtC12GameCenterUI29ContinuePlayingEmptyStateView_titleLabel;
  if (qword_27F1DDD50 != -1)
  {
    OUTLINED_FUNCTION_2_128();
    swift_once();
  }

  v15 = sub_24E344158();
  v16 = __swift_project_value_buffer(v15, qword_27F1EABA0);
  (*(*(v15 - 8) + 16))(v13, v16, v15);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  v17 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v14] = OUTLINED_FUNCTION_1_150();
  v18 = &v5[OBJC_IVAR____TtC12GameCenterUI29ContinuePlayingEmptyStateView_buttonHandler];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v5[OBJC_IVAR____TtC12GameCenterUI29ContinuePlayingEmptyStateView_button] = sub_24E2FDAD8(0, 0);
  v34.receiver = v5;
  v34.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v34, sel_initWithFrame_, a1, a2, a3, a4);
  v20 = OBJC_IVAR____TtC12GameCenterUI29ContinuePlayingEmptyStateView_titleLabel;
  v21 = *&v19[OBJC_IVAR____TtC12GameCenterUI29ContinuePlayingEmptyStateView_titleLabel];
  v22 = v19;
  [v22 addSubview_];
  v23 = *&v19[v20];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 secondaryLabelColor];
  [v25 setTextColor_];

  v27 = OBJC_IVAR____TtC12GameCenterUI29ContinuePlayingEmptyStateView_button;
  v28 = *&v22[OBJC_IVAR____TtC12GameCenterUI29ContinuePlayingEmptyStateView_button];
  v29 = objc_allocWithZone(MEMORY[0x277D75348]);
  v30 = v28;
  v31 = [v29 initWithWhite:1.0 alpha:0.1];
  [v30 setBackgroundColor_];

  v32 = *&v22[v27];
  [v32 addTarget:v22 action:sel_didTapButton_ forControlEvents:64];

  [v22 addSubview_];
  return v22;
}

id sub_24E2FDAD8(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  if (qword_27F1DDD50 != -1)
  {
    swift_once();
  }

  v6 = sub_24E344158();
  v7 = __swift_project_value_buffer(v6, qword_27F1EABA0);
  (*(*(v6 - 8) + 16))(v5, v7, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v8 = objc_allocWithZone(type metadata accessor for RoundedButton());
  v9 = sub_24E2C2254(v5);
  if (a2)
  {
    a2 = sub_24E347CB8();
  }

  [v9 setTitle_];

  return v9;
}

void sub_24E2FDC58()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC12GameCenterUI29ContinuePlayingEmptyStateView_titleLabel;
  if (qword_27F1DDD50 != -1)
  {
    OUTLINED_FUNCTION_2_128();
    swift_once();
  }

  v6 = sub_24E344158();
  v7 = __swift_project_value_buffer(v6, qword_27F1EABA0);
  (*(*(v6 - 8) + 16))(v4, v7, v6);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
  v8 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v5) = OUTLINED_FUNCTION_1_150();
  v9 = (v1 + OBJC_IVAR____TtC12GameCenterUI29ContinuePlayingEmptyStateView_buttonHandler);
  *v9 = 0;
  v9[1] = 0;
  sub_24E348AE8();
  __break(1u);
}

uint64_t sub_24E2FDDE0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = v1;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_layoutSubviews, v7);
  v10 = [v1 traitCollection];
  v11 = sub_24E3483C8();

  sub_24E0AEE20(v11 & 1);
  sub_24E2FE068(v1, v13);
  __swift_project_boxed_opaque_existential_1(v13, v14);
  OUTLINED_FUNCTION_5_111();
  OUTLINED_FUNCTION_4_113();
  sub_24E3440E8();
  OUTLINED_FUNCTION_5_111();
  OUTLINED_FUNCTION_4_113();
  OUTLINED_FUNCTION_0_33();
  CGRectGetMinX(v16);
  OUTLINED_FUNCTION_5_111();
  OUTLINED_FUNCTION_4_113();
  OUTLINED_FUNCTION_0_33();
  CGRectGetMidY(v17);
  OUTLINED_FUNCTION_5_111();
  OUTLINED_FUNCTION_4_113();
  OUTLINED_FUNCTION_0_33();
  CGRectGetWidth(v18);
  __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_24E344978();
  (*(v5 + 8))(v9, v3);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_24E2FE068@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC12GameCenterUI29ContinuePlayingEmptyStateView_titleLabel);
  v11[3] = type metadata accessor for DynamicTypeLabel();
  v11[4] = MEMORY[0x277D22A68];
  v11[0] = v5;
  v6 = *(v2 + OBJC_IVAR____TtC12GameCenterUI29ContinuePlayingEmptyStateView_button);
  v10[3] = type metadata accessor for RoundedButton();
  v10[4] = MEMORY[0x277D22A58];
  v10[0] = v6;
  v7 = v5;
  v8 = v6;
  sub_24E2FE170(v11, v10, a1, a2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_24E2FE170@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v70 = a2;
  v71 = a4;
  v74 = sub_24E344648();
  v64 = *(v74 - 8);
  v75 = v64;
  MEMORY[0x28223BE20](v74);
  v65 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_24E3445E8();
  v7 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24E344658();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v14;
  v15 = [a3 traitCollection];
  v16 = sub_24E3483C8();

  v68 = v11;
  v17 = *(v11 + 104);
  v18 = MEMORY[0x277D227F0];
  if ((v16 & 1) == 0)
  {
    v18 = MEMORY[0x277D227E8];
  }

  v19 = *v18;
  v69 = v10;
  v17(v14, v19, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D10);
  v20 = *(sub_24E344688() - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v66 = *(v20 + 72);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24E36A270;
  v67 = v22;
  v72 = v22 + v21;
  v23 = a1[3];
  v24 = a1[4];
  v25 = __swift_project_boxed_opaque_existential_1(a1, v23);
  v83 = v23;
  v84 = *(v24 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
  (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, v25, v23);
  *(&v80 + 1) = MEMORY[0x277D839F8];
  v81 = MEMORY[0x277D22A30];
  *&v79 = 0;
  v78 = 0;
  memset(v77, 0, sizeof(v77));
  v27 = *(v7 + 104);
  v28 = v9;
  v63 = *MEMORY[0x277D227D0];
  v29 = v61;
  v62 = v27;
  v27(v9);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
  v60 = *(v64 + 72);
  v64 = v30;
  v31 = swift_allocObject();
  v58 = xmmword_24E367D20;
  *(v31 + 16) = xmmword_24E367D20;
  sub_24E344618();
  v76 = v31;
  v32 = sub_24DF8A8A4();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
  v34 = sub_24DF8A8FC();
  v35 = v65;
  v57 = v33;
  v56 = v34;
  v36 = v74;
  v59 = v32;
  sub_24E3487E8();
  v37 = v28;
  v38 = v35;
  sub_24E344678();
  v39 = *(v75 + 8);
  v40 = v37;
  v75 += 8;
  v55 = v39;
  v39(v35, v36);
  v41 = v29;
  v42 = *(v7 + 8);
  v42(v37, v29);
  sub_24DF8C95C(v77, &qword_27F1DEE48);
  __swift_destroy_boxed_opaque_existential_1(&v79);
  __swift_destroy_boxed_opaque_existential_1(v82);
  if (qword_27F1DDD58 != -1)
  {
    swift_once();
  }

  v43 = sub_24E3444F8();
  v44 = __swift_project_value_buffer(v43, qword_27F1EABB8);
  v83 = v43;
  v84 = MEMORY[0x277D22798];
  v45 = __swift_allocate_boxed_opaque_existential_1(v82);
  (*(*(v43 - 8) + 16))(v45, v44, v43);
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  v62(v40, v63, v41);
  v46 = v40;
  v47 = swift_allocObject();
  *(v47 + 16) = v58;
  sub_24E344618();
  *&v77[0] = v47;
  v48 = v74;
  sub_24E3487E8();
  v49 = v73;
  sub_24E344678();
  v55(v38, v48);
  v42(v46, v41);
  sub_24DF8C95C(&v79, &qword_27F1DEE48);
  __swift_destroy_boxed_opaque_existential_1(v82);
  v50 = sub_24E3446A8();
  v51 = MEMORY[0x277D22808];
  v52 = v71;
  v71[3] = v50;
  v52[4] = v51;
  v52[5] = MEMORY[0x277D22810];
  __swift_allocate_boxed_opaque_existential_1(v52);
  sub_24E344668();
  return (*(v68 + 8))(v49, v69);
}

uint64_t sub_24E2FE8BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X4>, uint64_t *a4@<X8>)
{

  v8 = sub_24E2FDAD8(a1, a2);
  sub_24E0885EC();
  if (qword_27F1DDD50 != -1)
  {
    swift_once();
  }

  v9 = sub_24E344158();
  v10 = __swift_project_value_buffer(v9, qword_27F1EABA0);
  v11 = [a3 traitCollection];
  MEMORY[0x25303F0C0](v10, v11);

  sub_24E344398();
  sub_24E3443A8();
  v12 = sub_24E344868();
  swift_allocObject();
  v13 = sub_24E344858();
  v17[3] = v12;
  v17[4] = MEMORY[0x277D228F0];
  v17[0] = v13;
  v16[3] = type metadata accessor for RoundedButton();
  v16[4] = MEMORY[0x277D22A58];
  v16[0] = v8;
  v14 = v8;
  sub_24E2FE170(v17, v16, a3, a4);

  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_24E2FEA5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  OUTLINED_FUNCTION_0_14();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_24DF8C95C(v8, &unk_27F1EAC90);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
    (*(v2 + 104))(v5, *MEMORY[0x277D21E18], v0);
    sub_24E3473B8();

    (*(v2 + 8))(v5, v0);
    return (*(v11 + 8))(v14, v9);
  }

  return result;
}

double sub_24E2FECB8(void *a1)
{
  sub_24E2FE068(a1, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_24E3440D8();
  v2 = v1;
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

void sub_24E2FEDE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI29ContinuePlayingEmptyStateView_buttonHandler);
  if (v1)
  {

    v1(v2);

    sub_24DE73FA0(v1);
  }
}

char *OUTLINED_FUNCTION_1_150()
{

  return sub_24E0AEF24(v0, 0, 0, 0, 1, 0);
}

id OUTLINED_FUNCTION_4_113()
{

  return [v0 (v1 + 3448)];
}

id OUTLINED_FUNCTION_5_111()
{

  return [v0 (v1 + 3832)];
}

uint64_t type metadata accessor for ScrollToTopAction()
{
  result = qword_27F1EABE8;
  if (!qword_27F1EABE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_24E2FF050(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RemoveFriendActionImplementation();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t sub_24E2FF0C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveFriendAction();
  v5 = OUTLINED_FUNCTION_6_15(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
  v11 = sub_24E347AD8();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_24DFC85F8(a1, v10);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  sub_24E3008A8(v10, v16 + v13);
  *(v16 + v14) = v12;
  *(v16 + v15) = v11;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  swift_retain_n();

  sub_24E2FFD84(sub_24E300888, v11, sub_24E30090C, v16);

  return v11;
}

void sub_24E2FF290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v39 = a2;
  v5 = type metadata accessor for RemoveFriendAction();
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = v6;
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24E347358();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
  sub_24E347018();
  *(swift_allocObject() + 16) = xmmword_24E369E30;
  v9 = MEMORY[0x277D837D0];
  v49 = MEMORY[0x277D837D0];
  aBlock = 0xD000000000000010;
  v47 = 0x800000024E3B28E0;
  sub_24E346FE8();
  sub_24DFA9298(&aBlock, &qword_27F1E0370);
  v42 = a1;
  v10 = *(a1 + 8);
  v11 = [v10 alias];
  if (v11)
  {
    v12 = v11;
    v13 = sub_24E347CF8();
    v15 = v14;

    v16 = MEMORY[0x277D837D0];
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v48 = 0;
  }

  aBlock = v13;
  v47 = v15;
  v49 = v16;
  sub_24E347008();
  sub_24DFA9298(&aBlock, &qword_27F1E0370);
  v49 = v9;
  aBlock = 45;
  v47 = 0xE100000000000000;
  sub_24E346FE8();
  sub_24DFA9298(&aBlock, &qword_27F1E0370);
  v17 = [v10 playerID];
  v18 = sub_24E347CF8();
  v20 = v19;

  v49 = v9;
  aBlock = v18;
  v47 = v20;
  sub_24E347008();
  sub_24DFA9298(&aBlock, &qword_27F1E0370);
  v22 = v36;
  v21 = v37;
  v23 = v38;
  (*(v37 + 104))(v36, *MEMORY[0x277D21DD8], v38);
  sub_24E0EF428();

  (*(v21 + 8))(v22, v23);
  v24 = v42;
  v25 = *v42;
  v26 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
  v27 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v29 = v43;
  sub_24DFC85F8(v24, v43);
  v30 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v31 = (v40 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_24E3008A8(v29, v33 + v30);
  *(v33 + v31) = v27;
  v34 = v45;
  *(v33 + v32) = v44;
  *(v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = v34;
  v50 = sub_24E300AB0;
  v51 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_24E052CF0;
  v49 = &block_descriptor_20_3;
  v35 = _Block_copy(&aBlock);

  [v25 removeFriend:v26 block:v35];
  _Block_release(v35);
}

void sub_24E2FF79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = sub_24E347358();
  v8 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24E347218();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v40 = a1;
    v44 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
    sub_24E347018();
    *(swift_allocObject() + 16) = xmmword_24E369E30;
    v51 = MEMORY[0x277D837D0];
    v48 = 0xD000000000000018;
    v49 = 0x800000024E3B2900;
    sub_24E346FE8();
    sub_24DFA9298(&v48, &qword_27F1E0370);
    v41 = a2;
    v16 = *(a2 + 8);
    v17 = [v16 alias];
    v42 = a4;
    v43 = v8;
    if (v17)
    {
      v18 = v17;
      v19 = sub_24E347CF8();
      v21 = v20;

      v22 = MEMORY[0x277D837D0];
    }

    else
    {
      v19 = 0;
      v21 = 0;
      v22 = 0;
      v50 = 0;
    }

    v48 = v19;
    v49 = v21;
    v51 = v22;
    sub_24E347008();
    sub_24DFA9298(&v48, &qword_27F1E0370);
    v25 = MEMORY[0x277D837D0];
    v51 = MEMORY[0x277D837D0];
    v48 = 45;
    v49 = 0xE100000000000000;
    sub_24E346FE8();
    sub_24DFA9298(&v48, &qword_27F1E0370);
    v26 = [v16 playerID];
    v27 = sub_24E347CF8();
    v29 = v28;

    v51 = v25;
    v48 = v27;
    v49 = v29;
    sub_24E347008();
    sub_24DFA9298(&v48, &qword_27F1E0370);
    v30 = v43;
    v31 = v45;
    (*(v43 + 104))(v10, *MEMORY[0x277D21DE8], v45);
    sub_24E0EF428();

    (*(v30 + 8))(v10, v31);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v33 = Strong;
      v34 = v42;

      sub_24E3000F8(v41, v40, sub_24E300B44, v34);
    }
  }

  else
  {
    (*(v12 + 104))(v15, *MEMORY[0x277D21CA8], v11, v13);
    sub_24E347AC8();
    (*(v12 + 8))(v15, v11);
    if (*(a2 + 16) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EACB0);
      sub_24E347328();
      if (v47)
      {
        sub_24DE56CE8(&v46, &v48);
        v23 = v51;
        v24 = v52;
        __swift_project_boxed_opaque_existential_1(&v48, v51);

        __swift_destroy_boxed_opaque_existential_1(&v48);
      }

      else
      {
        sub_24DFA9298(&v46, &qword_27F1E1B70);
        swift_beginAccess();
        v35 = swift_unknownObjectWeakLoadStrong();
        if (v35)
        {
          v36 = v35;
          v37 = swift_unknownObjectWeakLoadStrong();

          if (v37)
          {
            v38 = [v37 navigationController];

            if (v38)
            {
              v39 = [v38 popViewControllerAnimated_];
            }
          }
        }
      }
    }
  }
}

void sub_24E2FFD1C(uint64_t a1, char a2)
{
  sub_24E300B64();
  v3 = swift_allocError();
  *v4 = a2;
  sub_24E347AB8();
}

void sub_24E2FFD84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_24DF88A8C(0, &qword_27F1DFB28);
    v10 = sub_24E347CB8();
    v11 = GKGameCenterUIFrameworkBundle();
    v12 = GKGetLocalizedStringFromTableInBundle();

    v13 = sub_24E347CF8();
    v15 = v14;

    v16 = OUTLINED_FUNCTION_5_112();
    v17 = GKGameCenterUIFrameworkBundle();
    v38 = a3;
    v18 = GKGetLocalizedStringFromTableInBundle();

    v19 = sub_24E347CF8();
    v21 = v20;

    v22 = sub_24E3191B4(v13, v15, v19, v21, 1);
    sub_24DF88A8C(0, &qword_27F1E2900);
    v23 = sub_24E347CB8();
    v24 = GKGameCenterUIFrameworkBundle();
    v25 = GKGetLocalizedStringFromTableInBundle();

    v26 = sub_24E347CF8();
    v28 = v27;

    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    *(v29 + 24) = a2;

    v30 = sub_24E3190AC(v26, v28, 0, sub_24E300CF4, v29);
    v31 = OUTLINED_FUNCTION_5_112();
    v32 = GKGameCenterUIFrameworkBundle();
    v33 = GKGetLocalizedStringFromTableInBundle();

    v34 = sub_24E347CF8();
    v36 = v35;

    v37 = swift_allocObject();
    *(v37 + 16) = v38;
    *(v37 + 24) = a4;

    v39 = sub_24E3190AC(v34, v36, 2, sub_24DFA92FC, v37);
    [v22 addAction_];
    [v22 addAction_];
    [v9 presentViewController:v22 animated:1 completion:0];
  }
}

void sub_24E3000F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v57 = a1;
  v58 = a3;
  sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v54 = v6;
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24E347358();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
  v15 = sub_24E347018();
  OUTLINED_FUNCTION_6_15(v15);
  *(swift_allocObject() + 16) = xmmword_24E36A270;
  sub_24E346FB8();
  if (a2)
  {
    swift_getErrorValue();
    v17 = v59;
    v16 = v60;
    *(&v62 + 1) = v60;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v17, v16);
  }

  else
  {
    aBlock = 0u;
    v62 = 0u;
  }

  sub_24E346FE8();
  sub_24DFA9298(&aBlock, &qword_27F1E0370);
  (*(v11 + 104))(v14, *MEMORY[0x277D21DE8], v9);
  sub_24E0EF428();

  (*(v11 + 8))(v14, v9);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = sub_24E347CB8();
    v22 = GKGameCenterUIFrameworkBundle();
    v23 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_24E367D20;
    v25 = [*(v57 + 8) alias];
    if (v25)
    {
      v26 = v25;
      v27 = sub_24E347CF8();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = sub_24DF95A7C();
    if (v29)
    {
      v33 = v27;
    }

    else
    {
      v33 = 0;
    }

    v34 = 0xE000000000000000;
    if (v29)
    {
      v34 = v29;
    }

    *(v24 + 32) = v33;
    *(v24 + 40) = v34;
    v35 = sub_24E347D18();
    v37 = v36;

    sub_24DF88A8C(0, &qword_27F1DFB28);
    v38 = sub_24E347CB8();
    v39 = GKGameCenterUIFrameworkBundle();
    v40 = OUTLINED_FUNCTION_1_113();

    v41 = sub_24E347CF8();
    v43 = v42;

    v44 = sub_24E3191B4(v41, v43, v35, v37, 1);
    sub_24DF88A8C(0, &qword_27F1E2900);
    v45 = sub_24E347CB8();
    v46 = GKGameCenterUIFrameworkBundle();
    v47 = OUTLINED_FUNCTION_1_113();

    v48 = sub_24E347CF8();
    v50 = v49;

    v51 = sub_24E3190AC(v48, v50, 0, 0, 0);
    [v44 addAction_];
    if (v58)
    {
      v63 = v58;
      v64 = v56;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v62 = sub_24E00B24C;
      *(&v62 + 1) = &block_descriptor_102;
      v52 = _Block_copy(&aBlock);
    }

    else
    {
      v52 = 0;
    }

    [v20 presentViewController:v44 animated:1 completion:v52];
    _Block_release(v52);
  }

  else
  {
    sub_24E343C98();
    v30 = sub_24E343F78();
    v31 = sub_24E348258();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_24DE53000, v30, v31, "Weak viewController deallocated", v32, 2u);
      MEMORY[0x253040EE0](v32, -1, -1);
    }

    (*(v54 + 8))(v8, v55);
  }
}

id sub_24E300788()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoveFriendActionImplementation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24E3007F4()
{
  result = qword_27F1DFC28;
  if (!qword_27F1DFC28)
  {
    type metadata accessor for RemoveFriendAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DFC28);
  }

  return result;
}

uint64_t block_copy_helper_102(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E3008A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveFriendAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24E30090C()
{
  v1 = type metadata accessor for RemoveFriendAction();
  OUTLINED_FUNCTION_6_15(v1);
  OUTLINED_FUNCTION_1_151();
  v4 = *(v0 + v3);
  v6 = *(v0 + v5);
  v8 = *(v0 + v7);

  sub_24E2FF290(v0 + v2, v4, v6, v8);
}

uint64_t objectdestroy_12Tm()
{
  v1 = (type metadata accessor for RemoveFriendAction() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[9];
  sub_24E347208();
  OUTLINED_FUNCTION_0_26();
  (*(v7 + 8))(v5 + v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

void sub_24E300AB0(uint64_t a1)
{
  v3 = type metadata accessor for RemoveFriendAction();
  OUTLINED_FUNCTION_6_15(v3);
  OUTLINED_FUNCTION_1_151();
  v6 = *(v1 + v5);
  v8 = *(v1 + v7);

  sub_24E2FF79C(a1, v1 + v4, v6, v8);
}

unint64_t sub_24E300B64()
{
  result = qword_27F1EAC00;
  if (!qword_27F1EAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EAC00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RemoveFriendActionImplementation.RemoveFriendActionImplementationError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E300C98()
{
  result = qword_27F1EAC08;
  if (!qword_27F1EAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EAC08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_112()
{

  return sub_24E347CB8();
}

unint64_t sub_24E300D3C()
{
  result = qword_27F1EAC10;
  if (!qword_27F1EAC10)
  {
    type metadata accessor for NicknameFieldData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EAC10);
  }

  return result;
}

uint64_t type metadata accessor for NicknameFieldData()
{
  result = qword_27F1EAC18;
  if (!qword_27F1EAC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E300E6C()
{
  type metadata accessor for NicknamePresenter();
  if (v0 <= 0x3F)
  {
    sub_24DF9E07C();
    if (v1 <= 0x3F)
    {
      sub_24DF9E0E0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

char *sub_24E300F20(void *a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_0_186(OBJC_IVAR____TtC12GameCenterUI16VibrancyHostView_visualEffectGroupName);
  *&v3[OBJC_IVAR____TtC12GameCenterUI16VibrancyHostView_embeddedView] = 0;
  v6 = [objc_allocWithZone(MEMORY[0x277D75D58]) init];
  v24.receiver = v3;
  v24.super_class = type metadata accessor for VibrancyHostView();
  v7 = objc_msgSendSuper2(&v24, sel_initWithEffect_, v6);

  if (a3)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_24E369990;
    v9 = objc_opt_self();
    v10 = v7;
    *(v8 + 32) = [v9 _gkGameLayerContentVibrancyEffect];
    sub_24DFEC928();
    v11 = sub_24E347EE8();

    [v10 setContentEffects_];

    v12 = sub_24E347EE8();

    [v10 setBackgroundEffects_];

    v13 = *&v10[OBJC_IVAR____TtC12GameCenterUI16VibrancyHostView_visualEffectGroupName];
    v14 = *&v10[OBJC_IVAR____TtC12GameCenterUI16VibrancyHostView_visualEffectGroupName + 8];

    sub_24E193BDC(v13, v14, v10);
  }

  v15 = *MEMORY[0x277D768C8];
  v16 = *(MEMORY[0x277D768C8] + 8);
  v17 = *(MEMORY[0x277D768C8] + 16);
  v18 = *(MEMORY[0x277D768C8] + 24);
  v19 = v7;
  [v19 setLayoutMargins_];
  v20 = *&v19[OBJC_IVAR____TtC12GameCenterUI16VibrancyHostView_embeddedView];
  *&v19[OBJC_IVAR____TtC12GameCenterUI16VibrancyHostView_embeddedView] = a1;
  v21 = a1;

  v22 = [v19 contentView];
  [v22 addSubview_];

  return v19;
}

void sub_24E30116C()
{
  OUTLINED_FUNCTION_0_186(OBJC_IVAR____TtC12GameCenterUI16VibrancyHostView_visualEffectGroupName);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI16VibrancyHostView_embeddedView) = 0;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E301200(double a1)
{
  v2 = *&v1[OBJC_IVAR____TtC12GameCenterUI16VibrancyHostView_embeddedView];
  if (v2)
  {
    [v2 sizeThatFits_];
    [v1 bounds];
    CGRectGetWidth(v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_24E3012B8()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for VibrancyHostView();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC12GameCenterUI16VibrancyHostView_embeddedView;
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI16VibrancyHostView_embeddedView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  OUTLINED_FUNCTION_1_152();
  [v3 sizeThatFits_];
  v5 = v4;
  v7 = v6;

  OUTLINED_FUNCTION_1_152();
  Width = CGRectGetWidth(v14);
  v9 = *&v0[v1];
  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  if (Width < v5)
  {
    v5 = Width;
  }

  v10 = v9;
  OUTLINED_FUNCTION_1_152();
  v11 = CGRectGetMidX(v15) - v5 * 0.5;
  OUTLINED_FUNCTION_1_152();
  [v10 setFrame_];
}

id sub_24E301408(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC12GameCenterUI16VibrancyHostView_embeddedView);
  if (result)
  {
    return [result measurementsWithFitting:a1 in:?];
  }

  __break(1u);
  return result;
}

id sub_24E3014F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VibrancyHostView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void OUTLINED_FUNCTION_0_186(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  strcpy(v2, "gameLayerGroup");
  v2[15] = -18;
}

id OUTLINED_FUNCTION_1_152()
{

  return [v0 (v1 + 3832)];
}

id sub_24E3015E4()
{
  OUTLINED_FUNCTION_29();
  v5 = type metadata accessor for AppStoreLockupCollectionViewCell();
  v1 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

uint64_t sub_24E3016E8(void *a1)
{
  v1 = a1;
  v2 = sub_24E30171C();

  return v2 & 1;
}

id sub_24E30171C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStoreLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_isHighlighted);
}

void sub_24E301754(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_24E3017A8(a3);
}

void sub_24E3017A8(char a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppStoreLockupCollectionViewCell();
  objc_msgSendSuper2(&v3, sel_setHighlighted_, a1 & 1);
  sub_24E1DA8D8();
}

id sub_24E3017F4()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for Shelf.Presentation(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_133();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  LODWORD(v2) = *(v0 + *(v2 + 32));
  OUTLINED_FUNCTION_0_187();
  sub_24E303B1C(v0, v3);
  v7 = OUTLINED_FUNCTION_28();
  if (v2 == 1)
  {
    return sub_24E301900(v4, v5, v6);
  }

  else
  {
    return sub_24E302184(v7, v8, v9, v10, v4, v5, v6);
  }
}

id sub_24E301900(uint64_t a1, uint64_t a2, void *a3)
{
  v70 = type metadata accessor for Shelf.Presentation(0);
  MEMORY[0x28223BE20](v70);
  v72 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v67 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFD8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v67 - v11;
  v13 = type metadata accessor for AppStoreLockupData();
  MEMORY[0x28223BE20](v13);
  v15 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v67 - v17;
  swift_getKeyPath();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  v71 = a1;
  sub_24E347128();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  type metadata accessor for AppStoreLockupView();
  [objc_msgSend(a3 container)];
  v20 = v19;
  v22 = v21;
  swift_unknownObjectRelease();
  v73 = v18;
  sub_24E303AB8(v18, v15);
  sub_24E303A70(&qword_27F1DEFD0, type metadata accessor for AppStoreLockupData);
  sub_24E347158();
  v23 = sub_24DF91CE0(v20, v22, v12, a3);
  v25 = v24;
  (*(v10 + 8))(v12, v9, v23);
  v26 = objc_opt_self();
  v27 = [v26 fractionalWidthDimension_];
  v28 = [v26 absoluteDimension_];
  v29 = objc_opt_self();
  v30 = [v29 sizeWithWidthDimension:v27 heightDimension:v28];

  v31 = [v26 fractionalWidthDimension_];
  if (qword_27F1DDA08 != -1)
  {
    swift_once();
  }

  v32 = [v26 absoluteDimension_];
  v74 = [v29 sizeWithWidthDimension:v31 heightDimension:v32];

  swift_getKeyPath();
  sub_24E347128();

  v33 = v70;
  v34 = v8[*(v70 + 28)];
  sub_24E303B1C(v8, type metadata accessor for Shelf.Presentation);
  if (v34 == 1 && (swift_getKeyPath(), sub_24E347128(), , v35 = *(v75 + 16), , v35 >= 2))
  {
    v67[2] = sub_24DF88A8C(0, &qword_27F1EA590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_24E369990;
    v67[1] = sub_24DF88A8C(0, &qword_27F1E5838);
    type metadata accessor for SeparatorView();
    v67[0] = sub_24DFEA80C();
    v68 = v30;
    v38 = v37;
    v39 = objc_opt_self();
    v40 = v33;
    v41 = [v39 layoutAnchorWithEdges_];
    v42 = [v39 layoutAnchorWithEdges_];
    v43 = v74;
    v44 = v38;
    v30 = v68;
    v45 = v41;
    v33 = v40;
    *(v36 + 32) = sub_24E1DB9C0(v43, v67[0], v44, v45, v42);
    v46 = sub_24E14E72C(v30);
  }

  else
  {
    v46 = [objc_opt_self() itemWithLayoutSize_];
  }

  v47 = v46;
  swift_getKeyPath();
  v48 = v72;
  sub_24E347128();

  v49 = v48 + *(v33 + 48);
  v50 = *v49;
  v51 = *(v49 + 8);
  sub_24E303B1C(v48, type metadata accessor for Shelf.Presentation);
  if (v51)
  {
    v50 = 0.0;
  }

  swift_getKeyPath();
  sub_24E347128();

  v52 = *(v75 + 16);

  swift_getKeyPath();
  sub_24E347128();

  v53 = *(v75 + 16);

  v54 = (v53 - 1);
  if (!v53)
  {
    v54 = 0.0;
  }

  v55 = v25 * v52 + v50 * v54;
  v56 = [v26 fractionalWidthDimension_];
  v57 = [v26 absoluteDimension_];
  v58 = [v29 sizeWithWidthDimension:v56 heightDimension:v57];

  v59 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_24E369990;
  *(v60 + 32) = v47;
  sub_24DF88A8C(0, &qword_27F1EA590);
  v61 = v47;
  v62 = sub_24E347EE8();

  v63 = [v59 verticalGroupWithLayoutSize:v58 subitems:v62];

  if (v50 > 0.0)
  {
    v64 = [objc_opt_self() fixedSpacing_];
    [v63 setInterItemSpacing_];
  }

  v65 = [objc_opt_self() sectionWithGroup_];

  sub_24E303B1C(v73, type metadata accessor for AppStoreLockupData);
  return v65;
}

id sub_24E302184(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFD8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - v14;
  v16 = type metadata accessor for AppStoreLockupData();
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  [objc_msgSend(a7 container)];
  v23 = v22;
  v25 = v24;
  swift_unknownObjectRelease();
  v26 = v23 - a2 - a4;
  type metadata accessor for AppStoreLockupView();
  sub_24E303AB8(v21, v18);
  sub_24E303A70(&qword_27F1DEFD0, type metadata accessor for AppStoreLockupData);
  sub_24E347158();
  v27 = sub_24DF91CE0(v26, v25 - a1 - a3, v15, a7);
  v29 = v28;
  (*(v13 + 8))(v15, v12, v27);
  v30 = objc_opt_self();
  v31 = [v30 fractionalWidthDimension_];
  v32 = [v30 absoluteDimension_];
  v33 = objc_opt_self();
  v34 = [v33 sizeWithWidthDimension:v31 heightDimension:v32];

  v35 = [objc_opt_self() itemWithLayoutSize_];
  v36 = [v30 absoluteDimension_];
  v37 = [v30 absoluteDimension_];
  v38 = [v33 sizeWithWidthDimension:v36 heightDimension:v37];

  v39 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_24E370DD0;
  *(v40 + 32) = v35;
  *(v40 + 40) = v35;
  *(v40 + 48) = v35;
  sub_24DF88A8C(0, &qword_27F1EA590);
  v41 = v35;
  v42 = sub_24E347EE8();

  v43 = [v39 verticalGroupWithLayoutSize:v38 subitems:v42];

  v44 = [objc_opt_self() sectionWithGroup_];
  [v44 setOrthogonalScrollingBehavior_];
  [v44 setInterGroupSpacing_];

  sub_24E303B1C(v21, type metadata accessor for AppStoreLockupData);
  return v44;
}

void sub_24E302668(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a4;
  v63 = a3;
  v64 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF058);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v60 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  OUTLINED_FUNCTION_0_14();
  v65 = v10;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  v61 = &v59 - v12;
  v13 = type metadata accessor for Shelf.Presentation(0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_1();
  v59 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_1();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v59 - v26;
  sub_24DF8BD90(a2, &v59 - v26, &unk_27F1E1CB0);
  v28 = *(v20 + 48);
  v66 = v27;
  sub_24DF8BD90(v63, &v27[v28], &unk_27F1E1CB0);
  swift_getKeyPath();
  sub_24E347128();

  v29 = v19[*(v14 + 40)];
  OUTLINED_FUNCTION_0_187();
  sub_24E303B1C(v19, v30);
  if (v29 == 1)
  {
    if (qword_27F1DE118 != -1)
    {
      OUTLINED_FUNCTION_10_3();
    }

    v31 = type metadata accessor for PlayerCardTheme();
    v32 = *(__swift_project_value_buffer(v31, qword_27F20BF00) + 64);
    v33 = [v62 traitCollection];
    sub_24E336638();
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v69 = 1;
  v67 = 1;
  v36 = v66;
  sub_24DF8BD90(v66, v24, &unk_27F1E1CA0);
  v37 = *(v20 + 48);
  if (__swift_getEnumTagSinglePayload(v24 + v37, 1, v9) == 1)
  {
    sub_24DF8BFF4(v36, &unk_27F1E1CA0);
    sub_24DF8BFF4(v24 + v37, &unk_27F1E1CB0);
    v38 = v24;
    v39 = &unk_27F1E1CB0;
LABEL_20:
    sub_24DF8BFF4(v38, v39);
    *&v56 = OUTLINED_FUNCTION_4_114();
    *(a5 + 56) = -1;
    *(a5 + 64) = v56;
    *(a5 + 80) = v56;
    *(a5 + 96) = v57;
    v58 = *v68;
    *(a5 + 100) = *&v68[3];
    *(a5 + 97) = v58;
    *(a5 + 104) = v56;
    *(a5 + 120) = v56;
    goto LABEL_21;
  }

  (*(v65 + 32))(v61, v24 + v37, v9);
  sub_24DF8BFF4(v24, &unk_27F1E1CB0);
  swift_getKeyPath();
  sub_24E347128();

  if (sub_24E17A62C(v70[0]) == 0x6C6961746564 && v40 == 0xE600000000000000)
  {
  }

  else
  {
    v42 = sub_24E348C08();

    if ((v42 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  swift_getKeyPath();
  v43 = v59;
  sub_24E347128();

  v44 = v60;
  sub_24DF8BD90(v43, v60, &qword_27F1DF058);
  OUTLINED_FUNCTION_0_187();
  sub_24E303B1C(v43, v45);
  v46 = type metadata accessor for HeaderData();
  LODWORD(v43) = __swift_getEnumTagSinglePayload(v44, 1, v46);
  sub_24DF8BFF4(v44, &qword_27F1DF058);
  if (v43 != 1)
  {
LABEL_19:
    v54 = OUTLINED_FUNCTION_10_68();
    v55(v54);
    v39 = &unk_27F1E1CA0;
    v38 = v66;
    goto LABEL_20;
  }

  v67 = v29 ^ 1;
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3();
  }

  v47 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v47, qword_27F20BF00);
  v48 = [v62 traitCollection];
  sub_24E33670C(v48, v70);

  v49 = OUTLINED_FUNCTION_10_68();
  v50(v49);
  sub_24DF8BFF4(v66, &unk_27F1E1CA0);
  OUTLINED_FUNCTION_4_114();
  *(a5 + 56) = 3;
  v52 = v70[1];
  *(a5 + 64) = v70[0];
  *(a5 + 80) = v52;
  *(a5 + 96) = v53;
  *(a5 + 100) = *&v68[3];
  *(a5 + 97) = *v68;
  *(a5 + 104) = 0;
  *(a5 + 112) = v35;
  *(a5 + 120) = 0;
  *(a5 + 128) = 0;
LABEL_21:
  *(a5 + 136) = v51;
}

double sub_24E302C5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  sub_24DF8BD90(a2, &v24 - v15, &unk_27F1E1CB0);
  sub_24DF8BD90(a3, &v16[*(v13 + 56)], &unk_27F1E1CB0);
  if (qword_27F1DD5E0 != -1)
  {
    swift_once();
  }

  v17 = sub_24E3444F8();
  __swift_project_value_buffer(v17, qword_27F20A8C8);
  v18 = [a4 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();
  v20 = v19;

  v21 = *(v9 + 8);
  v21(v12, v7);
  v22 = [a4 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();

  v21(v12, v7);
  sub_24DF8BFF4(v16, &unk_27F1E1CA0);
  return v20;
}

double sub_24E302EAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = a1;
  v28 = type metadata accessor for Shelf.Presentation(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_133();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_1();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  sub_24DF8BD90(a2, &v26 - v15, &unk_27F1E1CB0);
  sub_24DF8BD90(a3, &v16[*(v9 + 48)], &unk_27F1E1CB0);
  v17 = a4;
  v18 = [a4 traitCollection];
  [v18 horizontalSizeClass];

  ASCLockupViewSizeGetIconSize();
  if (qword_27F1DD6E0 != -1)
  {
    swift_once();
  }

  sub_24DF8BD90(v16, v13, &unk_27F1E1CA0);
  v19 = *(v9 + 48);
  sub_24E302668(v27, v13, v13 + v19, a4, v33);
  sub_24DF8BFF4(v13 + v19, &unk_27F1E1CB0);
  sub_24DF8BFF4(v13, &unk_27F1E1CB0);
  memcpy(v34, v33, 0x89uLL);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  v20 = *(v4 + *(v28 + 24));
  OUTLINED_FUNCTION_0_187();
  sub_24E303B1C(v4, v21);
  if (v20 != 1)
  {
    goto LABEL_7;
  }

  memcpy(v31, v34, 0x89uLL);
  if (qword_27F1DDB58 != -1)
  {
    swift_once();
  }

  memcpy(v32, &xmmword_27F20B258, 0x89uLL);
  memcpy(v30, &xmmword_27F20B258, 0x89uLL);
  sub_24E15063C(v32, &v29);
  v22 = sub_24E26C3C0(v31, v30);
  memcpy(v33, v30, 0x89uLL);
  sub_24E1505E8(v33);
  if ((v22 & 1) == 0)
  {
    if (qword_27F1DE118 != -1)
    {
      OUTLINED_FUNCTION_10_3();
    }

    v23 = type metadata accessor for PlayerCardTheme();
    __swift_project_value_buffer(v23, qword_27F20BF00);
    v24 = [v17 traitCollection];
    sub_24E336638();
    sub_24E1505E8(v34);

    sub_24DF8BFF4(v16, &unk_27F1E1CA0);
  }

  else
  {
LABEL_7:
    sub_24DF8BFF4(v16, &unk_27F1E1CA0);
    sub_24E1505E8(v34);
  }

  return 0.0;
}

double sub_24E3032A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Shelf.Presentation(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_133();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  sub_24DF8BD90(a2, &v22 - v12, &unk_27F1E1CB0);
  sub_24DF8BD90(a3, &v13[*(v10 + 56)], &unk_27F1E1CB0);
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3();
  }

  v14 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v14, qword_27F20BF00);
  v15 = [a4 traitCollection];
  v16 = sub_24E3368B4();

  if ((v16 & 1) != 0 || (swift_getKeyPath(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0), sub_24E347128(), , v17 = *(v4 + *(v8 + 24)), OUTLINED_FUNCTION_0_187(), sub_24E303B1C(v4, v18), v17 != 1))
  {
    v20 = *MEMORY[0x277D75060];
  }

  else
  {
    v19 = [a4 traitCollection];
    v20 = sub_24E336638();
  }

  sub_24DF8BFF4(v13, &unk_27F1E1CA0);
  return v20;
}

BOOL sub_24E3034F8()
{
  v1 = [*(*(v0 + qword_280BE0C10) + OBJC_IVAR____TtC12GameCenterUI18AppStoreLockupView_appStoreLockup) lockup];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_24E30355C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v18[-1] - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v18[-1] - v8;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFD8);
  sub_24E347128();

  v10 = v18[0];
  v11 = *(*(v0 + qword_280BE0C10) + OBJC_IVAR____TtC12GameCenterUI18AppStoreLockupView_appStoreLockup);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  v13 = v11;
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v9, 1, v12) == 1)
  {

    return sub_24DF8BFF4(v9, &unk_27F1EAC90);
  }

  else
  {
    v18[3] = &type metadata for AppStoreProductAction;
    v18[4] = sub_24E18C284();
    v18[0] = v10;
    v18[1] = v13;
    (*(v3 + 104))(v6, *MEMORY[0x277D21E18], v1);
    v15 = v13;
    v16 = v10;
    sub_24E3473B8();

    (*(v3 + 8))(v6, v1);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return (*(*(v12 - 8) + 8))(v9, v12);
  }
}

id sub_24E303800()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStoreLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AppStoreLockupCollectionViewCell()
{
  result = qword_27F1EAC38;
  if (!qword_27F1EAC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E303930(uint64_t a1)
{
  result = sub_24E303A70(&qword_27F1EAC48, type metadata accessor for AppStoreLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E303A18(uint64_t a1)
{
  result = sub_24E303A70(&qword_27F1E6428, type metadata accessor for AppStoreLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E303A70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E303AB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreLockupData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E303B1C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

double OUTLINED_FUNCTION_4_114()
{
  *v0 = v1;
  result = 0.0;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0;
  *(v0 + 48) = v2;
  *(v0 + 49) = *(v3 - 151);
  *(v0 + 52) = *(v3 - 148);
  return result;
}

id sub_24E303BE8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_24E347CB8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() _systemImageNamed_];

  return v3;
}

uint64_t sub_24E303C58()
{
  result = sub_24E347CB8();
  qword_27F20B798 = result;
  return result;
}

void sub_24E303C90()
{
  sub_24DF88A8C(0, &qword_27F1EACD0);
  if (qword_27F1DDD60 != -1)
  {
    swift_once();
  }

  v0 = qword_27F20B798;
  v1 = sub_24E3484E8();

  qword_27F20B7A0 = v1;
}

uint64_t sub_24E303D40()
{
  if (qword_27F1DD7F0 != -1)
  {
    swift_once();
  }

  return *(&xmmword_27F1E2DA8 + 1);
}

char *sub_24E303D94(uint64_t a1, void *a2, char a3, int a4)
{
  LODWORD(v71) = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF740);
  v9 = OUTLINED_FUNCTION_4_5(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_1();
  v67 = (v10 - v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_21_20();
  v66 = v13;
  v14 = type metadata accessor for AchievementDetailsView();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_1();
  v69 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v63 - v19;
  v21 = type metadata accessor for AchievementDetailViewModel();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_12_1();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_21_20();
  v68 = v27;
  *&v4[OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_hostingController] = 0;
  v28 = OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_currentTheme;
  if (qword_27F1DD8F0 != -1)
  {
    OUTLINED_FUNCTION_1_73();
    swift_once();
  }

  v4[v28] = byte_27F20AFF8;
  *&v4[OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_objectGraph] = a1;
  *&v4[OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_achievement] = a2;
  v4[OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_loadWithCustomDetent] = a3 & 1;
  *&v4[OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_selectedAchievement] = a2;
  v4[OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_pageContext] = v71;
  v29 = type metadata accessor for AchievementDetailViewController();
  v74.receiver = v4;
  v74.super_class = v29;
  v65 = a2;
  v70 = a1;

  v30 = objc_msgSendSuper2(&v74, sel_init);
  OUTLINED_FUNCTION_21_2();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  OUTLINED_FUNCTION_21_2();
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  v33 = v30;
  sub_24E305920();
  v64 = v34;
  v35 = *&v33[OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_selectedAchievement];
  v71 = v32;

  v73[0] = sub_24E252A34(v35);
  v73[1] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFEF0);
  sub_24E15535C();
  sub_24E348918();
  sub_24E152638(3, v25 + v21[5]);
  v37 = [v35 game];
  v38 = [v37 adamID];

  *(v25 + v21[6]) = v38;
  v39 = [v35 internal];
  v40 = [v39 rarityPercent];

  if (v40)
  {
    [v40 doubleValue];
    v42 = v41;
  }

  else
  {

    v42 = 0;
  }

  v43 = v25 + v21[8];
  *v43 = v42;
  *(v43 + 8) = v40 == 0;
  *(v25 + v21[7]) = v64;
  v44 = (v25 + v21[9]);
  v45 = v71;
  *v44 = sub_24E308E30;
  v44[1] = v45;
  v46 = (v25 + v21[10]);
  *v46 = sub_24E308E20;
  v46[1] = v31;
  v47 = v68;
  sub_24E308E54(v25, v68, type metadata accessor for AchievementDetailViewModel);
  v48 = v33;
  v49 = [v48 traitCollection];
  v50 = [v49 userInterfaceIdiom];

  v51 = v48[OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_currentTheme];
  v64 = v31;
  if (qword_27F1DD7F0 != -1)
  {
    OUTLINED_FUNCTION_3_134();
  }

  memcpy(v73, &qword_27F1E2C68, sizeof(v73));
  KeyPath = swift_getKeyPath();
  v53 = v66;
  *v66 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0);
  swift_storeEnumTagMultiPayload();
  v54 = swift_getKeyPath();
  v55 = v67;
  *v67 = v54;
  swift_storeEnumTagMultiPayload();
  sub_24E308F24(v47, v20, type metadata accessor for AchievementDetailViewModel);
  v20[v14[5]] = v51;
  memcpy(&v20[v14[6]], v73, 0x180uLL);
  swift_unknownObjectWeakInit();
  sub_24E002778(v73, v72);

  v20[v14[8]] = v50 == 1;
  sub_24E308EB4(v53, &v20[v14[9]]);
  sub_24E308EB4(v55, &v20[v14[10]]);
  v56 = v14[11];
  *&v20[v56] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940);
  swift_storeEnumTagMultiPayload();
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v58 = 80.0;
  if (ShouldUsePadUI)
  {
    v58 = 84.0;
  }

  v72[0] = v58;
  sub_24E002620();
  sub_24E345358();
  *&v20[v14[13]] = 0x4078900000000000;
  sub_24E308F24(v20, v69, type metadata accessor for AchievementDetailsView);
  v59 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EACE0));
  v60 = sub_24E345D58();

  sub_24E308F84(v20, type metadata accessor for AchievementDetailsView);
  sub_24E308F84(v47, type metadata accessor for AchievementDetailViewModel);
  v61 = *&v48[OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_hostingController];
  *&v48[OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_hostingController] = v60;

  return v48;
}

void sub_24E304468()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_hostingController) = 0;
  v1 = OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_currentTheme;
  if (qword_27F1DD8F0 != -1)
  {
    OUTLINED_FUNCTION_1_73();
    swift_once();
  }

  *(v0 + v1) = byte_27F20AFF8;
  sub_24E348AE8();
  __break(1u);
}

id sub_24E30452C(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_hostingController);
  if (result)
  {
    v4 = [result contentScrollViewForEdge_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24E3045C4()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  sub_24E344AC8();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v3 = type metadata accessor for AchievementDetailViewController();
  v87.receiver = v0;
  v87.super_class = v3;
  objc_msgSendSuper2(&v87, sel_viewDidLoad);
  v4 = [v0 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1)
  {
    if (qword_27F1DD7F0 != -1)
    {
      OUTLINED_FUNCTION_3_134();
    }

    [v1 setPreferredContentSize_];
  }

  v6 = OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_hostingController;
  v7 = *&v1[OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_hostingController];
  if (!v7)
  {
    __break(1u);
    goto LABEL_36;
  }

  v8 = [v7 view];
  if (!v8)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  v10 = [v1 view];
  if (!v10)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v11 = v10;
  v12 = *&v1[v6];
  if (!v12)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v13 = [v12 view];
  if (!v13)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v14 = v13;
  [v11 addSubview_];

  v84 = v6;
  v15 = *&v1[v6];
  if (!v15)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v15 didMoveToParentViewController_];
  sub_24DF88A8C(0, &qword_280BE0110);
  v16 = sub_24E303BE8(0xD000000000000013, 0x800000024E3A8EE0);
  v86 = v3;
  v85 = v1;
  v17 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v18 = v1;
  v82 = sub_24E307820(v16, 0, &v85, sel_shareButtonPressed);
  v19 = sub_24E347CB8();
  v20 = GKGameCenterUIFrameworkBundle();
  v21 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  v86 = v3;
  v85 = v18;
  objc_allocWithZone(MEMORY[0x277D751E0]);
  v22 = v18;
  sub_24E3076B4();
  v24 = v23;
  v25 = &selRef_smallIconURLString;
  if (v22[OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_currentTheme] != 1)
  {
    goto LABEL_22;
  }

  v26 = [v22 navigationController];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 sheetPresentationController];

    if (v28)
    {
      sub_24E3484A8();
      sub_24E344AB8();
      sub_24E3484B8();
    }
  }

  v29 = *&v1[v84];
  if (!v29)
  {
    goto LABEL_53;
  }

  v25 = &selRef_smallIconURLString;
  v30 = [v29 view];
  if (!v30)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v31 = v30;
  [v30 setAlpha_];

  v32 = *&v1[v84];
  if (!v32)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v33 = [v32 view];
  if (!v33)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v34 = v33;
  [v33 setBackgroundColor_];

  v35 = [v22 navigationController];
  if (!v35)
  {
LABEL_22:
    v39 = [v22 navigationItem];
    [v39 setLeftBarButtonItem_];

    v40 = [v22 navigationItem];
    [v40 setRightBarButtonItem_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_24E36D5F0;
    v42 = *&v1[v84];
    if (v42)
    {
      v43 = [v42 v25[364]];
      if (v43)
      {
        v44 = v43;
        v45 = [v43 leadingAnchor];

        v46 = [v22 v25[364]];
        if (v46)
        {
          v47 = v46;
          v48 = [v46 safeAreaLayoutGuide];

          v49 = [v48 leadingAnchor];
          v50 = [v45 constraintEqualToAnchor_];

          *(v41 + 32) = v50;
          v51 = *&v1[v84];
          if (v51)
          {
            v52 = [v51 view];
            if (v52)
            {
              v53 = v52;
              v54 = [v52 topAnchor];

              v55 = [v22 view];
              if (v55)
              {
                v56 = v55;
                v57 = [v55 topAnchor];

                v58 = [v54 constraintEqualToAnchor_];
                *(v41 + 40) = v58;
                v59 = *&v1[v84];
                if (v59)
                {
                  v60 = [v59 view];
                  if (v60)
                  {
                    v61 = v60;
                    v62 = [v60 trailingAnchor];

                    v63 = [v22 view];
                    if (v63)
                    {
                      v64 = v63;
                      v65 = [v63 safeAreaLayoutGuide];

                      v66 = [v65 trailingAnchor];
                      v67 = [v62 constraintEqualToAnchor_];

                      *(v41 + 48) = v67;
                      v68 = *&v1[v84];
                      if (v68)
                      {
                        v69 = [v68 view];
                        if (v69)
                        {
                          v70 = v69;
                          v71 = [v69 bottomAnchor];

                          v72 = [v22 view];
                          if (v72)
                          {
                            v73 = v72;
                            v74 = objc_opt_self();
                            v75 = [v73 safeAreaLayoutGuide];

                            v76 = [v75 bottomAnchor];
                            v77 = [v71 constraintEqualToAnchor_];

                            *(v41 + 56) = v77;
                            sub_24DF88A8C(0, &qword_27F1E1F10);
                            v78 = sub_24E347EE8();

                            [v74 activateConstraints_];

                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EACD8);
                            v79 = swift_allocObject();
                            *(v79 + 16) = xmmword_24E367D20;
                            v80 = sub_24E344D58();
                            v81 = MEMORY[0x277D74DB8];
                            *(v79 + 32) = v80;
                            *(v79 + 40) = v81;
                            MEMORY[0x25303EE40](v79, sel_updateThePreferredSheetDetents);

                            swift_unknownObjectRelease();

                            OUTLINED_FUNCTION_18();
                            return;
                          }

                          goto LABEL_52;
                        }

LABEL_51:
                        __break(1u);
LABEL_52:
                        __break(1u);
LABEL_53:
                        __break(1u);
                        goto LABEL_54;
                      }

LABEL_50:
                      __break(1u);
                      goto LABEL_51;
                    }

LABEL_49:
                    __break(1u);
                    goto LABEL_50;
                  }

LABEL_48:
                  __break(1u);
                  goto LABEL_49;
                }

LABEL_47:
                __break(1u);
                goto LABEL_48;
              }

LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v36 = v35;
  v37 = [v35 view];

  if (v37)
  {
    v38 = [objc_opt_self() labelColor];
    [v37 setTintColor_];

    goto LABEL_22;
  }

LABEL_57:
  __break(1u);
}

id sub_24E304F8C(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AchievementDetailViewController();
  return objc_msgSendSuper2(&v4, sel_viewWillDisappear_, a1 & 1);
}

uint64_t sub_24E305044(char a1, SEL *a2, uint64_t (*a3)(id))
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for AchievementDetailViewController();
  v7 = objc_msgSendSuper2(&v9, *a2, a1 & 1);
  return a3(v7);
}

void sub_24E30510C()
{
  v1 = v0;
  v2 = [v0 navigationController];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [v2 sheetPresentationController];

  if (!v4)
  {
    return;
  }

  if (v1[OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_loadWithCustomDetent] == 1)
  {
    v5 = [v1 traitCollection];
    v6 = [v5 userInterfaceIdiom];

    if (!v6 || GKIsXRUIIdiomShouldUsePhoneUI())
    {
      v7 = [v1 traitCollection];
      v8 = [v7 preferredContentSizeCategory];

      LOBYTE(v7) = sub_24E348458();
      if (v7)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_24E369990;
        v10 = [objc_opt_self() largeDetent];
      }

      else
      {
        v19 = &type metadata for GKFeatureFlags;
        v20 = sub_24DFA0CB4();
        v18[0] = 12;
        v11 = sub_24E3435A8();
        __swift_destroy_boxed_opaque_existential_1(v18);
        if ((v11 & 1) == 0 || (v12 = [*&v1[OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_selectedAchievement] friendsWhoHaveThis], sub_24DF88A8C(0, &unk_27F1EACC0), sub_24E347F08(), v12, v13 = sub_24DFD8654(), , !v13))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_24E369990;
          if (qword_27F1DDD68 != -1)
          {
            swift_once();
          }

          v15 = qword_27F20B7A0;
          *(v14 + 32) = qword_27F20B7A0;
          sub_24DF88A8C(0, &qword_27F1EACD0);
          v16 = v15;
          goto LABEL_15;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_24E369990;
        v10 = [objc_opt_self() largeDetent];
      }

      *(v9 + 32) = v10;
      sub_24DF88A8C(0, &qword_27F1EACD0);
LABEL_15:
      v17 = sub_24E347EE8();

      [v4 setDetents_];

      [v4 setPrefersGrabberVisible_];
    }
  }

  if (qword_27F1DD7F0 != -1)
  {
    OUTLINED_FUNCTION_3_134();
  }

  sub_24E3484D8();
}

void sub_24E3054D0()
{
  OUTLINED_FUNCTION_32();
  v32 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  OUTLINED_FUNCTION_0_14();
  v31 = v8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  OUTLINED_FUNCTION_4_5(v12);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  OUTLINED_FUNCTION_0_14();
  v18 = v17;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v30 - v20;
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_24DF8BFF4(v15, &unk_27F1EAC90);
    sub_24E343C98();
    v22 = sub_24E343F78();
    v23 = sub_24E348258();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_24DE53000, v22, v23, "Actiondispatcher was nil when trying to perform ShareAchievementAction", v24, 2u);
      MEMORY[0x253040EE0](v24, -1, -1);
    }

    (*(v2 + 8))(v6, v32);
  }

  else
  {
    (*(v18 + 32))(v21, v15, v16);
    v25 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_hostingController);
    if (v25)
    {
      v26 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_selectedAchievement);
      v33[3] = &type metadata for ShareAchievementAction;
      v33[4] = sub_24DFB4F3C();
      v33[0] = 0;
      v33[1] = v26;
      v27 = v31;
      (*(v31 + 104))(v11, *MEMORY[0x277D21E18], v7);
      v28 = v25;
      v29 = v26;
      sub_24E3473B8();

      (*(v27 + 8))(v11, v7);
      (*(v18 + 8))(v21, v16);
      __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else
    {
      (*(v18 + 8))(v21, v16);
    }
  }

  OUTLINED_FUNCTION_18();
}

void sub_24E305920()
{
  OUTLINED_FUNCTION_32();
  v56 = sub_24E343368();
  OUTLINED_FUNCTION_0_14();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v55 = v5 - v4;
  type metadata accessor for FriendWhoHasEarnedThisAchievementViewModel();
  OUTLINED_FUNCTION_0_14();
  v53 = v7;
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_1();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_21_20();
  v62 = v12;
  v13 = [*(v0 + OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_selectedAchievement) friendsWhoHaveThis];
  sub_24DF88A8C(0, &unk_27F1EACC0);
  sub_24E347F08();

  v63 = sub_24E0833E0(v14);
  sub_24E307B1C(&v63);

  v15 = v63;
  v57 = sub_24DFD8654(v63);
  if (v57)
  {
    v16 = 0;
    v52 = v15 & 0xC000000000000001;
    v17 = MEMORY[0x277D84F90];
    v50 = (v2 + 8);
    v51 = v15;
    v18 = &selRef_setRequiresValidation_;
    while (v57 != v16)
    {
      if (v52)
      {
        v19 = MEMORY[0x25303F560](v16, v15);
      }

      else
      {
        if (v16 >= *(v15 + 16))
        {
          goto LABEL_19;
        }

        v19 = *(v15 + 8 * v16 + 32);
      }

      v20 = v19;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);

        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_21_2();
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = v20;
      v23 = v20;
      v24 = [v23 v18[458]];
      if (!v24)
      {
        goto LABEL_20;
      }

      v25 = v24;
      v61 = static PlayerProfileUtil.headerSubtitle(for:)(v24);
      v27 = v26;

      v28 = [v23 v18[458]];
      if (!v28)
      {
        goto LABEL_21;
      }

      v29 = v28;
      v59 = v16;
      v60 = v17;
      v30 = v10;
      v31 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];

      v32 = [v31 displayName];
      v15 = sub_24E347CF8();
      v34 = v33;
      v35 = [v23 timestamp];
      if (!v35)
      {
        goto LABEL_22;
      }

      v36 = v35;

      sub_24E343328();
      sub_24E1AC91C();
      v38 = v37;
      v40 = v39;
      (*v50)(v55, v56);
      OUTLINED_FUNCTION_21_2();
      v41 = swift_allocObject();
      *(v41 + 16) = v23;
      v58 = v23;
      sub_24E343398();
      v42 = (v62 + v54[5]);
      *v42 = v15;
      v42[1] = v34;
      v43 = (v62 + v54[6]);
      *v43 = v61;
      v43[1] = v27;
      v44 = (v62 + v54[7]);
      *v44 = v38;
      v44[1] = v40;
      v45 = (v62 + v54[8]);
      *v45 = sub_24E308C90;
      v45[1] = v22;
      v46 = (v62 + v54[9]);
      *v46 = &unk_24E38DB80;
      v46[1] = v41;
      v10 = v30;
      sub_24E308F24(v62, v30, type metadata accessor for FriendWhoHasEarnedThisAchievementViewModel);
      v17 = v60;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E077ED8();
        v17 = v48;
      }

      v15 = v51;
      v18 = &selRef_setRequiresValidation_;
      v47 = *(v17 + 16);
      if (v47 >= *(v17 + 24) >> 1)
      {
        sub_24E077ED8();
        v17 = v49;
      }

      sub_24E308F84(v62, type metadata accessor for FriendWhoHasEarnedThisAchievementViewModel);
      *(v17 + 16) = v47 + 1;
      sub_24E308E54(v30, v17 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v47, type metadata accessor for FriendWhoHasEarnedThisAchievementViewModel);
      v16 = v59 + 1;
    }
  }

  OUTLINED_FUNCTION_18();
}

id sub_24E305E58(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    result = [a2 friendPlayer];
    if (result)
    {
      v5 = result;
      v6 = [result playerID];

      sub_24E347CF8();
      sub_24E306F3C();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_24E305F1C(uint64_t a1)
{
  v1[2] = a1;
  sub_24E348068();
  v1[3] = sub_24E348058();
  v3 = sub_24E347FF8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_24E305FB4, v3, v2);
}

id sub_24E305FB4()
{
  OUTLINED_FUNCTION_9_7();
  result = [*(v0 + 16) friendPlayer];
  *(v0 + 48) = result;
  if (result)
  {
    v2 = result;
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_24E30606C;

    return sub_24E1DA44C(v2, 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E30606C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 64) = a1;

  v4 = *(v2 + 40);
  v5 = *(v2 + 32);

  return MEMORY[0x2822009F8](sub_24E3061B4, v5, v4);
}

uint64_t sub_24E3061B4()
{
  OUTLINED_FUNCTION_9_7();

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

void sub_24E306214()
{
  OUTLINED_FUNCTION_32();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFCC0);
  OUTLINED_FUNCTION_0_14();
  v2 = v1;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  v5 = v13 - v4;
  v6 = sub_24E347638();
  OUTLINED_FUNCTION_0_14();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v12 = v11 - v10;
  sub_24E347628();
  sub_24E3477D8();
  if (qword_27F1DDF20 != -1)
  {
    OUTLINED_FUNCTION_4_34();
  }

  sub_24E32EA08();
  v13[0] = sub_24E3477C8();
  v13[1] = MEMORY[0x277D221C0];
  sub_24E3475D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E28E0);
  sub_24E3475B8();
  (*(v2 + 8))(v5, v0);

  (*(v8 + 8))(v12, v6);
  OUTLINED_FUNCTION_18();
}

void sub_24E306670(void *a1)
{
  v2 = v1;
  sub_24DF88A8C(0, &qword_27F1E2630);
  v4 = [objc_opt_self() currentGame];
  v5 = [v4 adamID];

  v6 = [*&v1[OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_selectedAchievement] game];
  v7 = [v6 adamID];

  v8 = sub_24E348628();
  if (v8)
  {
    v9 = [a1 lockup];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 lockupWithOffer_];
    }

    else
    {
      v11 = 0;
    }

    [a1 setLockup_];
  }

  if (GKIsXRUIIdiom() & 1) != 0 || (v12 = [objc_opt_self() mainBundle], v13 = objc_msgSend(v12, sel__gkIsAnyOverlayUI), v12, (v13) || (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EACB0), sub_24E347328(), v14 = v18, sub_24DF8BFF4(v17, &qword_27F1E1B70), v14))
  {
    [a1 setAutomaticallyPresentsProductDetails_];
    v18 = type metadata accessor for AchievementDetailViewController();
    v17[0] = v2;
    objc_allocWithZone(MEMORY[0x277D75B80]);
    v15 = v2;
    v16 = sub_24E2BE570(v17, sel_showAppStoreProductPage_);
    [a1 addGestureRecognizer_];
  }
}

void sub_24E306920()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v48 = v2;
  v49 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  OUTLINED_FUNCTION_4_5(v9);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  v12 = v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  OUTLINED_FUNCTION_0_14();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v19 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v46 - v21;
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_24DF8BFF4(v12, &unk_27F1EAC90);
    sub_24E343C98();
    v23 = sub_24E343F78();
    v24 = sub_24E348258();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      OUTLINED_FUNCTION_19_34(&dword_24DE53000, v26, v27, "Actiondispatcher was nil when trying to perform ShareAchievementAction");
      MEMORY[0x253040EE0](v25, -1, -1);
    }

    (*(v4 + 8))(v8, v49);
  }

  else
  {
    v47 = v15;
    v28 = *(v15 + 32);
    v50 = v22;
    v46[0] = v28;
    v46[1] = v15 + 32;
    v28(v22, v12, v13);
    v29 = [*&v0[OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_selectedAchievement] game];
    v30 = [v29 adamID];

    v49 = [objc_allocWithZone(MEMORY[0x277CEC258]) initWithNumberValue_];
    v31 = [v48 view];
    if (v31)
    {
      v32 = v31;
      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (!v33)
      {
      }
    }

    else
    {
      v33 = 0;
    }

    v34 = v47;
    (*(v47 + 16))(v19, v50, v13);
    v35 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v36 = (v17 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    (v46[0])(v38 + v35, v19, v13);
    v39 = (v38 + v36);
    v40 = v49;
    *v39 = v49;
    v39[1] = v33;
    *(v38 + v37) = v1;
    v51[4] = sub_24E307A88;
    v51[5] = v38;
    OUTLINED_FUNCTION_5_113();
    OUTLINED_FUNCTION_1_65(COERCE_DOUBLE(1107296256));
    v51[2] = v41;
    v51[3] = &block_descriptor_30_3;
    v42 = _Block_copy(v51);
    v43 = v33;
    v44 = v1;
    v45 = v40;

    [v44 dismissViewControllerAnimated:1 completion:v42];
    _Block_release(v42);

    (*(v34 + 8))(v50, v13);
  }

  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E306D68(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-1] - v7;
  v13[3] = &type metadata for AppStoreProductAction;
  v13[4] = sub_24E18C284();
  v13[0] = a2;
  v13[1] = a3;
  (*(v6 + 104))(v8, *MEMORY[0x277D21E18], v5);
  v9 = a3;
  v10 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  sub_24E3473B8();

  (*(v6 + 8))(v8, v5);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

void sub_24E306F3C()
{
  OUTLINED_FUNCTION_32();
  v48 = v1;
  v49 = v2;
  sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v52 = v4;
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v51 = v6 - v5;
  type metadata accessor for PlayerProfileAction();
  OUTLINED_FUNCTION_0_14();
  v46 = v7;
  v47 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  OUTLINED_FUNCTION_4_5(v14);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  OUTLINED_FUNCTION_0_14();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_21_20();
  v26 = v25;
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_24DF8BFF4(v17, &unk_27F1EAC90);
    v27 = v51;
    sub_24E343C98();
    v28 = sub_24E343F78();
    v29 = sub_24E348258();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      OUTLINED_FUNCTION_19_34(&dword_24DE53000, v31, v32, "ActionDispatcher was nil when trying to perform PlayerProfileAction from AChievement details page");
      MEMORY[0x253040EE0](v30, -1, -1);
    }

    (*(v52 + 8))(v27, v53);
  }

  else
  {
    v44 = v26;
    v45 = v20;
    v52 = *(v20 + 32);
    v53 = v0;
    (v52)(v26, v17, v18);
    v33 = v46;
    v34 = v49;

    sub_24E3471C8();
    *v13 = v48;
    *(v13 + 1) = v34;
    v13[16] = 0;
    v13[*(v33 + 28)] = 0;
    v35 = v45;
    (*(v45 + 16))(&v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v18);
    v36 = v50;
    sub_24E308F24(v13, v50, type metadata accessor for PlayerProfileAction);
    v37 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v38 = (v22 + *(v47 + 80) + v37) & ~*(v47 + 80);
    v39 = swift_allocObject();
    (v52)(v39 + v37, &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
    sub_24E308E54(v36, v39 + v38, type metadata accessor for PlayerProfileAction);
    v40 = v53;
    *(v39 + ((v10 + v38 + 7) & 0xFFFFFFFFFFFFFFF8)) = v53;
    v54[4] = sub_24E307988;
    v54[5] = v39;
    OUTLINED_FUNCTION_5_113();
    OUTLINED_FUNCTION_1_65(COERCE_DOUBLE(1107296256));
    v54[2] = v41;
    v54[3] = &block_descriptor_103;
    v42 = _Block_copy(v54);
    v43 = v40;

    [v43 dismissViewControllerAnimated:1 completion:v42];
    _Block_release(v42);
    sub_24E308F84(v13, type metadata accessor for PlayerProfileAction);
    (*(v45 + 8))(v44, v18);
  }

  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E3073D4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-1] - v5;
  v10[3] = type metadata accessor for PlayerProfileAction();
  v10[4] = sub_24E25817C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  sub_24E308F24(a2, boxed_opaque_existential_1, type metadata accessor for PlayerProfileAction);
  (*(v4 + 104))(v6, *MEMORY[0x277D21E18], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  sub_24E3473B8();

  (*(v4 + 8))(v6, v3);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

void sub_24E307590()
{

  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31AchievementDetailViewController_achievement);
}

id sub_24E3075F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AchievementDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24E3076B4()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (v8)
  {
    v9 = sub_24E347CB8();
  }

  else
  {
    v9 = 0;
  }

  v10 = v5[3];
  if (v10)
  {
    v11 = __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v12 = *(v10 - 8);
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_7_1();
    v15 = v14 - v13;
    (*(v12 + 16))(v14 - v13);
    v16 = sub_24E348BE8();
    (*(v12 + 8))(v15, v10);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    v16 = 0;
  }

  [v1 initWithTitle:v9 style:v7 target:v16 action:v3];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_18();
}

id sub_24E307820(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v9 = a3[3];
  if (v9)
  {
    v11 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v12 = *(v9 - 8);
    v13 = MEMORY[0x28223BE20](v11);
    v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    v16 = sub_24E348BE8();
    (*(v12 + 8))(v15, v9);
    __swift_destroy_boxed_opaque_existential_1(a3);
  }

  else
  {
    v16 = 0;
  }

  v17 = [v5 initWithImage:a1 style:a2 target:v16 action:a4];

  swift_unknownObjectRelease();
  return v17;
}

uint64_t sub_24E307988()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  OUTLINED_FUNCTION_6_15(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = type metadata accessor for PlayerProfileAction();
  OUTLINED_FUNCTION_6_15(v4);
  OUTLINED_FUNCTION_16_50();

  return sub_24E3073D4(v0 + v3, v0 + v5);
}

uint64_t block_copy_helper_103(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E307A88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  OUTLINED_FUNCTION_6_15(v1);
  OUTLINED_FUNCTION_16_50();
  v4 = v0 + v3;
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_24E306D68(v0 + v2, v5, v6);
}

uint64_t sub_24E307B1C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24E08452C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24E307B98(v6);
  return sub_24E348A58();
}

void sub_24E307B98(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_24E348B98();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_24E154E18(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_24E307EB4(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_24E307C78(0, v3, 1, a1);
  }
}

void sub_24E307C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_24E343368();
  MEMORY[0x28223BE20](v38);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v32 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v36 = (v10 + 8);
    v39 = v13;
    v14 = v13 + 8 * a3 - 8;
    v15 = a1 - a3;
    while (2)
    {
      v34 = v14;
      v35 = a3;
      v16 = *(v39 + 8 * a3);
      v33 = v15;
      v17 = v15;
      do
      {
        v18 = *v14;
        v19 = v16;
        v20 = v18;
        v21 = [v19 timestamp];
        if (!v21)
        {
          __break(1u);
LABEL_12:
          __break(1u);
LABEL_13:
          __break(1u);
          return;
        }

        v22 = v21;
        sub_24E343328();

        v23 = [v20 timestamp];
        if (!v23)
        {
          goto LABEL_12;
        }

        v24 = v23;
        v25 = v37;
        sub_24E343328();

        v40 = sub_24E3432F8();
        v26 = v17;
        v27 = *v36;
        v28 = v25;
        v29 = v38;
        (*v36)(v28, v38);
        v27(v12, v29);

        if ((v40 & 1) == 0)
        {
          break;
        }

        if (!v39)
        {
          goto LABEL_13;
        }

        v30 = *v14;
        v16 = *(v14 + 8);
        *v14 = v16;
        *(v14 + 8) = v30;
        v14 -= 8;
        ++v17;
      }

      while (v26 != -1);
      a3 = v35 + 1;
      v14 = v34 + 8;
      v15 = v33 - 1;
      if (v35 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }
}

void sub_24E307EB4(char **a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v134 = a1;
  v148 = sub_24E343368();
  MEMORY[0x28223BE20](v148);
  v145 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v131 - v8;
  MEMORY[0x28223BE20](v10);
  v138 = &v131 - v11;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v133 = &v131 - v14;
  MEMORY[0x28223BE20](v15);
  v142 = a3;
  v19 = a3[1];
  if (v19 >= 1)
  {
    v131 = a4;
    v132 = &v131 - v17;
    v137 = v18;
    v20 = 0;
    v147 = (v16 + 8);
    v21 = MEMORY[0x277D84F90];
    v22 = &selRef_setRequiresValidation_;
    while (1)
    {
      v23 = v20;
      v24 = v20 + 1;
      v135 = v23;
      if (v24 < v19)
      {
        v146 = v19;
        v25 = *v142;
        v144 = v24;
        v26 = *(v25 + 8 * v23);
        v27 = *(v25 + 8 * v24);
        v28 = v26;
        v29 = [v27 v22[459]];
        if (!v29)
        {
          goto LABEL_140;
        }

        v30 = v29;
        v31 = v23;
        v149 = v27;
        v32 = v132;
        sub_24E343328();

        v33 = [v28 v22[459]];
        if (!v33)
        {
          goto LABEL_141;
        }

        v34 = v33;
        v35 = v133;
        sub_24E343328();

        LODWORD(v141) = sub_24E3432F8();
        v36 = *v147;
        v37 = v35;
        v38 = v148;
        (*v147)(v37, v148);
        v139 = v36;
        (v36)(v32, v38);

        v136 = 8 * v31;
        a4 = v25 + 8 * v31 + 16;
        v39 = (v31 + 2);
        v24 = v144;
        v22 = &selRef_setRequiresValidation_;
        v40 = v146;
        v140 = v21;
        while (1)
        {
          v41 = v39;
          if (v24 + 1 >= v40)
          {
            break;
          }

          v144 = v24;
          v42 = *(a4 - 8);
          v43 = *a4;
          v44 = v42;
          v45 = [v43 v22[459]];
          if (!v45)
          {
            goto LABEL_135;
          }

          v46 = v45;
          v149 = v41;
          v47 = v137;
          sub_24E343328();

          v48 = [v44 v22[459]];
          if (!v48)
          {
            goto LABEL_134;
          }

          v49 = v48;
          v50 = v138;
          sub_24E343328();

          LODWORD(v49) = sub_24E3432F8() & 1;
          v51 = v50;
          v52 = v148;
          v53 = v139;
          (v139)(v51, v148);
          v53(v47, v52);

          a4 += 8;
          v24 = v144 + 1;
          v41 = v149;
          v39 = v149 + 1;
          v22 = &selRef_setRequiresValidation_;
          v21 = v140;
          v40 = v146;
          if ((v141 & 1) != v49)
          {
            goto LABEL_13;
          }
        }

        v24 = v40;
LABEL_13:
        if (v141)
        {
          v54 = v135;
          if (v24 < v135)
          {
            goto LABEL_127;
          }

          if (v135 < v24)
          {
            if (v40 >= v41)
            {
              v55 = v41;
            }

            else
            {
              v55 = v40;
            }

            v56 = 8 * v55 - 8;
            v57 = v24;
            v58 = v136;
            do
            {
              if (v54 != --v57)
              {
                v59 = *v142;
                if (!*v142)
                {
                  goto LABEL_138;
                }

                v60 = *(v59 + v58);
                *(v59 + v58) = *(v59 + v56);
                *(v59 + v56) = v60;
              }

              ++v54;
              v56 -= 8;
              v58 += 8;
            }

            while (v54 < v57);
          }
        }
      }

      v61 = v142[1];
      if (v24 < v61)
      {
        if (__OFSUB__(v24, v135))
        {
          goto LABEL_126;
        }

        if (v24 - v135 < v131)
        {
          v62 = v135 + v131;
          if (__OFADD__(v135, v131))
          {
            goto LABEL_128;
          }

          if (v62 >= v61)
          {
            v62 = v142[1];
          }

          if (v62 >= v135)
          {
            if (v24 == v62)
            {
              goto LABEL_43;
            }

            v140 = v21;
            v146 = *v142;
            v63 = v146 + 8 * v24 - 8;
            v64 = (v135 - v24);
            v136 = v62;
LABEL_33:
            v144 = v24;
            v65 = *(v146 + 8 * v24);
            v139 = v64;
            v66 = v64;
            v141 = v63;
            while (1)
            {
              v67 = *v63;
              v68 = v65;
              v69 = v67;
              v70 = [v68 v22[459]];
              if (!v70)
              {
                goto LABEL_132;
              }

              v71 = v70;
              sub_24E343328();

              v72 = [v69 v22[459]];
              if (!v72)
              {
                break;
              }

              v73 = v72;
              v149 = v68;
              a4 = v66;
              v74 = v145;
              sub_24E343328();

              LOBYTE(v73) = sub_24E3432F8();
              v75 = *v147;
              v76 = v74;
              v77 = v148;
              (*v147)(v76, v148);
              v75(v9, v77);

              if ((v73 & 1) == 0)
              {
                v22 = &selRef_setRequiresValidation_;
LABEL_41:
                v24 = v144 + 1;
                v63 = v141 + 8;
                v64 = v139 - 1;
                if (v144 + 1 == v136)
                {
                  v24 = v136;
                  v21 = v140;
                  goto LABEL_43;
                }

                goto LABEL_33;
              }

              if (!v146)
              {
                goto LABEL_133;
              }

              v78 = *v63;
              v65 = *(v63 + 8);
              *v63 = v65;
              *(v63 + 8) = v78;
              v63 -= 8;
              ++v66;
              v22 = &selRef_setRequiresValidation_;
              if (a4 == -1)
              {
                goto LABEL_41;
              }
            }

            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

LABEL_129:
          __break(1u);
LABEL_130:
          v21 = sub_24E081A20(v21);
          goto LABEL_97;
        }
      }

LABEL_43:
      if (v24 < v135)
      {
        goto LABEL_125;
      }

      v144 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E076FA4(0, *(v21 + 16) + 1, 1, v21);
        v21 = v121;
      }

      v80 = *(v21 + 16);
      v79 = *(v21 + 24);
      a4 = v80 + 1;
      v81 = v144;
      if (v80 >= v79 >> 1)
      {
        sub_24E076FA4(v79 > 1, v80 + 1, 1, v21);
        v81 = v144;
        v21 = v122;
      }

      *(v21 + 16) = a4;
      v82 = v21 + 32;
      v83 = (v21 + 32 + 16 * v80);
      *v83 = v135;
      v83[1] = v81;
      v149 = *v134;
      if (!v149)
      {
        goto LABEL_139;
      }

      if (v80)
      {
        break;
      }

LABEL_92:
      v19 = v142[1];
      v20 = v144;
      if (v144 >= v19)
      {
        goto LABEL_95;
      }
    }

    while (1)
    {
      v84 = a4 - 1;
      v85 = (v82 + 16 * (a4 - 1));
      v86 = (v21 + 16 * a4);
      if (a4 >= 4)
      {
        break;
      }

      if (a4 == 3)
      {
        v87 = *(v21 + 32);
        v88 = *(v21 + 40);
        v97 = __OFSUB__(v88, v87);
        v89 = v88 - v87;
        v90 = v97;
LABEL_63:
        if (v90)
        {
          goto LABEL_112;
        }

        v102 = *v86;
        v101 = v86[1];
        v103 = __OFSUB__(v101, v102);
        v104 = v101 - v102;
        v105 = v103;
        if (v103)
        {
          goto LABEL_115;
        }

        v106 = v85[1];
        v107 = v106 - *v85;
        if (__OFSUB__(v106, *v85))
        {
          goto LABEL_118;
        }

        if (__OFADD__(v104, v107))
        {
          goto LABEL_120;
        }

        if (v104 + v107 >= v89)
        {
          if (v89 < v107)
          {
            v84 = a4 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      if (a4 < 2)
      {
        goto LABEL_114;
      }

      v109 = *v86;
      v108 = v86[1];
      v97 = __OFSUB__(v108, v109);
      v104 = v108 - v109;
      v105 = v97;
LABEL_78:
      if (v105)
      {
        goto LABEL_117;
      }

      v111 = *v85;
      v110 = v85[1];
      v97 = __OFSUB__(v110, v111);
      v112 = v110 - v111;
      if (v97)
      {
        goto LABEL_119;
      }

      if (v112 < v104)
      {
        goto LABEL_92;
      }

LABEL_85:
      if (v84 - 1 >= a4)
      {
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
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
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      if (!*v142)
      {
        goto LABEL_136;
      }

      v116 = v21;
      a4 = v82 + 16 * (v84 - 1);
      v117 = *a4;
      v118 = v82 + 16 * v84;
      v21 = *(v118 + 8);
      v119 = v143;
      sub_24E308838((*v142 + 8 * *a4), (*v142 + 8 * *v118), (*v142 + 8 * v21), v149);
      v143 = v119;
      if (v119)
      {
        goto LABEL_105;
      }

      if (v21 < v117)
      {
        goto LABEL_107;
      }

      v120 = *(v116 + 16);
      if (v84 > v120)
      {
        goto LABEL_108;
      }

      *a4 = v117;
      *(a4 + 8) = v21;
      if (v84 >= v120)
      {
        goto LABEL_109;
      }

      a4 = v120 - 1;
      sub_24E081A34((v118 + 16), v120 - 1 - v84, (v82 + 16 * v84));
      v21 = v116;
      *(v116 + 16) = v120 - 1;
      v22 = &selRef_setRequiresValidation_;
      if (v120 <= 2)
      {
        goto LABEL_92;
      }
    }

    v91 = v82 + 16 * a4;
    v92 = *(v91 - 64);
    v93 = *(v91 - 56);
    v97 = __OFSUB__(v93, v92);
    v94 = v93 - v92;
    if (v97)
    {
      goto LABEL_110;
    }

    v96 = *(v91 - 48);
    v95 = *(v91 - 40);
    v97 = __OFSUB__(v95, v96);
    v89 = v95 - v96;
    v90 = v97;
    if (v97)
    {
      goto LABEL_111;
    }

    v98 = v86[1];
    v99 = v98 - *v86;
    if (__OFSUB__(v98, *v86))
    {
      goto LABEL_113;
    }

    v97 = __OFADD__(v89, v99);
    v100 = v89 + v99;
    if (v97)
    {
      goto LABEL_116;
    }

    if (v100 >= v94)
    {
      v114 = *v85;
      v113 = v85[1];
      v97 = __OFSUB__(v113, v114);
      v115 = v113 - v114;
      if (v97)
      {
        goto LABEL_124;
      }

      if (v89 < v115)
      {
        v84 = a4 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_63;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_95:
  a4 = *v134;
  if (!*v134)
  {
LABEL_142:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_130;
  }

LABEL_97:
  v124 = (v21 + 16);
  v123 = *(v21 + 16);
  while (v123 >= 2)
  {
    if (!*v142)
    {
      goto LABEL_137;
    }

    v125 = v21;
    v21 += 16 * v123;
    v126 = *v21;
    v127 = &v124[2 * v123];
    v128 = *(v127 + 1);
    v129 = v143;
    sub_24E308838((*v142 + 8 * *v21), (*v142 + 8 * *v127), (*v142 + 8 * v128), a4);
    v143 = v129;
    if (v129)
    {
      break;
    }

    if (v128 < v126)
    {
      goto LABEL_121;
    }

    if (v123 - 2 >= *v124)
    {
      goto LABEL_122;
    }

    *v21 = v126;
    *(v21 + 8) = v128;
    v130 = *v124 - v123;
    if (*v124 < v123)
    {
      goto LABEL_123;
    }

    v123 = *v124 - 1;
    sub_24E081A34(v127 + 16, v130, v127);
    *v124 = v123;
    v21 = v125;
  }

LABEL_105:
}