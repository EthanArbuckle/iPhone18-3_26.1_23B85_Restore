uint64_t sub_243AA7D2C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_243AC2DF8();
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
      result = sub_243AC2DF8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_243AA8F10(&qword_27ED98FA8, &qword_27ED98F40, &qword_243AC52E0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F40, &qword_243AC52E0);
            v9 = sub_243AA806C(v13, i, a3);
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
        sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
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

uint64_t sub_243AA7ECC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_243AC2DF8();
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
      result = sub_243AC2DF8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_243AA8F10(&qword_27ED9A408, &qword_27ED9A400, &unk_243ACA6A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A400, &unk_243ACA6A0);
            v9 = sub_243AA80F4(v13, i, a3);
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
        sub_243A2CFF0(0, &qword_27ED98FC0, 0x277CFB1E8);
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

void (*sub_243AA806C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D470F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_243AA80EC;
  }

  __break(1u);
  return result;
}

void (*sub_243AA80F4(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D470F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_243AA8FFC;
  }

  __break(1u);
  return result;
}

void *sub_243AA8174(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_243AA82C8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_243AA8424(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_243AA8578(void *a1, void *a2)
{
  if (a2)
  {
    v16 = a2;
    v3 = [v16 templates];
    v4 = sub_243AC2818();
    v5 = [v3 titleTemplateForKey_];

    if (v5)
    {
      [a1 setTitle_];
    }

    v6 = [v16 templates];
    v7 = sub_243AC2818();
    v8 = [v6 subTitleTemplateForKey_];

    if (v8)
    {
      [a1 setSubTitle_];
    }

    v9 = [v16 templates];
    v10 = sub_243AC2818();
    v11 = [v9 messageTemplateForKey_];

    if (v11)
    {
      [a1 setMessage_];
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v12 = sub_243AC1468();
    __swift_project_value_buffer(v12, qword_27EDA14A8);
    v16 = sub_243AC1448();
    v13 = sub_243AC2B58();
    if (os_log_type_enabled(v16, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_243AB73D8(0xD000000000000030, 0x8000000243ACE3F0, &v17);
      _os_log_impl(&dword_243A1B000, v16, v13, "%s Rule not found, canot update recommendation template.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x245D47D20](v15, -1, -1);
      MEMORY[0x245D47D20](v14, -1, -1);
    }
  }
}

void *sub_243AA8948(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D84F90];
  v7 = sub_243A2E2A0(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98FF8, qword_243ACA6D0);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v7;
  v3[2] = v8;
  v9 = sub_243A2E2A0(v6);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = v9;
  v3[3] = v10;
  v11 = sub_243A2E2A0(v6);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v11;
  v3[4] = v12;
  v3[5] = a1;
  v3[6] = a2;
  type metadata accessor for RecommendationTemplate();
  swift_allocObject();
  v13 = a1;

  v3[7] = sub_243A59CDC(v13);
  v3[8] = [objc_allocWithZone(MEMORY[0x277CFB1C0]) init];
  return v3;
}

uint64_t sub_243AA8A74(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_243AC2A58();
  v2[5] = sub_243AC2A48();
  v3 = swift_task_alloc();
  v2[6] = v3;
  *v3 = v2;
  v3[1] = sub_243AA8B34;

  return sub_243A91C90(0);
}

uint64_t sub_243AA8B34(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 56) = a1;

  v6 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243AA8C78, v6, v5);
}

uint64_t sub_243AA8C78()
{
  v23 = v0;
  v1 = v0[7];
  v2 = v0[5];

  if (v1)
  {
    v3 = v0[7];
    v4 = v0[2];
    v5 = *(v0[3] + 56);

    v6 = [v4 subTitle];
    v7 = sub_243AC2858();
    v9 = v8;

    sub_243A5A420(v7, v9, v3);

    v10 = sub_243AC2818();

    [v4 setSubTitle_];
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v11 = v0[3];
    v12 = sub_243AC1468();
    __swift_project_value_buffer(v12, qword_27EDA14A8);

    v3 = sub_243AC1448();
    v13 = sub_243AC2B48();

    if (os_log_type_enabled(v3, v13))
    {
      v14 = v0[3];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v15 = 136315394;
      *(v15 + 4) = sub_243AB73D8(0xD000000000000031, 0x8000000243ACE460, &v22);
      *(v15 + 12) = 2112;
      v18 = *(v14 + 40);
      *(v15 + 14) = v18;
      *v16 = v18;
      v19 = v18;
      _os_log_impl(&dword_243A1B000, v3, v13, "%s Unable to fetch familycircle for account: %@", v15, 0x16u);
      sub_243A2251C(v16, &qword_27ED98BF8, &unk_243AC6150);
      MEMORY[0x245D47D20](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x245D47D20](v17, -1, -1);
      MEMORY[0x245D47D20](v15, -1, -1);
    }
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_243AA8F10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_243AA8F64()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  if (*(v0 + 64))
  {
    v3 = *(v0 + 72);
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_243AA8FC4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id static RecommendationBypass.limit.getter()
{
  if ((sub_243AA9528() & 1) == 0)
  {
    return 0;
  }

  if (qword_27ED98930 != -1)
  {
    swift_once();
  }

  v0 = qword_27ED9A410;
  v1 = sub_243AC2818();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_243AA90A0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_243AC2818();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  qword_27ED9A410 = v2;
}

void sub_243AA913C(unsigned __int8 *a1@<X8>)
{
  if (sub_243AA9528())
  {
    if (qword_27ED98930 != -1)
    {
      swift_once();
    }

    v2 = qword_27ED9A410;
    v3 = sub_243AC2818();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

void sub_243AA91E4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (sub_243AA9528())
  {
    if (qword_27ED98930 != -1)
    {
      swift_once();
    }

    v2 = qword_27ED9A410;
    v3 = sub_243AC2A08();
    v4 = sub_243AC2818();
    [v2 setValue:v3 forKey:v4];
  }
}

void static RecommendationBypass.limit.setter()
{
  if (sub_243AA9528())
  {
    if (qword_27ED98930 != -1)
    {
      swift_once();
    }

    v0 = qword_27ED9A410;
    v1 = sub_243AC2A08();
    v2 = sub_243AC2818();
    [v0 setValue:v1 forKey:v2];
  }
}

void (*static RecommendationBypass.limit.modify(unsigned __int8 *a1))(unsigned __int8 *a1)
{
  if (sub_243AA9528())
  {
    if (qword_27ED98930 != -1)
    {
      swift_once();
    }

    v2 = qword_27ED9A410;
    v3 = sub_243AC2818();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return sub_243AA9440;
}

void sub_243AA9440(unsigned __int8 *a1)
{
  v1 = *a1;
  if (sub_243AA9528())
  {
    if (qword_27ED98930 != -1)
    {
      swift_once();
    }

    v2 = qword_27ED9A410;
    v4 = sub_243AC2A08();
    v3 = sub_243AC2818();
    [v2 setValue:v4 forKey:v3];
  }
}

uint64_t sub_243AA9528()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_243AC2858();

    sub_243AC2888();
  }

  has_internal_ui = os_variant_has_internal_ui();
  swift_unknownObjectRelease();
  return has_internal_ui;
}

uint64_t Card.body.getter@<X0>(uint64_t a1@<X8>)
{
  v160 = a1;
  v2 = sub_243AC24B8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v144 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_243AC24D8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v140 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C8, &unk_243AC6A10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v150 = &v119 - v10;
  v151 = sub_243AC25A8();
  v148 = *(v151 - 8);
  v11 = *(v148 + 64);
  MEMORY[0x28223BE20](v151);
  v143 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A418, &qword_243ACA798);
  v13 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v15 = &v119 - v14;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A420, &qword_243ACA7A0);
  v135 = *(v139 - 8);
  v16 = *(v135 + 64);
  MEMORY[0x28223BE20](v139);
  v132 = &v119 - v17;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A428, &qword_243ACA7A8);
  v137 = *(v138 - 8);
  v18 = *(v137 + 64);
  MEMORY[0x28223BE20](v138);
  v133 = &v119 - v19;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A430, &qword_243ACA7B0);
  v141 = *(v142 - 8);
  v20 = *(v141 + 64);
  MEMORY[0x28223BE20](v142);
  v136 = &v119 - v21;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A438, &qword_243ACA7B8);
  v22 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v146 = &v119 - v23;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A440, &qword_243ACA7C0);
  v24 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v149 = &v119 - v25;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A448, &qword_243ACA7C8);
  v26 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v153 = &v119 - v27;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A450, &qword_243ACA7D0);
  v28 = *(*(v159 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v159);
  v152 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v154 = &v119 - v31;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A458, &qword_243ACA7D8);
  v32 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v157);
  v158 = &v119 - v33;
  v34 = type metadata accessor for Card();
  v121 = *(v34 - 8);
  v35 = *(v121 + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A460, &qword_243ACA7E0);
  v123 = *(v124 - 8);
  v36 = *(v123 + 64);
  MEMORY[0x28223BE20](v124);
  v38 = &v119 - v37;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A468, &qword_243ACA7E8);
  v39 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v41 = &v119 - v40;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A470, &qword_243ACA7F0);
  v42 = *(*(v125 - 8) + 64);
  MEMORY[0x28223BE20](v125);
  v44 = &v119 - v43;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A478, &qword_243ACA7F8);
  v45 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v127 = &v119 - v46;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A480, &qword_243ACA800);
  v47 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v49 = &v119 - v48;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A488, &qword_243ACA808);
  v130 = *(v131 - 8);
  v50 = *(v130 + 64);
  MEMORY[0x28223BE20](v131);
  v129 = &v119 - v51;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A490, &qword_243ACA810);
  v52 = *(*(v156 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v156);
  v55 = &v119 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  if (*(v1 + 16) == 1)
  {
    v154 = &v119 - v56;
    v120 = v1;
    sub_243AB0308(v1, &v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
    v57 = (*(v121 + 80) + 16) & ~*(v121 + 80);
    v58 = swift_allocObject();
    v59 = sub_243AB0370(&v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v58 + v57);
    MEMORY[0x28223BE20](v59);
    sub_243A491E8(&qword_27ED9A4A0, &qword_27ED9A418, &qword_243ACA798);
    sub_243AC20A8();
    sub_243AC2138();
    sub_243AC18E8();
    (*(v123 + 32))(v41, v38, v124);
    v60 = &v41[*(v122 + 36)];
    v61 = v167;
    *(v60 + 4) = v166;
    *(v60 + 5) = v61;
    *(v60 + 6) = v168;
    v62 = v163;
    *v60 = v162;
    *(v60 + 1) = v62;
    v63 = v165;
    *(v60 + 2) = v164;
    *(v60 + 3) = v63;
    v64 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v65 = sub_243AC1F78();
    v66 = sub_243AC1C48();
    sub_243A22814(v41, v44, &qword_27ED9A468, &qword_243ACA7E8);
    v67 = &v44[*(v125 + 36)];
    *v67 = v65;
    v67[8] = v66;
    v161 = sub_243AC1F98();
    v68 = sub_243AC20C8();
    v69 = v127;
    sub_243A22814(v44, v127, &qword_27ED9A470, &qword_243ACA7F0);
    *(v69 + *(v126 + 36)) = v68;
    if (sub_243AC2128())
    {
      v70 = 22.0;
    }

    else
    {
      v70 = 12.0;
    }

    v71 = &v49[*(v128 + 36)];
    v72 = *(sub_243AC18D8() + 20);
    v73 = *MEMORY[0x277CE0118];
    v74 = sub_243AC1A98();
    (*(*(v74 - 8) + 104))(v71 + v72, v73, v74);
    *v71 = v70;
    v71[1] = v70;
    *(v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A2E0, &qword_243AC9EC8) + 36)) = 256;
    sub_243A22814(v69, v49, &qword_27ED9A478, &qword_243ACA7F8);
    sub_243AAFC90();
    v75 = v129;
    sub_243AC1DF8();
    sub_243A2251C(v49, &qword_27ED9A480, &qword_243ACA800);
    v76 = sub_243AC2138();
    v78 = v77;
    v79 = &v55[*(v156 + 36)];
    sub_243AAAB5C(v120, v79);
    v80 = (v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99168, &qword_243AC5E30) + 36));
    *v80 = v76;
    v80[1] = v78;
    (*(v130 + 32))(v55, v75, v131);
    v81 = &qword_27ED9A490;
    v82 = &qword_243ACA810;
    v83 = v154;
    sub_243A22814(v55, v154, &qword_27ED9A490, &qword_243ACA810);
    sub_243A224B4(v83, v158, &qword_27ED9A490, &qword_243ACA810);
    swift_storeEnumTagMultiPayload();
    sub_243AAFB9C();
    sub_243AAFF70();
  }

  else
  {
    *v15 = sub_243AC1A68();
    *(v15 + 1) = 0;
    v15[16] = 0;
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A498, &qword_243ACA818);
    sub_243AAAF68(v1, &v15[*(v84 + 44)]);
    v85 = sub_243A491E8(&qword_27ED9A4A0, &qword_27ED9A418, &qword_243ACA798);
    v86 = v132;
    v87 = v155;
    sub_243AC1DF8();
    sub_243A2251C(v15, &qword_27ED9A418, &qword_243ACA798);
    v88 = *(v1 + 8);
    *&v162 = *v1;
    *(&v162 + 1) = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
    sub_243AC2068();
    v89 = v161;

    v90 = v143;
    sub_243AC2598();
    sub_243AC24C8();
    v91 = MEMORY[0x277D84F90];
    sub_243A2E2B4(MEMORY[0x277D84F90]);
    sub_243AC24A8();
    sub_243A2E2B4(v91);
    sub_243A2E2B4(v91);
    v92 = v150;
    sub_243AC24E8();
    v93 = sub_243AC24F8();
    (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
    *&v162 = v87;
    *(&v162 + 1) = v85;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v95 = v133;
    v96 = v139;
    sub_243AC1DC8();
    sub_243A2251C(v92, &qword_27ED991C8, &unk_243AC6A10);
    (*(v148 + 8))(v90, v151);
    (*(v135 + 8))(v86, v96);
    *&v162 = v96;
    *(&v162 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v97 = v136;
    v98 = v138;
    sub_243AC1DF8();
    (*(v137 + 8))(v95, v98);
    sub_243AC2138();
    sub_243AC18E8();
    v99 = v146;
    (*(v141 + 32))(v146, v97, v142);
    v100 = &v99[*(v134 + 36)];
    v101 = v167;
    *(v100 + 4) = v166;
    *(v100 + 5) = v101;
    *(v100 + 6) = v168;
    v102 = v163;
    *v100 = v162;
    *(v100 + 1) = v102;
    v103 = v165;
    *(v100 + 2) = v164;
    *(v100 + 3) = v103;
    v104 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v105 = sub_243AC1F78();
    LOBYTE(v91) = sub_243AC1C48();
    v106 = v99;
    v107 = v149;
    sub_243A22814(v106, v149, &qword_27ED9A438, &qword_243ACA7B8);
    v108 = v107 + *(v145 + 36);
    *v108 = v105;
    *(v108 + 8) = v91;
    v161 = sub_243AC1F98();
    v109 = sub_243AC20C8();
    v110 = v153;
    sub_243A22814(v107, v153, &qword_27ED9A440, &qword_243ACA7C0);
    *(v110 + *(v147 + 36)) = v109;
    if (sub_243AC2128())
    {
      v111 = 22.0;
    }

    else
    {
      v111 = 12.0;
    }

    v112 = v152;
    v113 = &v152[*(v159 + 36)];
    v114 = *(sub_243AC18D8() + 20);
    v115 = *MEMORY[0x277CE0118];
    v116 = sub_243AC1A98();
    (*(*(v116 - 8) + 104))(v113 + v114, v115, v116);
    *v113 = v111;
    v113[1] = v111;
    *(v113 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A2E0, &qword_243AC9EC8) + 36)) = 256;
    sub_243A22814(v110, v112, &qword_27ED9A448, &qword_243ACA7C8);
    v81 = &qword_27ED9A450;
    v82 = &qword_243ACA7D0;
    v117 = v112;
    v83 = v154;
    sub_243A22814(v117, v154, &qword_27ED9A450, &qword_243ACA7D0);
    sub_243A224B4(v83, v158, &qword_27ED9A450, &qword_243ACA7D0);
    swift_storeEnumTagMultiPayload();
    sub_243AAFB9C();
    sub_243AAFF70();
  }

  sub_243AC1AE8();
  return sub_243A2251C(v83, v81, v82);
}

uint64_t type metadata accessor for Card()
{
  result = qword_27ED9A500;
  if (!qword_27ED9A500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243AAA9A4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
  sub_243AC2068();
  v4 = [v10 actions];

  sub_243A2CFF0(0, &qword_27ED98B88, 0x277CFB1B8);
  v5 = sub_243AC2998();

  if (v5 >> 62)
  {
    if (sub_243AC2DF8())
    {
      goto LABEL_3;
    }

LABEL_8:

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x245D470F0](0, v5);
    goto LABEL_6;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);
LABEL_6:
    v7 = v6;

    v9 = a1[5];
    v8 = a1[6];
    sub_243AC2068();
    v9(v10, v7);

    return;
  }

  __break(1u);
}

uint64_t sub_243AAAB08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_243AC1A68();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A498, &qword_243ACA818);
  return sub_243AAAF68(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_243AAAB5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_243AC24B8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_243AC24D8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C8, &unk_243AC6A10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - v9;
  v33 = sub_243AC25A8();
  v11 = *(v33 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v33);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991D0, &unk_243AC5EF0);
  v16 = *(v15 - 8);
  v31 = v15;
  v32 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  v20 = sub_243AC1F98();
  v30 = v20;
  v21 = a1[1];
  v36 = *a1;
  v37 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
  sub_243AC2068();
  v22 = v35;
  v23 = [v35 title];

  sub_243AC2858();
  sub_243AC2598();
  v36 = v20;

  sub_243AC24C8();
  v24 = MEMORY[0x277D84F90];
  sub_243A2E2B4(MEMORY[0x277D84F90]);
  sub_243AC24A8();
  sub_243A2E2B4(v24);
  sub_243A2E2B4(v24);
  sub_243AC24E8();
  v25 = sub_243AC24F8();
  (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
  v26 = MEMORY[0x277CE0F78];
  v27 = MEMORY[0x277CE0F70];
  sub_243AC1DC8();

  sub_243A2251C(v10, &qword_27ED991C8, &unk_243AC6A10);
  (*(v11 + 8))(v14, v33);

  v36 = v26;
  v37 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v31;
  sub_243AC1DF8();
  return (*(v32 + 8))(v19, v28);
}

uint64_t sub_243AAAF68@<X0>(uint64_t *a1@<X0>, int64x2_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A548, &qword_243ACA920);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = a1[1];
  *&v34[0] = *a1;
  *(&v34[0] + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
  sub_243AC2068();
  sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
  sub_243AC2058();
  v12 = v34[0];
  v13 = sub_243AC1C48();
  LOBYTE(v34[0]) = 0;
  *v10 = sub_243AC1AB8();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A550, &qword_243ACA928);
  sub_243AAB270(a1, &v10[*(v14 + 44)]);
  sub_243A224B4(v10, v8, &qword_27ED9A548, &qword_243ACA920);
  v28 = vdupq_n_s64(0x4044000000000000uLL);
  v27 = xmmword_243ACA730;
  v30[0] = v28;
  v30[1] = xmmword_243ACA730;
  v31 = xmmword_243ACA740;
  v25 = xmmword_243ACA740;
  v32 = v12;
  v33[0] = v13;
  *&v33[1] = *v29;
  *&v33[4] = *&v29[3];
  __asm { FMOV            V0.2D, #16.0 }

  v26 = _Q0;
  *&v33[8] = _Q0;
  *&v33[24] = xmmword_243ACA740;
  v33[40] = 0;
  *a2 = v28;
  a2[1] = xmmword_243ACA730;
  v20 = v31;
  v21 = v32;
  *(a2 + 89) = *&v33[25];
  v22 = *&v33[16];
  a2[4] = *v33;
  a2[5] = v22;
  a2[2] = v20;
  a2[3] = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A558, &qword_243ACA930);
  sub_243A224B4(v8, a2->i64 + *(v23 + 48), &qword_27ED9A548, &qword_243ACA920);
  sub_243A224B4(v30, v34, &qword_27ED9A560, &qword_243ACA938);
  sub_243A2251C(v10, &qword_27ED9A548, &qword_243ACA920);
  sub_243A2251C(v8, &qword_27ED9A548, &qword_243ACA920);
  v34[0] = v28;
  v34[1] = v27;
  v34[2] = v25;
  v34[3] = v12;
  v35 = v13;
  *v36 = *v29;
  *&v36[3] = *&v29[3];
  v37 = v26;
  v38 = v25;
  v39 = 0;
  return sub_243A2251C(v34, &qword_27ED9A560, &qword_243ACA938);
}

