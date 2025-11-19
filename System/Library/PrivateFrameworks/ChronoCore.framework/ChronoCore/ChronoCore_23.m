uint64_t sub_224C5C144()
{
  result = sub_224DAB848();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_224C5C1FC()
{
  v0 = type metadata accessor for FileReaperProtectionConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_224C5C2B0(void (*a1)(void, void, void, void))
{
  v3 = [*(v1 + 16) allBudgets];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6000, qword_224DBE790);
  v4 = sub_224DAF008();

  v27 = 0;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        return;
      }

      v7 = *(v4 + 8 * v6 + 32);
      if (*(v7 + 16))
      {
        v8 = *(v4 + 8 * v6 + 32);

        v9 = sub_224A3A40C(1701667182, 0xE400000000000000);
        if ((v10 & 1) == 0)
        {
          goto LABEL_3;
        }

        sub_224A33E0C(*(v7 + 56) + 32 * v9, v26);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_3;
        }

        if (!*(v7 + 16) || (v11 = sub_224A3A40C(0x65636E616C6162, 0xE700000000000000), (v12 & 1) == 0))
        {

LABEL_3:

          goto LABEL_4;
        }

        sub_224A33E0C(*(v7 + 56) + 32 * v11, v26);

        sub_224C5C748();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_3;
        }

        if (qword_2813514A8 != -1)
        {
          swift_once();
        }

        v13 = sub_224DAB258();
        __swift_project_value_buffer(v13, qword_281364E38);

        v14 = v24;
        v15 = sub_224DAB228();
        v16 = sub_224DAF278();

        if (os_log_type_enabled(v15, v16))
        {
          v23 = a1;
          v17 = swift_slowAlloc();
          log = v15;
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v26[0] = v19;
          *v17 = 136446466;
          *(v17 + 4) = sub_224A33F74(v24, v25, v26);
          *(v17 + 12) = 2114;
          *(v17 + 14) = v14;
          *v18 = v14;
          v20 = v14;
          _os_log_impl(&dword_224A2F000, log, v16, "budget: %{public}s, budget: %{public}@", v17, 0x16u);
          sub_224AD68CC(v18);
          MEMORY[0x22AA5EED0](v18, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v19);
          MEMORY[0x22AA5EED0](v19, -1, -1);
          v21 = v17;
          a1 = v23;
          MEMORY[0x22AA5EED0](v21, -1, -1);
        }

        else
        {
        }

        a1(v24, v25, [v14 integerValue], &v27);

        if (v27 == 1)
        {
LABEL_20:

          return;
        }
      }

LABEL_4:
      if (v5 == ++v6)
      {
        goto LABEL_20;
      }
    }
  }
}

uint64_t sub_224C5C678(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{

  sub_224DAD6F8();
  sub_224AFC154();
  v9 = sub_224DAF748();

  if (v9)
  {
    *a6 = a3;
    *(a6 + 8) = 0;
    *a4 = 1;
  }

  return result;
}

unint64_t sub_224C5C748()
{
  result = qword_281350850;
  if (!qword_281350850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281350850);
  }

  return result;
}

void sub_224C5C794(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [*(a1 + 16) allBudgets];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6000, qword_224DBE790);
  v5 = sub_224DAF008();

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
        return;
      }

      v8 = *(v5 + 8 * v7 + 32);
      if (*(v8 + 16))
      {
        v9 = *(v5 + 8 * v7 + 32);

        v10 = sub_224A3A40C(1701667182, 0xE400000000000000);
        if (v11)
        {
          sub_224A33E0C(*(v8 + 56) + 32 * v10, v28);
          if (swift_dynamicCast())
          {
            if (*(v8 + 16) && (v12 = sub_224A3A40C(0x65636E616C6162, 0xE700000000000000), (v13 & 1) != 0))
            {
              sub_224A33E0C(*(v8 + 56) + 32 * v12, v28);

              sub_224C5C748();
              if (swift_dynamicCast())
              {
                if (qword_2813514A8 != -1)
                {
                  swift_once();
                }

                v14 = sub_224DAB258();
                __swift_project_value_buffer(v14, qword_281364E38);

                v15 = v26;
                v16 = sub_224DAB228();
                v17 = sub_224DAF278();

                if (os_log_type_enabled(v16, v17))
                {
                  v24 = a2;
                  v18 = swift_slowAlloc();
                  log = v16;
                  v19 = swift_slowAlloc();
                  v20 = swift_slowAlloc();
                  v28[0] = v20;
                  *v18 = 136446466;
                  *(v18 + 4) = sub_224A33F74(v26, v27, v28);
                  *(v18 + 12) = 2114;
                  *(v18 + 14) = v15;
                  *v19 = v15;
                  v21 = v15;
                  _os_log_impl(&dword_224A2F000, log, v17, "budget: %{public}s, budget: %{public}@", v18, 0x16u);
                  sub_224AD68CC(v19);
                  MEMORY[0x22AA5EED0](v19, -1, -1);
                  __swift_destroy_boxed_opaque_existential_1(v20);
                  MEMORY[0x22AA5EED0](v20, -1, -1);
                  v22 = v18;
                  a2 = v24;
                  MEMORY[0x22AA5EED0](v22, -1, -1);
                }

                else
                {
                }

                sub_224BEDA38(v26, v27, [v15 integerValue], &v29, a2, a3);

                goto LABEL_4;
              }
            }

            else
            {
            }
          }
        }
      }

