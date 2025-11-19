uint64_t sub_242824DC0(uint64_t a1, uint64_t a2)
{
  sub_2428B3FF8();
  sub_242824808(&qword_27ECC3218, MEMORY[0x277CF7C20]);
  v3 = sub_2428B3C38();
  if (v4)
  {
    if (*(a2 + 16))
    {
      v5 = sub_242801C04(v3, v4);
      v7 = v6;

      if (v7)
      {
LABEL_9:
        v12 = (*(a2 + 56) + 16 * v5);
        v13 = *v12;
        v14 = v12[1];
        sub_242824808(&qword_27ECC3220, MEMORY[0x277CF7C20]);
        sub_2428B3218();
        return sub_2428B4108();
      }
    }

    else
    {
    }
  }

  result = sub_2428B3C28();
  if (!v9)
  {
    return result;
  }

  if (*(a2 + 16))
  {
    v5 = sub_242801C04(result, v9);
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }
}

uint64_t sub_242824F54(uint64_t a1, uint64_t a2)
{
  sub_2428B3ED8();
  sub_242824808(&qword_27ECC3208, MEMORY[0x277CF7BF8]);
  v3 = sub_2428B3C38();
  if (v4)
  {
    if (*(a2 + 16))
    {
      v5 = sub_242801C04(v3, v4);
      v7 = v6;

      if (v7)
      {
LABEL_9:
        v12 = (*(a2 + 56) + 16 * v5);
        v13 = *v12;
        v14 = v12[1];
        sub_242824808(&qword_27ECC3210, MEMORY[0x277CF7BF8]);
        sub_2428B3218();
        return sub_2428B4108();
      }
    }

    else
    {
    }
  }

  result = sub_2428B3C28();
  if (!v9)
  {
    return result;
  }

  if (*(a2 + 16))
  {
    v5 = sub_242801C04(result, v9);
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }
}

void *sub_2428250E8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_242825170(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC21F0, &qword_2428B7C30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

size_t sub_2428251F4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3238, &qword_2428BBEF8);
  v4 = *(sub_2428B35D8() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2428252F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2428B49C8();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_2428B4A88();
}

id sub_24282537C(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_2428B4988();
  sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
  sub_242828268();
  result = sub_2428B47E8();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_2428B49F8())
      {
        goto LABEL_30;
      }

      sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_242825598(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_2428B35D8();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_24282583C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        sub_2428B3218();
        goto LABEL_24;
      }

      v11 += 2;
      sub_2428B3218();
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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_242825994(id result)
{
  if (result)
  {
    v1 = result;
    v2 = [result emailAddress];
    if (v2)
    {
      v3 = v2;
      v4 = sub_2428B4618();
      v6 = v5;

      sub_2428AFF68(&v11, v4, v6);
    }

    result = [v1 phoneNumber];
    if (result)
    {
      v7 = result;
      v8 = sub_2428B4618();
      v10 = v9;

      sub_2428AFF68(&v11, v8, v10);
    }
  }

  return result;
}

void sub_242825A64(void *a1)
{
  v2 = [a1 organizer];
  sub_242825994(v2);

  v3 = [a1 attendees];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  sub_242822BFC(0, &qword_27ECC3260, 0x277CC5A70);
  v5 = sub_2428B46C8();

  if (v5 >> 62)
  {
    v6 = sub_2428B49C8();
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_4:
      if (v6 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v6; ++i)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x245D1B5D0](i, v5);
        }

        else
        {
          v8 = *(v5 + 8 * i + 32);
        }

        v9 = v8;
        v10 = [v9 emailAddress];
        if (v10)
        {
          v11 = v10;
          v12 = sub_2428B4618();
          v14 = v13;

          sub_2428AFF68(&v20, v12, v14);
        }

        v15 = [v9 phoneNumber];
        if (v15)
        {
          v16 = v15;
          v17 = sub_2428B4618();
          v19 = v18;

          sub_2428AFF68(&v20, v17, v19);
        }

        else
        {
        }
      }
    }
  }
}

char *sub_242825C70(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v68 = a3;
  v58 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = &v52 - v6;
  v63 = sub_2428B35D8();
  v7 = *(v63 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v63);
  v57 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = &v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3240, &qword_2428BBF00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v52 - v14;
  v16 = sub_2428B3BB8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v81 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3248, &unk_2428BBF08);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v82 = &v52 - v22;
  v23 = sub_2428B3988();
  v70 = *(v23 - 8);
  v24 = *(v70 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v80 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v52 - v28;
  MEMORY[0x28223BE20](v27);
  v69 = &v52 - v30;
  if (a1 >> 62)
  {
LABEL_27:
    v31 = sub_2428B49C8();
    if (v31)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
LABEL_3:
      v73 = v29;
      v29 = 0;
      v78 = a1 & 0xFFFFFFFFFFFFFF8;
      v79 = a1 & 0xC000000000000001;
      v77 = (v17 + 48);
      v67 = (v17 + 32);
      v66 = (v17 + 16);
      v60 = (v7 + 48);
      v55 = (v7 + 32);
      v54 = (v7 + 16);
      v53 = (v7 + 8);
      v64 = (v17 + 8);
      v83 = (v70 + 32);
      v76 = (v70 + 56);
      v85 = MEMORY[0x277D84F90];
      v75 = (v70 + 48);
      v71 = v16;
      v72 = v15;
      v7 = v82;
      v61 = a1;
      v65 = v31;
      while (1)
      {
        if (v79)
        {
          v32 = MEMORY[0x245D1B5D0](v29, a1);
          v33 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v29 >= *(v78 + 16))
          {
            goto LABEL_26;
          }

          v32 = *(a1 + 8 * v29 + 32);
          v33 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v17 = v32;
        sub_2428B3BC8();
        if ((*v77)(v15, 1, v16) == 1)
        {
          sub_2427E0980(v15, &qword_27ECC3240, &qword_2428BBF00);
          v34 = 1;
        }

        else
        {
          v35 = v81;
          (*v67)(v81, v15, v16);
          v84[3] = v16;
          v84[4] = sub_242824808(&qword_280CDDA50, MEMORY[0x277CF7B88]);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v84);
          (*v66)(boxed_opaque_existential_1, v35, v16);
          v37 = v73;
          sub_2428B3998();
          sub_242824808(&qword_27ECC3258, MEMORY[0x277CF7B58]);
          if (sub_2428B3878())
          {
            result = [v17 uniqueID];
            if (!result)
            {
              __break(1u);
              return result;
            }

            v39 = result;
            sub_2428B4618();

            v40 = v62;
            sub_2428B35C8();

            v41 = v63;
            if ((*v60)(v40, 1, v63) == 1)
            {
              sub_2427E0980(v40, &qword_27ECC2CE0, &qword_2428B6560);
              a1 = v61;
              v16 = v71;
              v15 = v72;
              v37 = v73;
            }

            else
            {
              v42 = v56;
              (*v55)(v56, v40, v41);
              v37 = v73;
              v74 = _s12CalendarLink23TransferableEventEntityV2idSSvg_0();
              v59 = v43;
              v44 = v57;
              (*v54)(v57, v42, v41);
              v45 = v58;
              v46 = *v58;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v84[0] = *v45;
              sub_242820278(v44, v74, v59, isUniquelyReferenced_nonNull_native);

              *v45 = v84[0];
              (*v53)(v42, v63);
              a1 = v61;
              v16 = v71;
              v15 = v72;
            }
          }

          sub_242825A64(v17);
          (*v64)(v81, v16);
          v7 = v82;
          (*v83)(v82, v37, v23);
          v34 = 0;
          v31 = v65;
        }

        (*v76)(v7, v34, 1, v23);

        if ((*v75)(v7, 1, v23) == 1)
        {
          sub_2427E0980(v7, &unk_27ECC3248, &unk_2428BBF08);
        }

        else
        {
          v74 = v33;
          v48 = *v83;
          v49 = v69;
          (*v83)(v69, v7, v23);
          v48(v80, v49, v23);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = sub_2427F7B9C(0, *(v85 + 2) + 1, 1, v85);
          }

          v17 = *(v85 + 2);
          v50 = *(v85 + 3);
          if (v17 >= v50 >> 1)
          {
            v85 = sub_2427F7B9C(v50 > 1, v17 + 1, 1, v85);
          }

          v51 = v85;
          *(v85 + 2) = v17 + 1;
          v48(&v51[((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v17], v80, v23);
          v16 = v71;
          v15 = v72;
          v7 = v82;
          v33 = v74;
        }

        ++v29;
        if (v33 == v31)
        {
          return v85;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

void sub_24282658C(uint64_t a1, uint64_t a2, void *a3)
{
  v80 = a3;
  v74 = a1;
  v83[5] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v67 = &v64 - v6;
  v81 = sub_2428B3988();
  v7 = *(v81 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v81);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2428B35D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v73 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v76 = &v64 - v17;
  v18 = *(a2 + 16);
  v68 = a2;
  v77 = v16;
  v75 = v12;
  if (v18)
  {
    v19 = sub_2428251F4(v18, 0);
    v20 = sub_242825598(v83, (v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80))), v18, a2);
    sub_2428B3218();
    sub_2427C9D4C();
    if (v20 != v18)
    {
      goto LABEL_38;
    }

    a2 = v68;
    v12 = v75;
  }

  v21 = sub_2428B46B8();

  v83[0] = 0;
  v22 = [v80 fetchReminderDataForReminderURLs:v21 error:v83];

  v23 = v83[0];
  if (v22)
  {
    sub_242822BFC(0, &qword_27ECC3228, off_278D6A8B8);
    sub_242824808(&qword_27ECC3230, MEMORY[0x277CC9260]);
    v24 = sub_2428B4528();
    v25 = v23;

    v26 = *v74;
    v80 = *(*v74 + 16);
    if (v80)
    {
      v72 = v24;
      v27 = 0;
      v78 = v7 + 8;
      v79 = v7 + 16;
      v71 = v12 + 16;
      v70 = v12 + 32;
      v66 = (v12 + 56);
      v69 = (v12 + 8);
      while (v27 < v26[2])
      {
        v28 = v81;
        (*(v7 + 16))(v10, v26 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v27, v81);
        v29 = _s12CalendarLink23TransferableEventEntityV2idSSvg_0();
        v31 = v30;
        (*(v7 + 8))(v10, v28);
        if (*(a2 + 16))
        {
          v32 = sub_242801C04(v29, v31);
          v33 = a2;
          v35 = v34;

          if (v35)
          {
            v36 = v75;
            v37 = *(v33 + 56) + *(v75 + 72) * v32;
            v38 = v73;
            v39 = v77;
            (*(v75 + 16))(v73, v37, v77);
            v40 = *(v36 + 32);
            v41 = v76;
            v40(v76, v38, v39);
            v42 = v72;
            a2 = v33;
            if (*(v72 + 16) && (v43 = sub_24281E894(v41), (v44 & 1) != 0))
            {
              v45 = *(*(v42 + 56) + 8 * v43);
              v46 = sub_242824CD0(v83, v27);
              v47 = sub_2428B38A8();
              v49 = v48;
              v50 = sub_2428B4048();
              if ((*(*(v50 - 8) + 48))(v49, 1, v50))
              {
                v47(v82, 0);
                v46(v83, 0);
              }

              else
              {
                v65 = v46;
                v51 = [v45 listName];
                if (v51)
                {
                  v52 = v51;
                  v64 = sub_2428B4618();
                }

                sub_2428B4038();
                v47(v82, 0);
                v65(v83, 0);
              }

              v53 = [v45 notes];
              if (v53)
              {
                v54 = v53;
                sub_2428B4618();
              }

              v26 = *v74;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v26 = sub_242825354(v26);
              }

              if (v27 >= v26[2])
              {
                goto LABEL_36;
              }

              sub_2428B3938();
              v55 = [v45 url];
              if (v55)
              {
                v56 = v67;
                v57 = v55;
                sub_2428B35B8();

                v58 = v56;
                v59 = 0;
                a2 = v68;
              }

              else
              {
                v59 = 1;
                a2 = v68;
                v58 = v67;
              }

              v60 = v77;
              (*v66)(v58, v59, 1, v77);
              if (v27 >= v26[2])
              {
                goto LABEL_37;
              }

              sub_2428B3928();

              (*v69)(v76, v60);
              *v74 = v26;
            }

            else
            {
              (*v69)(v41, v77);
            }
          }

          else
          {
            a2 = v33;
          }
        }

        else
        {
        }

        if (v80 == ++v27)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

LABEL_33:
  }

  else
  {
    v61 = v83[0];
    v62 = sub_2428B3538();

    swift_willThrow();
  }

  v63 = *MEMORY[0x277D85DE8];
}

uint64_t sub_242826D5C(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC31F8, &qword_2428BBEE8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = &v56 - v8;
  v9 = sub_2428B3ED8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = &v56 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3200, &qword_2428BBEF0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v56 - v21;
  v23 = sub_2428B3FF8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2428B3968();
  v28 = (*(v24 + 48))(v22, 1, v23);
  v63 = a2;
  if (v28 == 1)
  {
    sub_2427E0980(v22, &qword_27ECC3200, &qword_2428BBEF0);
  }

  else
  {
    (*(v24 + 32))(v27, v22, v23);
    sub_242824DC0(v27, a2);
    (*(v24 + 16))(v20, v27, v23);
    (*(v24 + 56))(v20, 0, 1, v23);
    sub_2428B3978();
    (*(v24 + 8))(v27, v23);
  }

  v29 = v62;
  sub_2428B38B8();
  if ((*(v10 + 48))(v29, 1, v9) == 1)
  {
    sub_2427E0980(v29, &qword_27ECC31F8, &qword_2428BBEE8);
    result = sub_2428B3958();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v31 = v60;
    (*(v10 + 32))(v60, v29, v9);
    sub_242824F54(v31, v63);
    v32 = v61;
    (*(v10 + 16))(v61, v31, v9);
    (*(v10 + 56))(v32, 0, 1, v9);
    sub_2428B38C8();
    (*(v10 + 8))(v31, v9);
    result = sub_2428B3958();
    if (!result)
    {
      return result;
    }
  }

  v61 = *(result + 16);
  v62 = a1;
  if (v61)
  {
    v33 = v10;
    v34 = 0;
    v35 = *(v33 + 16);
    v36 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v58 = *(v33 + 72);
    v59 = v35;
    v57 = (v33 + 24);
    v60 = (v33 + 16);
    v37 = (v33 + 8);
    do
    {
      v38 = result;
      v59(v14, result + v36, v9);
      sub_242824808(&qword_27ECC3208, MEMORY[0x277CF7BF8]);
      v39 = sub_2428B3C38();
      if (v40)
      {
        if (*(v63 + 16))
        {
          v41 = sub_242801C04(v39, v40);
          v43 = v42;

          if (v43)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }
      }

      v44 = sub_2428B3C28();
      if (!v45)
      {
        goto LABEL_21;
      }

      if (*(v63 + 16))
      {
        v41 = sub_242801C04(v44, v45);
        v47 = v46;

        if ((v47 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_19:
        v48 = (*(v63 + 56) + 16 * v41);
        v49 = *v48;
        v50 = v48[1];
        sub_242824808(&qword_27ECC3210, MEMORY[0x277CF7BF8]);
        sub_2428B3218();
        sub_2428B4108();
        goto LABEL_21;
      }

LABEL_21:
      v52 = sub_2428B3948();
      v53 = *v51;
      if (*v51)
      {
        v54 = v51;
        v55 = *v51;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v54 = v53;
        if ((result & 1) == 0)
        {
          result = sub_242825368(v53);
          v53 = result;
          *v54 = result;
        }

        if (v34 >= *(v53 + 2))
        {
          __break(1u);
          return result;
        }

        (*v57)(&v53[v36], v14, v9);
      }

      v52(v64, 0);
      ++v34;
      (*v37)(v14, v9);
      v36 += v58;
      result = v38;
    }

    while (v61 != v34);
  }
}

void sub_2428273D8(char **a1, uint64_t a2, void *a3)
{
  v92[4] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2428B5A90;
  v6 = *MEMORY[0x277CBD018];
  *(v5 + 32) = *MEMORY[0x277CBD018];
  v7 = objc_allocWithZone(MEMORY[0x277CBDA70]);
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC31E0, &qword_2428BBED0);
  v9 = sub_2428B46B8();

  v10 = [v7 initWithKeysToFetch_];

  v11 = objc_opt_self();
  v12 = sub_2428B46B8();
  v13 = [v11 predicateForContactsMatchingHandleStrings_];

  [v10 setPredicate_];
  [v10 setUnifyResults_];
  v92[0] = 0;
  v14 = [a3 executeFetchRequest:v10 error:v92];
  if (!v14)
  {
    v59 = v92[0];
    v7 = sub_2428B3538();

    swift_willThrow();
    if (qword_280CDE4E0 == -1)
    {
      goto LABEL_37;
    }

    goto LABEL_59;
  }

  v15 = v14;
  v16 = v92[0];
  [v15 value];
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v68 = sub_2428B4448();
    __swift_project_value_buffer(v68, qword_280CDE4E8);
    v69 = v15;
    v70 = sub_2428B4428();
    v71 = sub_2428B4838();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v92[0] = v73;
      *v72 = 136315138;
      v74 = [v69 value];
      swift_getObjectType();
      swift_unknownObjectRelease();
      v75 = sub_2428B4CC8();
      v77 = sub_24285A480(v75, v76, v92);

      *(v72 + 4) = v77;
      _os_log_impl(&dword_2427C0000, v70, v71, "Unexpected fetch result value type: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x245D1C000](v73, -1, -1);
      MEMORY[0x245D1C000](v72, -1, -1);
    }

    else
    {
    }

    goto LABEL_54;
  }

  v18 = v17;
  v84 = v15;
  v85 = a1;
  v86 = v10;
  v19 = [v17 allKeys];
  v20 = sub_2428B46C8();

  v21 = sub_24281C55C(v20);

  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v22 = v21;
  }

  v23 = *(v22 + 16);
  if (!v23)
  {
    v89 = MEMORY[0x277D84F98];
LABEL_45:

    v78 = *v85;
    v79 = *(*v85 + 2);
    if (!v79)
    {

      swift_unknownObjectRelease();
LABEL_54:
      v83 = *MEMORY[0x277D85DE8];
      return;
    }

    v80 = *v85;
    v10 = v89;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_242825354(v78);
    }

    v81 = 0;
    while (v81 < *(v78 + 2))
    {
      v82 = *(sub_2428B3988() - 8);
      sub_242826D5C(&v78[((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v81++], v89);
      v7 = v81;
      if (v79 == v81)
      {

        swift_unknownObjectRelease();
        *v85 = v78;
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_37:
    v60 = sub_2428B4448();
    __swift_project_value_buffer(v60, qword_280CDE4E8);
    v61 = v7;
    v62 = sub_2428B4428();
    v63 = sub_2428B4838();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138412290;
      v66 = v7;
      v67 = _swift_stdlib_bridgeErrorToNSError();
      *(v64 + 4) = v67;
      *v65 = v67;
      _os_log_impl(&dword_2427C0000, v62, v63, "Error fetching contacts: %@", v64, 0xCu);
      sub_2427E0980(v65, &qword_27ECC31E8, &qword_2428BBED8);
      MEMORY[0x245D1C000](v65, -1, -1);
      MEMORY[0x245D1C000](v64, -1, -1);
    }

    else
    {
    }

    goto LABEL_54;
  }

  v24 = (v22 + 40);
  v89 = MEMORY[0x277D84F98];
  v25 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
  v87 = v18;
  while (1)
  {
    v10 = *(v24 - 1);
    v26 = *v24;
    v92[0] = v10;
    v92[1] = v26;
    swift_bridgeObjectRetain_n();
    v27 = [v18 v25[381]];
    swift_unknownObjectRelease();
    if (!v27)
    {

      goto LABEL_8;
    }

    sub_2428B4918();
    swift_unknownObjectRelease();
    sub_242822794(v92, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC31F0, &qword_2428BBEE0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_29;
    }

    v28 = v90;
    if (v90 >> 62)
    {
      if (!sub_2428B49C8())
      {
LABEL_28:

LABEL_29:

        if (qword_280CDE4E0 != -1)
        {
          swift_once();
        }

        v51 = sub_2428B4448();
        __swift_project_value_buffer(v51, qword_280CDE4E8);
        sub_242822794(v92, v91);
        v52 = sub_2428B4428();
        v7 = sub_2428B4838();
        if (os_log_type_enabled(v52, v7))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v90 = v54;
          *v53 = 136315138;
          __swift_project_boxed_opaque_existential_1(v91, v91[3]);
          swift_getDynamicType();
          v55 = sub_2428B4CC8();
          v57 = v56;
          __swift_destroy_boxed_opaque_existential_1(v91);
          v58 = sub_24285A480(v55, v57, &v90);
          v25 = &property descriptor for AlarmEntityRepresentation.absoluteDate;

          *(v53 + 4) = v58;
          _os_log_impl(&dword_2427C0000, v52, v7, "Unexpected contact list type: %s", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v54);
          MEMORY[0x245D1C000](v54, -1, -1);
          MEMORY[0x245D1C000](v53, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v91);
        }

        __swift_destroy_boxed_opaque_existential_1(v92);
        goto LABEL_8;
      }
    }

    else if (!*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x245D1B5D0](0, v28);
    }

    else
    {
      if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v29 = *(v28 + 32);
    }

    v30 = v29;

    v88 = v30;
    v31 = [v30 identifier];
    v7 = sub_2428B4618();
    v33 = v32;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91[0] = v89;
    v36 = sub_242801C04(v10, v26);
    v37 = *(v89 + 16);
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_56;
    }

    v40 = v35;
    if (*(v89 + 24) >= v39)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24288D678();
      }

      goto LABEL_22;
    }

    sub_24288C840(v39, isUniquelyReferenced_nonNull_native);
    v41 = sub_242801C04(v10, v26);
    if ((v40 & 1) != (v42 & 1))
    {
      break;
    }

    v36 = v41;
LABEL_22:
    v25 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
    v43 = v91[0];
    v89 = v91[0];
    if (v40)
    {
      v44 = (*(v91[0] + 56) + 16 * v36);
      v45 = v44[1];
      *v44 = v7;
      v44[1] = v33;
    }

    else
    {
      *(v91[0] + 8 * (v36 >> 6) + 64) |= 1 << v36;
      v46 = (v43[6] + 16 * v36);
      *v46 = v10;
      v46[1] = v26;
      v47 = (v43[7] + 16 * v36);
      *v47 = v7;
      v47[1] = v33;
      v48 = v43[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_58;
      }

      v43[2] = v50;
    }

    __swift_destroy_boxed_opaque_existential_1(v92);
    v18 = v87;
LABEL_8:
    v24 += 2;
    if (!--v23)
    {
      goto LABEL_45;
    }
  }

  sub_2428B4C38();
  __break(1u);
}

