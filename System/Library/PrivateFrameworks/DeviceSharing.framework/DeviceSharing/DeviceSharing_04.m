uint64_t sub_2489DBB80(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v48 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5450, qword_248A14E30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41[-v8];
  v10 = sub_248A11BC0();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v47 = &v41[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v41[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v41[-v18];
  a2(*(a4 + 16));
  if (qword_28150F5F8 != -1)
  {
    swift_once();
  }

  v20 = sub_248A122D0();
  __swift_project_value_buffer(v20, qword_2815105D8);
  v46 = v11[2];
  v46(v17, v19, v10);
  v21 = sub_248A122B0();
  v22 = sub_248A12E80();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v45 = a4;
    v24 = v23;
    v43 = swift_slowAlloc();
    v49[0] = v43;
    *v24 = 136446466;
    v25 = sub_248A13570();
    v42 = v22;
    v27 = sub_24897BC00(v25, v26, v49);
    v44 = v9;
    v28 = v27;

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0]);
    v29 = sub_248A132F0();
    v31 = v30;
    v32 = v17;
    v33 = v11[1];
    v33(v32, v10);
    v34 = sub_24897BC00(v29, v31, v49);
    v9 = v44;

    *(v24 + 14) = v34;
    _os_log_impl(&dword_248975000, v21, v42, "%{public}s: Performed authentication manager request with ID %{public}s", v24, 0x16u);
    v35 = v43;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v35, -1, -1);
    MEMORY[0x24C1E0A80](v24, -1, -1);
  }

  else
  {

    v36 = v17;
    v33 = v11[1];
    v33(v36, v10);
  }

  v37 = v47;
  v46(v47, v19, v10);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  v39 = *(v38 - 8);
  (*(v39 + 16))(v9, v48, v38);
  (*(v39 + 56))(v9, 0, 1, v38);
  swift_beginAccess();
  sub_2489BE2D4(v9, v37);
  swift_endAccess();
  return (v33)(v19, v10);
}

void sub_2489DBFEC(uint64_t a1, void *a2)
{
  v72[1] = swift_getObjectType();
  v5 = sub_248A11BC0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v72 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v72 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5450, qword_248A14E30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v72 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  v74 = *(v20 - 8);
  v75 = v20;
  v21 = *(v74 + 64);
  MEMORY[0x28223BE20](v20);
  v73 = v72 - v22;
  swift_beginAccess();
  v23 = *(v2 + 32);
  if (*(v23 + 16) && (v24 = sub_2489A881C(a1), (v25 & 1) != 0))
  {
    (*(v74 + 16))(v73, *(v23 + 56) + *(v74 + 72) * v24, v75);
    swift_endAccess();
    swift_beginAccess();
    sub_2489DD1E8(a1, v19);
    swift_endAccess();
    sub_248983734(v19, &qword_27EEB5450, qword_248A14E30);
    if (a2)
    {
      v26 = a2;
      if (qword_28150F5F8 != -1)
      {
        swift_once();
      }

      v27 = sub_248A122D0();
      __swift_project_value_buffer(v27, qword_2815105D8);
      v28 = v5;
      (*(v6 + 16))(v15, a1, v5);
      v29 = a2;
      v30 = sub_248A122B0();
      v31 = sub_248A12E60();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v72[0] = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v76[0] = v33;
        *v32 = 136446722;
        v34 = sub_248A13570();
        v36 = sub_24897BC00(v34, v35, v76);

        *(v32 + 4) = v36;
        *(v32 + 12) = 2082;
        sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0]);
        v37 = sub_248A132F0();
        v39 = v38;
        (*(v6 + 8))(v15, v28);
        v40 = sub_24897BC00(v37, v39, v76);

        *(v32 + 14) = v40;
        *(v32 + 22) = 2114;
        v41 = a2;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 24) = v42;
        v43 = v72[0];
        *v72[0] = v42;
        _os_log_impl(&dword_248975000, v30, v31, "%{public}s: Resuming authentication manager request for %{public}s with error %{public}@", v32, 0x20u);
        sub_248983734(v43, &qword_27EEB5600, &unk_248A15210);
        MEMORY[0x24C1E0A80](v43, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x24C1E0A80](v33, -1, -1);
        MEMORY[0x24C1E0A80](v32, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v15, v5);
      }

      v76[0] = a2;
      v70 = v75;
      v71 = v73;
      sub_248A12CE0();
    }

    else
    {
      if (qword_28150F5F8 != -1)
      {
        swift_once();
      }

      v58 = sub_248A122D0();
      __swift_project_value_buffer(v58, qword_2815105D8);
      (*(v6 + 16))(v13, a1, v5);
      v59 = sub_248A122B0();
      v60 = sub_248A12E80();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v76[0] = v62;
        *v61 = 136446466;
        v63 = sub_248A13570();
        v65 = sub_24897BC00(v63, v64, v76);

        *(v61 + 4) = v65;
        *(v61 + 12) = 2082;
        sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0]);
        v66 = sub_248A132F0();
        v68 = v67;
        (*(v6 + 8))(v13, v5);
        v69 = sub_24897BC00(v66, v68, v76);

        *(v61 + 14) = v69;
        _os_log_impl(&dword_248975000, v59, v60, "%{public}s: Resuming authentication manager request for %{public}s", v61, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1E0A80](v62, -1, -1);
        MEMORY[0x24C1E0A80](v61, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v13, v5);
      }

      v70 = v75;
      v71 = v73;
      sub_248A12CF0();
    }

    (*(v74 + 8))(v71, v70);
  }

  else
  {
    swift_endAccess();
    if (qword_28150F5F8 != -1)
    {
      swift_once();
    }

    v44 = sub_248A122D0();
    __swift_project_value_buffer(v44, qword_2815105D8);
    v45 = a1;
    v46 = v5;
    (*(v6 + 16))(v10, v45, v5);
    v47 = sub_248A122B0();
    v48 = sub_248A12E60();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v76[0] = v50;
      *v49 = 136446466;
      v51 = sub_248A13570();
      v53 = sub_24897BC00(v51, v52, v76);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2082;
      sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0]);
      v54 = sub_248A132F0();
      v56 = v55;
      (*(v6 + 8))(v10, v46);
      v57 = sub_24897BC00(v54, v56, v76);

      *(v49 + 14) = v57;
      _os_log_impl(&dword_248975000, v47, v48, "%{public}s: Unable to resume request; no continuation found for %{public}s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v50, -1, -1);
      MEMORY[0x24C1E0A80](v49, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v10, v5);
    }
  }
}

uint64_t SharingInteractionController.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t SharingInteractionController.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_2489DC984(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2489839A0;

  return SharingInteractionController.unlock(withDeviceID:)(a1, a2);
}

uint64_t sub_2489DCA2C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_248978D74;

  return SharingInteractionController.canAuthenticate(withDeviceID:)(a1, a2);
}

uint64_t sub_2489DCAD4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24898283C;

  return SharingInteractionController.listDevices()();
}

uint64_t sub_2489DCB64()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489E222C;

  return SharingInteractionController.listPairedDevices()();
}

uint64_t sub_2489DCBF4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2489839A0;

  return SharingInteractionController.pair(withDeviceID:)(a1, a2);
}

uint64_t sub_2489DCC9C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2489839A0;

  return SharingInteractionController.unpair(withDeviceID:)(a1, a2);
}

uint64_t sub_2489DCD44(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = *v2;
  sub_2489DD118(&unk_27EEB6000, a2, type metadata accessor for SharingInteractionController);
  v5 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489D8D90, v5, v4);
}

uint64_t sub_2489DCEC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v7 = sub_248A11BC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A11BA0();
  v12 = a3;

  a5(v11);

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2489DCFF4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(char *, id))
{
  v9 = sub_248A11BC0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A11BA0();
  v14 = a3;
  v15 = a5;

  a6(v13, v15);

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_2489DD118(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_2489DD184(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_2489D9230(a1);
}

void sub_2489DD18C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_2489D9C0C(a1);
}

uint64_t sub_2489DD194(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2489B7884(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2489DD1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2489A881C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2489B17C8();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_248A11BC0();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_2489DD51C(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2489DD3A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_248A12FC0() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v6);
      v14 = *v13;
      result = sub_248A13420();
      v15 = result & v7;
      if (v3 >= v8)
      {
        if (v15 >= v8 && v3 >= v15)
        {
LABEL_15:
          v18 = (v12 + 8 * v3);
          if (v3 != v6 || v18 >= v13 + 1)
          {
            *v18 = *v13;
          }

          v19 = *(a2 + 56);
          v20 = v19 + 40 * v3;
          v21 = (v19 + 40 * v6);
          if (v3 != v6 || v20 >= v21 + 40)
          {
            v9 = *v21;
            v10 = v21[1];
            *(v20 + 32) = *(v21 + 4);
            *v20 = v9;
            *(v20 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v15 >= v8 || v3 >= v15)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2489DD51C(int64_t a1, uint64_t a2)
{
  v4 = sub_248A11BC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_248A12FC0();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_2489DD118(&unk_27EEB5A30, 255, MEMORY[0x277CC95F0]);
      v24 = sub_248A12AE0();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2489DD870(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_248A13430();
  if (a3)
  {
    sub_248A12BB0();
  }

  sub_248A12BB0();
  v9 = sub_248A13460();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_16:
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;

    sub_2489DE368(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = (*(v7 + 48) + 16 * v11);
    v14 = v13[1];
    if (!v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_6;
    }

    v15 = *v13 == a2 && v14 == a3;
    if (v15 || (sub_248A13340() & 1) != 0)
    {

      goto LABEL_18;
    }

LABEL_7:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (a3)
  {
LABEL_6:

    goto LABEL_7;
  }

  swift_bridgeObjectRelease_n();
LABEL_18:
  *a1 = *(*(v7 + 48) + 16 * v11);

  return 0;
}

uint64_t sub_2489DDA10(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_248A13040();

    if (v9)
    {

      sub_2489B7884(0, &qword_27EEB5A90, 0x277D050E0);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_248A13030();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_2489DDC48(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2489DE0BC(v22 + 1);
    }

    v20 = v8;
    sub_2489DE2E4(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_2489B7884(0, &qword_27EEB5A90, 0x277D050E0);
  v11 = *(v6 + 40);
  v12 = sub_248A12F00();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_2489DE540(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_248A12F10();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_2489DDC48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB60B0, &qword_248A17730);
    v2 = sub_248A130D0();
    v16 = v2;
    sub_248A12FF0();
    if (sub_248A13060())
    {
      sub_2489B7884(0, &qword_27EEB5A90, 0x277D050E0);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_2489DE0BC(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_248A12F00();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_248A13060());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2489DDE38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB60C8, &qword_248A17740);
  result = sub_248A130C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      sub_248A13430();
      if (v20)
      {
        sub_248A12BB0();
      }

      sub_248A12BB0();
      result = sub_248A13460();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v21;
      v15[1] = v20;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2489DE0BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB60B0, &qword_248A17730);
  result = sub_248A130C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_248A12F00();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_2489DE2E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_248A12F00();
  v5 = -1 << *(a2 + 32);
  result = sub_248A12FD0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2489DE368(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2489DDE38(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_2489DE6B0();
        goto LABEL_23;
      }

      sub_2489DE958(v8 + 1);
    }

    v10 = *v4;
    v11 = *(*v4 + 40);
    sub_248A13430();
    if (a2)
    {
      sub_248A12BB0();
    }

    sub_248A12BB0();
    result = sub_248A13460();
    v12 = -1 << *(v10 + 32);
    a3 = result & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      do
      {
        v14 = (*(v10 + 48) + 16 * a3);
        v15 = v14[1];
        if (v15)
        {
          if (a2)
          {
            if (*v14 == v7 && v15 == a2)
            {
              goto LABEL_27;
            }

            result = sub_248A13340();
            if (result)
            {
              goto LABEL_27;
            }
          }

          else
          {
          }
        }

        else
        {

          if (!a2)
          {
            goto LABEL_26;
          }
        }

        a3 = (a3 + 1) & v13;
      }

      while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_23:
  v17 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = v7;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_26:

LABEL_27:
    result = sub_248A13370();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

void sub_2489DE540(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2489DE0BC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2489DE808();
      goto LABEL_12;
    }

    sub_2489DEBB8(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_248A12F00();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_2489B7884(0, &qword_27EEB5A90, 0x277D050E0);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_248A12F10();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_248A13370();
  __break(1u);
}

void *sub_2489DE6B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB60C8, &qword_248A17740);
  v2 = *v0;
  v3 = sub_248A130B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_2489DE808()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB60B0, &qword_248A17730);
  v2 = *v0;
  v3 = sub_248A130B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2489DE958(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB60C8, &qword_248A17740);
  result = sub_248A130C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      sub_248A13430();
      if (v19)
      {

        sub_248A12BB0();
      }

      sub_248A12BB0();
      result = sub_248A13460();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_32;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_30;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2489DEBB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB60B0, &qword_248A17730);
  result = sub_248A130C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_248A12F00();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2489DEDCC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_2489DEE78(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x24C1DFD10](a1, a2, v11);
      sub_2489B7884(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_2489B7884(0, a5, a6);
    if (sub_248A13010() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_248A13020();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_248A12F00();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_248A12F10();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

uint64_t sub_2489DF090(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_248A13340() & 1;
  }
}

uint64_t sub_2489DF100(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2489E2168();
  result = MEMORY[0x24C1DFAB0](v2, &type metadata for SpecificAssetType.RXType, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_2489DD870(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_2489DF198(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_248A13030())
  {
    v4 = sub_2489B7884(0, &qword_27EEB5A90, 0x277D050E0);
    v5 = sub_2489DD194(&qword_27EEB6010, &qword_27EEB5A90, 0x277D050E0);
    result = MEMORY[0x24C1DFAB0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C1DFDE0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_2489DDA10(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_248A13030();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_2489DF2F0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_2489DB3F8(a1);
}

void sub_2489DF2F8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_2489DBAF4(a1);
}

void sub_2489DF300(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_248A11BC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_248A12A50();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + 24);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = sub_248A12A60();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    if (qword_28150F5F8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = sub_248A122D0();
  __swift_project_value_buffer(v16, qword_2815105D8);
  (*(v5 + 16))(v8, a1, v4);
  v17 = sub_248A122B0();
  v18 = sub_248A12E80();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136446466;
    v21 = sub_248A13570();
    v23 = sub_24897BC00(v21, v22, &v29);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0]);
    v24 = sub_248A132F0();
    v26 = v25;
    (*(v5 + 8))(v8, v4);
    v27 = sub_24897BC00(v24, v26, &v29);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_248975000, v17, v18, "[%{public}s] Did start authentication for session %{public}s)", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v20, -1, -1);
    MEMORY[0x24C1E0A80](v19, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_2489DF69C(uint64_t a1)
{
  isEscapingClosureAtFileLocation = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_248A11BC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_248A12A50();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(isEscapingClosureAtFileLocation + 24);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = sub_248A12A60();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v39 = v15;
    if (qword_28150F5F8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = sub_248A122D0();
  __swift_project_value_buffer(v16, qword_2815105D8);
  (*(v5 + 16))(v8, a1, v4);
  v17 = sub_248A122B0();
  v18 = sub_248A12E80();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v41[0] = v21;
    *v20 = 136446466;
    v22 = sub_248A13570();
    v24 = sub_24897BC00(v22, v23, v41);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0]);
    v25 = sub_248A132F0();
    v27 = v26;
    (*(v5 + 8))(v8, v4);
    v28 = sub_24897BC00(v25, v27, v41);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_248975000, v17, v18, "[%{public}s] Did complete authentication for session %{public}s)", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v21, -1, -1);
    v29 = v20;
    a1 = v37;
    MEMORY[0x24C1E0A80](v29, -1, -1);
  }

  else
  {

    v30 = (*(v5 + 8))(v8, v4);
  }

  MEMORY[0x28223BE20](v30);
  v34 = a1;
  sub_248A12EF0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_12;
  }

  v31 = swift_allocObject();
  *(v31 + 16) = sub_2489E21DC;
  *(v31 + 24) = &v36 - 4;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_2489E2214;
  *(v32 + 24) = v31;

  v41[0] = isEscapingClosureAtFileLocation;
  sub_2489E21C4(v41);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
LABEL_12:
    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    v40 = isEscapingClosureAtFileLocation;
    sub_248A131F0();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    v35 = 0;
    v34 = 183;
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t sub_2489DFC14(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_248A11BC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_248A12A50();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v3 + 24);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v48 = v16;
  LOBYTE(v16) = sub_248A12A60();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    if (qword_28150F5F8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = sub_248A122D0();
  __swift_project_value_buffer(v17, qword_2815105D8);
  v18 = *(v7 + 16);
  v47 = a1;
  v18(v10, a1, v6);
  v19 = a2;
  v20 = sub_248A122B0();
  v21 = sub_248A12E60();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v45 = v3;
    v23 = v22;
    v24 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50[0] = v44;
    *v23 = 136446722;
    v25 = sub_248A13570();
    v27 = sub_24897BC00(v25, v26, v50);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0]);
    v28 = sub_248A132F0();
    v30 = v29;
    (*(v7 + 8))(v10, v6);
    v31 = sub_24897BC00(v28, v30, v50);

    *(v23 + 14) = v31;
    *(v23 + 22) = 2114;
    v32 = a2;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 24) = v33;
    *v24 = v33;
    _os_log_impl(&dword_248975000, v20, v21, "[%{public}s] Did fail authentication for session %{public}s) with error %{public}@", v23, 0x20u);
    sub_248983734(v24, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v24, -1, -1);
    v34 = v44;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v34, -1, -1);
    v35 = v23;
    v3 = v45;
    MEMORY[0x24C1E0A80](v35, -1, -1);
  }

  else
  {

    v36 = (*(v7 + 8))(v10, v6);
  }

  MEMORY[0x28223BE20](v36);
  v41 = v47;
  v42 = a2;
  sub_248A12EF0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_12;
  }

  v37 = swift_allocObject();
  *(v37 + 16) = sub_2489E21F8;
  *(v37 + 24) = &v43 - 4;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_2489E2214;
  *(v38 + 24) = v37;

  v50[0] = v3;
  sub_2489E21C4(v50);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
LABEL_12:
    v50[0] = 0;
    v50[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    v49 = v3;
    sub_248A131F0();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    LODWORD(v42) = 0;
    v41 = 191;
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t sub_2489E01FC(uint64_t a1)
{
  isEscapingClosureAtFileLocation = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_248A11BC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_248A12A50();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(isEscapingClosureAtFileLocation + 24);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = sub_248A12A60();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v39 = v15;
    if (qword_28150F5F8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = sub_248A122D0();
  __swift_project_value_buffer(v16, qword_2815105D8);
  (*(v5 + 16))(v8, a1, v4);
  v17 = sub_248A122B0();
  v18 = sub_248A12E80();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v41[0] = v21;
    *v20 = 136446466;
    v22 = sub_248A13570();
    v24 = sub_24897BC00(v22, v23, v41);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0]);
    v25 = sub_248A132F0();
    v27 = v26;
    (*(v5 + 8))(v8, v4);
    v28 = sub_24897BC00(v25, v27, v41);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_248975000, v17, v18, "[%{public}s] Did enable authentication for session %{public}s)", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v21, -1, -1);
    v29 = v20;
    a1 = v37;
    MEMORY[0x24C1E0A80](v29, -1, -1);
  }

  else
  {

    v30 = (*(v5 + 8))(v8, v4);
  }

  MEMORY[0x28223BE20](v30);
  v34 = a1;
  sub_248A12EF0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_12;
  }

  v31 = swift_allocObject();
  *(v31 + 16) = sub_2489E2124;
  *(v31 + 24) = &v36 - 4;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_2489E2214;
  *(v32 + 24) = v31;

  v41[0] = isEscapingClosureAtFileLocation;
  sub_2489E21C4(v41);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
LABEL_12:
    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    v40 = isEscapingClosureAtFileLocation;
    sub_248A131F0();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    v35 = 0;
    v34 = 199;
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t sub_2489E0774(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_248A11BC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_248A12A50();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v3 + 24);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v48 = v16;
  LOBYTE(v16) = sub_248A12A60();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    if (qword_28150F5F8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = sub_248A122D0();
  __swift_project_value_buffer(v17, qword_2815105D8);
  v18 = *(v7 + 16);
  v47 = a1;
  v18(v10, a1, v6);
  v19 = a2;
  v20 = sub_248A122B0();
  v21 = sub_248A12E60();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v45 = v3;
    v23 = v22;
    v24 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50[0] = v44;
    *v23 = 136446722;
    v25 = sub_248A13570();
    v27 = sub_24897BC00(v25, v26, v50);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0]);
    v28 = sub_248A132F0();
    v30 = v29;
    (*(v7 + 8))(v10, v6);
    v31 = sub_24897BC00(v28, v30, v50);

    *(v23 + 14) = v31;
    *(v23 + 22) = 2114;
    v32 = a2;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 24) = v33;
    *v24 = v33;
    _os_log_impl(&dword_248975000, v20, v21, "[%{public}s] Did fail to enable device for session %{public}s) with error %{public}@", v23, 0x20u);
    sub_248983734(v24, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v24, -1, -1);
    v34 = v44;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v34, -1, -1);
    v35 = v23;
    v3 = v45;
    MEMORY[0x24C1E0A80](v35, -1, -1);
  }

  else
  {

    v36 = (*(v7 + 8))(v10, v6);
  }

  MEMORY[0x28223BE20](v36);
  v41 = v47;
  v42 = a2;
  sub_248A12EF0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_12;
  }

  v37 = swift_allocObject();
  *(v37 + 16) = sub_2489E20F0;
  *(v37 + 24) = &v43 - 4;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_2489E2214;
  *(v38 + 24) = v37;

  v50[0] = v3;
  sub_2489E21C4(v50);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