LABEL_4:
      if (v6 == ++v7)
      {

        return;
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10ChronoCore27WidgetRelevanceServiceEventO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_224C5CBE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_224C5CC28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_224C5CC6C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_224C5CC94(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (!v5)
  {
    if (!v7)
    {
      return sub_224C911AC(v4, v6);
    }

    return 0;
  }

  if (v5 == 1)
  {
    if (v7 == 1)
    {
      return sub_224C911C0(v4, v6);
    }

    return 0;
  }

  return v7 == 2 && v6 == 0;
}

uint64_t sub_224C5CCE8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x277D84F90];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_224A3317C(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_1(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_224A36F98(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224ADA390(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_224ADA390((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v13 + 1;
        result = sub_224A36F98(v15, v9 + 40 * v13 + 32);
        v6 = v14;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t sub_224C5CE60(uint64_t a1)
{
  v49 = sub_224DAAF48();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v49);
  v41 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v6 = *(v40 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v40);
  v9 = v31 - v8;
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v31[1] = v1;
    v51 = MEMORY[0x277D84F90];
    sub_224ADA350(0, v10, 0);
    v50 = v51;
    v12 = -1 << *(a1 + 32);
    v48 = a1 + 56;
    result = sub_224DAF798();
    v13 = result;
    v14 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v35 = v3;
    v36 = v6 + 32;
    v32 = a1 + 64;
    v33 = v10;
    v39 = v6;
    v34 = a1;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v16 = v13 >> 6;
      if ((*(v48 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      v42 = v14;
      v43 = *(a1 + 36);
      v44 = 1 << v13;
      v17 = v41;
      (*(v3 + 16))(v41, *(a1 + 48) + *(v3 + 72) * v13, v49);
      v18 = sub_224DAAEF8();
      v46 = v19;
      v47 = v18;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
      sub_224A33088(&qword_281351980, &qword_27D6F3900, &unk_224DB4640);
      sub_224A33088(&unk_281351950, &qword_27D6F3900, &unk_224DB4640);
      sub_224A33088(&qword_281351978, &qword_27D6F3900, &unk_224DB4640);
      sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640);
      v3 = v35;
      sub_224DAA208();
      (*(v3 + 8))(v17, v49);
      v20 = v50;
      v51 = v50;
      v22 = *(v50 + 16);
      v21 = *(v50 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_224ADA350(v21 > 1, v22 + 1, 1);
        v20 = v51;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v50 = v20;
      result = (*(v39 + 32))(v20 + v23 + *(v39 + 72) * v22, v9, v40);
      a1 = v34;
      v15 = 1 << *(v34 + 32);
      if (v13 >= v15)
      {
        goto LABEL_23;
      }

      v24 = *(v48 + 8 * v16);
      if ((v24 & v44) == 0)
      {
        goto LABEL_24;
      }

      if (v43 != *(v34 + 36))
      {
        goto LABEL_25;
      }

      v25 = v24 & (-2 << (v13 & 0x3F));
      if (v25)
      {
        v15 = __clz(__rbit64(v25)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v28 = (v32 + 8 * v16);
        while (v27 < (v15 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_224A3E204(v13, v43, 0);
            v15 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v13, v43, 0);
      }

LABEL_4:
      v14 = v42 + 1;
      v13 = v15;
      if (v42 + 1 == v33)
      {
        return v50;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_224C5D31C(uint64_t a1)
{
  v1 = a1;
  v21 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAF538();
    sub_224C6BAE4(&unk_2813509A0, 255, MEMORY[0x277CFA140]);
    result = sub_224DAF1F8();
    v1 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = MEMORY[0x277D84F90];
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v12 - 1) & v12;
    if (!*(*(v1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v12))))))
    {
LABEL_20:
      sub_224A3B7E4();
      return v10;
    }

    while (1)
    {
      MEMORY[0x22AA5D350]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_224DAF038();
      }

      result = sub_224DAF078();
      v10 = v21;
      v6 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_224DAF878())
      {
        sub_224DAF538();
        swift_dynamicCast();
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v12 = *(v3 + 8 * v5);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224C5D570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v7 = sub_224DAB018();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v43 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = sub_224DAAD48();
  v15 = *(*(v14 - 8) + 64);
  result = MEMORY[0x28223BE20](v14);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (v20)
  {
    v32 = v19;
    v33 = v17;
    v35 = result;
    v36 = a3;
    v34 = v3;
    v41 = v3 + qword_2813652F8;
    v21 = *(sub_224DAAF48() - 8);
    v39 = v8 + 8;
    v40 = (v8 + 16);
    v38 = v8 + 32;
    v22 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v37 = *(v21 + 72);
    v23 = MEMORY[0x277D84F90];
    while (1)
    {
      v24 = *(v41 + 1);
      (*v41)(v22, v42);
      if (v4)
      {
        break;
      }

      (*v40)(v43, v13, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_224AD92B8(0, v23[2] + 1, 1, v23);
      }

      v26 = v23[2];
      v25 = v23[3];
      if (v26 >= v25 >> 1)
      {
        v23 = sub_224AD92B8(v25 > 1, v26 + 1, 1, v23);
      }

      (*(v8 + 8))(v13, v7);
      v23[2] = v26 + 1;
      (*(v8 + 32))(v23 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v26, v43, v7);
      v22 += v37;
      if (!--v20)
      {
        v27 = v34[10];
        __swift_project_boxed_opaque_existential_1(v34 + 5, v34[8]);
        v29 = v32;
        v28 = v33;
        v30 = v35;
        (*(v33 + 104))(v32, *MEMORY[0x277D46688], v35);
        sub_224DAABC8();
        (*(v28 + 8))(v29, v30);
      }
    }
  }

  return result;
}

size_t sub_224C5D90C(unint64_t a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v52 - v7;
  v9 = sub_224DAAF28();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v70 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v74 = v52 - v14;
  MEMORY[0x28223BE20](v13);
  v69 = v52 - v15;
  v68 = sub_224DAAF48();
  v71 = *(v68 - 8);
  v16 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DAB0B8();
  v57 = *(v19 - 1);
  v20 = *(v57 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_224DAAC58();
  v55 = *(v56 - 8);
  v23 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v53 = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v22;
  if (a1 >> 62)
  {
    goto LABEL_50;
  }

  v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v25)
  {
    v26 = a1;
    a1 = v1;
    v76 = MEMORY[0x277D84F90];
    result = sub_224ADA17C(0, v25 & ~(v25 >> 63), 0);
    if ((v25 & 0x8000000000000000) == 0)
    {
      v60 = v8;
      v52[0] = v19;
      v52[2] = v3;
      v8 = 0;
      v28 = v26;
      v67 = v26 & 0xC000000000000001;
      v52[1] = v1;
      v1 = *(v1 + 32);
      v59 = v26 & 0xFFFFFFFFFFFFFF8;
      v3 = v1 >> 6;
      v58 = v1 & 0x3F;
      v61 = v71 + 32;
      v62 = "liveControlReplicator";
      v65 = v25;
      v66 = v26;
      v29 = v76;
      v63 = v1 >> 6;
      v64 = v1;
      while (1)
      {
        if (v67)
        {
          v30 = MEMORY[0x22AA5DCC0](v8, v28);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            v25 = sub_224DAF838();
            goto LABEL_3;
          }

          if (v8 >= *(v59 + 16))
          {
            goto LABEL_49;
          }

          v30 = *(v28 + 8 * v8 + 32);
        }

        v19 = v30;
        v73 = v29;
        if (v3)
        {
          if (v3 != 1)
          {
            v34 = 1852793705;
            if (v1 != 129)
            {
              v34 = 0x7974697669746361;
            }

            if (v1 == 128)
            {
              v34 = 0x6F69736E65747865;
            }

            v72 = v34;
            goto LABEL_37;
          }

          v75[0] = 0;
          v75[1] = 0xE000000000000000;
          sub_224DAF938();

          strcpy(v75, "configuration-");
          HIBYTE(v75[1]) = -18;
          if (v58 > 1)
          {
            if (v58 == 2)
            {
              v31 = 0xEF77656976657270;
            }

            else
            {
              v31 = 0xEC0000006576696CLL;
            }

            v32 = 0x2D6C6F72746E6F63;
          }

          else
          {
            v31 = 0xE800000000000000;
            if (v58)
            {
              v32 = 0x656E696C656D6974;
            }

            else
            {
              v32 = 0x746F687370616E73;
            }
          }
        }

        else
        {
          v31 = 0xE800000000000000;
          strcpy(v75, "archive-");
          BYTE1(v75[1]) = 0;
          WORD1(v75[1]) = 0;
          HIDWORD(v75[1]) = -402653184;
          if (v1 <= 1)
          {
            v32 = 0x746F687370616E73;
            if (!v1)
            {
              v32 = 0x6C6F686563616C70;
              v31 = 0xEB00000000726564;
            }
          }

          else
          {
            v33 = 0xEF77656976657270;
            if (v1 != 3)
            {
              v33 = 0xEC0000006576696CLL;
            }

            if (v1 == 2)
            {
              v32 = 0x656E696C656D6974;
            }

            else
            {
              v32 = 0x2D6C6F72746E6F63;
            }

            if (v1 == 2)
            {
              v31 = 0xE800000000000000;
            }

            else
            {
              v31 = v33;
            }
          }
        }

        MEMORY[0x22AA5D210](v32, v31);

        v72 = v75[0];
LABEL_37:
        v35 = v18;
        v36 = (v19 + *MEMORY[0x277CFA128]);
        swift_beginAccess();
        if (v36[1])
        {
          v37 = v74;
          v38 = *v36;
          v39 = v36[1];

          v40 = v60;
          sub_224DA9888();
          v41 = sub_224DA9908();
          v42 = *(v41 - 8);
          result = (*(v42 + 48))(v40, 1, v41);
          if (result == 1)
          {
            goto LABEL_52;
          }

          (*(v42 + 32))(v37, v40, v41);
          (*(v42 + 56))(v37, 0, 1, v41);
        }

        else
        {
          v43 = sub_224DA9908();
          (*(*(v43 - 8) + 56))(v74, 1, 1, v43);
        }

        v44 = v69;
        sub_224BFF92C(v74, v69);
        v45 = [v19 tokenString];
        sub_224DAEE18();

        sub_224C6BA7C(v44, v70, MEMORY[0x277D46780]);

        v18 = v35;
        sub_224DAAEE8();
        sub_224ACFD2C(v44);

        v29 = v73;
        v76 = v73;
        a1 = *(v73 + 16);
        v46 = *(v73 + 24);
        if (a1 >= v46 >> 1)
        {
          sub_224ADA17C(v46 > 1, a1 + 1, 1);
          v29 = v76;
        }

        ++v8;
        *(v29 + 16) = a1 + 1;
        (*(v71 + 32))(v29 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * a1, v18, v68);
        v28 = v66;
        v3 = v63;
        v1 = v64;
        if (v65 == v8)
        {
          v19 = v52[0];
          v47 = v57;
          goto LABEL_47;
        }
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {
    v47 = v57;
    v29 = MEMORY[0x277D84F90];
LABEL_47:
    v48 = v55;
    v49 = v53;
    v50 = v56;
    (*(v55 + 104))(v53, *MEMORY[0x277D46560], v56);
    v51 = v54;
    (*(v47 + 104))(v54, *MEMORY[0x277D46828], v19);
    sub_224C5D570(v29, v49, v51);

    (*(v47 + 8))(v51, v19);
    return (*(v48 + 8))(v49, v50);
  }

  return result;
}

uint64_t sub_224C5E21C(unint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
  v6 = *(*(v84 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v84);
  v83 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v82 = &v67 - v10;
  MEMORY[0x28223BE20](v9);
  v81 = &v67 - v11;
  v12 = sub_224DAAF48();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v80 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAB0B8();
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      v70 = v20;
      v71 = v18;
      v72 = v16;

      v23 = sub_224A3DADC(v22);

      v24 = *(v4 + 80);
      __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
      v25 = sub_224DAABB8();
      if (v3)
      {
      }

      v26 = v25;

      v27 = sub_224C6AAE0(v26, v4, v23, sub_224C69568, sub_224C69568);
      v69 = 0;
      v28 = v27;

      swift_bridgeObjectRelease_n();
      v29 = v28[2];
      if (!v29)
      {

LABEL_25:
        v61 = *(v4 + 80);
        __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
        v63 = v71;
        v62 = v72;
        v64 = v70;
        (*(v71 + 104))(v70, *MEMORY[0x277D46828], v72);
        sub_224DAABF8();
        (*(v63 + 8))(v64, v62);
      }

      v68 = v4;
      v92 = MEMORY[0x277D84F90];
      v16 = &v92;
      sub_224ADA17C(0, v29, 0);
      v91 = v92;
      v30 = (v28 + 8);
      v31 = -1 << *(v28 + 32);
      v3 = sub_224DAF798();
      v20 = 0;
      v4 = v13;
      v78 = v13 + 32;
      v79 = v13 + 16;
      v73 = (v28 + 9);
      v74 = v29;
      v13 = 1;
      v75 = (v28 + 8);
      v76 = v4;
      v77 = v28;
      while ((v3 & 0x8000000000000000) == 0 && v3 < 1 << *(v28 + 32))
      {
        if ((*&v30[8 * (v3 >> 6)] & (1 << v3)) == 0)
        {
          goto LABEL_29;
        }

        v87 = 1 << v3;
        v88 = v3 >> 6;
        v32 = *(v28 + 9);
        v85 = v20;
        v86 = v32;
        v33 = v84;
        v34 = *(v84 + 48);
        v35 = v28[6];
        v90 = *(v4 + 72);
        v36 = v81;
        (*(v4 + 16))(v81, v35 + v90 * v3, v12);
        v37 = v28[7];
        v16 = sub_224DA9908();
        v38 = v12;
        v39 = *(v16 - 1);
        v40 = v37 + *(v39 + 72) * v3;
        v41 = *(v39 + 16);
        v89 = v3;
        v41(&v36[v34], v40, v16);
        v42 = *(v4 + 32);
        v43 = v82;
        v42(v82, v36, v38);
        v44 = &v36[v34];
        v45 = v80;
        (*(v39 + 32))(&v43[*(v33 + 48)], v44, v16);
        v46 = v43;
        v47 = v83;
        sub_224A44E4C(v46, v83, &qword_27D6F3890, &unk_224DB9C30);
        v48 = *(v33 + 48);
        v42(v45, v47, v38);
        (*(v39 + 8))(v47 + v48, v16);
        v49 = v91;
        v92 = v91;
        v51 = *(v91 + 16);
        v50 = *(v91 + 24);
        v12 = v51 + 1;
        if (v51 >= v50 >> 1)
        {
          v16 = &v92;
          sub_224ADA17C(v50 > 1, v51 + 1, 1);
          v49 = v92;
        }

        *(v49 + 16) = v12;
        v4 = v76;
        v52 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v91 = v49;
        v42((v49 + v52 + v51 * v90), v45, v38);
        v28 = v77;
        v13 = 1;
        v3 = 1 << *(v77 + 32);
        if (v89 >= v3)
        {
          goto LABEL_30;
        }

        v12 = v38;
        v30 = v75;
        v20 = v87;
        v53 = *&v75[8 * v88];
        if ((v53 & v87) == 0)
        {
          goto LABEL_31;
        }

        v20 = *(v77 + 9);
        if (v86 != v20)
        {
          goto LABEL_32;
        }

        v54 = v53 & (-2 << (v89 & 0x3F));
        if (v54)
        {
          v3 = __clz(__rbit64(v54)) | v89 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v55 = v77;
          v56 = v88 << 6;
          v57 = v88 + 1;
          v58 = &v73[8 * v88];
          while (v57 < (v3 + 63) >> 6)
          {
            v60 = *v58++;
            v59 = v60;
            v56 += 64;
            ++v57;
            if (v60)
            {
              sub_224A3E204(v89, v86, 0);
              v3 = __clz(__rbit64(v59)) + v56;
              goto LABEL_22;
            }
          }

          sub_224A3E204(v89, v86, 0);
LABEL_22:
          v28 = v55;
        }

        v20 = v85 + 1;
        if (v85 + 1 == v74)
        {

          v4 = v68;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v65 = v18;
      v66 = v20;
      result = sub_224DAF838();
      v20 = v66;
      v18 = v65;
      if (!result)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_224C5E930(uint64_t a1)
{
  v3 = sub_224DAAF28();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v64 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v63 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v67 = &v44 - v11;
  v62 = sub_224DAAF48();
  v12 = *(v62 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v62);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_224DAB0B8();
  v48 = *(v49 - 8);
  v16 = *(v48 + 64);
  MEMORY[0x28223BE20](v49);
  v47 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAAC58();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 16);
  if (!v23)
  {
    v68 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  v44 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v19;
  v46 = v18;
  v70 = MEMORY[0x277D84F90];
  v61 = v1;
  v66 = v23;
  sub_224ADA17C(0, v23, 0);
  v25 = *(v9 + 16);
  v24 = v9 + 16;
  v26 = a1 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
  v56 = "liveControlReplicator";
  v57 = v25;
  v27 = *(v1 + 32);
  v28 = v27 >> 6;
  v68 = v70;
  v50 = v27 & 0x3F;
  v51 = v27;
  v53 = *(v24 + 56);
  v54 = (v24 - 8);
  v52 = v12 + 32;
  v59 = v12;
  v60 = v24;
  v58 = v15;
  v55 = v27 >> 6;
  do
  {
    v57(v67, v26, v8);
    if (!v28)
    {
      v29 = 0xE800000000000000;
      strcpy(v69, "archive-");
      BYTE1(v69[1]) = 0;
      WORD1(v69[1]) = 0;
      HIDWORD(v69[1]) = -402653184;
      if (v51 <= 1)
      {
        v30 = 0x746F687370616E73;
        if (!v51)
        {
          v30 = 0x6C6F686563616C70;
          v29 = 0xEB00000000726564;
        }
      }

      else
      {
        v31 = 0xEF77656976657270;
        if (v51 != 3)
        {
          v31 = 0xEC0000006576696CLL;
        }

        if (v51 == 2)
        {
          v30 = 0x656E696C656D6974;
        }

        else
        {
          v30 = 0x2D6C6F72746E6F63;
        }

        if (v51 == 2)
        {
          v29 = 0xE800000000000000;
        }

        else
        {
          v29 = v31;
        }
      }

      goto LABEL_28;
    }

    if (v28 == 1)
    {
      v69[0] = 0;
      v69[1] = 0xE000000000000000;
      sub_224DAF938();

      strcpy(v69, "configuration-");
      HIBYTE(v69[1]) = -18;
      if (v50 > 1)
      {
        if (v50 == 2)
        {
          v29 = 0xEF77656976657270;
        }

        else
        {
          v29 = 0xEC0000006576696CLL;
        }

        v30 = 0x2D6C6F72746E6F63;
      }

      else
      {
        v29 = 0xE800000000000000;
        if (v50)
        {
          v30 = 0x656E696C656D6974;
        }

        else
        {
          v30 = 0x746F687370616E73;
        }
      }

LABEL_28:
      MEMORY[0x22AA5D210](v30, v29);

      v65 = v69[0];
      goto LABEL_29;
    }

    v32 = 1852793705;
    if (v51 != 129)
    {
      v32 = 0x7974697669746361;
    }

    if (v51 == 128)
    {
      v32 = 0x6F69736E65747865;
    }

    v65 = v32;
LABEL_29:
    v33 = sub_224DA9908();
    v34 = v63;
    (*(*(v33 - 8) + 56))(v63, 1, 1, v33);
    v35 = v67;
    sub_224DAA218();
    sub_224C6BA7C(v34, v64, MEMORY[0x277D46780]);
    sub_224DAAEE8();
    sub_224ACFD2C(v34);
    (*v54)(v35, v8);
    v36 = v68;
    v70 = v68;
    v38 = *(v68 + 16);
    v37 = *(v68 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_224ADA17C(v37 > 1, v38 + 1, 1);
      v36 = v70;
    }

    *(v36 + 16) = v38 + 1;
    v39 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v68 = v36;
    (*(v59 + 32))(v36 + v39 + *(v59 + 72) * v38, v15, v62);
    v26 += v53;
    --v66;
    v28 = v55;
  }

  while (v66);
  v18 = v46;
  v19 = v45;
  v22 = v44;
LABEL_35:
  (*(v19 + 104))(v22, *MEMORY[0x277D46560], v18);
  v40 = v48;
  v41 = v47;
  v42 = v49;
  (*(v48 + 104))(v47, *MEMORY[0x277D46828], v49);
  sub_224C5D570(v68, v22, v41);

  (*(v40 + 8))(v41, v42);
  return (*(v19 + 8))(v22, v18);
}

uint64_t sub_224C5F0E8(uint64_t a1)
{
  v3 = v1;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
  v5 = *(*(v84 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v84);
  v83 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v82 = &v67 - v9;
  MEMORY[0x28223BE20](v8);
  v81 = &v67 - v10;
  v11 = sub_224DAAF48();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v80 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DAB0B8();
  v16 = *(*(v15 - 8) + 64);
  result = MEMORY[0x28223BE20](v15);
  if (!*(a1 + 16))
  {
    return result;
  }

  v70 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v19;
  v72 = result;

  v21 = sub_224AE9604(v20);

  v22 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v23 = sub_224DAABB8();
  if (v2)
  {
  }

  v24 = v23;

  v25 = sub_224C6AAE0(v24, v1, v21, sub_224C69F08, sub_224C69F08);
  v69 = 0;
  v26 = v25;

  swift_bridgeObjectRelease_n();
  v27 = v26[2];
  if (!v27)
  {

LABEL_24:
    v63 = v3[10];
    __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
    v65 = v71;
    v64 = v72;
    v66 = v70;
    (*(v71 + 104))(v70, *MEMORY[0x277D46828], v72);
    sub_224DAABF8();
    (*(v65 + 8))(v66, v64);
  }

  v68 = v1;
  v92 = MEMORY[0x277D84F90];
  sub_224ADA17C(0, v27, 0);
  v91 = v92;
  v28 = (v26 + 8);
  v29 = -1 << *(v26 + 32);
  result = sub_224DAF798();
  v30 = result;
  v31 = 0;
  v32 = v12;
  v78 = v12 + 32;
  v79 = v12 + 16;
  v73 = (v26 + 9);
  v74 = v27;
  v75 = (v26 + 8);
  v76 = v12;
  v77 = v26;
  while ((v30 & 0x8000000000000000) == 0 && v30 < 1 << *(v26 + 32))
  {
    if ((*&v28[8 * (v30 >> 6)] & (1 << v30)) == 0)
    {
      goto LABEL_28;
    }

    v87 = 1 << v30;
    v88 = v30 >> 6;
    v33 = *(v26 + 9);
    v85 = v31;
    v86 = v33;
    v34 = v84;
    v35 = *(v84 + 48);
    v36 = v26[6];
    v90 = *(v32 + 72);
    v37 = v81;
    (*(v32 + 16))(v81, v36 + v90 * v30, v11);
    v38 = v26[7];
    v39 = sub_224DA9908();
    v40 = v11;
    v41 = *(v39 - 8);
    v42 = v38 + *(v41 + 72) * v30;
    v43 = *(v41 + 16);
    v89 = v30;
    v43(&v37[v35], v42, v39);
    v44 = *(v32 + 32);
    v45 = v82;
    v44(v82, v37, v40);
    v46 = &v37[v35];
    v47 = v80;
    (*(v41 + 32))(&v45[*(v34 + 48)], v46, v39);
    v48 = v45;
    v49 = v83;
    sub_224A44E4C(v48, v83, &qword_27D6F3890, &unk_224DB9C30);
    v50 = *(v34 + 48);
    v44(v47, v49, v40);
    (*(v41 + 8))(v49 + v50, v39);
    v51 = v91;
    v92 = v91;
    v53 = *(v91 + 16);
    v52 = *(v91 + 24);
    if (v53 >= v52 >> 1)
    {
      sub_224ADA17C(v52 > 1, v53 + 1, 1);
      v51 = v92;
    }

    *(v51 + 16) = v53 + 1;
    v32 = v76;
    v54 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v91 = v51;
    v44((v51 + v54 + v53 * v90), v47, v40);
    v26 = v77;
    v30 = 1 << *(v77 + 32);
    result = v89;
    if (v89 >= v30)
    {
      goto LABEL_29;
    }

    v11 = v40;
    v28 = v75;
    v55 = *&v75[8 * v88];
    if ((v55 & v87) == 0)
    {
      goto LABEL_30;
    }

    if (v86 != *(v77 + 9))
    {
      goto LABEL_31;
    }

    v56 = v55 & (-2 << (v89 & 0x3F));
    if (v56)
    {
      v30 = __clz(__rbit64(v56)) | v89 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v57 = v77;
      v58 = v88 << 6;
      v59 = v88 + 1;
      v60 = &v73[8 * v88];
      while (v59 < (v30 + 63) >> 6)
      {
        v62 = *v60++;
        v61 = v62;
        v58 += 64;
        ++v59;
        if (v62)
        {
          result = sub_224A3E204(v89, v86, 0);
          v30 = __clz(__rbit64(v61)) + v58;
          goto LABEL_21;
        }
      }

      result = sub_224A3E204(v89, v86, 0);
LABEL_21:
      v26 = v57;
    }

    v31 = v85 + 1;
    if (v85 + 1 == v74)
    {

      v3 = v68;
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_224C5F7C4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5300, &qword_224DB6600);
  v6 = *(v23 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v23);
  v9 = &v22 - v8;
  v10 = *(v0 + 136);
  v11 = __swift_project_boxed_opaque_existential_1((v0 + 112), v10);
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15);
  v16 = sub_224DAA168();
  (*(v12 + 8))(v15, v10);
  v24 = v16;
  v25 = *(v1 + 104);
  v17 = v25;
  v18 = sub_224DAF358();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  v19 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4730, &unk_224DBAF00);
  sub_224AC319C();
  sub_224A33088(&qword_281351010, &unk_27D6F4730, &unk_224DBAF00);
  sub_224C6BAE4(&qword_281350A80, 255, sub_224AC319C);
  sub_224DAB448();
  sub_224A3311C(v5, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351210, &unk_27D6F5300, &qword_224DB6600);
  v20 = v23;
  sub_224DAB488();

  (*(v6 + 8))(v9, v20);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

void sub_224C5FB98()
{
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
  v2 = *(*(v139 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v139);
  v138 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v137 = &v126 - v6;
  MEMORY[0x28223BE20](v5);
  v136 = &v126 - v7;
  v8 = sub_224DAAF28();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v146 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v145 = &v126 - v12;
  *&v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v150 = *(v144 - 8);
  v13 = *(v150 + 64);
  MEMORY[0x28223BE20](v144);
  v143 = &v126 - v14;
  v147 = sub_224DAAF48();
  v15 = *(v147 - 1);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v147);
  v19 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v126 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v135 = &v126 - v24;
  MEMORY[0x28223BE20](v23);
  v151 = &v126 - v25;
  v26 = sub_224DAB8C8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = (&v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = v0[13];
  *v30 = v31;
  (*(v27 + 104))(v30, *MEMORY[0x277D85200], v26);
  v32 = v31;
  LOBYTE(v31) = sub_224DAB8F8();
  (*(v27 + 8))(v30, v26);
  if (v31)
  {
    v130 = v22;
    v131 = v19;
    v148 = v15;
    v33 = v0[31];
    v34 = v0[32];
    v129 = v0;
    __swift_project_boxed_opaque_existential_1(v0 + 28, v33);
    v35 = sub_224DAC678();
    v36 = v35;
    v37 = *(v35 + 16);
    v38 = MEMORY[0x277D84F90];
    if (v37)
    {
      v39 = 0;
      v40 = v35 + 32;
      while (v39 < *(v36 + 16))
      {
        sub_224A3317C(v40, &v153);
        __swift_project_boxed_opaque_existential_1(&v153, v154);
        v41 = sub_224DAE338();
        v42 = [v41 isRemote];

        if (v42)
        {
          __swift_destroy_boxed_opaque_existential_1(&v153);
        }

        else
        {
          sub_224A36F98(&v153, v152);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v155 = v38;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_224ADA390(0, *(v38 + 16) + 1, 1);
            v38 = v155;
          }

          v45 = *(v38 + 16);
          v44 = *(v38 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_224ADA390((v44 > 1), v45 + 1, 1);
            v38 = v155;
          }

          *(v38 + 16) = v45 + 1;
          sub_224A36F98(v152, v38 + 40 * v45 + 32);
        }

        ++v39;
        v40 += 40;
        if (v37 == v39)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:

      v46 = *(v38 + 16);
      if (v46)
      {
        *&v152[0] = MEMORY[0x277D84F90];
        sub_224ADA17C(0, v46, 0);
        v142 = "liveControlReplicator";
        v133 = v38;
        v47 = v38 + 32;
        v141 = (v150 + 8);
        v140 = v148 + 32;
        v49 = v151;
        v48 = *&v152[0];
        do
        {
          v150 = v48;
          v151 = v46;
          sub_224A3317C(v47, &v153);
          __swift_project_boxed_opaque_existential_1(&v153, v154);
          v149 = sub_224DAE328();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
          sub_224A33088(&qword_281351980, &qword_27D6F3900, &unk_224DB4640);
          sub_224A33088(&unk_281351950, &qword_27D6F3900, &unk_224DB4640);
          sub_224A33088(&qword_281351978, &qword_27D6F3900, &unk_224DB4640);
          sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640);
          v50 = v143;
          sub_224DAA208();
          v51 = sub_224DA9908();
          v52 = v145;
          (*(*(v51 - 8) + 56))(v145, 1, 1, v51);
          v53 = v144;
          sub_224DAA218();
          sub_224C6BA7C(v52, v146, MEMORY[0x277D46780]);
          v48 = v150;
          sub_224DAAEE8();
          sub_224ACFD2C(v52);
          (*v141)(v50, v53);
          __swift_destroy_boxed_opaque_existential_1(&v153);
          *&v152[0] = v48;
          v55 = *(v48 + 16);
          v54 = *(v48 + 24);
          if (v55 >= v54 >> 1)
          {
            sub_224ADA17C(v54 > 1, v55 + 1, 1);
            v48 = *&v152[0];
          }

          *(v48 + 16) = v55 + 1;
          (*(v148 + 32))(v48 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v55, v49, v147);
          v47 += 40;
          v46 = v151 - 1;
        }

        while (v151 != 1);
      }

      else
      {

        v48 = MEMORY[0x277D84F90];
      }

      v56 = sub_224AE924C(v48);

      v57 = v129[10];
      __swift_project_boxed_opaque_existential_1(v129 + 3, v129[6]);
      v58 = sub_224DAABB8();
      v59 = v148;
      if (v1)
      {

        return;
      }

      v128 = v56;
      v60 = sub_224C6831C(v58);
      v127 = 0;

      v61 = *(v60 + 16);
      if (v61)
      {
        *&v153 = MEMORY[0x277D84F90];
        sub_224ADA17C(0, v61, 0);
        v151 = v153;
        v62 = (v60 + 64);
        v63 = -1 << *(v60 + 32);
        v64 = sub_224DAF798();
        v65 = 0;
        v141 = (v59 + 16);
        v140 = v59 + 32;
        v132 = v60 + 72;
        v66 = v147;
        v133 = v61;
        v142 = (v60 + 64);
        v134 = v60;
        while ((v64 & 0x8000000000000000) == 0 && v64 < 1 << *(v60 + 32))
        {
          if ((*&v62[8 * (v64 >> 6)] & (1 << v64)) == 0)
          {
            goto LABEL_64;
          }

          v145 = 1 << v64;
          v146 = v64 >> 6;
          v69 = *(v60 + 36);
          v143 = v65;
          *&v144 = v69;
          v70 = *(v139 + 48);
          v71 = *(v60 + 48);
          v150 = *(v59 + 72);
          v72 = v71 + v150 * v64;
          v73 = *(v59 + 16);
          v74 = v59;
          v75 = v136;
          v73(v136, v72, v66);
          v149 = v64;
          v76 = *(v60 + 56);
          v77 = sub_224DA9908();
          v78 = v66;
          v79 = *(v77 - 8);
          (*(v79 + 16))(&v75[v70], v76 + *(v79 + 72) * v64, v77);
          v80 = *(v74 + 32);
          v81 = v137;
          v80(v137, v75, v78);
          v82 = v139;
          v83 = &v75[v70];
          v84 = v78;
          (*(v79 + 32))(&v81[*(v139 + 48)], v83, v77);
          v85 = v81;
          v86 = v138;
          sub_224A44E4C(v85, v138, &qword_27D6F3890, &unk_224DB9C30);
          v87 = *(v82 + 48);
          v88 = v135;
          v80(v135, v86, v84);
          (*(v79 + 8))(v86 + v87, v77);
          *&v153 = v151;
          v90 = *(v151 + 16);
          v89 = *(v151 + 24);
          if (v90 >= v89 >> 1)
          {
            sub_224ADA17C(v89 > 1, v90 + 1, 1);
            v151 = v153;
          }

          v91 = v151;
          *(v151 + 16) = v90 + 1;
          v80((v91 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + v90 * v150), v88, v84);
          v60 = v134;
          v64 = 1 << *(v134 + 32);
          v62 = v142;
          if (v149 >= v64)
          {
            goto LABEL_65;
          }

          v92 = *&v142[8 * v146];
          if ((v92 & v145) == 0)
          {
            goto LABEL_66;
          }

          if (v144 != *(v134 + 36))
          {
            goto LABEL_67;
          }

          v66 = v84;
          v93 = v92 & (-2 << (v149 & 0x3F));
          if (v93)
          {
            v64 = __clz(__rbit64(v93)) | v149 & 0x7FFFFFFFFFFFFFC0;
            v59 = v148;
            v67 = v133;
            v68 = v143;
          }

          else
          {
            v94 = v146 << 6;
            v95 = (v146 + 1);
            v96 = (v132 + 8 * v146);
            v59 = v148;
            v67 = v133;
            while (v95 < (v64 + 63) >> 6)
            {
              v98 = *v96++;
              v97 = v98;
              v94 += 64;
              ++v95;
              if (v98)
              {
                sub_224A3E204(v149, v144, 0);
                v64 = __clz(__rbit64(v97)) + v94;
                goto LABEL_40;
              }
            }

            sub_224A3E204(v149, v144, 0);
LABEL_40:
            v68 = v143;
          }

          v65 = v68 + 1;
          if (v65 == v67)
          {

            goto LABEL_43;
          }
        }

        goto LABEL_63;
      }

      v151 = MEMORY[0x277D84F90];
      v66 = v147;
LABEL_43:
      v99 = sub_224AE924C(v151);

      if (*(v99 + 16) <= *(v128 + 16) >> 3)
      {
        *&v153 = v128;
        sub_224AFF078(v99);
        v66 = v147;

        v100 = v153;
      }

      else
      {
        v100 = sub_224AFF5A0(v99, v128);
      }

      v101 = v127;
      v142 = sub_224C5CE60(v100);
      v143 = v101;
      v103 = 0;
      v104 = v100 + 56;
      v105 = 1 << *(v100 + 32);
      v106 = -1;
      if (v105 < 64)
      {
        v106 = ~(-1 << v105);
      }

      v107 = v106 & *(v100 + 56);
      v108 = (v105 + 63) >> 6;
      v150 = v59 + 32;
      v151 = v59 + 16;
      v147 = (v59 + 8);
      *&v102 = 136446210;
      v144 = v102;
      v149 = v100;
      if (v107)
      {
        goto LABEL_51;
      }

LABEL_52:
      while (1)
      {
        v109 = v103 + 1;
        if (__OFADD__(v103, 1))
        {
          break;
        }

        if (v109 >= v108)
        {

          sub_224C66568(v142);

          return;
        }

        v107 = *(v104 + 8 * v109);
        ++v103;
        if (v107)
        {
          while (1)
          {
            v110 = v130;
            (*(v59 + 16))(v130, *(v100 + 48) + *(v59 + 72) * (__clz(__rbit64(v107)) | (v109 << 6)), v66);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v107 &= v107 - 1;
            v111 = sub_224DAB258();
            __swift_project_value_buffer(v111, qword_281365120);
            v112 = v131;
            (*v150)(v131, v110, v66);
            v113 = v66;
            v114 = sub_224DAB228();
            v115 = sub_224DAF2A8();
            if (os_log_type_enabled(v114, v115))
            {
              v116 = swift_slowAlloc();
              v146 = swift_slowAlloc();
              *&v153 = v146;
              *v116 = v144;
              sub_224C6BAE4(&qword_281351720, 255, MEMORY[0x277D46790]);
              LODWORD(v145) = v115;
              v117 = sub_224DAFD28();
              v118 = v113;
              v120 = v119;
              v121 = v112;
              v122 = v118;
              (*v147)(v121, v118);
              v123 = sub_224A33F74(v117, v120, &v153);

              *(v116 + 4) = v123;
              _os_log_impl(&dword_224A2F000, v114, v145, "Found unreplicated icon: %{public}s", v116, 0xCu);
              v124 = v146;
              __swift_destroy_boxed_opaque_existential_1(v146);
              MEMORY[0x22AA5EED0](v124, -1, -1);
              v125 = v116;
              v59 = v148;
              MEMORY[0x22AA5EED0](v125, -1, -1);

              v103 = v109;
              v66 = v122;
              v100 = v149;
              if (!v107)
              {
                goto LABEL_52;
              }
            }

            else
            {

              (*v147)(v112, v113);
              v103 = v109;
              v66 = v113;
              v100 = v149;
              if (!v107)
              {
                goto LABEL_52;
              }
            }

LABEL_51:
            v109 = v103;
          }
        }
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }

  __break(1u);
}

void sub_224C60B98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v135 = &v117 - v3;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v136 = *(v134 - 8);
  v4 = *(v136 + 64);
  MEMORY[0x28223BE20](v134);
  v118 = &v117 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v126 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v130 = &v117 - v10;
  v11 = sub_224DAAF28();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v124 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_224DAAF48();
  v139 = *(v125 - 8);
  v14 = v139[8];
  MEMORY[0x28223BE20](v125);
  v131 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v129 = &v117 - v18;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v138 = *(v128 - 8);
  v19 = *(v138 + 64);
  MEMORY[0x28223BE20](v128);
  v127 = &v117 - v20;
  v21 = v0[31];
  v22 = v0[32];
  v120 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 28, v21);
  v23 = sub_224DAC678();
  v24 = v23;
  v25 = *(v23 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = (v23 + 32);
    v28 = MEMORY[0x277D84F90];
    while (v26 < *(v24 + 16))
    {
      sub_224A3317C(v27, &v146);
      __swift_project_boxed_opaque_existential_1(&v146, v147);
      v29 = sub_224DAE338();
      v30 = [v29 isRemote];

      if (v30)
      {
        sub_224A36F98(&v146, &v143);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v141 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224ADA390(0, *(v28 + 16) + 1, 1);
          v28 = v141;
        }

        v33 = *(v28 + 16);
        v32 = *(v28 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_224ADA390((v32 > 1), v33 + 1, 1);
          v28 = v141;
        }

        *(v28 + 16) = v33 + 1;
        sub_224A36F98(&v143, v28 + 40 * v33 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v146);
      }

      ++v26;
      v27 += 40;
      if (v25 == v26)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_57;
  }

  v28 = MEMORY[0x277D84F90];
LABEL_13:

  v34 = v120[10];
  __swift_project_boxed_opaque_existential_1(v120 + 3, v120[6]);
  v35 = sub_224DAABB8();
  v117 = 0;
  v47 = MEMORY[0x277D84F90];
  v132 = *(v28 + 16);
  if (v132)
  {
    v27 = 0;
    v48 = v28 + 32;
    v123 = (v138 + 16);
    v121 = "liveControlReplicator";
    v122 = (v139 + 1);
    *&v36 = 136446210;
    v119 = v36;
    v133 = v35;
    while (v27 < *(v28 + 16))
    {
      sub_224A3317C(v48, &v146);
      __swift_project_boxed_opaque_existential_1(&v146, v147);
      v50 = sub_224DAE338();
      v51 = &v50[*MEMORY[0x277CFA128]];
      swift_beginAccess();
      v52 = *v51;
      v53 = *(v51 + 1);

      if (v53)
      {
        v138 = v48;
        v139 = v47;
        __swift_project_boxed_opaque_existential_1(&v146, v147);
        v54 = sub_224DAE338();
        sub_224DAF538();
        v55 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        (*v123)(v127, &v54[v55], v128);
        v56 = *MEMORY[0x277CFA130];
        swift_beginAccess();
        sub_224A3796C(&v54[v56], v129, &unk_27D6F5060, &qword_224DB5620);
        v57 = sub_224DAF508();

        v137 = v57;
        v58 = [v57 tokenString];
        sub_224DAEE18();
        v59 = v130;
        sub_224DA9888();
        v60 = sub_224DA9908();
        v61 = *(v60 - 8);
        if ((*(v61 + 48))(v59, 1, v60) == 1)
        {
          __break(1u);
          return;
        }

        v62 = v124;
        (*(v61 + 32))(v124, v59, v60);
        v63 = *(v61 + 56);
        v63(v62, 0, 1, v60);
        v64 = v131;
        sub_224DAAEE8();
        v65 = v133;
        if (*(v133 + 16) && (v66 = sub_224B0B3CC(v64), (v67 & 1) != 0))
        {
          v49 = v126;
          (*(v61 + 16))(v126, *(v65 + 56) + *(v61 + 72) * v66, v60);

          (*v122)(v64, v125);
          v63(v49, 0, 1, v60);
          sub_224A3311C(v49, &unk_27D6F5630, &unk_224DB34C0);
          v47 = v139;
        }

        else
        {
          v68 = v126;
          v63(v126, 1, 1, v60);
          sub_224A3311C(v68, &unk_27D6F5630, &unk_224DB34C0);
          if (qword_2813516C8 != -1)
          {
            swift_once();
          }

          v69 = sub_224DAB258();
          __swift_project_value_buffer(v69, qword_281365120);
          sub_224A3317C(&v146, &v143);
          v70 = sub_224DAB228();
          v71 = sub_224DAF2A8();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v140 = v73;
            *v72 = v119;
            __swift_project_boxed_opaque_existential_1(&v143, v144);
            v74 = sub_224DAE338();
            v75 = [v74 description];

            v76 = sub_224DAEE18();
            v78 = v77;

            __swift_destroy_boxed_opaque_existential_1(&v143);
            v79 = sub_224A33F74(v76, v78, &v140);
            v64 = v131;

            *(v72 + 4) = v79;
            _os_log_impl(&dword_224A2F000, v70, v71, "Found orphaned remote extension: %{public}s", v72, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v73);
            MEMORY[0x22AA5EED0](v73, -1, -1);
            MEMORY[0x22AA5EED0](v72, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(&v143);
          }

          v47 = v139;
          v80 = v137;
          sub_224A3317C(&v146, &v143);
          v81 = swift_isUniquelyReferenced_nonNull_native();
          v142 = v47;
          if ((v81 & 1) == 0)
          {
            v47 = sub_224A5C040(0, v47[2] + 1, 1, v47);
            v142 = v47;
          }

          v83 = v47[2];
          v82 = v47[3];
          if (v83 >= v82 >> 1)
          {
            v47 = sub_224A5C040((v82 > 1), v83 + 1, 1, v47);

            v142 = v47;
          }

          else
          {
          }

          (*v122)(v64, v125);
          v84 = v144;
          v85 = v145;
          v86 = __swift_mutable_project_boxed_opaque_existential_1(&v143, v144);
          v87 = *(*(v84 - 8) + 64);
          MEMORY[0x28223BE20](v86);
          v89 = &v117 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v90 + 16))(v89);
          sub_224A5C064(v83, v89, &v142, v84, v85);
          __swift_destroy_boxed_opaque_existential_1(&v143);
        }

        v48 = v138;
      }

      ++v27;
      __swift_destroy_boxed_opaque_existential_1(&v146);
      v48 += 40;
      if (v132 == v27)
      {
        goto LABEL_38;
      }
    }

LABEL_57:
    __break(1u);
    swift_once();
    v37 = sub_224DAB258();
    __swift_project_value_buffer(v37, qword_281365120);
    v38 = v27;
    v39 = sub_224DAB228();
    v40 = sub_224DAF288();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = v27;
      v43 = swift_slowAlloc();
      *v41 = 138543362;
      v44 = v42;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v45;
      *v43 = v45;
      _os_log_impl(&dword_224A2F000, v39, v40, "Could not retrieve record versions: %{public}@", v41, 0xCu);
      sub_224A3311C(v43, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v43, -1, -1);
      MEMORY[0x22AA5EED0](v41, -1, -1);
      v46 = v42;
LABEL_16:

      return;
    }

    v106 = v27;
LABEL_47:

    return;
  }

LABEL_38:

  v91 = v47[2];
  if (v91)
  {
    *&v143 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v139 = v47;
    v92 = (v47 + 4);
    v93 = (v47 + 4);
    v94 = v91;
    do
    {
      sub_224A3317C(v93, &v146);
      __swift_project_boxed_opaque_existential_1(&v146, v147);
      sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1(&v146);
      sub_224DAF9B8();
      v95 = *(v143 + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v93 += 40;
      --v94;
    }

    while (v94);
    v96 = v143;
    v97 = *__swift_project_boxed_opaque_existential_1(v120 + 39, v120[42]);
    sub_224BB36A8(v96);

    v140 = MEMORY[0x277D84F90];
    sub_224ADA350(0, v91, 0);
    v98 = v140;
    v99 = v118;
    do
    {
      sub_224A3317C(v92, &v146);
      __swift_project_boxed_opaque_existential_1(&v146, v147);
      sub_224DAE328();
      sub_224DA9FF8();
      __swift_project_boxed_opaque_existential_1(&v146, v147);
      v100 = sub_224DAE338();
      v101 = &v100[*MEMORY[0x277CFA128]];
      swift_beginAccess();
      v103 = *v101;
      v102 = *(v101 + 1);

      sub_224DAA258();
      __swift_destroy_boxed_opaque_existential_1(&v146);
      v140 = v98;
      v105 = *(v98 + 16);
      v104 = *(v98 + 24);
      if (v105 >= v104 >> 1)
      {
        sub_224ADA350(v104 > 1, v105 + 1, 1);
        v99 = v118;
        v98 = v140;
      }

      *(v98 + 16) = v105 + 1;
      (*(v136 + 32))(v98 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v105, v99, v134);
      v92 += 40;
      --v91;
    }

    while (v91);

    v107 = v120[19];
    v108 = v120[21];
    swift_getObjectType();
    v109 = v117;
    sub_224DA9CE8();
    if (v109)
    {

      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v110 = sub_224DAB258();
      __swift_project_value_buffer(v110, qword_281365120);
      v111 = v109;
      v39 = sub_224DAB228();
      v112 = sub_224DAF288();

      if (os_log_type_enabled(v39, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        *v113 = 138543362;
        v115 = v109;
        v116 = _swift_stdlib_bridgeErrorToNSError();
        *(v113 + 4) = v116;
        *v114 = v116;
        _os_log_impl(&dword_224A2F000, v39, v112, "Could not remove icons for purged remote extensions: %{public}@", v113, 0xCu);
        sub_224A3311C(v114, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v114, -1, -1);
        MEMORY[0x22AA5EED0](v113, -1, -1);
        v46 = v109;
        goto LABEL_16;
      }

      v106 = v109;
      goto LABEL_47;
    }
  }

  else
  {
  }
}

uint64_t sub_224C61CEC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2 - 8);
  v6 = v28 - v5;
  v7 = *(v0 + 16);
  if (v7)
  {
    v8 = *(v0 + 304);
    v9 = qword_2813652D8;
    if ((*(v8 + qword_2813652D8) & 1) == 0)
    {
      *(v8 + qword_2813652D8) = 1;
      v10 = sub_224DAF128();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v8;

      sub_224D8E744(0, 0, v6, &unk_224DBC7A8, v11);

      v9 = qword_2813652D8;
    }

    v12 = *(v1 + 352);
    if ((*(v12 + v9) & 1) == 0)
    {
      *(v12 + v9) = 1;
      v13 = sub_224DAF128();
      (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v12;

      sub_224D8E744(0, 0, v6, &unk_224DBC7B0, v14);
    }

    v15 = sub_224DAF128();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v1;

    sub_224D8E744(0, 0, v6, &unk_224DBC7C0, v16);

    v17 = *(v1 + 256);
    __swift_project_boxed_opaque_existential_1((v1 + 224), *(v1 + 248));
    v28[1] = sub_224DAC698();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
    sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    sub_224C62944();
    result = sub_224C62C78();
  }

  if ((v7 & 2) != 0)
  {
    v18 = *(v1 + 304);
    v19 = qword_2813652D8;
    if ((*(v18 + qword_2813652D8) & 1) == 0)
    {
      *(v18 + qword_2813652D8) = 1;
      v20 = sub_224DAF128();
      (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = v18;

      sub_224D8E744(0, 0, v6, &unk_224DBC788, v21);

      v19 = qword_2813652D8;
    }

    v22 = *(v1 + 352);
    if ((*(v22 + v19) & 1) == 0)
    {
      *(v22 + v19) = 1;
      v23 = sub_224DAF128();
      (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
      v24 = swift_allocObject();
      v24[2] = 0;
      v24[3] = 0;
      v24[4] = v22;

      sub_224D8E744(0, 0, v6, &unk_224DBC790, v24);
    }

    v25 = *(v1 + 360);
    if ((v25 & 1) != 0 || *(v1 + 361) == 1)
    {
      if ((v7 & 1) == 0)
      {
        v26 = sub_224DAF128();
        (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
        v27 = swift_allocObject();
        v27[2] = 0;
        v27[3] = 0;
        v27[4] = v1;

        sub_224D8E744(0, 0, v6, &unk_224DBC7A0, v27);
      }

      sub_224C63720(v25, *(v1 + 361));
      return sub_224C63ADC();
    }
  }

  return result;
}

uint64_t sub_224C622A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_224DAAE38();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = sub_224DA9908();
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33A8, &unk_224DB35D0);
  v4[11] = v11;
  v12 = *(v11 - 8);
  v4[12] = v12;
  v13 = *(v12 + 64) + 15;
  v4[13] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33B0, &qword_224DBC7F0);
  v4[14] = v14;
  v15 = *(v14 - 8);
  v4[15] = v15;
  v16 = *(v15 + 64) + 15;
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C6248C, 0, 0);
}

uint64_t sub_224C6248C()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[4];
  v6 = v5[9];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
  v7 = *(v6 + 24);
  sub_224DAACA8();
  sub_224DAF158();
  (*(v3 + 8))(v2, v4);
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_224C625A4;
  v10 = v0[16];
  v11 = v0[14];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v11);
}

uint64_t sub_224C625A4()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224C626A0, 0, 0);
}

uint64_t sub_224C626A0()
{
  v1 = v0 + 2;
  v2 = v0[2];
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v0[6];
      v0[3] = MEMORY[0x277D84F90];
      sub_224ADA3D0(0, v3, 0);
      v5 = v0[3];
      v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v7 = *(v4 + 72);
      v8 = *(v4 + 16);
      do
      {
        v9 = v0[10];
        v10 = v0[6];
        v11 = v0[7];
        v12 = v0[5];
        v8(v11, v6, v12);
        sub_224DAAD98();
        (*(v10 + 8))(v11, v12);
        v0[3] = v5;
        v14 = *(v5 + 16);
        v13 = *(v5 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_224ADA3D0(v13 > 1, v14 + 1, 1);
          v5 = v0[3];
        }

        v16 = v0[9];
        v15 = v0[10];
        v17 = v0[8];
        *(v5 + 16) = v14 + 1;
        (*(v16 + 32))(v5 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14, v15, v17);
        v6 += v7;
        --v3;
      }

      while (v3);

      v1 = v0 + 2;
    }

    else
    {
      v23 = v0[2];
    }

    v24 = v0[4];
    sub_224C67A0C();

    v25 = *(MEMORY[0x277D85798] + 4);
    v26 = swift_task_alloc();
    v0[17] = v26;
    *v26 = v0;
    v26[1] = sub_224C625A4;
    v27 = v0[16];
    v28 = v0[14];

    return MEMORY[0x2822003E8](v1, 0, 0, v28);
  }

  else
  {
    v18 = v0[13];
    v19 = v0[10];
    v20 = v0[7];
    (*(v0[15] + 8))(v0[16], v0[14]);

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_224C62944()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AC8, &qword_224DBC7D0);
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v19);
  v9 = &v18 - v8;
  v11 = *(v0 + 288);
  v10 = *(v0 + 296);
  __swift_project_boxed_opaque_existential_1((v1 + 264), v11);
  v12 = *(v10 + 24);
  v20 = sub_224DADA28();
  v21 = *(v1 + 104);
  v13 = v21;
  v14 = sub_224DAF358();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AD0, &qword_224DBC7D8);
  sub_224AC319C();
  sub_224A33088(&qword_281351098, &qword_27D6F5AD0, &qword_224DBC7D8);
  sub_224C6BAE4(&qword_281350A80, 255, sub_224AC319C);
  sub_224DAB448();
  sub_224A3311C(v5, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&unk_281351260, &qword_27D6F5AC8, &qword_224DBC7D0);
  v16 = v19;
  sub_224DAB488();

  (*(v6 + 8))(v9, v16);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224C62C78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - v3;
  v5 = sub_224DAA118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51C8, &qword_224DBAEF0);
  v11 = *(v10 - 8);
  v23 = v10;
  v24 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v15 = v0[19];
  v16 = v0[20];
  swift_getObjectType();
  v25 = v15;
  (*(v6 + 104))(v9, *MEMORY[0x277CFA000], v5);
  swift_unknownObjectRetain();
  v17 = sub_224DA9F38();
  (*(v6 + 8))(v9, v5);
  swift_unknownObjectRelease();
  v25 = v17;
  v18 = v0[13];
  v26 = v18;
  v19 = sub_224DAF358();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5208, &unk_224DBAF30);
  sub_224AC319C();
  sub_224A33088(&qword_281351050, &qword_27D6F5208, &unk_224DBAF30);
  sub_224C6BAE4(&qword_281350A80, 255, sub_224AC319C);
  sub_224DAB448();
  sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351238, &qword_27D6F51C8, &qword_224DBAEF0);
  v21 = v23;
  sub_224DAB488();

  (*(v24 + 8))(v14, v21);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224C6307C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_224DAAE38();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = sub_224DA9908();
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33A8, &unk_224DB35D0);
  v4[11] = v11;
  v12 = *(v11 - 8);
  v4[12] = v12;
  v13 = *(v12 + 64) + 15;
  v4[13] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33B0, &qword_224DBC7F0);
  v4[14] = v14;
  v15 = *(v14 - 8);
  v4[15] = v15;
  v16 = *(v15 + 64) + 15;
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C63268, 0, 0);
}

