uint64_t sub_22B76CFD0()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B76D0CC, 0, 0);
}

uint64_t sub_22B76D0CC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_22B76D130()
{
  result = qword_27D8CECE0;
  if (!qword_27D8CECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CECE0);
  }

  return result;
}

uint64_t sub_22B76D184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22B76D1AC, 0, 0);
}

id sub_22B76D1AC()
{
  v40 = v0;
  if (qword_27D8CCC80 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[4];
  v3 = sub_22B7DB2B8();
  sub_22B4CFA74(v3, qword_27D8CECC8);

  v4 = sub_22B7DB298();
  v5 = sub_22B7DBCB8();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[5];
    v6 = v0[6];
    v9 = v0[3];
    v8 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v39 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_22B4CFAAC(0xD000000000000026, 0x800000022B8106E0, &v39);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_22B4CFAAC(v9, v8, &v39);
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_22B4CFAAC(v7, v6, &v39);
    _os_log_impl(&dword_22B4CC000, v4, v5, "%s Generating handles to contact map for chat with accountUniqueID: %s and chatIdentifier: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v11, -1, -1);
    MEMORY[0x231898D60](v10, -1, -1);
  }

  result = [objc_opt_self() sharedAccountController];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = v0[3];
  v15 = v0[4];
  v16 = sub_22B7DB678();
  v17 = [v13 accountForAccountID_];
  v0[8] = v17;

  if (v17)
  {
    v19 = v0[5];
    v18 = v0[6];
    v20 = objc_allocWithZone(IMDChatRegistry);
    v21 = v17;
    v22 = [v20 init];
    v23 = sub_22B7DB678();
    v24 = [v22 existingChatWithIdentifier:v23 account:v21];
    v0[9] = v24;

    if (v24)
    {
      v25 = v24;
      v26 = swift_task_alloc();
      v0[10] = v26;
      *v26 = v0;
      v26[1] = sub_22B76D5D8;
      v27 = v0[2];

      return sub_22B76D740(v27, v25);
    }

    v34 = v0[5];
    v33 = v0[6];
    v35 = v0[2];

    sub_22B76D130();
    v36 = swift_allocError();
    *v37 = v34;
    *(v37 + 8) = v33;
    *(v37 + 16) = 1;

    *v35 = v36;
    sub_22B6F0AD4(&qword_27D8CECE8, &qword_22B7FB898);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v29 = v0[3];
    v28 = v0[4];
    v30 = v0[2];
    sub_22B76D130();
    v31 = swift_allocError();
    *v32 = v29;
    *(v32 + 8) = v28;
    *(v32 + 16) = 0;
    *v30 = v31;
    sub_22B6F0AD4(&qword_27D8CECE8, &qword_22B7FB898);
    swift_storeEnumTagMultiPayload();
  }

  v38 = v0[1];

  return v38();
}

uint64_t sub_22B76D5D8()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B76D6D4, 0, 0);
}

uint64_t sub_22B76D6D4()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22B76D740(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_22B7DB038();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B76D800, 0, 0);
}

uint64_t sub_22B76D800()
{
  v58 = v0;
  v1 = [*(v0 + 160) guid];
  if (v1)
  {
    v2 = *(v0 + 160);
    v3 = v1;
    v4 = sub_22B7DB6A8();
    v6 = v5;

    *(v0 + 192) = v4;
    *(v0 + 200) = v6;
    v7 = [v2 participants];
    if (!v7)
    {
      __break(1u);
      return MEMORY[0x282200938](v7);
    }

    v8 = v7;
    sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
    v9 = sub_22B7DB918();

    if (v9 >> 62)
    {
LABEL_24:
      v10 = sub_22B7DC1C8();
      if (v10)
      {
LABEL_5:
        v11 = 0;
        v56 = MEMORY[0x277D84F90];
        do
        {
          v12 = v11;
          while (1)
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x231895C80](v12, v9);
            }

            else
            {
              if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_23;
              }

              v13 = *(v9 + 8 * v12 + 32);
            }

            v14 = v13;
            v11 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              __break(1u);
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            v15 = [v13 ID];
            if (v15)
            {
              break;
            }

            ++v12;
            if (v11 == v10)
            {
              goto LABEL_26;
            }
          }

          v55 = v6;
          v16 = v15;
          v17 = sub_22B7DB6A8();
          v54 = v18;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = sub_22B71BD80(0, *(v56 + 2) + 1, 1, v56);
          }

          v20 = *(v56 + 2);
          v19 = *(v56 + 3);
          if (v20 >= v19 >> 1)
          {
            v56 = sub_22B71BD80((v19 > 1), v20 + 1, 1, v56);
          }

          *(v56 + 2) = v20 + 1;
          v21 = &v56[16 * v20];
          v6 = v55;
          *(v21 + 4) = v17;
          *(v21 + 5) = v54;
        }

        while (v11 != v10);
        goto LABEL_26;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_5;
      }
    }

    v56 = MEMORY[0x277D84F90];
LABEL_26:

    v25 = sub_22B77A2DC(v56);

    if (qword_27D8CCC80 != -1)
    {
      swift_once();
    }

    v26 = sub_22B7DB2B8();
    *(v0 + 208) = sub_22B4CFA74(v26, qword_27D8CECC8);

    v27 = sub_22B7DB298();
    v28 = sub_22B7DBCB8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v57 = v30;
      *v29 = 136315650;
      *(v29 + 4) = sub_22B4CFAAC(0xD000000000000021, 0x800000022B8106B0, &v57);
      *(v29 + 12) = 2080;
      v31 = sub_22B7DBB08();
      v33 = sub_22B4CFAAC(v31, v32, &v57);

      *(v29 + 14) = v33;
      *(v29 + 22) = 2080;
      *(v29 + 24) = sub_22B4CFAAC(v4, v6, &v57);
      _os_log_impl(&dword_22B4CC000, v27, v28, "%s Fetching contacts for %s in chat with GUID: %s", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v30, -1, -1);
      MEMORY[0x231898D60](v29, -1, -1);
    }

    v34 = [objc_opt_self() sharedInstance];
    v35 = [v34 aliasToCNIDMap];

    v36 = sub_22B7DB588();
    v37 = sub_22B7B1314(v36);

    if (!v37)
    {
      goto LABEL_34;
    }

    *(swift_task_alloc() + 16) = v25;
    *(v0 + 216) = sub_22B76EDB0(v37, sub_22B76EC28);

    v39 = sub_22B772F9C(v38);
    v40 = v39;
    v41 = *(v39 + 16);
    if (v41)
    {
      v42 = sub_22B759CB4(*(v39 + 16), 0);
      v43 = sub_22B75A414(&v57, v42 + 4, v41, v40);
      sub_22B705E3C();
      if (v43 != v41)
      {
        __break(1u);
LABEL_34:
        v22 = *(v0 + 152);

        sub_22B76D130();
        v23 = swift_allocError();
        *v24 = xmmword_22B7F9630;
        goto LABEL_35;
      }
    }

    else
    {

      v42 = MEMORY[0x277D84F90];
    }

    v47 = sub_22B7DB298();
    v48 = sub_22B7DBCB8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v57 = v50;
      *v49 = 136315650;
      *(v49 + 4) = sub_22B4CFAAC(0xD000000000000021, 0x800000022B8106B0, &v57);
      *(v49 + 12) = 2048;
      *(v49 + 14) = v42[2];

      *(v49 + 22) = 2080;
      *(v49 + 24) = sub_22B4CFAAC(v4, v6, &v57);
      _os_log_impl(&dword_22B4CC000, v47, v48, "%s Fetching contact(s) for %ld contactID(s) for chat with GUID: %s", v49, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v50, -1, -1);
      MEMORY[0x231898D60](v49, -1, -1);
    }

    else
    {
    }

    v51 = [objc_opt_self() synchronousDatabase];
    *(v0 + 224) = v51;
    v52 = sub_22B7DB8F8();
    *(v0 + 232) = v52;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_22B76E064;
    v53 = swift_continuation_init();
    *(v0 + 136) = sub_22B6F0AD4(&qword_27D8CECF0, &qword_22B7FBA08);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_22B76E378;
    *(v0 + 104) = &unk_283F1E6E8;
    *(v0 + 112) = v53;
    [v51 fetchContactsForIdentifiers:v52 completionHandler:v0 + 80];
    v7 = (v0 + 16);

    return MEMORY[0x282200938](v7);
  }

  v22 = *(v0 + 152);
  sub_22B76D130();
  v23 = swift_allocError();
  *v24 = 0;
  *(v24 + 8) = 0;
LABEL_35:
  *(v24 + 16) = 3;
  *v22 = v23;
  sub_22B6F0AD4(&qword_27D8CECE8, &qword_22B7FB898);
  swift_storeEnumTagMultiPayload();
  v44 = *(v0 + 184);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_22B76E064()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B76E144, 0, 0);
}

uint64_t sub_22B76E144()
{
  v23 = v0;
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[18];
  swift_unknownObjectRelease();

  v6 = sub_22B7DB298();
  v7 = sub_22B7DBCB8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[25];
  if (v8)
  {
    v10 = v0[24];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_22B4CFAAC(0xD000000000000021, 0x800000022B8106B0, &v22);
    *(v11 + 12) = 2048;
    *(v11 + 14) = *(v5 + 16);

    *(v11 + 22) = 2080;
    v13 = sub_22B4CFAAC(v10, v9, &v22);

    *(v11 + 24) = v13;
    _os_log_impl(&dword_22B4CC000, v6, v7, "%s Fetched %ld contact(s) for chat with GUID: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v12, -1, -1);
    MEMORY[0x231898D60](v11, -1, -1);
  }

  else
  {
  }

  v14 = v0[27];
  v16 = v0[22];
  v15 = v0[23];
  v17 = v0[21];
  v18 = v0[19];
  sub_22B7DB028();
  (*(v16 + 32))(v18, v15, v17);
  sub_22B6F0AD4(&qword_27D8CECE8, &qword_22B7FB898);
  swift_storeEnumTagMultiPayload();
  v19 = v0[23];

  v20 = v0[1];

  return v20();
}

uint64_t sub_22B76E378(uint64_t a1)
{
  v1 = *sub_22B4D2BCC((a1 + 32), *(a1 + 56));
  sub_22B4D01A0(0, &qword_27D8CECF8, 0x277CBDA58);
  **(*(v1 + 64) + 40) = sub_22B7DB588();

  return MEMORY[0x282200948](v1);
}

uint64_t sub_22B76E424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B6F12E8;

  return sub_22B76CC9C(a1, a2, a3);
}

uint64_t sub_22B76E4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22B6F0D94;

  return sub_22B76D184(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ChatContactsProvider.generateHandlesToContactMap(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 80);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22B6F12E8;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of ChatContactsProvider.generateHandlesToContactMap(for:chat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 88);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_22B6F0D94;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t sub_22B76E870(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_22B76E88C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22B76E8D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_22B76E918(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void *sub_22B76E940(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
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

    v8 = sub_22B76EC30(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_22B76E9D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_22B6F0AD4(&qword_27D8CED00, &unk_22B7FBA10);
  result = sub_22B7DC488();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v36 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v37 = *v21;
    v23 = *(v9 + 40);
    sub_22B7DC668();

    sub_22B7DB758();
    result = sub_22B7DC6B8();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = 16 * v27;
    v33 = (*(v9 + 48) + v32);
    *v33 = v19;
    v33[1] = v20;
    v34 = (*(v9 + 56) + v32);
    *v34 = v37;
    v34[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v36;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22B76EC30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22 = result;
  v23 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(a3 + 56) + 16 * v13);
    v19 = *v17;
    v18 = v17[1];

    LOBYTE(v19) = a4(v15, v16, v19, v18);

    if (v19)
    {
      *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_22B76E9D0(v22, a2, v23, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_22B76E9D0(v22, a2, v23, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B76EDB0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_22B76EC30(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_22B76E940(v11, v6, v4, a2);
  result = MEMORY[0x231898D60](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B76EF30()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CED08);
  sub_22B4CFA74(v0, qword_27D8CED08);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

void sub_22B76F074(void *a1)
{
  v91[2] = *MEMORY[0x277D85DE8];
  sub_22B771954();
  if ((v3 & 1) == 0)
  {
    goto LABEL_57;
  }

  v4 = [a1 guid];
  v91[0] = 0;
  IMComponentsFromChatGUID();

  v5 = 0;
  v6 = [a1 participants];
  if (!v6)
  {
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v7 = v6;
  sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
  v8 = sub_22B7DB918();

  if (v8 >> 62)
  {
    if (sub_22B7DC1C8())
    {
      goto LABEL_5;
    }

LABEL_10:

    v11 = 0;
    goto LABEL_11;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x231895C80](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_51:
      swift_once();
      goto LABEL_13;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = [v10 ID];

LABEL_11:
  v12 = [objc_opt_self() identifier:0 equalsIdentifier:v11];

  if (v12)
  {
    v30 = [a1 chatIdentifier];
    if (v30 && (v31 = v30, sub_22B7DB6A8(), v33 = v32, v31, v33))
    {

      if (qword_27D8CCC88 != -1)
      {
        swift_once();
      }

      v44 = sub_22B7DB2B8();
      sub_22B4CFA74(v44, qword_27D8CED08);
      v45 = sub_22B7DB298();
      v46 = sub_22B7DBC98();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        sub_22B4D01A0(0, &qword_27D8CED30, 0x277CCACA8);
        v49 = sub_22B7DBFE8();
        *(v47 + 4) = v49;
        *v48 = v49;
        v50 = 0;
        _os_log_impl(&dword_22B4CC000, v45, v46, "chat identifier from guid is nil or not a string: %@.", v47, 0xCu);
        sub_22B4D0D64(v48, &unk_27D8CEC60, &qword_22B7F9E20);
        MEMORY[0x231898D60](v48, -1, -1);
        MEMORY[0x231898D60](v47, -1, -1);
      }
    }

    else
    {
    }

    goto LABEL_57;
  }

  v1 = 0;
  if (qword_27D8CCC88 != -1)
  {
    goto LABEL_51;
  }

LABEL_13:
  v13 = sub_22B7DB2B8();
  sub_22B4CFA74(v13, qword_27D8CED08);
  v14 = a1;
  v15 = sub_22B7DB298();
  v16 = sub_22B7DBC98();
  if (!os_log_type_enabled(v15, v16))
  {

LABEL_56:
LABEL_57:
    v63 = *MEMORY[0x277D85DE8];
    return;
  }

  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v91[0] = v19;
  *v17 = 138412546;
  sub_22B4D01A0(0, &qword_27D8CED30, 0x277CCACA8);
  v20 = sub_22B7DBFE8();
  *(v17 + 4) = v20;
  *v18 = v20;
  *(v17 + 12) = 2080;
  v21 = 0;
  v22 = [v14 participants];

  if (!v22)
  {
    goto LABEL_78;
  }

  v23 = sub_22B7DB918();

  if (!(v23 >> 62))
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

LABEL_53:
    v27 = 0x3E6C696E3CLL;

    goto LABEL_54;
  }

  if (!sub_22B7DC1C8())
  {
    goto LABEL_53;
  }

LABEL_17:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x231895C80](0, v23);
    goto LABEL_20;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v23 + 32);
LABEL_20:
    v25 = v24;

    v26 = [v25 ID];

    if (v26)
    {
      v27 = sub_22B7DB6A8();
      v29 = v28;

LABEL_55:
      v62 = sub_22B4CFAAC(v27, v29, v91);

      *(v17 + 14) = v62;
      _os_log_impl(&dword_22B4CC000, v15, v16, "chat identifier from guid %@ does not match the participant's handle ID %s. Not repairing chat identifier.", v17, 0x16u);
      sub_22B4D0D64(v18, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v18, -1, -1);
      sub_22B4CFB78(v19);
      MEMORY[0x231898D60](v19, -1, -1);
      MEMORY[0x231898D60](v17, -1, -1);

      goto LABEL_56;
    }

    v27 = 0x3E6C696E3CLL;
LABEL_54:
    v29 = 0xE500000000000000;
    goto LABEL_55;
  }

  __break(1u);
  swift_once();
  v88 = v14;
  v34 = sub_22B7DB2B8();
  sub_22B4CFA74(v34, qword_27D8CED08);
  v35 = v21;

  v36 = sub_22B7DB298();
  v37 = sub_22B7DBC98();

  if (os_log_type_enabled(v36, v37))
  {
    v87 = v1;
    v38 = 0x3E6C696E3CLL;
    v39 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v91[0] = v86;
    *v39 = 136315650;
    v40 = [v35 (v15 + 376)];
    if (v40)
    {
      v41 = v40;
      v38 = sub_22B7DB6A8();
      v43 = v42;
    }

    else
    {
      v43 = 0xE500000000000000;
    }

    v52 = sub_22B4CFAAC(v38, v43, v91);

    *(v39 + 4) = v52;
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_22B4CFAAC(v89, v16, v91);
    *(v39 + 22) = 2080;
    v53 = [v35 participants];

    v51 = v90;
    if (v53)
    {
      v54 = sub_22B7DB918();

      v1 = v87;
      if (v54 >> 62)
      {
        if (sub_22B7DC1C8())
        {
          goto LABEL_43;
        }
      }

      else if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_43:
        if ((v54 & 0xC000000000000001) != 0)
        {
          v55 = MEMORY[0x231895C80](0, v54);
        }

        else
        {
          if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v55 = *(v54 + 32);
        }

        v56 = v55;

        v57 = [v56 ID];

        if (v57)
        {
          v58 = sub_22B7DB6A8();
          v60 = v59;

          v61 = v58;
          v1 = v87;
LABEL_63:
          v64 = sub_22B4CFAAC(v61, v60, v91);

          *(v39 + 24) = v64;
          _os_log_impl(&dword_22B4CC000, v36, v37, "Repairing chat identifier on chat. guid: %s, chatIdentifier: %s, participantId: %s", v39, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x231898D60](v86, -1, -1);
          MEMORY[0x231898D60](v39, -1, -1);

          goto LABEL_64;
        }

        v60 = 0xE500000000000000;
        v1 = v87;
LABEL_62:
        v61 = 0x3E6C696E3CLL;
        goto LABEL_63;
      }

      v60 = 0xE500000000000000;
      goto LABEL_62;
    }

LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v51 = v90;
LABEL_64:
  v65 = [v51 delegate];
  if (v65)
  {
    v66 = v65;
    v67 = sub_22B7DB678();
    v68 = [v66 chatRepairController:v51 repairChatIdentifierWithIdentifier:v67 onChat:v35];
    swift_unknownObjectRelease();

    if (v68)
    {
      v69 = [v51 delegate];
      if (v69)
      {
        [v69 chatRepairController:v51 updateRepairHistoryOfChat:v35 withRepairHistory:8];
        swift_unknownObjectRelease();
      }

      v70 = [v51 delegate];
      if (v70)
      {
        [v70 chatRepairController:v51 updateSyncStateTo:0 onChat:v35];
        swift_unknownObjectRelease();
      }
    }
  }

  v71 = [v51 delegate];
  if (!v71 || (v72 = [v71 shouldForceAutoBugCaptureForChatRepairController_], swift_unknownObjectRelease(), (v72 & 1) == 0))
  {

    goto LABEL_57;
  }

  v73 = *MEMORY[0x277D190E0];
  sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B7F93B0;
  v75 = *MEMORY[0x277CCA068];
  *(inited + 32) = sub_22B7DB6A8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v76;
  *(inited + 48) = 0xD000000000000030;
  *(inited + 56) = 0x800000022B8108C0;
  v77 = v73;
  sub_22B71DF98(inited);
  swift_setDeallocating();
  sub_22B4D0D64(inited + 32, &qword_27D8CDB60, &qword_22B7FA360);
  v78 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v79 = sub_22B7DB568();

  v80 = [v78 initWithDomain:v77 code:0 userInfo:v79];

  v81 = [objc_opt_self() sharedInstance];
  if (v81)
  {
    v82 = v81;

    v83 = sub_22B7DB678();
    v84 = v80;
    v85 = sub_22B7DA6E8();

    [v82 forceAutoBugCaptureWithSubType:v83 errorPayload:v85];
    goto LABEL_57;
  }

LABEL_80:
  __break(1u);
}

void sub_22B76FDA0(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B771954();
  if (v2)
  {
    v3 = [a1 guid];
    v5 = 0;
    IMComponentsFromChatGUID();
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B770878(void *a1)
{
  v3 = [a1 chatIdentifier];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = v3;
  v5 = sub_22B7DB6A8();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (v9 = [a1 serviceName]) == 0)
  {
LABEL_15:

LABEL_16:
    if (qword_27D8CCC88 != -1)
    {
      swift_once();
    }

    v24 = sub_22B7DB2B8();
    sub_22B4CFA74(v24, qword_27D8CED08);
    v25 = a1;
    v26 = sub_22B7DB298();
    v27 = sub_22B7DBC98();

    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_27;
    }

    v28 = 0x3E6C696E3CLL;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v129 = v30;
    *v29 = 136315394;
    v31 = [v25 chatIdentifier];
    if (v31)
    {
      v32 = v31;
      v33 = sub_22B7DB6A8();
      v35 = v34;
    }

    else
    {
      v35 = 0xE500000000000000;
      v33 = 0x3E6C696E3CLL;
    }

    v36 = sub_22B4CFAAC(v33, v35, &v129);

    *(v29 + 4) = v36;
    *(v29 + 12) = 2080;
    v37 = [v25 serviceName];
    if (v37)
    {
      v38 = v37;
      v28 = sub_22B7DB6A8();
      v40 = v39;
    }

    else
    {
      v40 = 0xE500000000000000;
    }

    v41 = sub_22B4CFAAC(v28, v40, &v129);

    *(v29 + 14) = v41;
    _os_log_impl(&dword_22B4CC000, v26, v27, "Chat has zero length identifier %s or service %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v30, -1, -1);
    v42 = v29;
    goto LABEL_26;
  }

  v10 = v9;
  v11 = sub_22B7DB6A8();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    goto LABEL_15;
  }

  v15 = [a1 guid];
  if (!v15)
  {

    return;
  }

  v16 = v15;
  v17 = sub_22B7DB6A8();
  v19 = v18;

  v128 = v1;
  v20 = sub_22B771BA0(a1);
  if (!v21)
  {

    return;
  }

  v22 = v20;
  v23 = v21;
  if (v17 == v20 && v21 == v19 || (sub_22B7DC518() & 1) != 0)
  {

    return;
  }

  v43 = [a1 style];
  if (byte_283F1BCC0 == v43 || byte_283F1BCC1 == v43)
  {
    v48 = [v1 delegate];
    if (!v48)
    {
      goto LABEL_52;
    }

    v49 = v48;
    log = v22;
    v50 = sub_22B7DB678();
    v51 = [v49 chatRepairController:v1 chatExistsWithGUID:v50];
    swift_unknownObjectRelease();

    if (!v51)
    {
      v22 = log;
      goto LABEL_52;
    }

    if ([a1 style] != 43)
    {

      if (qword_27D8CCC88 == -1)
      {
LABEL_59:
        v82 = sub_22B7DB2B8();
        sub_22B4CFA74(v82, qword_27D8CED08);

        v26 = sub_22B7DB298();
        v83 = sub_22B7DBC98();

        if (!os_log_type_enabled(v26, v83))
        {

          goto LABEL_27;
        }

        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v129 = v85;
        *v84 = 136315138;
        v86 = sub_22B4CFAAC(log, v23, &v129);

        *(v84 + 4) = v86;
        _os_log_impl(&dword_22B4CC000, v26, v83, "Chat with expected GUID %s already exists, cannot reset 1-1 chat GUID", v84, 0xCu);
        sub_22B4CFB78(v85);
        MEMORY[0x231898D60](v85, -1, -1);
        v42 = v84;
LABEL_26:
        MEMORY[0x231898D60](v42, -1, -1);
LABEL_27:

        return;
      }

LABEL_95:
      swift_once();
      goto LABEL_59;
    }

    v52 = [v128 delegate];
    if (v52 && (v53 = v52, v54 = [a1 account], v55 = objc_msgSend(v53, sel_chatRepairController_generateUnusedChatIdentifierForGroupChatWithAccount_, v128, v54), v54, swift_unknownObjectRelease(), v55))
    {
      loga = sub_22B7DB6A8();
      v57 = v56;
      v58 = v55;
      v59 = [a1 serviceName];
      if (v59)
      {
        v60 = v59;
        [a1 style];
        v61 = IMCopyAnyServiceGUIDForChat();

        if (!v61)
        {
LABEL_98:

          __break(1u);
          return;
        }

        v22 = sub_22B7DB6A8();
        v63 = v62;

        [a1 setChatIdentifier_];

        if (qword_27D8CCC88 != -1)
        {
          swift_once();
        }

        v64 = sub_22B7DB2B8();
        sub_22B4CFA74(v64, qword_27D8CED08);

        v65 = sub_22B7DB298();
        v66 = sub_22B7DBC98();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v129 = v124;
          *v67 = 136315394;
          v68 = sub_22B4CFAAC(loga, v57, &v129);
          logb = v65;
          v69 = v68;

          *(v67 + 4) = v69;
          *(v67 + 12) = 2080;
          v70 = sub_22B4CFAAC(v22, v63, &v129);

          *(v67 + 14) = v70;
          _os_log_impl(&dword_22B4CC000, logb, v66, "Chat with expected GUID already exists, generating new chat identifier %s and GUID %s", v67, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x231898D60](v124, -1, -1);
          MEMORY[0x231898D60](v67, -1, -1);
        }

        else
        {
        }

LABEL_52:
        if (qword_27D8CCC88 != -1)
        {
          swift_once();
        }

        v71 = sub_22B7DB2B8();
        sub_22B4CFA74(v71, qword_27D8CED08);
        v72 = a1;

        v73 = sub_22B7DB298();
        v74 = sub_22B7DBC98();

        if (!os_log_type_enabled(v73, v74))
        {

          v58 = v128;
          goto LABEL_82;
        }

        v122 = v74;
        v123 = v73;
        log = v22;
        v75 = 0x3E6C696E3CLL;
        v76 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v129 = v121;
        *v76 = 136315650;
        v77 = [v72 guid];
        v58 = v128;
        if (v77)
        {
          v78 = v77;
          v79 = v72;
          v75 = sub_22B7DB6A8();
          v81 = v80;
        }

        else
        {
          v79 = v72;
          v81 = 0xE500000000000000;
        }

        v23 = 0x3E6C696E3CLL;
        v87 = sub_22B4CFAAC(v75, v81, &v129);

        *(v76 + 4) = v87;
        *(v76 + 12) = 2080;
        *(v76 + 14) = sub_22B4CFAAC(v5, v7, &v129);
        *(v76 + 22) = 2080;
        v72 = v79;
        v88 = [v79 participants];

        if (!v88)
        {
          __break(1u);
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

        sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
        v89 = sub_22B7DB918();

        if (v89 >> 62)
        {
          if (sub_22B7DC1C8())
          {
            goto LABEL_65;
          }
        }

        else if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_65:
          if ((v89 & 0xC000000000000001) != 0)
          {
            v90 = MEMORY[0x231895C80](0, v89);
LABEL_68:
            v91 = v90;

            v92 = [v91 ID];

            if (v92)
            {
              v23 = sub_22B7DB6A8();
              v94 = v93;

LABEL_81:
              v100 = sub_22B4CFAAC(v23, v94, &v129);

              *(v76 + 24) = v100;
              _os_log_impl(&dword_22B4CC000, v123, v122, "Repairing guid on chat. guid: %s, chatIdentifier: %s, participantId: %s", v76, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x231898D60](v121, -1, -1);
              MEMORY[0x231898D60](v76, -1, -1);

LABEL_82:
              v101 = [v58 delegate];
              if (v101)
              {
                v102 = v101;
                v103 = sub_22B7DB678();
                v104 = [v102 chatRepairController:v58 repairGUIDWithGUID:v103 onChat:v72];
                swift_unknownObjectRelease();

                if (v104)
                {
                  v105 = [v58 delegate];
                  if (v105)
                  {
                    [v105 chatRepairController:v58 updateRepairHistoryOfChat:v72 withRepairHistory:32];
                    swift_unknownObjectRelease();
                  }

                  v106 = [v58 delegate];
                  if (v106)
                  {
                    [v106 chatRepairController:v58 updateSyncStateTo:0 onChat:v72];
                    swift_unknownObjectRelease();
                  }
                }
              }

              v107 = [v58 delegate];
              if (!v107 || (v108 = [v107 shouldForceAutoBugCaptureForChatRepairController_], swift_unknownObjectRelease(), !v108))
              {

                return;
              }

              v109 = *MEMORY[0x277D190E0];
              sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_22B7F93B0;
              v111 = *MEMORY[0x277CCA068];
              *(inited + 32) = sub_22B7DB6A8();
              *(inited + 72) = MEMORY[0x277D837D0];
              *(inited + 40) = v112;
              *(inited + 48) = 0xD00000000000002ALL;
              *(inited + 56) = 0x800000022B810800;
              v113 = v109;
              sub_22B71DF98(inited);
              swift_setDeallocating();
              sub_22B4D0D64(inited + 32, &qword_27D8CDB60, &qword_22B7FA360);
              v114 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
              v115 = sub_22B7DB568();

              v58 = [v114 initWithDomain:v113 code:0 userInfo:v115];

              v116 = [objc_opt_self() sharedInstance];
              if (v116)
              {
                v117 = v116;

                v118 = sub_22B7DB678();
                v119 = v58;
                v120 = sub_22B7DA6E8();

                [v117 forceAutoBugCaptureWithSubType:v118 errorPayload:v120];
                return;
              }

              goto LABEL_97;
            }

LABEL_80:
            v94 = 0xE500000000000000;
            goto LABEL_81;
          }

          if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v90 = *(v89 + 32);
            goto LABEL_68;
          }

          __break(1u);
          goto LABEL_95;
        }

        goto LABEL_80;
      }
    }

    else
    {
    }

    if (qword_27D8CCC88 != -1)
    {
      swift_once();
    }

    v95 = sub_22B7DB2B8();
    sub_22B4CFA74(v95, qword_27D8CED08);
    v96 = a1;
    v26 = sub_22B7DB298();
    v97 = sub_22B7DBC98();

    if (!os_log_type_enabled(v26, v97))
    {
      goto LABEL_27;
    }

    v47 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *v47 = 138412290;
    v99 = [v96 &selRef_broadcasterForFileTransferListeners];
    *(v47 + 4) = v99;
    *v98 = v99;
    _os_log_impl(&dword_22B4CC000, v26, v97, "Failed to generate new chat identifier for account %@", v47, 0xCu);
    sub_22B4D0D64(v98, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v98, -1, -1);
    goto LABEL_37;
  }

  if (qword_27D8CCC88 != -1)
  {
    swift_once();
  }

  v44 = sub_22B7DB2B8();
  sub_22B4CFA74(v44, qword_27D8CED08);
  v45 = a1;
  v26 = sub_22B7DB298();
  v46 = sub_22B7DBC98();
  if (os_log_type_enabled(v26, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 16777472;
    *(v47 + 4) = [v45 style];

    _os_log_impl(&dword_22B4CC000, v26, v46, "Chat appears to need recovery but style is not supported %hhu", v47, 5u);
LABEL_37:
    v42 = v47;
    goto LABEL_26;
  }
}

void sub_22B771954()
{
  if ([v0 style] != 45)
  {
    return;
  }

  v2 = [v0 participants];
  if (!v2)
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = v2;
  sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
  v4 = sub_22B7DB918();

  if (v4 >> 62)
  {
    v5 = sub_22B7DC1C8();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 == 1)
  {
    if (([v0 isBusinessChat] & 1) == 0)
    {
      [v0 isStewieChat];
    }

    return;
  }

  if (qword_27D8CCC88 != -1)
  {
    swift_once();
  }

  v6 = sub_22B7DB2B8();
  sub_22B4CFA74(v6, qword_27D8CED08);
  v1 = v0;
  v7 = sub_22B7DB298();
  v8 = sub_22B7DBC98();
  if (!os_log_type_enabled(v7, v8))
  {

    return;
  }

  v9 = swift_slowAlloc();
  *v9 = 134217984;
  v10 = [v1 participants];
  if (!v10)
  {
LABEL_20:

    __break(1u);
    return;
  }

  v11 = v10;
  v12 = sub_22B7DB918();

  if (v12 >> 62)
  {
    v13 = sub_22B7DC1C8();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v9 + 4) = v13;

  _os_log_impl(&dword_22B4CC000, v7, v8, "Chat is a 1-1 chat, but has %ld participants. Not repairing participants.", v9, 0xCu);
  MEMORY[0x231898D60](v9, -1, -1);
}

id sub_22B771BA0(void *a1)
{
  if ([a1 style] == 45)
  {
    result = [a1 participants];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
    v5 = sub_22B7DB918();

    v6 = v5 >> 62 ? sub_22B7DC1C8() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v6 >= 2)
    {
      if (qword_27D8CCC88 != -1)
      {
        swift_once();
      }

      v7 = sub_22B7DB2B8();
      sub_22B4CFA74(v7, qword_27D8CED08);
      v8 = sub_22B7DB298();
      v9 = sub_22B7DBC98();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_22B4CC000, v8, v9, "Chat has greater than 1 participant but 1-1 chat style, rewriting GUID and chat identifier", v10, 2u);
        MEMORY[0x231898D60](v10, -1, -1);
      }

      v11 = [v1 delegate];
      if (!v11 || (v12 = v11, v13 = [a1 account], v14 = objc_msgSend(v12, sel_chatRepairController_generateUnusedChatIdentifierForGroupChatWithAccount_, v1, v13), v13, swift_unknownObjectRelease(), !v14))
      {
        v20 = sub_22B7DB298();
        v21 = sub_22B7DBC98();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_22B4CC000, v20, v21, "Could not generate an unused chat identifier!", v22, 2u);
          MEMORY[0x231898D60](v22, -1, -1);
        }

        return 0;
      }

      [a1 setChatIdentifier_];

      [a1 setStyle_];
    }
  }

  [a1 style];
  result = [a1 chatIdentifier];
  if (!result)
  {
    return result;
  }

  v15 = result;
  v16 = [a1 serviceName];
  if (v16)
  {
    v17 = v16;
    v18 = IMCopyAnyServiceGUIDForChat();

    if (v18)
    {
      v19 = sub_22B7DB6A8();

      return v19;
    }
  }

  else
  {
  }

  return 0;
}

