uint64_t sub_24A882910(uint64_t result, int a2, int a3)
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

void *FMNAuthenticationProvider.init()()
{
  v1 = v0;
  v2 = sub_24A8BB404();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_24A8BB104();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_24A8BB414();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[2] = 1;
  v17[0] = sub_24A882CB8(0, &unk_2814AB010, 0x277D85C78);
  (*(v7 + 104))(v10, *MEMORY[0x277D85268], v6);
  sub_24A8BB0F4();
  v17[1] = MEMORY[0x277D84F90];
  sub_24A882D00(&unk_2814AB020, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF794A0, &unk_24A8BC9E0);
  sub_24A882D48(&qword_2814AB030, &unk_27EF794A0, &unk_24A8BC9E0);
  sub_24A8BB4E4();
  v0[3] = sub_24A8BB444();
  v11 = [objc_opt_self() mainBundle];
  v12 = [v11 bundleIdentifier];

  if (v12)
  {
    v13 = sub_24A8BB254();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v1[4] = v13;
  v1[5] = v15;
  v1[6] = 0;
  v1[7] = 0;
  sub_24A8BB3D4();
  if (qword_2814AB038 != -1)
  {
    swift_once();
  }

  sub_24A8BB0B4();
  return v1;
}

uint64_t sub_24A882CB8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_24A882D00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A882D48(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A882D9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A882DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_24A882E60();
  result = sub_24A8BB474();
  *a4 = result;
  return result;
}

unint64_t sub_24A882E60()
{
  result = qword_2814AB000;
  if (!qword_2814AB000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814AB000);
  }

  return result;
}

uint64_t sub_24A882EAC(uint64_t a1, int a2)
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

uint64_t FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v34 = a4;
  v35 = a1;
  v36 = a2;
  v33 = sub_24A8BB414();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v33);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A8BB404();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = sub_24A8BB104();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = *a3;
  v16 = a3[1];
  v17 = a3[3];
  v31 = a3[2];
  v32 = v15;
  v29 = v17;
  v30 = v16;
  *(v4 + 32) = 0;
  sub_24A882CB8(0, &unk_2814AB010, 0x277D85C78);
  sub_24A8BB0F4();
  v37 = MEMORY[0x277D84F90];
  sub_24A8831E4(&unk_2814AB020, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF794A0, &unk_24A8BC9E0);
  sub_24A88322C();
  sub_24A8BB4E4();
  (*(v7 + 104))(v10, *MEMORY[0x277D85260], v33);
  v19 = v29;
  v18 = v30;
  v20 = v31;
  v21 = sub_24A8BB444();
  v22 = v32;
  v23 = v34;
  v24 = v35;
  *(v5 + 40) = v21;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  v25 = v36;
  *(v5 + 16) = v24;
  *(v5 + 24) = v25;
  *(v5 + 96) = 0;
  *(v5 + 104) = v22;
  *(v5 + 112) = v18;
  *(v5 + 120) = v20;
  *(v5 + 128) = v19;
  if (v23)
  {
    *(v5 + 136) = v23;
  }

  else
  {
    type metadata accessor for FMNURLSessionFactory();
    v26 = swift_allocObject();
    v26[2] = sub_24A8A3F30;
    v26[3] = 0;
    v26[4] = v22;
    v26[5] = v18;
    v26[6] = v20;
    v26[7] = v19;
    *(v5 + 136) = v26;
    sub_24A883290(v22, v18);
  }

  return v5;
}

uint64_t sub_24A8831E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24A88322C()
{
  result = qword_2814AB030;
  if (!qword_2814AB030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF794A0, &unk_24A8BC9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AB030);
  }

  return result;
}