uint64_t sub_224C63268()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[4];
  v6 = v5[9];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
  v7 = *(v6 + 24);
  sub_224DAACA8();
  sub_224DAF158();
  (*(v3 + 8))(v2, v4);
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_224C63380;
  v10 = v0[16];
  v11 = v0[14];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v11);
}

uint64_t sub_224C63380()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224C6347C, 0, 0);
}

uint64_t sub_224C6347C()
{
  v1 = v0 + 2;
  v2 = v0[2];
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v0[6];
      v0[3] = MEMORY[0x277D84F90];
      sub_224ADA3D0(0, v3, 0);
      v5 = v0[3];
      v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v7 = *(v4 + 72);
      v8 = *(v4 + 16);
      do
      {
        v9 = v0[10];
        v10 = v0[6];
        v11 = v0[7];
        v12 = v0[5];
        v8(v11, v6, v12);
        sub_224DAAD98();
        (*(v10 + 8))(v11, v12);
        v0[3] = v5;
        v14 = *(v5 + 16);
        v13 = *(v5 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_224ADA3D0(v13 > 1, v14 + 1, 1);
          v5 = v0[3];
        }

        v16 = v0[9];
        v15 = v0[10];
        v17 = v0[8];
        *(v5 + 16) = v14 + 1;
        (*(v16 + 32))(v5 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14, v15, v17);
        v6 += v7;
        --v3;
      }

      while (v3);

      v1 = v0 + 2;
    }

    else
    {
      v23 = v0[2];
    }

    v24 = v0[4];
    sub_224C67A0C();

    v25 = *(MEMORY[0x277D85798] + 4);
    v26 = swift_task_alloc();
    v0[17] = v26;
    *v26 = v0;
    v26[1] = sub_224C63380;
    v27 = v0[16];
    v28 = v0[14];

    return MEMORY[0x2822003E8](v1, 0, 0, v28);
  }

  else
  {
    v18 = v0[13];
    v19 = v0[10];
    v20 = v0[7];
    (*(v0[15] + 8))(v0[16], v0[14]);

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_224C63720(int a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AF8, &qword_224DBC818);
  v10 = *(v24 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v24);
  v13 = &v22 - v12;
  v23 = a1;
  if (a1 & 1) != 0 || (a2)
  {
    v22 = a2;
    v14 = *(v3 + 304);
    v25 = sub_224C9AAF4();
    v26 = *(v3 + 104);
    v15 = v26;
    v16 = sub_224DAF358();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B00, &unk_224DBC820);
    sub_224AC319C();
    sub_224A33088(&qword_2813511A8, &qword_27D6F5B00, &unk_224DBC820);
    sub_224C6BAE4(&qword_281350A80, 255, sub_224AC319C);
    sub_224DAB448();
    sub_224A3311C(v9, &qword_27D6F5090, &qword_224DB5C30);

    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v23 & 1;
    *(v19 + 25) = v22 & 1;
    sub_224A33088(&qword_2813512E8, &qword_27D6F5AF8, &qword_224DBC818);
    v20 = v24;
    sub_224DAB488();

    (*(v10 + 8))(v13, v20);
    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();
  }

  else
  {
    result = sub_224DAFB58();
    __break(1u);
  }

  return result;
}

uint64_t sub_224C63ADC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AE8, &qword_224DBC7F8);
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - v8;
  v10 = *(v0 + 352);
  v18 = sub_224C9AB10();
  v19 = *(v1 + 104);
  v11 = v19;
  v12 = sub_224DAF358();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AF0, &unk_224DBC800);
  sub_224AC319C();
  sub_224A33088(&qword_2813511C0, &qword_27D6F5AF0, &unk_224DBC800);
  sub_224C6BAE4(&qword_281350A80, 255, sub_224AC319C);
  sub_224DAB448();
  sub_224A3311C(v5, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351300, &qword_27D6F5AE8, &qword_224DBC7F8);
  v14 = v17;
  sub_224DAB488();

  (*(v6 + 8))(v9, v14);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224C63DF8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v1 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  v2 = *(v0 + 152);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  __swift_destroy_boxed_opaque_existential_1((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1((v0 + 264));
  v3 = *(v0 + 304);

  __swift_destroy_boxed_opaque_existential_1((v0 + 312));
  v4 = *(v0 + 352);

  return v0;
}

uint64_t sub_224C63E68()
{
  sub_224C63DF8();

  return swift_deallocClassInstance();
}

uint64_t sub_224C63ECC()
{
  v1 = *v0;
  sub_224C5F7C4();
  sub_224C5FB98();
  return sub_224C61CEC();
}

uint64_t sub_224C63F18()
{
  v1 = *v0;
  sub_224C60B98();
  return sub_224C61CEC();
}

uint64_t sub_224C63F5C(uint64_t a1, uint64_t a2)
{
  result = sub_224C6BAE4(qword_281354410, a2, type metadata accessor for ExtensionReplicationProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224C63FB4(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (v1)
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v4 = sub_224DAB258();
      __swift_project_value_buffer(v4, qword_281365120);
      v5 = sub_224DAB228();
      v6 = sub_224DAF2A8();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_224A2F000, v5, v6, "Received first unlock notification", v7, 2u);
        MEMORY[0x22AA5EED0](v7, -1, -1);
      }

      v8 = v3[32];
      __swift_project_boxed_opaque_existential_1(v3 + 28, v3[31]);
      v9 = sub_224DAC678();
      sub_224C64114(v9);

      sub_224C5FB98();
    }
  }

  return result;
}