char *sub_242827E60(unint64_t a1, void *a2, void *a3)
{
  v13 = MEMORY[0x277D84F98];
  v12 = MEMORY[0x277D84FA0];
  v11 = sub_242825C70(a1, &v13, &v12);
  sub_24282658C(&v11, v13, a2);
  v5 = v12;
  v6 = *(v12 + 16);
  if (!v6)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_5:
    sub_2428273D8(&v11, v7, a3);

    return v11;
  }

  v7 = sub_242825170(v6, 0);
  v8 = sub_24282583C(&v10, v7 + 4, v6, v5);
  sub_2428B3218();
  result = sub_2427C9D4C();
  if (v8 == v6)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *sub_242827F98(unint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for TransferableEventEntity();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2428B3988();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_242827E60(a1, a2, a3);
  v17 = *(v16 + 2);
  if (v17)
  {
    v19 = *(v12 + 16);
    v18 = v12 + 16;
    v20 = *(v18 + 64);
    v26 = v16;
    v21 = &v16[(v20 + 32) & ~v20];
    v27 = *(v18 + 56);
    v28 = v19;
    v22 = MEMORY[0x277D84F90];
    v29 = v18;
    do
    {
      v28(v15, v21, v11);
      (*(v18 + 16))(v10, v15, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_2427F7BEC(0, v22[2] + 1, 1, v22);
      }

      v24 = v22[2];
      v23 = v22[3];
      if (v24 >= v23 >> 1)
      {
        v22 = sub_2427F7BEC(v23 > 1, v24 + 1, 1, v22);
      }

      v22[2] = v24 + 1;
      sub_242828204(v10, v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v24);
      v21 += v27;
      --v17;
    }

    while (v17);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v22;
}

uint64_t sub_242828204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransferableEventEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_242828268()
{
  result = qword_27ECC4EF0;
  if (!qword_27ECC4EF0)
  {
    sub_242822BFC(255, &qword_27ECC28F0, 0x277CC59B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4EF0);
  }

  return result;
}

uint64_t type metadata accessor for AlarmTrigger()
{
  result = qword_27ECC3270;
  if (!qword_27ECC3270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_242828324()
{
  sub_242828398();
  if (v0 <= 0x3F)
  {
    sub_2428B3688();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_242828398()
{
  if (!qword_27ECC3280)
  {
    sub_2428283F0();
    v0 = sub_2428B34D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECC3280);
    }
  }
}

unint64_t sub_2428283F0()
{
  result = qword_27ECC4C60;
  if (!qword_27ECC4C60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECC4C60);
  }

  return result;
}

uint64_t sub_242828458()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3298, &qword_2428BBFD0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - v3;
  v5 = type metadata accessor for AlarmTrigger();
  v6 = sub_242828B30();
  MEMORY[0x245D19EE0](v6, v5, &type metadata for AlarmTrigger.OffsetDurationResolver, v6);
  v7 = sub_242828B84();
  MEMORY[0x245D19EE0](v7, v5, &type metadata for AlarmTrigger.DateResolver, v7);
  sub_242828AE8(&qword_27ECC3288, type metadata accessor for AlarmTrigger);
  sub_2428B33A8();
  v9[0] = v6;
  v9[1] = &type metadata for AlarmTrigger.OffsetDurationResolver;
  sub_2428B3398();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_242828604(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_242828624, 0, 0);
}

uint64_t sub_242828624()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC44E0, &unk_2428BBFC0);
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = type metadata accessor for AlarmTrigger();
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_242828720(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_242828740, 0, 0);
}

uint64_t sub_242828740()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_2428B3688();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = type metadata accessor for AlarmTrigger();
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_242828830()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2C58, &qword_2428BB148);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2428B7940;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC44E0, &unk_2428BBFC0);
  v2 = sub_2427CD47C(&qword_27ECC3290, &unk_27ECC44E0, &unk_2428BBFC0);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_2428B3688();
  v4 = sub_242828AE8(&qword_27ECC2768, MEMORY[0x277CC9578]);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

uint64_t sub_242828918@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2;
  v6 = *(*(a1 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242828A84(v7, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2428B3688();
    a2[3] = v10;
    v11 = sub_242828AE8(&qword_27ECC2768, MEMORY[0x277CC9578]);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC44E0, &unk_2428BBFC0);
    a2[3] = v10;
    v11 = sub_2427CD47C(&qword_27ECC3290, &unk_27ECC44E0, &unk_2428BBFC0);
  }

  a2[4] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v10 - 8) + 32))(boxed_opaque_existential_1, v9, v10);
}

uint64_t sub_242828A84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmTrigger();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242828AE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_242828B30()
{
  result = qword_27ECC32A0;
  if (!qword_27ECC32A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC32A0);
  }

  return result;
}

unint64_t sub_242828B84()
{
  result = qword_27ECC32A8;
  if (!qword_27ECC32A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC32A8);
  }

  return result;
}

unint64_t sub_242828BFC()
{
  result = qword_27ECC32C0;
  if (!qword_27ECC32C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC32C0);
  }

  return result;
}

unint64_t sub_242828C54()
{
  result = qword_27ECC32C8;
  if (!qword_27ECC32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC32C8);
  }

  return result;
}

unint64_t sub_242828CAC()
{
  result = qword_27ECC32D0;
  if (!qword_27ECC32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC32D0);
  }

  return result;
}

unint64_t sub_242828D4C()
{
  result = qword_27ECC32D8;
  if (!qword_27ECC32D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC32D8);
  }

  return result;
}

uint64_t CalendarEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  result = sub_2428B2918();
  *a1 = result;
  return result;
}

uint64_t CalendarEntityQuery.entities(for:)(uint64_t a1)
{
  v2[2] = a1;
  v3 = *(*(sub_2428B3DB8() - 8) + 64) + 15;
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[3] = v4;
  v2[4] = v5;
  sub_2428B4758();
  v2[5] = sub_2428B4748();
  v7 = sub_2428B4728();

  return MEMORY[0x2822009F8](sub_242828F28, v7, v6);
}

void sub_242828F28()
{
  v25 = v0;
  v1 = v0[4];
  v2 = sub_2427F4190();
  v3 = v0[2];
  v4 = sub_2428B46B8();
  v5 = [v2 calendarsWithIdentifiers_];

  if (v5)
  {
    v23 = v2;
    v6 = v0[5];

    sub_2427F98B4();
    v7 = sub_2428B46C8();

    if (v7 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2428B49C8())
    {
      v9 = 0;
      v10 = MEMORY[0x277D84F90];
      while ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x245D1B5D0](v9, v7);
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_16;
        }

LABEL_8:
        v13 = v0[3];
        v14 = v11;
        sub_2428B3DC8();
        CalendarEntity.init(_:)(v13, v24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2427F7C14(0, *(v10 + 2) + 1, 1, v10);
        }

        v16 = *(v10 + 2);
        v15 = *(v10 + 3);
        if (v16 >= v15 >> 1)
        {
          v10 = sub_2427F7C14((v15 > 1), v16 + 1, 1, v10);
        }

        *(v10 + 2) = v16 + 1;
        v17 = &v10[80 * v16];
        *(v17 + 2) = v24[0];
        v18 = v24[1];
        v19 = v24[2];
        v20 = v24[4];
        *(v17 + 5) = v24[3];
        *(v17 + 6) = v20;
        *(v17 + 3) = v18;
        *(v17 + 4) = v19;
        ++v9;
        if (v12 == i)
        {
          goto LABEL_20;
        }
      }

      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v11 = *(v7 + 8 * v9 + 32);
      v12 = v9 + 1;
      if (!__OFADD__(v9, 1))
      {
        goto LABEL_8;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_20:
    v21 = v0[3];

    v22 = v0[1];

    v22(v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t CalendarEntityQuery.suggestedEntities()(uint64_t a1)
{
  v3 = *v1;
  v2[2] = a1;
  v2[3] = v3;
  sub_2428B4758();
  v2[4] = sub_2428B4748();
  v5 = sub_2428B4728();

  return MEMORY[0x2822009F8](sub_242829274, v5, v4);
}

uint64_t sub_242829274()
{
  v9 = v0;
  v2 = v0[3];
  v1 = v0[4];

  v3 = sub_2427F4190();
  v4 = v0[2];
  v8 = 3;
  v5 = v3;
  static CalendarSuggestionsProvider.suggestions(withEventStore:options:)(v3, &v8, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24282931C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427F96EC;

  return CalendarEntityQuery.entities(for:)(a1);
}

uint64_t sub_2428293B0(uint64_t a1)
{
  v3 = *v1;
  v2[2] = a1;
  v2[3] = v3;
  sub_2428B4758();
  v2[4] = sub_2428B4748();
  v5 = sub_2428B4728();

  return MEMORY[0x2822009F8](sub_242829274, v5, v4);
}

uint64_t sub_24282944C(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_242829CF0();
  *v6 = v2;
  v6[1] = sub_2427DC6B4;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t CalendarEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a2;
  v4[8] = a3;
  v4[6] = a1;
  v5 = *(*(sub_2428B3DB8() - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *v3;
  v4[10] = v7;
  v4[11] = v8;
  sub_2428B4758();
  v4[12] = sub_2428B4748();
  v10 = sub_2428B4728();

  return MEMORY[0x2822009F8](sub_242829604, v10, v9);
}

uint64_t sub_242829604()
{
  v40 = v0;
  v2 = v0[11];
  v1 = v0[12];

  v37 = sub_2427F4190();
  v3 = [v37 calendarsForEntityType_];
  sub_2427F98B4();
  v4 = sub_2428B46C8();

  *&v39[0] = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2428B49C8())
  {
    v6 = 0;
    v38 = i;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x245D1B5D0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v0[7];
      v11 = v0[8];
      v12 = [v7 title];
      v13 = sub_2428B4618();
      v15 = v14;

      v0[2] = v13;
      v0[3] = v15;
      v0[4] = v10;
      v0[5] = v11;
      sub_242829AD4();
      LOBYTE(v12) = sub_2428B4908();

      if (v12)
      {
        sub_2428B4AA8();
        v16 = *(*&v39[0] + 16);
        sub_2428B4AD8();
        sub_2428B4AE8();
        sub_2428B4AB8();
      }

      else
      {
      }

      ++v6;
      if (v9 == v38)
      {
        v17 = *&v39[0];
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_18:

  if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
  {
    goto LABEL_35;
  }

  v18 = *(v17 + 16);
  if (v18)
  {
LABEL_21:
    v19 = 0;
    v20 = MEMORY[0x277D84F90];
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x245D1B5D0](v19, v17);
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v19 >= *(v17 + 16))
        {
          goto LABEL_34;
        }

        v21 = *(v17 + 8 * v19 + 32);
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          v18 = sub_2428B49C8();
          if (!v18)
          {
            break;
          }

          goto LABEL_21;
        }
      }

      v23 = v0[9];
      v24 = v21;
      sub_2428B3DC8();
      CalendarEntity.init(_:)(v23, v39);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_2427F7C14(0, *(v20 + 2) + 1, 1, v20);
      }

      v26 = *(v20 + 2);
      v25 = *(v20 + 3);
      if (v26 >= v25 >> 1)
      {
        v20 = sub_2427F7C14((v25 > 1), v26 + 1, 1, v20);
      }

      *(v20 + 2) = v26 + 1;
      v27 = &v20[80 * v26];
      *(v27 + 2) = v39[0];
      v28 = v39[1];
      v29 = v39[2];
      v30 = v39[4];
      *(v27 + 5) = v39[3];
      *(v27 + 6) = v30;
      *(v27 + 3) = v28;
      *(v27 + 4) = v29;
      ++v19;
    }

    while (v22 != v18);
  }

  v32 = v0[9];
  v31 = v0[10];
  v33 = v0[6];

  v34 = sub_2428B3568();
  (*(*(v34 - 8) + 56))(v31, 1, 1, v34);
  sub_242829B28();
  sub_2427E3430();
  sub_2428B30F8();

  v35 = v0[1];

  return v35();
}

uint64_t sub_242829A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2427CD274;

  return CalendarEntityQuery.entities(matching:)(a1, a2, a3);
}

unint64_t sub_242829AD4()
{
  result = qword_27ECC35C0;
  if (!qword_27ECC35C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC35C0);
  }

  return result;
}

unint64_t sub_242829B28()
{
  result = qword_280CDE590;
  if (!qword_280CDE590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE590);
  }

  return result;
}

unint64_t sub_242829B80()
{
  result = qword_280CDE5E0;
  if (!qword_280CDE5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE5E0);
  }

  return result;
}

unint64_t sub_242829BD8()
{
  result = qword_280CDE5D8;
  if (!qword_280CDE5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE5D8);
  }

  return result;
}

unint64_t sub_242829C30()
{
  result = qword_280CDE608;
  if (!qword_280CDE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE608);
  }

  return result;
}

unint64_t sub_242829C88()
{
  result = qword_27ECC32E0;
  if (!qword_27ECC32E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC32E8, qword_2428BEA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC32E0);
  }

  return result;
}

