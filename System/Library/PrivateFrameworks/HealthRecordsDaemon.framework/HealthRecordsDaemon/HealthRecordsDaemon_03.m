uint64_t sub_251AB4924()
{
  v1 = v0[30];
  sub_251AB5ED0((v0 + 2));

  v2 = v0[33];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[21];
  v7 = v0[22];

  v9 = v0[1];

  return v9();
}

uint64_t sub_251AB49DC()
{
  v1 = v0[26];
  sub_251AB5F88(v0[22], type metadata accessor for CatalogEntry);
  sub_251AB5F88(v1, sub_251AB4C94);
  sub_251AB5ED0((v0 + 2));
  v2 = v0[37];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[21];
  v7 = v0[22];

  v9 = v0[1];

  return v9();
}

uint64_t sub_251AB4AC4()
{
  v1 = v0[30];
  sub_251AB5F88(v0[26], sub_251AB4C94);
  sub_251AB5ED0((v0 + 2));

  v2 = v0[42];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[21];
  v7 = v0[22];

  v9 = v0[1];

  return v9();
}

uint64_t sub_251AB4B98()
{
  v1 = v0[26];
  v2 = v0[24];
  sub_251AB5F88(v0[21], type metadata accessor for CatalogEntry);
  sub_251AB5F88(v2, sub_251AB4C94);
  sub_251AB5F88(v1, sub_251AB4C94);
  sub_251AB5ED0((v0 + 2));
  v3 = v0[44];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v9 = v0[21];
  v8 = v0[22];

  v10 = v0[1];

  return v10();
}

void sub_251AB4C94()
{
  if (!qword_27F4794C8)
  {
    type metadata accessor for CatalogEntry();
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4794C8);
    }
  }
}

uint64_t sub_251AB4CEC(uint64_t a1, uint64_t *a2)
{
  v3[21] = a1;
  v3[22] = v2;
  v5 = type metadata accessor for CatalogEntry();
  v3[23] = v5;
  v6 = *(v5 - 8);
  v3[24] = v6;
  v7 = *(v6 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a2;
  v3[28] = v8;
  v3[29] = v9;

  return MEMORY[0x2822009F8](sub_251AB4DD8, 0, 0);
}

uint64_t sub_251AB4DD8(uint64_t a1)
{
  v2 = v1[29];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v1[26];
    v6 = v1[24];
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        return MEMORY[0x282200938](a1);
      }

      v7 = v1[26];
      sub_251AB6030(v1[29] + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, v7, type metadata accessor for CatalogEntry);
      v8 = *v7 == 0xD000000000000014 && 0x8000000251C8A190 == *(v5 + 8);
      if (v8 || (sub_251C719D4() & 1) != 0)
      {
        break;
      }

      ++v4;
      a1 = sub_251AB5F88(v1[26], type metadata accessor for CatalogEntry);
      if (v3 == v4)
      {
        goto LABEL_10;
      }
    }

    v17 = v1[27];
    v16 = v1[28];
    v18 = v1[22];
    sub_251AB5F24(v1[26], v17);
    sub_251AB5F24(v17, v16);
    v19 = *(v18 + 48);
    v1[2] = v1;
    v1[7] = v1 + 18;
    v1[3] = sub_251AB5080;
    v20 = swift_continuation_init();
    sub_251AB6098();
    v1[17] = v21;
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_251AB5E04;
    v1[13] = &block_descriptor_10;
    v1[14] = v20;
    [v19 fetchCurrentRegistryIssuerContentVersionWithCompletion_];
    a1 = (v1 + 2);

    return MEMORY[0x282200938](a1);
  }

  else
  {
LABEL_10:
    sub_251A8578C();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();
    v11 = v1[27];
    v10 = v1[28];
    v13 = v1[25];
    v12 = v1[26];

    v14 = v1[1];

    return v14();
  }
}

uint64_t sub_251AB5080()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_251AB551C;
  }

  else
  {
    v3 = sub_251AB5190;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251AB5190()
{
  v36 = v0;
  v1 = v0[28];
  v2 = v0[18];
  v3 = [v2 integerValue];

  v4 = *(v1 + 16);
  if (v3 >= v4)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v7 = v0[28];
    v8 = v0[25];
    v9 = sub_251C70764();
    __swift_project_value_buffer(v9, qword_2813E8130);
    sub_251AB6030(v7, v8, type metadata accessor for CatalogEntry);
    v10 = sub_251C70744();
    v11 = sub_251C713F4();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[28];
    v14 = v0[25];
    if (v12)
    {
      v15 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v15 = 136315906;
      v0[19] = &type metadata for IssuerDirectoryDownloadTask;
      sub_251AB5FE8();
      v16 = sub_251C70F74();
      v18 = sub_251B10780(v16, v17, &v35);

      *(v15 + 4) = v18;
      v33 = v13;
      *(v15 + 12) = 2080;
      v0[20] = v3;
      v19 = sub_251C719A4();
      v21 = sub_251B10780(v19, v20, &v35);

      *(v15 + 14) = v21;
      *(v15 + 22) = 2080;
      if (v4 == v3)
      {
        v22 = 0x6F74206C61757165;
      }

      else
      {
        v22 = 0x2072657461657267;
      }

      if (v4 == v3)
      {
        v23 = 0xE800000000000000;
      }

      else
      {
        v23 = 0xEC0000006E616874;
      }

      v24 = sub_251B10780(v22, v23, &v35);

      *(v15 + 24) = v24;
      *(v15 + 32) = 2048;
      v25 = *(v14 + 16);
      sub_251AB5F88(v14, type metadata accessor for CatalogEntry);
      *(v15 + 34) = v25;
      _os_log_impl(&dword_251A6C000, v10, v11, "%s: current issuer registry content version (%s) is %s the latest catalog version (%ld). SKIPPING Download", v15, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v34, -1, -1);
      MEMORY[0x25308E2B0](v15, -1, -1);

      v26 = v33;
    }

    else
    {
      sub_251AB5F88(v0[25], type metadata accessor for CatalogEntry);

      v26 = v13;
    }

    sub_251AB5F88(v26, type metadata accessor for CatalogEntry);
    v5 = 1;
    v6 = v3;
  }

  else
  {
    sub_251AB5F24(v0[28], v0[21]);
    v5 = 0;
    v6 = 0;
  }

  v28 = v0[27];
  v27 = v0[28];
  v30 = v0[25];
  v29 = v0[26];
  (*(v0[24] + 56))(v0[21], v5, 1, v0[23]);

  v31 = v0[1];

  return v31(v6, v3 < v4);
}

uint64_t sub_251AB551C()
{
  v1 = v0[30];
  v2 = v0[28];
  swift_willThrow();
  sub_251AB5F88(v2, type metadata accessor for CatalogEntry);
  v3 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v7 = v0[25];
  v6 = v0[26];

  v8 = v0[1];

  return v8();
}

uint64_t sub_251AB55D4(uint64_t a1, uint64_t *a2)
{
  v3[21] = a1;
  v3[22] = v2;
  v5 = type metadata accessor for CatalogEntry();
  v3[23] = v5;
  v6 = *(v5 - 8);
  v3[24] = v6;
  v7 = *(v6 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a2;
  v3[28] = v8;
  v3[29] = v9;

  return MEMORY[0x2822009F8](sub_251AB56C0, 0, 0);
}

uint64_t sub_251AB56C0(uint64_t a1)
{
  v2 = v1[29];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v1[26];
    v6 = v1[24];
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        return MEMORY[0x282200938](a1);
      }

      v7 = v1[26];
      sub_251AB6030(v1[29] + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, v7, type metadata accessor for CatalogEntry);
      v8 = *v7 == 0xD000000000000012 && 0x8000000251C8A150 == *(v5 + 8);
      if (v8 || (sub_251C719D4() & 1) != 0)
      {
        break;
      }

      ++v4;
      a1 = sub_251AB5F88(v1[26], type metadata accessor for CatalogEntry);
      if (v3 == v4)
      {
        goto LABEL_10;
      }
    }

    v17 = v1[27];
    v16 = v1[28];
    v18 = v1[22];
    sub_251AB5F24(v1[26], v17);
    sub_251AB5F24(v17, v16);
    v19 = *(v18 + 48);
    v1[2] = v1;
    v1[7] = v1 + 18;
    v1[3] = sub_251AB5968;
    v20 = swift_continuation_init();
    sub_251AB6098();
    v1[17] = v21;
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_251AB5E04;
    v1[13] = &block_descriptor;
    v1[14] = v20;
    [v19 fetchCurrentRegistryPublicKeyContentVersionWithCompletion_];
    a1 = (v1 + 2);

    return MEMORY[0x282200938](a1);
  }

  else
  {
LABEL_10:
    sub_251A8578C();
    swift_allocError();
    *v9 = 5;
    swift_willThrow();
    v11 = v1[27];
    v10 = v1[28];
    v13 = v1[25];
    v12 = v1[26];

    v14 = v1[1];

    return v14();
  }
}

uint64_t sub_251AB5968()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_251AB6234;
  }

  else
  {
    v3 = sub_251AB5A78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251AB5A78()
{
  v36 = v0;
  v1 = v0[28];
  v2 = v0[18];
  v3 = [v2 integerValue];

  v4 = *(v1 + 16);
  if (v3 >= v4)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v7 = v0[28];
    v8 = v0[25];
    v9 = sub_251C70764();
    __swift_project_value_buffer(v9, qword_2813E8130);
    sub_251AB6030(v7, v8, type metadata accessor for CatalogEntry);
    v10 = sub_251C70744();
    v11 = sub_251C713F4();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[28];
    v14 = v0[25];
    if (v12)
    {
      v15 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v15 = 136315906;
      v0[19] = &type metadata for IssuerDirectoryDownloadTask;
      sub_251AB5FE8();
      v16 = sub_251C70F74();
      v18 = sub_251B10780(v16, v17, &v35);

      *(v15 + 4) = v18;
      v33 = v13;
      *(v15 + 12) = 2080;
      v0[20] = v3;
      v19 = sub_251C719A4();
      v21 = sub_251B10780(v19, v20, &v35);

      *(v15 + 14) = v21;
      *(v15 + 22) = 2080;
      if (v4 == v3)
      {
        v22 = 0x6F74206C61757165;
      }

      else
      {
        v22 = 0x2072657461657267;
      }

      if (v4 == v3)
      {
        v23 = 0xE800000000000000;
      }

      else
      {
        v23 = 0xEC0000006E616874;
      }

      v24 = sub_251B10780(v22, v23, &v35);

      *(v15 + 24) = v24;
      *(v15 + 32) = 2048;
      v25 = *(v14 + 16);
      sub_251AB5F88(v14, type metadata accessor for CatalogEntry);
      *(v15 + 34) = v25;
      _os_log_impl(&dword_251A6C000, v10, v11, "%s: current public key registry content version (%s) is %s the latest catalog version (%ld). SKIPPING Download", v15, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v34, -1, -1);
      MEMORY[0x25308E2B0](v15, -1, -1);

      v26 = v33;
    }

    else
    {
      sub_251AB5F88(v0[25], type metadata accessor for CatalogEntry);

      v26 = v13;
    }

    sub_251AB5F88(v26, type metadata accessor for CatalogEntry);
    v5 = 1;
    v6 = v3;
  }

  else
  {
    sub_251AB5F24(v0[28], v0[21]);
    v5 = 0;
    v6 = 0;
  }

  v28 = v0[27];
  v27 = v0[28];
  v30 = v0[25];
  v29 = v0[26];
  (*(v0[24] + 56))(v0[21], v5, 1, v0[23]);

  v31 = v0[1];

  return v31(v6, v3 < v4);
}

uint64_t sub_251AB5E04(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_251A82284();
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_251AB5F24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AB5F88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_251AB5FE8()
{
  result = qword_27F4794D0;
  if (!qword_27F4794D0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F4794D0);
  }

  return result;
}

uint64_t sub_251AB6030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_251AB6098()
{
  if (!qword_27F4794D8)
  {
    sub_251AB6108();
    sub_251A82284();
    v0 = sub_251C71224();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4794D8);
    }
  }
}

unint64_t sub_251AB6108()
{
  result = qword_2813E1D28;
  if (!qword_2813E1D28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813E1D28);
  }

  return result;
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