LABEL_12:
    v50[0] = 0;
    v50[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    v49 = v3;
    sub_248A131F0();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    LODWORD(v42) = 0;
    v41 = 207;
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t sub_2489E0D5C(uint64_t a1)
{
  isEscapingClosureAtFileLocation = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_248A11BC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_248A12A50();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(isEscapingClosureAtFileLocation + 24);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = sub_248A12A60();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v39 = v15;
    if (qword_28150F5F8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = sub_248A122D0();
  __swift_project_value_buffer(v16, qword_2815105D8);
  (*(v5 + 16))(v8, a1, v4);
  v17 = sub_248A122B0();
  v18 = sub_248A12E80();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v41[0] = v21;
    *v20 = 136446466;
    v22 = sub_248A13570();
    v24 = sub_24897BC00(v22, v23, v41);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0]);
    v25 = sub_248A132F0();
    v27 = v26;
    (*(v5 + 8))(v8, v4);
    v28 = sub_24897BC00(v25, v27, v41);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_248975000, v17, v18, "[%{public}s] Did disable authentication for session %{public}s)", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v21, -1, -1);
    v29 = v20;
    a1 = v37;
    MEMORY[0x24C1E0A80](v29, -1, -1);
  }

  else
  {

    v30 = (*(v5 + 8))(v8, v4);
  }

  MEMORY[0x28223BE20](v30);
  v34 = a1;
  sub_248A12EF0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_12;
  }

  v31 = swift_allocObject();
  *(v31 + 16) = sub_2489E21DC;
  *(v31 + 24) = &v36 - 4;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_2489E2214;
  *(v32 + 24) = v31;

  v41[0] = isEscapingClosureAtFileLocation;
  sub_2489E21C4(v41);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
LABEL_12:
    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    v40 = isEscapingClosureAtFileLocation;
    sub_248A131F0();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    v35 = 0;
    v34 = 215;
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t sub_2489E12D4(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_248A11BC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_248A12A50();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v3 + 24);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v48 = v16;
  LOBYTE(v16) = sub_248A12A60();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    if (qword_28150F5F8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = sub_248A122D0();
  __swift_project_value_buffer(v17, qword_2815105D8);
  v18 = *(v7 + 16);
  v47 = a1;
  v18(v10, a1, v6);
  v19 = a2;
  v20 = sub_248A122B0();
  v21 = sub_248A12E60();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v45 = v3;
    v23 = v22;
    v24 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50[0] = v44;
    *v23 = 136446722;
    v25 = sub_248A13570();
    v27 = sub_24897BC00(v25, v26, v50);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0]);
    v28 = sub_248A132F0();
    v30 = v29;
    (*(v7 + 8))(v10, v6);
    v31 = sub_24897BC00(v28, v30, v50);

    *(v23 + 14) = v31;
    *(v23 + 22) = 2114;
    v32 = a2;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 24) = v33;
    *v24 = v33;
    _os_log_impl(&dword_248975000, v20, v21, "[%{public}s] Did fail to disable device for session %{public}s) with error %{public}@", v23, 0x20u);
    sub_248983734(v24, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v24, -1, -1);
    v34 = v44;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v34, -1, -1);
    v35 = v23;
    v3 = v45;
    MEMORY[0x24C1E0A80](v35, -1, -1);
  }

  else
  {

    v36 = (*(v7 + 8))(v10, v6);
  }

  MEMORY[0x28223BE20](v36);
  v41 = v47;
  v42 = a2;
  sub_248A12EF0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_12;
  }

  v37 = swift_allocObject();
  *(v37 + 16) = sub_2489E21F8;
  *(v37 + 24) = &v43 - 4;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_2489D1BD4;
  *(v38 + 24) = v37;

  v50[0] = v3;
  sub_2489D1BF0(v50);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
LABEL_12:
    v50[0] = 0;
    v50[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    v49 = v3;
    sub_248A131F0();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    LODWORD(v42) = 0;
    v41 = 223;
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t dispatch thunk of SharingInteractionControllerProtocol.unlock(withDeviceID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2489839A0;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SharingInteractionControllerProtocol.canAuthenticate(withDeviceID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_248978D74;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SharingInteractionControllerProtocol.listDevices()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24898314C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of SharingInteractionControllerProtocol.listPairedDevices()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2489E21F4;

  return v9(a1, a2);
}

uint64_t dispatch thunk of SharingInteractionControllerProtocol.pair(withDeviceID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2489839A0;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SharingInteractionControllerProtocol.unpair(withDeviceID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2489839A0;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SharingInteractionControllerProtocol.isRemoteUnlockSupported()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_248990EBC;

  return v9(a1, a2);
}

unint64_t sub_2489E2168()
{
  result = qword_27EEB60C0;
  if (!qword_27EEB60C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB60C0);
  }

  return result;
}

void *static XPCServer.makeDaemonServer(machServiceName:requiredEntitlements:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  type metadata accessor for XPCServer();
  v7 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v8 = sub_248A12B30();
  v9 = [v7 initWithMachServiceName_];

  v10 = sub_2489E5270(v9, a3);

  return v10;
}

uint64_t XPCServer.transportDispatchService.getter()
{
  sub_24898C374();
}

void *XPCServer.__allocating_init(listener:requiredEntitlements:)(void *a1, uint64_t a2)
{
  v3 = sub_2489E5270(a1, a2);

  return v3;
}

void *XPCServer.init(listener:requiredEntitlements:)(void *a1, uint64_t a2)
{
  v3 = sub_2489E5190(a1, a2);

  return v3;
}

uint64_t XPCServer.deinit()
{
  sub_2489E2570();
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = qword_28150F6B0;
  v4 = sub_248A11E00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t XPCServer.__deallocating_deinit()
{
  XPCServer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2489E2468()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105C0);
  sub_2489BDB14(0xD00000000000005CLL, 0x8000000248A1A9F0, 0x6574617669746361, 0xEA00000000002928);
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener;
  [*(v3 + OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener) setDelegate_];
  [*(v3 + v4) activate];
  v5 = *(v0 + 8);

  return v5();
}

id sub_2489E2570()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105C0);
  sub_2489BDB14(0xD00000000000005CLL, 0x8000000248A1A9F0, 0x6164696C61766E69, 0xEC00000029286574);
  sub_248A11DE0();
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener;
  [*(v2 + OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener) setDelegate_];
  v4 = *(v2 + v3);

  return [v4 invalidate];
}

uint64_t sub_2489E265C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_2815105C0);
  v6 = a1;
  v7 = sub_248A122B0();
  v8 = sub_248A12E80();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v9 = 136446466;
    v12 = sub_2489BDE7C(0xD00000000000005CLL, 0x8000000248A1A9F0, 0xD000000000000014, 0x8000000248A1AB90);
    v14 = sub_24897BC00(v12, v13, &v32);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    *(v9 + 14) = v6;
    *v10 = v6;
    v15 = v6;
    _os_log_impl(&dword_248975000, v7, v8, "%{public}s Accepting new connection: %{public}@", v9, 0x16u);
    sub_248983734(v10, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1E0A80](v11, -1, -1);
    MEMORY[0x24C1E0A80](v9, -1, -1);
  }

  v16 = *(v4 + 80);
  v17 = *(v4 + 88);
  sub_248A12140();
  v18 = v6;
  v19 = sub_248A12100();
  sub_2489E2D24();
  sub_248A12130();
  v20 = objc_opt_self();
  v21 = [v20 interfaceWithProtocol_];
  [v18 setRemoteObjectInterface_];

  v22 = [v20 interfaceWithProtocol_];
  [v18 setExportedInterface_];

  [v18 setExportedObject_];
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = v18;
  v24[3] = v23;
  v24[4] = v19;
  v36 = sub_2489E5930;
  v37 = v24;
  v32 = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_2489E2AF4;
  v35 = &block_descriptor_6;
  v25 = _Block_copy(&v32);
  v26 = v18;

  [v26 setInterruptionHandler_];
  _Block_release(v25);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  v28[2] = v26;
  v28[3] = v27;
  v28[4] = v19;
  v36 = sub_2489E59B8;
  v37 = v28;
  v32 = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_2489E2AF4;
  v35 = &block_descriptor_32;
  v29 = _Block_copy(&v32);
  v30 = v26;

  [v30 setInvalidationHandler_];
  _Block_release(v29);
  [v30 activate];
}

uint64_t sub_2489E2AF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2489E2B38(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v6 = sub_248A122D0();
  __swift_project_value_buffer(v6, qword_2815105C0);
  v7 = a1;
  v8 = sub_248A122B0();
  v9 = sub_248A12E60();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446210;
    v12 = [v7 serviceName];
    if (v12)
    {
      v13 = v12;
      v14 = sub_248A12B60();
      v16 = v15;
    }

    else
    {
      v16 = 0xEB00000000646569;
      v14 = 0x6669636570736E75;
    }

    v17 = sub_24897BC00(v14, v16, &v19);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_248975000, v8, v9, a4, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1E0A80](v11, -1, -1);
    MEMORY[0x24C1E0A80](v10, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2489E2DE8();
  }

  return result;
}

uint64_t sub_2489E2D24()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v0 = sub_248A122D0();
  __swift_project_value_buffer(v0, qword_2815105C0);
  sub_2489BDB14(0xD00000000000005CLL, 0x8000000248A1A9F0, 0x6976726553646461, 0xEE00293A5F286563);
  return sub_248A11DA0();
}

uint64_t sub_2489E2DE8()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v0 = sub_248A122D0();
  __swift_project_value_buffer(v0, qword_2815105C0);
  sub_2489BDB14(0xD00000000000005CLL, 0x8000000248A1A9F0, 0xD000000000000011, 0x8000000248A1AB70);
  return sub_248A11DB0();
}

uint64_t sub_2489E2EA8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_2489E2EF4, 0, 0);
}

uint64_t sub_2489E2EF4()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = *(v1 + 80);
  *(v3 + 24) = *(v1 + 88);
  *(v3 + 32) = v4;
  v5 = *(MEMORY[0x277D04F58] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_2489E2FDC;

  return MEMORY[0x28215A940](&unk_248A179E8, v3);
}

uint64_t sub_2489E2FDC()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489E3118, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2489E3118()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_2489E317C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2489E31A4, 0, 0);
}

uint64_t sub_2489E31A4()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[2];
  sub_248A12140();
  swift_unknownObjectRetain();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v11 = (v0[3] + *v0[3]);
    v6 = *(v0[3] + 4);
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_2489E3308;
    v8 = v0[4];

    return v11(v5);
  }

  else
  {
    swift_unknownObjectRelease();
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2489E3308()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_2489E3480;
  }

  else
  {
    v3 = sub_2489E341C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2489E341C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2489E3480()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_2489E34E4(int a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  return MEMORY[0x2822009F8](sub_2489E3508, 0, 0);
}

uint64_t sub_2489E3508()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105C0);
  sub_2489BDB14(0xD00000000000005CLL, 0x8000000248A1A9F0, 0x726F70736E617274, 0xED0000293A5F2874);
  v3 = *(v1 + 16);
  v4 = *(MEMORY[0x277D05180] + 4);
  v8 = (*MEMORY[0x277D05180] + MEMORY[0x277D05180]);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_248988D64;
  v6 = *(v0 + 32);

  return v8(v6, 0, 0xF000000000000000);
}