uint64_t sub_24A883290(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t type metadata accessor for FMNHTTPRequest()
{
  result = qword_2814AAB98;
  if (!qword_2814AAB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A883320()
{
  result = sub_24A8BAF24();
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

uint64_t sub_24A8833C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v55 = (&v53 - v11);
  v12 = sub_24A8BAF24();
  v59 = *(v12 - 8);
  v60 = v12;
  v13 = *(v59 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v58 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v53 - v16;
  sub_24A886914(a1, v84);
  sub_24A886914(a2, &v85);
  sub_24A883EEC(v84, v82, &qword_27EF79140, &unk_24A8BD730);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  sub_24A886914(v82, v80);
  sub_24A886914(v83, v81);
  sub_24A883EEC(v80, &v67, &qword_27EF79140, &unk_24A8BD730);
  sub_24A883B44(&v67, v77);
  sub_24A883B44(v70, v76);

  v18 = sub_24A886978(v77);
  sub_24A886B10(v18, v75);
  v19 = v5[5];
  v65 = v5;
  v66 = v18;
  v62 = v18;
  type metadata accessor for FMNHttpClient();
  sub_24A8BB424();
  v56 = 0;
  v20 = v67;
  sub_24A886914(v80, v73);
  sub_24A886914(v81, &v74);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79148, &unk_24A8BD740);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_24A8BB1D4();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_24A88F874;
  *(v25 + 24) = v17;

  sub_24A8BB184();

  v26 = swift_allocObject();
  *(v26 + 16) = sub_24A88F874;
  *(v26 + 24) = v17;

  sub_24A8BB194();

  v27 = v5[2];
  v28 = v5[3];
  sub_24A883EEC(v73, &v69, &qword_27EF79140, &unk_24A8BD730);
  v29 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
  swift_beginAccess();
  v64 = v20;
  sub_24A883EEC(v20 + v29, &v71, &qword_27EF79120, &qword_24A8BC960);
  sub_24A883EEC(v75, v72, &qword_27EF79118, &unk_24A8BD720);
  swift_unknownObjectWeakInit();
  *(&v67 + 1) = v27;
  v68 = v28;
  swift_weakInit();
  v72[8] = 0;
  swift_unknownObjectRetain();
  v63 = v17;
  v30 = sub_24A8887E8(sub_24A88F874, v17, v24);
  sub_24A886D90(&v67, &qword_27EF79150, &unk_24A8BD750);
  sub_24A886D90(v73, &qword_27EF79140, &unk_24A8BD730);
  v31 = swift_allocObject();
  v31[2] = v5;
  v31[3] = v30;
  v31[4] = v24;
  v32 = v78;
  v33 = v79;
  __swift_project_boxed_opaque_existential_1(v77, v78);
  v34 = *(v33 + 16);
  v61 = v24;

  v35 = v30;

  v36 = v58;
  v37 = v33;
  v38 = v59;
  v34(v32, v37);
  v39 = v57;
  v40 = v60;
  sub_24A888D88(v36, v75, v57);
  v41 = *(v38 + 8);
  v41(v36, v40);
  v42 = v56;
  sub_24A889A4C(v76, v39, sub_24A88EF80, v31);
  if (v42)
  {
    v41(v39, v40);
    sub_24A8BB3C4();
    sub_24A882E60();
    v43 = sub_24A8BB464();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v44 = v35;
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_24A8BC300;
    swift_getErrorValue();
    v46 = sub_24A8BB8D4();
    v48 = v47;
    *(v45 + 56) = MEMORY[0x277D837D0];
    *(v45 + 64) = sub_24A8897F0();
    *(v45 + 32) = v46;
    *(v45 + 40) = v48;
    sub_24A8BB0B4();

    v49 = v55;
    *v55 = v42;
    swift_storeEnumTagMultiPayload();
    v50 = v42;
    sub_24A8BB3D4();
    v51 = sub_24A8BB464();
    sub_24A8BB0B4();

    sub_24A88F02C(v49, v44, v61);

    sub_24A886D90(v49, &qword_27EF79110, &qword_24A8BDC50);
  }

  else
  {

    v41(v39, v40);
  }

  sub_24A886D90(v75, &qword_27EF79118, &unk_24A8BD720);
  __swift_destroy_boxed_opaque_existential_0Tm(v76);
  sub_24A886D90(v80, &qword_27EF79140, &unk_24A8BD730);
  sub_24A886D90(v84, &qword_27EF79140, &unk_24A8BD730);
  __swift_destroy_boxed_opaque_existential_0Tm(v77);
  __swift_destroy_boxed_opaque_existential_0Tm(v83);
  return __swift_destroy_boxed_opaque_existential_0Tm(v82);
}

uint64_t sub_24A883B44(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24A883B5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A883BC0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A883BF8()
{
  sub_24A883CB0();
  if (v0 <= 0x3F)
  {
    sub_24A883D2C(319, &qword_2814AAD50, type metadata accessor for FMNServerInteractionController.InternalServerMetadata);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24A883CB0()
{
  if (!qword_2814AABC8)
  {
    v0 = sub_24A8BB214();
    if (!v1)
    {
      atomic_store(v0, &qword_2814AABC8);
    }
  }
}

void sub_24A883D2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24A8BB484();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24A883D80()
{
  sub_24A8BB174();
  if (v0 <= 0x3F)
  {
    sub_24A883D2C(319, &qword_2814AAFE8, MEMORY[0x277CC95F0]);
    if (v1 <= 0x3F)
    {
      sub_24A883E70(319, &qword_2814AABB8);
      if (v2 <= 0x3F)
      {
        sub_24A883E70(319, &qword_2814AABA8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24A883E70(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24A8BB484();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_24A883EEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24A883F54(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A8BB0D4();
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24A8BB104();
  v12 = *(v25 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v25);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_24A8BB3D4();
  if (qword_2814AB038 != -1)
  {
    swift_once();
  }

  v17 = MEMORY[0x277D84F90];
  sub_24A8BB0B4();
  v18 = *(v4 + 24);
  if (*(v4 + 56))
  {
    v19 = swift_allocObject();
    v19[2] = a2;
    v19[3] = a3;
    v19[4] = v4;
    v32 = sub_24A890F3C;
    v33 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v20 = &block_descriptor_6;
  }

  else
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v4;
    *(v21 + 24) = a2;
    *(v21 + 32) = a3;
    *(v21 + 40) = v16;
    v32 = sub_24A887C44;
    v33 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v20 = &block_descriptor_1;
  }

  v30 = sub_24A8875B4;
  v31 = v20;
  v22 = _Block_copy(&aBlock);

  sub_24A8BB0F4();
  v27 = v17;
  sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D48(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v15, v11, v22);
  _Block_release(v22);
  (*(v26 + 8))(v11, v8);
  (*(v12 + 8))(v15, v25);
}

uint64_t sub_24A884344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  *(v10 + 24) = a6;

  sub_24A8833C4(a1, a2, sub_24A88FD28, v10);
}

uint64_t sub_24A884424@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 56);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A8844D8()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
LABEL_5:
    v5 = v1;
    return v2;
  }

  v3 = [objc_opt_self() defaultStore];
  if (v3)
  {
    v4 = *(v0 + 48);
    *(v0 + 48) = v3;
    v2 = v3;

    v1 = 0;
    goto LABEL_5;
  }

  result = sub_24A8BB5E4();
  __break(1u);
  return result;
}

uint64_t sub_24A884608(void *a1, unsigned __int8 *a2)
{
  v149 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v146 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v145 = &v143 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v144 = &v143 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v143 = &v143 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v143 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v143 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v143 - v19;
  v21 = sub_24A8BAFC4();
  v147 = *(v21 - 8);
  v148 = v21;
  v22 = *(v147 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v143 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v143 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v143 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v143 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v143 - v37;
  MEMORY[0x28223BE20](v36);
  v41 = &v143 - v40;
  v42 = *a2;
  result = 0;
  switch(v42)
  {
    case 1:
      v76 = v149;
      v60 = [v149 aa_fmfAccount];
      v77 = sub_24A8844D8();
      v62 = [v77 credentialForAccount_];

      v78 = [v76 dataclassProperties];
      if (!v78)
      {
        goto LABEL_160;
      }

      v79 = v78;
      v80 = *MEMORY[0x277CB91A0];
      *&v151 = sub_24A8BB254();
      *(&v151 + 1) = v81;
      v82 = [v79 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v82)
      {
        sub_24A8BB4D4();
        swift_unknownObjectRelease();
      }

      else
      {
        v151 = 0u;
        v152 = 0u;
      }

      v153 = v151;
      v154 = v152;
      if (!*(&v152 + 1))
      {
        goto LABEL_128;
      }

      sub_24A882CB8(0, &unk_2814AACC0, 0x277CBEAC0);
      if (swift_dynamicCast())
      {
        v118 = v150;
        *&v151 = 0x6E74736F48707061;
        *(&v151 + 1) = 0xEB00000000656D61;
        v119 = [v150 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v119)
        {
          sub_24A8BB4D4();

          swift_unknownObjectRelease();
        }

        else
        {

          v151 = 0u;
          v152 = 0u;
        }

        v153 = v151;
        v154 = v152;
        if (*(&v152 + 1))
        {
          swift_dynamicCast();
        }

        else
        {
LABEL_128:
          sub_24A886D90(&v153, &qword_27EF79078, &qword_24A8BC4B0);
        }
      }

      if (!v62)
      {
        goto LABEL_153;
      }

      v139 = [v62 credentialItemForKey_];
      if (!v139)
      {
        goto LABEL_152;
      }

      goto LABEL_145;
    case 2:
      v83 = v149;
      v60 = [v149 aa_fmipAccount];
      v84 = sub_24A8844D8();
      v62 = [v84 credentialForAccount_];

      v85 = [v83 dataclassProperties];
      if (!v85)
      {
        goto LABEL_161;
      }

      v86 = v85;
      v87 = *MEMORY[0x277CB9128];
      *&v151 = sub_24A8BB254();
      *(&v151 + 1) = v88;
      v89 = [v86 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v89)
      {
        sub_24A8BB4D4();
        swift_unknownObjectRelease();
      }

      else
      {
        v151 = 0u;
        v152 = 0u;
      }

      v153 = v151;
      v154 = v152;
      if (*(&v152 + 1))
      {
        sub_24A882CB8(0, &unk_2814AACC0, 0x277CBEAC0);
        if (swift_dynamicCast())
        {
          v120 = v150;
          *&v153 = 0x656D616E74736F68;
          *(&v153 + 1) = 0xE800000000000000;
          v121 = [v150 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v121)
          {
            sub_24A8BB4D4();
            swift_unknownObjectRelease();
          }

          else
          {
            v151 = 0u;
            v152 = 0u;
          }

          v153 = v151;
          v154 = v152;
          if (*(&v152 + 1))
          {
            swift_dynamicCast();
          }

          else
          {
            sub_24A886D90(&v153, &qword_27EF79078, &qword_24A8BC4B0);
          }

          *&v151 = 0x6E74736F48707061;
          *(&v151 + 1) = 0xEB00000000656D61;
          v140 = [v120 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v140)
          {
            sub_24A8BB4D4();

            swift_unknownObjectRelease();
          }

          else
          {

            v151 = 0u;
            v152 = 0u;
          }

          v153 = v151;
          v154 = v152;
          if (*(&v152 + 1))
          {
            if (swift_dynamicCast())
            {
            }
          }

          else
          {
            sub_24A886D90(&v153, &qword_27EF79078, &qword_24A8BC4B0);
          }
        }
      }

      else
      {
        sub_24A886D90(&v153, &qword_27EF79078, &qword_24A8BC4B0);
      }

      if (!v62)
      {
        goto LABEL_153;
      }

      v139 = [v62 credentialItemForKey_];
      if (v139)
      {
        goto LABEL_145;
      }

      goto LABEL_152;
    case 3:
      v59 = v149;
      v60 = [v149 aa_fmipAccount];
      v61 = sub_24A8844D8();
      v62 = [v61 credentialForAccount_];

      v63 = [v59 dataclassProperties];
      if (!v63)
      {
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
        JUMPOUT(0x24A88613CLL);
      }

      v64 = v63;
      v65 = *MEMORY[0x277CB9128];
      *&v151 = sub_24A8BB254();
      *(&v151 + 1) = v66;
      v67 = [v64 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v67)
      {
        sub_24A8BB4D4();
        swift_unknownObjectRelease();
      }

      else
      {
        v151 = 0u;
        v152 = 0u;
      }

      v153 = v151;
      v154 = v152;
      if (*(&v152 + 1))
      {
        sub_24A882CB8(0, &unk_2814AACC0, 0x277CBEAC0);
        if (swift_dynamicCast())
        {
          v116 = v150;
          *&v153 = 0x656D616E74736F68;
          *(&v153 + 1) = 0xE800000000000000;
          v117 = [v150 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v117)
          {
            sub_24A8BB4D4();
            swift_unknownObjectRelease();
          }

          else
          {
            v151 = 0u;
            v152 = 0u;
          }

          v153 = v151;
          v154 = v152;
          if (*(&v152 + 1))
          {
            swift_dynamicCast();
          }

          else
          {
            sub_24A886D90(&v153, &qword_27EF79078, &qword_24A8BC4B0);
          }

          *&v151 = 0x6E74736F48707061;
          *(&v151 + 1) = 0xEB00000000656D61;
          v138 = [v116 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v138)
          {
            sub_24A8BB4D4();

            swift_unknownObjectRelease();
          }

          else
          {

            v151 = 0u;
            v152 = 0u;
          }

          v153 = v151;
          v154 = v152;
          if (*(&v152 + 1))
          {
            if (swift_dynamicCast())
            {
            }
          }

          else
          {
            sub_24A886D90(&v153, &qword_27EF79078, &qword_24A8BC4B0);
          }
        }
      }

      else
      {
        sub_24A886D90(&v153, &qword_27EF79078, &qword_24A8BC4B0);
      }

      if (!v62)
      {
        goto LABEL_153;
      }

      v139 = [v62 credentialItemForKey_];
      if (!v139)
      {
        goto LABEL_152;
      }

      goto LABEL_145;
    case 4:
      v97 = v149;
      v98 = [v149 credential];
      v99 = v98;
      if (v98 && (v100 = [v98 credentialItemForKey_]) != 0)
      {
        v101 = v100;
        v58 = sub_24A8BB254();
      }

      else
      {
        v58 = 0;
      }

      sub_24A89C284(v97);

      return v58;
    case 5:
    case 11:
    case 13:
      v44 = [v149 credential];
      if (!v44)
      {
        goto LABEL_38;
      }

      v45 = v44;
      v46 = [v44 credentialItemForKey_];
      if (v46)
      {
        v47 = v46;
        v48 = sub_24A8BB254();
      }

      else
      {
        v48 = 0;
      }

      type metadata accessor for FMNAuthenticationProvider();
      LOBYTE(v153) = v42;
      static FMNAuthenticationProvider.configurationURL(accountType:)(&v153, v18);
      v115 = v147;
      v114 = v148;
      if ((*(v147 + 48))(v18, 1, v148) == 1)
      {
        sub_24A886D90(v18, &qword_27EF79180, &qword_24A8BC9F0);
        sub_24A8BB3C4();
        if (qword_2814AB038 != -1)
        {
          swift_once();
        }

        sub_24A8BB0B4();
      }

      else
      {
        (*(v115 + 32))(v38, v18, v114);
        sub_24A8BAFA4();

        (*(v115 + 8))(v38, v114);
      }

      return v48;
    case 6:
      v71 = [v149 credential];
      if (!v71)
      {
        goto LABEL_38;
      }

      v72 = v71;
      v73 = [v71 credentialItemForKey_];
      if (v73)
      {
        v74 = v73;
        v75 = sub_24A8BB254();
      }

      else
      {
        v75 = 0;
      }

      v133 = v147;
      v132 = v148;
      type metadata accessor for FMNAuthenticationProvider();
      LOBYTE(v153) = 6;
      static FMNAuthenticationProvider.configurationURL(accountType:)(&v153, v15);
      if ((*(v133 + 48))(v15, 1, v132) == 1)
      {
        sub_24A886D90(v15, &qword_27EF79180, &qword_24A8BC9F0);
        sub_24A8BB3C4();
        if (qword_2814AB038 != -1)
        {
          swift_once();
        }

        sub_24A8BB0B4();
      }

      else
      {
        (*(v133 + 32))(v35, v15, v132);
        sub_24A8BAFA4();

        (*(v133 + 8))(v35, v132);
      }

      return v75;
    case 7:
      v111 = [v149 credential];
      if (!v111)
      {
        goto LABEL_38;
      }

      v50 = v111;
      v112 = [v111 credentialItemForKey_];
      if (v112)
      {
        v113 = v112;
        v53 = sub_24A8BB254();
      }

      else
      {
        v53 = 0;
      }

      v136 = v147;
      v135 = v148;
      type metadata accessor for FMNAuthenticationProvider();
      LOBYTE(v153) = 7;
      v137 = v143;
      static FMNAuthenticationProvider.configurationURL(accountType:)(&v153, v143);
      if ((*(v136 + 48))(v137, 1, v135) != 1)
      {
        (*(v136 + 32))(v32, v137, v135);
        sub_24A8BAFA4();

        (*(v136 + 8))(v32, v135);
        return v53;
      }

      sub_24A886D90(v137, &qword_27EF79180, &qword_24A8BC9F0);
      sub_24A8BB3C4();
      if (qword_2814AB038 != -1)
      {
        goto LABEL_155;
      }

      goto LABEL_78;
    case 8:
      v54 = [v149 credential];
      if (!v54)
      {
        goto LABEL_38;
      }

      v55 = v54;
      v56 = [v54 credentialItemForKey_];
      if (v56)
      {
        v57 = v56;
        v58 = sub_24A8BB254();
      }

      else
      {
        v58 = 0;
      }

      v127 = v147;
      v126 = v148;
      v128 = v144;
      type metadata accessor for FMNAuthenticationProvider();
      LOBYTE(v153) = 8;
      static FMNAuthenticationProvider.configurationURL(accountType:)(&v153, v128);
      if ((*(v127 + 48))(v128, 1, v126) != 1)
      {
        (*(v127 + 32))(v29, v128, v126);
        sub_24A8BAFA4();

        (*(v127 + 8))(v29, v126);
        return v58;
      }

      sub_24A886D90(v128, &qword_27EF79180, &qword_24A8BC9F0);
      sub_24A8BB3C4();
      if (qword_2814AB038 != -1)
      {
        goto LABEL_156;
      }

      goto LABEL_83;
    case 9:
      v68 = [v149 credential];
      if (!v68)
      {
        goto LABEL_38;
      }

      v55 = v68;
      v69 = [v68 credentialItemForKey_];
      if (v69)
      {
        v70 = v69;
        v58 = sub_24A8BB254();
      }

      else
      {
        v58 = 0;
      }

      v130 = v147;
      v129 = v148;
      v131 = v145;
      type metadata accessor for FMNAuthenticationProvider();
      LOBYTE(v153) = 9;
      static FMNAuthenticationProvider.configurationURL(accountType:)(&v153, v131);
      if ((*(v130 + 48))(v131, 1, v129) == 1)
      {
        sub_24A886D90(v131, &qword_27EF79180, &qword_24A8BC9F0);
        sub_24A8BB3C4();
        if (qword_2814AB038 != -1)
        {
LABEL_156:
          swift_once();
        }

LABEL_83:
        sub_24A8BB0B4();
      }

      else
      {
        (*(v130 + 32))(v26, v131, v129);
        sub_24A8BAFA4();

        (*(v130 + 8))(v26, v129);
      }

      return v58;
    case 10:
      v102 = v39;
      v103 = [v149 aa_fmipAccount];
      v104 = sub_24A8844D8();
      v105 = [v104 credentialForAccount_];

      if (v105)
      {
        v106 = [v105 credentialItemForKey_];
        v108 = v147;
        v107 = v148;
        if (v106)
        {
          v109 = v106;
          v110 = sub_24A8BB254();
        }

        else
        {
          v110 = 0;
        }
      }

      else
      {
        v110 = 0;
        v108 = v147;
        v107 = v148;
      }

      type metadata accessor for FMNAuthenticationProvider();
      LOBYTE(v153) = 10;
      v134 = v146;
      static FMNAuthenticationProvider.configurationURL(accountType:)(&v153, v146);
      if ((*(v108 + 48))(v134, 1, v107) == 1)
      {
        sub_24A886D90(v134, &qword_27EF79180, &qword_24A8BC9F0);
        sub_24A8BB3C4();
        if (qword_2814AB038 != -1)
        {
          swift_once();
        }

        sub_24A8BB0B4();
      }

      else
      {
        (*(v108 + 32))(v102, v134, v107);
        sub_24A8BAFA4();

        (*(v108 + 8))(v102, v107);
      }

      return v110;
    case 12:
      v49 = [v149 credential];
      if (v49)
      {
        v50 = v49;
        v51 = [v49 credentialItemForKey_];
        if (v51)
        {
          v52 = v51;
          v53 = sub_24A8BB254();
        }

        else
        {
          v53 = 0;
        }

        v125 = v147;
        v124 = v148;
        type metadata accessor for FMNAuthenticationProvider();
        LOBYTE(v153) = 12;
        static FMNAuthenticationProvider.configurationURL(accountType:)(&v153, v20);
        if ((*(v125 + 48))(v20, 1, v124) == 1)
        {
          sub_24A886D90(v20, &qword_27EF79180, &qword_24A8BC9F0);
          sub_24A8BB3C4();
          if (qword_2814AB038 != -1)
          {
LABEL_155:
            swift_once();
          }

LABEL_78:
          sub_24A8BB0B4();
        }

        else
        {
          (*(v125 + 32))(v41, v20, v124);
          sub_24A8BAFA4();

          (*(v125 + 8))(v41, v124);
        }

        return v53;
      }

      else
      {
LABEL_38:
        sub_24A8BB3C4();
        if (qword_2814AB038 != -1)
        {
          swift_once();
        }

        sub_24A8BB0B4();
        return 0;
      }

    case 14:
      return result;
    default:
      v90 = v149;
      v60 = [v149 aa_fmfAccount];
      v91 = sub_24A8844D8();
      v62 = [v91 credentialForAccount_];

      v92 = [v90 dataclassProperties];
      if (!v92)
      {
        goto LABEL_162;
      }

      v93 = v92;
      v94 = *MEMORY[0x277CB91A0];
      *&v151 = sub_24A8BB254();
      *(&v151 + 1) = v95;
      v96 = [v93 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v96)
      {
        sub_24A8BB4D4();
        swift_unknownObjectRelease();
      }

      else
      {
        v151 = 0u;
        v152 = 0u;
      }

      v153 = v151;
      v154 = v152;
      if (!*(&v152 + 1))
      {
        goto LABEL_149;
      }

      sub_24A882CB8(0, &unk_2814AACC0, 0x277CBEAC0);
      if (swift_dynamicCast())
      {
        v122 = v150;
        *&v151 = 0x6E74736F48707061;
        *(&v151 + 1) = 0xEB00000000656D61;
        v123 = [v150 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v123)
        {
          sub_24A8BB4D4();

          swift_unknownObjectRelease();
        }

        else
        {

          v151 = 0u;
          v152 = 0u;
        }

        v153 = v151;
        v154 = v152;
        if (*(&v152 + 1))
        {
          swift_dynamicCast();
        }

        else
        {
LABEL_149:
          sub_24A886D90(&v153, &qword_27EF79078, &qword_24A8BC4B0);
        }
      }

      if (v62)
      {
        v139 = [v62 credentialItemForKey_];
        if (v139)
        {
LABEL_145:
          v141 = v139;
          v142 = sub_24A8BB254();

          return v142;
        }

LABEL_152:
      }

      else
      {
LABEL_153:
      }

      return 0;
  }
}

NSObject *sub_24A886178(char *a1)
{
  v3 = v1;
  v31 = sub_24A8BB124();
  v29 = *(v31 - 8);
  v5 = *(v29 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - v9;
  v11 = *a1;
  sub_24A882E60();
  v12 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4();

  v13 = dispatch_group_create();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  dispatch_group_enter(v13);
  if (*(v3 + 16))
  {
    v26[0] = v14 + 16;
    v26[1] = v2;
    v15 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v30[0] = v11;
    v16 = swift_allocObject();
    *(v16 + 16) = v11;
    *(v16 + 24) = v13;
    *(v16 + 32) = v14;
    v17 = v10;
    v18 = *(v15 + 8);
    v19 = v13;
    v28 = v14;
    v20 = v19;

    swift_unknownObjectRetain();
    v18(v30, sub_24A887E38, v16, ObjectType, v15);

    sub_24A8BB114();
    sub_24A8BB144();
    v21 = *(v29 + 8);
    v22 = v31;
    v21(v8, v31);
    v13 = v20;
    if ((sub_24A8BB3E4() & 1) == 0)
    {
      v21(v17, v22);
      swift_unknownObjectRelease();

      swift_beginAccess();
      v13 = *(v28 + 16);

      return v13;
    }

    sub_24A899560();
    swift_allocError();
    *v23 = 4;
    swift_willThrow();

    swift_unknownObjectRelease();
    v21(v17, v22);
  }

  else
  {
    sub_24A899560();
    swift_allocError();
    *v24 = 6;
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_24A8864BC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A8864F4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_24A886534(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a2;
  v28 = a1;
  v4 = sub_24A8BB404();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A8BB104();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_24A8BB414();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v2[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_authenticationChallengeHandler];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v2[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_bundleIdentifierFallback];
  *v15 = 0xD00000000000001ELL;
  *(v15 + 1) = 0x800000024A8C0890;
  *&v2[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_httpSuccessCodeMin] = 200;
  *&v2[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_httpSuccessCodeMax] = 299;
  v16 = &v2[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential];
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  *&v2[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_statusCodeHandlers] = MEMORY[0x277D84F98];
  v25 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_statusCodeHandlerQueue;
  v24 = sub_24A882CB8(0, &unk_2814AB010, 0x277D85C78);
  (*(v10 + 104))(v13, *MEMORY[0x277D85268], v9);
  sub_24A8BB0F4();
  v30 = MEMORY[0x277D84F90];
  sub_24A8870CC(&unk_2814AB020, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF794A0, &unk_24A8BC9E0);
  sub_24A882D9C(&qword_2814AB030, &unk_27EF794A0, &unk_24A8BC9E0);
  sub_24A8BB4E4();
  *&v2[v25] = sub_24A8BB444();
  v17 = &v2[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_session];
  *(v17 + 4) = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v18 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_sessionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF794B0, &unk_24A8BDC90);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *&v2[v18] = v19;
  *&v2[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_urlSessionFactory] = v27;
  swift_beginAccess();

  v20 = v28;
  sub_24A888528(v28, v16);
  swift_endAccess();
  v21 = type metadata accessor for FMNHttpClient();
  v29.receiver = v3;
  v29.super_class = v21;
  v22 = objc_msgSendSuper2(&v29, sel_init);
  sub_24A886D90(v20, &qword_27EF79120, &qword_24A8BC960);
  return v22;
}

uint64_t sub_24A886914(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

NSObject *sub_24A886978(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 8))(v4, v1, v2);
  return sub_24A886178(v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double sub_24A886B10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    swift_beginAccess();
    sub_24A883EEC(v2 + 48, &v13, &qword_27EF79118, &unk_24A8BD720);
    if (v13)
    {
      sub_24A887424(&v13, &v10);

      sub_24A886D90(&v13, &qword_27EF79118, &unk_24A8BD720);
      sub_24A886914(&v10 + 8, v9);
      sub_24A887480(&v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79138, qword_24A8BEB70);
      type metadata accessor for FMNAuthenticationCredential();
      if (swift_dynamicCast())
      {
        v5 = _s12FMNetworking27FMNAuthenticationCredentialC2eeoiySbAC_ACtFZ_0(v13, a1);

        if (v5)
        {

          sub_24A883EEC(v2 + 48, a2, &qword_27EF79118, &unk_24A8BD720);
          return result;
        }
      }
    }

    else
    {

      sub_24A886D90(&v13, &qword_27EF79118, &unk_24A8BD720);
    }

    v11 = type metadata accessor for FMNAuthenticationCredential();
    v12 = &protocol witness table for FMNAuthenticationCredential;
    *&v10 = a1;

    sub_24A886E38(&v10, &v13);
    sub_24A883EEC(&v13, &v10, &qword_27EF79118, &unk_24A8BD720);
    if (v10)
    {
      FMNRedirectHostStore.clearRedirectedHostKeychainItemsIfNeeded()();

      sub_24A887480(&v10);
    }

    else
    {

      sub_24A886D90(&v10, &qword_27EF79118, &unk_24A8BD720);
    }
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
  }

  sub_24A883EEC(&v13, &v10, &qword_27EF79118, &unk_24A8BD720);
  swift_beginAccess();
  sub_24A8874D4(&v10, v2 + 48, &qword_27EF79118, &unk_24A8BD720);
  swift_endAccess();
  result = *&v13;
  v7 = v14;
  v8 = v15;
  *a2 = v13;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 48) = v16;
  return result;
}

uint64_t sub_24A886D90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24A886DF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24A886E38@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  v20 = a1;
  v2 = sub_24A8BB404();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_24A8BB104();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_24A8BB414();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A882CB8(0, &unk_2814AB010, 0x277D85C78);
  (*(v7 + 104))(v10, *MEMORY[0x277D85268], v6);
  sub_24A8BB0F4();
  v21 = MEMORY[0x277D84F90];
  sub_24A8870CC(&unk_2814AB020, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF794A0, &unk_24A8BC9E0);
  sub_24A882D48(&qword_2814AB030, &unk_27EF794A0, &unk_24A8BC9E0);
  sub_24A8BB4E4();
  v11 = sub_24A8BB444();
  v12 = v19;
  *v19 = v11;
  v13 = v12;
  sub_24A883B44(v20, (v12 + 1));
  v14 = sub_24A8BAE44();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  result = sub_24A8BAE34();
  v13[6] = result;
  return result;
}

uint64_t sub_24A8870CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A887114(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A887160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A8BB0D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24A8BB104();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v3;
  sub_24A887424(v3, v23);
  v15 = swift_allocObject();
  v16 = v23[1];
  *(v15 + 16) = v23[0];
  *(v15 + 32) = v16;
  *(v15 + 48) = v23[2];
  *(v15 + 64) = v24;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = a3;
  v17 = _Block_copy(aBlock);
  sub_24A8BB0F4();
  v21 = MEMORY[0x277D84F90];
  sub_24A8870CC(qword_2814AACF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D48(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v14, v10, v17);
  _Block_release(v17);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20);
}

uint64_t sub_24A8874D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24A887558@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  result = sub_24A888B10(v3);
  *a1 = result;
  return result;
}

uint64_t sub_24A8875B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_24A8875F8(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, unsigned __int8 a4)
{
  v8 = sub_24A8844D8();
  v42 = [v8 aa_primaryAppleAccount];

  if (v42)
  {
    v9 = [v42 aa_personID];
    if (!v9)
    {
      sub_24A8BB3D4();
      if (qword_2814AB038 != -1)
      {
        swift_once();
      }

      sub_24A8BB0B4();
      sub_24A89C6F4();
      v24 = swift_allocError();
      *v25 = 1;
      a2(0, v24);

      goto LABEL_22;
    }

    v10 = v9;
    v40 = sub_24A8BB254();
    v41 = v11;

    v44 = a4;
    v12 = sub_24A884608(v42, &v44);
    v14 = v13;
    v39 = v15;
    v17 = v16;
    v18 = [objc_opt_self() sharedInstance];
    v19 = [v18 isInternalBuild];

    if (v19)
    {
      if (FMNAccountType.description.getter(v20) == 1885957478 && v21 == 0xE400000000000000)
      {
      }

      else
      {
        v26 = sub_24A8BB804();

        if ((v26 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v27 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v28 = sub_24A8BB244();
      v29 = [v27 initWithSuiteName_];

      if (v29)
      {
        v30 = sub_24A8BB244();
        v31 = [v29 stringForKey_];

        if (v31)
        {

          v12 = sub_24A8BB254();
          v14 = v32;

          sub_24A8BB3D4();
          if (qword_2814AB038 != -1)
          {
            swift_once();
          }

          sub_24A8BB0B4();
LABEL_20:
          if (v17)
          {
            type metadata accessor for FMNAuthenticationCredential();
            v33 = swift_allocObject();
            *(v33 + 16) = v12;
            *(v33 + 24) = v14;
            *(v33 + 32) = v40;
            *(v33 + 40) = v41;
            *(v33 + 48) = v39;
            *(v33 + 56) = v17;
            *(v33 + 64) = a4;
            v34 = *(a1 + 56);
            *(a1 + 56) = v33;
            swift_retain_n();

            a2(v33, 0);

LABEL_22:
            v35 = v42;

            goto LABEL_24;
          }

          sub_24A8BB3D4();
          if (qword_2814AB038 != -1)
          {
            swift_once();
          }

          sub_24A8BB0B4();
          sub_24A89C6F4();
          v22 = swift_allocError();
          *v38 = 2;
          a2(0, v22);

          goto LABEL_31;
        }
      }
    }

LABEL_19:
    if (!v14)
    {

      sub_24A8BB3D4();
      if (qword_2814AB038 != -1)
      {
        swift_once();
      }

      sub_24A8BB0B4();
      v43 = a4;
      sub_24A89C6F4();
      v36 = swift_allocError();
      *v37 = 4;

      sub_24A89C748(v42, &v43, v36, a1, a2, a3);

      v35 = v36;
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  sub_24A8BB3D4();
  if (qword_2814AB038 != -1)
  {
    swift_once();
  }

  sub_24A8BB0B4();
  sub_24A89C6F4();
  v22 = swift_allocError();
  *v23 = 0;
  a2(0, v22);
LABEL_31:
  v35 = v22;
LABEL_32:

LABEL_24:
}

unint64_t sub_24A887C58()
{
  result = 6712678;
  switch(*v0)
  {
    case 1:
      result = 0x707041666D66;
      break;
    case 2:
      result = 1885957478;
      break;
    case 3:
      result = 0x6972695370696D66;
      break;
    case 4:
      result = 0x7075746573;
      break;
    case 5:
      result = 0x6150686372616573;
      break;
    case 6:
      result = 0x4C676E6972696170;
      break;
    case 7:
      result = 0x726F737365636361;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x7373656363413277;
      break;
    case 0xA:
      result = 0xD000000000000014;
      break;
    case 0xB:
      result = 0x6F4C657275636573;
      break;
    case 0xC:
      result = 0xD000000000000014;
      break;
    case 0xD:
      result = 0x726168536D657469;
      break;
    case 0xE:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

void sub_24A887E48(uint64_t a1, void *a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  if (FMNAccountType.rawValue.getter() == 1701736302 && v9 == 0xE400000000000000)
  {

LABEL_11:

    goto LABEL_13;
  }

  v11 = sub_24A8BB804();

  if (v11)
  {
    goto LABEL_11;
  }

  if (!a2)
  {
    sub_24A882E60();
    v19 = sub_24A8BB464();
    sub_24A8BB3D4();
    sub_24A8BB0A4();

    if (!a1)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v12 = a2;
  sub_24A8BB3C4();
  sub_24A882E60();
  v13 = sub_24A8BB464();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24A8BC300;
  swift_getErrorValue();
  v15 = sub_24A8BB8D4();
  v17 = v16;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_24A8897F0();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  sub_24A8BB0B4();

  if (a1)
  {
LABEL_8:
    swift_beginAccess();
    v18 = *(a5 + 16);
    *(a5 + 16) = a1;
  }

LABEL_13:
  dispatch_group_leave(a4);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t objectdestroyTm_0(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 24));
  v3 = *(v1 + 64);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24A88819C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_24A8881F0(void *a1)
{
  sub_24A8883EC(&v14);
  v2 = v15;
  if (v15)
  {
    v3 = v14;
    v4 = v16;
    v5 = v17;
    v6 = a1[4];
    v7 = a1[5];
    __swift_project_boxed_opaque_existential_1(a1 + 1, v6);
    if (v4 == (*(v7 + 32))(v6, v7) && v5 == v8)
    {

      sub_24A8A2604(v3, v2);
    }

    else
    {
      v10 = sub_24A8BB804();

      sub_24A8A2604(v3, v2);
      if ((v10 & 1) == 0)
      {
        sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
        v11 = sub_24A8BB464();
        sub_24A8BB3D4();
        sub_24A8BB0A4();

        v12 = [objc_opt_self() standardUserDefaults];
        v13 = sub_24A8BB244();
        [v12 removeObjectForKey_];
      }
    }
  }
}

void sub_24A8883EC(void *a1@<X8>)
{
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_24A8BB244();
  v5 = [v3 dataForKey_];

  if (v5)
  {
    v6 = sub_24A8BB024();
    v8 = v7;

    v9 = *(v1 + 48);
    sub_24A8A2648();
    sub_24A8BAE24();
    sub_24A88C828(v6, v8);
    *a1 = v10;
    a1[1] = v11;
    a1[2] = v12;
    a1[3] = v13;
  }

  else
  {
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }
}

uint64_t sub_24A888528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79120, &qword_24A8BC960);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_24A888634(uint64_t a1)
{
  sub_24A888744(319, &qword_2814AAC40, &unk_27EF79790, &qword_24A8BEB68);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_24A888744(319, &qword_2814AAC48, &qword_27EF79138, qword_24A8BEB70);
      if (v5 <= 0x3F)
      {
        sub_24A888798();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24A888744(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24A8BB484();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24A888798()
{
  if (!qword_2814AAC50)
  {
    v0 = sub_24A8BB484();
    if (!v1)
    {
      atomic_store(v0, &qword_2814AAC50);
    }
  }
}

NSObject *sub_24A8887E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = dispatch_group_create();
  sub_24A883EEC(v4, v25, &qword_27EF79150, &unk_24A8BD750);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  sub_24A88B1BC(v25, v9 + 24, &qword_27EF79150, &unk_24A8BD750);
  sub_24A883EEC(v4, v25, &qword_27EF79150, &unk_24A8BD750);
  sub_24A883EEC(v4 + 24, v24, &qword_27EF79140, &unk_24A8BD730);
  sub_24A883EEC(v4 + 144, v22, &qword_27EF79118, &unk_24A8BD720);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  sub_24A88B1BC(v25, v10 + 24, &qword_27EF79150, &unk_24A8BD750);
  *(v10 + 240) = a3;
  v11 = v24[2];
  v12 = v24[3];
  v13 = v24[0];
  *(v10 + 264) = v24[1];
  *(v10 + 280) = v11;
  v14 = v24[4];
  *(v10 + 296) = v12;
  *(v10 + 312) = v14;
  *(v10 + 248) = v13;
  v15 = v22[1];
  *(v10 + 328) = v22[0];
  *(v10 + 344) = v15;
  *(v10 + 360) = v22[2];
  *(v10 + 376) = v23;
  *(v10 + 384) = a1;
  *(v10 + 392) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79340, &qword_24A8BDA40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A8BCEB0;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_24A8A84C4;
  *(v17 + 24) = v9;
  *(inited + 32) = 401;
  *(inited + 40) = sub_24A8A8518;
  *(inited + 48) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_24A8A8500;
  *(v18 + 24) = v10;
  *(inited + 56) = 330;
  *(inited + 64) = sub_24A8A868C;
  *(inited + 72) = v18;
  v21[2] = v4;
  v19 = v8;

  sub_24A88B224(sub_24A88B2C0, v21, inited);

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79348, &qword_24A8BDA48);
  swift_arrayDestroy();
  return v19;
}

uint64_t sub_24A888AA4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A888B10(uint64_t a1)
{
  v3 = sub_24A8BB134();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1[5];
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_24A8BB154();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = v1[4];
    if (v11)
    {
      if (a1)
      {
        v12 = type metadata accessor for FMNAuthenticationCredential();
        v13 = &protocol witness table for FMNAuthenticationCredential;
        v14 = a1;
      }

      else
      {
        v14 = 0;
        v12 = 0;
        v13 = 0;
        v30 = 0;
        v31 = 0;
      }

      v29 = v14;
      v32 = v12;
      v33 = v13;
      v18 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
      swift_beginAccess();
      v19 = v11;

      sub_24A8874D4(&v29, v11 + v18, &qword_27EF79120, &qword_24A8BC960);
      swift_endAccess();
      return v19;
    }

    else
    {
      if (a1)
      {
        v15 = type metadata accessor for FMNAuthenticationCredential();
        v16 = &protocol witness table for FMNAuthenticationCredential;
        v17 = a1;
      }

      else
      {
        v17 = 0;
        v15 = 0;
        v16 = 0;
        v30 = 0;
        v31 = 0;
      }

      v29 = v17;
      v32 = v15;
      v33 = v16;
      v20 = v1[17];
      objc_allocWithZone(type metadata accessor for FMNHttpClient());

      v21 = v1;
      v22 = sub_24A886534(&v29, v20);

      v23 = &v22[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_authenticationChallengeHandler];
      swift_beginAccess();
      v24 = *v23;
      v25 = v23[1];
      *v23 = sub_24A88D468;
      v23[1] = 0;
      sub_24A8895E8(v24);
      v26 = v21[4];
      v21[4] = v22;
      v27 = v22;

      return v27;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24A888D88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_24A8BAF24();
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  sub_24A883EEC(a2, v42, &qword_27EF79118, &unk_24A8BD720);
  v8 = v42[0];
  if (v42[0])
  {
    v40 = 0;
    v41 = 0;
    sub_24A887424(v42, v38);
    v9 = swift_allocObject();
    v10 = v38[1];
    *(v9 + 16) = v38[0];
    *(v9 + 32) = v10;
    *(v9 + 48) = v38[2];
    *(v9 + 64) = v39;
    *(v9 + 72) = &v40;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_24A88BB7C;
    *(v11 + 24) = v9;
    v37[4] = sub_24A88B9CC;
    v37[5] = v11;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 1107296256;
    v37[2] = sub_24A88B9FC;
    v37[3] = &block_descriptor;
    v12 = _Block_copy(v37);

    dispatch_sync(v8, v12);
    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_14;
    }

    v14 = v40;
    v15 = v41;

    sub_24A887480(v42);
    if (v15)
    {
      MEMORY[0x24C21E4E0](v14, v15);
      sub_24A8BB3D4();
      if (qword_27EF78FF0 == -1)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_24A8BC300;
        sub_24A889310();
        v17 = sub_24A8BB724();
        v19 = v18;
        *(v16 + 56) = MEMORY[0x277D837D0];
        *(v16 + 64) = sub_24A8897F0();
        *(v16 + 32) = v17;
        *(v16 + 40) = v19;
        sub_24A8BB0B4();

        return;
      }

LABEL_14:
      swift_once();
      goto LABEL_5;
    }
  }

  else
  {
    sub_24A886D90(v42, &qword_27EF79118, &unk_24A8BD720);
  }

  v20 = *(v3 + 32);
  if (!v20)
  {
    goto LABEL_11;
  }

  v21 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
  swift_beginAccess();
  sub_24A883EEC(v20 + v21, v42, &qword_27EF79120, &qword_24A8BC960);
  v22 = v43;
  if (!v43)
  {
    sub_24A886D90(v42, &qword_27EF79120, &qword_24A8BC960);
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_24A8BC300;
    v42[0] = sub_24A8BAEC4();
    v42[1] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79128, &unk_24A8BDA50);
    v34 = sub_24A8BB2A4();
    v36 = v35;
    *(v32 + 56) = MEMORY[0x277D837D0];
    *(v32 + 64) = sub_24A8897F0();
    *(v32 + 32) = v34;
    *(v32 + 40) = v36;
    sub_24A882E60();
    v31 = sub_24A8BB464();
    sub_24A8BB3D4();
    sub_24A8BB0A4();
    goto LABEL_12;
  }

  v23 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v24 = (*(v23 + 72))(v22, v23);
  v26 = v25;
  sub_24A886D90(v42, &qword_27EF79120, &qword_24A8BC960);
  MEMORY[0x24C21E4E0](v24, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_24A8BC300;
  sub_24A889310();
  v28 = sub_24A8BB724();
  v30 = v29;
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = sub_24A8897F0();
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  sub_24A882E60();
  v31 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4();
LABEL_12:
}

uint64_t sub_24A8892B8()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_24A889310()
{
  result = qword_2814AAFF0;
  if (!qword_2814AAFF0)
  {
    sub_24A8BAF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AAFF0);
  }

  return result;
}

uint64_t sub_24A889368(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79070, &qword_24A8BC4A8);
  result = sub_24A8BB604();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      result = sub_24A8BB924();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_24A8895E8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_24A8895F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    v10 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_statusCodeHandlers;
    swift_beginAccess();

    v11 = *&v8[v10];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *&v8[v10];
    *&v8[v10] = 0x8000000000000000;
    sub_24A88BC00(sub_24A8AC5B0, v9, a2, isUniquelyReferenced_nonNull_native);
    *&v8[v10] = v13;
    swift_endAccess();
  }
}

uint64_t sub_24A8896F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A889740(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79450, &unk_24A8BD708);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24A8897F0()
{
  result = qword_2814AACE0;
  if (!qword_2814AACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AACE0);
  }

  return result;
}

uint64_t sub_24A889878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79450, &unk_24A8BD708);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void sub_24A889934()
{
  sub_24A8BAFC4();
  if (v0 <= 0x3F)
  {
    sub_24A883CB0();
    if (v1 <= 0x3F)
    {
      sub_24A8899E8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24A8899E8()
{
  if (!qword_2814AAC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF79138, qword_24A8BEB70);
    v0 = sub_24A8BB484();
    if (!v1)
    {
      atomic_store(v0, &qword_2814AAC48);
    }
  }
}

uint64_t sub_24A889A4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v115 = a4;
  v114 = a3;
  v127 = a2;
  v119 = sub_24A8BADF4();
  v118 = *(v119 - 8);
  v9 = *(v118 + 64);
  v10 = MEMORY[0x28223BE20](v119);
  v117 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v116 = &v113 - v13;
  MEMORY[0x28223BE20](v12);
  v122 = &v113 - v14;
  v120 = type metadata accessor for FMNRequest(0);
  v15 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v121 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  v17 = *(*(v125 - 1) + 64);
  v18 = MEMORY[0x28223BE20](v125);
  v128 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v124 = &v113 - v20;
  *&v129 = sub_24A8BAF24();
  v134 = *(v129 - 8);
  v21 = *(v134 + 64);
  MEMORY[0x28223BE20](v129);
  v23 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24A8BAFC4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v126 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1[3];
  v29 = a1[4];
  v123 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v30 = (*(v29 + 56))(v28, v29);
  v31 = 0;
  v32 = 0;
  if (v30)
  {
    v33 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
    swift_beginAccess();
    sub_24A883EEC(&v4[v33], v131, &qword_27EF79120, &qword_24A8BC960);
    v32 = v132;
    if (v132)
    {
      v34 = v133;
      __swift_project_boxed_opaque_existential_1(v131, v132);
      v31 = (*(v34 + 32))(v32, v34);
      v32 = v35;
      sub_24A886D90(v131, &qword_27EF79120, &qword_24A8BC960);
    }

    else
    {
      sub_24A886D90(v131, &qword_27EF79120, &qword_24A8BC960);
      v31 = 0;
    }
  }

  (*(v134 + 16))(v23, v127, v129);
  if (v32)
  {
    v131[0] = sub_24A8BAEE4();
    v131[1] = v36;
    v130[2] = 16421;
    v130[3] = 0xE200000000000000;
    v130[0] = v31;
    v130[1] = v32;
    sub_24A88A774();
    v37 = MEMORY[0x277D837D0];
    v38 = sub_24A8BB4B4();
    v127 = v5;
    v39 = v25;
    v40 = v24;
    v41 = v7;
    v43 = v42;

    v44 = v43;
    v7 = v41;
    MEMORY[0x24C21E500](v38, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_24A8BC300;
    sub_24A8BAEB4();
    v46 = sub_24A8BB2A4();
    v48 = v47;
    *(v45 + 56) = v37;
    *(v45 + 64) = sub_24A8897F0();
    *(v45 + 32) = v46;
    *(v45 + 40) = v48;
    v24 = v40;
    v25 = v39;
    v6 = v127;
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v49 = sub_24A8BB464();
    sub_24A8BB3D4();
    sub_24A8BB0A4();
  }

  v50 = v128;
  sub_24A8BAEB4();
  if ((*(v25 + 48))(v50, 1, v24) == 1)
  {
    sub_24A886D90(v50, &qword_27EF79180, &qword_24A8BC9F0);
    sub_24A8AC098();
    swift_allocError();
    *v51 = 1;
    swift_willThrow();

    return (*(v134 + 8))(v23, v129);
  }

  (*(v134 + 8))(v23, v129);
  v53 = v126;
  v54 = (*(v25 + 32))(v126, v50, v24);
  v55 = v24;
  v56 = *&v7[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_sessionLock];
  MEMORY[0x28223BE20](v54);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79388, &qword_24A8BDB10);
  sub_24A8BB0C4();
  if (v6)
  {
    (*(v25 + 8))(v53, v24);
  }

  *&v129 = 0;

  v125 = MEMORY[0x24C21F020](v57);
  v58 = v123;
  v59 = v123[3];
  v60 = v123[4];
  __swift_project_boxed_opaque_existential_1(v123, v59);
  (*(v60 + 40))(v130, v59, v60);
  v61 = v7;
  LODWORD(v134) = LOBYTE(v130[0]);
  v62 = v120;
  v63 = *(v120 + 20);
  v127 = v25;
  v64 = *(v25 + 16);
  v65 = v121;
  v128 = v55;
  v64(&v121[v63], v53, v55);
  v66 = v58[3];
  v67 = v58[4];
  __swift_project_boxed_opaque_existential_1(v58, v66);
  v68 = (*(v67 + 8))(v66, v67);
  v70 = v69;
  v71 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
  swift_beginAccess();
  sub_24A883EEC(v61 + v71, &v65[v62[8]], &qword_27EF79120, &qword_24A8BC960);
  v72 = v58[3];
  v73 = v58[4];
  __swift_project_boxed_opaque_existential_1(v58, v72);
  v74 = (*(v73 + 16))(v72, v73);
  *v65 = v134;
  v75 = &v65[v62[6]];
  *v75 = v68;
  v75[1] = v70;
  *&v65[v62[7]] = v74;
  v76 = v58[3];
  v77 = v58[4];
  __swift_project_boxed_opaque_existential_1(v58, v76);
  if ((*(v77 + 48))(v76, v77))
  {
    v78 = v116;
    v79 = v129;
    sub_24A8AB0F8(v116);
    if (v79)
    {
LABEL_13:
      sub_24A88CDF4(v65, type metadata accessor for FMNRequest);
      objc_autoreleasePoolPop(v125);
LABEL_28:
      (*(v127 + 8))(v126, v128);
      return __swift_destroy_boxed_opaque_existential_0Tm(v131);
    }
  }

  else
  {
    v78 = v117;
    v80 = v129;
    sub_24A88C28C(v117);
    if (v80)
    {
      goto LABEL_13;
    }
  }

  (*(v118 + 32))(v122, v78, v119);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v81 = swift_allocObject();
  v129 = xmmword_24A8BC300;
  *(v81 + 16) = xmmword_24A8BC300;
  v82 = v123[3];
  v83 = v123[4];
  __swift_project_boxed_opaque_existential_1(v123, v82);
  v84 = (*(v83 + 8))(v82, v83);
  v86 = v85 >> 62;
  v113 = v61;
  if ((v85 >> 62) > 1)
  {
    if (v86 != 2)
    {
      sub_24A88C828(v84, v85);
      v88 = 0;
      goto LABEL_25;
    }

    v90 = *(v84 + 16);
    v89 = *(v84 + 24);
    v84 = sub_24A88C828(v84, v85);
    v88 = v89 - v90;
    if (!__OFSUB__(v89, v90))
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v86)
  {
    v87 = BYTE6(v85);
    sub_24A88C828(v84, v85);
    v88 = v87;
LABEL_25:
    v93 = MEMORY[0x277D83C10];
    *(v81 + 56) = MEMORY[0x277D83B88];
    *(v81 + 64) = v93;
    *(v81 + 32) = v88;
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v94 = sub_24A8BB464();
    sub_24A8BB3D4();
    sub_24A8BB0A4();

    v95 = swift_allocObject();
    *(v95 + 16) = v129;
    v96 = sub_24A88CA00();
    v98 = v97;
    *(v95 + 56) = MEMORY[0x277D837D0];
    *(v95 + 64) = sub_24A8897F0();
    *(v95 + 32) = v96;
    *(v95 + 40) = v98;
    v99 = sub_24A8BB464();
    sub_24A8BB3D4();
    sub_24A8BB0A4();

    v100 = swift_allocObject();
    *(v100 + 16) = v129;
    v101 = sub_24A8BAD84();
    *(v100 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF793A8, &qword_24A8BDB18);
    *(v100 + 64) = sub_24A882D9C(&qword_2814AABC0, &unk_27EF793A8, &qword_24A8BDB18);
    if (!v101)
    {
      v101 = sub_24A88B040(MEMORY[0x277D84F90]);
    }

    v102 = v113;
    *(v100 + 32) = v101;
    v103 = sub_24A8BB464();
    sub_24A8BB3D4();
    sub_24A8BB0A4();

    v104 = v132;
    v105 = v133;
    __swift_project_boxed_opaque_existential_1(v131, v132);
    v106 = swift_allocObject();
    v107 = v114;
    v106[2] = v102;
    v106[3] = v107;
    v106[4] = v115;
    v108 = v102;
    v109 = *(v105 + 8);
    v110 = v108;

    v111 = v122;
    v112 = v109(v122, sub_24A88DD24, v106, v104, v105);

    [v112 resume];
    (*(v118 + 8))(v111, v119);
    sub_24A88CDF4(v65, type metadata accessor for FMNRequest);
    objc_autoreleasePoolPop(v125);

    goto LABEL_28;
  }

  v91 = HIDWORD(v84);
  v92 = v84;
  result = sub_24A88C828(v84, v85);
  LODWORD(v88) = v91 - v92;
  if (!__OFSUB__(v91, v92))
  {
    v88 = v88;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

unint64_t sub_24A88A774()
{
  result = qword_2814AABD8[0];
  if (!qword_2814AABD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814AABD8);
  }

  return result;
}

uint64_t sub_24A88A7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v51 = a1;
  *&v52 = a2;
  v4 = sub_24A8BAFC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v55 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v49 - v15;
  v17 = *(v5 + 56);
  v17(v49 - v15, 1, 1, v4);
  v18 = v3[5];
  v57 = v5;
  v53 = v3;
  if (!v18)
  {
    goto LABEL_6;
  }

  v19 = v3[4];
  v20 = v3[7];
  v49[2] = v3[6];
  v49[3] = v19;
  v49[1] = v20;
  v21 = [objc_opt_self() sharedInstance];
  v22 = [v21 isInternalBuild];

  v5 = v57;
  if (v22)
  {
    v23 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v24 = sub_24A8BB244();
    v25 = [v23 initWithSuiteName_];

    if (v25 && (v26 = sub_24A8BB244(), v27 = [v25 BOOLForKey_], v25, v26, v27))
    {
      v28 = v50;
      sub_24A8BAF74();
      sub_24A88C1B4(v16);
      v5 = v57;
      (*(v57 + 32))(v16, v28, v4);
      v29 = 0;
    }

    else
    {
      sub_24A88C1B4(v16);
      v29 = 1;
      v5 = v57;
    }
  }

  else
  {
LABEL_6:
    sub_24A88C1B4(v16);
    v29 = 1;
  }

  v17(v16, v29, 1, v4);
  sub_24A88C21C(v16, v14);
  v30 = (*(v5 + 48))(v14, 1, v4);
  v31 = v55;
  if (v30 == 1)
  {
    sub_24A88C1B4(v14);
    v32 = [objc_opt_self() sessionWithConfiguration:v51 delegate:v52 delegateQueue:0];
    v33 = sub_24A882CB8(0, &qword_2814AACB8, 0x277CCAD30);
    v34 = v54;
    v54[3] = v33;
    v34[4] = &protocol witness table for NSURLSession;
    *v34 = v32;
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v35 = sub_24A8BB464();
    sub_24A8BB3D4();
    sub_24A8BB0A4();

    return sub_24A88C1B4(v16);
  }

  else
  {
    (*(v5 + 32))(v55, v14, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v37 = swift_allocObject();
    v52 = xmmword_24A8BC300;
    *(v37 + 16) = xmmword_24A8BC300;
    v38 = sub_24A8BAF64();
    v40 = v39;
    *(v37 + 56) = MEMORY[0x277D837D0];
    v41 = sub_24A8897F0();
    *(v37 + 64) = v41;
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v42 = sub_24A8BB464();
    sub_24A8BB3D4();
    sub_24A8BB0A4();

    v43 = v53[2];
    if (v43)
    {
      v44 = v53[3];
      v43(v56, v31);
      (*(v57 + 8))(v31, v4);
      sub_24A88C1B4(v16);
      return sub_24A883B44(v56, v54);
    }

    else
    {
      v45 = swift_allocObject();
      *(v45 + 16) = v52;
      v46 = sub_24A8BAF64();
      *(v45 + 56) = MEMORY[0x277D837D0];
      *(v45 + 64) = v41;
      *(v45 + 32) = v46;
      *(v45 + 40) = v47;
      v48 = sub_24A8BB464();
      sub_24A8BB3D4();
      sub_24A8BB0A4();

      sub_24A8A2920();
      swift_allocError();
      swift_willThrow();
      (*(v57 + 8))(v31, v4);
      return sub_24A88C1B4(v16);
    }
  }
}

unint64_t sub_24A88ADB0()
{
  v1 = sub_24A8BB294();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v6 = v0[5];
  v24 = v0[4];
  v25 = v6;

  MEMORY[0x24C21E8E0](58, 0xE100000000000000);
  swift_beginAccess();
  v8 = v0[2];
  v7 = v0[3];

  MEMORY[0x24C21E8E0](v8, v7);

  sub_24A8BB284();
  v9 = sub_24A8BB264();
  v11 = v10;

  (*(v2 + 8))(v5, v1);
  if (v11 >> 60 == 15)
  {
    sub_24A8BB3C4();
    sub_24A882E60();
    v12 = sub_24A8BB464();
    v13 = MEMORY[0x277D84F90];
    sub_24A8BB0B4();

    return sub_24A88B040(v13);
  }

  else
  {
    v15 = sub_24A8BB014();
    v17 = v16;
    sub_24A88C814(v9, v11);
    v24 = 0x206369736142;
    v25 = 0xE600000000000000;
    MEMORY[0x24C21E8E0](v15, v17);

    v18 = v24;
    v19 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF790B8, "bJ");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A8BC300;
    *(inited + 32) = 0x7A69726F68747541;
    v21 = inited + 32;
    *(inited + 40) = 0xED00006E6F697461;
    *(inited + 48) = v18;
    *(inited + 56) = v19;
    v22 = sub_24A88B040(inited);
    swift_setDeallocating();
    sub_24A88B154(v21);
    return v22;
  }
}

unint64_t sub_24A88B040(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79038, &qword_24A8BC480);
    v3 = sub_24A8BB614();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_24A88C87C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24A88B154(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF790C0, "hJ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A88B1BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24A88B224(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 48); ; i += 3)
    {
      v7 = *(i - 1);
      v8 = *i;
      v9[0] = *(i - 2);
      v9[1] = v7;
      v9[2] = v8;

      v5(v9);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t FMNHTTPRequest.init(hostName:scheme:path:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v17 = a6;
  v11 = sub_24A8BAF24();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 48) = 0;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 56) = 14;
  sub_24A8BAF14();
  (*(v12 + 32))(v7 + OBJC_IVAR____TtC12FMNetworking14FMNHTTPRequest_urlComponents, v15, v11);
  swift_beginAccess();
  sub_24A8BAF04();
  MEMORY[0x24C21E4E0](a1, a2);
  MEMORY[0x24C21E500](a5, v17);
  swift_endAccess();
  return v7;
}

uint64_t sub_24A88B464(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    sub_24A88B524(v5, a4, v8);
  }
}

uint64_t sub_24A88B524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A8BB0D4();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A8BB104();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v4 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_statusCodeHandlerQueue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = sub_24A8895DC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_3;
  v18 = _Block_copy(aBlock);

  sub_24A8BB0F4();
  v23 = MEMORY[0x277D84F90];
  sub_24A8870CC(qword_2814AACF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D9C(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v15, v11, v18);
  _Block_release(v18);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v21);
}

uint64_t sub_24A88B848()
{
  MEMORY[0x24C21F5F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A88B880()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A88B8C0(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 56) = v2;
  return result;
}

uint64_t sub_24A88B944@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12FMNetworking14FMNHTTPRequest_urlComponents;
  swift_beginAccess();
  v4 = sub_24A8BAF24();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24A88B9D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_24A88BA24(void *a1, uint64_t *a2)
{
  sub_24A8883EC(&v14);
  v4 = v15;
  if (!v15)
  {
    return;
  }

  v5 = v14;
  v6 = v16;
  v7 = v17;
  v8 = a1[4];
  v9 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v8);
  if (v6 == (*(v9 + 32))(v8, v9) && v7 == v10)
  {
  }

  else
  {
    v12 = sub_24A8BB804();

    if ((v12 & 1) == 0)
    {

      sub_24A8A2604(v5, v4);
      return;
    }
  }

  sub_24A8A2604(v5, v4);
  v13 = a2[1];
  *a2 = v5;
  a2[1] = v4;
}

uint64_t sub_24A88BBB0()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);

  return v2;
}

unint64_t sub_24A88BC00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_24A88BD60(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24A889368(v16, a4 & 1);
      v20 = *v5;
      result = sub_24A88BD60(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_24A8BB8C4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_24A895A74();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

unint64_t sub_24A88BD60(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_24A8BB924();

  return sub_24A88BDA4(a1, v4);
}

unint64_t sub_24A88BDA4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_24A88BE28()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v2;
}

void sub_24A88BEAC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_session;
  swift_beginAccess();
  sub_24A883EEC(a1 + v5, &v7, &qword_27EF79478, &unk_24A8BDC70);
  if (v8)
  {
    sub_24A883B44(&v7, a2);
  }

  else
  {
    sub_24A886D90(&v7, &qword_27EF79478, &unk_24A8BDC70);
    sub_24A88BFB4();
    if (!v2)
    {
      sub_24A886914(&v7, a2);
      sub_24A883B44(&v7, v6);
      swift_beginAccess();
      sub_24A8874D4(v6, a1 + v5, &qword_27EF79478, &unk_24A8BDC70);
      swift_endAccess();
    }
  }
}

void sub_24A88BFB4()
{
  v1 = [objc_opt_self() defaultSessionConfiguration];
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    sub_24A8BB254();
  }

  else
  {
    v4 = (v0 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_bundleIdentifierFallback);
    swift_beginAccess();
    v6 = *v4;
    v5 = v4[1];
  }

  v7 = objc_allocWithZone(MEMORY[0x277CF0188]);
  v8 = sub_24A8BB244();

  v9 = [v7 initWithIdentifier_];

  [v1 set:v9 appleIDContext:?];
  [v1 setURLCache_];
  [v1 setRequestCachePolicy_];
  [v1 setHTTPCookieStorage_];
  [v1 setHTTPCookieAcceptPolicy_];
  [v1 setURLCredentialStorage_];
  (*(**(v0 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_urlSessionFactory) + 104))(v1, v0);
}

uint64_t sub_24A88C1B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A88C21C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A88C28C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_24A8BAFC4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMNRequest(0);
  (*(v6 + 16))(v9, &v3[v10[5]], v5);
  sub_24A8BAD94();
  v11 = *v3;
  v12 = qword_24A8BD278[v11];
  v13 = qword_24A8BD298[v11];
  sub_24A8BAD64();
  sub_24A8BADB4();
  if (v14)
  {
  }

  else
  {
    sub_24A8BADE4();
  }

  sub_24A8BADB4();
  if (v15)
  {
  }

  else
  {
    sub_24A8BADE4();
  }

  sub_24A88C780(&v3[v10[8]], &v54);
  v59 = v3;
  v53 = v10;
  if (v55)
  {
    sub_24A883B44(&v54, v56);
    v16 = v57;
    v17 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    result = (*(v17 + 56))(v16, v17);
    v19 = result;
    if (!*(result + 16))
    {

      sub_24A8A15B0();
      swift_allocError();
      *v50 = 1;
      swift_willThrow();
      v51 = sub_24A8BADF4();
      (*(*(v51 - 8) + 8))(a1, v51);
      return __swift_destroy_boxed_opaque_existential_0Tm(v56);
    }

    v52 = v2;
    v20 = 0;
    v21 = 1 << *(result + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(result + 64);
    for (i = (v21 + 63) >> 6; v23; result = )
    {
      v25 = v20;
LABEL_17:
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v27 = (v25 << 10) | (16 * v26);
      v28 = (*(v19 + 48) + v27);
      v29 = *v28;
      v30 = v28[1];
      v31 = (*(v19 + 56) + v27);
      v32 = *v31;
      v33 = v31[1];

      sub_24A8BADE4();
    }

    while (1)
    {
      v25 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v25 >= i)
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v56);
        v3 = v59;
        v10 = v53;
        goto LABEL_21;
      }

      v23 = *(v19 + 64 + 8 * v25);
      ++v20;
      if (v23)
      {
        v20 = v25;
        goto LABEL_17;
      }
    }
  }

  else
  {
    v52 = v2;
    sub_24A886D90(&v54, &qword_27EF79120, &qword_24A8BC960);
LABEL_21:
    v34 = *&v3[v10[7]];
    v35 = 1 << *(v34 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v34 + 64);
    v38 = (v35 + 63) >> 6;
    v39 = *&v3[v10[7]];

    for (j = 0; v37; result = )
    {
      v41 = j;
LABEL_29:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v43 = (v41 << 10) | (16 * v42);
      v44 = (*(v34 + 48) + v43);
      v45 = *v44;
      v46 = v44[1];
      v47 = (*(v34 + 56) + v43);
      v48 = *v47;
      v49 = v47[1];

      sub_24A8BADE4();
    }

    while (1)
    {
      v41 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (v41 >= v38)
      {

        sub_24A88C9AC(*&v59[v53[6]], *&v59[v53[6] + 8]);
        return sub_24A8BADD4();
      }

      v37 = *(v34 + 64 + 8 * v41);
      ++j;
      if (v37)
      {
        j = v41;
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24A88C780(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79120, &qword_24A8BC960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A88C814(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24A88C828(a1, a2);
  }

  return a1;
}

uint64_t sub_24A88C828(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_24A88C87C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24A8BB934();
  sub_24A8BB2C4();
  v6 = sub_24A8BB954();

  return sub_24A88C8F4(a1, a2, v6);
}

unint64_t sub_24A88C8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24A8BB804())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24A88C9AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24A88CA00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20 - v3;
  v5 = sub_24A8BAFC4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A8BADF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v0, v10);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_24A8BADA4();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24A886D90(v4, &qword_27EF79180, &qword_24A8BC9F0);
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v15 = sub_24A8BAF64();
    v20 = 0x203A4C5255;
    v21 = 0xE500000000000000;
    MEMORY[0x24C21E8E0](v15);

    MEMORY[0x24C21E8E0](v20, v21);

    MEMORY[0x24C21E8E0](10, 0xE100000000000000);
    (*(v6 + 8))(v9, v5);
  }

  v16 = sub_24A8BAD84();
  if (v16)
  {
    v17 = *(v16 + 16);
  }

  else
  {
    v17 = 0;
  }

  v20 = v17;
  v18 = sub_24A8BB724();
  v20 = 0x3A73726564616548;
  v21 = 0xE900000000000020;
  MEMORY[0x24C21E8E0](v18);

  MEMORY[0x24C21E8E0](v20, v21);

  (*(v11 + 8))(v14, v10);
  return v22;
}

id sub_24A88CD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = sub_24A8BAD74();
  v11[4] = a2;
  v11[5] = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24A88D49C;
  v11[3] = &block_descriptor_3;
  v8 = _Block_copy(v11);

  v9 = [v6 dataTaskWithRequest:v7 completionHandler:v8];

  _Block_release(v8);

  return v9;
}