id IMDChatRepairController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_22B771F94()
{
  result = [objc_allocWithZone(IMDSpamFilteringHelper) init];
  qword_27D8CED38 = result;
  return result;
}

void __swiftcall IMDSpamFilteringHelper.init()(IMDSpamFilteringHelper *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_22B77205C()
{
  v1 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - v3;
  v5 = [objc_opt_self() sharedInstance];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 isInternalInstall];

    if (v7)
    {
      if (IMDisableSpamFilteringDebugUI())
      {
        if (qword_27D8CCC70 != -1)
        {
          swift_once();
        }

        v8 = sub_22B7DB2B8();
        sub_22B4CFA74(v8, qword_27D8D48B8);
        v16 = sub_22B7DB298();
        v9 = sub_22B7DBC78();
        if (os_log_type_enabled(v16, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_22B4CC000, v16, v9, "Server bag disabled spam filtering debug ui", v10, 2u);
          MEMORY[0x231898D60](v10, -1, -1);
        }

        v11 = v16;
      }

      else
      {
        v12 = sub_22B7DBA58();
        (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
        v13 = swift_allocObject();
        v13[2] = 0;
        v13[3] = 0;
        v13[4] = v0;
        v14 = v0;
        sub_22B77E3D4(0, 0, v4, &unk_22B7FBA50, v13);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22B772288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_22B7DB428();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B772348, 0, 0);
}

uint64_t sub_22B772348()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_22B7DB418();
  v3 = *(v2 + OBJC_IVAR___IMDSpamFilteringHelper_debugUIService);
  v4 = *(MEMORY[0x277D73C28] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_22B77242C;
  v6 = v0[5];

  return MEMORY[0x2821DBC00](v6);
}

uint64_t sub_22B77242C()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_22B7725BC;
  }

  else
  {
    v3 = sub_22B772540;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B772540()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22B7725BC()
{
  if (qword_27D8CCC70 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_27D8D48B8);
  v3 = v1;
  v4 = sub_22B7DB298();
  v5 = sub_22B7DBC98();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22B4CC000, v4, v5, "Failed to present spam filtering debug UI with error: %@", v8, 0xCu);
    sub_22B4D0D64(v9, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v9, -1, -1);
    MEMORY[0x231898D60](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v12 = v0[1];

  return v12();
}

void sub_22B7727D8(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    v10 = *a4;
    v11 = v10;
    if (a3)
    {
      a3 = sub_22B7DB678();
    }

    v12 = [v4 eventPayloadFor:a1 service:a3];

    v13 = sub_22B7DB588();
    sub_22B7B0AC8(v13);

    v14 = sub_22B7DB568();

    [v9 trackEvent:v10 withDictionary:v14];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22B77293C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  if (a4)
  {
    v8 = sub_22B7DB6A8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = a1;
  sub_22B7727D8(a3, v8, v10, a5);
}

id IMDSpamFilteringHelper.init()()
{
  v1 = OBJC_IVAR___IMDSpamFilteringHelper_debugUIService;
  v2 = sub_22B7DB448();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *&v0[v1] = sub_22B7DB438();
  v6.receiver = v0;
  v6.super_class = IMDSpamFilteringHelper;
  return objc_msgSendSuper2(&v6, sel_init);
}

unint64_t type metadata accessor for IMDSpamFilteringHelper()
{
  result = qword_27D8CED48;
  if (!qword_27D8CED48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8CED48);
  }

  return result;
}

unint64_t sub_22B772C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B7F93B0;
  v7 = *MEMORY[0x277D1A1C8];
  *(inited + 32) = sub_22B7DB6A8();
  v9 = MEMORY[0x277D83E88];
  *(inited + 72) = MEMORY[0x277D83E88];
  if ((a1 - 1) >= 5)
  {
    v10 = 0;
  }

  else
  {
    v10 = a1;
  }

  *(inited + 40) = v8;
  *(inited + 48) = v10;
  v11 = sub_22B71DF98(inited);
  swift_setDeallocating();
  sub_22B4D0D64(inited + 32, &qword_27D8CDB60, &qword_22B7FA360);
  v12 = *MEMORY[0x277D1A620];
  v13 = sub_22B7DB6A8();
  if (!a3)
  {

    v22 = *MEMORY[0x277D1A608];
    sub_22B7DB6A8();

    v23 = *MEMORY[0x277D1A610];
    sub_22B7DB6A8();

LABEL_17:
    v21 = 0;
    goto LABEL_20;
  }

  if (v13 == a2 && v14 == a3)
  {

    goto LABEL_19;
  }

  v16 = sub_22B7DC518();

  if (v16)
  {
LABEL_19:
    v21 = 1;
    goto LABEL_20;
  }

  v17 = *MEMORY[0x277D1A608];
  if (sub_22B7DB6A8() == a2 && v18 == a3)
  {

    v21 = 2;
    goto LABEL_20;
  }

  v20 = sub_22B7DC518();

  if ((v20 & 1) == 0)
  {
    v30 = *MEMORY[0x277D1A610];
    if (sub_22B7DB6A8() == a2 && v31 == a3)
    {

      v21 = 3;
      goto LABEL_20;
    }

    v32 = sub_22B7DC518();

    if (v32)
    {
      v21 = 3;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v21 = 2;
LABEL_20:
  v24 = *MEMORY[0x277D1A1C0];
  v25 = sub_22B7DB6A8();
  v27 = v26;
  v35 = v9;
  *&v34 = v21;
  sub_22B4D7F04(&v34, v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22B769174(v33, v25, v27, isUniquelyReferenced_nonNull_native);

  return v11;
}

uint64_t sub_22B772EE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B6F0D94;

  return sub_22B772288(a1, v4, v5, v6);
}

uint64_t sub_22B772F9C(uint64_t a1)
{
  result = MEMORY[0x231895490](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 56) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_22B7C9068(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_22B7730B8(void *a1, uint64_t a2)
{
  result = [a1 participants];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
  v6 = sub_22B7DB918();

  if (v6 >> 62)
  {
LABEL_22:
    v7 = sub_22B7DC1C8();
    if (v7)
    {
LABEL_4:
      v8 = 0;
      v21 = MEMORY[0x277D84F90];
      do
      {
        v9 = v8;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x231895C80](v9, v6);
          }

          else
          {
            if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v10 = *(v6 + 8 * v9 + 32);
          }

          v11 = v10;
          v8 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

          v12 = [v10 ID];
          if (v12)
          {
            break;
          }

          ++v9;
          if (v8 == v7)
          {
            goto LABEL_24;
          }
        }

        v20 = a2;
        v13 = v12;
        v14 = sub_22B7DB6A8();
        v19 = v15;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_22B71BD80(0, *(v21 + 2) + 1, 1, v21);
        }

        v17 = *(v21 + 2);
        v16 = *(v21 + 3);
        if (v17 >= v16 >> 1)
        {
          v21 = sub_22B71BD80((v16 > 1), v17 + 1, 1, v21);
        }

        *(v21 + 2) = v17 + 1;
        v18 = &v21[16 * v17];
        a2 = v20;
        *(v18 + 4) = v14;
        *(v18 + 5) = v19;
      }

      while (v8 != v7);
      goto LABEL_24;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }
  }

  v21 = MEMORY[0x277D84F90];
LABEL_24:

  sub_22B7775E4(a1, v21, a2);
}

void sub_22B7732D8(void *a1)
{
  [a1 invalidate];
  if (qword_28141F378 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422638);
  v3 = v1;
  oslog = sub_22B7DB298();
  v4 = sub_22B7DBCB8();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412546;
    *(v5 + 4) = v3;
    *v6 = v3;
    *(v5 + 12) = 2112;
    v7 = *&v3[OBJC_IVAR___IMDScheduledMessageCoordinator_timer];
    *(v5 + 14) = v7;
    v6[1] = v7;
    v8 = v3;
    v9 = v7;
    _os_log_impl(&dword_22B4CC000, oslog, v4, "%@ Updated timer to %@", v5, 0x16u);
    sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v6, -1, -1);
    MEMORY[0x231898D60](v5, -1, -1);
  }
}

char *sub_22B773558(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v46 = a4;
  v9 = sub_22B7DBD48();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v9);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22B7DBD38();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_22B7DB398();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  *&v5[OBJC_IVAR___IMDScheduledMessageCoordinator_membershipObserver] = 0;
  *&v5[OBJC_IVAR___IMDScheduledMessageCoordinator_blocklistObserver] = 0;
  v5[OBJC_IVAR___IMDScheduledMessageCoordinator_isFirstFire] = 1;
  *&v5[OBJC_IVAR___IMDScheduledMessageCoordinator_timer] = 0;
  *&v5[OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession] = a1;
  *&v5[OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore] = a2;
  *&v5[OBJC_IVAR___IMDScheduledMessageCoordinator_chatRegistry] = a3;
  v39 = sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v48 = 0;
  v49 = 0xE000000000000000;
  v16 = a1;
  v45 = a2;
  v40 = a3;
  sub_22B7DC2E8();

  v48 = 0xD00000000000001CLL;
  v49 = 0x800000022B810D10;
  v44 = v16;
  v17 = [v16 displayName];
  v18 = sub_22B7DB6A8();
  v20 = v19;

  MEMORY[0x231895140](v18, v20);

  sub_22B7DACD8();
  v48 = MEMORY[0x277D84F90];
  sub_22B77E294(&unk_28141F220, MEMORY[0x277D85230]);
  sub_22B6F0AD4(&qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B714FD8(&qword_28141F2C0, &qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B7DC138();
  (*(v42 + 104))(v41, *MEMORY[0x277D85260], v43);
  *&v5[OBJC_IVAR___IMDScheduledMessageCoordinator_queue] = sub_22B7DBD88();
  v47.receiver = v5;
  v47.super_class = IMDScheduledMessageCoordinator;
  v21 = objc_msgSendSuper2(&v47, sel_init);
  v22 = objc_allocWithZone(type metadata accessor for ScheduledMessageMembershipObserver());
  v23 = v21;
  v24 = v40;
  v25 = v23;
  v26 = sub_22B78C308(v25, v24);
  v27 = *&v25[OBJC_IVAR___IMDScheduledMessageCoordinator_membershipObserver];
  *&v25[OBJC_IVAR___IMDScheduledMessageCoordinator_membershipObserver] = v26;

  if (qword_28141F378 != -1)
  {
    swift_once();
  }

  v28 = sub_22B7DB2B8();
  sub_22B4CFA74(v28, qword_281422638);
  v29 = v44;
  v30 = sub_22B7DB298();
  v31 = sub_22B7DBCB8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412546;
    *(v32 + 4) = v25;
    *(v32 + 12) = 2112;
    *(v32 + 14) = v29;
    *v33 = v25;
    v33[1] = v29;
    v34 = v29;
    v35 = v25;
    _os_log_impl(&dword_22B4CC000, v30, v31, "Init %@ serviceSession: %@", v32, 0x16u);
    sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v33, -1, -1);
    MEMORY[0x231898D60](v32, -1, -1);
  }

  v36 = v25;
  [v29 addDelegate_];
  v37 = v46;
  [v46 addListener_];

  return v36;
}