uint64_t sub_2489E3648(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  *(v12 + 32) = a1;
  v13 = sub_248A12D40();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_248A179C8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_248A179D0;
  v15[5] = v14;

  sub_2489E4DAC(0, 0, v10, &unk_248A179D8, v15);
}

uint64_t sub_2489E37D0(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_2489890B8;

  return sub_2489E34E4(a1);
}

uint64_t sub_2489E388C(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 48) = a1;
  return MEMORY[0x2822009F8](sub_2489E38B4, 0, 0);
}

uint64_t sub_2489E38B4()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105C0);
  sub_2489BDB14(0xD00000000000005CLL, 0x8000000248A1A9F0, 0xD000000000000012, 0x8000000248A1AA50);
  v3 = *(v1 + 16);
  v4 = *(MEMORY[0x277D05180] + 4);
  v10 = (*MEMORY[0x277D05180] + MEMORY[0x277D05180]);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_2489E39EC;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 48);

  return v10(v8, v6, v7);
}

uint64_t sub_2489E39EC(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 40);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_2489E3AFC(uint64_t a1, uint64_t a2, int a3, void *a4, const void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13;
  *(v14 + 40) = a1;
  v15 = sub_248A12D40();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_248A17990;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_248A15148;
  v17[5] = v16;
  v18 = a4;

  sub_2489E4DAC(0, 0, v12, &unk_248A15150, v17);
}

uint64_t sub_2489E3C90(int a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  if (a2)
  {
    v7 = a2;

    a2 = sub_248A11B00();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v4[4] = a2;
  v4[5] = v9;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_2489899D8;

  return sub_2489E388C(a1, a2, v9);
}

uint64_t sub_2489E3D90()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489AEC74;

  return sub_2489E2448();
}

uint64_t sub_2489E3E20()
{
  v2 = *v0;
  sub_2489E2570();
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2489E3E80(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489839A0;

  return XPCServer.send(_:)(a1);
}

uint64_t XPCServer.send(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2489E3F38, 0, 0);
}

uint64_t sub_2489E3F38()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2489E3FF8;
  v4 = v0[3];

  return sub_2489E2EA8(&unk_248A17778, v2);
}

uint64_t sub_2489E3FF8()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489E4134, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2489E4134()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_2489E4198()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489839A0;

  return XPCServer.send<A>(_:)();
}

uint64_t XPCServer.send<A>(_:)()
{
  return MEMORY[0x2822009F8](sub_2489E5FC8, 0, 0);
}

{
  return MEMORY[0x2822009F8](sub_2489E5FC8, 0, 0);
}

uint64_t sub_2489E4240()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489839A0;

  return XPCServer.send<A>(_:)();
}

uint64_t sub_2489E42E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2489839A0;

  return XPCServer.send<A>(_:payload:)(a1, a2, a3, a4);
}

uint64_t XPCServer.send<A>(_:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2489E43D0, 0, 0);
}

uint64_t sub_2489E43D0()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 16);
  *(v1 + 16) = *(v0 + 32);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_2489E4490;
  v4 = *(v0 + 48);

  return sub_2489E2EA8(&unk_248A177A8, v1);
}

uint64_t sub_2489E4490()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489E45CC, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2489E45CC()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_2489E4630()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489839A0;

  return XPCServer.send<A, B>(_:payload:)();
}

uint64_t XPCServer.send<A, B>(_:payload:)()
{
  return MEMORY[0x2822009F8](sub_2489E5FC8, 0, 0);
}

{
  return MEMORY[0x2822009F8](sub_2489E4788, 0, 0);
}

uint64_t sub_2489E46DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489839A0;

  return XPCServer.send<A, B>(_:payload:)();
}

uint64_t sub_2489E4788()
{
  v1 = sub_248A12150();
  sub_2489BCB48();
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D05128], v1);
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

id sub_2489E4958()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2489E49E4(uint64_t a1, uint64_t a2)
{
  v4 = *(MEMORY[0x277D05108] + 4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489839A0;

  return MEMORY[0x28215AB28](a2);
}

uint64_t sub_2489E4A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D050F0] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_248978D74;

  return MEMORY[0x28215AB10](a2, a3, a4, a5);
}

uint64_t sub_2489E4B4C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_248978D74;

  return sub_2489E2448();
}

uint64_t sub_2489E4BDC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2489839A0;

  return v7();
}

uint64_t sub_2489E4CC4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2489839A0;

  return v8();
}

uint64_t sub_2489E4DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_2489B1DD0(a3, v25 - v11);
  v13 = sub_248A12D40();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_248983734(v12, &unk_27EEB52D0, &qword_248A14980);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_248A12D30();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_248A12CD0();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_248A12B90() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_248983734(a3, &unk_27EEB52D0, &qword_248A14980);

    return v23;
  }

LABEL_8:
  sub_248983734(a3, &unk_27EEB52D0, &qword_248A14980);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2489E5098(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489E5FCC;

  return v7(a1);
}

void *sub_2489E5190(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_248A11DF0();
  v6 = type metadata accessor for ServerListener();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener] = a1;
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = a1;
  v3[3] = objc_msgSendSuper2(&v10, sel_init);
  v3[4] = a2;
  sub_248A122A0();
  v3[2] = sub_248A12290();
  *(v3[3] + OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_delegate + 8) = &off_285B62840;
  swift_unknownObjectWeakAssign();
  return v3;
}

void *sub_2489E5270(void *a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v7 = type metadata accessor for XPCServer();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return sub_2489E5190(a1, a2);
}

uint64_t sub_2489E52C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489839A0;

  return sub_2489E49E4(a1, v4);
}

uint64_t sub_2489E5360(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2489839A0;

  return sub_2489E4A84(a1, v7, v6, v4, v5);
}

uint64_t sub_2489E541C(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_2489E5498()
{
  result = sub_248A11E00();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of XPCServer.activate()()
{
  v2 = *(*v0 + 136);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_248978D74;

  return v6();
}

uint64_t dispatch thunk of XPCServer.transport(_:)(uint64_t a1)
{
  v4 = *(*v1 + 192);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24898D6B0;

  return v8(a1);
}

uint64_t dispatch thunk of XPCServer.transport(_:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 200);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24898CC40;

  return v12(a1, a2, a3);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2489E59E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2489839A0;

  return sub_2489E3C90(v2, v3, v4, v5);
}

uint64_t sub_2489E5AA4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2489839A0;

  return sub_2489E5098(a1, v5);
}

uint64_t sub_2489E5B5C()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2489839A0;

  return sub_2489E37D0(v2, v4, v3);
}

uint64_t sub_2489E5C10(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  for (i = (a2 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v5 = *i;

    v7 = sub_248A12B30();
    v8 = [a1 valueForEntitlement_];

    if (v8)
    {
      sub_248A12F70();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v22[0] = v20;
    v22[1] = v21;
    if (!*(&v21 + 1))
    {
      break;
    }

    if ((swift_dynamicCast() & 1) == 0 || (v19 & 1) == 0)
    {
      goto LABEL_12;
    }

    if (!--v2)
    {
      return 1;
    }
  }

  sub_248983734(v22, &qword_27EEB5610, &qword_248A15118);
LABEL_12:
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v10 = sub_248A122D0();
  __swift_project_value_buffer(v10, qword_2815105C0);

  v11 = a1;
  v12 = sub_248A122B0();
  v13 = sub_248A12E60();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v22[0] = v16;
    *v14 = 138543618;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2082;
    v17 = v11;
    v18 = sub_24897BC00(v6, v5, v22);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_248975000, v12, v13, "Rejecting connection %{public}@ due to missing entitlement: %{public}s", v14, 0x16u);
    sub_248983734(v15, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C1E0A80](v16, -1, -1);
    MEMORY[0x24C1E0A80](v14, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_2489E5EC4(void *a1)
{
  v3 = sub_2489E5C10(a1, *(v1 + 32));
  if (v3)
  {
    sub_2489E265C(a1);
  }

  return v3 & 1;
}

uint64_t sub_2489E5F08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_248978D74;

  return sub_2489E317C(a1, v7, v6, v4, v5);
}

uint64_t sub_2489E5FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2489B1DD0(a3, v24 - v10);
  v12 = sub_248A12D40();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_248983734(v11, &unk_27EEB52D0, &qword_248A14980);
  }

  else
  {
    sub_248A12D30();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_248A12CD0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_248A12B90() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_248983734(a3, &unk_27EEB52D0, &qword_248A14980);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_248983734(a3, &unk_27EEB52D0, &qword_248A14980);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2489E6270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2489B1DD0(a3, v24 - v10);
  v12 = sub_248A12D40();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_248983734(v11, &unk_27EEB52D0, &qword_248A14980);
  }

  else
  {
    sub_248A12D30();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_248A12CD0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_248A12B90() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6170, &qword_248A17AC8);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_248983734(a3, &unk_27EEB52D0, &qword_248A14980);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_248983734(a3, &unk_27EEB52D0, &qword_248A14980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6170, &qword_248A17AC8);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t BYOEAssetValidation.validateAssets(assets:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_248A12480();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489E65F8, 0, 0);
}

uint64_t sub_2489E65F8()
{
  v37 = v0;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[12];
  v7 = sub_248A122D0();
  v0[19] = __swift_project_value_buffer(v7, qword_2815105A8);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A1ABB0, 0xD000000000000017, 0x8000000248A1AC30);
  sub_248A12450();
  sub_248A123E0();
  sub_248A12AD0();

  sub_248A12410();
  sub_2489E8084(&qword_27EEB53E8);
  v8 = sub_248A12F80();
  v9 = *(v4 + 8);
  v0[20] = v9;
  v0[21] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v3, v5);
  v9(v1, v5);
  if (v8)
  {
    goto LABEL_5;
  }

  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[14];
  v13 = v0[12];
  sub_248A123E0();
  sub_248A12AD0();

  sub_248A12440();
  LOBYTE(v13) = sub_248A12F80();
  v9(v11, v12);
  v9(v10, v12);
  if (v13)
  {
LABEL_5:
    v14 = swift_task_alloc();
    v0[22] = v14;
    *v14 = v0;
    v14[1] = sub_2489E6A00;
    v15 = v0[13];

    return BYOEAssetValidation.validateAndApplyCoreRXAssets()();
  }

  else
  {
    v17 = v0[19];
    v18 = sub_248A122B0();
    v19 = sub_248A12E80();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[18];
      v21 = v0[14];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 136446210;
      swift_beginAccess();
      sub_2489E8084(&qword_27EEB53D8);
      v24 = sub_248A132F0();
      v26 = sub_24897BC00(v24, v25, &v36);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_248975000, v18, v19, "Validation: valid assets: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x24C1E0A80](v23, -1, -1);
      MEMORY[0x24C1E0A80](v22, -1, -1);
    }

    v28 = v0[20];
    v27 = v0[21];
    v29 = v0[17];
    v30 = v0[18];
    v32 = v0[15];
    v31 = v0[16];
    v33 = v0[14];
    v34 = v0[11];
    swift_beginAccess();
    (*(v32 + 16))(v34, v30, v33);
    v28(v30, v33);

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_2489E6A00(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = a1;

  return MEMORY[0x2822009F8](sub_2489E6B00, 0, 0);
}

uint64_t sub_2489E6B00()
{
  v31 = v0;
  v1 = v0[23];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v28 = sub_248A13030();
  v29 = v0[23];

  if (v28)
  {
LABEL_3:
    v4 = v0[20];
    v3 = v0[21];
    v5 = v0[17];
    v6 = v0[18];
    v7 = v0[14];
    sub_248A12410();
    sub_2489E8084(&qword_27EEB6158);
    sub_248A12C50();
    v4(v6, v7);
    sub_248A12C50();
    v0[8] = v0[10] | v0[9];
    sub_2489E8084(&qword_27EEB6160);
    sub_248A13560();
    v4(v5, v7);
  }

LABEL_4:
  v8 = v0[19];
  v9 = sub_248A122B0();
  v10 = sub_248A12E80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[18];
    v12 = v0[14];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136446210;
    swift_beginAccess();
    sub_2489E8084(&qword_27EEB53D8);
    v15 = sub_248A132F0();
    v17 = sub_24897BC00(v15, v16, &v30);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_248975000, v9, v10, "Validation: valid assets: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C1E0A80](v14, -1, -1);
    MEMORY[0x24C1E0A80](v13, -1, -1);
  }

  v19 = v0[20];
  v18 = v0[21];
  v20 = v0[17];
  v21 = v0[18];
  v23 = v0[15];
  v22 = v0[16];
  v24 = v0[14];
  v25 = v0[11];
  swift_beginAccess();
  (*(v23 + 16))(v25, v21, v24);
  v19(v21, v24);

  v26 = v0[1];

  return v26();
}

uint64_t BYOEAssetValidation.validateAndApplyCoreRXAssets()()
{
  *(v1 + 328) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980) - 8) + 64) + 15;
  *(v1 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489E6E80, 0, 0);
}

uint64_t sub_2489E6E80()
{
  v1 = *(v0 + 328);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  v4 = *(v3 + 64);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 344) = v6;
  *v6 = v0;
  v6[1] = sub_2489E6FA8;

  return v8(v2, v3);
}

uint64_t sub_2489E6FA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v7 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v5 = sub_2489E7578;
  }

  else
  {
    v5 = sub_2489E70BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2489E70BC()
{
  v17 = v0;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105A8);

  v3 = sub_248A122B0();
  v4 = sub_248A12E40();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 352);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v9 = MEMORY[0x24C1DF960](v6, &type metadata for RXUUIDInfo);
    v11 = v10;

    v12 = sub_24897BC00(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_248975000, v3, v4, "CoreRX state before validation: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  else
  {
  }

  v13 = **(v0 + 328);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 320;
  *(v0 + 24) = sub_2489E7338;
  v14 = swift_continuation_init();
  *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6168, &qword_248A17A20);
  *(v0 + 256) = MEMORY[0x277D85DD0];
  *(v0 + 264) = 1107296256;
  *(v0 + 272) = sub_2489E7A30;
  *(v0 + 280) = &block_descriptor_7;
  *(v0 + 288) = v14;
  [v13 validateAndApplyLensEnrollmentAssetsWithCompletion_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2489E7338()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  if (v2)
  {
    v3 = sub_2489E77D0;
  }

  else
  {
    v3 = sub_2489E7448;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2489E7448()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = sub_248A12D40();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_2489E80C8(v2, v0 + 168);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = *(v0 + 216);
  *(v5 + 64) = *(v0 + 200);
  *(v5 + 80) = v6;
  *(v5 + 96) = *(v0 + 232);
  *(v5 + 112) = *(v0 + 248);
  v7 = *(v0 + 184);
  *(v5 + 32) = *(v0 + 168);
  *(v5 + 48) = v7;
  sub_2489E5FD4(0, 0, *(v0 + 336), &unk_248A17A28, v5);

  v8 = *(v0 + 8);

  return v8(v3);
}

uint64_t sub_2489E7578()
{
  v1 = *(v0 + 360);
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105A8);
  v3 = v1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_248975000, v4, v5, "Error performing CoreRX validation: %{public}@", v6, 0xCu);
    sub_248983734(v7, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  v11 = *(v0 + 328);
  v10 = *(v0 + 336);

  v12 = sub_248A12D40();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_2489E80C8(v11, v0 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v14 = *(v0 + 128);
  *(v13 + 64) = *(v0 + 112);
  *(v13 + 80) = v14;
  *(v13 + 96) = *(v0 + 144);
  *(v13 + 112) = *(v0 + 160);
  v15 = *(v0 + 96);
  *(v13 + 32) = *(v0 + 80);
  *(v13 + 48) = v15;
  sub_2489E5FD4(0, 0, *(v0 + 336), &unk_248A17A10, v13);

  v16 = *(v0 + 8);
  v17 = MEMORY[0x277D84F90];

  return v16(v17);
}

uint64_t sub_2489E77D0()
{
  v1 = *(v0 + 368);
  swift_willThrow();
  v2 = *(v0 + 368);
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_2815105A8);
  v4 = v2;
  v5 = sub_248A122B0();
  v6 = sub_248A12E60();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_248975000, v5, v6, "Error performing CoreRX validation: %{public}@", v7, 0xCu);
    sub_248983734(v8, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  v12 = *(v0 + 328);
  v11 = *(v0 + 336);

  v13 = sub_248A12D40();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_2489E80C8(v12, v0 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v15 = *(v0 + 128);
  *(v14 + 64) = *(v0 + 112);
  *(v14 + 80) = v15;
  *(v14 + 96) = *(v0 + 144);
  *(v14 + 112) = *(v0 + 160);
  v16 = *(v0 + 96);
  *(v14 + 32) = *(v0 + 80);
  *(v14 + 48) = v16;
  sub_2489E5FD4(0, 0, *(v0 + 336), &unk_248A17A10, v14);

  v17 = *(v0 + 8);
  v18 = MEMORY[0x277D84F90];

  return v17(v18);
}

uint64_t sub_2489E7A30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_2489E85F8();
    **(*(v4 + 64) + 40) = sub_248A12C90();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_2489E7B10(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248978D74;

  return BYOEAssetValidation.validateAssets(assets:)(a1, a2);
}

uint64_t sub_2489E7BB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_248990EBC;

  return BYOEAssetValidation.validateAndApplyCoreRXAssets()();
}

