uint64_t sub_226CED2B8(uint64_t a1)
{
  v66 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v3 = *(v66 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v66);
  v61 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8148, &qword_226D77DE8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v65 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v63 = v59 - v11;
  MEMORY[0x28223BE20](v10);
  v67 = v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C40, &qword_226D72C08);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8150, &unk_226D77DF0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (v59 - v19);
  v68 = v1;
  v21 = *v1;
  v22 = *(*v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v24 = v21[3] >> 1, v24 <= v22))
  {
    v21 = sub_226BBB658(isUniquelyReferenced_nonNull_native, v22 + 1, 1, v21);
    v24 = v21[3] >> 1;
  }

  v25 = v21[2];
  v26 = v3;
  v27 = *(v3 + 72);
  v28 = v24 - v25;
  v62 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v64 = v27;
  v29 = v21 + v62 + v27 * v25;
  v30 = &qword_27D7A6C40;
  sub_226AC40E8(a1, v16, &qword_27D7A6C40, &qword_226D72C08);
  v31 = sub_226C3ACD0(v20, v29, v28);
  sub_226AC47B0(a1, &qword_27D7A6C40, &qword_226D72C08);
  if (v31 < 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v32 = v21[2];
  v30 = v32 + v31;
  if (__OFADD__(v32, v31))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21[2] = v30;
  if (v31 != v28)
  {
    v33 = &qword_27D7A8150;
    v34 = &unk_226D77DF0;
    v35 = v20;
    goto LABEL_8;
  }

LABEL_11:
  v37 = v67;
  sub_226AFD80C(v20, v67, &qword_27D7A8148, &qword_226D77DE8);
  v38 = v26;
  v39 = v26 + 56;
  v40 = *(v26 + 56);
  v41 = v66;
  v59[0] = v40;
  v59[1] = v39;
  v40(v20, 1, 1, v66);
  v42 = v63;
  sub_226AC40E8(v37, v63, &qword_27D7A8148, &qword_226D77DE8);
  v44 = *(v38 + 48);
  v43 = v38 + 48;
  v60 = v44;
  if (v44(v42, 1, v41) != 1)
  {
    v45 = v61;
    v59[2] = v43;
    do
    {
      sub_226AC47B0(v42, &qword_27D7A8148, &qword_226D77DE8);
      v46 = v21[3];
      v47 = v46 >> 1;
      if ((v46 >> 1) < v30 + 1)
      {
        v21 = sub_226BBB658(v46 > 1, v30 + 1, 1, v21);
        v47 = v21[3] >> 1;
      }

      v48 = v65;
      sub_226AC40E8(v67, v65, &qword_27D7A8148, &qword_226D77DE8);
      if (v60(v48, 1, v66) == 1)
      {
        v49 = v65;
LABEL_26:
        sub_226AC47B0(v49, &qword_27D7A8148, &qword_226D77DE8);
        v50 = v30;
      }

      else
      {
        if (v30 <= v47)
        {
          v50 = v47;
        }

        else
        {
          v50 = v30;
        }

        v49 = v65;
        v51 = v21 + v62 + v64 * v30;
        while (1)
        {
          sub_226CF055C(v49, v45, _s8MetadataV9CloudItemV6ObjectVMa_0);
          if (v50 == v30)
          {
            break;
          }

          v52 = v67;
          sub_226AC47B0(v67, &qword_27D7A8148, &qword_226D77DE8);
          sub_226CF055C(v45, v51, _s8MetadataV9CloudItemV6ObjectVMa_0);
          ++v30;
          sub_226AFD80C(v20, v52, &qword_27D7A8148, &qword_226D77DE8);
          v53 = v50;
          v54 = v45;
          v55 = v66;
          (v59[0])(v20, 1, 1, v66);
          v56 = v52;
          v49 = v65;
          sub_226AC40E8(v56, v65, &qword_27D7A8148, &qword_226D77DE8);
          v57 = v55;
          v45 = v54;
          v50 = v53;
          v58 = v60(v49, 1, v57);
          v51 += v64;
          if (v58 == 1)
          {
            goto LABEL_26;
          }
        }

        sub_226CF05C4(v45, _s8MetadataV9CloudItemV6ObjectVMa_0);
        v30 = v50;
      }

      v21[2] = v50;
      v42 = v63;
      sub_226AC40E8(v67, v63, &qword_27D7A8148, &qword_226D77DE8);
    }

    while (v60(v42, 1, v66) != 1);
  }

  sub_226AC47B0(v67, &qword_27D7A8148, &qword_226D77DE8);
  sub_226AC47B0(v20, &qword_27D7A8150, &unk_226D77DF0);
  v35 = v42;
  v33 = &qword_27D7A8148;
  v34 = &qword_226D77DE8;
LABEL_8:
  result = sub_226AC47B0(v35, v33, v34);
  *v68 = v21;
  return result;
}

uint64_t sub_226CED91C(uint64_t a1)
{
  v66 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v3 = *(v66 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v66);
  v61 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8170, &qword_226D77E28);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v65 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v63 = v59 - v11;
  MEMORY[0x28223BE20](v10);
  v67 = v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9090, &qword_226D7D610);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8178, &qword_226D77E30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (v59 - v19);
  v68 = v1;
  v21 = *v1;
  v22 = *(*v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v24 = v21[3] >> 1, v24 <= v22))
  {
    v21 = sub_226BBB71C(isUniquelyReferenced_nonNull_native, v22 + 1, 1, v21);
    v24 = v21[3] >> 1;
  }

  v25 = v21[2];
  v26 = v3;
  v27 = *(v3 + 72);
  v28 = v24 - v25;
  v62 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v64 = v27;
  v29 = v21 + v62 + v27 * v25;
  v30 = &qword_27D7A9090;
  sub_226AC40E8(a1, v16, &qword_27D7A9090, &qword_226D7D610);
  v31 = sub_226C3B000(v20, v29, v28);
  sub_226AC47B0(a1, &qword_27D7A9090, &qword_226D7D610);
  if (v31 < 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v32 = v21[2];
  v30 = v32 + v31;
  if (__OFADD__(v32, v31))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21[2] = v30;
  if (v31 != v28)
  {
    v33 = &qword_27D7A8178;
    v34 = &qword_226D77E30;
    v35 = v20;
    goto LABEL_8;
  }

LABEL_11:
  v37 = v67;
  sub_226AFD80C(v20, v67, &qword_27D7A8170, &qword_226D77E28);
  v38 = v26;
  v39 = v26 + 56;
  v40 = *(v26 + 56);
  v41 = v66;
  v59[0] = v40;
  v59[1] = v39;
  v40(v20, 1, 1, v66);
  v42 = v63;
  sub_226AC40E8(v37, v63, &qword_27D7A8170, &qword_226D77E28);
  v44 = *(v38 + 48);
  v43 = v38 + 48;
  v60 = v44;
  if (v44(v42, 1, v41) != 1)
  {
    v45 = v61;
    v59[2] = v43;
    do
    {
      sub_226AC47B0(v42, &qword_27D7A8170, &qword_226D77E28);
      v46 = v21[3];
      v47 = v46 >> 1;
      if ((v46 >> 1) < v30 + 1)
      {
        v21 = sub_226BBB71C(v46 > 1, v30 + 1, 1, v21);
        v47 = v21[3] >> 1;
      }

      v48 = v65;
      sub_226AC40E8(v67, v65, &qword_27D7A8170, &qword_226D77E28);
      if (v60(v48, 1, v66) == 1)
      {
        v49 = v65;
LABEL_26:
        sub_226AC47B0(v49, &qword_27D7A8170, &qword_226D77E28);
        v50 = v30;
      }

      else
      {
        if (v30 <= v47)
        {
          v50 = v47;
        }

        else
        {
          v50 = v30;
        }

        v49 = v65;
        v51 = v21 + v62 + v64 * v30;
        while (1)
        {
          sub_226CF055C(v49, v45, _s8MetadataV9CloudItemV6ObjectVMa_2);
          if (v50 == v30)
          {
            break;
          }

          v52 = v67;
          sub_226AC47B0(v67, &qword_27D7A8170, &qword_226D77E28);
          sub_226CF055C(v45, v51, _s8MetadataV9CloudItemV6ObjectVMa_2);
          ++v30;
          sub_226AFD80C(v20, v52, &qword_27D7A8170, &qword_226D77E28);
          v53 = v50;
          v54 = v45;
          v55 = v66;
          (v59[0])(v20, 1, 1, v66);
          v56 = v52;
          v49 = v65;
          sub_226AC40E8(v56, v65, &qword_27D7A8170, &qword_226D77E28);
          v57 = v55;
          v45 = v54;
          v50 = v53;
          v58 = v60(v49, 1, v57);
          v51 += v64;
          if (v58 == 1)
          {
            goto LABEL_26;
          }
        }

        sub_226CF05C4(v45, _s8MetadataV9CloudItemV6ObjectVMa_2);
        v30 = v50;
      }

      v21[2] = v50;
      v42 = v63;
      sub_226AC40E8(v67, v63, &qword_27D7A8170, &qword_226D77E28);
    }

    while (v60(v42, 1, v66) != 1);
  }

  sub_226AC47B0(v67, &qword_27D7A8170, &qword_226D77E28);
  sub_226AC47B0(v20, &qword_27D7A8178, &qword_226D77E30);
  v35 = v42;
  v33 = &qword_27D7A8170;
  v34 = &qword_226D77E28;
LABEL_8:
  result = sub_226AC47B0(v35, v33, v34);
  *v68 = v21;
  return result;
}

uint64_t sub_226CEDFA8(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v4 + 24) >> 1) - *(v4 + 16) < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_226CEE1B8(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_226D6EDFC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_226D6EDFC();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_226CEFCAC(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_226CEE2B0(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_226BBBBA0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_226CEE3C4(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_226CEE510(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t BankConnectServiceImplementation.connectAccounts(primaryAccountIdentifier:primaryPassAccountFQAI:institution:shouldConnectSecondaryAccounts:ignoreConnectedAccounts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v8 + 257) = a7;
  *(v8 + 256) = a6;
  *(v8 + 96) = a5;
  *(v8 + 104) = v7;
  *(v8 + 80) = a3;
  *(v8 + 88) = a4;
  *(v8 + 64) = a1;
  *(v8 + 72) = a2;
  v9 = sub_226D6B66C();
  *(v8 + 112) = v9;
  v10 = *(v9 - 8);
  *(v8 + 120) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  v12 = sub_226D67C0C();
  *(v8 + 136) = v12;
  v13 = *(v12 - 8);
  *(v8 + 144) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  v15 = sub_226D6764C();
  *(v8 + 168) = v15;
  v16 = *(v15 - 8);
  *(v8 + 176) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CEE7E8, 0, 0);
}

uint64_t sub_226CEE7E8()
{
  v35 = v0;
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1((*(v0 + 104) + 16), *(*(v0 + 104) + 40));
  sub_226D1F120((v0 + 16));
  v6 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  (*(v2 + 104))(v1, *MEMORY[0x277CC6D38], v3);
  v7 = *v6;
  *(v0 + 192) = *v6;
  v8 = v7[16];
  v9 = v7[17];
  __swift_project_boxed_opaque_existential_1(v7 + 13, v8);
  (*(v9 + 8))(v34, v8, v9);
  v10 = v34[0];
  v11 = sub_226D6E36C();
  v12 = [v10 passWithFPANIdentifier_];
  *(v0 + 200) = v12;

  if (v12)
  {
    v13 = swift_task_alloc();
    *(v0 + 208) = v13;
    *v13 = v0;
    v13[1] = sub_226CEEB90;
    v14 = *(v0 + 184);
    v15 = *(v0 + 152);
    v16 = *(v0 + 257);
    v17 = *(v0 + 88);
    v18 = *(v0 + 96);

    return sub_226D10190(v15, v12, v17, v18, v16, v14);
  }

  else
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 80);
    v21 = sub_226D6E07C();
    __swift_project_value_buffer(v21, qword_28105F710);

    v22 = sub_226D6E05C();
    v23 = sub_226D6E9CC();

    if (os_log_type_enabled(v22, v23))
    {
      v25 = *(v0 + 72);
      v24 = *(v0 + 80);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_226AC4530(v25, v24, v34);
      _os_log_impl(&dword_226AB4000, v22, v23, "Cannot find a pass with %s to link an account.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x22AA8BEE0](v27, -1, -1);
      MEMORY[0x22AA8BEE0](v26, -1, -1);
    }

    v28 = sub_226D6C63C();
    sub_226B9E270();
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277CC82C0], v28);
    swift_willThrow();
    v30 = *(v0 + 160);
    v31 = *(v0 + 152);
    v32 = *(v0 + 128);
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_226CEEB90()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_226CEEECC;
  }

  else
  {
    v3 = sub_226CEECA4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226CEECA4()
{
  v1 = *(v0 + 256);
  v2 = *(*(v0 + 144) + 32);
  v2(*(v0 + 160), *(v0 + 152), *(v0 + 136));
  if (v1 == 1)
  {
    v3 = swift_task_alloc();
    *(v0 + 224) = v3;
    *v3 = v0;
    v3[1] = sub_226CEF2B8;
    v4 = *(v0 + 192);
    v5 = *(v0 + 96);

    return sub_226D1392C(v5);
  }

  else
  {
    v7 = *(v0 + 200);
    v8 = *(v0 + 176);
    v9 = *(v0 + 160);
    v23 = *(v0 + 168);
    v24 = *(v0 + 184);
    v10 = *(v0 + 136);
    v11 = *(v0 + 144);
    v12 = *(v0 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6208, &unk_226D7BDB0);
    v13 = *(v11 + 72);
    v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_226D70840;
    v2(v15 + v14, v9, v10);

    (*(v8 + 8))(v24, v23);
    *v12 = v15;
    v16 = *MEMORY[0x277CC81A0];
    v17 = sub_226D6BF0C();
    (*(*(v17 - 8) + 104))(v12, v16, v17);
    v18 = *(v0 + 184);
    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    v21 = *(v0 + 128);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_226CEEECC()
{
  v1 = *(v0 + 216);
  *(v0 + 56) = v1;
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 120) + 88))(*(v0 + 128), *(v0 + 112)) == *MEMORY[0x277CC7FA8])
    {
      v5 = *(v0 + 200);
      v7 = *(v0 + 176);
      v6 = *(v0 + 184);
      v8 = *(v0 + 168);
      v10 = *(v0 + 120);
      v9 = *(v0 + 128);
      v11 = *(v0 + 112);
      v12 = *(v0 + 64);

      (*(v7 + 8))(v6, v8);
      (*(v10 + 96))(v9, v11);
      *v12 = *v9;
      v13 = *MEMORY[0x277CC8198];
      v14 = sub_226D6BF0C();
      (*(*(v14 - 8) + 104))(v12, v13, v14);

      v15 = *(v0 + 184);
      v17 = *(v0 + 152);
      v16 = *(v0 + 160);
      v18 = *(v0 + 128);
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

      v19 = *(v0 + 8);
      goto LABEL_10;
    }

    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  }

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 216);
  v21 = sub_226D6E07C();
  __swift_project_value_buffer(v21, qword_28105F710);
  v22 = v20;
  v23 = sub_226D6E05C();
  v24 = sub_226D6E9CC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 216);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v25;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_226AB4000, v23, v24, "Failed to connect a primary account: %@.", v26, 0xCu);
    sub_226AC47B0(v27, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v27, -1, -1);
    MEMORY[0x22AA8BEE0](v26, -1, -1);
  }

  v30 = *(v0 + 216);
  v31 = *(v0 + 200);

  v32 = sub_226D6C63C();
  sub_226B9E270();
  swift_allocError();
  *v33 = v30;
  (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277CC82B8], v32);
  swift_willThrow();

  v34 = *(v0 + 160);
  v35 = *(v0 + 152);
  v36 = *(v0 + 128);
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v19 = *(v0 + 8);
LABEL_10:

  return v19();
}

uint64_t sub_226CEF2B8(uint64_t a1)
{
  v2 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = a1;

  return MEMORY[0x2822009F8](sub_226CEF3B8, 0, 0);
}

uint64_t sub_226CEF3B8()
{
  v1 = v0[12];
  v2 = sub_226D6718C();
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_226CEF464;
  v4 = v0[29];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[12];

  return sub_226D14A8C(v4, v7, v2 & 1, v5);
}

uint64_t sub_226CEF464(uint64_t a1)
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 248) = a1;

  return MEMORY[0x2822009F8](sub_226CEF584, 0, 0);
}

uint64_t sub_226CEF584()
{
  v1 = v0[31];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[20];
  v19 = v0[21];
  v20 = v0[23];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6208, &unk_226D7BDB0);
  v8 = *(v6 + 72);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_226D70840;
  (*(v6 + 16))(v10 + v9, v4, v5);
  sub_226CEE510(v1, sub_226BBB240, MEMORY[0x277CC6F70]);

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v20, v19);
  *v7 = v10;
  v11 = *MEMORY[0x277CC81A0];
  v12 = sub_226D6BF0C();
  (*(*(v12 - 8) + 104))(v7, v11, v12);
  v13 = v0[23];
  v15 = v0[19];
  v14 = v0[20];
  v16 = v0[16];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v17 = v0[1];

  return v17();
}

uint64_t BankConnectServiceImplementation.connectUnlinkedAccounts(institution:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_226D6764C();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CEF828, 0, 0);
}

uint64_t sub_226CEF828()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((*(v0 + 64) + 16), *(*(v0 + 64) + 40));
  sub_226D1F120((v0 + 16));
  v5 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  *(v0 + 136) = sub_226D6718C() & 1;
  (*(v2 + 104))(v1, *MEMORY[0x277CC6D38], v3);
  *(v0 + 96) = *v5;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_226CEF93C;
  v7 = *(v0 + 56);

  return sub_226D1392C(v7);
}

uint64_t sub_226CEF93C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v5 = *v1;
  *(v3 + 112) = a1;

  v6 = swift_task_alloc();
  *(v3 + 120) = v6;
  *v6 = v5;
  v6[1] = sub_226CEFABC;
  v7 = *(v3 + 96);
  v8 = *(v3 + 136);
  v9 = *(v3 + 88);
  v10 = *(v3 + 56);

  return sub_226D14A8C(a1, v10, v8, v9);
}

uint64_t sub_226CEFABC(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 128) = a1;

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_226CEFC38, 0, 0);
}

uint64_t sub_226CEFC38()
{
  v1 = v0[11];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v2 = v0[1];
  v3 = v0[16];

  return v2(v3);
}

uint64_t sub_226CEFCAC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_226D6EDFC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_226D6EF3C();
  *v1 = result;
  return result;
}