id sub_22B773AC0()
{
  if (qword_28141F378 != -1)
  {
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  sub_22B4CFA74(v1, qword_281422638);
  v2 = v0;
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Deinit %@", v5, 0xCu);
    sub_22B4D0D64(v6, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v6, -1, -1);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  v8 = *&v2[OBJC_IVAR___IMDScheduledMessageCoordinator_timer];
  *&v2[OBJC_IVAR___IMDScheduledMessageCoordinator_timer] = 0;

  v10.receiver = v2;
  v10.super_class = IMDScheduledMessageCoordinator;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

uint64_t sub_22B773CF8(double a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (qword_28141F378 != -1)
  {
    swift_once();
  }

  v5 = sub_22B7DB2B8();
  sub_22B4CFA74(v5, qword_281422638);
  v6 = sub_22B7DB298();
  v7 = sub_22B7DBCB8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = a1;
    _os_log_impl(&dword_22B4CC000, v6, v7, "Received request to update timer to %f", v8, 0xCu);
    MEMORY[0x231898D60](v8, -1, -1);
  }

  v9 = *&v2[OBJC_IVAR___IMDScheduledMessageCoordinator_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v2;
  *(v10 + 32) = ObjectType;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22B77E2DC;
  *(v11 + 24) = v10;
  v16[4] = sub_22B77E2E8;
  v16[5] = v11;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_22B716E5C;
  v16[3] = &unk_283F1E7D8;
  v12 = _Block_copy(v16);
  v13 = v2;

  dispatch_sync(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_22B773F2C(char *a1, double a2)
{
  v4 = sub_22B7DA968();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  if (a2 >= 0.0)
  {
    v16 = OBJC_IVAR___IMDScheduledMessageCoordinator_timer;
    v17 = *&a1[OBJC_IVAR___IMDScheduledMessageCoordinator_timer];
    if (v17)
    {
      v18 = v17;
      v19 = [v18 fireDate];
      if (v19)
      {
        v20 = v19;
        sub_22B7DA928();

        sub_22B7DA8E8();
        v22 = v21;
        v23 = *(v5 + 8);
        v23(v11, v4);
        if (v22 > a2)
        {

          goto LABEL_13;
        }

        if (qword_28141F378 != -1)
        {
          swift_once();
        }

        v45 = sub_22B7DB2B8();
        sub_22B4CFA74(v45, qword_281422638);
        v46 = v18;
        v47 = sub_22B7DB298();
        v48 = sub_22B7DBCB8();
        if (!os_log_type_enabled(v47, v48))
        {

          return;
        }

        v49 = swift_slowAlloc();
        *v49 = 134218240;
        v50 = [v46 fireDate];

        if (v50)
        {
          sub_22B7DA928();

          sub_22B7DA8E8();
          v52 = v51;
          v23(v9, v4);
          *(v49 + 4) = v52;
          *(v49 + 12) = 2048;
          *(v49 + 14) = a2;
          _os_log_impl(&dword_22B4CC000, v47, v48, "Not updating timer since existing timer interval is sooner. Existing: %f vs requested: %f", v49, 0x16u);
          MEMORY[0x231898D60](v49, -1, -1);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

LABEL_13:
    v60[0] = sub_22B7DC6F8();
    v60[1] = v24;
    MEMORY[0x231895140](45, 0xE100000000000000);
    v25 = [*&a1[OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession] displayName];
    v26 = sub_22B7DB6A8();
    v28 = v27;

    MEMORY[0x231895140](v26, v28);

    v30 = type metadata accessor for IMDScheduledMessageCoordinator(v29);
    v60[3] = v30;
    v60[0] = a1;
    v58 = 0u;
    v59 = 0u;
    v31 = a1;
    v32 = sub_22B7DB678();

    if (v30)
    {
      v33 = sub_22B4D2BCC(v60, v30);
      v34 = *(v30 - 8);
      v35 = *(v34 + 64);
      MEMORY[0x28223BE20](v33);
      v37 = &v56 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v34 + 16))(v37);
      v38 = sub_22B7DC508();
      (*(v34 + 8))(v37, v30);
      sub_22B4CFB78(v60);
      v39 = *(&v59 + 1);
      if (*(&v59 + 1))
      {
        v40 = sub_22B4D2BCC(&v58, *(&v59 + 1));
        v41 = *(v39 - 8);
        v42 = *(v41 + 64);
        MEMORY[0x28223BE20](v40);
        v44 = &v56 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v41 + 16))(v44);
        v30 = sub_22B7DC508();
        (*(v41 + 8))(v44, v39);
        sub_22B4CFB78(&v58);
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v38 = 0;
    }

    v53 = [objc_allocWithZone(MEMORY[0x277D192B8]) initWithTimeInterval:v32 name:1 shouldWake:v38 target:sel_timerDidFire selector:v30 userInfo:a2];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v54 = *&a1[v16];
    *&a1[v16] = v53;
    v55 = v53;
    sub_22B7732D8(v54);

    return;
  }

  if (qword_28141F378 != -1)
  {
    swift_once();
  }

  v12 = sub_22B7DB2B8();
  sub_22B4CFA74(v12, qword_281422638);
  v57 = sub_22B7DB298();
  v13 = sub_22B7DBC98();
  if (os_log_type_enabled(v57, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22B4CC000, v57, v13, "Invalid update time requested, not updating timer.", v14, 2u);
    MEMORY[0x231898D60](v14, -1, -1);
  }

  v15 = v57;
}

void sub_22B7745EC(void *a1, void *a2)
{
  v4 = sub_22B7DAAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 body];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 __im_messagePartIndexes];

    sub_22B7DAA88();
    v12 = sub_22B7DAA78();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v12 = 0;
  }

  [a1 setFailedRetractPartIndexes_];
}

id sub_22B774738(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  sub_22B7745EC(a1, a3);
  if (v3)
  {
    goto LABEL_16;
  }

  v8 = *(a2 + OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore);
  v4 = [v8 storeMessage:a1 forceReplace:1 modifyError:1 modifyFlags:1 flagMask:{objc_msgSend(a1, sel_flags)}];
  v9 = [v8 chatForMessage_];
  if (!v9)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v15 = sub_22B7DB2B8();
    sub_22B4CFA74(v15, qword_281422638);
    v10 = v4;
    v16 = sub_22B7DB298();
    v17 = sub_22B7DBC98();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v10;
      *v19 = v10;
      v20 = v10;
      _os_log_impl(&dword_22B4CC000, v16, v17, "Failed to find chat for message: %@", v18, 0xCu);
      sub_22B4D0D64(v19, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v19, -1, -1);
      MEMORY[0x231898D60](v18, -1, -1);
    }

    sub_22B77E1E0();
    swift_allocError();
    *v21 = 2;
    swift_willThrow();
    v4 = v5;
    goto LABEL_15;
  }

  v10 = v9;
  v11 = [v4 accountID];
  if (!v11)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v22 = sub_22B7DB2B8();
    sub_22B4CFA74(v22, qword_281422638);
    v23 = sub_22B7DB298();
    v24 = sub_22B7DBC98();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22B4CC000, v23, v24, "Failed to find accountID from message.", v25, 2u);
      MEMORY[0x231898D60](v25, -1, -1);
    }

    sub_22B77E1E0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();

LABEL_15:
    v5 = v10;
LABEL_16:

    return v4;
  }

  v12 = v11;
  v13 = [*(a2 + OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession) broadcasterForChatListeners];
  v14 = [v10 chatIdentifier];
  [v13 account:v12 chat:v14 style:objc_msgSend(v10 messageUpdated:{sel_style), v4}];

  swift_unknownObjectRelease();
  return v4;
}

id sub_22B774AE0(void *a1, uint64_t a2)
{
  [a1 setScheduleState_];
  v4 = *(a2 + OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore);
  v5 = [v4 storeMessage:a1 forceReplace:1 modifyError:1 modifyFlags:1 flagMask:{objc_msgSend(a1, sel_flags)}];
  v6 = [v4 chatForMessage_];
  if (!v6)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v12 = sub_22B7DB2B8();
    sub_22B4CFA74(v12, qword_281422638);
    v7 = v5;
    v13 = sub_22B7DB298();
    v14 = sub_22B7DBC98();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v7;
      *v16 = v7;
      v17 = v7;
      _os_log_impl(&dword_22B4CC000, v13, v14, "Failed to find chat for message: %@", v15, 0xCu);
      sub_22B4D0D64(v16, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v16, -1, -1);
      MEMORY[0x231898D60](v15, -1, -1);
    }

    sub_22B77E1E0();
    swift_allocError();
    *v18 = 2;
    swift_willThrow();
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v5 accountID];
  if (!v8)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v19 = sub_22B7DB2B8();
    sub_22B4CFA74(v19, qword_281422638);
    v20 = sub_22B7DB298();
    v21 = sub_22B7DBC98();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22B4CC000, v20, v21, "Failed to find accountID from message.", v22, 2u);
      MEMORY[0x231898D60](v22, -1, -1);
    }

    sub_22B77E1E0();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();

LABEL_14:
    return v5;
  }

  v9 = v8;
  v10 = [*(a2 + OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession) broadcasterForChatListeners];
  v11 = [v7 chatIdentifier];
  [v10 account:v9 chat:v11 style:objc_msgSend(v7 messageUpdated:{sel_style), v5}];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_22B774E70(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_22B7AB6B4(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_22B4D1F68(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22B7AB6B4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_22B775020(void *a1)
{
  v3 = sub_22B7DA968();
  v74 = *(v3 - 8);
  v4 = *(v74 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v71 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v68 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v75 = &v68 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v68 - v12;
  v14 = sub_22B7DB3A8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&v1[OBJC_IVAR___IMDScheduledMessageCoordinator_queue];
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14);
  v20 = v19;
  LOBYTE(v19) = sub_22B7DB3B8();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v70 = v9;
    if (qword_28141F378 == -1)
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
  v21 = sub_22B7DB2B8();
  v22 = sub_22B4CFA74(v21, qword_281422638);
  v23 = v1;
  v24 = a1;
  v73 = v22;
  v25 = sub_22B7DB298();
  v26 = sub_22B7DBCB8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412546;
    *(v27 + 4) = v23;
    *(v27 + 12) = 2112;
    *(v27 + 14) = v24;
    *v28 = v23;
    v28[1] = v24;
    v29 = v23;
    v30 = v24;
    _os_log_impl(&dword_22B4CC000, v25, v26, "%@ Handling message %@", v27, 0x16u);
    sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v28, -1, -1);
    MEMORY[0x231898D60](v27, -1, -1);
  }

  v31 = [v24 time];
  if (!v31)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v32 = v31;
  sub_22B7DA928();

  v33 = v75;
  sub_22B7DA938();
  sub_22B77E294(&qword_281420E90, MEMORY[0x277CC9578]);
  LOBYTE(v32) = sub_22B7DB608();
  v34 = *(v74 + 8);
  v34(v33, v3);
  v34(v13, v3);
  v35 = v23;
  v36 = v24;
  v37 = v36;
  if (v32)
  {
    v38 = sub_22B7DB298();
    v39 = sub_22B7DBC98();

    if (!os_log_type_enabled(v38, v39))
    {

      goto LABEL_15;
    }

    LODWORD(v72) = v39;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v76 = v73;
    *v40 = 138413058;
    *(v40 + 4) = v35;
    *(v40 + 12) = 2112;
    *(v40 + 14) = v37;
    *v41 = v35;
    v41[1] = v37;
    v69 = v41;
    *(v40 + 22) = 2080;
    v42 = v35;
    v43 = v37;
    v44 = [v43 time];

    if (v44)
    {
      v45 = v71;
      sub_22B7DA928();

      v46 = v70;
      (*(v74 + 32))(v70, v45, v3);
      sub_22B77E294(&qword_27D8CD8D0, MEMORY[0x277CC9578]);
      v47 = sub_22B7DC4E8();
      v49 = v48;
      v34(v46, v3);
      v50 = sub_22B4CFAAC(v47, v49, &v76);

      *(v40 + 24) = v50;
      *(v40 + 32) = 2080;
      v51 = v75;
      sub_22B7DA938();
      v52 = sub_22B7DC4E8();
      v54 = v53;
      v34(v51, v3);
      v55 = sub_22B4CFAAC(v52, v54, &v76);

      *(v40 + 34) = v55;
      _os_log_impl(&dword_22B4CC000, v38, v72, "%@ not handling message: %@ because it is scheduled for the future. %s vs now %s", v40, 0x2Au);
      sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
      v56 = v69;
      swift_arrayDestroy();
      MEMORY[0x231898D60](v56, -1, -1);
      v57 = v73;
      swift_arrayDestroy();
      MEMORY[0x231898D60](v57, -1, -1);
      MEMORY[0x231898D60](v40, -1, -1);
LABEL_15:

      sub_22B77E1E0();
      swift_allocError();
      *v67 = 0;
LABEL_16:
      swift_willThrow();
      return;
    }

    goto LABEL_21;
  }

  v58 = v72;
  v59 = sub_22B77B2D0(v36, v35, v36, v35);
  if (v58)
  {

    v60 = v58;
    v61 = sub_22B7DB298();
    v62 = sub_22B7DBC98();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412290;
      v65 = v58;
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 4) = v66;
      *v64 = v66;
      _os_log_impl(&dword_22B4CC000, v61, v62, "Could not mark the message state as TimeElapsed. Error: %@", v63, 0xCu);
      sub_22B4D0D64(v64, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v64, -1, -1);
      MEMORY[0x231898D60](v63, -1, -1);
    }

    goto LABEL_16;
  }

  sub_22B775A20(v37);
  sub_22B775B98(v37);
}

id sub_22B775808(void *a1, id a2, void *a3)
{
  v6 = [a2 scheduleState];
  if (v6 > 5)
  {
LABEL_9:
    sub_22B77E1E0();
    swift_allocError();
    *v16 = 3;
    return swift_willThrow();
  }

  if (v6 != 2)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v7 = sub_22B7DB2B8();
    sub_22B4CFA74(v7, qword_281422638);
    v8 = a2;
    v9 = a3;
    v10 = sub_22B7DB298();
    v11 = sub_22B7DBC98();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412546;
      *(v12 + 4) = v9;
      *v13 = v9;
      *(v12 + 12) = 2048;
      v14 = v9;
      v15 = [v8 scheduleState];

      *(v12 + 14) = v15;
      _os_log_impl(&dword_22B4CC000, v10, v11, "%@ can't modify message to timeElapsed since it's in an invalid state. %lu", v12, 0x16u);
      sub_22B4D0D64(v13, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v13, -1, -1);
      MEMORY[0x231898D60](v12, -1, -1);
    }

    else
    {

      v10 = v8;
    }

    goto LABEL_9;
  }

  [a1 setScheduleState_];
  return [a3 removeFailedEditsFrom_];
}

void sub_22B775A20(void *a1)
{
  v2 = [a1 fileTransferGUIDs];
  if (v2)
  {
    v3 = v2;
    v4 = sub_22B7DB918();

    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession;
      v8 = (v4 + 40);
      while (v6 < *(v4 + 16))
      {
        v10 = *(v8 - 1);
        v9 = *v8;
        v11 = objc_opt_self();

        v12 = [v11 sharedInstance];
        if (!v12)
        {
          goto LABEL_14;
        }

        v13 = v12;
        v14 = sub_22B7DB678();

        v15 = [v13 transferForGUID_];

        if (v15)
        {
          [*(v1 + v7) renewTTLForScheduledAttachmentTransfer_];
        }

        ++v6;
        v8 += 2;
        if (v5 == v6)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    else
    {
LABEL_9:
    }
  }
}

void sub_22B775B98(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore) chatForMessage_];
  if (v3)
  {
    oslog = v3;
    sub_22B777DD8(v3);
  }

  else
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v4 = sub_22B7DB2B8();
    sub_22B4CFA74(v4, qword_281422638);
    v5 = a1;
    oslog = sub_22B7DB298();
    v6 = sub_22B7DBC98();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v5;
      *v8 = v5;
      v9 = v5;
      _os_log_impl(&dword_22B4CC000, oslog, v6, "Failed to find chat for scheduled message: %@", v7, 0xCu);
      sub_22B4D0D64(v8, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v8, -1, -1);
      MEMORY[0x231898D60](v7, -1, -1);
    }
  }
}

