uint64_t sub_230CF32E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_230CF3320()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void RemotePairing.getPairedDevices(completion:)(void (*a1)(void), uint64_t a2)
{
  v51 = a2;
  v52 = a1;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59EE0, &qword_230CF6530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v50 - v3;
  v65 = sub_230CF5D54();
  v61 = *(v65 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59EE8, &qword_230CF6538) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v59 = &v50 - v9;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59EF0, &qword_230CF6540) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v58 = &v50 - v11;
  v12 = sub_230CF5E54();
  v60 = *(v12 - 8);
  v13 = *(v60 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_230CF5E04();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20]();
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230CF5DA4();
  v21 = sub_230CF5D94();
  v22 = sub_230CF5D74();
  v66 = v7;
  v64 = v16;
  v55 = v15;
  v50 = v21;
  v57 = v12;
  v67 = MEMORY[0x277D84F90];
  v63 = *(v22 + 16);
  if (v63)
  {
    v23 = 0;
    v56 = (v60 + 48);
    v54 = (v60 + 32);
    v53 = (v60 + 8);
    v61 += 8;
    v62 = v17 + 16;
    v60 = v17 + 8;
    v24 = v64;
    v25 = v66;
    while (v23 < *(v22 + 16))
    {
      v26 = v22;
      (*(v17 + 16))(v20, v22 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v23, v24);
      sub_230CF5DE4();
      v27 = objc_allocWithZone(DSPairedComputer);
      v28 = sub_230CF5E94();

      v29 = [v27 initWithDeviceName_];

      if (!v29)
      {
        goto LABEL_28;
      }

      sub_230CF5DD4();
      v30 = v65;
      if (v31)
      {
        v32 = sub_230CF5E94();
      }

      else
      {
        v32 = 0;
      }

      [v29 setSerialNumber_];

      sub_230CF5DF4();
      if (v33)
      {
        v34 = sub_230CF5E94();
      }

      else
      {
        v34 = 0;
      }

      [v29 setModel_];

      sub_230CF5DF4();
      if (v35)
      {
        v36 = sub_230CF5E24();
        (*(*(v36 - 8) + 56))(v59, 1, 1, v36);
        v37 = v58;
        sub_230CF5E34();
        v38 = v57;
        if ((*v56)(v37, 1, v57) == 1)
        {
          sub_230CF49B0(v37);
        }

        else
        {
          v39 = v55;
          (*v54)(v55, v37, v38);
          sub_230CF5E44();
          if (v40)
          {
            v41 = sub_230CF5E94();
            v39 = v55;
          }

          else
          {
            v41 = 0;
          }

          [v29 setMarketingName_];

          (*v53)(v39, v38);
        }

        v25 = v66;
      }

      sub_230CF5DC4();
      sub_230CF5D44();
      (*v61)(v25, v30);
      v42 = sub_230CF5E94();

      [v29 setRemotePairingFrameworkIdentifier_];

      sub_230CF5DB4();
      v43 = sub_230CF5D24();
      v44 = *(v43 - 8);
      v45 = 0;
      if ((*(v44 + 48))(v4, 1, v43) != 1)
      {
        v45 = sub_230CF5D14();
        (*(v44 + 8))(v4, v43);
      }

      [v29 setDatePaired_];

      v46 = v29;
      MEMORY[0x23191C460]();
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v47 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_230CF5EE4();
      }

      ++v23;
      sub_230CF5EF4();

      v24 = v64;
      (*v60)(v20, v64);
      v22 = v26;
      v25 = v66;
      if (v63 == v23)
      {
        v48 = v52;
        v49 = v50;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v49 = v50;
    v48 = v52;
LABEL_26:

    v48(0);
  }
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

uint64_t sub_230CF49B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59EF0, &qword_230CF6540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_230CF4AAC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_230CF5D04();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t RemotePairing.removeAllPairedDevices()()
{
  sub_230CF5DA4();
  v0 = sub_230CF5D94();
  sub_230CF5D84();

  return 0;
}

uint64_t sub_230CF4BE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id RemotePairing.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemotePairing.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RemotePairing.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_230CF4DDC(void (**a1)(const void *, void))
{
  v47 = a1;
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59EE0, &qword_230CF6530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v47 - v2;
  v4 = sub_230CF5D54();
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59EE8, &qword_230CF6538) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v47 - v9;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59EF0, &qword_230CF6540) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v47 - v12;
  v60 = sub_230CF5E54();
  v52 = *(v60 - 8);
  v14 = *(v52 + 64);
  MEMORY[0x28223BE20]();
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_230CF5E04();
  v62 = *(v17 - 8);
  v18 = *(v62 + 64);
  MEMORY[0x28223BE20]();
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230CF5DA4();
  v21 = sub_230CF5D94();
  v22 = sub_230CF5D74();
  v23 = v47;
  v61 = v17;
  v50 = v16;
  v63 = MEMORY[0x277D84F90];
  v59 = *(v22 + 16);
  if (v59)
  {
    v24 = 0;
    v26 = v61;
    v25 = v62;
    v57 = v10;
    v58 = v62 + 16;
    v49 = (v52 + 32);
    v48 = (v52 + 8);
    v53 += 8;
    v54 = v22;
    v51 = (v52 + 48);
    v52 = v62 + 8;
    v55 = v21;
    v56 = v13;
    while (v24 < *(v22 + 16))
    {
      (*(v25 + 16))(v20, v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v24, v26);
      sub_230CF5DE4();
      v27 = objc_allocWithZone(DSPairedComputer);
      v28 = sub_230CF5E94();

      v29 = [v27 initWithDeviceName_];

      if (!v29)
      {
        goto LABEL_26;
      }

      sub_230CF5DD4();
      if (v30)
      {
        v31 = sub_230CF5E94();
      }

      else
      {
        v31 = 0;
      }

      [v29 setSerialNumber_];

      sub_230CF5DF4();
      if (v32)
      {
        v33 = sub_230CF5E94();
      }

      else
      {
        v33 = 0;
      }

      [v29 setModel_];

      sub_230CF5DF4();
      if (v34)
      {
        v35 = sub_230CF5E24();
        (*(*(v35 - 8) + 56))(v10, 1, 1, v35);
        sub_230CF5E34();
        v36 = v60;
        if ((*v51)(v13, 1, v60) == 1)
        {
          sub_230CF49B0(v13);
        }

        else
        {
          v37 = v50;
          (*v49)(v50, v13, v36);
          sub_230CF5E44();
          if (v38)
          {
            v39 = sub_230CF5E94();
            v37 = v50;
          }

          else
          {
            v39 = 0;
          }

          [v29 setMarketingName_];

          (*v48)(v37, v60);
        }
      }

      sub_230CF5DC4();
      sub_230CF5D44();
      v40 = v4;
      (*v53)(v7, v4);
      v41 = sub_230CF5E94();

      [v29 setRemotePairingFrameworkIdentifier_];

      sub_230CF5DB4();
      v42 = sub_230CF5D24();
      v43 = *(v42 - 8);
      v44 = 0;
      if ((*(v43 + 48))(v3, 1, v42) != 1)
      {
        v44 = sub_230CF5D14();
        (*(v43 + 8))(v3, v42);
      }

      [v29 setDatePaired_];

      v45 = v29;
      MEMORY[0x23191C460]();
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v46 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_230CF5EE4();
      }

      ++v24;
      sub_230CF5EF4();

      v26 = v61;
      (*v52)(v20, v61);
      v4 = v40;
      v13 = v56;
      v10 = v57;
      v22 = v54;
      v21 = v55;
      v25 = v62;
      if (v59 == v24)
      {
        v23 = v47;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    _Block_release(v47);
    __break(1u);
  }

  else
  {
LABEL_24:

    v23[2](v23, 0);
  }
}