uint64_t sub_243AAB270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A568, &qword_243ACA940);
  v83 = *(v3 - 8);
  v84 = v3;
  v4 = *(v83 + 64);
  MEMORY[0x28223BE20](v3);
  v78 = v71 - v5;
  v6 = type metadata accessor for Card();
  v72 = *(v6 - 8);
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v71[1] = v8;
  v9 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A570, &qword_243ACA948);
  v76 = *(v10 - 8);
  v77 = v10;
  v11 = *(v76 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v75 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v74 = v71 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A578, &qword_243ACA950);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v71 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A580, &qword_243ACA958);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v82 = v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v80 = v71 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A588, &qword_243ACA960);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v81 = v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = v71 - v30;
  *v31 = sub_243AC1A68();
  *(v31 + 1) = 0;
  v31[16] = 0;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A590, &qword_243ACA968) + 44);
  v79 = v31;
  sub_243AABACC(a1, &v31[v32]);
  v34 = *a1;
  v33 = a1[1];
  v87 = *a1;
  v88 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
  sub_243AC2068();
  v35 = v86;
  v36 = [v86 status];

  if (!v36)
  {
    goto LABEL_11;
  }

  v87 = v34;
  v88 = v33;
  sub_243AC2068();
  v37 = v86;
  v38 = [v86 status];

  if (!v38)
  {
    v45 = *MEMORY[0x277CFB150];
    sub_243AC2858();
    goto LABEL_8;
  }

  v39 = sub_243AC2858();
  v41 = v40;

  v42 = *MEMORY[0x277CFB150];
  v43 = sub_243AC2858();
  if (!v41)
  {
LABEL_8:

    goto LABEL_9;
  }

  if (v39 == v43 && v41 == v44)
  {

LABEL_11:
    sub_243AC20D8();
    v49 = sub_243AC1C48();
    v50 = &v20[*(v15 + 36)];
    v71[0] = v20;
    *v50 = v49;
    *(v50 + 8) = xmmword_243ACA750;
    *(v50 + 24) = xmmword_243ACA760;
    v50[40] = 0;
    v87 = v34;
    v88 = v33;
    sub_243AC2068();
    v51 = v86;
    v52 = [v86 actions];

    sub_243A2CFF0(0, &qword_27ED98B88, 0x277CFB1B8);
    v53 = sub_243AC2998();

    v87 = v53;
    sub_243AB0308(a1, v9);
    v54 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v55 = swift_allocObject();
    sub_243AB0370(v9, v55 + v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A598, &qword_243ACA970);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A5A0, &qword_243ACA978);
    sub_243A491E8(&qword_27ED9A5A8, &qword_27ED9A598, &qword_243ACA970);
    sub_243AB0868();
    sub_243AB09D8();
    v56 = v74;
    sub_243AC20F8();
    v57 = v73;
    sub_243A224B4(v20, v73, &qword_27ED9A578, &qword_243ACA950);
    v58 = v75;
    v59 = v76;
    v60 = *(v76 + 16);
    v61 = v77;
    v60(v75, v56, v77);
    v62 = v78;
    sub_243A224B4(v57, v78, &qword_27ED9A578, &qword_243ACA950);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A5E0, &qword_243ACA998);
    v60((v62 + *(v63 + 48)), v58, v61);
    v64 = *(v59 + 8);
    v64(v56, v61);
    sub_243A2251C(v71[0], &qword_27ED9A578, &qword_243ACA950);
    v64(v58, v61);
    sub_243A2251C(v57, &qword_27ED9A578, &qword_243ACA950);
    v47 = v80;
    sub_243A22814(v62, v80, &qword_27ED9A568, &qword_243ACA940);
    v46 = 0;
    goto LABEL_12;
  }

  v48 = sub_243AC2EE8();

  if (v48)
  {
    goto LABEL_11;
  }

LABEL_9:
  v46 = 1;
  v47 = v80;
LABEL_12:
  (*(v83 + 56))(v47, v46, 1, v84);
  v65 = v79;
  v66 = v81;
  sub_243A224B4(v79, v81, &qword_27ED9A588, &qword_243ACA960);
  v67 = v82;
  sub_243A224B4(v47, v82, &qword_27ED9A580, &qword_243ACA958);
  v68 = v85;
  sub_243A224B4(v66, v85, &qword_27ED9A588, &qword_243ACA960);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A5E8, &qword_243ACA9A0);
  sub_243A224B4(v67, v68 + *(v69 + 48), &qword_27ED9A580, &qword_243ACA958);
  sub_243A2251C(v47, &qword_27ED9A580, &qword_243ACA958);
  sub_243A2251C(v65, &qword_27ED9A588, &qword_243ACA960);
  sub_243A2251C(v67, &qword_27ED9A580, &qword_243ACA958);
  return sub_243A2251C(v66, &qword_27ED9A588, &qword_243ACA960);
}

uint64_t sub_243AABACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243AC1B28();
  v146 = *(v4 - 8);
  v5 = *(v146 + 64);
  MEMORY[0x28223BE20](v4);
  v145 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_243AC24B8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v136 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_243AC24D8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v134 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C8, &unk_243AC6A10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v138 = &v125 - v15;
  v139 = sub_243AC25A8();
  v137 = *(v139 - 8);
  v16 = *(v137 + 64);
  MEMORY[0x28223BE20](v139);
  v135 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Card();
  v128 = *(v18 - 8);
  v19 = *(v128 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A630, &qword_243ACAA00);
  v129 = *(v130 - 8);
  v20 = *(v129 + 64);
  MEMORY[0x28223BE20](v130);
  v22 = &v125 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A638, &qword_243ACAA08);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v125 - v25;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A640, &qword_243ACAA10);
  v27 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v29 = &v125 - v28;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A648, &qword_243ACAA18);
  v132 = *(v149 - 8);
  v30 = *(v132 + 64);
  MEMORY[0x28223BE20](v149);
  v147 = &v125 - v31;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A650, &qword_243ACAA20);
  v133 = *(v152 - 8);
  v32 = *(v133 + 64);
  MEMORY[0x28223BE20](v152);
  v131 = &v125 - v33;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A658, &qword_243ACAA28);
  v140 = *(v153 - 8);
  v34 = *(v140 + 64);
  MEMORY[0x28223BE20](v153);
  v150 = &v125 - v35;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A660, &qword_243ACAA30);
  v142 = *(v156 - 8);
  v36 = *(v142 + 64);
  MEMORY[0x28223BE20](v156);
  v141 = &v125 - v37;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A668, &qword_243ACAA38);
  v144 = *(v157 - 8);
  v38 = *(v144 + 64);
  MEMORY[0x28223BE20](v157);
  v143 = &v125 - v39;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A670, &qword_243ACAA40);
  v40 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v155 = (&v125 - v41);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A678, &qword_243ACAA48);
  v159 = *(v162 - 8);
  v42 = *(v159 + 64);
  MEMORY[0x28223BE20](v162);
  v154 = &v125 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A680, &qword_243ACAA50);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v163 = &v125 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v161 = &v125 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A688, &qword_243ACAA58);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v49 - 8);
  v160 = &v125 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v54 = &v125 - v53;
  *v54 = sub_243AC1AB8();
  *(v54 + 1) = 0;
  v54[16] = 0;
  v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A690, &qword_243ACAA60) + 44);
  v158 = v54;
  sub_243AAD0D8(a1, &v54[v55]);
  if (*(a1 + 17))
  {
    v56 = 1;
    v57 = v161;
  }

  else
  {
    v127 = a2;
    if (*(a1 + 16) == 1)
    {
      v58 = sub_243AC2008();
      v59 = sub_243AC1CF8();
      KeyPath = swift_getKeyPath();
      v61 = [objc_opt_self() quaternaryLabelColor];
      v62 = sub_243AC1F78();
      v63 = swift_getKeyPath();
      if (sub_243AC2128())
      {
        v64 = 0x402E000000000000;
      }

      else
      {
        v64 = 0x4026000000000000;
      }

      v65 = sub_243AC1C48();
      LOBYTE(v170) = 0;
      v66 = v155;
      *v155 = v58;
      v66[1] = KeyPath;
      v66[2] = v59;
      v66[3] = v63;
      v66[4] = v62;
      *(v66 + 40) = v65;
      v66[6] = v64;
      *(v66 + 7) = xmmword_243ACA770;
      v66[9] = 0x402A000000000000;
      *(v66 + 80) = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A700, &qword_243ACAAA0);
      sub_243AB140C(&qword_27ED9A708, &qword_27ED9A700, &qword_243ACAAA0, sub_243AB0E00);
      v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A6E0, &qword_243ACAA90);
      v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A6E8, &qword_243ACAA98);
      v69 = sub_243AB1028(&qword_27ED9A6D8, &qword_27ED9A640, &qword_243ACAA10, sub_243AB0F70);
      v164 = v148;
      v165 = v69;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v164 = v149;
      v165 = OpaqueTypeConformance2;
      v71 = swift_getOpaqueTypeConformance2();
      v164 = v152;
      v165 = v71;
      v72 = swift_getOpaqueTypeConformance2();
      v73 = sub_243A491E8(&qword_27ED9A6F0, &qword_27ED9A6E0, &qword_243ACAA90);
      v74 = sub_243AB10EC();
      v164 = v153;
      v165 = v67;
      v166 = v68;
      v167 = v72;
      v168 = v73;
      v169 = v74;
      v75 = swift_getOpaqueTypeConformance2();
      v76 = sub_243AB0CDC(&qword_27ED9A628, MEMORY[0x277CDE0B8]);
      v164 = v156;
      v165 = v4;
      v166 = v75;
      v167 = v76;
      swift_getOpaqueTypeConformance2();
      v77 = v154;
      sub_243AC1AE8();
    }

    else
    {
      sub_243AB0308(a1, &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      v78 = *(v128 + 80);
      v126 = v4;
      v79 = (v78 + 16) & ~v78;
      v80 = swift_allocObject();
      sub_243AB0370(&v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v80 + v79);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A698, &qword_243ACAA68);
      sub_243AB0E00();
      sub_243AC20A8();
      if (sub_243AC2128())
      {
        v81 = 0x402E000000000000;
      }

      else
      {
        v81 = 0x4026000000000000;
      }

      v82 = sub_243AC1C48();
      (*(v129 + 32))(v26, v22, v130);
      v83 = &v26[*(v23 + 36)];
      *v83 = v82;
      *(v83 + 1) = v81;
      *(v83 + 1) = xmmword_243ACA770;
      *(v83 + 4) = 0x402A000000000000;
      v83[40] = 0;
      sub_243AB0F70();
      sub_243AC1EE8();
      sub_243A2251C(v26, &qword_27ED9A638, &qword_243ACAA08);
      v84 = sub_243AB1028(&qword_27ED9A6D8, &qword_27ED9A640, &qword_243ACAA10, sub_243AB0F70);
      v85 = v148;
      sub_243AC1DF8();
      sub_243A2251C(v29, &qword_27ED9A640, &qword_243ACAA10);
      v86 = *(a1 + 8);
      v164 = *a1;
      v165 = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
      sub_243AC2068();
      v87 = v170;

      v88 = v135;
      sub_243AC2598();
      sub_243AC24C8();
      v89 = MEMORY[0x277D84F90];
      sub_243A2E2B4(MEMORY[0x277D84F90]);
      sub_243AC24A8();
      sub_243A2E2B4(v89);
      sub_243A2E2B4(v89);
      v90 = v138;
      sub_243AC24E8();
      v91 = sub_243AC24F8();
      (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
      v164 = v85;
      v165 = v84;
      v148 = MEMORY[0x277D7EE48];
      v92 = swift_getOpaqueTypeConformance2();
      v93 = v131;
      v94 = v149;
      v95 = v147;
      sub_243AC1DC8();
      sub_243A2251C(v90, &qword_27ED991C8, &unk_243AC6A10);
      (*(v137 + 8))(v88, v139);
      (*(v132 + 8))(v95, v94);
      v164 = v94;
      v165 = v92;
      v149 = swift_getOpaqueTypeConformance2();
      v96 = v152;
      sub_243AC1DF8();
      (*(v133 + 8))(v93, v96);
      sub_243AC1A88();
      type metadata accessor for RecommendationsController();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v98 = [objc_opt_self() bundleForClass_];
      v99 = sub_243AC1D78();
      v147 = v100;
      LOBYTE(v94) = v101;
      v139 = v102;
      v103 = *(a1 + 32);
      LOBYTE(v170) = *(a1 + 24);
      v171 = v103;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D28, &qword_243AC8810);
      v104 = sub_243AC2088();
      v138 = &v125;
      v136 = v164;
      v135 = v165;
      LODWORD(v137) = v166;
      v105 = MEMORY[0x28223BE20](v104);
      MEMORY[0x28223BE20](v105);
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A6E0, &qword_243ACAA90);
      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A6E8, &qword_243ACAA98);
      v164 = v96;
      v165 = v149;
      v149 = swift_getOpaqueTypeConformance2();
      v152 = sub_243A491E8(&qword_27ED9A6F0, &qword_27ED9A6E0, &qword_243ACAA90);
      v124 = sub_243AB10EC();
      v106 = v153;
      LOBYTE(v88) = v94;
      v107 = v141;
      v108 = v99;
      v109 = v147;
      v110 = v150;
      sub_243AC1F18();

      sub_243A82874(v108, v109, v88 & 1);

      (*(v140 + 8))(v110, v106);
      v111 = v145;
      sub_243AC1B18();
      v164 = v106;
      v165 = v133;
      v166 = v134;
      v167 = v149;
      v168 = v152;
      v169 = v124;
      v112 = swift_getOpaqueTypeConformance2();
      v113 = sub_243AB0CDC(&qword_27ED9A628, MEMORY[0x277CDE0B8]);
      v114 = v143;
      v115 = v156;
      v116 = v126;
      sub_243AC1E88();
      (*(v146 + 8))(v111, v116);
      (*(v142 + 8))(v107, v115);
      v117 = v144;
      v118 = v157;
      (*(v144 + 16))(v155, v114, v157);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A700, &qword_243ACAAA0);
      sub_243AB140C(&qword_27ED9A708, &qword_27ED9A700, &qword_243ACAAA0, sub_243AB0E00);
      v164 = v115;
      v165 = v126;
      v166 = v112;
      v167 = v113;
      swift_getOpaqueTypeConformance2();
      v77 = v154;
      sub_243AC1AE8();
      (*(v117 + 8))(v114, v118);
    }

    v57 = v161;
    sub_243A22814(v77, v161, &qword_27ED9A678, &qword_243ACAA48);
    v56 = 0;
    a2 = v127;
  }

  (*(v159 + 56))(v57, v56, 1, v162);
  v119 = v158;
  v120 = v160;
  sub_243A224B4(v158, v160, &qword_27ED9A688, &qword_243ACAA58);
  v121 = v163;
  sub_243A224B4(v57, v163, &qword_27ED9A680, &qword_243ACAA50);
  sub_243A224B4(v120, a2, &qword_27ED9A688, &qword_243ACAA58);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A710, &qword_243ACAAA8);
  sub_243A224B4(v121, a2 + *(v122 + 48), &qword_27ED9A680, &qword_243ACAA50);
  sub_243A2251C(v57, &qword_27ED9A680, &qword_243ACAA50);
  sub_243A2251C(v119, &qword_27ED9A688, &qword_243ACAA58);
  sub_243A2251C(v121, &qword_27ED9A680, &qword_243ACAA50);
  return sub_243A2251C(v120, &qword_27ED9A688, &qword_243ACAA58);
}

uint64_t sub_243AAD0D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A720, &qword_243ACAB20);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v129 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v127 = &v112 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A728, &qword_243ACAB28);
  v114 = *(v8 - 8);
  v115 = v8;
  v9 = *(v114 + 64);
  MEMORY[0x28223BE20](v8);
  v112 = &v112 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A730, &qword_243ACAB30);
  v123 = *(v11 - 8);
  v124 = v11;
  v12 = *(v123 + 64);
  MEMORY[0x28223BE20](v11);
  v113 = &v112 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A738, &qword_243ACAB38);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v126 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v132 = &v112 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A740, &qword_243ACAB40);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v125 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v131 = &v112 - v23;
  v24 = *a1;
  v25 = a1[1];
  v133 = a1;
  *&v153[0] = v24;
  *(&v153[0] + 1) = v25;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
  sub_243AC2068();
  v26 = v148;
  v27 = [v148 title];

  v28 = sub_243AC2858();
  v30 = v29;

  *&v153[0] = v28;
  *(&v153[0] + 1) = v30;
  v122 = sub_243A4FC18();
  v31 = sub_243AC1D88();
  v33 = v32;
  v35 = v34;
  sub_243AC1CF8();
  v36 = sub_243AC1D68();
  v119 = v37;
  v120 = v36;
  LOBYTE(v28) = v38;
  v118 = v39;

  sub_243A82874(v31, v33, v35 & 1);

  KeyPath = swift_getKeyPath();
  sub_243AC2148();
  sub_243AC18E8();
  v40 = v28 & 1;
  v156 = v28 & 1;
  *&v155[55] = v161;
  *&v155[71] = v162;
  *&v155[87] = v163;
  *&v155[103] = v164;
  *&v155[7] = v158;
  *&v155[23] = v159;
  *&v155[39] = v160;
  v41 = [objc_opt_self() labelColor];
  v42 = sub_243AC1F78();
  v43 = swift_getKeyPath();
  v130 = v24;
  *&v153[0] = v24;
  v134 = v25;
  *(&v153[0] + 1) = v25;
  sub_243AC2068();
  v44 = v148;
  v45 = [v148 status];

  if (!v45)
  {
    v121 = *MEMORY[0x277CFB150];
    sub_243AC2858();
    goto LABEL_7;
  }

  v46 = sub_243AC2858();
  v48 = v47;

  v121 = *MEMORY[0x277CFB150];
  v49 = sub_243AC2858();
  if (!v48)
  {
LABEL_7:

    goto LABEL_8;
  }

  if (v46 == v49 && v48 == v50)
  {

LABEL_12:
    v51 = 0x4028000000000000;
    goto LABEL_13;
  }

  v52 = sub_243AC2EE8();

  if (v52)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (*(v133 + 18))
  {
    v51 = 0x4028000000000000;
  }

  else
  {
    v51 = 0;
  }

