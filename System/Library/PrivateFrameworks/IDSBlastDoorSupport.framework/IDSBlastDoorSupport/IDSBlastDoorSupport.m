uint64_t sub_2547324E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_254732518()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_254732960(uint64_t a1, void (*a2)(void *, void *), uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v20 = a2;
  v9 = a4(0);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v19 - v12;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v16 = (&v19 - v15);
  sub_254735D60(a1, &v19 - v15, a5, a6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    MEMORY[0x259C17C50](*v16);
    v20(0, v17);
  }

  else
  {
    (*(v10 + 32))(v13, v16, v9);
    v18 = sub_254735EF4();
    v20(v18, 0);

    (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_254732B44(void *a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v62 = *MEMORY[0x277D85DE8];
  v8 = sub_254735FC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F610098, &qword_2547364B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = v59 - v14;
  if (a1[2])
  {
    v16 = sub_2547344B4(99, 0xE100000000000000);
    if (v17)
    {
      v59[0] = a3;
      sub_254734580(a1[7] + 32 * v16, &v60);
      if (swift_dynamicCast())
      {
        v18 = v59[2];
        v19 = sub_254735F04();
        if (v20)
        {
          v19 = sub_254735F04();
          if (v21)
          {
            sub_254736004();
            sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
            v22 = sub_254736044();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6100A8, &qword_2547364B8);
            v23 = swift_allocObject();
            *(v23 + 16) = xmmword_2547364A0;
            v60 = v18;
            v61 = 0;
            v24 = sub_254735FA4();
            v26 = v25;
            *(v23 + 56) = MEMORY[0x277D837D0];
            *(v23 + 64) = sub_25473452C();
            *(v23 + 32) = v24;
            *(v23 + 40) = v26;
            sub_254735E84();

LABEL_15:
            sub_254735FB4();
            sub_254734808(&qword_27F6100C0, MEMORY[0x277CF30A0]);
            v32 = swift_allocError();
            (*(v9 + 16))(v52, v12, v8);
            v34 = v32;
            goto LABEL_8;
          }
        }

        v37 = v19;
        v38 = objc_opt_self();
        v39 = sub_254735FD4();
        v60 = 0;
        v40 = [v38 dataWithPropertyList:v39 format:200 options:0 error:&v60];

        if (!v40)
        {
          v49 = v60;
          v50 = sub_254735E54();

          swift_willThrow();
          sub_254736004();
          sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
          v51 = sub_254736044();
          sub_254735E84();

          goto LABEL_15;
        }

        v41 = v60;
        v42 = sub_254735E74();
        v44 = v43;

        v45 = v59[0];
        if (v37 == 97)
        {
          sub_254735F94();
          v53 = *(v4 + OBJC_IVAR___IDSBlastDoorInterfaceInternal_bd);
          v54 = sub_254735F34();
          (*(*(v54 - 8) + 56))(v15, 1, 1, v54);
          v55 = swift_allocObject();
          *(v55 + 16) = a2;
          *(v55 + 24) = v45;
          sub_254734808(&qword_281414318, MEMORY[0x277CF2908]);
        }

        else
        {
          if (v37 == 255)
          {
            sub_254735F44();
            v46 = *(v4 + OBJC_IVAR___IDSBlastDoorInterfaceInternal_bd);
            v47 = sub_254735F34();
            (*(*(v47 - 8) + 56))(v15, 1, 1, v47);
            v48 = swift_allocObject();
            *(v48 + 16) = a2;
            *(v48 + 24) = v45;
            sub_254734808(&qword_281414320, MEMORY[0x277CF2330]);

            sub_254735EC4();

            sub_254734624(v42, v44);
LABEL_19:
            result = sub_254734678(v15);
            goto LABEL_9;
          }

          sub_254735F24();
          v56 = *(v4 + OBJC_IVAR___IDSBlastDoorInterfaceInternal_bd);
          v57 = sub_254735F34();
          (*(*(v57 - 8) + 56))(v15, 1, 1, v57);
          v58 = swift_allocObject();
          *(v58 + 16) = a2;
          *(v58 + 24) = v45;
          sub_254734808(&qword_281414328, MEMORY[0x277CF20A8]);
        }

        sub_254735EC4();
        sub_254734624(v42, v44);

        goto LABEL_19;
      }
    }
  }

  sub_254736004();
  sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
  v27 = sub_254736044();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6100A8, &qword_2547364B8);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2547364A0;
  v60 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6100B0, &qword_2547364C0);
  v29 = sub_254735FA4();
  v31 = v30;
  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 64) = sub_25473452C();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  sub_254735E84();

  sub_254735FB4();
  sub_254734808(&qword_27F6100C0, MEMORY[0x277CF30A0]);
  v32 = swift_allocError();
  (*(v9 + 16))(v33, v12, v8);
  v34 = v32;