uint64_t sub_224C64114(uint64_t a1)
{
  v89 = sub_224DACE38();
  v82 = *(v89 - 8);
  v2 = *(v82 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AC0, &qword_224DBC780);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v97 = &v81 - v6;
  v100 = sub_224DAA618();
  v91 = *(v100 - 8);
  v7 = *(v91 + 64);
  MEMORY[0x28223BE20](v100);
  v96 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B00, &unk_224DB9AB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v95 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v99 = &v81 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v81 - v15;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v17 = *(v101 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v101);
  v87 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v86 = &v81 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v94 = &v81 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v90 = &v81 - v26;
  MEMORY[0x28223BE20](v25);
  v98 = &v81 - v27;
  v28 = *(a1 + 16);
  v84 = a1;
  if (v28)
  {
    v29 = a1 + 32;
    v30 = MEMORY[0x277D84F90];
    v93 = (v17 + 32);
    v31 = v28;
    do
    {
      sub_224A3317C(v29, v102);
      __swift_project_boxed_opaque_existential_1(v102, v103);
      v32 = sub_224DAE338();
      v33 = v99;
      sub_224DAF4E8();
      sub_224A44E4C(v33, v16, &qword_27D6F4B00, &unk_224DB9AB0);

      __swift_destroy_boxed_opaque_existential_1(v102);
      v34 = v101;
      if ((*(v17 + 48))(v16, 1, v101) == 1)
      {
        sub_224A3311C(v16, &qword_27D6F4B00, &unk_224DB9AB0);
      }

      else
      {
        v35 = *v93;
        (*v93)(v98, v16, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_224AD99A8(0, *(v30 + 2) + 1, 1, v30);
        }

        v37 = *(v30 + 2);
        v36 = *(v30 + 3);
        if (v37 >= v36 >> 1)
        {
          v30 = sub_224AD99A8(v36 > 1, v37 + 1, 1, v30);
        }

        *(v30 + 2) = v37 + 1;
        v35(&v30[((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v37], v98, v101);
      }

      v29 += 40;
      --v31;
    }

    while (v31);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  v98 = *(v30 + 2);
  if (v98)
  {
    v38 = 0;
    v92 = (v17 + 32);
    v93 = (v17 + 16);
    v85 = (v17 + 8);
    v99 = MEMORY[0x277D84F90];
    v39 = v101;
    v40 = v90;
    while (v38 < *(v30 + 2))
    {
      v41 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v42 = *(v17 + 72);
      (*(v17 + 16))(v40, &v30[v41 + v42 * v38], v39);
      sub_224DAA1F8();
      v43 = sub_224DAA048();

      if (v43)
      {
        (*v85)(v40, v39);
      }

      else
      {
        v44 = v40;
        v45 = *v92;
        (*v92)(v94, v44, v39);
        v46 = v99;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v102[0] = v46;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224ADA350(0, *(v46 + 16) + 1, 1);
          v46 = v102[0];
        }

        v49 = *(v46 + 16);
        v48 = *(v46 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_224ADA350(v48 > 1, v49 + 1, 1);
          v46 = v102[0];
        }

        *(v46 + 16) = v49 + 1;
        v99 = v46;
        v50 = v46 + v41 + v49 * v42;
        v39 = v101;
        (v45)(v50, v94, v101);
        v40 = v90;
      }

      if (v98 == ++v38)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_42:
    swift_once();
    goto LABEL_38;
  }

  v99 = MEMORY[0x277D84F90];
LABEL_24:

  if (v28)
  {
    v51 = (v84 + 4);
    v52 = (v17 + 48);
    v93 = (v17 + 16);
    v94 = (v17 + 32);
    v92 = (v82 + 8);
    v90 = (v17 + 8);
    v53 = (v91 + 56);
    v54 = (v91 + 48);
    v98 = (v91 + 32);
    v55 = MEMORY[0x277D84F90];
    v85 = v52;
    v84 = (v91 + 48);
    do
    {
      sub_224A3317C(v51, v102);
      __swift_project_boxed_opaque_existential_1(v102, v103);
      v56 = sub_224DAE338();
      v57 = v95;
      sub_224DAF4E8();

      v58 = v101;
      if ((*v52)(v57, 1, v101) == 1)
      {
        sub_224A3311C(v57, &qword_27D6F4B00, &unk_224DB9AB0);
        v59 = 1;
        v60 = v97;
      }

      else
      {
        v61 = v86;
        (*v94)(v86, v57, v58);
        (*v93)(v87, v61, v58);
        __swift_project_boxed_opaque_existential_1(v102, v103);
        v62 = v88;
        sub_224DAE388();
        sub_224DACD58();
        (*v92)(v62, v89);
        v60 = v97;
        v54 = v84;
        sub_224DAA5D8();
        v63 = v61;
        v52 = v85;
        (*v90)(v63, v101);
        v59 = 0;
      }

      v64 = v100;
      (*v53)(v60, v59, 1, v100);
      __swift_destroy_boxed_opaque_existential_1(v102);
      if ((*v54)(v60, 1, v64) == 1)
      {
        sub_224A3311C(v60, &qword_27D6F5AC0, &qword_224DBC780);
      }

      else
      {
        v65 = v64;
        v66 = *v98;
        (*v98)(v96, v60, v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_224AD9980(0, *(v55 + 2) + 1, 1, v55);
        }

        v68 = *(v55 + 2);
        v67 = *(v55 + 3);
        if (v68 >= v67 >> 1)
        {
          v55 = sub_224AD9980(v67 > 1, v68 + 1, 1, v55);
        }

        *(v55 + 2) = v68 + 1;
        v66(&v55[((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v68], v96, v100);
      }

      v51 += 40;
      --v28;
    }

    while (v28);
  }

  if (qword_2813515D0 != -1)
  {
    goto LABEL_42;
  }

LABEL_38:
  v69 = sub_224DAB258();
  __swift_project_value_buffer(v69, qword_281364F40);
  v70 = v99;

  v71 = sub_224DAB228();
  v72 = sub_224DAF2A8();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v102[0] = v74;
    *v73 = 136446210;
    v75 = MEMORY[0x22AA5D380](v70, v101);
    v77 = sub_224A33F74(v75, v76, v102);

    *(v73 + 4) = v77;
    _os_log_impl(&dword_224A2F000, v71, v72, "Requesting reload of local icons for replication: %{public}s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v74);
    MEMORY[0x22AA5EED0](v74, -1, -1);
    MEMORY[0x22AA5EED0](v73, -1, -1);
  }

  v78 = *(v83 + 152);
  v79 = *(v83 + 168);
  swift_getObjectType();
  sub_224DA9CF8();
}

void sub_224C64DB0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B00, &unk_224DB9AB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v92 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v81 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v85 = *(v8 - 1);
  v9 = *(v85 + 64);
  MEMORY[0x28223BE20](v8);
  v91 = &v81 - v10;
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v88 = v7;
    v14 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
    v15 = *(v11 + 16);
    if (v15)
    {
      v16 = v11 + 32;
      do
      {
        sub_224A3317C(v16, v94);
        __swift_project_boxed_opaque_existential_1(v94, v94[3]);
        v17 = sub_224DAE338();
        if ([v17 isRemote])
        {

          __swift_destroy_boxed_opaque_existential_1(v94);
        }

        else
        {
          v18 = __swift_destroy_boxed_opaque_existential_1(v94);
          MEMORY[0x22AA5D350](v18);
          if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v19 = v13;
            v20 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_224DAF038();
            v13 = v19;
          }

          sub_224DAF078();
          v14 = v95;
        }

        v16 += 40;
        --v15;
      }

      while (v15);
    }

    if (v14 >> 62)
    {
LABEL_43:
      v89 = sub_224DAF838();
      if (v89)
      {
LABEL_12:
        if (qword_2813515D0 != -1)
        {
          swift_once();
        }

        v21 = sub_224DAB258();
        v22 = __swift_project_value_buffer(v21, qword_281364F40);

        v83 = v22;
        v23 = sub_224DAB228();
        v24 = sub_224DAF2A8();

        v25 = os_log_type_enabled(v23, v24);
        v84 = v8;
        v90 = v14;
        if (v25)
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v94[0] = v27;
          *v26 = 136446210;
          v28 = sub_224DAF538();
          v29 = MEMORY[0x22AA5D380](v14, v28);
          v31 = sub_224A33F74(v29, v30, v94);
          v14 = v90;

          *(v26 + 4) = v31;
          v8 = v84;
          _os_log_impl(&dword_224A2F000, v23, v24, "Requesting deletion of extensions: %{public}s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v27);
          MEMORY[0x22AA5EED0](v27, -1, -1);
          MEMORY[0x22AA5EED0](v26, -1, -1);
        }

        v32 = *(v13 + 304);

        sub_224C5E21C(v14);
        v82 = v13;
        v81 = 0;

        v33 = 0;
        v86 = v14 & 0xFFFFFFFFFFFFFF8;
        v87 = v14 & 0xC000000000000001;
        v13 = v85 + 48;
        v34 = (v85 + 32);
        v93 = MEMORY[0x277D84F90];
        v35 = &qword_27D6F4B00;
        v36 = v8;
        do
        {
          if (v87)
          {
            v38 = MEMORY[0x22AA5DCC0](v33, v14);
            v14 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v33 >= *(v86 + 16))
            {
              goto LABEL_42;
            }

            v38 = *(v14 + 8 * v33 + 32);
            v14 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
              goto LABEL_43;
            }
          }

          v39 = v38;
          v8 = v35;
          v40 = v92;
          sub_224DAF4E8();
          v41 = v40;
          v35 = v8;
          v42 = v88;
          sub_224A44E4C(v41, v88, v8, &unk_224DB9AB0);

          if ((*v13)(v42, 1, v36) == 1)
          {
            sub_224A3311C(v42, v8, &unk_224DB9AB0);
          }

          else
          {
            v43 = *v34;
            (*v34)(v91, v42, v36);
            v44 = v93;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_224AD99A8(0, v44[2] + 1, 1, v44);
            }

            v46 = v44[2];
            v45 = v44[3];
            v93 = v44;
            if (v46 >= v45 >> 1)
            {
              v93 = sub_224AD99A8(v45 > 1, v46 + 1, 1, v93);
            }

            v47 = v93;
            v93[2] = v46 + 1;
            v36 = v84;
            v43(&v47[((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v46], v91, v84);
            v35 = v8;
          }

          ++v33;
          v37 = v14 == v89;
          v14 = v90;
        }

        while (!v37);
        v48 = v36;

        v49 = v93;

        v50 = sub_224DAB228();
        v51 = sub_224DAF2A8();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v94[0] = v53;
          *v52 = 136446210;
          v54 = MEMORY[0x22AA5D380](v49, v36);
          v56 = sub_224A33F74(v54, v55, v94);

          *(v52 + 4) = v56;
          _os_log_impl(&dword_224A2F000, v50, v51, "Requesting deletion of icons for: %{public}s", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v53);
          MEMORY[0x22AA5EED0](v53, -1, -1);
          MEMORY[0x22AA5EED0](v52, -1, -1);
        }

        v57 = v82;
        v58 = *(v82 + 352);

        v59 = v81;
        sub_224C5F0E8(v49);
        if (v59)
        {

          v60 = v59;
          v61 = sub_224DAB228();
          v62 = sub_224DAF288();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v94[0] = v65;
            *v63 = 136446466;
            v66 = MEMORY[0x22AA5D380](v49, v48);
            v68 = sub_224A33F74(v66, v67, v94);

            *(v63 + 4) = v68;
            v48 = v84;
            *(v63 + 12) = 2114;
            v69 = v59;
            v70 = _swift_stdlib_bridgeErrorToNSError();
            *(v63 + 14) = v70;
            *v64 = v70;
            _os_log_impl(&dword_224A2F000, v61, v62, "Failed to request deletion icons for: %{public}s - %{public}@", v63, 0x16u);
            sub_224A3311C(v64, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v64, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v65);
            MEMORY[0x22AA5EED0](v65, -1, -1);
            MEMORY[0x22AA5EED0](v63, -1, -1);
          }

          else
          {
          }
        }

        else
        {
        }

        v71 = v93;

        v72 = sub_224DAB228();
        v73 = sub_224DAF2A8();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v94[0] = v75;
          *v74 = 136446210;
          v76 = MEMORY[0x22AA5D380](v71, v48);
          v78 = sub_224A33F74(v76, v77, v94);

          *(v74 + 4) = v78;
          _os_log_impl(&dword_224A2F000, v72, v73, "Removing local icons for: %{public}s", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v75);
          MEMORY[0x22AA5EED0](v75, -1, -1);
          MEMORY[0x22AA5EED0](v74, -1, -1);
        }

        v79 = *(v57 + 152);
        v80 = *(v57 + 168);
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_224DA9CE8();

        swift_unknownObjectRelease();
        goto LABEL_45;
      }
    }

    else
    {
      v89 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v89)
      {
        goto LABEL_12;
      }
    }

LABEL_45:
  }
}

uint64_t sub_224C65A3C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_224DADDA8();
    v2 = sub_224DADD98();

    v3 = sub_224C691B0(v2, v1);

    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = v3 + 32;
      v7 = MEMORY[0x277D84F90];
      while (v5 < *(v3 + 16))
      {
        sub_224A3317C(v6, &v25);
        __swift_project_boxed_opaque_existential_1(&v25, v26);
        v8 = sub_224DAE338();
        v9 = [v8 isRemote];

        if (v9)
        {
          result = __swift_destroy_boxed_opaque_existential_1(&v25);
        }

        else
        {
          sub_224A36F98(&v25, v24);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v27 = v7;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_224ADA390(0, *(v7 + 16) + 1, 1);
            v7 = v27;
          }

          v12 = *(v7 + 16);
          v11 = *(v7 + 24);
          if (v12 >= v11 >> 1)
          {
            sub_224ADA390((v11 > 1), v12 + 1, 1);
            v7 = v27;
          }

          *(v7 + 16) = v12 + 1;
          result = sub_224A36F98(v24, v7 + 40 * v12 + 32);
        }

        ++v5;
        v6 += 40;
        if (v4 == v5)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
LABEL_14:

      if (*(v7 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AD8, &qword_224DBC7E0);
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AE0, &qword_224DBC7E8);
        v14 = *(v13 - 8);
        v15 = *(v14 + 72);
        v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_224DB3100;
        (*(v14 + 104))(v17 + v16, *MEMORY[0x277CF9E08], v13);
        sub_224DACF98();

        v18 = sub_224DACF58();

        v19 = *(v7 + 16);
        v20 = MEMORY[0x277D84F90];
        if (v19)
        {
          *&v24[0] = MEMORY[0x277D84F90];
          sub_224DAF9E8();
          v21 = v7 + 32;
          do
          {
            sub_224A3317C(v21, &v25);
            __swift_project_boxed_opaque_existential_1(&v25, v26);
            sub_224DAE338();
            __swift_destroy_boxed_opaque_existential_1(&v25);
            sub_224DAF9B8();
            v22 = *(*&v24[0] + 16);
            sub_224DAF9F8();
            sub_224DAFA08();
            sub_224DAF9C8();
            v21 += 40;
            --v19;
          }

          while (v19);
          v20 = *&v24[0];
        }

        v23 = sub_224A3DADC(v20);

        sub_224C65E30(v23, v18);

        sub_224C64114(v7);
      }

      else
      {
      }

      sub_224C5FB98();
    }
  }

  return result;
}

uint64_t sub_224C65E30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = sub_224DAF838();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(a1 + 16);
    if (!result)
    {
      return result;
    }
  }

  v8 = v2[10];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
  v9 = sub_224DAABB8();

  v11 = sub_224C6B7C4(v10, a2, v3, v9);

  if (qword_2813515D0 != -1)
  {
    swift_once();
  }

  v12 = sub_224DAB258();
  __swift_project_value_buffer(v12, qword_281364F40);

  v13 = sub_224DAB228();
  v14 = sub_224DAF2A8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 134349570;
    if ((v11 & 0xC000000000000001) != 0)
    {
      v17 = sub_224DAF838();
    }

    else
    {
      v17 = *(v11 + 16);
    }

    *(v15 + 4) = v17;

    *(v15 + 12) = 2050;
    if (v6)
    {
      v18 = sub_224DAF838();
    }

    else
    {
      v18 = *(a1 + 16);
    }

    *(v15 + 14) = v18;

    *(v15 + 22) = 2082;
    sub_224DAF538();
    sub_224C6BAE4(&unk_2813509A0, 255, MEMORY[0x277CFA140]);
    v19 = sub_224DAF1C8();
    v21 = sub_224A33F74(v19, v20, &v24);

    *(v15 + 24) = v21;
    _os_log_impl(&dword_224A2F000, v13, v14, "Requesting replication of %{public}ld out of %{public}ld extensions: %{public}s", v15, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x22AA5EED0](v16, -1, -1);
    MEMORY[0x22AA5EED0](v15, -1, -1);
  }

  else
  {
  }

  v22 = sub_224C5D31C(v11);

  if (v22 >> 62)
  {
    if (!sub_224DAF838())
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_20:
    v23 = *(v3 + 304);
    sub_224C5D90C(v22);
  }

LABEL_22:
}

uint64_t sub_224C66508(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224C66568(v1);
  }

  return result;
}

uint64_t sub_224C66568(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v40 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v35 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v12;
    v37 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v13 = a1 + v37;
    v14 = *(v11 + 56);
    v39 = (v11 + 16);
    v36 = (v11 - 8);
    v41 = MEMORY[0x277D84F90];
    v38 = v2;
    v12(v8, a1 + v37, v2);
    while (1)
    {
      sub_224DAA1F8();
      v15 = sub_224DAA048();

      if (v15)
      {
        (*v36)(v8, v2);
      }

      else
      {
        v16 = v11;
        v17 = *v39;
        (*v39)(v40, v8, v2);
        v18 = v41;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v18;
        v42 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224ADA350(0, *(v18 + 16) + 1, 1);
          v20 = v42;
        }

        v22 = *(v20 + 16);
        v21 = *(v20 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_224ADA350(v21 > 1, v22 + 1, 1);
          v20 = v42;
        }

        *(v20 + 16) = v22 + 1;
        v41 = v20;
        v23 = v20 + v37 + v22 * v14;
        v2 = v38;
        v17(v23, v40, v38);
        v11 = v16;
      }

      v13 += v14;
      if (!--v9)
      {
        break;
      }

      v10(v8, v13, v2);
    }
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  if (*(v41 + 16))
  {
    if (qword_2813515D0 != -1)
    {
      swift_once();
    }

    v24 = sub_224DAB258();
    __swift_project_value_buffer(v24, qword_281364F40);
    v25 = v41;

    v26 = sub_224DAB228();
    v27 = sub_224DAF2A8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v42 = v29;
      *v28 = 136446210;
      v30 = MEMORY[0x22AA5D380](v25, v2);
      v32 = sub_224A33F74(v30, v31, &v42);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_224A2F000, v26, v27, "Requesting replication of icons for %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x22AA5EED0](v29, -1, -1);
      MEMORY[0x22AA5EED0](v28, -1, -1);
    }

    v33 = *(v35[1] + 352);
    sub_224C5E930(v25);
  }
}

uint64_t sub_224C66A9C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v82 = a1;
  v6 = sub_224DACE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v74 - v12;
  v81 = _s15ExtensionChangeOMa();
  v14 = *(*(v81 - 1) + 64);
  MEMORY[0x28223BE20](v81);
  v16 = (v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37E8, &qword_224DBD800);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v74 - v19;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v22 = result;
  v76 = v11;
  v77 = a3;
  v78 = a4;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v75 = sub_224DAB258();
  v23 = __swift_project_value_buffer(v75, qword_281365120);
  sub_224A3796C(v82, v20, &qword_27D6F37E8, &qword_224DBD800);
  v24 = sub_224DAB228();
  v25 = sub_224DAF2A8();
  v26 = os_log_type_enabled(v24, v25);
  v80 = v22;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v74[1] = v23;
    v28 = v27;
    v29 = swift_slowAlloc();
    v83 = v29;
    *v28 = 136446210;
    v30 = sub_224C6BCA0();
    v79 = v7;
    v31 = v13;
    v32 = v6;
    v34 = v33;
    sub_224A3311C(v20, &qword_27D6F37E8, &qword_224DBD800);
    v35 = sub_224A33F74(v30, v34, &v83);
    v6 = v32;
    v13 = v31;
    v7 = v79;

    *(v28 + 4) = v35;
    _os_log_impl(&dword_224A2F000, v24, v25, "Received remote extension update %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v36 = v29;
    v22 = v80;
    MEMORY[0x22AA5EED0](v36, -1, -1);
    MEMORY[0x22AA5EED0](v28, -1, -1);
  }

  else
  {

    sub_224A3311C(v20, &qword_27D6F37E8, &qword_224DBD800);
  }

  sub_224C6BA7C(v82, v16, _s15ExtensionChangeOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v48 = *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5A98, &qword_224DBC300) + 48));
    (*(v7 + 32))(v13, v16, v6);
    if (qword_2813515D0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v75, qword_281364F40);
    v49 = v76;
    v81 = *(v7 + 16);
    v82 = v13;
    v81(v76, v13, v6);
    v50 = v48;
    v51 = sub_224DAB228();
    v52 = sub_224DAF2A8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v79 = v7;
      v55 = v54;
      *v53 = 138543618;
      v56 = sub_224DACDC8();
      v57 = v49;
      v58 = *(v79 + 8);
      v58(v57, v6);
      *(v53 + 4) = v56;
      *(v53 + 12) = 2114;
      *(v53 + 14) = v50;
      *v55 = v56;
      v55[1] = v50;
      v59 = v50;
      _os_log_impl(&dword_224A2F000, v51, v52, "Received remote extension insert of %{public}@,  %{public}@", v53, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
      swift_arrayDestroy();
      v60 = v55;
      v7 = v79;
      MEMORY[0x22AA5EED0](v60, -1, -1);
      MEMORY[0x22AA5EED0](v53, -1, -1);
    }

    else
    {

      v61 = v49;
      v58 = *(v7 + 8);
      v58(v61, v6);
    }

    v62 = __swift_project_boxed_opaque_existential_1((v80 + 312), *(v80 + 336));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F36C0, qword_224DBC830);
    v63 = *(v7 + 72);
    v64 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_224DB3100;
    v81((v65 + v64), v82, v6);
    v66 = *v62;
    sub_224BB1A6C(v65);

    swift_setDeallocating();
    v67 = v6;
    v58((v65 + v64), v6);
    swift_deallocClassInstance();
    if (v77)
    {
      if (v78)
      {
        v68 = v50;
LABEL_23:
        v69 = v68;
        v70 = __swift_project_boxed_opaque_existential_1((v80 + 312), *(v80 + 336));
        v71 = v82;
        v72 = sub_224DACDC8();
        v73 = *v70;
        sub_224BB2A3C(v69, v72);

        v58(v71, v67);
      }

      sub_224DAE9C8();
    }

    else if (v78)
    {
      sub_224DAE9D8();
    }

    sub_224DAE9F8();
    v68 = sub_224DAE9A8();
    goto LABEL_23;
  }

  v37 = *v16;
  v38 = sub_224DAB228();
  v39 = sub_224DAF2A8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138543362;
    *(v40 + 4) = v37;
    *v41 = v37;
    v42 = v37;
    _os_log_impl(&dword_224A2F000, v38, v39, "Received remote extension deletion of %{public}@", v40, 0xCu);
    sub_224A3311C(v41, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v41, -1, -1);
    MEMORY[0x22AA5EED0](v40, -1, -1);
  }

  v43 = __swift_project_boxed_opaque_existential_1((v22 + 312), *(v22 + 336));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB2780;
  *(inited + 32) = v37;
  v45 = *v43;
  v46 = v37;
  sub_224BB36A8(inited);

  swift_setDeallocating();
  v47 = *(inited + 16);
  return swift_arrayDestroy();
}

uint64_t sub_224C672CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v44 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = _s10IconChangeOMa();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224C6BA7C(a1, v18, _s10IconChangeOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = a2;
    (*(v5 + 32))(v14, v18, v4);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v19 = sub_224DAB258();
    v20 = __swift_project_value_buffer(v19, qword_281365120);
    v21 = *(v5 + 16);
    v21(v12, v14, v4);
    v46 = v20;
    v22 = sub_224DAB228();
    v23 = sub_224DAF2A8();
    v24 = os_log_type_enabled(v22, v23);
    v47 = v9;
    v49 = v21;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v48 = v14;
      v26 = v25;
      v27 = swift_slowAlloc();
      v51 = v27;
      *v26 = 136446210;
      sub_224A33088(&qword_281351848, &unk_27D6F56A0, &unk_224DB4150);
      v28 = sub_224DAFD28();
      v30 = v29;
      v45 = v5;
      v31 = *(v5 + 8);
      v31(v12, v4);
      v32 = sub_224A33F74(v28, v30, &v51);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_224A2F000, v22, v23, "Received remote icon deletion for %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x22AA5EED0](v27, -1, -1);
      v33 = v26;
      v14 = v48;
      MEMORY[0x22AA5EED0](v33, -1, -1);

      v34 = v31;
      v5 = v45;
    }

    else
    {

      v34 = *(v5 + 8);
      v34(v12, v4);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v40 = *(Strong + 152);
      v50 = *(Strong + 168);
      swift_unknownObjectRetain();

      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3548, &unk_224DB3AF0);
      v41 = *(v5 + 72);
      v42 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_224DB3100;
      v49(v43 + v42, v14, v4);
      sub_224DA9CE8();
      v34(v14, v4);
      swift_unknownObjectRelease();
    }

    else
    {
      return (v34)(v14, v4);
    }
  }

  else
  {
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A60, &qword_224DBC810) + 48);
    v36 = sub_224DA9688();
    (*(*(v36 - 8) + 8))(&v18[v35], v36);
    v37 = sub_224DAA618();
    return (*(*(v37 - 8) + 8))(v18, v37);
  }
}