uint64_t sub_226CEFD4C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_226D6EDFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_226D6EDFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_226CF0624(&qword_27D7A90A8, &qword_27D7A6F50, &unk_226D7D360);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
            v9 = sub_226C3A888(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_226AE59B4(0, &qword_28105F418, 0x277CBE4C8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_226CEFEEC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_226D6EDFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_226D6EDFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_226CF0624(&qword_27D7A9078, &qword_27D7A9070, &qword_226D7BE60);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9070, &qword_226D7BE60);
            v9 = sub_226C3A888(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_226AE59B4(0, &qword_27D7A9068, 0x277CE1FA0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_226CF008C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_226D6EDFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_226D6EDFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_226CF0624(&qword_27D7A9060, &qword_27D7A9058, &qword_226D7BE58);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9058, &qword_226D7BE58);
            v9 = sub_226C3A888(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_226AE59B4(0, &qword_27D7A9050, 0x277CE1FC0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_226CF022C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_226D6EDFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_226D6EDFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_226CF0624(&qword_27D7A9088, &qword_27D7A9080, &qword_226D7BE68);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9080, &qword_226D7BE68);
            v9 = sub_226C3A800(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_226D691CC();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_226CF03BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_226D6EDFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_226D6EDFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_226CF0624(&qword_27D7A90A0, &qword_27D7A9098, &unk_226D7BE70);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9098, &unk_226D7BE70);
            v9 = sub_226C3A888(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_226CF055C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226CF05C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226CF0624(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_226CF0678@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v114 = a2;
  v117 = a3;
  v116 = sub_226D66E1C();
  v111 = *(v116 - 1);
  v4 = v111[8];
  MEMORY[0x28223BE20](v116);
  v6 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BankConnectTransactionsBAASigner();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D67F1C();
  v115 = *(v11 - 8);
  v12 = *(v115 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_226D66DBC();
  v112 = *(v15 - 8);
  v113 = v15;
  v16 = *(v112 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226CF11E4(a1, &v139);
  if (!v140)
  {
    v109 = v14;
    v110 = v11;
    v106 = v6;
    v107 = v7;
    v108 = v10;
    v19 = a1;
    sub_226CF1254(a1);
    sub_226CF1254(&v139);
    v140 = v116;
    v141 = MEMORY[0x277CC6538];
    __swift_allocate_boxed_opaque_existential_1(&v139);
    sub_226D66E0C();
    v20 = sub_226D6C7EC();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v23 = sub_226D6C7BC();
    v25 = v112;
    v24 = v113;
    (*(v112 + 104))(v18, *MEMORY[0x277CC6510], v113);
    v26 = sub_226D66D6C();
    (*(v25 + 8))(v18, v24);
    if (v26 & 1) != 0 && (sub_226D6C7DC())
    {
      v113 = a1;
      v27 = v114;
      sub_226AE532C(v114, &v139);
      v28 = v27[4];
      __swift_project_boxed_opaque_existential_1(v27, v27[3]);
      v105 = sub_226D6BAAC();
      v104 = type metadata accessor for ClassifiableTransactionSource();
      v29 = swift_allocObject();
      v30 = MEMORY[0x277D84F90];
      *(v29 + 16) = v23;
      *(v29 + 24) = v30;
      *(v29 + 32) = 0;
      *(v29 + 40) = 1;
      *(v29 + 48) = &unk_283A6A288;
      v137 = sub_226D6B5EC();
      v138 = MEMORY[0x277CC7F68];
      __swift_allocate_boxed_opaque_existential_1(&v136);

      sub_226D6B58C();
      v31 = v109;
      sub_226D67E8C();
      sub_226D67F0C();
      (*(v115 + 8))(v31, v110);
      sub_226D6704C();
      v112 = v23;
      v32 = sub_226D6BE5C();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      v102 = v32;
      swift_allocObject();
      v110 = sub_226D6BE4C();
      v35 = sub_226D69B1C();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();
      v38 = sub_226D69B0C();
      v39 = v107;
      v40 = v108;
      v41 = &v108[*(v107 + 20)];
      v42 = MEMORY[0x277CC7960];
      v41[3] = v35;
      v41[4] = v42;
      *v41 = v38;
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v43 = sub_226D6E07C();
      v103 = v43;
      v114 = __swift_project_value_buffer(v43, qword_28105F710);
      v44 = *(v43 - 8);
      v115 = *(v44 + 16);
      v109 = (v44 + 16);
      (v115)(v40, v114, v43);
      *(v40 + *(v39 + 24)) = 32;
      v45 = v106;
      sub_226D66E0C();
      v46 = v116;
      v137 = v116;
      v138 = MEMORY[0x277CC6538];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v136);
      v48 = v111;
      (v111[2])(boxed_opaque_existential_1, v45, v46);
      v49 = sub_226D6C23C();
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();
      v52 = sub_226D6C22C();
      (v48[1])(v45, v46);
      v137 = v49;
      v138 = MEMORY[0x277CC8210];
      *&v136 = v52;
      v53 = sub_226D6847C();
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      swift_allocObject();
      v56 = sub_226D6846C();
      v57 = v104;
      v137 = v104;
      *&v136 = v29;
      v138 = &off_283A72E60;
      v134 = &type metadata for BankConnectPaymentPassDataSourceProvider;
      v135 = &protocol witness table for BankConnectPaymentPassDataSourceProvider;
      v131 = v102;
      v132 = MEMORY[0x277CC8180];
      *&v130 = v110;
      v128 = v39;
      v129 = &off_283A6B110;
      v58 = __swift_allocate_boxed_opaque_existential_1(v127);
      sub_226CF146C(v40, v58);
      v125 = v53;
      v126 = MEMORY[0x277CC74D0];
      *&v124 = v56;
      v59 = type metadata accessor for BankConnectInsightsRequestBuilder();
      v60 = *(v59 + 48);
      v61 = *(v59 + 52);
      v62 = swift_allocObject();
      v63 = __swift_mutable_project_boxed_opaque_existential_1(&v136, v57);
      v116 = &v101;
      v64 = *(*(v57 - 8) + 64);
      MEMORY[0x28223BE20](v63);
      v66 = (&v101 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v67 + 16))(v66);
      v68 = v128;
      v69 = __swift_mutable_project_boxed_opaque_existential_1(v127, v128);
      v111 = &v101;
      v70 = *(*(v68 - 8) + 64);
      MEMORY[0x28223BE20](v69);
      v72 = &v101 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v73 + 16))(v72);
      v74 = *v66;
      v122 = v57;
      v123 = &off_283A72E60;
      *&v121 = v74;
      v119 = v39;
      v120 = &off_283A6B110;
      v75 = __swift_allocate_boxed_opaque_existential_1(&v118);
      sub_226CF14D0(v72, v75);

      swift_defaultActor_initialize();
      v76 = v103;
      (v115)(v62 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_logger, v114, v103);

      *(v62 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_store) = v105;
      sub_226AC484C(&v121, v62 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_classifiableTransactionSource);
      sub_226AC484C(&v133, v62 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_paymentPassDataSourceProvider);
      sub_226AC484C(&v130, v62 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_userIdentifierProvider);
      sub_226AC484C(&v118, v62 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_transactionsSigner);
      sub_226AC484C(&v124, v62 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_piiProcessor);
      __swift_destroy_boxed_opaque_existential_0Tm(v127);
      __swift_destroy_boxed_opaque_existential_0Tm(&v136);
      sub_226CF1534(v108);
      v77 = sub_226D679FC();
      v78 = *(v77 + 48);
      v79 = *(v77 + 52);
      swift_allocObject();
      v80 = sub_226D679EC();
      v81 = sub_226D6C7CC();
      v137 = v77;
      v138 = MEMORY[0x277CC6EB0];
      *&v136 = v80;
      v82 = type metadata accessor for BankConnectInsightsDataLoader();
      v83 = *(v82 + 48);
      v84 = *(v82 + 52);
      v85 = swift_allocObject();
      swift_defaultActor_initialize();
      (v115)(v85 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_logger, v114, v76);
      *(v85 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_inProgressTransactionIDs) = MEMORY[0x277D84FA0];
      *(v85 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader____lazy_storage___mapsInsightsServiceTask) = 0;
      sub_226AC484C(&v139, v85 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_environment);
      *(v85 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_requestBuilder) = v62;
      sub_226AC484C(&v136, v85 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_extensionFinder);
      v86 = v82;
      *(v85 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_batchSize) = v81;
      v87 = &off_283A6A870;
      v19 = v113;
    }

    else
    {
      v88 = v114[4];
      __swift_project_boxed_opaque_existential_1(v114, v114[3]);
      v116 = sub_226D6BAAC();
      v89 = sub_226D679FC();
      v90 = *(v89 + 48);
      v91 = *(v89 + 52);
      swift_allocObject();
      v92 = sub_226D679EC();
      type metadata accessor for ClassifiableTransactionSource();
      v93 = swift_allocObject();
      v94 = MEMORY[0x277D84F90];
      *(v93 + 16) = v23;
      *(v93 + 24) = v94;
      *(v93 + 32) = 0;
      *(v93 + 40) = 1;
      *(v93 + 48) = &unk_283A6A2B8;
      v140 = sub_226D6B5EC();
      v141 = MEMORY[0x277CC7F68];
      __swift_allocate_boxed_opaque_existential_1(&v139);

      sub_226D6B58C();
      v95 = v109;
      sub_226D67E8C();
      sub_226D67F0C();
      (*(v115 + 8))(v95, v110);
      sub_226D6704C();
      v96 = sub_226D6BE5C();
      v97 = *(v96 + 48);
      v98 = *(v96 + 52);
      swift_allocObject();
      v99 = sub_226D6BE4C();
      v85 = sub_226CF12BC(v116, v92, v93, v99);
      v86 = type metadata accessor for TransactionClassificationDataLoader();
      v87 = &off_283A6ED00;
    }

    v140 = v86;
    v141 = v87;

    *&v139 = v85;
    sub_226AE532C(&v139, v19);
  }

  return sub_226AC484C(&v139, v117);
}

uint64_t sub_226CF11E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D7A90B0, &qword_226D7BF30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CF1254(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D7A90B0, &qword_226D7BF30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_226CF12BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v26 = sub_226D679FC();
  v27 = MEMORY[0x277CC6EB0];
  *&v25 = a2;
  v9 = type metadata accessor for ClassifiableTransactionSource();
  v24[3] = v9;
  v24[4] = &off_283A72E60;
  v24[0] = a3;
  v22 = v8;
  v23 = MEMORY[0x277CC8180];
  *&v21 = a4;
  type metadata accessor for TransactionClassificationDataLoader();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v24, v9);
  v12 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v19 = v9;
  v20 = &off_283A72E60;
  *&v18 = v16;
  swift_defaultActor_initialize();
  v10[30] = MEMORY[0x277D84FA0];
  v10[31] = 0;
  v10[14] = a1;
  sub_226AC484C(&v25, (v10 + 15));
  sub_226AC484C(&v18, (v10 + 20));
  sub_226AC484C(&v21, (v10 + 25));
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  return v10;
}

uint64_t sub_226CF146C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectTransactionsBAASigner();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CF14D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectTransactionsBAASigner();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CF1534(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectTransactionsBAASigner();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BankConnectServiceImplementation.classifyTransactions(with:forceClassification:)(uint64_t a1, char a2)
{
  *(v3 + 136) = a2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  return MEMORY[0x2822009F8](sub_226CF15B4, 0, 0);
}

uint64_t sub_226CF15B4()
{
  v1 = __swift_project_boxed_opaque_existential_1((*(v0 + 104) + 16), *(*(v0 + 104) + 40));
  v2 = __swift_project_boxed_opaque_existential_1(v1 + 26, v1[29]);
  *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
  *(v0 + 88) = sub_226B41FC0();
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  sub_226B42014(v1, v3 + 16);
  v4 = *(*v2 + 16);
  *(swift_task_alloc() + 16) = v0 + 56;
  os_unfair_lock_lock(v4 + 14);
  sub_226CF1B10(&v4[4], v0 + 16);
  v5 = *(v0 + 96);
  os_unfair_lock_unlock(v4 + 14);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v6);

  v9 = sub_226AE45DC(v8);
  *(v0 + 112) = v9;

  v10 = *(v7 + 8);
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = sub_226CF17F0;
  v13 = *(v0 + 136);

  return v15(v9, v13, v6, v7);
}

uint64_t sub_226CF17F0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_226CF190C;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_226B99748;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226CF190C()
{
  v1 = v0[14];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F710);
  v4 = v2;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[16];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_226AB4000, v5, v6, "Failed to load transactions classification: %@", v8, 0xCu);
    sub_226B17298(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  v12 = v0[16];

  v13 = sub_226D6A0DC();
  sub_226BD7738();
  swift_allocError();
  *v14 = v12;
  (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277CC7AB0], v13);
  swift_willThrow();
  v15 = v0[1];

  return v15();
}

uint64_t sub_226CF1B34(uint64_t a1)
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

uint64_t sub_226CF1B90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *sub_226CF1D64(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

uint64_t sub_226CF1FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v9;
  v10 = type metadata accessor for StoreMappingChangeType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v36 = &v31 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v19 = &v31 - v18;
  v34 = v11;
  v35 = v17;
  v20 = *(v17 + 48);
  v21 = *(v11 + 16);
  v21(&v31 - v18, a1, v10);
  v21(&v19[v20], a2, v10);
  v22 = *(v6 + 48);
  v23 = v22(v19, 2, a3);
  if (!v23)
  {
    v31 = v6;
    v21(v36, v19, v10);
    if (!v22(&v19[v20], 2, a3))
    {
      v26 = v31;
      v27 = v32;
      (*(v31 + 32))(v32, &v19[v20], a3);
      v28 = *(v33 + 8);
      v29 = v36;
      v24 = sub_226D6E35C();
      v30 = *(v26 + 8);
      v30(v27, a3);
      v30(v29, a3);
      v15 = v34;
      goto LABEL_10;
    }

    (*(v31 + 8))(v36, a3);
    goto LABEL_9;
  }

  if (v23 == 1)
  {
    if (v22(&v19[v20], 2, a3) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v22(&v19[v20], 2, a3) != 2)
  {
LABEL_9:
    v24 = 0;
    v10 = v35;
    goto LABEL_10;
  }

  v24 = 1;
  v15 = v34;
LABEL_10:
  (*(v15 + 8))(v19, v10);
  return v24 & 1;
}

unint64_t sub_226CF2378()
{
  result = qword_27D7A9138;
  if (!qword_27D7A9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A9138);
  }

  return result;
}

void sub_226CF23E8(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        sub_226CF28A4(a2, a1);
        return;
      }

      v4 = MEMORY[0x277CC78D0];
      v5 = MEMORY[0x277CC78C8];
    }

    else
    {
      v4 = MEMORY[0x277CC7CF8];
      v5 = MEMORY[0x277CC7CF0];
    }

    sub_226CF279C(a2, a1, v4, v5);
    return;
  }

  if (a4 > 4u)
  {
    sub_226CF2F48(a2, a3, a1);
  }

  else
  {
    sub_226CF29B8(a2, a1);
  }
}

uint64_t sub_226CF2680(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a6 != 1)
        {
          return 0;
        }
      }

      else if (a6 != 2)
      {
        return 0;
      }
    }

    else if (a6)
    {
      return 0;
    }

LABEL_16:
    sub_226B509B0();
    return sub_226D6EC3C() & 1;
  }

  if (a3 > 4u)
  {
    if (a3 == 5)
    {
      if (a6 != 5)
      {
        return 0;
      }
    }

    else if (a6 != 6)
    {
      return 0;
    }
  }

  else
  {
    if (a3 == 3)
    {
      if (a6 != 3)
      {
        return 0;
      }

      goto LABEL_16;
    }

    if (a6 != 4)
    {
      return 0;
    }
  }

  sub_226B509B0();
  if (sub_226D6EC3C())
  {
    return sub_226D6EC3C() & 1;
  }

  return 0;
}