LABEL_13:
  v53 = sub_243AC1C48();
  *(&v150[4] + 9) = *&v155[64];
  *(&v150[5] + 9) = *&v155[80];
  *(&v150[6] + 9) = *&v155[96];
  *(v150 + 9) = *v155;
  *(&v150[1] + 9) = *&v155[16];
  *(&v150[2] + 9) = *&v155[32];
  v157 = 0;
  *&v148 = v120;
  *(&v148 + 1) = v119;
  LOBYTE(v149) = v40;
  *(&v149 + 1) = v118;
  *&v150[0] = KeyPath;
  BYTE8(v150[0]) = 0;
  *(&v150[3] + 9) = *&v155[48];
  *(&v150[7] + 1) = *&v155[111];
  *&v151 = v43;
  *(&v151 + 1) = v42;
  LOBYTE(v152[0]) = v53;
  *(&v152[0] + 1) = 0x4031000000000000;
  v152[1] = 0uLL;
  *&v152[2] = v51;
  BYTE8(v152[2]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A748, &qword_243ACAB78);
  sub_243AB140C(&qword_27ED9A750, &qword_27ED9A748, &qword_243ACAB78, sub_243AB1490);
  sub_243AC1EE8();
  v153[10] = v151;
  v153[11] = v152[0];
  v154[0] = v152[1];
  *(v154 + 9) = *(&v152[1] + 9);
  v153[6] = v150[4];
  v153[7] = v150[5];
  v153[8] = v150[6];
  v153[9] = v150[7];
  v153[2] = v150[0];
  v153[3] = v150[1];
  v153[4] = v150[2];
  v153[5] = v150[3];
  v153[0] = v148;
  v153[1] = v149;
  sub_243A2251C(v153, &qword_27ED9A748, &qword_243ACAB78);
  *&v148 = v130;
  *(&v148 + 1) = v134;
  sub_243AC2068();
  v54 = v135;
  v55 = [v135 subTitle];

  v56 = sub_243AC2858();
  v58 = v57;

  v60 = HIBYTE(v58) & 0xF;
  if ((v58 & 0x2000000000000000) == 0)
  {
    v60 = v56 & 0xFFFFFFFFFFFFLL;
  }

  if (v60)
  {
    MEMORY[0x28223BE20](v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A798, &qword_243ACABA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A7A0, &qword_243ACABA8);
    sub_243AB1028(&qword_27ED9A7A8, &qword_27ED9A798, &qword_243ACABA0, sub_243AB16B8);
    sub_243AB17DC();
    v61 = v112;
    sub_243AC2048();
    sub_243A491E8(&qword_27ED9A7E8, &qword_27ED9A728, &qword_243ACAB28);
    sub_243AB1894();
    v62 = v113;
    v63 = v115;
    sub_243AC1E78();
    (*(v114 + 8))(v61, v63);
    v64 = sub_243AC1C78();
    sub_243AC1718();
    v65 = v124;
    v66 = v62 + *(v124 + 36);
    *v66 = v64;
    *(v66 + 8) = v67;
    *(v66 + 16) = v68;
    *(v66 + 24) = v69;
    *(v66 + 32) = v70;
    *(v66 + 40) = 0;
    v71 = v132;
    sub_243A22814(v62, v132, &qword_27ED9A730, &qword_243ACAB30);
    v72 = 0;
  }

  else
  {
    v72 = 1;
    v71 = v132;
    v65 = v124;
  }

  (*(v123 + 56))(v71, v72, 1, v65);
  v73 = v130;
  *&v148 = v130;
  *(&v148 + 1) = v134;
  sub_243AC2068();
  v74 = v135;
  v75 = [v135 message];

  v76 = sub_243AC2858();
  v78 = v77;

  *&v148 = v76;
  *(&v148 + 1) = v78;
  v79 = sub_243AC1D88();
  v81 = v80;
  v83 = v82;
  sub_243AC1C88();
  v84 = sub_243AC1D68();
  v123 = v85;
  v124 = v84;
  v87 = v86;
  v89 = v88;

  sub_243A82874(v79, v81, v83 & 1);

  sub_243AC2148();
  sub_243AC18E8();
  v90 = v89 & 1;
  v146 = v89 & 1;
  v91 = sub_243AC1FD8();
  v92 = swift_getKeyPath();
  *&v148 = v73;
  *(&v148 + 1) = v134;
  sub_243AC2068();
  v93 = v135;
  v94 = [v135 status];

  if (!v94)
  {
    sub_243AC2858();
    goto LABEL_24;
  }

  v95 = sub_243AC2858();
  v97 = v96;

  v98 = sub_243AC2858();
  if (!v97)
  {
LABEL_24:

    goto LABEL_25;
  }

  if (v95 == v98 && v97 == v99)
  {

LABEL_29:
    v100 = 0x4028000000000000;
    goto LABEL_30;
  }

  v101 = sub_243AC2EE8();

  if (v101)
  {
    goto LABEL_29;
  }

LABEL_25:
  if (*(v133 + 18))
  {
    v100 = 0x4028000000000000;
  }

  else
  {
    v100 = 0;
  }

LABEL_30:
  v102 = sub_243AC1C48();
  v147 = 0;
  *&v135 = v124;
  *(&v135 + 1) = v87;
  LOBYTE(v136) = v90;
  *(&v136 + 1) = v123;
  v141 = v145[7];
  v142 = v145[8];
  v143 = v145[9];
  v137 = v145[3];
  v138 = v145[4];
  v140 = v145[6];
  v139 = v145[5];
  *&v144 = v92;
  *(&v144 + 1) = v91;
  LOBYTE(v145[0]) = v102;
  *(v145 + 8) = xmmword_243ACA780;
  *(&v145[1] + 1) = 0x4028000000000000;
  *&v145[2] = v100;
  BYTE8(v145[2]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A7F8, &qword_243ACABC8);
  sub_243AB140C(&qword_27ED9A800, &qword_27ED9A7F8, &qword_243ACABC8, sub_243AB18E8);
  v103 = v127;
  sub_243AC1EE8();
  v151 = v145[0];
  v152[0] = v145[1];
  *(v152 + 9) = *(&v145[1] + 9);
  v150[4] = v141;
  v150[5] = v142;
  v150[6] = v143;
  v150[7] = v144;
  v150[0] = v137;
  v150[1] = v138;
  v150[2] = v139;
  v150[3] = v140;
  v148 = v135;
  v149 = v136;
  sub_243A2251C(&v148, &qword_27ED9A7F8, &qword_243ACABC8);
  v104 = v131;
  v105 = v125;
  sub_243A224B4(v131, v125, &qword_27ED9A740, &qword_243ACAB40);
  v106 = v132;
  v107 = v126;
  sub_243A224B4(v132, v126, &qword_27ED9A738, &qword_243ACAB38);
  v108 = v129;
  sub_243A224B4(v103, v129, &qword_27ED9A720, &qword_243ACAB20);
  v109 = v128;
  sub_243A224B4(v105, v128, &qword_27ED9A740, &qword_243ACAB40);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A828, &qword_243ACABE0);
  sub_243A224B4(v107, v109 + *(v110 + 48), &qword_27ED9A738, &qword_243ACAB38);
  sub_243A224B4(v108, v109 + *(v110 + 64), &qword_27ED9A720, &qword_243ACAB20);
  sub_243A2251C(v103, &qword_27ED9A720, &qword_243ACAB20);
  sub_243A2251C(v106, &qword_27ED9A738, &qword_243ACAB38);
  sub_243A2251C(v104, &qword_27ED9A740, &qword_243ACAB40);
  sub_243A2251C(v108, &qword_27ED9A720, &qword_243ACAB20);
  sub_243A2251C(v107, &qword_27ED9A738, &qword_243ACAB38);
  return sub_243A2251C(v105, &qword_27ED9A740, &qword_243ACAB40);
}

uint64_t sub_243AADF54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A7C8, &qword_243ACABB8);
  v4 = *(v3 - 8);
  v41 = v3 - 8;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v39 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A7B8, &qword_243ACABB0);
  v7 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v9 = &v39 - v8;
  v10 = a1[1];
  *&v45 = *a1;
  *(&v45 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
  sub_243AC2068();
  v11 = v44;
  v12 = [v44 subTitle];

  v13 = sub_243AC2858();
  v15 = v14;

  *&v45 = v13;
  *(&v45 + 1) = v15;
  sub_243A4FC18();
  v16 = sub_243AC1D88();
  v18 = v17;
  v20 = v19;
  sub_243AC1C88();
  v21 = sub_243AC1D68();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_243A82874(v16, v18, v20 & 1);

  KeyPath = swift_getKeyPath();
  *&v45 = v21;
  *(&v45 + 1) = v23;
  v29 = v25 & 1;
  LOBYTE(v46) = v25 & 1;
  *(&v46 + 1) = v27;
  *&v47 = KeyPath;
  BYTE8(v47) = 0;
  sub_243AC1CC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A780, &qword_243ACAB90);
  sub_243AB15F8();
  v30 = v40;
  sub_243AC1E68();
  sub_243A82874(v21, v23, v29);

  v31 = sub_243AC1FD8();
  v32 = swift_getKeyPath();
  v33 = (v30 + *(v41 + 44));
  *v33 = v32;
  v33[1] = v31;
  sub_243AC2148();
  sub_243AC18E8();
  sub_243A22814(v30, v9, &qword_27ED9A7C8, &qword_243ACABB8);
  v34 = &v9[*(v42 + 36)];
  v35 = v50;
  *(v34 + 4) = v49;
  *(v34 + 5) = v35;
  *(v34 + 6) = v51;
  v36 = v46;
  *v34 = v45;
  *(v34 + 1) = v36;
  v37 = v48;
  *(v34 + 2) = v47;
  *(v34 + 3) = v37;
  sub_243AB16B8();
  sub_243AC1EE8();
  return sub_243A2251C(v9, &qword_27ED9A7B8, &qword_243ACABB0);
}

uint64_t sub_243AAE2BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_243AC2008();
  v3 = sub_243AC1CE8();
  KeyPath = swift_getKeyPath();
  result = sub_243AC1FA8();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  a1[3] = result;
  return result;
}

uint64_t sub_243AAE32C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_243AC2008();
  v3 = sub_243AC1CF8();
  KeyPath = swift_getKeyPath();
  v5 = [objc_opt_self() quaternaryLabelColor];
  v6 = sub_243AC1F78();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  a1[3] = result;
  a1[4] = v6;
  return result;
}

uint64_t sub_243AAE3CC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for Card();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A000, &unk_243AC9440);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v29 = &v28 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  sub_243AB0308(a1, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  sub_243AB0370(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_243AC20A8();
  sub_243AB0308(a1, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = swift_allocObject();
  sub_243AB0370(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v18);
  sub_243AC20A8();
  v21 = v7[2];
  v22 = v29;
  v21(v29, v17, v6);
  v23 = v30;
  v21(v30, v15, v6);
  v24 = v31;
  v21(v31, v22, v6);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A718, &qword_243ACAB18);
  v21(&v24[*(v25 + 48)], v23, v6);
  v26 = v7[1];
  v26(v15, v6);
  v26(v17, v6);
  v26(v23, v6);
  return (v26)(v22, v6);
}

uint64_t sub_243AAE750(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D28, &qword_243AC8810);
  return sub_243AC2078();
}

uint64_t sub_243AAE7AC@<X0>(uint64_t a1@<X8>)
{
  sub_243AC1A88();
  type metadata accessor for RecommendationsController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  result = sub_243AC1D78();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_243AAE884()
{
  sub_243AC2168();
  sub_243AC17F8();
}

void sub_243AAE8F0(uint64_t *a1)
{
  v2 = a1[7];
  v1 = a1[8];
  v3 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
  sub_243AC2068();
  v2();
}

uint64_t sub_243AAE970@<X0>(uint64_t a1@<X8>)
{
  sub_243AC1A88();
  type metadata accessor for RecommendationsController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_243AC1D78();
  v6 = v5;
  v8 = v7;
  sub_243AC1CB8();
  v9 = sub_243AC1D18();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_243A82874(v4, v6, v8 & 1);

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  return result;
}

double sub_243AAEAB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 19);
  sub_243AC1A88();
  type metadata accessor for RecommendationsController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_243AC1D78();
  sub_243AC1AE8();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_243AAEC10@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v86 = a3;
  v5 = sub_243AC24B8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v83 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_243AC24D8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v81 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C8, &unk_243AC6A10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v82 = &v69 - v13;
  v14 = sub_243AC25A8();
  v84 = *(v14 - 8);
  v85 = v14;
  v15 = *(v84 + 64);
  MEMORY[0x28223BE20](v14);
  v80 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_243AC1B28();
  v74 = *(v73 - 8);
  v17 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Card();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A5F0, &qword_243ACA9A8);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v69 - v26;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A5C8, &qword_243ACA990);
  v28 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v30 = (&v69 - v29);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A5C0, &qword_243ACA988);
  v77 = *(v76 - 8);
  v31 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  v71 = &v69 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A5B8, &qword_243ACA980);
  v34 = *(v33 - 8);
  v78 = v33;
  v79 = v34;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v75 = &v69 - v36;
  v37 = *a1;
  *v30 = sub_243AC2148();
  v30[1] = v38;
  v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A5F8, &qword_243ACA9B0) + 44);
  sub_243AB0308(a2, &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v40 = swift_allocObject();
  sub_243AB0370(&v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v39);
  *(v40 + ((v22 + v39 + 7) & 0xFFFFFFFFFFFFFFF8)) = v37;
  v87 = v37;
  v41 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A600, &qword_243ACA9B8);
  sub_243AB1028(&qword_27ED9A608, &qword_27ED9A600, &qword_243ACA9B8, sub_243AB0C24);
  sub_243AC20A8();
  sub_243AC1B18();
  sub_243A491E8(&qword_27ED9A620, &qword_27ED9A5F0, &qword_243ACA9A8);
  sub_243AB0CDC(&qword_27ED9A628, MEMORY[0x277CDE0B8]);
  v42 = v73;
  sub_243AC1E88();
  (*(v74 + 8))(v19, v42);
  (*(v24 + 8))(v27, v23);
  v43 = sub_243A491E8(&qword_27ED9A5D0, &qword_27ED9A5C8, &qword_243ACA990);
  v44 = v71;
  v45 = v72;
  sub_243AC1DF8();
  sub_243A2251C(v30, &qword_27ED9A5C8, &qword_243ACA990);
  v46 = v70[1];
  v89 = *v70;
  v90 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
  sub_243AC2068();
  v47 = v88;

  v48 = [v41 actionTitle];
  sub_243AC2858();

  v49 = v80;
  sub_243AC2598();
  sub_243AC24C8();
  v50 = MEMORY[0x277D84F90];
  sub_243A2E2B4(MEMORY[0x277D84F90]);
  sub_243AC24A8();
  sub_243A2E2B4(v50);
  sub_243A2E2B4(v50);
  v51 = v82;
  sub_243AC24E8();
  v52 = sub_243AC24F8();
  v53 = v51;
  (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
  v89 = v45;
  v90 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v75;
  v56 = v76;
  sub_243AC1DC8();
  sub_243A2251C(v53, &qword_27ED991C8, &unk_243AC6A10);
  (*(v84 + 8))(v49, v85);
  (*(v77 + 8))(v44, v56);
  v89 = v56;
  v90 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v57 = v86;
  v58 = v78;
  sub_243AC1DF8();
  (*(v79 + 8))(v55, v58);
  LOBYTE(v58) = sub_243AC1C68();
  sub_243AC1718();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A5A0, &qword_243ACA978);
  v68 = v57 + *(result + 36);
  *v68 = v58;
  *(v68 + 8) = v60;
  *(v68 + 16) = v62;
  *(v68 + 24) = v64;
  *(v68 + 32) = v66;
  *(v68 + 40) = 0;
  return result;
}

uint64_t sub_243AAF590()
{
  sub_243AC2168();
  sub_243AC17F8();
}

void sub_243AAF5FC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[5];
  v3 = a1[6];
  v6 = *a1;
  v7 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
  sub_243AC2068();
  v4(v5, a2);
}

uint64_t sub_243AAF684(void *a1)
{
  v1 = [a1 actionTitle];
  sub_243AC2858();

  sub_243A4FC18();
  v2 = sub_243AC1D88();
  v4 = v3;
  v6 = v5;
  v7 = sub_243AC1D58();
  v9 = v8;
  v11 = v10;
  sub_243A82874(v2, v4, v6 & 1);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A618, &unk_243ACA9C0);
  sub_243AB0C24();
  sub_243AC1EE8();
  sub_243A82874(v7, v9, v11 & 1);
}

uint64_t sub_243AAF7E0@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_243AC1B78();
  v25 = *(v1 - 8);
  v2 = v25;
  v3 = *(v25 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A538, &qword_243ACA908);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  sub_243AC1B68();
  v17 = sub_243AC1A58();
  v18 = &v16[*(v10 + 44)];
  *v18 = v17;
  v18[1] = sub_243AAFA50;
  v18[2] = 0;
  sub_243AC1B88();
  sub_243A224B4(v16, v14, &qword_27ED9A538, &qword_243ACA908);
  v19 = *(v2 + 16);
  v20 = v1;
  v19(v6, v8, v1);
  v21 = v26;
  sub_243A224B4(v14, v26, &qword_27ED9A538, &qword_243ACA908);
  v22 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A540, &unk_243ACA910) + 48);
  v19(v22, v6, v20);
  v23 = *(v25 + 8);
  v23(v8, v20);
  sub_243A2251C(v16, &qword_27ED9A538, &qword_243ACA908);
  v23(v6, v20);
  return sub_243A2251C(v14, &qword_27ED9A538, &qword_243ACA908);
}

double sub_243AAFA50()
{
  v0 = sub_243AC1A58();
  v1 = MEMORY[0x245D45C20](v0);
  sub_243AC1848();
  return v1 + v2 * 0.08;
}

uint64_t sub_243AAFA98@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_243AC1A58();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A530, &qword_243ACA900);
  return sub_243AAF7E0(a1 + *(v2 + 44));
}

uint64_t sub_243AAFAF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243AC19B8();
  *a1 = result;
  return result;
}

uint64_t sub_243AAFB44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243AC19D8();
  *a1 = result;
  return result;
}

uint64_t sub_243AAFB70(uint64_t *a1)
{
  v1 = *a1;

  return sub_243AC19E8();
}

unint64_t sub_243AAFB9C()
{
  result = qword_27ED9A4A8;
  if (!qword_27ED9A4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A490, &qword_243ACA810);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A480, &qword_243ACA800);
    sub_243AAFC90();
    swift_getOpaqueTypeConformance2();
    sub_243A491E8(&qword_27ED99160, &qword_27ED99168, &qword_243AC5E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A4A8);
  }

  return result;
}

unint64_t sub_243AAFC90()
{
  result = qword_27ED9A4B0;
  if (!qword_27ED9A4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A480, &qword_243ACA800);
    sub_243AAFD48();
    sub_243A491E8(&qword_27ED9A2D8, &qword_27ED9A2E0, &qword_243AC9EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A4B0);
  }

  return result;
}

unint64_t sub_243AAFD48()
{
  result = qword_27ED9A4B8;
  if (!qword_27ED9A4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A478, &qword_243ACA7F8);
    sub_243AAFE00();
    sub_243A491E8(&qword_27ED99C48, &qword_27ED99C50, &qword_243AC8690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A4B8);
  }

  return result;
}

unint64_t sub_243AAFE00()
{
  result = qword_27ED9A4C0;
  if (!qword_27ED9A4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A470, &qword_243ACA7F0);
    sub_243AAFEB8();
    sub_243A491E8(&qword_27ED99B70, &qword_27ED99B78, &qword_243AC8530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A4C0);
  }

  return result;
}

unint64_t sub_243AAFEB8()
{
  result = qword_27ED9A4C8;
  if (!qword_27ED9A4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A468, &qword_243ACA7E8);
    sub_243A491E8(&qword_27ED9A4D0, &qword_27ED9A460, &qword_243ACA7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A4C8);
  }

  return result;
}

unint64_t sub_243AAFF70()
{
  result = qword_27ED9A4D8;
  if (!qword_27ED9A4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A450, &qword_243ACA7D0);
    sub_243AB0028();
    sub_243A491E8(&qword_27ED9A2D8, &qword_27ED9A2E0, &qword_243AC9EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A4D8);
  }

  return result;
}

unint64_t sub_243AB0028()
{
  result = qword_27ED9A4E0;
  if (!qword_27ED9A4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A448, &qword_243ACA7C8);
    sub_243AB00E0();
    sub_243A491E8(&qword_27ED99C48, &qword_27ED99C50, &qword_243AC8690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A4E0);
  }

  return result;
}

unint64_t sub_243AB00E0()
{
  result = qword_27ED9A4E8;
  if (!qword_27ED9A4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A440, &qword_243ACA7C0);
    sub_243AB0198();
    sub_243A491E8(&qword_27ED99B70, &qword_27ED99B78, &qword_243AC8530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A4E8);
  }

  return result;
}

unint64_t sub_243AB0198()
{
  result = qword_27ED9A4F0;
  if (!qword_27ED9A4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A438, &qword_243ACA7B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A428, &qword_243ACA7A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A420, &qword_243ACA7A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A418, &qword_243ACA798);
    sub_243A491E8(&qword_27ED9A4A0, &qword_27ED9A418, &qword_243ACA798);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A4F0);
  }

  return result;
}