uint64_t sub_224C67A0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v85 - v3;
  v100 = sub_224DA9908();
  v92 = *(v100 - 8);
  v5 = *(v92 + 64);
  MEMORY[0x28223BE20](v100);
  v95 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DACE38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v97 = &v85 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v98 = &v85 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v85 - v17;
  v20 = v0[25];
  v19 = v0[26];
  v88 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 22, v20);
  v21 = sub_224DAD888();
  v86 = v12;

  v89 = sub_224AE9AE8(v22);

  v24 = *(v21 + 16);
  v99 = v7;
  v91 = v21;
  v101 = v4;
  v96 = v24;
  if (v24)
  {
    v25 = v21;
    v26 = 0;
    v94 = v8 + 16;
    v90 = (v8 + 8);
    v93 = (v8 + 32);
    v27 = MEMORY[0x277D84F90];
    while (v26 < *(v25 + 16))
    {
      v28 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v29 = *(v8 + 72);
      (*(v8 + 16))(v18, v25 + v28 + v29 * v26, v7);
      v30 = sub_224DACDC8();
      v31 = [v30 isRemote];

      if (v31)
      {
        v32 = v8;
        v33 = *v93;
        (*v93)(v97, v18, v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v103[0] = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224ADA6D0(0, *(v27 + 16) + 1, 1);
          v27 = v103[0];
        }

        v36 = *(v27 + 16);
        v35 = *(v27 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_224ADA6D0(v35 > 1, v36 + 1, 1);
          v27 = v103[0];
        }

        *(v27 + 16) = v36 + 1;
        v37 = v27 + v28 + v36 * v29;
        v7 = v99;
        result = (v33)(v37, v97, v99);
        v8 = v32;
        v25 = v91;
      }

      else
      {
        result = (*v90)(v18, v7);
      }

      ++v26;
      v4 = v101;
      if (v96 == v26)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_13:
  v38 = *(v27 + 16);
  v87 = v8;
  if (v38)
  {
    v39 = v27;
    v40 = v7;
    v96 = *(v8 + 16);
    v97 = (v8 + 16);
    v41 = v39 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v42 = *(v8 + 72);
    v93 = v39;
    v94 = v42;
    v43 = MEMORY[0x277D84F90];
    do
    {
      v45 = v98;
      v96(v98, v41, v40);
      v46 = sub_224DACDC8();
      v47 = &v46[*MEMORY[0x277CFA128]];
      swift_beginAccess();
      v49 = *v47;
      v48 = *(v47 + 1);

      v50 = sub_224DAA058();
      v52 = v51;

      (*(v8 + 8))(v45, v40);
      if (v52)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_224A865C4(0, *(v43 + 2) + 1, 1, v43);
        }

        v54 = *(v43 + 2);
        v53 = *(v43 + 3);
        if (v54 >= v53 >> 1)
        {
          v43 = sub_224A865C4((v53 > 1), v54 + 1, 1, v43);
        }

        *(v43 + 2) = v54 + 1;
        v44 = &v43[16 * v54];
        *(v44 + 4) = v50;
        *(v44 + 5) = v52;
        v40 = v99;
      }

      v41 += v94;
      --v38;
    }

    while (v38);

    v4 = v101;
    v7 = v40;
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
  }

  v55 = MEMORY[0x277D84F90];
  v99 = *(v43 + 2);
  if (v99)
  {
    v56 = 0;
    v57 = (v92 + 48);
    v58 = (v92 + 32);
    v59 = (v43 + 40);
    while (v56 < *(v43 + 2))
    {
      v61 = *(v59 - 1);
      v60 = *v59;

      sub_224DA9888();

      v62 = v100;
      if ((*v57)(v4, 1, v100) == 1)
      {
        result = sub_224A3311C(v4, &unk_27D6F5630, &unk_224DB34C0);
      }

      else
      {
        v63 = *v58;
        (*v58)(v95, v4, v62);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_224AD9958(0, *(v55 + 2) + 1, 1, v55);
        }

        v65 = *(v55 + 2);
        v64 = *(v55 + 3);
        if (v65 >= v64 >> 1)
        {
          v55 = sub_224AD9958(v64 > 1, v65 + 1, 1, v55);
        }

        *(v55 + 2) = v65 + 1;
        result = v63(&v55[((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v65], v95, v100);
        v4 = v101;
      }

      v56 = (v56 + 1);
      v59 += 2;
      if (v99 == v56)
      {
        goto LABEL_35;
      }
    }

LABEL_48:
    __break(1u);
    return result;
  }

LABEL_35:

  v66 = sub_224AE9AE8(v55);

  v67 = v89;
  v68 = v91;
  if (*(v89 + 16) <= *(v66 + 16) >> 3)
  {
    goto LABEL_39;
  }

  v69 = sub_224B010F8(v89, v66);

  v66 = *(v69 + 16);
  if (v66)
  {
    while (1)
    {
      v70 = sub_224B0CD48(v66, 0);
      v71 = sub_224B2FC4C(v103, (v70 + ((*(v92 + 80) + 32) & ~*(v92 + 80))), v66, v69);
      sub_224A3B7E4();
      if (v71 == v66)
      {
        break;
      }

      __break(1u);
LABEL_39:
      v103[0] = v66;
      sub_224AFF564(v67);

      v69 = v103[0];
      v66 = *(v103[0] + 16);
      if (!v66)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
LABEL_40:

    v70 = MEMORY[0x277D84F90];
  }

  v72 = sub_224C5AA38(v70, v68);

  sub_224A3317C((v88 + 39), v103);
  v73 = __swift_project_boxed_opaque_existential_1(v103, v103[3]);
  v74 = v73;
  v75 = *(v72 + 16);
  v76 = v87;
  if (v75)
  {
    v99 = v73;
    v102 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v78 = *(v76 + 16);
    v77 = v76 + 16;
    v100 = v72;
    v101 = v78;
    v79 = v72 + ((*(v77 + 64) + 32) & ~*(v77 + 64));
    v80 = *(v77 + 56);
    v81 = v86;
    do
    {
      (v101)(v81, v79, v7);
      sub_224DACDC8();
      (*(v77 - 8))(v81, v7);
      sub_224DAF9B8();
      v82 = *(v102 + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v79 += v80;
      --v75;
    }

    while (v75);

    v83 = v102;
    v74 = v99;
  }

  else
  {

    v83 = MEMORY[0x277D84F90];
  }

  v84 = *v74;
  sub_224BB36A8(v83);

  return __swift_destroy_boxed_opaque_existential_1(v103);
}

uint64_t sub_224C6831C(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_224C6847C(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_224C6896C(v9, v4, v2);
  result = MEMORY[0x22AA5EED0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224C6847C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v52 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
  v4 = *(*(v70 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v70);
  v69 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = &v51 - v7;
  v67 = sub_224DA9908();
  v8 = *(v67 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_224DAAF48();
  v11 = *(*(v71 - 8) + 64);
  result = MEMORY[0x28223BE20](v71);
  v64 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v61 = v8;
  v62 = a3;
  v16 = *(a3 + 64);
  v55 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v53 = 0;
  v54 = (v17 + 63) >> 6;
  v59 = v8 + 16;
  v60 = v13 + 2;
  v65 = v13;
  v57 = (v8 + 8);
  v58 = v13 + 1;
  while (v19)
  {
    v25 = __clz(__rbit64(v19));
    v63 = (v19 - 1) & v19;
LABEL_12:
    v28 = v25 | (v15 << 6);
    v29 = v62;
    v30 = v64;
    v31 = v65[2];
    v31(v64, v62[6] + v65[9] * v28, v71);
    v32 = v29[7];
    v33 = *(v61 + 72);
    v56 = v28;
    v34 = v32 + v33 * v28;
    v35 = *(v61 + 16);
    v36 = v66;
    v37 = v67;
    v35(v66, v34, v67);
    v38 = v68;
    v39 = v30;
    v40 = v71;
    v31(v68, v39, v71);
    v35((v38 + *(v70 + 48)), v36, v37);
    v41 = v69;
    sub_224A3796C(v38, v69, &qword_27D6F3890, &unk_224DB9C30);
    v42 = sub_224DAAF08();
    v44 = v43;
    v45 = v65[1];
    v45(v41, v40);
    if (v42 == 1852793705 && v44 == 0xE400000000000000)
    {

      v46 = *(v70 + 48);
      sub_224A3311C(v68, &qword_27D6F3890, &unk_224DB9C30);
      v47 = *v57;
      v48 = v69 + v46;
      v49 = v67;
      (*v57)(v48, v67);
      v47(v66, v49);
      result = (v45)(v64, v71);
      v19 = v63;
      goto LABEL_15;
    }

    v20 = sub_224DAFD88();

    v21 = *(v70 + 48);
    sub_224A3311C(v68, &qword_27D6F3890, &unk_224DB9C30);
    v22 = *v57;
    v23 = v69 + v21;
    v24 = v67;
    (*v57)(v23, v67);
    v22(v66, v24);
    result = (v45)(v64, v71);
    v19 = v63;
    if (v20)
    {
LABEL_15:
      *(v52 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
      if (__OFADD__(v53++, 1))
      {
        __break(1u);
        return sub_224B2D094(v52, v51, v53, v62);
      }
    }
  }

  v26 = v15;
  while (1)
  {
    v15 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v15 >= v54)
    {
      return sub_224B2D094(v52, v51, v53, v62);
    }

    v27 = *(v55 + 8 * v15);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v63 = (v27 - 1) & v27;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_224C6896C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_224C6847C(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_224C689E4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = a6(v11, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

unint64_t *sub_224C68AAC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_224C6B358(v10, a2, a3, a4, a6);
    v12 = v11;
    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

uint64_t sub_224C68B84(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, __int128 *a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, uint64_t a21, uint64_t a22)
{
  v41 = a6;
  v42 = a7;
  v47 = a14;
  v48 = a15;
  v43 = a10;
  v44 = a8;
  v45 = a11;
  v46 = a13;
  v52[3] = a17;
  v53 = a19;
  v54 = a20;
  v55 = a21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
  (*(*(a17 - 8) + 32))(boxed_opaque_existential_1, a2, a17);
  v50 = a18;
  v51 = a22;
  v28 = __swift_allocate_boxed_opaque_existential_1(v49);
  (*(*(a18 - 8) + 32))(v28, a12, a18);
  type metadata accessor for ExtensionReplicationProvider();
  v29 = swift_allocObject();
  v30 = v50;
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
  v32 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = (&v41 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;
  *(v29 + 336) = type metadata accessor for RemoteWidgetExtensionService();
  *(v29 + 344) = sub_224C6BAE4(&qword_281353CB0, 255, type metadata accessor for RemoteWidgetExtensionService);
  *(v29 + 312) = v36;
  *(v29 + 96) = MEMORY[0x277D84FA0];
  *(v29 + 16) = a1;
  sub_224ACFF34(v52, v29 + 24);
  *(v29 + 104) = a3;
  sub_224A36F98(a4, v29 + 112);
  v38 = v41;
  v37 = v42;
  *(v29 + 152) = a5;
  *(v29 + 160) = v38;
  *(v29 + 168) = v37;
  sub_224AB1DE0(v44, (v29 + 176));
  sub_224A36F98(a9, v29 + 224);
  sub_224A36F98(v43, v29 + 264);
  v39 = v46;
  *(v29 + 304) = v45;
  *(v29 + 352) = v39;
  LOBYTE(v39) = v48;
  *(v29 + 360) = v47;
  *(v29 + 361) = v39;
  __swift_destroy_boxed_opaque_existential_1(v49);
  return v29;
}

uint64_t sub_224C68E14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C9EBD0(a1, v4, v5, v6);
}

uint64_t sub_224C68EC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C9E71C(a1, v4, v5, v6);
}

uint64_t sub_224C68F7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C6307C(a1, v4, v5, v6);
}

uint64_t sub_224C69030(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACED1C;

  return sub_224C9E71C(a1, v4, v5, v6);
}

uint64_t sub_224C690E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C622A0(a1, v4, v5, v6);
}

uint64_t sub_224C691B0(uint64_t a1, void *a2)
{
  v31 = a2;
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAF538();
    sub_224C6BAE4(&unk_2813509A0, 255, MEMORY[0x277CFA140]);
    result = sub_224DAF1F8();
    v2 = v37;
    v4 = v38;
    v5 = v39;
    v6 = v40;
    v7 = v41;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v29[1] = v5;
  v32 = MEMORY[0x277D84F90];
  v30 = v2;
  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v11 = sub_224DAF878();
  if (v11 && (*&v33 = v11, sub_224DAF538(), swift_dynamicCast(), v12 = *&v36[0], v13 = v6, v14 = v7, *&v36[0]))
  {
    while (1)
    {
      v17 = v31[32];
      __swift_project_boxed_opaque_existential_1(v31 + 28, v31[31]);
      sub_224DAC6D8();

      if (v34)
      {
        sub_224A36F98(&v33, v36);
        sub_224A36F98(v36, &v33);
        v18 = v32;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_224A5C040(0, v18[2] + 1, 1, v18);
          v42 = v18;
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v32 = sub_224A5C040((v20 > 1), v21 + 1, 1, v18);
          v42 = v32;
        }

        else
        {
          v32 = v18;
        }

        v22 = v34;
        v23 = v35;
        v24 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v34);
        v25 = *(*(v22 - 8) + 64);
        MEMORY[0x28223BE20](v24);
        v27 = v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v28 + 16))(v27);
        sub_224A5C064(v21, v27, &v42, v22, v23);
        result = __swift_destroy_boxed_opaque_existential_1(&v33);
        v6 = v13;
        v7 = v14;
        v2 = v30;
        if (v30 < 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_224A3311C(&v33, &unk_27D6F4700, &unk_224DB3A10);
        v6 = v13;
        v7 = v14;
        if (v2 < 0)
        {
          goto LABEL_10;
        }
      }

LABEL_13:
      v15 = v6;
      v16 = v7;
      v13 = v6;
      if (!v7)
      {
        break;
      }

LABEL_17:
      v14 = (v16 - 1) & v16;
      v12 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v16)))));
      if (!v12)
      {
        goto LABEL_26;
      }
    }

    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= ((v5 + 64) >> 6))
      {
        goto LABEL_26;
      }

      v16 = *(v4 + 8 * v13);
      ++v15;
      if (v16)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_26:
    sub_224A3B7E4();
    return v32;
  }

  return result;
}