uint64_t sub_24A88CDF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A88CEF0(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v31 = a1;
  v5 = sub_24A8BB0D4();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A8BB104();
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A8BB0E4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v19 = (a2 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_authenticationChallengeHandler);
  swift_beginAccess();
  v20 = *v19;
  if (*v19)
  {
    v21 = v19[1];
    sub_24A882CB8(0, &unk_2814AB010, 0x277D85C78);
    v30 = v5;
    (*(v14 + 104))(v17, *MEMORY[0x277D851C8], v13);
    _Block_copy(a3);
    sub_24A88D378(v20);
    v29 = sub_24A8BB454();
    (*(v14 + 8))(v17, v13);
    v22 = swift_allocObject();
    v22[2] = v20;
    v22[3] = v21;
    v23 = v31;
    v22[4] = v31;
    v22[5] = sub_24A88D450;
    v22[6] = v18;
    aBlock[4] = sub_24A8AC5F0;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A8875B4;
    aBlock[3] = &block_descriptor_68_0;
    v24 = _Block_copy(aBlock);
    sub_24A88D378(v20);
    v25 = v23;

    sub_24A8BB0F4();
    v35 = MEMORY[0x277D84F90];
    sub_24A8870CC(qword_2814AACF0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
    sub_24A882D9C(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
    v26 = v30;
    sub_24A8BB4E4();
    v27 = v29;
    MEMORY[0x24C21EA40](0, v12, v8, v24);
    _Block_release(v24);

    sub_24A8895E8(v20);
    (*(v34 + 8))(v8, v26);
    (*(v32 + 8))(v12, v33);
  }

  else
  {
    _Block_copy(a3);
    a3[2](a3, 1, 0);
  }
}

uint64_t sub_24A88D378(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24A88D38C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A88D49C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_24A8BB024();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_24A88C814(v6, v11);
}

uint64_t sub_24A88D564(uint64_t a1, unint64_t a2, char *a3, void *a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v88 = a2;
  v89 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79450, &unk_24A8BD708);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v73 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v73 - v16);
  v18 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24A8BB294();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    *v17 = a4;
    swift_storeEnumTagMultiPayload();
    v27 = a4;
    v28 = v17;
LABEL_8:
    a5(v28);
    return sub_24A886D90(v17, &qword_27EF79110, &qword_24A8BDC50);
  }

  v82 = v26;
  v83 = v19;
  v84 = v22;
  v85 = v13;
  v86 = a6;
  v29 = v89;
  if (!v89 || (objc_opt_self(), (v30 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_24A8AC098();
    v35 = swift_allocError();
    *v36 = 5;
    *v17 = v35;
    swift_storeEnumTagMultiPayload();
    v28 = v17;
    goto LABEL_8;
  }

  v31 = v88;
  if (v88 >> 60 == 15)
  {
    sub_24A8AC098();
    v32 = swift_allocError();
    *v33 = 6;
    *v17 = v32;
    swift_storeEnumTagMultiPayload();
    v34 = v29;
    a5(v17);
  }

  else
  {
    v38 = v30;
    v77 = v14;
    v79 = a5;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v39 = swift_allocObject();
    v81 = xmmword_24A8BC300;
    *(v39 + 16) = xmmword_24A8BC300;
    v78 = v29;
    v74 = a1;
    sub_24A88DD28(a1, v31);
    v40 = [v38 allHeaderFields];
    v89 = sub_24A8BB1F4();

    *(v39 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79460, &unk_24A8BDC58);
    *(v39 + 64) = sub_24A882D9C(&qword_2814AACD8, &unk_27EF79460, &unk_24A8BDC58);
    *(v39 + 32) = v89;
    v80 = sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v41 = sub_24A8BB464();
    sub_24A8BB3D4();
    sub_24A8BB0A4();

    v42 = [v38 allHeaderFields];
    v43 = sub_24A8BB1F4();

    v44 = sub_24A88DD3C(v43);

    v75 = v18;
    if (v44)
    {
      v45 = v44;
    }

    else
    {
      v45 = sub_24A88B040(MEMORY[0x277D84F90]);
    }

    v47 = v84;
    v46 = v85;
    v48 = v87;
    v89 = [v38 statusCode];
    v49 = sub_24A88E0D4(v89);
    if (v49)
    {
      v50 = v49;
      v49(v89, v45);
      sub_24A8895E8(v50);
    }

    v51 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_statusCodeHandlers;
    swift_beginAccess();
    v52 = *(v48 + v51);
    *(v48 + v51) = MEMORY[0x277D84F98];

    v53 = MEMORY[0x277D837D0];
    if ((v89 - 300) <= 0xFFFFFFFFFFFFFF9BLL)
    {
      v54 = swift_allocObject();
      *(v54 + 16) = v81;
      v90 = v89;
      sub_24A8A8530();
      v55 = sub_24A8BB4C4();
      v57 = v56;
      *(v54 + 56) = v53;
      *(v54 + 64) = sub_24A8897F0();
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      v58 = sub_24A8BB464();
      sub_24A8BB3D4();
      sub_24A8BB0A4();
    }

    v59 = swift_allocObject();
    *(v59 + 16) = v81;
    sub_24A8BB284();
    v60 = v74;
    v61 = v88;
    v62 = sub_24A8BB274();
    v64 = v63;
    *(v59 + 56) = v53;
    *(v59 + 64) = sub_24A8897F0();
    v65 = 7104878;
    if (v64)
    {
      v65 = v62;
    }

    v66 = 0xE300000000000000;
    if (v64)
    {
      v66 = v64;
    }

    *(v59 + 32) = v65;
    *(v59 + 40) = v66;
    v67 = sub_24A8BB464();
    sub_24A8BB3D4();
    sub_24A8BB0A4();

    FMNServerInteractionController.InternalServerMetadata.init(headers:)(v68, v47);
    sub_24A88ECB0(v47, v46, type metadata accessor for FMNServerInteractionController.InternalServerMetadata);
    v69 = *(v83 + 56);
    v70 = v47;
    v71 = v75;
    v69(v46, 0, 1, v75);
    v72 = *(type metadata accessor for FMNServerInteractionController.FMNResponseFields(0) + 28);
    v69(v17 + v72, 1, 1, v71);
    *v17 = v60;
    v17[1] = v61;
    v17[2] = v89;
    v17[3] = v45;
    sub_24A88C9AC(v60, v61);
    sub_24A8874D4(v46, v17 + v72, &unk_27EF79450, &unk_24A8BD708);
    swift_storeEnumTagMultiPayload();
    v79(v17);

    sub_24A88C814(v60, v61);
    sub_24A88CDF4(v70, type metadata accessor for FMNServerInteractionController.InternalServerMetadata);
  }

  return sub_24A886D90(v17, &qword_27EF79110, &qword_24A8BDC50);
}

uint64_t sub_24A88DCF8(uint64_t a1, unint64_t a2, char *a3, void *a4)
{
  v5 = v4[3];
  v6 = v4[4];
  v7 = v4[2];
  return sub_24A88D564(a1, a2, a3, a4, v5, v6);
}

uint64_t sub_24A88DD28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24A88C9AC(a1, a2);
  }

  return a1;
}