unint64_t sub_242829CF0()
{
  result = qword_280CDE5F0[0];
  if (!qword_280CDE5F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CDE5F0);
  }

  return result;
}

uint64_t sub_242829D54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_2428B3558();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B36C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2428B45F8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2428B3568();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_2428B3338();
  __swift_allocate_value_buffer(v15, qword_27ECC32F0);
  __swift_project_value_buffer(v15, qword_27ECC32F0);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3578();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3328();
}

uint64_t AttendeeEntity_v0.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2428B45D8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v38 = &v33 - v10;
  v11 = sub_2428B36C8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v36 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2428B3558();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2428B45F8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_2428B3568();
  v34 = *(v21 - 8);
  v35 = v21;
  v22 = *(v34 + 64);
  MEMORY[0x28223BE20](v21);
  v37 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v1[4];
  v25 = v1[6];
  v26 = v1[5];
  sub_2428B2C68();
  v27 = v40;
  if (!v40)
  {
    sub_2428B2C68();
    v27 = v40;
  }

  sub_2428B2C68();
  if (!v40)
  {
    if (!v27)
    {
      sub_2428B4578();
      if (qword_27ECC1780 != -1)
      {
        swift_once();
      }

      v31 = __swift_project_value_buffer(v14, qword_27ECD4500);
      (*(v15 + 16))(v18, v31, v14);
      sub_2428B36B8();
      sub_2428B3578();
      (*(v34 + 56))(v38, 1, 1, v35);
      v32 = sub_2428B3148();
      (*(*(v32 - 8) + 56))(v39, 1, 1, v32);
      return sub_2428B3178();
    }

    return sub_2428B3128();
  }

  v33 = a1;
  if (!v27)
  {
    return sub_2428B3128();
  }

  sub_2428B45C8();
  sub_2428B45B8();
  sub_2428B4598();

  sub_2428B45B8();
  sub_2428B4598();

  sub_2428B45B8();
  sub_2428B45E8();
  if (qword_27ECC1780 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v14, qword_27ECD4500);
  (*(v15 + 16))(v18, v28, v14);
  sub_2428B36B8();
  sub_2428B3588();
  (*(v34 + 56))(v38, 1, 1, v35);
  v29 = sub_2428B3148();
  (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
  return sub_2428B3178();
}

uint64_t AttendeeEntity_v0.emailAddress.getter()
{
  v1 = *(v0 + 40);
  sub_2428B2C68();
  return v3;
}

uint64_t AttendeeEntity_v0.phoneNumber.getter()
{
  v1 = *(v0 + 48);
  sub_2428B2C68();
  return v3;
}

uint64_t AttendeeEntity_v0.name.getter()
{
  v1 = *(v0 + 32);
  sub_2428B2C68();
  return v3;
}

uint64_t sub_24282A71C(char *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v11 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t AttendeeEntity_v0.status.setter(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_2428B2C78();
}

uint64_t (*AttendeeEntity_v0.status.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_24282A8EC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v11 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t AttendeeEntity_v0.role.setter(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_2428B2C78();
}

uint64_t (*AttendeeEntity_v0.role.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_24282AABC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v11 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t AttendeeEntity_v0.kind.setter(char *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return sub_2428B2C78();
}

uint64_t (*AttendeeEntity_v0.kind.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t AttendeeEntity_v0.comment.getter()
{
  v1 = *(v0 + 24);
  sub_2428B2C68();
  return v3;
}

uint64_t sub_24282AC9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v11 = *a1;
  v12 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*AttendeeEntity_v0.comment.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_24282AE48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v11 = *a1;
  v12 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*AttendeeEntity_v0.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_24282AFF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v11 = *a1;
  v12 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*AttendeeEntity_v0.emailAddress.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 40);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_24282B1A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v11 = *a1;
  v12 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*AttendeeEntity_v0.phoneNumber.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 48);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CBEA8;
}

uint64_t sub_24282B370(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  sub_2427D4960(a1, &v20 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v15 = a2[4];
  v16 = a2[5];
  v18 = a2[6];
  v17 = a2[7];
  sub_2427D4960(v10, v8);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
  sub_2427D49D0(v10);
}

uint64_t AttendeeEntity_v0.url.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 56);
  sub_2427D4960(a1, &v8 - v6);
  sub_2428B2C78();
  return sub_2427D49D0(a1);
}

uint64_t (*AttendeeEntity_v0.url.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 56);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t AttendeeEntity_v0.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v49 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v39 - v7;
  v8 = sub_2428B3558();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2428B36C8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_2428B45F8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_2428B3568();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3368, &qword_2428BC3A8);
  sub_2428B4578();
  sub_2428B36B8();
  v19 = *MEMORY[0x277CC9110];
  v20 = *(v9 + 104);
  v20(v12, v19, v8);
  sub_2428B3578();
  sub_24282BEBC();
  v46 = sub_2428B2C98();
  *a2 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3370, &qword_2428BC3B0);
  sub_2428B4578();
  sub_2428B36B8();
  v20(v12, v19, v8);
  sub_2428B3578();
  sub_24282BF10();
  v45 = sub_2428B2C98();
  a2[1] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3380, &qword_2428BC3B8);
  sub_2428B4578();
  sub_2428B36B8();
  v20(v12, v19, v8);
  sub_2428B3578();
  sub_24282BF64();
  v44 = sub_2428B2C98();
  a2[2] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3760, &qword_2428B6ED0);
  sub_2428B4578();
  sub_2428B36B8();
  v20(v12, v19, v8);
  sub_2428B3578();
  v43 = sub_2428B2D68();
  a2[3] = v43;
  sub_2428B4578();
  sub_2428B36B8();
  v20(v12, v19, v8);
  sub_2428B3578();
  v42 = sub_2428B2D68();
  a2[4] = v42;
  sub_2428B4578();
  sub_2428B36B8();
  v20(v12, v19, v8);
  sub_2428B3578();
  v41 = sub_2428B2D68();
  a2[5] = v41;
  sub_2428B4578();
  sub_2428B36B8();
  v20(v12, v19, v8);
  sub_2428B3578();
  v40 = sub_2428B2D68();
  a2[6] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C00, &qword_2428B6ED8);
  sub_2428B4578();
  sub_2428B36B8();
  v20(v12, v19, v8);
  sub_2428B3578();
  a2[7] = sub_2428B2D28();
  v21 = v47;
  v22 = sub_2428B3CE8();
  if (v22 >= 8)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  LOBYTE(v50) = v23;
  sub_2428B2C78();
  v24 = sub_2428B3CC8();
  if (v24 >= 5)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  LOBYTE(v50) = v25;
  sub_2428B2C78();
  v26 = sub_2428B3CD8();
  if (v26 >= 5)
  {
    v27 = 0;
  }

  else
  {
    v27 = v26;
  }

  LOBYTE(v50) = v27;
  sub_2428B2C78();
  v50 = sub_2428B3CF8();
  v51 = v28;
  v29 = sub_2428B2C78();
  v50 = MEMORY[0x245D1A810](v29);
  v51 = v30;
  v31 = sub_2428B2C78();
  v50 = MEMORY[0x245D1A7F0](v31);
  v51 = v32;
  v33 = sub_2428B2C78();
  v50 = MEMORY[0x245D1A7E0](v33);
  v51 = v34;
  v35 = sub_2428B2C78();
  v36 = v48;
  MEMORY[0x245D1A800](v35);
  sub_2427D4960(v36, v49);
  sub_2428B2C78();
  v37 = sub_2428B3D08();
  (*(*(v37 - 8) + 8))(v21, v37);
  return sub_2427D49D0(v36);
}

CalendarLink::AttendeeEntity_v0::AttendeeEntityStatus_v0 __swiftcall AttendeeEntity_v0.AttendeeEntityStatus_v0.init(_:)(EKParticipantStatus a1)
{
  if (a1 >= 8)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  *v1 = v2;
  return a1;
}

CalendarLink::AttendeeEntity_v0::Kind_v0 __swiftcall AttendeeEntity_v0.Kind_v0.init(_:)(EKParticipantType a1)
{
  if (a1 >= (EKParticipantTypeGroup|EKParticipantTypePerson))
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  *v1 = v2;
  return a1;
}

unint64_t sub_24282BEBC()
{
  result = qword_27ECC3990;
  if (!qword_27ECC3990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3990);
  }

  return result;
}

unint64_t sub_24282BF10()
{
  result = qword_27ECC3378;
  if (!qword_27ECC3378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3378);
  }

  return result;
}

unint64_t sub_24282BF64()
{
  result = qword_27ECC3388;
  if (!qword_27ECC3388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3388);
  }

  return result;
}

uint64_t AttendeeEntity_v0.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2428B3558();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2428B36C8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2428B45F8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2428B3568();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3368, &qword_2428BC3A8);
  sub_2428B4578();
  sub_2428B36B8();
  v13 = *MEMORY[0x277CC9110];
  v14 = *(v3 + 104);
  v14(v6, v13, v2);
  sub_2428B3578();
  sub_24282BEBC();
  *a1 = sub_2428B2C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3370, &qword_2428BC3B0);
  sub_2428B4578();
  sub_2428B36B8();
  v14(v6, v13, v2);
  sub_2428B3578();
  sub_24282BF10();
  a1[1] = sub_2428B2C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3380, &qword_2428BC3B8);
  sub_2428B4578();
  sub_2428B36B8();
  v14(v6, v13, v2);
  sub_2428B3578();
  sub_24282BF64();
  a1[2] = sub_2428B2C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3760, &qword_2428B6ED0);
  sub_2428B4578();
  sub_2428B36B8();
  v14(v6, v13, v2);
  sub_2428B3578();
  a1[3] = sub_2428B2D68();
  sub_2428B4578();
  sub_2428B36B8();
  v14(v6, v13, v2);
  sub_2428B3578();
  a1[4] = sub_2428B2D68();
  sub_2428B4578();
  sub_2428B36B8();
  v14(v6, v13, v2);
  sub_2428B3578();
  a1[5] = sub_2428B2D68();
  sub_2428B4578();
  sub_2428B36B8();
  v14(v6, v13, v2);
  sub_2428B3578();
  a1[6] = sub_2428B2D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C00, &qword_2428B6ED8);
  sub_2428B4578();
  sub_2428B36B8();
  v14(v6, v13, v2);
  sub_2428B3578();
  result = sub_2428B2D28();
  a1[7] = result;
  return result;
}

uint64_t sub_24282C678(uint64_t a1)
{
  v2 = sub_242830758();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_24282C6C4()
{
  sub_242830758();

  return sub_2428B28C8();
}

uint64_t sub_24282C734(uint64_t a1)
{
  v2 = sub_24282F540();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_24282C784(uint64_t a1)
{
  v2 = sub_24282F7E4();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_24282C7D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_2428B3558();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B36C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2428B45F8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2428B3568();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_2428B3338();
  __swift_allocate_value_buffer(v15, qword_27ECC3308);
  __swift_project_value_buffer(v15, qword_27ECC3308);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3578();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3328();
}

uint64_t sub_24282CAE8()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v79 = v58 - v1;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = v58 - v3;
  v78 = sub_2428B3558();
  v5 = *(v78 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v14 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_2428B3568();
  v80 = *(v77 - 8);
  v15 = *(v80 + 64);
  MEMORY[0x28223BE20]();
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3540, &qword_2428BCEE0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2FB8, &qword_2428BB6D8);
  v66 = v18;
  v19 = *(v18 - 8);
  v70 = *(v19 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v62 = 8 * v70;
  v21 = swift_allocObject();
  v63 = v21;
  *(v21 + 16) = xmmword_2428BC380;
  v22 = (v21 + v20);
  v23 = *(v18 + 48);
  *v22 = 0;
  sub_2428B4578();
  sub_2428B36B8();
  v76 = *MEMORY[0x277CC9110];
  v24 = *(v5 + 104);
  v68 = v5 + 104;
  v65 = v24;
  (v24)(v8);
  v25 = v17;
  v26 = v11;
  v27 = v8;
  sub_2428B3578();
  v28 = *(v80 + 56);
  v80 += 56;
  v72 = v28;
  v67 = v4;
  v29 = v77;
  v28(v4, 1, 1, v77);
  v71 = sub_2428B3148();
  v30 = *(v71 - 8);
  v73 = *(v30 + 56);
  v74 = v30 + 56;
  v73(v79, 1, 1, v71);
  v69 = v22;
  v31 = v25;
  sub_2428B3178();
  v32 = v70;
  v60 = &v22[v70];
  v33 = v66;
  v61 = *(v66 + 48);
  *v60 = 1;
  v58[0] = v14;
  sub_2428B4578();
  v64 = v26;
  sub_2428B36B8();
  v75 = v27;
  v34 = v27;
  v35 = v76;
  v36 = v65;
  v65(v34, v76, v78);
  sub_2428B3578();
  v72(v67, 1, 1, v29);
  v37 = v73;
  v73(v79, 1, 1, v71);
  sub_2428B3178();
  v61 = 2 * v32;
  v59 = &v69[2 * v32];
  v60 = *(v33 + 48);
  *v59 = 2;
  sub_2428B4578();
  sub_2428B36B8();
  v36(v75, v35, v78);
  sub_2428B3578();
  v38 = v72;
  v72(v67, 1, 1, v77);
  v39 = v71;
  v37(v79, 1, 1, v71);
  sub_2428B3178();
  v40 = v69;
  v60 = &v69[v61 + v70];
  v41 = v66;
  v61 = *(v66 + 48);
  *v60 = 3;
  sub_2428B4578();
  sub_2428B36B8();
  v42 = v65;
  v65(v75, v76, v78);
  sub_2428B3578();
  v43 = v67;
  v38(v67, 1, 1, v77);
  v73(v79, 1, 1, v39);
  v44 = v43;
  sub_2428B3178();
  v45 = v70;
  v61 = 4 * v70;
  v60 = *(v41 + 48);
  v40[4 * v70] = 4;
  sub_2428B4578();
  sub_2428B36B8();
  v42(v75, v76, v78);
  sub_2428B3578();
  v46 = v77;
  v47 = v72;
  v72(v44, 1, 1, v77);
  v73(v79, 1, 1, v71);
  sub_2428B3178();
  v60 = &v69[v61 + v45];
  v61 = *(v66 + 48);
  *v60 = 5;
  sub_2428B4578();
  sub_2428B36B8();
  v48 = v65;
  v65(v75, v76, v78);
  v58[1] = v31;
  sub_2428B3578();
  v47(v67, 1, 1, v46);
  v49 = v71;
  v50 = v73;
  v73(v79, 1, 1, v71);
  sub_2428B3178();
  v51 = v69;
  v60 = &v69[6 * v70];
  v52 = v66;
  v61 = *(v66 + 48);
  *v60 = 6;
  sub_2428B4578();
  sub_2428B36B8();
  v48(v75, v76, v78);
  sub_2428B3578();
  v53 = v67;
  v72(v67, 1, 1, v77);
  v54 = v79;
  v50(v79, 1, 1, v49);
  sub_2428B3178();
  v55 = *(v52 + 48);
  v51[v62 - v70] = 7;
  sub_2428B4578();
  sub_2428B36B8();
  v65(v75, v76, v78);
  sub_2428B3578();
  v72(v53, 1, 1, v77);
  v73(v54, 1, 1, v71);
  sub_2428B3178();
  v56 = sub_242821CCC(v63);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC3320 = v56;
  return result;
}

uint64_t (*static AttendeeEntity_v0.AttendeeEntityStatus_v0.caseDisplayRepresentations.modify())()
{
  if (qword_27ECC17C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

CalendarLink::AttendeeEntity_v0::AttendeeEntityStatus_v0_optional __swiftcall AttendeeEntity_v0.AttendeeEntityStatus_v0.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24282D920(uint64_t a1)
{
  v2 = sub_24282BEBC();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_24282D990(uint64_t a1)
{
  v2 = sub_24282FB38();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_24282D9EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_2428B3558();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B36C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2428B45F8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2428B3568();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_2428B3338();
  __swift_allocate_value_buffer(v15, qword_27ECC3328);
  __swift_project_value_buffer(v15, qword_27ECC3328);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3578();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3328();
}

uint64_t sub_24282DD00()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v67 = &v46 - v1;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v61 = &v46 - v3;
  v66 = sub_2428B3558();
  v4 = *(v66 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v65 = sub_2428B3568();
  v12 = *(v65 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3538, &unk_2428BCED0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2FA8, &qword_2428BB6C8);
  v17 = *(v16 - 8);
  v54 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v49 = 4 * v54;
  v19 = swift_allocObject();
  v50 = v19;
  *(v19 + 16) = xmmword_2428BC390;
  v48 = *(v16 + 48);
  *(v19 + v18) = 0;
  v20 = v19 + v18;
  sub_2428B4578();
  sub_2428B36B8();
  v62 = *MEMORY[0x277CC9110];
  v64 = *(v4 + 104);
  v58 = v4 + 104;
  v21 = v7;
  v22 = v7;
  v23 = v66;
  v64(v22);
  v51 = v15;
  v24 = v21;
  sub_2428B3578();
  v63 = *(v12 + 56);
  v60 = v12 + 56;
  v25 = v61;
  v63(v61, 1, 1, v65);
  v59 = sub_2428B3148();
  v26 = *(v59 - 8);
  v55 = *(v26 + 56);
  v56 = v26 + 56;
  v55(v67, 1, 1, v59);
  v27 = v20;
  v53 = v20;
  sub_2428B3178();
  v28 = v54;
  v47 = (v27 + v54);
  v52 = v16;
  v48 = *(v16 + 48);
  *v47 = 1;
  sub_2428B4578();
  v57 = v10;
  sub_2428B36B8();
  v46 = v24;
  (v64)(v24, v62, v23);
  sub_2428B3578();
  v63(v25, 1, 1, v65);
  v29 = v59;
  v55(v67, 1, 1, v59);
  sub_2428B3178();
  v30 = 2 * v28;
  v48 = 2 * v28;
  v31 = v53;
  v47 = *(v16 + 48);
  *(v53 + v30) = 2;
  sub_2428B4578();
  sub_2428B36B8();
  v32 = v46;
  (v64)(v46, v62, v66);
  sub_2428B3578();
  v33 = v65;
  v63(v61, 1, 1, v65);
  v34 = v29;
  v35 = v55;
  v55(v67, 1, 1, v34);
  sub_2428B3178();
  v36 = v31;
  v37 = (v31 + v48 + v54);
  v38 = v52;
  v54 = *(v52 + 48);
  *v37 = 3;
  sub_2428B4578();
  sub_2428B36B8();
  v39 = v32;
  (v64)(v32, v62, v66);
  sub_2428B3578();
  v40 = v61;
  v63(v61, 1, 1, v33);
  v41 = v67;
  v35(v67, 1, 1, v59);
  sub_2428B3178();
  v42 = (v36 + v49);
  v43 = *(v38 + 48);
  *v42 = 4;
  sub_2428B4578();
  sub_2428B36B8();
  (v64)(v39, v62, v66);
  sub_2428B3578();
  v63(v40, 1, 1, v65);
  v35(v41, 1, 1, v59);
  sub_2428B3178();
  v44 = sub_242821CF0(v50);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC3340 = v44;
  return result;
}

uint64_t (*static AttendeeEntity_v0.Role_v0.caseDisplayRepresentations.modify())()
{
  if (qword_27ECC17D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24282E740(uint64_t a1)
{
  v2 = sub_24282BF10();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_24282E7B0(uint64_t a1)
{
  v2 = sub_24282FF54();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_24282E80C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_2428B3558();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B36C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2428B45F8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2428B3568();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_2428B3338();
  __swift_allocate_value_buffer(v15, qword_27ECC3348);
  __swift_project_value_buffer(v15, qword_27ECC3348);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3578();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3328();
}

uint64_t sub_24282EB20()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v70 = v49 - v1;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v58 = v49 - v3;
  v60 = sub_2428B3558();
  v4 = *(v60 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2428B3568();
  v14 = *(v68 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20]();
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3530, &unk_2428BCEC0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2F98, &qword_2428BB6B8);
  v62 = v18;
  v19 = *(v18 - 8);
  v57 = *(v19 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v54 = 4 * v57;
  v21 = swift_allocObject();
  v55 = v21;
  *(v21 + 16) = xmmword_2428BC390;
  v22 = v21 + v20;
  v53 = *(v18 + 48);
  *(v21 + v20) = 0;
  sub_2428B4578();
  sub_2428B36B8();
  v65 = *MEMORY[0x277CC9110];
  v23 = *(v4 + 104);
  v59 = v4 + 104;
  v69 = v23;
  v50 = v7;
  (v23)(v7);
  v24 = v17;
  v25 = v10;
  sub_2428B3578();
  v26 = *(v14 + 56);
  v64 = v14 + 56;
  v56 = v26;
  v27 = v58;
  v28 = v68;
  v26(v58, 1, 1, v68);
  v66 = sub_2428B3148();
  v29 = *(v66 - 8);
  v61 = *(v29 + 56);
  v67 = v29 + 56;
  v61(v70, 1, 1, v66);
  v63 = v22;
  sub_2428B3178();
  v30 = v57;
  v31 = (v22 + v57);
  v32 = v62;
  v33 = *(v62 + 48);
  v52 = v31;
  v53 = v33;
  *v31 = 1;
  v49[0] = v13;
  sub_2428B4578();
  sub_2428B36B8();
  v34 = v50;
  v35 = v60;
  v69(v50, v65, v60);
  sub_2428B3578();
  v56(v27, 1, 1, v28);
  v61(v70, 1, 1, v66);
  sub_2428B3178();
  v53 = 2 * v30;
  v36 = *(v32 + 48);
  v51 = (v63 + 2 * v30);
  v52 = v36;
  *v51 = 2;
  sub_2428B4578();
  v49[1] = v25;
  sub_2428B36B8();
  v37 = v34;
  v38 = v34;
  v39 = v65;
  v69(v38, v65, v35);
  v49[2] = v24;
  sub_2428B3578();
  v40 = v58;
  v41 = v56;
  v56(v58, 1, 1, v68);
  v42 = v61;
  v61(v70, 1, 1, v66);
  sub_2428B3178();
  v43 = v63;
  v44 = (v63 + v53 + v57);
  v57 = *(v62 + 48);
  *v44 = 3;
  sub_2428B4578();
  sub_2428B36B8();
  v69(v37, v39, v60);
  sub_2428B3578();
  v41(v40, 1, 1, v68);
  v45 = v70;
  v42(v70, 1, 1, v66);
  sub_2428B3178();
  v46 = *(v62 + 48);
  *(v43 + v54) = 4;
  sub_2428B4578();
  sub_2428B36B8();
  v69(v37, v65, v60);
  sub_2428B3578();
  v41(v40, 1, 1, v68);
  v61(v45, 1, 1, v66);
  sub_2428B3178();
  v47 = sub_242821D14(v55);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC3360 = v47;
  return result;
}

uint64_t (*static AttendeeEntity_v0.Kind_v0.caseDisplayRepresentations.modify())()
{
  if (qword_27ECC17E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

CalendarLink::AttendeeEntity_v0::Kind_v0_optional __swiftcall AttendeeEntity_v0.Kind_v0.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_24282F540()
{
  result = qword_27ECC3960;
  if (!qword_27ECC3960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3960);
  }

  return result;
}

unint64_t sub_24282F598()
{
  result = qword_27ECC3390;
  if (!qword_27ECC3390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3390);
  }

  return result;
}

unint64_t sub_24282F5F0()
{
  result = qword_27ECC3398;
  if (!qword_27ECC3398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3398);
  }

  return result;
}

unint64_t sub_24282F648()
{
  result = qword_27ECC33A0;
  if (!qword_27ECC33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC33A0);
  }

  return result;
}

unint64_t sub_24282F6E4()
{
  result = qword_27ECC33B8;
  if (!qword_27ECC33B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC33B8);
  }

  return result;
}

unint64_t sub_24282F738()
{
  result = qword_27ECC33C0;
  if (!qword_27ECC33C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC33C0);
  }

  return result;
}

unint64_t sub_24282F78C()
{
  result = qword_27ECC33C8;
  if (!qword_27ECC33C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC33C8);
  }

  return result;
}

unint64_t sub_24282F7E4()
{
  result = qword_27ECC33D0;
  if (!qword_27ECC33D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC33D0);
  }

  return result;
}

unint64_t sub_24282F880()
{
  result = qword_27ECC33E8;
  if (!qword_27ECC33E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC33E8);
  }

  return result;
}

unint64_t sub_24282F8D8()
{
  result = qword_27ECC33F0;
  if (!qword_27ECC33F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC33F0);
  }

  return result;
}