uint64_t sub_2489E7C64()
{
  v1 = *(v0 + 16);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  v4 = *(v3 + 64);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_2489E7D8C;

  return v8(v2, v3);
}

uint64_t sub_2489E7D8C(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2489E7EC0, 0, 0);
  }
}

uint64_t sub_2489E7EC0()
{
  v16 = v0;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105A8);

  v3 = sub_248A122B0();
  v4 = sub_248A12E40();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    v9 = MEMORY[0x24C1DF960](v6, &type metadata for RXUUIDInfo);
    v11 = v10;

    v12 = sub_24897BC00(v9, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_248975000, v3, v4, "CoreRX state after validation: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2489E8084(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_248A12480();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2489E8100(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2489839A0;

  return sub_2489E7C44(a1, v4, v5, v1 + 32);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  __swift_destroy_boxed_opaque_existential_0((v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2489E822C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248978D74;

  return sub_2489E7C44(a1, v4, v5, v1 + 32);
}

uint64_t dispatch thunk of BYOEAssetValidationProtocol.validateAssets(assets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_248978D74;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BYOEAssetValidationProtocol.validateAndApplyCoreRXAssets()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_248990EBC;

  return v9(a1, a2);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2489E854C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2489E8594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2489E85F8()
{
  result = qword_27EEB6178;
  if (!qword_27EEB6178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEB6178);
  }

  return result;
}

uint64_t EnrollmentAssetServer.lockoutObserverManager.getter()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  return swift_unknownObjectRetain();
}

void *EnrollmentAssetServer.__allocating_init(xpcServer:managedAssets:telemetry:lockoutObserverManager:fileManager:compression:guestUserModeService:validation:darwinNotificationXPCEventServer:appleAccountProvider:keyValueStore:deviceSharingUserDefaults:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t *a13, void *a14)
{
  v88 = a8;
  v74 = a4;
  v83 = a14;
  v84 = a11;
  v85 = a1;
  v81 = a5;
  v82 = a10;
  v17 = a2[3];
  v80 = a2[4];
  v89 = a2;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a2, v17);
  v77 = v17;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v79 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))();
  v22 = a3;
  v86 = a3;
  v23 = a3[3];
  v76 = *(v22 + 32);
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v72 = v23;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v75 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))();
  ObjectType = swift_getObjectType();
  v28 = a6;
  v78 = a6;
  v29 = a6[3];
  v70 = *(v28 + 32);
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v69 = &v63 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))();
  v73 = a7;
  v34 = a7[3];
  v67 = a7[4];
  v35 = __swift_mutable_project_boxed_opaque_existential_1(a7, v34);
  v36 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v38 = &v63 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v39 + 16))(v38);
  v68 = a9;
  v40 = a9[3];
  v65 = a9[4];
  v41 = __swift_mutable_project_boxed_opaque_existential_1(a9, v40);
  v42 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v63 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v44);
  v66 = a12;
  v46 = a12[3];
  v63 = a12[4];
  v47 = __swift_mutable_project_boxed_opaque_existential_1(a12, v46);
  v48 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v63 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v51 + 16))(v50);
  v64 = a13;
  v52 = a13[3];
  v53 = a13[4];
  v54 = __swift_mutable_project_boxed_opaque_existential_1(a13, v52);
  v55 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v57 = &v63 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v58 + 16))(v57);
  v62 = v53;
  v59 = v83;
  v60 = sub_2489F3418(v85, v79, v75, v74, v69, v38, v88, v44, v82, v84, v50, v57, v83, v87, v40, v72, v46, v29, v77, ObjectType, v52, v34, v65, v76, v63, v70, v80, v81, v62, v67);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v64);
  __swift_destroy_boxed_opaque_existential_0(v66);
  __swift_destroy_boxed_opaque_existential_0(v68);
  __swift_destroy_boxed_opaque_existential_0(v73);
  __swift_destroy_boxed_opaque_existential_0(v78);
  __swift_destroy_boxed_opaque_existential_0(v86);
  __swift_destroy_boxed_opaque_existential_0(v89);
  return v60;
}

void *EnrollmentAssetServer.init(xpcServer:managedAssets:telemetry:lockoutObserverManager:fileManager:compression:guestUserModeService:validation:darwinNotificationXPCEventServer:appleAccountProvider:keyValueStore:deviceSharingUserDefaults:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, void *a14)
{
  v33 = a7;
  v34 = a8;
  v41 = a6;
  v42 = a3;
  v43 = a2;
  v35 = a13;
  v37 = a12;
  v38 = a10;
  v39 = a9;
  v40 = a11;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v36 = &v32 - v23;
  v14[2] = a1;
  sub_248997228(a2, (v14 + 3));
  sub_248997228(a3, (v14 + 34));
  v14[39] = a4;
  v14[40] = a5;
  sub_248997228(a6, (v14 + 8));
  v24 = v33;
  sub_248997228(v33, (v14 + 13));
  v14[18] = v34;
  sub_248997228(a9, (v14 + 19));
  sub_248997228(a12, (v14 + 24));
  v25 = v35;
  sub_248997228(v35, (v14 + 29));
  v14[41] = a14;
  swift_unknownObjectRetain();
  v26 = a14;

  swift_unknownObjectRetain();
  EnrollmentAssetServer.registerForKVSNotification()();
  EnrollmentAssetServer.registerForAccountChangeNotification@Sendable ()();
  v27 = sub_248A12D40();
  v28 = v36;
  (*(*(v27 - 8) + 56))(v36, 1, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v30 = v38;
  v29[4] = v14;
  v29[5] = v30;
  v29[6] = v40;

  swift_unknownObjectRetain();
  sub_2489AC334(0, 0, v28, &unk_248A17AE0, v29);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v25);
  __swift_destroy_boxed_opaque_existential_0(v37);
  __swift_destroy_boxed_opaque_existential_0(v39);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v41);
  __swift_destroy_boxed_opaque_existential_0(v42);
  __swift_destroy_boxed_opaque_existential_0(v43);
  return v14;
}

void EnrollmentAssetServer.registerForAccountChangeNotification@Sendable ()()
{
  v1 = v0;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105A8);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD000000000000026, 0x8000000248A1AC50);
  v3 = [objc_opt_self() sharedSubscriber];
  v5[4] = sub_2489F3954;
  v5[5] = v1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2489F2B20;
  v5[3] = &block_descriptor_8;
  v4 = _Block_copy(v5);

  [v3 registerAccountChangeEventHandler_];
  _Block_release(v4);
}

uint64_t sub_2489E9180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = swift_task_alloc();
  v6[5] = v7;
  *v7 = v6;
  v7[1] = sub_2489E9218;

  return sub_2489F1598();
}

uint64_t sub_2489E9218()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2489E9314, 0, 0);
}

uint64_t sub_2489E9314()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  *(v0 + 48) = swift_getObjectType();
  *(v0 + 112) = 0;
  v4 = swift_allocObject();
  *(v0 + 56) = v4;
  *(v4 + 16) = sub_2489F4A8C;
  *(v4 + 24) = v3;
  v5 = *(v2 + 24);
  v2 += 24;
  *(v0 + 64) = v5;
  *(v0 + 72) = v2 & 0xFFFFFFFFFFFFLL | 0x524C000000000000;
  v6 = *(v2 - 8);

  v8 = sub_248A12CD0();
  *(v0 + 80) = v8;
  *(v0 + 88) = v7;

  return MEMORY[0x2822009F8](sub_2489E93F4, v8, v7);
}

uint64_t sub_2489E93F4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  (*(v0 + 64))(v0 + 112, &unk_248A17D30, *(v0 + 56), *(v0 + 48), *(v0 + 32));

  return MEMORY[0x2822009F8](sub_2489E9488, 0, 0);
}

uint64_t sub_2489E9488()
{
  v1 = *(v0 + 16);
  *(v0 + 113) = 1;
  v2 = swift_allocObject();
  *(v0 + 96) = v2;
  *(v2 + 16) = sub_2489F4B54;
  *(v2 + 24) = v1;
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_2489E9538, v4, v3);
}

uint64_t sub_2489E9538()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  (*(v0 + 64))(v0 + 113, &unk_248A17D38, *(v0 + 96), *(v0 + 48), *(v0 + 32));

  return MEMORY[0x2822009F8](sub_2489E95D0, 0, 0);
}

uint64_t sub_2489E95D0()
{
  v1 = *(v0 + 16);
  *(v0 + 114) = 2;
  v2 = swift_allocObject();
  *(v0 + 104) = v2;
  *(v2 + 16) = sub_2489F4B5C;
  *(v2 + 24) = v1;
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_2489E9680, v4, v3);
}

uint64_t sub_2489E9680()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  (*(v0 + 64))(v0 + 114, &unk_248A17D40, *(v0 + 104), *(v0 + 48), *(v0 + 32));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2489E9710(uint64_t a1, void (*a2)(void))
{
  a2();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_2489E9774(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v7 = sub_248A122D0();
  __swift_project_value_buffer(v7, qword_2815105A8);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD00000000000002BLL, 0x8000000248A1AF00);
  v8 = sub_248A12D40();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;

  sub_2489AC334(0, 0, v6, &unk_248A17D60, v9);
}

uint64_t sub_2489E9900(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v7 = sub_248A122D0();
  __swift_project_value_buffer(v7, qword_2815105A8);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD000000000000029, 0x8000000248A1AED0);
  v8 = sub_248A12D40();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;

  sub_2489AC334(0, 0, v6, &unk_248A17D50, v9);
}

uint64_t sub_2489E9A8C()
{
  v1[16] = v0;
  v2 = sub_248A12330();
  v1[17] = v2;
  v3 = *(v2 - 8);
  v1[18] = v3;
  v4 = *(v3 + 64) + 15;
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489E9B4C, 0, 0);
}

uint64_t sub_2489E9B4C()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = sub_248A122D0();
  v0[20] = __swift_project_value_buffer(v5, qword_2815105C0);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0x6574617669746361, 0xEA00000000002928);
  v6 = *(v3 + 16);
  v0[21] = v6;
  v0[2] = v6;
  v7 = *MEMORY[0x277D04DD8];
  v8 = *(v2 + 104);
  v0[22] = v8;
  v0[23] = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v1, v7, v4);
  v9 = swift_allocObject();
  v0[24] = v9;
  swift_weakInit();
  v10 = *(MEMORY[0x277D05160] + 4);
  swift_retain_n();
  v11 = swift_task_alloc();
  v0[25] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6188, &qword_248A17B00);
  v0[26] = v12;
  v13 = sub_248A12320();
  v14 = sub_248A12400();
  v0[27] = v14;
  v15 = sub_2489F3A20();
  v0[28] = v15;
  v16 = sub_2489F4D94(&unk_28150F5B8, MEMORY[0x277D04DB0]);
  v0[29] = sub_2489F4D94(&qword_28150F5A0, MEMORY[0x277D04EB8]);
  *v11 = v0;
  v11[1] = sub_2489E9DE8;
  v17 = v0[19];

  return MEMORY[0x28215ABB8](v17, &unk_248A17AF8, v9, v12, v13, v14, v15, v16);
}

uint64_t sub_2489E9DE8()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 168);
  v5 = *(*v0 + 152);
  v6 = *(*v0 + 144);
  v7 = *(*v0 + 136);
  v10 = *v0;

  v8 = *(v6 + 8);
  *(v1 + 240) = v8;
  *(v1 + 248) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);

  return MEMORY[0x2822009F8](sub_2489E9F8C, 0, 0);
}

uint64_t sub_2489E9F8C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v0[3] = v0[21];
  v2(v3, *MEMORY[0x277D04E10], v4);
  v6 = swift_allocObject();
  v0[32] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05168] + 4);

  v8 = swift_task_alloc();
  v0[33] = v8;
  *v8 = v0;
  v8[1] = sub_2489EA0B8;
  v9 = v0[28];
  v10 = v0[26];
  v11 = v0[19];
  v12 = MEMORY[0x277D839B0];
  v13 = MEMORY[0x277D05190];

  return MEMORY[0x28215ABC0](v11, &unk_248A17B10, v6, v10, v12, v9, v13);
}

uint64_t sub_2489EA0B8()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);
  v5 = *(*v0 + 168);
  v6 = *(*v0 + 152);
  v7 = *(*v0 + 136);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_2489EA258, 0, 0);
}

uint64_t sub_2489EA258()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v0[4] = v0[21];
  v2(v3, *MEMORY[0x277D04E00], v4);
  v6 = swift_allocObject();
  v0[34] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05170] + 4);

  v8 = swift_task_alloc();
  v0[35] = v8;
  *v8 = v0;
  v8[1] = sub_2489EA384;
  v9 = v0[28];
  v10 = v0[26];
  v11 = v0[19];
  v12 = MEMORY[0x277D839B0];
  v13 = MEMORY[0x277D05190];

  return MEMORY[0x28215ABC8](v11, &unk_248A17B20, v6, v10, v12, v9, v13);
}

uint64_t sub_2489EA384()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);
  v5 = *(*v0 + 168);
  v6 = *(*v0 + 152);
  v7 = *(*v0 + 136);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_2489EA524, 0, 0);
}

uint64_t sub_2489EA524()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v0[5] = v0[21];
  v2(v3, *MEMORY[0x277D04E38], v4);
  v6 = swift_allocObject();
  v0[36] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05170] + 4);

  v8 = swift_task_alloc();
  v0[37] = v8;
  *v8 = v0;
  v8[1] = sub_2489EA650;
  v9 = v0[28];
  v10 = v0[26];
  v11 = v0[19];
  v12 = MEMORY[0x277D839B0];
  v13 = MEMORY[0x277D05190];

  return MEMORY[0x28215ABC8](v11, &unk_248A17B30, v6, v10, v12, v9, v13);
}

uint64_t sub_2489EA650()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);
  v5 = *(*v0 + 168);
  v6 = *(*v0 + 152);
  v7 = *(*v0 + 136);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_2489EA7F0, 0, 0);
}

uint64_t sub_2489EA7F0()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v0[6] = v0[21];
  v2(v3, *MEMORY[0x277D04E30], v4);
  v6 = swift_allocObject();
  v0[38] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05168] + 4);

  v8 = swift_task_alloc();
  v0[39] = v8;
  *v8 = v0;
  v8[1] = sub_2489EA91C;
  v9 = v0[28];
  v10 = v0[26];
  v11 = v0[19];
  v12 = MEMORY[0x277D839B0];
  v13 = MEMORY[0x277D05190];

  return MEMORY[0x28215ABC0](v11, &unk_248A17B40, v6, v10, v12, v9, v13);
}

uint64_t sub_2489EA91C()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);
  v5 = *(*v0 + 168);
  v6 = *(*v0 + 152);
  v7 = *(*v0 + 136);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_2489EAABC, 0, 0);
}

uint64_t sub_2489EAABC()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v0[7] = v0[21];
  v2(v3, *MEMORY[0x277D04DE8], v4);
  v6 = swift_allocObject();
  v0[40] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05170] + 4);

  v8 = swift_task_alloc();
  v0[41] = v8;
  v9 = sub_248A123B0();
  v10 = sub_2489F4D94(&unk_28150F5A8, MEMORY[0x277D04EA0]);
  *v8 = v0;
  v8[1] = sub_2489EAC20;
  v11 = v0[28];
  v12 = v0[26];
  v13 = v0[19];

  return MEMORY[0x28215ABC8](v13, &unk_248A17B50, v6, v12, v9, v11, v10);
}

uint64_t sub_2489EAC20()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);
  v5 = *(*v0 + 168);
  v6 = *(*v0 + 152);
  v7 = *(*v0 + 136);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_2489EADC0, 0, 0);
}