void _s15DSRemotePairing06RemoteB0C21removeSelectedDevices_27invokingCompletionHandlerOn10completionySaySo16DSPairedComputerCG_So17OS_dispatch_queueCSgys5Error_pSgctF_0(id *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F00, &qword_230CF6578) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v40 = &v32 - v7;
  v39 = sub_230CF5E14();
  v33 = *(v39 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_230CF5E64();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_230CF5E84();
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20]();
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_20:
    if (sub_230CF5F34())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_230CF5DA4();
    v16 = sub_230CF5D94();
    v38 = a2;
    if (v21)
    {
      v17 = sub_230CF5F34();
      if (!v17)
      {
LABEL_17:

        return;
      }
    }

    else
    {
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_17;
      }
    }

    v15 = 0;
    v36 = a1 & 0xFFFFFFFFFFFFFF8;
    v37 = a1 & 0xC000000000000001;
    v35 = *MEMORY[0x277D46108];
    v22 = v33;
    v33 += 8;
    v34 = (v22 + 104);
    while (1)
    {
      if (v37)
      {
        v20 = a1;
        v23 = MEMORY[0x23191C4D0](v15, a1);
      }

      else
      {
        if (v15 >= *(v36 + 16))
        {
          goto LABEL_19;
        }

        v20 = a1;
        v23 = a1[v15 + 4];
      }

      a1 = v23;
      a2 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v24 = [v23 remotePairingFrameworkIdentifier];
      if (!v24)
      {
        break;
      }

      v25 = v24;
      sub_230CF5EA4();

      v11 = v40;
      sub_230CF5D34();

      v26 = sub_230CF5D54();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v11, 1, v26) == 1)
      {
        goto LABEL_24;
      }

      (*(v27 + 32))(v10, v11, v26);
      v12 = v39;
      (*v34)(v10, v35, v39);
      v21 = swift_allocObject();
      *(v21 + 16) = v41;
      *(v21 + 24) = v42;

      sub_230CF5D64();

      (*v33)(v10, v12);
      ++v15;
      a1 = v20;
      if (a2 == v17)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a2)
  {
    v28 = v16;
    v29 = swift_allocObject();
    v30 = v42;
    *(v29 + 16) = v41;
    *(v29 + 24) = v30;
    aBlock[4] = sub_230CF5BBC;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_230CF4BE4;
    aBlock[3] = &block_descriptor;
    v31 = _Block_copy(aBlock);

    sub_230CF5E74();
    v43 = MEMORY[0x277D84F90];
    sub_230CF5C00();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F10, &qword_230CF6580);
    sub_230CF5C58();
    sub_230CF5F14();
    MEMORY[0x23191C4B0](0, v20, v15, v31);
    _Block_release(v31);
    (*(v12 + 8))(v15, v11);
    (*(v17 + 8))(v20, v28);

    return;
  }

LABEL_25:
  __break(1u);
}

unint64_t sub_230CF5B40()
{
  result = qword_27DB59EF8;
  if (!qword_27DB59EF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DB59EF8);
  }

  return result;
}

uint64_t sub_230CF5B94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_230CF5BBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_230CF5C00()
{
  result = qword_27DB59F08;
  if (!qword_27DB59F08)
  {
    sub_230CF5E64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59F08);
  }

  return result;
}

unint64_t sub_230CF5C58()
{
  result = qword_27DB59F18;
  if (!qword_27DB59F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB59F10, &qword_230CF6580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59F18);
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