unint64_t sub_24282F930()
{
  result = qword_27ECC33F8;
  if (!qword_27ECC33F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC33F8);
  }

  return result;
}

unint64_t sub_24282F988()
{
  result = qword_27ECC3400;
  if (!qword_27ECC3400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3400);
  }

  return result;
}

unint64_t sub_24282F9E0()
{
  result = qword_27ECC3408;
  if (!qword_27ECC3408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3408);
  }

  return result;
}

unint64_t sub_24282FA38()
{
  result = qword_27ECC3410;
  if (!qword_27ECC3410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3410);
  }

  return result;
}

unint64_t sub_24282FA8C()
{
  result = qword_27ECC3418;
  if (!qword_27ECC3418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3418);
  }

  return result;
}

unint64_t sub_24282FAE0()
{
  result = qword_27ECC3420;
  if (!qword_27ECC3420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3420);
  }

  return result;
}

unint64_t sub_24282FB38()
{
  result = qword_27ECC3428;
  if (!qword_27ECC3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3428);
  }

  return result;
}

unint64_t sub_24282FBA8()
{
  result = qword_27ECC3430;
  if (!qword_27ECC3430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3430);
  }

  return result;
}

unint64_t sub_24282FC00()
{
  result = qword_27ECC3438;
  if (!qword_27ECC3438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3438);
  }

  return result;
}

unint64_t sub_24282FC58()
{
  result = qword_27ECC3440;
  if (!qword_27ECC3440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3440);
  }

  return result;
}

unint64_t sub_24282FCF4()
{
  result = qword_27ECC3458;
  if (!qword_27ECC3458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3458);
  }

  return result;
}

unint64_t sub_24282FD4C()
{
  result = qword_27ECC3460;
  if (!qword_27ECC3460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3460);
  }

  return result;
}

unint64_t sub_24282FDA4()
{
  result = qword_27ECC3468;
  if (!qword_27ECC3468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3468);
  }

  return result;
}

unint64_t sub_24282FDFC()
{
  result = qword_27ECC3470;
  if (!qword_27ECC3470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3470);
  }

  return result;
}

unint64_t sub_24282FE54()
{
  result = qword_27ECC3478;
  if (!qword_27ECC3478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3478);
  }

  return result;
}

unint64_t sub_24282FEA8()
{
  result = qword_27ECC3480;
  if (!qword_27ECC3480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3480);
  }

  return result;
}

unint64_t sub_24282FEFC()
{
  result = qword_27ECC3488;
  if (!qword_27ECC3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3488);
  }

  return result;
}

unint64_t sub_24282FF54()
{
  result = qword_27ECC3490;
  if (!qword_27ECC3490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3490);
  }

  return result;
}

unint64_t sub_24282FFC4()
{
  result = qword_27ECC3498;
  if (!qword_27ECC3498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3498);
  }

  return result;
}

unint64_t sub_24283001C()
{
  result = qword_27ECC34A0;
  if (!qword_27ECC34A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC34A0);
  }

  return result;
}

unint64_t sub_242830074()
{
  result = qword_27ECC34A8;
  if (!qword_27ECC34A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC34A8);
  }

  return result;
}

unint64_t sub_242830110()
{
  result = qword_27ECC34C0;
  if (!qword_27ECC34C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC34C0);
  }

  return result;
}

unint64_t sub_242830168()
{
  result = qword_27ECC34C8;
  if (!qword_27ECC34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC34C8);
  }

  return result;
}

unint64_t sub_2428301C0()
{
  result = qword_27ECC34D0;
  if (!qword_27ECC34D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC34D0);
  }

  return result;
}

unint64_t sub_242830218()
{
  result = qword_27ECC34D8;
  if (!qword_27ECC34D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC34D8);
  }

  return result;
}

unint64_t sub_242830270()
{
  result = qword_27ECC34E0;
  if (!qword_27ECC34E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC34E0);
  }

  return result;
}

unint64_t sub_2428302C4()
{
  result = qword_27ECC34E8;
  if (!qword_27ECC34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC34E8);
  }

  return result;
}

unint64_t sub_242830318()
{
  result = qword_27ECC34F0;
  if (!qword_27ECC34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC34F0);
  }

  return result;
}

unint64_t sub_242830370()
{
  result = qword_27ECC34F8;
  if (!qword_27ECC34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC34F8);
  }

  return result;
}

uint64_t sub_242830454(uint64_t a1)
{
  v2 = sub_24282BF64();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_2428304A4()
{
  result = qword_27ECC3500;
  if (!qword_27ECC3500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3500);
  }

  return result;
}

unint64_t sub_2428304FC()
{
  result = qword_27ECC3508;
  if (!qword_27ECC3508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3508);
  }

  return result;
}

unint64_t sub_242830554()
{
  result = qword_27ECC3510;
  if (!qword_27ECC3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3510);
  }

  return result;
}

uint64_t sub_2428305CC(uint64_t a1)
{
  v2 = sub_242830370();

  return MEMORY[0x28210C300](a1, v2);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_242830680(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2428306C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242830758()
{
  result = qword_27ECC3528;
  if (!qword_27ECC3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3528);
  }

  return result;
}

void sub_2428307AC()
{
  v1 = sub_2428B35D8();
  v31 = *(v1 - 8);
  v2 = *(v31 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v29 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v29 - v13;
  v15 = v0[4];
  v16 = v0[5];
  v17 = v0[6];
  v29[1] = v0[7];
  sub_2428B2C68();
  if (v30 || (sub_2428B2C68(), v30))
  {
  }

  else
  {
    sub_2428B2C68();
    v26 = (*(v31 + 48))(v14, 1, v1);
    sub_2427D49D0(v14);
    if (v26 == 1)
    {
      goto LABEL_21;
    }
  }

  sub_2428B2C68();
  if (!v30)
  {
    sub_2428B2C68();
    if (!v30)
    {
      sub_2428B2C68();
      if (!v30)
      {
        sub_2428B2C68();
        v27 = v31;
        if (!(*(v31 + 48))(v12, 1, v1))
        {
          (*(v27 + 16))(v4, v12, v1);
          sub_2427D49D0(v12);
          sub_2428B3598();
          (*(v27 + 8))(v4, v1);
          goto LABEL_7;
        }

        sub_2427D49D0(v12);
LABEL_21:
        sub_2427CCDB0();
        swift_allocError();
        *v28 = 112;
        swift_willThrow();
        return;
      }
    }
  }

LABEL_7:
  sub_2428B3218();
  sub_2428B2C68();
  v18 = v30;
  sub_2428B2C68();
  v19 = v30;
  sub_2428B2C68();
  v20 = sub_2428B4608();
  if (!v18)
  {
    v21 = 0;
    if (v19)
    {
      goto LABEL_9;
    }

LABEL_11:
    v22 = 0;
    goto LABEL_12;
  }

  v21 = sub_2428B4608();

  if (!v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v22 = sub_2428B4608();

LABEL_12:
  v23 = v31;
  if ((*(v31 + 48))(v9, 1, v1) == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_2428B35A8();
    (*(v23 + 8))(v9, v1);
  }

  v25 = [objc_allocWithZone(MEMORY[0x277CC59A0]) initWithName:v20 emailAddress:v21 phoneNumber:v22 url:v24];

  if (v25)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    __break(1u);
  }
}

uint64_t LocationSearchIntentRepresentation.init(searchTerm:eventID:startDate:endDate:sourceID:conferenceRoomNamesToExclude:includeStructuredLocations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, unsigned __int8 a11)
{
  v53 = a7;
  v54 = a8;
  v50 = a5;
  v51 = a6;
  v48 = a3;
  v49 = a4;
  v46 = a1;
  v47 = a2;
  v55 = a11;
  v52 = a10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  v56 = 0;
  v57 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2140, &unk_2428B7980);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v45 = sub_2428B4358();
  *a9 = v45;
  v56 = 0;
  v57 = 0;
  v22 = *(v19 + 48);
  v23 = *(v19 + 52);
  swift_allocObject();
  v44 = sub_2428B4358();
  a9[1] = v44;
  v24 = sub_2428B3688();
  v25 = *(*(v24 - 8) + 56);
  v25(v18, 1, 1, v24);
  sub_2427F95E0(v18, v16);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2148, &unk_2428B8730);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_2428B4358();
  sub_242830FC0(v18);
  a9[2] = v29;
  v25(v18, 1, 1, v24);
  sub_2427F95E0(v18, v16);
  v30 = *(v26 + 48);
  v31 = *(v26 + 52);
  swift_allocObject();
  v32 = sub_2428B4358();
  sub_242830FC0(v18);
  a9[3] = v32;
  v56 = 0;
  v57 = 0;
  v33 = *(v19 + 48);
  v34 = *(v19 + 52);
  swift_allocObject();
  a9[4] = sub_2428B4358();
  v56 = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3548, &unk_2428BCEE8);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  a9[5] = sub_2428B4358();
  LOBYTE(v56) = 2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2150, &unk_2428B7990);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  a9[6] = sub_2428B4358();
  v56 = v46;
  v57 = v47;
  sub_2428B4388();
  v56 = v48;
  v57 = v49;
  sub_2428B4388();
  v41 = v50;
  sub_2427F95E0(v50, v18);
  sub_2427F95E0(v18, v16);
  sub_2428B4388();
  sub_242830FC0(v18);
  v42 = v51;
  sub_2427F95E0(v51, v18);
  sub_2427F95E0(v18, v16);
  sub_2428B4388();
  sub_242830FC0(v18);
  v56 = v53;
  v57 = v54;
  sub_2428B4388();
  v56 = v52;
  sub_2428B4388();
  LOBYTE(v56) = v55;
  sub_2428B4388();
  sub_242830FC0(v42);
  return sub_242830FC0(v41);
}

uint64_t sub_242830FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242831078()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2428B36C8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2428B45F8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2428B3568();
  __swift_allocate_value_buffer(v9, qword_27ECC3550);
  __swift_project_value_buffer(v9, qword_27ECC3550);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2428B3588();
}

uint64_t static OpenDateIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC17F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3550);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242831308()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_2428B3558();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B36C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2428B45F8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2428B3568();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_2428B3078();
  __swift_allocate_value_buffer(v15, qword_27ECC3568);
  __swift_project_value_buffer(v15, qword_27ECC3568);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3588();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3088();
}

uint64_t static OpenDateIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC17F8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3568);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static OpenDateIntent.description.setter(uint64_t a1)
{
  if (qword_27ECC17F8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3568);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static OpenDateIntent.description.modify())()
{
  if (qword_27ECC17F8 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3078();
  __swift_project_value_buffer(v0, qword_27ECC3568);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_242831834@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC17F8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3568);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2428318F4(uint64_t a1)
{
  if (qword_27ECC17F8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3568);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t OpenDateIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v2 = sub_2428B3298();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3580, &unk_2428BDEB0);
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v5);
  v35 = &v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v34 = &v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v33 = &v30 - v13;
  v14 = sub_2428B3558();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2428B36C8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_2428B45F8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v31 = sub_2428B3568();
  v23 = *(v31 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2530, &qword_2428BD510);
  sub_2428B2958();
  v41 = 0u;
  v42 = 0u;
  v43 = 0;
  sub_2428B2948();
  *a1 = sub_2428B2918();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3588, &qword_2428BD360);
  sub_2428B4578();
  sub_2428B36B8();
  v25 = *MEMORY[0x277CC9110];
  v26 = *(v15 + 104);
  v26(v18, v25, v14);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v26(v18, v25, v14);
  v27 = v33;
  sub_2428B3578();
  (*(v23 + 56))(v27, 0, 1, v31);
  v28 = sub_2428B2AE8();
  (*(*(v28 - 8) + 56))(v34, 1, 1, v28);
  (*(v36 + 104))(v35, *MEMORY[0x277CB9EF0], v37);
  (*(v39 + 104))(v38, *MEMORY[0x277CBA308], v40);
  result = sub_2428B2E98();
  v32[1] = result;
  return result;
}