uint64_t sub_224C69568(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v100 = a4;
  v86 = a2;
  v87 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v108 = &v85 - v13;
  MEMORY[0x28223BE20](v12);
  v111 = &v85 - v14;
  v15 = sub_224DA9908();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v107 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_224DAAF48();
  v19 = *(*(v114 - 8) + 64);
  result = MEMORY[0x28223BE20](v114);
  v105 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = 0;
  v23 = 0;
  v101 = a3;
  v24 = *(a3 + 64);
  v91 = a3 + 64;
  v25 = 1 << *(a3 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & v24;
  v92 = (v25 + 63) >> 6;
  v96 = v16 + 16;
  v97 = v21 + 2;
  v106 = v21;
  v112 = v21 + 1;
  v98 = v16;
  v102 = (v16 + 8);
  v89 = a5 & 0xC000000000000001;
  v28 = a5 & 0xFFFFFFFFFFFFFF8;
  if (a5 < 0)
  {
    v28 = a5;
  }

  v85 = v28;
  v95 = a5;
  v29 = a5 + 56;
  v30 = v15;
  v94 = v29;
  v109 = v7;
  v99 = v11;
  v103 = v15;
  while (v27)
  {
    v31 = v30;
    v32 = __clz(__rbit64(v27));
    v104 = (v27 - 1) & v27;
LABEL_16:
    v35 = v32 | (v23 << 6);
    v36 = v101;
    v37 = v105;
    v38 = v101[6] + v106[9] * v35;
    v110 = v106[2];
    v39 = v114;
    v110(v105, v38, v114);
    v40 = v36[7];
    v41 = *(v98 + 72);
    v93 = v35;
    v42 = *(v98 + 16);
    v43 = v107;
    v42(v107, v40 + v41 * v35, v31);
    v44 = v111;
    v110(v111, v37, v39);
    v42((v44 + *(v109 + 48)), v43, v31);
    v45 = v108;
    sub_224A3796C(v44, v108, &qword_27D6F3890, &unk_224DB9C30);
    v46 = sub_224DAAF08();
    v48 = v47;
    v110 = v106[1];
    (v110)(v45, v39);
    v49 = *(v100 + 32);
    if (!(v49 >> 6))
    {
      v55 = 0xE800000000000000;
      strcpy(v113, "archive-");
      BYTE1(v113[1]) = 0;
      WORD1(v113[1]) = 0;
      HIDWORD(v113[1]) = -402653184;
      v56 = 0xEF77656976657270;
      if (v49 != 3)
      {
        v56 = 0xEC0000006576696CLL;
      }

      v57 = 0x2D6C6F72746E6F63;
      if (v49 == 2)
      {
        v57 = 0x656E696C656D6974;
        v56 = 0xE800000000000000;
      }

      v58 = 0x746F687370616E73;
      if (!v49)
      {
        v58 = 0x6C6F686563616C70;
        v55 = 0xEB00000000726564;
      }

      if (v49 <= 1)
      {
        v53 = v58;
      }

      else
      {
        v53 = v57;
      }

      if (v49 <= 1)
      {
        v54 = v55;
      }

      else
      {
        v54 = v56;
      }

LABEL_40:
      MEMORY[0x22AA5D210](v53, v54);

      v59 = v113[1];
      v60 = v99;
      v61 = v102;
      if (v46 != v113[0])
      {
        goto LABEL_55;
      }

      goto LABEL_53;
    }

    if (v49 >> 6 == 1)
    {
      v50 = v49 & 0x3F;
      v113[0] = 0;
      v113[1] = 0xE000000000000000;
      sub_224DAF938();

      strcpy(v113, "configuration-");
      HIBYTE(v113[1]) = -18;
      v51 = 0xEF77656976657270;
      if (v50 != 2)
      {
        v51 = 0xEC0000006576696CLL;
      }

      v52 = 0x746F687370616E73;
      if (v50)
      {
        v52 = 0x656E696C656D6974;
      }

      if (v50 <= 1)
      {
        v53 = v52;
      }

      else
      {
        v53 = 0x2D6C6F72746E6F63;
      }

      if (v50 <= 1)
      {
        v54 = 0xE800000000000000;
      }

      else
      {
        v54 = v51;
      }

      goto LABEL_40;
    }

    v62 = 1852793705;
    if (v49 != 129)
    {
      v62 = 0x7974697669746361;
    }

    v63 = 0xE400000000000000;
    if (v49 != 129)
    {
      v63 = 0xEF65766968637241;
    }

    if (v49 == 128)
    {
      v64 = 0x6F69736E65747865;
    }

    else
    {
      v64 = v62;
    }

    if (v49 == 128)
    {
      v59 = 0xE90000000000006ELL;
    }

    else
    {
      v59 = v63;
    }

    v61 = v102;
    v60 = v99;
    if (v46 != v64)
    {
      goto LABEL_55;
    }

LABEL_53:
    if (v48 == v59)
    {
      v65 = 1;
      goto LABEL_56;
    }

LABEL_55:
    v65 = sub_224DAFD88();
LABEL_56:

    v66 = v109;
    v67 = *v61;
    v30 = v103;
    (*v61)(v108 + *(v109 + 48), v103);
    if ((v65 & 1) == 0)
    {
      sub_224A3311C(v111, &qword_27D6F3890, &unk_224DB9C30);
      goto LABEL_8;
    }

    v68 = sub_224DAF538();
    v69 = v111;
    sub_224A3796C(v111, v60, &qword_27D6F3890, &unk_224DB9C30);
    v70 = *(v66 + 48);
    sub_224DAAEF8();
    v90 = v68;
    v71 = sub_224DAF4F8();
    v72 = v71;
    (v110)(v60, v114);
    if (!v71)
    {
      sub_224A3311C(v69, &qword_27D6F3890, &unk_224DB9C30);
      v30 = v103;
      v67(v60 + v70, v103);
      goto LABEL_8;
    }

    v73 = v103;
    v67(v60 + v70, v103);
    if (v89)
    {
      v74 = v72;
      v75 = sub_224DAF888();

      sub_224A3311C(v111, &qword_27D6F3890, &unk_224DB9C30);
      v67(v107, v73);
      result = (v110)(v105, v114);
      v30 = v73;
      v27 = v104;
      if (v75)
      {
LABEL_69:
        *(v87 + ((v93 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v93;
        if (__OFADD__(v88++, 1))
        {
          __break(1u);
          return sub_224B2D094(v87, v86, v88, v101);
        }
      }
    }

    else
    {
      if (v95[2])
      {
        v76 = v95;
        v77 = v95[5];
        v78 = sub_224DAF698();
        v79 = -1 << *(v76 + 32);
        v80 = v78 & ~v79;
        if ((*(v94 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80))
        {
          v81 = ~v79;
          while (1)
          {
            v82 = *(v95[6] + 8 * v80);
            v83 = sub_224DAF6A8();

            if (v83)
            {
              break;
            }

            v80 = (v80 + 1) & v81;
            if (((*(v94 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
            {
              goto LABEL_67;
            }
          }

          sub_224A3311C(v111, &qword_27D6F3890, &unk_224DB9C30);
          v30 = v103;
          v67(v107, v103);
          result = (v110)(v105, v114);
          v27 = v104;
          goto LABEL_69;
        }
      }

LABEL_67:

      sub_224A3311C(v111, &qword_27D6F3890, &unk_224DB9C30);
      v30 = v103;
LABEL_8:
      v67(v107, v30);
      result = (v110)(v105, v114);
      v27 = v104;
    }
  }

  v33 = v23;
  while (1)
  {
    v23 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v23 >= v92)
    {
      return sub_224B2D094(v87, v86, v88, v101);
    }

    v34 = *(v91 + 8 * v23);
    ++v33;
    if (v34)
    {
      v31 = v30;
      v32 = __clz(__rbit64(v34));
      v104 = (v34 - 1) & v34;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224C69F08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v104 = a4;
  v88 = a2;
  v89 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v124 = &v87 - v13;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
  v14 = *(*(v115 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v115);
  v92 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v113 = &v87 - v18;
  MEMORY[0x28223BE20](v17);
  v117 = &v87 - v19;
  v20 = sub_224DA9908();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v111 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_224DAAF48();
  v24 = *(*(v120 - 8) + 64);
  result = MEMORY[0x28223BE20](v120);
  v109 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = 0;
  v28 = 0;
  v29 = *(a3 + 64);
  v91 = a3 + 64;
  v30 = 1 << *(a3 + 32);
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & v29;
  v33 = (v30 + 63) >> 6;
  v101 = v26 + 2;
  v100 = v21 + 16;
  v110 = v26;
  v116 = v26 + 1;
  v103 = v21;
  v108 = (v21 + 8);
  v122 = a5;
  v118 = v8 + 16;
  v119 = a5 + 7;
  v87 = v8;
  v121 = (v8 + 8);
  v102 = v33;
  v106 = a3;
  v112 = v20;
  v99 = v12;
  v98 = v7;
  while (v32)
  {
    v35 = __clz(__rbit64(v32));
    v107 = (v32 - 1) & v32;
LABEL_14:
    v38 = v35 | (v28 << 6);
    v39 = v109;
    v40 = v110[2];
    v40(v109, *(a3 + 48) + v110[9] * v38, v120);
    v41 = *(a3 + 56);
    v42 = *(v103 + 72);
    v97 = v38;
    v43 = v41 + v42 * v38;
    v44 = *(v103 + 16);
    v45 = v111;
    v44(v111, v43, v20);
    v46 = v20;
    v47 = v117;
    v48 = v39;
    v49 = v120;
    v40(v117, v48, v120);
    v44((v47 + *(v115 + 48)), v45, v46);
    v50 = v113;
    sub_224A3796C(v47, v113, &qword_27D6F3890, &unk_224DB9C30);
    v51 = sub_224DAAF08();
    v53 = v52;
    v114 = v110[1];
    v114(v50, v49);
    v54 = *(v104 + 32);
    if (v54 >> 6)
    {
      if (v54 >> 6 == 1)
      {
        v55 = v54 & 0x3F;
        v123[0] = 0;
        v123[1] = 0xE000000000000000;
        sub_224DAF938();

        strcpy(v123, "configuration-");
        HIBYTE(v123[1]) = -18;
        v56 = 0xEF77656976657270;
        if (v55 != 2)
        {
          v56 = 0xEC0000006576696CLL;
        }

        v57 = 0x746F687370616E73;
        if (v55)
        {
          v57 = 0x656E696C656D6974;
        }

        if (v55 <= 1)
        {
          v58 = v57;
        }

        else
        {
          v58 = 0x2D6C6F72746E6F63;
        }

        if (v55 <= 1)
        {
          v59 = 0xE800000000000000;
        }

        else
        {
          v59 = v56;
        }

        v60 = v99;
        v61 = v98;
        a3 = v106;
        MEMORY[0x22AA5D210](v58, v59);

        v62 = v123[0];
        v63 = v123[1];
      }

      else
      {
        v60 = v99;
        v61 = v98;
        a3 = v106;
        v71 = 1852793705;
        if (v54 != 129)
        {
          v71 = 0x7974697669746361;
        }

        v72 = 0xE400000000000000;
        if (v54 != 129)
        {
          v72 = 0xEF65766968637241;
        }

        if (v54 == 128)
        {
          v62 = 0x6F69736E65747865;
        }

        else
        {
          v62 = v71;
        }

        if (v54 == 128)
        {
          v63 = 0xE90000000000006ELL;
        }

        else
        {
          v63 = v72;
        }
      }

      v70 = v108;
      if (v51 != v62)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v64 = 0xE800000000000000;
      strcpy(v123, "archive-");
      BYTE1(v123[1]) = 0;
      WORD1(v123[1]) = 0;
      HIDWORD(v123[1]) = -402653184;
      v65 = 0xEF77656976657270;
      if (v54 != 3)
      {
        v65 = 0xEC0000006576696CLL;
      }

      v66 = 0x2D6C6F72746E6F63;
      if (v54 == 2)
      {
        v66 = 0x656E696C656D6974;
        v65 = 0xE800000000000000;
      }

      v67 = 0x746F687370616E73;
      if (!v54)
      {
        v67 = 0x6C6F686563616C70;
        v64 = 0xEB00000000726564;
      }

      if (v54 <= 1)
      {
        v68 = v67;
      }

      else
      {
        v68 = v66;
      }

      if (v54 <= 1)
      {
        v69 = v64;
      }

      else
      {
        v69 = v65;
      }

      MEMORY[0x22AA5D210](v68, v69);

      v63 = v123[1];
      v60 = v99;
      v61 = v98;
      v70 = v108;
      a3 = v106;
      if (v51 != v123[0])
      {
LABEL_54:
        v73 = sub_224DAFD88();
        goto LABEL_55;
      }
    }

    if (v53 != v63)
    {
      goto LABEL_54;
    }

    v73 = 1;
LABEL_55:

    v34 = *v70;
    v20 = v112;
    (*v70)(v113 + *(v115 + 48), v112);
    if (v73)
    {
      v105 = v34;
      v74 = v92;
      sub_224A3796C(v117, v92, &qword_27D6F3890, &unk_224DB9C30);
      v96 = *(v115 + 48);
      v95 = sub_224DAAEF8();
      v94 = v75;
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
      sub_224A33088(&qword_281351980, &qword_27D6F3900, &unk_224DB4640);
      sub_224A33088(&unk_281351950, &qword_27D6F3900, &unk_224DB4640);
      sub_224A33088(&qword_281351978, &qword_27D6F3900, &unk_224DB4640);
      sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640);
      sub_224DAA208();
      v114(v74, v120);
      v105(v74 + v96, v112);
      if (!v122[2] || (v76 = v122, v77 = v122[5], sub_224A33088(&qword_27D6F36A8, &unk_27D6F56A0, &unk_224DB4150), v78 = sub_224DAED88(), v79 = -1 << *(v76 + 32), v80 = v78 & ~v79, ((*(v119 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0))
      {
LABEL_5:
        (*v121)(v124, v61);
        v34 = v105;
        a3 = v106;
        v20 = v112;
        goto LABEL_6;
      }

      v81 = ~v79;
      v82 = *(v87 + 72);
      v83 = *(v87 + 16);
      while (1)
      {
        v83(v60, v122[6] + v82 * v80, v61);
        sub_224A33088(&qword_27D6F36B0, &unk_27D6F56A0, &unk_224DB4150);
        v84 = sub_224DAEDD8();
        v85 = *v121;
        (*v121)(v60, v61);
        if (v84)
        {
          break;
        }

        v80 = (v80 + 1) & v81;
        if (((*(v119 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v85(v124, v61);
      sub_224A3311C(v117, &qword_27D6F3890, &unk_224DB9C30);
      v20 = v112;
      v105(v111, v112);
      result = (v114)(v109, v120);
      *(v89 + ((v97 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v97;
      v86 = __OFADD__(v90++, 1);
      a3 = v106;
      v32 = v107;
      v33 = v102;
      if (v86)
      {
        __break(1u);
        return sub_224B2D094(v89, v88, v90, a3);
      }
    }

    else
    {
LABEL_6:
      sub_224A3311C(v117, &qword_27D6F3890, &unk_224DB9C30);
      v34(v111, v20);
      result = (v114)(v109, v120);
      v33 = v102;
      v32 = v107;
    }
  }

  v36 = v28;
  while (1)
  {
    v28 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v28 >= v33)
    {
      return sub_224B2D094(v89, v88, v90, a3);
    }

    v37 = *(v91 + 8 * v28);
    ++v36;
    if (v37)
    {
      v35 = __clz(__rbit64(v37));
      v107 = (v37 - 1) & v37;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void *sub_224C6AAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v20[1] = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;
  swift_retain_n();
  v15 = swift_bridgeObjectRetain_n();
  if (v12 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v19 = swift_slowAlloc();

      v16 = sub_224C689E4(v19, v13, a1, a2, a3, a5);
      MEMORY[0x22AA5EED0](v19, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v15);
  bzero(v20 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v14);

  v16 = a4(v20 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v13, a1, a2, a3);

  if (v5)
  {
    swift_willThrow();
  }

LABEL_6:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t sub_224C6AD14(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = sub_224DAAF48();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224BFF638(0x6F69736E65747865, 0xE90000000000006ELL);
  if (*(a2 + 16) && (v12 = sub_224B0B3CC(v11), (v13 & 1) != 0))
  {
    v14 = v12;
    v15 = *(a2 + 56);
    v16 = sub_224DA9908();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v6, v15 + *(v17 + 72) * v14, v16);
    (*(v8 + 8))(v11, v7);
    v18 = 1;
    (*(v17 + 56))(v6, 0, 1, v16);
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    v19 = sub_224DA9908();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    v18 = 0;
  }

  sub_224A3311C(v6, &unk_27D6F5630, &unk_224DB34C0);
  return v18;
}

uint64_t sub_224C6AF90(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = sub_224CD6B48(*a1, a2);
  v6 = sub_224C6AD14(v4, a3);
  if (v5)
  {
    if (v6)
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v7 = sub_224DAB258();
      __swift_project_value_buffer(v7, qword_281365120);
      v8 = v4;
      v9 = sub_224DAB228();
      v10 = sub_224DAF268();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138543362;
        *(v11 + 4) = v8;
        *v12 = v8;
        v13 = v8;
        v14 = "Including extension %{public}@ - has descriptors and is known to replicator";
LABEL_16:
        _os_log_impl(&dword_224A2F000, v9, v10, v14, v11, 0xCu);
        v21 = 1;
LABEL_22:
        sub_224A3311C(v12, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v12, -1, -1);
        MEMORY[0x22AA5EED0](v11, -1, -1);
        goto LABEL_23;
      }
    }

    else
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v18 = sub_224DAB258();
      __swift_project_value_buffer(v18, qword_281365120);
      v19 = v4;
      v9 = sub_224DAB228();
      v10 = sub_224DAF268();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138543362;
        *(v11 + 4) = v19;
        *v12 = v19;
        v20 = v19;
        v14 = "Including extension %{public}@ - has descriptors";
        goto LABEL_16;
      }
    }
  }

  else
  {
    if ((v6 & 1) == 0)
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v22 = sub_224DAB258();
      __swift_project_value_buffer(v22, qword_281365120);
      v23 = v4;
      v9 = sub_224DAB228();
      v24 = sub_224DAF2A8();

      if (!os_log_type_enabled(v9, v24))
      {
        v21 = 0;
        goto LABEL_23;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      *(v11 + 4) = v23;
      *v12 = v23;
      v25 = v23;
      _os_log_impl(&dword_224A2F000, v9, v24, "Filtering out extension %{public}@ - no descriptors and not known to replicator", v11, 0xCu);
      v21 = 0;
      goto LABEL_22;
    }

    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v15 = sub_224DAB258();
    __swift_project_value_buffer(v15, qword_281365120);
    v16 = v4;
    v9 = sub_224DAB228();
    v10 = sub_224DAF268();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      *(v11 + 4) = v16;
      *v12 = v16;
      v17 = v16;
      v14 = "Including extension %{public}@ - already known to replicator";
      goto LABEL_16;
    }
  }

  v21 = 1;
LABEL_23:

  return v21;
}

void sub_224C6B358(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v25 = *(*(a3 + 48) + 8 * v16);
    v17 = v25;
    v18 = sub_224C6AF90(&v25, a4, a5);

    if (v5)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:

        sub_224B05554(a1, a2, v22, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_224C6B4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v38[1] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v37 = a2;

  v36 = a4;

  if (v10 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v31 = v11;
    v33 = &v30;
    v34 = a3;
    MEMORY[0x28223BE20](v13);
    v32 = &v30 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v12);
    v35 = 0;
    v11 = 0;
    a3 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a1 + 56);
    v12 = (v14 + 63) >> 6;
    while (v16)
    {
      v17 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_12:
      v20 = v17 | (v11 << 6);
      v38[0] = *(*(a1 + 48) + 8 * v20);
      v21 = v38[0];
      v22 = sub_224C6AF90(v38, v37, v36);
      if (v5)
      {

        swift_willThrow();
        goto LABEL_18;
      }

      v23 = v22;

      if (v23)
      {
        *&v32[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
LABEL_17:
          v11 = sub_224B05554(v32, v31, v35, a1);
          goto LABEL_18;
        }
      }
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v12)
      {
        goto LABEL_17;
      }

      v19 = *(a3 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v16 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = v37;

  v29 = v36;

  v11 = sub_224C68AAC(v27, v11, a1, v28, a3, v29);

  MEMORY[0x22AA5EED0](v27, -1, -1);
LABEL_18:

  v25 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_224C6B7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x277D84FA0];
    v26 = MEMORY[0x277D84FA0];

    sub_224DAF7E8();
    if (sub_224DAF878())
    {
      sub_224DAF538();
      while (1)
      {
        swift_dynamicCast();
        v9 = sub_224C6AF90(&v25, a2, a4);
        if (v4)
        {
          break;
        }

        v10 = v25;
        if (v9)
        {
          v11 = *(v8 + 16);
          if (*(v8 + 24) <= v11)
          {
            sub_224ADEE2C(v11 + 1);
          }

          v8 = v26;
          v12 = *(v26 + 40);
          result = sub_224DAF698();
          v14 = v8 + 56;
          v15 = -1 << *(v8 + 32);
          v16 = result & ~v15;
          v17 = v16 >> 6;
          if (((-1 << v16) & ~*(v8 + 56 + 8 * (v16 >> 6))) != 0)
          {
            v18 = __clz(__rbit64((-1 << v16) & ~*(v8 + 56 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v19 = 0;
            v20 = (63 - v15) >> 6;
            do
            {
              if (++v17 == v20 && (v19 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v21 = v17 == v20;
              if (v17 == v20)
              {
                v17 = 0;
              }

              v19 |= v21;
              v22 = *(v14 + 8 * v17);
            }

            while (v22 == -1);
            v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          }

          *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
          *(*(v8 + 48) + 8 * v18) = v10;
          ++*(v8 + 16);
        }

        else
        {
        }

        if (!sub_224DAF878())
        {
          goto LABEL_21;
        }
      }

      v24 = v25;
    }

    else
    {
LABEL_21:
    }
  }

  else
  {

    v8 = sub_224C6B4B8(a1, a2, a3, a4);
  }

  return v8;
}

uint64_t sub_224C6BA7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224C6BAE4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t _s15ExtensionChangeOMa()
{
  result = qword_281359348;
  if (!qword_281359348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224C6BBBC()
{
  sub_224C6BC30();
  if (v0 <= 0x3F)
  {
    sub_224DAF538();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_224C6BC30()
{
  if (!qword_281350D18)
  {
    sub_224DACE38();
    sub_224DAE9F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281350D18);
    }
  }
}

unint64_t sub_224C6BCA0()
{
  v1 = v0;
  v2 = sub_224DACE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s15ExtensionChangeOMa();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_224C6C29C(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_224DAF938();

    v24 = 0xD000000000000016;
    v25 = 0x8000000224DCBF30;
    v12 = [v11 description];
    v13 = sub_224DAEE18();
    v15 = v14;

    MEMORY[0x22AA5D210](v13, v15);

    return v24;
  }

  else
  {
    v17 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5A98, &qword_224DBC300) + 48));
    (*(v3 + 32))(v6, v10, v2);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_224DAF938();

    v24 = 0xD000000000000014;
    v25 = 0x8000000224DCBF50;
    sub_224C6C3C4();
    v18 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v18);

    MEMORY[0x22AA5D210](0xD000000000000019, 0x8000000224DCBF70);
    v19 = [v17 description];
    v20 = sub_224DAEE18();
    v22 = v21;

    MEMORY[0x22AA5D210](v20, v22);

    v16 = v24;
    (*(v3 + 8))(v6, v2);
  }

  return v16;
}

uint64_t sub_224C6BF74(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DACE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s15ExtensionChangeOMa();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B08, &qword_224DBC8C8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v31 - v19;
  v21 = (&v31 + *(v18 + 56) - v19);
  sub_224C6C29C(a1, &v31 - v19);
  sub_224C6C29C(a2, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_224C6C29C(v20, v13);
    v22 = *v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = *v21;
      sub_224AC21B4();
      v24 = sub_224DAF6A8();

LABEL_11:
      sub_224C6C368(v20);
      return v24 & 1;
    }

    goto LABEL_7;
  }

  sub_224C6C29C(v20, v15);
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5A98, &qword_224DBC300) + 48);
  v26 = *&v15[v25];
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    (*(v5 + 8))(v15, v4);
LABEL_7:
    sub_224C6C300(v20);
    goto LABEL_8;
  }

  v27 = *(v21 + v25);
  (*(v5 + 32))(v8, v21, v4);
  v28 = MEMORY[0x22AA5B110](v15, v8);
  v29 = *(v5 + 8);
  v29(v15, v4);
  if (v28)
  {
    sub_224AC21B4();
    v24 = sub_224DAF6A8();

    v29(v8, v4);
    goto LABEL_11;
  }

  v29(v8, v4);

  sub_224C6C368(v20);
LABEL_8:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_224C6C29C(uint64_t a1, uint64_t a2)
{
  v4 = _s15ExtensionChangeOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224C6C300(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B08, &qword_224DBC8C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224C6C368(uint64_t a1)
{
  v2 = _s15ExtensionChangeOMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_224C6C3C4()
{
  result = qword_27D6F5B10;
  if (!qword_27D6F5B10)
  {
    sub_224DACE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5B10);
  }

  return result;
}

uint64_t sub_224C6C594()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_2813516E0);
  __swift_project_value_buffer(v0, qword_2813516E0);
  return sub_224DAB238();
}

uint64_t sub_224C6C610()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v5 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
    sub_224A33088(&qword_281350EE0, &qword_27D6F4A10, &unk_224DB4000);
    v2 = v0;
    v1 = sub_224DAB3A8();
    v3 = *(v0 + 24);
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t sub_224C6C6D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAB7B8();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = sub_224DAB848();
  v56 = *(v58 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v55 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v54 = &v50[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v15 = &v50[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v53 = &v50[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v21 = &v50[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v50[-v25];
  v27 = OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__queue_activeNowPlayingApp;
  swift_beginAccess();
  v28 = *(v23 + 56);
  sub_224AFD468(v2 + v27, v26);
  sub_224AFD468(a1, &v26[v28]);
  v61 = v10;
  v29 = *(v10 + 48);
  if (v29(v26, 1, v9) == 1)
  {
    if (v29(&v26[v28], 1, v9) == 1)
    {
      return sub_224A3311C(v26, &unk_27D6F5060, &qword_224DB5620);
    }
  }

  else
  {
    sub_224AFD468(v26, v21);
    if (v29(&v26[v28], 1, v9) != 1)
    {
      v52 = v2;
      v38 = v61;
      (*(v61 + 32))(v15, &v26[v28], v9);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640);
      v51 = sub_224DAEDD8();
      v39 = v38;
      v2 = v52;
      v40 = *(v39 + 8);
      v40(v15, v9);
      v40(v21, v9);
      result = sub_224A3311C(v26, &unk_27D6F5060, &qword_224DB5620);
      if (v51)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v61 + 8))(v21, v9);
  }

  sub_224A3311C(v26, &qword_27D6F5B90, &qword_224DB5C50);
LABEL_7:
  if (qword_2813516D8 != -1)
  {
    swift_once();
  }

  v31 = sub_224DAB258();
  __swift_project_value_buffer(v31, qword_2813516E0);

  v32 = sub_224DAB228();
  v33 = sub_224DAF2A8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136446210;
    v36 = v53;
    sub_224AFD468(v2 + v27, v53);
    if (v29(v36, 1, v9) == 1)
    {
      v37 = v54;
      sub_224DA9FF8();
      if (v29(v36, 1, v9) != 1)
      {
        sub_224A3311C(v36, &unk_27D6F5060, &qword_224DB5620);
      }
    }

    else
    {
      v37 = v54;
      (*(v61 + 32))(v54, v36, v9);
    }

    sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640);
    v41 = sub_224DAFD28();
    v43 = v42;
    (*(v61 + 8))(v37, v9);
    v44 = sub_224A33F74(v41, v43, aBlock);

    *(v34 + 4) = v44;
    _os_log_impl(&dword_224A2F000, v32, v33, "Active now playing app is now: %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x22AA5EED0](v35, -1, -1);
    MEMORY[0x22AA5EED0](v34, -1, -1);
  }

  v45 = *(v2 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__calloutQueue);
  aBlock[4] = sub_224C6E008;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_29_1;
  v46 = _Block_copy(aBlock);

  v47 = v55;
  sub_224DAB7E8();
  v62 = MEMORY[0x277D84F90];
  sub_224A80DE0(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v48 = v57;
  v49 = v60;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v47, v48, v46);
  _Block_release(v46);
  (*(v59 + 8))(v48, v49);
  (*(v56 + 8))(v47, v58);
}

uint64_t sub_224C6CF10(uint64_t a1)
{
  v1 = *(a1 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A33088(&qword_281350EF0, &qword_27D6F4A10, &unk_224DB4000);
  sub_224DAB398();
}

uint64_t sub_224C6CFA8()
{
  v1 = v0;
  v2 = sub_224DAF3C8();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAF318();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_224DAB848();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_224DAB358();
  *(v0 + 24) = 0;
  v38 = v0;
  v14 = OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__queue_activeNowPlayingApp;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  *(v1 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__delegate) = 0;
  v34 = sub_224AC319C();
  v37 = "ayingControllerDelegate";
  sub_224DAB7E8();
  v42 = MEMORY[0x277D84F90];
  v36 = sub_224A80DE0(&qword_281350A88, MEMORY[0x277D85230]);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  v16 = *MEMORY[0x277D85260];
  v17 = v39;
  v18 = *(v40 + 104);
  v40 += 104;
  v33 = v6;
  v18(v6, v16, v39);
  v19 = sub_224DAF418();
  v20 = v38;
  *(v38 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__queue) = v19;
  sub_224DAB7E8();
  v42 = MEMORY[0x277D84F90];
  sub_224DAF788();
  v18(v33, v16, v17);
  *(v20 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__calloutQueue) = sub_224DAF418();
  v21 = [objc_opt_self() userSelectedDestination];
  v22 = [objc_allocWithZone(MEMORY[0x277D279C0]) initWithDestination_];

  [v22 setRequestClientProperties_];
  [v22 setRequestPlaybackState_];
  v23 = [objc_allocWithZone(MEMORY[0x277D279B8]) initWithConfiguration_];
  *(v20 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__monitor) = v23;
  v24 = type metadata accessor for NowPlayingControllerDelegate();
  v25 = objc_allocWithZone(v24);
  swift_weakInit();
  swift_weakAssign();
  v41.receiver = v25;
  v41.super_class = v24;
  v26 = objc_msgSendSuper2(&v41, sel_init);
  v27 = *(v20 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__delegate);
  *(v20 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__delegate) = v26;
  v28 = v26;

  v29 = OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__monitor;
  v30 = *(v20 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__monitor);
  [v30 setDelegate_];

  [*(v20 + v29) beginLoadingUpdates];
  return v20;
}

uint64_t sub_224C6D4A0()
{
  v1 = sub_224DAB7B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DAB848();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__queue);
  aBlock[4] = sub_224C6DF90;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_31;
  v10 = _Block_copy(aBlock);

  sub_224DAB7E8();
  v14 = MEMORY[0x277D84F90];
  sub_224A80DE0(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t sub_224C6D75C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v26[-v7];
  v9 = *(a1 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__monitor);
  v10 = [v9 response];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 clientProperties];

    v13 = [v12 parentApplicationBundleIdentifier];
    if (v13)
    {
      goto LABEL_5;
    }
  }

  v14 = [v9 response];
  if (v14 && (v15 = v14, v16 = [v14 clientProperties], v15, v13 = objc_msgSend(v16, sel_bundleIdentifier), v16, v13))
  {
LABEL_5:
    sub_224DAEE18();
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = [v9 response];
  if (!v19 || (v20 = v19, v21 = [v19 playbackState], v20, v21 != 1))
  {

    goto LABEL_12;
  }

  if (!v18)
  {
LABEL_12:
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    goto LABEL_13;
  }

  sub_224DA9FF8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  (*(*(v22 - 8) + 56))(v8, 0, 1, v22);
LABEL_13:
  v24 = OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__queue_activeNowPlayingApp;
  swift_beginAccess();
  sub_224AFD468(a1 + v24, v6);
  swift_beginAccess();
  sub_224C6DF98(v8, a1 + v24);
  swift_endAccess();
  sub_224C6C6D4(v6);
  sub_224A3311C(v6, &unk_27D6F5060, &qword_224DB5620);
  return sub_224A3311C(v8, &unk_27D6F5060, &qword_224DB5620);
}

uint64_t sub_224C6DA68()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__queue_activeNowPlayingApp, &unk_27D6F5060, &qword_224DB5620);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NowPlayingObserver()
{
  result = qword_281359768;
  if (!qword_281359768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224C6DB80()
{
  sub_224B48260();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_224C6DC3C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  return sub_224DAF3E8();
}

void sub_224C6DDA8(void *a1)
{
  if (swift_weakLoadStrong())
  {
    v2 = a1;
    sub_224C6D4A0();
  }
}

id sub_224C6DEC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingControllerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_224C6DF30@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__queue_activeNowPlayingApp;
  swift_beginAccess();
  return sub_224AFD468(v1 + v3, a1);
}

uint64_t sub_224C6DF98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_224C6E0C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

size_t sub_224C6E134()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v0 + 16);
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_224B0CBDC(*(v3 + 16), 0);
  v6 = *(sub_224DAC5E8() - 8);
  v7 = sub_224B2EE98(&v9, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80))), v4, v3);

  sub_224A3B7E4();
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x277D84F90];
  }

  os_unfair_lock_unlock(*(v1 + 16));
  return v5;
}

void sub_224C6E254(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAC5E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = *(v1 + 24);
  os_unfair_lock_lock(*(v7 + 16));
  v8 = *(v1 + 16);
  sub_224B9E770(a1);
  v9 = *(v2 + 32);
  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  (*(v5 + 32))(v11 + v10, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0x6573616261746144, 0xE800000000000000, v9, sub_224C6F104, v11, 0.0);

  os_unfair_lock_unlock(*(v7 + 16));
}

uint64_t sub_224C6E3E4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  v5 = sub_224DABBC8();
  return a1(v5);
}

uint64_t sub_224C6E5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = sub_224DAC5E8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - v12;
  v14 = *(a1 + 16);
  v30 = a2;
  v31 = a3;
  sub_224B9EF28(a2, a3, &v28 - v12);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    v15 = v31;
    sub_224C6EFCC(v13);
    if (qword_281351438 != -1)
    {
      swift_once();
    }

    v16 = sub_224DAB258();
    __swift_project_value_buffer(v16, qword_281364D78);

    v17 = sub_224DAB228();
    v18 = sub_224DAF2A8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_224A33F74(v30, v15, &v33);
      _os_log_impl(&dword_224A2F000, v17, v18, "Subscription does not exist with identifier: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x22AA5EED0](v20, -1, -1);
      MEMORY[0x22AA5EED0](v19, -1, -1);
    }

    v21 = 1;
  }

  else
  {
    v22 = v32;
    v28 = *(v8 + 32);
    v28(v32, v13, v7);
    v29 = *(a1 + 32);
    (*(v8 + 16))(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v7);
    v23 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    v28(v24 + v23, &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
    v26 = v31;
    *v25 = v30;
    v25[1] = v26;

    _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0x6573616261746144, 0xE800000000000000, v29, sub_224C6F034, v24, 0.0);

    v21 = 0;
  }

  return (*(v8 + 56))(v32, v21, 1, v7);
}

uint64_t sub_224C6E96C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  v5 = sub_224DABBC8();
  return a1(v5);
}

uint64_t sub_224C6EBA4()
{
  sub_224DABAE8();
  sub_224DAC588();
  sub_224DAB9F8();
}

void sub_224C6EC0C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 24);
  os_unfair_lock_lock(*(v7 + 16));
  v8 = *(v3 + 16);
  swift_beginAccess();
  v9 = *(v8 + 16);
  if (!*(v9 + 16))
  {
    goto LABEL_5;
  }

  v10 = sub_224A3A40C(a1, a2);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    v16 = sub_224DAC5E8();
    (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
    goto LABEL_6;
  }

  v12 = v10;
  v13 = *(v9 + 56);
  v14 = sub_224DAC5E8();
  v15 = *(v14 - 8);
  (*(v15 + 16))(a3, v13 + *(v15 + 72) * v12, v14);

  (*(v15 + 56))(a3, 0, 1, v14);
LABEL_6:
  os_unfair_lock_unlock(*(v7 + 16));
}

uint64_t sub_224C6EDD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *v3;
  v6 = *(v5 + 24);
  os_unfair_lock_lock(*(v6 + 16));
  v7 = *(v5 + 16);
  v8 = a3();
  os_unfair_lock_unlock(*(v6 + 16));
  return v8;
}

void sub_224C6EE6C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(v7 + 24);
  os_unfair_lock_lock(*(v8 + 16));
  sub_224C6E5D4(v7, a1, a2, a3);
  v9 = *(v8 + 16);

  os_unfair_lock_unlock(v9);
}

uint64_t sub_224C6EF24(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v5 + 24);
  os_unfair_lock_lock(*(v6 + 16));
  v7 = *(v5 + 16);
  LOBYTE(a2) = sub_224B9F2DC(a1, a2);
  os_unfair_lock_unlock(*(v6 + 16));
  return a2 & 1;
}

uint64_t sub_224C6EF80()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  os_unfair_lock_lock(*(v2 + 16));
  v3 = *(v1 + 16);
  v4 = sub_224BA1954();
  os_unfair_lock_unlock(*(v2 + 16));
  return v4;
}

uint64_t sub_224C6EFCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224C6F034(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(sub_224DAC5E8() - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 64) + ((*(v5 + 80) + 24) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_224C6E96C(a1, a2, v6);
}

uint64_t sub_224C6F104(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(*(sub_224DAC5E8() - 8) + 80);
  v6 = *(v2 + 16);

  return sub_224C6E3E4(a1, a2, v6);
}

uint64_t sub_224C6F188()
{
  v1 = *(v0 + 16);
  sub_224DABAE8();
  sub_224DABA08();
}

char *sub_224C6F1DC(uint64_t a1)
{
  v50 = a1;
  v53 = sub_224DAC5E8();
  v51 = *(v53 - 8);
  v2 = *(v51 + 64);
  v3 = MEMORY[0x28223BE20](v53);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - v5;
  v52 = sub_224DAF3C8();
  v7 = *(v52 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v52);
  v49 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAF318();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = sub_224DAB848();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  type metadata accessor for PushSubscriptionStore();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D84F90];
  *(v14 + 16) = sub_224DA0FA4(MEMORY[0x277D84F90]);
  *(v1 + 2) = v14;
  type metadata accessor for UnfairLock();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *v17 = 0;
  *(v16 + 16) = v17;
  *(v1 + 3) = v16;
  sub_224AC319C();
  sub_224DAB7E8();
  v54 = v15;
  sub_224AC31E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224AC3240();
  sub_224DAF788();
  (*(v7 + 104))(v49, *MEMORY[0x277D85260], v52);
  *(v1 + 4) = sub_224DAF418();
  *(v1 + 5) = v50;

  sub_224DAB958();
  v18 = sub_224DAB948();
  v49 = v1;

  v19 = *(v18 + 16);
  v50 = v18;
  v20 = 0;
  if (v19)
  {
    v52 = *(v51 + 16);
    v21 = v18 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v22 = *(v51 + 72);
    v23 = (v51 + 8);
    v24 = 0xE000000000000000;
    v25 = v19;
    v52(v6, v21, v53);
    while (1)
    {
      v28 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v28 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        v54 = v20;
        v55 = v24;

        MEMORY[0x22AA5D210](8236, 0xE200000000000000);
        v26 = sub_224DAC588();
        MEMORY[0x22AA5D210](v26);

        v20 = v54;
        v24 = v55;
      }

      else
      {
        v20 = sub_224DAC588();
        v30 = v29;

        v24 = v30;
      }

      v27 = v53;
      (*v23)(v6, v53);
      v21 += v22;
      if (!--v25)
      {
        break;
      }

      v52(v6, v21, v27);
    }
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  if (qword_281351438 != -1)
  {
    swift_once();
  }

  v31 = sub_224DAB258();
  __swift_project_value_buffer(v31, qword_281364D78);

  v32 = sub_224DAB228();
  v33 = sub_224DAF2A8();

  v34 = os_log_type_enabled(v32, v33);
  v35 = v49;
  if (v34)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v54 = v37;
    *v36 = 136446210;
    v38 = sub_224A33F74(v20, v24, &v54);

    *(v36 + 4) = v38;
    _os_log_impl(&dword_224A2F000, v32, v33, "Restored subscriptions with identifiers: %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x22AA5EED0](v37, -1, -1);
    MEMORY[0x22AA5EED0](v36, -1, -1);
  }

  else
  {
  }

  v39 = v53;
  v40 = v48;
  if (v19)
  {
    v41 = *(v51 + 16);
    v42 = v50 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v43 = *(v51 + 72);
    v44 = (v51 + 8);
    do
    {
      v41(v40, v42, v39);
      v45 = *(v35 + 2);
      sub_224B9E770(v40);
      (*v44)(v40, v39);
      v42 += v43;
      --v19;
    }

    while (v19);
  }

  return v35;
}

void sub_224C6F830(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v2 = a1;
      sub_224C6F99C(v2, 0);
    }
  }
}