void sub_226CF279C(uint64_t a1, void *a2, void (*a3)(void), uint64_t (*a4)(uint64_t, void *))
{
  v13[1] = *MEMORY[0x277D85DE8];
  a3(0);
  v8 = a4(a1, a2);
  if (!v4)
  {
    v9 = v8;
    [a2 deleteObject_];
    v13[0] = 0;
    if ([a2 save_])
    {
      v10 = v13[0];
    }

    else
    {
      v11 = v13[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_226CF28A4(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_226D6980C();
  v4 = sub_226D697DC();
  if (!v2)
  {
    v5 = v4;
    sub_226D6AA2C();
    v6 = v5;
    v7 = a2;

    v11[0] = 0;
    if ([v7 save_])
    {
      v8 = v11[0];
    }

    else
    {
      v9 = v11[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_226CF29B8(uint64_t a1, void *a2)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226D6774C();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = sub_226D6D52C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6AA2C();
  v16 = sub_226D6A9FC();
  if (!v2)
  {
    v32 = v8;
    v33 = v10;
    v34 = v4;
    v17 = v16;
    sub_226D6980C();
    v35 = v17;
    v18 = [v17 credentialIdentifier];
    sub_226D6D4FC();

    v20 = sub_226D697BC();
    (*(v12 + 8))(v15, v11);
    if (v20)
    {
      v21 = v20;
      v22 = v35;
      sub_226D697FC();
    }

    else
    {
      v22 = v35;
      v23 = v35;
      v24 = v33;
      sub_226D6775C();
      v25 = v36;
      v26 = v34;
      (*(v36 + 16))(v32, v24, v34);
      v27 = a2;

      (*(v25 + 8))(v24, v26);
    }

    v37[0] = 0;
    v28 = [a2 save_];
    v29 = v37[0];
    if ((v28 & 1) == 0)
    {
      v30 = v29;
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_226CF2D0C(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_226D6AA2C();
  v5 = sub_226D6A9FC();
  if (!v3)
  {
    v6 = v5;
    sub_226D6980C();
    v8 = sub_226D697DC();
    sub_226D6AA0C();
    v11[0] = 0;
    if ([a3 save_])
    {
      v9 = v11[0];
    }

    else
    {
      v10 = v11[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_226CF2F48(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_226D6980C();
  v5 = sub_226D697DC();
  if (!v3)
  {
    v6 = v5;
    sub_226D6AA2C();
    v8 = sub_226D6A9FC();
    sub_226D697FC();
    v11[0] = 0;
    if ([a3 save_])
    {
      v9 = v11[0];
    }

    else
    {
      v10 = v11[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_226CF3184(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_226D6AA2C();
  v5 = sub_226D6A9FC();
  if (!v3)
  {
    v6 = v5;
    v8 = sub_226D6A9FC();
    sub_226D6AA1C();
    v11[0] = 0;
    if ([a3 save_])
    {
      v9 = v11[0];
    }

    else
    {
      v10 = v11[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226CF33B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_226CF33FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void *sub_226CF3458@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v25 = a2;
  v23 = a3;
  v24 = a1;
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D68F4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6751C();
  result = sub_226D6745C();
  if (!v3)
  {
    v21 = v5;
    v22 = 0;
    v15 = v25;
    v16 = v23;
    if (result)
    {
      v20 = result;
      sub_226D6749C();
      sub_226D68F2C();
      (*(v10 + 8))(v13, v9);
      sub_226CF368C(v15, v16);

      return (*(v21 + 8))(v8, v4);
    }

    else
    {
      v17 = *MEMORY[0x277CC6700];
      v18 = sub_226D66FAC();
      return (*(*(v18 - 8) + 104))(v16, v17, v18);
    }
  }

  return result;
}

uint64_t sub_226CF368C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_226D6D4AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226AF265C(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226B905C4(v7);
    v13 = MEMORY[0x277CC66F8];
LABEL_5:
    v14 = *v13;
    v15 = sub_226D66FAC();
    return (*(*(v15 - 8) + 104))(a2, v14, v15);
  }

  (*(v9 + 32))(v12, v7, v8);
  if (sub_226D6D3FC())
  {
    (*(v9 + 8))(v12, v8);
    v13 = MEMORY[0x277CC66F0];
    goto LABEL_5;
  }

  v17 = sub_226D6D40C();
  (*(v9 + 8))(v12, v8);
  v18 = sub_226D66FAC();
  if (v17)
  {
    v19 = MEMORY[0x277CC66E8];
  }

  else
  {
    v19 = MEMORY[0x277CC66F8];
  }

  return (*(*(v18 - 8) + 104))(a2, *v19, v18);
}

void sub_226CF38E0(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v44 = a3;
  v45 = a2;
  v46 = a1;
  v48 = a4;
  v5 = sub_226D6D4AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D68F4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6751C();
  v15 = sub_226D6745C();
  if (!v4)
  {
    v36 = v14;
    v37 = v11;
    v38 = v10;
    v39 = v9;
    v40 = v5;
    v41 = v6;
    v16 = v48;
    v43 = 0;
    if (v15)
    {
      v42 = v15;
      v17 = [v15 ecommerceOrderContent];
      v18 = v16;
      if (v17)
      {
        v19 = v17;
        v20 = [v17 associatedApplicationIdentifiers];
        if (v20)
        {
          v21 = v20;
          v22 = sub_226D6E5EC();

          v47[0] = sub_226D67F0C();
          v47[1] = v23;
          MEMORY[0x28223BE20](v47[0]);
          *(&v35 - 2) = v47;
          v24 = v43;
          v25 = sub_226CCB428(sub_226BAE190, (&v35 - 4), v22);
          v43 = v24;

          if (v25)
          {
            v26 = v36;
            v27 = v42;
            sub_226D6749C();
            v28 = v39;
            sub_226D68F2C();
            (*(v37 + 8))(v26, v38);
            sub_226CF368C(v44, v16);

            (*(v41 + 8))(v28, v40);
            return;
          }

          v18 = v16;
        }

        else
        {
        }

        v33 = *MEMORY[0x277CC6700];
        v34 = sub_226D66FAC();
        (*(*(v34 - 8) + 104))(v18, v33, v34);
      }

      else
      {
        v31 = *MEMORY[0x277CC6700];
        v32 = sub_226D66FAC();
        (*(*(v32 - 8) + 104))(v16, v31, v32);
      }
    }

    else
    {
      v29 = *MEMORY[0x277CC6700];
      v30 = sub_226D66FAC();
      (*(*(v30 - 8) + 104))(v16, v29, v30);
    }
  }
}

void sub_226CF3CC0()
{
  sub_226D6B49C();
  if (v0 <= 0x3F)
  {
    sub_226CF3D68();
    if (v1 <= 0x3F)
    {
      sub_226CF3D98();
      if (v2 <= 0x3F)
      {
        sub_226D6B3BC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_226CF3D68()
{
  result = qword_28105F558;
  if (!qword_28105F558)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28105F558);
  }

  return result;
}

void sub_226CF3D98()
{
  if (!qword_28105F560)
  {
    sub_226D6D1AC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28105F560);
    }
  }
}

void sub_226CF3E24()
{
  sub_226D6B49C();
  if (v0 <= 0x3F)
  {
    sub_226CF3D68();
    if (v1 <= 0x3F)
    {
      sub_226CF3D98();
      if (v2 <= 0x3F)
      {
        sub_226D6B3BC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_226CF3EF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_226CF3F40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226CF3FBC()
{
  v1 = sub_226D6B49C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226CF648C(v0, v9, type metadata accessor for OrderWebServiceTaskIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
LABEL_6:
      (*(v2 + 32))(v5, v9, v1);
      v11 = sub_226D6B46C();
      (*(v2 + 8))(v5, v1);
      return v11;
    }

    v11 = *v9;
    v12 = v9[1];
  }

  else
  {
    if (EnumCaseMultiPayload <= 7)
    {
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
    {
      v11 = *v9;
      v13 = v9[1];
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
      v15 = sub_226D6D1AC();
      (*(*(v15 - 8) + 8))(v9 + v14, v15);
    }

    else
    {
      sub_226CF64F4(v9, type metadata accessor for OrderWebServiceTaskIdentifier);
      return 0;
    }
  }

  return v11;
}

uint64_t sub_226CF41F8(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_226D6B3BC();
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_226D6D1AC();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v40);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6B49C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226CF648C(v2, v19, type metadata accessor for OrderWebServiceTaskIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        (*(v12 + 32))(v15, v19, v11);
        v21 = 1;
      }

      else
      {
        (*(v12 + 32))(v15, v19, v11);
        v21 = 0;
      }

      goto LABEL_23;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v31 = *v19;
      v32 = *(v19 + 1);
      v24 = 2;
    }

    else
    {
      v22 = *v19;
      v23 = *(v19 + 1);
      if (EnumCaseMultiPayload == 3)
      {
        v24 = 3;
      }

      else
      {
        v24 = 4;
      }
    }

    MEMORY[0x22AA8B3B0](v24);
    sub_226D6E42C();
  }

  else
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
        (*(v12 + 32))(v15, v19, v11);
        v21 = 5;
      }

      else if (EnumCaseMultiPayload == 6)
      {
        (*(v12 + 32))(v15, v19, v11);
        v21 = 6;
      }

      else
      {
        (*(v12 + 32))(v15, v19, v11);
        v21 = 7;
      }

LABEL_23:
      MEMORY[0x22AA8B3B0](v21);
      sub_226CF4DC0(&qword_27D7A7F78, MEMORY[0x277CC7F28]);
      sub_226D6E30C();
      return (*(v12 + 8))(v15, v11);
    }

    if (EnumCaseMultiPayload == 8)
    {
      v33 = *v19;
      v34 = *(v19 + 1);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0);
      v28 = v7;
      v29 = v40;
      (*(v7 + 32))(v10, &v19[*(v35 + 48)], v40);
      v30 = 8;
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v25 = *v19;
      v26 = *(v19 + 1);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0);
      v28 = v7;
      v29 = v40;
      (*(v7 + 32))(v10, &v19[*(v27 + 48)], v40);
      v30 = 9;
LABEL_18:
      MEMORY[0x22AA8B3B0](v30);
      sub_226D6E42C();

      sub_226CF4DC0(&qword_27D7A8208, MEMORY[0x277CC9260]);
      sub_226D6E30C();
      return (*(v28 + 8))(v10, v29);
    }

    v37 = v39;
    (*(v39 + 32))(v6, v19, v3);
    MEMORY[0x22AA8B3B0](10);
    sub_226CF4DC0(&qword_27D7A9150, MEMORY[0x277CC7ED0]);
    sub_226D6E30C();
    return (*(v37 + 8))(v6, v3);
  }
}

uint64_t sub_226CF4780(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_226D6B3BC();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6D1AC();
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6B49C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226CF648C(v2, v19, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v26 = *v19;
        v27 = *(v19 + 1);
        MEMORY[0x22AA8B3B0](1);
        sub_226D6E42C();
      }

      v29 = v12;
      (*(v12 + 32))(v15, v19, v11);
      v30 = 2;
    }

    else
    {
      v29 = v12;
      (*(v12 + 32))(v15, v19, v11);
      v30 = 0;
    }

    MEMORY[0x22AA8B3B0](v30);
    sub_226CF4DC0(&qword_27D7A7F78, MEMORY[0x277CC7F28]);
    sub_226D6E30C();
    return (*(v29 + 8))(v15, v11);
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v28 = 4;
    }

    else
    {
      v28 = 6;
    }

    return MEMORY[0x22AA8B3B0](v28);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v21 = *v19;
    v22 = *(v19 + 1);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0);
    v24 = v33;
    (*(v33 + 32))(v10, &v19[*(v23 + 48)], v7);
    MEMORY[0x22AA8B3B0](3);
    sub_226D6E42C();

    sub_226CF4DC0(&qword_27D7A8208, MEMORY[0x277CC9260]);
    sub_226D6E30C();
    return (*(v24 + 8))(v10, v7);
  }

  else
  {
    v31 = v34;
    (*(v34 + 32))(v6, v19, v3);
    MEMORY[0x22AA8B3B0](5);
    sub_226CF4DC0(&qword_27D7A9150, MEMORY[0x277CC7ED0]);
    sub_226D6E30C();
    return (*(v31 + 8))(v6, v3);
  }
}

uint64_t sub_226CF4C84(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_226D6F2FC();
  a3(v5);
  return sub_226D6F35C();
}

uint64_t sub_226CF4CE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_226D6F2FC();
  a4(v6);
  return sub_226D6F35C();
}

uint64_t sub_226CF4DC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226CF4E08(uint64_t a1, uint64_t a2)
{
  v162 = a2;
  v163 = a1;
  v2 = sub_226D6B3BC();
  v147 = *(v2 - 8);
  v148 = v2;
  v3 = *(v147 + 64);
  MEMORY[0x28223BE20](v2);
  v144 = v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6D1AC();
  v6 = *(v5 - 8);
  v157 = v5;
  v158 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v146 = v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v150 = v142 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v145 = v142 - v13;
  MEMORY[0x28223BE20](v12);
  v149 = v142 - v14;
  v15 = sub_226D6B49C();
  v16 = *(v15 - 8);
  v159 = v15;
  v160 = v16;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v143 = v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v142[1] = v142 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v142[0] = v142 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v161 = v142 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = v142 - v26;
  v28 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v156 = v142 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v155 = v142 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v154 = v142 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v153 = v142 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v152 = v142 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v151 = v142 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = (v142 - v43);
  v45 = MEMORY[0x28223BE20](v42);
  v47 = (v142 - v46);
  v48 = MEMORY[0x28223BE20](v45);
  v50 = (v142 - v49);
  v51 = MEMORY[0x28223BE20](v48);
  v53 = v142 - v52;
  MEMORY[0x28223BE20](v51);
  v55 = v142 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9158, &unk_226D7C3C0);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x28223BE20](v56 - 8);
  v60 = v142 - v59;
  v61 = v142 + *(v58 + 56) - v59;
  sub_226CF648C(v163, v142 - v59, type metadata accessor for OrderWebServiceTaskIdentifier);
  v163 = v61;
  sub_226CF648C(v162, v61, type metadata accessor for OrderWebServiceTaskIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v64 = v151;
        sub_226CF648C(v60, v151, type metadata accessor for OrderWebServiceTaskIdentifier);
        v63 = v163;
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v65 = v160;
          v66 = *(v160 + 32);
          v67 = &v164;
          goto LABEL_27;
        }
      }

      else
      {
        v63 = v163;
        if (EnumCaseMultiPayload == 6)
        {
          v64 = v152;
          sub_226CF648C(v60, v152, type metadata accessor for OrderWebServiceTaskIdentifier);
          if (swift_getEnumCaseMultiPayload() == 6)
          {
            v65 = v160;
            v66 = *(v160 + 32);
            v67 = &v165;
LABEL_27:
            v89 = *(v67 - 32);
LABEL_41:
            v113 = v159;
            v66(v89, v63, v159);
            v111 = MEMORY[0x22AA87530](v64, v89);
            v114 = *(v65 + 8);
            v114(v89, v113);
            v114(v64, v113);
            goto LABEL_42;
          }
        }

        else
        {
          v64 = v153;
          sub_226CF648C(v60, v153, type metadata accessor for OrderWebServiceTaskIdentifier);
          if (swift_getEnumCaseMultiPayload() == 7)
          {
            v65 = v160;
            v66 = *(v160 + 32);
            v89 = v143;
            goto LABEL_41;
          }
        }
      }

      v115 = v159;
      v116 = v160;
      goto LABEL_53;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v90 = v154;
      sub_226CF648C(v60, v154, type metadata accessor for OrderWebServiceTaskIdentifier);
      v92 = *v90;
      v91 = *(v90 + 1);
      v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
      v94 = v163;
      v95 = swift_getEnumCaseMultiPayload();
      v96 = v158;
      if (v95 == 8)
      {
        v162 = v60;
        v98 = *v94;
        v97 = v94[1];
        v99 = *(v158 + 32);
        v100 = &v90[v93];
        v101 = v157;
        v99(v149, v100, v157);
        v102 = v94 + v93;
        v103 = v145;
        v99(v145, v102, v101);
        if (v92 == v98 && v91 == v97)
        {

          v86 = v162;
        }

        else
        {
          v128 = sub_226D6F21C();

          v86 = v162;
          if ((v128 & 1) == 0)
          {
            v138 = *(v96 + 8);
            v138(v103, v101);
            v139 = v149;
            v140 = v101;
            goto LABEL_67;
          }
        }

        v129 = v149;
        v111 = sub_226D6D13C();
        v130 = *(v96 + 8);
        v130(v103, v101);
        v131 = v129;
        v132 = v101;
LABEL_64:
        v130(v131, v132);
        sub_226CF64F4(v86, type metadata accessor for OrderWebServiceTaskIdentifier);
        return v111 & 1;
      }

      (*(v158 + 8))(&v90[v93], v157);
    }

    else
    {
      v72 = v158;
      if (EnumCaseMultiPayload != 9)
      {
        v64 = v156;
        sub_226CF648C(v60, v156, type metadata accessor for OrderWebServiceTaskIdentifier);
        v117 = v163;
        if (swift_getEnumCaseMultiPayload() == 10)
        {
          v119 = v147;
          v118 = v148;
          v120 = v144;
          (*(v147 + 32))(v144, v117, v148);
          v111 = sub_226D6B39C();
          v121 = *(v119 + 8);
          v121(v120, v118);
          v121(v64, v118);
          goto LABEL_42;
        }

        v116 = v147;
        v115 = v148;
LABEL_53:
        (*(v116 + 8))(v64, v115);
        goto LABEL_54;
      }

      v73 = v155;
      sub_226CF648C(v60, v155, type metadata accessor for OrderWebServiceTaskIdentifier);
      v75 = *v73;
      v74 = *(v73 + 1);
      v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
      v77 = v163;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v162 = v60;
        v79 = *v77;
        v78 = v77[1];
        v80 = v77;
        v81 = *(v72 + 32);
        v82 = &v73[v76];
        v83 = v157;
        v81(v150, v82, v157);
        v84 = v80 + v76;
        v85 = v146;
        v81(v146, v84, v83);
        if (v75 == v79 && v74 == v78)
        {

          v86 = v162;
LABEL_63:
          v136 = v150;
          v111 = sub_226D6D13C();
          v130 = *(v72 + 8);
          v137 = v157;
          v130(v85, v157);
          v131 = v136;
          v132 = v137;
          goto LABEL_64;
        }

        v135 = sub_226D6F21C();

        v86 = v162;
        if (v135)
        {
          goto LABEL_63;
        }

        v138 = *(v72 + 8);
        v141 = v157;
        v138(v85, v157);
        v139 = v150;
        v140 = v141;
LABEL_67:
        v138(v139, v140);
        sub_226CF64F4(v86, type metadata accessor for OrderWebServiceTaskIdentifier);
        goto LABEL_55;
      }

      (*(v72 + 8))(&v73[v76], v157);
    }

    goto LABEL_51;
  }

  v68 = v161;
  if (EnumCaseMultiPayload > 1)
  {
    v69 = v163;
    if (EnumCaseMultiPayload == 2)
    {
      sub_226CF648C(v60, v50, type metadata accessor for OrderWebServiceTaskIdentifier);
      v71 = *v50;
      v70 = v50[1];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
LABEL_22:
        if (v71 == *v69 && v70 == v69[1])
        {
          v88 = v69[1];
LABEL_36:

LABEL_47:
          sub_226CF64F4(v60, type metadata accessor for OrderWebServiceTaskIdentifier);
          v111 = 1;
          return v111 & 1;
        }

        v122 = v69[1];
        v123 = sub_226D6F21C();

        if (v123)
        {
          goto LABEL_47;
        }

        goto LABEL_61;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_226CF648C(v60, v47, type metadata accessor for OrderWebServiceTaskIdentifier);
        v71 = *v47;
        v70 = v47[1];
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_51;
        }

        goto LABEL_22;
      }

      sub_226CF648C(v60, v44, type metadata accessor for OrderWebServiceTaskIdentifier);
      v105 = *v44;
      v104 = v44[1];
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        if (v105 == *v69 && v104 == v69[1])
        {
          v106 = v69[1];
          goto LABEL_36;
        }

        v133 = v69[1];
        v134 = sub_226D6F21C();

        if (v134)
        {
          goto LABEL_47;
        }

LABEL_61:
        sub_226CF64F4(v60, type metadata accessor for OrderWebServiceTaskIdentifier);
        goto LABEL_55;
      }
    }

LABEL_51:

    goto LABEL_54;
  }

  v87 = v163;
  if (!EnumCaseMultiPayload)
  {
    sub_226CF648C(v60, v55, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (!swift_getEnumCaseMultiPayload())
    {
      v126 = v159;
      v125 = v160;
      (*(v160 + 32))(v27, v87, v159);
      v111 = MEMORY[0x22AA87530](v55, v27);
      v127 = *(v125 + 8);
      v127(v27, v126);
      v127(v55, v126);
      goto LABEL_42;
    }

    (*(v160 + 8))(v55, v159);
    goto LABEL_54;
  }

  sub_226CF648C(v60, v53, type metadata accessor for OrderWebServiceTaskIdentifier);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v160 + 8))(v53, v159);
LABEL_54:
    sub_226AC47B0(v60, &qword_27D7A9158, &unk_226D7C3C0);
LABEL_55:
    v111 = 0;
    return v111 & 1;
  }

  v107 = v160;
  v108 = v68;
  v109 = v68;
  v110 = v159;
  (*(v160 + 32))(v109, v87, v159);
  v111 = MEMORY[0x22AA87530](v53, v108);
  v112 = *(v107 + 8);
  v112(v108, v110);
  v112(v53, v110);
LABEL_42:
  sub_226CF64F4(v60, type metadata accessor for OrderWebServiceTaskIdentifier);
  return v111 & 1;
}

uint64_t sub_226CF5B9C(uint64_t a1, uint64_t a2)
{
  v89 = a1;
  v90 = a2;
  v2 = sub_226D6B3BC();
  v80 = *(v2 - 8);
  v81 = v2;
  v3 = *(v80 + 64);
  MEMORY[0x28223BE20](v2);
  v78 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_226D6D1AC();
  v86 = *(v82 - 8);
  v5 = v86[8];
  v6 = MEMORY[0x28223BE20](v82);
  v79 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v85 = &v77 - v8;
  v9 = sub_226D6B49C();
  v87 = *(v9 - 8);
  v88 = v9;
  v10 = *(v87 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v77 - v14;
  v16 = type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v84 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v83 = (&v77 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v77 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v77 - v26);
  MEMORY[0x28223BE20](v25);
  v29 = &v77 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9148, &qword_226D7C3B8);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v34 = &v77 - v33;
  v35 = &v77 + *(v32 + 56) - v33;
  sub_226CF648C(v89, &v77 - v33, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
  v36 = v35;
  sub_226CF648C(v90, v35, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v49 = v24;
    v50 = v13;
    v52 = v87;
    v51 = v88;
    if (EnumCaseMultiPayload)
    {
      v53 = v36;
      if (EnumCaseMultiPayload == 1)
      {
        v54 = v34;
        sub_226CF648C(v34, v27, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
        v56 = *v27;
        v55 = v27[1];
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v57 = *v53;
          v58 = v53[1];
          if (v56 == v57 && v55 == v58)
          {
          }

          else
          {
            v60 = sub_226D6F21C();

            if ((v60 & 1) == 0)
            {
              sub_226CF64F4(v54, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
LABEL_33:
              v62 = 0;
              return v62 & 1;
            }
          }

          v71 = v54;
LABEL_40:
          sub_226CF64F4(v71, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
          v62 = 1;
          return v62 & 1;
        }

        v34 = v54;
        goto LABEL_32;
      }

      v61 = v49;
      sub_226CF648C(v34, v49, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v52 + 8))(v61, v51);
        goto LABEL_32;
      }

      (*(v52 + 32))(v50, v36, v51);
      v62 = MEMORY[0x22AA87530](v61, v50);
      v63 = v34;
      v64 = *(v52 + 8);
      v64(v50, v51);
      v65 = v61;
    }

    else
    {
      sub_226CF648C(v34, v29, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v52 + 8))(v29, v51);
        goto LABEL_32;
      }

      (*(v52 + 32))(v15, v36, v51);
      v62 = MEMORY[0x22AA87530](v29, v15);
      v63 = v34;
      v64 = *(v52 + 8);
      v64(v15, v51);
      v65 = v29;
    }

    v64(v65, v51);
    sub_226CF64F4(v63, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
    return v62 & 1;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_32;
      }

      goto LABEL_27;
    }

    if (swift_getEnumCaseMultiPayload() == 6)
    {
LABEL_27:
      v71 = v34;
      goto LABEL_40;
    }

LABEL_32:
    sub_226AC47B0(v34, &qword_27D7A9148, &qword_226D7C3B8);
    goto LABEL_33;
  }

  v38 = v35;
  if (EnumCaseMultiPayload == 3)
  {
    v90 = v34;
    v39 = v83;
    sub_226CF648C(v34, v83, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
    v41 = *v39;
    v40 = v39[1];
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v43 = *v38;
      v44 = v38[1];
      v45 = v86[4];
      v46 = v82;
      v45(v85, v39 + v42, v82);
      v47 = v38 + v42;
      v48 = v79;
      v45(v79, v47, v46);
      if (v41 == v43 && v40 == v44)
      {

LABEL_37:
        v73 = v85;
        v62 = sub_226D6D13C();
        v74 = v86[1];
        v74(v48, v46);
        v74(v73, v46);
        sub_226CF64F4(v90, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
        return v62 & 1;
      }

      v72 = sub_226D6F21C();

      if (v72)
      {
        goto LABEL_37;
      }

      v76 = v86[1];
      v76(v48, v46);
      v76(v85, v46);
      sub_226CF64F4(v90, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
      goto LABEL_33;
    }

    (v86[1])(v39 + v42, v82);

    v34 = v90;
    goto LABEL_32;
  }

  v66 = v84;
  sub_226CF648C(v34, v84, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    (*(v80 + 8))(v66, v81);
    goto LABEL_32;
  }

  v67 = v80;
  v68 = v78;
  v69 = v81;
  (*(v80 + 32))(v78, v36, v81);
  v62 = sub_226D6B39C();
  v70 = *(v67 + 8);
  v70(v68, v69);
  v70(v66, v69);
  sub_226CF64F4(v34, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
  return v62 & 1;
}

uint64_t sub_226CF648C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226CF64F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for OrderWebServiceUnregisterTask()
{
  result = qword_27D7A9160;
  if (!qword_27D7A9160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226CF65C8()
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

uint64_t sub_226CF6668()
{
  v1 = v0;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000025, 0x8000000226D87A30);
  v2 = type metadata accessor for OrderWebServiceUnregisterTask();
  MEMORY[0x22AA8A510](*(v1 + v2[6]), *(v1 + v2[6] + 8));
  MEMORY[0x22AA8A510](0xD000000000000012, 0x8000000226D856A0);
  MEMORY[0x22AA8A510](*(v1 + v2[7]), *(v1 + v2[7] + 8));
  MEMORY[0x22AA8A510](0xD000000000000013, 0x8000000226D85820);
  MEMORY[0x22AA8A510](*(v1 + v2[5]), *(v1 + v2[5] + 8));
  MEMORY[0x22AA8A510](0xD000000000000010, 0x8000000226D85840);
  sub_226D6D1AC();
  sub_226CF8CDC(&qword_27D7A7018, MEMORY[0x277CC9260]);
  v3 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v3);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_226CF67F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D6B00C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for OrderWebServiceUnregisterTask();
  v3[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CF68E4, 0, 0);
}

uint64_t sub_226CF68E4()
{
  v42 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F5C0);
  sub_226CF8C3C(v2, v1);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v39 = v5;
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    v35 = *(v0 + 40);
    v36 = *(v0 + 48);
    buf = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = v38;
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
    sub_226CF8CDC(&qword_27D7A8B68, MEMORY[0x277CC7DD8]);
    v19 = sub_226D6F1CC();
    v21 = v20;
    (*(v36 + 8))(v8, v35);
    sub_226CF8DEC(v7, type metadata accessor for OrderWebServiceUnregisterTask);
    v22 = sub_226AC4530(v19, v21, &v41);

    *(buf + 4) = v22;
    _os_log_impl(&dword_226AB4000, v4, v39, "Attempting to cancel order registration (%s)", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    MEMORY[0x22AA8BEE0](v38, -1, -1);
    MEMORY[0x22AA8BEE0](buf, -1, -1);
  }

  else
  {

    sub_226CF8DEC(v7, type metadata accessor for OrderWebServiceUnregisterTask);
  }

  v23 = *(v0 + 32);
  v24 = **(v0 + 24);
  v25 = sub_226D676AC();
  *(v0 + 80) = v25;
  v26 = swift_task_alloc();
  *(v26 + 16) = v23;
  *(v26 + 24) = v25;
  sub_226D6EB7C();
  v27 = *(v0 + 32);

  v28 = sub_226C0B798(v27);
  *(v0 + 88) = v28;
  v29 = swift_task_alloc();
  *(v0 + 96) = v29;
  *(v29 + 16) = v28;
  *(v29 + 24) = v27;
  v30 = *(MEMORY[0x277CC7900] + 4);
  v40 = (*MEMORY[0x277CC7900] + MEMORY[0x277CC7900]);
  v31 = swift_task_alloc();
  *(v0 + 104) = v31;
  v32 = sub_226D6BEDC();
  *v31 = v0;
  v31[1] = sub_226CF6D04;
  v33 = *(v0 + 16);

  return v40(v33, &unk_226D7C4E0, v29, v32);
}

uint64_t sub_226CF6D04()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_226CF6EA8;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_226CF6E20;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226CF6E20()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_226CF6EA8()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

void sub_226CF6F38(uint64_t a1, void *a2)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6B00C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for OrderWebServiceUnregisterTask();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226D6A47C();
  v14 = v10[5];
  v15 = (a1 + v10[6]);
  v16 = *v15;
  v17 = v15[1];
  v18 = (a1 + v10[7]);
  v19 = *v18;
  v20 = v18[1];
  v21 = *(a1 + v14);
  v22 = *(a1 + v14 + 8);
  v23 = sub_226D6A45C();
  if (!v2)
  {
    v54 = 0;
    if (v23)
    {
      v24 = v23;
      [v23 setIsMaybeRegistered_];
      v55[0] = 0;
      if ([a2 save_])
      {
        v25 = v55[0];
      }

      else
      {
        v47 = v55[0];
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

      v26 = sub_226D6E07C();
      __swift_project_value_buffer(v26, qword_28105F5C0);
      sub_226CF8C3C(a1, v13);
      v27 = sub_226D6E05C();
      v28 = sub_226D6E9AC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v52 = v29;
        v53 = swift_slowAlloc();
        v55[0] = v53;
        *v29 = 136315138;
        v30 = v10[5];
        v31 = &v13[v10[6]];
        v51 = v27;
        v33 = *v31;
        v32 = v31[1];
        v34 = &v13[v10[7]];
        v50 = v28;
        v36 = *v34;
        v35 = v34[1];
        v37 = *&v13[v30];
        v38 = *&v13[v30 + 8];

        sub_226D6AFFC();
        sub_226CF8CDC(&qword_27D7A8B68, MEMORY[0x277CC7DD8]);
        v39 = sub_226D6F1CC();
        v41 = v40;
        (*(v6 + 8))(v9, v5);
        sub_226CF8DEC(v13, type metadata accessor for OrderWebServiceUnregisterTask);
        v42 = sub_226AC4530(v39, v41, v55);

        v44 = v51;
        v43 = v52;
        *(v52 + 1) = v42;
        v45 = v43;
        _os_log_impl(&dword_226AB4000, v44, v50, "Order registration %s doesn't exist", v43, 0xCu);
        v46 = v53;
        __swift_destroy_boxed_opaque_existential_0Tm(v53);
        MEMORY[0x22AA8BEE0](v46, -1, -1);
        MEMORY[0x22AA8BEE0](v45, -1, -1);
      }

      else
      {

        sub_226CF8DEC(v13, type metadata accessor for OrderWebServiceUnregisterTask);
      }
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226CF7354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_226D6BC1C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CF7418, 0, 0);
}

uint64_t sub_226CF7418()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = type metadata accessor for OrderWebServiceUnregisterTask();
  v4 = (v2 + v3[5]);
  v5 = *v4;
  v6 = v4[1];
  v7 = (v2 + v3[6]);
  v8 = *v7;
  v9 = v7[1];
  v10 = (v2 + v3[7]);
  v11 = *v10;
  v12 = v10[1];
  v13 = (v2 + v3[8]);
  v14 = *v13;
  v15 = v13[1];

  sub_226D6BC0C();
  v16 = *(MEMORY[0x277CC78F0] + 4);
  v22 = (*MEMORY[0x277CC78F0] + MEMORY[0x277CC78F0]);
  v17 = swift_task_alloc();
  v0[8] = v17;
  *v17 = v0;
  v17[1] = sub_226B4BF14;
  v18 = v0[7];
  v19 = v0[2];
  v20 = v0[3];

  return v22(v19, v18);
}