uint64_t OpenDateIntent.viewOpener.setter(uint64_t *a1)
{
  v3 = *v1;
  sub_2427CBD84(a1, v5);
  sub_2428B28F8();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*OpenDateIntent.viewOpener.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2428B28D8();
  return sub_2427CBEA8;
}

uint64_t sub_2428320B8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2428B3688();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = *(v5 + 16);
  v12(&v16 - v10, a1, v4);
  v14 = *a2;
  v13 = a2[1];
  v12(v9, v11, v4);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
  (*(v5 + 8))(v11, v4);
}

uint64_t OpenDateIntent.target.setter(uint64_t a1)
{
  v3 = sub_2428B3688();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = *(v1 + 8);
  (*(v4 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_2428B2DD8();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*OpenDateIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static OpenDateIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3590, &qword_2428BCFB8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3598, &qword_2428BCFC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_24283252C();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC35A8, &qword_2428BCFF0);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

unint64_t sub_24283252C()
{
  result = qword_27ECC35A0;
  if (!qword_27ECC35A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC35A0);
  }

  return result;
}

uint64_t OpenDateIntent.perform()(uint64_t a1)
{
  *(v2 + 96) = a1;
  v3 = sub_2428B3688();
  *(v2 + 104) = v3;
  v4 = *(v3 - 8);
  *(v2 + 112) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = *v1;
  sub_2428B4758();
  *(v2 + 144) = sub_2428B4748();
  v7 = sub_2428B4728();
  *(v2 + 152) = v7;
  *(v2 + 160) = v6;

  return MEMORY[0x2822009F8](sub_24283267C, v7, v6);
}

uint64_t sub_24283267C()
{
  v1 = sub_2428B43D8();
  v0[5] = v1;
  v0[6] = sub_2427CCD68(&qword_280CDDA40, MEMORY[0x277CF7740]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v1)
  {
    v4 = v0[16];
    v3 = v0[17];
    v5 = v0[15];
    sub_2428B28E8();
    v6 = v0[10];
    v7 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v6);
    sub_2428B2DC8();
    v8 = *(v7 + 16);
    v16 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_24283292C;
    v11 = v0[15];

    return v16(v11, v6, v7);
  }

  else
  {
    v13 = v0[18];

    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_2428B2928();
    swift_willThrow();
    v14 = v0[15];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_24283292C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  (*(v2[14] + 8))(v2[15], v2[13]);
  v5 = v2[20];
  v6 = v2[19];
  if (v0)
  {
    v7 = sub_242832B38;
  }

  else
  {
    v7 = sub_242832AB4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_242832AB4()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[12];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_2428B2C28();

  v4 = v0[1];

  return v4();
}

uint64_t sub_242832B38()
{
  v1 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2 = v0[22];
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

unint64_t sub_242832BB0()
{
  result = qword_280CDDEB0;
  if (!qword_280CDDEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDEB0);
  }

  return result;
}

unint64_t sub_242832C08()
{
  result = qword_280CDDEB8;
  if (!qword_280CDDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDEB8);
  }

  return result;
}

uint64_t sub_242832C94@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC17F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3550);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242832D3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3590, &qword_2428BCFB8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3598, &qword_2428BCFC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC35A8, &qword_2428BCFF0);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t sub_242832ECC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return OpenDateIntent.perform()(a1);
}

uint64_t SourceEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  result = sub_2428B2918();
  *a1 = result;
  return result;
}

uint64_t SourceEntityQuery.entities(for:)(uint64_t a1)
{
  v2[4] = a1;
  v3 = sub_2428B3558();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(*(sub_2428B36C8() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = *(*(sub_2428B45F8() - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v8 = *(*(sub_2428B3568() - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_2428B3C08();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *v1;
  v2[13] = v12;
  v2[14] = v13;
  sub_2428B4758();
  v2[15] = sub_2428B4748();
  v15 = sub_2428B4728();

  return MEMORY[0x2822009F8](sub_2428331EC, v15, v14);
}

uint64_t sub_2428331EC()
{
  v2 = v0[14];
  v1 = v0[15];

  result = sub_2427F4300();
  v4 = result;
  v5 = v0[4];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v41 = (v0[12] + 8);
    v42 = (v0[6] + 104);
    v8 = v5 + 40;
    v43 = MEMORY[0x277D84F90];
    v39 = *MEMORY[0x277CC9110];
    v40 = v5 + 40;
    do
    {
      v9 = (v8 + 16 * v7);
      v10 = v7;
      while (1)
      {
        if (v10 >= v6)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          return result;
        }

        v7 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_20;
        }

        v11 = *(v9 - 1);
        v12 = *v9;
        sub_2428B3218();
        v13 = sub_2428B4608();
        v14 = [v4 sourceWithIdentifier_];

        if (v14)
        {
          break;
        }

        ++v10;
        v9 += 2;
        if (v7 == v6)
        {
          goto LABEL_16;
        }
      }

      v36 = v0[10];
      v38 = v0[11];
      v16 = v0[8];
      v15 = v0[9];
      v31 = v0[7];
      v32 = v0[5];
      v33 = v0[13];
      v34 = v14;
      sub_2428B3C18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4270, &qword_2428B6EC8);
      sub_2428B4578();
      sub_2428B36B8();
      (*v42)(v31, v39, v32);
      sub_2428B3578();
      v17 = sub_2428B2D68();
      v18 = sub_2428B3BE8();
      v35 = v19;
      v37 = v18;
      v20 = sub_2428B3BD8();
      v0[2] = sub_2428B3BF8();
      v0[3] = v21;
      sub_2428B2C78();

      (*v41)(v33, v38);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2427F7D34(0, *(v43 + 16) + 1, 1, v43);
        v43 = result;
      }

      v23 = *(v43 + 16);
      v22 = *(v43 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_2427F7D34((v22 > 1), v23 + 1, 1, v43);
        v43 = result;
      }

      *(v43 + 16) = v23 + 1;
      v24 = (v43 + 32 * v23);
      v24[4] = v37;
      v24[5] = v35;
      v24[6] = v20;
      v24[7] = v17;
      v8 = v40;
    }

    while (v7 != v6);
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
  }

LABEL_16:
  v25 = v0[13];
  v27 = v0[9];
  v26 = v0[10];
  v29 = v0[7];
  v28 = v0[8];

  v30 = v0[1];

  return v30(v43);
}

uint64_t sub_2428335D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427F96EC;

  return SourceEntityQuery.entities(for:)(a1);
}

uint64_t sub_242833664(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_242834184();
  *v6 = v2;
  v6[1] = sub_2427DC6B4;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t SourceEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a1;
  v3[9] = a2;
  v4 = sub_2428B3558();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = *(*(sub_2428B36C8() - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v8 = *(*(sub_2428B45F8() - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v9 = *(*(sub_2428B3568() - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_2428B3C08();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v14 = *v2;
  v3[18] = v13;
  v3[19] = v14;
  sub_2428B4758();
  v3[20] = sub_2428B4748();
  v16 = sub_2428B4728();

  return MEMORY[0x2822009F8](sub_2428338F0, v16, v15);
}

uint64_t sub_2428338F0()
{
  v2 = v0[19];
  v1 = v0[20];

  v48 = sub_2427F4300();
  v3 = [v48 sourcesEnabledForEntityType_];
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v3;
    sub_242833EF8();
    v6 = sub_2428B46C8();
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v59 = v4;
  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2428B49C8())
  {
    v8 = 0;
    v55 = i;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x245D1B5D0](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = v0[8];
      v13 = v0[9];
      v14 = [v9 title];
      v15 = sub_2428B4618();
      v17 = v16;

      v0[2] = v15;
      v0[3] = v17;
      v0[4] = v12;
      v0[5] = v13;
      sub_242829AD4();
      LOBYTE(v14) = sub_2428B4908();

      if (v14)
      {
        sub_2428B4AA8();
        v18 = *(v59 + 16);
        sub_2428B4AD8();
        sub_2428B4AE8();
        sub_2428B4AB8();
      }

      else
      {
      }

      ++v8;
      if (v11 == v55)
      {
        v19 = v59;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_21:

  if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v20 = *(v19 + 16);
  if (v20)
  {
LABEL_24:
    v21 = 0;
    v54 = v19 & 0xC000000000000001;
    v50 = (v0[17] + 8);
    v51 = (v0[11] + 104);
    v22 = MEMORY[0x277D84F90];
    v49 = *MEMORY[0x277CC9110];
    v52 = v20;
    v53 = v19;
    while (1)
    {
      if (v54)
      {
        v23 = MEMORY[0x245D1B5D0](v21, v19);
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v21 >= *(v19 + 16))
        {
          goto LABEL_37;
        }

        v23 = *(v19 + 8 * v21 + 32);
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          v20 = sub_2428B49C8();
          if (!v20)
          {
            break;
          }

          goto LABEL_24;
        }
      }

      v58 = v24;
      v25 = v0[18];
      v26 = v0[15];
      v57 = v0[16];
      v28 = v0[13];
      v27 = v0[14];
      v29 = v0[12];
      v30 = v0[10];
      v56 = v23;
      sub_2428B3C18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4270, &qword_2428B6EC8);
      sub_2428B4578();
      sub_2428B36B8();
      (*v51)(v29, v49, v30);
      sub_2428B3578();
      v31 = sub_2428B2D68();
      v32 = sub_2428B3BE8();
      v34 = v33;
      v35 = sub_2428B3BD8();
      v0[6] = sub_2428B3BF8();
      v0[7] = v36;
      sub_2428B2C78();

      (*v50)(v25, v57);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_2427F7D34(0, *(v22 + 2) + 1, 1, v22);
      }

      v38 = *(v22 + 2);
      v37 = *(v22 + 3);
      v19 = v53;
      if (v38 >= v37 >> 1)
      {
        v22 = sub_2427F7D34((v37 > 1), v38 + 1, 1, v22);
      }

      *(v22 + 2) = v38 + 1;
      v39 = &v22[32 * v38];
      *(v39 + 4) = v32;
      *(v39 + 5) = v34;
      *(v39 + 6) = v35;
      *(v39 + 7) = v31;
      ++v21;
      if (v58 == v52)
      {
        goto LABEL_40;
      }
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_40:
  v40 = v0[18];
  v42 = v0[14];
  v41 = v0[15];
  v43 = v22;
  v45 = v0[12];
  v44 = v0[13];

  v46 = v0[1];

  return v46(v43);
}

uint64_t sub_242833E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2427E2738;

  return SourceEntityQuery.entities(matching:)(a2, a3);
}

unint64_t sub_242833EF8()
{
  result = qword_27ECC35C8;
  if (!qword_27ECC35C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECC35C8);
  }

  return result;
}

unint64_t sub_242833F48()
{
  result = qword_280CDDD40;
  if (!qword_280CDDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDD40);
  }

  return result;
}

unint64_t sub_242833FA0()
{
  result = qword_280CDDD38;
  if (!qword_280CDDD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDD38);
  }

  return result;
}

unint64_t sub_242833FF8()
{
  result = qword_280CDDF20;
  if (!qword_280CDDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDF20);
  }

  return result;
}

unint64_t sub_242834050()
{
  result = qword_280CDDD48;
  if (!qword_280CDDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDD48);
  }

  return result;
}

unint64_t sub_2428340A4()
{
  result = qword_280CDE3B0;
  if (!qword_280CDE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE3B0);
  }

  return result;
}

unint64_t sub_2428340FC()
{
  result = qword_27ECC35D8;
  if (!qword_27ECC35D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ECC35E0, qword_2428BD1D0);
    sub_2428340A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC35D8);
  }

  return result;
}

unint64_t sub_242834184()
{
  result = qword_27ECC4280;
  if (!qword_27ECC4280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4280);
  }

  return result;
}

uint64_t sub_242834204()
{
  v0 = sub_2428B3568();
  __swift_allocate_value_buffer(v0, qword_27ECC35F0);
  __swift_project_value_buffer(v0, qword_27ECC35F0);
  return sub_2428B3548();
}

uint64_t static FetchTransferableEventsInRangeIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1800 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC35F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t FetchTransferableEventsInRangeIntent.eventStoreProvider.getter()
{
  v1 = *v0;
  sub_2428B28E8();
  return v3;
}

uint64_t sub_24283434C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v8 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  swift_unknownObjectRetain();
  sub_2428B28F8();
}

uint64_t FetchTransferableEventsInRangeIntent.eventStoreProvider.setter()
{
  v1 = *v0;
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*FetchTransferableEventsInRangeIntent.eventStoreProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

uint64_t FetchTransferableEventsInRangeIntent.reminderStoreWrapper.getter()
{
  v1 = *(v0 + 8);
  sub_2428B28E8();
  return v3;
}

uint64_t sub_242834504(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  v8 = v2;
  sub_2428B28F8();
}

void FetchTransferableEventsInRangeIntent.reminderStoreWrapper.setter(void *a1)
{
  v2 = *(v1 + 8);
  v3 = a1;
  sub_2428B28F8();
}

uint64_t (*FetchTransferableEventsInRangeIntent.reminderStoreWrapper.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

uint64_t FetchTransferableEventsInRangeIntent.contactStore.getter()
{
  v1 = *(v0 + 16);
  sub_2428B28E8();
  return v3;
}

uint64_t sub_2428346B4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  v8 = v2;
  sub_2428B28F8();
}

void FetchTransferableEventsInRangeIntent.contactStore.setter(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1;
  sub_2428B28F8();
}

uint64_t (*FetchTransferableEventsInRangeIntent.contactStore.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_2428B28D8();
  return sub_2427CBEA8;
}

uint64_t FetchTransferableEventsInRangeIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v42 = sub_2428B3298();
  v40 = *(v42 - 8);
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3580, &unk_2428BDEB0);
  v43 = *(v31 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v31);
  v39 = v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v28 - v12;
  v14 = sub_2428B3568();
  v37 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  sub_2428B2948();
  *a1 = sub_2428B2918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3608, &qword_2428BD350);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_2428B2948();
  a1[1] = sub_2428B2918();
  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3610, &qword_2428BD358);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_2428B2948();
  a1[2] = sub_2428B2918();
  v28[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3588, &qword_2428BD360);
  sub_2428B3548();
  v17 = *(v15 + 56);
  v36 = v15 + 56;
  v38 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_2428B2AE8();
  v19 = *(v18 - 8);
  v34 = *(v19 + 56);
  v35 = v19 + 56;
  v20 = v9;
  v34(v9, 1, 1, v18);
  v30 = *MEMORY[0x277CB9EF0];
  v21 = *(v43 + 104);
  v43 += 104;
  v32 = v21;
  v22 = v39;
  v21(v39);
  v29 = *MEMORY[0x277CBA308];
  v23 = v41;
  v40 = *(v40 + 104);
  v24 = v42;
  (v40)(v41);
  v25 = sub_2428B2E98();
  v26 = v33;
  v33[3] = v25;
  sub_2428B3548();
  v38(v13, 1, 1, v37);
  v34(v20, 1, 1, v18);
  v32(v22, v30, v31);
  (v40)(v23, v29, v24);
  result = sub_2428B2E98();
  v26[4] = result;
  return result;
}

uint64_t FetchTransferableEventsInRangeIntent.perform()(uint64_t a1)
{
  *(v2 + 80) = a1;
  v3 = sub_2428B3688();
  *(v2 + 88) = v3;
  v4 = *(v3 - 8);
  *(v2 + 96) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  v6 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v6;
  *(v2 + 48) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_242834E2C, 0, 0);
}

uint64_t sub_242834E2C()
{
  v1 = sub_2427F4470();
  v2 = v0[13];
  v3 = v1;
  v4 = v0[11];
  v5 = v0[12];
  v6 = [objc_allocWithZone(MEMORY[0x277CC59F0]) initWithEventStore:v1 visibilityChangedCallback:0 queue:0];
  v7 = v0[5];
  sub_2428B2DC8();
  v8 = sub_2428B3658();
  v9 = *(v5 + 8);
  v9(v2, v4);
  v10 = v0[6];
  sub_2428B2DC8();
  v11 = sub_2428B3658();
  v9(v2, v4);
  v12 = [v6 visibleCalendars];
  if (!v12)
  {
    sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
    sub_2428B46C8();
    v12 = sub_2428B46B8();
  }

  v24 = v0[13];
  v13 = v0[10];
  v14 = [v3 predicateForEventsWithStartDate:v8 endDate:v11 calendars:v12];

  v15 = [v3 eventsMatchingPredicate_];
  sub_242822BFC(0, &qword_27ECC2700, 0x277CC5A28);
  v16 = sub_2428B46C8();

  v17 = v0[3];
  sub_2428B28E8();
  v18 = v0[7];
  v19 = v0[4];
  sub_2428B28E8();
  v20 = v0[8];
  v21 = sub_242827F98(v16, v18, v20);

  v0[9] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3620, &unk_2428BD370);
  sub_24283524C();
  sub_2428B2C08();

  v22 = v0[1];

  return v22();
}

uint64_t sub_2428350E0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1800 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC35F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242835194(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return FetchTransferableEventsInRangeIntent.perform()(a1);
}