uint64_t sub_2489EADC0()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v0[8] = v0[21];
  v2(v3, *MEMORY[0x277D04E08], v4);
  v6 = swift_allocObject();
  v0[42] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05168] + 4);

  v8 = swift_task_alloc();
  v0[43] = v8;
  *v8 = v0;
  v8[1] = sub_2489EAEEC;
  v9 = v0[28];
  v10 = v0[26];
  v11 = v0[19];
  v12 = MEMORY[0x277D839B0];
  v13 = MEMORY[0x277D05190];

  return MEMORY[0x28215ABC0](v11, &unk_248A17B60, v6, v10, v12, v9, v13);
}

uint64_t sub_2489EAEEC()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);
  v5 = *(*v0 + 168);
  v6 = *(*v0 + 152);
  v7 = *(*v0 + 136);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_2489EB08C, 0, 0);
}

uint64_t sub_2489EB08C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v0[9] = v0[21];
  v2(v3, *MEMORY[0x277D04E40], v4);
  v6 = swift_allocObject();
  v0[44] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05178] + 4);

  v8 = swift_task_alloc();
  v0[45] = v8;
  *v8 = v0;
  v8[1] = sub_2489EB1B0;
  v9 = v0[28];
  v10 = v0[26];
  v11 = v0[19];

  return MEMORY[0x28215ABD0](v11, &unk_248A17B70, v6, v10, v9);
}

uint64_t sub_2489EB1B0()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 352);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);
  v5 = *(*v0 + 168);
  v6 = *(*v0 + 152);
  v7 = *(*v0 + 136);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_2489EB358, 0, 0);
}

uint64_t sub_2489EB358()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v0[10] = v0[21];
  v2(v3, *MEMORY[0x277D04E18], v4);
  v6 = swift_allocObject();
  v0[46] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05168] + 4);

  v8 = swift_task_alloc();
  v0[47] = v8;
  *v8 = v0;
  v8[1] = sub_2489EB484;
  v9 = v0[28];
  v10 = v0[26];
  v11 = v0[19];
  v12 = MEMORY[0x277D839B0];
  v13 = MEMORY[0x277D05190];

  return MEMORY[0x28215ABC0](v11, &unk_248A17B80, v6, v10, v12, v9, v13);
}

uint64_t sub_2489EB484()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);
  v5 = *(*v0 + 168);
  v6 = *(*v0 + 152);
  v7 = *(*v0 + 136);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_2489EB624, 0, 0);
}

uint64_t sub_2489EB624()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v0[11] = v0[21];
  v2(v3, *MEMORY[0x277D04E28], v4);
  v6 = swift_allocObject();
  v0[48] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05170] + 4);

  v8 = swift_task_alloc();
  v0[49] = v8;
  *v8 = v0;
  v8[1] = sub_2489EB750;
  v9 = v0[28];
  v10 = v0[26];
  v11 = v0[19];
  v12 = MEMORY[0x277D839B0];
  v13 = MEMORY[0x277D05190];

  return MEMORY[0x28215ABC8](v11, &unk_248A17B90, v6, v10, v12, v9, v13);
}

uint64_t sub_2489EB750()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);
  v5 = *(*v0 + 168);
  v6 = *(*v0 + 152);
  v7 = *(*v0 + 136);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_2489EB8F0, 0, 0);
}

uint64_t sub_2489EB8F0()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v0[12] = v0[21];
  v2(v3, *MEMORY[0x277D04DF0], v4);
  v6 = swift_allocObject();
  v0[50] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05168] + 4);

  v8 = swift_task_alloc();
  v0[51] = v8;
  *v8 = v0;
  v8[1] = sub_2489EBA1C;
  v9 = v0[28];
  v10 = v0[26];
  v11 = v0[19];
  v12 = MEMORY[0x277D837D0];
  v13 = MEMORY[0x277D05188];

  return MEMORY[0x28215ABC0](v11, &unk_248A17BA0, v6, v10, v12, v9, v13);
}

uint64_t sub_2489EBA1C()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);
  v5 = *(*v0 + 168);
  v6 = *(*v0 + 152);
  v7 = *(*v0 + 136);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_2489EBBBC, 0, 0);
}

uint64_t sub_2489EBBBC()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v0[13] = v0[21];
  v2(v3, *MEMORY[0x277D04E20], v4);
  v6 = swift_allocObject();
  v0[52] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05170] + 4);

  v8 = swift_task_alloc();
  v0[53] = v8;
  v9 = sub_248A12490();
  v10 = sub_2489F4D94(&qword_27EEB6190, MEMORY[0x277D04F28]);
  *v8 = v0;
  v8[1] = sub_2489EBD20;
  v11 = v0[28];
  v12 = v0[26];
  v13 = v0[19];

  return MEMORY[0x28215ABC8](v13, &unk_248A17BB0, v6, v12, v9, v11, v10);
}

uint64_t sub_2489EBD20()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);
  v5 = *(*v0 + 168);
  v6 = *(*v0 + 152);
  v7 = *(*v0 + 136);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_2489EBEC0, 0, 0);
}

uint64_t sub_2489EBEC0()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v0[14] = v0[21];
  v2(v3, *MEMORY[0x277D04DE0], v4);
  v6 = swift_allocObject();
  v0[54] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05170] + 4);
  v8 = swift_task_alloc();
  v0[55] = v8;
  *v8 = v0;
  v8[1] = sub_2489EBFD0;
  v9 = v0[28];
  v10 = v0[29];
  v11 = v0[26];
  v12 = v0[27];
  v13 = v0[19];

  return MEMORY[0x28215ABC8](v13, &unk_248A17BC0, v6, v11, v12, v9, v10);
}

uint64_t sub_2489EBFD0()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 432);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);
  v5 = *(*v0 + 168);
  v6 = *(*v0 + 152);
  v7 = *(*v0 + 136);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_2489EC170, 0, 0);
}

uint64_t sub_2489EC170()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v0[15] = v0[21];
  v2(v3, *MEMORY[0x277D04DF8], v4);
  v6 = swift_allocObject();
  v0[56] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05168] + 4);
  v8 = swift_task_alloc();
  v0[57] = v8;
  *v8 = v0;
  v8[1] = sub_2489EC290;
  v9 = v0[28];
  v10 = v0[26];
  v11 = v0[19];
  v12 = MEMORY[0x277D839B0];
  v13 = MEMORY[0x277D05190];

  return MEMORY[0x28215ABC0](v11, &unk_248A17BD0, v6, v10, v12, v9, v13);
}

uint64_t sub_2489EC290()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 448);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);
  v5 = *(*v0 + 168);
  v6 = *(*v0 + 152);
  v7 = *(*v0 + 136);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_2489EC430, 0, 0);
}

uint64_t sub_2489EC430()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  sub_2489BDB14(0xD00000000000005CLL, 0x8000000248A1A9F0, 0x6574617669746361, 0xEA00000000002928);
  v4 = *(v2 + 24);
  v5 = OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener;
  [*(v4 + OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener) setDelegate_];
  [*(v4 + v5) activate];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2489EC504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_2489EC528, 0, 0);
}

uint64_t sub_2489EC528()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_2489EC65C;
    v4 = v0[5];
    v5 = v0[6];

    return sub_2489EF500(v4, v5);
  }

  else
  {
    v7 = v0[5];
    v8 = sub_248A12400();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_2489EC65C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_2489EC818;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_2489EC778;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2489EC778()
{
  v1 = *(v0 + 40);
  v2 = sub_248A12400();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2489EC818()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_2489EC87C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2489EC89C, 0, 0);
}

uint64_t sub_2489EC89C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_28150F5D8 != -1)
    {
      swift_once();
    }

    v4 = sub_248A122D0();
    __swift_project_value_buffer(v4, qword_281510590);
    sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD000000000000014, 0x8000000248A1AD10);
    v5 = v3[28];
    __swift_project_boxed_opaque_existential_1(v3 + 24, v3[27]);
    v6 = sub_248A121E0();

    v7 = v6 & 1;
  }

  else
  {
    v7 = 2;
  }

  **(v0 + 40) = v7;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2489EC9E8(_BYTE *a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 72) = *a1;
  return MEMORY[0x2822009F8](sub_2489ECA10, 0, 0);
}

uint64_t sub_2489ECA10()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_28150F5D8 != -1)
    {
      swift_once();
    }

    v4 = sub_248A122D0();
    __swift_project_value_buffer(v4, qword_281510590);
    sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD00000000000001BLL, 0x8000000248A18B10);
    v5 = v3[27];
    v6 = v3[28];
    __swift_project_boxed_opaque_existential_1(v3 + 24, v5);
    v7 = *(MEMORY[0x277D05150] + 4);
    v8 = swift_task_alloc();
    *(v0 + 56) = v8;
    *v8 = v0;
    v8[1] = sub_2489ECBB0;
    v9 = *(v0 + 72);

    return MEMORY[0x28215AB98](v9, v5, v6);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_2489ECBB0()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_2489ECD28;
  }

  else
  {
    v3 = sub_2489ECCC4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2489ECCC4()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2489ECD28()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_2489ECD8C(_BYTE *a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 72) = *a1;
  return MEMORY[0x2822009F8](sub_2489ECDB4, 0, 0);
}

uint64_t sub_2489ECDB4()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_2489ECEA8;
    v4 = *(v0 + 72);

    return EnrollmentAssetServer.setCloudDataExistsKVS(value:)(v4);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2489ECEA8()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489F4EC8, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2489ECFE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2489ED004, 0, 0);
}

uint64_t sub_2489ED004()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2.value = EnrollmentAssetServer.getCloudDataExistsKVS()().value;
  }

  else
  {
    v2.value = 2;
  }

  (*(v0 + 40))->value = v2.value;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2489ED0AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2489ED0CC, 0, 0);
}

uint64_t sub_2489ED0CC()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_2489ED1BC;
    v4 = v0[5];

    return sub_2489EE214(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2489ED1BC()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489F4ECC, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2489ED2F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2489ED318, 0, 0);
}

uint64_t sub_2489ED318()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_2489ED40C;

    return sub_2489F0CCC();
  }

  else
  {
    **(v0 + 40) = 2;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2489ED40C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_2489F4ECC;
  }

  else
  {
    v8 = *(v4 + 56);

    *(v4 + 80) = a1 & 1;
    v7 = sub_2489F4EC4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2489ED560()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_2489ED648;

    return sub_2489F1598();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2489ED648()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2489ED75C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2489ED77C, 0, 0);
}

uint64_t sub_2489ED77C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2.value = EnrollmentAssetServer.getAssociatedAVPKVS()().value;
  }

  else
  {
    v2.value = 2;
  }

  (*(v0 + 40))->value = v2.value;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2489ED824(_BYTE *a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 72) = *a1;
  return MEMORY[0x2822009F8](sub_2489ED84C, 0, 0);
}

uint64_t sub_2489ED84C()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_2489ECEA8;
    v4 = *(v0 + 72);

    return EnrollmentAssetServer.setAssociatedAVPKVS(value:)(v4);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2489ED940(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2489ED960, 0, 0);
}

uint64_t sub_2489ED960()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_2489EDA54;

    return EnrollmentAssetServer.getFeatureState()();
  }

  else
  {
    v5 = v0[5];
    *v5 = 0;
    v5[1] = 0;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2489EDA54(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 64);
  v8 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v9 = sub_2489EDBB4;
  }

  else
  {
    v10 = v6[7];

    v6[10] = a2;
    v6[11] = a1;
    v9 = sub_2489EDB90;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2489EDB90()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  *v2 = *(v0 + 88);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_2489EDBB4()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_2489EDC18(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2489EDC38, 0, 0);
}

uint64_t sub_2489EDC38()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v4 = v0[5];
    v5 = sub_248A122D0();
    __swift_project_value_buffer(v5, qword_2815105A8);
    sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD00000000000001CLL, 0x8000000248A18C50);
    v6 = v3[6];
    v7 = v3[7];
    __swift_project_boxed_opaque_existential_1(v3 + 3, v6);
    (*(v7 + 80))(v4, v6, v7);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_2489EDDA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2489EDDC4, 0, 0);
}

uint64_t sub_2489EDDC4()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_2489ED1BC;
    v4 = v0[5];

    return EnrollmentAssetServer.storeEnrollmentAssets(assets:)(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2489EDEB8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2489EDED8, 0, 0);
}

uint64_t sub_2489EDED8()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_2489EDFD0;

    return EnrollmentAssetServer.localDataExists()();
  }

  else
  {
    **(v0 + 40) = 2;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2489EDFD0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_2489F4ECC;
  }

  else
  {
    v8 = *(v4 + 56);

    *(v4 + 80) = a1 & 1;
    v7 = sub_2489EE104;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

id sub_2489EE128()
{
  v1 = *(v0 + 16);
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105C0);
  sub_2489BDB14(0xD00000000000005CLL, 0x8000000248A1A9F0, 0x6164696C61766E69, 0xEC00000029286574);
  sub_248A11DE0();
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener;
  [*(v3 + OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener) setDelegate_];
  v5 = *(v3 + v4);

  return [v5 invalidate];
}

uint64_t sub_2489EE214(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_248A12490();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_248A123B0();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489EE330, 0, 0);
}

uint64_t sub_2489EE330()
{
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);
  v5 = sub_248A122D0();
  *(v0 + 80) = v5;
  __swift_project_value_buffer(v5, qword_2815105A8);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD00000000000001BLL, 0x8000000248A18CD0);
  v6 = *MEMORY[0x277D04E88];
  v7 = *(v2 + 104);
  *(v0 + 88) = v7;
  *(v0 + 96) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v1, v6, v3);
  *(v0 + 104) = sub_2489F4D94(&unk_27EEB6198, MEMORY[0x277D04EA0]);
  sub_248A12C50();
  sub_248A12C50();
  v8 = *(v2 + 8);
  *(v0 + 112) = v8;
  *(v0 + 120) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  if (*(v0 + 208) == *(v0 + 212) || (v9 = *(v0 + 72), v10 = *(v0 + 56), v11 = *(v0 + 16), v7(v9, *MEMORY[0x277D04E90], v10), sub_248A12C50(), sub_248A12C50(), v8(v9, v10), *(v0 + 216) == *(v0 + 220)))
  {
    v12 = swift_task_alloc();
    *(v0 + 128) = v12;
    *v12 = v0;
    v12[1] = sub_2489EE6C8;
    v13 = *(v0 + 24);

    return sub_2489F0CCC();
  }

  else
  {
    v15 = *(v0 + 24);
    *(v0 + 136) = os_transaction_create();
    v16 = v15[6];
    v17 = v15[7];
    __swift_project_boxed_opaque_existential_1(v15 + 3, v16);
    v18 = *(v17 + 32);
    v22 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    *(v0 + 144) = v20;
    *v20 = v0;
    v20[1] = sub_2489EEA5C;
    v21 = *(v0 + 16);

    return v22(v21, v16, v17);
  }
}

uint64_t sub_2489EE6C8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 72);
    v8 = *(v4 + 48);

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    *(v4 + 232) = a1 & 1;

    return MEMORY[0x2822009F8](sub_2489EE82C, 0, 0);
  }
}

uint64_t sub_2489EE82C()
{
  if (*(v0 + 232))
  {
    v1 = *(v0 + 24);
    *(v0 + 136) = os_transaction_create();
    v2 = v1[6];
    v3 = v1[7];
    __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
    v4 = *(v3 + 32);
    v14 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    *(v0 + 144) = v6;
    *v6 = v0;
    v6[1] = sub_2489EEA5C;
    v7 = *(v0 + 16);

    return v14(v7, v2, v3);
  }

  else
  {
    v9 = sub_248A12350();
    sub_2489F4D94(&qword_27EEB51C0, MEMORY[0x277D04E68]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D04E58], v9);
    swift_willThrow();
    v11 = *(v0 + 72);
    v12 = *(v0 + 48);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_2489EEA5C()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_2489EF398;
  }

  else
  {
    v3 = sub_2489EEB70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2489EEB70()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = *(v0 + 16);
  (*(v0 + 88))(v5, *MEMORY[0x277D04E98], v6);
  sub_248A12C50();
  sub_248A12C50();
  v2(v5, v6);
  if (*(v0 + 224) == *(v0 + 228))
  {
    v8 = *(v0 + 136);
    v9 = *(*(v0 + 24) + 328);
    sub_248A12060();
    swift_unknownObjectRelease();
    v10 = *(v0 + 72);
    v11 = *(v0 + 48);

    v12 = *(v0 + 8);
LABEL_5:

    return v12();
  }

  v13 = *(v0 + 152);
  v15 = *(v0 + 40);
  v14 = *(v0 + 48);
  v16 = *(v0 + 24);
  v17 = *(v0 + 32);
  v18 = v16[6];
  v19 = v16[7];
  __swift_project_boxed_opaque_existential_1(v16 + 3, v18);
  (*(v15 + 104))(v14, *MEMORY[0x277D04F18], v17);
  (*(v19 + 80))(v14, v18, v19);
  if (v13)
  {
    v20 = *(v0 + 136);
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    swift_unknownObjectRelease();
    v21 = *(v0 + 72);
    v22 = *(v0 + 48);

    v12 = *(v0 + 8);
    goto LABEL_5;
  }

  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  v24 = swift_task_alloc();
  *(v0 + 160) = v24;
  *v24 = v0;
  v24[1] = sub_2489EEDC4;
  v25 = *(v0 + 24);

  return EnrollmentAssetServer.setUniqueDeleteEventKVS()();
}