void sub_22B775D70()
{
  v1 = v0;
  v109 = sub_22B7DA968();
  v101 = *(v109 - 8);
  v2 = *(v101 + 64);
  v3 = MEMORY[0x28223BE20](v109);
  v5 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v107 = &v100 - v7;
  MEMORY[0x28223BE20](v6);
  v111 = &v100 - v8;
  v9 = sub_22B6F0AD4(&qword_27D8CEEB0, &qword_22B7FBAB0);
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v100 - v12;
  v108 = sub_22B6F0AD4(&qword_27D8CEEB8, &qword_22B7FBAB8);
  v112 = *(v108 - 8);
  v14 = *(v112 + 64);
  v15 = MEMORY[0x28223BE20](v108);
  v17 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v110 = &v100 - v18;
  v19 = sub_22B7DB3A8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  *v23 = sub_22B7DBD58();
  (*(v20 + 104))(v23, *MEMORY[0x277D85200], v19);
  v24 = sub_22B7DB3B8();
  v26 = *(v20 + 8);
  v25 = v20 + 8;
  v26(v23, v19);
  if ((v24 & 1) == 0)
  {
    goto LABEL_26;
  }

  v25 = v10;
  v100 = v5;
  if (qword_28141F378 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v27 = sub_22B7DB2B8();
    v28 = sub_22B4CFA74(v27, qword_281422638);
    v29 = v1;
    v103 = v28;
    v30 = sub_22B7DB298();
    v31 = sub_22B7DBCB8();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v108;
    if (v32)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v29;
      *v35 = v29;
      v36 = v29;
      _os_log_impl(&dword_22B4CC000, v30, v31, "%@ Timer fired", v34, 0xCu);
      sub_22B4D0D64(v35, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v35, -1, -1);
      MEMORY[0x231898D60](v34, -1, -1);
    }

    v37 = *&v29[OBJC_IVAR___IMDScheduledMessageCoordinator_timer];
    *&v29[OBJC_IVAR___IMDScheduledMessageCoordinator_timer] = 0;
    sub_22B7732D8(v37);

    v104 = v29;
    v38 = [*&v29[OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore] scheduledMessagesBatchFetcher];
    sub_22B4D01A0(0, &unk_28141F240, 0x277D18ED0);
    sub_22B4D01A0(0, &qword_28141F0C8, 0x277D18ED8);
    v39 = v110;
    v102 = v38;
    sub_22B7DBD08();
    v40 = MEMORY[0x277D84F90];
    v113[0] = MEMORY[0x277D84F90];
    (*(v112 + 16))(v17, v39, v33);
    sub_22B714FD8(&qword_28141F450, &qword_27D8CEEB8, &qword_22B7FBAB8);
    sub_22B7DB8A8();
    sub_22B714FD8(&qword_28141F458, &qword_27D8CEEB0, &qword_22B7FBAB0);
    v17 = 0;
    v41 = v40;
    while (1)
    {
      sub_22B7DC0B8();
      v42 = v115;
      if (!v115)
      {
        break;
      }

      v43 = sub_22B776A24();

      if (v43)
      {
        MEMORY[0x231895260]();
        if (*((v113[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v44 = *((v113[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22B7DB938();
        }

        sub_22B7DB968();
        v41 = v113[0];
      }
    }

    (*(v25 + 8))(v13, v9);
    (*(v112 + 8))(v110, v33);
    v113[0] = v40;
    if (v41 >> 62)
    {
      break;
    }

    v13 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = v104;
    if (!v13)
    {
      goto LABEL_29;
    }

LABEL_13:
    v45 = 0;
    v1 = (v41 & 0xC000000000000001);
    v25 = v41 & 0xFFFFFFFFFFFFFF8;
    v112 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v1)
      {
        v46 = MEMORY[0x231895C80](v45, v41);
      }

      else
      {
        if (v45 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v46 = *(v41 + 8 * v45 + 32);
      }

      v47 = v46;
      v48 = (v45 + 1);
      if (__OFADD__(v45, 1))
      {
        break;
      }

      v115 = v46;
      sub_22B776D00(&v115, v9, &v114);

      if (v114)
      {
        MEMORY[0x231895260]();
        if (*((v113[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v49 = *((v113[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22B7DB938();
          v9 = v104;
        }

        sub_22B7DB968();
        v112 = v113[0];
      }

      ++v45;
      if (v48 == v13)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

  v13 = sub_22B7DC1C8();
  v9 = v104;
  if (v13)
  {
    goto LABEL_13;
  }

LABEL_29:
  v112 = MEMORY[0x277D84F90];
LABEL_30:

  if (v112 >> 62)
  {
    goto LABEL_59;
  }

  v50 = v111;
  v108 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v108)
  {
    while (1)
    {
      v106 = v112 & 0xC000000000000001;
      if ((v112 & 0xC000000000000001) != 0)
      {
        v99 = MEMORY[0x231895C80](0, v112);
      }

      else
      {
        if (!*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        v99 = *(v112 + 32);
      }

      v110 = v99;
      v51 = &selRef_smsRelayService;
      if (v108 == 1)
      {
        break;
      }

      v105 = v112 & 0xFFFFFFFFFFFFFF8;
      v66 = (v101 + 8);
      v67 = 1;
      while (1)
      {
        if (v106)
        {
          v68 = MEMORY[0x231895C80](v67, v112);
        }

        else
        {
          if ((v67 & 0x8000000000000000) != 0)
          {
            goto LABEL_57;
          }

          if (v67 >= *(v105 + 16))
          {
            goto LABEL_58;
          }

          v68 = *(v112 + 8 * v67 + 32);
        }

        v9 = v68;
        v69 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          break;
        }

        v70 = [v68 v51[257]];
        if (!v70)
        {
          goto LABEL_67;
        }

        v71 = v70;
        sub_22B7DA928();

        v72 = v51;
        v73 = [v110 v51[257]];
        if (!v73)
        {
          goto LABEL_68;
        }

        v74 = v73;
        v75 = v107;
        sub_22B7DA928();

        LOBYTE(v74) = sub_22B7DA8D8();
        v76 = v50;
        v77 = *v66;
        v78 = v75;
        v79 = v109;
        (*v66)(v78, v109);
        v77(v76, v79);
        if (v74)
        {

          v110 = v9;
          ++v67;
          v50 = v111;
          v51 = v72;
          if (v69 == v108)
          {
            goto LABEL_38;
          }
        }

        else
        {

          ++v67;
          v50 = v111;
          v51 = v72;
          if (v69 == v108)
          {
            goto LABEL_37;
          }
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      v80 = sub_22B7DC1C8();
      v50 = v111;
      v108 = v80;
      if (!v80)
      {
        goto LABEL_60;
      }
    }

LABEL_37:
    v9 = v110;
LABEL_38:

    v52 = v9;
    v53 = sub_22B7DB298();
    v54 = sub_22B7DBCB8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = v51;
      v57 = swift_slowAlloc();
      *v55 = 138412290;
      *(v55 + 4) = v52;
      *v57 = v52;
      v58 = v52;
      _os_log_impl(&dword_22B4CC000, v53, v54, "Found message scheduled for the future: %@. Updating timer.", v55, 0xCu);
      sub_22B4D0D64(v57, &unk_27D8CEC60, &qword_22B7F9E20);
      v59 = v57;
      v51 = v56;
      MEMORY[0x231898D60](v59, -1, -1);
      MEMORY[0x231898D60](v55, -1, -1);
    }

    v60 = [v52 v51[257]];
    v9 = v104;
    v61 = v100;
    if (v60)
    {
      v62 = v60;
      sub_22B7DA928();

      sub_22B7DA8E8();
      v64 = v63;
      (*(v101 + 8))(v61, v109);
      [v9 updateTimerForTimeInterval_];
      v65 = v52;
      goto LABEL_63;
    }

LABEL_69:
    __break(1u);
  }

  else
  {
LABEL_60:

    v52 = sub_22B7DB298();
    v81 = sub_22B7DBCB8();
    if (os_log_type_enabled(v52, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_22B4CC000, v52, v81, "No future scheduled messages found. Not re-setting up timer.", v82, 2u);
      MEMORY[0x231898D60](v82, -1, -1);
    }

    v65 = 0;
LABEL_63:

    if (v9[OBJC_IVAR___IMDScheduledMessageCoordinator_isFirstFire] == 1)
    {
      v9[OBJC_IVAR___IMDScheduledMessageCoordinator_isFirstFire] = 0;
      v83 = *&v9[OBJC_IVAR___IMDScheduledMessageCoordinator_chatRegistry];
      v84 = type metadata accessor for ScheduledMessageBlocklistController();
      v85 = objc_allocWithZone(v84);
      v86 = v83;
      v87 = [v85 init];
      v113[3] = v84;
      v113[4] = &off_283F20C90;
      v113[0] = v87;
      type metadata accessor for ScheduledMessageBlocklistObserver();
      v88 = swift_allocObject();
      v89 = sub_22B6F6540(v113, v84);
      v90 = *(*(v84 - 1) + 64);
      MEMORY[0x28223BE20](v89);
      v92 = (&v100 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v93 + 16))(v92);
      v94 = *v92;
      v95 = v9;
      v96 = v87;
      v97 = sub_22B779E08(v95, v86, v94, v88);

      sub_22B4CFB78(v113);
      v98 = *&v95[OBJC_IVAR___IMDScheduledMessageCoordinator_blocklistObserver];
      *&v95[OBJC_IVAR___IMDScheduledMessageCoordinator_blocklistObserver] = v97;
    }

    else
    {
    }
  }
}

uint64_t sub_22B776A24()
{
  v18 = *MEMORY[0x277D85DE8];
  if ([v0 itemType])
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v1 = sub_22B7DB2B8();
    sub_22B4CFA74(v1, qword_281422638);
    v2 = v0;
    v3 = sub_22B7DB298();
    v4 = sub_22B7DBCA8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = [v2 itemType];

      _os_log_impl(&dword_22B4CC000, v3, v4, "Received invalid message type: %lld when fetching message types.", v5, 0xCu);
      MEMORY[0x231898D60](v5, -1, -1);
LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v6 = v0;
  v7 = IMDCreateIMMessageItemFromIMDMessageRecordRef(v6, 0);
  if (!v7)
  {
LABEL_11:
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v12 = sub_22B7DB2B8();
    sub_22B4CFA74(v12, qword_281422638);
    v3 = v6;
    v13 = sub_22B7DB298();
    v14 = sub_22B7DBCA8();
    if (!os_log_type_enabled(v13, v14))
    {

      goto LABEL_16;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    *(v15 + 4) = v3;
    *v16 = v3;
    *(v15 + 12) = 2048;
    *(v15 + 14) = [v3 itemType];
    _os_log_impl(&dword_22B4CC000, v13, v14, "Failed to create IMMessageItem from fetched message record. %@, type: %lld", v15, 0x16u);
    sub_22B4D0D64(v16, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v16, -1, -1);
    MEMORY[0x231898D60](v15, -1, -1);

LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

    goto LABEL_11;
  }

  v10 = v9;

  result = v10;
LABEL_18:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22B776D00(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v58 = a3;
  v5 = sub_22B7DA968();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v55 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v56 = &v52 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v52 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  v17 = *a1;
  v18 = [*a1 time];
  if (!v18)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v19 = v18;
  sub_22B7DA928();

  sub_22B7DA938();
  sub_22B77E294(&qword_281420E90, MEMORY[0x277CC9578]);
  LOBYTE(v19) = sub_22B7DB608();
  v20 = *(v6 + 8);
  v20(v14, v5);
  v21 = (v20)(v16, v5);
  if (v19)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v22 = sub_22B7DB2B8();
    sub_22B4CFA74(v22, qword_281422638);
    v23 = v17;
    v24 = sub_22B7DB298();
    v25 = sub_22B7DBCB8();
    if (!os_log_type_enabled(v24, v25))
    {

      goto LABEL_14;
    }

    v26 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v60 = v53;
    v54 = v26;
    *v26 = 136315138;
    v27 = [v23 time];

    if (v27)
    {
      v28 = v55;
      sub_22B7DA928();

      v29 = v56;
      (*(v6 + 32))(v56, v28, v5);
      sub_22B77E294(&qword_27D8CD8D0, MEMORY[0x277CC9578]);
      v30 = sub_22B7DC4E8();
      v32 = v31;
      v20(v29, v5);
      v33 = sub_22B4CFAAC(v30, v32, &v60);

      v34 = v54;
      *(v54 + 1) = v33;
      _os_log_impl(&dword_22B4CC000, v24, v25, "Found message scheduled for the future: %s.", v34, 0xCu);
      v35 = v53;
      sub_22B4CFB78(v53);
      MEMORY[0x231898D60](v35, -1, -1);
      MEMORY[0x231898D60](v34, -1, -1);
LABEL_14:

      *v58 = v23;
      v51 = v23;
      return;
    }

    goto LABEL_18;
  }

  v36 = *(a2 + OBJC_IVAR___IMDScheduledMessageCoordinator_queue);
  MEMORY[0x28223BE20](v21);
  *(&v52 - 2) = a2;
  *(&v52 - 1) = v17;
  v37 = v57;
  sub_22B7DBD68();
  if (v37)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v38 = sub_22B7DB2B8();
    sub_22B4CFA74(v38, qword_281422638);
    v39 = v17;
    v40 = v37;
    v41 = sub_22B7DB298();
    v42 = sub_22B7DBC98();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v60 = v45;
      *v43 = 138412546;
      *(v43 + 4) = v39;
      *v44 = v39;
      *(v43 + 12) = 2080;
      v59 = v37;
      v46 = v39;
      v47 = v37;
      sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
      v48 = sub_22B7DB6C8();
      v50 = sub_22B4CFAAC(v48, v49, &v60);

      *(v43 + 14) = v50;
      _os_log_impl(&dword_22B4CC000, v41, v42, "Failed to handle message: %@, error: %s", v43, 0x16u);
      sub_22B4D0D64(v44, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v44, -1, -1);
      sub_22B4CFB78(v45);
      MEMORY[0x231898D60](v45, -1, -1);
      MEMORY[0x231898D60](v43, -1, -1);
    }

    else
    {
    }
  }

  *v58 = 0;
}

uint64_t sub_22B777350()
{
  v1 = v0;
  sub_22B7DC2E8();
  MEMORY[0x231895140](0xD000000000000025, 0x800000022B810CC0);
  sub_22B7DC428();
  MEMORY[0x231895140](0xD000000000000012, 0x800000022B810CF0);
  v2 = [*(v0 + OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession) description];
  v3 = sub_22B7DB6A8();
  v5 = v4;

  MEMORY[0x231895140](v3, v5);

  MEMORY[0x231895140](0x3A72656D6974202CLL, 0xE900000000000020);
  v6 = *(v1 + OBJC_IVAR___IMDScheduledMessageCoordinator_timer);
  sub_22B6F0AD4(&unk_27D8CEF18, &qword_22B7FBAE0);
  v7 = sub_22B7DB6C8();
  MEMORY[0x231895140](v7);

  MEMORY[0x231895140](41, 0xE100000000000000);
  return 0;
}

void __swiftcall IMDScheduledMessageCoordinator.init()(IMDScheduledMessageCoordinator *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_22B7775E4(void *a1, uint64_t a2, uint64_t a3)
{
  v63 = a3;
  v5 = sub_22B6F0AD4(&qword_27D8CEEB0, &qword_22B7FBAB0);
  v59 = *(v5 - 8);
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v55 - v7;
  v9 = sub_22B6F0AD4(&qword_27D8CEEB8, &qword_22B7FBAB8);
  v61 = *(v9 - 1);
  v10 = *(v61 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v60 = &v55 - v14;
  if (qword_28141F378 != -1)
  {
LABEL_32:
    swift_once();
  }

  v15 = sub_22B7DB2B8();
  v16 = sub_22B4CFA74(v15, qword_281422638);
  v17 = a1;

  v62 = v16;
  v18 = sub_22B7DB298();
  v19 = sub_22B7DBCB8();
  if (os_log_type_enabled(v18, v19))
  {
    v57 = v13;
    v58 = v9;
    v20 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v66 = v56;
    *v20 = 136315650;
    v21 = [v17 guid];

    if (!v21)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    v22 = sub_22B7DB6A8();
    v24 = v23;

    v25 = sub_22B4CFAAC(v22, v24, &v66);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v26 = MEMORY[0x2318952A0](a2, MEMORY[0x277D837D0]);
    v28 = sub_22B4CFAAC(v26, v27, &v66);

    *(v20 + 14) = v28;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v63;
    _os_log_impl(&dword_22B4CC000, v18, v19, "Received request to cancel messages on chat: %s to destinations: %s with the reason: %lu", v20, 0x20u);
    v29 = v56;
    swift_arrayDestroy();
    MEMORY[0x231898D60](v29, -1, -1);
    MEMORY[0x231898D60](v20, -1, -1);

    v13 = v57;
    v9 = v58;
  }

  else
  {
  }

  v31 = v60;
  v30 = v61;
  if (*(a2 + 16))
  {
    v32 = *(&v64->isa + OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore);
    v58 = v17;
    v33 = [v17 guid];
    v34 = [v32 scheduledMessagesBatchFetcherForChat_];

    sub_22B4D01A0(0, &unk_28141F240, 0x277D18ED0);
    sub_22B4D01A0(0, &qword_28141F0C8, 0x277D18ED8);
    v57 = v34;
    sub_22B7DBD08();
    v35 = MEMORY[0x277D84F90];
    v66 = MEMORY[0x277D84F90];
    (*(v30 + 16))(v13, v31, v9);
    sub_22B714FD8(&qword_28141F450, &qword_27D8CEEB8, &qword_22B7FBAB8);
    sub_22B7DB8A8();
    v13 = sub_22B714FD8(&qword_28141F458, &qword_27D8CEEB0, &qword_22B7FBAB0);
    v62 = a2;
    while (1)
    {
      sub_22B7DC0B8();
      v36 = v65;
      if (!v65)
      {
        break;
      }

      v37 = sub_22B776A24();

      if (v37)
      {
        MEMORY[0x231895260]();
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v38 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22B7DB938();
        }

        sub_22B7DB968();
        v35 = v66;
      }
    }

    (*(v59 + 8))(v8, v5);
    (*(v30 + 8))(v31, v9);
    if (v35 >> 62)
    {
      a1 = sub_22B7DC1C8();
      if (a1)
      {
LABEL_15:
        v5 = 0;
        v60 = OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession;
        v61 = v35 & 0xC000000000000001;
        a2 = v35 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v61)
          {
            v39 = MEMORY[0x231895C80](v5, v35);
          }

          else
          {
            if (v5 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v39 = *(v35 + 8 * v5 + 32);
          }

          v40 = v39;
          v41 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          v13 = v35;
          v9 = *&v60[v64];
          v42 = [v39 guid];
          if (!v42)
          {
            break;
          }

          v43 = v42;

          sub_22B77A2DC(v44);

          v8 = sub_22B7DBAE8();

          [v9 cancelScheduledMessageWithGUID:v43 destinations:v8 cancelType:v63];

          ++v5;
          if (v41 == a1)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
        goto LABEL_36;
      }
    }

    else
    {
      a1 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1)
      {
        goto LABEL_15;
      }
    }

LABEL_34:

    sub_22B777DD8(v58);

    return;
  }

  v45 = v17;
  v64 = sub_22B7DB298();
  v46 = sub_22B7DBC98();
  if (os_log_type_enabled(v64, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v66 = v48;
    *v47 = 136315138;
    v49 = [v45 guid];

    if (v49)
    {
      v50 = sub_22B7DB6A8();
      v52 = v51;

      v53 = sub_22B4CFAAC(v50, v52, &v66);

      *(v47 + 4) = v53;
      _os_log_impl(&dword_22B4CC000, v64, v46, "Not attempting to cancel scheduled messages for chat %s. Found no destinations to cancel to", v47, 0xCu);
      sub_22B4CFB78(v48);
      MEMORY[0x231898D60](v48, -1, -1);
      MEMORY[0x231898D60](v47, -1, -1);

      return;
    }

    goto LABEL_37;
  }

  v54 = v64;
}

void sub_22B777DD8(void *a1)
{
  v3 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v78 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v80 = &v77 - v7;
  v88 = sub_22B7DA968();
  v82 = *(v88 - 8);
  v8 = *(v82 + 64);
  v9 = MEMORY[0x28223BE20](v88);
  v84 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v86 = &v77 - v11;
  v12 = sub_22B6F0AD4(&qword_27D8CEEB0, &qword_22B7FBAB0);
  v87 = *(v12 - 8);
  v13 = *(v87 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v77 - v14;
  v16 = sub_22B6F0AD4(&qword_27D8CEEB8, &qword_22B7FBAB8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v77 - v22;
  v24 = *(v1 + OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore);
  v81 = a1;
  v25 = [a1 guid];
  v26 = [v24 scheduledMessagesBatchFetcherForChat_];

  sub_22B4D01A0(0, &unk_28141F240, 0x277D18ED0);
  sub_22B4D01A0(0, &qword_28141F0C8, 0x277D18ED8);
  v79 = v26;
  sub_22B7DBD08();
  v27 = MEMORY[0x277D84F90];
  v90 = MEMORY[0x277D84F90];
  (*(v17 + 16))(v21, v23, v16);
  sub_22B714FD8(&qword_28141F450, &qword_27D8CEEB8, &qword_22B7FBAB8);
  sub_22B7DB8A8();
  sub_22B714FD8(&qword_28141F458, &qword_27D8CEEB0, &qword_22B7FBAB0);
  v28 = v27;
  while (1)
  {
    sub_22B7DC0B8();
    v29 = v89;
    if (!v89)
    {
      break;
    }

    v30 = sub_22B776A24();

    if (v30)
    {
      MEMORY[0x231895260]();
      if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22B7DB938();
      }

      sub_22B7DB968();
      v28 = v90;
    }
  }

  (*(v87 + 8))(v15, v12);
  (*(v17 + 8))(v23, v16);
  v90 = v27;
  if (v28 >> 62)
  {
    goto LABEL_29;
  }

  v32 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v86; v32; i = v86)
  {
    v34 = 0;
    v35 = v28 & 0xC000000000000001;
    v36 = v28 & 0xFFFFFFFFFFFFFF8;
    v37 = &selRef_repairOffGridStatusWithHandleID_fromHandleID_completion_;
    v38 = &selRef_repairOffGridStatusWithHandleID_fromHandleID_completion_;
    while (1)
    {
      if (v35)
      {
        v39 = MEMORY[0x231895C80](v34, v28);
      }

      else
      {
        if (v34 >= *(v36 + 16))
        {
          goto LABEL_28;
        }

        v39 = *(v28 + 8 * v34 + 32);
      }

      v40 = v39;
      v41 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if ([v39 v37[163]] == 2)
      {
        v42 = [v40 v38[160]];
        if (v42 > 2)
        {
          if (v42 != 3 && v42 != 4 && v42 != 5)
          {
            goto LABEL_72;
          }
        }

        else
        {
          if ((v42 - 1) < 2)
          {
            sub_22B7DC358();
            v43 = v32;
            v44 = v35;
            v45 = v28;
            v46 = v37;
            v47 = *(v90 + 16);
            sub_22B7DC398();
            v37 = v46;
            v28 = v45;
            v35 = v44;
            v32 = v43;
            sub_22B7DC3A8();
            sub_22B7DC368();
            v38 = &selRef_repairOffGridStatusWithHandleID_fromHandleID_completion_;
            goto LABEL_12;
          }

          if (v42)
          {
            goto LABEL_72;
          }
        }
      }

LABEL_12:
      ++v34;
      if (v41 == v32)
      {
        v48 = v90;
        i = v86;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v32 = sub_22B7DC1C8();
  }

  v48 = MEMORY[0x277D84F90];
LABEL_31:

  if ((v48 & 0x8000000000000000) != 0 || (v48 & 0x4000000000000000) != 0)
  {
    goto LABEL_65;
  }

  v49 = *(v48 + 16);
  if (!v49)
  {
    goto LABEL_66;
  }

  do
  {
    v50 = v48 & 0xC000000000000001;
    if ((v48 & 0xC000000000000001) != 0)
    {
      v51 = MEMORY[0x231895C80](0, v48);
    }

    else
    {
      if (!*(v48 + 16))
      {
        __break(1u);
LABEL_72:
        sub_22B7DC448();
        __break(1u);
        return;
      }

      v51 = *(v48 + 32);
    }

    v52 = v51;
    v53 = &selRef_updatedPriorityForChatsWithGUIDsAndProperties_chatsAndMessageGUIDs_;
    if (v49 == 1)
    {
LABEL_38:

      v54 = v81;
      [v81 updateHasCancellableScheduledMessage_];
      if (!v52)
      {
        goto LABEL_67;
      }

      v55 = [v52 v53[62]];
      v56 = v80;
      v57 = v88;
      v58 = v82;
      if (v55)
      {
        v59 = v78;
        v60 = v55;
        sub_22B7DA928();

        v61 = 0;
      }

      else
      {
        v61 = 1;
        v59 = v78;
      }

      (*(v58 + 56))(v59, v61, 1, v57);
      sub_22B6FC80C(v59, v56, &unk_27D8CF790, &qword_22B7F9578);
      if ((*(v58 + 48))(v56, 1, v57) == 1)
      {
        goto LABEL_68;
      }

      v76 = sub_22B7DA8B8();
      (*(v58 + 8))(v56, v57);
      goto LABEL_69;
    }

    v85 = (v82 + 8);
    v83 = v48;
    v62 = 1;
    if (!v50)
    {
LABEL_47:
      if ((v62 & 0x8000000000000000) != 0)
      {
        goto LABEL_63;
      }

      if (v62 < *(v48 + 16))
      {
        v63 = *(v48 + 8 * v62 + 32);
        goto LABEL_50;
      }

      goto LABEL_64;
    }

    while (1)
    {
      v63 = MEMORY[0x231895C80](v62, v48);
LABEL_50:
      v64 = v63;
      v65 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      v66 = [v52 v53[62]];
      if (v66)
      {
        v67 = v66;
        sub_22B7DA928();

        v68 = [v64 v53[62]];
        if (!v68)
        {

          (*v85)(i, v88);
          goto LABEL_44;
        }

        v69 = v50;
        v70 = v84;
        v71 = v68;
        sub_22B7DA928();

        LODWORD(v87) = sub_22B7DA8D8();
        v72 = i;
        v73 = *v85;
        v74 = v70;
        v75 = v88;
        (*v85)(v74, v88);
        v73(v72, v75);
        if ((v87 & 1) == 0)
        {

          i = v86;
          v50 = v69;
          v48 = v83;
          v53 = &selRef_updatedPriorityForChatsWithGUIDsAndProperties_chatsAndMessageGUIDs_;
          goto LABEL_44;
        }

        i = v86;
        v50 = v69;
        v48 = v83;
        v53 = &selRef_updatedPriorityForChatsWithGUIDsAndProperties_chatsAndMessageGUIDs_;
        v52 = v64;
        if (v65 == v49)
        {
          goto LABEL_38;
        }

        ++v62;
        if (!v50)
        {
          goto LABEL_47;
        }
      }

      else
      {

LABEL_44:
        ++v62;
        if (v65 == v49)
        {
          goto LABEL_38;
        }

        if (!v50)
        {
          goto LABEL_47;
        }
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    v49 = sub_22B7DC1C8();
  }

  while (v49);
LABEL_66:

  v54 = v81;
  [v81 updateHasCancellableScheduledMessage_];
LABEL_67:
  (*(v82 + 56))(v80, 1, 1, v88);
  v52 = 0;
LABEL_68:
  v76 = 0;
LABEL_69:
  [v54 setLastScheduledMessageCreatedDate_];
}

void sub_22B778754(char **a1, unint64_t a2)
{
  v61 = a2;
  v3 = sub_22B6F0AD4(&qword_27D8CEEB0, &qword_22B7FBAB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v54 - v6;
  v59 = sub_22B6F0AD4(&qword_27D8CEEB8, &qword_22B7FBAB8);
  v8 = *(v59 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v59);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - v13;
  v60 = [a1 style];
  if (qword_28141F378 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v15 = sub_22B7DB2B8();
    sub_22B4CFA74(v15, qword_281422638);
    v16 = a1;
    v17 = sub_22B7DB298();
    v18 = sub_22B7DBCB8();
    v19 = os_log_type_enabled(v17, v18);
    v20 = &selRef_deleteMessageGUIDs_inChat_;
    v58 = v4;
    if (v19)
    {
      v56 = v18;
      v62 = v12;
      v57 = v14;
      v21 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v65 = v55;
      v22 = v21;
      *v21 = 136315138;
      v23 = [v16 guid];
      v24 = v16;

      if (!v23)
      {
        goto LABEL_54;
      }

      v25 = sub_22B7DB6A8();
      v27 = v26;

      v28 = sub_22B4CFAAC(v25, v27, &v65);

      v29 = v22;
      *(v22 + 1) = v28;
      _os_log_impl(&dword_22B4CC000, v17, v56, "Updating Participants for scheduled messages in chat %s if necessary", v22, 0xCu);
      v30 = v55;
      sub_22B4CFB78(v55);
      MEMORY[0x231898D60](v30, -1, -1);
      MEMORY[0x231898D60](v29, -1, -1);

      v16 = v24;
      v14 = v57;
      v12 = v62;
      v20 = &selRef_deleteMessageGUIDs_inChat_;
    }

    else
    {
    }

    v31 = *(v63 + OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore);
    v32 = v20[473];
    v62 = v16;
    v33 = [v16 v32];
    v34 = [v31 scheduledMessagesBatchFetcherForChat_];

    sub_22B4D01A0(0, &unk_28141F240, 0x277D18ED0);
    sub_22B4D01A0(0, &qword_28141F0C8, 0x277D18ED8);
    v57 = v34;
    sub_22B7DBD08();
    v35 = MEMORY[0x277D84F90];
    v65 = MEMORY[0x277D84F90];
    v36 = v14;
    v37 = v59;
    (*(v8 + 16))(v12, v14, v59);
    sub_22B714FD8(&qword_28141F450, &qword_27D8CEEB8, &qword_22B7FBAB8);
    sub_22B7DB8A8();
    v14 = sub_22B714FD8(&qword_28141F458, &qword_27D8CEEB0, &qword_22B7FBAB0);
    v38 = v35;
    while (1)
    {
      sub_22B7DC0B8();
      v39 = v64;
      if (!v64)
      {
        break;
      }

      v12 = sub_22B776A24();

      if (v12)
      {
        MEMORY[0x231895260]();
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v40 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22B7DB938();
          v37 = v59;
        }

        sub_22B7DB968();
        v38 = v65;
      }
    }

    (*(v58 + 8))(v7, v3);
    (*(v8 + 8))(v36, v37);
    v65 = v35;
    if (!(v38 >> 62))
    {
      v3 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        break;
      }

      goto LABEL_14;
    }

    v3 = sub_22B7DC1C8();
    if (!v3)
    {
      break;
    }

LABEL_14:
    v7 = 0;
    v4 = v38 & 0xC000000000000001;
    v8 = v38 & 0xFFFFFFFFFFFFFF8;
    a1 = &selRef_repairOffGridStatusWithHandleID_fromHandleID_completion_;
    v59 = v38 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v4)
      {
        v41 = MEMORY[0x231895C80](v7, v38);
      }

      else
      {
        if (v7 >= *(v8 + 16))
        {
          goto LABEL_33;
        }

        v41 = *(v38 + 8 * v7 + 32);
      }

      v14 = v41;
      v42 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v41 scheduleType] == 2)
      {
        v43 = [v14 scheduleState];
        if (v43 > 2)
        {
          if (v43 != 3 && v43 != 4 && v43 != 5)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if ((v43 - 1) < 2)
          {
            sub_22B7DC358();
            v12 = *(v65 + 16);
            sub_22B7DC398();
            sub_22B7DC3A8();
            sub_22B7DC368();
            v8 = v59;
            goto LABEL_17;
          }

          if (v43)
          {
            goto LABEL_55;
          }
        }
      }

LABEL_17:
      ++v7;
      if (v42 == v3)
      {
        v44 = v65;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  v44 = MEMORY[0x277D84F90];
LABEL_37:

  if ((v44 & 0x8000000000000000) == 0 && (v44 & 0x4000000000000000) == 0)
  {
    v45 = *(v44 + 16);
    if (v45)
    {
      goto LABEL_40;
    }

LABEL_52:

    return;
  }

LABEL_51:
  v45 = sub_22B7DC1C8();
  if (!v45)
  {
    goto LABEL_52;
  }

LABEL_40:
  v46 = 0;
  v59 = OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession;
  while (1)
  {
    if ((v44 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x231895C80](v46, v44);
    }

    else
    {
      if (v46 >= *(v44 + 16))
      {
        goto LABEL_50;
      }

      v47 = *(v44 + 8 * v46 + 32);
    }

    v48 = v47;
    v49 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v50 = *(v63 + v59);
    v51 = [v62 chatIdentifier];
    if (!v51)
    {
      break;
    }

    v52 = v51;
    sub_22B796FD0(v61);
    v53 = sub_22B7DB8F8();

    [v50 sendMessage:v48 toChat:v52 style:v60 destinationHandles:v53];

    ++v46;
    if (v49 == v45)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  sub_22B7DC448();
  __break(1u);
}

void sub_22B778F38(void *a1, void *a2)
{
  if (qword_28141F378 != -1)
  {
    swift_once();
  }

  v5 = sub_22B7DB2B8();
  sub_22B4CFA74(v5, qword_281422638);
  v6 = v2;
  v7 = a1;
  v8 = sub_22B7DB298();
  v9 = sub_22B7DBCB8();

  if (os_log_type_enabled(v8, v9))
  {
    v26 = a2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v6;
    *v11 = v6;
    *(v10 + 12) = 2080;
    v13 = v6;
    v14 = [v7 guid];

    if (!v14)
    {
      __break(1u);
      goto LABEL_15;
    }

    v15 = sub_22B7DB6A8();
    v17 = v16;

    v18 = sub_22B4CFAAC(v15, v17, &v27);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_22B4CC000, v8, v9, "%@ handling message replacement of message: %s", v10, 0x16u);
    sub_22B4D0D64(v11, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v11, -1, -1);
    sub_22B4CFB78(v12);
    MEMORY[0x231898D60](v12, -1, -1);
    MEMORY[0x231898D60](v10, -1, -1);

    a2 = v26;
  }

  else
  {
  }

  if ([a2 scheduleType] == 2)
  {
    v19 = [a2 scheduleState];
    if (v19 <= 5)
    {
      if (((1 << v19) & 0x39) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_15:
    sub_22B7DC448();
    __break(1u);
    return;
  }

LABEL_10:
  v20 = v7;
  v21 = sub_22B7DB298();
  v22 = sub_22B7DBCB8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_22B4CC000, v21, v22, "%@ No longer a cancellable scheduled message, invalidating chat's scheduled states.", v23, 0xCu);
    sub_22B4D0D64(v24, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v24, -1, -1);
    MEMORY[0x231898D60](v23, -1, -1);
  }

  sub_22B775B98(a2);
}

uint64_t sub_22B779320(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B6F0AD4(&qword_27D8CEF10, &qword_22B7FBAD8);
    v2 = sub_22B7DC298();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v22 = *v13;
    v23 = v13[1];

    swift_dynamicCast();
    v14 = *(v2 + 40);
    result = sub_22B7DC228();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v26;
    *v11 = v24;
    *(v11 + 16) = v25;
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_22B7797BC(uint64_t a1)
{
  sub_22B4D01A0(0, &unk_27D8CEED0, 0x277CCAC30);
  sub_22B6F0AD4(&qword_27D8CD660, &unk_22B7F9760);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22B7F93A0;
  v3 = *MEMORY[0x277D19F88];
  v4 = sub_22B7DB6A8();
  v6 = v5;
  *(v2 + 56) = MEMORY[0x277D837D0];
  v7 = sub_22B704A5C();
  *(v2 + 64) = v7;
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  v8 = sub_22B7DA8B8();
  v9 = sub_22B4D01A0(0, &qword_27D8CD668, 0x277CBEAA8);
  *(v2 + 96) = v9;
  v10 = sub_22B77E19C(&qword_27D8CEEE0, &qword_27D8CD668, 0x277CBEAA8);
  *(v2 + 104) = v10;
  *(v2 + 72) = v8;
  v11 = sub_22B7DBC58();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22B7F93A0;
  v13 = sub_22B7DB6A8();
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = v7;
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  v15 = a1 + *(sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060) + 36);
  v16 = sub_22B7DA8B8();
  *(v12 + 96) = v9;
  *(v12 + 104) = v10;
  *(v12 + 72) = v16;
  v17 = sub_22B7DBC58();
  v18 = [v30 predicate];
  sub_22B6F0AD4(&unk_27D8CD970, &qword_22B7FB330);
  v19 = swift_allocObject();
  if (v18)
  {
    *(v19 + 16) = xmmword_22B7F9610;
    *(v19 + 32) = v18;
    *(v19 + 40) = v11;
    *(v19 + 48) = v17;
    v20 = v18;
    v21 = v11;
    v22 = v17;
    v23 = sub_22B7DB8F8();

    v24 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v30 setPredicate_];
    v25 = v30;
  }

  else
  {
    *(v19 + 16) = xmmword_22B7FBA60;
    *(v19 + 32) = v11;
    *(v19 + 40) = v17;
    v22 = v11;
    v20 = v17;
    v26 = sub_22B7DB8F8();

    v27 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v30 setPredicate_];
    v28 = v30;
  }

  return v30;
}

id sub_22B779CC0()
{
  v1 = v0;
  if (qword_28141F378 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422638);
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Notified about leaving dataProtection lock", v5, 2u);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  return [v1 updateTimerForTimeInterval_];
}

uint64_t sub_22B779E08(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v7 = sub_22B6F0AD4(&qword_27D8CEF28, &qword_22B7FBAE8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v23 = type metadata accessor for ScheduledMessageBlocklistController();
  v24 = &off_283F20C90;
  v22[0] = a3;
  swift_unknownObjectWeakInit();
  *(a4 + 72) = MEMORY[0x277D84FA0];
  swift_unknownObjectWeakAssign();
  *(a4 + 24) = a2;
  sub_22B4D0DE8(v22, a4 + 32);
  v12 = *sub_22B4D2BCC(v22, v23);
  v17 = a2;
  v21 = sub_22B7C841C();
  v19 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  sub_22B6F0AD4(&qword_27D8CEF30, &qword_22B7FBAF0);
  sub_22B6F0AD4(&unk_27D8CEF38, &qword_22B7FBAF8);
  sub_22B714FD8(&qword_28141F350, &qword_27D8CEF30, &qword_22B7FBAF0);
  sub_22B7DB318();

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22B77E234;
  *(v14 + 24) = v13;
  sub_22B714FD8(&qword_27D8CEF48, &qword_27D8CEF28, &qword_22B7FBAE8);
  sub_22B7DB328();

  (*(v8 + 8))(v11, v7);
  swift_beginAccess();
  sub_22B7DB2C8();
  swift_endAccess();

  sub_22B4CFB78(v22);
  return a4;
}

uint64_t sub_22B77A170(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22B7DC1C8())
  {
    v12 = sub_22B4D01A0(0, a2, a3);
    v13 = sub_22B77E19C(a4, a2, a3);
    result = MEMORY[0x231895490](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x231895C80](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      ++a2;
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_22B7DC1C8();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22B77A2DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x231895490](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22B7C9068(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22B77A374(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22B6F0AD4(&qword_27D8CD7B0, &qword_22B7FBB10);
  v4 = sub_22B77E2F0();
  result = MEMORY[0x231895490](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_22B7C91B8(&v9, v8, v7);

      v6 += 2;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

id sub_22B77A420(void *a1, uint64_t a2)
{
  [a1 setScheduleState_];
  [a1 setCloudKitSyncState_];
  v4 = objc_opt_self();
  v5 = sub_22B7DB678();
  [v4 notifyPeersWithScheduledMessageUpdate:v5 scheduleState:5];

  v6 = *(a2 + OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore);
  v7 = [v6 storeMessage:a1 forceReplace:1 modifyError:1 modifyFlags:1 flagMask:{objc_msgSend(a1, sel_flags)}];
  v8 = [v6 chatForMessage_];
  if (!v8)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v14 = sub_22B7DB2B8();
    sub_22B4CFA74(v14, qword_281422638);
    v9 = v7;
    v15 = sub_22B7DB298();
    v16 = sub_22B7DBC98();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v9;
      *v18 = v9;
      v19 = v9;
      _os_log_impl(&dword_22B4CC000, v15, v16, "Failed to find chat for message: %@", v17, 0xCu);
      sub_22B4D0D64(v18, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v18, -1, -1);
      MEMORY[0x231898D60](v17, -1, -1);
    }

    sub_22B77E1E0();
    swift_allocError();
    *v20 = 2;
    swift_willThrow();
    goto LABEL_14;
  }

  v9 = v8;
  v10 = [v7 accountID];
  if (!v10)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v21 = sub_22B7DB2B8();
    sub_22B4CFA74(v21, qword_281422638);
    v22 = sub_22B7DB298();
    v23 = sub_22B7DBC98();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22B4CC000, v22, v23, "Failed to find accountID from message.", v24, 2u);
      MEMORY[0x231898D60](v24, -1, -1);
    }

    sub_22B77E1E0();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();

LABEL_14:
    return v7;
  }

  v11 = v10;
  v12 = [*(a2 + OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession) broadcasterForChatListeners];
  v13 = [v9 chatIdentifier];
  [v12 account:v11 chat:v13 style:objc_msgSend(v9 messageUpdated:{sel_style), v7}];

  swift_unknownObjectRelease();
  return v7;
}

void sub_22B77A808(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore);
  v10 = sub_22B7DB678();
  v66 = [v9 messageWithGUID_];

  v11 = sub_22B7DB678();
  v67 = [v9 chatForMessageGUID_];

  if (!v66)
  {
    goto LABEL_26;
  }

  if (v67)
  {
    if (a3)
    {
      if ((a4 - 3) < 2)
      {
        v12 = v4;
        v13 = qword_28141F378;
        v14 = v66;
        v15 = v67;
        if (v13 != -1)
        {
          swift_once();
        }

        v16 = sub_22B7DB2B8();
        sub_22B4CFA74(v16, qword_281422638);
        v17 = v14;
        v18 = sub_22B7DB298();
        v19 = sub_22B7DBCB8();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 138412290;
          *(v20 + 4) = v17;
          *v21 = v66;
          v22 = v17;
          _os_log_impl(&dword_22B4CC000, v18, v19, "Cancelled scheduled message: %@", v20, 0xCu);
          sub_22B4D0D64(v21, &unk_27D8CEC60, &qword_22B7F9E20);
          MEMORY[0x231898D60](v21, -1, -1);
          MEMORY[0x231898D60](v20, -1, -1);
        }

        goto LABEL_34;
      }

      if (a4 != 1)
      {
        v47 = v66;
        v48 = v67;
LABEL_34:
        sub_22B777DD8(v67);

        return;
      }

      sub_22B6F0AD4(qword_27D8CFA50, &qword_22B7FBB08);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_22B7F93B0;
      *(v27 + 56) = MEMORY[0x277D837D0];
      *(v27 + 32) = a1;
      *(v27 + 40) = a2;

      v28 = v66;
      v65 = v67;
      v29 = sub_22B7DB8F8();

      v30 = [v9 deleteMessageGUIDs_];

      v31 = sub_22B7DB918();
      v32 = sub_22B774E70(v31);

      if (v32)
      {
        v64 = v4;
        if (qword_28141F378 != -1)
        {
          swift_once();
        }

        v33 = sub_22B7DB2B8();
        sub_22B4CFA74(v33, qword_281422638);

        v34 = sub_22B7DB298();
        v35 = sub_22B7DBCB8();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = v28;
          v38 = swift_slowAlloc();
          v68 = v38;
          *v36 = 136315138;
          v39 = MEMORY[0x2318952A0](v32, MEMORY[0x277D837D0]);
          v41 = sub_22B4CFAAC(v39, v40, &v68);

          *(v36 + 4) = v41;
          _os_log_impl(&dword_22B4CC000, v34, v35, "Cancelled & deleted Scheduled message: %s", v36, 0xCu);
          sub_22B4CFB78(v38);
          v42 = v38;
          v28 = v37;
          MEMORY[0x231898D60](v42, -1, -1);
          MEMORY[0x231898D60](v36, -1, -1);
        }

        v43 = [objc_opt_self() sharedProvider];
        if (v43)
        {
          v44 = [v43 broadcasterForChatListeners];
          swift_unknownObjectRelease();
          v45 = sub_22B7DB8F8();

          [v44 historicalMessageGUIDsDeleted:v45 chatGUIDs:0 queryID:0];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22B7F97B0;
        *(inited + 32) = sub_22B7DB6A8();
        *(inited + 40) = v51;
        sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_22B7F93B0;
        *(v52 + 32) = a1;
        *(v52 + 40) = a2;
        *(inited + 72) = sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
        *(inited + 48) = v52;
        *(inited + 80) = sub_22B7DB6A8();
        *(inited + 88) = v53;
        v54 = MEMORY[0x277D839B0];
        *(inited + 120) = MEMORY[0x277D839B0];
        *(inited + 96) = 1;
        *(inited + 128) = sub_22B7DB6A8();
        *(inited + 136) = v55;
        *(inited + 168) = v54;
        *(inited + 144) = 1;

        v56 = sub_22B71DF98(inited);
        swift_setDeallocating();
        sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
        swift_arrayDestroy();
        v57 = *(v64 + OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession);
        sub_22B7B0AC8(v56);

        v58 = sub_22B7DB568();

        v59 = [v65 guid];
        [v57 sendDeleteCommand:v58 forChatGUID:v59];

        v60 = [v28 cloudKitRecordID];
        if (v60)
        {
          v61 = v60;
          v62 = [objc_opt_self() synchronousDatabase];
          v63 = sub_22B7DB678();
          [v62 addScheduledMessageGUIDandCKRecordToDeleteFromCloudKit:v63 recordID:v61];
          swift_unknownObjectRelease();
        }

        goto LABEL_34;
      }

      sub_22B777DD8(v65);

      v49 = v65;
      goto LABEL_27;
    }

    v23 = v66;
    v24 = v23;
    if (a4 == 1)
    {
      v25 = v23;
      v26 = v67;
    }

    else
    {
      v46 = v67;
    }

    sub_22B777DD8(v67);

LABEL_26:
    v49 = v67;
LABEL_27:

    return;
  }

  MEMORY[0x2821F96F8]();
}

id sub_22B77B2D0(void *a1, uint64_t a2, id a3, void *a4)
{
  v6 = a3;
  sub_22B775808(a1, a3, a4);
  if (v4)
  {
    goto LABEL_16;
  }

  v9 = *(a2 + OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore);
  v5 = [v9 storeMessage:a1 forceReplace:1 modifyError:1 modifyFlags:1 flagMask:{objc_msgSend(a1, sel_flags)}];
  v10 = [v9 chatForMessage_];
  if (!v10)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v16 = sub_22B7DB2B8();
    sub_22B4CFA74(v16, qword_281422638);
    v11 = v5;
    v17 = sub_22B7DB298();
    v18 = sub_22B7DBC98();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v11;
      *v20 = v11;
      v21 = v11;
      _os_log_impl(&dword_22B4CC000, v17, v18, "Failed to find chat for message: %@", v19, 0xCu);
      sub_22B4D0D64(v20, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v20, -1, -1);
      MEMORY[0x231898D60](v19, -1, -1);
    }

    sub_22B77E1E0();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
    v5 = v6;
    goto LABEL_15;
  }

  v11 = v10;
  v12 = [v5 accountID];
  if (!v12)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v23 = sub_22B7DB2B8();
    sub_22B4CFA74(v23, qword_281422638);
    v24 = sub_22B7DB298();
    v25 = sub_22B7DBC98();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22B4CC000, v24, v25, "Failed to find accountID from message.", v26, 2u);
      MEMORY[0x231898D60](v26, -1, -1);
    }

    sub_22B77E1E0();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();

LABEL_15:
    v6 = v11;
LABEL_16:

    return v5;
  }

  v13 = v12;
  v14 = [*(a2 + OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession) broadcasterForChatListeners];
  v15 = [v11 chatIdentifier];
  [v14 account:v13 chat:v15 style:objc_msgSend(v11 messageUpdated:{sel_style), v5}];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_22B77B67C(void *a1)
{
  v2 = sub_22B7DAA58();
  v58 = *(v2 - 8);
  v3 = *(v58 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22B6F0AD4(&qword_27D8CEF50, &unk_22B7F9770);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v56 - v8;
  v10 = sub_22B7DAAB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v59 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v60 = &v56 - v15;
  v16 = sub_22B6F0AD4(&qword_27D8CEF58, &qword_22B7FBB00);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v56 - v22;
  MEMORY[0x28223BE20](v21);
  v61 = &v56 - v24;
  v62 = a1;
  v25 = [a1 editedPartIndexes];
  if (v25)
  {
    v26 = v25;
    sub_22B7DAA88();

    (*(v11 + 56))(v23, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v23, 1, 1, v10);
  }

  v27 = v23;
  v28 = v61;
  sub_22B6FC80C(v27, v61, &qword_27D8CEF58, &qword_22B7FBB00);
  sub_22B4D7E58(v28, v20, &qword_27D8CEF58, &qword_22B7FBB00);
  v29 = (*(v11 + 48))(v20, 1, v10);
  v30 = v10;
  v31 = v11;
  if (v29 != 1)
  {
    v57 = v11;
    v33 = *(v11 + 32);
    v63 = v30;
    v33(v60, v20, v30);
    sub_22B7DAA68();
    v34 = *(v6 + 36);
    sub_22B77E294(&unk_27D8CEF60, MEMORY[0x277CC9A28]);
    v35 = (v58 + 8);
    v32 = v62;
    while (1)
    {
      do
      {
        v30 = v63;
        sub_22B7DBB88();
        sub_22B77E294(&qword_27D8CD678, MEMORY[0x277CC9A08]);
        v36 = sub_22B7DB658();
        (*v35)(v5, v2);
        if (v36)
        {
          sub_22B4D0D64(v9, &qword_27D8CEF50, &unk_22B7F9770);
          v31 = v57;
          (*(v57 + 8))(v60, v30);
          v28 = v61;
          goto LABEL_24;
        }

        v37 = sub_22B7DBC28();
        v39 = *v38;
        v37(v64, 0);
        sub_22B7DBB98();
        v40 = [v32 historyForMessagePart_];
      }

      while (!v40);
      v41 = v40;
      sub_22B4D01A0(0, &qword_27D8CEF70, 0x277D1AA90);
      v42 = sub_22B7DB918();

      if (v42 >> 62)
      {
        result = sub_22B7DC1C8();
        if (!result)
        {
          goto LABEL_7;
        }

LABEL_12:
        if ((v42 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x231895C80](0, v42);
        }

        else
        {
          if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v44 = *(v42 + 32);
        }

        v45 = v44;

        v46 = [v45 messagePartText];

        if (v46)
        {
          v47 = [v32 body];
          if (v47)
          {
            v48 = v47;
            v49 = [v47 __im_messageTextByReplacingMessagePartIndex_withNewPartText_];
          }

          else
          {
            v49 = 0;
          }

          v32 = v62;
          [v62 setBody_];
        }
      }

      else
      {
        result = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_12;
        }

LABEL_7:
      }
    }
  }

  sub_22B4D0D64(v20, &qword_27D8CEF58, &qword_22B7FBB00);
  v32 = v62;
LABEL_24:
  v50 = v59;
  sub_22B7DAAA8();
  v51 = sub_22B7DAA78();
  v52 = *(v31 + 8);
  v52(v50, v30);
  [v32 setEditedPartIndexes_];

  sub_22B7DAAA8();
  v53 = sub_22B7DAA78();
  v52(v50, v30);
  [v32 setRetractedPartIndexes_];

  sub_22B7DAAA8();
  v54 = sub_22B7DAA78();
  v52(v50, v30);
  [v32 setFailedRetractPartIndexes_];

  sub_22B7DAAA8();
  v55 = sub_22B7DAA78();
  v52(v50, v30);
  [v32 setFailedEditPartIndexes_];

  return sub_22B4D0D64(v28, &qword_27D8CEF58, &qword_22B7FBB00);
}

void sub_22B77BDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v94 = *MEMORY[0x277D85DE8];
  v4 = sub_22B71DF98(MEMORY[0x277D84F90]);
  v93 = MEMORY[0x277D83E88];
  *&v92 = a3;
  sub_22B4D7F04(&v92, v91);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22B769174(v91, 29555, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  sub_22B7B0AC8(v4);
  v6 = sub_22B7DB568();

  v7 = JWEncodeDictionary();

  if (!v7)
  {
    __break(1u);
LABEL_41:
    __break(1u);
  }

  v8 = [v7 _FTCopyGzippedData];
  if (!v8)
  {
    goto LABEL_41;
  }

  v9 = v8;
  v89 = sub_22B7DA848();
  v90 = v10;

  sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B7FBA70;
  v12 = *MEMORY[0x277D18588];
  *(inited + 32) = sub_22B7DB6A8();
  *(inited + 40) = v13;
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 72) = sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
  *(inited + 48) = v14;
  v15 = *MEMORY[0x277D18660];
  *(inited + 80) = sub_22B7DB6A8();
  *(inited + 88) = v16;
  v17 = MEMORY[0x277D839B0];
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = 1;
  v18 = *MEMORY[0x277D18648];
  *(inited + 128) = sub_22B7DB6A8();
  *(inited + 136) = v19;
  *(inited + 168) = v17;
  *(inited + 144) = 1;
  v20 = *MEMORY[0x277D18680];
  *(inited + 176) = sub_22B7DB6A8();
  *(inited + 184) = v21;
  *(inited + 216) = v17;
  *(inited + 192) = 1;
  v22 = *MEMORY[0x277D18668];
  *(inited + 224) = sub_22B7DB6A8();
  *(inited + 232) = v23;
  v24 = sub_22B7DB678();
  v25 = IDSGetUUIDData();

  if (v25)
  {
    v26 = sub_22B7DA848();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xF000000000000000;
  }

  *(inited + 264) = sub_22B6F0AD4(&qword_27D8CEEF8, &qword_22B7FBAC8);
  *(inited + 240) = v26;
  *(inited + 248) = v28;
  v29 = *MEMORY[0x277D18598];
  *(inited + 272) = sub_22B7DB6A8();
  *(inited + 280) = v30;
  *(inited + 312) = MEMORY[0x277CC9318];
  *(inited + 288) = v89;
  *(inited + 296) = v90;
  v31 = *MEMORY[0x277D18650];
  *(inited + 320) = sub_22B7DB6A8();
  *(inited + 328) = v32;
  v33 = *MEMORY[0x277D18828];
  *(inited + 360) = MEMORY[0x277D839F8];
  *(inited + 336) = v33;
  v34 = *MEMORY[0x277D185A0];
  *(inited + 368) = sub_22B7DB6A8();
  *(inited + 376) = v35;
  *(inited + 408) = v17;
  *(inited + 384) = 0;
  sub_22B705E44(v89, v90);
  v36 = sub_22B71DF98(inited);
  swift_setDeallocating();
  sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
  swift_arrayDestroy();
  sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_22B7F93B0;
  v38 = *MEMORY[0x277D18908];
  *(v37 + 32) = sub_22B7DB6A8();
  *(v37 + 40) = v39;
  v40 = sub_22B7179DC(v37);
  swift_setDeallocating();
  sub_22B74763C(v37 + 32);
  v41 = *MEMORY[0x277D18638];
  v42 = sub_22B7DB6A8();
  v44 = v43;
  v93 = sub_22B6F0AD4(&qword_27D8CEF00, &qword_22B7FBAD0);
  *&v92 = v40;
  sub_22B4D7F04(&v92, v91);

  v45 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B769174(v91, v42, v44, v45);

  v46 = v36;
  v47 = [objc_allocWithZone(MEMORY[0x277D18778]) initWithService_];
  if (!v47)
  {

    if (qword_28141F378 == -1)
    {
LABEL_20:
      v61 = sub_22B7DB2B8();
      sub_22B4CFA74(v61, qword_281422638);
      v62 = sub_22B7DB298();
      v63 = sub_22B7DBC98();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_22B4CC000, v62, v63, "Could not get IDSService for iMessage", v64, 2u);
        MEMORY[0x231898D60](v64, -1, -1);
      }

      sub_22B705E98(v89, v90);

      goto LABEL_37;
    }

LABEL_39:
    swift_once();
    goto LABEL_20;
  }

  v48 = v47;
  *&v91[0] = MEMORY[0x277D84FA0];
  v49 = [v47 devices];
  if (v49)
  {
    v50 = v49;

    sub_22B4D01A0(0, &qword_27D8CEF08, 0x277D186E0);
    v51 = sub_22B7DB918();

    if (v51 >> 62)
    {
      v52 = sub_22B7DC1C8();
      if (!v52)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v52)
      {
        goto LABEL_24;
      }
    }

    if (v52 >= 1)
    {
      for (i = 0; i != v52; ++i)
      {
        if ((v51 & 0xC000000000000001) != 0)
        {
          v58 = MEMORY[0x231895C80](i, v51);
        }

        else
        {
          v58 = *(v51 + 8 * i + 32);
        }

        v59 = v58;
        v60 = IDSCopyIDForDevice();
        if (v60)
        {
          v54 = v60;
          v55 = sub_22B7DB6A8();
          v57 = v56;

          sub_22B7C9068(&v92, v55, v57);
        }

        else
        {
        }
      }

LABEL_24:

      v65 = *&v91[0];
      if (*(*&v91[0] + 16))
      {
        v66 = objc_opt_self();
        v67 = v48;
        v68 = sub_22B7DB568();
        sub_22B779320(v65);

        v69 = sub_22B7DBAE8();

        sub_22B7B0AC8(v46);

        v70 = sub_22B7DB568();

        *&v92 = 0;
        v71 = [v66 service:v67 sendMessage:v68 toDestinations:v69 priority:300 options:v70 identifier:0 error:&v92];

        if (v71)
        {
          v72 = qword_28141F378;
          v73 = v92;
          if (v72 != -1)
          {
            swift_once();
          }

          v74 = sub_22B7DB2B8();
          sub_22B4CFA74(v74, qword_281422638);
          v75 = sub_22B7DB298();
          v76 = sub_22B7DBCB8();
          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            *v77 = 0;
            _os_log_impl(&dword_22B4CC000, v75, v76, "IDS successfully sent scheduleState Update to peer devices", v77, 2u);
            MEMORY[0x231898D60](v77, -1, -1);
          }

          sub_22B705E98(v89, v90);
        }

        else
        {
          v78 = v92;
          v79 = sub_22B7DA6F8();

          swift_willThrow();
          if (qword_28141F378 != -1)
          {
            swift_once();
          }

          v80 = sub_22B7DB2B8();
          sub_22B4CFA74(v80, qword_281422638);
          v81 = v79;
          v82 = sub_22B7DB298();
          v83 = sub_22B7DBC98();

          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            *v84 = 138412290;
            v86 = v79;
            v87 = _swift_stdlib_bridgeErrorToNSError();
            *(v84 + 4) = v87;
            *v85 = v87;
            _os_log_impl(&dword_22B4CC000, v82, v83, "IDS failed to send scheduleState Update to peer devices, error %@", v84, 0xCu);
            sub_22B4D0D64(v85, &unk_27D8CEC60, &qword_22B7F9E20);
            MEMORY[0x231898D60](v85, -1, -1);
            MEMORY[0x231898D60](v84, -1, -1);
            sub_22B705E98(v89, v90);
          }

          else
          {
            sub_22B705E98(v89, v90);
          }
        }
      }

      else
      {

        sub_22B705E98(v89, v90);
      }

LABEL_37:
      v88 = *MEMORY[0x277D85DE8];
      return;
    }

    __break(1u);
    goto LABEL_39;
  }

  __break(1u);
}