unint64_t sub_24283524C()
{
  result = qword_27ECC3628;
  if (!qword_27ECC3628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC3620, &unk_2428BD370);
    sub_2428352D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3628);
  }

  return result;
}

unint64_t sub_2428352D0()
{
  result = qword_280CDDBD0;
  if (!qword_280CDDBD0)
  {
    type metadata accessor for TransferableEventEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDBD0);
  }

  return result;
}

unint64_t sub_24283532C()
{
  result = qword_280CDDAB8;
  if (!qword_280CDDAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDAB8);
  }

  return result;
}

unint64_t sub_242835384()
{
  result = qword_280CDDAC0;
  if (!qword_280CDDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDAC0);
  }

  return result;
}

unint64_t sub_24283545C()
{
  result = qword_27ECC3638;
  if (!qword_27ECC3638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3638);
  }

  return result;
}

unint64_t sub_2428354C0()
{
  result = qword_27ECC3640;
  if (!qword_27ECC3640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC3648, &qword_2428BD4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3640);
  }

  return result;
}

id EKEvent.entityIdentifier.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3240, &qword_2428BBF00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - v3;
  v5 = sub_2428B3BB8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 isIntegrationEvent])
  {
    if ([v0 isReminderIntegrationEvent])
    {
      result = [objc_opt_self() reminderEntityIdentifierForIntegrationEvent_];
      if (!result)
      {
        return result;
      }

      v11 = result;
      v12 = sub_2428B4618();

      return v12;
    }

    return 0;
  }

  v13 = v0;
  sub_2428B3BC8();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2427E0980(v4, &qword_27ECC3240, &qword_2428BBF00);
    return 0;
  }

  (*(v6 + 32))(v9, v4, v5);
  v12 = sub_2428B3B08();
  (*(v6 + 8))(v9, v5);
  return v12;
}

uint64_t sub_242835730(uint64_t a1)
{
  if ([objc_opt_self() reminderEntityAnnotationForIntegrationEvent_])
  {
    sub_2428B4918();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_2428B41D8();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2427E0980(v5, &qword_27ECC3650, &qword_2428BD4D0);
    return 0;
  }
}

uint64_t OpenEventDetailsIntent.init(target:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  OpenEventDetailsIntent.init()(&v11);
  v4 = v12;
  *a2 = v11;
  a2[1] = v4;
  v5 = a1[7];
  v17 = a1[6];
  v18 = v5;
  v6 = a1[9];
  v19 = a1[8];
  v20 = v6;
  v7 = a1[3];
  v13 = a1[2];
  v14 = v7;
  v8 = a1[5];
  v15 = a1[4];
  v16 = v8;
  v9 = a1[1];
  v11 = *a1;
  v12 = v9;
  return sub_2428B2DD8();
}

uint64_t sub_24283589C()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2428B36C8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2428B45F8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2428B3568();
  __swift_allocate_value_buffer(v9, qword_27ECC3660);
  __swift_project_value_buffer(v9, qword_27ECC3660);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2428B3588();
}

uint64_t static OpenEventDetailsIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1808 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3660);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242835B2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_2428B3558();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B36C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2428B45F8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2428B3568();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_2428B3078();
  __swift_allocate_value_buffer(v15, qword_27ECC3678);
  __swift_project_value_buffer(v15, qword_27ECC3678);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3588();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3088();
}

uint64_t static OpenEventDetailsIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1810 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3678);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static OpenEventDetailsIntent.description.setter(uint64_t a1)
{
  if (qword_27ECC1810 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3678);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static OpenEventDetailsIntent.description.modify())()
{
  if (qword_27ECC1810 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3078();
  __swift_project_value_buffer(v0, qword_27ECC3678);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_242836058@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1810 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3678);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_242836118(uint64_t a1)
{
  if (qword_27ECC1810 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3678);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t OpenEventDetailsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v68 = a1;
  v63 = sub_2428B3298();
  v67 = *(v63 - 8);
  v1 = *(v67 + 64);
  MEMORY[0x28223BE20](v63);
  v65 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v48 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v64 = v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D00, &unk_2428BD500);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v50 = v44 - v13;
  v53 = sub_2428B3558();
  v14 = *(v53 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v53);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2428B36C8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2428B45F8();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2428B3568();
  v59 = v26;
  v66 = *(v26 - 8);
  v27 = *(v66 + 64);
  MEMORY[0x28223BE20](v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2530, &qword_2428BD510);
  sub_2428B2958();
  v79 = 0u;
  v80 = 0u;
  *&v81 = 0;
  sub_2428B2948();
  *v68 = sub_2428B2918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D10, &qword_2428BB320);
  v44[1] = v25;
  sub_2428B4578();
  v49 = v21;
  sub_2428B36B8();
  v52 = *MEMORY[0x277CC9110];
  v28 = *(v14 + 104);
  v54 = v14 + 104;
  v55 = v28;
  v45 = v17;
  (v28)(v17);
  sub_2428B3588();
  v29 = *(v66 + 56);
  v66 += 56;
  v60 = v29;
  v30 = v50;
  v29(v50, 1, 1, v26);
  v31 = sub_2428B4568();
  v79 = 0uLL;
  v32 = *(v31 - 8);
  v46 = *(v32 + 56);
  v47 = v32 + 56;
  v46(v51, 1, 1, v31);
  v57 = sub_2428B2AE8();
  v33 = *(v57 - 8);
  v56 = *(v33 + 56);
  v58 = v33 + 56;
  v56(v64, 1, 1, v57);
  v62 = *MEMORY[0x277CBA308];
  v34 = *(v67 + 104);
  v67 += 104;
  v61 = v34;
  v35 = v63;
  v34(v65);
  v68[1] = sub_2428B2EB8();
  sub_2428B4578();
  sub_2428B36B8();
  v36 = v45;
  v55(v45, v52, v53);
  sub_2428B3588();
  v60(v30, 1, 1, v59);
  v79 = 0uLL;
  v46(v51, 1, 1, v31);
  v56(v64, 1, 1, v57);
  v61(v65, v62, v35);
  v68[2] = sub_2428B2EB8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2540, &qword_2428B5AE0);
  sub_2428B4578();
  sub_2428B36B8();
  v37 = v52;
  v38 = v53;
  v39 = v55;
  v55(v36, v52, v53);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v39(v36, v37, v38);
  v40 = v50;
  sub_2428B3578();
  v60(v40, 0, 1, v59);
  sub_2427CBC50(&v79);
  v75 = v85;
  v76 = v86;
  v77 = v87;
  v78 = v88;
  v71 = v81;
  v72 = v82;
  v73 = v83;
  v74 = v84;
  v69 = v79;
  v70 = v80;
  v42 = v56;
  v41 = v57;
  v56(v64, 1, 1, v57);
  v42(v48, 1, 1, v41);
  v61(v65, v62, v63);
  sub_2427C2774();
  result = sub_2428B2E68();
  v68[3] = result;
  return result;
}

uint64_t OpenEventDetailsIntent.target.setter(__int128 *a1)
{
  v10 = a1[6];
  v11 = a1[7];
  v12 = a1[8];
  v13 = a1[9];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v4 = *a1;
  v5 = a1[1];
  v2 = *(v1 + 24);
  return sub_2428B2DD8();
}

uint64_t sub_242836B44(uint64_t a1, uint64_t *a2)
{
  sub_2427CBD84(a1, v9);
  v3 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  sub_2427CBD84(v9, &v8);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B28F8();
  __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t OpenEventDetailsIntent.viewOpener.setter(uint64_t *a1)
{
  v3 = *v1;
  sub_2427CBD84(a1, v5);
  sub_2428B28F8();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*OpenEventDetailsIntent.viewOpener.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

uint64_t OpenEventDetailsIntent.title.getter()
{
  v1 = *(v0 + 8);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_242836CF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = *a1;
  v8 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t (*OpenEventDetailsIntent.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t OpenEventDetailsIntent.caption.getter()
{
  v1 = *(v0 + 16);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_242836E78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = *a1;
  v8 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t (*OpenEventDetailsIntent.caption.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

double sub_242836FF0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 24);
  sub_2428B2DC8();
  a2[6] = v11;
  a2[7] = v12;
  a2[8] = v13;
  a2[9] = v14;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_24283704C(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[7];
  v3 = a1[5];
  v23 = a1[6];
  v24 = v2;
  v4 = a1[7];
  v5 = a1[9];
  v25 = a1[8];
  v26 = v5;
  v6 = a1[3];
  v7 = a1[1];
  v19 = a1[2];
  v20 = v6;
  v8 = a1[3];
  v9 = a1[5];
  v21 = a1[4];
  v22 = v9;
  v10 = a1[1];
  v18[0] = *a1;
  v18[1] = v10;
  v17[16] = v23;
  v17[17] = v4;
  v11 = a1[9];
  v17[18] = v25;
  v17[19] = v11;
  v17[12] = v19;
  v17[13] = v8;
  v17[14] = v21;
  v17[15] = v3;
  v12 = *a2;
  v13 = a2[1];
  v15 = a2[2];
  v14 = a2[3];
  v17[10] = v18[0];
  v17[11] = v7;
  sub_2427CD4FC(v18, v17);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t (*OpenEventDetailsIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static OpenEventDetailsIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3690, &qword_2428BD518);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3698, &qword_2428BD520);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_242822644();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC36A0, &qword_2428BD550);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t OpenEventDetailsIntent.perform()(uint64_t a1)
{
  v2[92] = a1;
  v2[93] = *v1;
  v2[94] = v1[3];
  sub_2428B4758();
  v2[95] = sub_2428B4748();
  v4 = sub_2428B4728();
  v2[96] = v4;
  v2[97] = v3;

  return MEMORY[0x2822009F8](sub_242837414, v4, v3);
}

uint64_t sub_242837414()
{
  v1 = sub_2428B43D8();
  *(v0 + 680) = v1;
  *(v0 + 688) = sub_2427CCD68(&qword_280CDDA40, MEMORY[0x277CF7740]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 656));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 656));
  if (v1)
  {
    v3 = *(v0 + 752);
    v4 = *(v0 + 744);
    sub_2428B28E8();
    v5 = *(v0 + 720);
    v6 = *(v0 + 728);
    __swift_project_boxed_opaque_existential_1((v0 + 696), v5);
    sub_2428B2DC8();
    v7 = *(v0 + 128);
    *(v0 + 272) = *(v0 + 112);
    *(v0 + 288) = v7;
    v8 = *(v0 + 160);
    *(v0 + 304) = *(v0 + 144);
    *(v0 + 320) = v8;
    v9 = *(v0 + 64);
    *(v0 + 208) = *(v0 + 48);
    *(v0 + 224) = v9;
    v10 = *(v0 + 96);
    *(v0 + 240) = *(v0 + 80);
    *(v0 + 256) = v10;
    v11 = *(v0 + 32);
    *(v0 + 176) = *(v0 + 16);
    *(v0 + 192) = v11;
    *(v0 + 800) = 0;
    v12 = *(v6 + 24);
    v18 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    *(v0 + 784) = v14;
    *v14 = v0;
    v14[1] = sub_2427E4EC0;

    return v18(v0 + 176, v0 + 800, v5, v6);
  }

  else
  {
    v16 = *(v0 + 760);

    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_2428B2928();
    swift_willThrow();
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_2428376E4()
{
  v1 = *(v0 + 8);
  sub_2428B2DC8();
  return v3;
}

uint64_t (*sub_24283774C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_2428377C0()
{
  v1 = *(v0 + 16);
  sub_2428B2DC8();
  return v3;
}

uint64_t (*sub_242837828(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

unint64_t sub_24283789C(uint64_t a1)
{
  result = sub_2428378C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2428378C4()
{
  result = qword_27ECC36A8;
  if (!qword_27ECC36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC36A8);
  }

  return result;
}

unint64_t sub_24283791C()
{
  result = qword_27ECC36B0;
  if (!qword_27ECC36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC36B0);
  }

  return result;
}

uint64_t sub_242837994(__int128 *a1)
{
  v10 = a1[6];
  v11 = a1[7];
  v12 = a1[8];
  v13 = a1[9];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v4 = *a1;
  v5 = a1[1];
  v2 = *(v1 + 24);
  return sub_2428B2DD8();
}

uint64_t (*sub_2428379EC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CBEA8;
}

unint64_t sub_242837A68()
{
  result = qword_280CDDBE0;
  if (!qword_280CDDBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDBE0);
  }

  return result;
}

unint64_t sub_242837AC0()
{
  result = qword_280CDDBE8;
  if (!qword_280CDDBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDBE8);
  }

  return result;
}

uint64_t sub_242837B4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1808 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3660);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242837BF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3690, &qword_2428BD518);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3698, &qword_2428BD520);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC36A0, &qword_2428BD550);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t sub_242837D8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return OpenEventDetailsIntent.perform()(a1);
}

uint64_t TransferableSourceEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  result = sub_2428B2918();
  *a1 = result;
  return result;
}

uint64_t TransferableSourceEntityQuery.entities(for:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_242837EF0, 0, 0);
}

uint64_t sub_242837EF0()
{
  v1 = v0[3];
  result = sub_2427F45EC();
  v3 = result;
  v17 = 0;
  v4 = 0;
  v5 = v0[2];
  v19 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  v6 = *(v5 + 16);
  v7 = v5 + 40;
  v18 = v7;
LABEL_2:
  v8 = (v7 + 16 * v4);
  while (v6 != v4)
  {
    if (v4 >= v6)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_14;
    }

    v10 = *(v8 - 1);
    v11 = *v8;
    sub_2428B3218();
    v12 = sub_2428B4608();
    v13 = [v3 sourceWithIdentifier_];

    v8 += 2;
    ++v4;
    if (v13)
    {
      MEMORY[0x245D1B200](result);
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2428B46E8();
      }

      result = sub_2428B4708();
      v19 = v20;
      v4 = v9;
      v7 = v18;
      goto LABEL_2;
    }
  }

  v15 = sub_2428380E4(v19);

  v16 = v0[1];

  return v16(v15);
}

void *sub_2428380E4(unint64_t a1)
{
  v2 = type metadata accessor for TransferableSourceEntity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2428B49C8())
  {
    v8 = 0;
    v17 = a1 & 0xC000000000000001;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v17)
      {
        v10 = MEMORY[0x245D1B5D0](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(a1 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18[3] = sub_2428B3C08();
      v18[4] = sub_242838A0C(&qword_27ECC3708, MEMORY[0x277CF7B98]);
      __swift_allocate_boxed_opaque_existential_1(v18);
      v13 = v11;
      sub_2428B3C18();
      sub_2428B3E38();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_2427F7E40(0, v9[2] + 1, 1, v9);
      }

      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        v9 = sub_2427F7E40(v14 > 1, v15 + 1, 1, v9);
      }

      v9[2] = v15 + 1;
      sub_242838A54(v6, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15);
      ++v8;
      if (v12 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_242838354()
{
  v1 = *(v0 + 16);
  v2 = sub_2427F45EC();
  v3 = [v2 sources];
  sub_242833EF8();
  v4 = sub_2428B46C8();

  v5 = sub_2428380E4(v4);

  v6 = *(v0 + 8);

  return v6(v5);
}

unint64_t sub_242838458()
{
  result = qword_27ECC36D0;
  if (!qword_27ECC36D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC36D0);
  }

  return result;
}

unint64_t sub_2428384B0()
{
  result = qword_27ECC36D8;
  if (!qword_27ECC36D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC36D8);
  }

  return result;
}

uint64_t sub_24283854C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427F96EC;

  return TransferableSourceEntityQuery.entities(for:)(a1);
}

uint64_t sub_2428385E0(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CBA250] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_2428389B8();
  *v6 = v2;
  v6[1] = sub_2427CD274;

  return MEMORY[0x28210C0E8](a1, a2, v7);
}

uint64_t sub_242838694(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2428386B8, 0, 0);
}

uint64_t sub_2428386B8()
{
  v1 = v0[3];
  v2 = sub_2427F45EC();
  v3 = v0[2];
  v4 = v2;
  v5 = [v2 sources];
  sub_242833EF8();
  v6 = sub_2428B46C8();

  v7 = sub_2428380E4(v6);

  *v3 = v7;
  v8 = v0[1];

  return v8();
}

unint64_t sub_2428387A0()
{
  result = qword_27ECC36E0;
  if (!qword_27ECC36E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC36E0);
  }

  return result;
}

unint64_t sub_242838840()
{
  result = qword_27ECC36F0;
  if (!qword_27ECC36F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC36F8, qword_2428BD7F8);
    sub_242838A0C(&qword_27ECC20C8, type metadata accessor for TransferableSourceEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC36F0);
  }

  return result;
}

uint64_t sub_2428388F4(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_2427DD178();
  *v6 = v2;
  v6[1] = sub_2427DC6B4;

  return MEMORY[0x28210B618](a1, a2, v7);
}

unint64_t sub_2428389B8()
{
  result = qword_27ECC3700;
  if (!qword_27ECC3700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3700);
  }

  return result;
}

uint64_t sub_242838A0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_242838A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransferableSourceEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 CalendarEntity.init(_:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2428B3DB8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  sub_2428B3DC8();
  CalendarEntity.init(_:)(v7, v11);

  v9 = v11[3];
  *(a2 + 32) = v11[2];
  *(a2 + 48) = v9;
  *(a2 + 64) = v11[4];
  result = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = result;
  return result;
}