unint64_t sub_24A88DD3C(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79038, &qword_24A8BC480);
    v2 = sub_24A8BB614();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v16 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v16);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v16 = v9;
LABEL_13:
    v17 = __clz(__rbit64(v6)) | (v16 << 6);
    sub_24A88E01C(*(v1 + 48) + 40 * v17, v30);
    sub_24A88E078(*(v1 + 56) + 32 * v17, v31 + 8);
    v28[0] = v31[0];
    v28[1] = v31[1];
    v29 = v32;
    v27[0] = v30[0];
    v27[1] = v30[1];
    sub_24A88E01C(v27, v26);
    if (!swift_dynamicCast())
    {
      sub_24A886D90(v27, &qword_27EF79470, &qword_24A8BDC68);

      goto LABEL_22;
    }

    sub_24A88E078(v28 + 8, v26);
    sub_24A886D90(v27, &qword_27EF79470, &qword_24A8BDC68);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_24A88C87C(v24, v25);
    if (v18)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      v13 = v12[1];
      *v12 = v24;
      v12[1] = v25;

      v14 = (v2[7] + v11);
      v1 = v10;
      v15 = v14[1];
      *v14 = v24;
      v14[1] = v25;

      v9 = v16;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v24;
      v19[1] = v25;
      v20 = (v2[7] + 16 * result);
      *v20 = v24;
      v20[1] = v25;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_26;
      }

      v2[2] = v23;
      v9 = v16;
    }
  }