uint64_t sub_243AB0308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Card();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243AB0370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Card();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243AB0424(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A4F8, qword_243ACA878);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_243AB04F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A4F8, qword_243ACA878);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_243AB05A4()
{
  sub_243AB066C();
  if (v0 <= 0x3F)
  {
    sub_243A9B55C();
    if (v1 <= 0x3F)
    {
      sub_243A4D158();
      if (v2 <= 0x3F)
      {
        sub_243AB06D4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_243AB066C()
{
  if (!qword_27ED9A510)
  {
    sub_243A2CFF0(255, &qword_27ED98F70, 0x277CFB1B0);
    v0 = sub_243AC2098();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED9A510);
    }
  }
}

void sub_243AB06D4()
{
  if (!qword_27ED9A518)
  {
    sub_243AC1738();
    v0 = sub_243AC1748();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED9A518);
    }
  }
}

unint64_t sub_243AB0730()
{
  result = qword_27ED9A520;
  if (!qword_27ED9A520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A528, &unk_243ACA8A0);
    sub_243AAFB9C();
    sub_243AAFF70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A520);
  }

  return result;
}

uint64_t sub_243AB07E8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Card() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243AAEC10(a1, v6, a2);
}

unint64_t sub_243AB0868()
{
  result = qword_27ED9A5B0;
  if (!qword_27ED9A5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A5A0, &qword_243ACA978);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A5B8, &qword_243ACA980);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A5C0, &qword_243ACA988);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A5C8, &qword_243ACA990);
    sub_243A491E8(&qword_27ED9A5D0, &qword_27ED9A5C8, &qword_243ACA990);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A5B0);
  }

  return result;
}

unint64_t sub_243AB09D8()
{
  result = qword_27ED9A5D8;
  if (!qword_27ED9A5D8)
  {
    sub_243A2CFF0(255, &qword_27ED98B88, 0x277CFB1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A5D8);
  }

  return result;
}

uint64_t sub_243AB0A40()
{
  v1 = (type metadata accessor for Card() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 32);

  v8 = *(v0 + v3 + 48);

  v9 = *(v0 + v3 + 64);

  v10 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C0, &unk_243AC5EE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_243AC1738();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v13 + 8, v2 | 7);
}

uint64_t sub_243AB0B90()
{
  v1 = *(type metadata accessor for Card() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_243AAF590();
}

unint64_t sub_243AB0C24()
{
  result = qword_27ED9A610;
  if (!qword_27ED9A610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A618, &unk_243ACA9C0);
    sub_243A491E8(&qword_27ED99CE0, &qword_27ED99CE8, &qword_243AC8770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A610);
  }

  return result;
}

uint64_t sub_243AB0CDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243AB0D24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243AC19B8();
  *a1 = result;
  return result;
}

unint64_t sub_243AB0E00()
{
  result = qword_27ED9A6A0;
  if (!qword_27ED9A6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A698, &qword_243ACAA68);
    sub_243AB0EB8();
    sub_243A491E8(&qword_27ED993E8, &qword_27ED993F0, &unk_243ACAA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A6A0);
  }

  return result;
}

unint64_t sub_243AB0EB8()
{
  result = qword_27ED9A6A8;
  if (!qword_27ED9A6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A6B0, &qword_243ACAA70);
    sub_243A491E8(&qword_27ED9A6B8, &qword_27ED9A6C0, &qword_243ACAA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A6A8);
  }

  return result;
}

unint64_t sub_243AB0F70()
{
  result = qword_27ED9A6C8;
  if (!qword_27ED9A6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A638, &qword_243ACAA08);
    sub_243A491E8(&qword_27ED9A6D0, &qword_27ED9A630, &qword_243ACAA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A6C8);
  }

  return result;
}

uint64_t sub_243AB1028(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_243AB0CDC(&qword_27ED9A2E8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243AB10EC()
{
  result = qword_27ED9A6F8;
  if (!qword_27ED9A6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A6E8, &qword_243ACAA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A6F8);
  }

  return result;
}

uint64_t sub_243AB1168@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243AC19D8();
  *a1 = result;
  return result;
}

uint64_t sub_243AB1194(uint64_t *a1)
{
  v1 = *a1;

  return sub_243AC19E8();
}

uint64_t objectdestroyTm_11()
{
  v1 = (type metadata accessor for Card() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 32);

  v8 = *(v0 + v3 + 48);

  v9 = *(v0 + v3 + 64);

  v10 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C0, &unk_243AC5EE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_243AC1738();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243AB1324(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for Card() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_243AB13B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243AC1978();
  *a1 = result & 1;
  return result;
}

uint64_t sub_243AB140C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243AB1490()
{
  result = qword_27ED9A758;
  if (!qword_27ED9A758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A760, &qword_243ACAB80);
    sub_243AB1574(&qword_27ED9A768, &qword_27ED9A770, &qword_243ACAB88, sub_243AB15F8);
    sub_243A491E8(&qword_27ED993E8, &qword_27ED993F0, &unk_243ACAA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A758);
  }

  return result;
}

uint64_t sub_243AB1574(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243AB15F8()
{
  result = qword_27ED9A778;
  if (!qword_27ED9A778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A780, &qword_243ACAB90);
    sub_243A491E8(&qword_27ED9A788, &qword_27ED9A790, &qword_243ACAB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A778);
  }

  return result;
}

unint64_t sub_243AB16E8()
{
  result = qword_27ED9A7C0;
  if (!qword_27ED9A7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A7C8, &qword_243ACABB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A780, &qword_243ACAB90);
    sub_243AB15F8();
    swift_getOpaqueTypeConformance2();
    sub_243A491E8(&qword_27ED993E8, &qword_27ED993F0, &unk_243ACAA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A7C0);
  }

  return result;
}

unint64_t sub_243AB17DC()
{
  result = qword_27ED9A7D0;
  if (!qword_27ED9A7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A7A0, &qword_243ACABA8);
    sub_243AB0EB8();
    sub_243A491E8(&qword_27ED9A7D8, &qword_27ED9A7E0, &qword_243ACABC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A7D0);
  }

  return result;
}

unint64_t sub_243AB1894()
{
  result = qword_27ED9A7F0;
  if (!qword_27ED9A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A7F0);
  }

  return result;
}

unint64_t sub_243AB18E8()
{
  result = qword_27ED9A808;
  if (!qword_27ED9A808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A810, &qword_243ACABD0);
    sub_243AB19A0();
    sub_243A491E8(&qword_27ED993E8, &qword_27ED993F0, &unk_243ACAA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A808);
  }

  return result;
}

unint64_t sub_243AB19A0()
{
  result = qword_27ED9A818;
  if (!qword_27ED9A818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A820, &qword_243ACABD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A818);
  }

  return result;
}

void sub_243AB1A78(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void *DataclassAction.__allocating_init(account:presenter:)(void *a1, void *a2)
{
  swift_allocObject();
  v4 = sub_243AB3EE8(a1);

  return v4;
}

uint64_t DataclassAction.handle(recommendation:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_243AB1B60, 0, 0);
}

uint64_t sub_243AB1B60()
{
  v1 = [*(v0 + 16) identifier];
  sub_243AC2858();

  v2 = sub_243A5B5E4();
  if (v2 == 14)
  {
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *v5 = v0;
    v5[1] = sub_243A276B4;
    v6 = *(v0 + 24);

    return sub_243AB1E70(0);
  }

  else if (v2 == 4)
  {
    v3 = swift_task_alloc();
    *(v0 + 32) = v3;
    *v3 = v0;
    v3[1] = sub_243AB1D34;

    return sub_243AB3F98();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 48) = v7;
    *v7 = v0;
    v7[1] = sub_243A284D4;
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);

    return sub_243AB26E8(v8);
  }
}

uint64_t sub_243AB1D34(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void *DataclassAction.init(account:presenter:)(void *a1, void *a2)
{
  v4 = sub_243AB3EE8(a1);

  return v4;
}

uint64_t sub_243AB1E70(char a1)
{
  *(v2 + 192) = v1;
  *(v2 + 225) = a1;
  return MEMORY[0x2822009F8](sub_243AB1E94, 0, 0);
}

uint64_t sub_243AB1E94()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_243AB1FC0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AB8, qword_243AC83F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_243ABE710;
  v0[13] = &block_descriptor_9;
  v0[14] = v2;
  [v1 setUserVisibleKeychainSyncEnabled:1 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_243AB1FC0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_243AB20E8;
  }

  else
  {
    v3 = sub_243AB20D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_243AB20E8()
{
  v42 = v0;
  v1 = *(v0 + 200);
  swift_willThrow();
  *(v0 + 168) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C10, &qword_243AC4C60);
  sub_243A2CFF0(0, &qword_27ED98FA0, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v3 = *(v0 + 176);
  *(v0 + 208) = v3;
  v4 = [v3 domain];
  v5 = sub_243AC2858();
  v7 = v6;

  v8 = *MEMORY[0x277CFD418];
  if (v5 == sub_243AC2858() && v7 == v9)
  {
  }

  else
  {
    v11 = sub_243AC2EE8();

    if ((v11 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if ([v3 code] != -5700)
  {
LABEL_18:

LABEL_19:
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 200);
    v23 = sub_243AC1468();
    __swift_project_value_buffer(v23, qword_27EDA14A8);
    v24 = v22;
    v25 = sub_243AC1448();
    v26 = sub_243AC2B58();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 200);
    if (v27)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v41 = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v32 = *(v0 + 144);
      v31 = *(v0 + 152);
      v33 = *(v0 + 160);
      v34 = sub_243AC2F58();
      v36 = sub_243AB73D8(v34, v35, &v41);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_243A1B000, v25, v26, "Could not enable keychain %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x245D47D20](v30, -1, -1);
      MEMORY[0x245D47D20](v29, -1, -1);
    }

    else
    {
    }

LABEL_24:
    v37 = *(v0 + 8);

    return v37(0);
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v12 = sub_243AC1468();
  __swift_project_value_buffer(v12, qword_27EDA14A8);
  v13 = sub_243AC1448();
  v14 = sub_243AC2B48();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_243A1B000, v13, v14, "CDP Flow Repair is needed. Initiating repair flow.", v15, 2u);
    MEMORY[0x245D47D20](v15, -1, -1);
  }

  v16 = *(v0 + 225);

  if (v16 == 1)
  {
    v17 = sub_243AC1448();
    v18 = sub_243AC2B58();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 200);
    if (v19)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_243A1B000, v17, v18, "CDP repair flow did not work. Bailing.", v21, 2u);
      MEMORY[0x245D47D20](v21, -1, -1);
    }

    goto LABEL_24;
  }

  v39 = swift_task_alloc();
  *(v0 + 216) = v39;
  *v39 = v0;
  v39[1] = sub_243AB2584;
  v40 = *(v0 + 192);

  return sub_243AB2DC0();
}

uint64_t sub_243AB2584()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_243AB2680, 0, 0);
}

uint64_t sub_243AB2680()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_243AB26E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_243AB2708, 0, 0);
}

uint64_t sub_243AB2708()
{
  v45 = v0;
  v1 = [*(v0 + 16) actions];
  sub_243A2CFF0(0, &qword_27ED98B88, 0x277CFB1B8);
  v2 = sub_243AC2998();

  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_18:

LABEL_19:
    if (qword_27ED98910 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  if (!sub_243AC2DF8())
  {
    goto LABEL_18;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x245D470F0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_27:
      swift_once();
LABEL_20:
      v30 = *(v0 + 16);
      v31 = sub_243AC1468();
      __swift_project_value_buffer(v31, qword_27EDA14A8);
      v32 = v30;
      v20 = sub_243AC1448();
      v33 = sub_243AC2B58();

      if (os_log_type_enabled(v20, v33))
      {
        v34 = *(v0 + 16);
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v44 = v36;
        *v35 = 136315138;
        v37 = [v34 identifier];
        v38 = sub_243AC2858();
        v40 = v39;

        v41 = sub_243AB73D8(v38, v40, &v44);

        *(v35 + 4) = v41;
        _os_log_impl(&dword_243A1B000, v20, v33, "Provided action is not a dataclass action for recommendation %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x245D47D20](v36, -1, -1);
        MEMORY[0x245D47D20](v35, -1, -1);
      }

      goto LABEL_22;
    }

    v3 = *(v2 + 32);
  }

  v4 = v3;
  *(v0 + 32) = v3;

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

    goto LABEL_19;
  }

  v6 = [v5 dataclasses];
  v7 = sub_243AC2998();

  if (v7[2])
  {
    v9 = *(v0 + 16);
    v8 = *(v0 + 24);
    v10 = v7[4];
    v11 = v7[5];

    v12 = sub_243AC2818();
    *(v0 + 40) = v12;

    v13 = swift_task_alloc();
    *(v0 + 48) = v13;
    v13[2] = v8;
    v13[3] = v12;
    v13[4] = v9;
    v14 = *(MEMORY[0x277D859E0] + 4);
    v15 = swift_task_alloc();
    *(v0 + 56) = v15;
    *v15 = v0;
    v15[1] = sub_243AB2C3C;
    v16 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 64, 0, 0, 0xD000000000000021, 0x8000000243ACE670, sub_243AB455C, v13, v16);
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 16);
  v18 = sub_243AC1468();
  __swift_project_value_buffer(v18, qword_27EDA14A8);
  v19 = v17;
  v20 = sub_243AC1448();
  v21 = sub_243AC2B58();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 16);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v44 = v24;
    *v23 = 136315138;
    v25 = [v22 identifier];
    v26 = sub_243AC2858();
    v28 = v27;

    v29 = sub_243AB73D8(v26, v28, &v44);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_243A1B000, v20, v21, "Did not find any dataclasses to be enabled for %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x245D47D20](v24, -1, -1);
    MEMORY[0x245D47D20](v23, -1, -1);
  }

LABEL_22:
  v42 = *(v0 + 8);

  return v42(0);
}

uint64_t sub_243AB2C3C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_243AB2D54, 0, 0);
}

uint64_t sub_243AB2D54()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_243AB2DC0()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243AB2E5C, 0, 0);
}

uint64_t sub_243AB2E5C()
{
  v1 = v0[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[2];
    if (!*(v4 + 32))
    {
      type metadata accessor for KeychainRepairFlowHelper();
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v6 = *(v4 + 32);
      *(v4 + 32) = v5;

      v4 = v0[2];
    }

    v7 = v0[3];
    v8 = sub_243AC2A98();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_243AC2A58();

    v9 = sub_243AC2A48();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v4;
    sub_243A3306C(0, 0, v7, &unk_243ACAC88, v10);
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v12 = sub_243AC1468();
    __swift_project_value_buffer(v12, qword_27EDA14A8);
    v13 = sub_243AC1448();
    v14 = sub_243AC2B58();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_243A1B000, v13, v14, "Presenter is unavailable for CDP repair flow. Bailing!", v15, 2u);
      MEMORY[0x245D47D20](v15, -1, -1);
    }
  }

  v16 = v0[3];

  v17 = v0[1];

  return v17();
}

uint64_t sub_243AB3098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_243AC2A58();
  v4[3] = sub_243AC2A48();
  v6 = sub_243AC2A28();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_243AB3130, v6, v5);
}

uint64_t sub_243AB3130()
{
  v1 = *(v0[2] + 32);
  v0[6] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_243AB3210;

    return sub_243ABE7DC();
  }

  else
  {
    v4 = v0[3];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_243AB3210(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 72) = a1;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);

  return MEMORY[0x2822009F8](sub_243AB335C, v6, v5);
}

uint64_t sub_243AB335C()
{
  if (*(v0 + 72) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 64) = v1;
    *v1 = v0;
    v1[1] = sub_243AB3434;
    v2 = *(v0 + 16);

    return sub_243AB1E70(1);
  }

  else
  {
    v4 = *(v0 + 24);

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_243AB3434()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_243AB3554, v4, v3);
}

uint64_t sub_243AB3554()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

void sub_243AB35B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_243AB362C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  v13 = *(a2 + 16);
  [v13 setEnabled:1 forDataclass:a3];
  v14 = [*(a2 + 24) accountStore];
  (*(v9 + 16))(v12, a1, v8);
  v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  (*(v9 + 32))(v16 + v15, v12, v8);
  aBlock[4] = sub_243AB4638;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243AB35B4;
  aBlock[3] = &block_descriptor_23;
  v17 = _Block_copy(aBlock);
  v18 = a4;

  [v14 saveAccount:v13 withCompletionHandler:v17];
  _Block_release(v17);
}

void sub_243AB3838(int a1, id a2, void *a3)
{
  if (a2)
  {
    v5 = a2;
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v6 = sub_243AC1468();
    __swift_project_value_buffer(v6, qword_27EDA14A8);
    v7 = a2;
    v8 = a3;
    v9 = sub_243AC1448();
    v10 = sub_243AC2B58();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136315394;
      v13 = [v8 identifier];
      v14 = sub_243AC2858();
      v16 = v15;

      v17 = sub_243AB73D8(v14, v16, &v21);

      *(v11 + 4) = v17;
      *(v11 + 12) = 2080;
      swift_getErrorValue();
      v18 = sub_243AC2F58();
      v20 = sub_243AB73D8(v18, v19, &v21);

      *(v11 + 14) = v20;
      _os_log_impl(&dword_243A1B000, v9, v10, "Enable dataclass failed for recommendation %s with error %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D47D20](v12, -1, -1);
      MEMORY[0x245D47D20](v11, -1, -1);
    }

    LOBYTE(v21) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
    sub_243AC2A38();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
    sub_243AC2A38();
  }
}

void sub_243AB3A98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - v5;
  v7 = objc_opt_self();
  sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);
  v8 = sub_243AC2BC8();
  (*(v3 + 16))(v6, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v6, v2);
  aBlock[4] = sub_243AB43BC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243AB1A78;
  aBlock[3] = &block_descriptor_14;
  v11 = _Block_copy(aBlock);

  [v7 setUserTier:2 queue:v8 completionHandler:v11];
  _Block_release(v11);
}

void sub_243AB3C84(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v3 = sub_243AC1468();
    __swift_project_value_buffer(v3, qword_27EDA14A8);
    v4 = a1;
    v5 = sub_243AC1448();
    v6 = sub_243AC2B58();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_243AC2F58();
      v11 = sub_243AB73D8(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_243A1B000, v5, v6, "Unable to turn on private relay: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x245D47D20](v8, -1, -1);
      MEMORY[0x245D47D20](v7, -1, -1);
    }

    LOBYTE(v12) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
    sub_243AC2A38();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
    sub_243AC2A38();
  }
}

uint64_t DataclassAction.deinit()
{
  v1 = *(v0 + 32);

  MEMORY[0x245D47DE0](v0 + 40);
  return v0;
}

uint64_t DataclassAction.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  MEMORY[0x245D47DE0](v0 + 40);

  return swift_deallocClassInstance();
}

void *sub_243AB3EE8(void *a1)
{
  v1[4] = 0;
  swift_unknownObjectWeakInit();
  v1[2] = a1;
  v3 = objc_opt_self();
  v4 = a1;
  result = [v3 defaultStore];
  if (result)
  {
    v6 = result;
    v7 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];

    v1[3] = v7;
    swift_unknownObjectWeakAssign();
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243AB3FB4()
{
  v1 = [objc_opt_self() sharedConnection];
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x2822007B8](v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = v1;
  v10 = [v1 isCloudPrivateRelayAllowed];

  if (v10)
  {
    v11 = *(MEMORY[0x277D859E0] + 4);
    v12 = swift_task_alloc();
    v0[2] = v12;
    *v12 = v0;
    v12[1] = sub_243AB41C4;
    v8 = MEMORY[0x277D839B0];
    v6 = sub_243AB3A98;
    v1 = v0 + 3;
    v5 = 0x8000000243ACE650;
    v2 = 0;
    v3 = 0;
    v4 = 0xD000000000000016;
    v7 = 0;

    return MEMORY[0x2822007B8](v1, v2, v3, v4, v5, v6, v7, v8);
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v13 = sub_243AC1468();
  __swift_project_value_buffer(v13, qword_27EDA14A8);
  v14 = sub_243AC1448();
  v15 = sub_243AC2B78();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_243A1B000, v14, v15, "Skipping Private Relay action because a restriction profile was detected", v16, 2u);
    MEMORY[0x245D47D20](v16, -1, -1);
  }

  v17 = v0[1];

  return v17(0);
}