void sub_224C6F8A4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_224C6F910()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_224C6F99C(v1, 1);
    }
  }
}

uint64_t sub_224C6F99C(char *a1, int a2)
{
  v3 = v2;
  v6 = sub_224DA9908();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__queue);
  BSDispatchQueueAssert();
  result = 1;
  if (*(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activationBlockIsCompleted))
  {
    return result;
  }

  v72 = v10;
  v71 = a2;
  *(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activationBlockIsCompleted) = 1;
  v13 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock;
  v14 = *(*(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock) + 16);
  v70 = *(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock);

  os_unfair_lock_lock(v14);
  os_unfair_lock_assert_owner(*(*(v3 + v13) + 16));
  v15 = *(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_budgetedDASActivity);
  if (v15)
  {
    v16 = v15 == a1;
  }

  else
  {
    v16 = 1;
  }

  v76 = v6;
  v78 = v3;
  if (!v16)
  {
    v17 = (v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler);
    v18 = *(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 24);
    v19 = *(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 32);
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v20 = *(v19 + 24);
    v21 = v15;
    v3 = v78;
    v20();
    v6 = v76;
  }

  v77 = v7;
  v22 = *(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_fallbackDASActivity);
  if (v22)
  {
    v23 = v22 == a1;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v24 = (v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler);
    v25 = *(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 24);
    v26 = *(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 32);
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v27 = *(v26 + 24);
    v28 = v22;
    v3 = v78;
    v27();
    v6 = v76;
  }

  v29 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_rateLimitedDASActivitiesByIdentifier;
  swift_beginAccess();
  v30 = *(v3 + v29);
  if (v30)
  {
    v31 = v30 + 64;
    v32 = 1 << *(v30 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v6 = v33 & *(v30 + 64);
    v73 = (v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler);
    v34 = (v32 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v3 = 0;
    v74 = v30;
    v75 = a1;
    while (v6)
    {
LABEL_21:
      v36 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v37 = v36 | (v3 << 6);
      v38 = *(*(v30 + 56) + 8 * v37);
      if (v38 != a1)
      {
        v39 = *(*(v30 + 48) + 16 * v37 + 8);
        v40 = v73[4];
        __swift_project_boxed_opaque_existential_1(v73, v73[3]);
        v79 = *(v40 + 24);

        v41 = v38;
        a1 = v75;
        v79();
        v30 = v74;
      }
    }

    while (1)
    {
      v35 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v35 >= v34)
      {

        v6 = v76;
        v3 = v78;
        goto LABEL_24;
      }

      v6 = *(v31 + 8 * v35);
      ++v3;
      if (v6)
      {
        v3 = v35;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_24:
  os_unfair_lock_unlock(*(v70 + 16));

  if (qword_2813515F0 != -1)
  {
LABEL_31:
    swift_once();
  }

  v42 = sub_224DAB258();
  __swift_project_value_buffer(v42, qword_281364F88);

  v43 = sub_224DAB228();
  v44 = sub_224DAF2A8();

  v45 = &unk_281356000;
  if (os_log_type_enabled(v43, v44))
  {
    v46 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v81 = v79;
    *v46 = 136446466;
    v47 = *(v77 + 16);
    v75 = *(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activity);
    v76 = v47;
    v48 = v72;
    v47(v72, &v75[OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier], v6);
    v80 = sub_224DA98E8();
    sub_224A3F6A4();
    sub_224DAEF18();
    LODWORD(v74) = v44;
    v49 = sub_224A3D19C(8);
    v51 = v50;
    v53 = v52;
    v55 = v54;

    v56 = MEMORY[0x22AA5D1C0](v49, v51, v53, v55);
    v58 = v57;
    v45 = &unk_281356000;

    v59 = v77;
    (*(v77 + 8))(v48, v6);
    v60 = sub_224A33F74(v56, v58, &v81);

    *(v46 + 4) = v60;
    *(v46 + 12) = 2082;
    v61 = *&v75[OBJC_IVAR____TtC10ChronoCore12TaskActivity_name];
    v62 = *&v75[OBJC_IVAR____TtC10ChronoCore12TaskActivity_name + 8];

    v63 = sub_224A33F74(v61, v62, &v81);

    *(v46 + 14) = v63;
    _os_log_impl(&dword_224A2F000, v43, v74, "[%{public}s]: DAS  refresh activity began; name: %{public}s", v46, 0x16u);
    v64 = v79;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v64, -1, -1);
    MEMORY[0x22AA5EED0](v46, -1, -1);

    v65 = v78;
    v66 = v76;
  }

  else
  {

    v59 = v77;
    v65 = v3;
    v66 = *(v77 + 16);
    v48 = v72;
  }

  v67 = *(v65 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__startHandler);
  v68 = *(v65 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__startHandler + 8);
  v66(v48, *(v65 + v45[334]) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier, v6);
  v67(v48, 1);
  (*(v59 + 8))(v48, v6);
  return ~v71 & 1;
}

uint64_t sub_224C6FFE0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v45[-v4];
  v6 = sub_224DAAE38();
  v47 = *(v6 - 8);
  v7 = v47[8];
  MEMORY[0x28223BE20](v6);
  v9 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v45[-v12];
  v14 = sub_224DA9908();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v48 = &v45[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v20 = &v45[-v19];
  sub_224A3796C(v0 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__remoteDeviceProvider, &v49, &qword_27D6F5590, &qword_224DBEC00);
  if (v50)
  {
    sub_224A36F98(&v49, v51);
    sub_224DA9888();
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_224A3311C(v13, &unk_27D6F5630, &unk_224DB34C0);
      __swift_destroy_boxed_opaque_existential_1(v51);
    }

    else
    {
      (*(v15 + 32))(v20, v13, v14);
      v21 = v14;
      __swift_project_boxed_opaque_existential_1(v51, v51[3]);
      sub_224DAAC98();
      v22 = v47;
      if ((v47[6])(v5, 1, v6) != 1)
      {
        (v22[4])(v9, v5, v6);
        v42 = v48;
        sub_224DAADF8();
        v43 = sub_224DA9898();
        v44 = *(v15 + 8);
        v44(v42, v21);
        (v22[1])(v9, v6);
        v44(v20, v21);
        __swift_destroy_boxed_opaque_existential_1(v51);
        return v43;
      }

      (*(v15 + 8))(v20, v21);
      sub_224A3311C(v5, &qword_27D6F3320, &unk_224DBD6F0);
      __swift_destroy_boxed_opaque_existential_1(v51);
      v14 = v21;
    }
  }

  else
  {
    sub_224A3311C(&v49, &qword_27D6F5590, &qword_224DBEC00);
  }

  if (qword_2813515F0 != -1)
  {
    swift_once();
  }

  v23 = sub_224DAB258();
  __swift_project_value_buffer(v23, qword_281364F88);

  v24 = sub_224DAB228();
  v25 = sub_224DAF288();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v51[0] = v47;
    *v26 = 136446210;
    v27 = v48;
    (*(v15 + 16))(v48, *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activity) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier, v14);
    v46 = v25;
    *&v49 = sub_224DA98E8();
    sub_224A3F6A4();
    sub_224DAEF18();
    v28 = sub_224A3D19C(8);
    v29 = v14;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v36 = MEMORY[0x22AA5D1C0](v28, v31, v33, v35);
    v38 = v37;

    (*(v15 + 8))(v27, v29);
    v39 = sub_224A33F74(v36, v38, v51);

    *(v26 + 4) = v39;
    _os_log_impl(&dword_224A2F000, v24, v46, "[%{public}s]: Relationship does not exist; cannot use remote device ID", v26, 0xCu);
    v40 = v47;
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x22AA5EED0](v40, -1, -1);
    MEMORY[0x22AA5EED0](v26, -1, -1);
  }

  return 0;
}

uint64_t sub_224C705EC()
{
  result = sub_224DA9878();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_224C70740(uint64_t a1)
{
  v33 = sub_224DA9688();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v33);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v31[1] = v1;
  v42 = MEMORY[0x277D84F90];
  sub_224ADA268(0, v7, 0);
  v8 = v42;
  v9 = -1 << *(a1 + 32);
  v41 = a1 + 56;
  result = sub_224DAF798();
  v11 = result;
  v12 = 0;
  v36 = v3 + 32;
  v37 = v3 + 16;
  v32 = a1 + 64;
  v13 = v33;
  v34 = v7;
  v35 = a1;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v41 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    v38 = v12;
    v40 = *(a1 + 36);
    v16 = *(v3 + 72);
    (*(v3 + 16))(v6, *(a1 + 48) + v16 * v11, v13);
    v42 = v8;
    v17 = v13;
    v19 = *(v8 + 16);
    v18 = *(v8 + 24);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v39 = v19 + 1;
      sub_224ADA268(v18 > 1, v19 + 1, 1);
      v20 = v39;
      v8 = v42;
    }

    *(v8 + 16) = v20;
    v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v39 = v8;
    v22 = v8 + v21 + v19 * v16;
    v23 = v3;
    result = (*(v3 + 32))(v22, v6, v17);
    v14 = 1 << *(v35 + 32);
    if (v11 >= v14)
    {
      goto LABEL_23;
    }

    v24 = *(v41 + 8 * v15);
    if ((v24 & (1 << v11)) == 0)
    {
      goto LABEL_24;
    }

    v13 = v17;
    a1 = v35;
    if (v40 != *(v35 + 36))
    {
      goto LABEL_25;
    }

    v25 = v24 & (-2 << (v11 & 0x3F));
    if (v25)
    {
      v14 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v15 << 6;
      v27 = v15 + 1;
      v28 = (v32 + 8 * v15);
      while (v27 < (v14 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_224A3E204(v11, v40, 0);
          v14 = __clz(__rbit64(v29)) + v26;
          goto LABEL_19;
        }
      }

      result = sub_224A3E204(v11, v40, 0);
LABEL_19:
      v13 = v33;
    }

    v12 = v38 + 1;
    v11 = v14;
    v3 = v23;
    v8 = v39;
    if (v38 + 1 == v34)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_224C70AE0(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_224DAF7E8();
    sub_224A3B79C(0, &qword_281350908, 0x277CFA398);
    sub_224C74C44();
    sub_224DAF1F8();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_224A3B7E4();
      return;
    }

    while (1)
    {
      sub_224ADC4E8(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_224DAF878())
      {
        sub_224A3B79C(0, &qword_281350908, 0x277CFA398);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_224C70CC0(uint64_t a1, uint64_t (*a2)(void), void (*a3)(char *, char *))
{
  v27 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v26 - v11;
  result = MEMORY[0x28223BE20](v10);
  v15 = v26 - v14;
  v16 = 0;
  v28 = a1;
  v19 = *(a1 + 56);
  v18 = a1 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v5 + 32;
  v26[3] = v5 + 16;
  v26[1] = v5 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v5 + 16))(v15, *(v28 + 48) + *(v5 + 72) * (v25 | (v24 << 6)), v4);
      (*(v5 + 32))(v9, v15, v4);
      v27(v12, v9);
      result = (*(v5 + 8))(v12, v4);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224C70EE0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);
  sub_224A3D418(*(v0 + 120));
  v3 = *(v0 + 144);
  sub_224A3D418(*(v0 + 136));

  return swift_deallocClassInstance();
}

uint64_t sub_224C70F6C@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  result = sub_224C70FB0(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t sub_224C70FB0(int a1)
{
  v53 = a1;
  v2 = sub_224DA9878();
  v55 = *(v2 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v2);
  v61 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DAB1F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v58 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v57 = v49 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v49 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v59 = v49 - v16;
  MEMORY[0x28223BE20](v15);
  v60 = v49 - v17;
  v18 = sub_224DAB8C8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = v1;
  v23 = *(v1 + 16);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v24 = v23;
  v25 = sub_224DAB8F8();
  (*(v19 + 8))(v22, v18);
  if (v25)
  {
    if (qword_281351470 == -1)
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
  v26 = sub_224DAB258();
  v49[2] = __swift_project_value_buffer(v26, qword_281364DD8);
  v27 = sub_224DAB228();
  v28 = sub_224DAF2A8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_224A2F000, v27, v28, "Begin reap session", v29, 2u);
    MEMORY[0x22AA5EED0](v29, -1, -1);
  }

  v56 = v14;
  v50 = v6;
  v51 = v5;
  v52 = v2;

  if (qword_2813507E0 != -1)
  {
    swift_once();
  }

  v30 = qword_281364CB8;
  sub_224DAB1E8();
  sub_224DAF4B8();
  sub_224DAB1D8();
  v31 = *__swift_project_boxed_opaque_existential_1((v54 + 32), *(v54 + 56));
  v32 = sub_224DAC388();
  v33 = v30;
  sub_224DAB1E8();
  sub_224DAF4B8();
  sub_224DAB1D8();
  v49[1] = v32;
  v34 = sub_224C71910(v32);
  sub_224DAF4A8();
  sub_224DAB1D8();
  v35 = v33;
  sub_224DAB1E8();
  sub_224DAF4B8();
  sub_224DAB1D8();
  sub_224DA9808();
  v36 = sub_224C71A98(v32, v34);
  sub_224DAF4A8();
  sub_224DAB1D8();
  sub_224DAB1E8();
  sub_224DAF4B8();
  v49[0] = v34;
  sub_224DAB1D8();
  v37 = sub_224C7495C(v34, v36);

  sub_224DAF4A8();
  sub_224DAB1D8();
  sub_224DAB1E8();
  sub_224DAF4B8();
  sub_224DAB1D8();
  v38 = sub_224C71DA8(v53 & 1, v61, v37);

  sub_224DAF4A8();
  sub_224DAB1D8();
  sub_224DAF4A8();
  sub_224DAB1D8();
  v39 = v49[0];

  v40 = sub_224DAB228();
  v41 = sub_224DAF2A8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134349568;
    *(v42 + 4) = *(v39 + 16);

    *(v42 + 12) = 2050;
    *(v42 + 14) = *(v36 + 16);

    *(v42 + 22) = 2050;
    *(v42 + 24) = *(v38 + 16);

    _os_log_impl(&dword_224A2F000, v40, v41, "End reap session; proposed: %{public}ld; protected: %{public}ld; deleted: %{public}ld", v42, 0x20u);
    MEMORY[0x22AA5EED0](v42, -1, -1);
  }

  else
  {
  }

  v43 = v52;
  v44 = v50;
  v45 = sub_224C70740(v36);

  sub_224C70740(v39);

  sub_224C70740(v38);

  v46 = *(v44 + 8);
  v47 = v51;
  v46(v58, v51);
  v46(v57, v47);
  (*(v55 + 8))(v61, v43);
  v46(v56, v47);
  v46(v59, v47);
  v46(v60, v47);
  return v45;
}