uint64_t sub_2489EEDC4()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489EF410, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[22] = v4;
    *v4 = v3;
    v4[1] = sub_2489EEF38;
    v5 = v3[3];

    return EnrollmentAssetServer.setCloudDataExistsKVS(value:)(0);
  }
}

uint64_t sub_2489EEF38()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_2489EF488;
  }

  else
  {
    v3 = sub_2489EF04C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2489EF04C()
{
  v1 = *(v0[3] + 328);
  sub_248A12060();
  if (qword_28150F5D8 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  __swift_project_value_buffer(v0[10], qword_281510590);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD00000000000001BLL, 0x8000000248A18B10);
  v3 = v2[27];
  v4 = v2[28];
  __swift_project_boxed_opaque_existential_1(v2 + 24, v3);
  v5 = *(MEMORY[0x277D05150] + 4);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_2489EF194;

  return MEMORY[0x28215AB98](0, v3, v4);
}

uint64_t sub_2489EF194()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_2489EF320;
  }

  else
  {
    v3 = sub_2489EF2A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2489EF2A8()
{
  v1 = v0[17];
  swift_unknownObjectRelease();
  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2489EF320()
{
  v1 = v0[17];
  swift_unknownObjectRelease();
  v2 = v0[25];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2489EF398()
{
  v1 = v0[17];
  swift_unknownObjectRelease();
  v2 = v0[19];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2489EF410()
{
  v1 = v0[17];
  swift_unknownObjectRelease();
  v2 = v0[21];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2489EF488()
{
  v1 = v0[17];
  swift_unknownObjectRelease();
  v2 = v0[23];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2489EF500(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_248A12400();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = sub_248A12300();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v10 = sub_248A11AC0();
  v3[17] = v10;
  v11 = *(v10 - 8);
  v3[18] = v11;
  v12 = *(v11 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v13 = sub_248A12480();
  v3[24] = v13;
  v14 = *(v13 - 8);
  v3[25] = v14;
  v15 = *(v14 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489EF72C, 0, 0);
}

uint64_t sub_2489EF72C()
{
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[7];
  v3 = v0[8];
  v4 = sub_248A122D0();
  v0[28] = __swift_project_value_buffer(v4, qword_2815105A8);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD00000000000001DLL, 0x8000000248A1ACF0);
  v5 = v3[6];
  v6 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v5);
  sub_248A12310();
  v7 = (*(v6 + 8))(v1, v5, v6);
  v0[29] = v7;
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[25];
  v11 = *(v10 + 8);
  v0[30] = v11;
  v0[31] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  if (*(v7 + 16))
  {
    v12 = v0[8];
    v13 = v12[11];
    v14 = v12[12];
    __swift_project_boxed_opaque_existential_1(v12 + 8, v13);
    (*(v14 + 32))(v13, v14);
    sub_248A120F0();
    v15 = sub_248A120E0();
    LOBYTE(v13) = sub_248A120C0();

    if (v13)
    {
      v16 = v12[11];
      v17 = v12[12];
      __swift_project_boxed_opaque_existential_1(v12 + 8, v16);
      (*(v17 + 24))(v16, v17);
    }

    v18 = v0[23];
    v52 = v0[16];
    v53 = v0[15];
    v19 = v0[13];
    v20 = v0[14];
    v51 = v0[7];
    v55 = v3[7];
    v57 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 3, v57);
    v22 = v12[11];
    v21 = v12[12];
    __swift_project_boxed_opaque_existential_1(v12 + 8, v22);
    v23 = *(v21 + 8);

    v23(v22, v21);
    sub_248A122E0();
    (*(v20 + 104))(v53, *MEMORY[0x277D04D98], v19);
    sub_2489F4D94(&qword_27EEB61A8, MEMORY[0x277D04DA0]);
    sub_248A12C50();
    sub_248A12C50();
    if (v0[2] == v0[4] && v0[3] == v0[5])
    {
      v24 = 1;
    }

    else
    {
      v42 = v0[3];
      v43 = v0[5];
      v24 = sub_248A13340();
    }

    v44 = v0[16];
    v45 = v0[13];
    v46 = *(v0[14] + 8);
    v46(v0[15], v45);
    v46(v44, v45);

    v47 = *(v55 + 16);
    v54 = (v47 + *v47);
    v48 = v47[1];
    v49 = swift_task_alloc();
    v0[32] = v49;
    *v49 = v0;
    v49[1] = sub_2489EFD64;
    v50 = v0[23];

    return (v54)(v7, v50, v24 & 1, v57, v55);
  }

  else
  {
    v25 = sub_248A122B0();
    v26 = sub_248A12E60();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_248975000, v25, v26, "No assets found for export", v27, 2u);
      MEMORY[0x24C1E0A80](v27, -1, -1);
    }

    v28 = sub_248A12350();
    sub_2489F4D94(&qword_27EEB51C0, MEMORY[0x277D04E68]);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D04E60], v28);
    swift_willThrow();

    v31 = v0[26];
    v30 = v0[27];
    v33 = v0[22];
    v32 = v0[23];
    v35 = v0[20];
    v34 = v0[21];
    v36 = v0[19];
    v38 = v0[15];
    v37 = v0[16];
    v39 = v0[12];
    v56 = v0[11];

    v40 = v0[1];

    return v40();
  }
}

uint64_t sub_2489EFD64()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  v2[33] = v0;

  v5 = v2[29];
  v6 = v2[23];
  v7 = v2[18];
  v8 = v2[17];
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (v0)
  {
    v10(v6, v8);

    v12 = sub_2489F08AC;
  }

  else
  {
    v2[34] = v10;
    v2[35] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);

    v12 = sub_2489EFF10;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_2489EFF10()
{
  v1 = *(v0 + 64);
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v4 = *(v3 + 64);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 288) = v6;
  *v6 = v0;
  v6[1] = sub_2489F0038;

  return v8(v2, v3);
}

uint64_t sub_2489F0038(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 288);
  v7 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = v1;

  if (v1)
  {
    v5 = sub_2489F09A4;
  }

  else
  {
    v5 = sub_2489F014C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2489F014C()
{
  v102 = v0;
  v1 = v0[37];
  if (*(v1 + 16))
  {
    v2 = v0[26];
    sub_248A12410();
    v3 = *(v1 + 16);
    v4 = v0[37];
    if (v3)
    {
      v101[0] = MEMORY[0x277D84F90];
      sub_2489CE5CC(0, v3, 0);
      v5 = v101[0];
      v6 = *(v101[0] + 16);
      v7 = 16 * v6;
      v8 = (v4 + 40);
      do
      {
        v10 = *(v8 - 1);
        v9 = *v8;
        v101[0] = v5;
        v11 = v6 + 1;
        v12 = *(v5 + 24);

        if (v6 >= v12 >> 1)
        {
          sub_2489CE5CC((v12 > 1), v11, 1);
          v5 = v101[0];
        }

        *(v5 + 16) = v11;
        v13 = v5 + v7;
        *(v13 + 32) = v10;
        *(v13 + 40) = v9;
        v7 += 16;
        v8 += 4;
        ++v6;
        --v3;
      }

      while (v3);
      v14 = v0[37];
    }

    else
    {
      v17 = v0[37];

      v5 = MEMORY[0x277D84F90];
    }

    v19 = v0[30];
    v18 = v0[31];
    v20 = v0[29];
    v21 = v0[26];
    v22 = v0[24];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101[0] = v20;
    sub_2489B02E8(v5, v21, isUniquelyReferenced_nonNull_native);
    v19(v21, v22);
  }

  else
  {
    v15 = v0[37];

    v16 = v0[29];
  }

  v24 = v0[28];
  v25 = sub_248A122B0();
  v26 = sub_248A12E80();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v0[24];
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v101[0] = v29;
    *v28 = 136446210;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5380, &qword_248A14CC0);
    sub_2489F4D94(&unk_27EEB61C0, MEMORY[0x277D04ED0]);
    v30 = sub_248A12AB0();
    v32 = v31;

    v33 = sub_24897BC00(v30, v32, v101);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_248975000, v25, v26, "Asset map: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x24C1E0A80](v29, -1, -1);
    MEMORY[0x24C1E0A80](v28, -1, -1);
  }

  v96 = v0[38];
  v35 = v0[21];
  v34 = v0[22];
  v36 = v0[8];
  v37 = v36[16];
  v38 = v36[17];
  __swift_project_boxed_opaque_existential_1(v36 + 13, v37);
  v40 = v36[11];
  v39 = v36[12];
  __swift_project_boxed_opaque_existential_1(v36 + 8, v40);
  (*(v39 + 8))(v40, v39);
  v41 = v36[11];
  v42 = v36[12];
  __swift_project_boxed_opaque_existential_1(v36 + 8, v41);
  (*(v42 + 16))(v41, v42);
  (*(v38 + 8))(v34, v35, v37, v38);
  v44 = v0[34];
  v43 = v0[35];
  if (v96)
  {
    v45 = v0[22];
    v46 = v0[17];
    v44(v0[21], v46);
    v44(v45, v46);

    v48 = v0[26];
    v47 = v0[27];
    v50 = v0[22];
    v49 = v0[23];
    v52 = v0[20];
    v51 = v0[21];
    v53 = v0[19];
    v55 = v0[15];
    v54 = v0[16];
    v97 = v0[12];
    v100 = v0[11];

    v56 = v0[1];
  }

  else
  {
    v57 = v0[22];
    v88 = v0[20];
    v89 = v0[19];
    v58 = v0[17];
    v90 = v58;
    v91 = v0[12];
    v94 = v0[11];
    v98 = v0[28];
    v92 = v0[10];
    v93 = v0[9];
    v59 = v0[8];
    v44(v0[21], v58);
    v44(v57, v58);
    v60 = v59[11];
    v61 = v59[12];
    __swift_project_boxed_opaque_existential_1(v59 + 8, v60);
    v62 = *(v61 + 16);

    v62(v60, v61);
    v63 = v59[11];
    v64 = v59[12];
    __swift_project_boxed_opaque_existential_1(v59 + 8, v63);
    v66 = v59[11];
    v65 = v59[12];
    __swift_project_boxed_opaque_existential_1(v59 + 8, v66);
    (*(v65 + 16))(v66, v65);
    (*(v64 + 72))(v89, v63, v64);
    v44(v89, v90);
    sub_248A123D0();
    (*(v92 + 16))(v94, v91, v93);
    v67 = sub_248A122B0();
    v68 = sub_248A12E80();
    v69 = os_log_type_enabled(v67, v68);
    v71 = v0[10];
    v70 = v0[11];
    v72 = v0[9];
    if (v69)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v101[0] = v74;
      *v73 = 136446210;
      sub_2489F4D94(&unk_27EEB61B0, MEMORY[0x277D04EB8]);
      v75 = sub_248A132F0();
      v77 = v76;
      (*(v71 + 8))(v70, v72);
      v78 = sub_24897BC00(v75, v77, v101);

      *(v73 + 4) = v78;
      _os_log_impl(&dword_248975000, v67, v68, "Returning: %{public}s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x24C1E0A80](v74, -1, -1);
      MEMORY[0x24C1E0A80](v73, -1, -1);
    }

    else
    {

      (*(v71 + 8))(v70, v72);
    }

    v79 = v0[26];
    v80 = v0[27];
    v82 = v0[22];
    v81 = v0[23];
    v84 = v0[20];
    v83 = v0[21];
    v85 = v0[19];
    v86 = v0[16];
    v95 = v0[15];
    v99 = v0[11];
    (*(v0[10] + 32))(v0[6], v0[12], v0[9]);

    v56 = v0[1];
  }

  return v56();
}

uint64_t sub_2489F08AC()
{
  v1 = v0[29];

  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[12];
  v14 = v0[11];
  v15 = v0[33];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2489F09A4()
{
  v1 = v0[29];

  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[12];
  v14 = v0[11];
  v15 = v0[38];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2489F0A9C()
{
  if (qword_28150F5D8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_281510590);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD000000000000014, 0x8000000248A1AD10);
  v2 = v0[28];
  __swift_project_boxed_opaque_existential_1(v0 + 24, v0[27]);
  return sub_248A121E0() & 1;
}

uint64_t sub_2489F0B68(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  return MEMORY[0x2822009F8](sub_2489F0B8C, 0, 0);
}

uint64_t sub_2489F0B8C()
{
  if (qword_28150F5D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_281510590);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD00000000000001BLL, 0x8000000248A18B10);
  v3 = v1[27];
  v4 = v1[28];
  __swift_project_boxed_opaque_existential_1(v1 + 24, v3);
  v5 = *(MEMORY[0x277D05150] + 4);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_2489D3E30;
  v7 = *(v0 + 32);

  return MEMORY[0x28215AB98](v7, v3, v4);
}

uint64_t sub_2489F0CEC()
{
  if (qword_28150F5D8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_248A122D0();
  v0[3] = __swift_project_value_buffer(v2, qword_281510590);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD000000000000014, 0x8000000248A1AD30);
  v3 = v1[28];
  __swift_project_boxed_opaque_existential_1(v1 + 24, v1[27]);
  if (sub_248A121E0())
  {
    v4 = v0[2];
    v5 = v4[6];
    v6 = v4[7];
    __swift_project_boxed_opaque_existential_1(v4 + 3, v5);
    v7 = *(v6 + 40);
    v15 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[4] = v9;
    *v9 = v0;
    v9[1] = sub_2489F0F7C;

    return v15(v5, v6);
  }

  else
  {
    v11 = sub_248A122B0();
    v12 = sub_248A12E80();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_248975000, v11, v12, "Cloud sync is disabled. Cannot delete cloud data.", v13, 2u);
      MEMORY[0x24C1E0A80](v13, -1, -1);
    }

    v14 = v0[1];

    return v14(0);
  }
}

uint64_t sub_2489F0F7C(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v7 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v5 = sub_2489F12F0;
  }

  else
  {
    v5 = sub_2489F1094;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2489F1094()
{
  v1 = *(v0 + 24);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 64);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_248975000, v2, v3, "Cloud data exists: %{BOOL,public}d. Setting KVS.", v5, 8u);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_2489F11B8;
  v7 = *(v0 + 64);
  v8 = *(v0 + 16);

  return EnrollmentAssetServer.setCloudDataExistsKVS(value:)(v7);
}

uint64_t sub_2489F11B8()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489F1444, 0, 0);
  }

  else
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 8);

    return v5(v4);
  }
}

uint64_t sub_2489F12F0()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_248975000, v4, v5, "Could not check if cloud zone exists. Error: %{public}@", v6, 0xCu);
    sub_24897CA88(v7);
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_2489F1444()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_248975000, v4, v5, "Could not check if cloud zone exists. Error: %{public}@", v6, 0xCu);
    sub_24897CA88(v7);
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_2489F15B8()
{
  if (qword_28150F5D8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_248A122D0();
  v0[3] = __swift_project_value_buffer(v2, qword_281510590);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD000000000000023, 0x8000000248A1AD50);
  v3 = v1[28];
  __swift_project_boxed_opaque_existential_1(v1 + 24, v1[27]);
  v4 = sub_248A121F0();
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_2489F1708;
  v6 = v0[2];

  return EnrollmentAssetServer.setAssociatedAVPKVS(value:)(v4 & 1);
}

uint64_t sub_2489F1708()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_2489F19AC;
  }

  else
  {
    v3 = sub_2489F181C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2489F181C()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v2[6];
  v4 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v3);
  (*(v4 + 56))(v3, v4);
  if (v1)
  {
    v5 = v0[3];
    v6 = v1;
    v7 = sub_248A122B0();
    v8 = sub_248A12E60();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      v11 = v1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_248975000, v7, v8, "Error while setting associated AVP KVS or waking MA: %{public}@", v9, 0xCu);
      sub_24897CA88(v10);
      MEMORY[0x24C1E0A80](v10, -1, -1);
      MEMORY[0x24C1E0A80](v9, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_2489F19AC()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_248975000, v4, v5, "Error while setting associated AVP KVS or waking MA: %{public}@", v6, 0xCu);
    sub_24897CA88(v7);
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_2489F1AF8(uint64_t a1)
{
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_2815105A8);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD00000000000001CLL, 0x8000000248A18C50);
  v4 = v1[6];
  v5 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v4);
  return (*(v5 + 80))(a1, v4, v5);
}