uint64_t sub_243AB41C4()
{
  v1 = *(*v0 + 16);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_243AB42C0, 0, 0);
}

uint64_t sub_243AB4328()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_243AB43BC(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88) - 8) + 80);

  sub_243AB3C84(a1);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243AB4468()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_243AB44A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A1FEA8;

  return sub_243AB3098(a1, v4, v5, v6);
}

uint64_t sub_243AB4568()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_243AB4638(int a1, void *a2)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88) - 8) + 80);
  v6 = *(v2 + 16);

  sub_243AB3838(a1, a2, v6);
}

char *sub_243AB46E4()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for RecommendationsViewController();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = *&v3[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_recommendationsController];
  *&v3[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_recommendationsController] = v1;

  v5 = *&v3[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_account];
  *&v3[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_account] = v2;
  v6 = v2;

  return v3;
}

uint64_t sub_243AB4770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243AB4860();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_243AB47D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243AB4860();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_243AB4838()
{
  sub_243AB4860();
  sub_243AC1BF8();
  __break(1u);
}

unint64_t sub_243AB4860()
{
  result = qword_27ED9A840;
  if (!qword_27ED9A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A840);
  }

  return result;
}

id CELiftUIDataSource.__allocating_init(account:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource____lazy_storage___backupDeviceUUID] = xmmword_243AC4E80;
  *&v3[OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource_account] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t CELiftUIDataSource.request(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243AC1328();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243AC1318();
  CELiftUIDataSource.request(for:timeZone:)(a1, v8, a2);
  return (*(v5 + 8))(v8, v4);
}

uint64_t CELiftUIDataSource.data(for:)(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = sub_243AC1328();
  v2[31] = v3;
  v4 = *(v3 - 8);
  v2[32] = v4;
  v5 = *(v4 + 64) + 15;
  v2[33] = swift_task_alloc();
  v6 = sub_243AC1058();
  v2[34] = v6;
  v7 = *(v6 - 8);
  v2[35] = v7;
  v8 = *(v7 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243AB4B74, 0, 0);
}

uint64_t sub_243AB4B74()
{
  v26 = v0;
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v1 = v0[42];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[29];
  v5 = sub_243AC1468();
  v0[43] = __swift_project_value_buffer(v5, qword_27EDA14A8);
  v6 = *(v3 + 16);
  v0[44] = v6;
  v0[45] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_243AC1448();
  v8 = sub_243AC2B48();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[42];
  v12 = v0[34];
  v11 = v0[35];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v13 = 136315138;
    sub_243AB796C();
    v14 = sub_243AC2EB8();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_243AB73D8(v14, v16, &v25);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_243A1B000, v7, v8, "Fetching data for LiftUI request %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x245D47D20](v24, -1, -1);
    MEMORY[0x245D47D20](v13, -1, -1);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[46] = v17;
  v19 = objc_opt_self();
  v0[47] = v19;
  v0[48] = [v19 sharedSession];
  v20 = *(MEMORY[0x277CC9D18] + 4);
  v21 = swift_task_alloc();
  v0[49] = v21;
  *v21 = v0;
  v21[1] = sub_243AB4DFC;
  v22 = v0[29];

  return MEMORY[0x28211ECF8](v22, 0);
}

uint64_t sub_243AB4DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 392);
  v9 = *v4;
  *(v7 + 400) = a3;
  *(v7 + 408) = v3;

  if (v3)
  {
    v10 = sub_243AB6098;
  }

  else
  {

    *(v7 + 416) = a2;
    *(v7 + 424) = a1;
    v10 = sub_243AB4F38;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_243AB4F38()
{
  v62 = v0;
  *(v0 + 200) = vextq_s8(*(v0 + 416), *(v0 + 416), 8uLL);
  v3 = (v0 + 200);
  v4 = *(v0 + 400);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = *(v0 + 400);
    if ([v6 statusCode] == 401)
    {
      v8 = *(v0 + 360);
      v9 = *(v0 + 344);
      (*(v0 + 352))(*(v0 + 328), *(v0 + 232), *(v0 + 272));
      v3 = sub_243AC1448();
      v10 = sub_243AC2B78();
      v11 = os_log_type_enabled(v3, v10);
      v2 = *(v0 + 368);
      v12 = *(v0 + 328);
      v1 = *(v0 + 272);
      v13 = *(v0 + 280);
      if (v11)
      {
        v14 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v61 = v59;
        *v14 = 136315138;
        sub_243AB796C();
        v15 = sub_243AC2EB8();
        v17 = v16;
        v2(v12, v1);
        v18 = sub_243AB73D8(v15, v17, &v61);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_243A1B000, v3, v10, "LiftUI auth failure. Renewing credentials for request %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x245D47D20](v59, -1, -1);
        MEMORY[0x245D47D20](v14, -1, -1);

        goto LABEL_16;
      }

LABEL_15:

      v2(v12, v1);
LABEL_16:
      v35 = [objc_allocWithZone(MEMORY[0x277CFB200]) init];
      *(v0 + 432) = v35;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 216;
      *(v0 + 24) = sub_243AB54C4;
      v36 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A860, &unk_243ACADE8);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_243AB6ED0;
      *(v0 + 104) = &block_descriptor_15;
      *(v0 + 112) = v36;
      [v35 renewCredentialsWithCompletion_];
      v25 = v0 + 16;

      return MEMORY[0x282200938](v25);
    }
  }

  v20 = *(v0 + 416);
  v19 = *(v0 + 424);
  v21 = *(v0 + 360);
  v22 = *(v0 + 344);
  (*(v0 + 352))(*(v0 + 288), *(v0 + 232), *(v0 + 272));
  sub_243A88590(v19, v20);
  v23 = sub_243AC1448();
  v12 = sub_243AC2B48();
  if (os_log_type_enabled(v23, v12))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v58 = v25;
    v61 = v25;
    *v24 = 134218242;
    v26 = v20 >> 62;
    v60 = v12;
    if ((v20 >> 62) > 1)
    {
      if (v26 == 2)
      {
        v33 = *(v19 + 16);
        v32 = *(v19 + 24);
        v34 = __OFSUB__(v32, v33);
        v27 = v32 - v33;
        if (v34)
        {
          __break(1u);
          goto LABEL_15;
        }
      }

      else
      {
        v27 = 0;
      }
    }

    else if (v26)
    {
      LODWORD(v27) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        __break(1u);
        return MEMORY[0x282200938](v25);
      }

      v27 = v27;
    }

    else
    {
      v27 = BYTE6(v20);
    }

    v57 = *(v0 + 400);
    v37 = *(v0 + 368);
    v39 = *(v0 + 280);
    v38 = *(v0 + 288);
    v40 = *(v0 + 272);
    *(v24 + 4) = v27;
    sub_243A200C8(v19, v20);
    *(v24 + 12) = 2080;
    sub_243AB796C();
    v41 = sub_243AC2EB8();
    v43 = v42;
    v37(v38, v40);
    v44 = sub_243AB73D8(v41, v43, &v61);

    *(v24 + 14) = v44;
    _os_log_impl(&dword_243A1B000, v23, v60, "Finished fetching data (%ld bytes) for LiftUI request %s", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x245D47D20](v58, -1, -1);
    MEMORY[0x245D47D20](v24, -1, -1);
  }

  else
  {
    v28 = *(v0 + 368);
    v30 = *(v0 + 280);
    v29 = *(v0 + 288);
    v31 = *(v0 + 272);

    sub_243A200C8(v19, v20);
    v28(v29, v31);
  }

  swift_beginAccess();
  v46 = *(v0 + 200);
  v45 = *(v0 + 208);
  sub_243A88590(v46, v45);
  sub_243A200C8(v46, v45);
  v48 = *(v0 + 328);
  v47 = *(v0 + 336);
  v50 = *(v0 + 312);
  v49 = *(v0 + 320);
  v52 = *(v0 + 296);
  v51 = *(v0 + 304);
  v53 = *(v0 + 288);
  v54 = *(v0 + 264);

  v55 = *(v0 + 8);

  return v55(v46, v45);
}

uint64_t sub_243AB54C4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 440) = v2;
  if (v2)
  {
    v3 = sub_243AB6164;
  }

  else
  {
    v3 = sub_243AB55D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_243AB55D4()
{
  v75 = v0;
  v1 = *(v0 + 216);

  if (v1)
  {
    v2 = *(v0 + 360);
    v3 = *(v0 + 344);
    (*(v0 + 352))(*(v0 + 296), *(v0 + 232), *(v0 + 272));
    v4 = sub_243AC1448();
    v5 = sub_243AC2B58();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 400);
    v8 = *(v0 + 368);
    v9 = *(v0 + 296);
    v10 = *(v0 + 272);
    v11 = *(v0 + 280);
    if (v6)
    {
      v73 = *(v0 + 400);
      v12 = swift_slowAlloc();
      v69 = v8;
      v13 = swift_slowAlloc();
      v74 = v13;
      *v12 = 136315138;
      sub_243AB796C();
      v14 = sub_243AC2EB8();
      v16 = v15;
      v69(v9, v10);
      v17 = sub_243AB73D8(v14, v16, &v74);

      *(v12 + 4) = v17;
      v18 = "Failed to renew credentials for request %s";
LABEL_9:
      _os_log_impl(&dword_243A1B000, v4, v5, v18, v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x245D47D20](v13, -1, -1);
      MEMORY[0x245D47D20](v12, -1, -1);

LABEL_11:
      v50 = *(v0 + 200);
      v51 = *(v0 + 208);
      v53 = *(v0 + 328);
      v52 = *(v0 + 336);
      v55 = *(v0 + 312);
      v54 = *(v0 + 320);
      v57 = *(v0 + 296);
      v56 = *(v0 + 304);
      v58 = *(v0 + 288);
      v59 = *(v0 + 264);

      v60 = *(v0 + 8);

      return v60(v50, v51);
    }

    goto LABEL_10;
  }

  v19 = *(v0 + 232);
  v20 = sub_243AC1018();
  [v20 mutableCopy];

  sub_243AC2C68();
  swift_unknownObjectRelease();
  sub_243AB79DC();
  v21 = swift_dynamicCast();
  v23 = *(v0 + 352);
  v22 = *(v0 + 360);
  v24 = *(v0 + 272);
  if (!v21)
  {
    v23(*(v0 + 304), *(v0 + 232), *(v0 + 272));
    v4 = sub_243AC1448();
    v5 = sub_243AC2B58();
    v44 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 400);
    v8 = *(v0 + 368);
    v9 = *(v0 + 304);
    v10 = *(v0 + 272);
    v45 = *(v0 + 280);
    if (v44)
    {
      v73 = *(v0 + 400);
      v12 = swift_slowAlloc();
      v72 = v8;
      v13 = swift_slowAlloc();
      v74 = v13;
      *v12 = 136315138;
      sub_243AB796C();
      v46 = sub_243AC2EB8();
      v48 = v47;
      v72(v9, v10);
      v49 = sub_243AB73D8(v46, v48, &v74);

      *(v12 + 4) = v49;
      v18 = "Failed to renew credentials for request %s. Unable to rerun request.";
      goto LABEL_9;
    }

LABEL_10:

    v8(v9, v10);
    goto LABEL_11;
  }

  v68 = *(v0 + 320);
  v70 = *(v0 + 344);
  v26 = *(v0 + 256);
  v25 = *(v0 + 264);
  v27 = *(v0 + 240);
  v66 = *(v0 + 248);
  v67 = *(v0 + 232);
  *(v0 + 448) = *(v0 + 224);
  v28 = *(v27 + OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource_account);
  v29 = sub_243AB6330();
  v31 = v30;
  sub_243AC1318();
  sub_243AB67BC(v28, v29, v31);

  (*(v26 + 8))(v25, v66);
  v23(v68, v67, v24);
  v32 = sub_243AC1448();
  v33 = sub_243AC2B78();
  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v0 + 368);
  v36 = *(v0 + 320);
  v38 = *(v0 + 272);
  v37 = *(v0 + 280);
  if (v34)
  {
    v39 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v74 = v71;
    *v39 = 136315138;
    sub_243AB796C();
    v40 = sub_243AC2EB8();
    v42 = v41;
    v35(v36, v38);
    v43 = sub_243AB73D8(v40, v42, &v74);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_243A1B000, v32, v33, "Renewing credentials succeeded for request %s, retrying", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v71);
    MEMORY[0x245D47D20](v71, -1, -1);
    MEMORY[0x245D47D20](v39, -1, -1);
  }

  else
  {

    v35(v36, v38);
  }

  v62 = *(v0 + 312);
  *(v0 + 456) = [*(v0 + 376) sharedSession];
  sub_243AC1028();
  v63 = *(MEMORY[0x277CC9D18] + 4);
  v64 = swift_task_alloc();
  *(v0 + 464) = v64;
  *v64 = v0;
  v64[1] = sub_243AB5BC0;
  v65 = *(v0 + 312);

  return MEMORY[0x28211ECF8](v65, 0);
}

uint64_t sub_243AB5BC0(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  v9 = *(*v4 + 464);
  v10 = *v4;
  v8[59] = v3;

  v11 = v8[57];
  v12 = v8[46];
  v13 = v8[39];
  v14 = v8[35];
  v15 = v8[34];
  if (v3)
  {
    v12(v13, v15);

    v16 = sub_243AB6250;
  }

  else
  {
    v8[60] = a2;
    v8[61] = a1;
    v12(v13, v15);

    v16 = sub_243AB5D8C;
  }

  return MEMORY[0x2822009F8](v16, 0, 0);
}

uint64_t sub_243AB5D8C()
{
  v44 = v0;
  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 448);

  sub_243A200C8(*(v0 + 200), *(v0 + 208));
  *(v0 + 200) = v1;
  *(v0 + 208) = v2;
  v5 = *(v0 + 480);
  v4 = *(v0 + 488);
  v6 = *(v0 + 360);
  v7 = *(v0 + 344);
  (*(v0 + 352))(*(v0 + 288), *(v0 + 232), *(v0 + 272));
  sub_243A88590(v4, v5);
  v8 = sub_243AC1448();
  v9 = sub_243AC2B48();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    result = swift_slowAlloc();
    v41 = result;
    v43 = result;
    *v10 = 134218242;
    v12 = v5 >> 62;
    v42 = v9;
    if ((v5 >> 62) > 1)
    {
      if (v12 != 2)
      {
        v13 = 0;
        goto LABEL_13;
      }

      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      v20 = __OFSUB__(v18, v19);
      v13 = v18 - v19;
      if (!v20)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v12)
    {
      v13 = BYTE6(v5);
LABEL_13:
      v40 = *(v0 + 400);
      v21 = *(v0 + 368);
      v23 = *(v0 + 280);
      v22 = *(v0 + 288);
      v24 = *(v0 + 272);
      *(v10 + 4) = v13;
      sub_243A200C8(v4, v5);
      *(v10 + 12) = 2080;
      sub_243AB796C();
      v25 = sub_243AC2EB8();
      v27 = v26;
      v21(v22, v24);
      v28 = sub_243AB73D8(v25, v27, &v43);

      *(v10 + 14) = v28;
      _os_log_impl(&dword_243A1B000, v8, v42, "Finished fetching data (%ld bytes) for LiftUI request %s", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x245D47D20](v41, -1, -1);
      MEMORY[0x245D47D20](v10, -1, -1);

      goto LABEL_14;
    }

    LODWORD(v13) = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
      __break(1u);
      return result;
    }

    v13 = v13;
    goto LABEL_13;
  }

  v14 = *(v0 + 368);
  v16 = *(v0 + 280);
  v15 = *(v0 + 288);
  v17 = *(v0 + 272);

  sub_243A200C8(v4, v5);
  v14(v15, v17);
LABEL_14:
  swift_beginAccess();
  v30 = *(v0 + 200);
  v29 = *(v0 + 208);
  sub_243A88590(v30, v29);
  sub_243A200C8(v30, v29);
  v32 = *(v0 + 328);
  v31 = *(v0 + 336);
  v34 = *(v0 + 312);
  v33 = *(v0 + 320);
  v36 = *(v0 + 296);
  v35 = *(v0 + 304);
  v37 = *(v0 + 288);
  v38 = *(v0 + 264);

  v39 = *(v0 + 8);

  return v39(v30, v29);
}

uint64_t sub_243AB6098()
{
  v1 = *(v0 + 408);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  v7 = *(v0 + 296);
  v6 = *(v0 + 304);
  v8 = *(v0 + 288);
  v9 = *(v0 + 264);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_243AB6164()
{
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[50];
  swift_willThrow();

  sub_243A200C8(v0[25], v0[26]);
  v4 = v0[55];
  v6 = v0[41];
  v5 = v0[42];
  v8 = v0[39];
  v7 = v0[40];
  v10 = v0[37];
  v9 = v0[38];
  v11 = v0[36];
  v12 = v0[33];

  v13 = v0[1];

  return v13();
}

uint64_t sub_243AB6250()
{
  v1 = v0[56];
  v2 = v0[50];

  sub_243A200C8(v0[25], v0[26]);
  v3 = v0[59];
  v5 = v0[41];
  v4 = v0[42];
  v7 = v0[39];
  v6 = v0[40];
  v9 = v0[37];
  v8 = v0[38];
  v10 = v0[36];
  v11 = v0[33];

  v12 = v0[1];

  return v12();
}

uint64_t sub_243AB6330()
{
  v1 = (v0 + OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource____lazy_storage___backupDeviceUUID);
  v2 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource____lazy_storage___backupDeviceUUID);
  v3 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource____lazy_storage___backupDeviceUUID + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CFB180]) initWithAccount_];
    v6 = [v5 backupDeviceUUID];
    v4 = sub_243AC2858();
    v8 = v7;

    v9 = *v1;
    v10 = v1[1];
    *v1 = v4;
    v1[1] = v8;

    sub_243AB7A78(v9, v10);
  }

  sub_243AB7A8C(v2, v3);
  return v4;
}

id CELiftUIDataSource.init(account:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource____lazy_storage___backupDeviceUUID] = xmmword_243AC4E80;
  *&v1[OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource_account] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