LABEL_22:

  return 0;
}

uint64_t sub_24A88E078(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24A88E0D4(uint64_t a1)
{
  v12[0] = 0;
  v12[1] = 0;
  v3 = *&v1[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_statusCodeHandlerQueue];
  v4 = swift_allocObject();
  v4[2] = v12;
  v4[3] = v1;
  v4[4] = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24A88E28C;
  *(v5 + 24) = v4;
  v11[4] = sub_24A88B9CC;
  v11[5] = v5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24A88B9FC;
  v11[3] = &block_descriptor_77;
  v6 = _Block_copy(v11);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12[0];

    return v10;
  }

  return result;
}

uint64_t sub_24A88E244()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A88E298(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_statusCodeHandlers;
  swift_beginAccess();
  v7 = *(a2 + v6);
  if (*(v7 + 16) && (v8 = sub_24A88BD60(a3), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = swift_allocObject();
    *(v12 + 16) = *(v11 + 16 * v10);

    v13 = sub_24A8AC4D4;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = *a1;
  v15 = a1[1];
  *a1 = v13;
  a1[1] = v12;
  return sub_24A8895E8(v14);
}

uint64_t objectdestroy_48Tm()
{
  MEMORY[0x24C21F5F0](v0 + 24);
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));
  if (*(v0 + 152))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 128));
  }

  v2 = *(v0 + 168);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
    v3 = *(v0 + 216);
  }

  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