uint64_t sub_226CF7564(uint64_t a1, uint64_t a2)
{
  v3[2] = a2;
  v3[3] = v2;
  v4 = sub_226D6B00C();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v7 = type metadata accessor for OrderWebServiceUnregisterTask();
  v3[7] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CF7654, 0, 0);
}

uint64_t sub_226CF7654()
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
  sub_226CF8C3C(v2, v1);
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
    sub_226CF8CDC(&qword_27D7A8B68, MEMORY[0x277CC7DD8]);
    v19 = sub_226D6F1CC();
    v21 = v20;
    (*(v32 + 8))(v8, v31);
    sub_226CF8DEC(v7, type metadata accessor for OrderWebServiceUnregisterTask);
    v22 = sub_226AC4530(v19, v21, &v36);

    *(buf + 4) = v22;
    _os_log_impl(&dword_226AB4000, v4, v35, "Successfully cancelled order registration %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x22AA8BEE0](v34, -1, -1);
    MEMORY[0x22AA8BEE0](buf, -1, -1);
  }

  else
  {

    sub_226CF8DEC(v7, type metadata accessor for OrderWebServiceUnregisterTask);
  }

  v23 = *(v0 + 64);
  v24 = *(v0 + 48);
  v25 = *(v0 + 24);
  v26 = **(v0 + 16);
  v27 = sub_226D676AC();
  v28 = swift_task_alloc();
  *(v28 + 16) = v25;
  *(v28 + 24) = v27;
  sub_226D6EB7C();

  v29 = *(v0 + 8);

  return v29();
}

void sub_226CF7990(uint64_t a1, void *a2)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6B00C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for OrderWebServiceUnregisterTask();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226D6A47C();
  v14 = v10[5];
  v15 = (a1 + v10[6]);
  v16 = *v15;
  v17 = v15[1];
  v18 = (a1 + v10[7]);
  v19 = *v18;
  v20 = v18[1];
  v21 = *(a1 + v14);
  v22 = *(a1 + v14 + 8);
  v23 = sub_226D6A45C();
  if (!v2)
  {
    v24 = v23;
    v54 = 0;
    if (v23)
    {
      [a2 deleteObject_];
      v55[0] = 0;
      if ([a2 save_])
      {
        v25 = v55[0];
      }

      else
      {
        v47 = v55[0];
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

      v26 = sub_226D6E07C();
      __swift_project_value_buffer(v26, qword_28105F5C0);
      sub_226CF8C3C(a1, v13);
      v27 = sub_226D6E05C();
      v28 = sub_226D6E9AC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v52 = v29;
        v53 = swift_slowAlloc();
        v55[0] = v53;
        *v29 = 136315138;
        v30 = v10[5];
        v31 = &v13[v10[6]];
        v51 = v27;
        v33 = *v31;
        v32 = v31[1];
        v34 = &v13[v10[7]];
        v50 = v28;
        v36 = *v34;
        v35 = v34[1];
        v37 = *&v13[v30];
        v38 = *&v13[v30 + 8];

        sub_226D6AFFC();
        sub_226CF8CDC(&qword_27D7A8B68, MEMORY[0x277CC7DD8]);
        v39 = sub_226D6F1CC();
        v41 = v40;
        (*(v6 + 8))(v9, v5);
        sub_226CF8DEC(v13, type metadata accessor for OrderWebServiceUnregisterTask);
        v42 = sub_226AC4530(v39, v41, v55);

        v44 = v51;
        v43 = v52;
        *(v52 + 1) = v42;
        v45 = v43;
        _os_log_impl(&dword_226AB4000, v44, v50, "Order registration %s doesn't exist", v43, 0xCu);
        v46 = v53;
        __swift_destroy_boxed_opaque_existential_0Tm(v53);
        MEMORY[0x22AA8BEE0](v46, -1, -1);
        MEMORY[0x22AA8BEE0](v45, -1, -1);
      }

      else
      {

        sub_226CF8DEC(v13, type metadata accessor for OrderWebServiceUnregisterTask);
      }
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226CF7DB0(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for OrderWebServiceUnregisterTask();
  v3[13] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CF7EA4, 0, 0);
}

uint64_t sub_226CF7EA4()
{
  v54 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  type metadata accessor for OrdersAutoBugCaptureReporter();
  inited = swift_initStackObject();
  v4 = [objc_allocWithZone(MEMORY[0x277CC85F0]) init];
  *(inited + 16) = v4;
  v5 = sub_226C778C0(v2);
  v6 = sub_226C6E1FC(v2);
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
  sub_226CF8C3C(v8, v7);
  v11 = v9;
  v12 = sub_226D6E05C();
  v13 = sub_226D6E9CC();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 112);
  if (!v14)
  {

    sub_226CF8DEC(v15, type metadata accessor for OrderWebServiceUnregisterTask);
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
  sub_226CF8CDC(&qword_27D7A8B68, MEMORY[0x277CC7DD8]);
  v28 = sub_226D6F1CC();
  v30 = v29;
  (*(v47 + 8))(v17, v46);
  sub_226CF8DEC(v15, type metadata accessor for OrderWebServiceUnregisterTask);
  v31 = sub_226AC4530(v28, v30, &v53);

  *(v18 + 4) = v31;
  *(v18 + 12) = 2112;
  v32 = v49;
  v33 = _swift_stdlib_bridgeErrorToNSError();
  *(v18 + 14) = v33;
  *v48 = v33;
  _os_log_impl(&dword_226AB4000, log, v51, "Failed to cancel order registration %s with error: %@", v18, 0x16u);
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

    sub_226C6EBC4(v41, *(v0 + 40), *(v0 + 48), v40 + 136);
  }

LABEL_8:
  v42 = *(v0 + 112);
  v43 = *(v0 + 96);

  v44 = *(v0 + 8);

  return v44();
}

void sub_226CF832C(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v68 = a3;
  v67 = a4;
  v70[1] = *MEMORY[0x277D85DE8];
  v6 = sub_226D6B00C();
  v65 = *(v6 - 8);
  v7 = *(v65 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v61[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_226D6D4AC();
  v66 = *(v10 - 8);
  v11 = v66[8];
  MEMORY[0x28223BE20](v10);
  v13 = &v61[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for OrderWebServiceUnregisterTask();
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v61[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226D6A47C();
  v18 = v14[5];
  v19 = (a1 + v14[6]);
  v20 = *v19;
  v21 = v19[1];
  v22 = (a1 + v14[7]);
  v23 = *v22;
  v24 = v22[1];
  v25 = *(a1 + v18);
  v26 = *(a1 + v18 + 8);
  v27 = v69;
  v28 = sub_226D6A45C();
  if (v27)
  {
    goto LABEL_12;
  }

  v29 = v68;
  v64 = v10;
  v69 = 0;
  if (!v28)
  {
    v30 = v17;
    v17 = 0;
    if (qword_28105F5B8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  v30 = v28;
  v31 = [v28 orderWebService];
  sub_226C6EAF8(v29, v31);

  v9 = &selRef_setSortDescriptors_;
  v32 = [v30 requestAttemptCount];
  if (__OFADD__(v32, 1))
  {
    __break(1u);
LABEL_14:
    swift_once();
LABEL_7:
    v37 = sub_226D6E07C();
    __swift_project_value_buffer(v37, qword_28105F5C0);
    sub_226CF8C3C(a1, v30);
    v38 = sub_226D6E05C();
    v39 = sub_226D6E9AC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v68 = v17;
      v41 = v40;
      v64 = v40;
      v66 = swift_slowAlloc();
      v70[0] = v66;
      *v41 = 136315138;
      v42 = v14[5];
      v43 = &v30[v14[6]];
      v44 = *v43;
      v45 = *(v43 + 1);
      v46 = &v30[v14[7]];
      v47 = *v46;
      v48 = *(v46 + 1);
      v63 = v38;
      v50 = *&v30[v42];
      v49 = *&v30[v42 + 8];

      v62 = v39;
      sub_226D6AFFC();
      sub_226CF8CDC(&qword_27D7A8B68, MEMORY[0x277CC7DD8]);
      v51 = sub_226D6F1CC();
      v53 = v52;
      (*(v65 + 8))(v9, v6);
      sub_226CF8DEC(v30, type metadata accessor for OrderWebServiceUnregisterTask);
      v54 = sub_226AC4530(v51, v53, v70);

      v56 = v63;
      v55 = v64;
      *(v64 + 4) = v54;
      v57 = v55;
      _os_log_impl(&dword_226AB4000, v56, v62, "Order registration %s doesn't exist", v55, 0xCu);
      v58 = v66;
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      MEMORY[0x22AA8BEE0](v58, -1, -1);
      MEMORY[0x22AA8BEE0](v57, -1, -1);

      v36 = v67;
      v30 = v68;
      v35 = 0;
    }

    else
    {

      sub_226CF8DEC(v30, type metadata accessor for OrderWebServiceUnregisterTask);
      v35 = 0;
      v36 = v67;
      v30 = v17;
    }

    goto LABEL_11;
  }

  [v30 setRequestAttemptCount_];
  sub_226D6D46C();
  v33 = sub_226D6D3EC();
  (v66[1])(v13, v64);
  [v30 setLastRequestAttemptDate_];

  v70[0] = 0;
  if ([a2 save_])
  {
    v34 = v70[0];
    v35 = [v30 requestAttemptCount];

    v36 = v67;
LABEL_11:
    *v36 = v35;
    *(v36 + 8) = v30 == 0;
    goto LABEL_12;
  }

  v59 = v70[0];
  sub_226D6D04C();

  swift_willThrow();
LABEL_12:
  v60 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226CF88A4(uint64_t a1)
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

uint64_t sub_226CF8934(uint64_t a1)
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
  sub_226CF8DEC(v6 + v5, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
  swift_deallocClassInstance();
  return v14;
}

uint64_t sub_226CF8AD4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  *(a1 + 8) = sub_226CF8CDC(&qword_27D7A9170, type metadata accessor for OrderWebServiceUnregisterTask);
  result = sub_226CF8CDC(a4, type metadata accessor for OrderWebServiceUnregisterTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226CF8BE4(uint64_t a1)
{
  result = sub_226CF8CDC(&qword_27D7A9188, type metadata accessor for OrderWebServiceUnregisterTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226CF8C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderWebServiceUnregisterTask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CF8CDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226CF8D40(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226CF7354(a1, v5, v4);
}

uint64_t sub_226CF8DEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226CF8E60(void *a1)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72A0, &unk_226D7C550);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - v4;
  v6 = sub_226D6D52C();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D683BC();
  v10 = sub_226D6833C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_226D71F40;
  sub_226B2A4F4();
  *(v11 + 32) = sub_226D6E91C();
  *(v11 + 40) = sub_226D6E91C();
  v12 = sub_226D6E5CC();

  v13 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v10 setPredicate_];
  v14 = v10;
  v15 = v42;
  v16 = sub_226D6EBBC();
  if (!v15)
  {
    v17 = v41;
    v37 = v9;
    if (v16 >> 62)
    {
      v29 = v16;
      v18 = sub_226D6EDFC();
      v16 = v29;
      v19 = v37;
      if (v18)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v37;
      if (v18)
      {
LABEL_4:
        v20 = v16;
        v34 = v10;
        v42 = sub_226D69F0C();
        if (v18 < 1)
        {
          __break(1u);
        }

        v22 = 0;
        v23 = v20;
        v38 = (v17 + 8);
        v39 = v20 & 0xC000000000000001;
        *&v21 = 138412546;
        v35 = v21;
        v40 = v18;
        v41 = v20;
        v36 = v6;
        do
        {
          if (v39)
          {
            v24 = MEMORY[0x22AA8AFD0](v22, v23);
          }

          else
          {
            v24 = *(v23 + 8 * v22 + 32);
          }

          v25 = v24;
          v26 = [v24 accountID];
          sub_226D6D4FC();

          v27 = sub_226D69D7C();
          (*v38)(v19, v6);
          if (v27)
          {
            sub_226D69D5C();
            v28 = sub_226D6B9BC();
            (*(*(v28 - 8) + 56))(v5, 0, 1, v28);
            sub_226D6838C();
          }

          else
          {
          }

          ++v22;
          v23 = v41;
        }

        while (v40 != v22);

        v14 = v34;
        goto LABEL_16;
      }
    }

LABEL_16:
    v43[0] = 0;
    if ([a1 save_])
    {
      v30 = v43[0];
    }

    else
    {
      v31 = v43[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_226CF9460(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_226D676AC();
  sub_226D6EB7C();
}

void sub_226CF94FC(void *a1)
{
  v52[6] = *MEMORY[0x277D85DE8];
  v49 = sub_226D6D52C();
  v3 = *(v49 - 8);
  v4 = *(v3 + 8);
  MEMORY[0x28223BE20](v49);
  v48 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() currentQueryGenerationToken];
  v52[0] = 0;
  v7 = [a1 setQueryGenerationFromToken:v6 error:v52];

  v8 = v52[0];
  if (!v7)
  {
    v12 = v52[0];
    sub_226D6D04C();

    swift_willThrow();
    goto LABEL_5;
  }

  sub_226D6794C();
  v9 = v8;
  v10 = sub_226D678BC();
  v11 = sub_226D6EBBC();
  v37[1] = v1;
  if (!v1)
  {
    v14 = v11;
    if (v11 >> 62)
    {
      goto LABEL_35;
    }

    v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
LABEL_36:

      v52[0] = 0;
      if (([a1 save_] & 1) == 0)
      {
        v36 = v52[0];
        sub_226D6D04C();

        swift_willThrow();
        goto LABEL_5;
      }

      v35 = v52[0];
      goto LABEL_3;
    }

LABEL_8:
    v16 = 0;
    v43 = a1;
    v44 = v14 & 0xC000000000000001;
    v38 = v14 + 32;
    v39 = v14 & 0xFFFFFFFFFFFFFF8;
    v47 = (v3 + 8);
    v41 = v14;
    v42 = v10;
    v40 = v15;
    while (1)
    {
      if (v44)
      {
        v17 = MEMORY[0x22AA8AFD0](v16, v14);
      }

      else
      {
        if (v16 >= *(v39 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v38 + 8 * v16);
      }

      v50 = v17;
      v18 = __OFADD__(v16, 1);
      v19 = v16 + 1;
      if (v18)
      {
        goto LABEL_33;
      }

      v46 = v19;
      v14 = v50;
      v20 = sub_226D6790C();
      v21 = v20;
      if ((v20 & 0xC000000000000001) != 0)
      {
        sub_226D6EDBC();
        v14 = sub_226D69F0C();
        sub_226CF9A3C();
        sub_226D6E8DC();
        v21 = v52[1];
        v3 = v52[2];
        v22 = v52[3];
        v23 = v52[4];
        v24 = v52[5];
      }

      else
      {
        v23 = 0;
        v25 = -1 << *(v20 + 32);
        v3 = (v20 + 56);
        v22 = ~v25;
        v26 = -v25;
        if (v26 < 64)
        {
          v27 = ~(-1 << v26);
        }

        else
        {
          v27 = -1;
        }

        v24 = (v27 & *(v20 + 56));
      }

      v45 = v22;
      v10 = ((v22 + 64) >> 6);
      if (v21 < 0)
      {
        goto LABEL_28;
      }

      while (1)
      {
        v28 = v23;
        v29 = v24;
        v30 = v23;
        if (!v24)
        {
          while (1)
          {
            v30 = (v28 + 1);
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v30 >= v10)
            {
              goto LABEL_9;
            }

            v29 = *&v3[8 * v30];
            ++v28;
            if (v29)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          v15 = sub_226D6EDFC();
          if (!v15)
          {
            goto LABEL_36;
          }

          goto LABEL_8;
        }

LABEL_26:
        a1 = ((v29 - 1) & v29);
        v31 = *(*(v21 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
        if (!v31)
        {
          break;
        }

        while (1)
        {
          v33 = [v50 id];
          v34 = v48;
          sub_226D6D4FC();

          v14 = sub_226D6D4DC();
          (*v47)(v34, v49);
          [v31 setConsentID_];

          v23 = v30;
          v24 = a1;
          if ((v21 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_28:
          v32 = sub_226D6EE2C();
          if (v32)
          {
            v51 = v32;
            sub_226D69F0C();
            swift_dynamicCast();
            v31 = v52[0];
            v30 = v23;
            a1 = v24;
            if (v52[0])
            {
              continue;
            }
          }

          goto LABEL_9;
        }
      }

LABEL_9:
      sub_226AD3C20();

      v14 = v41;
      v16 = v46;
      v10 = v42;
      a1 = v43;
      if (v46 == v40)
      {
        goto LABEL_36;
      }
    }
  }

LABEL_3:

LABEL_5:
  v13 = *MEMORY[0x277D85DE8];
}

void sub_226CF99B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_226D676AC();
  sub_226D6EB7C();
}

unint64_t sub_226CF9A3C()
{
  result = qword_27D7A7278;
  if (!qword_27D7A7278)
  {
    sub_226D69F0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7278);
  }

  return result;
}

Swift::Void __swiftcall WalletMessageUpdater.updateMessages()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D380F0]) init];
  [v0 updateFinanceKitApplicationMessages];
}

void sub_226CF9B1C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D380F0]) init];
  [v0 updateFinanceKitApplicationMessages];
}

uint64_t sub_226CF9BC4(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v29 = a1 + 32;
  v3 = &qword_27D7A6F78;
  while (1)
  {
    v5 = *(v29 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v26 = *(v29 + 8 * v1);
      }

      v7 = sub_226D6EDFC();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = sub_226D6EDFC();
      v10 = v27 + v7;
      if (__OFADD__(v27, v7))
      {
LABEL_36:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v7;
    if (result)
    {
      if (v8)
      {
        goto LABEL_16;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v8)
      {
LABEL_16:
        sub_226D6EDFC();
        goto LABEL_17;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v11 + 16);
LABEL_17:
    result = sub_226D6EF3C();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v14 >> 1) - v13) < v34)
    {
      goto LABEL_40;
    }

    v31 = v1;
    v32 = v2;
    v17 = v11 + 8 * v13 + 32;
    v28 = v11;
    if (v6)
    {
      if (v15 < 1)
      {
        goto LABEL_42;
      }

      sub_226AC4194(&qword_27D7A91B0, v3, &unk_226D758E0);
      for (i = 0; i != v15; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &unk_226D758E0);
        v19 = v3;
        v20 = sub_226C3A888(v33, i, v5);
        v22 = *v21;
        (v20)(v33, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_226AE59B4(0, &unk_27D7A8C30, 0x277CBE4A8);
      swift_arrayInitWithCopy();
    }

    v1 = v31;
    v2 = v32;
    if (v34 >= 1)
    {
      v23 = *(v28 + 16);
      v24 = __OFADD__(v23, v34);
      v25 = v23 + v34;
      if (v24)
      {
        goto LABEL_41;
      }

      *(v28 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v30)
    {
      return v2;
    }
  }

  v16 = v11;
  result = sub_226D6EDFC();
  v11 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_226CF9EBC(uint64_t *a1, void *a2)
{
  v45 = a2;
  v3 = type metadata accessor for BackgroundDeliveryHistoryObserver.Continuation(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A91B8, &qword_226D7C6C0);
  v6 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v8 = (&v41 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v43 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v48 = &v41 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A91C0, &qword_226D7C6C8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v41 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9198, &qword_226D7C678);
  v41 = *(v19 - 8);
  v20 = v41;
  v42 = v19;
  v21 = *(v41 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9190, &qword_226D7C658);
  *v18 = 1;
  (*(v15 + 104))(v18, *MEMORY[0x277D85770], v14);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A91C8, &unk_226D7C6D0);
  a1[4] = sub_226AC4194(&qword_28105F4C0, &qword_27D7A91C8, &unk_226D7C6D0);
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_226D6E7AC();
  (*(v15 + 8))(v18, v14);
  v24 = v44;
  v49 = v45;
  v25 = v45;
  sub_226D6EB8C();
  v26 = *v8;
  v27 = v8 + *(v24 + 48);
  v28 = v48;
  sub_226B60108(v27, v48);
  v29 = *(v20 + 16);
  v30 = v46;
  v31 = v42;
  v29(v46, v23, v42);
  v32 = v43;
  sub_226B60178(v28, v43);
  v33 = *(v47 + 48);
  v34 = *(v47 + 52);
  v35 = swift_allocObject();
  *(v35 + OBJC_IVAR____TtC13FinanceDaemon33BackgroundDeliveryHistoryObserver_lastToken) = 0;
  v36 = OBJC_IVAR____TtC13FinanceDaemon33BackgroundDeliveryHistoryObserver_storeURL;
  v37 = sub_226D6D1AC();
  (*(*(v37 - 8) + 56))(v35 + v36, 1, 1, v37);
  *(v35 + 16) = v25;
  sub_226CFBC6C(v30, v35 + OBJC_IVAR____TtC13FinanceDaemon33BackgroundDeliveryHistoryObserver_historyContinuation);
  *(v35 + OBJC_IVAR____TtC13FinanceDaemon33BackgroundDeliveryHistoryObserver_lastToken) = v26;
  v38 = OBJC_IVAR____TtC13FinanceDaemon33BackgroundDeliveryHistoryObserver_storeURL;
  swift_beginAccess();
  v39 = v25;
  sub_226CFBCD0(v32, v35 + v38);
  swift_endAccess();
  sub_226AC47B0(v48, &unk_27D7A62F8, &unk_226D73B70);
  (*(v41 + 8))(v23, v31);
  return v35;
}

uint64_t sub_226CFA35C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A91B8, &qword_226D7C6C0) + 48);
  *a1 = sub_226D6EB6C();
  v7 = sub_226D6EB3C();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 URL];

    if (v9)
    {
      sub_226D6D14C();

      v10 = sub_226D6D1AC();
      (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
    }

    else
    {
      v13 = sub_226D6D1AC();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    }

    return sub_226B60108(v5, a1 + v6);
  }

  else
  {
    v11 = sub_226D6D1AC();
    return (*(*(v11 - 8) + 56))(a1 + v6, 1, 1, v11);
  }
}