void CELiftUIDataSource.request(for:timeZone:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v34 = a2;
  v35 = a3;
  v7 = sub_243AC1208();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v12 = sub_243AC1468();
  __swift_project_value_buffer(v12, qword_27EDA14A8);
  v13 = *(v8 + 16);
  v33 = a1;
  v13(v11, a1, v7);
  v14 = sub_243AC1448();
  v15 = sub_243AC2B78();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v3;
    v18 = v17;
    v36 = v17;
    *v16 = 136315138;
    v19 = sub_243AC11B8();
    v32 = v4;
    v21 = v20;
    (*(v8 + 8))(v11, v7);
    v22 = sub_243AB73D8(v19, v21, &v36);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_243A1B000, v14, v15, "Loading LiftUI for url: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v23 = v18;
    v5 = v31;
    MEMORY[0x245D47D20](v23, -1, -1);
    MEMORY[0x245D47D20](v16, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v24 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v25 = sub_243AC11C8();
  v26 = [v24 initWithURL:v25 cachePolicy:1 timeoutInterval:30.0];

  v27 = *(v5 + OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource_account);
  v28 = sub_243AB6330();
  sub_243AB67BC(v27, v28, v29);

  sub_243AC1028();
}

void sub_243AB67BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = a2;
  v51 = a3;
  v6 = sub_243AC12B8();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_243AC12E8();
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_243AC1268();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v3 ak_addAnisetteHeaders];
  [v3 ak_addDeviceUDIDHeader];
  [v3 aa_addMultiUserDeviceHeaderIfEnabled];
  [v3 aa:a1 addBasicAuthorizationHeaderWithAccount:0 preferUsingPassword:?];
  [v3 aa_addClientInfoHeaders];
  [v3 aa_addDeviceIDHeader];
  v18 = sub_243AC2818();
  [v3 aa:v18 addContentTypeHeaders:?];

  sub_243AC1258();
  sub_243AC12F8();
  v20 = v19;
  v21 = *(v14 + 8);
  v21(v17, v13);
  if (v20)
  {
    v22 = sub_243AC2818();

    v23 = sub_243AC2818();
    [v3 setValue:v22 forHTTPHeaderField:v23];
  }

  if (sub_243AC2128())
  {
    v24 = sub_243AC2818();
    v25 = sub_243AC2818();
    [v3 setValue:v24 forHTTPHeaderField:v25];
  }

  sub_243AC1258();
  v26 = sub_243AC1308();
  v21(v17, v13);
  if ((v26 * 1000) >> 64 != (1000 * v26) >> 63)
  {
    __break(1u);
    goto LABEL_19;
  }

  v57 = 1000 * v26;
  sub_243AC2EB8();
  v27 = sub_243AC2818();

  v28 = sub_243AC2818();
  [v4 setValue:v27 forHTTPHeaderField:v28];

  sub_243AC12D8();
  v29 = v54;
  sub_243AC12C8();
  (*(v52 + 8))(v12, v53);
  sub_243AC12A8();
  (*(v55 + 8))(v29, v56);
  v30 = sub_243AC2818();

  v31 = sub_243AC2818();
  [v4 setValue:v30 forHTTPHeaderField:v31];

  v32 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v32 setDateStyle_];
  [v32 setTimeStyle_];
  v33 = [v32 dateFormat];
  if (!v33)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v34 = v33;

  v35 = sub_243AC2818();
  [v4 setValue:v34 forHTTPHeaderField:v35];

  v36 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v36 setDateStyle_];
  [v36 setTimeStyle_];
  v37 = [v36 dateFormat];
  if (!v37)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v38 = v37;

  v39 = sub_243AC2818();
  [v4 setValue:v38 forHTTPHeaderField:v39];

  if (v51)
  {
    v40 = sub_243AC2818();
    v41 = sub_243AC2818();
    [v4 setValue:v40 forHTTPHeaderField:v41];
  }

  v42 = [objc_opt_self() ams_sharedAccountStore];
  v43 = [v42 ams_activeiTunesAccount];
  if (v43)
  {
    v44 = v43;
    v45 = [v43 ams_DSID];
    if (v45)
    {
      v46 = v45;
      v47 = [v45 stringValue];
      if (!v47)
      {
        sub_243AC2858();
        v47 = sub_243AC2818();
      }

      v48 = sub_243AC2818();
      [v4 setValue:v47 forHTTPHeaderField:v48];

      v49 = v42;
      v42 = v44;
    }

    else
    {
      v49 = v44;
    }
  }
}

uint64_t sub_243AB6ED0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C10, &qword_243AC4C60);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

id CELiftUIDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CELiftUIDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_243AB70B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243AC1328();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243AC1318();
  CELiftUIDataSource.request(for:timeZone:)(a1, v8, a2);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_243AB71B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243AB7244;

  return CELiftUIDataSource.data(for:)(a1);
}

uint64_t sub_243AB7244(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_243AB737C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_243AB73D8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_243AB73D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_243AB74A4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_243A20058(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_243AB74A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_243AB75B0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_243AC2D48();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_243AB75B0(uint64_t a1, unint64_t a2)
{
  v4 = sub_243AB75FC(a1, a2);
  sub_243AB772C(&unk_2856B92F0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_243AB75FC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_243AB99B4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_243AC2D48();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_243AC28D8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_243AB99B4(v10, 0);
        result = sub_243AC2CF8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_243AB772C(uint64_t result)
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

  result = sub_243AB7818(result, v12, 1, v3);
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

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

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

char *sub_243AB7818(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED9A970, &unk_243ACAE80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_243AB790C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_243AB791C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_243AB793C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_243AB796C()
{
  result = qword_27ED9A858;
  if (!qword_27ED9A858)
  {
    sub_243AC1058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A858);
  }

  return result;
}

unint64_t sub_243AB79DC()
{
  result = qword_27ED9A868;
  if (!qword_27ED9A868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED9A868);
  }

  return result;
}

uint64_t sub_243AB7A78(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_243AB7A8C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_243AB7AA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_243AB7AE8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_243AB7B60@<X0>(void *a1@<X8>)
{
  sub_243A5A78C();
  result = sub_243AC1A38();
  *a1 = v3;
  return result;
}

uint64_t sub_243AB7BB0(void **a1)
{
  v1 = *a1;
  sub_243A5A78C();
  v2 = v1;
  return sub_243AC1A48();
}

uint64_t sub_243AB7C0C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 16) actions];
  sub_243A235B4();
  v4 = sub_243AC2998();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_19:

    v19 = *MEMORY[0x277CFB130];
    sub_243AC2858();
    goto LABEL_20;
  }

  result = sub_243AC2DF8();
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x245D470F0](0, v4);
LABEL_6:
    v7 = v6;

    v8 = [v7 actionType];

    v9 = sub_243AC2858();
    v11 = v10;

    v12 = *MEMORY[0x277CFB130];
    v13 = sub_243AC2858();
    if (v11)
    {
      if (v13 == v9 && v11 == v14)
      {

LABEL_11:

        sub_243AB7F90(&v26);
LABEL_12:

        sub_243AC1AE8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A870, &qword_243ACAF68);
        sub_243AB87A0();
        sub_243AC1AE8();

LABEL_22:
        v24 = v27;
        v25 = BYTE1(v27);
        *a1 = v26;
        *(a1 + 8) = v24;
        *(a1 + 9) = v25;
        return result;
      }

      v15 = sub_243AC2EE8();

      if (v15)
      {
        goto LABEL_11;
      }

      v16 = *MEMORY[0x277CFB138];
      if (sub_243AC2858() == v9 && v11 == v17)
      {

LABEL_17:
        sub_243AB856C(&v26);
        goto LABEL_12;
      }

      v18 = sub_243AC2EE8();

      if (v18)
      {
        goto LABEL_17;
      }

LABEL_21:
      sub_243AC1A88();
      v26 = sub_243AC1D78();
      v27 = v21;
      v28 = v22 & 1;
      v29 = v23;
      sub_243AC20C8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A870, &qword_243ACAF68);
      sub_243AB87A0();
      result = sub_243AC1AE8();
      goto LABEL_22;
    }

LABEL_20:

    v20 = *MEMORY[0x277CFB138];
    sub_243AC2858();

    goto LABEL_21;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_243AB7F90(uint64_t *a1@<X8>)
{
  v3 = sub_243AC1298();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_243AC1208();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_243AC1638();
  v55 = *(v57 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A880, &qword_243ACAF70);
  v56 = *(v13 - 8);
  v14 = *(v56 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A888, &qword_243ACAF78);
  v17 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v19 = &v48 - v18;
  v20 = *(v1 + 16);
  v21 = [v20 actions];
  sub_243A235B4();
  v22 = sub_243AC2998();

  if (!(v22 >> 62))
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!sub_243AC2DF8())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x245D470F0](0, v22);
    goto LABEL_6;
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v22 + 32);
LABEL_6:
    v24 = v23;

    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v26 = v25;
      v50 = *(v1 + 8);
      v51 = a1;
      v27 = *&v50[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_activeRecommendation];
      *&v50[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_activeRecommendation] = v20;

      v28 = [v26 actionURL];
      sub_243AC11D8();

      v29 = sub_243AC15F8();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      v48 = v13;
      sub_243AC15E8();
      v49 = v24;
      v32 = *(v1 + 32);

      sub_243AC1288();
      sub_243AC1278();
      (*(v53 + 8))(v6, v54);
      sub_243AC1628();
      v33 = *(v1 + 40);
      v34 = sub_243AB881C(&qword_27ED9A890, type metadata accessor for CELiftUIDataSource);
      v35 = sub_243AB881C(&qword_27ED9A898, MEMORY[0x277D23388]);
      v36 = v57;
      MEMORY[0x245D461E0](v33, v34, v57, v35);
      (*(v55 + 8))(v12, v36);
      v37 = sub_243A5A84C();
      v59 = v36;
      v60 = v35;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v39 = v48;
      MEMORY[0x245D461F0](v37, v48, OpaqueTypeConformance2);

      (*(v56 + 8))(v16, v39);
      KeyPath = swift_getKeyPath();
      v41 = &v19[*(v58 + 36)];
      v42 = v50;
      *v41 = KeyPath;
      v41[1] = v42;
      sub_243AB88B8();
      v43 = v42;
      a1 = v51;
      v44 = sub_243AC20C8();

LABEL_12:
      *a1 = v44;
      return;
    }

    v20 = v24;
LABEL_11:

    sub_243AC1A88();
    v59 = sub_243AC1D78();
    v60 = v45;
    v61 = v46 & 1;
    v62 = v47;
    v44 = sub_243AC20C8();
    goto LABEL_12;
  }

  __break(1u);
}

void sub_243AB856C(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = [v3 actions];
  sub_243A235B4();
  v5 = sub_243AC2998();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!sub_243AC2DF8())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x245D470F0](0, v5);
    goto LABEL_6;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);
LABEL_6:
    v7 = v6;

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v8 = *v1;
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v3;
      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      *(v10 + 24) = v3;
      v11 = type metadata accessor for RecommendationFlowControllerRepresentable.FlowControllerDelegate();
      v12 = objc_allocWithZone(v11);
      v13 = &v12[OBJC_IVAR____TtCV21CloudRecommendationUI41RecommendationFlowControllerRepresentable22FlowControllerDelegate_completion];
      *v13 = sub_243AB8A50;
      v13[1] = v9;
      v14 = &v12[OBJC_IVAR____TtCV21CloudRecommendationUI41RecommendationFlowControllerRepresentable22FlowControllerDelegate_cancellation];
      *v14 = sub_243AB8A58;
      v14[1] = v10;
      v17.receiver = v12;
      v17.super_class = v11;
      swift_retain_n();
      v3;
      v15 = v7;
      objc_msgSendSuper2(&v17, sel_init);
      sub_243A71E00();
      v16 = sub_243AC20C8();

LABEL_12:
      *a1 = v16;
      return;
    }

    v3 = v7;
LABEL_11:

    v16 = sub_243AC20C8();
    goto LABEL_12;
  }

  __break(1u);
}

unint64_t sub_243AB87A0()
{
  result = qword_27ED9A878;
  if (!qword_27ED9A878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A870, &qword_243ACAF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A878);
  }

  return result;
}

uint64_t sub_243AB881C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243AB8864@<X0>(void *a1@<X8>)
{
  sub_243A5A78C();
  result = sub_243AC1A38();
  *a1 = v3;
  return result;
}

unint64_t sub_243AB88B8()
{
  result = qword_27ED9A8A0;
  if (!qword_27ED9A8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A888, &qword_243ACAF78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A880, &qword_243ACAF70);
    sub_243AC1638();
    sub_243AB881C(&qword_27ED9A898, MEMORY[0x277D23388]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_243AB89E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A8A0);
  }

  return result;
}

unint64_t sub_243AB89E8()
{
  result = qword_27ED9A8A8;
  if (!qword_27ED9A8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A8B0, &qword_243ACAFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A8A8);
  }

  return result;
}

void sub_243AB8A60(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [objc_opt_self() defaultStore];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 aa_primaryAppleAccount];

    if (v10)
    {
      v11 = sub_243AC15C8();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      swift_allocObject();
      v14 = v10;
      v15 = sub_243AC15B8();
      v16 = type metadata accessor for CELiftUIDataSource();
      v17 = objc_allocWithZone(v16);
      *&v17[OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource____lazy_storage___backupDeviceUUID] = xmmword_243AC4E80;
      *&v17[OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource_account] = v14;
      v19.receiver = v17;
      v19.super_class = v16;
      v18 = objc_msgSendSuper2(&v19, sel_init);
      *a4 = a1;
      a4[1] = a3;
      a4[2] = a2;
      a4[3] = v14;
      a4[4] = v15;
      a4[5] = v18;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_243AB8B7C()
{
  result = qword_27ED9A8B8;
  if (!qword_27ED9A8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ED9A8C0, qword_243ACAFB0);
    sub_243AB87A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A8B8);
  }

  return result;
}

uint64_t sub_243AB8C0C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_243AC2D48();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_243AB9A28(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

id sub_243AB8F0C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_liftUIPresenter;
  v5 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_liftUIPresenter);
  if (v5)
  {
    goto LABEL_3;
  }

  v6 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_account);
  v7 = objc_allocWithZone(CELiftUIPresenter);
  v8 = v6;
  v9 = sub_243AC11C8();
  v10 = [v7 initWithURL:v9 account:v8 data:0];

  v11 = *(v2 + v4);
  *(v2 + v4) = v10;

  v5 = *(v2 + v4);
  if (v5)
  {
LABEL_3:
    [v5 setDelegate_];
  }

  v12 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_activeRecommendation);
  *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_activeRecommendation) = a1;
  v13 = a1;

  result = *(v2 + v4);
  if (result)
  {
    v15 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_presenter);

    return [result presentInViewController:v15 animated:1];
  }

  return result;
}

void sub_243AB9080(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_activeRecommendation);
  if (v2)
  {
    v3 = a1;
    if (a1)
    {
      v4 = v2;
      sub_243AC2CB8();
      if (*(v3 + 16) && (v5 = sub_243A2DD7C(v35), (v6 & 1) != 0))
      {
        sub_243A20058(*(v3 + 56) + 32 * v5, v36);
        sub_243A1FF9C(v35);
        if (swift_dynamicCast())
        {
          v7 = (0x8000000243ACBE00 >> 56) & 0xF;
          v8 = 16;
          if ((0x8000000243ACBE00 & 0x2000000000000000) != 0)
          {
            v9 = (0x8000000243ACBE00 >> 56) & 0xF;
          }

          else
          {
            v9 = 16;
          }

          if (v9)
          {
            if ((0x8000000243ACBE00 & 0x1000000000000000) != 0)
            {
              v3 = sub_243AB9A28(0xD000000000000010, 0x8000000243ACBE00, 10);
              v29 = v33;
LABEL_54:

              if (v29)
              {
                v3 = 0;
              }

              goto LABEL_56;
            }

            if ((0x8000000243ACBE00 & 0x2000000000000000) != 0)
            {
              v35[0] = 0xD000000000000010;
              v35[1] = 0x8000000243ACBE00 & 0xFFFFFFFFFFFFFFLL;
              if (v7)
              {
                v3 = 0;
                v26 = v35;
                while (1)
                {
                  v27 = *v26 - 48;
                  if (v27 > 9)
                  {
                    break;
                  }

                  v28 = 10 * v3;
                  if ((v3 * 10) >> 64 != (10 * v3) >> 63)
                  {
                    break;
                  }

                  v3 = v28 + v27;
                  if (__OFADD__(v28, v27))
                  {
                    break;
                  }

                  ++v26;
                  if (!--v7)
                  {
LABEL_51:
                    LOBYTE(v10) = 0;
                    goto LABEL_53;
                  }
                }
              }

              goto LABEL_52;
            }

            v10 = ((0x8000000243ACBE00 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v11 = *((0x8000000243ACBE00 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            if (v11 == 43)
            {
              v20 = 15;
              v3 = 0;
              if ((0x8000000243ACBE00 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
              {
                v21 = ((0x8000000243ACBE00 & 0xFFFFFFFFFFFFFFFLL) + 33);
                while (1)
                {
                  v22 = *v21 - 48;
                  if (v22 > 9)
                  {
                    goto LABEL_52;
                  }

                  v23 = 10 * v3;
                  if ((v3 * 10) >> 64 != (10 * v3) >> 63)
                  {
                    goto LABEL_52;
                  }

                  v3 = v23 + v22;
                  if (__OFADD__(v23, v22))
                  {
                    goto LABEL_52;
                  }

                  ++v21;
                  if (!--v20)
                  {
                    goto LABEL_51;
                  }
                }
              }
            }

            else if (v11 == 45)
            {
              v12 = 15;
              v3 = 0;
              if ((0x8000000243ACBE00 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
              {
                v13 = ((0x8000000243ACBE00 & 0xFFFFFFFFFFFFFFFLL) + 33);
                while (1)
                {
                  v14 = *v13 - 48;
                  if (v14 > 9)
                  {
                    break;
                  }

                  v15 = 10 * v3;
                  if ((v3 * 10) >> 64 != (10 * v3) >> 63)
                  {
                    break;
                  }

                  v3 = v15 - v14;
                  if (__OFSUB__(v15, v14))
                  {
                    break;
                  }

                  ++v13;
                  if (!--v12)
                  {
                    goto LABEL_51;
                  }
                }

LABEL_52:
                v3 = 0;
                LOBYTE(v10) = 1;
              }
            }

            else
            {
              v3 = 0;
              if ((0x8000000243ACBE00 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
              {
                while (1)
                {
                  v24 = *v10 - 48;
                  if (v24 > 9)
                  {
                    goto LABEL_52;
                  }

                  v25 = 10 * v3;
                  if ((v3 * 10) >> 64 != (10 * v3) >> 63)
                  {
                    goto LABEL_52;
                  }

                  v3 = v25 + v24;
                  if (__OFADD__(v25, v24))
                  {
                    goto LABEL_52;
                  }

                  ++v10;
                  if (!--v8)
                  {
                    goto LABEL_51;
                  }
                }
              }
            }

LABEL_53:
            v36[0] = v10;
            v29 = v10;
            goto LABEL_54;
          }
        }
      }

      else
      {
        sub_243A1FF9C(v35);
      }

      v3 = 0;
    }

    else
    {
      v19 = v2;
    }

LABEL_56:
    v30 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_liftUIPresenter);
    *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_liftUIPresenter) = 0;

    v31 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_delegate);
    if (v31)
    {
      v32 = *(v31 + 16);
      LOBYTE(v35[0]) = *(v31 + 136);
      swift_unknownObjectRetain();
      sub_243A3CF58(v2, v3, v35);
      swift_unknownObjectRelease();
    }

    return;
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v16 = sub_243AC1468();
  __swift_project_value_buffer(v16, qword_27EDA14A8);
  oslog = sub_243AC1448();
  v17 = sub_243AC2B58();
  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_243A1B000, oslog, v17, "No active recommendation. Bailing.", v18, 2u);
    MEMORY[0x245D47D20](v18, -1, -1);
  }
}

void sub_243AB9690(void *a1)
{
  v3 = OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_remoteUIPresenter;
  if (!*(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_remoteUIPresenter))
  {
    v4 = [objc_allocWithZone(CERemoteUIPresenter) initWithAccount:*(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_account) presenter:*(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_presenter)];
    v5 = *(v1 + v3);
    *(v1 + v3) = v4;
  }

  v6 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_activeRecommendation);
  *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_activeRecommendation) = a1;
  v7 = a1;

  v8 = *(v1 + v3);
  if (v8)
  {
    [v8 setDelegate_];
    v9 = *(v1 + v3);
    if (v9)
    {
      v10 = v9;
      v11 = sub_243AC11C8();
      [v10 beginRUIFlowWithURL_];
    }
  }
}

id sub_243AB98C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for URLAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_243AB99B4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED9A970, &unk_243ACAE80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_243AB9A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_243AC2938();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_243AB9FB4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_243AC2D48();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_243AB9FB4()
{
  v0 = sub_243AC2948();
  v4 = sub_243ABA034(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_243ABA034(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_243AC2898();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_243AC2C48();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_243AB99B4(v9, 0);
  v12 = sub_243ABA18C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_243AC2898();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_243AC2D48();
LABEL_4:

  return sub_243AC2898();
}

unint64_t sub_243ABA18C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_243ABA3AC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_243AC2908();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_243AC2D48();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_243ABA3AC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_243AC28E8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_243ABA3AC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_243AC2918();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x245D46CC0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_243ABA428(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v3 = sub_243AC1468();
    __swift_project_value_buffer(v3, qword_27EDA14A8);
    v4 = a1;
    v5 = sub_243AC1448();
    v6 = sub_243AC2B58();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_243AC2F58();
      v11 = sub_243AB73D8(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_243A1B000, v5, v6, "Unable to load liftUI view. %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x245D47D20](v8, -1, -1);
      MEMORY[0x245D47D20](v7, -1, -1);
    }

    else
    {
    }
  }
}

void sub_243ABA5DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_activeRecommendation);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_liftUIPresenter);
    *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_liftUIPresenter) = 0;
    oslog = v1;

    v3 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_delegate);
    if (v3)
    {
      v4 = *(v3 + 16);
      v9 = *(v3 + 136);
      swift_unknownObjectRetain();
      sub_243A3C96C(oslog, &v9);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v5 = sub_243AC1468();
    __swift_project_value_buffer(v5, qword_27EDA14A8);
    oslog = sub_243AC1448();
    v6 = sub_243AC2B58();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_243A1B000, oslog, v6, "No active recommendation. Bailing.", v7, 2u);
      MEMORY[0x245D47D20](v7, -1, -1);
    }
  }
}