LABEL_8:
  a2(0, v34);

  result = (*(v9 + 8))(v12, v8);
LABEL_9:
  v36 = *MEMORY[0x277D85DE8];
  return result;
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

void sub_254733544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_254735E44();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_2547335B4(uint64_t a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  v58[4] = *MEMORY[0x277D85DE8];
  v7 = sub_254735FC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_254735F84();
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = *(v52 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F610098, &qword_2547364B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v55 = &v51 - v17;
  v18 = objc_opt_self();
  v19 = sub_254735FD4();
  v58[0] = 0;
  v20 = [v18 dataWithPropertyList:v19 format:200 options:0 error:v58];

  v21 = v58[0];
  if (!v20)
  {
    v40 = v21;
    v41 = sub_254735E54();

    swift_willThrow();
    sub_254736004();
    sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
    v42 = sub_254736044();
    sub_254735E84();

    sub_254735FB4();
    sub_254734808(&qword_27F6100C0, MEMORY[0x277CF30A0]);
    v38 = swift_allocError();
    (*(v8 + 16))(v43, v11, v7);
    a3(0, v38);
    goto LABEL_16;
  }

  v22 = a4;
  v23 = sub_254735E74();
  v56 = v24;

  if (!*(a2 + 16) || (v25 = sub_2547344B4(0x6369706F74, 0xE500000000000000), (v26 & 1) == 0) || (sub_254734580(*(a2 + 56) + 32 * v25, v58), (swift_dynamicCast() & 1) == 0))
  {
    sub_254736004();
    sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
    v37 = sub_254736044();
    sub_254735E84();

LABEL_14:
    sub_254735FB4();
    sub_254734808(&qword_27F6100C0, MEMORY[0x277CF30A0]);
    v38 = swift_allocError();
    (*(v8 + 16))(v39, v11, v7);
    a3(0, v38);
    sub_254734624(v23, v56);
LABEL_16:

    result = (*(v8 + 8))(v11, v7);
    goto LABEL_17;
  }

  if (!*(a2 + 16) || (v51 = v57, v27 = sub_2547344B4(0x646E616D6D6F63, 0xE700000000000000), (v28 & 1) == 0) || (sub_254734580(*(a2 + 56) + 32 * v27, v58), (swift_dynamicCast() & 1) == 0))
  {

    sub_254736004();
    sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
    v45 = sub_254736044();
    sub_254735E84();

    goto LABEL_14;
  }

  if (*(a2 + 16) && (v29 = sub_2547344B4(0xD000000000000015, 0x80000002547366A0), (v30 & 1) != 0) && (sub_254734580(*(a2 + 56) + 32 * v29, v58), swift_dynamicCast()) && (v57 & 1) != 0)
  {

    sub_254735F14();
    v31 = *(v54 + OBJC_IVAR___IDSBlastDoorInterfaceInternal_bd);
    v32 = sub_254735F34();
    v33 = v55;
    (*(*(v32 - 8) + 56))(v55, 1, 1, v32);
    v34 = swift_allocObject();
    *(v34 + 16) = a3;
    *(v34 + 24) = v22;
    sub_254734808(&qword_27F6100D8, MEMORY[0x277CF2060]);

    v35 = v56;
    sub_254735EC4();

    sub_254734624(v23, v35);
    result = sub_254734678(v33);
  }

  else
  {
    sub_254735F74();
    v46 = *(v54 + OBJC_IVAR___IDSBlastDoorInterfaceInternal_bd);
    sub_254735F64();
    v47 = sub_254735F34();
    v48 = v55;
    (*(*(v47 - 8) + 56))(v55, 1, 1, v47);
    v49 = swift_allocObject();
    *(v49 + 16) = a3;
    *(v49 + 24) = v22;
    sub_254734808(&qword_27F6100D0, MEMORY[0x277CF24C0]);

    v50 = v56;
    sub_254735ED4();
    sub_254734624(v23, v50);

    sub_254734678(v48);
    result = (*(v52 + 8))(v15, v53);
  }

LABEL_17:
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_254733E9C(uint64_t a1, void (*a2)(void *, void *))
{
  v4 = sub_254735F64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6100F0, &qword_254736520) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = (&v15 - v10);
  sub_254735D60(a1, &v15 - v10, &qword_27F6100F0, &qword_254736520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    MEMORY[0x259C17C50](*v11);
    a2(0, v12);
  }

  else
  {
    v13 = (*(v5 + 32))(v8, v11, v4);
    v14 = MEMORY[0x259C17890](v13);
    a2(v14, 0);

    (*(v5 + 8))(v8, v4);
  }
}

id IDSBlastDoorInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IDSBlastDoorInterface.init()()
{
  v15 = sub_254736024();
  v0 = *(v15 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20]();
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_254736014() - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = *(*(sub_254735EA4() - 8) + 64);
  MEMORY[0x28223BE20]();
  v14 = OBJC_IVAR___IDSBlastDoorInterfaceInternal_bd;
  v6 = sub_254735EE4();
  v13[0] = "is-invitation-service";
  v13[1] = v6;
  v7 = *MEMORY[0x277CF30B0];
  sub_2547347C0(0, &qword_281414300, 0x277D85C78);
  v8 = v7;
  sub_254735E94();
  v18 = MEMORY[0x277D84F90];
  sub_254734808(&qword_281414308, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6100E0, &qword_2547364C8);
  sub_254734850();
  sub_254736054();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v15);
  sub_254736034();
  v9 = sub_254735EB4();
  v10 = v16;
  *&v16[v14] = v9;
  v11 = type metadata accessor for IDSBlastDoorInterface();
  v17.receiver = v10;
  v17.super_class = v11;
  return objc_msgSendSuper2(&v17, sel_init);
}

id IDSBlastDoorInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSBlastDoorInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2547344B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_254736074();
  sub_254735FF4();
  v6 = sub_254736084();

  return sub_2547349A0(a1, a2, v6);
}

unint64_t sub_25473452C()
{
  result = qword_27F6100B8;
  if (!qword_27F6100B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6100B8);
  }

  return result;
}

uint64_t sub_254734580(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_254734624(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_254734678(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F610098, &qword_2547364B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2547347C0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_254734808(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_254734850()
{
  result = qword_281414310;
  if (!qword_281414310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F6100E0, &qword_2547364C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414310);
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

unint64_t sub_2547349A0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_254736064())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_254734A58(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F610098, &qword_2547364B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = v61 - v7;
  v9 = sub_254735FC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  v15 = a1[2];
  _Block_copy(a3);
  if (v15)
  {
    v16 = sub_2547344B4(99, 0xE100000000000000);
    if (v17)
    {
      v61[0] = v14;
      sub_254734580(a1[7] + 32 * v16, &v62);
      if (swift_dynamicCast())
      {
        v18 = v61[2];
        v19 = sub_254735F04();
        if (v20)
        {
          v19 = sub_254735F04();
          if (v21)
          {
            sub_254736004();
            sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
            v22 = sub_254736044();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6100A8, &qword_2547364B8);
            v23 = swift_allocObject();
            *(v23 + 16) = xmmword_2547364A0;
            v62 = v18;
            v63 = 0;
            v24 = sub_254735FA4();
            v26 = v25;
            *(v23 + 56) = MEMORY[0x277D837D0];
            *(v23 + 64) = sub_25473452C();
            *(v23 + 32) = v24;
            *(v23 + 40) = v26;
            sub_254735E84();

LABEL_14:
            sub_254735FB4();
            sub_254734808(&qword_27F6100C0, MEMORY[0x277CF30A0]);
            v52 = swift_allocError();
            (*(v10 + 16))(v53, v13, v9);
            v54 = sub_254735E44();
            (a3)[2](a3, 0, v54);

            (*(v10 + 8))(v13, v9);
            goto LABEL_8;
          }
        }

        v37 = v19;
        v38 = objc_opt_self();
        v39 = sub_254735FD4();
        v62 = 0;
        v40 = [v38 dataWithPropertyList:v39 format:200 options:0 error:&v62];

        if (!v40)
        {
          v49 = v62;
          v50 = sub_254735E54();

          swift_willThrow();
          sub_254736004();
          sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
          v51 = sub_254736044();
          sub_254735E84();

          goto LABEL_14;
        }

        v41 = v62;
        v42 = sub_254735E74();
        v44 = v43;

        v45 = v61[0];
        if (v37 == 97)
        {
          sub_254735F94();
          v55 = *(a2 + OBJC_IVAR___IDSBlastDoorInterfaceInternal_bd);
          v56 = sub_254735F34();
          (*(*(v56 - 8) + 56))(v8, 1, 1, v56);
          v57 = swift_allocObject();
          *(v57 + 16) = sub_254735DC8;
          *(v57 + 24) = v45;
          sub_254734808(&qword_281414318, MEMORY[0x277CF2908]);
        }

        else
        {
          if (v37 == 255)
          {
            sub_254735F44();
            v46 = *(a2 + OBJC_IVAR___IDSBlastDoorInterfaceInternal_bd);
            v47 = sub_254735F34();
            (*(*(v47 - 8) + 56))(v8, 1, 1, v47);
            v48 = swift_allocObject();
            *(v48 + 16) = sub_254735DC8;
            *(v48 + 24) = v45;
            sub_254734808(&qword_281414320, MEMORY[0x277CF2330]);

            sub_254735EC4();

            sub_254734624(v42, v44);
LABEL_18:
            sub_254734678(v8);
            goto LABEL_8;
          }

          sub_254735F24();
          v58 = *(a2 + OBJC_IVAR___IDSBlastDoorInterfaceInternal_bd);
          v59 = sub_254735F34();
          (*(*(v59 - 8) + 56))(v8, 1, 1, v59);
          v60 = swift_allocObject();
          *(v60 + 16) = sub_254735DC8;
          *(v60 + 24) = v45;
          sub_254734808(&qword_281414328, MEMORY[0x277CF20A8]);
        }

        sub_254735EC4();
        sub_254734624(v42, v44);

        goto LABEL_18;
      }
    }
  }

  sub_254736004();
  sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
  v27 = sub_254736044();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6100A8, &qword_2547364B8);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2547364A0;
  v62 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6100B0, &qword_2547364C0);
  v29 = sub_254735FA4();
  v31 = v30;
  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 64) = sub_25473452C();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  sub_254735E84();

  sub_254735FB4();
  sub_254734808(&qword_27F6100C0, MEMORY[0x277CF30A0]);
  v32 = swift_allocError();
  (*(v10 + 16))(v33, v13, v9);
  v34 = sub_254735E44();
  (a3)[2](a3, 0, v34);

  (*(v10 + 8))(v13, v9);
LABEL_8:

  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_254735414(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v56 = a3;
  v62[4] = *MEMORY[0x277D85DE8];
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F610098, &qword_2547364B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v57 = &v53 - v7;
  v8 = sub_254735F84();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_254735FC4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20]();
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = swift_allocObject();
  *(v60 + 16) = a4;
  v17 = objc_opt_self();
  _Block_copy(a4);
  v18 = sub_254735FD4();
  v62[0] = 0;
  v19 = [v17 dataWithPropertyList:v18 format:200 options:0 error:v62];

  v20 = v62[0];
  if (!v19)
  {
    v39 = v20;
    v40 = sub_254735E54();

    swift_willThrow();
    sub_254736004();
    sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
    v41 = sub_254736044();
    sub_254735E84();

    sub_254735FB4();
    sub_254734808(&qword_27F6100C0, MEMORY[0x277CF30A0]);
    v36 = swift_allocError();
    (*(v13 + 16))(v42, v16, v12);
    v43 = sub_254735E44();
    (a4)[2](a4, 0, v43);

    goto LABEL_16;
  }

  v58 = sub_254735E74();
  v59 = v21;

  if (!*(a2 + 16) || (v22 = sub_2547344B4(0x6369706F74, 0xE500000000000000), (v23 & 1) == 0) || (sub_254734580(*(a2 + 56) + 32 * v22, v62), !swift_dynamicCast()))
  {
    sub_254736004();
    sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
    v35 = sub_254736044();
    sub_254735E84();

LABEL_14:
    sub_254735FB4();
    sub_254734808(&qword_27F6100C0, MEMORY[0x277CF30A0]);
    v36 = swift_allocError();
    (*(v13 + 16))(v37, v16, v12);
    v38 = sub_254735E44();
    (a4)[2](a4, 0, v38);

    sub_254734624(v58, v59);
LABEL_16:

    (*(v13 + 8))(v16, v12);
    goto LABEL_17;
  }

  if (!*(a2 + 16) || (v24 = sub_2547344B4(0x646E616D6D6F63, 0xE700000000000000), (v25 & 1) == 0) || (sub_254734580(*(a2 + 56) + 32 * v24, v62), (swift_dynamicCast() & 1) == 0))
  {

    sub_254736004();
    sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
    v46 = sub_254736044();
    sub_254735E84();

    goto LABEL_14;
  }

  v26 = v60;
  if (*(a2 + 16) && (v27 = sub_2547344B4(0xD000000000000015, 0x80000002547366A0), (v28 & 1) != 0) && (sub_254734580(*(a2 + 56) + 32 * v27, v62), swift_dynamicCast()) && (v61 & 1) != 0)
  {

    sub_254735F14();
    v29 = *(v56 + OBJC_IVAR___IDSBlastDoorInterfaceInternal_bd);
    v30 = sub_254735F34();
    v31 = v57;
    (*(*(v30 - 8) + 56))(v57, 1, 1, v30);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_254735D58;
    *(v32 + 24) = v26;
    sub_254734808(&qword_27F6100D8, MEMORY[0x277CF2060]);

    v34 = v58;
    v33 = v59;
    sub_254735EC4();

    sub_254734624(v34, v33);
    sub_254734678(v31);
  }

  else
  {
    sub_254735F74();
    v47 = *(v56 + OBJC_IVAR___IDSBlastDoorInterfaceInternal_bd);
    sub_254735F64();
    v48 = sub_254735F34();
    v49 = v57;
    (*(*(v48 - 8) + 56))(v57, 1, 1, v48);
    v50 = swift_allocObject();
    *(v50 + 16) = sub_254735D58;
    *(v50 + 24) = v26;
    sub_254734808(&qword_27F6100D0, MEMORY[0x277CF24C0]);

    v52 = v58;
    v51 = v59;
    sub_254735ED4();
    sub_254734624(v52, v51);

    sub_254734678(v49);
    (*(v54 + 8))(v11, v55);
  }

LABEL_17:

  v45 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_254735D60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t Data._idsOptionallyDecompress()()
{
  v0 = sub_254735E64();
  v1 = [v0 _idsOptionallyDecompressData];

  v2 = sub_254735E74();
  return v2;
}