uint64_t objectdestroy_51Tm()
{
  MEMORY[0x24C21F5F0](v0 + 24);
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));
  if (*(v0 + 152))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 128));
  }

  v2 = *(v0 + 168);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
    v3 = *(v0 + 216);
  }

  swift_weakDestroy();
  v4 = *(v0 + 240);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 248));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 288));
  v5 = *(v0 + 328);
  if (v5)
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 336));
    v6 = *(v0 + 376);
  }

  v7 = *(v0 + 392);

  return MEMORY[0x2821FE8E8](v0, 400, 7);
}

unint64_t FMNServerInteractionController.InternalServerMetadata.init(headers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79310, &qword_24A8BD700);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v85 = &v81 - v6;
  v7 = sub_24A8BB094();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v84 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79320, &qword_24A8BD760);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v81 - v13;
  v15 = sub_24A8BB174();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_65;
  }

  result = sub_24A88C87C(0xD000000000000012, 0x800000024A8BEEC0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_65;
  }

  v22 = (*(a1 + 56) + 16 * result);
  v24 = *v22;
  v23 = v22[1];
  v25 = HIBYTE(v23) & 0xF;
  v26 = v24 & 0xFFFFFFFFFFFFLL;
  if (!((v23 & 0x2000000000000000) != 0 ? HIBYTE(v23) & 0xF : v24 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_65;
  }

  if ((v23 & 0x1000000000000000) != 0)
  {
    v83 = v23;

    v81 = sub_24A8A7718(v24, v83, 10);
    v82 = v64;

    if ((v82 & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_65:
    (*(v16 + 104))(a2, *MEMORY[0x277D498D0], v15);
    if (!*(a1 + 16))
    {
      goto LABEL_77;
    }

    goto LABEL_66;
  }

  if ((v23 & 0x2000000000000000) != 0)
  {
    v86[0] = v24;
    v86[1] = v23 & 0xFFFFFFFFFFFFFFLL;
    if (v24 == 43)
    {
      if (!v25)
      {
LABEL_90:
        __break(1u);
        return result;
      }

      v28 = v25 - 1;
      if (v25 != 1)
      {
        v44 = 0;
        v45 = v86 + 1;
        while (1)
        {
          v46 = *v45 - 48;
          if (v46 > 9)
          {
            break;
          }

          v47 = 10 * v44;
          if ((v44 * 10) >> 64 != (10 * v44) >> 63)
          {
            break;
          }

          v44 = v47 + v46;
          if (__OFADD__(v47, v46))
          {
            break;
          }

          ++v45;
          if (!--v28)
          {
            goto LABEL_64;
          }
        }
      }
    }

    else if (v24 == 45)
    {
      if (!v25)
      {
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v28 = v25 - 1;
      if (v25 != 1)
      {
        v35 = 0;
        v36 = v86 + 1;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v35;
          if ((v35 * 10) >> 64 != (10 * v35) >> 63)
          {
            break;
          }

          v35 = v38 - v37;
          if (__OFSUB__(v38, v37))
          {
            break;
          }

          ++v36;
          if (!--v28)
          {
            goto LABEL_64;
          }
        }
      }
    }

    else if (v25)
    {
      v51 = 0;
      v52 = v86;
      while (1)
      {
        v53 = *v52 - 48;
        if (v53 > 9)
        {
          break;
        }

        v54 = 10 * v51;
        if ((v51 * 10) >> 64 != (10 * v51) >> 63)
        {
          break;
        }

        v51 = v54 + v53;
        if (__OFADD__(v54, v53))
        {
          break;
        }

        ++v52;
        if (!--v25)
        {
LABEL_62:
          LOBYTE(v28) = 0;
          goto LABEL_64;
        }
      }
    }
  }

  else
  {
    if ((v24 & 0x1000000000000000) != 0)
    {
      v28 = (v23 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_24A8BB5D4();
      v28 = result;
    }

    v29 = *v28;
    if (v29 == 43)
    {
      if (v26 >= 1)
      {
        v39 = v26 - 1;
        if (v26 != 1)
        {
          v40 = 0;
          if (!v28)
          {
            goto LABEL_64;
          }

          v41 = (v28 + 1);
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v40;
            if ((v40 * 10) >> 64 != (10 * v40) >> 63)
            {
              break;
            }

            v40 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v39)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      goto LABEL_89;
    }

    if (v29 == 45)
    {
      if (v26 >= 1)
      {
        v30 = v26 - 1;
        if (v26 != 1)
        {
          v31 = 0;
          if (!v28)
          {
            goto LABEL_64;
          }

          v32 = (v28 + 1);
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              break;
            }

            v34 = 10 * v31;
            if ((v31 * 10) >> 64 != (10 * v31) >> 63)
            {
              break;
            }

            v31 = v34 - v33;
            if (__OFSUB__(v34, v33))
            {
              break;
            }

            ++v32;
            if (!--v30)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      __break(1u);
      goto LABEL_88;
    }

    if (v26)
    {
      v48 = 0;
      if (!v28)
      {
        goto LABEL_64;
      }

      while (1)
      {
        v49 = *v28 - 48;
        if (v49 > 9)
        {
          break;
        }

        v50 = 10 * v48;
        if ((v48 * 10) >> 64 != (10 * v48) >> 63)
        {
          break;
        }

        v48 = v50 + v49;
        if (__OFADD__(v50, v49))
        {
          break;
        }

        ++v28;
        if (!--v26)
        {
          goto LABEL_62;
        }
      }
    }
  }

LABEL_63:
  LOBYTE(v28) = 1;
LABEL_64:
  v87 = v28;
  if (v28)
  {
    goto LABEL_65;
  }

LABEL_72:
  sub_24A8BB164();
  v65 = *(v16 + 48);
  if (v65(v14, 1, v15) == 1)
  {
    (*(v16 + 104))(v19, *MEMORY[0x277D498D0], v15);
    if (v65(v14, 1, v15) != 1)
    {
      sub_24A886D90(v14, &qword_27EF79320, &qword_24A8BD760);
    }
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
  }

  (*(v16 + 32))(a2, v19, v15);
  if (!*(a1 + 16))
  {
LABEL_77:
    v66 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata(0);
    (*(v8 + 56))(a2 + *(v66 + 20), 1, 1, v7);
    if (!*(a1 + 16))
    {
      goto LABEL_80;
    }

    goto LABEL_78;
  }

LABEL_66:
  v55 = sub_24A88C87C(0xD000000000000014, 0x800000024A8BEEE0);
  if ((v56 & 1) == 0)
  {
    goto LABEL_77;
  }

  v57 = (*(a1 + 56) + 16 * v55);
  v58 = *v57;
  v59 = v57[1];

  v60 = v85;
  sub_24A8BB074();

  if ((*(v8 + 48))(v60, 1, v7) == 1)
  {
    sub_24A886D90(v60, &qword_27EF79310, &qword_24A8BD700);
    goto LABEL_77;
  }

  v61 = *(v8 + 32);
  v62 = v84;
  v61(v84, v60, v7);
  v63 = *(type metadata accessor for FMNServerInteractionController.InternalServerMetadata(0) + 20);
  v61((a2 + v63), v62, v7);
  (*(v8 + 56))(a2 + v63, 0, 1, v7);
  if (!*(a1 + 16))
  {
    goto LABEL_80;
  }

LABEL_78:
  v67 = sub_24A88C87C(0xD000000000000015, 0x800000024A8BEF00);
  if (v68)
  {
    v69 = (*(a1 + 56) + 16 * v67);
    v71 = *v69;
    v70 = v69[1];

    goto LABEL_81;
  }

LABEL_80:
  v71 = 0;
  v70 = 0;
LABEL_81:
  v72 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata(0);
  v73 = (a2 + *(v72 + 24));
  *v73 = v71;
  v73[1] = v70;
  if (*(a1 + 16) && (v74 = sub_24A88C87C(0xD000000000000013, 0x800000024A8BEF20), (v75 & 1) != 0))
  {
    v76 = (*(a1 + 56) + 16 * v74);
    v77 = *v76;
    v78 = v76[1];

    result = sub_24A8A50E8(v77, v78);
  }

  else
  {

    result = 0;
    v79 = 1;
  }

  v80 = a2 + *(v72 + 28);
  *v80 = result;
  *(v80 + 8) = v79 & 1;
  return result;
}

uint64_t sub_24A88ECB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A88ED2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24A8BB174();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79310, &qword_24A8BD700);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24A88EE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A8BB174();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79310, &qword_24A8BD700);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_24A88EF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24A8BB3D4();
  sub_24A882E60();
  v7 = sub_24A8BB464();
  sub_24A8BB0B4();

  return sub_24A88F02C(a1, a3, a4);
}

uint64_t sub_24A88F02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v39 = a3;
  v37[1] = a2;
  v3 = type metadata accessor for FMNServerInteractionController.FMNResponseFields(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v37 - v9);
  v11 = sub_24A8BB124();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v37 - v17;
  sub_24A882E60();
  v19 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4();

  sub_24A8BB114();
  sub_24A8BB144();
  v20 = *(v12 + 8);
  v20(v16, v11);
  sub_24A8BB3E4();
  sub_24A883EEC(v38, v10, &qword_27EF79110, &qword_24A8BDC50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v10;
    sub_24A8BB3C4();
    v22 = sub_24A8BB464();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_24A8BC300;
    swift_getErrorValue();
    v24 = sub_24A8BB8D4();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = sub_24A8897F0();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_24A8BB0B4();

    sub_24A8BB1B4();

    return (v20)(v18, v11);
  }

  sub_24A88F45C(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  result = swift_allocObject();
  *(result + 16) = xmmword_24A8BC300;
  v28 = *v6;
  v29 = v6[1];
  v30 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    if (v30 != 2)
    {
      v28 = 0;
      goto LABEL_13;
    }

    v33 = v28 + 16;
    v31 = *(v28 + 16);
    v32 = *(v33 + 8);
    v34 = __OFSUB__(v32, v31);
    v28 = v32 - v31;
    if (!v34)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v30)
  {
    v28 = BYTE6(v29);
    goto LABEL_13;
  }

  v34 = __OFSUB__(HIDWORD(v28), v28);
  LODWORD(v28) = HIDWORD(v28) - v28;
  if (v34)
  {
    __break(1u);
    return result;
  }

  v28 = v28;
LABEL_13:
  v35 = MEMORY[0x277D83C10];
  *(result + 56) = MEMORY[0x277D83B88];
  *(result + 64) = v35;
  *(result + 32) = v28;
  v36 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4();

  sub_24A8BB1C4();
  v20(v18, v11);
  return sub_24A890E54(v6);
}

uint64_t sub_24A88F45C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMNServerInteractionController.FMNResponseFields(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A88F4C0(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  sub_24A88F598(a1, &v9 - v6);
  swift_storeEnumTagMultiPayload();
  a2(v7);
  return sub_24A886D90(v7, &qword_27EF79110, &qword_24A8BDC50);
}

uint64_t sub_24A88F598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMNServerInteractionController.FMNResponseFields(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A88F604(uint64_t a1, void (*a2)(void **))
{
  v20 = a2;
  v3 = type metadata accessor for FMNServerInteractionController.FMNResponseFields(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79158, &unk_24A8BDC80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v19 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v19 - v14);
  sub_24A883EEC(a1, &v19 - v14, &qword_27EF79110, &qword_24A8BDC50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    *v11 = *v15;
    (*(v8 + 104))(v11, *MEMORY[0x277D498C0], v7);
    v17 = v16;
    v20(v11);

    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    sub_24A88F45C(v15, v6);
    sub_24A88F598(v6, v11);
    (*(v8 + 104))(v11, *MEMORY[0x277D498C8], v7);
    v20(v11);
    (*(v8 + 8))(v11, v7);
    return sub_24A890E54(v6);
  }
}

void sub_24A88F890(uint64_t a1, void (*a2)(void, unint64_t, id))
{
  v4 = type metadata accessor for FMNServerInteractionController.FMNResponseFields(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79158, &unk_24A8BDC80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v33 - v11);
  (*(v9 + 16))(&v33 - v11, a1, v8);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == *MEMORY[0x277D498C8])
  {
    (*(v9 + 96))(v12, v8);
    sub_24A88F45C(v12, v7);
    v14 = v7[2];
    if (v14 - 300 > 0xFFFFFFFFFFFFFF9BLL)
    {
      v29 = 0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
      v15 = swift_allocObject();
      v33 = xmmword_24A8BC300;
      *(v15 + 16) = xmmword_24A8BC300;
      v35 = v14;
      sub_24A8A8530();
      v16 = sub_24A8BB4C4();
      v18 = v17;
      *(v15 + 56) = MEMORY[0x277D837D0];
      *(v15 + 64) = sub_24A8897F0();
      *(v15 + 32) = v16;
      *(v15 + 40) = v18;
      sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
      v19 = sub_24A8BB464();
      sub_24A8BB3D4();
      sub_24A8BB0A4();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF790B8, "bJ");
      inited = swift_initStackObject();
      *(inited + 16) = v33;
      v21 = *MEMORY[0x277CCA450];
      *(inited + 32) = sub_24A8BB254();
      *(inited + 40) = v22;
      v35 = 0;
      v36 = 0xE000000000000000;
      sub_24A8BB594();

      v35 = 0xD00000000000001BLL;
      v36 = 0x800000024A8C0500;
      v34 = v14;
      v23 = sub_24A8BB724();
      MEMORY[0x24C21E8E0](v23);

      v24 = v36;
      *(inited + 48) = v35;
      *(inited + 56) = v24;
      v25 = sub_24A88B040(inited);
      swift_setDeallocating();
      sub_24A886D90(inited + 32, &qword_27EF790C0, "hJ");
      sub_24A8A4E90(v25);

      v26 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v27 = sub_24A8BB244();
      v28 = sub_24A8BB1E4();

      v29 = [v26 initWithDomain:v27 code:500 userInfo:v28];

      v30 = v29;
    }

    a2(*v7, v7[1], v29);

    sub_24A890DF4(v7, type metadata accessor for FMNServerInteractionController.FMNResponseFields);
  }

  else if (v13 == *MEMORY[0x277D498C0])
  {
    (*(v9 + 96))(v12, v8);
    v31 = *v12;
    v32 = *v12;
    a2(0, 0xF000000000000000, v31);
  }

  else
  {
    sub_24A8BB7F4();
    __break(1u);
  }
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79000, &qword_24A8BC310);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  sub_24A88FF14();
  sub_24A8BB644();
  if (!v1)
  {
    v0 = sub_24A88FF68();
    (*(v3 + 8))(v6, v2);
  }

  return v0;
}

unint64_t sub_24A88FE68()
{
  result = qword_2814AAA28;
  if (!qword_2814AAA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AAA28);
  }

  return result;
}

unint64_t sub_24A88FEC0()
{
  result = qword_2814AAA30;
  if (!qword_2814AAA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AAA30);
  }

  return result;
}