void sub_243ABA72C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_activeRecommendation);
  if (v2)
  {
    if (!a1)
    {
      v17 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_delegate);
      if (v17)
      {
        v18 = *(v17 + 16);
        LOBYTE(v22) = *(v17 + 136);
        v19 = v2;
        swift_unknownObjectRetain();
        sub_243A3CF58(v19, 0, &v22);
        swift_unknownObjectRelease();
      }

      v20 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_remoteUIPresenter);
      *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_remoteUIPresenter) = 0;
      goto LABEL_16;
    }

    v4 = qword_27ED98910;
    v21 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_243AC1468();
    __swift_project_value_buffer(v5, qword_27EDA14A8);
    v6 = a1;
    v7 = sub_243AC1448();
    v8 = sub_243AC2B58();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_243AC2F58();
      v13 = sub_243AB73D8(v11, v12, &v22);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_243A1B000, v7, v8, "TurnOnApps flow completed with error %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x245D47D20](v10, -1, -1);
      MEMORY[0x245D47D20](v9, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v14 = sub_243AC1468();
    __swift_project_value_buffer(v14, qword_27EDA14A8);
    v21 = sub_243AC1448();
    v15 = sub_243AC2B58();
    if (os_log_type_enabled(v21, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_243A1B000, v21, v15, "Active recommendation unavailable, bailing.", v16, 2u);
      MEMORY[0x245D47D20](v16, -1, -1);
    }
  }

  v20 = v21;
LABEL_16:
}

void sub_243ABAA04(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_activeRecommendation);
  if (v2)
  {
    if (!a1)
    {
      v17 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_delegate);
      if (v17)
      {
        v18 = *(v17 + 16);
        LOBYTE(v22) = *(v17 + 136);
        v19 = v2;
        swift_unknownObjectRetain();
        sub_243A3C96C(v19, &v22);
        swift_unknownObjectRelease();
      }

      v20 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_remoteUIPresenter);
      *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_remoteUIPresenter) = 0;
      goto LABEL_16;
    }

    v4 = qword_27ED98910;
    v21 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_243AC1468();
    __swift_project_value_buffer(v5, qword_27EDA14A8);
    v6 = a1;
    v7 = sub_243AC1448();
    v8 = sub_243AC2B58();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_243AC2F58();
      v13 = sub_243AB73D8(v11, v12, &v22);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_243A1B000, v7, v8, "TurnOnApps flow cancelled with error %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x245D47D20](v10, -1, -1);
      MEMORY[0x245D47D20](v9, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v14 = sub_243AC1468();
    __swift_project_value_buffer(v14, qword_27EDA14A8);
    v21 = sub_243AC1448();
    v15 = sub_243AC2B58();
    if (os_log_type_enabled(v21, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_243A1B000, v21, v15, "Active recommendation unavailable, bailing.", v16, 2u);
      MEMORY[0x245D47D20](v16, -1, -1);
    }
  }

  v20 = v21;
LABEL_16:
}

uint64_t sub_243ABACEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_243AC1618();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A980, qword_243ACAFE0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_243ABAE30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_243AC1618();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A980, qword_243ACAFE0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ScaledAsyncImageView()
{
  result = qword_27ED9A988;
  if (!qword_27ED9A988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243ABAFAC()
{
  sub_243ABB154(319, &qword_27ED99F80, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_243A90E60();
    if (v1 <= 0x3F)
    {
      sub_243AC1618();
      if (v2 <= 0x3F)
      {
        sub_243ABB0F0();
        if (v3 <= 0x3F)
        {
          sub_243ABB154(319, &qword_27ED9A9A8, MEMORY[0x277D231A8], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_243ABB0F0()
{
  if (!qword_27ED9A998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A9A0, &qword_243ACB028);
    v0 = sub_243AC2C38();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED9A998);
    }
  }
}

void sub_243ABB154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_243ABB1B8()
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243ABB2BC()
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243ABB3BC@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A9D0, &qword_243ACB150);
  v85 = *(v2 - 8);
  v3 = *(v85 + 64);
  MEMORY[0x28223BE20](v2);
  v84 = &v79 - v4;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A9D8, &qword_243ACB158);
  v5 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v87 = &v79 - v6;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A9E0, &qword_243ACB160);
  v7 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v88 = (&v79 - v8);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A9E8, &qword_243ACB168);
  v83 = *(v94 - 8);
  v9 = *(v83 + 64);
  MEMORY[0x28223BE20](v94);
  v82 = &v79 - v10;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A9F0, &qword_243ACB170);
  v11 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v103 = &v79 - v12;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A9F8, &qword_243ACB178);
  v13 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v92 = &v79 - v14;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AA00, &unk_243ACB180);
  v15 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v93 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D68, &qword_243AC67E0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v95 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v96 = &v79 - v21;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AA08, &qword_243ACB190);
  v90 = *(v100 - 8);
  v22 = *(v90 + 64);
  MEMORY[0x28223BE20](v100);
  v89 = &v79 - v23;
  v24 = sub_243AC1478();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v28 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v97 = &v79 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AA10, &qword_243ACB198);
  v31 = v30 - 8;
  v32 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v79 - v33;
  v35 = sub_243ABC258();
  v36 = type metadata accessor for ScaledAsyncImageView();
  v37 = *(v1 + *(v36 + 40));
  v38 = *(v31 + 56);
  sub_243A224B4(v1 + *(v36 + 44), &v34[v38], &qword_27ED9A980, qword_243ACAFE0);
  if (v37)
  {
    if ((*(v25 + 48))(&v34[v38], 1, v24) == 1)
    {
      type metadata accessor for UIUtils();

      v39 = v96;
      sub_243A6FDB4(v35, v96);
      v40 = swift_allocObject();
      *(v40 + 16) = v37;
      sub_243A224B4(v39, v95, &qword_27ED98D68, &qword_243AC67E0);
      v41 = swift_allocObject();
      v41[2] = sub_243ABDF18;
      v41[3] = v40;
      v41[4] = nullsub_1;
      v41[5] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AA58, &qword_243ACB1A8);
      sub_243ABDF84();
      v42 = v82;
      sub_243AC16D8();
      sub_243A2251C(v39, &qword_27ED98D68, &qword_243AC67E0);
      v43 = v83;
      v44 = v94;
      (*(v83 + 16))(v92, v42, v94);
      swift_storeEnumTagMultiPayload();
      sub_243ABD9A4(&qword_27ED9AA18, &qword_27ED9AA08, &qword_243ACB190);
      sub_243ABD9A4(&qword_27ED9AA30, &qword_27ED9A9E8, &qword_243ACB168);
      v45 = v93;
      sub_243AC1AE8();
      sub_243A224B4(v45, v103, &qword_27ED9AA00, &unk_243ACB180);
      swift_storeEnumTagMultiPayload();
      sub_243ABD8E8();
      sub_243ABD9F8();
      sub_243AC1AE8();

      sub_243A2251C(v45, &qword_27ED9AA00, &unk_243ACB180);
      return (*(v43 + 8))(v42, v44);
    }

    v88 = *(v25 + 32);
    v52 = &v34[v38];
    v53 = v97;
    v54 = v24;
    v88(v97, v52, v24);
    type metadata accessor for UIUtils();

    v55 = v96;
    v81 = v35;
    sub_243A6FDB4(v35, v96);
    v56 = swift_allocObject();
    *(v56 + 16) = v37;
    v80 = v25;
    v57 = *(v25 + 16);
    v58 = v54;
    v79 = v54;
    v57(v28, v53, v54);
    v59 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v60 = swift_allocObject();
    v88((v60 + v59), v28, v58);
    sub_243A224B4(v55, v95, &qword_27ED98D68, &qword_243AC67E0);
    v61 = swift_allocObject();
    v61[2] = sub_243ABE6F4;
    v61[3] = v56;
    v61[4] = sub_243ABE0C8;
    v61[5] = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AA40, &qword_243ACB1A0);
    sub_243ABDE5C();
    v62 = v89;
    sub_243AC16D8();
    sub_243A2251C(v55, &qword_27ED98D68, &qword_243AC67E0);
    v63 = v90;
    v64 = v100;
    (*(v90 + 16))(v92, v62, v100);
    swift_storeEnumTagMultiPayload();
    sub_243ABD9A4(&qword_27ED9AA18, &qword_27ED9AA08, &qword_243ACB190);
    sub_243ABD9A4(&qword_27ED9AA30, &qword_27ED9A9E8, &qword_243ACB168);
    v65 = v93;
    sub_243AC1AE8();
    sub_243A224B4(v65, v103, &qword_27ED9AA00, &unk_243ACB180);
    swift_storeEnumTagMultiPayload();
    sub_243ABD8E8();
    sub_243ABD9F8();
    sub_243AC1AE8();

    sub_243A2251C(v65, &qword_27ED9AA00, &unk_243ACB180);
    (*(v63 + 8))(v62, v64);
    return (*(v80 + 8))(v97, v79);
  }

  v47 = v2;
  v49 = v84;
  v48 = v85;
  v94 = v47;
  if ((*(v25 + 48))(&v34[v38], 1, v24) != 1)
  {
    v66 = *(v25 + 32);
    v67 = &v34[v38];
    v68 = v97;
    v69 = v24;
    v66(v97, v67, v24);
    type metadata accessor for UIUtils();
    v70 = v96;
    v81 = v35;
    sub_243A6FDB4(v35, v96);
    v80 = v25;
    v71 = *(v25 + 16);
    v79 = v69;
    v71(v28, v68, v69);
    v72 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v73 = swift_allocObject();
    v66((v73 + v72), v28, v69);
    sub_243A224B4(v70, v95, &qword_27ED98D68, &qword_243AC67E0);
    v74 = swift_allocObject();
    v74[2] = sub_243ABC79C;
    v74[3] = 0;
    v74[4] = sub_243ABE70C;
    v74[5] = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AA40, &qword_243ACB1A0);
    sub_243ABDE5C();
    v75 = v89;
    sub_243AC16D8();
    sub_243A2251C(v70, &qword_27ED98D68, &qword_243AC67E0);
    v76 = v90;
    v77 = v100;
    (*(v90 + 16))(v87, v75, v100);
    swift_storeEnumTagMultiPayload();
    sub_243ABD9A4(&qword_27ED9AA18, &qword_27ED9AA08, &qword_243ACB190);
    sub_243ABD9A4(&qword_27ED9AA20, &qword_27ED9A9D0, &qword_243ACB150);
    v78 = v88;
    sub_243AC1AE8();
    sub_243A224B4(v78, v103, &qword_27ED9A9E0, &qword_243ACB160);
    swift_storeEnumTagMultiPayload();
    sub_243ABD8E8();
    sub_243ABD9F8();
    sub_243AC1AE8();

    sub_243A2251C(v78, &qword_27ED9A9E0, &qword_243ACB160);
    (*(v76 + 8))(v75, v77);
    return (*(v80 + 8))(v97, v79);
  }

  type metadata accessor for UIUtils();
  sub_243A6FDB4(v35, v96);
  sub_243AC16E8();
  v50 = v94;
  (*(v48 + 16))(v87, v49, v94);
  swift_storeEnumTagMultiPayload();
  sub_243ABD9A4(&qword_27ED9AA18, &qword_27ED9AA08, &qword_243ACB190);
  sub_243ABD9A4(&qword_27ED9AA20, &qword_27ED9A9D0, &qword_243ACB150);
  v51 = v88;
  sub_243AC1AE8();
  sub_243A224B4(v51, v103, &qword_27ED9A9E0, &qword_243ACB160);
  swift_storeEnumTagMultiPayload();
  sub_243ABD8E8();
  sub_243ABD9F8();
  sub_243AC1AE8();

  sub_243A2251C(v51, &qword_27ED9A9E0, &qword_243ACB160);
  return (*(v48 + 8))(v49, v50);
}

uint64_t sub_243ABC258()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D68, &qword_243AC67E0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v36 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = sub_243AC1208();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v36 = &v36 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - v18;
  v40 = [objc_allocWithZone(MEMORY[0x277CFB1A0]) init];
  if (*(v0 + 24))
  {
    v41 = type metadata accessor for ScaledAsyncImageView();
    v20 = v41[7];

    v42 = v0;
    sub_243AC1608();
    v37 = v15;

    sub_243AC11E8();

    v21 = *(v11 + 48);
    v22 = v21(v9, 1, v10);
    v38 = v11;
    if (v22 == 1)
    {
      sub_243A2251C(v9, &qword_27ED98D68, &qword_243AC67E0);
    }

    else
    {
      (*(v11 + 32))(v19, v9, v10);
      v23 = sub_243AC11C8();
      [v40 setURL1x_];

      (*(v11 + 8))(v19, v10);
    }

    v24 = v41[8];

    sub_243AC1608();

    v25 = v40;
    sub_243AC11E8();

    if (v21(v7, 1, v10) == 1)
    {
      sub_243A2251C(v7, &qword_27ED98D68, &qword_243AC67E0);
    }

    else
    {
      v26 = v38;
      v27 = v36;
      (*(v38 + 32))(v36, v7, v10);
      v28 = sub_243AC11C8();
      [v25 setURL2x_];

      (*(v26 + 8))(v27, v10);
    }

    v29 = v41[9];

    sub_243AC1608();

    v30 = v39;
    sub_243AC11E8();

    if (v21(v30, 1, v10) == 1)
    {
      sub_243A2251C(v30, &qword_27ED98D68, &qword_243AC67E0);
    }

    else
    {
      v32 = v37;
      v31 = v38;
      (*(v38 + 32))(v37, v30, v10);
      v33 = sub_243AC11C8();
      [v25 setURL3x_];

      (*(v31 + 8))(v32, v10);
    }

    return v25;
  }

  else
  {
    v35 = *(v0 + 32);
    sub_243AC15F8();
    sub_243ABE2B8(&qword_27ED99F38, MEMORY[0x277D23330]);
    result = sub_243AC18F8();
    __break(1u);
  }

  return result;
}

uint64_t sub_243ABC7B8()
{
  *v0;
  *v0;
  *v0;
  sub_243AC28A8();
}

uint64_t sub_243ABC8AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_243ABE6A8();
  *a2 = result;
  return result;
}