uint64_t sub_251AB6188(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_251AB61D0(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_251AB623C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1B50);
  __swift_project_value_buffer(v0, qword_27F4A1B50);
  sub_251AB9AB0(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_251C75420;
  v5 = v22 + v4 + *(v2 + 56);
  *(v22 + v4) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_251C706B4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v22 + v4 + v3 + *(v2 + 56);
  *(v22 + v4 + v3) = 2;
  *v9 = "health_institute_id";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21888];
  v8();
  v11 = (v22 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "patient_id";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v8();
  v13 = (v22 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "date_last_modified";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v8();
  v15 = (v22 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "references";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v8();
  v17 = (v22 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "data";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v8();
  v19 = (v22 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "raw_data";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v8();
  return sub_251C706C4();
}

uint64_t sub_251AB6564()
{
  v0 = type metadata accessor for PBPlainText._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0xE000000000000000;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  v5 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  qword_27F4794E0 = v3;
  return result;
}

uint64_t sub_251AB6604(uint64_t a1)
{
  v20 = type metadata accessor for PBPlainText.OneOf_Plaintext;
  sub_251AB9AB0(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  v8 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v9;
  *(v1 + 24) = v10;
  swift_beginAccess();
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v11;
  *(v1 + 40) = v12;
  swift_beginAccess();
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v13;
  *(v1 + 56) = v14;

  swift_beginAccess();
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  swift_beginAccess();
  v17 = *(v1 + 72);
  *(v1 + 64) = v15;
  *(v1 + 72) = v16;

  v18 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  sub_251AB9C18(a1 + v18, v6, &qword_27F479500, v20);

  swift_beginAccess();
  sub_251AB9B14(v6, v1 + v7);
  swift_endAccess();
  return v1;
}

uint64_t sub_251AB68A8()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];

  sub_251AB9BA8(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_251AB6968()
{
  sub_251AB9AB0(319, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_251AB6AA8()
{
  result = sub_251C703B4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PBPlainText._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_251AB6B2C()
{
  result = type metadata accessor for PBReferences(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PBTypedData(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PBRawData(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_251AB6BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for PBPlainText(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for PBPlainText._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v11 = sub_251AB6604(v12);
    *(v4 + v8) = v11;
  }

  return sub_251AB6C5C(v11, a1, a2, a3);
}

uint64_t sub_251AB6C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_251C70444();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_251AB6DB4();
          break;
        case 2:
          sub_251AB6E48();
          break;
        case 3:
          sub_251AB6ECC();
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_251AB7674(a1, a2, a3, a4);
      }

      else if (result == 7)
      {
        sub_251AB7D18(a1, a2, a3, a4);
      }
    }

    else if (result == 4)
    {
      sub_251AB6F50();
    }

    else
    {
      sub_251AB6FD4(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_251AB6DB4()
{
  swift_beginAccess();
  sub_251AB99F4();
  sub_251C70494();
  return swift_endAccess();
}

uint64_t sub_251AB6E48()
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251AB6ECC()
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251AB6F50()
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251AB6FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v59 = a2;
  v60 = a3;
  v5 = type metadata accessor for PBReferences(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v53 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = &v46 - v10;
  v55 = type metadata accessor for PBPlainText.OneOf_Plaintext;
  v11 = MEMORY[0x277D83D88];
  sub_251AB9AB0(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  sub_251AB9AB0(0, &qword_27F479558, type metadata accessor for PBReferences, v11);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v56 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v46 - v30;
  v54 = v6;
  v32 = *(v6 + 56);
  v58 = v5;
  v33 = v5;
  v34 = v19;
  v51 = v32;
  v32(&v46 - v30, 1, 1, v33);
  v35 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  v50 = a1;
  v47 = v35;
  sub_251AB9C18(a1 + v35, v17, &qword_27F479500, v55);
  v46 = v34;
  LODWORD(v55) = (*(v34 + 48))(v17, 1, v18);
  v48 = v18;
  if (v55 == 1)
  {
    sub_251AB9BA8(v17, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
LABEL_5:
    v36 = v58;
    goto LABEL_6;
  }

  sub_251AB9A48(v17, v25, type metadata accessor for PBPlainText.OneOf_Plaintext);
  sub_251AB9A48(v25, v23, type metadata accessor for PBPlainText.OneOf_Plaintext);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_251ABA428(v23, type metadata accessor for PBPlainText.OneOf_Plaintext);
    goto LABEL_5;
  }

  sub_251AB9BA8(v31, &qword_27F479558, type metadata accessor for PBReferences);
  v40 = v52;
  sub_251AB9A48(v23, v52, type metadata accessor for PBReferences);
  sub_251AB9A48(v40, v31, type metadata accessor for PBReferences);
  v36 = v58;
  v51(v31, 0, 1, v58);
LABEL_6:
  v37 = v56;
  sub_251AB991C(&qword_27F478F08, type metadata accessor for PBReferences);
  v38 = v57;
  sub_251C70564();
  if (v38)
  {
    return sub_251AB9BA8(v31, &qword_27F479558, type metadata accessor for PBReferences);
  }

  sub_251AB9C18(v31, v37, &qword_27F479558, type metadata accessor for PBReferences);
  if ((*(v54 + 48))(v37, 1, v36) == 1)
  {
    sub_251AB9BA8(v31, &qword_27F479558, type metadata accessor for PBReferences);
    return sub_251AB9BA8(v37, &qword_27F479558, type metadata accessor for PBReferences);
  }

  else
  {
    v41 = v53;
    sub_251AB9A48(v37, v53, type metadata accessor for PBReferences);
    if (v55 != 1)
    {
      sub_251C70454();
    }

    sub_251AB9BA8(v31, &qword_27F479558, type metadata accessor for PBReferences);
    v42 = v49;
    sub_251AB9A48(v41, v49, type metadata accessor for PBReferences);
    v43 = v48;
    swift_storeEnumTagMultiPayload();
    (*(v46 + 56))(v42, 0, 1, v43);
    v44 = v50;
    v45 = v47;
    swift_beginAccess();
    sub_251AB9B14(v42, v44 + v45);
    return swift_endAccess();
  }
}

uint64_t sub_251AB7674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v59 = a2;
  v60 = a3;
  v5 = type metadata accessor for PBTypedData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v46 - v10;
  v55 = type metadata accessor for PBPlainText.OneOf_Plaintext;
  v11 = MEMORY[0x277D83D88];
  sub_251AB9AB0(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  sub_251AB9AB0(0, &qword_27F4793C8, type metadata accessor for PBTypedData, v11);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v56 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v46 - v30;
  v54 = v6;
  v32 = *(v6 + 56);
  v58 = v5;
  v33 = v5;
  v34 = v19;
  v52 = v32;
  v32(&v46 - v30, 1, 1, v33);
  v35 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  v50 = a1;
  v48 = v35;
  sub_251AB9C18(a1 + v35, v17, &qword_27F479500, v55);
  v47 = v34;
  LODWORD(v55) = (*(v34 + 48))(v17, 1, v18);
  if (v55 == 1)
  {
    sub_251AB9BA8(v17, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
    v36 = v18;
  }

  else
  {
    sub_251AB9A48(v17, v25, type metadata accessor for PBPlainText.OneOf_Plaintext);
    sub_251AB9A48(v25, v23, type metadata accessor for PBPlainText.OneOf_Plaintext);
    v36 = v18;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_251AB9BA8(v31, &qword_27F4793C8, type metadata accessor for PBTypedData);
      v37 = v53;
      sub_251AB9A48(v23, v53, type metadata accessor for PBTypedData);
      sub_251AB9A48(v37, v31, type metadata accessor for PBTypedData);
      v38 = v58;
      v52(v31, 0, 1, v58);
      goto LABEL_7;
    }

    sub_251ABA428(v23, type metadata accessor for PBPlainText.OneOf_Plaintext);
  }

  v38 = v58;
LABEL_7:
  v39 = v56;
  sub_251AB991C(&qword_27F478F48, type metadata accessor for PBTypedData);
  v40 = v57;
  sub_251C70564();
  if (v40)
  {
    return sub_251AB9BA8(v31, &qword_27F4793C8, type metadata accessor for PBTypedData);
  }

  sub_251AB9C18(v31, v39, &qword_27F4793C8, type metadata accessor for PBTypedData);
  if ((*(v54 + 48))(v39, 1, v38) == 1)
  {
    sub_251AB9BA8(v31, &qword_27F4793C8, type metadata accessor for PBTypedData);
    return sub_251AB9BA8(v39, &qword_27F4793C8, type metadata accessor for PBTypedData);
  }

  else
  {
    v42 = v51;
    sub_251AB9A48(v39, v51, type metadata accessor for PBTypedData);
    if (v55 != 1)
    {
      sub_251C70454();
    }

    sub_251AB9BA8(v31, &qword_27F4793C8, type metadata accessor for PBTypedData);
    v43 = v49;
    sub_251AB9A48(v42, v49, type metadata accessor for PBTypedData);
    swift_storeEnumTagMultiPayload();
    (*(v47 + 56))(v43, 0, 1, v36);
    v44 = v50;
    v45 = v48;
    swift_beginAccess();
    sub_251AB9B14(v43, v44 + v45);
    return swift_endAccess();
  }
}

uint64_t sub_251AB7D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v59 = a2;
  v60 = a3;
  v5 = type metadata accessor for PBRawData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v46 - v10;
  v55 = type metadata accessor for PBPlainText.OneOf_Plaintext;
  v11 = MEMORY[0x277D83D88];
  sub_251AB9AB0(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  sub_251AB9AB0(0, &qword_27F479560, type metadata accessor for PBRawData, v11);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v56 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v46 - v30;
  v54 = v6;
  v32 = *(v6 + 56);
  v58 = v5;
  v33 = v5;
  v34 = v19;
  v52 = v32;
  v32(&v46 - v30, 1, 1, v33);
  v35 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  v50 = a1;
  v48 = v35;
  sub_251AB9C18(a1 + v35, v17, &qword_27F479500, v55);
  v47 = v34;
  LODWORD(v55) = (*(v34 + 48))(v17, 1, v18);
  if (v55 == 1)
  {
    sub_251AB9BA8(v17, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
    v36 = v18;
  }

  else
  {
    sub_251AB9A48(v17, v25, type metadata accessor for PBPlainText.OneOf_Plaintext);
    sub_251AB9A48(v25, v23, type metadata accessor for PBPlainText.OneOf_Plaintext);
    v36 = v18;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_251AB9BA8(v31, &qword_27F479560, type metadata accessor for PBRawData);
      v37 = v53;
      sub_251AB9A48(v23, v53, type metadata accessor for PBRawData);
      sub_251AB9A48(v37, v31, type metadata accessor for PBRawData);
      v38 = v58;
      v52(v31, 0, 1, v58);
      goto LABEL_7;
    }

    sub_251ABA428(v23, type metadata accessor for PBPlainText.OneOf_Plaintext);
  }

  v38 = v58;
LABEL_7:
  v39 = v56;
  sub_251AB991C(&qword_27F478F68, type metadata accessor for PBRawData);
  v40 = v57;
  sub_251C70564();
  if (v40)
  {
    return sub_251AB9BA8(v31, &qword_27F479560, type metadata accessor for PBRawData);
  }

  sub_251AB9C18(v31, v39, &qword_27F479560, type metadata accessor for PBRawData);
  if ((*(v54 + 48))(v39, 1, v38) == 1)
  {
    sub_251AB9BA8(v31, &qword_27F479560, type metadata accessor for PBRawData);
    return sub_251AB9BA8(v39, &qword_27F479560, type metadata accessor for PBRawData);
  }

  else
  {
    v42 = v51;
    sub_251AB9A48(v39, v51, type metadata accessor for PBRawData);
    if (v55 != 1)
    {
      sub_251C70454();
    }

    sub_251AB9BA8(v31, &qword_27F479560, type metadata accessor for PBRawData);
    v43 = v49;
    sub_251AB9A48(v42, v49, type metadata accessor for PBRawData);
    swift_storeEnumTagMultiPayload();
    (*(v47 + 56))(v43, 0, 1, v36);
    v44 = v50;
    v45 = v48;
    swift_beginAccess();
    sub_251AB9B14(v43, v44 + v45);
    return swift_endAccess();
  }
}

uint64_t sub_251AB83BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for PBPlainText(0);
  result = sub_251AB8428(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251AB8428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_251AB9AB0(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  swift_beginAccess();
  if (!*(a1 + 16) || (v13 = *(a1 + 24), v27[10] = *(a1 + 16), v28 = v13, sub_251AB99F4(), result = sub_251C70604(), !v4))
  {
    swift_beginAccess();
    v15 = *(a1 + 40);
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
    }

    if (!v16 || (v17 = *(a1 + 40), , sub_251C70674(), result = , !v4))
    {
      swift_beginAccess();
      v18 = *(a1 + 56);
      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
      }

      if (!v19 || (v20 = *(a1 + 56), , sub_251C70674(), result = , !v4))
      {
        swift_beginAccess();
        v21 = *(a1 + 72);
        v22 = HIBYTE(v21) & 0xF;
        if ((v21 & 0x2000000000000000) == 0)
        {
          v22 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
        }

        if (!v22 || (v23 = *(a1 + 72), , sub_251C70674(), result = , !v4))
        {
          v24 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
          swift_beginAccess();
          sub_251AB9C18(a1 + v24, v12, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
          v25 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
          result = (*(*(v25 - 8) + 48))(v12, 1, v25);
          if (result != 1)
          {
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload)
            {
              if (EnumCaseMultiPayload == 1)
              {
                sub_251AB89FC(a1, a2, a3, a4);
              }

              else
              {
                sub_251AB8C84(a1, a2, a3, a4);
              }
            }

            else
            {
              sub_251AB8778(a1, a2, a3, a4);
            }

            return sub_251ABA428(v12, type metadata accessor for PBPlainText.OneOf_Plaintext);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_251AB8778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  sub_251AB9AB0(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBReferences(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  sub_251AB9C18(a1 + v13, v8, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
  v14 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251AB9BA8(v8, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_251AB9A48(v8, v12, type metadata accessor for PBReferences);
    sub_251AB991C(&qword_27F478F08, type metadata accessor for PBReferences);
    sub_251C706A4();
    return sub_251ABA428(v12, type metadata accessor for PBReferences);
  }

  result = sub_251ABA428(v8, type metadata accessor for PBPlainText.OneOf_Plaintext);
  __break(1u);
  return result;
}

uint64_t sub_251AB89FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  sub_251AB9AB0(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBTypedData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  sub_251AB9C18(a1 + v13, v8, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
  v14 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251AB9BA8(v8, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_251AB9A48(v8, v12, type metadata accessor for PBTypedData);
    sub_251AB991C(&qword_27F478F48, type metadata accessor for PBTypedData);
    sub_251C706A4();
    return sub_251ABA428(v12, type metadata accessor for PBTypedData);
  }

  result = sub_251ABA428(v8, type metadata accessor for PBPlainText.OneOf_Plaintext);
  __break(1u);
  return result;
}

uint64_t sub_251AB8C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  sub_251AB9AB0(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBRawData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  sub_251AB9C18(a1 + v13, v8, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
  v14 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251AB9BA8(v8, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_251AB9A48(v8, v12, type metadata accessor for PBRawData);
    sub_251AB991C(&qword_27F478F68, type metadata accessor for PBRawData);
    sub_251C706A4();
    return sub_251ABA428(v12, type metadata accessor for PBRawData);
  }

  result = sub_251ABA428(v8, type metadata accessor for PBPlainText.OneOf_Plaintext);
  __break(1u);
  return result;
}

BOOL sub_251AB8F0C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB9D80();
  v10 = v9;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB9AB0(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  swift_beginAccess();
  v21 = a1[2];
  swift_beginAccess();
  v22 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v22 > 1)
    {
      if (v22 == 2)
      {
        if (v21 != 2)
        {
          return 0;
        }
      }

      else if (v21 != 3)
      {
        return 0;
      }
    }

    else if (v22)
    {
      if (v21 != 1)
      {
        return 0;
      }
    }

    else if (v21)
    {
      return 0;
    }
  }

  else if (v21 != v22)
  {
    return 0;
  }

  v42 = v18;
  swift_beginAccess();
  v23 = a1[4];
  v24 = a1[5];
  swift_beginAccess();
  if ((v23 != *(a2 + 32) || v24 != *(a2 + 40)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v25 = a1[6];
  v26 = a1[7];
  swift_beginAccess();
  if ((v25 != *(a2 + 48) || v26 != *(a2 + 56)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v27 = a1[8];
  v28 = a1[9];
  swift_beginAccess();
  if ((v27 != *(a2 + 64) || v28 != *(a2 + 72)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v41 = v8;
  v29 = v5;
  v30 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  v31 = a1 + v30;
  v32 = v29;
  sub_251AB9C18(v31, v20, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
  v33 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  v34 = *(v10 + 48);
  sub_251AB9C18(v20, v13, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
  sub_251AB9C18(a2 + v33, &v13[v34], &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
  v35 = *(v32 + 48);
  if (v35(v13, 1, v4) != 1)
  {
    v36 = v42;
    sub_251AB9C18(v13, v42, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
    if (v35(&v13[v34], 1, v4) == 1)
    {
      sub_251AB9BA8(v20, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
      sub_251ABA428(v36, type metadata accessor for PBPlainText.OneOf_Plaintext);
      goto LABEL_28;
    }

    v38 = v41;
    sub_251AB9A48(&v13[v34], v41, type metadata accessor for PBPlainText.OneOf_Plaintext);
    v39 = sub_251AB9E14(v36, v38);
    sub_251ABA428(v38, type metadata accessor for PBPlainText.OneOf_Plaintext);
    sub_251AB9BA8(v20, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
    sub_251ABA428(v36, type metadata accessor for PBPlainText.OneOf_Plaintext);
    sub_251AB9BA8(v13, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
    return (v39 & 1) != 0;
  }

  sub_251AB9BA8(v20, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
  if (v35(&v13[v34], 1, v4) != 1)
  {
LABEL_28:
    sub_251ABA428(v13, sub_251AB9D80);
    return 0;
  }

  sub_251AB9BA8(v13, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
  return 1;
}

uint64_t sub_251AB94C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251C703A4();
  v4 = *(a1 + 20);
  if (qword_27F478468 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_27F4794E0;
}

uint64_t sub_251AB955C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_251C703B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_251AB95C4(uint64_t a1)
{
  v3 = sub_251C703B4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_251AB967C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251AB991C(&qword_27F479548, type metadata accessor for PBPlainText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251AB96F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F478460 != -1)
  {
    swift_once();
  }

  v2 = sub_251C706D4();
  v3 = __swift_project_value_buffer(v2, qword_27F4A1B50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_251AB97A0(uint64_t a1)
{
  v2 = sub_251AB991C(&qword_27F479530, type metadata accessor for PBPlainText);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251AB980C()
{
  sub_251AB991C(&qword_27F479530, type metadata accessor for PBPlainText);

  return sub_251C705C4();
}

uint64_t sub_251AB991C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_251AB99F4()
{
  result = qword_27F479550;
  if (!qword_27F479550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479550);
  }

  return result;
}

uint64_t sub_251AB9A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_251AB9AB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_251AB9B14(uint64_t a1, uint64_t a2)
{
  sub_251AB9AB0(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AB9BA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251AB9AB0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251AB9C18(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251AB9AB0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251AB9C98(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PBPlainText(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_251AB8F0C(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  sub_251C703B4();
  sub_251AB991C(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

void sub_251AB9D80()
{
  if (!qword_27F479568)
  {
    sub_251AB9AB0(255, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479568);
    }
  }
}

uint64_t sub_251AB9E14(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v44 = type metadata accessor for PBRawData(0);
  v3 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PBTypedData(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PBReferences(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v43 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = (&v43 - v21);
  sub_251ABA360();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v25 + 56);
  sub_251ABA3C4(a1, v27);
  sub_251ABA3C4(v46, &v27[v28]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_251ABA3C4(v27, v22);
    if (swift_getEnumCaseMultiPayload())
    {
      v31 = type metadata accessor for PBReferences;
      v32 = v22;
      goto LABEL_13;
    }

    sub_251AB9A48(&v27[v28], v12, type metadata accessor for PBReferences);
    if (sub_251A9C724(*v22, *v12))
    {
      v39 = *(v9 + 20);
      sub_251C703B4();
      sub_251AB991C(&qword_27F478F98, MEMORY[0x277D216C8]);
      if (sub_251C70ED4())
      {
        v36 = type metadata accessor for PBReferences;
        sub_251ABA428(v12, type metadata accessor for PBReferences);
        v37 = v22;
        goto LABEL_17;
      }
    }

    v40 = type metadata accessor for PBReferences;
    sub_251ABA428(v12, type metadata accessor for PBReferences);
    v41 = v22;
LABEL_20:
    sub_251ABA428(v41, v40);
    v30 = 0;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_251ABA3C4(v27, v17);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v31 = type metadata accessor for PBRawData;
      v32 = v17;
      goto LABEL_13;
    }

    v33 = &v27[v28];
    v34 = v45;
    sub_251AB9A48(v33, v45, type metadata accessor for PBRawData);
    if (sub_251A9D1F0(*v17, *(v17 + 1), *v34, *(v34 + 8)))
    {
      v35 = *(v44 + 20);
      sub_251C703B4();
      sub_251AB991C(&qword_27F478F98, MEMORY[0x277D216C8]);
      if (sub_251C70ED4())
      {
        v36 = type metadata accessor for PBRawData;
        sub_251ABA428(v34, type metadata accessor for PBRawData);
        v37 = v17;
LABEL_17:
        sub_251ABA428(v37, v36);
        v30 = 1;
        goto LABEL_21;
      }
    }

    v40 = type metadata accessor for PBRawData;
    sub_251ABA428(v34, type metadata accessor for PBRawData);
    v41 = v17;
    goto LABEL_20;
  }

  sub_251ABA3C4(v27, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_251AB9A48(&v27[v28], v8, type metadata accessor for PBTypedData);
    v30 = sub_251A9D474(v20, v8);
    sub_251ABA428(v8, type metadata accessor for PBTypedData);
    sub_251ABA428(v20, type metadata accessor for PBTypedData);
LABEL_21:
    v38 = type metadata accessor for PBPlainText.OneOf_Plaintext;
    goto LABEL_22;
  }

  v31 = type metadata accessor for PBTypedData;
  v32 = v20;
LABEL_13:
  sub_251ABA428(v32, v31);
  v30 = 0;
  v38 = sub_251ABA360;
LABEL_22:
  sub_251ABA428(v27, v38);
  return v30 & 1;
}

void sub_251ABA360()
{
  if (!qword_27F479570)
  {
    type metadata accessor for PBPlainText.OneOf_Plaintext(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479570);
    }
  }
}

uint64_t sub_251ABA3C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251ABA428(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ClinicalSharingCategoryNodeInfo()
{
  result = qword_27F479578;
  if (!qword_27F479578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251ABA4FC()
{
  sub_251ABA5A0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PBReference(319);
    if (v1 <= 0x3F)
    {
      sub_251ABA5F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251ABA5A0()
{
  if (!qword_27F479588)
  {
    type metadata accessor for ClinicalSharingDataNodeInfo();
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479588);
    }
  }
}

void sub_251ABA5F8()
{
  if (!qword_27F479590)
  {
    sub_251C70014();
    sub_251ABA664();
    v0 = sub_251C70E74();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479590);
    }
  }
}

unint64_t sub_251ABA664()
{
  result = qword_27F479598;
  if (!qword_27F479598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479598);
  }

  return result;
}

uint64_t sub_251ABA6B8@<X0>(uint64_t a1@<X8>)
{
  v328 = a1;
  v292 = type metadata accessor for PBActiveMedications(0);
  v1 = *(*(v292 - 8) + 64);
  MEMORY[0x28223BE20](v292);
  v323 = (&v274 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v291 = type metadata accessor for PBMedicationTrackingSchedules(0);
  v3 = *(*(v291 - 8) + 64);
  MEMORY[0x28223BE20](v291);
  v322 = (&v274 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v290 = type metadata accessor for PBMedicationTrackingDoseEvents(0);
  v5 = *(*(v290 - 8) + 64);
  MEMORY[0x28223BE20](v290);
  v321 = (&v274 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v325 = type metadata accessor for PBMedicationTracking(0);
  v276 = *(v325 - 8);
  v7 = *(v276 + 64);
  MEMORY[0x28223BE20](v325);
  v327 = &v274 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = type metadata accessor for PBMedicationTrackings(0);
  v9 = *(*(v289 - 8) + 64);
  MEMORY[0x28223BE20](v289);
  v324 = &v274 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = type metadata accessor for PBHistogramSeries(0);
  v11 = *(*(v288 - 8) + 64);
  MEMORY[0x28223BE20](v288);
  v320 = (&v274 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v286 = type metadata accessor for PBSleepSeries(0);
  v13 = *(*(v286 - 8) + 64);
  MEMORY[0x28223BE20](v286);
  v316 = (&v274 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v285 = type metadata accessor for PBSleepSummary(0);
  v15 = *(*(v285 - 8) + 64);
  MEMORY[0x28223BE20](v285);
  v315 = &v274 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = type metadata accessor for PBPatientMeta(0);
  v17 = *(*(v287 - 8) + 64);
  MEMORY[0x28223BE20](v287);
  v318 = &v274 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = type metadata accessor for PBActivitySummarySeries(0);
  v19 = *(*(v284 - 8) + 64);
  MEMORY[0x28223BE20](v284);
  v314 = &v274 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ABCCD4(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v319 = &v274 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = type metadata accessor for PBECGMeasurement(0);
  v24 = *(*(v283 - 8) + 64);
  MEMORY[0x28223BE20](v283);
  v317 = &v274 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = type metadata accessor for PBCycleTracking(0);
  v26 = *(*(v282 - 8) + 64);
  MEMORY[0x28223BE20](v282);
  v313 = &v274 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = type metadata accessor for PBECGs(0);
  v28 = *(*(v281 - 8) + 64);
  MEMORY[0x28223BE20](v281);
  v311 = &v274 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = type metadata accessor for PBAllClinicalRecords(0);
  v30 = *(*(v280 - 8) + 64);
  MEMORY[0x28223BE20](v280);
  v312 = (&v274 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v279 = type metadata accessor for PBCharacteristics(0);
  v32 = *(*(v279 - 8) + 64);
  MEMORY[0x28223BE20](v279);
  v310 = (&v274 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v278 = type metadata accessor for PBWorkout(0);
  v34 = *(*(v278 - 8) + 64);
  MEMORY[0x28223BE20](v278);
  v309 = &v274 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = type metadata accessor for PBCategorySeries(0);
  v36 = *(*(v277 - 8) + 64);
  MEMORY[0x28223BE20](v277);
  v308 = &v274 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = type metadata accessor for PBTimeSeries(0);
  v38 = *(*(v293 - 8) + 64);
  MEMORY[0x28223BE20](v293);
  v307 = &v274 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ABCD08(0);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v306 = &v274 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v305 = &v274 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v304 = &v274 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v303 = &v274 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v302 = &v274 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v300 = &v274 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v301 = &v274 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v299 = &v274 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v298 = &v274 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v297 = &v274 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v296 = &v274 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v295 = &v274 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v68 = &v274 - v67;
  v69 = MEMORY[0x28223BE20](v66);
  v294 = &v274 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v73 = &v274 - v72;
  v74 = MEMORY[0x28223BE20](v71);
  v76 = &v274 - v75;
  v77 = MEMORY[0x28223BE20](v74);
  v79 = &v274 - v78;
  MEMORY[0x28223BE20](v77);
  v81 = &v274 - v80;
  v82 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v83 = *(v82 - 8);
  v84 = *(v83 + 64);
  v85 = MEMORY[0x28223BE20](v82);
  v87 = &v274 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v85);
  v89 = &v274 - v88;
  v90 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251ABCD3C(v329 + v90, v81, sub_251ABCD08);
  v326 = *(v83 + 48);
  if (v326(v81, 1, v82) == 1)
  {
    sub_251AC10E4(v81, sub_251ABCD08);
    v91 = sub_251C70014();
    return (*(*(v91 - 8) + 56))(v328, 1, 1, v91);
  }

  sub_251ABCDA4(v81, v89, type metadata accessor for PBTypedData.OneOf_Raw);
  v275 = v89;
  sub_251ABCD3C(v89, v87, type metadata accessor for PBTypedData.OneOf_Raw);
  v93 = v82;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v95 = v325;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_251ABCD3C(v329 + v90, v76, sub_251ABCD08);
      v150 = v326(v76, 1, v82);
      v151 = sub_251ABCD08;
      if (v150 == 1 || (v152 = swift_getEnumCaseMultiPayload(), v151 = type metadata accessor for PBTypedData.OneOf_Raw, v152 != 1))
      {
        sub_251AC10E4(v76, v151);
        v153 = v308;
        *v308 = 0;
        *(v153 + 1) = 0xE000000000000000;
        *(v153 + 2) = MEMORY[0x277D84F90];
        v174 = v277;
        v175 = &v153[*(v277 + 24)];
        sub_251C703A4();
        v176 = *(v174 + 28);
        v177 = type metadata accessor for PBDateRange(0);
        (*(*(v177 - 8) + 56))(&v153[v176], 1, 1, v177);
      }

      else
      {
        v153 = v308;
        sub_251ABCDA4(v76, v308, type metadata accessor for PBCategorySeries);
      }

      sub_251ABCFB8(v153, v328);
      sub_251AC10E4(v153, type metadata accessor for PBCategorySeries);
      v178 = v275;
      goto LABEL_121;
    case 2:
      sub_251ABCD3C(v329 + v90, v73, sub_251ABCD08);
      v132 = v326(v73, 1, v82);
      v133 = sub_251ABCD08;
      if (v132 == 1)
      {
        v134 = v328;
        v110 = v275;
        v135 = v309;
      }

      else
      {
        v207 = swift_getEnumCaseMultiPayload();
        v133 = type metadata accessor for PBTypedData.OneOf_Raw;
        v134 = v328;
        v110 = v275;
        v135 = v309;
        if (v207 == 2)
        {
          sub_251ABCDA4(v73, v309, type metadata accessor for PBWorkout);
          goto LABEL_68;
        }
      }

      sub_251AC10E4(v73, v133);
      *v135 = 0;
      *(v135 + 8) = 0;
      *(v135 + 16) = 1;
      *(v135 + 28) = 0;
      *(v135 + 20) = 0;
      v208 = v278;
      v209 = v135 + *(v278 + 44);
      sub_251C703A4();
      v210 = *(v208 + 48);
      v211 = type metadata accessor for PBDateRange(0);
      (*(*(v211 - 8) + 56))(v135 + v210, 1, 1, v211);
LABEL_68:
      sub_251ABD350(v135, v134);
      v212 = type metadata accessor for PBWorkout;
      goto LABEL_110;
    case 3:
      v140 = v294;
      sub_251ABCD3C(v329 + v90, v294, sub_251ABCD08);
      v141 = v326(v140, 1, v93);
      v142 = sub_251ABCD08;
      if (v141 == 1)
      {
        v104 = v328;
        v143 = v275;
      }

      else
      {
        v215 = swift_getEnumCaseMultiPayload();
        v142 = type metadata accessor for PBTypedData.OneOf_Raw;
        v104 = v328;
        v143 = v275;
        if (v215 == 3)
        {
          sub_251AC10E4(v275, type metadata accessor for PBTypedData.OneOf_Raw);
          v216 = v140;
          v105 = v310;
          sub_251ABCDA4(v216, v310, type metadata accessor for PBCharacteristics);
          v180 = type metadata accessor for PBCharacteristics;
          goto LABEL_103;
        }
      }

      sub_251AC10E4(v140, v142);
      v217 = v310;
      *v310 = 0;
      v217[1] = 0xE000000000000000;
      v217[2] = 0;
      v217[3] = 0xE000000000000000;
      v217[4] = 0;
      v217[5] = 0xE000000000000000;
      v218 = v217 + *(v279 + 28);
      sub_251C703A4();
      sub_251AC10E4(v217, type metadata accessor for PBCharacteristics);
      v219 = type metadata accessor for PBTypedData.OneOf_Raw;
      goto LABEL_100;
    case 4:
      v116 = v329;
      sub_251ABCD3C(v329 + v90, v68, sub_251ABCD08);
      v117 = v326(v68, 1, v82);
      v118 = sub_251ABCD08;
      if (v117 == 1)
      {
        v119 = v328;
        v120 = v275;
        v121 = v312;
      }

      else
      {
        v188 = swift_getEnumCaseMultiPayload();
        v118 = type metadata accessor for PBTypedData.OneOf_Raw;
        v119 = v328;
        v120 = v275;
        v121 = v312;
        if (v188 == 4)
        {
          v189 = sub_251ABCDA4(v68, v312, type metadata accessor for PBAllClinicalRecords);
          goto LABEL_55;
        }
      }

      sub_251AC10E4(v68, v118);
      *v121 = MEMORY[0x277D84F90];
      v190 = v121 + *(v280 + 20);
      v189 = sub_251C703A4();
LABEL_55:
      v191 = *v121;
      MEMORY[0x28223BE20](v189);
      *(&v274 - 2) = v116;
      v193 = sub_251C00B3C(sub_251AC0E80, (&v274 - 4), v192);
      sub_251AC00D0(v193, v119);

      sub_251AC10E4(v120, type metadata accessor for PBTypedData.OneOf_Raw);
      v194 = type metadata accessor for PBAllClinicalRecords;
      v178 = v121;
      goto LABEL_122;
    case 5:
      v154 = v295;
      sub_251ABCD3C(v329 + v90, v295, sub_251ABCD08);
      v155 = v326(v154, 1, v82);
      v156 = sub_251ABCD08;
      if (v155 == 1)
      {
        v157 = v328;
        v110 = v275;
        v135 = v311;
      }

      else
      {
        v229 = swift_getEnumCaseMultiPayload();
        v156 = type metadata accessor for PBTypedData.OneOf_Raw;
        v157 = v328;
        v110 = v275;
        v135 = v311;
        if (v229 == 5)
        {
          sub_251ABCDA4(v154, v311, type metadata accessor for PBECGs);
          goto LABEL_83;
        }
      }

      sub_251AC10E4(v154, v156);
      *v135 = MEMORY[0x277D84F90];
      v230 = v135 + *(v281 + 20);
      sub_251C703A4();
LABEL_83:
      sub_251ABD7C8(v135, type metadata accessor for PBECGMeasurement, type metadata accessor for PBECGMeasurement, type metadata accessor for PBECGMeasurement, v157);
      v212 = type metadata accessor for PBECGs;
      goto LABEL_110;
    case 6:
      v162 = v296;
      sub_251ABCD3C(v329 + v90, v296, sub_251ABCD08);
      v163 = v326(v162, 1, v93);
      v164 = sub_251ABCD08;
      if (v163 == 1)
      {
        v165 = v328;
        v166 = v313;
      }

      else
      {
        v245 = swift_getEnumCaseMultiPayload();
        v164 = type metadata accessor for PBTypedData.OneOf_Raw;
        v165 = v328;
        v166 = v313;
        if (v245 == 6)
        {
          sub_251AC10E4(v275, type metadata accessor for PBTypedData.OneOf_Raw);
          sub_251ABCDA4(v162, v166, type metadata accessor for PBCycleTracking);
          goto LABEL_97;
        }
      }

      sub_251AC10E4(v162, v164);
      *v166 = MEMORY[0x277D84F90];
      *(v166 + 1) = 0;
      *(v166 + 2) = 0;
      *(v166 + 3) = 0xE000000000000000;
      v246 = v282;
      v247 = &v166[*(v282 + 32)];
      sub_251C703A4();
      sub_251AC10E4(v275, type metadata accessor for PBTypedData.OneOf_Raw);
      v248 = *(v246 + 36);
      v249 = type metadata accessor for PBCycleTracking.Range(0);
      v250 = *(*(v249 - 8) + 56);
      v250(&v166[v248], 1, 1, v249);
      v250(&v166[*(v246 + 40)], 1, 1, v249);
LABEL_97:
      sub_251AC10E4(v166, type metadata accessor for PBCycleTracking);
      v251 = sub_251C70014();
      (*(*(v251 - 8) + 56))(v165, 1, 1, v251);
      goto LABEL_105;
    case 7:
      v144 = v297;
      sub_251ABCD3C(v329 + v90, v297, sub_251ABCD08);
      v145 = v326(v144, 1, v82);
      v146 = sub_251ABCD08;
      if (v145 == 1)
      {
        v147 = v328;
        v148 = v319;
        v149 = v317;
      }

      else
      {
        v220 = swift_getEnumCaseMultiPayload();
        v146 = type metadata accessor for PBTypedData.OneOf_Raw;
        v148 = v319;
        v149 = v317;
        if (v220 == 7)
        {
          sub_251ABCDA4(v144, v317, type metadata accessor for PBECGMeasurement);
          v147 = v328;
          goto LABEL_114;
        }

        v147 = v328;
      }

      sub_251AC10E4(v144, v146);
      *v149 = 0;
      *(v149 + 8) = 0xE000000000000000;
      *(v149 + 16) = 0;
      *(v149 + 24) = 0;
      *(v149 + 32) = 0xE000000000000000;
      *(v149 + 40) = 0;
      *(v149 + 48) = 0xE000000000000000;
      *(v149 + 56) = 0;
      *(v149 + 64) = 0xE000000000000000;
      *(v149 + 72) = 0;
      *(v149 + 80) = 0xE000000000000000;
      v263 = MEMORY[0x277D84F90];
      *(v149 + 88) = MEMORY[0x277D84F90];
      *(v149 + 96) = v263;
      *(v149 + 104) = 0;
      *(v149 + 112) = 0;
      *(v149 + 120) = 1;
      v264 = v149 + *(v283 + 56);
      sub_251C703A4();
LABEL_114:
      v99 = v275;
      v265 = *v149;
      v266 = *(v149 + 8);
      if (qword_27F478930 != -1)
      {
        v272 = *v149;
        v273 = *(v149 + 8);
        swift_once();
      }

      v267 = qword_27F4A2878;
      v268 = sub_251C70EE4();
      v269 = [v267 dateFromString_];

      if (v269)
      {
        sub_251C6FFE4();

        v270 = 0;
      }

      else
      {
        v270 = 1;
      }

      v271 = sub_251C70014();
      (*(*(v271 - 8) + 56))(v148, v270, 1, v271);
      sub_251ABCDA4(v148, v147, sub_251ABCCD4);
      v227 = type metadata accessor for PBECGMeasurement;
      v228 = v149;
      goto LABEL_120;
    case 8:
      v170 = v298;
      sub_251ABCD3C(v329 + v90, v298, sub_251ABCD08);
      v171 = v326(v170, 1, v82);
      v172 = sub_251ABCD08;
      if (v171 == 1)
      {
        v173 = v328;
        v110 = v275;
        v135 = v314;
      }

      else
      {
        v258 = swift_getEnumCaseMultiPayload();
        v172 = type metadata accessor for PBTypedData.OneOf_Raw;
        v173 = v328;
        v110 = v275;
        v135 = v314;
        if (v258 == 8)
        {
          sub_251ABCDA4(v170, v314, type metadata accessor for PBActivitySummarySeries);
          goto LABEL_109;
        }
      }

      sub_251AC10E4(v170, v172);
      *v135 = MEMORY[0x277D84F90];
      v259 = v284;
      v260 = v135 + *(v284 + 20);
      sub_251C703A4();
      v261 = *(v259 + 24);
      v262 = type metadata accessor for PBDateRange(0);
      (*(*(v262 - 8) + 56))(v135 + v261, 1, 1, v262);
LABEL_109:
      sub_251ABD61C(v135, v173);
      v212 = type metadata accessor for PBActivitySummarySeries;
LABEL_110:
      v197 = v212;
      v198 = v135;
      goto LABEL_111;
    case 9:
      v126 = v299;
      sub_251ABCD3C(v329 + v90, v299, sub_251ABCD08);
      v127 = v326(v126, 1, v82);
      v128 = sub_251ABCD08;
      if (v127 == 1)
      {
        v129 = v328;
        v130 = v275;
        v131 = v318;
      }

      else
      {
        v199 = swift_getEnumCaseMultiPayload();
        v128 = type metadata accessor for PBTypedData.OneOf_Raw;
        v129 = v328;
        v130 = v275;
        v131 = v318;
        if (v199 == 9)
        {
          sub_251AC10E4(v275, type metadata accessor for PBTypedData.OneOf_Raw);
          sub_251ABCDA4(v126, v131, type metadata accessor for PBPatientMeta);
          goto LABEL_64;
        }
      }

      sub_251AC10E4(v126, v128);
      *v131 = 0;
      *(v131 + 8) = MEMORY[0x277D84F90];
      *(v131 + 16) = 0;
      *(v131 + 24) = 0xE000000000000000;
      *(v131 + 32) = 0;
      *(v131 + 40) = 0xE000000000000000;
      *(v131 + 48) = 0;
      *(v131 + 56) = 0xE000000000000000;
      v200 = v287;
      v201 = v131 + *(v287 + 36);
      sub_251C703A4();
      sub_251AC10E4(v130, type metadata accessor for PBTypedData.OneOf_Raw);
      v202 = *(v200 + 40);
      v203 = type metadata accessor for PBPatientMeta.HeartRateMeds(0);
      (*(*(v203 - 8) + 56))(v131 + v202, 1, 1, v203);
      v204 = *(v200 + 44);
      v205 = type metadata accessor for PBPatientMeta.HumanName(0);
      (*(*(v205 - 8) + 56))(v131 + v204, 1, 1, v205);
LABEL_64:
      sub_251AC10E4(v131, type metadata accessor for PBPatientMeta);
      v206 = sub_251C70014();
      (*(*(v206 - 8) + 56))(v129, 1, 1, v206);
      goto LABEL_105;
    case 10:
      v167 = v301;
      sub_251ABCD3C(v329 + v90, v301, sub_251ABCD08);
      v168 = v326(v167, 1, v82);
      v169 = sub_251ABCD08;
      if (v168 == 1)
      {
        v104 = v328;
        v105 = v275;
        v143 = v315;
LABEL_101:
        sub_251AC10E4(v167, v169);
        *v143 = MEMORY[0x277D84F90];
        *(v143 + 2) = 0;
        v255 = v143 + *(v285 + 24);
        sub_251C703A4();
        v182 = type metadata accessor for PBSleepSummary;
        goto LABEL_102;
      }

      v252 = swift_getEnumCaseMultiPayload();
      v169 = type metadata accessor for PBTypedData.OneOf_Raw;
      v104 = v328;
      v105 = v275;
      v143 = v315;
      if (v252 != 10)
      {
        goto LABEL_101;
      }

      sub_251AC10E4(v275, type metadata accessor for PBTypedData.OneOf_Raw);
      sub_251ABCDA4(v167, v143, type metadata accessor for PBSleepSummary);
      v219 = type metadata accessor for PBSleepSummary;
LABEL_100:
      v253 = v219;
      v254 = v143;
LABEL_104:
      sub_251AC10E4(v254, v253);
      v256 = sub_251C70014();
      (*(*(v256 - 8) + 56))(v104, 1, 1, v256);
LABEL_105:
      v257 = v87;
      return sub_251AC10E4(v257, type metadata accessor for PBTypedData.OneOf_Raw);
    case 11:
      v112 = v300;
      sub_251ABCD3C(v329 + v90, v300, sub_251ABCD08);
      v113 = v326(v112, 1, v82);
      v114 = sub_251ABCD08;
      if (v113 == 1)
      {
        v115 = v328;
        v110 = v275;
        v111 = v316;
      }

      else
      {
        v186 = swift_getEnumCaseMultiPayload();
        v114 = type metadata accessor for PBTypedData.OneOf_Raw;
        v115 = v328;
        v110 = v275;
        v111 = v316;
        if (v186 == 11)
        {
          sub_251ABCDA4(v112, v316, type metadata accessor for PBSleepSeries);
          goto LABEL_51;
        }
      }

      sub_251AC10E4(v112, v114);
      *v111 = MEMORY[0x277D84F90];
      v187 = v111 + *(v286 + 20);
      sub_251C703A4();
LABEL_51:
      sub_251ABD7C8(v111, type metadata accessor for PBSleepSeries.Value, type metadata accessor for PBSleepSeries.Value, type metadata accessor for PBSleepSeries.Value, v115);
      v185 = type metadata accessor for PBSleepSeries;
      goto LABEL_60;
    case 12:
      v122 = v302;
      sub_251ABCD3C(v329 + v90, v302, sub_251ABCD08);
      v123 = v326(v122, 1, v82);
      v124 = sub_251ABCD08;
      if (v123 == 1)
      {
        v125 = v328;
        v110 = v275;
        v111 = v320;
      }

      else
      {
        v195 = swift_getEnumCaseMultiPayload();
        v124 = type metadata accessor for PBTypedData.OneOf_Raw;
        v125 = v328;
        v110 = v275;
        v111 = v320;
        if (v195 == 12)
        {
          sub_251ABCDA4(v122, v320, type metadata accessor for PBHistogramSeries);
          goto LABEL_59;
        }
      }

      sub_251AC10E4(v122, v124);
      *v111 = MEMORY[0x277D84F90];
      v111[1] = 0;
      v111[2] = 0xE000000000000000;
      v196 = v111 + *(v288 + 24);
      sub_251C703A4();
LABEL_59:
      sub_251ABD7C8(v111, type metadata accessor for PBHistogramSeries.Value, type metadata accessor for PBHistogramSeries.Value, type metadata accessor for PBHistogramSeries.Value, v125);
      v185 = type metadata accessor for PBHistogramSeries;
      goto LABEL_60;
    case 13:
      v158 = v303;
      sub_251ABCD3C(v329 + v90, v303, sub_251ABCD08);
      v159 = v326(v158, 1, v93);
      v160 = sub_251ABCD08;
      if (v159 == 1)
      {
        v161 = v324;
      }

      else
      {
        v231 = swift_getEnumCaseMultiPayload();
        v160 = type metadata accessor for PBTypedData.OneOf_Raw;
        v161 = v324;
        if (v231 == 13)
        {
          sub_251ABCDA4(v158, v324, type metadata accessor for PBMedicationTrackings);
          goto LABEL_87;
        }
      }

      sub_251AC10E4(v158, v160);
      *v161 = MEMORY[0x277D84F90];
      v232 = v161 + *(v289 + 20);
      sub_251C703A4();
LABEL_87:
      v233 = *v161;
      v234 = *(*v161 + 16);
      v235 = MEMORY[0x277D84F90];
      if (v234)
      {
        v330 = MEMORY[0x277D84F90];
        sub_251C0B6AC(0, v234, 0);
        v235 = v330;
        v236 = v233 + ((*(v276 + 80) + 32) & ~*(v276 + 80));
        v237 = *(v276 + 72);
        do
        {
          v238 = v327;
          sub_251ABCD3C(v236, v327, type metadata accessor for PBMedicationTracking);
          v239 = *(v238 + *(v95 + 20));
          swift_beginAccess();
          v241 = *(v239 + 208);
          v240 = *(v239 + 216);

          sub_251AC10E4(v238, type metadata accessor for PBMedicationTracking);
          v330 = v235;
          v243 = *(v235 + 16);
          v242 = *(v235 + 24);
          if (v243 >= v242 >> 1)
          {
            sub_251C0B6AC((v242 > 1), v243 + 1, 1);
            v235 = v330;
          }

          *(v235 + 16) = v243 + 1;
          v244 = v235 + 16 * v243;
          *(v244 + 32) = v241;
          *(v244 + 40) = v240;
          v236 += v237;
          --v234;
        }

        while (v234);
        v161 = v324;
      }

      sub_251ABDB10(v235, v328);

      sub_251AC10E4(v275, type metadata accessor for PBTypedData.OneOf_Raw);
      v194 = type metadata accessor for PBMedicationTrackings;
      v178 = v161;
      goto LABEL_122;
    case 14:
      v106 = v304;
      sub_251ABCD3C(v329 + v90, v304, sub_251ABCD08);
      v107 = v326(v106, 1, v82);
      v108 = sub_251ABCD08;
      if (v107 == 1)
      {
        v109 = v328;
        v110 = v275;
        v111 = v321;
      }

      else
      {
        v183 = swift_getEnumCaseMultiPayload();
        v108 = type metadata accessor for PBTypedData.OneOf_Raw;
        v109 = v328;
        v110 = v275;
        v111 = v321;
        if (v183 == 14)
        {
          sub_251ABCDA4(v106, v321, type metadata accessor for PBMedicationTrackingDoseEvents);
          goto LABEL_47;
        }
      }

      sub_251AC10E4(v106, v108);
      *v111 = MEMORY[0x277D84F90];
      v184 = v111 + *(v290 + 20);
      sub_251C703A4();
LABEL_47:
      sub_251ABD964(v111, v109);
      v185 = type metadata accessor for PBMedicationTrackingDoseEvents;
LABEL_60:
      v197 = v185;
      v198 = v111;
LABEL_111:
      sub_251AC10E4(v198, v197);
      v178 = v110;
      goto LABEL_121;
    case 15:
      v136 = v329 + v90;
      v137 = v305;
      sub_251ABCD3C(v136, v305, sub_251ABCD08);
      v138 = v326(v137, 1, v82);
      v139 = sub_251ABCD08;
      if (v138 == 1)
      {
        v104 = v328;
        v105 = v275;
      }

      else
      {
        v213 = swift_getEnumCaseMultiPayload();
        v139 = type metadata accessor for PBTypedData.OneOf_Raw;
        v104 = v328;
        v105 = v275;
        if (v213 == 15)
        {
          sub_251AC10E4(v275, type metadata accessor for PBTypedData.OneOf_Raw);
          v105 = v322;
          sub_251ABCDA4(v137, v322, type metadata accessor for PBMedicationTrackingSchedules);
          v180 = type metadata accessor for PBMedicationTrackingSchedules;
          goto LABEL_103;
        }
      }

      sub_251AC10E4(v137, v139);
      v143 = v322;
      *v322 = MEMORY[0x277D84F90];
      v214 = v143 + *(v291 + 20);
      sub_251C703A4();
      v182 = type metadata accessor for PBMedicationTrackingSchedules;
      goto LABEL_102;
    case 16:
      v100 = v329 + v90;
      v101 = v306;
      sub_251ABCD3C(v100, v306, sub_251ABCD08);
      v102 = v326(v101, 1, v82);
      v103 = sub_251ABCD08;
      if (v102 == 1)
      {
        v104 = v328;
        v105 = v275;
      }

      else
      {
        v179 = swift_getEnumCaseMultiPayload();
        v103 = type metadata accessor for PBTypedData.OneOf_Raw;
        v104 = v328;
        v105 = v275;
        if (v179 == 16)
        {
          sub_251AC10E4(v275, type metadata accessor for PBTypedData.OneOf_Raw);
          v105 = v323;
          sub_251ABCDA4(v101, v323, type metadata accessor for PBActiveMedications);
          v180 = type metadata accessor for PBActiveMedications;
          goto LABEL_103;
        }
      }

      sub_251AC10E4(v101, v103);
      v143 = v323;
      *v323 = MEMORY[0x277D84F90];
      v181 = v143 + *(v292 + 20);
      sub_251C703A4();
      v182 = type metadata accessor for PBActiveMedications;
LABEL_102:
      sub_251AC10E4(v143, v182);
      v180 = type metadata accessor for PBTypedData.OneOf_Raw;
LABEL_103:
      v253 = v180;
      v254 = v105;
      goto LABEL_104;
    default:
      sub_251ABCD3C(v329 + v90, v79, sub_251ABCD08);
      v96 = v326(v79, 1, v82);
      v97 = sub_251ABCD08;
      if (v96 == 1)
      {
        v98 = v328;
        v99 = v275;
LABEL_78:
        sub_251AC10E4(v79, v97);
        v222 = v307;
        *v307 = 0;
        *(v222 + 1) = 0xE000000000000000;
        *(v222 + 2) = 0;
        *(v222 + 3) = 0xE000000000000000;
        *(v222 + 4) = MEMORY[0x277D84F90];
        v223 = v293;
        v224 = &v222[*(v293 + 28)];
        sub_251C703A4();
        v225 = *(v223 + 32);
        v226 = type metadata accessor for PBDateRange(0);
        (*(*(v226 - 8) + 56))(&v222[v225], 1, 1, v226);
        goto LABEL_79;
      }

      v221 = swift_getEnumCaseMultiPayload();
      v97 = type metadata accessor for PBTypedData.OneOf_Raw;
      v98 = v328;
      v99 = v275;
      if (v221)
      {
        goto LABEL_78;
      }

      v222 = v307;
      sub_251ABCDA4(v79, v307, type metadata accessor for PBTimeSeries);
LABEL_79:
      sub_251ABCE0C(v222, v98);
      v227 = type metadata accessor for PBTimeSeries;
      v228 = v222;
LABEL_120:
      sub_251AC10E4(v228, v227);
      v178 = v99;
LABEL_121:
      v194 = type metadata accessor for PBTypedData.OneOf_Raw;
LABEL_122:
      sub_251AC10E4(v178, v194);
      v257 = v87;
      return sub_251AC10E4(v257, type metadata accessor for PBTypedData.OneOf_Raw);
  }
}

uint64_t sub_251ABCD3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251ABCDA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251ABCE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PBTimeSeries.Value(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v21 = MEMORY[0x277D84F90];
    sub_251C0B6AC(0, v10, 0);
    v11 = v21;
    v12 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_251ABCD3C(v12, v8, type metadata accessor for PBTimeSeries.Value);
      v15 = *(v8 + 3);
      v14 = *(v8 + 4);

      sub_251AC10E4(v8, type metadata accessor for PBTimeSeries.Value);
      v21 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_251C0B6AC((v16 > 1), v17 + 1, 1);
        v11 = v21;
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  sub_251ABDB10(v11, a2);
}

uint64_t sub_251ABCFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251AC0EAC(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for PBDateRange(0);
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for PBCategorySeries.Event(0);
  v11 = *(v32 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v32);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = *(v15 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v30 = a2;
    v35 = MEMORY[0x277D84F90];
    sub_251C0B6AC(0, v16, 0);
    v17 = v35;
    v18 = v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v31 = *(v11 + 72);
    v19 = (v7 + 48);
    do
    {
      sub_251ABCD3C(v18, v14, type metadata accessor for PBCategorySeries.Event);
      v20 = v34;
      sub_251ABCD3C(&v14[*(v32 + 36)], v34, sub_251AC0EAC);
      v21 = *v19;
      v22 = v33;
      if ((*v19)(v20, 1, v33) == 1)
      {
        *v10 = 0;
        *(v10 + 1) = 0xE000000000000000;
        *(v10 + 2) = 0;
        *(v10 + 3) = 0xE000000000000000;
        *(v10 + 4) = 0;
        v10[40] = 1;
        v23 = &v10[*(v22 + 28)];
        sub_251C703A4();
        sub_251AC10E4(v14, type metadata accessor for PBCategorySeries.Event);
        if (v21(v20, 1, v22) != 1)
        {
          sub_251AC10E4(v20, sub_251AC0EAC);
        }
      }

      else
      {
        sub_251AC10E4(v14, type metadata accessor for PBCategorySeries.Event);
        sub_251ABCDA4(v20, v10, type metadata accessor for PBDateRange);
      }

      v25 = *(v10 + 2);
      v24 = *(v10 + 3);

      sub_251AC10E4(v10, type metadata accessor for PBDateRange);
      v35 = v17;
      v27 = *(v17 + 16);
      v26 = *(v17 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_251C0B6AC((v26 > 1), v27 + 1, 1);
        v17 = v35;
      }

      *(v17 + 16) = v27 + 1;
      v28 = v17 + 16 * v27;
      *(v28 + 32) = v25;
      *(v28 + 40) = v24;
      v18 += v31;
      --v16;
    }

    while (v16);
    a2 = v30;
  }

  sub_251ABDB10(v17, a2);
}

uint64_t sub_251ABD350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251AC0EAC(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PBDateRange(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBWorkout(0);
  sub_251ABCD3C(a1 + *(v13 + 48), v7, sub_251AC0EAC);
  v14 = *(v9 + 48);
  if (v14(v7, 1, v8) == 1)
  {
    *v12 = 0;
    *(v12 + 1) = 0xE000000000000000;
    *(v12 + 2) = 0;
    *(v12 + 3) = 0xE000000000000000;
    *(v12 + 4) = 0;
    v12[40] = 1;
    v15 = &v12[*(v8 + 28)];
    sub_251C703A4();
    if (v14(v7, 1, v8) != 1)
    {
      sub_251AC10E4(v7, sub_251AC0EAC);
    }
  }

  else
  {
    sub_251ABCDA4(v7, v12, type metadata accessor for PBDateRange);
  }

  v17 = *(v12 + 2);
  v16 = *(v12 + 3);

  sub_251AC10E4(v12, type metadata accessor for PBDateRange);
  if (qword_27F478930 != -1)
  {
    swift_once();
  }

  v18 = qword_27F4A2878;
  v19 = sub_251C70EE4();

  v20 = [v18 dateFromString_];

  if (v20)
  {
    sub_251C6FFE4();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_251C70014();
  return (*(*(v22 - 8) + 56))(a2, v21, 1, v22);
}

uint64_t sub_251ABD61C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PBActivitySummarySeries.ActivitySummary(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(*a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v21 = MEMORY[0x277D84F90];
    sub_251C0B6AC(0, v10, 0);
    v11 = v21;
    v12 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_251ABCD3C(v12, v8, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
      v15 = *(v8 + 3);
      v14 = *(v8 + 4);

      sub_251AC10E4(v8, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
      v21 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_251C0B6AC((v16 > 1), v17 + 1, 1);
        v11 = v21;
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  sub_251ABDB10(v11, a2);
}

uint64_t sub_251ABD7C8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v26 = a4;
  v8 = a2(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = (&v24 - v11);
  v13 = *a1;
  v14 = *(*a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v25 = a5;
    v27 = MEMORY[0x277D84F90];
    sub_251C0B6AC(0, v14, 0);
    v15 = v27;
    v16 = v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v17 = *(v9 + 72);
    do
    {
      sub_251ABCD3C(v16, v12, a3);
      v18 = *v12;
      v19 = v12[1];

      sub_251AC10E4(v12, v26);
      v27 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_251C0B6AC((v20 > 1), v21 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v21 + 1;
      v22 = v15 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19;
      v16 += v17;
      --v14;
    }

    while (v14);
    a5 = v25;
  }

  sub_251ABDB10(v15, a5);
}

uint64_t sub_251ABD964@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PBMedicationTrackingDoseEvent(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(*a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v21 = MEMORY[0x277D84F90];
    sub_251C0B6AC(0, v10, 0);
    v11 = v21;
    v12 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_251ABCD3C(v12, v8, type metadata accessor for PBMedicationTrackingDoseEvent);
      v15 = *(v8 + 11);
      v14 = *(v8 + 12);

      sub_251AC10E4(v8, type metadata accessor for PBMedicationTrackingDoseEvent);
      v21 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_251C0B6AC((v16 > 1), v17 + 1, 1);
        v11 = v21;
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  sub_251ABDB10(v11, a2);
}

uint64_t sub_251ABDB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v67 = sub_251C70014();
  v3 = *(v67 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v67);
  v60 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v63 = &v59 - v8;
  MEMORY[0x28223BE20](v7);
  v61 = &v59 - v9;
  sub_251ABCCD4(0);
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v59 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v59 - v19;
  MEMORY[0x28223BE20](v18);
  v62 = &v59 - v21;
  v22 = *(a1 + 16);
  v23 = MEMORY[0x277D84F90];
  v65 = v3;
  v66 = v14;
  if (v22)
  {
    v68 = MEMORY[0x277D84F90];
    sub_251C0B75C(0, v22, 0);
    v23 = v68;
    v24 = (v3 + 56);
    v25 = (a1 + 40);
    do
    {
      v26 = *(v25 - 1);
      v27 = *v25;
      v28 = qword_27F478930;

      if (v28 != -1)
      {
        swift_once();
      }

      v29 = qword_27F4A2878;
      v30 = sub_251C70EE4();
      v31 = [v29 dateFromString_];

      if (v31)
      {
        sub_251C6FFE4();

        v32 = 0;
      }

      else
      {
        v32 = 1;
      }

      (*v24)(v17, v32, 1, v67);
      sub_251ABCDA4(v17, v20, sub_251ABCCD4);
      v68 = v23;
      v34 = *(v23 + 16);
      v33 = *(v23 + 24);
      v14 = v66;
      if (v34 >= v33 >> 1)
      {
        sub_251C0B75C(v33 > 1, v34 + 1, 1);
        v23 = v68;
      }

      *(v23 + 16) = v34 + 1;
      sub_251ABCDA4(v20, v23 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v34, sub_251ABCCD4);
      v25 += 2;
      --v22;
    }

    while (v22);
    v3 = v65;
  }

  v35 = *(v23 + 16);
  v36 = v67;
  if (v35)
  {
    v37 = v23 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
    v64 = *(v64 + 72);
    v38 = (v3 + 48);
    v39 = (v3 + 32);
    v40 = MEMORY[0x277D84F90];
    do
    {
      v41 = v62;
      sub_251ABCD3C(v37, v62, sub_251ABCCD4);
      sub_251ABCDA4(v41, v14, sub_251ABCCD4);
      if ((*v38)(v14, 1, v36) == 1)
      {
        sub_251AC10E4(v14, sub_251ABCCD4);
      }

      else
      {
        v42 = v14;
        v43 = *v39;
        (*v39)(v63, v42, v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_251C38F9C(0, v40[2] + 1, 1, v40);
        }

        v45 = v40[2];
        v44 = v40[3];
        if (v45 >= v44 >> 1)
        {
          v40 = sub_251C38F9C(v44 > 1, v45 + 1, 1, v40);
        }

        v40[2] = v45 + 1;
        v3 = v65;
        v46 = v40 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v65 + 72) * v45;
        v36 = v67;
        v43(v46, v63, v67);
        v14 = v66;
      }

      v37 += v64;
      --v35;
    }

    while (v35);
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
  }

  v47 = v40[2];
  if (!v47)
  {

    v51 = 1;
    v50 = v59;
    return (*(v3 + 56))(v50, v51, 1, v36);
  }

  v48 = *(v3 + 16);
  v66 = v40 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v67 = v48;
  result = v48(v61);
  if (v47 == 1)
  {
LABEL_26:

    v3 = v65;
    v50 = v59;
    (*(v65 + 32))(v59, v61, v36);
    v51 = 0;
    return (*(v3 + 56))(v50, v51, 1, v36);
  }

  v52 = (v65 + 32);
  v53 = 1;
  v54 = v65;
  while (v53 < v40[2])
  {
    v55 = v60;
    (v67)(v60, &v66[*(v54 + 72) * v53], v36);
    v56 = v61;
    v57 = sub_251C6FFA4();
    v58 = *(v54 + 8);
    if (v57)
    {
      v58(v56, v36);
      result = (*v52)(v56, v55, v36);
    }

    else
    {
      result = (v58)(v55, v36);
    }

    if (v47 == ++v53)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251ABE198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v302 = a2;
  v3 = type metadata accessor for PBHKMedicationRecord(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v286 = &v268 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = type metadata accessor for PBHKProcedureRecord(0);
  v6 = *(*(v273 - 8) + 64);
  MEMORY[0x28223BE20](v273);
  v289 = &v268 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = type metadata accessor for PBHKAccountOwner(0);
  v8 = *(*(v271 - 8) + 64);
  MEMORY[0x28223BE20](v271);
  v295 = (&v268 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v272 = type metadata accessor for PBHKDiagnosticTestReport(0);
  v10 = *(*(v272 - 8) + 64);
  MEMORY[0x28223BE20](v272);
  v288 = &v268 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = type metadata accessor for PBHKDiagnosticTestResult(0);
  v12 = *(*(v294 - 8) + 64);
  MEMORY[0x28223BE20](v294);
  v287 = &v268 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = type metadata accessor for PBHKMedicationOrder(0);
  v14 = *(*(v270 - 8) + 64);
  MEMORY[0x28223BE20](v270);
  v299 = &v268 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = type metadata accessor for PBHKMedicationDispenseRecord(0);
  v16 = *(*(v269 - 8) + 64);
  MEMORY[0x28223BE20](v269);
  v298 = &v268 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = type metadata accessor for PBHKVaccinationRecord(0);
  v18 = *(*(v268 - 8) + 64);
  MEMORY[0x28223BE20](v268);
  v297 = &v268 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PBHKConditionRecord(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v282 = &v268 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ABCCD4(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v281 = &v268 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v296 = &v268 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v292 = &v268 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v285 = &v268 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v293 = &v268 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v291 = &v268 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v290 = &v268 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v280 = &v268 - v40;
  MEMORY[0x28223BE20](v39);
  v284 = &v268 - v41;
  v274 = type metadata accessor for PBHKAllergyRecord(0);
  v42 = *(*(v274 - 8) + 64);
  MEMORY[0x28223BE20](v274);
  v283 = &v268 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AC0F38(0);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v279 = &v268 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v278 = &v268 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v277 = &v268 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v276 = &v268 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v275 = &v268 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v58 = &v268 - v57;
  v59 = MEMORY[0x28223BE20](v56);
  v61 = &v268 - v60;
  v62 = MEMORY[0x28223BE20](v59);
  v64 = &v268 - v63;
  MEMORY[0x28223BE20](v62);
  v66 = &v268 - v65;
  v67 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v68 = *(v67 - 8);
  v69 = *(v68 + 64);
  v70 = MEMORY[0x28223BE20](v67);
  v72 = &v268 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v74 = &v268 - v73;
  v75 = *(type metadata accessor for PBClinicalRecord(0) + 20);
  v300 = a1;
  v76 = *(a1 + v75);
  v77 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251ABCD3C(v76 + v77, v66, sub_251AC0F38);
  v301 = *(v68 + 48);
  if (v301(v66, 1, v67) == 1)
  {
    sub_251AC10E4(v66, sub_251AC0F38);
    v78 = sub_251C70014();
    return (*(*(v78 - 8) + 56))(v302, 1, 1, v78);
  }

  sub_251ABCDA4(v66, v74, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v80 = v74;
  sub_251ABCD3C(v74, v72, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v82 = v72;
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v117 = v278;
        sub_251ABCD3C(v76 + v77, v278, sub_251AC0F38);
        v118 = v301(v117, 1, v67);
        v119 = sub_251AC0F38;
        if (v118 == 1 || (v120 = swift_getEnumCaseMultiPayload(), v119 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, v120 != 7))
        {
          v122 = v302;
          v160 = v295;
          sub_251AC10E4(v117, v119);
          *v160 = 0;
          v160[1] = 0xE000000000000000;
          v160[2] = 0;
          v160[3] = 0xE000000000000000;
          v161 = v160 + *(v271 + 24);
          sub_251C703A4();
          sub_251AC10E4(v160, type metadata accessor for PBHKAccountOwner);
          sub_251AC10E4(v80, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
        }

        else
        {
          sub_251AC10E4(v80, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
          v121 = v295;
          sub_251ABCDA4(v117, v295, type metadata accessor for PBHKAccountOwner);
          sub_251AC10E4(v121, type metadata accessor for PBHKAccountOwner);
          v122 = v302;
        }

        v162 = sub_251C70014();
        (*(*(v162 - 8) + 56))(v122, 1, 1, v162);
        v163 = v82;
        return sub_251AC10E4(v163, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
      }

      if (EnumCaseMultiPayload != 8)
      {
        v128 = v286;
        sub_251B5D054(v286);
        v129 = *(v128 + 2);
        v130 = *(v128 + 3);
        if (qword_27F478930 != -1)
        {
          v254 = *(v128 + 2);
          v255 = *(v128 + 3);
          swift_once();
        }

        v131 = qword_27F4A2878;
        v132 = sub_251C70EE4();
        v133 = [v131 dateFromString_];

        if (v133)
        {
          v134 = v281;
          sub_251C6FFE4();

          v135 = 0;
          v136 = v302;
        }

        else
        {
          v135 = 1;
          v136 = v302;
          v134 = v281;
        }

        v235 = sub_251C70014();
        (*(*(v235 - 8) + 56))(v134, v135, 1, v235);
        sub_251ABCDA4(v134, v136, sub_251ABCCD4);
        v236 = type metadata accessor for PBHKMedicationRecord;
        goto LABEL_99;
      }

      v87 = v76 + v77;
      v88 = v279;
      sub_251ABCD3C(v87, v279, sub_251AC0F38);
      v89 = v301(v88, 1, v67);
      v90 = sub_251AC0F38;
      if (v89 == 1)
      {
        v86 = v289;
      }

      else
      {
        v192 = swift_getEnumCaseMultiPayload();
        v90 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
        v86 = v289;
        if (v192 == 8)
        {
          sub_251ABCDA4(v88, v289, type metadata accessor for PBHKProcedureRecord);
LABEL_65:
          v199 = v296;
          v200 = *(v86 + 16);
          v201 = *(v86 + 24);
          if (qword_27F478930 != -1)
          {
            v260 = *(v86 + 16);
            v261 = *(v86 + 24);
            swift_once();
          }

          v202 = qword_27F4A2878;
          v203 = sub_251C70EE4();
          v204 = [v202 dateFromString_];

          if (v204)
          {
            sub_251C6FFE4();

            v205 = 0;
          }

          else
          {
            v205 = 1;
          }

          v242 = v302;
          v243 = sub_251C70014();
          (*(*(v243 - 8) + 56))(v199, v205, 1, v243);
          sub_251ABCDA4(v199, v242, sub_251ABCCD4);
          v239 = type metadata accessor for PBHKProcedureRecord;
LABEL_104:
          v233 = v239;
          v234 = v86;
          goto LABEL_105;
        }
      }

      sub_251AC10E4(v88, v90);
      v193 = MEMORY[0x277D84F90];
      *v86 = MEMORY[0x277D84F90];
      *(v86 + 8) = v193;
      *(v86 + 16) = 0;
      *(v86 + 24) = 0xE000000000000000;
      *(v86 + 32) = 0;
      *(v86 + 40) = 0xE000000000000000;
      *(v86 + 48) = v193;
      *(v86 + 56) = 0;
      *(v86 + 64) = v193;
      *(v86 + 72) = v193;
      v194 = v273;
      v195 = v86 + *(v273 + 48);
      sub_251C703A4();
      v196 = v194[13];
      v197 = type metadata accessor for PBHKConcept(0);
      v198 = *(*(v197 - 8) + 56);
      v198(v86 + v196, 1, 1, v197);
      v198(v86 + v194[14], 1, 1, v197);
      v198(v86 + v194[15], 1, 1, v197);
      v198(v86 + v194[16], 1, 1, v197);
      v198(v86 + v194[17], 1, 1, v197);
      goto LABEL_65;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v107 = v76 + v77;
      v108 = v276;
      sub_251ABCD3C(v107, v276, sub_251AC0F38);
      v109 = v301(v108, 1, v67);
      v110 = sub_251AC0F38;
      if (v109 == 1)
      {
        v111 = v287;
      }

      else
      {
        v206 = swift_getEnumCaseMultiPayload();
        v110 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
        v111 = v287;
        if (v206 == 5)
        {
          sub_251ABCDA4(v108, v287, type metadata accessor for PBHKDiagnosticTestResult);
          v207 = v294;
LABEL_74:
          v209 = (*(v111 + *(v207 + 20)) + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__issueDate);
          swift_beginAccess();
          v211 = *v209;
          v210 = v209[1];
          v212 = qword_27F478930;

          if (v212 != -1)
          {
            swift_once();
          }

          v213 = qword_27F4A2878;
          v214 = sub_251C70EE4();

          v215 = [v213 dateFromString_];

          if (v215)
          {
            v216 = v285;
            sub_251C6FFE4();

            v217 = 0;
          }

          else
          {
            v217 = 1;
            v216 = v285;
          }

          sub_251AC10E4(v80, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
          v248 = sub_251C70014();
          (*(*(v248 - 8) + 56))(v216, v217, 1, v248);
          sub_251ABCDA4(v216, v302, sub_251ABCCD4);
          sub_251AC10E4(v111, type metadata accessor for PBHKDiagnosticTestResult);
          v163 = v72;
          return sub_251AC10E4(v163, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
        }
      }

      v207 = v294;
      sub_251AC10E4(v108, v110);
      sub_251C703A4();
      v208 = *(v207 + 20);
      if (qword_27F4786E8 != -1)
      {
        swift_once();
      }

      *(v111 + v208) = qword_27F47AC00;

      goto LABEL_74;
    }

    v144 = v76 + v77;
    v145 = v277;
    sub_251ABCD3C(v144, v277, sub_251AC0F38);
    v146 = v301(v145, 1, v67);
    v147 = sub_251AC0F38;
    if (v146 == 1)
    {
      v86 = v288;
    }

    else
    {
      v218 = swift_getEnumCaseMultiPayload();
      v147 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
      v86 = v288;
      if (v218 == 6)
      {
        sub_251ABCDA4(v145, v288, type metadata accessor for PBHKDiagnosticTestReport);
LABEL_81:
        v224 = v292;
        v225 = *(v86 + 32);
        v226 = *(v86 + 40);
        if (qword_27F478930 != -1)
        {
          v266 = *(v86 + 32);
          v267 = *(v86 + 40);
          swift_once();
        }

        v227 = qword_27F4A2878;
        v228 = sub_251C70EE4();
        v229 = [v227 dateFromString_];

        if (v229)
        {
          sub_251C6FFE4();

          v230 = 0;
        }

        else
        {
          v230 = 1;
        }

        v249 = v302;
        v250 = sub_251C70014();
        (*(*(v250 - 8) + 56))(v224, v230, 1, v250);
        sub_251ABCDA4(v224, v249, sub_251ABCCD4);
        v239 = type metadata accessor for PBHKDiagnosticTestReport;
        goto LABEL_104;
      }
    }

    sub_251AC10E4(v145, v147);
    *v86 = 0;
    *(v86 + 8) = 0xE000000000000000;
    *(v86 + 16) = 0;
    *(v86 + 24) = 0xE000000000000000;
    *(v86 + 32) = 0;
    *(v86 + 40) = 0xE000000000000000;
    *(v86 + 48) = 0;
    *(v86 + 56) = 0xE000000000000000;
    *(v86 + 64) = MEMORY[0x277D84F90];
    v219 = v272;
    v220 = v86 + *(v272 + 36);
    sub_251C703A4();
    v221 = *(v219 + 40);
    v222 = type metadata accessor for PBHKConcept(0);
    v223 = *(*(v222 - 8) + 56);
    v223(v86 + v221, 1, 1, v222);
    v223(v86 + *(v219 + 44), 1, 1, v222);
    goto LABEL_81;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_251ABCD3C(v76 + v77, v61, sub_251AC0F38);
      v112 = v301(v61, 1, v67);
      v113 = sub_251AC0F38;
      if (v112 == 1 || (v114 = swift_getEnumCaseMultiPayload(), v113 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, v114 != 2))
      {
        v115 = v297;
        v116 = v290;
        sub_251AC10E4(v61, v113);
        *v115 = 0;
        *(v115 + 8) = 0xE000000000000000;
        *(v115 + 16) = 0;
        *(v115 + 24) = 0xE000000000000000;
        *(v115 + 32) = 0;
        *(v115 + 40) = 0xE000000000000000;
        *(v115 + 48) = 0;
        *(v115 + 56) = 0xE000000000000000;
        *(v115 + 64) = 0;
        *(v115 + 72) = 0;
        *(v115 + 80) = 0xE000000000000000;
        *(v115 + 88) = 0;
        *(v115 + 96) = 0xE000000000000000;
        v148 = MEMORY[0x277D84F90];
        *(v115 + 104) = MEMORY[0x277D84F90];
        *(v115 + 112) = v148;
        v149 = v268;
        v150 = v115 + *(v268 + 56);
        sub_251C703A4();
        v151 = v149[15];
        v152 = type metadata accessor for PBHKConcept(0);
        v153 = *(*(v152 - 8) + 56);
        v153(v115 + v151, 1, 1, v152);
        v153(v115 + v149[16], 1, 1, v152);
        v153(v115 + v149[17], 1, 1, v152);
        v153(v115 + v149[18], 1, 1, v152);
      }

      else
      {
        v115 = v297;
        sub_251ABCDA4(v61, v297, type metadata accessor for PBHKVaccinationRecord);
        v116 = v290;
      }

      v154 = *v115;
      v155 = *(v115 + 8);
      if (qword_27F478930 != -1)
      {
        v252 = *v115;
        v253 = *(v115 + 8);
        swift_once();
      }

      v156 = qword_27F4A2878;
      v157 = sub_251C70EE4();
      v158 = [v156 dateFromString_];

      if (v158)
      {
        sub_251C6FFE4();

        v159 = 0;
      }

      else
      {
        v159 = 1;
      }

      v231 = v302;
      v232 = sub_251C70014();
      (*(*(v232 - 8) + 56))(v116, v159, 1, v232);
      sub_251ABCDA4(v116, v231, sub_251ABCCD4);
      v233 = type metadata accessor for PBHKVaccinationRecord;
      v234 = v115;
      goto LABEL_105;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_251ABCD3C(v76 + v77, v58, sub_251AC0F38);
      v83 = v301(v58, 1, v67);
      v84 = sub_251AC0F38;
      if (v83 == 1 || (v85 = swift_getEnumCaseMultiPayload(), v84 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, v85 != 3))
      {
        v86 = v298;
        sub_251AC10E4(v58, v84);
        *v86 = 0;
        *(v86 + 8) = 0xE000000000000000;
        *(v86 + 16) = 0;
        *(v86 + 24) = 0xE000000000000000;
        v164 = v269;
        v165 = v86 + *(v269 + 24);
        sub_251C703A4();
        v166 = v164[7];
        v167 = type metadata accessor for PBGeneralMedication(0);
        (*(*(v167 - 8) + 56))(v86 + v166, 1, 1, v167);
        v168 = v164[8];
        v169 = type metadata accessor for PBQuantity(0);
        v170 = *(*(v169 - 8) + 56);
        v170(v86 + v168, 1, 1, v169);
        v170(v86 + v164[9], 1, 1, v169);
      }

      else
      {
        v86 = v298;
        sub_251ABCDA4(v58, v298, type metadata accessor for PBHKMedicationDispenseRecord);
      }

      v171 = v291;
      v172 = *v86;
      v173 = *(v86 + 8);
      if (qword_27F478930 != -1)
      {
        v256 = *v86;
        v257 = *(v86 + 8);
        swift_once();
      }

      v174 = qword_27F4A2878;
      v175 = sub_251C70EE4();
      v176 = [v174 dateFromString_];

      if (v176)
      {
        sub_251C6FFE4();

        v177 = 0;
      }

      else
      {
        v177 = 1;
      }

      v237 = v302;
      v238 = sub_251C70014();
      (*(*(v238 - 8) + 56))(v171, v177, 1, v238);
      sub_251ABCDA4(v171, v237, sub_251ABCCD4);
      v239 = type metadata accessor for PBHKMedicationDispenseRecord;
    }

    else
    {
      v123 = v76 + v77;
      v124 = v275;
      sub_251ABCD3C(v123, v275, sub_251AC0F38);
      v125 = v301(v124, 1, v67);
      v126 = sub_251AC0F38;
      if (v125 == 1 || (v127 = swift_getEnumCaseMultiPayload(), v126 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, v127 != 4))
      {
        v86 = v299;
        sub_251AC10E4(v124, v126);
        *v86 = 0;
        *(v86 + 8) = 0xE000000000000000;
        *(v86 + 16) = 0;
        *(v86 + 24) = 0;
        *(v86 + 32) = 0xE000000000000000;
        *(v86 + 40) = MEMORY[0x277D84F90];
        *(v86 + 48) = 0;
        *(v86 + 56) = 0xE000000000000000;
        v178 = v270;
        v179 = v86 + *(v270 + 36);
        sub_251C703A4();
        v180 = v178[10];
        v181 = type metadata accessor for PBGeneralMedication(0);
        (*(*(v181 - 8) + 56))(v86 + v180, 1, 1, v181);
        v182 = v178[11];
        v183 = type metadata accessor for PBHKConcept(0);
        v184 = *(*(v183 - 8) + 56);
        v184(v86 + v182, 1, 1, v183);
        v184(v86 + v178[12], 1, 1, v183);
      }

      else
      {
        v86 = v299;
        sub_251ABCDA4(v124, v299, type metadata accessor for PBHKMedicationOrder);
      }

      v185 = v293;
      v186 = *(v86 + 48);
      v187 = *(v86 + 56);
      if (qword_27F478930 != -1)
      {
        v258 = *(v86 + 48);
        v259 = *(v86 + 56);
        swift_once();
      }

      v188 = qword_27F4A2878;
      v189 = sub_251C70EE4();
      v190 = [v188 dateFromString_];

      if (v190)
      {
        sub_251C6FFE4();

        v191 = 0;
      }

      else
      {
        v191 = 1;
      }

      v240 = v302;
      v241 = sub_251C70014();
      (*(*(v241 - 8) + 56))(v185, v191, 1, v241);
      sub_251ABCDA4(v185, v240, sub_251ABCCD4);
      v239 = type metadata accessor for PBHKMedicationOrder;
    }

    goto LABEL_104;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_251ABCD3C(v76 + v77, v64, sub_251AC0F38);
    v91 = v301(v64, 1, v67);
    v92 = sub_251AC0F38;
    if (v91 == 1 || (v93 = swift_getEnumCaseMultiPayload(), v92 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, v93))
    {
      sub_251AC10E4(v64, v92);
      v94 = v283;
      *v283 = 0;
      *(v94 + 1) = 0xE000000000000000;
      *(v94 + 2) = 0;
      *(v94 + 3) = 0xE000000000000000;
      *(v94 + 4) = 0;
      *(v94 + 5) = 0xE000000000000000;
      *(v94 + 6) = MEMORY[0x277D84F90];
      *(v94 + 7) = 0;
      *(v94 + 8) = 0xE000000000000000;
      v95 = v274;
      v96 = &v94[*(v274 + 36)];
      sub_251C703A4();
      v97 = v95[10];
      v98 = type metadata accessor for PBHKConcept(0);
      v99 = *(*(v98 - 8) + 56);
      v99(&v94[v97], 1, 1, v98);
      v99(&v94[v95[11]], 1, 1, v98);
      v99(&v94[v95[12]], 1, 1, v98);
    }

    else
    {
      v251 = v64;
      v94 = v283;
      sub_251ABCDA4(v251, v283, type metadata accessor for PBHKAllergyRecord);
    }

    v100 = *(v94 + 7);
    v101 = *(v94 + 8);
    v102 = v284;
    if (qword_27F478930 != -1)
    {
      v262 = *(v94 + 7);
      v263 = *(v94 + 8);
      swift_once();
    }

    v103 = qword_27F4A2878;
    v104 = sub_251C70EE4();
    v105 = [v103 dateFromString_];

    if (v105)
    {
      sub_251C6FFE4();

      v106 = 0;
    }

    else
    {
      v106 = 1;
    }

    v244 = v302;
    v245 = sub_251C70014();
    (*(*(v245 - 8) + 56))(v102, v106, 1, v245);
    sub_251ABCDA4(v102, v244, sub_251ABCCD4);
    v233 = type metadata accessor for PBHKAllergyRecord;
    v234 = v94;
    goto LABEL_105;
  }

  v128 = v282;
  sub_251B5CDA0(v282);
  v137 = *(v128 + 7);
  v138 = *(v128 + 8);
  if (qword_27F478930 != -1)
  {
    v264 = *(v128 + 7);
    v265 = *(v128 + 8);
    swift_once();
  }

  v139 = qword_27F4A2878;
  v140 = sub_251C70EE4();
  v141 = [v139 dateFromString_];

  v142 = v280;
  if (v141)
  {
    sub_251C6FFE4();

    v143 = 0;
  }

  else
  {
    v143 = 1;
  }

  v246 = v302;
  v247 = sub_251C70014();
  (*(*(v247 - 8) + 56))(v142, v143, 1, v247);
  sub_251ABCDA4(v142, v246, sub_251ABCCD4);
  v236 = type metadata accessor for PBHKConditionRecord;
LABEL_99:
  v233 = v236;
  v234 = v128;
LABEL_105:
  sub_251AC10E4(v234, v233);
  sub_251AC10E4(v80, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v163 = v82;
  return sub_251AC10E4(v163, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
}

uint64_t sub_251AC00D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_251C70014();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_251AC0EE0();
        v21 = sub_251C70EB4();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

int64_t sub_251AC0350(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_251AC0404@<X0>(char *a1@<X8>)
{
  v71 = a1;
  sub_251AC0FA0(0, &qword_27F4795A8, sub_251ABCCD4, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v94 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v92 = &v70 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v70 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v70 - v11;
  sub_251ABCCD4(0);
  v14 = *(v13 - 8);
  v90 = v13;
  v91 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v70 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v70 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v73 = &v70 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v89 = &v70 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v88 = &v70 - v30;
  MEMORY[0x28223BE20](v29);
  i = &v70 - v31;
  v32 = sub_251C70014();
  v75 = *(v32 - 8);
  v33 = v75[8];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = (&v70 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34);
  v86 = &v70 - v37;
  v39 = *v1;
  v38 = *(v1 + 8);
  v40 = *(v1 + 16);
  v95 = *(v1 + 24);
  v96 = v38;
  v97 = *(v1 + 32);
  v98 = v40;
  v100[0] = v39;
  v70 = v39 >> 62;
  if (v39 >> 62)
  {
    goto LABEL_50;
  }

  v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v93 = v24;
  v42 = *(v1 + 48);
  v72 = *(v1 + 40);
  sub_251ABCD3C(v100, &v99, sub_251AC0F6C);

  v74 = v42;

  v87 = v32;
  v80 = v36;
  if (v41)
  {
    v83 = v12;
    v84 = v10;
    v24 = 0;
    v85 = v39 & 0xC000000000000001;
    v32 = v39 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v85)
      {
        v43 = MEMORY[0x25308D460](v24, v39);
      }

      else
      {
        if (v24 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v43 = *(v39 + 8 * v24 + 32);
      }

      v36 = v43;
      v10 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_48;
      }

      v99 = v43;
      v44 = v89;
      v96(&v99);

      v45 = v44;
      v12 = v88;
      sub_251ABCDA4(v45, v88, sub_251ABCCD4);
      v1 = v97;
      if (v95(v12))
      {
        break;
      }

      sub_251AC10E4(v12, sub_251ABCCD4);
      ++v24;
      v46 = v10 == v41;
      v10 = v84;
      if (v46)
      {
        v48 = 1;
        v32 = v87;
        v12 = v83;
        goto LABEL_16;
      }
    }

    v47 = v12;
    v12 = v83;
    sub_251ABCDA4(v47, v83, sub_251ABCCD4);
    v48 = 0;
    v41 = v24 + 1;
    v32 = v87;
    v10 = v84;
  }

  else
  {
    v48 = 1;
  }

LABEL_16:
  v49 = v90;
  v50 = v91;
  v1 = 1;
  v84 = *(v91 + 56);
  v85 = v91 + 56;
  (v84)(v12, v48, 1, v90);
  sub_251AC1050(v12, v10);
  v51 = *(v50 + 48);
  v91 = v50 + 48;
  v83 = v51;
  if ((v51)(v10, 1, v49) != 1)
  {
    v52 = v73;
    sub_251ABCDA4(v10, v73, sub_251ABCCD4);
    v72(v52);
    sub_251AC10E4(v52, sub_251ABCCD4);
    v1 = 0;
  }

  v36 = v75;
  v53 = i;
  v88 = v75[7];
  v89 = (v75 + 7);
  (v88)(i, v1, 1, v32);
  v81 = v36[6];
  v82 = v36 + 6;
  if (v81(v53, 1, v32) == 1)
  {
    sub_251AC10E4(v100, sub_251AC0F6C);

    sub_251AC10E4(v53, sub_251ABCCD4);
    v54 = 1;
    v55 = v71;
  }

  else
  {
    v78 = v36[4];
    v79 = v36 + 4;
    v78(v86, v53, v32);
    v32 = v39 & 0xFFFFFFFFFFFFFF8;
    if (v70)
    {
      v24 = sub_251C717F4();
    }

    else
    {
      v24 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = (v39 & 0xC000000000000001);
    v75 = v36 + 1;
    v77 = v18;
    for (i = (v39 & 0xFFFFFFFFFFFFFF8); ; v32 = i)
    {
      if (v41 != v24)
      {
        do
        {
          if (v10)
          {
            v57 = MEMORY[0x25308D460](v41, v39);
          }

          else
          {
            if ((v41 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              v41 = sub_251C717F4();
              goto LABEL_3;
            }

            if (v41 >= *(v32 + 16))
            {
              goto LABEL_47;
            }

            v57 = *(v39 + 8 * v41 + 32);
          }

          v36 = v57;
          v12 = (v41 + 1);
          if (__OFADD__(v41, 1))
          {
            goto LABEL_46;
          }

          v99 = v57;
          v96(&v99);

          sub_251ABCDA4(v18, v21, sub_251ABCCD4);
          v1 = v97;
          if (v95(v21))
          {
            sub_251ABCDA4(v21, v92, sub_251ABCCD4);
            v56 = 0;
            ++v41;
            goto LABEL_38;
          }

          sub_251AC10E4(v21, sub_251ABCCD4);
          ++v41;
        }

        while (v12 != v24);
      }

      v56 = 1;
      v41 = v24;
LABEL_38:
      v58 = 1;
      v59 = v92;
      v60 = v90;
      (v84)(v92, v56, 1, v90);
      v61 = v59;
      v62 = v94;
      sub_251AC1050(v61, v94);
      if ((v83)(v62, 1, v60) != 1)
      {
        v63 = v73;
        sub_251ABCDA4(v94, v73, sub_251ABCCD4);
        v72(v63);
        sub_251AC10E4(v63, sub_251ABCCD4);
        v58 = 0;
      }

      v64 = v93;
      v65 = v58;
      v1 = v87;
      (v88)(v93, v65, 1, v87);
      if (v81(v64, 1, v1) == 1)
      {
        break;
      }

      v36 = v80;
      v66 = v78;
      v78(v80, v64, v1);
      sub_251AC0EE0();
      v12 = v86;
      v67 = sub_251C70EB4();
      v68 = *v75;
      if (v67)
      {
        v68(v12, v1);
        v66(v12, v36, v1);
      }

      else
      {
        v68(v36, v1);
      }

      v18 = v77;
    }

    sub_251AC10E4(v100, sub_251AC0F6C);

    sub_251AC10E4(v64, sub_251ABCCD4);
    v55 = v71;
    v78(v71, v86, v1);
    v54 = 0;
    v32 = v1;
  }

  return (v88)(v55, v54, 1, v32);
}

unint64_t sub_251AC0EE0()
{
  result = qword_27F4795A0;
  if (!qword_27F4795A0)
  {
    sub_251C70014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4795A0);
  }

  return result;
}

void sub_251AC0FA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_251AC1004()
{
  result = qword_27F4795B8;
  if (!qword_27F4795B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4795B8);
  }

  return result;
}

uint64_t sub_251AC1050(uint64_t a1, uint64_t a2)
{
  sub_251AC0FA0(0, &qword_27F4795A8, sub_251ABCCD4, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AC10E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_251AC1148()
{
  result = qword_27F4795C0;
  if (!qword_27F4795C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4795C0);
  }

  return result;
}

uint64_t sub_251AC119C(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_251AC1560(v5, v7) & 1;
}

unint64_t sub_251AC11E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 32);
  if (v3 <= 2)
  {
    if (*(v0 + 32))
    {
      if (v3 == 1)
      {
        sub_251C716A4();

        v6 = 0xD000000000000027;
      }

      else
      {
        sub_251C716A4();

        v6 = 0xD00000000000002DLL;
      }

      goto LABEL_13;
    }

    sub_251C716A4();

    v7 = 0xD00000000000001ALL;
    goto LABEL_11;
  }

  v5 = v0[2];
  v4 = v0[3];
  if (*(v0 + 32) <= 4u)
  {
    if (v3 == 3)
    {
      sub_251C716A4();

      v6 = 0xD000000000000029;
LABEL_13:
      v10 = v6;
      v8 = sub_251C719A4();
      MEMORY[0x25308CDA0](v8);

      return v10;
    }

    sub_251C716A4();

    v10 = 0xD000000000000016;
    MEMORY[0x25308CDA0](v5, v4);
    MEMORY[0x25308CDA0](8250, 0xE200000000000000);
LABEL_15:
    MEMORY[0x25308CDA0](v1, v2);
    return v10;
  }

  if (v3 == 5)
  {
    sub_251C716A4();

    v7 = 0xD000000000000018;
LABEL_11:
    v10 = v7;
    goto LABEL_15;
  }

  if (v5 | v2 | v1 | v4)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0xD000000000000023;
  }
}

uint64_t get_enum_tag_for_layout_string_19HealthRecordsDaemon29ClinicalSharingCloudSyncErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_251AC14A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_251AC14EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_251AC1534(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_251AC1560(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 32);
  if (v5 <= 2)
  {
    if (*(a1 + 32))
    {
      if (v5 == 1)
      {
        if (a2[2].i8[0] != 1)
        {
          return 0;
        }

        return v3 == a2->i64[0];
      }

      if (a2[2].i8[0] == 2)
      {
        return v3 == a2->i64[0];
      }
    }

    else if (!a2[2].i8[0])
    {
      if (v3 != a2->i64[0] || v4 != a2->i64[1])
      {
        goto LABEL_29;
      }

      return 1;
    }

    return 0;
  }

  v7 = a1[2];
  v6 = a1[3];
  if (*(a1 + 32) > 4u)
  {
    if (v5 != 5)
    {
      if (v7 | v4 | v3 | v6)
      {
        if (a2[2].i8[0] != 6 || a2->i64[0] != 1 || a2[1].i64[0] | a2[1].i64[1] | a2->i64[1])
        {
          return 0;
        }
      }

      else
      {
        if (a2[2].i8[0] != 6)
        {
          return 0;
        }

        v13 = vorrq_s8(*a2, a2[1]);
        if (vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)))
        {
          return 0;
        }
      }

      return 1;
    }

    if (a2[2].i8[0] == 5)
    {
      if (v3 != a2->i64[0] || v4 != a2->i64[1])
      {
LABEL_29:

        return sub_251C719D4();
      }

      return 1;
    }

    return 0;
  }

  if (v5 == 3)
  {
    if (a2[2].i8[0] != 3)
    {
      return 0;
    }

    return v3 == a2->i64[0];
  }

  if (a2[2].i8[0] != 4)
  {
    return 0;
  }

  v10 = a2[1].i64[0];
  v11 = a2[1].i64[1];
  if (v3 == a2->i64[0] && v4 == a2->i64[1] || (v12 = sub_251C719D4(), result = 0, (v12 & 1) != 0))
  {
    if (v7 != v10 || v6 != v11)
    {
      goto LABEL_29;
    }

    return 1;
  }

  return result;
}

uint64_t sub_251AC1734()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1B68);
  __swift_project_value_buffer(v0, qword_27F4A1B68);
  sub_251AC2DC8(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "test_gateway_id";
  *(v7 + 8) = 15;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "test_mc_version";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251AC1914()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_251C70534();
    }
  }

  return result;
}

uint64_t sub_251AC1994()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_251C70674(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_251C70674(), !v1))
    {
      v8 = v0 + *(type metadata accessor for PBTestFlowData(0) + 24);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251AC1A58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return sub_251C703A4();
}

uint64_t sub_251AC1AB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251AC2AD0(&qword_27F479608, type metadata accessor for PBTestFlowData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251AC1B58(uint64_t a1)
{
  v2 = sub_251AC2AD0(&qword_27F4795F0, type metadata accessor for PBTestFlowData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251AC1BC4()
{
  sub_251AC2AD0(&qword_27F4795F0, type metadata accessor for PBTestFlowData);

  return sub_251C705C4();
}

uint64_t sub_251AC1C44()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1B80);
  __swift_project_value_buffer(v0, qword_27F4A1B80);
  sub_251AC2DC8(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_251C75810;
  v5 = v28 + v4;
  v6 = v28 + v4 + *(v2 + 56);
  *(v28 + v4) = 2;
  *v6 = "dlid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 3;
  *v10 = "key";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 4;
  *v12 = "vk_hr";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21888];
  v9();
  v14 = (v5 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 5;
  *v15 = "last_sync_time";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 6;
  *v17 = "device_id";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 7;
  *v19 = "device_name";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 8;
  *v21 = "times_shared";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v9();
  v22 = (v5 + 7 * v3);
  v23 = v22 + *(v2 + 56);
  *v22 = 9;
  *v23 = "expires_at";
  *(v23 + 1) = 10;
  v23[16] = 2;
  v9();
  v24 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 10;
  *v24 = "health_institute_id";
  *(v24 + 8) = 19;
  *(v24 + 16) = 2;
  v9();
  v25 = (v5 + 9 * v3);
  v26 = v25 + *(v2 + 56);
  *v25 = 11;
  *v26 = "test_flow_data";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251AC201C()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 6)
    {
      if (result <= 8)
      {
        if (result == 7)
        {
          goto LABEL_2;
        }

        sub_251C704F4();
      }

      else if (result == 9 || result == 10)
      {
LABEL_2:
        sub_251C70534();
      }

      else if (result == 11)
      {
        sub_251AC2168();
      }
    }

    else if (result <= 3)
    {
      if (result == 2)
      {
        goto LABEL_2;
      }

      if (result == 3)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (result != 4)
      {
        goto LABEL_2;
      }

LABEL_20:
      sub_251C704D4();
    }
  }
}

uint64_t sub_251AC2168()
{
  v0 = *(type metadata accessor for PBLookupInfo(0) + 56);
  type metadata accessor for PBTestFlowData(0);
  sub_251AC2AD0(&qword_27F4795F0, type metadata accessor for PBTestFlowData);
  return sub_251C70564();
}

uint64_t sub_251AC221C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_251C70674(), !v1))
  {
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_14;
      }

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 == v10)
    {
      goto LABEL_14;
    }

LABEL_13:
    result = sub_251C70624();
    if (v1)
    {
      return result;
    }

LABEL_14:
    v11 = *(v0 + 32);
    v12 = *(v0 + 40);
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_23;
      }

      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
    }

    else
    {
      if (!v13)
      {
        if ((v12 & 0xFF000000000000) == 0)
        {
          goto LABEL_23;
        }

LABEL_22:
        result = sub_251C70624();
        if (v1)
        {
          return result;
        }

        goto LABEL_23;
      }

      v14 = v11;
      v15 = v11 >> 32;
    }

    if (v14 != v15)
    {
      goto LABEL_22;
    }

LABEL_23:
    v16 = *(v0 + 56);
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = *(v0 + 48) & 0xFFFFFFFFFFFFLL;
    }

    if (!v17 || (result = sub_251C70674(), !v1))
    {
      v18 = *(v0 + 72);
      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = *(v0 + 64) & 0xFFFFFFFFFFFFLL;
      }

      if (!v19 || (result = sub_251C70674(), !v1))
      {
        v20 = *(v0 + 88);
        v21 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) == 0)
        {
          v21 = *(v0 + 80) & 0xFFFFFFFFFFFFLL;
        }

        if (!v21 || (result = sub_251C70674(), !v1))
        {
          if (!*(v0 + 96) || (result = sub_251C70644(), !v1))
          {
            v22 = *(v0 + 112);
            v23 = HIBYTE(v22) & 0xF;
            if ((v22 & 0x2000000000000000) == 0)
            {
              v23 = *(v0 + 104) & 0xFFFFFFFFFFFFLL;
            }

            if (!v23 || (result = sub_251C70674(), !v1))
            {
              v24 = *(v0 + 128);
              v25 = HIBYTE(v24) & 0xF;
              if ((v24 & 0x2000000000000000) == 0)
              {
                v25 = *(v0 + 120) & 0xFFFFFFFFFFFFLL;
              }

              if (!v25 || (result = sub_251C70674(), !v1))
              {
                result = sub_251AC2488(v0);
                if (!v1)
                {
                  v26 = v0 + *(type metadata accessor for PBLookupInfo(0) + 52);
                  return sub_251C70394();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_251AC2488(uint64_t a1)
{
  sub_251AC2DC8(0, &qword_27F479618, type metadata accessor for PBTestFlowData, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for PBTestFlowData(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBLookupInfo(0);
  sub_251AC2E2C(a1 + *(v11 + 56), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_251AC2EC0(v5);
  }

  sub_251AC2F4C(v5, v10);
  sub_251AC2AD0(&qword_27F4795F0, type metadata accessor for PBTestFlowData);
  sub_251C706A4();
  return sub_251AC352C(v10, type metadata accessor for PBTestFlowData);
}

uint64_t sub_251AC2690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_251C745D0;
  *(a2 + 32) = xmmword_251C745D0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0xE000000000000000;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0xE000000000000000;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0xE000000000000000;
  v4 = a2 + *(a1 + 52);
  sub_251C703A4();
  v5 = *(a1 + 56);
  v6 = type metadata accessor for PBTestFlowData(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_251AC2758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251AC27CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_251AC2840(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t sub_251AC2894(uint64_t a1, uint64_t a2)
{
  v4 = sub_251AC2AD0(&qword_27F479610, type metadata accessor for PBLookupInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251AC2934(uint64_t a1)
{
  v2 = sub_251AC2AD0(&qword_27F4795D0, type metadata accessor for PBLookupInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251AC29A0()
{
  sub_251AC2AD0(&qword_27F4795D0, type metadata accessor for PBLookupInfo);

  return sub_251C705C4();
}

uint64_t sub_251AC2AD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251AC2CE8(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for PBTestFlowData(0) + 24);
  sub_251C703B4();
  sub_251AC2AD0(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

void sub_251AC2DC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_251AC2E2C(uint64_t a1, uint64_t a2)
{
  sub_251AC2DC8(0, &qword_27F479618, type metadata accessor for PBTestFlowData, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AC2EC0(uint64_t a1)
{
  sub_251AC2DC8(0, &qword_27F479618, type metadata accessor for PBTestFlowData, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251AC2F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBTestFlowData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AC2FB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBTestFlowData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251AC2DC8(0, &qword_27F479618, type metadata accessor for PBTestFlowData, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v27 - v11);
  sub_251AC3498();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_251C719D4() & 1) == 0 || (sub_251A9D1F0(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0 || (sub_251A9D1F0(*(a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40)) & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88)) && (sub_251C719D4() & 1) == 0 || *(a1 + 96) != *(a2 + 96) || (*(a1 + 104) != *(a2 + 104) || *(a1 + 112) != *(a2 + 112)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 120) != *(a2 + 120) || *(a1 + 128) != *(a2 + 128)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_28;
  }

  v18 = type metadata accessor for PBLookupInfo(0);
  v19 = *(v18 + 56);
  v20 = *(v14 + 48);
  sub_251AC2E2C(a1 + v19, v17);
  sub_251AC2E2C(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_251AC2EC0(v17);
LABEL_37:
      v26 = *(v18 + 52);
      sub_251C703B4();
      sub_251AC2AD0(&qword_27F478F98, MEMORY[0x277D216C8]);
      v22 = sub_251C70ED4();
      return v22 & 1;
    }

    goto LABEL_27;
  }

  sub_251AC2E2C(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    sub_251AC352C(v12, type metadata accessor for PBTestFlowData);
LABEL_27:
    sub_251AC352C(v17, sub_251AC3498);
    goto LABEL_28;
  }

  sub_251AC2F4C(&v17[v20], v8);
  if (*v12 == *v8 && v12[1] == v8[1] || (sub_251C719D4()) && (v12[2] == v8[2] && v12[3] == v8[3] || (sub_251C719D4()))
  {
    v24 = *(v4 + 24);
    sub_251C703B4();
    sub_251AC2AD0(&qword_27F478F98, MEMORY[0x277D216C8]);
    v25 = sub_251C70ED4();
    sub_251AC352C(v8, type metadata accessor for PBTestFlowData);
    sub_251AC352C(v12, type metadata accessor for PBTestFlowData);
    sub_251AC2EC0(v17);
    if (v25)
    {
      goto LABEL_37;
    }
  }

  else
  {
    sub_251AC352C(v8, type metadata accessor for PBTestFlowData);
    sub_251AC352C(v12, type metadata accessor for PBTestFlowData);
    sub_251AC2EC0(v17);
  }

LABEL_28:
  v22 = 0;
  return v22 & 1;
}

void sub_251AC3498()
{
  if (!qword_27F479620)
  {
    sub_251AC2DC8(255, &qword_27F479618, type metadata accessor for PBTestFlowData, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479620);
    }
  }
}

uint64_t sub_251AC352C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251AC35B4()
{
  result = sub_251C703B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251AC3658()
{
  sub_251C703B4();
  if (v0 <= 0x3F)
  {
    sub_251AC2DC8(319, &qword_27F479618, type metadata accessor for PBTestFlowData, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_251AC3744(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v14 = MEMORY[0x277D84F90];
  if (*a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v13 = a2;
    v5 = 0;
    a2 = &off_2796E0000;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x25308D460](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((sub_251C71464() & 1) != 0 && (v9 = [v7 clinicalSharingStatus], v10 = objc_msgSend(v9, sel_userStatus), v9, v10))
      {
        sub_251C71734();
        v11 = *(v14 + 16);
        sub_251C71774();
        sub_251C71784();
        sub_251C71744();
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        a2 = v13;
        v12 = v14;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_19:
  *a2 = v12;
}

uint64_t sub_251AC38B8(uint64_t a1, void *a2)
{
  v4 = sub_251C70074();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v34 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v31 - v8;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v10 = sub_251C70764();
  __swift_project_value_buffer(v10, qword_2813E8130);
  v33 = *(v5 + 16);
  v33(v9, a1, v4);
  v11 = sub_251C70744();
  v12 = sub_251C713F4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v32 = a2;
    v14 = v13;
    v31[0] = swift_slowAlloc();
    v35 = v31[0];
    *v14 = 136315138;
    sub_251AC5EF4(&qword_27F479418, MEMORY[0x277CC95F0]);
    v15 = sub_251C719A4();
    v31[1] = v6;
    v16 = a1;
    v18 = v17;
    (*(v5 + 8))(v9, v4);
    v19 = sub_251B10780(v15, v18, &v35);
    a1 = v16;

    *(v14 + 4) = v19;
    _os_log_impl(&dword_251A6C000, v11, v12, "ClinicalSharingAccountStore: refreshing access token for %s", v14, 0xCu);
    v20 = v31[0];
    __swift_destroy_boxed_opaque_existential_1(v31[0]);
    MEMORY[0x25308E2B0](v20, -1, -1);
    v21 = v14;
    a2 = v32;
    MEMORY[0x25308E2B0](v21, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  v22 = v34;
  v33(v34, a1, v4);
  v23 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  (*(v5 + 32))(v24 + v23, v22, v4);
  sub_251AC5A44(0, &qword_2813E2020);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = a2;
  v35 = sub_251C70A64();
  sub_251AC5AAC(&qword_2813E2028, &qword_2813E2020);
  v29 = sub_251C70A94();

  return v29;
}

uint64_t sub_251AC3C64(unint64_t a1, void *a2)
{
  sub_251AC5AFC();
  v29 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AC5C14();
  v31 = v9;
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AC5E58();
  v32 = v13;
  v30 = *(v13 - 8);
  v14 = *(v30 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v17 = sub_251C70764();
  __swift_project_value_buffer(v17, qword_2813E8130);

  v18 = sub_251C70744();
  v19 = sub_251C713F4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    if (a1 >> 62)
    {
      v21 = sub_251C717F4();
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v20 + 4) = v21;

    _os_log_impl(&dword_251A6C000, v18, v19, "ClinicalSharingAccountStore: refreshing connection info for %ld accounts", v20, 0xCu);
    MEMORY[0x25308E2B0](v20, -1, -1);
  }

  else
  {
  }

  v33 = a1;
  sub_251AC5BAC();
  sub_251AC5EF4(&qword_2813E1E28, sub_251AC5BAC);
  sub_251C710D4();
  *(swift_allocObject() + 16) = a2;
  v22 = a2;
  sub_251C70964();
  sub_251AC5FEC(0, &qword_2813E1FE0, sub_251AC5D0C);
  sub_251AC5EF4(&qword_2813E2238, sub_251AC5AFC);
  sub_251AC6060(&qword_2813E1FE8, &qword_2813E1FE0, sub_251AC5D0C);
  v23 = v29;
  sub_251C70BD4();

  (*(v5 + 8))(v8, v23);
  sub_251AC5EF4(&qword_2813E2290, sub_251AC5C14);
  v24 = v31;
  sub_251C70B64();
  (*(v28 + 8))(v12, v24);
  sub_251AC5EF4(&qword_2813E2450, sub_251AC5E58);
  v25 = v32;
  v26 = sub_251C70A94();
  (*(v30 + 8))(v16, v25);
  return v26;
}

uint64_t sub_251AC4148(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v48 = a5;
  v49 = a2;
  v50 = a3;
  v51 = a4;
  v45 = a1;
  v52 = sub_251C70074();
  v5 = *(v52 - 8);
  v44 = *(v5 + 64);
  MEMORY[0x28223BE20](v52);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ABCCD4(0);
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v41 = &v40 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v40 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  v19 = sub_251C70014();
  v20 = *(*(v19 - 8) + 56);
  v47 = v18;
  v20(v18, 1, 1, v19);
  v46 = v16;
  v20(v16, 1, 1, v19);
  (*(v5 + 16))(v7, v45, v52);
  sub_251AC553C(v18, v13);
  sub_251AC553C(v16, &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v22 = *(v43 + 80);
  v23 = (v44 + v22 + v21) & ~v22;
  v24 = (v9 + v22 + v23) & ~v22;
  v25 = (v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v48;
  *(v27 + 16) = v48;
  (*(v5 + 32))(v27 + v21, v7, v52);
  sub_251AC55A0(v41, v27 + v23);
  sub_251AC55A0(v42, v27 + v24);
  *(v27 + v25) = 0;
  v30 = v49;
  v29 = v50;
  *(v27 + v26) = v49;
  v31 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
  v32 = v51;
  *v31 = v29;
  v31[1] = v32;
  sub_251AC5A44(0, &qword_2813E1FF0);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();

  v36 = v28;
  v37 = v30;
  v53 = sub_251C70A64();
  sub_251AC5AAC(&qword_2813E1FF8, &qword_2813E1FF0);
  v38 = sub_251C70A94();
  sub_251AC5608(v46);
  sub_251AC5608(v47);

  return v38;
}

uint64_t sub_251AC44F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v100 = a4;
  sub_251ABCCD4(0);
  v91 = *(v7 - 8);
  v8 = *(v91 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v95 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v97 = &v79 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v90 = &v79 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v88 = &v79 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v79 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v79 - v19;
  v21 = sub_251C70074();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v99 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v79 - v26;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v28 = sub_251C70764();
  __swift_project_value_buffer(v28, qword_2813E8130);
  v92 = *(v22 + 16);
  v93 = v22 + 16;
  v92(v27, a1, v21);
  sub_251AC553C(a2, v20);
  v96 = a3;
  sub_251AC553C(a3, v18);
  v29 = sub_251C70744();
  v89 = sub_251C713F4();
  v30 = os_log_type_enabled(v29, v89);
  v98 = v21;
  if (v30)
  {
    v83 = v29;
    v84 = v18;
    v86 = a1;
    v87 = a2;
    v31 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v101[0] = v82;
    *v31 = 136315650;
    sub_251AC5EF4(&qword_27F479418, MEMORY[0x277CC95F0]);
    v32 = sub_251C719A4();
    v34 = v33;
    v85 = v22;
    (*(v22 + 8))(v27, v21);
    v35 = sub_251B10780(v32, v34, v101);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    v36 = v88;
    sub_251AC553C(v20, v88);
    v37 = sub_251C70014();
    v81 = *(v37 - 8);
    v38 = v37;
    v80 = *(v81 + 48);
    if (v80(v36, 1) == 1)
    {
      sub_251AC5608(v36);
      v39 = 0xE500000000000000;
      v40 = 0x7D6C696E7BLL;
      v41 = 0x7D6C696E7BLL;
    }

    else
    {
      v40 = 0x7D6C696E7BLL;
      if (qword_27F478930 != -1)
      {
        swift_once();
      }

      v45 = qword_27F4A2878;
      v46 = sub_251C6FF94();
      v47 = [v45 stringFromDate_];

      v41 = sub_251C70F14();
      v39 = v48;

      (*(v81 + 8))(v36, v38);
    }

    sub_251AC5608(v20);
    v49 = sub_251B10780(v41, v39, v101);

    *(v31 + 14) = v49;
    *(v31 + 22) = 2080;
    v50 = v84;
    v51 = v90;
    sub_251AC553C(v84, v90);
    if ((v80)(v51, 1, v38) == 1)
    {
      sub_251AC5608(v51);
      v52 = 0xE500000000000000;
      v43 = v91;
      v42 = v85;
      a1 = v86;
    }

    else
    {
      v43 = v91;
      v42 = v85;
      if (qword_27F478930 != -1)
      {
        swift_once();
      }

      v53 = qword_27F4A2878;
      v54 = sub_251C6FF94();
      v55 = [v53 stringFromDate_];

      v40 = sub_251C70F14();
      v52 = v56;

      (*(v81 + 8))(v51, v38);
      a1 = v86;
    }

    sub_251AC5608(v50);
    v57 = sub_251B10780(v40, v52, v101);

    *(v31 + 24) = v57;
    v58 = v83;
    _os_log_impl(&dword_251A6C000, v83, v89, "ClinicalSharingAccountStore: updating clinical sharing dates for account %s. First shared: %s, last shared: %s", v31, 0x20u);
    v59 = v82;
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v59, -1, -1);
    MEMORY[0x25308E2B0](v31, -1, -1);

    v44 = v96;
    a2 = v87;
    v21 = v98;
  }

  else
  {

    sub_251AC5608(v18);
    sub_251AC5608(v20);
    (*(v22 + 8))(v27, v21);
    v42 = v22;
    v43 = v91;
    v44 = v96;
  }

  v96 = sub_251C712A4();
  v92(v99, a1, v21);
  v60 = v97;
  sub_251AC553C(a2, v97);
  v61 = v95;
  sub_251AC553C(v44, v95);
  v62 = (*(v42 + 80) + 24) & ~*(v42 + 80);
  v63 = *(v43 + 80);
  v64 = (v94 + v63 + v62) & ~v63;
  v65 = (v8 + v63 + v64) & ~v63;
  v66 = (v8 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  v69 = v99;
  *(v68 + 16) = v100;
  (*(v42 + 32))(v68 + v62, v69, v98);
  sub_251AC55A0(v60, v68 + v64);
  sub_251AC55A0(v61, v68 + v65);
  *(v68 + v66) = 0;
  v70 = v96;
  *(v68 + v67) = v96;
  v71 = (v68 + ((v67 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_251AC5A44(0, &qword_2813E1FF0);
  *v71 = 0;
  v71[1] = 0;
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  swift_allocObject();
  v75 = v100;
  v76 = v70;
  v101[0] = sub_251C70A64();
  sub_251AC5AAC(&qword_2813E1FF8, &qword_2813E1FF0);
  v77 = sub_251C70A94();

  return v77;
}

uint64_t sub_251AC4D54(uint64_t a1, void *a2, void *a3)
{
  v75 = a3;
  sub_251ABCCD4(0);
  v68 = *(v5 - 8);
  v6 = *(v68 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v72 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v67 = &v59 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v74 = &v59 - v11;
  MEMORY[0x28223BE20](v10);
  v73 = &v59 - v12;
  v13 = sub_251C70074();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v64 = v17;
  v65 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - v18;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v20 = sub_251C70764();
  __swift_project_value_buffer(v20, qword_2813E8130);
  v21 = *(v14 + 16);
  v66 = a1;
  v63 = v21;
  v21(v19, a1, v13);
  v22 = a2;
  v23 = sub_251C70744();
  v24 = sub_251C713F4();
  v70 = v22;

  v25 = os_log_type_enabled(v23, v24);
  v69 = a2;
  v71 = v13;
  if (v25)
  {
    v61 = v24;
    v26 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v76 = v60;
    *v26 = 136315394;
    sub_251AC5EF4(&qword_27F479418, MEMORY[0x277CC95F0]);
    v27 = sub_251C719A4();
    v29 = v28;
    v62 = v14;
    (*(v14 + 8))(v19, v13);
    v30 = sub_251B10780(v27, v29, &v76);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    if (a2)
    {
      [v70 integerValue];
      v31 = HKClinicalSharingUserStatusToString();
      v32 = sub_251C70F14();
      v34 = v33;
    }

    else
    {
      v34 = 0xE500000000000000;
      v32 = 0x7D6C696E7BLL;
    }

    v36 = sub_251B10780(v32, v34, &v76);

    *(v26 + 14) = v36;
    _os_log_impl(&dword_251A6C000, v23, v61, "ClinicalSharingAccountStore: updating clinical sharing user status for account %s: %s", v26, 0x16u);
    v37 = v60;
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v37, -1, -1);
    MEMORY[0x25308E2B0](v26, -1, -1);

    v35 = v71;
    v14 = v62;
  }

  else
  {

    (*(v14 + 8))(v19, v13);
    v35 = v13;
  }

  v38 = sub_251C70014();
  v39 = *(*(v38 - 8) + 56);
  v40 = v73;
  v39(v73, 1, 1, v38);
  v41 = v74;
  v39(v74, 1, 1, v38);
  v42 = v65;
  v63(v65, v66, v35);
  v43 = v67;
  sub_251AC553C(v40, v67);
  sub_251AC553C(v41, v72);
  v44 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v45 = *(v68 + 80);
  v46 = (v64 + v45 + v44) & ~v45;
  v47 = (v6 + v45 + v46) & ~v45;
  v48 = (v6 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v75;
  (*(v14 + 32))(v50 + v44, v42, v71);
  sub_251AC55A0(v43, v50 + v46);
  sub_251AC55A0(v72, v50 + v47);
  *(v50 + v48) = v69;
  *(v50 + v49) = 0;
  v51 = (v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_251AC5A44(0, &qword_2813E1FF0);
  *v51 = 0;
  v51[1] = 0;
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  v55 = v70;
  v56 = v75;
  v76 = sub_251C70A64();
  sub_251AC5AAC(&qword_2813E1FF8, &qword_2813E1FF0);
  v57 = sub_251C70A94();

  sub_251AC5608(v74);
  sub_251AC5608(v73);
  return v57;
}

uint64_t sub_251AC5394()
{
  sub_251AC5F4C();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  *(swift_allocObject() + 16) = v7;
  sub_251AC5FEC(0, &qword_2813E2000, sub_251AC5BAC);
  sub_251AC6060(&qword_2813E2008, &qword_2813E2000, sub_251AC5BAC);
  v8 = v7;
  sub_251C70A74();
  sub_251AC5EF4(&qword_2813E1FD8, sub_251AC5F4C);
  v9 = sub_251C70A94();
  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t sub_251AC553C(uint64_t a1, uint64_t a2)
{
  sub_251ABCCD4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AC55A0(uint64_t a1, uint64_t a2)
{
  sub_251ABCCD4(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AC5608(uint64_t a1)
{
  sub_251ABCCD4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_251C70074();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  sub_251ABCCD4(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = (v4 + v5 + v7) & ~v7;
  v10 = (v8 + v7 + v9) & ~v7;

  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_251C70014();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v0 + v9, 1, v11))
  {
    (*(v12 + 8))(v0 + v9, v11);
  }

  if (!v13(v0 + v10, 1, v11))
  {
    (*(v12 + 8))(v0 + v10, v11);
  }

  v14 = (v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;

  v17 = *(v0 + v16 + 8);

  return MEMORY[0x2821FE8E8](v0, v16 + 16, v3 | v7 | 7);
}

void sub_251AC5880(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_251C70074() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_251ABCCD4(0);
  v9 = *(*(v8 - 8) + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v11 = *(*(v8 - 8) + 64);
  v12 = (v11 + v9 + v10) & ~v9;
  v13 = (v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_251BCB1E8(a1, a2, *(v2 + 16), v2 + v6, v2 + v10, v2 + v12, *(v2 + v13), *(v2 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_251AC59C0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_251C70074() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_251C3B214(a1, a2, v6, v7);
}

void sub_251AC5A44(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_251A82284();
    v3 = sub_251C70A54();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_251AC5AAC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_251AC5A44(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251AC5AFC()
{
  if (!qword_2813E2230)
  {
    sub_251AC5BAC();
    sub_251AC5EF4(&qword_2813E1E28, sub_251AC5BAC);
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2230);
    }
  }
}

void sub_251AC5BAC()
{
  if (!qword_2813E1E30)
  {
    sub_251A8223C(255, &qword_2813E1D98, 0x277D123D8);
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1E30);
    }
  }
}

void sub_251AC5C14()
{
  if (!qword_2813E2288)
  {
    sub_251AC5FEC(255, &qword_2813E1FE0, sub_251AC5D0C);
    sub_251AC5D9C();
    sub_251AC6060(&qword_2813E1FE8, &qword_2813E1FE0, sub_251AC5D0C);
    sub_251AC5EF4(&qword_2813E2678, sub_251AC5D9C);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2288);
    }
  }
}

void sub_251AC5D0C()
{
  if (!qword_2813E1D90)
  {
    sub_251A8223C(255, &qword_2813E1D98, 0x277D123D8);
    sub_251A8223C(255, &qword_2813E1DB8, 0x277D12450);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813E1D90);
    }
  }
}

void sub_251AC5D9C()
{
  if (!qword_2813E2670)
  {
    sub_251AC5AFC();
    sub_251A82284();
    sub_251AC5EF4(&qword_2813E2238, sub_251AC5AFC);
    v0 = sub_251C707E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2670);
    }
  }
}

void sub_251AC5E58()
{
  if (!qword_2813E2448)
  {
    sub_251AC5C14();
    sub_251AC5EF4(&qword_2813E2290, sub_251AC5C14);
    v0 = sub_251C708C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2448);
    }
  }
}

uint64_t sub_251AC5EF4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251AC5F4C()
{
  if (!qword_2813E1FD0)
  {
    sub_251AC5FEC(255, &qword_2813E2000, sub_251AC5BAC);
    sub_251AC6060(&qword_2813E2008, &qword_2813E2000, sub_251AC5BAC);
    v0 = sub_251C70A84();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1FD0);
    }
  }
}

void sub_251AC5FEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_251A82284();
    v4 = sub_251C70A54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251AC6060(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_251AC5FEC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251AC60BC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v6;
  v7[4] = a2;
  sub_251AC63E4();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  v11 = a2;
  sub_251C70A64();
  sub_251AC644C();
  v12 = sub_251C70A94();

  *a3 = v12;
  return result;
}

uint64_t sub_251AC61A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_251C6FA54();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  sub_251C6FA44();
  sub_251AC64E4();
  v14 = sub_251C6FA34();
  v16 = v15;

  v17 = sub_251C6FEC4();
  v18 = sub_251C70EE4();
  v19 = swift_allocObject();
  v19[2] = sub_251AC64A4;
  v19[3] = v10;
  v19[4] = a3;
  v19[5] = a4;
  aBlock[4] = sub_251AC6600;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251BCB170;
  aBlock[3] = &block_descriptor_0;
  v20 = _Block_copy(aBlock);

  [a5 setData:v17 forKey:v18 completion:v20];
  _Block_release(v20);

  return sub_251A83028(v14, v16);
}

void sub_251AC63E4()
{
  if (!qword_2813E2040)
  {
    sub_251A82284();
    v0 = sub_251C70A54();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2040);
    }
  }
}

unint64_t sub_251AC644C()
{
  result = qword_2813E2048;
  if (!qword_2813E2048)
  {
    sub_251AC63E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2048);
  }

  return result;
}

uint64_t sub_251AC64A4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3 & 1;
  return v4(v7);
}

unint64_t sub_251AC64E4()
{
  result = qword_2813E3790;
  if (!qword_2813E3790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E3790);
  }

  return result;
}

void sub_251AC6538(char a1, id a2, void (*a3)(id, uint64_t, uint64_t), uint64_t a4, void *a5, uint64_t a6)
{
  if (a1)
  {
    a3(a5, a6, 0);
  }

  else
  {
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      sub_251AC6624();
      v7 = swift_allocError();
      v9 = v8;
      a2 = 0;
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
    }

    v10 = a2;
    a3(v7, 0, 1);
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251AC6624()
{
  result = qword_27F479648;
  if (!qword_27F479648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479648);
  }

  return result;
}

void __swiftcall HKFHIRCredential.asAuthorizationHeader()(HealthRecordsDaemon::HTTPHeader_optional *__return_ptr retstr)
{
  v3 = [v1 accessToken];
  if (v3)
  {
    v4 = v3;
    v5 = sub_251C70F14();
    v7 = v6;

    MEMORY[0x25308CDA0](v5, v7);

    retstr->value.name = xmmword_251C75B90;
    retstr->value.value._countAndFlagsBits = 0x20726572616542;
    retstr->value.value._object = 0xE700000000000000;
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v8 = sub_251C70764();
    __swift_project_value_buffer(v8, qword_2813E8130);
    v9 = sub_251C70744();
    v10 = sub_251C713D4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_251A6C000, v9, v10, "HKFHIRCredential.asAuthorizationHeader: No accessToken", v11, 2u);
      MEMORY[0x25308E2B0](v11, -1, -1);
    }

    retstr->value.name = 0u;
    retstr->value.value = 0u;
  }
}

HealthRecordsDaemon::HTTPHeader __swiftcall HTTPHeader.init(name:value:)(Swift::String name, Swift::String value)
{
  *v2 = name;
  v2[1] = value;
  result.value = value;
  result.name = name;
  return result;
}

uint64_t HTTPHeader.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HTTPHeader.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t static HTTPHeader.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_251C719D4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_251C719D4();
    }
  }

  return result;
}

uint64_t HTTPHeader.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_251C70FB4();

  return sub_251C70FB4();
}

uint64_t HTTPHeader.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_251C71AA4();
  sub_251C70FB4();
  sub_251C70FB4();
  return sub_251C71AD4();
}

uint64_t sub_251AC69A4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_251C719D4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_251C719D4();
    }
  }

  return result;
}

uint64_t sub_251AC6A48()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_251C71AA4();
  sub_251C70FB4();
  sub_251C70FB4();
  return sub_251C71AD4();
}

uint64_t sub_251AC6AB0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_251C70FB4();

  return sub_251C70FB4();
}

uint64_t sub_251AC6B00()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_251C71AA4();
  sub_251C70FB4();
  sub_251C70FB4();
  return sub_251C71AD4();
}

Swift::Void __swiftcall URLRequest.add(header:)(HealthRecordsDaemon::HTTPHeader header)
{
  header.value._countAndFlagsBits = *header.name._countAndFlagsBits;
  header.value._object = *(header.name._countAndFlagsBits + 8);
  v2 = *(header.name._countAndFlagsBits + 16);
  v1 = *(header.name._countAndFlagsBits + 24);
  sub_251C6F974();
}

unint64_t sub_251AC6B78()
{
  result = qword_27F479650;
  if (!qword_27F479650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479650);
  }

  return result;
}

uint64_t sub_251AC6BDC(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_251AC6C38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for PBTimeSeries.Value.OneOf_AdditionalData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_251AC6D14(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_251AC6D70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncSuccessMetricField(unsigned __int8 *a1, unsigned int a2)
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

void sub_251AC6E98(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v3 = sub_251C6FD74();
    v4 = [v3 domain];

    v5 = sub_251C70F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
}

uint64_t sub_251AC6F20@<X0>(uint64_t *a1@<X8>)
{
  result = *v1;
  if (*v1)
  {
    swift_getErrorValue();
    result = sub_251C71A44();
  }

  else
  {
    v4 = 0;
  }

  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_251AC6F90(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if ((v3 & 1) == 0)
  {
    if (v2 >= 18)
    {
      if (v2 > 0x13)
      {
        if (v2 <= 0x50)
        {
          v2 = *v1 - *v1 % 0xAu;
        }

        else
        {
          v2 = 81;
        }
      }

      else
      {
        v2 = 20;
      }
    }

    else
    {
      v2 = 17;
    }
  }

  *a1 = v2;
  *(a1 + 8) = v3;
}

uint64_t sub_251AC7024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_251ACCFD8(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_251AC8C58(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_251ACDDFC();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_251AD1264(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

_OWORD *sub_251AC712C(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_251ACFB54(a1, v18);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_251ACD750(v18, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v16;
  }

  else
  {
    v8 = MEMORY[0x277D84F70];
    sub_251ACDF84(a1, &qword_2813E1BA0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_251ACFBB8);
    v9 = *v2;
    v10 = sub_251AC8DE8(a2);
    if (v11)
    {
      v12 = v10;
      v13 = *v3;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v17 = *v3;
      if (!v14)
      {
        sub_251ACEF5C();
        v15 = v17;
      }

      sub_251ACFB54((*(v15 + 56) + 32 * v12), v18);
      sub_251AD171C(v12, v15);
      *v3 = v15;
    }

    else
    {
      memset(v18, 0, sizeof(v18));
    }

    return sub_251ACDF84(v18, &qword_2813E1BA0, v8 + 8, MEMORY[0x277D83D88], sub_251ACFBB8);
  }

  return result;
}

uint64_t static ContentVariables.asValueMap(substituting:)(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x277D84F98];
  while (1)
  {
    v7 = byte_2863F2EB0[v2 + 32];
    if (v7 > 5)
    {
      if (byte_2863F2EB0[v2 + 32] > 8u)
      {
        if (v7 == 9)
        {
          v9 = 0x656372756F736572;
          v15 = 0xEA00000000004449;
          if (!*(a1 + 16))
          {
            goto LABEL_45;
          }

          goto LABEL_26;
        }

        v8 = v7 == 10;
        if (v7 == 10)
        {
          v9 = 0x44494C44746F6F72;
        }

        else
        {
          v9 = 0x6574617473;
        }

        v10 = 0xE800000000000000;
        v11 = 0xE500000000000000;
        goto LABEL_41;
      }

      if (v7 == 6)
      {
        v9 = 0xD000000000000015;
        v15 = 0x8000000251C89BD0;
        if (!*(a1 + 16))
        {
          goto LABEL_45;
        }

        goto LABEL_26;
      }

      v12 = v7 == 7;
      v9 = v7 == 7 ? 0x746E6569746170 : 0x5468736572666572;
      v13 = 0xEC0000006E656B6FLL;
      v14 = 0xE700000000000000;
    }

    else
    {
      if (byte_2863F2EB0[v2 + 32] <= 2u)
      {
        if (!byte_2863F2EB0[v2 + 32])
        {
          v15 = 0xE800000000000000;
          v9 = 0x4449746E65696C63;
          if (!*(a1 + 16))
          {
            goto LABEL_45;
          }

          goto LABEL_26;
        }

        v8 = v7 == 1;
        if (v7 == 1)
        {
          v9 = 0x6553746E65696C63;
        }

        else
        {
          v9 = 1701080931;
        }

        v10 = 0xEC00000074657263;
        v11 = 0xE400000000000000;
LABEL_41:
        if (v8)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (!*(a1 + 16))
        {
          goto LABEL_45;
        }

        goto LABEL_26;
      }

      if (v7 == 3)
      {
        v9 = 0xD000000000000015;
        v15 = 0x8000000251C89B90;
        if (!*(a1 + 16))
        {
          goto LABEL_45;
        }

        goto LABEL_26;
      }

      v12 = v7 == 4;
      v9 = v7 == 4 ? 1734431845 : 0xD000000000000011;
      v13 = 0x8000000251C89BB0;
      v14 = 0xE400000000000000;
    }

    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    if (!*(a1 + 16))
    {
LABEL_45:

      goto LABEL_46;
    }

LABEL_26:
    v16 = sub_251AC8C58(v9, v15);
    v18 = v17;

    if (v18)
    {
      v19 = (*(a1 + 56) + 16 * v16);
      v21 = *v19;
      v20 = v19[1];

      goto LABEL_28;
    }

LABEL_46:
    if (v7 > 5)
    {
      if (v7 > 8)
      {
        if (v7 == 9)
        {
          v21 = 0x656372756F736572;
          v20 = 0xEA00000000004449;
        }

        else if (v7 == 10)
        {
          v20 = 0xE800000000000000;
          v21 = 0x44494C44746F6F72;
        }

        else
        {
          v20 = 0xE500000000000000;
          v21 = 0x6574617473;
        }
      }

      else if (v7 == 6)
      {
        v21 = 0xD000000000000015;
        v20 = 0x8000000251C89BD0;
      }

      else if (v7 == 7)
      {
        v20 = 0xE700000000000000;
        v21 = 0x746E6569746170;
      }

      else
      {
        v21 = 0x5468736572666572;
        v20 = 0xEC0000006E656B6FLL;
      }
    }

    else if (v7 > 2)
    {
      if (v7 == 3)
      {
        v21 = 0xD000000000000015;
        v20 = 0x8000000251C89B90;
      }

      else if (v7 == 4)
      {
        v20 = 0xE400000000000000;
        v21 = 1734431845;
      }

      else
      {
        v21 = 0xD000000000000011;
        v20 = 0x8000000251C89BB0;
      }
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        v21 = 0x6553746E65696C63;
        v20 = 0xEC00000074657263;
      }

      else
      {
        v20 = 0xE400000000000000;
        v21 = 1701080931;
      }
    }

    else
    {
      v20 = 0xE800000000000000;
      v21 = 0x4449746E65696C63;
    }

LABEL_28:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v3;
    v23 = sub_251AC8C58(v9, v15);
    v25 = v3[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (v3[3] < v28)
    {
      sub_251ACA35C(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_251AC8C58(v9, v15);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_82;
      }

LABEL_33:
      if (v29)
      {
        goto LABEL_2;
      }

      goto LABEL_34;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_33;
    }

    v35 = v23;
    sub_251ACDDFC();
    v23 = v35;
    if (v29)
    {
LABEL_2:
      v4 = v23;

      v3 = v37;
      v5 = (v37[7] + 16 * v4);
      v6 = v5[1];
      *v5 = v21;
      v5[1] = v20;

      goto LABEL_3;
    }

LABEL_34:
    v3 = v37;
    v37[(v23 >> 6) + 8] |= 1 << v23;
    v31 = (v37[6] + 16 * v23);
    *v31 = v9;
    v31[1] = v15;
    v32 = (v37[7] + 16 * v23);
    *v32 = v21;
    v32[1] = v20;
    v33 = v37[2];
    v27 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v27)
    {
      goto LABEL_81;
    }

    v37[2] = v34;
LABEL_3:
    if (++v2 == 12)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  result = sub_251C71A14();
  __break(1u);
  return result;
}

{
  v2 = 0;
  v3 = MEMORY[0x277D84F98];
  while (1)
  {
    v7 = byte_2863F2EB0[v2 + 32];
    if (v7 > 5)
    {
      if (byte_2863F2EB0[v2 + 32] <= 8u)
      {
        if (v7 == 6)
        {
          v9 = 0xD000000000000015;
          v12 = 0x8000000251C89BD0;
          if (!*(a1 + 16))
          {
            goto LABEL_53;
          }
        }

        else if (v7 == 7)
        {
          v12 = 0xE700000000000000;
          v9 = 0x746E6569746170;
          if (!*(a1 + 16))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v9 = 0x5468736572666572;
          v12 = 0xEC0000006E656B6FLL;
          if (!*(a1 + 16))
          {
            goto LABEL_53;
          }
        }

        goto LABEL_34;
      }

      if (v7 == 9)
      {
        v9 = 0x656372756F736572;
        v12 = 0xEA00000000004449;
        if (!*(a1 + 16))
        {
          goto LABEL_53;
        }

        goto LABEL_34;
      }

      v8 = v7 == 10;
      v9 = v7 == 10 ? 0x44494C44746F6F72 : 0x6574617473;
      v10 = 0xE800000000000000;
      v11 = 0xE500000000000000;
    }

    else
    {
      if (byte_2863F2EB0[v2 + 32] > 2u)
      {
        if (v7 == 3)
        {
          v9 = 0xD000000000000015;
          v12 = 0x8000000251C89B90;
          if (!*(a1 + 16))
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v7 == 4)
          {
            v9 = 1734431845;
          }

          else
          {
            v9 = 0xD000000000000011;
          }

          if (v7 == 4)
          {
            v12 = 0xE400000000000000;
          }

          else
          {
            v12 = 0x8000000251C89BB0;
          }

          if (!*(a1 + 16))
          {
            goto LABEL_53;
          }
        }

        goto LABEL_34;
      }

      if (!byte_2863F2EB0[v2 + 32])
      {
        v12 = 0xE800000000000000;
        v9 = 0x4449746E65696C63;
        if (!*(a1 + 16))
        {
          goto LABEL_53;
        }

        goto LABEL_34;
      }

      v8 = v7 == 1;
      v9 = v7 == 1 ? 0x6553746E65696C63 : 1701080931;
      v10 = 0xEC00000074657263;
      v11 = 0xE400000000000000;
    }

    if (v8)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_53;
    }

LABEL_34:
    v13 = sub_251AC8DE8(byte_2863F2EB0[v2 + 32]);
    if (v14)
    {
      v15 = (*(a1 + 56) + 16 * v13);
      v17 = *v15;
      v16 = v15[1];

      goto LABEL_36;
    }

LABEL_53:
    if (v7 > 5)
    {
      if (v7 > 8)
      {
        if (v7 == 9)
        {
          v17 = 0x656372756F736572;
          v16 = 0xEA00000000004449;
        }

        else if (v7 == 10)
        {
          v16 = 0xE800000000000000;
          v17 = 0x44494C44746F6F72;
        }

        else
        {
          v16 = 0xE500000000000000;
          v17 = 0x6574617473;
        }
      }

      else if (v7 == 6)
      {
        v17 = 0xD000000000000015;
        v16 = 0x8000000251C89BD0;
      }

      else if (v7 == 7)
      {
        v16 = 0xE700000000000000;
        v17 = 0x746E6569746170;
      }

      else
      {
        v17 = 0x5468736572666572;
        v16 = 0xEC0000006E656B6FLL;
      }
    }

    else if (v7 > 2)
    {
      if (v7 == 3)
      {
        v17 = 0xD000000000000015;
        v16 = 0x8000000251C89B90;
      }

      else if (v7 == 4)
      {
        v16 = 0xE400000000000000;
        v17 = 1734431845;
      }

      else
      {
        v17 = 0xD000000000000011;
        v16 = 0x8000000251C89BB0;
      }
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        v17 = 0x6553746E65696C63;
        v16 = 0xEC00000074657263;
      }

      else
      {
        v16 = 0xE400000000000000;
        v17 = 1701080931;
      }
    }

    else
    {
      v16 = 0xE800000000000000;
      v17 = 0x4449746E65696C63;
    }

LABEL_36:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v3;
    v19 = sub_251AC8C58(v9, v12);
    v21 = v3[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      break;
    }

    v25 = v20;
    if (v3[3] < v24)
    {
      sub_251ACA35C(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_251AC8C58(v9, v12);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_81;
      }

LABEL_41:
      if (v25)
      {
        goto LABEL_2;
      }

      goto LABEL_42;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_41;
    }

    v31 = v19;
    sub_251ACDDFC();
    v19 = v31;
    if (v25)
    {
LABEL_2:
      v4 = v19;

      v3 = v33;
      v5 = (v33[7] + 16 * v4);
      v6 = v5[1];
      *v5 = v17;
      v5[1] = v16;

      goto LABEL_3;
    }

LABEL_42:
    v3 = v33;
    v33[(v19 >> 6) + 8] |= 1 << v19;
    v27 = (v33[6] + 16 * v19);
    *v27 = v9;
    v27[1] = v12;
    v28 = (v33[7] + 16 * v19);
    *v28 = v17;
    v28[1] = v16;
    v29 = v33[2];
    v23 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v23)
    {
      goto LABEL_80;
    }

    v33[2] = v30;
LABEL_3:
    if (++v2 == 12)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  result = sub_251C71A14();
  __break(1u);
  return result;
}

unint64_t ContentVariables.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x656372756F736572;
    v8 = 0x44494C44746F6F72;
    if (v1 != 10)
    {
      v8 = 0x6574617473;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0xD000000000000015;
    v10 = 0x746E6569746170;
    if (v1 != 7)
    {
      v10 = 0x5468736572666572;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x4449746E65696C63;
    v3 = 0xD000000000000015;
    v4 = 1734431845;
    if (v1 != 4)
    {
      v4 = 0xD000000000000011;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x6553746E65696C63;
    if (v1 != 1)
    {
      v5 = 1701080931;
    }

    if (*v0)
    {
      v2 = v5;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

HealthRecordsDaemon::ContentVariables_optional __swiftcall ContentVariables.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_251C71854();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_251AC7E44(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = ContentVariables.rawValue.getter();
  v4 = v3;
  if (v2 == ContentVariables.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_251C719D4();
  }

  return v7 & 1;
}

uint64_t sub_251AC7EE0()
{
  v1 = *v0;
  sub_251C71AA4();
  ContentVariables.rawValue.getter();
  sub_251C70FB4();

  return sub_251C71AD4();
}

uint64_t sub_251AC7F48()
{
  v2 = *v0;
  ContentVariables.rawValue.getter();
  sub_251C70FB4();
}

uint64_t sub_251AC7FAC()
{
  v1 = *v0;
  sub_251C71AA4();
  ContentVariables.rawValue.getter();
  sub_251C70FB4();

  return sub_251C71AD4();
}

unint64_t sub_251AC801C@<X0>(unint64_t *a1@<X8>)
{
  result = ContentVariables.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static SchemaSubstitutions.determineSinceDate(lastFetchDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_251C701C4();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251C70094();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251C701E4();
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = *(v38 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ACE4A8(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v40 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - v20;
  v22 = sub_251C70014();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AC553C(a1, v21);
  v36 = *(v23 + 48);
  if (v36(v21, 1, v22) == 1)
  {
    sub_251ACDF84(v21, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_251ACE4A8);
    return sub_251C6FF54();
  }

  else
  {
    v35 = a2;
    v34 = *(v23 + 32);
    v34(v26, v21, v22);
    (*(v8 + 104))(v11, *MEMORY[0x277CC9830], v7);
    sub_251C700A4();
    (*(v8 + 8))(v11, v7);
    v29 = v41;
    v28 = v42;
    v30 = v37;
    (*(v41 + 104))(v37, *MEMORY[0x277CC9968], v42);
    v31 = v40;
    sub_251C70154();
    (*(v29 + 8))(v30, v28);
    (*(v38 + 8))(v15, v39);
    v32 = v36;
    if (v36(v31, 1, v22) == 1)
    {
      sub_251C6FF54();
      (*(v23 + 8))(v26, v22);
      result = v32(v31, 1, v22);
      if (result != 1)
      {
        return sub_251ACDF84(v31, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_251ACE4A8);
      }
    }

    else
    {
      (*(v23 + 8))(v26, v22);
      return (v34)(v35, v31, v22);
    }
  }

  return result;
}

uint64_t sub_251AC8590(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = MEMORY[0x277CC9578];
  v4 = MEMORY[0x277D83D88];
  sub_251ACE4A8(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - v7;
  v9 = sub_251C70014();
  v31 = *(v9 - 8);
  v10 = v31;
  v11 = *(v31 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v30 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  v16 = *(v10 + 16);
  v16(v8, a1, v9);
  v17 = *(v10 + 56);
  v17(v8, 0, 1, v9);
  static SchemaSubstitutions.determineSinceDate(lastFetchDate:)(v8, v15);
  sub_251ACDF84(v8, &qword_2813E7500, v3, v4, sub_251ACE4A8);
  v33 = 25959;
  v34 = 0xE200000000000000;
  v16(v8, v15, v9);
  v17(v8, 0, 1, v9);
  v18 = v30;
  static SchemaSubstitutions.determineSinceDate(lastFetchDate:)(v8, v30);
  sub_251ACDF84(v8, &qword_2813E7500, v3, v4, sub_251ACE4A8);
  v19 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  [v19 setFormatOptions_];
  v20 = v18;
  v21 = sub_251C6FF94();
  v22 = [v19 stringFromDate_];

  v23 = sub_251C70F14();
  v25 = v24;

  v26 = *(v31 + 8);
  v26(v20, v9);
  MEMORY[0x25308CDA0](v23, v25);

  v27 = v33;
  v26(v15, v9);
  return v27;
}

uint64_t sub_251AC88B4(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277CC9578];
  v5 = MEMORY[0x277D83D88];
  sub_251ACE4A8(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_251C70014();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  static SchemaSubstitutions.determineSinceDate(lastFetchDate:)(v9, v14);
  sub_251ACDF84(v9, &qword_2813E7500, v4, v5, sub_251ACE4A8);
  v15 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  [v15 setFormatOptions_];
  v16 = sub_251C6FF94();
  v17 = [v15 stringFromDate_];

  v18 = sub_251C70F14();
  (*(v11 + 8))(v14, v10);
  return v18;
}

unint64_t sub_251AC8AFC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_251C70074();
  v5 = MEMORY[0x277CC95F0];
  sub_251ACF63C(&qword_2813E74E0, MEMORY[0x277CC95F0]);
  v6 = sub_251C70E84();
  return sub_251AC984C(a1, v6, MEMORY[0x277CC95F0], &qword_27F4796A0, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_251AC8BD0(uint64_t a1, char a2)
{
  v4 = *(v2 + 40);
  v5 = a2 & 1;
  sub_251C71AA4();
  sub_251ABA664();
  sub_251C70E94();
  v6 = sub_251C71AD4();
  return sub_251AC9020(a1, v5, v6);
}

unint64_t sub_251AC8C58(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_251C71AA4();
  sub_251C70FB4();
  v6 = sub_251C71AD4();

  return sub_251AC9124(a1, a2, v6);
}

unint64_t sub_251AC8CD0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_251C71524();

  return sub_251AC91DC(a1, v5);
}

unint64_t sub_251AC8D14(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_251C6FAE4();
  v5 = MEMORY[0x277CC88A8];
  sub_251ACF63C(&qword_27F4793F8, MEMORY[0x277CC88A8]);
  v6 = sub_251C70E84();
  return sub_251AC984C(a1, v6, MEMORY[0x277CC88A8], &qword_27F479168, v5, MEMORY[0x277CC88C8]);
}

unint64_t sub_251AC8DE8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_251C71AA4();
  ContentVariables.rawValue.getter();
  sub_251C70FB4();

  v4 = sub_251C71AD4();

  return sub_251AC92B0(a1, v4);
}

unint64_t sub_251AC8E74(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_251C71624();

  return sub_251AC9680(a1, v5);
}

unint64_t sub_251AC8EB8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_251C70F14();
  sub_251C71AA4();
  sub_251C70FB4();
  v4 = sub_251C71AD4();

  return sub_251AC9748(a1, v4);
}

unint64_t sub_251AC8F4C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_251C70014();
  v5 = MEMORY[0x277CC9578];
  sub_251ACF63C(&qword_27F479708, MEMORY[0x277CC9578]);
  v6 = sub_251C70E84();
  return sub_251AC984C(a1, v6, MEMORY[0x277CC9578], &qword_27F479160, v5, MEMORY[0x277CC9598]);
}

unint64_t sub_251AC9020(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(*(v3 + 48) + 16 * result);
      if (a2)
      {
        if (a1 > 3)
        {
          if (a1 > 5)
          {
            if (a1 == 6)
            {
              if (v8 == 6)
              {
                return result;
              }
            }

            else if (v8 == 7)
            {
              return result;
            }
          }

          else if (a1 == 4)
          {
            if (v8 == 4)
            {
              return result;
            }
          }

          else if (v8 == 5)
          {
            return result;
          }
        }

        else if (a1 > 1)
        {
          if (a1 == 2)
          {
            if (v8 == 2)
            {
              return result;
            }
          }

          else if (v8 == 3)
          {
            return result;
          }
        }

        else if (a1)
        {
          if (v8 == 1)
          {
            return result;
          }
        }

        else if (!v8)
        {
          return result;
        }
      }

      else if (v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_251AC9124(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_251C719D4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_251AC91DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_251A8223C(0, &qword_27F479680, 0x277CCD720);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_251C71534();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_251AC92B0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 5)
      {
        if (*(*(v2 + 48) + v4) > 8u)
        {
          if (v6 == 9)
          {
            v7 = 0x656372756F736572;
            v8 = 0xEA00000000004449;
          }

          else if (v6 == 10)
          {
            v8 = 0xE800000000000000;
            v7 = 0x44494C44746F6F72;
          }

          else
          {
            v8 = 0xE500000000000000;
            v7 = 0x6574617473;
          }
        }

        else if (v6 == 6)
        {
          v7 = 0xD000000000000015;
          v8 = 0x8000000251C89BD0;
        }

        else if (v6 == 7)
        {
          v8 = 0xE700000000000000;
          v7 = 0x746E6569746170;
        }

        else
        {
          v7 = 0x5468736572666572;
          v8 = 0xEC0000006E656B6FLL;
        }
      }

      else if (*(*(v2 + 48) + v4) > 2u)
      {
        if (v6 == 3)
        {
          v7 = 0xD000000000000015;
          v8 = 0x8000000251C89B90;
        }

        else if (v6 == 4)
        {
          v8 = 0xE400000000000000;
          v7 = 1734431845;
        }

        else
        {
          v7 = 0xD000000000000011;
          v8 = 0x8000000251C89BB0;
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v6 == 1)
        {
          v7 = 0x6553746E65696C63;
        }

        else
        {
          v7 = 1701080931;
        }

        if (v6 == 1)
        {
          v8 = 0xEC00000074657263;
        }

        else
        {
          v8 = 0xE400000000000000;
        }
      }

      else
      {
        v8 = 0xE800000000000000;
        v7 = 0x4449746E65696C63;
      }

      v9 = 0x44494C44746F6F72;
      if (v5 != 10)
      {
        v9 = 0x6574617473;
      }

      v10 = 0xE500000000000000;
      if (v5 == 10)
      {
        v10 = 0xE800000000000000;
      }

      if (v5 == 9)
      {
        v9 = 0x656372756F736572;
        v10 = 0xEA00000000004449;
      }

      v11 = 0x5468736572666572;
      if (v5 == 7)
      {
        v11 = 0x746E6569746170;
      }

      v12 = 0xEC0000006E656B6FLL;
      if (v5 == 7)
      {
        v12 = 0xE700000000000000;
      }

      if (v5 == 6)
      {
        v11 = 0xD000000000000015;
        v12 = 0x8000000251C89BD0;
      }

      if (v5 <= 8)
      {
        v9 = v11;
        v10 = v12;
      }

      v13 = 0xD000000000000011;
      if (v5 == 4)
      {
        v13 = 1734431845;
        v14 = 0xE400000000000000;
      }

      else
      {
        v14 = 0x8000000251C89BB0;
      }

      if (v5 == 3)
      {
        v13 = 0xD000000000000015;
        v14 = 0x8000000251C89B90;
      }

      v15 = 0x6553746E65696C63;
      if (v5 != 1)
      {
        v15 = 1701080931;
      }

      v16 = 0xEC00000074657263;
      if (v5 != 1)
      {
        v16 = 0xE400000000000000;
      }

      if (!v5)
      {
        v15 = 0x4449746E65696C63;
        v16 = 0xE800000000000000;
      }

      if (v5 <= 2)
      {
        v13 = v15;
        v14 = v16;
      }

      v17 = v5 <= 5 ? v13 : v9;
      v18 = v5 <= 5 ? v14 : v10;
      if (v7 == v17 && v8 == v18)
      {
        break;
      }

      v19 = sub_251C719D4();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_251AC9680(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_251ACFAF8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25308D3E0](v9, a1);
      sub_251ACFB64(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_251AC9748(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_251C70F14();
      v9 = v8;
      if (v7 == sub_251C70F14() && v9 == v10)
      {
        break;
      }

      v12 = sub_251C719D4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_251AC984C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_251ACF63C(v24, v25);
      v20 = sub_251C70ED4();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_251AC99EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_251ACE2EC(0, &qword_27F479670, &qword_27F4792D0, MEMORY[0x277D834F8], sub_251ACE358);
  v38 = a2;
  result = sub_251C71814();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_251C71AA4();
      sub_251C70FB4();
      result = sub_251C71AD4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_251AC9CC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_251ACE358(0, &qword_27F479678, MEMORY[0x277D84460]);
  v38 = a2;
  result = sub_251C71814();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_251C71AA4();
      sub_251C70FB4();
      result = sub_251C71AD4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_251AC9F90(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_251C6FAE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_251AB03E0();
  v43 = a2;
  result = sub_251C71814();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
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
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v7 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_251ACF63C(&qword_27F4793F8, MEMORY[0x277CC88A8]);
      result = sub_251C70E84();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v7 = v41;
      v11 = v42;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_251ACA35C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_251ACFE48(0, &qword_27F4796E8);
  v40 = a2;
  result = sub_251C71814();
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
      sub_251C71AA4();
      sub_251C70FB4();
      result = sub_251C71AD4();
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

uint64_t sub_251ACA62C(uint64_t a1, int a2)
{
  v3 = v2;
  v48 = sub_251C70014();
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_251ACF9F4();
  v45 = a2;
  result = sub_251C71814();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = (v6 + 16);
    v43 = v6;
    v46 = (v6 + 32);
    v19 = result + 64;
    v44 = v9;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = *(v9 + 48) + 16 * v25;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v6 + 72);
      v31 = v26 + v30 * v25;
      if (v45)
      {
        (*v46)(v47, v31, v48);
      }

      else
      {
        (*v42)(v47, v31, v48);
      }

      v32 = *(v12 + 40);
      v49 = v28;
      v50 = v29;
      sub_251C71AA4();
      sub_251ABA664();
      sub_251C70E94();
      result = sub_251C71AD4();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = *(v12 + 48) + 16 * v20;
      *v21 = v28;
      *(v21 + 8) = v29;
      result = (*v46)(*(v12 + 56) + v30 * v20, v47, v48);
      ++*(v12 + 16);
      v6 = v43;
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_251ACA9B8(uint64_t a1, int a2, void (*a3)(void))
{
  v5 = v3;
  v8 = sub_251C70074();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v14 = *(*v5 + 24);
  }

  a3(0);
  v45 = a2;
  result = sub_251C71814();
  v16 = result;
  if (*(v13 + 16))
  {
    v49 = v12;
    v41 = v5;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v42 = (v9 + 16);
    v43 = v13;
    v44 = v9;
    v46 = (v9 + 32);
    v23 = result + 64;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v48 = *(v44 + 72);
      v30 = v29 + v48 * v28;
      if (v45)
      {
        (*v46)(v49, v30, v8);
        v47 = *(*(v13 + 56) + 8 * v28);
      }

      else
      {
        (*v42)(v49, v30, v8);
        v47 = *(*(v13 + 56) + 8 * v28);
      }

      v31 = *(v16 + 40);
      sub_251ACF63C(&qword_2813E74E0, MEMORY[0x277CC95F0]);
      result = sub_251C70E84();
      v32 = -1 << *(v16 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v23 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v23 + 8 * v34);
          if (v38 != -1)
          {
            v24 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v33) & ~*(v23 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = (*v46)(*(v16 + 48) + v48 * v24, v49, v8);
      *(*(v16 + 56) + 8 * v24) = v47;
      ++*(v16 + 16);
      v13 = v43;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v5 = v41;
      goto LABEL_36;
    }

    v39 = 1 << *(v13 + 32);
    v5 = v41;
    if (v39 >= 64)
    {
      bzero(v18, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v39;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v5 = v16;
  return result;
}