uint64_t sub_226CFA504(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A91A0, &qword_226D7C6A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13[-v9];
  v11 = *(v2 + 16);
  v14 = a2;
  v15 = v3;
  v16 = a1;
  v17 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9190, &qword_226D7C658);
  sub_226D6EB8C();
  if (!*(v18 + 16))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9198, &qword_226D7C678);
  sub_226D6E7CC();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_226CFA7B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, void *a4@<X3>, size_t *a5@<X8>)
{
  v135 = a4;
  v137 = a3;
  v139 = a2;
  v140[8] = *MEMORY[0x277D85DE8];
  v8 = sub_226D66F6C();
  v9 = *(v8 - 8);
  v133 = v8;
  v134 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v131 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v120 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v120 - v19;
  v21 = sub_226D6D1AC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v138 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v120 - v26;
  sub_226B60178(a1, v20);
  v28 = *(v22 + 48);
  if (v28(v20, 1, v21) == 1)
  {
    result = sub_226AC47B0(v20, &unk_27D7A62F8, &unk_226D73B70);
LABEL_13:
    *a5 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v136 = a5;
  v130 = v5;
  v129 = *(v22 + 32);
  (v129)(v27, v20, v21);
  v30 = OBJC_IVAR____TtC13FinanceDaemon33BackgroundDeliveryHistoryObserver_storeURL;
  v31 = v139;
  swift_beginAccess();
  sub_226B60178(v31 + v30, v18);
  v32 = v21;
  if (v28(v18, 1, v21) == 1)
  {
    (*(v22 + 8))(v27, v21);
    result = sub_226AC47B0(v18, &unk_27D7A62F8, &unk_226D73B70);
LABEL_12:
    a5 = v136;
    goto LABEL_13;
  }

  v33 = v22;
  v34 = v138;
  (v129)(v138, v18, v21);
  v35 = v27;
  if ((sub_226D6D13C() & 1) == 0)
  {
    v45 = *(v33 + 8);
    v45(v34, v32);
    result = (v45)(v27, v32);
    goto LABEL_12;
  }

  v36 = v130;
  v37 = v137;
  if (!v137)
  {
    goto LABEL_10;
  }

  v38 = OBJC_IVAR____TtC13FinanceDaemon33BackgroundDeliveryHistoryObserver_lastToken;
  v39 = v139;
  v40 = *(v139 + OBJC_IVAR____TtC13FinanceDaemon33BackgroundDeliveryHistoryObserver_lastToken);
  if (!v40)
  {
    v47 = v137;
    v48 = v37;
    v49 = v33;
    v50 = v138;
    goto LABEL_20;
  }

  v129 = v32;
  sub_226AE59B4(0, &qword_27D7A6F90, 0x277CBE4C0);
  v41 = v37;
  v42 = v40;
  v43 = sub_226D6EC3C();

  if (v43)
  {

    v32 = v129;
    v34 = v138;
LABEL_10:
    v44 = *(v33 + 8);
    v44(v34, v32);
    result = (v44)(v35, v32);
LABEL_21:
    *v136 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v50 = v138;
  v39 = v139;
  v51 = *(v139 + v38);
  v48 = v37;
  v49 = v33;
  v32 = v129;
  if (!v51)
  {
LABEL_20:
    *(v39 + v38) = v48;

    v61 = *(v49 + 8);
    v61(v50, v32);
    result = (v61)(v35, v32);
    goto LABEL_21;
  }

  v128 = v35;
  v137 = v51;
  v52 = v51;
  v125 = v41;

  v53 = [objc_opt_self() currentQueryGenerationToken];
  v140[0] = 0;
  v54 = v135;
  v55 = [v135 setQueryGenerationFromToken:v53 error:v140];

  v56 = v140[0];
  if ((v55 & 1) == 0)
  {
    v62 = v140[0];
    sub_226D6D04C();

    swift_willThrow();
    goto LABEL_23;
  }

  v127 = v52;
  v57 = v52;
  v58 = v56;
  v59 = sub_226D6EB3C();
  v60 = sub_226D6EB5C();
  if (v36)
  {

    sub_226B6D63C(v54);
    v52 = v127;
LABEL_23:

    v63 = *(v33 + 8);
    v64 = v129;
    v63(v50, v129);
    v65 = v128;
LABEL_24:
    result = (v63)(v65, v64);
LABEL_14:
    v46 = *MEMORY[0x277D85DE8];
    return result;
  }

  v66 = v60;
  v123 = v57;

  if (v66 >> 62)
  {
    goto LABEL_95;
  }

  for (i = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
  {
    v69 = v128;
    v68 = v129;
    v70 = v136;
    if (!i)
    {

      *v70 = MEMORY[0x277D84F90];
      sub_226B6D63C(v135);

      v96 = *(v49 + 8);
      v96(v138, v68);
      v97 = v69;
      goto LABEL_89;
    }

    v71 = i - 1;
    if (__OFSUB__(i, 1))
    {
      __break(1u);
LABEL_97:
      v72 = i;
      v73 = MEMORY[0x22AA8AFD0](v71, v66);
      v130 = (v66 & 0xFFFFFFFFFFFFFF8);
      goto LABEL_33;
    }

    v137 = (v66 & 0xC000000000000001);
    if ((v66 & 0xC000000000000001) != 0)
    {
      goto LABEL_97;
    }

    if ((v71 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      v130 = sub_226D6EDFC();
      if (!v130)
      {
        goto LABEL_101;
      }

      goto LABEL_50;
    }

    v130 = (v66 & 0xFFFFFFFFFFFFFF8);
    if (v71 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_99;
    }

    v72 = i;
    v73 = *(v66 + 8 * v71 + 32);
LABEL_33:
    v122 = v73;
    v74 = [v73 token];
    v75 = *(v139 + v38);
    *(v139 + v38) = v74;

    v76 = 0;
    v139 = MEMORY[0x277D84F90];
    do
    {
      v38 = v76;
      while (1)
      {
        if (v137)
        {
          v77 = MEMORY[0x22AA8AFD0](v38, v66);
        }

        else
        {
          if (v38 >= v130[2])
          {
            goto LABEL_93;
          }

          v77 = *(v66 + 8 * v38 + 32);
        }

        v76 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }

        v78 = v77;
        v79 = [v78 changes];
        if (v79)
        {
          break;
        }

        ++v38;
        v59 = v129;
        v70 = v136;
        if (v76 == v72)
        {
          goto LABEL_48;
        }
      }

      v80 = v79;
      sub_226AE59B4(0, &unk_27D7A8C30, 0x277CBE4A8);
      v38 = sub_226D6E5EC();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v139 = sub_226BBBE88(0, v139[2] + 1, 1, v139);
      }

      v82 = v139[2];
      v81 = v139[3];
      v59 = v129;
      if (v82 >= v81 >> 1)
      {
        v139 = sub_226BBBE88((v81 > 1), v82 + 1, 1, v139);
      }

      v83 = v139;
      v139[2] = v82 + 1;
      v83[v82 + 4] = v38;
      v49 = v33;
      v70 = v136;
    }

    while (v76 != v72);
LABEL_48:

    v66 = sub_226CF9BC4(v139);

    if (v66 >> 62)
    {
      goto LABEL_100;
    }

    v130 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v130)
    {
LABEL_101:

      *v70 = MEMORY[0x277D84F90];
      sub_226B6D63C(v135);

      v119 = *(v49 + 8);
      v119(v138, v59);
      result = (v119)(v128, v59);
      goto LABEL_14;
    }

LABEL_50:
    v139 = sub_226CFB974();
    v84 = 0;
    v127 = v66 & 0xC000000000000001;
    v126 = v66 & 0xFFFFFFFFFFFFFF8;
    v124 = MEMORY[0x277D84F90];
    v137 = v66;
    do
    {
      v85 = v84;
      while (1)
      {
        if (v127)
        {
          v86 = MEMORY[0x22AA8AFD0](v85, v137);
          v84 = (v85 + 1);
          if (__OFADD__(v85, 1))
          {
            goto LABEL_91;
          }
        }

        else
        {
          if (v85 >= *(v126 + 16))
          {
            goto LABEL_92;
          }

          v86 = *&v137[8 * v85 + 32];
          v84 = (v85 + 1);
          if (__OFADD__(v85, 1))
          {
            goto LABEL_91;
          }
        }

        v59 = v86;
        v38 = [v59 changedObjectID];
        v66 = [v38 entity];
        v87 = [v66 name];
        if (v87)
        {
          break;
        }

        ++v85;
        v88 = v136;
        if (v84 == v130)
        {
          goto LABEL_68;
        }
      }

      v89 = v87;
      v90 = sub_226D6E39C();
      v121 = v91;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v124 = sub_226BBAB0C(0, *(v124 + 2) + 1, 1, v124);
      }

      v66 = *(v124 + 2);
      v92 = *(v124 + 3);
      if (v66 >= v92 >> 1)
      {
        v124 = sub_226BBAB0C((v92 > 1), v66 + 1, 1, v124);
      }

      v93 = v124;
      *(v124 + 2) = v66 + 1;
      v94 = &v93[16 * v66];
      v95 = v121;
      *(v94 + 4) = v90;
      *(v94 + 5) = v95;
      v88 = v136;
    }

    while (v84 != v130);
LABEL_68:

    v66 = v124;
    v137 = *(v124 + 2);
    if (!v137)
    {
      break;
    }

    v59 = 0;
    v126 = v134 + 16;
    v127 = v134 + 32;
    v38 = (v124 + 40);
    v130 = MEMORY[0x277D84F90];
    v98 = v128;
    while (v59 < *(v66 + 16))
    {
      if (v139[2])
      {
        v99 = *(v38 - 8);
        v100 = *v38;

        v101 = sub_226C2FDD4(v99, v100);
        if (v102)
        {
          v104 = v133;
          v103 = v134;
          v105 = *(v134 + 72);
          v106 = v131;
          (*(v134 + 16))(v131, v139[7] + v105 * v101, v133);

          v107 = *(v103 + 32);
          v107(v132, v106, v104);
          v108 = v130;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v108 = sub_226BBBE60(0, v108[2] + 1, 1, v108);
          }

          v110 = v108[2];
          v109 = v108[3];
          if (v110 >= v109 >> 1)
          {
            v108 = sub_226BBBE60(v109 > 1, v110 + 1, 1, v108);
          }

          v108[2] = v110 + 1;
          v111 = *(v134 + 80);
          v130 = v108;
          v107(v108 + ((v111 + 32) & ~v111) + v110 * v105, v132, v133);
          v49 = v33;
          v98 = v128;
          v88 = v136;
        }

        else
        {

          v98 = v128;
        }

        v66 = v124;
      }

      ++v59;
      v38 += 16;
      if (v137 == v59)
      {
        goto LABEL_82;
      }
    }

LABEL_94:
    __break(1u);
LABEL_95:
    ;
  }

  v130 = MEMORY[0x277D84F90];
  v98 = v128;
LABEL_82:

  if (!v130[2])
  {

    *v88 = MEMORY[0x277D84F90];
    sub_226B6D63C(v135);

    v63 = *(v49 + 8);
    v64 = v129;
    v63(v138, v129);
    v65 = v98;
    goto LABEL_24;
  }

  v112 = sub_226AE4E38(v130);

  v113 = *(v112 + 16);
  v68 = v129;
  v114 = v123;
  if (!v113)
  {

    v115 = MEMORY[0x277D84F90];
LABEL_88:
    v117 = v128;
    v118 = v135;
    *v136 = v115;
    sub_226B6D63C(v118);

    v96 = *(v49 + 8);
    v96(v138, v68);
    v97 = v117;
LABEL_89:
    result = (v96)(v97, v68);
    goto LABEL_14;
  }

  v115 = sub_226C24CEC(*(v112 + 16), 0);
  v116 = sub_226C3B838(v140, (v115 + ((*(v134 + 80) + 32) & ~*(v134 + 80))), v113, v112);
  result = sub_226AD3C20();
  if (v116 == v113)
  {

    goto LABEL_88;
  }

  __break(1u);
  return result;
}