uint64_t sub_224C71910(uint64_t a1)
{
  sub_224A3317C(v1 + 72, &v18);
  v17 = a1;
  v3 = *(v1 + 112);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    v6 = MEMORY[0x277D84FA0];
    do
    {
      sub_224A3317C(v5, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F36D8, &qword_224DB3CA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BA8, &qword_224DBCBB0);
      if (swift_dynamicCast())
      {
        sub_224A36F98(v11, v14);
        v8 = v15;
        v7 = v16;
        __swift_project_boxed_opaque_existential_1(v14, v15);
        v9 = (*(v7 + 16))(&v17, v8, v7);
        v6 = sub_224AD6960(v9, v6);
        __swift_destroy_boxed_opaque_existential_1(v14);
      }

      else
      {
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        sub_224A3311C(v11, &qword_27D6F5BB0, &unk_224DBCBB8);
      }

      v5 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {

    v6 = MEMORY[0x277D84FA0];
  }

  sub_224C74BF0(&v17);
  return v6;
}

uint64_t sub_224C71A98(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v4 = sub_224DAB8C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v2;
  v10 = *(v2 + 16);
  *v8 = v10;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_224DAB8F8();
  result = (*(v5 + 8))(v8, v4);
  if (v10)
  {
    v34 = a2;
    v33 = MEMORY[0x277D84FA0];
    v13 = *(v2 + 112);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = v13 + 32;

      v24 = v2;
      do
      {
        sub_224A3317C(v15, &v26);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F36D8, &qword_224DB3CA0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B98, &qword_224DBCBA0);
        if (swift_dynamicCast())
        {
          sub_224A36F98(v28, v30);
          sub_224A3317C(v9 + 72, v27);
          v26 = v25;
          v27[5] = v34;
          v17 = v31;
          v16 = v32;
          __swift_project_boxed_opaque_existential_1(v30, v31);
          v18 = *(v16 + 16);

          v19 = v18(&v26, v17, v16);
          v9 = v24;
          v20 = v19;

          sub_224C70CC0(v21, MEMORY[0x277CC9260], sub_224ADB390);
          sub_224AFF0B4(v20);

          sub_224C74B9C(&v26);
          __swift_destroy_boxed_opaque_existential_1(v30);
        }

        else
        {
          v29 = 0;
          memset(v28, 0, sizeof(v28));
          sub_224A3311C(v28, &qword_27D6F5BA0, &qword_224DBCBA8);
        }

        v15 += 40;
        --v14;
      }

      while (v14);
      v22 = v33;
    }

    else
    {

      v22 = MEMORY[0x277D84FA0];
    }

    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224C71DA8(int a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  v49 = a1;
  v5 = sub_224DA9688();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v42 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v41 = &v41 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v53 = &v41 - v13;
  MEMORY[0x28223BE20](v12);
  v48 = &v41 - v14;
  v15 = sub_224DAB8C8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = v3;
  v20 = *(v3 + 16);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  v21 = v20;
  LOBYTE(v20) = sub_224DAB8F8();
  result = (*(v16 + 8))(v19, v15);
  if (v20)
  {
    v47 = v5;
    v54 = MEMORY[0x277D84FA0];
    v23 = a3 + 56;
    v24 = 1 << *(a3 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(a3 + 56);
    v27 = (v24 + 63) >> 6;
    v52 = v6 + 16;
    v43 = (v6 + 8);
    v44 = v6 + 32;

    v28 = 0;
    v29 = v6;
    v30 = v53;
    v45 = v6;
    v46 = a3;
    v31 = v47;
    while (v26)
    {
      v32 = v28;
LABEL_12:
      v33 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v34 = *(a3 + 48) + *(v29 + 72) * (v33 | (v32 << 6));
      v35 = *(v29 + 16);
      v36 = v48;
      v35(v48, v34, v31);
      (*(v29 + 32))(v30, v36, v31);
      if (sub_224C72170(v49 & 1, v50, v30))
      {
        v37 = v42;
        v35(v42, v53, v31);
        v38 = v41;
        v39 = v37;
        v30 = v53;
        sub_224ADB390(v41, v39);
        v40 = *v43;
        (*v43)(v38, v31);
        result = v40(v30, v31);
      }

      else
      {
        result = (*v43)(v30, v31);
      }

      v28 = v32;
      v29 = v45;
      a3 = v46;
    }

    while (1)
    {
      v32 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v32 >= v27)
      {

        return v54;
      }

      v26 = *(v23 + 8 * v32);
      ++v28;
      if (v26)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224C72170(int a1, uint64_t a2, uint64_t a3)
{
  v162 = a2;
  v154 = sub_224DAB7B8();
  v153 = *(v154 - 8);
  v5 = *(v153 + 64);
  MEMORY[0x28223BE20](v154);
  v151 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_224DAB848();
  v150 = *(v152 - 8);
  v7 = *(v150 + 64);
  MEMORY[0x28223BE20](v152);
  v149 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v158 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v167 = &v146 - v13;
  v14 = sub_224DA9878();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v155 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v146 - v19;
  v21 = sub_224DA9688();
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = MEMORY[0x28223BE20](v21);
  v159 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v148 = &v146 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v161 = &v146 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v157 = &v146 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v147 = &v146 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v146 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v146 - v36;
  v168 = a3;
  v156 = a1;
  if (a1)
  {
    if (qword_281351470 != -1)
    {
      swift_once();
    }

    v38 = sub_224DAB258();
    __swift_project_value_buffer(v38, qword_281364DD8);
    v166 = v22[2];
    v166(v37, a3, v21);
    v39 = sub_224DAB228();
    v40 = sub_224DAF2A8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v163 = v20;
      v164 = v14;
      v42 = v41;
      v146 = swift_slowAlloc();
      aBlock[0] = v146;
      *v42 = 136446210;
      sub_224C74B54(&qword_281351A70, MEMORY[0x277CC9260]);
      v43 = sub_224DAFD28();
      v44 = v15;
      v45 = v22;
      v46 = v21;
      v48 = v47;
      v165 = v45[1];
      v165(v37, v46);
      v49 = sub_224A33F74(v43, v48, aBlock);
      v21 = v46;
      v22 = v45;
      v15 = v44;

      *(v42 + 4) = v49;
      _os_log_impl(&dword_224A2F000, v39, v40, "Reaping (dryrun) %{public}s", v42, 0xCu);
      v50 = v146;
      __swift_destroy_boxed_opaque_existential_1(v146);
      MEMORY[0x22AA5EED0](v50, -1, -1);
      v51 = v42;
      v20 = v163;
      v14 = v164;
      MEMORY[0x22AA5EED0](v51, -1, -1);

      goto LABEL_13;
    }

    v66 = v22[1];
    v67 = v37;
  }

  else
  {
    if (qword_281351470 != -1)
    {
      swift_once();
    }

    v52 = sub_224DAB258();
    __swift_project_value_buffer(v52, qword_281364DD8);
    v166 = v22[2];
    v166(v35, a3, v21);
    v53 = sub_224DAB228();
    v54 = sub_224DAF2A8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v163 = v20;
      v164 = v14;
      v56 = v55;
      v57 = swift_slowAlloc();
      aBlock[0] = v57;
      *v56 = 136446210;
      sub_224C74B54(&qword_281351A70, MEMORY[0x277CC9260]);
      v58 = sub_224DAFD28();
      v146 = v15;
      v59 = v22;
      v60 = v21;
      v61 = v58;
      v63 = v62;
      v165 = v59[1];
      v165(v35, v60);
      v64 = sub_224A33F74(v61, v63, aBlock);

      *(v56 + 4) = v64;
      v21 = v60;
      v22 = v59;
      v15 = v146;
      _os_log_impl(&dword_224A2F000, v53, v54, "Reaping %{public}s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x22AA5EED0](v57, -1, -1);
      v65 = v56;
      v20 = v163;
      v14 = v164;
      MEMORY[0x22AA5EED0](v65, -1, -1);

      goto LABEL_13;
    }

    v66 = v22[1];
    v67 = v35;
  }

  v165 = v66;
  v66(v67, v21);
LABEL_13:
  v69 = v167;
  v68 = v168;
  sub_224DA9668();
  v70 = v15[6];
  if (v70(v69, 1, v14) == 1)
  {
    sub_224A3311C(v69, &qword_27D6F32B0, &qword_224DB3EA0);
    if (qword_281351470 != -1)
    {
      swift_once();
    }

    v71 = sub_224DAB258();
    __swift_project_value_buffer(v71, qword_281364DD8);
    v72 = v161;
    v166(v161, v68, v21);
    v73 = sub_224DAB228();
    v74 = sub_224DAF2A8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      aBlock[0] = v76;
      *v75 = 136446210;
      sub_224C74B54(&qword_281351A70, MEMORY[0x277CC9260]);
      v77 = sub_224DAFD28();
      v78 = v21;
      v79 = v77;
      v81 = v80;
      v165(v72, v78);
      v82 = sub_224A33F74(v79, v81, aBlock);

      *(v75 + 4) = v82;
      _os_log_impl(&dword_224A2F000, v73, v74, "Skipping file because we have no cached modification date: %{public}s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      MEMORY[0x22AA5EED0](v76, -1, -1);
      MEMORY[0x22AA5EED0](v75, -1, -1);
    }

    else
    {

      v165(v72, v21);
    }

    return 0;
  }

  v161 = v22;
  v83 = v15[4];
  v83(v20, v69, v14);
  if ((sub_224DA9798() & 1) == 0)
  {
    if (qword_281351470 != -1)
    {
      swift_once();
    }

    v86 = sub_224DAB258();
    __swift_project_value_buffer(v86, qword_281364DD8);
    v87 = v157;
    v166(v157, v168, v21);
    v88 = sub_224DAB228();
    v89 = sub_224DAF2A8();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v164 = v14;
      v91 = v20;
      v92 = v90;
      v93 = swift_slowAlloc();
      aBlock[0] = v93;
      *v92 = 136446210;
      sub_224C74B54(&qword_281351A70, MEMORY[0x277CC9260]);
      v94 = sub_224DAFD28();
      v95 = v21;
      v96 = v94;
      v98 = v97;
      v165(v87, v95);
      v99 = sub_224A33F74(v96, v98, aBlock);

      *(v92 + 4) = v99;
      _os_log_impl(&dword_224A2F000, v88, v89, "Skipping file because it was created after the protection list was built: %{public}s", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v93);
      MEMORY[0x22AA5EED0](v93, -1, -1);
      MEMORY[0x22AA5EED0](v92, -1, -1);

      (v15[1])(v91, v164);
    }

    else
    {

      v165(v87, v21);
      (v15[1])(v20, v14);
    }

    return 0;
  }

  v163 = v20;
  v146 = v15;
  v164 = v14;
  v167 = v21;
  v84 = v160[13];
  __swift_project_boxed_opaque_existential_1(v160 + 9, v160[12]);
  v85 = v158;
  sub_224DAA3D8();
  v100 = v164;
  v101 = v70(v85, 1, v164);
  if (v101 == 1)
  {
    (v146[1])(v163, v100);
    sub_224A3311C(v85, &qword_27D6F32B0, &qword_224DB3EA0);
    v102 = v160;
    v103 = v161;
    v104 = v168;
    if (v156)
    {
      goto LABEL_34;
    }

LABEL_32:
    v112 = v102[13];
    __swift_project_boxed_opaque_existential_1(v102 + 9, v102[12]);
    sub_224DA9658();
    v113 = sub_224DAA378();
    v104 = v168;

    if (v113)
    {
      v114 = v102[13];
      __swift_project_boxed_opaque_existential_1(v102 + 9, v102[12]);
      sub_224DAA388();
    }

    goto LABEL_34;
  }

  v106 = v155;
  v83(v155, v85, v100);
  v107 = v106;
  sub_224C74B54(&qword_281351A38, MEMORY[0x277CC9578]);
  v108 = v163;
  v109 = sub_224DAEDD8();
  v110 = v146;
  v102 = v160;
  if ((v109 & 1) == 0)
  {
    v127 = v168;
    if (qword_281351470 != -1)
    {
      swift_once();
    }

    v128 = sub_224DAB258();
    __swift_project_value_buffer(v128, qword_281364DD8);
    v129 = v147;
    v130 = v127;
    v131 = v167;
    v166(v147, v130, v167);
    v132 = sub_224DAB228();
    v133 = sub_224DAF2A8();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = v100;
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      aBlock[0] = v136;
      *v135 = 136446210;
      sub_224C74B54(&qword_281351A70, MEMORY[0x277CC9260]);
      v137 = sub_224DAFD28();
      v138 = v131;
      v139 = v137;
      v141 = v140;
      v165(v129, v138);
      v142 = sub_224A33F74(v139, v141, aBlock);

      *(v135 + 4) = v142;
      _os_log_impl(&dword_224A2F000, v132, v133, "Skipping file because it has been modified: %{public}s", v135, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v136);
      MEMORY[0x22AA5EED0](v136, -1, -1);
      MEMORY[0x22AA5EED0](v135, -1, -1);

      v143 = v110[1];
      v143(v155, v134);
      v144 = v163;
      v145 = v134;
    }

    else
    {

      v165(v129, v131);
      v143 = v110[1];
      v143(v107, v100);
      v144 = v163;
      v145 = v100;
    }

    v143(v144, v145);
    return 0;
  }

  v111 = v146[1];
  v111(v107, v100);
  v111(v108, v100);
  v103 = v161;
  v104 = v168;
  if ((v156 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_34:
  v115 = v102[15];
  if (v115)
  {
    v116 = v102[16];
    v117 = v102[3];
    v118 = v148;
    v119 = v104;
    v120 = v167;
    v166(v148, v119, v167);
    v121 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v122 = swift_allocObject();
    *(v122 + 16) = v115;
    *(v122 + 24) = v116;
    v103[4](v122 + v121, v118, v120);
    aBlock[4] = sub_224C74AEC;
    aBlock[5] = v122;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_33;
    v123 = _Block_copy(aBlock);
    sub_224A364AC(v115);

    v124 = v149;
    sub_224DAB7E8();
    v169 = MEMORY[0x277D84F90];
    sub_224C74B54(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v125 = v151;
    v126 = v154;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v124, v125, v123);
    _Block_release(v123);
    sub_224A3D418(v115);
    (*(v153 + 8))(v125, v126);
    (*(v150 + 8))(v124, v152);
  }

  return 1;
}

void sub_224C735BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (*(a5 + 16))
  {
    v6 = a4 >> 1;
    if (a4 >> 1 != a3)
    {
      if ((a4 >> 1) <= a3)
      {
        __break(1u);
      }

      else
      {
        v10 = (a2 + 16 * a3);
        v11 = *v10;
        v12 = v10[1];

        v13 = sub_224A3A40C(v11, v12);
        v15 = v14;

        if ((v15 & 1) == 0)
        {
          return;
        }

        if (!__OFSUB__(v6, a3))
        {
          v16 = *(a5 + 56) + 16 * v13;
          v17 = *(v16 + 8);
          v18 = *v16;

          v19 = swift_unknownObjectRetain();
          sub_224C735BC(v19, a2, a3 + 1, a4, v18, v17);
          swift_unknownObjectRelease();

          return;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_224C736D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 1 == a3)
  {
    return result;
  }

  if ((a4 >> 1) <= a3)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = v4;
  v7 = result;
  v10 = (a2 + 16 * a3);
  v12 = *v10;
  v11 = v10[1];
  v13 = *v4;
  v14 = *(v13 + 16);

  swift_unknownObjectRetain();
  if (v14 && (v15 = sub_224A3A40C(v12, v11), (v16 & 1) != 0))
  {
    v17 = *(v13 + 56) + 16 * v15;
    v21 = *v17;
    v22 = *(v17 + 8);
  }

  else
  {
    v21 = sub_224DA1FDC(MEMORY[0x277D84F90]);
    v22 = 0;
  }

  sub_224C736D0(v7, a2, a3 + 1, a4);
  v18 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v6;
  sub_224B2272C(v21, v22, v12, v11, isUniquelyReferenced_nonNull_native);
  swift_unknownObjectRelease();

  *v6 = v20;
  return result;
}

unint64_t *sub_224C73814(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_224C7419C(v9, a2, a3, a4, a5 & 1);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_224C738B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46 = a4;
  v47 = a5;
  v45 = a3;
  v44 = sub_224DAF3C8();
  v14 = *(v44 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAF318();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v19 = sub_224DAB848();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a7;
  v54 = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a1, a7);
  v50 = a8;
  v51 = a10;
  v24 = __swift_allocate_boxed_opaque_existential_1(&v49);
  (*(*(a8 - 8) + 32))(v24, a2, a8);
  type metadata accessor for FileReaper();
  v25 = swift_allocObject();
  v26 = v53;
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = (v40 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = *v30;
  *(v25 + 56) = sub_224DAC3C8();
  *(v25 + 64) = &off_28382F820;
  *(v25 + 32) = v32;
  v33 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v41 = "tedURLs";
  v42 = v33;
  sub_224DAB828();
  v48 = MEMORY[0x277D84F90];
  v40[3] = sub_224C74B54(&qword_281350A88, MEMORY[0x277D85230]);
  v40[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  v40[4] = sub_224A9B6A0(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  v34 = *MEMORY[0x277D85260];
  v35 = *(v14 + 104);
  v40[1] = v14 + 104;
  v36 = v43;
  v37 = v44;
  v35(v43, v34, v44);
  v40[0] = v22;
  *(v25 + 16) = sub_224DAF418();
  v41 = "Core.FileReaper.internal";
  sub_224DAB7E8();
  v48 = MEMORY[0x277D84F90];
  sub_224DAF788();
  v35(v36, v34, v37);
  *(v25 + 24) = sub_224DAF418();
  *(v25 + 120) = 0u;
  *(v25 + 136) = 0u;
  sub_224A36F98(&v49, v25 + 72);
  v38 = v46;
  *(v25 + 112) = v45;
  *(v25 + 120) = v38;
  *(v25 + 128) = v47;
  __swift_destroy_boxed_opaque_existential_1(v52);
  return v25;
}

uint64_t sub_224C73D7C(uint64_t a1)
{
  v2 = sub_224DA9688();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v48 - v8;
  v9 = sub_224DA1FDC(MEMORY[0x277D84F90]);
  v10 = 0;
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v54 = v3 + 32;
  v55 = v3 + 16;
  v57 = v3;
  v52 = (v3 + 8);
  v53 = v7;
  v49 = v2;
  v50 = a1;
  v51 = v15;
  while (v14)
  {
LABEL_11:
    v18 = v56;
    v17 = v57;
    (*(v57 + 16))(v56, *(a1 + 48) + *(v57 + 72) * (__clz(__rbit64(v14)) | (v10 << 6)), v2);
    v19 = (*(v17 + 32))(v7, v18, v2);
    v62 = MEMORY[0x22AA5E4C0](v19);
    v20 = sub_224DA95B8();
    v21 = v20;
    v22 = v20[2];
    if (!v22)
    {

      goto LABEL_5;
    }

    v23 = v20[4];
    v24 = v20[5];
    v25 = v9[2];

    v60 = v23;
    v61 = v24;
    if (v25 && (v26 = sub_224A3A40C(v23, v24), (v27 & 1) != 0))
    {
      v28 = v9[7] + 16 * v26;
      v29 = *v28;
      LOBYTE(v28) = *(v28 + 8);
      v64 = v29;
      v65 = v28;
    }

    else
    {
      v64 = MEMORY[0x277D84F98];
      v65 = 0;
    }

    sub_224C736D0(v21, v21 + 32, 1, (2 * v22) | 1);
    v58 = v64;
    v59 = v65;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v9;
    v32 = sub_224A3A40C(v60, v61);
    v33 = v9[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    v15 = v51;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_29;
    }

    v36 = v31;
    if (v9[3] >= v35)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_224B28BC4();
      }

      v37 = v61;
      v9 = v63;
      if ((v36 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_224B168C8(v35, isUniquelyReferenced_nonNull_native);
      v37 = v61;
      v38 = sub_224A3A40C(v60, v61);
      if ((v36 & 1) != (v39 & 1))
      {
        goto LABEL_31;
      }

      v32 = v38;
      v9 = v63;
      if ((v36 & 1) == 0)
      {
LABEL_20:
        v9[(v32 >> 6) + 8] |= 1 << v32;
        v40 = (v9[6] + 16 * v32);
        *v40 = v60;
        v40[1] = v37;
        v41 = v9[7] + 16 * v32;
        *v41 = v58;
        *(v41 + 8) = v59;
        v42 = v9[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_30;
        }

        v9[2] = v44;
        swift_bridgeObjectRelease_n();
        goto LABEL_26;
      }
    }

    v45 = v9[7] + 16 * v32;
    v46 = *v45;
    *v45 = v58;
    *(v45 + 8) = v59;
    swift_bridgeObjectRelease_n();

LABEL_26:
    v2 = v49;
    a1 = v50;
LABEL_5:
    v14 &= v14 - 1;
    objc_autoreleasePoolPop(v62);
    v7 = v53;
    (*v52)(v53, v2);
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= v15)
    {

      return v9;
    }

    v14 = *(v11 + 8 * v16);
    ++v10;
    if (v14)
    {
      v10 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224C7419C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v39 = a2;
  v42 = a5;
  v40 = a1;
  v7 = sub_224DA9688();
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = 0;
  v13 = 0;
  v14 = a3 + 56;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a3 + 56);
  v18 = (v15 + 63) >> 6;
  v49 = v11 + 16;
  v50 = v11;
  v48 = (v11 + 8);
  v43 = result;
  v44 = a3;
  v46 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v51 = (v17 - 1) & v17;
LABEL_13:
    v22 = v19 | (v13 << 6);
    v23 = *(a3 + 48);
    v24 = *(v50 + 72);
    v47 = v22;
    (*(v50 + 16))(v12, v23 + v24 * v22, v7);
    v25 = sub_224DA95B8();
    v26 = v25;
    if (*(a4 + 16))
    {
      v27 = v25[2];
      if (v27)
      {
        v29 = v25[4];
        v28 = v25[5];

        v30 = sub_224A3A40C(v29, v28);
        v45 = v31;

        if ((v45 & 1) == 0)
        {

          v7 = v43;
          a3 = v44;
          v12 = v46;
          goto LABEL_20;
        }

        v32 = *(a4 + 56) + 16 * v30;
        v33 = *v32;
        v34 = *(v32 + 8);

        sub_224C735BC(v26, v26 + 32, 1, (2 * v27) | 1, v33);
        v36 = v35;

        v12 = v46;
        v7 = v43;
        result = (*v48)(v46, v43);
        a3 = v44;
        v17 = v51;
        if ((v36 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {

        v12 = v46;
LABEL_5:
        result = (*v48)(v12, v7);
        v17 = v51;
      }
    }

    else
    {

      if ((v42 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_20:
      result = (*v48)(v12, v7);
      v17 = v51;
LABEL_21:
      *(v40 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      if (__OFADD__(v41++, 1))
      {
        __break(1u);
LABEL_24:

        return sub_224B04F30(v40, v39, v41, a3);
      }
    }
  }

  v20 = v13;
  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      goto LABEL_24;
    }

    v21 = *(v14 + 8 * v13);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v51 = (v21 - 1) & v21;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224C744E4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v45 = a3;
  v55 = *MEMORY[0x277D85DE8];
  v7 = sub_224DA9688();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;

  if (v11 > 0xD)
  {
    goto LABEL_28;
  }

  while (2)
  {
    v41 = v12;
    v42 = v4;
    v40 = &v40;
    MEMORY[0x28223BE20](v14);
    v43 = &v40 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v13);
    v44 = 0;
    v15 = 0;
    v12 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a1 + 56);
    v19 = (v16 + 63) >> 6;
    v51 = (v8 + 8);
    v52 = v8 + 16;
    v4 = v8;
    v46 = v8;
    v47 = a1;
    v49 = v7;
    while (v18)
    {
      v20 = __clz(__rbit64(v18));
      v53 = (v18 - 1) & v18;
LABEL_14:
      v23 = v20 | (v15 << 6);
      v24 = *(a1 + 48);
      v25 = *(v4 + 72);
      v50 = v23;
      v13 = v54;
      (*(v4 + 16))(v54, v24 + v25 * v23, v7);
      v26 = sub_224DA95B8();
      v8 = v26;
      if (*(a2 + 16))
      {
        v27 = v26[2];
        if (v27)
        {
          v29 = v26[4];
          v28 = v26[5];

          v13 = sub_224A3A40C(v29, v28);
          v48 = v30;

          if ((v48 & 1) == 0)
          {

            v4 = v46;
            a1 = v47;
            v7 = v49;
            goto LABEL_21;
          }

          v31 = *(a2 + 56) + 16 * v13;
          v32 = *v31;
          v33 = *(v31 + 8);

          sub_224C735BC(v8, v8 + 32, 1, (2 * v27) | 1, v32);
          v13 = v34;

          v7 = v49;
          (*v51)(v54, v49);
          v4 = v46;
          a1 = v47;
          v18 = v53;
          if ((v13 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {

          v7 = v49;
LABEL_6:
          (*v51)(v54, v7);
          v18 = v53;
        }
      }

      else
      {

        if ((v45 & 1) == 0)
        {
          goto LABEL_6;
        }

LABEL_21:
        (*v51)(v54, v7);
        v18 = v53;
LABEL_22:
        *&v43[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
        if (__OFADD__(v44++, 1))
        {
          __break(1u);
LABEL_25:
          v36 = sub_224B04F30(v43, v41, v44, a1);

          goto LABEL_26;
        }
      }
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {
        goto LABEL_25;
      }

      v22 = *(v12 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v53 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_28:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v39 = swift_slowAlloc();

  v36 = sub_224C73814(v39, v12, a1, a2, v45 & 1);

  MEMORY[0x22AA5EED0](v39, -1, -1);

LABEL_26:
  v37 = *MEMORY[0x277D85DE8];
  return v36;
}