uint64_t EnrollmentAssetServer.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  v2 = *(v0 + 144);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  __swift_destroy_boxed_opaque_existential_0((v0 + 192));
  __swift_destroy_boxed_opaque_existential_0((v0 + 232));
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  v3 = *(v0 + 312);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t EnrollmentAssetServer.__deallocating_deinit()
{
  EnrollmentAssetServer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2489F1C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_2489F1D28;

  return EnrollmentAssetServer.setCloudDataExistsKVS(value:)(1);
}

uint64_t sub_2489F1D28()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_2489F2078;
  }

  else
  {
    v3 = sub_2489F1E3C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2489F1E3C()
{
  v1 = *(v0 + 16);
  v2 = v1[41];
  sub_248A12060();
  v3 = v1[22];
  v4 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v3);
  v5 = *(v4 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_2489F1F78;

  return v9(v3, v4);
}

uint64_t sub_2489F1F78()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2489F2078()
{
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105A8);
  v3 = v1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_248975000, v4, v5, "Error setting cloud data exists: %@", v8, 0xCu);
    sub_24897CA88(v9);
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2489F220C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489F22A4;

  return EnrollmentAssetServer.setCloudDataExistsKVS(value:)(1);
}

uint64_t sub_2489F22A4()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489F23D8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2489F23D8()
{
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105A8);
  v3 = v1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_248975000, v4, v5, "Error setting cloud data exists: %@", v8, 0xCu);
    sub_24897CA88(v9);
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2489F256C(uint64_t a1, int a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v9 = sub_248A122D0();
  __swift_project_value_buffer(v9, qword_2815105A8);
  v10 = sub_248A122B0();
  v11 = sub_248A12E80();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = a2;
    _os_log_impl(&dword_248975000, v10, v11, "Received notificaiton of account change type: %u", v12, 8u);
    MEMORY[0x24C1E0A80](v12, -1, -1);
  }

  v13 = sub_248A12D40();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a3;

  sub_2489E5FD4(0, 0, v8, &unk_248A17D18, v14);
}

uint64_t sub_2489F2764()
{
  v0[3] = os_transaction_create();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2489F2804;
  v2 = v0[2];

  return sub_2489F1598();
}

uint64_t sub_2489F2804()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 40) = v4;
  *v4 = v3;
  v4[1] = sub_2489F2944;
  v5 = *(v1 + 16);

  return sub_2489F0CCC();
}

uint64_t sub_2489F2944()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_2489F2ABC;
  }

  else
  {
    v3 = sub_2489F2A58;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2489F2A58()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2489F2ABC()
{
  v1 = v0[3];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

void sub_2489F2B20(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

uint64_t sub_2489F2B98()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_248978D74;

  return sub_2489E9A8C();
}

void *_s13DeviceSharing21EnrollmentAssetServerC026darwinNotificationXPCEventE0AcA06DarwinghE8Protocol_p_tcfC_0(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v64 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v62 = &v56 - v4;
  v61 = sub_248A12230();
  v66 = *(v61 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x28223BE20](v61);
  v65 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v60 = [v7 sharedInstance];
  v8 = type metadata accessor for EnrollmentAssetTelemetry();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC13DeviceSharing24EnrollmentAssetTelemetry_requestTime;
  v13 = sub_248A11B70();
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  sub_248A12370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53E0, &qword_248A14D30);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_248A14B30;
  *(v14 + 32) = sub_248A12380();
  *(v14 + 40) = v15;
  v16 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v17 = sub_248A12B30();

  v18 = [v16 initWithMachServiceName_];

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6188, &qword_248A17B00);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  sub_248A11DF0();
  v23 = type metadata accessor for ServerListener();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v24[OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener] = v18;
  v81.receiver = v24;
  v81.super_class = v23;
  v25 = v18;
  v22[3] = objc_msgSendSuper2(&v81, sel_init);
  v22[4] = v14;
  sub_248A122A0();
  v26 = sub_248A12290();

  v22[2] = v26;
  *(v22[3] + OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_delegate + 8) = &off_285B62840;
  swift_unknownObjectWeakAssign();
  v27 = [v7 sharedInstance];
  type metadata accessor for DarwinNotifyCenter();
  v28 = swift_allocObject();
  v29 = type metadata accessor for LockoutObserverManager();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = v27;
  v59 = v32;

  v57 = sub_248A0D1F4(v28);

  v56 = [objc_opt_self() defaultManager];
  v76 = &type metadata for ManagedAssetsBYOE;
  v77 = &off_285B60AA0;
  v33 = v60;
  v75[0] = v60;
  v73 = v8;
  v74 = &protocol witness table for EnrollmentAssetTelemetry;
  v72[0] = v11;
  sub_248997228(v75, &v79);
  sub_248997228(v72, &v80);
  v34 = objc_allocWithZone(MEMORY[0x277D00810]);
  v35 = v11;
  v58 = v11;

  v60 = v33;
  v36 = [v34 init];
  __swift_destroy_boxed_opaque_existential_0(v72);
  __swift_destroy_boxed_opaque_existential_0(v75);
  v78 = v36;
  v37 = v65;
  sub_248A12220();
  v38 = objc_allocWithZone(MEMORY[0x277CCAD80]);
  v39 = sub_248A12B30();
  v40 = [v38 initWithStoreIdentifier:v39 type:1];

  sub_248A120F0();
  v41 = v40;
  v42 = sub_248A120E0();
  v77 = &off_285B60AA0;
  v76 = &type metadata for ManagedAssetsBYOE;
  v75[0] = v32;
  v73 = v8;
  v74 = &protocol witness table for EnrollmentAssetTelemetry;
  v72[0] = v35;
  v43 = sub_2489F4D94(&qword_27EEB61D0, type metadata accessor for LockoutObserverManager);
  v71[3] = &type metadata for FileManagerBYOE;
  v71[4] = &protocol witness table for FileManagerBYOE;
  v44 = v56;
  v71[0] = v56;
  v70[3] = &type metadata for ArchiveStreamCompression;
  v70[4] = &protocol witness table for ArchiveStreamCompression;
  v69[3] = &type metadata for BYOEAssetValidation;
  v69[4] = &protocol witness table for BYOEAssetValidation;
  v69[0] = swift_allocObject();
  sub_2489E80C8(&v78, v69[0] + 16);
  v45 = v61;
  v68[3] = v61;
  v68[4] = MEMORY[0x277D05158];
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v68);
  (*(v66 + 16))(boxed_opaque_existential_1Tm, v37, v45);
  v67[3] = sub_2489F4DDC();
  v67[4] = &protocol witness table for NSUbiquitousKeyValueStore;
  v67[0] = v41;
  type metadata accessor for EnrollmentAssetServer();
  v47 = swift_allocObject();
  v47[2] = v22;
  sub_248997228(v75, (v47 + 3));
  sub_248997228(v72, (v47 + 34));
  v47[39] = v57;
  v47[40] = v43;
  sub_248997228(v71, (v47 + 8));
  sub_248997228(v70, (v47 + 13));
  v47[18] = 0;
  sub_248997228(v69, (v47 + 19));
  sub_248997228(v68, (v47 + 24));
  sub_248997228(v67, (v47 + 29));
  v47[41] = v42;
  v48 = v44;

  v49 = v42;
  EnrollmentAssetServer.registerForKVSNotification()();
  EnrollmentAssetServer.registerForAccountChangeNotification@Sendable ()();
  v50 = sub_248A12D40();
  v51 = v62;
  (*(*(v50 - 8) + 56))(v62, 1, 1, v50);
  v52 = swift_allocObject();
  v52[2] = 0;
  v52[3] = 0;
  v54 = v63;
  v53 = v64;
  v52[4] = v47;
  v52[5] = v54;
  v52[6] = v53;

  swift_unknownObjectRetain();
  sub_2489AC334(0, 0, v51, &unk_248A17D78, v52);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v67);
  __swift_destroy_boxed_opaque_existential_0(v68);
  __swift_destroy_boxed_opaque_existential_0(v69);
  __swift_destroy_boxed_opaque_existential_0(v70);
  __swift_destroy_boxed_opaque_existential_0(v71);
  __swift_destroy_boxed_opaque_existential_0(v72);
  __swift_destroy_boxed_opaque_existential_0(v75);

  (*(v66 + 8))(v65, v45);
  sub_2489F4E70(&v78);
  return v47;
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

void *sub_2489F3418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v59 = a8;
  v68 = a7;
  v56 = a5;
  v57 = a6;
  v65 = a1;
  v66 = a4;
  v53 = a3;
  v71 = a10;
  v70 = a9;
  v69 = a13;
  v63 = a12;
  v61 = a11;
  v62 = a29;
  v54 = a30;
  v60 = a21;
  v58 = a25;
  v52 = a26;
  v55 = a23;
  v64 = a28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v67 = &v52 - v33;
  v78[3] = a19;
  v78[4] = a27;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v78);
  (*(*(a19 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a19);
  v77[3] = a16;
  v77[4] = a24;
  v35 = __swift_allocate_boxed_opaque_existential_1Tm(v77);
  (*(*(a16 - 8) + 32))(v35, v53, a16);
  v76[3] = a18;
  v76[4] = v52;
  v36 = __swift_allocate_boxed_opaque_existential_1Tm(v76);
  (*(*(a18 - 8) + 32))(v36, v56, a18);
  v75[3] = a22;
  v75[4] = v54;
  v37 = __swift_allocate_boxed_opaque_existential_1Tm(v75);
  (*(*(a22 - 8) + 32))(v37, v57, a22);
  v74[3] = a15;
  v74[4] = v55;
  v38 = __swift_allocate_boxed_opaque_existential_1Tm(v74);
  (*(*(a15 - 8) + 32))(v38, v59, a15);
  v73[3] = a17;
  v73[4] = v58;
  v39 = __swift_allocate_boxed_opaque_existential_1Tm(v73);
  (*(*(a17 - 8) + 32))(v39, v61, a17);
  v40 = v60;
  v72[3] = v60;
  v72[4] = v62;
  v41 = __swift_allocate_boxed_opaque_existential_1Tm(v72);
  (*(*(v40 - 8) + 32))(v41, v63, v40);
  type metadata accessor for EnrollmentAssetServer();
  v42 = swift_allocObject();
  v42[2] = v65;
  sub_248997228(v78, (v42 + 3));
  sub_248997228(v77, (v42 + 34));
  v43 = v64;
  v42[39] = v66;
  v42[40] = v43;
  sub_248997228(v76, (v42 + 8));
  sub_248997228(v75, (v42 + 13));
  v42[18] = v68;
  sub_248997228(v74, (v42 + 19));
  sub_248997228(v73, (v42 + 24));
  sub_248997228(v72, (v42 + 29));
  v44 = v69;
  v42[41] = v69;
  swift_unknownObjectRetain();
  v45 = v44;

  EnrollmentAssetServer.registerForKVSNotification()();
  EnrollmentAssetServer.registerForAccountChangeNotification@Sendable ()();
  v46 = sub_248A12D40();
  v47 = v67;
  (*(*(v46 - 8) + 56))(v67, 1, 1, v46);
  v48 = swift_allocObject();
  v48[2] = 0;
  v48[3] = 0;
  v50 = v70;
  v49 = v71;
  v48[4] = v42;
  v48[5] = v50;
  v48[6] = v49;

  swift_unknownObjectRetain();
  sub_2489AC334(0, 0, v47, &unk_248A17D68, v48);

  __swift_destroy_boxed_opaque_existential_0(v72);
  __swift_destroy_boxed_opaque_existential_0(v73);
  __swift_destroy_boxed_opaque_existential_0(v74);
  __swift_destroy_boxed_opaque_existential_0(v75);
  __swift_destroy_boxed_opaque_existential_0(v76);
  __swift_destroy_boxed_opaque_existential_0(v77);
  __swift_destroy_boxed_opaque_existential_0(v78);
  return v42;
}

uint64_t sub_2489F388C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2489839A0;

  return sub_2489E9180(a1, v4, v5, v6, v7, v8);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2489F3974(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2489839A0;

  return sub_2489EC504(a1, a2, v2);
}

unint64_t sub_2489F3A20()
{
  result = qword_28150F620[0];
  if (!qword_28150F620[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB6188, &qword_248A17B00);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28150F620);
  }

  return result;
}

uint64_t sub_2489F3A84(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489EC87C(a1, v1);
}

uint64_t sub_2489F3B20(_BYTE *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489EC9E8(a1, v1);
}

uint64_t sub_2489F3BB8(_BYTE *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489ECD8C(a1, v1);
}

uint64_t sub_2489F3C50(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489ECFE4(a1, v1);
}

uint64_t sub_2489F3CEC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489ED0AC(a1, v1);
}

uint64_t sub_2489F3D84(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489ED2F8(a1, v1);
}

uint64_t sub_2489F3E20()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_2489ED540(v0);
}

uint64_t sub_2489F3EB0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489ED75C(a1, v1);
}

uint64_t sub_2489F3F4C(_BYTE *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489ED824(a1, v1);
}

uint64_t sub_2489F3FE4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489ED940(a1, v1);
}

uint64_t sub_2489F4080(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489EDC18(a1, v1);
}

uint64_t sub_2489F4118(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489EDDA4(a1, v1);
}

uint64_t sub_2489F41B0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489EDEB8(a1, v1);
}

uint64_t dispatch thunk of EnrollmentAssetServer.activate()()
{
  v2 = *(*v0 + 176);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2489839A0;

  return v6();
}

uint64_t dispatch thunk of EnrollmentAssetServer.deleteEnrollmentData(from:)(uint64_t a1)
{
  v4 = *(*v1 + 192);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2489839A0;

  return v8(a1);
}

uint64_t dispatch thunk of EnrollmentAssetServer.getEnrollmentAssets(request:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 200);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_248978D74;

  return v10(a1, a2);
}

uint64_t dispatch thunk of EnrollmentAssetServer.setCloudSyncState(enabled:)(uint64_t a1)
{
  v4 = *(*v1 + 216);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2489839A0;

  return v8(a1);
}

uint64_t dispatch thunk of EnrollmentAssetServer.canDeleteCloudData()()
{
  v2 = *(*v0 + 224);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24898314C;

  return v6();
}

uint64_t dispatch thunk of EnrollmentAssetServer.refreshAssociatedAVPAccountStatus()()
{
  v2 = *(*v0 + 232);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2489839A0;

  return v6();
}

uint64_t sub_2489F49D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2489839A0;

  return sub_2489F2744(a1, v4, v5, v6);
}

uint64_t sub_2489F4AA0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2489839A0;

  return sub_2489E9710(a1, v5);
}

uint64_t sub_2489F4B64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2489839A0;

  return sub_2489F220C();
}

uint64_t sub_2489F4C18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2489839A0;

  return sub_2489F1C8C(a1, v4, v5, v6);
}

uint64_t sub_2489F4CCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_248978D74;

  return sub_2489E9180(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2489F4D94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2489F4DDC()
{
  result = qword_27EEB61D8;
  if (!qword_27EEB61D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEB61D8);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2489F4ED0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_248A128A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5BF8, &qword_248A16950);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5608, &qword_248A15110);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v35 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v35 - v22;
  v24 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  (*(v26 + 16))(&v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v27 = swift_dynamicCast();
  v28 = *(v5 + 56);
  v28(v23, v27 ^ 1u, 1, v4);
  *v20 = -65569;
  (*(v5 + 104))(v20, *MEMORY[0x277CD8FA0], v4);
  v28(v20, 0, 1, v4);
  v29 = *(v9 + 56);
  sub_2489F535C(v23, v12);
  sub_2489F535C(v20, &v12[v29]);
  v30 = *(v5 + 48);
  if (v30(v12, 1, v4) != 1)
  {
    sub_2489F535C(v12, v17);
    if (v30(&v12[v29], 1, v4) != 1)
    {
      v32 = v36;
      (*(v5 + 32))(v36, &v12[v29], v4);
      sub_2489F53CC();
      v31 = sub_248A12B00();
      v33 = *(v5 + 8);
      v33(v32, v4);
      sub_248983734(v20, &qword_27EEB5608, &qword_248A15110);
      v33(v17, v4);
      sub_248983734(v12, &qword_27EEB5608, &qword_248A15110);
      goto LABEL_8;
    }

    sub_248983734(v20, &qword_27EEB5608, &qword_248A15110);
    (*(v5 + 8))(v17, v4);
    goto LABEL_6;
  }

  sub_248983734(v20, &qword_27EEB5608, &qword_248A15110);
  if (v30(&v12[v29], 1, v4) != 1)
  {
LABEL_6:
    sub_248983734(v12, &qword_27EEB5BF8, &qword_248A16950);
    v31 = 0;
    goto LABEL_8;
  }

  sub_248983734(v12, &qword_27EEB5608, &qword_248A15110);
  v31 = 1;
LABEL_8:
  sub_248983734(v23, &qword_27EEB5608, &qword_248A15110);
  return v31 & 1;
}