uint64_t sub_226CFB618()
{
  sub_226CFBBF4(v0 + OBJC_IVAR____TtC13FinanceDaemon33BackgroundDeliveryHistoryObserver_historyContinuation);

  sub_226AC47B0(v0 + OBJC_IVAR____TtC13FinanceDaemon33BackgroundDeliveryHistoryObserver_storeURL, &unk_27D7A62F8, &unk_226D73B70);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

void sub_226CFB6DC()
{
  sub_226CFB7C0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_226CFB824();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_226CFB7C0()
{
  if (!qword_28105F4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A9190, &qword_226D7C658);
    v0 = sub_226D6E7DC();
    if (!v1)
    {
      atomic_store(v0, &qword_28105F4E0);
    }
  }
}

void sub_226CFB824()
{
  if (!qword_281062B90)
  {
    sub_226D6D1AC();
    v0 = sub_226D6EC9C();
    if (!v1)
    {
      atomic_store(v0, &qword_281062B90);
    }
  }
}

void sub_226CFB8C4()
{
  sub_226CFB7C0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_226CFB974()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A91A8, &qword_226D7C6A8);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A68, &unk_226D7C6B0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v27 = 2 * v1;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_226D72130;
  v3 = (v28 + v2);
  v4 = *(v0 + 48);
  v5 = v0;
  sub_226D6787C();
  v6 = [swift_getObjCClassFromMetadata() entityName];
  v7 = sub_226D6E39C();
  v9 = v8;

  *v3 = v7;
  v3[1] = v9;
  v10 = *MEMORY[0x277CC66C8];
  v11 = sub_226D66F6C();
  v12 = *(*(v11 - 8) + 104);
  v12(v3 + v4, v10, v11);
  v13 = (v3 + v1);
  v14 = *(v0 + 48);
  sub_226D697AC();
  v15 = [swift_getObjCClassFromMetadata() entityName];
  v16 = sub_226D6E39C();
  v18 = v17;

  *v13 = v16;
  v13[1] = v18;
  v12(v13 + v14, *MEMORY[0x277CC66C0], v11);
  v19 = (v3 + v27);
  v20 = *(v5 + 48);
  sub_226D6845C();
  v21 = [swift_getObjCClassFromMetadata() entityName];
  v22 = sub_226D6E39C();
  v24 = v23;

  *v19 = v22;
  v19[1] = v24;
  v12(v3 + v27 + v20, *MEMORY[0x277CC66B8], v11);
  v25 = sub_226B243B0(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v25;
}

uint64_t sub_226CFBBF4(uint64_t a1)
{
  v2 = type metadata accessor for BackgroundDeliveryHistoryObserver.Continuation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226CFBC6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundDeliveryHistoryObserver.Continuation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CFBCD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CFBD40()
{
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A91D0, &qword_226D7C748);
  v108 = *(v114 - 8);
  v1 = *(v108 + 64);
  MEMORY[0x28223BE20](v114);
  v3 = v107 - v2;
  v4 = type metadata accessor for PostInstallTaskEnvironment();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_226CFD0D4();
  v10 = *(v0 + 16);
  v11 = OBJC_IVAR____TtC13FinanceDaemon22PostInstallCoordinator_userDefaults;
  v12 = sub_226D6B5EC();
  v130 = v12;
  v131 = MEMORY[0x277CC7F70];
  v13 = __swift_allocate_boxed_opaque_existential_1(&v127);
  v14 = *(*(v12 - 8) + 16);
  v15 = v0 + v11;
  v16 = v9;
  v14(v13, v15, v12);
  *v8 = v10;
  sub_226AE532C(&v127, &v122);
  v17 = *(v5 + 28);

  sub_226D6B5FC();
  __swift_destroy_boxed_opaque_existential_0Tm(&v127);
  v18 = MEMORY[0x277D84F90];
  v122 = sub_226B23D9C(MEMORY[0x277D84F90]);
  v130 = v12;
  v131 = MEMORY[0x277CC7F68];
  v19 = __swift_allocate_boxed_opaque_existential_1(&v127);
  v115 = v8;
  v14(v19, v8 + v17, v12);
  sub_226D6704C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A91D8, &unk_226D7C750);
  v113 = v3;
  sub_226D6701C();
  v116 = v9[2];
  if (!v116)
  {
    v23 = v18;
LABEL_107:

    (*(v108 + 8))(v113, v114);
    sub_226CFD498(v115);
    return v23;
  }

  v21 = 0;
  v22 = (v9 + 4);
  v23 = MEMORY[0x277D84F90];
  *&v20 = 136315138;
  v110 = v20;
  v112 = "OutdatedTokenWaitTimeout";
  v107[14] = "migrateCloudOrders";
  v107[13] = "migrateLocalOrders";
  v107[12] = "eInstitutionConfigurationUpdate";
  v107[11] = "ntifierInApplications";
  v107[10] = "migrateAppPermissions";
  v107[9] = "populateTransactionsWithDates";
  v107[8] = "populateAccountMatchEntities";
  v107[7] = "populateMerchantNameFromBrand";
  v107[6] = "thCurrentConsentID";
  v107[5] = "populateTransactionCategories";
  v107[4] = "eAndRemoveEmptyCurrencyCodes";
  v107[3] = "clearTransactionIcons";
  v107[2] = "dOrderMessageIDHash";
  v107[1] = "IngestionLocalConsent";
  *&v20 = 136315394;
  v109 = v20;
  v111 = v16;
  while (v21 < v16[2])
  {
    sub_226AE532C(v22, &v127);
    v24 = v130;
    v25 = v131;
    __swift_project_boxed_opaque_existential_1(&v127, v130);
    v26 = (*(v25 + 16))(v24, v25);
    v28 = v27;
    if (v27)
    {
      v117 = 0;
      v29 = 0;
      v30 = 1;
      goto LABEL_31;
    }

    v117 = v26;
    v118 = v23;
    v31 = v130;
    v32 = v131;
    __swift_project_boxed_opaque_existential_1(&v127, v130);
    v33 = (*(v32 + 8))(v31, v32);
    v34 = 0xD000000000000012;
    v35 = v112;
    v36 = 0xD000000000000012;
    switch(v33)
    {
      case 1:
        v36 = 0xD000000000000012;
        v37 = &v133;
        goto LABEL_23;
      case 2:
        v36 = 0xD00000000000002FLL;
        v37 = &v132;
        goto LABEL_23;
      case 3:
        v36 = 0xD000000000000035;
        v37 = &v131;
        goto LABEL_23;
      case 4:
        v36 = 0xD000000000000015;
        v37 = &v130;
        goto LABEL_23;
      case 5:
        v36 = 0xD00000000000001DLL;
        v37 = &v129;
        goto LABEL_23;
      case 6:
        v36 = 0xD00000000000001CLL;
        v37 = &v128;
        goto LABEL_23;
      case 7:
        v36 = 0xD00000000000001DLL;
        v37 = &v127;
        goto LABEL_23;
      case 8:
        v36 = 0xD000000000000022;
        v37 = &v126;
        goto LABEL_23;
      case 9:
        v36 = 0xD00000000000001DLL;
        v37 = &v125;
        goto LABEL_23;
      case 10:
        v36 = 0xD00000000000003CLL;
        v37 = &v124;
        goto LABEL_23;
      case 11:
        v36 = 0xD000000000000015;
        v37 = &v123;
        goto LABEL_23;
      case 12:
        v36 = 0xD000000000000023;
        v37 = &v122;
        goto LABEL_23;
      case 13:
        v36 = 0xD000000000000035;
        v37 = &v121;
        goto LABEL_23;
      case 14:
        v36 = 0xD000000000000021;
        v37 = &v120;
LABEL_23:
        v35 = *(v37 - 32);
        break;
      default:
        break;
    }

    sub_226D66FEC();
    v38 = v122;
    if (!*(v122 + 16))
    {

LABEL_29:

      v29 = 0;
      v30 = 1;
LABEL_30:
      v23 = v118;
LABEL_31:
      v42 = v130;
      v43 = v131;
      __swift_project_boxed_opaque_existential_1(&v127, v130);
      (*(v43 + 24))(v115, v29, v30, v42, v43);
      if ((v28 & 1) == 0)
      {
        if (qword_28105F590 != -1)
        {
          swift_once();
        }

        v55 = sub_226D6E07C();
        __swift_project_value_buffer(v55, qword_28105F598);
        sub_226AE532C(&v127, &v122);
        v56 = sub_226D6E05C();
        v57 = sub_226D6E9EC();
        v58 = os_log_type_enabled(v56, v57);
        v118 = v23;
        if (v58)
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v119 = v60;
          *v59 = v109;
          v61 = v125;
          v62 = v126;
          __swift_project_boxed_opaque_existential_1(&v122, v125);
          v63 = *(v62 + 8);
          v64 = v62;
          v16 = v111;
          v65 = v63(v61, v64);
          v66 = sub_226BF1D54(v65);
          v68 = v67;
          __swift_destroy_boxed_opaque_existential_0Tm(&v122);
          v69 = sub_226AC4530(v66, v68, &v119);

          *(v59 + 4) = v69;
          *(v59 + 12) = 2048;
          v70 = v117;
          *(v59 + 14) = v117;
          _os_log_impl(&dword_226AB4000, v56, v57, "Ran versioned task %s, setting version %lu", v59, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v60);
          MEMORY[0x22AA8BEE0](v60, -1, -1);
          MEMORY[0x22AA8BEE0](v59, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0Tm(&v122);
          v70 = v117;
        }

        v71 = v130;
        v72 = v131;
        __swift_project_boxed_opaque_existential_1(&v127, v130);
        v73 = (*(v72 + 8))(v71, v72);
        v74 = 0xD000000000000012;
        v75 = v112;
        switch(v73)
        {
          case 1:
            v76 = &v133;
            goto LABEL_63;
          case 2:
            v74 = 0xD00000000000002FLL;
            v76 = &v132;
            goto LABEL_63;
          case 3:
            v74 = 0xD000000000000035;
            v76 = &v131;
            goto LABEL_63;
          case 4:
            v74 = 0xD000000000000015;
            v76 = &v130;
            goto LABEL_63;
          case 5:
            v74 = 0xD00000000000001DLL;
            v76 = &v129;
            goto LABEL_63;
          case 6:
            v74 = 0xD00000000000001CLL;
            v76 = &v128;
            goto LABEL_63;
          case 7:
            v74 = 0xD00000000000001DLL;
            v76 = &v127;
            goto LABEL_63;
          case 8:
            v74 = 0xD000000000000022;
            v76 = &v126;
            goto LABEL_63;
          case 9:
            v74 = 0xD00000000000001DLL;
            v76 = &v125;
            goto LABEL_63;
          case 10:
            v74 = 0xD00000000000003CLL;
            v76 = &v124;
            goto LABEL_63;
          case 11:
            v74 = 0xD000000000000015;
            v76 = &v123;
            goto LABEL_63;
          case 12:
            v74 = 0xD000000000000023;
            v76 = &v122;
            goto LABEL_63;
          case 13:
            v74 = 0xD000000000000035;
            v76 = &v121;
            goto LABEL_63;
          case 14:
            v74 = 0xD000000000000021;
            v76 = &v120;
LABEL_63:
            v75 = *(v76 - 32);
            break;
          default:
            break;
        }

        v85 = v75 | 0x8000000000000000;
        sub_226D66FEC();
        v86 = v122;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v122 = v86;
        v88 = sub_226C2FDD4(v74, v85);
        v90 = *(v86 + 16);
        v91 = (v89 & 1) == 0;
        v92 = __OFADD__(v90, v91);
        v93 = v90 + v91;
        if (v92)
        {
          goto LABEL_109;
        }

        v94 = v89;
        if (*(v86 + 24) >= v93)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_69;
          }

          v102 = v88;
          sub_226C39284();
          v88 = v102;
          v70 = v117;
          v23 = v118;
          if ((v94 & 1) == 0)
          {
            goto LABEL_103;
          }

LABEL_70:
          v96 = v88;

          v97 = v122;
          *(*(v122 + 56) + 8 * v96) = v70;
        }

        else
        {
          sub_226C34848(v93, isUniquelyReferenced_nonNull_native);
          v88 = sub_226C2FDD4(v74, v85);
          if ((v94 & 1) != (v95 & 1))
          {
            goto LABEL_111;
          }

LABEL_69:
          v23 = v118;
          if (v94)
          {
            goto LABEL_70;
          }

LABEL_103:
          v97 = v122;
          *(v122 + 8 * (v88 >> 6) + 64) |= 1 << v88;
          v103 = (v97[6] + 16 * v88);
          *v103 = v74;
          v103[1] = v85;
          *(v97[7] + 8 * v88) = v70;
          v104 = v97[2];
          v92 = __OFADD__(v104, 1);
          v105 = v104 + 1;
          if (v92)
          {
            goto LABEL_110;
          }

          v97[2] = v105;
        }

        v119 = v97;
        swift_beginAccess();
        sub_226D66FFC();
        swift_endAccess();
        goto LABEL_4;
      }

      if (qword_28105F590 != -1)
      {
        swift_once();
      }

      v44 = sub_226D6E07C();
      __swift_project_value_buffer(v44, qword_28105F598);
      sub_226AE532C(&v127, &v122);
      v45 = sub_226D6E05C();
      v46 = sub_226D6E9EC();
      if (os_log_type_enabled(v45, v46))
      {
        v118 = v23;
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v119 = v48;
        *v47 = v110;
        v49 = v125;
        v50 = v126;
        __swift_project_boxed_opaque_existential_1(&v122, v125);
        v51 = (*(v50 + 8))(v49, v50);
        v52 = 0xD000000000000012;
        v53 = v112;
        switch(v51)
        {
          case 1:
            v54 = &v133;
            goto LABEL_84;
          case 2:
            v52 = 0xD00000000000002FLL;
            v54 = &v132;
            goto LABEL_84;
          case 3:
            v52 = 0xD000000000000035;
            v54 = &v131;
            goto LABEL_84;
          case 4:
            v52 = 0xD000000000000015;
            v54 = &v130;
            goto LABEL_84;
          case 5:
            v52 = 0xD00000000000001DLL;
            v54 = &v129;
            goto LABEL_84;
          case 6:
            v52 = 0xD00000000000001CLL;
            v54 = &v128;
            goto LABEL_84;
          case 7:
            v52 = 0xD00000000000001DLL;
            v54 = &v127;
            goto LABEL_84;
          case 8:
            v52 = 0xD000000000000022;
            v54 = &v126;
            goto LABEL_84;
          case 9:
            v52 = 0xD00000000000001DLL;
            v54 = &v125;
            goto LABEL_84;
          case 10:
            v52 = 0xD00000000000003CLL;
            v54 = &v124;
            goto LABEL_84;
          case 11:
            v52 = 0xD000000000000015;
            v54 = &v123;
            goto LABEL_84;
          case 12:
            v52 = 0xD000000000000023;
            v54 = &v122;
            goto LABEL_84;
          case 13:
            v52 = 0xD000000000000035;
            v54 = &v121;
            goto LABEL_84;
          case 14:
            v52 = 0xD000000000000021;
            v54 = &v120;
LABEL_84:
            v53 = *(v54 - 32);
            break;
          default:
            break;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v122);
        v98 = sub_226AC4530(v52, v53 | 0x8000000000000000, &v119);

        *(v47 + 4) = v98;
        _os_log_impl(&dword_226AB4000, v45, v46, "Ran unversioned task %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v48);
        MEMORY[0x22AA8BEE0](v48, -1, -1);
        v99 = v47;
LABEL_101:
        MEMORY[0x22AA8BEE0](v99, -1, -1);

        v16 = v111;
        v23 = v118;
        goto LABEL_4;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v122);
      goto LABEL_4;
    }

    v39 = sub_226C2FDD4(v36, v35 | 0x8000000000000000);
    v41 = v40;

    if ((v41 & 1) == 0)
    {
      goto LABEL_29;
    }

    v29 = *(*(v38 + 56) + 8 * v39);

    if (v29 < v117)
    {
      v30 = 0;
      goto LABEL_30;
    }

    if (qword_28105F590 != -1)
    {
      swift_once();
    }

    v77 = sub_226D6E07C();
    __swift_project_value_buffer(v77, qword_28105F598);
    sub_226AE532C(&v127, &v122);
    v45 = sub_226D6E05C();
    v78 = sub_226D6E9EC();
    if (os_log_type_enabled(v45, v78))
    {
      v79 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v119 = v117;
      *v79 = v110;
      v81 = v125;
      v80 = v126;
      __swift_project_boxed_opaque_existential_1(&v122, v125);
      v82 = (*(v80 + 8))(v81, v80);
      v83 = v112;
      switch(v82)
      {
        case 1:
          v84 = &v133;
          goto LABEL_99;
        case 2:
          v34 = 0xD00000000000002FLL;
          v84 = &v132;
          goto LABEL_99;
        case 3:
          v34 = 0xD000000000000035;
          v84 = &v131;
          goto LABEL_99;
        case 4:
          v34 = 0xD000000000000015;
          v84 = &v130;
          goto LABEL_99;
        case 5:
          v34 = 0xD00000000000001DLL;
          v84 = &v129;
          goto LABEL_99;
        case 6:
          v34 = 0xD00000000000001CLL;
          v84 = &v128;
          goto LABEL_99;
        case 7:
          v34 = 0xD00000000000001DLL;
          v84 = &v127;
          goto LABEL_99;
        case 8:
          v34 = 0xD000000000000022;
          v84 = &v126;
          goto LABEL_99;
        case 9:
          v34 = 0xD00000000000001DLL;
          v84 = &v125;
          goto LABEL_99;
        case 10:
          v34 = 0xD00000000000003CLL;
          v84 = &v124;
          goto LABEL_99;
        case 11:
          v34 = 0xD000000000000015;
          v84 = &v123;
          goto LABEL_99;
        case 12:
          v34 = 0xD000000000000023;
          v84 = &v122;
          goto LABEL_99;
        case 13:
          v34 = 0xD000000000000035;
          v84 = &v121;
          goto LABEL_99;
        case 14:
          v34 = 0xD000000000000021;
          v84 = &v120;
LABEL_99:
          v83 = *(v84 - 32);
          break;
        default:
          break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v122);
      v100 = sub_226AC4530(v34, v83 | 0x8000000000000000, &v119);

      *(v79 + 4) = v100;
      _os_log_impl(&dword_226AB4000, v45, v78, "Skipping versioned task %s, already run", v79, 0xCu);
      v101 = v117;
      __swift_destroy_boxed_opaque_existential_0Tm(v117);
      MEMORY[0x22AA8BEE0](v101, -1, -1);
      v99 = v79;
      goto LABEL_101;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v122);
    v23 = v118;
LABEL_4:
    ++v21;
    __swift_destroy_boxed_opaque_existential_0Tm(&v127);
    v22 += 40;
    if (v116 == v21)
    {
      goto LABEL_107;
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  result = sub_226D6F25C();
  __break(1u);
  return result;
}

uint64_t sub_226CFCF1C()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  v2 = OBJC_IVAR____TtC13FinanceDaemon22PostInstallCoordinator_userDefaults;
  v3 = sub_226D6B5EC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PostInstallCoordinator()
{
  result = qword_281061C00;
  if (!qword_281061C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226CFD01C()
{
  result = sub_226D6B5EC();
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

void *sub_226CFD0D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7908, &qword_226D75968);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226D71840;
  *(v0 + 56) = &type metadata for PostInstallMigrateCloudOrdersTask;
  *(v0 + 64) = &off_283A71908;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 96) = &type metadata for PostInstallMigrateLocalOrdersTask;
  *(v0 + 104) = &off_283A6D3F0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  v16 = v0;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D7A480;
  *(inited + 56) = &type metadata for PostInstallScheduleImmediateInstitutionConfigurationUpdateTask;
  *(inited + 64) = &off_283A6C3D0;
  *(inited + 32) = 2;
  *(inited + 40) = 0;
  *(inited + 48) = 1;
  *(inited + 96) = &type metadata for PostInstallPopulateFullAccountIdInApplications;
  *(inited + 104) = &off_283A71D88;
  *(inited + 72) = 1;
  *(inited + 80) = 0;
  if (qword_2810610C0 != -1)
  {
    swift_once();
  }

  v2 = qword_2810610C8;
  *(inited + 112) = 1;
  *(inited + 120) = 0;
  *(inited + 128) = v2;
  *(inited + 136) = &type metadata for PostInstallMigrateAppPermissionsTask;
  *(inited + 176) = &type metadata for PostInstallPopulateAccountMatchEntitiesTask;
  *(inited + 184) = &off_283A6C330;
  *(inited + 144) = &off_283A6F9A0;
  *(inited + 152) = 1;
  *(inited + 160) = 0;
  *(inited + 216) = &type metadata for PostInstallPopulateMerchantNameFromBrandTask;
  *(inited + 224) = &off_283A6EE70;
  *(inited + 192) = 1;
  *(inited + 200) = 0;
  *(inited + 256) = &type metadata for PostInstallUpdateAccountsWithCurrentConsentID;
  *(inited + 264) = &off_283A71E28;
  *(inited + 232) = 1;
  *(inited + 240) = 0;
  *(inited + 296) = &type metadata for PostInstallPopulateTransactionsWithIsVisibleAndRemoveEmptyCurrencyCodesTask;
  *(inited + 304) = &off_283A6E5C8;
  *(inited + 272) = 1;
  *(inited + 280) = 0;
  *(inited + 336) = &type metadata for PostInstallPopulateTransactionCategoryTask;
  *(inited + 344) = &off_283A6C208;
  *(inited + 312) = 2;
  *(inited + 320) = 0;
  *(inited + 376) = &type metadata for PostInstallClearTransactionIconsTask;
  *(inited + 384) = &off_283A6F820;
  *(inited + 352) = 1;
  *(inited + 360) = 0;

  sub_226CEE178(inited);
  if (qword_281060AF8 != -1)
  {
    swift_once();
  }

  v3 = qword_281064530;
  v4 = v16;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_226BBBA20(0, v16[2] + 1, 1, v16);
  }

  v6 = v4[2];
  v5 = v4[3];
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    v4 = sub_226BBBA20((v5 > 1), v6 + 1, 1, v4);
  }

  v14 = &type metadata for PostInstallPopulateExtractedOrderMessageIDHashTask;
  v15 = &off_283A70980;
  *&v12 = 1;
  BYTE8(v12) = 0;
  v13 = v3;
  v4[2] = v7;
  sub_226AC484C(&v12, &v4[5 * v6 + 4]);
  v8 = v4[3];
  v9 = v6 + 2;
  if ((v6 + 2) > (v8 >> 1))
  {
    v4 = sub_226BBBA20((v8 > 1), v6 + 2, 1, v4);
  }

  v14 = &type metadata for PostInstallReprocessExtractedOrderCascadeSet;
  v15 = &off_283A6DC28;
  *&v12 = 0;
  BYTE8(v12) = 1;
  v4[2] = v9;
  sub_226AC484C(&v12, &v4[5 * v7 + 4]);
  v10 = v4[3];
  if ((v6 + 3) > (v10 >> 1))
  {
    v4 = sub_226BBBA20((v10 > 1), v6 + 3, 1, v4);
  }

  v14 = &type metadata for PostInstallPopulateExtractedOrdersAutomaticIngestionLocalConsent;
  v15 = &off_283A6F780;
  *&v12 = 1;
  BYTE8(v12) = 0;
  v4[2] = v6 + 3;
  sub_226AC484C(&v12, &v4[5 * v9 + 4]);
  return v4;
}

uint64_t sub_226CFD498(uint64_t a1)
{
  v2 = type metadata accessor for PostInstallTaskEnvironment();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ManagedCascadeExtractedOrderDeleter.Result()
{
  result = qword_27D7A91E0;
  if (!qword_27D7A91E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226CFD540()
{
  sub_226CFD5A0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_226CFD5A0()
{
  if (!qword_27D7A91F0)
  {
    v0 = sub_226D6D52C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A91F0);
    }
  }
}

uint64_t sub_226CFD5EC(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = sub_226D6D52C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ManagedCascadeExtractedOrderDeleter.Result();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A91F8, &unk_226D7C7C0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v28 - v21;
  v23 = *(v20 + 56);
  sub_226CFD8EC(a1, &v28 - v21);
  sub_226CFD8EC(v29, &v22[v23]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_226CFD8EC(v22, v17);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v4 + 32))(v10, &v22[v23], v3);
      v24 = sub_226D6D4EC();
      v26 = *(v4 + 8);
      v26(v10, v3);
      v26(v17, v3);
      goto LABEL_6;
    }

LABEL_8:
    (*(v4 + 8))(v17, v3);
    sub_226CFD950(v22);
    v24 = 0;
    return v24 & 1;
  }

  sub_226CFD8EC(v22, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v17 = v15;
    goto LABEL_8;
  }

  (*(v4 + 32))(v8, &v22[v23], v3);
  v24 = sub_226D6D4EC();
  v25 = *(v4 + 8);
  v25(v8, v3);
  v25(v15, v3);
LABEL_6:
  sub_226CFD9B8(v22);
  return v24 & 1;
}

uint64_t sub_226CFD8EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedCascadeExtractedOrderDeleter.Result();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CFD950(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A91F8, &unk_226D7C7C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226CFD9B8(uint64_t a1)
{
  v2 = type metadata accessor for ManagedCascadeExtractedOrderDeleter.Result();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *BankConnectPassKitTransactionsImporter.__allocating_init(coreDataStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[2] = a1;
  v3 = sub_226D6AC3C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  v2[3] = sub_226D6AC2C();
  v6 = sub_226D6B6FC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_226D6B6EC();

  v2[4] = v9;
  return v2;
}

uint64_t BankConnectPassKitTransactionsImporter.init(coreDataStore:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = a1;
  v3 = sub_226D6AC3C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  *(v1 + 24) = sub_226D6AC2C();
  v6 = sub_226D6B6FC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_226D6B6EC();

  *(v2 + 32) = v9;
  return v2;
}

uint64_t BankConnectPassKitTransactionsImporter.importPassKitTransactions(fqaid:passKitTransactionsDataSource:passLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_226CFDB68, 0, 0);
}

uint64_t sub_226CFDB68()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = *(MEMORY[0x277CC6558] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_226CFDC58;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282116CE0](v6, "bankConnect/importPassKitTransactions", 37, 2, &unk_226D7C7E0, v3, v7);
}

uint64_t sub_226CFDC58()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_226CFDD74;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_226B0BBB8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226CFDD74()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_226CFDDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v6 = sub_226D6B9BC();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CFDE9C, 0, 0);
}

uint64_t sub_226CFDE9C()
{
  v27 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = sub_226D6E07C();
  v0[13] = __swift_project_value_buffer(v5, qword_28105F710);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9EC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    sub_226C0B634();
    v14 = sub_226D6F1CC();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_226AC4530(v14, v16, &v26);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_226AB4000, v6, v7, "Importing PassKit transactions for %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(v0[6] + 16);
  v19 = sub_226D676AC();
  v0[14] = v19;
  v20 = swift_task_alloc();
  v0[15] = v20;
  *v20 = v0;
  v20[1] = sub_226CFE0FC;
  v21 = v0[8];
  v22 = v0[9];
  v24 = v0[6];
  v23 = v0[7];

  return sub_226CFE7D0(v23, v19, v21, v22);
}

uint64_t sub_226CFE0FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_226CFE56C;
  }

  else
  {
    v5 = sub_226CFE210;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226CFE210()
{
  v38 = v0;
  v1 = *(v0 + 128);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_14:
    v31 = *(v0 + 128);
    v32 = *(v0 + 104);

    v27 = sub_226D6E05C();
    v28 = sub_226D6E9EC();
    if (!os_log_type_enabled(v27, v28))
    {
LABEL_17:
      v34 = *(v0 + 96);

      v25 = *(v0 + 8);
      goto LABEL_18;
    }

    v29 = "No PassKit transactions, aborting.";
LABEL_16:
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_226AB4000, v27, v28, v29, v33, 2u);
    MEMORY[0x22AA8BEE0](v33, -1, -1);
    goto LABEL_17;
  }

  if (v1 < 0)
  {
    v30 = *(v0 + 128);
  }

  if (!sub_226D6EDFC())
  {
    goto LABEL_14;
  }

LABEL_3:
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = swift_task_alloc();
  v6 = *(v0 + 48);
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  *(v5 + 40) = v3;
  sub_226D6EB7C();
  v7 = *(v0 + 128);
  if (!v2)
  {
    v8 = *(v0 + 112);
    v36 = *(v0 + 48);

    v9 = swift_task_alloc();
    *(v9 + 16) = v8;
    *(v9 + 24) = v36;
    sub_226D6EB7C();
    v26 = *(v0 + 104);

    v27 = sub_226D6E05C();
    v28 = sub_226D6E9EC();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_17;
    }

    v29 = "Successfully imported PassKit transactions.";
    goto LABEL_16;
  }

  v10 = *(v0 + 104);
  v11 = v2;
  v12 = sub_226D6E05C();
  v13 = sub_226D6E9CC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v17 = *(v0 + 16);
    v16 = *(v0 + 24);
    v18 = *(v0 + 32);
    v19 = sub_226D6F26C();
    v21 = sub_226AC4530(v19, v20, &v37);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_226AB4000, v12, v13, "Failed to import PKTransactions: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x22AA8BEE0](v15, -1, -1);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
  }

  v22 = *(v0 + 112);
  v23 = *(v0 + 96);
  sub_226CFF7D4();
  swift_allocError();
  *v24 = v2;
  swift_willThrow();

  v25 = *(v0 + 8);