void sub_22B77C7AC(void *a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  v10 = sub_22B7DA968();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 scheduleType] == 2 && (objc_msgSend(a1, sel_scheduleState) == 1 || objc_msgSend(a1, sel_scheduleState) == 2))
  {
    v42 = a4;
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v15 = sub_22B7DB2B8();
    v16 = sub_22B4CFA74(v15, qword_281422638);
    v17 = a1;
    v41 = v16;
    v18 = sub_22B7DB298();
    v19 = sub_22B7DBCB8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40 = v5;
      v22 = a3;
      v23 = a2;
      v24 = v21;
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v25 = v17;
      _os_log_impl(&dword_22B4CC000, v18, v19, "Received sending message %@", v20, 0xCu);
      sub_22B4D0D64(v24, &unk_27D8CEC60, &qword_22B7F9E20);
      v26 = v24;
      a2 = v23;
      a3 = v22;
      v5 = v40;
      MEMORY[0x231898D60](v26, -1, -1);
      MEMORY[0x231898D60](v20, -1, -1);
    }

    v27 = [v17 time];
    if (v27)
    {
      v28 = v27;
      sub_22B7DA928();

      sub_22B7DA8E8();
      v30 = v29;
      (*(v11 + 8))(v14, v10);
      [v5 updateTimerForTimeInterval_];

      v31 = v42;
      v32 = *&v5[OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession];
      v33 = sub_22B7DB678();
      v34 = [v32 chatForChatIdentifier:v33 style:v31 updatingAccount:1];

      if (v34)
      {
        sub_22B777DD8(v34);
      }

      else
      {

        v35 = sub_22B7DB298();
        v36 = sub_22B7DBC98();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v43 = v38;
          *v37 = 136315138;
          *(v37 + 4) = sub_22B4CFAAC(a2, a3, &v43);
          _os_log_impl(&dword_22B4CC000, v35, v36, "Failed to find chat with identifier: %s when trying to update hasCancellableScheduledMessage", v37, 0xCu);
          sub_22B4CFB78(v38);
          MEMORY[0x231898D60](v38, -1, -1);
          MEMORY[0x231898D60](v37, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_22B77CCA4(int a1, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if (qword_28141F378 != -1)
  {
    swift_once();
  }

  v9 = sub_22B7DB2B8();
  sub_22B4CFA74(v9, qword_281422638);

  v10 = sub_22B7DB298();
  v11 = sub_22B7DBCB8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 67109378;
    *(v12 + 4) = a1;
    *(v12 + 8) = 2080;
    *(v12 + 10) = sub_22B4CFAAC(a2, a3, &v21);
    _os_log_impl(&dword_22B4CC000, v10, v11, "Received updated chatStatus: %d for chatIdentifier: %s", v12, 0x12u);
    sub_22B4CFB78(v13);
    MEMORY[0x231898D60](v13, -1, -1);
    MEMORY[0x231898D60](v12, -1, -1);
  }

  if ((a1 + 1) <= 6 && ((1 << (a1 + 1)) & 0x73) != 0)
  {
    v14 = *(v4 + OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession);
    v15 = sub_22B7DB678();
    v16 = [v14 chatForChatIdentifier:v15 style:a4 updatingAccount:1];

    if (v16)
    {
      v20 = v16;
      sub_22B7730B8(v20, 3);
    }

    else
    {
      v20 = sub_22B7DB298();
      v17 = sub_22B7DBC98();
      if (os_log_type_enabled(v20, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = 0;
        *v19 = 0;
        _os_log_impl(&dword_22B4CC000, v20, v17, "Could not get chat for identifier %@", v18, 0xCu);
        sub_22B4D0D64(v19, &unk_27D8CEC60, &qword_22B7F9E20);
        MEMORY[0x231898D60](v19, -1, -1);
        MEMORY[0x231898D60](v18, -1, -1);
      }
    }
  }
}

void sub_22B77CF84(void *a1, unint64_t a2, NSObject *a3, int a4)
{
  LODWORD(v153) = a4;
  v151 = a2;
  v152 = a3;
  v157 = a1;
  v4 = sub_22B6F0AD4(&qword_27D8CEEB0, &qword_22B7FBAB0);
  v146 = *(v4 - 8);
  v5 = *(v146 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v134 - v6;
  v8 = sub_22B6F0AD4(&qword_27D8CEEB8, &qword_22B7FBAB8);
  v144 = *(v8 - 8);
  v145 = v8;
  v9 = *(v144 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v143 = v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v149 = v134 - v12;
  v148 = sub_22B6F0AD4(&qword_27D8CD5F8, &qword_22B7FBAC0);
  v13 = *(*(v148 - 1) + 64);
  v14 = MEMORY[0x28223BE20](v148);
  v16 = v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v134 - v17;
  v140 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  v19 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v140);
  v142 = v134 - v20;
  v21 = sub_22B7DA968();
  v22 = *(v21 - 8);
  v155 = v21;
  v156 = v22;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v136 = v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v138 = (v134 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v137 = v134 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v139 = v134 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v141 = v134 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = v134 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v150 = v134 - v38;
  MEMORY[0x28223BE20](v37);
  v147 = v134 - v39;
  v40 = sub_22B7DAAB8();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x28223BE20](v40);
  v45 = (v134 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v43);
  v47 = v134 - v46;
  if ([v157 scheduleType] != 2)
  {
    goto LABEL_53;
  }

  v48 = [v157 editedPartIndexes];
  if (v48)
  {
    v49 = v48;
    sub_22B7DAA88();

    LOBYTE(v49) = sub_22B7DAA98();
    (*(v41 + 8))(v47, v40);
    if ((v49 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v50 = [v157 retractedPartIndexes];
  if (v50)
  {
    v51 = v50;
    sub_22B7DAA88();

    LOBYTE(v51) = sub_22B7DAA98();
    (*(v41 + 8))(v45, v40);
    if ((v51 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v52 = *(v154 + OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession);
  v53 = sub_22B7DB678();
  v54 = [v52 chatForChatIdentifier:v53 style:v153 updatingAccount:1];

  if (!v54)
  {
    goto LABEL_53;
  }

  v55 = [v157 time];
  if (v55)
  {
    v153 = v16;
    v56 = v147;
    v57 = v55;
    sub_22B7DA928();

    v58 = v150;
    sub_22B7DA8A8();
    v59 = *(v154 + OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore);
    v135 = v54;
    v60 = [v54 guid];
    v154 = [v59 scheduledMessagesBatchFetcherForChat_];

    sub_22B77E294(&qword_281420E90, MEMORY[0x277CC9578]);
    v61 = v155;
    if (sub_22B7DB618())
    {
      v63 = v156;
      v64 = v156 + 16;
      v65 = *(v156 + 16);
      v65(v18, v56, v61);
      v66 = v148;
      v67 = &v18[v148[12]];
      v134[1] = v64;
      v134[0] = v65;
      v65(v67, v58, v61);
      v68 = v153;
      sub_22B4D7E58(v18, v153, &qword_27D8CD5F8, &qword_22B7FBAC0);
      v69 = *(v63 + 32);
      v151 = v66[12];
      v152 = v69;
      v70 = v142;
      (v69)(v142, v68, v61);
      v71 = *(v63 + 8);
      v71(&v68[v151], v61);
      sub_22B6FC80C(v18, v68, &qword_27D8CD5F8, &qword_22B7FBAC0);
      (v152)(v70 + *(v140 + 36), &v68[v148[12]], v61);
      v156 = v63 + 8;
      v153 = v71;
      v71(v68, v61);
      v72 = v154;
      v54 = sub_22B7797BC(v70);

      sub_22B4D0D64(v70, &unk_27D8CEEC0, &qword_22B7FA060);
      sub_22B4D01A0(0, &unk_28141F240, 0x277D18ED0);
      sub_22B4D01A0(0, &qword_28141F0C8, 0x277D18ED8);
      v73 = v149;
      v148 = v54;
      sub_22B7DBD08();
      v154 = MEMORY[0x277D84F90];
      v159[0] = MEMORY[0x277D84F90];
      v74 = v144;
      v75 = v145;
      (*(v144 + 16))(v143, v73, v145);
      sub_22B714FD8(&qword_28141F450, &qword_27D8CEEB8, &qword_22B7FBAB8);
      sub_22B7DB8A8();
      v60 = sub_22B714FD8(&qword_28141F458, &qword_27D8CEEB0, &qword_22B7FBAB0);
      v18 = v141;
      while (1)
      {
        sub_22B7DC0B8();
        v76 = v158;
        if (!v158)
        {
          break;
        }

        v54 = sub_22B776A24();

        if (v54)
        {
          MEMORY[0x231895260]();
          if (*((v159[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v159[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v77 = *((v159[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_22B7DB938();
          }

          sub_22B7DB968();
          v154 = v159[0];
        }
      }

      (*(v146 + 8))(v7, v4);
      isa = v74[1].isa;
      v45 = v74 + 1;
      isa(v149, v75);
      v62 = v154;
      if (!(v154 >> 62))
      {
        v79 = v135;
        v152 = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v80 = &selRef_smsRelayService;
        if (v152)
        {
          goto LABEL_17;
        }

        goto LABEL_52;
      }
    }

    else
    {
LABEL_50:
      __break(1u);
    }

    v128 = v62;
    v129 = sub_22B7DC1C8();
    v62 = v128;
    v79 = v135;
    v152 = v129;
    v80 = &selRef_smsRelayService;
    if (v129)
    {
LABEL_17:
      v151 = v62 & 0xC000000000000001;
      if ((v62 & 0xC000000000000001) != 0)
      {
        v81 = v62;
        v82 = MEMORY[0x231895C80](0);
      }

      else
      {
        if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_58;
        }

        v81 = v62;
        v82 = *(v62 + 32);
      }

      v60 = v82;
      if (v152 == 1)
      {
        v83 = v82;
LABEL_36:

        v60 = v83;
        v91 = [v60 v80[257]];
        if (v91)
        {
          v92 = v91;
          v93 = v137;
          sub_22B7DA928();

          v36 = v139;
          sub_22B7DA8A8();
          v18 = v155;
          v94 = v153;
          (v153)(v93, v155);
          v7 = v150;
          v95 = sub_22B7DA8D8();
          v45 = v138;
          if ((v95 & 1) == 0)
          {

LABEL_46:
            (v94)(v36, v18);
            (v94)(v7, v18);
            (v94)(v147, v18);
            goto LABEL_53;
          }

          v80 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v96 = sub_22B7DB678();
          [(SEL *)v80 setDateFormat:v96];

          if (qword_28141F378 == -1)
          {
LABEL_39:
            v97 = sub_22B7DB2B8();
            sub_22B4CFA74(v97, qword_281422638);
            (v134[0])(v45, v36, v18);
            v98 = v157;
            v99 = v80;
            v54 = v98;
            v83 = v99;
            v100 = sub_22B7DB298();
            v101 = sub_22B7DBC98();
            if (!os_log_type_enabled(v100, v101))
            {

              v94 = v153;
              (v153)(v45, v18);
              goto LABEL_45;
            }

            LODWORD(v154) = v101;
            v102 = swift_slowAlloc();
            v103 = swift_slowAlloc();
            v159[0] = v103;
            *v102 = 136315650;
            v104 = [v54 guid];

            if (v104)
            {
              v151 = v103;
              v152 = v100;
              v105 = sub_22B7DB6A8();
              v107 = v106;

              v108 = sub_22B4CFAAC(v105, v107, v159);

              *(v102 + 4) = v108;
              *(v102 + 12) = 2080;
              v109 = [v54 time];

              if (v109)
              {
                v110 = v83;
                v111 = v136;
                sub_22B7DA928();

                v112 = sub_22B7DA8B8();
                v94 = v153;
                (v153)(v111, v155);
                v113 = [(SEL *)v110 stringFromDate:v112];

                v114 = sub_22B7DB6A8();
                v116 = v115;

                v117 = sub_22B4CFAAC(v114, v116, v159);

                *(v102 + 14) = v117;
                *(v102 + 22) = 2080;
                v118 = v138;
                v119 = sub_22B7DA8B8();
                v120 = [(SEL *)v110 stringFromDate:v119];

                v121 = sub_22B7DB6A8();
                v123 = v122;

                v18 = v155;
                (v94)(v118, v155);
                v124 = sub_22B4CFAAC(v121, v123, v159);

                *(v102 + 24) = v124;
                v125 = v152;
                _os_log_impl(&dword_22B4CC000, v152, v154, "Updating time of scheduled message: %s from %s to %s to maintain ordering", v102, 0x20u);
                v126 = v151;
                swift_arrayDestroy();
                MEMORY[0x231898D60](v126, -1, -1);
                MEMORY[0x231898D60](v102, -1, -1);

                v7 = v150;
                v36 = v139;
                v83 = v110;
LABEL_45:
                v127 = sub_22B7DA8B8();
                [v54 setTime_];

                goto LABEL_46;
              }

LABEL_63:
              __break(1u);
              return;
            }

LABEL_62:

            __break(1u);
            goto LABEL_63;
          }

LABEL_58:
          swift_once();
          goto LABEL_39;
        }
      }

      else
      {
        v62 = v81;
        v149 = (v81 & 0xFFFFFFFFFFFFFF8);
        v54 = 1;
        while (1)
        {
          if (v151)
          {
            v84 = MEMORY[0x231895C80](v54, v62);
          }

          else
          {
            if ((v54 & 0x8000000000000000) != 0)
            {
              goto LABEL_48;
            }

            if (v54 >= *(v149 + 2))
            {
              goto LABEL_49;
            }

            v84 = *(v62 + 8 * v54 + 32);
          }

          v83 = v84;
          v45 = (v54 + 1);
          if (__OFADD__(v54, 1))
          {
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          v85 = [v60 v80[257]];
          if (!v85)
          {
            goto LABEL_60;
          }

          v86 = v85;
          sub_22B7DA928();

          v87 = [v83 v80[257]];
          if (!v87)
          {
            break;
          }

          v88 = v87;
          sub_22B7DA928();

          v7 = sub_22B7DA8D8();
          v89 = v155;
          v90 = v153;
          (v153)(v18, v155);
          (v90)(v36, v89);
          if (v7)
          {

            v60 = v83;
            ++v54;
            v80 = &selRef_smsRelayService;
            v62 = v154;
            if (v45 == v152)
            {
              goto LABEL_36;
            }
          }

          else
          {

            ++v54;
            v80 = &selRef_smsRelayService;
            v62 = v154;
            if (v45 == v152)
            {
              v83 = v60;
              goto LABEL_36;
            }
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
      }

      __break(1u);
      goto LABEL_62;
    }

LABEL_52:

    v130 = v155;
    v131 = v153;
    (v153)(v150, v155);
    (v131)(v147, v130);
    goto LABEL_53;
  }

LABEL_53:
  v132 = v157;

  v133 = v132;
}

id sub_22B77E01C(void *a1, const char *a2)
{
  if (qword_28141F378 != -1)
  {
    swift_once();
  }

  v5 = sub_22B7DB2B8();
  sub_22B4CFA74(v5, qword_281422638);
  v6 = v2;
  v7 = a1;
  v8 = sub_22B7DB298();
  v9 = sub_22B7DBCB8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v6;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v6;
    v11[1] = v7;
    v12 = v6;
    v13 = v7;
    _os_log_impl(&dword_22B4CC000, v8, v9, a2, v10, 0x16u);
    sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v11, -1, -1);
    MEMORY[0x231898D60](v10, -1, -1);
  }

  return sub_22B7730B8(v7, 1);
}

uint64_t sub_22B77E19C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22B4D01A0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22B77E1E0()
{
  result = qword_27D8CEEF0;
  if (!qword_27D8CEEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CEEF0);
  }

  return result;
}

uint64_t sub_22B77E23C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

void sub_22B77E26C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_22B775020(v1);
}

uint64_t sub_22B77E294(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22B77E2F0()
{
  result = qword_27D8CEF78;
  if (!qword_27D8CEF78)
  {
    sub_22B6FB8C4(&qword_27D8CD7B0, &qword_22B7FBB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CEF78);
  }

  return result;
}

unint64_t sub_22B77E380()
{
  result = qword_27D8CEF90;
  if (!qword_27D8CEF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CEF90);
  }

  return result;
}

uint64_t sub_22B77E3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_22B4D7E58(a3, v27 - v11, &qword_27D8CD5C0, &qword_22B7F8CF0);
  v13 = sub_22B7DBA58();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22B4D0D64(v12, &qword_27D8CD5C0, &qword_22B7F8CF0);
  }

  else
  {
    sub_22B7DBA48();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22B7DB9C8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22B7DB6F8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_22B4D0D64(a3, &qword_27D8CD5C0, &qword_22B7F8CF0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B4D0D64(a3, &qword_27D8CD5C0, &qword_22B7F8CF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_22B77E6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_22B4D7E58(a3, v27 - v11, &qword_27D8CD5C0, &qword_22B7F8CF0);
  v13 = sub_22B7DBA58();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22B4D0D64(v12, &qword_27D8CD5C0, &qword_22B7F8CF0);
  }

  else
  {
    sub_22B7DBA48();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22B7DB9C8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22B7DB6F8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_22B4D0D64(a3, &qword_27D8CD5C0, &qword_22B7F8CF0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B4D0D64(a3, &qword_27D8CD5C0, &qword_22B7F8CF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_22B77E9CC(uint64_t a1, void *a2)
{
  v3 = sub_22B4D2BCC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_22B77EA30()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F4D0);
  sub_22B4CFA74(v0, qword_28141F4D0);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B77EA9C()
{
  v0 = [objc_opt_self() sharedManager];
  type metadata accessor for IMSpamFilterHelperWrapper();
  v1 = [objc_allocWithZone(IMDTrustKitDecisioningManager) initWithSyncedSettingsManager:v0 spamFilterHelper:swift_allocObject()];

  qword_2814225C8 = v1;
  return result;
}

id IMDTrustKitDecisioningManager.init(syncedSettingsManager:spamFilterHelper:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSyncedSettingsManager:a1 spamFilterHelper:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

{
  v5 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR___IMDTrustKitDecisioningManager_trustKit;
  sub_22B7DB518();
  *&v2[v9] = sub_22B7DB4E8();
  *&v2[OBJC_IVAR___IMDTrustKitDecisioningManager_syncedSettingsManager] = a1;
  *&v2[OBJC_IVAR___IMDTrustKitDecisioningManager_spamFilterHelper] = a2;
  v15.receiver = v2;
  v15.super_class = IMDTrustKitDecisioningManager;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = objc_msgSendSuper2(&v15, sel_init);
  v11 = sub_22B7DBA58();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v13 = v10;
  sub_22B77E3D4(0, 0, v8, &unk_22B7FBBD0, v12);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_22B77EE00()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___IMDTrustKitDecisioningManager_trustKit);
  v2 = *(MEMORY[0x277D73C58] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_22B77EEA0;

  return MEMORY[0x2821DBC78]();
}

uint64_t sub_22B77EEA0()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B77EFD4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22B77EFD4()
{
  if (qword_28141F4C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_28141F4D0);
  v3 = v1;
  v4 = sub_22B7DB298();
  v5 = sub_22B7DBC98();

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
    _os_log_impl(&dword_22B4CC000, v4, v5, "error preparing TrustKit: %@", v8, 0xCu);
    sub_22B4D0D64(v9, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v9, -1, -1);
    MEMORY[0x231898D60](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22B77F178(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B6F12E8;

  return sub_22B77EDE0(a1, v4, v5, v6);
}

id sub_22B77F22C()
{
  if ([*(v0 + OBJC_IVAR___IMDTrustKitDecisioningManager_syncedSettingsManager) settingValueForKey_])
  {
    sub_22B7DC118();
    swift_unknownObjectRelease();
    sub_22B4D1F68(v9, v8);
    sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v1 = [v7 BOOLValue];

      sub_22B4CFB78(v9);
      goto LABEL_6;
    }

    sub_22B4CFB78(v9);
  }

  v1 = 0;
LABEL_6:
  if (qword_28141F4C8 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_28141F4D0);
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBC78();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Junk filtering enabled: %{BOOL}d", v5, 8u);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  return v1;
}

uint64_t sub_22B77F408(void *a1)
{
  if (![v1 isJunkFilteringEnabled])
  {
    return 1;
  }

  v3 = *&v1[OBJC_IVAR___IMDTrustKitDecisioningManager_spamFilterHelper];
  v4 = sub_22B7DB678();
  v5 = [v3 isKnownContact_];

  if (v5)
  {
    if (qword_28141F4C8 != -1)
    {
      swift_once();
    }

    v6 = sub_22B7DB2B8();
    sub_22B4CFA74(v6, qword_28141F4D0);
    v7 = sub_22B7DB298();
    v8 = sub_22B7DBC78();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22B4CC000, v7, v8, "Junk filtering: TrustKit decisioning skipped because sender is known/contact.", v9, 2u);
      MEMORY[0x231898D60](v9, -1, -1);
    }

    goto LABEL_24;
  }

  if (a1)
  {
    v7 = a1;
    if ([v3 isFilterUnknownSendersEnabled] && !-[NSObject isFiltered](v7, sel_isFiltered))
    {
      goto LABEL_24;
    }

    if ([v7 getNumberOfTimesRespondedToThread]>= 3)
    {
      if (qword_28141F4C8 != -1)
      {
        swift_once();
      }

      v16 = sub_22B7DB2B8();
      sub_22B4CFA74(v16, qword_28141F4D0);
      v12 = sub_22B7DB298();
      v13 = sub_22B7DBC78();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_23;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Junk filtering: TrustKit decisioning skipped because chat has 3+ replies.";
    }

    else if ([v7 isFiltered]== 2)
    {
      if (qword_28141F4C8 != -1)
      {
        swift_once();
      }

      v11 = sub_22B7DB2B8();
      sub_22B4CFA74(v11, qword_28141F4D0);
      v12 = sub_22B7DB298();
      v13 = sub_22B7DBC78();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_23;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Junk filtering: TrustKit decisioning skipped because chat is already junk.";
    }

    else
    {
      if (![v7 isBusinessChat])
      {
        v10 = 0;
        goto LABEL_25;
      }

      if (qword_28141F4C8 != -1)
      {
        swift_once();
      }

      v18 = sub_22B7DB2B8();
      sub_22B4CFA74(v18, qword_28141F4D0);
      v12 = sub_22B7DB298();
      v13 = sub_22B7DBC78();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_23;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Junk filtering: TrustKit decisioning skipped because chat is a business chat.";
    }

    _os_log_impl(&dword_22B4CC000, v12, v13, v15, v14, 2u);
    MEMORY[0x231898D60](v14, -1, -1);
LABEL_23:

LABEL_24:
    v10 = 1;
LABEL_25:

    return v10;
  }

  return 0;
}

uint64_t sub_22B77F828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 88) = v12;
  *(v9 + 96) = v8;
  *(v9 + 160) = v13;
  *(v9 + 72) = a8;
  *(v9 + 80) = v11;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  return MEMORY[0x2822009F8](sub_22B77F86C, 0, 0);
}

uint64_t sub_22B77F86C()
{
  v0[13] = *(v0[12] + OBJC_IVAR___IMDTrustKitDecisioningManager_trustKit);
  v1 = *(MEMORY[0x277D73C30] + 4);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_22B77F910;

  return MEMORY[0x2821DBC28]();
}

uint64_t sub_22B77F910(char a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 161) = a1;

  return MEMORY[0x2822009F8](sub_22B77FA10, 0, 0);
}

uint64_t sub_22B77FA10()
{
  if (*(v0 + 161) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 120) = v1;
    *v1 = v0;
    v1[1] = sub_22B77FC08;
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);
    v4 = *(v0 + 72);
    v5 = *(v0 + 64);
    v6 = *(v0 + 40);
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);
    v9 = *(v0 + 16);
    v22 = *(v0 + 160);
    v20 = *(v0 + 48);
    v21 = *(v0 + 56);
    v19 = *(v0 + 80);

    return sub_22B780128(v8, v6, v2, v9, v7, v3, v5, v4);
  }

  else
  {
    if (qword_28141F4C8 != -1)
    {
      swift_once();
    }

    v11 = sub_22B7DB2B8();
    *(v0 + 128) = sub_22B4CFA74(v11, qword_28141F4D0);
    v12 = sub_22B7DB298();
    v13 = sub_22B7DBC78();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22B4CC000, v12, v13, "Junk filtering: decision service not prepared", v14, 2u);
      MEMORY[0x231898D60](v14, -1, -1);
    }

    v15 = *(MEMORY[0x277D73C58] + 4);
    v16 = swift_task_alloc();
    *(v0 + 136) = v16;
    *v16 = v0;
    v16[1] = sub_22B77FD0C;
    v17 = *(v0 + 104);

    return MEMORY[0x2821DBC78]();
  }
}

uint64_t sub_22B77FC08(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 120);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_22B77FD0C()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  *(v3 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B77FFA8, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v3 + 152) = v4;
    *v4 = v3;
    v4[1] = sub_22B77FEA4;
    v5 = *(v3 + 88);
    v6 = *(v3 + 96);
    v7 = *(v3 + 72);
    v8 = *(v3 + 64);
    v9 = *(v3 + 40);
    v10 = *(v3 + 24);
    v11 = *(v3 + 16);
    v18 = *(v3 + 160);
    v16 = *(v3 + 48);
    v17 = *(v3 + 56);
    v15 = *(v3 + 80);
    v12 = *(v3 + 32);

    return sub_22B780128(v12, v9, v5, v11, v10, v6, v8, v7);
  }
}

uint64_t sub_22B77FEA4(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 152);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_22B77FFA8()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v1;
  v4 = sub_22B7DB298();
  v5 = sub_22B7DBC98();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[18];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22B4CC000, v4, v5, "Junk filtering: error preparing TrustKit: %@", v8, 0xCu);
    sub_22B4D0D64(v9, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v9, -1, -1);
    MEMORY[0x231898D60](v8, -1, -1);
  }

  else
  {
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
  v13 = v0[1];

  return v13(0, v12);
}

uint64_t sub_22B780128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 400) = v25;
  *(v8 + 248) = v24;
  *(v8 + 232) = v23;
  *(v8 + 216) = a7;
  *(v8 + 224) = a8;
  *(v8 + 200) = a5;
  *(v8 + 208) = a6;
  *(v8 + 184) = a3;
  *(v8 + 192) = a4;
  *(v8 + 168) = a1;
  *(v8 + 176) = a2;
  v9 = sub_22B7DB4A8();
  *(v8 + 256) = v9;
  v10 = *(v9 - 8);
  *(v8 + 264) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  v12 = *(*(sub_22B6F0AD4(&qword_27D8CF030, &qword_22B7FBBF8) - 8) + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  v13 = sub_22B7DB4D8();
  *(v8 + 296) = v13;
  v14 = *(v13 - 8);
  *(v8 + 304) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  v16 = *(*(sub_22B6F0AD4(&qword_27D8CF038, &qword_22B7FBC00) - 8) + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  v17 = sub_22B7DB498();
  *(v8 + 328) = v17;
  v18 = *(v17 - 8);
  *(v8 + 336) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 344) = swift_task_alloc();
  v20 = *(*(sub_22B6F0AD4(&qword_27D8CF040, &qword_22B7FBC08) - 8) + 64) + 15;
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B780394, 0, 0);
}

uint64_t sub_22B780394()
{
  v69 = v0;
  if (qword_28141F4C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = sub_22B7DB2B8();
  *(v0 + 376) = sub_22B4CFA74(v2, qword_28141F4D0);

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBC78();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 184);
    v7 = *(v0 + 168);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v68 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_22B4CFAAC(v7, v5, &v68);
    *(v8 + 12) = 2048;
    *(v8 + 14) = v6;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Junk filtering: TrustKit prepared, sending request for service: %s for reason: %ld", v8, 0x16u);
    sub_22B4CFB78(v9);
    MEMORY[0x231898D60](v9, -1, -1);
    MEMORY[0x231898D60](v8, -1, -1);
  }

  v10 = *(v0 + 192);
  v11 = *(v0 + 200);
  v12 = sub_22B7DB678();
  v13 = [v12 _stripFZIDPrefix];

  if (v13 && (v14 = [v13 _bestGuessURI], v13, v14))
  {
    sub_22B7DB6A8();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v0 + 360);
  v18 = *(v0 + 184);
  v19 = sub_22B7DB478();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v21(v17, 1, 1, v19);
  if (v18 <= 2)
  {
    v22 = qword_278708A78[v18];
    v23 = *(v0 + 360);
    sub_22B4D0D64(v23, &qword_27D8CF040, &qword_22B7FBC08);
    (*(v20 + 104))(v23, *v22, v19);
    v21(v23, 0, 1, v19);
  }

  sub_22B7830B0(*(v0 + 360), *(v0 + 368));
  if (v16)
  {
    v24 = *(v0 + 400);
    v25 = [*(v0 + 216) string];
    sub_22B7DB6A8();

    v26 = *(v0 + 320);
    if (v24 == 1)
    {
      v27 = *MEMORY[0x277D73C38];
      v28 = sub_22B7DB468();
      v29 = *(v28 - 8);
      (*(v29 + 104))(v26, v27, v28);
      (*(v29 + 56))(v26, 0, 1, v28);
    }

    else
    {
      v51 = sub_22B7DB468();
      (*(*(v51 - 8) + 56))(v26, 1, 1, v51);
    }

    v53 = *(v0 + 328);
    v52 = *(v0 + 336);
    v54 = *(v0 + 320);
    v55 = *(v0 + 240);
    v56 = *(v0 + 248);
    v57 = *(v0 + 232);
    v65 = *(v0 + 344);
    v66 = *(v0 + 224);
    v67 = *(v0 + 208);
    v59 = *(v0 + 168);
    v58 = *(v0 + 176);
    sub_22B4D7E58(*(v0 + 368), *(v0 + 352), &qword_27D8CF040, &qword_22B7FBC08);

    sub_22B7DB488();
    v60 = *(v67 + OBJC_IVAR___IMDTrustKitDecisioningManager_trustKit);
    v61 = MEMORY[0x277D73C40];
    *(v0 + 80) = v53;
    *(v0 + 88) = v61;
    v62 = sub_22B6FC8CC((v0 + 56));
    (*(v52 + 16))(v62, v65, v53);
    v63 = *(MEMORY[0x277D73C60] + 4);
    v64 = swift_task_alloc();
    *(v0 + 384) = v64;
    *v64 = v0;
    v64[1] = sub_22B780A5C;

    return MEMORY[0x2821DBC80](v0 + 16, v0 + 56);
  }

  else
  {
    v30 = *(v0 + 200);

    v31 = sub_22B7DB298();
    v32 = sub_22B7DBCA8();

    if (os_log_type_enabled(v31, v32))
    {
      v34 = *(v0 + 192);
      v33 = *(v0 + 200);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v68 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_22B4CFAAC(v34, v33, &v68);
      _os_log_impl(&dword_22B4CC000, v31, v32, "Junk filtering: Failed to guess URI for sender: %s", v35, 0xCu);
      sub_22B4CFB78(v36);
      MEMORY[0x231898D60](v36, -1, -1);
      MEMORY[0x231898D60](v35, -1, -1);
    }

    v37 = *(v0 + 368);
    v38 = *(v0 + 208);
    sub_22B781384(*(v0 + 192), *(v0 + 200));
    v39 = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
    sub_22B4D0D64(v37, &qword_27D8CF040, &qword_22B7FBC08);
    v41 = *(v0 + 360);
    v40 = *(v0 + 368);
    v43 = *(v0 + 344);
    v42 = *(v0 + 352);
    v45 = *(v0 + 312);
    v44 = *(v0 + 320);
    v47 = *(v0 + 280);
    v46 = *(v0 + 288);
    v48 = *(v0 + 272);

    v49 = *(v0 + 8);

    return v49(0, v39);
  }
}

uint64_t sub_22B780A5C()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v6 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = sub_22B781160;
  }

  else
  {
    sub_22B4CFB78((v2 + 56));
    v4 = sub_22B780B78;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B780B78()
{
  v1 = v0[47];
  v2 = sub_22B7DB298();
  v3 = sub_22B7DBC78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v2, v3, "Junk filtering: Parsing TrustKit output", v4, 2u);
    MEMORY[0x231898D60](v4, -1, -1);
  }

  v5 = v0[37];
  v6 = v0[38];
  v7 = v0[36];

  sub_22B4D0DE8((v0 + 2), (v0 + 12));
  sub_22B6F0AD4(&qword_27D8CF048, &qword_22B7FBC10);
  v8 = swift_dynamicCast();
  v9 = *(v6 + 56);
  if (v8)
  {
    v11 = v0[38];
    v10 = v0[39];
    v13 = v0[36];
    v12 = v0[37];
    v15 = v0[34];
    v14 = v0[35];
    v16 = v0[32];
    v17 = v0[33];
    v9(v13, 0, 1, v12);
    (*(v11 + 32))(v10, v13, v12);
    sub_22B7DB4C8();
    (*(v17 + 104))(v15, *MEMORY[0x277D73C48], v16);
    sub_22B783120();
    sub_22B7DB8D8();
    sub_22B7DB8D8();
    v19 = v0[34];
    v18 = v0[35];
    v20 = v0[32];
    v21 = v0[33];
    if (v0[17] == v0[19] && v0[18] == v0[20])
    {
      v22 = *(v21 + 8);
      v22(v0[34], v0[32]);
      v22(v18, v20);

LABEL_11:
      v37 = v0[47];
      v38 = sub_22B7DB298();
      v39 = sub_22B7DBC78();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_22B4CC000, v38, v39, "Junk filtering: message is junk", v40, 2u);
        MEMORY[0x231898D60](v40, -1, -1);
      }

      v28 = v0[46];
      v42 = v0[42];
      v41 = v0[43];
      v43 = v0[41];
      v45 = v0[38];
      v44 = v0[39];
      v46 = v0[37];

      sub_22B7DB4B8();
      v68 = sub_22B7DB568();

      (*(v45 + 8))(v44, v46);
      sub_22B4CFB78(v0 + 2);
      (*(v42 + 8))(v41, v43);
      v32 = 2;
      goto LABEL_17;
    }

    v33 = v0[18];
    v34 = v0[20];
    v35 = sub_22B7DC518();
    v36 = *(v21 + 8);
    v36(v19, v20);
    v36(v18, v20);

    if (v35)
    {
      goto LABEL_11;
    }

    v47 = v0[47];
    v48 = sub_22B7DB298();
    v49 = sub_22B7DBC78();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_22B4CC000, v48, v49, "Junk filtering: message is not junk", v50, 2u);
      MEMORY[0x231898D60](v50, -1, -1);
    }

    v28 = v0[46];
    v52 = v0[42];
    v51 = v0[43];
    v53 = v0[41];
    v55 = v0[38];
    v54 = v0[39];
    v56 = v0[37];

    sub_22B7DB4B8();
    v68 = sub_22B7DB568();

    (*(v55 + 8))(v54, v56);
    sub_22B4CFB78(v0 + 2);
    (*(v52 + 8))(v51, v53);
    v32 = 1;
  }

  else
  {
    v23 = v0[47];
    v24 = v0[36];
    v9(v24, 1, 1, v0[37]);
    sub_22B4D0D64(v24, &qword_27D8CF030, &qword_22B7FBBF8);
    v25 = sub_22B7DB298();
    v26 = sub_22B7DBC98();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22B4CC000, v25, v26, "Junk filtering: Failed to parse decision", v27, 2u);
      MEMORY[0x231898D60](v27, -1, -1);
    }

    v28 = v0[46];
    v30 = v0[42];
    v29 = v0[43];
    v31 = v0[41];

    v68 = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
    sub_22B4CFB78(v0 + 2);
    (*(v30 + 8))(v29, v31);
    v32 = 0;
  }