id CalendarEntity.ekCalendar.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  sub_2428B28E8();
  result = [v8 eventStore];
  if (result)
  {
    v5 = result;
    swift_unknownObjectRelease();
    v6 = sub_2428B4608();
    v7 = [v5 calendarWithIdentifier_];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242838C38()
{
  v0 = sub_2428B3338();
  __swift_allocate_value_buffer(v0, qword_27ECC3710);
  __swift_project_value_buffer(v0, qword_27ECC3710);
  return sub_2428B3318();
}

uint64_t static CalendarEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1818 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3710);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CalendarEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27ECC1818 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3710);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CalendarEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27ECC1818 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3338();
  __swift_project_value_buffer(v0, qword_27ECC3710);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242838EF0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1818 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3710);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_242838FB0(uint64_t a1)
{
  if (qword_27ECC1818 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3710);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t CalendarEntity.eventStoreProvider.getter()
{
  v1 = *v0;
  sub_2428B28E8();
  return v3;
}

uint64_t sub_2428390AC(uint64_t *a1, _OWORD *a2)
{
  v2 = a2[1];
  v3 = a2[3];
  v14 = a2[2];
  v15 = v3;
  v4 = a2[3];
  v16 = a2[4];
  v5 = a2[1];
  v13[0] = *a2;
  v13[1] = v5;
  v10 = v14;
  v11 = v4;
  v12 = a2[4];
  v6 = *a1;
  v8 = v13[0];
  v9 = v2;
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_2427E35A0(v13, v17);
  sub_24283BB80(v6, &v8);
  v17[2] = v10;
  v17[3] = v11;
  v17[4] = v12;
  v17[0] = v8;
  v17[1] = v9;
  return sub_2427E3484(v17);
}

uint64_t CalendarEntity.eventStoreProvider.setter(uint64_t a1)
{
  swift_getObjectType();

  return sub_24283BB80(a1, v1);
}

uint64_t (*CalendarEntity.eventStoreProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

uint64_t sub_242839234()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  result = sub_2428B2918();
  qword_280CDE5C8 = result;
  return result;
}

uint64_t static CalendarEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_280CDE660 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_280CDE5C8;

  return sub_2428B2F38();
}

uint64_t CalendarEntity.id.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_2428B3218();
  return v1;
}

uint64_t CalendarEntity.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CalendarEntity.externalID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_2428B3218();
  return v1;
}

uint64_t CalendarEntity.externalID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t CalendarEntity.title.getter()
{
  v1 = *(v0 + 48);
  sub_2428B2C68();
  return v3;
}

uint64_t sub_2428394E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v4 = a2[4];
  v5 = a2[6];
  v6 = a2[7];
  v7 = a2[8];
  v8 = a2[9];
  v10 = *a1;
  v11 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B3218();
  sub_2428B2C78();
}

uint64_t (*CalendarEntity.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 48);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t CalendarEntity.color.getter()
{
  v1 = *(v0 + 56);
  sub_2428B2C68();
  return v3;
}

uint64_t sub_2428396C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v4 = a2[4];
  v5 = a2[6];
  v6 = a2[7];
  v7 = a2[8];
  v8 = a2[9];
  v10 = *a1;
  v11 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B3218();
  sub_2428B2C78();
}

uint64_t (*CalendarEntity.color.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 56);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242839890(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v4 = a2[4];
  v5 = a2[6];
  v6 = a2[7];
  v7 = a2[8];
  v8 = a2[9];
  v10 = *a1;
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B3218();
  sub_2428B2C78();
}

uint64_t CalendarEntity.sharingType.setter(char *a1)
{
  v2 = *(v1 + 64);
  v4 = *a1;
  return sub_2428B2C78();
}

uint64_t (*CalendarEntity.sharingType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 64);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CBEA8;
}

uint64_t sub_242839A30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v4 = a2[4];
  v5 = a2[6];
  v6 = a2[7];
  v8 = a2[8];
  v7 = a2[9];
  v10 = a1[2];
  v11 = a1[3];
  sub_24283C3FC(*a1, a1[1]);
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B3218();
  sub_2428B2C78();
}

uint64_t CalendarEntity.source.setter(__int128 *a1)
{
  v2 = *(v1 + 72);
  v4 = *a1;
  v5 = a1[1];
  return sub_2428B2C78();
}

uint64_t (*CalendarEntity.source.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 72);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

void CalendarEntity.init(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v96 = a1;
  v88 = a2;
  v2 = sub_2428B3C08();
  v89 = *(v2 - 8);
  v90 = v2;
  v3 = *(v89 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v77 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v76 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3750, &qword_2428BD910);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v87 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v95 = &v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3758, &qword_2428BD918);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v86 = &v71 - v14;
  v15 = sub_2428B3558();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2428B36C8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = sub_2428B45F8();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = sub_2428B3568();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  v97 = 0u;
  v98 = 0u;
  v99 = 0;
  sub_2428B2948();
  v94 = sub_2428B2918();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4270, &qword_2428B6EC8);
  sub_2428B4578();
  sub_2428B36B8();
  v27 = *MEMORY[0x277CC9110];
  v28 = *(v16 + 104);
  v28(v19, v27, v15);
  sub_2428B3578();
  v73 = v26;
  v91 = sub_2428B2D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3760, &qword_2428B6ED0);
  sub_2428B4578();
  sub_2428B36B8();
  v28(v19, v27, v15);
  sub_2428B3578();
  v93 = sub_2428B2D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3768, &qword_2428BD920);
  sub_2428B4578();
  sub_2428B36B8();
  v28(v19, v27, v15);
  sub_2428B3578();
  sub_24283BBB4();
  v92 = sub_2428B2C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3778, &qword_2428BD928);
  sub_2428B4578();
  sub_2428B36B8();
  v72 = v27;
  v75 = v15;
  v74 = v16 + 104;
  v71 = v28;
  v28(v19, v27, v15);
  sub_2428B3578();
  sub_242833FF8();
  v85 = sub_2428B2CB8();
  v29 = sub_2428B3D78();
  v83 = v30;
  v84 = v29;
  v82 = sub_2428B3D48();
  v81 = v31;
  v80 = sub_2428B3D68();
  v79 = sub_2428B3D38();
  v78 = sub_2428B3D18();
  v32 = sub_2428B3D28();
  v33 = [v32 eventStore];

  v34 = [objc_allocWithZone(MEMORY[0x277CC5AB8]) initWithEventStore_];
  if (v34)
  {
    *&v97 = v34;
    sub_2428B28F8();
    *&v97 = sub_2428B3D98();
    *(&v97 + 1) = v35;
    v36 = v91;
    sub_2428B2C78();
    v37 = v86;
    sub_2428B3D88();
    v38 = sub_2428B3868();
    v39 = *(v38 - 8);
    v40 = v36;
    if ((*(v39 + 48))(v37, 1, v38) == 1)
    {
      sub_2427E0980(v37, &qword_27ECC3758, &qword_2428BD918);
      v41 = 0;
      v42 = 0;
    }

    else
    {
      v41 = sub_2428B3858();
      v42 = v43;
      (*(v39 + 8))(v37, v38);
    }

    *&v97 = v41;
    *(&v97 + 1) = v42;
    sub_2428B2C78();
    v44 = sub_2428B3D58();
    if (v44 == 2)
    {
      v45 = 1;
    }

    else
    {
      v45 = 2;
    }

    if (v44 == 1)
    {
      v45 = 0;
    }

    LOBYTE(v97) = v45;
    sub_2428B2C78();
    v46 = v95;
    sub_2428B3DA8();
    v47 = v87;
    sub_24283BC08(v46, v87);
    v49 = v89;
    v48 = v90;
    if ((*(v89 + 48))(v47, 1, v90) == 1)
    {
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
    }

    else
    {
      v54 = v76;
      (*(v49 + 32))(v76, v47, v48);
      v55 = v77;
      (*(v49 + 16))(v77, v54, v48);
      sub_2428B4578();
      sub_2428B36B8();
      v71(v19, v72, v75);
      sub_2428B3578();
      v53 = sub_2428B2D68();
      v50 = sub_2428B3BE8();
      v51 = v56;
      v52 = sub_2428B3BD8();
      *&v97 = sub_2428B3BF8();
      *(&v97 + 1) = v57;
      sub_2428B2C78();
      v58 = *(v49 + 8);
      v58(v55, v48);
      v59 = v54;
      v40 = v91;
      v58(v59, v48);
    }

    sub_2427E0980(v95, &qword_27ECC3750, &qword_2428BD910);
    v60 = v78 & 1;
    v61 = v79 & 1;
    v62 = v80 & 1;
    *&v97 = v50;
    *(&v97 + 1) = v51;
    *&v98 = v52;
    *(&v98 + 1) = v53;
    v63 = v85;
    sub_2428B2C78();
    v64 = sub_2428B3DB8();
    (*(*(v64 - 8) + 8))(v96, v64);
    v65 = v88;
    v66 = v83;
    v67 = v84;
    *v88 = v94;
    v65[1] = v67;
    v65[2] = v66;
    v68 = v81;
    v65[3] = v82;
    v65[4] = v68;
    *(v65 + 40) = v62;
    *(v65 + 41) = v61;
    *(v65 + 42) = v60;
    v69 = v92;
    v70 = v93;
    v65[6] = v40;
    v65[7] = v70;
    v65[8] = v69;
    v65[9] = v63;
  }

  else
  {
    __break(1u);
  }
}

uint64_t CalendarEntity.SharingType.init(_:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_24283A670@<X0>(void *a1@<X8>)
{
  if (qword_280CDE660 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_280CDE5C8;

  return sub_2428B2F38();
}

uint64_t sub_24283A6E0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
  return sub_2428B3218();
}

uint64_t sub_24283A6EC(uint64_t a1)
{
  v2 = sub_2427FE688();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_24283A738()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_2428B3558();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B36C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2428B45F8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2428B3568();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_2428B3338();
  __swift_allocate_value_buffer(v15, qword_27ECC3730);
  __swift_project_value_buffer(v15, qword_27ECC3730);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3578();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3328();
}

uint64_t static CalendarEntity.SharingType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1828 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24283AAE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v41 = &v31 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v31 - v5;
  v44 = sub_2428B3558();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2428B36C8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2428B45F8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_2428B3568();
  v32 = v14;
  v45 = *(v14 - 8);
  v15 = *(v45 + 64);
  MEMORY[0x28223BE20](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3800, &qword_2428BDE68);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2F88, &qword_2428BB6A8);
  v43 = v16;
  v17 = *(v16 - 8);
  v39 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v35 = v19;
  *(v19 + 16) = xmmword_2428B7940;
  v42 = v19 + v18;
  v34 = *(v16 + 48);
  *(v19 + v18) = 0;
  sub_2428B4578();
  sub_2428B36B8();
  v36 = *MEMORY[0x277CC9110];
  v20 = *(v6 + 104);
  v37 = v6 + 104;
  v38 = v20;
  v31 = v9;
  v20(v9);
  sub_2428B3578();
  v21 = *(v45 + 56);
  v45 += 56;
  v33 = v21;
  v22 = v40;
  v21(v40, 1, 1, v14);
  v23 = sub_2428B3148();
  v24 = *(*(v23 - 8) + 56);
  v25 = v41;
  v24(v41, 1, 1, v23);
  v26 = v42;
  v27 = v25;
  sub_2428B3178();
  v28 = (v26 + v39);
  v39 = *(v43 + 48);
  *v28 = 1;
  sub_2428B4578();
  sub_2428B36B8();
  v38(v31, v36, v44);
  sub_2428B3578();
  v33(v22, 1, 1, v32);
  v24(v27, 1, 1, v23);
  sub_2428B3178();
  v29 = sub_242821D38(v35);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC3748 = v29;
  return result;
}

uint64_t static CalendarEntity.SharingType.caseDisplayRepresentations.getter()
{
  if (qword_27ECC1830 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2428B3218();
}

uint64_t static CalendarEntity.SharingType.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_27ECC1830 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC3748 = a1;
}

uint64_t (*static CalendarEntity.SharingType.caseDisplayRepresentations.modify())()
{
  if (qword_27ECC1830 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_24283B214@<X0>(void *a1@<X8>)
{
  if (qword_27ECC1830 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECC3748;
  return sub_2428B3218();
}

uint64_t sub_24283B294(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27ECC1830;
  sub_2428B3218();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC3748 = v1;
}

CalendarLink::CalendarEntity::SharingType_optional __swiftcall CalendarEntity.SharingType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_24283B34C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_24283B36C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1828 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24283B414(uint64_t a1)
{
  v2 = sub_24283BBB4();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_24283B460()
{
  if (qword_27ECC1830 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2428B3218();
}

uint64_t sub_24283B4D8(uint64_t a1)
{
  v2 = sub_24283C0DC();

  return MEMORY[0x28210C300](a1, v2);
}

id CalendarEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v34 - v7;
  v8 = sub_2428B36C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2428B3558();
  v35 = *(v37 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2428B45F8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_2428B3568();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v34 - v21;
  v23 = *v1;
  v24 = *(v1 + 8);
  v25 = *(v1 + 16);
  v26 = *(v1 + 40);
  v50 = *(v1 + 24);
  v51 = v26;
  v52 = *(v1 + 56);
  v53 = *(v1 + 72);
  sub_2428B28E8();
  result = [v43 eventStore];
  if (result)
  {
    v28 = result;
    swift_unknownObjectRelease();
    v39 = v24;
    v29 = sub_2428B4608();
    v30 = [v28 calendarWithIdentifier_];

    if (v30)
    {
      type metadata accessor for LocalizedStringUtils();
      v31 = v30;
      static LocalizedStringUtils.localizedTitle(forCalendar:)(v31);
    }

    else
    {
      sub_2428B4578();
      if (qword_27ECC1780 != -1)
      {
        swift_once();
      }

      v32 = v37;
      v33 = __swift_project_value_buffer(v37, qword_27ECD4500);
      (*(v35 + 16))(v36, v33, v32);
      sub_2428B36B8();
      sub_2428B3588();
    }

    (*(v16 + 16))(v20, v22, v15);
    (*(v16 + 56))(v40, 1, 1, v15);
    v43 = v23;
    v44 = v39;
    v45 = v25;
    v46 = v50;
    v47 = v51;
    v48 = v52;
    v49 = v53;
    CalendarEntity.image.getter();
    sub_2428B3178();

    return (*(v16 + 8))(v22, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CalendarEntity.image.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  sub_2428B28E8();
  result = [v10 eventStore];
  if (result)
  {
    v5 = result;
    swift_unknownObjectRelease();
    v6 = sub_2428B4608();
    v7 = [v5 calendarWithIdentifier_];

    v8 = [v7 displayColor];
    v9 = [objc_opt_self() configurationWithScale_];
    return sub_2428B3138();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24283BB34(uint64_t a1)
{
  v2 = sub_24283BDE0();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_24283BBB4()
{
  result = qword_27ECC3770;
  if (!qword_27ECC3770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3770);
  }

  return result;
}

uint64_t sub_24283BC08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3750, &qword_2428BD910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24283BC7C()
{
  result = qword_280CDE5C0;
  if (!qword_280CDE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE5C0);
  }

  return result;
}

unint64_t sub_24283BCD8()
{
  result = qword_280CDE558;
  if (!qword_280CDE558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE558);
  }

  return result;
}

unint64_t sub_24283BD34()
{
  result = qword_280CDE588;
  if (!qword_280CDE588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE588);
  }

  return result;
}

unint64_t sub_24283BD88()
{
  result = qword_280CDE580;
  if (!qword_280CDE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE580);
  }

  return result;
}

unint64_t sub_24283BDE0()
{
  result = qword_280CDE570;
  if (!qword_280CDE570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE570);
  }

  return result;
}

unint64_t sub_24283BE7C()
{
  result = qword_27ECC3798;
  if (!qword_27ECC3798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3798);
  }

  return result;
}

unint64_t sub_24283BED4()
{
  result = qword_27ECC37A0;
  if (!qword_27ECC37A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC37A0);
  }

  return result;
}

unint64_t sub_24283BF2C()
{
  result = qword_27ECC37A8;
  if (!qword_27ECC37A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC37A8);
  }

  return result;
}

unint64_t sub_24283BF84()
{
  result = qword_27ECC37B0;
  if (!qword_27ECC37B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC37B0);
  }

  return result;
}

unint64_t sub_24283BFDC()
{
  result = qword_27ECC37B8;
  if (!qword_27ECC37B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC37B8);
  }

  return result;
}

unint64_t sub_24283C030()
{
  result = qword_27ECC37C0;
  if (!qword_27ECC37C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC37C0);
  }

  return result;
}

unint64_t sub_24283C084()
{
  result = qword_27ECC37C8;
  if (!qword_27ECC37C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC37C8);
  }

  return result;
}

unint64_t sub_24283C0DC()
{
  result = qword_27ECC37D0;
  if (!qword_27ECC37D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC37D0);
  }

  return result;
}

unint64_t sub_24283C184()
{
  result = qword_27ECC37D8;
  if (!qword_27ECC37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC37D8);
  }

  return result;
}

unint64_t sub_24283C1DC()
{
  result = qword_27ECC37E0;
  if (!qword_27ECC37E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC37E0);
  }

  return result;
}

unint64_t sub_24283C234()
{
  result = qword_27ECC37E8;
  if (!qword_27ECC37E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC37E8);
  }

  return result;
}

unint64_t sub_24283C2D0()
{
  result = qword_280CDE560;
  if (!qword_280CDE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE560);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_24283C340(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_24283C388(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24283C3FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_2428B3218();

    return sub_2428B2F38();
  }

  return result;
}

uint64_t sub_24283C46C()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2428B36C8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2428B45F8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2428B3568();
  __swift_allocate_value_buffer(v9, qword_27ECC3810);
  __swift_project_value_buffer(v9, qword_27ECC3810);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2428B3588();
}

uint64_t static CreateEventIntent_v0.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1838 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3810);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24283C700()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_2428B3558();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B36C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2428B45F8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2428B3568();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_2428B3078();
  __swift_allocate_value_buffer(v15, qword_27ECC3828);
  __swift_project_value_buffer(v15, qword_27ECC3828);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3588();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3088();
}