LABEL_18:

  return v25();
}

uint64_t sub_226CFE56C()
{
  v20 = v0;
  v1 = v0[17];
  v2 = v0[13];
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v11 = sub_226D6F26C();
    v13 = sub_226AC4530(v11, v12, &v19);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to import PKTransactions: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v14 = v0[14];
  v15 = v0[12];
  sub_226CFF7D4();
  swift_allocError();
  *v16 = v1;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_226CFE710(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226AD827C;

  return sub_226CFDDD8(a1, v4, v5, v7, v6);
}

uint64_t sub_226CFE7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_226D6EB9C();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = sub_226D6B9BC();
  v5[12] = v9;
  v10 = *(v9 - 8);
  v5[13] = v10;
  v5[14] = *(v10 + 64);
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CFE8FC, 0, 0);
}

uint64_t sub_226CFE8FC()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[8];
  v18 = v0[9];
  v19 = v0[11];
  v7 = v0[5];
  (*(v4 + 16))(v1, v0[4], v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[16] = v10;
  *(v10 + 16) = v6;
  (*(v4 + 32))(v10 + v8, v1, v3);
  *(v10 + v9) = v7;
  (*(v5 + 104))(v19, *MEMORY[0x277CBE110], v18);
  v11 = *(MEMORY[0x277CBE118] + 4);

  v12 = v7;
  v13 = swift_task_alloc();
  v0[17] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6698, &unk_226D718B0);
  *v13 = v0;
  v13[1] = sub_226CFEAA8;
  v15 = v0[11];
  v16 = v0[5];

  return MEMORY[0x28210EE50](v0 + 2, v15, sub_226CFFBE0, v10, v14);
}

uint64_t sub_226CFEAA8()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 144) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_226CFF0D0;
  }

  else
  {
    v7 = sub_226CFEC3C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226CFEC3C()
{
  v26 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[7];
    v4 = v0[3];
    v5 = sub_226D6E36C();
    v6 = [v3 passWithFPANIdentifier_];
    v0[19] = v6;

    if (v6)
    {
      v7 = v0[6];

      v8 = v7[3];
      v9 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v10 = *(v9 + 8);
      v24 = (v10 + *v10);
      v11 = v10[1];
      v12 = swift_task_alloc();
      v0[20] = v12;
      *v12 = v0;
      v12[1] = sub_226CFEF50;

      return v24(v6, v8, v9);
    }

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v14 = sub_226D6E07C();
    __swift_project_value_buffer(v14, qword_28105F710);

    v15 = sub_226D6E05C();
    v16 = sub_226D6E9CC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      v19 = sub_226AC4530(v2, v1, &v25);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_226AB4000, v15, v16, "Failed to find a pass with FPAN identifier: %s.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x22AA8BEE0](v18, -1, -1);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
    }

    else
    {
    }
  }

  v20 = v0[15];
  v21 = v0[11];

  v22 = v0[1];
  v23 = MEMORY[0x277D84F90];

  return v22(v23);
}

uint64_t sub_226CFEF50(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_226CFF050, 0, 0);
}

uint64_t sub_226CFF050()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);

  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_226CFF0D0()
{
  v1 = v0[15];
  v2 = v0[11];

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

void sub_226CFF140(void *a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v45 = a2;
  v46[1] = *MEMORY[0x277D85DE8];
  v8 = sub_226D6B9BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() currentQueryGenerationToken];
  v46[0] = 0;
  v14 = [a1 setQueryGenerationFromToken:v13 error:v46];

  v15 = v46[0];
  if (v14)
  {
    sub_226D69F0C();
    v16 = v15;
    v17 = sub_226D69D9C();
    if (!v4)
    {
      if (v17)
      {
        v43 = v17;
        if (a4 >> 62)
        {
          goto LABEL_24;
        }

        for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
        {
          v19 = 0;
          v44 = a4 & 0xC000000000000001;
          v42 = a4 & 0xFFFFFFFFFFFFFF8;
          v20 = a4;
          while (1)
          {
            if (v44)
            {
              v22 = MEMORY[0x22AA8AFD0](v19, a4);
            }

            else
            {
              if (v19 >= *(v42 + 16))
              {
                goto LABEL_23;
              }

              v22 = *(a4 + 8 * v19 + 32);
            }

            v23 = v22;
            a4 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            v24 = [v22 fkPaymentTransaction];
            if (v24)
            {
              v25 = v45[3];
              v26 = v24;
              v27 = sub_226D6AC1C();

              v23 = v27;
            }

            ++v19;
            v21 = a4 == i;
            a4 = v20;
            if (v21)
            {
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          ;
        }

LABEL_25:
        v46[0] = 0;
        if ([a1 save_])
        {
          v40 = v46[0];
        }

        else
        {
          v41 = v46[0];
          sub_226D6D04C();

          swift_willThrow();
        }
      }

      else
      {
        if (qword_28105F708 != -1)
        {
          swift_once();
        }

        v30 = sub_226D6E07C();
        __swift_project_value_buffer(v30, qword_28105F710);
        (*(v9 + 16))(v12, a3, v8);
        v31 = sub_226D6E05C();
        v32 = sub_226D6E9CC();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = v9;
          v34 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v46[0] = v45;
          *v34 = 136315138;
          sub_226C0B634();
          v35 = sub_226D6F1CC();
          v37 = v36;
          (*(v33 + 8))(v12, v8);
          v38 = sub_226AC4530(v35, v37, v46);

          *(v34 + 4) = v38;
          _os_log_impl(&dword_226AB4000, v31, v32, "Failed to find an account: %s", v34, 0xCu);
          v39 = v45;
          __swift_destroy_boxed_opaque_existential_0Tm(v45);
          MEMORY[0x22AA8BEE0](v39, -1, -1);
          MEMORY[0x22AA8BEE0](v34, -1, -1);
        }

        else
        {

          (*(v9 + 8))(v12, v8);
        }
      }
    }
  }

  else
  {
    v28 = v46[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v29 = *MEMORY[0x277D85DE8];
}

id sub_226CFF5D8(void *a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v14[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v14];

  v7 = v14[0];
  if (!v6)
  {
    goto LABEL_5;
  }

  v8 = *(a2 + 32);
  v9 = v14[0];
  result = sub_226D6B6DC();
  if (!v2)
  {
    v14[0] = 0;
    v11 = [a1 save_];
    v7 = v14[0];
    if (v11)
    {
      result = v14[0];
      goto LABEL_6;
    }

LABEL_5:
    v12 = v7;
    sub_226D6D04C();

    result = swift_willThrow();
  }

LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void *BankConnectPassKitTransactionsImporter.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t BankConnectPassKitTransactionsImporter.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

unint64_t sub_226CFF7D4()
{
  result = qword_27D7A9200;
  if (!qword_27D7A9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A9200);
  }

  return result;
}

void sub_226CFF828(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = sub_226D6B9BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69F0C();
  v10 = sub_226D69D9C();
  if (!v2)
  {
    v30[1] = 0;
    if (v10)
    {
      v11 = v10;
      v12 = [v10 externalAccountId];
      if (v12)
      {
        v13 = v12;
        v14 = sub_226D6E39C();
        v16 = v15;

        *a2 = v14;
        a2[1] = v16;
        return;
      }

      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v26 = sub_226D6E07C();
      __swift_project_value_buffer(v26, qword_28105F710);
      v27 = sub_226D6E05C();
      v28 = sub_226D6E9EC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_226AB4000, v27, v28, "Account is not connected to a pass, no transactions to import.", v29, 2u);
        MEMORY[0x22AA8BEE0](v29, -1, -1);
      }
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v17 = sub_226D6E07C();
      __swift_project_value_buffer(v17, qword_28105F710);
      (*(v6 + 16))(v9, a1, v5);
      v18 = sub_226D6E05C();
      v19 = sub_226D6E9CC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v30[0] = swift_slowAlloc();
        v31 = v30[0];
        *v20 = 136315138;
        sub_226C0B634();
        v21 = sub_226D6F1CC();
        v23 = v22;
        (*(v6 + 8))(v9, v5);
        v24 = sub_226AC4530(v21, v23, &v31);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_226AB4000, v18, v19, "Failed to find an account for %s.", v20, 0xCu);
        v25 = v30[0];
        __swift_destroy_boxed_opaque_existential_0Tm(v30[0]);
        MEMORY[0x22AA8BEE0](v25, -1, -1);
        MEMORY[0x22AA8BEE0](v20, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v9, v5);
      }
    }

    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_226CFFBE0(uint64_t *a1@<X8>)
{
  v3 = *(sub_226D6B9BC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_226CFF828(v1 + v4, a1);
}

uint64_t sub_226CFFC8C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_226D6764C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CFFD4C, 0, 0);
}

uint64_t sub_226CFFD4C()
{
  if (sub_226D6E82C())
  {
    v1 = v0[6];

    v2 = v0[1];

    return v2();
  }

  else
  {
    v5 = v0[5];
    v4 = v0[6];
    v7 = v0[3];
    v6 = v0[4];
    v8 = v0[2];
    v9 = *(type metadata accessor for BankConnectBackgroundRefreshTask() + 28);
    v10 = sub_226D6D52C();
    (*(*(v10 - 8) + 16))(v4, v7 + v9, v10);
    (*(v5 + 104))(v4, *MEMORY[0x277CC6D30], v6);
    v11 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v12 = swift_task_alloc();
    v0[7] = v12;
    *v12 = v0;
    v12[1] = sub_226CFFEC8;
    v13 = v0[6];
    v14 = v0[3];

    return sub_226D01590(v11, v13, v14);
  }
}

uint64_t sub_226CFFEC8()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 16);
  v4 = *v0;

  v5 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v6 = swift_task_alloc();
  v1[8] = v6;
  *v6 = v4;
  v6[1] = sub_226D00044;
  v7 = v1[6];
  v8 = v1[3];

  return sub_226D02088(v5, v7, v8);
}

uint64_t sub_226D00044()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 16);
  v4 = *v0;

  v5 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v6 = swift_task_alloc();
  v1[9] = v6;
  *v6 = v4;
  v6[1] = sub_226D001C0;
  v7 = v1[6];
  v8 = v1[3];

  return sub_226D0305C(v5, v7, v8);
}

uint64_t sub_226D001C0()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 16);
  v4 = *v0;

  v5 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v6 = swift_task_alloc();
  v1[10] = v6;
  *v6 = v4;
  v6[1] = sub_226D0033C;
  v7 = v1[6];
  v8 = v1[3];

  return sub_226D03AA0(v5, v7, v8);
}

uint64_t sub_226D0033C()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226D00438, 0, 0);
}

uint64_t sub_226D00438()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *__swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v6 = sub_226D676AC();
  v7 = swift_task_alloc();
  *(v7 + 16) = v3;
  *(v7 + 24) = v6;
  sub_226D6EB7C();

  (*(v2 + 8))(v1, v4);
  v8 = *(v0 + 48);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_226D00540(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D66DFC();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(type metadata accessor for BankConnectBackgroundRefreshTask() - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D00604, 0, 0);
}