LABEL_17:
  sub_22B4D0D64(v28, &qword_27D8CF040, &qword_22B7FBC08);
  v58 = v0[45];
  v57 = v0[46];
  v60 = v0[43];
  v59 = v0[44];
  v62 = v0[39];
  v61 = v0[40];
  v64 = v0[35];
  v63 = v0[36];
  v65 = v0[34];

  v66 = v0[1];

  return v66(v32, v68);
}

uint64_t sub_22B781160()
{
  v1 = v0[49];
  v2 = v0[47];
  sub_22B4CFB78(v0 + 7);
  v3 = v1;
  v4 = sub_22B7DB298();
  v5 = sub_22B7DBC98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[49];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22B4CC000, v4, v5, "Junk filtering: Failed with error: %@", v7, 0xCu);
    sub_22B4D0D64(v8, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v8, -1, -1);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  v11 = v0[49];
  v12 = v0[46];
  v14 = v0[42];
  v13 = v0[43];
  v15 = v0[41];

  v16 = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
  (*(v14 + 8))(v13, v15);
  sub_22B4D0D64(v12, &qword_27D8CF040, &qword_22B7FBC08);
  v18 = v0[45];
  v17 = v0[46];
  v20 = v0[43];
  v19 = v0[44];
  v22 = v0[39];
  v21 = v0[40];
  v24 = v0[35];
  v23 = v0[36];
  v25 = v0[34];

  v26 = v0[1];

  return v26(0, v16);
}