uint64_t static CreateEventIntent_v0.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1840 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3828);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CreateEventIntent_v0.description.setter(uint64_t a1)
{
  if (qword_27ECC1840 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3828);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CreateEventIntent_v0.description.modify())()
{
  if (qword_27ECC1840 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3078();
  __swift_project_value_buffer(v0, qword_27ECC3828);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_24283CC2C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1840 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3828);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_24283CCEC(uint64_t a1)
{
  if (qword_27ECC1840 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3828);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t CreateEventIntent_v0.init()@<X0>(uint64_t *a1@<X8>)
{
  v178 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v150 = &v143[-v3];
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE8, &unk_2428BDEA0);
  v148 = *(v149 - 8);
  v4 = *(v148 + 64);
  MEMORY[0x28223BE20](v149);
  v147 = &v143[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2CF0, &unk_2428C15D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v146 = &v143[-v8];
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3580, &unk_2428BDEB0);
  v154 = *(v153 - 8);
  v9 = *(v154 + 64);
  MEMORY[0x28223BE20](v153);
  v152 = &v143[-v10];
  v167 = sub_2428B3298();
  v175 = *(v167 - 8);
  v11 = *(v175 + 64);
  MEMORY[0x28223BE20](v167);
  v166 = &v143[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v159 = &v143[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v165 = &v143[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D00, &unk_2428BD500);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v158 = &v143[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v163 = &v143[-v23];
  v24 = sub_2428B3558();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v143[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = sub_2428B36C8();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = sub_2428B45F8();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v177 = sub_2428B3568();
  v33 = *(v177 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v177);
  v36 = &v143[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  v179 = 0u;
  v180 = 0u;
  *&v181 = 0;
  sub_2428B2948();
  *v178 = sub_2428B2918();
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3840, &unk_2428BDEC0);
  sub_2428B4578();
  sub_2428B36B8();
  v38 = *(v25 + 104);
  v168 = *MEMORY[0x277CC9110];
  v37 = v168;
  v169 = v24;
  v38(v28, v168, v24);
  v162 = v38;
  v170 = v25 + 104;
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v38(v28, v37, v24);
  v39 = v163;
  sub_2428B3578();
  v174 = *(v33 + 56);
  v173 = v33 + 56;
  v174(v39, 0, 1, v177);
  v155 = sub_2428B4568();
  v179 = 0uLL;
  v40 = *(v155 - 8);
  v157 = *(v40 + 56);
  v156 = v40 + 56;
  v157(v158, 1, 1, v155);
  v172 = sub_2428B2AE8();
  v41 = *(v172 - 8);
  v171 = *(v41 + 56);
  v176 = v41 + 56;
  v171(v165, 1, 1, v172);
  v164 = *MEMORY[0x277CBA308];
  v42 = *(v175 + 104);
  v175 += 104;
  v161 = v42;
  v42(v166);
  v178[1] = sub_2428B2EB8();
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3588, &qword_2428BD360);
  sub_2428B4578();
  sub_2428B36B8();
  v43 = v168;
  v44 = v169;
  v45 = v162;
  v162(v28, v168, v169);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v45(v28, v43, v44);
  v46 = v163;
  sub_2428B3578();
  v47 = v174;
  v174(v46, 0, 1, v177);
  v171(v165, 1, 1, v172);
  v144 = *MEMORY[0x277CB9EF0];
  v48 = *(v154 + 104);
  v154 += 104;
  v145 = v48;
  v48(v152);
  v49 = v161;
  v161(v166, v164, v167);
  v178[2] = sub_2428B2E98();
  sub_2428B4578();
  sub_2428B36B8();
  v50 = v168;
  v51 = v169;
  v52 = v162;
  v162(v28, v168, v169);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v52(v28, v50, v51);
  v53 = v163;
  sub_2428B3578();
  v47(v53, 0, 1, v177);
  v171(v165, 1, 1, v172);
  v145(v152, v144, v153);
  v49(v166, v164, v167);
  v160 = v36;
  v178[3] = sub_2428B2E98();
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3850, &unk_2428BDED0);
  sub_2428B4578();
  sub_2428B36B8();
  v54 = v168;
  v55 = v169;
  v56 = v162;
  v162(v28, v168, v169);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v56(v28, v54, v55);
  sub_2428B3578();
  v174(v53, 0, 1, v177);
  LOBYTE(v179) = 2;
  v57 = sub_2428B4718();
  (*(*(v57 - 8) + 56))(v146, 1, 1, v57);
  v171(v165, 1, 1, v172);
  v58 = v161;
  v161(v166, v164, v167);
  v178[4] = sub_2428B2EC8();
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3858, &unk_2428BE330);
  sub_2428B4578();
  sub_2428B36B8();
  v59 = v168;
  v60 = v169;
  v56(v28, v168, v169);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v56(v28, v59, v60);
  sub_2428B3578();
  v174(v53, 0, 1, v177);
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v179 = 0u;
  v61 = v172;
  v62 = v171;
  v171(v165, 1, 1, v172);
  v62(v159, 1, 1, v61);
  v63 = v167;
  v58(v166, v164, v167);
  sub_24283FA24();
  v178[5] = sub_2428B2E68();
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D28, &unk_2428BDEE0);
  sub_2428B4578();
  sub_2428B36B8();
  v64 = v168;
  v65 = v169;
  v66 = v162;
  v162(v28, v168, v169);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v66(v28, v64, v65);
  v67 = v163;
  sub_2428B3578();
  v174(v67, 0, 1, v177);
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v179 = 0u;
  v68 = v172;
  v69 = v171;
  v171(v165, 1, 1, v172);
  v69(v159, 1, 1, v68);
  v70 = v161;
  v161(v166, v164, v63);
  sub_2427FE688();
  v178[6] = sub_2428B2E68();
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D10, &qword_2428BB320);
  sub_2428B4578();
  sub_2428B36B8();
  v71 = v168;
  v72 = v169;
  v73 = v162;
  v162(v28, v168, v169);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v73(v28, v71, v72);
  v74 = v163;
  sub_2428B3578();
  v75 = v177;
  v174(v74, 0, 1, v177);
  v179 = 0uLL;
  v157(v158, 1, 1, v155);
  v76 = v165;
  v171(v165, 1, 1, v172);
  v70(v166, v164, v167);
  v77 = v76;
  v178[7] = sub_2428B2EB8();
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3860, &qword_2428BDEF0);
  sub_2428B4578();
  sub_2428B36B8();
  v78 = v168;
  v79 = v169;
  v80 = v162;
  v162(v28, v168, v169);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v80(v28, v78, v79);
  v81 = v163;
  sub_2428B3578();
  v174(v81, 0, 1, v75);
  *&v182 = 0;
  v180 = 0u;
  v181 = 0u;
  v179 = 0u;
  v82 = v172;
  v83 = v171;
  v171(v77, 1, 1, v172);
  v83(v159, 1, 1, v82);
  v161(v166, v164, v167);
  sub_242806258();
  v178[8] = sub_2428B2E68();
  sub_2428B4578();
  sub_2428B36B8();
  v84 = v168;
  v85 = v169;
  v86 = v162;
  v162(v28, v168, v169);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v86(v28, v84, v85);
  v87 = v163;
  sub_2428B3578();
  v174(v87, 0, 1, v177);
  v179 = 0uLL;
  v157(v158, 1, 1, v155);
  v171(v165, 1, 1, v172);
  v88 = v166;
  v161(v166, v164, v167);
  v89 = v88;
  v178[9] = sub_2428B2EB8();
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3870, &qword_2428BDEF8);
  sub_2428B4578();
  sub_2428B36B8();
  v90 = v168;
  v91 = v169;
  v86(v28, v168, v169);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v86(v28, v90, v91);
  v92 = v163;
  sub_2428B3578();
  v174(v92, 0, 1, v177);
  *&v180 = 0;
  v179 = 0uLL;
  v93 = v172;
  v94 = v171;
  v171(v165, 1, 1, v172);
  v94(v159, 1, 1, v93);
  v95 = v167;
  v161(v89, v164, v167);
  sub_24283FA78();
  v153 = sub_24283FACC();
  v178[10] = sub_2428B2E58();
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3970, &unk_2428BDF00);
  sub_2428B4578();
  sub_2428B36B8();
  v96 = v168;
  v97 = v169;
  v98 = v162;
  v162(v28, v168, v169);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v98(v28, v96, v97);
  v99 = v163;
  sub_2428B3578();
  v174(v99, 0, 1, v177);
  *&v179 = 0;
  v100 = v172;
  v101 = v171;
  v171(v165, 1, 1, v172);
  v101(v159, 1, 1, v100);
  v102 = v164;
  v161(v166, v164, v95);
  v178[11] = sub_2428B2E68();
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3880, &unk_2428BE320);
  sub_2428B4578();
  sub_2428B36B8();
  v103 = v168;
  v104 = v169;
  v105 = v162;
  v162(v28, v168, v169);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v105(v28, v103, v104);
  sub_2428B3578();
  v174(v99, 0, 1, v177);
  *&v179 = 0;
  v106 = v172;
  v107 = v171;
  v171(v165, 1, 1, v172);
  v107(v159, 1, 1, v106);
  v108 = v167;
  v161(v166, v102, v167);
  sub_24282F540();
  v178[12] = sub_2428B2E68();
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3890, &unk_2428BDF10);
  sub_2428B4578();
  sub_2428B36B8();
  v109 = v168;
  v110 = v169;
  v111 = v162;
  v162(v28, v168, v169);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v111(v28, v109, v110);
  v112 = v163;
  sub_2428B3578();
  v174(v112, 0, 1, v177);
  LOBYTE(v179) = 4;
  v113 = v172;
  v114 = v171;
  v171(v165, 1, 1, v172);
  v114(v159, 1, 1, v113);
  v115 = v166;
  v161(v166, v164, v108);
  sub_24281E43C();
  v116 = v115;
  v178[13] = sub_2428B2E38();
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC38A0, &unk_2428C16A0);
  sub_2428B4578();
  sub_2428B36B8();
  v117 = v168;
  v118 = v169;
  v119 = v162;
  v162(v28, v168, v169);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v119(v28, v117, v118);
  v120 = v163;
  sub_2428B3578();
  v174(v120, 0, 1, v177);
  LOBYTE(v179) = 5;
  v121 = v172;
  v122 = v171;
  v171(v165, 1, 1, v172);
  v122(v159, 1, 1, v121);
  v123 = v164;
  v161(v116, v164, v167);
  sub_24281E4E4();
  v178[14] = sub_2428B2E38();
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D60, &unk_2428BDF20);
  sub_2428B4578();
  sub_2428B36B8();
  v124 = v168;
  v125 = v169;
  v126 = v162;
  v162(v28, v168, v169);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v126(v28, v124, v125);
  v127 = v163;
  sub_2428B3578();
  v174(v127, 0, 1, v177);
  *&v179 = 0;
  BYTE8(v179) = 1;
  v128 = v165;
  v129 = v172;
  v171(v165, 1, 1, v172);
  (*(v148 + 104))(v147, *MEMORY[0x277CB9ED0], v149);
  v161(v166, v123, v167);
  v130 = v128;
  v178[15] = sub_2428B2ED8();
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3980, &unk_2428C16B0);
  sub_2428B4578();
  sub_2428B36B8();
  v131 = v168;
  v132 = v169;
  v133 = v162;
  v162(v28, v168, v169);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v133(v28, v131, v132);
  v134 = v163;
  sub_2428B3578();
  v174(v134, 0, 1, v177);
  v135 = sub_2428B35D8();
  (*(*(v135 - 8) + 56))(v150, 1, 1, v135);
  v136 = v171;
  v171(v130, 1, 1, v129);
  v137 = v166;
  v138 = v164;
  v139 = v161;
  v161(v166, v164, v167);
  v140 = sub_2428B2E88();
  v141 = v178;
  v178[16] = v140;
  sub_2428B3548();
  v174(v134, 1, 1, v177);
  v179 = 0uLL;
  v157(v158, 1, 1, v155);
  v136(v130, 1, 1, v172);
  v139(v137, v138, v167);
  result = sub_2428B2EB8();
  v141[17] = result;
  return result;
}

unint64_t sub_24283FA24()
{
  result = qword_280CDDCA0;
  if (!qword_280CDDCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDCA0);
  }

  return result;
}

unint64_t sub_24283FA78()
{
  result = qword_27ECC3878;
  if (!qword_27ECC3878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3878);
  }

  return result;
}

unint64_t sub_24283FACC()
{
  result = qword_280CDDF60;
  if (!qword_280CDDF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDF60);
  }

  return result;
}

uint64_t sub_24283FBD4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v13 = a1[2];
  v14 = v3;
  v4 = a1[3];
  v15 = a1[4];
  v5 = a1[1];
  v12[0] = *a1;
  v12[1] = v5;
  v6 = a2[7];
  v16[6] = a2[6];
  v16[7] = v6;
  v16[8] = a2[8];
  v7 = a2[3];
  v16[2] = a2[2];
  v16[3] = v7;
  v8 = a2[5];
  v16[4] = a2[4];
  v16[5] = v8;
  v9 = a2[1];
  v16[0] = *a2;
  v16[1] = v9;
  v11[11] = v13;
  v11[12] = v4;
  v11[13] = a1[4];
  v11[9] = v12[0];
  v11[10] = v2;
  sub_2427E0918(v12, v11, &qword_27ECC38E8, qword_2428BDFD8);
  sub_24284344C(v16, v11);
  sub_2428B2DD8();
  return sub_242843484(v16);
}

uint64_t CreateEventIntent_v0.recurrenceRule.setter(__int128 *a1)
{
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v4 = *a1;
  v5 = a1[1];
  v2 = *(v1 + 40);
  return sub_2428B2DD8();
}

uint64_t (*CreateEventIntent_v0.recurrenceRule.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 40);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_24283FDD8(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a2[7];
  v22[6] = a2[6];
  v22[7] = v9;
  v22[8] = a2[8];
  v10 = a2[3];
  v22[2] = a2[2];
  v22[3] = v10;
  v11 = a2[5];
  v22[4] = a2[4];
  v22[5] = v11;
  v12 = a2[1];
  v22[0] = *a2;
  v22[1] = v12;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  sub_2428434B4(v2);
  sub_24284344C(v22, v14);
  sub_2428B2DD8();
  return sub_242843484(v22);
}

uint64_t CreateEventIntent_v0.structuredLocation.setter(__int128 *a1)
{
  v2 = *(v1 + 64);
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 6);
  return sub_2428B2DD8();
}

uint64_t (*CreateEventIntent_v0.structuredLocation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 64);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t CreateEventIntent_v0.alarms.getter()
{
  v1 = *(v0 + 88);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_24283FFAC(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v10[6] = a2[6];
  v10[7] = v3;
  v10[8] = a2[8];
  v4 = a2[3];
  v10[2] = a2[2];
  v10[3] = v4;
  v5 = a2[5];
  v10[4] = a2[4];
  v10[5] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v9 = v2;
  sub_2428B3218();
  sub_24284344C(v10, v8);
  sub_2428B2DD8();
  return sub_242843484(v10);
}

uint64_t (*CreateEventIntent_v0.alarms.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 88);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_24284013C(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v9[6] = a2[6];
  v9[7] = v3;
  v9[8] = a2[8];
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v5 = a2[5];
  v9[4] = a2[4];
  v9[5] = v5;
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  v8[151] = v2;
  sub_24284344C(v9, v8);
  sub_2428B2DD8();
  return sub_242843484(v9);
}

uint64_t CreateEventIntent_v0.privacyLevel.setter(char *a1)
{
  v2 = *(v1 + 104);
  v4 = *a1;
  return sub_2428B2DD8();
}

uint64_t (*CreateEventIntent_v0.privacyLevel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 104);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_2428402A8(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v9[6] = a2[6];
  v9[7] = v3;
  v9[8] = a2[8];
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v5 = a2[5];
  v9[4] = a2[4];
  v9[5] = v5;
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  v8[151] = v2;
  sub_24284344C(v9, v8);
  sub_2428B2DD8();
  return sub_242843484(v9);
}

uint64_t CreateEventIntent_v0.availability.setter(char *a1)
{
  v2 = *(v1 + 112);
  v4 = *a1;
  return sub_2428B2DD8();
}

uint64_t (*CreateEventIntent_v0.availability.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 112);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t CreateEventIntent_v0.travelTime.getter()
{
  v1 = *(v0 + 120);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_242840428(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2[7];
  v11[6] = a2[6];
  v11[7] = v4;
  v11[8] = a2[8];
  v5 = a2[3];
  v11[2] = a2[2];
  v11[3] = v5;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v9[18] = v2;
  v10 = v3;
  sub_24284344C(v11, v9);
  sub_2428B2DD8();
  return sub_242843484(v11);
}

uint64_t (*CreateEventIntent_v0.travelTime.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 120);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CBEA8;
}

uint64_t sub_24284059C(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-v9];
  sub_2427E0918(a1, &v16[-v9], &qword_27ECC2CE0, &qword_2428B6560);
  v11 = a2[7];
  v17[6] = a2[6];
  v17[7] = v11;
  v17[8] = a2[8];
  v12 = a2[3];
  v17[2] = a2[2];
  v17[3] = v12;
  v13 = a2[5];
  v17[4] = a2[4];
  v17[5] = v13;
  v14 = a2[1];
  v17[0] = *a2;
  v17[1] = v14;
  sub_2427E0918(v10, v8, &qword_27ECC2CE0, &qword_2428B6560);
  sub_24284344C(v17, v16);
  sub_2428B2DD8();
  sub_2427E0980(v10, &qword_27ECC2CE0, &qword_2428B6560);
  return sub_242843484(v17);
}

uint64_t CreateEventIntent_v0.url.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 128);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2428B2DD8();
  return sub_2427E0980(a1, &qword_27ECC2CE0, &qword_2428B6560);
}

uint64_t (*CreateEventIntent_v0.url.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 128);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t CreateEventIntent_v0.floatingTimeZoneID.getter()
{
  v1 = *(v0 + 136);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_242840860(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[7];
  v10[6] = a2[6];
  v10[7] = v4;
  v10[8] = a2[8];
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v9[18] = v3;
  v9[19] = v2;
  sub_2428B3218();
  sub_24284344C(v10, v9);
  sub_2428B2DD8();
  return sub_242843484(v10);
}