unint64_t sub_24A88FF14()
{
  result = qword_2814AAA20;
  if (!qword_2814AAA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AAA20);
  }

  return result;
}

uint64_t sub_24A88FF68()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79000, &qword_24A8BC310);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v55[1] = v55 - v7;
  v8 = sub_24A8BB6B4();
  v9 = v8;
  v59 = *(v8 + 16);
  if (!v59)
  {
    v11 = MEMORY[0x277D84F98];
LABEL_31:

    return v11;
  }

  v55[0] = v5 + 8;
  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  v12 = (v8 + 56);
  v55[2] = v3;
  v57 = v4;
  v58 = v8;
  while (v10 < *(v9 + 16))
  {
    v13 = *(v12 - 3);
    v14 = *(v12 - 2);
    v15 = *v12;
    v16 = *(v12 - 1);
    v64 = v13;
    v65 = v14;
    v66 = v16;
    v67 = v15;

    v17 = sub_24A8BB674();
    if (v2)
    {

      v18 = sub_24A8BB664();
      v2 = 0;
      v60 = v10;
      v63 = MEMORY[0x277D837D0];
      *&v62 = v18;
      *(&v62 + 1) = v31;
      sub_24A890B2C(&v62, &v61);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v11;
      v33 = sub_24A88C87C(v13, v14);
      v35 = v33;
      v36 = v11[2];
      v37 = (v34 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_34;
      }

      v39 = v34;
      if (v11[3] >= v38)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v11 = v68;
          if ((v34 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          sub_24A895758();
          v11 = v68;
          if ((v39 & 1) == 0)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        sub_24A890B3C(v38, isUniquelyReferenced_nonNull_native);
        v40 = sub_24A88C87C(v13, v14);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_37;
        }

        v35 = v40;
        v11 = v68;
        if ((v39 & 1) == 0)
        {
LABEL_27:
          v11[(v35 >> 6) + 8] |= 1 << v35;
          v51 = (v11[6] + 16 * v35);
          *v51 = v13;
          v51[1] = v14;
          sub_24A890B2C(&v61, (v11[7] + 32 * v35));
          v52 = v11[2];
          v26 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v26)
          {
            goto LABEL_36;
          }

          v11[2] = v53;

          goto LABEL_29;
        }
      }

      v48 = (v11[7] + 32 * v35);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      sub_24A890B2C(&v61, v48);
LABEL_29:

      v9 = v58;
      v47 = v60;
      goto LABEL_3;
    }

    v19 = v12;
    v63 = MEMORY[0x277D839B0];
    LOBYTE(v62) = v17 & 1;
    sub_24A890B2C(&v62, &v61);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v68 = v11;
    v21 = v13;
    v22 = sub_24A88C87C(v13, v14);
    v24 = v11[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_33;
    }

    v28 = v23;
    v29 = v11[3];
    v56 = 0;
    if (v29 >= v27)
    {
      if ((v20 & 1) == 0)
      {
        v49 = v10;
        v50 = v22;
        sub_24A895758();
        v22 = v50;
        v10 = v49;
      }
    }

    else
    {
      sub_24A890B3C(v27, v20);
      v22 = sub_24A88C87C(v13, v14);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_37;
      }
    }

    v42 = v10;
    v11 = v68;
    if (v28)
    {
      v43 = (v68[7] + 32 * v22);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      sub_24A890B2C(&v61, v43);
    }

    else
    {
      v68[(v22 >> 6) + 8] |= 1 << v22;
      v44 = (v11[6] + 16 * v22);
      *v44 = v21;
      v44[1] = v14;
      sub_24A890B2C(&v61, (v11[7] + 32 * v22));
      v45 = v11[2];
      v26 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v26)
      {
        goto LABEL_35;
      }

      v11[2] = v46;
    }

    v9 = v58;
    v47 = v42;
    v12 = v19;
    v2 = v56;
LABEL_3:
    v10 = v47 + 1;
    v12 += 32;
    if (v59 == v10)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  __break(1u);
LABEL_36:
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
LABEL_37:
  result = sub_24A8BB8C4();
  __break(1u);
  return result;
}

uint64_t sub_24A890A48@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24A890A70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_24A890AB8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_24A890AE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_OWORD *sub_24A890B2C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24A890B3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF790B0, &qword_24A8BC4E0);
  v36 = a2;
  result = sub_24A8BB604();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_24A890B2C(v25, v37);
      }

      else
      {
        sub_24A88E078(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_24A8BB934();
      sub_24A8BB2C4();
      result = sub_24A8BB954();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_24A890B2C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_24A890DF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A890E54(uint64_t a1)
{
  v2 = type metadata accessor for FMNServerInteractionController.FMNResponseFields(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A890F3C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v0[4] + 56);

  v2(v4, 0);
}

uint64_t objectdestroy_2Tm(uint64_t a1)
{
  v3 = *(v1 + 24);

  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = sub_24A8BAFC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_24A891098()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_24A8910D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_24A891120@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_24A891170@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_24A8911C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_24A891208(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 64) = v2;
  return result;
}

uint64_t sub_24A891260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A8BAFC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24A89131C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A8BAFC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24A8913D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A891424@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_24A89146C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_24A8914B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_24A891500()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A891550(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A8BAFC4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24A8915BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A8BAFC4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24A89162C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF791C8, &qword_24A8BCED0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF791D0, &qword_24A8BCED8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24A891734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF791C8, &qword_24A8BCED0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF791D0, &qword_24A8BCED8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24A891848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A8BAFC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24A891908(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A8BAFC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24A8919C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A8BAFC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24A891A80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A8BAFC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24A891B60()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  v2 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24A891BB8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_24A891D18@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_24A891D74(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 136))(&v4);
}

uint64_t sub_24A891E1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_bundleIdentifierFallback);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_24A891E78()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A891EB0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A891EE8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A891F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A8BB054();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24A89200C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A8BB054();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24A89210C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A892144()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A892194()
{
  v1 = sub_24A8BAFC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24A892224()
{
  v1 = sub_24A8BAFC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24A8922C4()
{
  v1 = sub_24A8BAFC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = v0 + v6;
  v9 = *(v0 + v6 + 8);
  if (v9 >> 60 != 15)
  {
    sub_24A88C828(*v8, v9);
  }

  return MEMORY[0x2821FE8E8](v0, v6 + 32, v3 | 7);
}

uint64_t AnyDecodableKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AnyDecodableKeys.stringValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

FMNetworking::AnyDecodableKeys __swiftcall AnyDecodableKeys.init(stringValue:)(FMNetworking::AnyDecodableKeys stringValue)
{
  *(v1 + 8) = stringValue.stringValue._object;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *v1 = stringValue.stringValue._countAndFlagsBits;
  return stringValue;
}

uint64_t AnyDecodableKeys.intValue.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t AnyDecodableKeys.intValue.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

void __swiftcall AnyDecodableKeys.init(intValue:)(FMNetworking::AnyDecodableKeys_optional *__return_ptr retstr, Swift::Int intValue)
{
  retstr->value.stringValue._countAndFlagsBits = sub_24A8BB724();
  retstr->value.stringValue._object = v4;
  retstr->value.intValue.value = intValue;
  retstr->value.intValue.is_nil = 0;
}

uint64_t sub_24A892570()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_24A892580(uint64_t a1)
{
  v2 = sub_24A88FF14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8925BC(uint64_t a1)
{
  v2 = sub_24A88FF14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t KeyedDecodingContainer.decode(_:)(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v7 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v63 - v8;
  v10 = sub_24A8BB6B4();
  if (!sub_24A8BB384())
  {

    return MEMORY[0x277D84F98];
  }

  v63[0] = v5;
  v11 = 0;
  v73 = (v4 + 16);
  v71 = (v4 + 32);
  v12 = MEMORY[0x277D84F98];
  v69 = v10;
  v70 = (v4 + 8);
  v72 = v1;
  v65 = v2;
  v66 = v4;
  v67 = v7;
  v68 = v3;
  v74 = v9;
  while (1)
  {
    v15 = sub_24A8BB374();
    sub_24A8BB354();
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11;
    v17 = v74;
    (*(v4 + 16))(v74, v16, v3);
    v18 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_38;
    }

LABEL_8:
    (*v71)(v7, v17, v3);
    v19 = v75;
    v20 = sub_24A8BB674();
    if (v19)
    {

      v21 = sub_24A8BB664();
      v75 = 0;
      v64 = v18;
      v36 = *(v2 + 24);
      v37 = v21;
      v39 = v38;
      v40 = sub_24A8BB994();
      v42 = v41;
      v79 = MEMORY[0x277D837D0];
      *&v78 = v37;
      *(&v78 + 1) = v39;
      sub_24A890B2C(&v78, v77);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v12;
      v44 = sub_24A88C87C(v40, v42);
      v46 = v44;
      v47 = v12[2];
      v48 = (v45 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        goto LABEL_40;
      }

      v50 = v45;
      if (v12[3] < v49)
      {
        sub_24A890B3C(v49, isUniquelyReferenced_nonNull_native);
        v51 = sub_24A88C87C(v40, v42);
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_44;
        }

        v46 = v51;
        v4 = v66;
        if ((v50 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_27:

        v12 = v76;
        v59 = (v76[7] + 32 * v46);
        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        sub_24A890B2C(v77, v59);
        v7 = v67;
        v3 = v68;
        (*v70)(v67, v68);
LABEL_28:
        v2 = v65;
        v10 = v69;
        v18 = v64;
        goto LABEL_5;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v4 = v66;
        if (v45)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_24A895758();
        v4 = v66;
        if (v50)
        {
          goto LABEL_27;
        }
      }

LABEL_18:
      v12 = v76;
      v76[(v46 >> 6) + 8] |= 1 << v46;
      v53 = (v12[6] + 16 * v46);
      *v53 = v40;
      v53[1] = v42;
      sub_24A890B2C(v77, (v12[7] + 32 * v46));
      v7 = v67;
      v3 = v68;
      (*v70)(v67, v68);
      v54 = v12[2];
      v32 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v32)
      {
        goto LABEL_42;
      }

      v12[2] = v55;
      goto LABEL_28;
    }

    v64 = v11;
    v22 = *(v2 + 24);
    v23 = v20;
    v24 = sub_24A8BB994();
    v26 = v25;
    v79 = MEMORY[0x277D839B0];
    LOBYTE(v78) = v23 & 1;
    sub_24A890B2C(&v78, v77);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v76 = v12;
    v28 = sub_24A88C87C(v24, v26);
    v30 = v12[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_39;
    }

    v34 = v29;
    if (v12[3] >= v33)
    {
      v4 = v66;
      if ((v27 & 1) == 0)
      {
        v61 = v28;
        sub_24A895758();
        v28 = v61;
      }
    }

    else
    {
      sub_24A890B3C(v33, v27);
      v28 = sub_24A88C87C(v24, v26);
      v4 = v66;
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_44;
      }
    }

    v2 = v65;
    v75 = 0;
    if (v34)
    {
      v13 = v28;

      v12 = v76;
      v14 = (v76[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      sub_24A890B2C(v77, v14);
      v7 = v67;
      v3 = v68;
      (*v70)(v67, v68);
    }

    else
    {
      v12 = v76;
      v76[(v28 >> 6) + 8] |= 1 << v28;
      v56 = (v12[6] + 16 * v28);
      *v56 = v24;
      v56[1] = v26;
      sub_24A890B2C(v77, (v12[7] + 32 * v28));
      v7 = v67;
      v3 = v68;
      (*v70)(v67, v68);
      v57 = v12[2];
      v32 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v32)
      {
        goto LABEL_41;
      }

      v12[2] = v58;
    }

    v10 = v69;
    v11 = v64;
LABEL_5:
    ++v11;
    if (v18 == sub_24A8BB384())
    {

      return v12;
    }
  }

  v60 = sub_24A8BB5A4();
  if (v63[0] != 8)
  {
    goto LABEL_43;
  }

  *&v78 = v60;
  v17 = v74;
  (*v73)(v74, &v78, v3);
  swift_unknownObjectRelease();
  v18 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_8;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  __break(1u);
LABEL_42:
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_24A8BB8C4();
  __break(1u);
  return result;
}

char *KeyedDecodingContainer.decode(_:forKey:)()
{
  sub_24A8BB634();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
    v0 = UnkeyedDecodingContainer.decode(_:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
  }

  return v0;
}

char *UnkeyedDecodingContainer.decode(_:)()
{
  v1 = v0;
  v2 = sub_24A8BB774();
  v3 = MEMORY[0x277D84F90];
  if ((v2 & 1) == 0)
  {
    v5 = MEMORY[0x277D839B0];
    v6 = MEMORY[0x277D839F8];
    do
    {
      v7 = sub_24A8BB754();
      if (v1)
      {

        sub_24A8BB764();
        v1 = 0;
        v12 = v6;
        *&v11 = v8;
      }

      else
      {
        v1 = 0;
        v12 = v5;
        LOBYTE(v11) = v7 & 1;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_24A895E90(0, *(v3 + 2) + 1, 1, v3);
      }

      v10 = *(v3 + 2);
      v9 = *(v3 + 3);
      if (v10 >= v9 >> 1)
      {
        v3 = sub_24A895E90((v9 > 1), v10 + 1, 1, v3);
      }

      *(v3 + 2) = v10 + 1;
      sub_24A890B2C(&v11, &v3[32 * v10 + 32]);
    }

    while ((sub_24A8BB774() & 1) == 0);
  }

  return v3;
}

uint64_t UnkeyedDecodingContainer.decode(_:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79000, &qword_24A8BC310);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  sub_24A88FF14();
  v7 = sub_24A8BB734();
  if (!v1)
  {
    v0 = sub_24A88FF68(v7);
    (*(v3 + 8))(v6, v2);
  }

  return v0;
}

uint64_t sub_24A8936C4(uint64_t a1)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      sub_24A88E078(*(a1 + 56) + 32 * v11, v16);
      v15[0] = v13;
      v15[1] = v14;

      sub_24A89398C(v13, v14, v16, v16[5]);
      if (v1)
      {
        break;
      }

      v6 &= v6 - 1;
      result = sub_24A886D90(v15, &qword_27EF79018, &qword_24A8BC328);
      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    return sub_24A886D90(v15, &qword_27EF79018, &qword_24A8BC328);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t KeyedEncodingContainerProtocol<>.encode(_:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      sub_24A88E078(*(a1 + 56) + 32 * v12, v18);
      v17[0] = v14;
      v17[1] = v15;

      sub_24A893FF0(v14, v15, v18, v18[5], a2);
      if (v2)
      {
        break;
      }

      v7 &= v7 - 1;
      result = sub_24A886D90(v17, &qword_27EF79018, &qword_24A8BC328);
      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    return sub_24A886D90(v17, &qword_27EF79018, &qword_24A8BC328);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A89398C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79020, &qword_24A8BC330);
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  sub_24A88E078(a3, v36);

  if (swift_dynamicCast())
  {
    v27 = a1;
    v28 = a2;
    v29 = 0;
    LOBYTE(v30) = 1;
    sub_24A8966D4();
    sub_24A8BB864();
  }

  else if (swift_dynamicCast())
  {
    v27 = a1;
    v28 = a2;
    v29 = 0;
    LOBYTE(v30) = 1;
    sub_24A8966D4();
    sub_24A8BB884();
  }

  else if (swift_dynamicCast())
  {
    v27 = a1;
    v28 = a2;
    v29 = 0;
    LOBYTE(v30) = 1;
    sub_24A8966D4();
    sub_24A8BB854();
  }

  else if (swift_dynamicCast())
  {
    v27 = a1;
    v28 = a2;
    v29 = 0;
    LOBYTE(v30) = 1;
    sub_24A8966D4();
    sub_24A8BB874();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79010, &qword_24A8BC320);
    if (swift_dynamicCast())
    {
      v16 = v31;
      v27 = a1;
      v28 = a2;
      v29 = 0;
      LOBYTE(v30) = 1;
      sub_24A8966D4();
      sub_24A88FF14();
      sub_24A8BB834();

      sub_24A8936C4(v16);

      (*(v26 + 8))(v14, v8);
      return __swift_destroy_boxed_opaque_existential_0Tm(v36);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79008, &qword_24A8BC318);
    if (swift_dynamicCast())
    {
      v17._rawValue = v35;
      v31 = a1;
      v32 = a2;
      v33 = 0;
      v34 = 1;
      sub_24A8966D4();
      sub_24A8BB824();

      __swift_mutable_project_boxed_opaque_existential_1(&v27, v30);
      UnkeyedEncodingContainer.encode(_:)(v17);

      __swift_destroy_boxed_opaque_existential_0Tm(&v27);
      return __swift_destroy_boxed_opaque_existential_0Tm(v36);
    }

    sub_24A88E078(v36, &v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79078, &qword_24A8BC4B0);
    swift_dynamicCast();
    if (v30)
    {
      sub_24A886D90(&v27, &qword_27EF79078, &qword_24A8BC4B0);
      v18 = sub_24A8BB5C4();
      swift_allocError();
      v20 = v19;
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79088, &unk_24A8BC4C0) + 48);
      sub_24A88E078(a3, v20);
      v21 = v26;
      (*(v26 + 16))(v12, a4, v8);
      sub_24A8966D4();
      v22 = sub_24A8BB844();
      (*(v21 + 8))(v12, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79098, &qword_24A8BC4D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24A8BC300;
      *(inited + 56) = &type metadata for AnyDecodableKeys;
      *(inited + 64) = sub_24A88FF14();
      v24 = swift_allocObject();
      *(inited + 32) = v24;
      *(v24 + 16) = a1;
      *(v24 + 24) = a2;
      *(v24 + 32) = 0;
      *(v24 + 40) = 1;
      v27 = v22;
      sub_24A8964D0(inited);
      sub_24A8BB5B4();
      (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D841A8], v18);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v36);
    }

    v31 = a1;
    v32 = a2;
    v33 = 0;
    v34 = 1;
    sub_24A8966D4();
    sub_24A8BB894();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v36);
}