void sub_22B781384(uint64_t a1, uint64_t a2)
{
  v5 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = &v53 - v7;
  v8 = sub_22B7DAD38();
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 64);
  MEMORY[0x28223BE20](v8);
  v63 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_22B7DAD88();
  v62 = *(v64 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v60 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_22B7DAD48();
  v59 = *(v70 - 8);
  v13 = *(v59 + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_22B7DAD28();
  v15 = *(v68 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v68);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22B7DAD98();
  v67 = *(v19 - 8);
  v20 = *(v67 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v61 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v71 = &v53 - v22;
  v23 = [objc_opt_self() messagesDomain];
  if (v23)
  {
    v24 = v23;
    v25 = a2;
    v26 = sub_22B7DB678();
    v27 = [v24 BOOLForKey_];

    if ((v27 & 1) == 0)
    {
      v72 = 0;
      v73 = 0xE000000000000000;
      v55 = v2;
      sub_22B7DC2E8();

      v72 = 0xD000000000000026;
      v73 = 0x800000022B810EF0;
      MEMORY[0x231895140](a1, v25);
      MEMORY[0x231895140](46, 0xE100000000000000);
      v56 = v73;
      v57 = v72;
      v53 = "URI for sender handle ";
      (*(v15 + 104))(v18, *MEMORY[0x277D195A8], v68);
      v28 = v59;
      (*(v59 + 104))(v69, *MEMORY[0x277D195D8], v70);
      sub_22B6F0AD4(&unk_27D8CECA0, &unk_22B7FB7D0);
      v29 = sub_22B7DAD18();
      v30 = *(v29 - 8);
      v31 = *(v30 + 72);
      v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_22B7F93A0;
      v34 = v33 + v32;
      v35 = *MEMORY[0x277D195A0];
      v54 = v19;
      v36 = *(v30 + 104);
      v36(v34, v35, v29);
      v36(v34 + v31, *MEMORY[0x277D19598], v29);
      v37 = v60;
      sub_22B7DAD78();
      v39 = v65;
      v38 = v66;
      v40 = v63;
      (*(v65 + 104))(v63, *MEMORY[0x277D195C8], v66);
      v41 = v69;
      sub_22B7DAD08();

      (*(v39 + 8))(v40, v38);
      (*(v62 + 8))(v37, v64);
      (*(v28 + 8))(v41, v70);
      (*(v15 + 8))(v18, v68);
      v42 = sub_22B7DBA58();
      v43 = v58;
      (*(*(v42 - 8) + 56))(v58, 1, 1, v42);
      v44 = v67;
      v45 = v61;
      v46 = v71;
      v47 = v54;
      (*(v67 + 16))(v61, v71, v54);
      v48 = (*(v44 + 80) + 48) & ~*(v44 + 80);
      v49 = swift_allocObject();
      *(v49 + 2) = 0;
      *(v49 + 3) = 0;
      v50 = v56;
      *(v49 + 4) = v57;
      *(v49 + 5) = v50;
      (*(v44 + 32))(&v49[v48], v45, v47);
      v51 = v55;
      *&v49[(v20 + v48 + 7) & 0xFFFFFFFFFFFFFFF8] = v55;
      v52 = v51;
      sub_22B77E3D4(0, 0, v43, &unk_22B7FBC20, v49);

      (*(v44 + 8))(v46, v47);
    }
  }
}

uint64_t sub_22B781CA0(int a1, int a2, uint64_t a3, void *a4, uint64_t a5, int a6, int a7, void *aBlock, void *a9)
{
  v9[2] = a4;
  v9[3] = a9;
  v9[4] = _Block_copy(aBlock);
  v27 = sub_22B7DB6A8();
  v14 = v13;
  v9[5] = v13;
  v26 = sub_22B7DB6A8();
  v16 = v15;
  v9[6] = v15;
  if (a3)
  {
    v25 = sub_22B7DB6A8();
    v18 = v17;
    v9[7] = v17;
    if (a5)
    {
LABEL_3:
      v19 = sub_22B7DB6A8();
      v21 = v20;
      goto LABEL_6;
    }
  }

  else
  {
    v25 = 0;
    v18 = 0;
    v9[7] = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
  v21 = 0;
LABEL_6:
  v9[8] = v21;
  v22 = a4;
  a9;
  v23 = swift_task_alloc();
  v9[9] = v23;
  *v23 = v9;
  v23[1] = sub_22B781E38;

  return sub_22B77F828(v27, v14, v26, v16, v25, v18, v22, v19);
}

uint64_t sub_22B781E38(uint64_t a1, void *a2)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 40);
  v9 = *(*v2 + 32);
  v10 = *(*v2 + 24);
  v11 = *(*v2 + 16);
  v12 = *v2;

  if (v9)
  {
    v13 = *(v3 + 32);
    (v13)[2](v13, a1, a2);
    _Block_release(v13);
  }

  v14 = *(v12 + 8);

  return v14();
}

uint64_t sub_22B782038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[33] = a4;
  v7 = sub_22B7DA9A8();
  v6[36] = v7;
  v8 = *(v7 - 8);
  v6[37] = v8;
  v9 = *(v8 + 64) + 15;
  v6[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B7820FC, 0, 0);
}