void sub_243ABC8DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE500000000000000;
  v6 = 0x78336C7275;
  v7 = 0xEB00000000726564;
  v8 = 0x6C6F686563616C70;
  if (v2 != 4)
  {
    v8 = 0x646F4D6567616D69;
    v7 = 0xEE00737265696669;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x78316C7275;
  if (v2 != 1)
  {
    v9 = 0x78326C7275;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_243ABC998()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x78336C7275;
  v4 = 0x6C6F686563616C70;
  if (v1 != 4)
  {
    v4 = 0x646F4D6567616D69;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x78316C7275;
  if (v1 != 1)
  {
    v5 = 0x78326C7275;
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

uint64_t sub_243ABCA50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243ABE6A8();
  *a1 = result;
  return result;
}

uint64_t sub_243ABCA84(uint64_t a1)
{
  v2 = sub_243ABE140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243ABCAC0(uint64_t a1)
{
  v2 = sub_243ABE140();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243ABCAFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_243AC1658();
  v4 = *(v3 - 8);
  v70 = v3;
  v71 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v69 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A980, qword_243ACAFE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v68 = &v63 - v9;
  v10 = sub_243AC1618();
  v11 = *(v10 - 8);
  v77 = v10;
  v78 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v72 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v75 = &v63 - v16;
  MEMORY[0x28223BE20](v15);
  v76 = &v63 - v17;
  v18 = sub_243AC1298();
  v73 = *(v18 - 8);
  v74 = v18;
  v19 = *(v73 + 64);
  MEMORY[0x28223BE20](v18);
  v79 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AA70, &qword_243ACB1B8);
  v80 = *(v21 - 8);
  v22 = *(v80 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v63 - v23;
  v25 = type metadata accessor for ScaledAsyncImageView();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28[2] = MEMORY[0x277D84F90];
  sub_243AC15F8();
  sub_243ABE2B8(&qword_27ED99F38, MEMORY[0x277D23330]);
  v29 = sub_243AC1908();
  v28[3] = v29;
  v28[4] = v30;
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243ABE140();
  v32 = v81;
  sub_243AC2FE8();
  if (v32)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v33 = v79;
    v66 = v29;
    v64 = v28;
    v65 = v25;
    v81 = a1;
    LOBYTE(v82) = 0;
    v34 = sub_243AC2E68();
    v36 = v24;
    if (!v35)
    {
      sub_243AC1288();
      v38 = sub_243AC1278();
      v40 = v39;
      (*(v73 + 8))(v33, v74);
      v35 = v40;
      v34 = v38;
    }

    v41 = v65;
    v42 = v64;
    v43 = v77;
    *v64 = v34;
    v42[1] = v35;
    v79 = v35;
    LOBYTE(v82) = 1;
    sub_243ABE2B8(&qword_27ED98AC8, MEMORY[0x277D23340]);
    v44 = v76;
    sub_243AC2E88();
    v45 = v42 + v41[7];
    v74 = *(v78 + 32);
    v74(v45, v44, v43);
    LOBYTE(v82) = 2;
    v46 = v75;
    v76 = 0;
    sub_243AC2E88();
    v47 = v46;
    v48 = v74;
    v74(v64 + v41[8], v47, v43);
    LOBYTE(v82) = 3;
    sub_243AC2E88();
    v49 = v64;
    v48(v64 + v41[9], v72, v43);
    sub_243AC1478();
    LOBYTE(v82) = 4;
    sub_243ABE2B8(&qword_27ED9AA80, MEMORY[0x277D231A8]);
    v50 = v68;
    sub_243AC2E78();
    sub_243ABE194(v50, v49 + v41[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AA88, &qword_243ACB1C0);
    LOBYTE(v82) = 5;
    sub_243ABE204();
    sub_243AC2E78();
    v51 = v49;
    v52 = v84;
    if (v84)
    {
      v53 = *(v84 + 16);
      v54 = v80;
      if (v53)
      {
        v76 = v21;
        v77 = v36;
        v83 = MEMORY[0x277D84F90];
        sub_243A64FD4(0, v53, 0);
        v55 = v83;
        v56 = v70;
        v57 = *(v71 + 16);
        v58 = v52 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
        v78 = *(v71 + 72);
        v79 = v57;
        v59 = (v71 + 8);
        v71 += 16;
        do
        {
          v60 = v69;
          (v79)(v69, v58, v56);
          sub_243AC1648();
          v56 = v70;
          (*v59)(v60, v70);
          v83 = v55;
          v62 = *(v55 + 16);
          v61 = *(v55 + 24);
          if (v62 >= v61 >> 1)
          {
            sub_243A64FD4((v61 > 1), v62 + 1, 1);
            v56 = v70;
            v55 = v83;
          }

          *(v55 + 16) = v62 + 1;
          sub_243A71060(&v82, v55 + 40 * v62 + 32);
          v58 += v78;
          --v53;
        }

        while (v53);
        (*(v80 + 8))(v77, v76);

        v51 = v64;
      }

      else
      {

        (*(v54 + 8))(v36, v21);
        v55 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      (*(v80 + 8))(v36, v21);
      v55 = 0;
    }

    *(v51 + v65[10]) = v55;
    sub_243ABE300(v51, v67);
    __swift_destroy_boxed_opaque_existential_1(v81);
    return sub_243ABE364(v51);
  }
}

uint64_t sub_243ABD568(uint64_t a1, uint64_t a2)
{
  v4 = sub_243ABE2B8(&qword_27ED992D0, type metadata accessor for ScaledAsyncImageView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_243ABD5EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_243ABE2B8(&qword_27ED9A9B0, type metadata accessor for ScaledAsyncImageView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_243ABD668(uint64_t a1)
{
  v2 = sub_243ABE2B8(&qword_27ED9A9B0, type metadata accessor for ScaledAsyncImageView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_243ABD6E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_243ABE2B8(&qword_27ED9A9C8, type metadata accessor for ScaledAsyncImageView);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_243ABD7A0()
{
  sub_243ABE2B8(&qword_27ED992D0, type metadata accessor for ScaledAsyncImageView);
  sub_243ABE2B8(&qword_27ED9A9B0, type metadata accessor for ScaledAsyncImageView);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_243ABD8E8()
{
  result = qword_27ED9AA28;
  if (!qword_27ED9AA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9AA00, &unk_243ACB180);
    sub_243ABD9A4(&qword_27ED9AA18, &qword_27ED9AA08, &qword_243ACB190);
    sub_243ABD9A4(&qword_27ED9AA30, &qword_27ED9A9E8, &qword_243ACB168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AA28);
  }

  return result;
}

uint64_t sub_243ABD9A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_243ABD9F8()
{
  result = qword_27ED9AA38;
  if (!qword_27ED9AA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A9E0, &qword_243ACB160);
    sub_243ABD9A4(&qword_27ED9AA18, &qword_27ED9AA08, &qword_243ACB190);
    sub_243ABD9A4(&qword_27ED9AA20, &qword_27ED9A9D0, &qword_243ACB150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AA38);
  }

  return result;
}

uint64_t sub_243ABDAB8(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, void (*a4)(void))
{
  if (sub_243AC1868())
  {
    a2(&v7);
    swift_retain_n();
    sub_243AC1AE8();
  }

  else
  {
    a4();
    sub_243AC1AE8();
  }

  return v7;
}

uint64_t sub_243ABDBC4@<X0>(void (*a1)(uint64_t *__return_ptr)@<X1>, void (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v15 = a3;
  v5 = sub_243AC1478();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AA68, &qword_243ACB1B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v15 - v12);
  if (sub_243AC1868())
  {
    a1(&v16);
    *v13 = v16;
    swift_storeEnumTagMultiPayload();
    sub_243ABE2B8(&qword_27ED9AA50, MEMORY[0x277D231A8]);
    swift_retain_n();
    sub_243AC1AE8();
  }

  else
  {
    a2(0);
    (*(v6 + 16))(v13, v9, v5);
    swift_storeEnumTagMultiPayload();
    sub_243ABE2B8(&qword_27ED9AA50, MEMORY[0x277D231A8]);
    sub_243AC1AE8();
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_243ABDE50@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  return sub_243ABDBC4(*(v1 + 16), *(v1 + 32), a1);
}

unint64_t sub_243ABDE5C()
{
  result = qword_27ED9AA48;
  if (!qword_27ED9AA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9AA40, &qword_243ACB1A0);
    sub_243ABE2B8(&qword_27ED9AA50, MEMORY[0x277D231A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AA48);
  }

  return result;
}

uint64_t sub_243ABDF18@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_243AC1FF8();
  *a1 = result;
  return result;
}

uint64_t sub_243ABDF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 40);
  result = sub_243ABDAB8(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

unint64_t sub_243ABDF84()
{
  result = qword_27ED9AA60;
  if (!qword_27ED9AA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9AA58, &qword_243ACB1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AA60);
  }

  return result;
}

uint64_t sub_243ABE008()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroyTm_12()
{
  v1 = sub_243AC1478();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_243ABE0CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_243AC1478();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

unint64_t sub_243ABE140()
{
  result = qword_27ED9AA78;
  if (!qword_27ED9AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AA78);
  }

  return result;
}

uint64_t sub_243ABE194(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A980, qword_243ACAFE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_243ABE204()
{
  result = qword_27ED9AA90;
  if (!qword_27ED9AA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9AA88, &qword_243ACB1C0);
    sub_243ABE2B8(&qword_27ED9AA98, MEMORY[0x277D23390]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AA90);
  }

  return result;
}

uint64_t sub_243ABE2B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243ABE300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScaledAsyncImageView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243ABE364(uint64_t a1)
{
  v2 = type metadata accessor for ScaledAsyncImageView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScaledAsyncImageView.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScaledAsyncImageView.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_243ABE514()
{
  result = qword_27ED9AAA0;
  if (!qword_27ED9AAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9AAA8, &qword_243ACB1D8);
    sub_243ABD8E8();
    sub_243ABD9F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AAA0);
  }

  return result;
}

unint64_t sub_243ABE5A4()
{
  result = qword_27ED9AAB0;
  if (!qword_27ED9AAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AAB0);
  }

  return result;
}

unint64_t sub_243ABE5FC()
{
  result = qword_27ED9AAB8;
  if (!qword_27ED9AAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AAB8);
  }

  return result;
}

unint64_t sub_243ABE654()
{
  result = qword_27ED9AAC0;
  if (!qword_27ED9AAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AAC0);
  }

  return result;
}

uint64_t sub_243ABE6A8()
{
  v0 = sub_243AC2E58();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_243ABE710(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C10, &qword_243AC4C60);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_243ABE7FC()
{
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 primaryAccountAltDSID];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x282200938](v1);
  }

  v4 = v0[22];
  v5 = [objc_allocWithZone(MEMORY[0x277CFDAE8]) initWithAltDSID_];
  v0[23] = v5;

  [v5 setDeviceToDeviceEncryptionUpgradeUIStyle_];
  [v5 setDeviceToDeviceEncryptionUpgradeType_];
  v6 = sub_243AC2818();
  [v5 setFeatureName_];

  Strong = swift_unknownObjectWeakLoadStrong();
  [v5 setPresentingViewController_];

  v8 = [objc_allocWithZone(MEMORY[0x277CFDAF0]) initWithContext_];
  v0[24] = v8;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_243ABEA44;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AB8, qword_243AC83F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_243ABE710;
  v0[13] = &block_descriptor_16;
  v0[14] = v9;
  [v8 performDeviceToDeviceEncryptionStateRepairWithCompletion_];
  v1 = v0 + 2;

  return MEMORY[0x282200938](v1);
}

uint64_t sub_243ABEA44()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_243ABEBBC;
  }

  else
  {
    v3 = sub_243ABEB54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_243ABEB54()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 208);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_243ABEBBC()
{
  v22 = v0;
  v1 = v0[25];
  swift_willThrow();
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v3 = sub_243AC1468();
  __swift_project_value_buffer(v3, qword_27EDA14A8);
  v4 = v2;
  v5 = sub_243AC1448();
  v6 = sub_243AC2B58();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[23];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[20];
    v16 = sub_243AC2F58();
    v18 = sub_243AB73D8(v16, v17, &v21);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_243A1B000, v5, v6, "Unable to complete CDP repair flow. %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x245D47D20](v12, -1, -1);
    MEMORY[0x245D47D20](v11, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19(0);
}

uint64_t sub_243ABEDA4()
{
  MEMORY[0x245D47DE0](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for DelayedSpinner(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
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

uint64_t storeEnumTagSinglePayload for DelayedSpinner(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_243ABEED8@<X0>(void *a1@<X8>)
{
  if (*v1 == 1)
  {
    v3 = *(v1 + 8);
    result = sub_243AC2058();
    v5 = v7;
    v6 = v8;
  }

  else
  {
    v5 = 0;
    v3 = 0;
    v6 = 1;
  }

  *a1 = v5;
  a1[1] = v6;
  a1[2] = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_243ABEF5C(uint64_t a1, unsigned int a2)
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

uint64_t sub_243ABEFB8(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_243ABF020()
{
  result = qword_27ED9AAC8;
  if (!qword_27ED9AAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9AAD0, &qword_243ACB458);
    sub_243ABF0A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AAC8);
  }

  return result;
}

unint64_t sub_243ABF0A4()
{
  result = qword_27ED9AAD8;
  if (!qword_27ED9AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AAD8);
  }

  return result;
}

uint64_t sub_243ABF114@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99420, &qword_243AC67F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AAE0, &unk_243ACB4B8);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23[-v16];
  sub_243AC1778();
  v23[16] = a1;
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D28, &qword_243AC8810);
  sub_243AC2068();
  if (v23[15])
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  (*(v9 + 32))(v17, v12, v8);
  *&v17[*(v14 + 44)] = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a4;
  v20 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AAE8, &unk_243ACB4D8) + 36));
  v21 = *(sub_243AC17E8() + 20);

  sub_243AC2A78();
  *v20 = &unk_243ACB4D0;
  v20[1] = v19;
  return sub_243ABFC80(v17, a3);
}

uint64_t sub_243ABF324(char a1, uint64_t a2, double a3)
{
  *(v3 + 24) = a3;
  *(v3 + 16) = a2;
  *(v3 + 56) = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0) - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = sub_243AC2A58();
  *(v3 + 48) = sub_243AC2A48();
  v6 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243ABF400, v6, v5);
}

uint64_t sub_243ABF400()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 24);
  v5 = *(v0 + 16);
  v6 = *(v0 + 56);

  v7 = sub_243AC2A98();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);

  v8 = sub_243AC2A48();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  *(v9 + 48) = v4;
  sub_243A30B68(0, 0, v3, &unk_243ACB4F0, v9);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_243ABF530(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 64) = a1;
  *(v6 + 56) = a6;
  *(v6 + 34) = a5;
  v7 = sub_243AC2DD8();
  *(v6 + 72) = v7;
  v8 = *(v7 - 8);
  *(v6 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 88) = swift_task_alloc();
  v10 = sub_243AC2DC8();
  *(v6 + 96) = v10;
  v11 = *(v10 - 8);
  *(v6 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  sub_243AC2A58();
  *(v6 + 128) = sub_243AC2A48();
  v14 = sub_243AC2A28();
  *(v6 + 136) = v14;
  *(v6 + 144) = v13;

  return MEMORY[0x2822009F8](sub_243ABF694, v14, v13);
}

uint64_t sub_243ABF694()
{
  *(v0 + 40) = *(v0 + 34);
  *(v0 + 48) = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D28, &qword_243AC8810);
  sub_243AC2068();
  if (*(v0 + 33) == 1)
  {
    v1 = *(v0 + 128);

    v3 = *(v0 + 112);
    v2 = *(v0 + 120);
    v4 = *(v0 + 88);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    v9 = *(v0 + 96);
    v10 = *(v0 + 104);
    v11 = *(v0 + 88);
    v12 = *(v0 + 64);
    sub_243AC2DA8();
    sub_243AC2FF8();
    sub_243AC2DB8();
    v13 = *(v10 + 8);
    *(v0 + 152) = v13;
    *(v0 + 160) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v7, v9);
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    sub_243AC2F48();
    v14 = *(MEMORY[0x277D857F0] + 4);
    v15 = swift_task_alloc();
    *(v0 + 168) = v15;
    v16 = sub_243AC001C(&qword_27ED9AAF0, MEMORY[0x277D85928]);
    *v15 = v0;
    v15[1] = sub_243ABF88C;
    v17 = *(v0 + 120);
    v18 = *(v0 + 88);
    v19 = *(v0 + 72);

    return MEMORY[0x282200488](v17, v0 + 16, v18, v19, v16);
  }
}

uint64_t sub_243ABF88C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v14 = *v1;
  *(*v1 + 176) = v0;

  v5 = v2[19];
  v4 = v2[20];
  if (v0)
  {
    v6 = v2[15];
    v7 = v2[12];
    (*(v2[10] + 8))(v2[11], v2[9]);
    v5(v6, v7);
    v8 = v2[17];
    v9 = v2[18];
    v10 = sub_243ABFB00;
  }

  else
  {
    v11 = v2[15];
    v12 = v2[12];
    (*(v2[10] + 8))(v2[11], v2[9]);
    v5(v11, v12);
    v8 = v2[17];
    v9 = v2[18];
    v10 = sub_243ABFA08;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_243ABFA08()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  v3 = *(v0 + 64);
  v4 = *(v0 + 56);
  v5 = *(v0 + 34);

  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  sub_243AC2168();
  sub_243AC17F8();

  v8 = *(v0 + 112);
  v7 = *(v0 + 120);
  v9 = *(v0 + 88);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_243ABFB00()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[11];

  v5 = v0[1];
  v6 = v0[22];

  return v5();
}

uint64_t sub_243ABFB9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_243ABFBD4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_243A1FEA8;

  return sub_243ABF324(v2, v3, v4);
}

uint64_t sub_243ABFC80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AAE0, &unk_243ACB4B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243ABFCF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243ABFD30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_243A1FEA8;

  return sub_243ABF530(v8, a1, v4, v5, v6, v7);
}

uint64_t sub_243ABFE04()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D28, &qword_243AC8810);
  return sub_243AC2078();
}

unint64_t sub_243ABFE70()
{
  result = qword_27ED9AAF8;
  if (!qword_27ED9AAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9AAE8, &unk_243ACB4D8);
    sub_243ABFF2C();
    sub_243AC001C(&qword_27ED9A220, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AAF8);
  }

  return result;
}

unint64_t sub_243ABFF2C()
{
  result = qword_27ED9AB00;
  if (!qword_27ED9AB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9AAE0, &unk_243ACB4B8);
    sub_243ABFFB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AB00);
  }

  return result;
}

unint64_t sub_243ABFFB8()
{
  result = qword_27ED99450;
  if (!qword_27ED99450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99420, &qword_243AC67F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99450);
  }

  return result;
}

uint64_t sub_243AC001C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_243AC0088(void *a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_activeRecommendation);
  *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_activeRecommendation) = a1;

  v6 = objc_allocWithZone(MEMORY[0x277CCABB8]);
  v7 = a1;
  v8 = [v6 init];
  v9 = [a2 appStoreID];
  if (!v9)
  {
    sub_243AC2858();
    v9 = sub_243AC2818();
  }

  v10 = [v8 numberFromString_];

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED9AC00, &qword_243AC6BD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_243AC4AC0;
    v12 = *MEMORY[0x277CDD450];
    *(inited + 32) = sub_243AC2858();
    *(inited + 40) = v13;
    *(inited + 72) = sub_243A5F5C8();
    *(inited + 48) = v10;
    v14 = *MEMORY[0x277CDD448];
    *(inited + 80) = sub_243AC2858();
    *(inited + 88) = v15;
    v16 = MEMORY[0x277D837D0];
    *(inited + 120) = MEMORY[0x277D837D0];
    *(inited + 96) = 0x7966722E736369;
    *(inited + 104) = 0xE700000000000000;
    v17 = *MEMORY[0x277CDD458];
    *(inited + 128) = sub_243AC2858();
    *(inited + 136) = v18;
    *(inited + 168) = v16;
    *(inited + 144) = 858796082;
    *(inited + 152) = 0xE400000000000000;
    v19 = v10;
    sub_243A2E2B4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED9AC10, &qword_243AC4E00);
    swift_arrayDestroy();
    v20 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_storeProductViewController);
    [v20 setDelegate_];
    [v20 setShowsStoreButton_];
    v21 = sub_243AC27C8();

    v22 = swift_allocObject();
    *(v22 + 16) = v7;
    aBlock[4] = sub_243AC0EFC;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AB35B4;
    aBlock[3] = &block_descriptor_17;
    v23 = _Block_copy(aBlock);
    v24 = v7;

    [v20 loadProductWithParameters:v21 completionBlock:v23];
    _Block_release(v23);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      [Strong presentViewController:v20 animated:1 completion:0];
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v27 = sub_243AC1468();
    __swift_project_value_buffer(v27, qword_27EDA14A8);
    oslog = sub_243AC1448();
    v28 = sub_243AC2B58();
    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_243A1B000, oslog, v28, "Unable to obtain App Store ID from action. Bailing.", v29, 2u);
      MEMORY[0x245D47D20](v29, -1, -1);
    }
  }
}

void sub_243AC0490(int a1, NSObject *a2, void *a3)
{
  if (a2)
  {
    v4 = a2;
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v5 = sub_243AC1468();
    __swift_project_value_buffer(v5, qword_27EDA14A8);
    v6 = a2;
    v7 = sub_243AC1448();
    v8 = sub_243AC2B58();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v27 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_243AB73D8(0xD00000000000001ELL, 0x8000000243ACEA80, &v27);
      *(v9 + 12) = 2080;
      swift_getErrorValue();
      v11 = sub_243AC2F58();
      v13 = sub_243AB73D8(v11, v12, &v27);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_243A1B000, v7, v8, "%s Unable to load appstore view %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D47D20](v10, -1, -1);
      MEMORY[0x245D47D20](v9, -1, -1);

      return;
    }

    v25 = a2;
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v15 = sub_243AC1468();
    __swift_project_value_buffer(v15, qword_27EDA14A8);
    v16 = a3;
    oslog = sub_243AC1448();
    v17 = sub_243AC2B48();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_243AB73D8(0xD00000000000001ELL, 0x8000000243ACEA80, &v27);
      *(v18 + 12) = 2080;
      v20 = [v16 bundleID];
      v21 = sub_243AC2858();
      v23 = v22;

      v24 = sub_243AB73D8(v21, v23, &v27);

      *(v18 + 14) = v24;
      _os_log_impl(&dword_243A1B000, oslog, v17, "%s Presenting produc page fro app %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D47D20](v19, -1, -1);
      MEMORY[0x245D47D20](v18, -1, -1);

      return;
    }

    v25 = oslog;
  }
}

id AppInstallAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppInstallAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_243AC09D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_activeRecommendation] = 0;
  v8 = &v4[OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_delegate];
  *&v4[OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v4[OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_controller] = a2;
  v9 = objc_allocWithZone(MEMORY[0x277CDD3A8]);

  v10 = [v9 init];
  *&v4[OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_storeProductViewController] = v10;
  *(v8 + 1) = a4;
  swift_unknownObjectWeakAssign();
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

void _s21CloudRecommendationUI16AppInstallActionC21productViewController_13didFinishWithySo014SKStoreProducthI0CSg_So19SKProductPageResultVtF_0()
{
  v1 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_activeRecommendation);
  if (!v1)
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v14 = sub_243AC1468();
    __swift_project_value_buffer(v14, qword_27EDA14A8);
    v20 = sub_243AC1448();
    v15 = sub_243AC2B58();
    if (os_log_type_enabled(v20, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_243AB73D8(0xD00000000000001FLL, 0x8000000243ACEAA0, &v21);
      _os_log_impl(&dword_243A1B000, v20, v15, "%s Unable to get active recommendation. Bailing.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x245D47D20](v17, -1, -1);
      MEMORY[0x245D47D20](v16, -1, -1);
LABEL_19:

      return;
    }

    goto LABEL_20;
  }

  v2 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_storeProductViewController);
  v20 = v1;
  [v2 setDelegate_];
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    v5 = [v20 bundleID];
    if (!v5)
    {
      sub_243AC2858();
      v5 = sub_243AC2818();
    }

    v6 = [v4 applicationIsInstalled_];

    if (v6)
    {
      if (qword_27ED98910 != -1)
      {
        swift_once();
      }

      v7 = sub_243AC1468();
      __swift_project_value_buffer(v7, qword_27EDA14A8);
      v8 = sub_243AC1448();
      v9 = sub_243AC2B58();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v21 = v11;
        *v10 = 136315138;
        *(v10 + 4) = sub_243AB73D8(0xD00000000000001FLL, 0x8000000243ACEAA0, &v21);
        _os_log_impl(&dword_243A1B000, v8, v9, "%s App installed.", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x245D47D20](v11, -1, -1);
        MEMORY[0x245D47D20](v10, -1, -1);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = *(Strong + 16);
        LOBYTE(v21) = *(Strong + 136);
        sub_243A3CF58(v20, 0, &v21);
LABEL_18:
        swift_unknownObjectRelease();
        goto LABEL_19;
      }
    }

    else
    {
      v18 = swift_unknownObjectWeakLoadStrong();
      if (v18)
      {
        v19 = *(v18 + 16);
        LOBYTE(v21) = *(v18 + 136);
        sub_243A3C96C(v20, &v21);
        goto LABEL_18;
      }
    }

LABEL_20:

    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_243AC0EC4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}