uint64_t sub_226D00604()
{
  v32 = v0;
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
  sub_226D014C8(v3, v2, type metadata accessor for BankConnectBackgroundRefreshTask);
  sub_226D014C8(v4, v1, MEMORY[0x277CC6528]);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  if (!v8)
  {

    sub_226D01530(v9, MEMORY[0x277CC6528]);
    sub_226D01530(v10, type metadata accessor for BankConnectBackgroundRefreshTask);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v30 = *(v0 + 40);
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v31 = v13;
  *v11 = 136315394;
  v14 = *v10;
  v15 = sub_226D6B9BC();
  v16 = MEMORY[0x22AA8A6A0](v14, v15);
  v18 = v17;
  sub_226D01530(v10, type metadata accessor for BankConnectBackgroundRefreshTask);
  v19 = sub_226AC4530(v16, v18, &v31);

  *(v11 + 4) = v19;
  *(v11 + 12) = 2112;
  sub_226D044E4(&qword_27D7A6990, MEMORY[0x277CC6528]);
  swift_allocError();
  sub_226D014C8(v9, v20, MEMORY[0x277CC6528]);
  v21 = _swift_stdlib_bridgeErrorToNSError();
  sub_226D01530(v9, MEMORY[0x277CC6528]);
  *(v11 + 14) = v21;
  *v12 = v21;
  _os_log_impl(&dword_226AB4000, v6, v7, "Failed to refresh accounts %s in background: %@", v11, 0x16u);
  sub_226B17298(v12);
  MEMORY[0x22AA8BEE0](v12, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  MEMORY[0x22AA8BEE0](v13, -1, -1);
  MEMORY[0x22AA8BEE0](v11, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v22 = *(v0 + 32);
    v23 = *__swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
    v24 = sub_226D676AC();
    v25 = swift_task_alloc();
    *(v25 + 16) = v22;
    *(v25 + 24) = v24;
    sub_226D6EB7C();
  }

LABEL_8:
  v27 = *(v0 + 48);
  v26 = *(v0 + 56);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_226D009CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v33 = a2;
  v25 = a3;
  v35 = sub_226D6B9BC();
  v5 = *(*(v35 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v35);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v34 = &v24 - v10;
  v11 = *a1;
  v32 = *(*a1 + 16);
  if (v32)
  {
    v12 = 0;
    v31 = v9 + 16;
    v27 = (v9 + 32);
    v29 = (v9 + 8);
    v30 = MEMORY[0x277D84F90];
    while (v12 < *(v11 + 16))
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = v11;
      v15 = *(v9 + 72);
      v16 = v9;
      (*(v9 + 16))(v34, v11 + v13 + v15 * v12, v35);
      sub_226D6842C();
      sub_226D6B97C();
      v17 = sub_226D683EC();
      if (v3)
      {
        (*v29)(v34, v35);
      }

      v18 = v17;

      if (v18 && (v19 = [v18 supportsTransactions], v18, (v19 & 1) != 0))
      {
        v26 = *v27;
        v26(v28, v34, v35);
        v20 = v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226AE2090(0, *(v20 + 16) + 1, 1);
          v20 = v36;
        }

        v23 = *(v20 + 16);
        v22 = *(v20 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_226AE2090(v22 > 1, v23 + 1, 1);
          v20 = v36;
        }

        *(v20 + 16) = v23 + 1;
        v30 = v20;
        result = (v26)(v20 + v13 + v23 * v15, v28, v35);
      }

      else
      {
        result = (*v29)(v34, v35);
      }

      ++v12;
      v11 = v14;
      v9 = v16;
      if (v32 == v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
LABEL_15:
    *v25 = v30;
  }

  return result;
}

id sub_226D00CC0(uint64_t *a1, void *a2)
{
  v28 = a2;
  v29[1] = *MEMORY[0x277D85DE8];
  v24 = sub_226D6D4AC();
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v24);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6B9BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v27 = *(*a1 + 16);
  if (v27)
  {
    v13 = 0;
    v25 = v8 + 8;
    v26 = v8 + 16;
    v22 = (v4 + 8);
    while (1)
    {
      if (v13 >= *(v12 + 16))
      {
        __break(1u);
      }

      (*(v8 + 16))(v11, v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, v7);
      sub_226D6842C();
      sub_226D6B97C();
      (*(v8 + 8))(v11, v7);
      v14 = sub_226D683EC();
      if (v2)
      {
        break;
      }

      v15 = v14;

      if (v15)
      {
        v16 = v23;
        sub_226D6D46C();
        v17 = sub_226D6D3EC();
        (*v22)(v16, v24);
        [v15 setLastBackgroundRefreshDate_];
      }

      if (v27 == ++v13)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v29[0] = 0;
    if ([v28 save_])
    {
      result = v29[0];
    }

    else
    {
      v19 = v29[0];
      sub_226D6D04C();

      result = swift_willThrow();
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226D00FC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226CFFC8C(a1);
}

uint64_t sub_226D01058(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE5A84;

  return sub_226D00540(a1, a2);
}

uint64_t sub_226D010FC@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_226D01150()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6998, &unk_226D73D10);
  v0 = *(type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226D71840;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v4 = sub_226B1ED68(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v4;
}

unint64_t sub_226D01274()
{
  v1 = *v0;
  v2 = sub_226D6B9BC();
  v3 = MEMORY[0x22AA8A6A0](v1, v2);
  MEMORY[0x22AA8A510](v3);

  return 0xD000000000000021;
}

uint64_t sub_226D01374(uint64_t a1)
{
  result = sub_226D044E4(&qword_27D7A9208, type metadata accessor for BankConnectBackgroundRefreshTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BankConnectBackgroundRefreshTask()
{
  result = qword_27D7A9218;
  if (!qword_27D7A9218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226D01418(uint64_t a1)
{
  result = sub_226D044E4(&qword_27D7A7230, type metadata accessor for BankConnectBackgroundRefreshTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226D01470(uint64_t a1)
{
  result = sub_226D044E4(&qword_27D7A9210, type metadata accessor for BankConnectBackgroundRefreshTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226D014C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226D01530(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226D01590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v5 = sub_226D67C0C();
  v3[15] = v5;
  v6 = *(v5 - 8);
  v3[16] = v6;
  v7 = *(v6 + 64) + 15;
  v3[17] = swift_task_alloc();
  v8 = sub_226D6B9BC();
  v3[18] = v8;
  v9 = *(v8 - 8);
  v3[19] = v9;
  v10 = *(v9 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[5] = &type metadata for BankConnectEnvironmentImplementation;
  v3[6] = sub_226B6CA08();
  v11 = swift_allocObject();
  v3[2] = v11;
  sub_226B42014(a1, v11 + 16);

  return MEMORY[0x2822009F8](sub_226D016F4, 0, 0);
}

uint64_t sub_226D016F4()
{
  v1 = **(v0 + 112);
  *(v0 + 176) = v1;
  v2 = *(v1 + 16);
  *(v0 + 184) = v2;
  if (v2)
  {
    v3 = *(v0 + 144);
    v4 = *(v0 + 152);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 248) = v6;
    *(v0 + 192) = *(v4 + 56);
    *(v0 + 200) = v5;
    v7 = *(v0 + 168);
    *(v0 + 208) = 0;
    *(v0 + 216) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v7, v1 + ((v6 + 32) & ~v6), v3);
    v8 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v9 = swift_allocObject();
    *(v0 + 56) = v9;
    sub_226B42014(v8, v9 + 16);
    v10 = sub_226D6B13C();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_226D6B12C();
    *(v0 + 224) = v13;
    *(v0 + 96) = v13;
    v14 = *(MEMORY[0x277CC7EE8] + 4);
    v15 = swift_task_alloc();
    *(v0 + 232) = v15;
    *v15 = v0;
    v15[1] = sub_226D018DC;
    v16 = *(v0 + 168);
    v17 = *(v0 + 136);
    v18 = *(v0 + 104);
    v19 = MEMORY[0x277CC7E10];

    return MEMORY[0x282119F10](v17, v16, v18, v10, v19);
  }

  else
  {
    v20 = *(v0 + 160);
    v21 = *(v0 + 168);
    v22 = *(v0 + 136);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_226D018DC()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  v2[30] = v0;

  v5 = v2[28];
  if (v0)
  {

    v6 = sub_226D01C28;
  }

  else
  {
    (*(v2[16] + 8))(v2[17], v2[15]);

    v6 = sub_226D01A34;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226D01A34()
{
  (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));
  v1 = *(v0 + 208) + 1;
  if (v1 == *(v0 + 184))
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 168);
    v4 = *(v0 + 136);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 200);
    v8 = *(v0 + 168);
    v9 = *(v0 + 144);
    v10 = *(v0 + 176) + ((*(v0 + 248) + 32) & ~*(v0 + 248)) + *(v0 + 192) * v1;
    v11 = (*(v0 + 152) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 208) = v1;
    *(v0 + 216) = v11;
    v7(v8, v10, v9);
    v12 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v13 = swift_allocObject();
    *(v0 + 56) = v13;
    sub_226B42014(v12, v13 + 16);
    v14 = sub_226D6B13C();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v17 = sub_226D6B12C();
    *(v0 + 224) = v17;
    *(v0 + 96) = v17;
    v18 = *(MEMORY[0x277CC7EE8] + 4);
    v19 = swift_task_alloc();
    *(v0 + 232) = v19;
    *v19 = v0;
    v19[1] = sub_226D018DC;
    v20 = *(v0 + 168);
    v21 = *(v0 + 136);
    v22 = *(v0 + 104);
    v23 = MEMORY[0x277CC7E10];

    return MEMORY[0x282119F10](v21, v20, v22, v14, v23);
  }
}

uint64_t sub_226D01C28()
{
  v53 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 144);
  v7 = sub_226D6E07C();
  __swift_project_value_buffer(v7, qword_28105F710);
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_226D6E05C();
  v10 = sub_226D6E9CC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 240);
  v13 = *(v0 + 160);
  v14 = *(v0 + 168);
  v15 = *(v0 + 144);
  v16 = *(v0 + 152);
  if (v11)
  {
    v51 = *(v0 + 168);
    v17 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v52 = v50;
    *v17 = 136315394;
    sub_226D044E4(&qword_27D7A6E40, MEMORY[0x277CC8058]);
    v18 = sub_226D6F1CC();
    v20 = v19;
    v21 = *(v16 + 8);
    v21(v13, v15);
    v22 = sub_226AC4530(v18, v20, &v52);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = v12;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v49 = v24;
    _os_log_impl(&dword_226AB4000, v9, v10, "Failed to load account for %s: %@", v17, 0x16u);
    sub_226B17298(v49);
    MEMORY[0x22AA8BEE0](v49, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    MEMORY[0x22AA8BEE0](v50, -1, -1);
    MEMORY[0x22AA8BEE0](v17, -1, -1);

    v21(v51, v15);
  }

  else
  {

    v25 = *(v16 + 8);
    v25(v13, v15);
    v25(v14, v15);
  }

  v26 = *(v0 + 208) + 1;
  if (v26 == *(v0 + 184))
  {
    v27 = *(v0 + 160);
    v28 = *(v0 + 168);
    v29 = *(v0 + 136);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v32 = *(v0 + 200);
    v33 = *(v0 + 168);
    v34 = *(v0 + 144);
    v35 = *(v0 + 176) + ((*(v0 + 248) + 32) & ~*(v0 + 248)) + *(v0 + 192) * v26;
    v36 = (*(v0 + 152) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 208) = v26;
    *(v0 + 216) = v36;
    v32(v33, v35, v34);
    v37 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v38 = swift_allocObject();
    *(v0 + 56) = v38;
    sub_226B42014(v37, v38 + 16);
    v39 = sub_226D6B13C();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v42 = sub_226D6B12C();
    *(v0 + 224) = v42;
    *(v0 + 96) = v42;
    v43 = *(MEMORY[0x277CC7EE8] + 4);
    v44 = swift_task_alloc();
    *(v0 + 232) = v44;
    *v44 = v0;
    v44[1] = sub_226D018DC;
    v45 = *(v0 + 168);
    v46 = *(v0 + 136);
    v47 = *(v0 + 104);
    v48 = MEMORY[0x277CC7E10];

    return MEMORY[0x282119F10](v46, v45, v47, v39, v48);
  }
}

uint64_t sub_226D02088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v6 = sub_226D6D4AC();
  v3[17] = v6;
  v7 = *(v6 - 8);
  v3[18] = v7;
  v8 = *(v7 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v9 = sub_226D6BE1C();
  v3[21] = v9;
  v10 = *(v9 - 8);
  v3[22] = v10;
  v11 = *(v10 + 64) + 15;
  v3[23] = swift_task_alloc();
  v12 = sub_226D6B9BC();
  v3[24] = v12;
  v13 = *(v12 - 8);
  v3[25] = v13;
  v14 = *(v13 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[5] = &type metadata for BankConnectEnvironmentImplementation;
  v3[6] = sub_226B6CA08();
  v15 = swift_allocObject();
  v3[2] = v15;
  sub_226B42014(a1, v15 + 16);

  return MEMORY[0x2822009F8](sub_226D0228C, 0, 0);
}

uint64_t sub_226D0228C()
{
  v1 = *(v0 + 120);
  v2 = *__swift_project_boxed_opaque_existential_1((v0 + 16), &type metadata for BankConnectEnvironmentImplementation);
  v3 = sub_226D676AC();
  *(v0 + 224) = v3;
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E88, &unk_226D73770);
  sub_226D6EB7C();

  v5 = *(v0 + 96);
  *(v0 + 232) = v5;
  v6 = *(v5 + 16);
  *(v0 + 240) = v6;
  if (v6)
  {
    v7 = *(v0 + 192);
    v8 = *(v0 + 200);
    v9 = *(v0 + 128);
    *(v0 + 248) = -*(*(v0 + 120) + 8);
    v10 = *(v8 + 16);
    v8 += 16;
    v11 = *(v8 + 64);
    *(v0 + 312) = v11;
    *(v0 + 256) = *(v8 + 56);
    *(v0 + 264) = v10;
    v12 = *(v0 + 216);
    v13 = *(v0 + 184);
    v15 = *(v0 + 152);
    v14 = *(v0 + 160);
    v16 = *(v0 + 136);
    v17 = *(v0 + 144);
    *(v0 + 272) = 0;
    *(v0 + 280) = v8 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v12, v5 + ((v11 + 32) & ~v11), v7);
    v18 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v19 = swift_allocObject();
    *(v0 + 56) = v19;
    sub_226B42014(v18, v19 + 16);
    v20 = sub_226D6BE3C();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v23 = sub_226D6BDFC();
    *(v0 + 288) = v23;
    *(v0 + 104) = v23;
    sub_226D6D46C();
    sub_226D6D3DC();
    (*(v17 + 8))(v15, v16);
    (*(v17 + 56))(v9, 1, 1, v16);
    sub_226D6BE0C();
    v24 = *(MEMORY[0x277CC81D8] + 4);
    v25 = swift_task_alloc();
    *(v0 + 296) = v25;
    *v25 = v0;
    v25[1] = sub_226D026FC;
    v26 = *(v0 + 216);
    v27 = *(v0 + 184);
    v28 = *(v0 + 112);
    v29 = MEMORY[0x277CC8178];

    return MEMORY[0x28211A688](v26, v27, v28, v20, v29);
  }

  else
  {

    v30 = *(v0 + 208);
    v31 = *(v0 + 216);
    v32 = *(v0 + 184);
    v34 = *(v0 + 152);
    v33 = *(v0 + 160);
    v35 = *(v0 + 128);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_226D026FC()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = v2[36];
  (*(v2[22] + 8))(v2[23], v2[21]);

  if (v0)
  {
    v6 = sub_226D02B44;
  }

  else
  {
    v6 = sub_226D02880;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226D02880()
{
  (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
  v1 = *(v0 + 272) + 1;
  if (v1 == *(v0 + 240))
  {
    v2 = *(v0 + 232);

    v3 = *(v0 + 208);
    v4 = *(v0 + 216);
    v5 = *(v0 + 184);
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 128);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 264);
    v12 = *(v0 + 248);
    v13 = *(v0 + 216);
    v14 = *(v0 + 192);
    v15 = *(v0 + 184);
    v17 = *(v0 + 152);
    v16 = *(v0 + 160);
    v18 = *(v0 + 136);
    v19 = *(v0 + 144);
    v20 = *(v0 + 128);
    v21 = *(v0 + 232) + ((*(v0 + 312) + 32) & ~*(v0 + 312)) + *(v0 + 256) * v1;
    v22 = (*(v0 + 200) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 272) = v1;
    *(v0 + 280) = v22;
    v11(v13, v21, v14);
    v23 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v24 = swift_allocObject();
    *(v0 + 56) = v24;
    sub_226B42014(v23, v24 + 16);
    v25 = sub_226D6BE3C();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = sub_226D6BDFC();
    *(v0 + 288) = v28;
    *(v0 + 104) = v28;
    sub_226D6D46C();
    sub_226D6D3DC();
    (*(v19 + 8))(v17, v18);
    (*(v19 + 56))(v20, 1, 1, v18);
    sub_226D6BE0C();
    v29 = *(MEMORY[0x277CC81D8] + 4);
    v30 = swift_task_alloc();
    *(v0 + 296) = v30;
    *v30 = v0;
    v30[1] = sub_226D026FC;
    v31 = *(v0 + 216);
    v32 = *(v0 + 184);
    v33 = *(v0 + 112);
    v34 = MEMORY[0x277CC8178];

    return MEMORY[0x28211A688](v31, v32, v33, v25, v34);
  }
}

uint64_t sub_226D02B44()
{
  v64 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 192);
  v7 = sub_226D6E07C();
  __swift_project_value_buffer(v7, qword_28105F710);
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_226D6E05C();
  v10 = sub_226D6E9CC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 304);
  v13 = *(v0 + 208);
  v14 = *(v0 + 216);
  v15 = *(v0 + 192);
  v16 = *(v0 + 200);
  if (v11)
  {
    v62 = *(v0 + 216);
    v17 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v63 = v61;
    *v17 = 136315394;
    sub_226D044E4(&qword_27D7A6E40, MEMORY[0x277CC8058]);
    v18 = sub_226D6F1CC();
    v20 = v19;
    v21 = *(v16 + 8);
    v21(v13, v15);
    v22 = sub_226AC4530(v18, v20, &v63);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = v12;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v60 = v24;
    _os_log_impl(&dword_226AB4000, v9, v10, "Failed to load transactions for %s: %@", v17, 0x16u);
    sub_226B17298(v60);
    MEMORY[0x22AA8BEE0](v60, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
    MEMORY[0x22AA8BEE0](v61, -1, -1);
    MEMORY[0x22AA8BEE0](v17, -1, -1);

    v21(v62, v15);
  }

  else
  {

    v25 = *(v16 + 8);
    v25(v13, v15);
    v25(v14, v15);
  }

  v26 = *(v0 + 272) + 1;
  if (v26 == *(v0 + 240))
  {
    v27 = *(v0 + 232);

    v28 = *(v0 + 208);
    v29 = *(v0 + 216);
    v30 = *(v0 + 184);
    v32 = *(v0 + 152);
    v31 = *(v0 + 160);
    v33 = *(v0 + 128);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    v36 = *(v0 + 264);
    v37 = *(v0 + 248);
    v38 = *(v0 + 216);
    v39 = *(v0 + 192);
    v40 = *(v0 + 184);
    v42 = *(v0 + 152);
    v41 = *(v0 + 160);
    v43 = *(v0 + 136);
    v44 = *(v0 + 144);
    v45 = *(v0 + 128);
    v46 = *(v0 + 232) + ((*(v0 + 312) + 32) & ~*(v0 + 312)) + *(v0 + 256) * v26;
    v47 = (*(v0 + 200) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 272) = v26;
    *(v0 + 280) = v47;
    v36(v38, v46, v39);
    v48 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v49 = swift_allocObject();
    *(v0 + 56) = v49;
    sub_226B42014(v48, v49 + 16);
    v50 = sub_226D6BE3C();
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    v53 = sub_226D6BDFC();
    *(v0 + 288) = v53;
    *(v0 + 104) = v53;
    sub_226D6D46C();
    sub_226D6D3DC();
    (*(v44 + 8))(v42, v43);
    (*(v44 + 56))(v45, 1, 1, v43);
    sub_226D6BE0C();
    v54 = *(MEMORY[0x277CC81D8] + 4);
    v55 = swift_task_alloc();
    *(v0 + 296) = v55;
    *v55 = v0;
    v55[1] = sub_226D026FC;
    v56 = *(v0 + 216);
    v57 = *(v0 + 184);
    v58 = *(v0 + 112);
    v59 = MEMORY[0x277CC8178];

    return MEMORY[0x28211A688](v56, v57, v58, v50, v59);
  }
}

uint64_t sub_226D0305C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v5 = sub_226D6B9BC();
  v3[15] = v5;
  v6 = *(v5 - 8);
  v3[16] = v6;
  v7 = *(v6 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[5] = &type metadata for BankConnectEnvironmentImplementation;
  v3[6] = sub_226B6CA08();
  v8 = swift_allocObject();
  v3[2] = v8;
  sub_226B42014(a1, v8 + 16);

  return MEMORY[0x2822009F8](sub_226D03164, 0, 0);
}

uint64_t sub_226D03164()
{
  v1 = **(v0 + 112);
  *(v0 + 152) = v1;
  v2 = *(v1 + 16);
  *(v0 + 160) = v2;
  if (v2)
  {
    v3 = *(v0 + 120);
    v4 = *(v0 + 128);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 224) = v6;
    *(v0 + 168) = *(v4 + 56);
    *(v0 + 176) = v5;
    v7 = *(v0 + 144);
    *(v0 + 184) = 0;
    *(v0 + 192) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v7, v1 + ((v6 + 32) & ~v6), v3);
    v8 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v9 = swift_allocObject();
    *(v0 + 56) = v9;
    sub_226B42014(v8, v9 + 16);
    v10 = sub_226D6BB5C();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_226D6BB4C();
    *(v0 + 200) = v13;
    *(v0 + 96) = v13;
    v14 = *(MEMORY[0x277CC8168] + 4);
    v15 = swift_task_alloc();
    *(v0 + 208) = v15;
    *v15 = v0;
    v15[1] = sub_226D0333C;
    v16 = *(v0 + 144);
    v17 = *(v0 + 104);
    v18 = MEMORY[0x277CC8090];

    return MEMORY[0x28211A560](v16, v17, v10, v18);
  }

  else
  {
    v19 = *(v0 + 136);
    v20 = *(v0 + 144);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_226D0333C()
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v6 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_226D03650;
  }

  else
  {
    v4 = sub_226D0346C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D0346C()
{
  (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
  v1 = *(v0 + 184) + 1;
  if (v1 == *(v0 + 160))
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 144);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 176);
    v7 = *(v0 + 144);
    v8 = *(v0 + 120);
    v9 = *(v0 + 152) + ((*(v0 + 224) + 32) & ~*(v0 + 224)) + *(v0 + 168) * v1;
    v10 = (*(v0 + 128) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 184) = v1;
    *(v0 + 192) = v10;
    v6(v7, v9, v8);
    v11 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v12 = swift_allocObject();
    *(v0 + 56) = v12;
    sub_226B42014(v11, v12 + 16);
    v13 = sub_226D6BB5C();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_226D6BB4C();
    *(v0 + 200) = v16;
    *(v0 + 96) = v16;
    v17 = *(MEMORY[0x277CC8168] + 4);
    v18 = swift_task_alloc();
    *(v0 + 208) = v18;
    *v18 = v0;
    v18[1] = sub_226D0333C;
    v19 = *(v0 + 144);
    v20 = *(v0 + 104);
    v21 = MEMORY[0x277CC8090];

    return MEMORY[0x28211A560](v19, v20, v13, v21);
  }
}

uint64_t sub_226D03650()
{
  v51 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = sub_226D6E07C();
  __swift_project_value_buffer(v7, qword_28105F710);
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_226D6E05C();
  v10 = sub_226D6E9CC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 216);
  v13 = *(v0 + 136);
  v14 = *(v0 + 144);
  v15 = *(v0 + 120);
  v16 = *(v0 + 128);
  if (v11)
  {
    v49 = *(v0 + 144);
    v17 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v50 = v48;
    *v17 = 136315394;
    sub_226D044E4(&qword_27D7A6E40, MEMORY[0x277CC8058]);
    v18 = sub_226D6F1CC();
    v20 = v19;
    v21 = *(v16 + 8);
    v21(v13, v15);
    v22 = sub_226AC4530(v18, v20, &v50);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = v12;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v47 = v24;
    _os_log_impl(&dword_226AB4000, v9, v10, "Failed to load payment info for %s: %@", v17, 0x16u);
    sub_226B17298(v47);
    MEMORY[0x22AA8BEE0](v47, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    MEMORY[0x22AA8BEE0](v48, -1, -1);
    MEMORY[0x22AA8BEE0](v17, -1, -1);

    v21(v49, v15);
  }

  else
  {

    v25 = *(v16 + 8);
    v25(v13, v15);
    v25(v14, v15);
  }

  v26 = *(v0 + 184) + 1;
  if (v26 == *(v0 + 160))
  {
    v27 = *(v0 + 136);
    v28 = *(v0 + 144);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v31 = *(v0 + 176);
    v32 = *(v0 + 144);
    v33 = *(v0 + 120);
    v34 = *(v0 + 152) + ((*(v0 + 224) + 32) & ~*(v0 + 224)) + *(v0 + 168) * v26;
    v35 = (*(v0 + 128) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 184) = v26;
    *(v0 + 192) = v35;
    v31(v32, v34, v33);
    v36 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v37 = swift_allocObject();
    *(v0 + 56) = v37;
    sub_226B42014(v36, v37 + 16);
    v38 = sub_226D6BB5C();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v41 = sub_226D6BB4C();
    *(v0 + 200) = v41;
    *(v0 + 96) = v41;
    v42 = *(MEMORY[0x277CC8168] + 4);
    v43 = swift_task_alloc();
    *(v0 + 208) = v43;
    *v43 = v0;
    v43[1] = sub_226D0333C;
    v44 = *(v0 + 144);
    v45 = *(v0 + 104);
    v46 = MEMORY[0x277CC8090];

    return MEMORY[0x28211A560](v44, v45, v38, v46);
  }
}

uint64_t sub_226D03AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v5 = sub_226D6B9BC();
  v3[15] = v5;
  v6 = *(v5 - 8);
  v3[16] = v6;
  v7 = *(v6 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[5] = &type metadata for BankConnectEnvironmentImplementation;
  v3[6] = sub_226B6CA08();
  v8 = swift_allocObject();
  v3[2] = v8;
  sub_226B42014(a1, v8 + 16);

  return MEMORY[0x2822009F8](sub_226D03BA8, 0, 0);
}

uint64_t sub_226D03BA8()
{
  v1 = **(v0 + 112);
  *(v0 + 152) = v1;
  v2 = *(v1 + 16);
  *(v0 + 160) = v2;
  if (v2)
  {
    v3 = *(v0 + 120);
    v4 = *(v0 + 128);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 224) = v6;
    *(v0 + 168) = *(v4 + 56);
    *(v0 + 176) = v5;
    v7 = *(v0 + 144);
    *(v0 + 184) = 0;
    *(v0 + 192) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v7, v1 + ((v6 + 32) & ~v6), v3);
    v8 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v9 = swift_allocObject();
    *(v0 + 56) = v9;
    sub_226B42014(v8, v9 + 16);
    v10 = sub_226D6C51C();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_226D6C50C();
    *(v0 + 200) = v13;
    *(v0 + 96) = v13;
    v14 = *(MEMORY[0x277CC82A0] + 4);
    v15 = swift_task_alloc();
    *(v0 + 208) = v15;
    *v15 = v0;
    v15[1] = sub_226D03D80;
    v16 = *(v0 + 144);
    v17 = *(v0 + 104);
    v18 = MEMORY[0x277CC8280];

    return MEMORY[0x28211A9B0](v16, v17, v10, v18);
  }

  else
  {
    v19 = *(v0 + 136);
    v20 = *(v0 + 144);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_226D03D80()
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v6 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_226D04094;
  }

  else
  {
    v4 = sub_226D03EB0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D03EB0()
{
  (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
  v1 = *(v0 + 184) + 1;
  if (v1 == *(v0 + 160))
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 144);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 176);
    v7 = *(v0 + 144);
    v8 = *(v0 + 120);
    v9 = *(v0 + 152) + ((*(v0 + 224) + 32) & ~*(v0 + 224)) + *(v0 + 168) * v1;
    v10 = (*(v0 + 128) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 184) = v1;
    *(v0 + 192) = v10;
    v6(v7, v9, v8);
    v11 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v12 = swift_allocObject();
    *(v0 + 56) = v12;
    sub_226B42014(v11, v12 + 16);
    v13 = sub_226D6C51C();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_226D6C50C();
    *(v0 + 200) = v16;
    *(v0 + 96) = v16;
    v17 = *(MEMORY[0x277CC82A0] + 4);
    v18 = swift_task_alloc();
    *(v0 + 208) = v18;
    *v18 = v0;
    v18[1] = sub_226D03D80;
    v19 = *(v0 + 144);
    v20 = *(v0 + 104);
    v21 = MEMORY[0x277CC8280];

    return MEMORY[0x28211A9B0](v19, v20, v13, v21);
  }
}

uint64_t sub_226D04094()
{
  v51 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = sub_226D6E07C();
  __swift_project_value_buffer(v7, qword_28105F710);
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_226D6E05C();
  v10 = sub_226D6E9CC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 216);
  v13 = *(v0 + 136);
  v14 = *(v0 + 144);
  v15 = *(v0 + 120);
  v16 = *(v0 + 128);
  if (v11)
  {
    v49 = *(v0 + 144);
    v17 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v50 = v48;
    *v17 = 136315394;
    sub_226D044E4(&qword_27D7A6E40, MEMORY[0x277CC8058]);
    v18 = sub_226D6F1CC();
    v20 = v19;
    v21 = *(v16 + 8);
    v21(v13, v15);
    v22 = sub_226AC4530(v18, v20, &v50);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = v12;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v47 = v24;
    _os_log_impl(&dword_226AB4000, v9, v10, "Failed to load scheduled payments for %s: %@", v17, 0x16u);
    sub_226B17298(v47);
    MEMORY[0x22AA8BEE0](v47, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    MEMORY[0x22AA8BEE0](v48, -1, -1);
    MEMORY[0x22AA8BEE0](v17, -1, -1);

    v21(v49, v15);
  }

  else
  {

    v25 = *(v16 + 8);
    v25(v13, v15);
    v25(v14, v15);
  }

  v26 = *(v0 + 184) + 1;
  if (v26 == *(v0 + 160))
  {
    v27 = *(v0 + 136);
    v28 = *(v0 + 144);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v31 = *(v0 + 176);
    v32 = *(v0 + 144);
    v33 = *(v0 + 120);
    v34 = *(v0 + 152) + ((*(v0 + 224) + 32) & ~*(v0 + 224)) + *(v0 + 168) * v26;
    v35 = (*(v0 + 128) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 184) = v26;
    *(v0 + 192) = v35;
    v31(v32, v34, v33);
    v36 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v37 = swift_allocObject();
    *(v0 + 56) = v37;
    sub_226B42014(v36, v37 + 16);
    v38 = sub_226D6C51C();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v41 = sub_226D6C50C();
    *(v0 + 200) = v41;
    *(v0 + 96) = v41;
    v42 = *(MEMORY[0x277CC82A0] + 4);
    v43 = swift_task_alloc();
    *(v0 + 208) = v43;
    *v43 = v0;
    v43[1] = sub_226D03D80;
    v44 = *(v0 + 144);
    v45 = *(v0 + 104);
    v46 = MEMORY[0x277CC8280];

    return MEMORY[0x28211A9B0](v44, v45, v38, v46);
  }
}