uint64_t sub_22B7820FC()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = objc_opt_self();
  sub_22B7DA998();
  sub_22B7DA978();
  (*(v2 + 8))(v1, v3);
  v7 = sub_22B7DB678();

  v8 = sub_22B7DB678();
  v9 = sub_22B7DB678();
  v10 = sub_22B7DB678();
  v11 = sub_22B7DB678();
  v12 = sub_22B7DB678();
  v13 = [v6 userNotificationWithIdentifier:v7 title:v8 message:v9 defaultButton:v10 alternateButton:v11 otherButton:v12];

  if (v13)
  {
    sub_22B7DC118();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  *(v0 + 144) = v27;
  *(v0 + 160) = v28;
  if (*(v0 + 168))
  {
    sub_22B4D01A0(0, &qword_27D8CE548, 0x277D192D0);
    if (swift_dynamicCast())
    {
      v14 = *(v0 + 240);
      *(v0 + 312) = v14;
      v15 = objc_opt_self();
      v16 = v14;
      v17 = [v15 sharedInstance];
      if (v17)
      {
        sub_22B7DC118();
        swift_unknownObjectRelease();
        sub_22B4D7F04((v0 + 208), (v0 + 176));
        sub_22B4D01A0(0, &qword_27D8CF050, 0x277D192D8);
        swift_dynamicCast();
        v18 = *(v0 + 248);
        *(v0 + 320) = v18;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 256;
        *(v0 + 24) = sub_22B782588;
        v19 = swift_continuation_init();
        *(v0 + 136) = sub_22B6F0AD4(&qword_27D8CE550, &qword_22B7FA548);
        *(v0 + 80) = MEMORY[0x277D85DD0];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_22B77E9CC;
        *(v0 + 104) = &unk_283F1E958;
        *(v0 + 112) = v19;
        [v18 addUserNotification:v16 listener:0 completionHandler:v0 + 80];
        v17 = (v0 + 16);
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x282200938](v17);
    }
  }

  else
  {
    sub_22B4D0D64(v0 + 144, &unk_27D8CCDC0, &qword_22B7F9580);
  }

  if (qword_28141F4C8 != -1)
  {
    swift_once();
  }

  v20 = sub_22B7DB2B8();
  sub_22B4CFA74(v20, qword_28141F4D0);
  v21 = sub_22B7DB298();
  v22 = sub_22B7DBC98();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_22B4CC000, v21, v22, "Failed to create IMUserNotification for TTR, TTR will not proceed", v23, 2u);
    MEMORY[0x231898D60](v23, -1, -1);
  }

  v24 = *(v0 + 304);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_22B782588()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B782668, 0, 0);
}

uint64_t sub_22B782668()
{
  v1 = v0[32];
  v2 = v0[39];
  if (v1)
  {

    v2 = v0[39];
  }

  else
  {
    v1 = v0[39];
  }

  v0[41] = v1;

  v3 = [v1 response];
  if (v3 == 2)
  {
    if (qword_28141F4C8 != -1)
    {
      swift_once();
    }

    v7 = sub_22B7DB2B8();
    sub_22B4CFA74(v7, qword_28141F4D0);
    v8 = sub_22B7DB298();
    v9 = sub_22B7DBC88();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v8, v9, "User asked to stop showing TTR prompts", v10, 2u);
      MEMORY[0x231898D60](v10, -1, -1);
    }

    v11 = [objc_opt_self() messagesDomain];
    v12 = v0[40];
    if (!v11)
    {
      goto LABEL_21;
    }

    v13 = v11;
    v14 = sub_22B7DB678();
    [v13 setBool:1 forKey:v14];
  }

  else
  {
    if (!v3)
    {
      v4 = *(MEMORY[0x277D195E8] + 4);
      v5 = swift_task_alloc();
      v0[42] = v5;
      *v5 = v0;
      v5[1] = sub_22B782978;
      v6 = v0[35];

      return MEMORY[0x282173A08]();
    }

    if (qword_28141F4C8 != -1)
    {
      swift_once();
    }

    v15 = sub_22B7DB2B8();
    sub_22B4CFA74(v15, qword_28141F4D0);
    v13 = sub_22B7DB298();
    v16 = sub_22B7DBC88();
    v17 = os_log_type_enabled(v13, v16);
    v14 = v0[40];
    if (v17)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22B4CC000, v13, v16, "User declined TTR, not proceeding", v18, 2u);
      MEMORY[0x231898D60](v18, -1, -1);
    }

    v12 = v1;
  }

  v1 = v14;
  v12 = v13;
LABEL_21:

  v19 = v0[38];

  v20 = v0[1];

  return v20();
}

uint64_t sub_22B782978()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_22B782AF8;
  }

  else
  {
    v3 = sub_22B782A8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B782A8C()
{
  v1 = *(v0 + 320);

  v2 = *(v0 + 304);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22B782AF8()
{
  if (qword_28141F4C8 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_28141F4D0);
  v3 = v1;
  v4 = sub_22B7DB298();
  v5 = sub_22B7DBC98();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[43];
  v8 = v0[40];
  v9 = v0[41];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_22B4CC000, v4, v5, "Failed to open TTR: %@", v10, 0xCu);
    sub_22B4D0D64(v11, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v11, -1, -1);
    MEMORY[0x231898D60](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[38];

  v15 = v0[1];

  return v15();
}

void __swiftcall IMDTrustKitDecisioningManager.init()(IMDTrustKitDecisioningManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_22B782DC8()
{
  v2 = *(v0 + 24);
  v12 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_22B6F12E8;

  JUMPOUT(0x22B781CA0);
}

uint64_t sub_22B782EC0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B782FB8;

  return v7(a1);
}

uint64_t sub_22B782FB8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B7830B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CF040, &qword_22B7FBC08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22B783120()
{
  result = qword_28141F330;
  if (!qword_28141F330)
  {
    sub_22B7DB4A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F330);
  }

  return result;
}

uint64_t sub_22B783178(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22B7DAD98() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_22B6F12E8;

  return sub_22B782038(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_22B7832B0(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_22B7833A4;

  return v6(v2 + 16);
}

uint64_t sub_22B7833A4()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22B7834B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B6F12E8;

  return sub_22B7832B0(a1, v5);
}

uint64_t sub_22B783570(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B6F0D94;

  return sub_22B7832B0(a1, v5);
}

uint64_t sub_22B783628(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B6F12E8;

  return sub_22B782EC0(a1, v5);
}

uint64_t sub_22B7836E0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_22B7DBB68();
  if (!v26)
  {
    return sub_22B7DB948();
  }

  v48 = v26;
  v52 = sub_22B7DC3C8();
  v39 = sub_22B7DC3D8();
  sub_22B7DC378();
  result = sub_22B7DBB58();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_22B7DBC28();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_22B7DC3B8();
      result = sub_22B7DBB98();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Multimap.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = v3[1];
  v13 = v3[2];
  v14 = v3[3];
  v15 = v3[4];
  (*(v7 + 16))(v10);
  v16 = a2[3];
  v17 = a2[4];
  v18 = type metadata accessor for MultimapValues();
  (*(v7 + 32))(&a3[*(v18 + 44)], v10, v6);
  *a3 = v11;
  *(a3 + 1) = v12;
  *(a3 + 2) = v13;
  *(a3 + 3) = v14;
  *(a3 + 4) = v15;
}

uint64_t Multimap.append(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a1;
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v8);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B784280(v17);
  v18 = *v3;
  v21 = sub_22B7DB978();
  (*(v13 + 16))(v16, v22, v12);
  sub_22B7DB998();
  sub_22B7DB988();
  (*(v6 + 16))(v10, v23, v5);
  sub_22B7DB998();
  sub_22B7DB988();
  return sub_22B784464(v21, a3);
}

double Multimap.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_22B7DB558();
  v2 = sub_22B7DB558();
  v3 = MEMORY[0x277D84F90];
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *&result = 1;
  *(a1 + 24) = xmmword_22B7F9630;
  return result;
}

double Multimap.init<A>(keysAndValues:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v48 = a5;
  v42 = a6;
  v43 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = *(TupleTypeMetadata2 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v37 - v11;
  v13 = sub_22B7DC018();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v37 - v16;
  v18 = *(a4 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  v23 = *(v39 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v25 = &v37 - v24;
  v49 = a2;
  v27 = v26;
  *&v51 = sub_22B7DB558();
  *(&v51 + 1) = sub_22B7DB558();
  v52 = MEMORY[0x277D84F90];
  v53 = xmmword_22B7F9630;
  v40 = v18;
  (*(v18 + 16))(v21, v43, a4);
  sub_22B7DB8A8();
  v41 = a4;
  v28 = v38;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v50 = v25;
  v47 = AssociatedConformanceWitness;
  sub_22B7DC0B8();
  v30 = *(v28 + 48);
  if (v30(v17, 1, TupleTypeMetadata2) != 1)
  {
    v31 = *(*(v49 - 8) + 32);
    v45 = *(v49 - 8) + 32;
    v46 = v31;
    v44 = a3 - 8;
    do
    {
      v32 = *(TupleTypeMetadata2 + 48);
      v46(v12, v17, v49);
      (*(*(a3 - 8) + 32))(&v12[v32], &v17[v32], a3);
      v33 = type metadata accessor for Multimap();
      Multimap.append(_:forKey:)(&v12[v32], v12, v33);
      (*(v28 + 8))(v12, TupleTypeMetadata2);
      sub_22B7DC0B8();
    }

    while (v30(v17, 1, TupleTypeMetadata2) != 1);
  }

  (*(v40 + 8))(v43, v41);
  (*(v39 + 8))(v50, v27);
  v34 = v52;
  v35 = v42;
  *v42 = v51;
  *(v35 + 2) = v34;
  result = *&v53;
  *(v35 + 24) = v53;
  return result;
}

uint64_t sub_22B784280(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 16);
  result = sub_22B7DB978();
  v6 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = 100 * v6;
  if ((v6 * 100) >> 64 != (100 * v6) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = v7 + 60;
  if (__OFADD__(v7, 60))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v8 <= 480)
  {
    if (v1[4] >= 8)
    {
      return result;
    }

    LODWORD(v9) = 8;
    goto LABEL_9;
  }

  v10 = v7 + 59;
  v9 = (v8 - 1) / 0x3CuLL;
  if (v1[4] >= v9)
  {
    return result;
  }

  if (v10 >> 33 > 0xE)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_9:
  v11 = (v9 - 1) | ((v9 - 1) >> 1) | (((v9 - 1) | ((v9 - 1) >> 1)) >> 2);
  v12 = v11 | (v11 >> 4) | ((v11 | (v11 >> 4)) >> 8);
  v13 = v12 | HIWORD(v12);
  v14 = (v13 + 1);
  if (__OFADD__(v13, 1))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *&v17 = MEMORY[0x277D84F90];
  *(&v17 + 1) = 1;
  do
  {
    sub_22B713BE0(0);
    sub_22B713E60(0);
    --v14;
  }

  while (v14);
  v15 = v1[2];

  *(v1 + 1) = v17;
  v1[4] = 0;
  sub_22B7DB998();
  swift_getWitnessTable();
  sub_22B7DBB48();
  result = v17;
  if (v17 != 1)
  {
    if (v17 <= 1)
    {
      do
      {
        v16 = result + 1;
        sub_22B784464(result, a1);
        result = v16;
      }

      while (v16 != 1);
      return result;
    }

LABEL_21:
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t Multimap.count.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return sub_22B7DB978();
}

uint64_t sub_22B784464(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2 + 2;
  v11 = v2[2];
  v13 = v3[1];
  v24 = *v3;
  v25 = v13;
  v26 = v11;
  v27 = *(v3 + 3);

  sub_22B7DB9A8();
  v14 = sub_22B784690(v10, a2);
  (*(v7 + 8))(v10, v6);

  v15 = v3[1];
  v16 = *v12;
  v24 = *v3;
  v25 = v15;
  v26 = v16;
  v27 = *(v3 + 3);
  v17 = sub_22B7846DC(v14);

  v19 = v3[4];
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!v19)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v20 = __OFADD__(a1, 1);
  v21 = a1 + 1;
  if (v20)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = v17 % v19;
    sub_22B713BE0(v21);
    return sub_22B71411C(v21, v22);
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_22B784690(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  result = sub_22B7DB5B8();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3)
  {
    result %= v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_22B7846DC(unint64_t result)
{
  v2 = v1[4];
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

  if (!v2)
  {
    return -1;
  }

  v3 = v1[3];
  v4 = 64 - v3;
  if (__OFSUB__(64, v3))
  {
    goto LABEL_43;
  }

  v5 = result;
  v6 = 0;
  v7 = v1[2];
  v8 = v7 + 32;
  v9 = *(v7 + 16);
  v10 = -1 - v3;
  while (1)
  {
    result = v6 + v5;
    if (__CFADD__(v6, v5))
    {
      break;
    }

    v11 = result % v2 * v3;
    if (((result % v2) * v3) >> 64 != v11 >> 63)
    {
      goto LABEL_38;
    }

    if (v11 >= 0)
    {
      v12 = result % v2 * v3;
    }

    else
    {
      v12 = v11 + 63;
    }

    if (v11 < -63)
    {
      goto LABEL_39;
    }

    if (v12 >> 6 >= v9)
    {
      goto LABEL_40;
    }

    v13 = 64 - (v11 - (v12 & 0xFFFFFFFFFFFFFFC0));
    v14 = __OFSUB__(v13, v3);
    v15 = v13 - v3;
    if (v14)
    {
      goto LABEL_41;
    }

    if (v15 <= -65 || v15 > 64)
    {
LABEL_15:
      if (v10 < 0xFFFFFFFFFFFFFF7FLL)
      {
        return result;
      }

      if ((v4 & 0x8000000000000000) == 0)
      {
        if (v4 >= 0x40)
        {
          return result;
        }

        v16 = 0;
        goto LABEL_24;
      }

      if (v4 <= 0xFFFFFFFFFFFFFFC0)
      {
        return result;
      }

      v16 = 0;
      goto LABEL_33;
    }

    v17 = *(v8 + 8 * (v12 >> 6));
    if (v15 < 0)
    {
      if (v15 == -64)
      {
        goto LABEL_15;
      }

      v16 = v17 >> -v15;
      if (v10 < 0xFFFFFFFFFFFFFF7FLL)
      {
        return result;
      }
    }

    else
    {
      if (v15 == 64)
      {
        goto LABEL_15;
      }

      v16 = v17 << v15;
      if (v10 < 0xFFFFFFFFFFFFFF7FLL)
      {
        return result;
      }
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      if (v4 >= 0x40)
      {
        return result;
      }

LABEL_24:
      if (!(v16 >> v4))
      {
        return result;
      }

      goto LABEL_25;
    }

    if (v4 <= 0xFFFFFFFFFFFFFFC0)
    {
      return result;
    }

LABEL_33:
    if (!(v16 << (v3 - 64)))
    {
      return result;
    }

LABEL_25:
    if (v2 == ++v6)
    {
      return -1;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

unint64_t sub_22B78483C(uint64_t a1, uint64_t a2)
{
  v3 = v2[4];
  if (!v3)
  {
    return 0;
  }

  v13 = v2[4];
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  v6 = sub_22B784690(a1, a2);
  result = sub_22B7848D8(a1, v6, a2);
  if (v8)
  {
    return 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result %= v3;
  }

  return result;
}

unint64_t sub_22B7848D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v34 = a2;
  v32 = a1;
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v3[4];
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_45;
  }

  if (!v10)
  {
    return 0;
  }

  v11 = v3[3];
  v12 = 64 - v11;
  if (__OFSUB__(64, v11))
  {
    goto LABEL_46;
  }

  v13 = 0;
  v14 = v3[2];
  v15 = *v3;
  v29 = v14 + 32;
  v30 = v15;
  v31 = -1 - v11;
  v28 = v11 - 64;
  v16 = (v7 + 8);
  while (1)
  {
    v17 = v13 + v34;
    if (__CFADD__(v13, v34))
    {
      break;
    }

    v18 = v17 % v10 * v11;
    if (((v17 % v10) * v11) >> 64 != v18 >> 63)
    {
      goto LABEL_40;
    }

    if (v18 >= 0)
    {
      v19 = v17 % v10 * v11;
    }

    else
    {
      v19 = v18 + 63;
    }

    if (v18 < -63)
    {
      goto LABEL_41;
    }

    if (v19 >> 6 >= *(v14 + 16))
    {
      goto LABEL_42;
    }

    v20 = 64 - (v18 - (v19 & 0xFFFFFFFFFFFFFFC0));
    v21 = __OFSUB__(v20, v11);
    v22 = v20 - v11;
    if (v21)
    {
      goto LABEL_43;
    }

    if (v22 <= -65 || v22 > 64)
    {
LABEL_15:
      if (v31 < 0xFFFFFFFFFFFFFF7FLL)
      {
        return 0;
      }

      result = 0;
      if ((v12 & 0x8000000000000000) == 0)
      {
        if (v12 >= 0x40)
        {
          return result;
        }

        goto LABEL_25;
      }

      if (v12 <= 0xFFFFFFFFFFFFFFC0)
      {
        return result;
      }

      goto LABEL_35;
    }

    v23 = *(v29 + 8 * (v19 >> 6));
    if (v22 < 0)
    {
      if (v22 == -64)
      {
        goto LABEL_15;
      }

      result = v23 >> -v22;
    }

    else
    {
      if (v22 == 64)
      {
        goto LABEL_15;
      }

      result = v23 << v22;
    }

    if (v31 < 0xFFFFFFFFFFFFFF7FLL)
    {
      return 0;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v12 >= 0x40)
      {
        return 0;
      }

LABEL_25:
      v24 = result >> v12;
      if (!(result >> v12))
      {
        return 0;
      }

      goto LABEL_26;
    }

    if (v12 <= 0xFFFFFFFFFFFFFFC0)
    {
      return 0;
    }

LABEL_35:
    v24 = result << v28;
    if (!(result << v28))
    {
      return 0;
    }

LABEL_26:
    result = v24 - 1;
    if ((v24 - 1) < 0)
    {
      goto LABEL_44;
    }

    sub_22B7DB9A8();
    v25 = *(*(v33 + 32) + 8);
    v26 = sub_22B7DB658();
    result = (*v16)(v9, v4);
    if (v26)
    {
      return v17;
    }

    if (v10 == ++v13)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

unint64_t sub_22B784B6C(unint64_t result, uint64_t a2)
{
  v3 = v2[4];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v2[1];
  result = sub_22B714034(result % v3, v2[2], v2[3]);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = *(a2 + 24);

  return sub_22B7DB9A8();
}

IMDaemonCore::MultimapIndex __swiftcall Multimap.index(after:)(IMDaemonCore::MultimapIndex after)
{
  if (__OFADD__(*after.index, 1))
  {
    __break(1u);
  }

  else
  {
    *v1 = *after.index + 1;
  }

  return after;
}

uint64_t Multimap.subscript.getter(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = *v4;
  v8 = v4[1];
  v9 = *(a4 + 16);
  sub_22B7DB9A8();
  v10 = *(a4 + 24);

  return sub_22B7DB9A8();
}

uint64_t Multimap.endIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  result = sub_22B7DB978();
  *a2 = result;
  return result;
}

void (*sub_22B784CBC(uint64_t *a1, uint64_t *a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  v8[5] = v12;
  if (v6)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  v8[6] = v13;
  v15 = sub_22B784EC8(v8, a2, a3);
  v17 = v16;
  v8[7] = v15;
  (*(*(v10 - 8) + 16))(v14);
  (*(*(v9 - 8) + 16))(v14 + *(TupleTypeMetadata2 + 48), v17, v9);
  return sub_22B784E50;
}