uint64_t sub_24A893FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = *(a5 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A88E078(v13, v29);

  if (swift_dynamicCast())
  {
    v25 = a1;
    v26 = a2;
    v27 = 0;
    LOBYTE(v28) = 1;
    sub_24A8BB864();
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    v25 = a1;
    v26 = a2;
    v27 = 0;
    LOBYTE(v28) = 1;
    sub_24A8BB884();
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    v25 = a1;
    v26 = a2;
    v27 = 0;
    LOBYTE(v28) = 1;
    sub_24A8BB854();
LABEL_9:

    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    v25 = a1;
    v26 = a2;
    v27 = 0;
    LOBYTE(v28) = 1;
    sub_24A8BB874();
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79010, &qword_24A8BC320);
  if (swift_dynamicCast())
  {
    v25 = a1;
    v26 = a2;
    v27 = 0;
    LOBYTE(v28) = 1;
    KeyedEncodingContainerProtocol.encode(_:forKey:)(v23[0]);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79008, &qword_24A8BC318);
  if (swift_dynamicCast())
  {
    v25 = a1;
    v26 = a2;
    v27 = 0;
    LOBYTE(v28) = 1;
    KeyedEncodingContainerProtocol.encode(_:forKey:)(v23[0]);
    goto LABEL_9;
  }

  sub_24A88E078(v29, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79078, &qword_24A8BC4B0);
  swift_dynamicCast();
  if (v28)
  {
    sub_24A886D90(&v25, &qword_27EF79078, &qword_24A8BC4B0);
    v22 = sub_24A8BB5C4();
    swift_allocError();
    v16 = v15;
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79088, &unk_24A8BC4C0) + 48);
    sub_24A88E078(a3, v16);
    v17 = v30;
    (*(v30 + 16))(v12, a4, a5);
    v18 = sub_24A8BB844();
    (*(v17 + 8))(v12, a5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79098, &qword_24A8BC4D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A8BC300;
    *(inited + 56) = &type metadata for AnyDecodableKeys;
    *(inited + 64) = sub_24A88FF14();
    v20 = swift_allocObject();
    *(inited + 32) = v20;
    *(v20 + 16) = a1;
    *(v20 + 24) = a2;
    *(v20 + 32) = 0;
    *(v20 + 40) = 1;
    v25 = v18;
    sub_24A8964D0(inited);
    sub_24A8BB5B4();
    (*(*(v22 - 8) + 104))(v16, *MEMORY[0x277D841A8]);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0Tm(v29);
  }

  v23[0] = a1;
  v23[1] = a2;
  v23[2] = 0;
  v24 = 1;
  sub_24A8BB894();
LABEL_5:

  return __swift_destroy_boxed_opaque_existential_0Tm(v29);
}

uint64_t KeyedEncodingContainerProtocol.encode(_:forKey:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79020, &qword_24A8BC330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - v6;
  if (a1)
  {
    sub_24A88FF14();
    sub_24A8BB834();
    sub_24A8936C4(a1);
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t KeyedEncodingContainerProtocol.encode(_:forKey:)(uint64_t result)
{
  if (result)
  {
    v1._rawValue = result;
    sub_24A8BB824();
    __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
    UnkeyedEncodingContainer.encode(_:)(v1);
    return __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedEncodingContainer.encode(_:)(Swift::OpaquePointer a1)
{
  v4 = *(a1._rawValue + 2);
  if (v4)
  {
    v5 = v1;
    v6 = 0;
    v7 = a1._rawValue + 32;
    do
    {
      v8 = v6;
      sub_24A88E078(v7, v9);
      sub_24A894784(v6, v9, v2, v5);
      sub_24A886D90(&v8, &qword_27EF79028, &qword_24A8BC338);
      if (v3)
      {
        break;
      }

      ++v6;
      v7 += 32;
    }

    while (v4 != v6);
  }
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79020, &qword_24A8BC330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v7 - v5;
  sub_24A88FF14();
  sub_24A8BB784();
  sub_24A8936C4(a1._rawValue);
  (*(v3 + 8))(v6, v2);
}

uint64_t sub_24A894784(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A88E078(a2, v26);
  if (swift_dynamicCast())
  {
    sub_24A8BB7B4();
    return __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  if (swift_dynamicCast())
  {
    sub_24A8BB7D4();
    return __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  if (swift_dynamicCast())
  {
    sub_24A8BB7A4();
LABEL_8:

    return __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  if (swift_dynamicCast())
  {
    sub_24A8BB7C4();
    return __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79010, &qword_24A8BC320);
  if (swift_dynamicCast())
  {
    UnkeyedEncodingContainer.encode(_:)(v25[0]);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79008, &qword_24A8BC318);
  if (swift_dynamicCast())
  {
    UnkeyedEncodingContainer.encode(_:)(v25[0]);
    goto LABEL_8;
  }

  sub_24A88E078(v26, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79078, &qword_24A8BC4B0);
  swift_dynamicCast();
  if (v25[3]._rawValue)
  {
    sub_24A886D90(v25, &qword_27EF79078, &qword_24A8BC4B0);
    v25[0]._rawValue = a1;
    v13 = sub_24A8BB724();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79080, &qword_24A8BC4B8);
    inited = swift_initStackObject();
    v22 = inited;
    *(inited + 16) = xmmword_24A8BC300;
    *(inited + 32) = v13;
    v23 = inited + 32;
    *(inited + 40) = v15;
    *(inited + 48) = a1;
    *(inited + 56) = 0;
    v27 = sub_24A8BB5C4();
    swift_allocError();
    v18 = v17;
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79088, &unk_24A8BC4C0) + 48);
    sub_24A88E078(a2, v18);
    (*(v8 + 16))(v11, a3, a4);
    v19 = sub_24A8BB794();
    (*(v8 + 8))(v11, a4);
    v20 = sub_24A894D4C(v22);
    swift_setDeallocating();
    sub_24A8966A4(v23);
    v25[0]._rawValue = v19;
    sub_24A8964D0(v20);
    sub_24A8BB5B4();
    (*(*(v27 - 8) + 104))(v18, *MEMORY[0x277D841A8]);
    swift_willThrow();
  }

  else
  {
    sub_24A8BB7E4();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v26);
}

uint64_t sub_24A894D4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    sub_24A8965D8(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v16 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v10 >= v9 >> 1)
      {
        sub_24A8965D8((v9 > 1), v10 + 1, 1);
        v2 = v16;
      }

      v14 = &type metadata for AnyDecodableKeys;
      v15 = sub_24A88FF14();
      v11 = swift_allocObject();
      *&v13 = v11;
      *(v11 + 16) = v6;
      *(v11 + 24) = v5;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      *(v2 + 16) = v10 + 1;
      sub_24A883B44(&v13, v2 + 40 * v10 + 32);
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t sub_24A894E70(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_24A8BAFC4();
  sub_24A89665C(&qword_27EF79048);
  v5 = sub_24A8BB224();

  return sub_24A8955AC(a1, v5);
}

uint64_t sub_24A894EF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79038, &qword_24A8BC480);
  v40 = a2;
  result = sub_24A8BB604();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_24A8BB934();
      sub_24A8BB2C4();
      result = sub_24A8BB954();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24A8951B4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24A8BAFC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79040, &qword_24A8BC488);
  v51 = a2;
  result = sub_24A8BB604();
  v14 = result;
  if (*(v11 + 16))
  {
    v55 = v10;
    v56 = v6;
    v47 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v48 = (v7 + 16);
    v49 = v7;
    v52 = (v7 + 32);
    v21 = result + 64;
    v50 = v11;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v54 = *(v7 + 72);
      v30 = v29 + v54 * v28;
      if (v51)
      {
        (*v52)(v55, v30, v56);
        v31 = (*(v11 + 56) + 32 * v28);
        v32 = *v31;
        v57 = v31[1];
        v53 = v32;
      }

      else
      {
        (*v48)(v55, v30, v56);
        v33 = (*(v11 + 56) + 32 * v28);
        v34 = *v33;
        v57 = v33[1];
        v53 = v34;
        sub_24A88DD28(v34, *(&v34 + 1));
        v35 = *(&v57 + 1);
        v36 = v57;
        v37 = v35;
      }

      v38 = *(v14 + 40);
      sub_24A89665C(&qword_27EF79048);
      result = sub_24A8BB224();
      v39 = -1 << *(v14 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v21 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        v7 = v49;
        v11 = v50;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v21 + 8 * v41);
          if (v45 != -1)
          {
            v22 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v40) & ~*(v21 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
      v7 = v49;
      v11 = v50;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v52)(*(v14 + 48) + v54 * v22, v55, v56);
      v23 = (*(v14 + 56) + 32 * v22);
      v24 = v57;
      *v23 = v53;
      v23[1] = v24;
      ++*(v14 + 16);
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_36;
    }

    v46 = 1 << *(v11 + 32);
    v3 = v47;
    if (v46 >= 64)
    {
      bzero(v16, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v46;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_24A8955AC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_24A8BAFC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_24A89665C(&qword_27EF79050);
      v16 = sub_24A8BB234();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void *sub_24A895758()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF790B0, &qword_24A8BC4E0);
  v2 = *v0;
  v3 = sub_24A8BB5F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_24A88E078(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_24A890B2C(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_24A8958FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79038, &qword_24A8BC480);
  v2 = *v0;
  v3 = sub_24A8BB5F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_24A895A74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79070, &qword_24A8BC4A8);
  v2 = *v0;
  v3 = sub_24A8BB5F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_24A895BD8()
{
  v1 = v0;
  v41 = sub_24A8BAFC4();
  v43 = *(v41 - 8);
  v2 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79040, &qword_24A8BC488);
  v4 = *v0;
  v5 = sub_24A8BB5F4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v37 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v43 + 32;
    v39 = v43 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v43;
        v21 = *(v43 + 72) * v19;
        v22 = v40;
        v23 = v41;
        (*(v43 + 16))(v40, *(v4 + 48) + v21, v41);
        v19 *= 32;
        v24 = (*(v4 + 56) + v19);
        v25 = v4;
        v26 = v42;
        v27 = *(v42 + 48);
        v28 = *(v20 + 32);
        v29 = v24[1];
        v44 = *v24;
        v46 = v29;
        v28(v27 + v21, v22, v23);
        v30 = *(v26 + 56);
        v4 = v25;
        v31 = (v30 + v19);
        v32 = v46;
        v33 = v44;
        *v31 = v44;
        v31[1] = v32;
        sub_24A88DD28(v33, *(&v33 + 1));
        v34 = *(&v46 + 1);
        v35 = v46;
        result = v34;
        v14 = v45;
      }

      while (v45);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v37;
        v6 = v42;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v45 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_24A895E90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF790A8, &qword_24A8BC4D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24A895FA0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79098, &qword_24A8BC4D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79090, &unk_24A8BCDF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A8960E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79058, &unk_24A8BC490);
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

size_t sub_24A8961EC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79060, &unk_24A8BCDE0);
  v10 = *(type metadata accessor for HAREntry() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for HAREntry() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_24A8963C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79068, &qword_24A8BC4A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24A8964D0(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24A895FA0(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79090, &unk_24A8BCDF0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24A8965D8(void *a1, int64_t a2, char a3)
{
  result = sub_24A89DBD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_24A89665C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24A8BAFC4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A8966D4()
{
  result = qword_27EF790A0;
  if (!qword_27EF790A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF79020, &qword_24A8BC330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF790A0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24A896790(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A8967B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t FMNMockClientURLResponse.init(data:response:error:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24A896834(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_24A896890(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_24A896918(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_24A896978()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_24A8969C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_24A896A68(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_24A896AC8()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_24A896B14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_24A896BB8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 56);
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
}

uint64_t sub_24A896C18()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_24A896C64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_24A896D08@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 64);
  return result;
}

uint64_t sub_24A896D4C(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 64) = v2;
  return result;
}

uint64_t FMNAuthenticationCredential.FMNAuthenticationCredentialError.hashValue.getter()
{
  sub_24A8BB934();
  MEMORY[0x24C21EF50](0);
  return sub_24A8BB954();
}

uint64_t sub_24A896E5C()
{
  sub_24A8BB934();
  MEMORY[0x24C21EF50](0);
  return sub_24A8BB954();
}

uint64_t sub_24A896EA0()
{
  sub_24A8BB934();
  MEMORY[0x24C21EF50](0);
  return sub_24A8BB954();
}

uint64_t sub_24A896EEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "x-apple-request-uuid";
      v3 = 0xD000000000000015;
    }

    else
    {
      v4 = "x-responding-instance";
      v3 = 0xD000000000000013;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2)
    {
      v4 = "x-apple-error-code";
    }

    else
    {
      v4 = "PUT";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (a2 == 2)
    {
      v6 = "x-apple-request-uuid";
    }

    else
    {
      v6 = "x-responding-instance";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a2)
    {
      v6 = "x-apple-error-code";
    }

    else
    {
      v6 = "PUT";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24A8BB804();
  }

  return v7 & 1;
}

uint64_t sub_24A897010(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x656B6F5468747561;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x656D614E74736F68;
    }

    else
    {
      v5 = 0x54746E756F636361;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000657079;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x64496E6F73726570;
    }

    else
    {
      v5 = 0x656B6F5468747561;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE90000000000006ELL;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x656D614E74736F68;
  if (a2 != 2)
  {
    v8 = 0x54746E756F636361;
    v7 = 0xEB00000000657079;
  }

  if (a2)
  {
    v3 = 0x64496E6F73726570;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A8BB804();
  }

  return v11 & 1;
}

uint64_t sub_24A897164(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 5522759;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 5526864;
    }

    else
    {
      v4 = 0x4554454C4544;
    }

    if (v3 == 2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1414745936;
    }

    else
    {
      v4 = 5522759;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE300000000000000;
  v8 = 5526864;
  if (a2 != 2)
  {
    v8 = 0x4554454C4544;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 1414745936;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A8BB804();
  }

  return v11 & 1;
}

uint64_t sub_24A897278(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x65707954656D696DLL;
    }

    else
    {
      v4 = 1954047348;
    }

    if (v2)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1702521203;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x746E656D6D6F63;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x676E69646F636E65;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x65707954656D696DLL;
    }

    else
    {
      v9 = 1954047348;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x746E656D6D6F63;
    if (a2 != 3)
    {
      v6 = 0x676E69646F636E65;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1702521203;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_24A8BB804();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}