uint64_t sub_2489F535C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5608, &qword_248A15110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2489F53CC()
{
  result = qword_27EEB5C00;
  if (!qword_27EEB5C00)
  {
    sub_248A128A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5C00);
  }

  return result;
}

uint64_t static ArchiveStreamCompressionConfiguration.currentArchiveCompressionAlgorithm.getter@<X0>(uint64_t a1@<X8>)
{
  sub_248A120F0();
  v2 = sub_248A120E0();
  v3 = sub_248A12090();
  v5 = v4;

  sub_2489F5524(v3, v5, a1);
}

uint64_t static ArchiveStreamCompressionConfiguration.currentArchiveCompressionThreadCount.getter()
{
  sub_248A120F0();
  v0 = sub_248A120E0();
  v1 = sub_248A120A0();

  return v1;
}

uint64_t static ArchiveStreamCompressionConfiguration.currentArchiveCompressionNeedsToDeleteFiles.getter()
{
  sub_248A120F0();
  v0 = sub_248A120E0();
  v1 = sub_248A120C0();

  return v1 & 1;
}

void sub_2489F5524(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_248A11C90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x6573667A6CLL && a2 == 0xE500000000000000 || (sub_248A13340() & 1) != 0)
  {
    sub_248A11C70();
  }

  else if (a1 == 3439212 && a2 == 0xE300000000000000 || (sub_248A13340() & 1) != 0)
  {
    sub_248A11C30();
  }

  else if (a1 == 1634564716 && a2 == 0xE400000000000000 || (sub_248A13340() & 1) != 0)
  {
    sub_248A11C40();
  }

  else if (a1 == 0x70616D7469627A6CLL && a2 == 0xE800000000000000 || (sub_248A13340() & 1) != 0)
  {
    sub_248A11C80();
  }

  else if (a1 == 1651076218 && a2 == 0xE400000000000000 || (sub_248A13340() & 1) != 0)
  {
    sub_248A11C60();
  }

  else
  {
    sub_248A11C50();
  }

  if (qword_28150F5D0 != -1)
  {
    swift_once();
  }

  v11 = sub_248A122D0();
  __swift_project_value_buffer(v11, qword_281510578);
  (*(v7 + 16))(v10, a3, v6);

  v12 = sub_248A122B0();
  v13 = sub_248A12E80();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_24897BC00(a1, a2, &v21);
    *(v14 + 12) = 2082;
    sub_2489F596C();
    v16 = sub_248A132F0();
    v18 = v17;
    (*(v7 + 8))(v10, v6);
    v19 = sub_24897BC00(v16, v18, &v21);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_248975000, v12, v13, "ArchiveCompression value in defaults:%{public}s, current algorithm will be %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v15, -1, -1);
    MEMORY[0x24C1E0A80](v14, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }
}

unint64_t sub_2489F596C()
{
  result = qword_27EEB61E0;
  if (!qword_27EEB61E0)
  {
    sub_248A11C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB61E0);
  }

  return result;
}

uint64_t sub_2489F59C4(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  v2[6] = sub_248A02C08(&qword_27EEB5EC0);
  v4 = sub_248A12CD0();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_2489F5A78, v4, v3);
}

uint64_t sub_2489F5A78()
{
  v40 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);

  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v39 = v8;
    *v7 = 136446466;
    v9 = sub_2489FA2C8();
    v11 = v10;

    v12 = sub_24897BC00(v9, v11, &v39);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v0 + 16) = *(v6 + qword_27EEB5440);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5460, &qword_248A14E48);
    v13 = sub_248A12B80();
    v15 = sub_24897BC00(v13, v14, &v39);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Activate peer connection: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 40);
  v17 = qword_27EEB5448;
  *(v0 + 72) = qword_27EEB5448;
  if (*(v16 + v17))
  {

    v18 = sub_248A122B0();
    v19 = sub_248A12E80();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 40);
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39 = v23;
      *v22 = 136446210;
      v24 = sub_2489FA2C8();
      v26 = v25;

      v27 = sub_24897BC00(v24, v26, &v39);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_248975000, v18, v19, "[%{public}s] Peer connection was already active", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x24C1E0A80](v23, -1, -1);
      MEMORY[0x24C1E0A80](v22, -1, -1);
    }

    else
    {
    }

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {
    v28 = *(v0 + 48);
    v29 = *(v16 + qword_27EEB5440);
    v30 = *(v16 + qword_27EEB5440 + 8);
    ObjectType = swift_getObjectType();
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = *(v30 + 24);

    v33(sub_248A03ED8, v32, ObjectType, v30);

    v34 = *(MEMORY[0x277D85A40] + 4);
    v35 = swift_task_alloc();
    *(v0 + 80) = v35;
    *v35 = v0;
    v35[1] = sub_2489F5EF0;
    v36 = *(v0 + 40);

    return MEMORY[0x2822008A0]();
  }
}

uint64_t sub_2489F5EF0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_2489F60AC;
  }

  else
  {
    v7 = sub_2489F602C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2489F602C()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = *(v2 + v1);
  *(v2 + v1) = v0[4];
  swift_unknownObjectRetain();
  sub_24898C42C(v3);
  sub_2489F635C(v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_2489F60AC()
{
  sub_2489F635C(v0[5]);
  v1 = v0[1];
  v2 = v0[11];

  return v1();
}

uint64_t sub_2489F6110(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    isEscapingClosureAtFileLocation = result;
    v7[2] = a1;
    v4 = *(MEMORY[0x28223BE20](result) + 24);
    sub_248A12EF0();
    if (swift_task_isCurrentExecutor())
    {
      v5 = swift_allocObject();
      *(v5 + 16) = sub_248A03FF4;
      *(v5 + 24) = v7;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_2489D1BD4;
      *(v6 + 24) = v5;

      v8[0] = isEscapingClosureAtFileLocation;
      sub_2489D1BF0(v8);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      __break(1u);
    }

    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    v7[6] = isEscapingClosureAtFileLocation;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
    sub_248A131F0();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t sub_2489F635C(uint64_t result)
{
  v1 = qword_27EEB5438;
  if (*(result + qword_27EEB5438))
  {
    v2 = result;
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v3 = sub_248A122D0();
    __swift_project_value_buffer(v3, qword_27EEB9DC8);
    sub_2489BDB14(0xD000000000000062, 0x8000000248A18F40, 0x656D6954706F7473, 0xED0000292874756FLL);
    if (*(v2 + v1))
    {
      v4 = *(v2 + v1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
      sub_248A12D70();

      v5 = *(v2 + v1);
    }

    *(v2 + v1) = 0;
  }

  return result;
}

uint64_t sub_2489F6494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5450, qword_248A14E30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v8 = sub_248A122D0();
  __swift_project_value_buffer(v8, qword_27EEB9DC8);

  v9 = sub_248A122B0();
  v10 = sub_248A12E80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136446210;

    v13 = sub_2489FA2C8();
    v15 = v14;

    v16 = sub_24897BC00(v13, v15, &v25);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_248975000, v9, v10, "[%{public}s] Starting connection and waiting until ready", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C1E0A80](v12, -1, -1);
    MEMORY[0x24C1E0A80](v11, -1, -1);
  }

  else
  {
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, a1, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v19 = qword_27EEB5418;
  swift_beginAccess();
  sub_24898D194(v7, a2 + v19, &qword_27EEB5450, qword_248A14E30);
  swift_endAccess();
  v20 = *(a2 + qword_27EEB5440);
  v21 = *(a2 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  (*(v21 + 40))(*(a2 + 24), ObjectType, v21);
  return sub_2489F9548();
}

uint64_t sub_2489F6784()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  v1[3] = sub_248A02C08(&qword_27EEB5EC0);
  v3 = sub_248A12CD0();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_2489F6838, v3, v2);
}

uint64_t sub_2489F6838()
{
  v32 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);

  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[2];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136446210;

    v9 = sub_2489FA2C8();
    v11 = v10;

    v12 = sub_24897BC00(v9, v11, &v31);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Invalidating peer connection", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  else
  {
  }

  v13 = v0[2];
  v14 = qword_27EEB5448;
  v0[6] = qword_27EEB5448;
  if (*(v13 + v14) == 1)
  {

    v15 = sub_248A122B0();
    v16 = sub_248A12E80();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[2];
    if (v17)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 136446210;

      v21 = sub_2489FA2C8();
      v23 = v22;

      v24 = sub_24897BC00(v21, v23, &v31);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_248975000, v15, v16, "[%{public}s] Peer connection already invalided", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x24C1E0A80](v20, -1, -1);
      MEMORY[0x24C1E0A80](v19, -1, -1);
    }

    else
    {
    }

    v29 = v0[1];

    return v29();
  }

  else
  {
    v25 = v0[3];
    v26 = *(MEMORY[0x277D859E0] + 4);
    v27 = swift_task_alloc();
    v0[7] = v27;
    *v27 = v0;
    v27[1] = sub_2489F6BDC;
    v28 = v0[2];

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_2489F6BDC()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_2489F6CFC, v4, v3);
}

uint64_t sub_2489F6CFC()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = *(v2 + v1);
  *(v2 + v1) = 1;
  sub_24898C42C(v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_2489F6D6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5458, &unk_248A180A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v8 = sub_248A122D0();
  __swift_project_value_buffer(v8, qword_27EEB9DC8);

  v9 = sub_248A122B0();
  v10 = sub_248A12E80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136446210;

    v13 = sub_2489FA2C8();
    v15 = v14;

    v16 = sub_24897BC00(v13, v15, &v25);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_248975000, v9, v10, "[%{public}s] Cancelling connection and waiting until done", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C1E0A80](v12, -1, -1);
    MEMORY[0x24C1E0A80](v11, -1, -1);
  }

  else
  {
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5430, &qword_248A14E28);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, a1, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v19 = qword_27EEB5428;
  swift_beginAccess();
  sub_24898D194(v7, a2 + v19, &qword_27EEB5458, &unk_248A180A0);
  swift_endAccess();
  v21 = *(a2 + qword_27EEB5440);
  v20 = *(a2 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  return (*(v20 + 48))(ObjectType, v20);
}

uint64_t sub_2489F704C(uint64_t *a1)
{
  v100 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5430, &qword_248A14E28);
  v90 = *(v2 - 8);
  v91 = v2;
  v3 = *(v90 + 64);
  MEMORY[0x28223BE20](v2);
  v87 = &v85 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5458, &unk_248A180A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v89 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v88 = &v85 - v9;
  v10 = sub_248A128A0();
  v99 = *(v10 - 8);
  v11 = *(v99 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v92 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v98 = &v85 - v15;
  MEMORY[0x28223BE20](v14);
  v95 = &v85 - v16;
  v17 = sub_248A126F0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v97 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v85 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v85 - v25;
  v27 = sub_248A12A50();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = (&v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = v1;
  v32 = *(v1 + 24);
  *v31 = v32;
  (*(v28 + 104))(v31, *MEMORY[0x277D85200], v27);
  v33 = v32;
  LOBYTE(v32) = sub_248A12A60();
  (*(v28 + 8))(v31, v27);
  if (v32)
  {
    v96 = v10;
    if (qword_27EEB51A0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v34 = sub_248A122D0();
  v35 = __swift_project_value_buffer(v34, qword_27EEB9DC8);
  v36 = v26;
  v37 = *(v18 + 16);
  v37(v36, v100, v17);

  v94 = v35;
  v38 = sub_248A122B0();
  v39 = sub_248A12E80();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v93 = v37;
    v41 = v40;
    v86 = swift_slowAlloc();
    v102[0] = v86;
    *v41 = 136446466;
    v42 = sub_2489FA2C8();
    v44 = v43;

    v45 = sub_24897BC00(v42, v44, v102);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2082;
    v93(v24, v36, v17);
    v46 = sub_248A12B80();
    v48 = v47;
    v49 = *(v18 + 8);
    v49(v36, v17);
    v50 = sub_24897BC00(v46, v48, v102);

    *(v41 + 14) = v50;
    _os_log_impl(&dword_248975000, v38, v39, "[%{public}s] Connection state did update: %{public}s", v41, 0x16u);
    v51 = v86;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v51, -1, -1);
    v52 = v41;
    v37 = v93;
    MEMORY[0x24C1E0A80](v52, -1, -1);
  }

  else
  {

    v49 = *(v18 + 8);
    v49(v36, v17);
  }

  v54 = v97;
  v53 = v98;
  v37(v97, v100, v17);
  result = (*(v18 + 88))(v54, v17);
  v56 = v99;
  if (result == *MEMORY[0x277CD8DE8])
  {
    (*(v18 + 96))(v54, v17);
    v58 = v95;
    v57 = v96;
    (*(v56 + 32))(v95, v54, v96);
    v59 = *(v56 + 16);
    v59(v53, v58, v57);

    v60 = sub_248A122B0();
    v61 = sub_248A12E60();
    v62 = v53;
    if (os_log_type_enabled(v60, v61))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v102[0] = v100;
      *v63 = 136446466;
      v98 = v59;
      v65 = sub_2489FA2C8();
      v67 = v66;

      v68 = sub_24897BC00(v65, v67, v102);

      *(v63 + 4) = v68;
      *(v63 + 12) = 2114;
      sub_248A04028(&qword_27EEB5620, MEMORY[0x277CD8FC0]);
      swift_allocError();
      (v98)(v69, v62, v57);
      v70 = _swift_stdlib_bridgeErrorToNSError();
      v71 = *(v99 + 8);
      v71(v62, v57);
      *(v63 + 14) = v70;
      *v64 = v70;
      _os_log_impl(&dword_248975000, v60, v61, "[%{public}s] Connection waiting with error: %{public}@", v63, 0x16u);
      sub_248983734(v64, &qword_27EEB5600, &unk_248A15210);
      MEMORY[0x24C1E0A80](v64, -1, -1);
      v72 = v100;
      __swift_destroy_boxed_opaque_existential_0(v100);
      MEMORY[0x24C1E0A80](v72, -1, -1);
      MEMORY[0x24C1E0A80](v63, -1, -1);

      return (v71)(v95, v57);
    }

    else
    {

      v76 = *(v56 + 8);
      v76(v53, v57);
      return (v76)(v58, v57);
    }
  }

  else
  {
    v73 = v96;
    if (result == *MEMORY[0x277CD8DE0])
    {
      (*(v18 + 96))(v54, v17);
      v74 = v92;
      v75 = (*(v56 + 32))(v92, v54, v73);
      MEMORY[0x28223BE20](v75);
      *(&v85 - 2) = v74;
      sub_2489F7B88();
      return (*(v56 + 8))(v74, v73);
    }

    else if (result != *MEMORY[0x277CD8DD8] && result != *MEMORY[0x277CD8DF8])
    {
      if (result == *MEMORY[0x277CD8DD0])
      {
        sub_2489F8E9C(0);
        sub_2489F7B88();
        return sub_2489F7D98();
      }

      else if (result == *MEMORY[0x277CD8DF0])
      {
        v77 = qword_27EEB5428;
        v78 = v101;
        swift_beginAccess();
        v79 = v88;
        sub_24898D610(v78 + v77, v88, &qword_27EEB5458, &unk_248A180A0);
        v81 = v90;
        v80 = v91;
        if ((*(v90 + 48))(v79, 1, v91))
        {
          sub_248983734(v79, &qword_27EEB5458, &unk_248A180A0);
        }

        else
        {
          v82 = v87;
          (*(v81 + 16))(v87, v79, v80);
          sub_248983734(v79, &qword_27EEB5458, &unk_248A180A0);
          sub_248A12CF0();
          (*(v81 + 8))(v82, v80);
        }

        v83 = v89;
        (*(v81 + 56))(v89, 1, 1, v80);
        v84 = v101;
        swift_beginAccess();
        sub_24898D194(v83, v84 + v77, &qword_27EEB5458, &unk_248A180A0);
        swift_endAccess();
        return sub_2489F7B88();
      }

      else
      {
        return (v49)(v54, v17);
      }
    }
  }

  return result;
}