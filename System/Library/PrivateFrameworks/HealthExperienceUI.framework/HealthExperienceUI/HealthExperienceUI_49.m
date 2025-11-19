uint64_t sub_1BA442688(unsigned __int8 *__src, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (a2 - __src < (a3 - a2))
  {
    if (__dst != __src || __dst >= a2)
    {
      memmove(__dst, __src, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1)
    {
      if (v6 < v5)
      {
        do
        {
          v11 = *v6;
          v12 = *v4;
          if (qword_1EBBE8700 != -1)
          {
            swift_once();
          }

          result = swift_beginAccess();
          v14 = *(off_1EBBEFA40 + 2);
          if (v14)
          {
            v15 = 0;
            v16 = off_1EBBEFA40 + 32;
            do
            {
              v17 = v16[v15];
              v18 = v17 >> 6;
              if (v17 >> 6 > 1)
              {
                if (v18 == 3)
                {
                  if (v17 == 192)
                  {
                    if (v11 == 192)
                    {
                      goto LABEL_38;
                    }
                  }

                  else if (v17 == 193)
                  {
                    if (v11 == 193)
                    {
                      goto LABEL_38;
                    }
                  }

                  else if (v11 == 194)
                  {
                    goto LABEL_38;
                  }
                }

                else if (v16[v15] > 0x81u)
                {
                  if (v17 == 130)
                  {
                    if (v11 == 130)
                    {
                      goto LABEL_38;
                    }
                  }

                  else if (v11 == 131)
                  {
                    goto LABEL_38;
                  }
                }

                else if (v17 == 128)
                {
                  if (v11 == 128)
                  {
                    goto LABEL_38;
                  }
                }

                else if (v11 == 129)
                {
                  goto LABEL_38;
                }
              }

              else if (v18)
              {
                if ((v11 & 0xC0) == 0x40 && ((v17 ^ v11) & 0x3F) == 0)
                {
LABEL_38:
                  v19 = 0;
                  while (1)
                  {
                    if (v14 == v19)
                    {
                      __break(1u);
                      goto LABEL_171;
                    }

                    v20 = v16[v19];
                    v21 = v20 >> 6;
                    if (v20 >> 6 > 1)
                    {
                      if (v21 == 3)
                      {
                        if (v20 == 192)
                        {
                          if (v12 == 192)
                          {
                            goto LABEL_67;
                          }
                        }

                        else if (v20 == 193)
                        {
                          if (v12 == 193)
                          {
                            goto LABEL_67;
                          }
                        }

                        else if (v12 == 194)
                        {
                          goto LABEL_67;
                        }
                      }

                      else if (v16[v19] > 0x81u)
                      {
                        if (v20 == 130)
                        {
                          if (v12 == 130)
                          {
                            goto LABEL_67;
                          }
                        }

                        else if (v12 == 131)
                        {
                          goto LABEL_67;
                        }
                      }

                      else if (v20 == 128)
                      {
                        if (v12 == 128)
                        {
                          goto LABEL_67;
                        }
                      }

                      else if (v12 == 129)
                      {
                        goto LABEL_67;
                      }
                    }

                    else if (v21)
                    {
                      if ((v12 & 0xC0) == 0x40 && ((v20 ^ v12) & 0x3F) == 0)
                      {
LABEL_67:
                        if (v15 >= v19)
                        {
                          goto LABEL_71;
                        }

                        v22 = v6 + 1;
                        v23 = v6;
                        if (v7 < v6 || v7 >= v22)
                        {
                          goto LABEL_75;
                        }

                        goto LABEL_76;
                      }
                    }

                    else if (v12 <= 0x3F && v20 == v12)
                    {
                      goto LABEL_67;
                    }

                    if (v14 == ++v19)
                    {
                      goto LABEL_71;
                    }
                  }
                }
              }

              else if (v11 <= 0x3F && v17 == v11)
              {
                goto LABEL_38;
              }

              ++v15;
            }

            while (v14 != v15);
          }

LABEL_71:
          v24 = v4 + 1;
          v23 = v4;
          v22 = v6;
          if (v7 < v4)
          {
            ++v4;
            goto LABEL_75;
          }

          ++v4;
          if (v7 >= v24)
          {
LABEL_75:
            *v7 = *v23;
          }

LABEL_76:
          ++v7;
          if (v4 >= v10)
          {
            break;
          }

          v6 = v22;
        }

        while (v22 < v5);
        v6 = v7;
        goto LABEL_161;
      }

      v6 = v7;
      if (v7 != v4)
      {
        goto LABEL_168;
      }

LABEL_167:
      if (v6 >= v10)
      {
        goto LABEL_168;
      }

      return 1;
    }

    v6 = v7;
LABEL_166:
    if (v6 != v4)
    {
      goto LABEL_168;
    }

    goto LABEL_167;
  }

  if (__dst != a2 || __dst >= a3)
  {
    memmove(__dst, a2, a3 - a2);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
    goto LABEL_166;
  }

  do
  {
    v25 = v6 - 1;
    v26 = v5;
    v27 = v10;
    __dsta = v6 - 1;
    while (1)
    {
      v29 = *--v27;
      v28 = v29;
      v30 = *v25;
      if (qword_1EBBE8700 != -1)
      {
        swift_once();
      }

      v41 = (v26 - 1);
      result = swift_beginAccess();
      v31 = *(off_1EBBEFA40 + 2);
      if (v31)
      {
        break;
      }

LABEL_148:
      v39 = v26-- >= v10;
      if (!v39 || v41 >= v10)
      {
        *v41 = *v27;
      }

      v10 = v27;
      v25 = v6 - 1;
      if (v27 <= v4)
      {
        v10 = v27;
LABEL_161:
        if (v6 != v4)
        {
          goto LABEL_168;
        }

        goto LABEL_167;
      }
    }

    v32 = 0;
    v33 = off_1EBBEFA40 + 32;
    while (1)
    {
      v34 = v33[v32];
      v35 = v34 >> 6;
      if (v34 >> 6 > 1)
      {
        if (v35 == 3)
        {
          if (v34 == 192)
          {
            if (v28 == 192)
            {
              goto LABEL_118;
            }
          }

          else if (v34 == 193)
          {
            if (v28 == 193)
            {
              goto LABEL_118;
            }
          }

          else if (v28 == 194)
          {
            goto LABEL_118;
          }
        }

        else if (v33[v32] > 0x81u)
        {
          if (v34 == 130)
          {
            if (v28 == 130)
            {
              goto LABEL_118;
            }
          }

          else if (v28 == 131)
          {
            goto LABEL_118;
          }
        }

        else if (v34 == 128)
        {
          if (v28 == 128)
          {
            goto LABEL_118;
          }
        }

        else if (v28 == 129)
        {
          goto LABEL_118;
        }

        goto LABEL_92;
      }

      if (v35)
      {
        break;
      }

      if (v28 <= 0x3F && v34 == v28)
      {
        goto LABEL_118;
      }

LABEL_92:
      if (v31 == ++v32)
      {
        goto LABEL_148;
      }
    }

    if ((v28 & 0xC0) != 0x40 || ((v34 ^ v28) & 0x3F) != 0)
    {
      goto LABEL_92;
    }

LABEL_118:
    v36 = 0;
    while (2)
    {
      if (v31 == v36)
      {
LABEL_171:
        __break(1u);
        return result;
      }

      v37 = v33[v36];
      v38 = v37 >> 6;
      if (v37 >> 6 > 1)
      {
        if (v38 == 3)
        {
          if (v37 == 192)
          {
            if (v30 == 192)
            {
              goto LABEL_147;
            }
          }

          else if (v37 == 193)
          {
            if (v30 == 193)
            {
              goto LABEL_147;
            }
          }

          else if (v30 == 194)
          {
            goto LABEL_147;
          }
        }

        else if (v33[v36] > 0x81u)
        {
          if (v37 == 130)
          {
            if (v30 == 130)
            {
              goto LABEL_147;
            }
          }

          else if (v30 == 131)
          {
            goto LABEL_147;
          }
        }

        else if (v37 == 128)
        {
          if (v30 == 128)
          {
            goto LABEL_147;
          }
        }

        else if (v30 == 129)
        {
          goto LABEL_147;
        }

LABEL_120:
        if (v31 == ++v36)
        {
          goto LABEL_148;
        }

        continue;
      }

      break;
    }

    if (!v38)
    {
      if (v30 <= 0x3F && v37 == v30)
      {
        goto LABEL_147;
      }

      goto LABEL_120;
    }

    if ((v30 & 0xC0) != 0x40 || ((v37 ^ v30) & 0x3F) != 0)
    {
      goto LABEL_120;
    }

LABEL_147:
    if (v32 >= v36)
    {
      goto LABEL_148;
    }

    v5 = v26 - 1;
    if (v26 < v6 || v41 >= v6)
    {
      *v41 = *__dsta;
    }

    if (v10 <= v4)
    {
      break;
    }

    --v6;
  }

  while (__dsta > v7);
  v6 = __dsta;
  if (__dsta == v4)
  {
    goto LABEL_167;
  }

LABEL_168:
  memmove(v6, v4, v10 - v4);
  return 1;
}

uint64_t sub_1BA442CF4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BA442D80(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1BA442D94(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F3D7EC(0, &qword_1EBBEF678, sub_1BA28155C, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t _s18HealthExperienceUI34SummarySharingOnboardingPresentingPAAE25sharingAnalyticsPublisher3for7Combine03AnyJ0VyAA0de5SetupI9BaseEventC0e7EntriesI0VSgs5NeverOGSo13HKHealthStoreC_tF_0(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696C4F0]) initWithHealthStore_];
  sub_1BA440AA8();
  sub_1BA2CDCF0();
  sub_1BA44350C(&qword_1EBBF0148, sub_1BA2CDCF0);
  v2 = sub_1BA4A4F98();

  return v2;
}

uint64_t _s18HealthExperienceUI34SummarySharingOnboardingPresentingPAAE25userDemographicsPublisher3for7Combine03AnyJ0VyAA04UserI9AnalyticsVs5NeverOGSo13HKHealthStoreC_tF_0(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  sub_1BA2CDDCC(0, &qword_1EBBEB540);
  swift_allocObject();
  v2 = a1;
  sub_1BA4A4EA8();
  sub_1BA2CDD7C(&qword_1EBBEB548, &qword_1EBBEB540);
  v3 = sub_1BA4A4F98();

  return v3;
}

uint64_t _s18HealthExperienceUI34SummarySharingOnboardingPresentingPAAE25pairedDeviceNamePublisher7Combine03AnyK0VySSs5NeverOGyF_0()
{
  sub_1BA2CDDCC(0, &qword_1EDC5F400);
  swift_allocObject();
  sub_1BA4A4EA8();
  sub_1BA2CDD7C(&qword_1EDC5F408, &qword_1EDC5F400);
  v0 = sub_1BA4A4F98();

  return v0;
}

uint64_t _s18HealthExperienceUI34SummarySharingOnboardingPresentingPAAE28suggestedCategoriesPublisher11healthStore0kbL07Combine03AnyJ0VySayAA0dE26SelectionSuggestedCategoryOGs5NeverOGSo08HKHealthL0C_0A8Platform0abL0_ptF_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BA2CD9FC();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2CDC1C();
  v14 = *(v13 - 8);
  v22 = v13;
  v23 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BA2896CC(a1, a2);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  sub_1BA2CDAEC();
  sub_1BA2CDB90();
  sub_1BA44350C(&qword_1EBBF0128, sub_1BA2CDAEC);
  sub_1BA44350C(&qword_1EBBE9D08, sub_1BA2CDB90);
  sub_1BA4A5018();

  sub_1BA4444E4(0, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
  sub_1BA44350C(&qword_1EBBF0138, sub_1BA2CD9FC);
  sub_1BA4A4FE8();
  (*(v10 + 8))(v12, v9);
  sub_1BA44350C(&qword_1EBBF0150, sub_1BA2CDC1C);
  v18 = v22;
  v19 = sub_1BA4A4F98();
  (*(v23 + 8))(v16, v18);
  return v19;
}

uint64_t sub_1BA44350C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA443554(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v64 = a2;
  v2 = MEMORY[0x1E69E6370];
  sub_1BA4444E4(0, &qword_1EDC5F438, MEMORY[0x1E69E6370], MEMORY[0x1E695C000]);
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v46 - v4;
  sub_1BA02F280(0);
  v61 = v6;
  v59 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02F344();
  v62 = v9;
  v60 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SummarySharingOnboardingError();
  MEMORY[0x1EEE9AC00](v12);
  sub_1BA02EF20(0);
  v51 = v13;
  v49 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02EF40();
  v52 = v15;
  v50 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02EFD4();
  v53 = *(v17 - 8);
  v54 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02F068(0);
  v55 = *(v20 - 8);
  v56 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4444E4(0, &qword_1EDC6ADF0, v2, MEMORY[0x1E69A3C40]);
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v46 - v26;
  if (qword_1EDC63A50 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v24, qword_1EDC63A58);
  (*(v25 + 16))(v27, v28, v24);
  sub_1BA4A1CA8();
  (*(v25 + 8))(v27, v24);
  if (v67)
  {
    v65 = 1;
    sub_1BA4A4E78();
    sub_1BA44350C(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError);
    v29 = v58;
    sub_1BA4A4E48();
    (*(v57 + 8))(v5, v29);
    v30 = swift_allocObject();
    v31 = v64;
    *(v30 + 16) = v63;
    *(v30 + 24) = v31;
    sub_1BA44350C(&qword_1EBBEA810, sub_1BA02F280);
    v32 = v61;
    sub_1BA4A4FB8();

    (*(v59 + 8))(v8, v32);
    sub_1BA44350C(&qword_1EBBEA828, sub_1BA02F344);
    v33 = v62;
    v34 = sub_1BA4A4F98();
    (*(v60 + 8))(v11, v33);
  }

  else
  {
    v36 = v63;
    v35 = v64;
    v37 = (*(v64 + 24))(v63, v64);
    if (v37)
    {
      v66 = v37;
      sub_1B9F1146C();
      sub_1BA44350C(&qword_1EDC5F478, sub_1B9F1146C);
      sub_1BA4A4FB8();
      sub_1BA4A4D08();
      sub_1BA02DF60(0);
      sub_1BA44350C(&qword_1EBBEA7F0, sub_1BA02EFD4);
      sub_1BA44350C(&qword_1EBBEA0F8, sub_1BA02DF60);
      v38 = v54;
      sub_1BA4A5168();
      (*(v53 + 8))(v19, v38);
      sub_1BA44350C(&qword_1EBBEA820, sub_1BA02F068);
      v39 = v56;
      v34 = sub_1BA4A4F98();

      (*(v55 + 8))(v22, v39);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1BA44350C(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError);
      v40 = v47;
      sub_1BA4A4E38();
      v41 = swift_allocObject();
      *(v41 + 16) = v36;
      *(v41 + 24) = v35;
      sub_1BA44350C(&qword_1EBBEA7D0, sub_1BA02EF20);
      v42 = v51;
      v43 = v48;
      sub_1BA4A4FB8();

      (*(v49 + 8))(v40, v42);
      sub_1BA44350C(&qword_1EBBEA818, sub_1BA02EF40);
      v44 = v52;
      v34 = sub_1BA4A4F98();
      (*(v50 + 8))(v43, v44);
    }
  }

  return v34;
}

uint64_t sub_1BA443FAC(uint64_t a1)
{
  sub_1BA4444E4(0, &qword_1EBBEA760, MEMORY[0x1E69E6530], MEMORY[0x1E695C000]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v14 - v5;
  sub_1BA02DF24(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = a1;
  sub_1BA4A4E78();
  sub_1BA4A4D08();
  sub_1BA02DF60(0);
  sub_1BA02E060();
  sub_1BA44350C(&qword_1EBBEA0F8, sub_1BA02DF60);
  sub_1BA4A5168();
  (*(v4 + 8))(v6, v3);
  sub_1BA44350C(&qword_1EBBEA7B0, sub_1BA02DF24);
  v12 = sub_1BA4A4F98();
  (*(v9 + 8))(v11, v8);
  return v12;
}

void sub_1BA444284(int a1, int a2, int a3)
{
  v4 = (*(*(*(v3 + 16) - 8) + 80) + 40) & ~*(*(*(v3 + 16) - 8) + 80);
  v5 = (*(*(*(v3 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1BA4404D8(a1, a2, a3, *(v3 + 32), v3 + v4, *(v3 + v5), v3 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8), *(v3 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 40), *(v3 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 41), *(v3 + 16), *(v3 + 24));
}

uint64_t sub_1BA444404(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA44446C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BA4444E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t SectionsPublisherDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA444624@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F12538();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BA4446AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F12538();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id sub_1BA44479C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_changeObservers;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BA4447F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_changeObservers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA4448A8(uint64_t a1)
{
  sub_1B9F12538();
  v3 = v2;
  v38 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A45D8();
  v6 = *(a1 + 16);
  v39 = a1;
  if (v6)
  {
    v42 = v5;
    v43 = v3;
    v49[0] = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v6, 0);
    v7 = v49[0];
    v44 = a1 + 32;
    v8 = (a1 + 72);
    v41 = v6;
    v9 = v6;
    do
    {
      v11 = *(v8 - 1);
      v10 = *v8;
      v49[0] = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);

      if (v13 >= v12 >> 1)
      {
        sub_1B9F1C360((v12 > 1), v13 + 1, 1);
        v7 = v49[0];
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v8 += 6;
      --v9;
    }

    while (v9);
    v5 = v42;
    v3 = v43;
    sub_1BA4A44C8();

    v15 = 0;
    v16 = v41;
    do
    {
      v17 = (v44 + 48 * v15);
      v18 = v17[1];
      v19 = v17[2];
      v20 = v17[3];
      v48 = v17[4];
      v21 = v17[5];
      v22 = *(v19 + 16);
      if (v22)
      {
        v50 = MEMORY[0x1E69E7CC0];
        v47 = v18;

        v45 = v20;

        sub_1B9F1C360(0, v22, 0);
        v23 = v50;
        v46 = v19;
        v24 = v19 + 32;
        do
        {
          sub_1B9F0A534(v24, v49);
          __swift_project_boxed_opaque_existential_1(v49, v49[3]);
          v25 = sub_1BA4A2D58();
          v27 = v26;
          __swift_destroy_boxed_opaque_existential_1(v49);
          v50 = v23;
          v29 = *(v23 + 16);
          v28 = *(v23 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_1B9F1C360((v28 > 1), v29 + 1, 1);
            v23 = v50;
          }

          *(v23 + 16) = v29 + 1;
          v30 = v23 + 16 * v29;
          *(v30 + 32) = v25;
          *(v30 + 40) = v27;
          v24 += 40;
          --v22;
        }

        while (v22);
        v5 = v42;
        v3 = v43;
        v16 = v41;
      }

      else
      {
      }

      ++v15;
      v49[0] = v48;
      v49[1] = v21;

      sub_1BA4A4448();
      swift_bridgeObjectRelease_n();
    }

    while (v15 != v16);
  }

  else
  {
    sub_1BA4A44C8();
  }

  v31 = v39;
  v32 = Array<A>.identifierToIndexDict()(v39);
  v33 = v40;
  *(v40 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_arrangedSectionsIdentifierToIndexMap) = v32;

  *(v33 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_arrangedSections) = v31;

  v34 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_snapshot;
  swift_beginAccess();
  v35 = *(v38 + 40);

  v35(v33 + v34, v5, v3);
  return swift_endAccess();
}

uint64_t sub_1BA444C90@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1B9F12538();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_snapshot;
  swift_beginAccess();
  (*(v10 + 16))(v12, v4 + v13, v9);
  v36 = a1;
  v37 = a2;
  sub_1BA4A4568();
  result = (*(v10 + 8))(v12, v9);
  v15 = v31;
  if (!v31)
  {
    goto LABEL_8;
  }

  v16 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_arrangedSectionsIdentifierToIndexMap);
  if (!*(v16 + 16) || (v17 = v30, , v18 = sub_1B9F24A34(v17, v15), v20 = v19, , (v20 & 1) == 0))
  {

LABEL_8:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v21 = *(*(v16 + 56) + 8 * v18);

  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v22 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_arrangedSections);
    if (v21 < *(v22 + 16))
    {
      v23 = (v22 + 48 * v21);
      v24 = v23[5];
      v25 = v23[6];
      v26 = v23[7];
      v27 = v23[8];
      v28 = v23[9];
      v30 = v23[4];
      v31 = v24;
      v32 = v25;
      v33 = v26;
      v34 = v27;
      v35 = v28;

      ArrayDataSourceSection.item(for:)(a1, a2, a3);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA444EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

uint64_t sub_1BA444FA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F12538();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BA44502C(uint64_t a1, uint64_t *a2)
{
  sub_1B9F12538();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_snapshot;
  swift_beginAccess();
  (*(v6 + 40))(v10 + v11, v9, v5);
  return swift_endAccess();
}

void sub_1BA445144(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_changeObservers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t SectionsPublisherDataSource.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_identifier);

  return v1;
}

uint64_t sub_1BA4451E0()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3D88();
  v4 = sub_1BA4A3E88();
  v5 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_1BA4A85D8();
    v10 = sub_1B9F0B82C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1B9F07000, v4, v5, "[%{public}s] Sections publisher data source completed", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
    MEMORY[0x1BFAF43A0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1BA445388(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_1BA4A6C68();
  v5[2] = a2;
  v5[3] = v3;
  return sub_1BA1E0AA4(sub_1BA445C2C, v5);
}

void sub_1BA445400(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BA4448A8(a2);
    v5 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_changeObservers;
    swift_beginAccess();
    v6 = *(v4 + v5);
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = 1;
    v10[4] = sub_1BA445C48;
    v10[5] = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1B9F8A254;
    v10[3] = &block_descriptor_123;
    v8 = _Block_copy(v10);
    v9 = v6;

    [v9 notifyObservers_];
    _Block_release(v8);
  }
}

uint64_t SectionsPublisherDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA445648()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_identifier);

  return v1;
}

void *sub_1BA445688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a1;
  v26 = a3;
  v5 = *v3;
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A45D8();
  v10 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_changeObservers;
  sub_1B9F15B38();
  v11 = sub_1BA4A7A78();
  v12 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v13 = sub_1BA4A6758();
  v14 = [v12 initWithName:v13 loggingCategory:{v11, v25, v26}];

  *(v4 + v10) = v14;
  v15 = (v4 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_identifier);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v27 = 0x627550736D657449;
  v28 = 0xEF3C72656873696CLL;
  sub_1BA4A1788();
  v16 = sub_1BA4A1748();
  v18 = v17;
  (*(v7 + 8))(v9, v6);
  MEMORY[0x1BFAF1350](v16, v18);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v19 = v28;
  *v15 = v27;
  v15[1] = v19;
  v20 = MEMORY[0x1E69E7CC0];
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_arrangedSections) = MEMORY[0x1E69E7CC0];
  v21 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_arrangedSectionsIdentifierToIndexMap;
  *(v4 + v21) = sub_1B9F1C5F0(v20);
  v22 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_cancellable;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_cancellable) = 0;
  *(swift_allocObject() + 16) = v5;
  swift_allocObject();
  swift_weakInit();
  v23 = sub_1BA4A5008();

  *(v4 + v22) = v23;

  return v4;
}

void *sub_1BA44598C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SectionsPublisherDataSource();
  swift_allocObject();
  return sub_1BA445688(a1, a2, a3);
}

uint64_t type metadata accessor for SectionsPublisherDataSource()
{
  result = qword_1EBBF2B60;
  if (!qword_1EBBF2B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA445A3C()
{
  sub_1B9F12538();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void static PluginFeedItem.makeOnboardingPromotionalFeedItem<A>(uniqueIdentifier:actionHandlerType:actionHandlerUserData:configuration:sourceProfile:associatedHKTypes:additionalKeywords:featureAutomationIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v36 = a5;
  v37 = a8;
  v31 = a3;
  v32 = a7;
  v34 = a4;
  v35 = a2;
  v33 = a1;
  v38 = a10;
  v39 = a11;
  v30[1] = a12;
  v13 = sub_1BA4A1C68();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA445FB0();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PromotionTileView();
  v21 = sub_1BA4A3258();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v19, a6, v21);
  (*(v22 + 56))(v19, 0, 1, v21);
  (*(v14 + 104))(v16, *MEMORY[0x1E69A3C00], v13);
  static PluginFeedItem.platformFeedItem<A, B>(viewType:actionHandlerType:actionHandlerUserData:uniqueIdentifier:userDataObject:contentKind:sourceProfile:)(v20, v31, v34, v36, v33, v35, v19, v16, v32);
  (*(v14 + 8))(v16, v13);
  sub_1BA446008(v19);
  sub_1BA4A3238();
  sub_1BA4A1E18();
  v23 = sub_1BA4A2028();
  v25 = v24;
  v26 = sub_1BA4A1EE8();
  sub_1BA0E1C3C(&v41, v23, v25);

  v26(v40, 0);
  sub_1BA4A1E08();

  sub_1BA4A1E48();
  sub_1B9F25350();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BA4B5460;
  *(v27 + 32) = 0x6574736567677553;
  *(v27 + 40) = 0xEF6E6F6974634164;
  *(v27 + 48) = v38;
  *(v27 + 56) = v39;

  v28 = sub_1BA4A6AE8();

  v29 = HKUIJoinStringsForAutomationIdentifier();

  if (v29)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA4A1ED8();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA445FB0()
{
  if (!qword_1EDC6E198)
  {
    sub_1BA4A3258();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6E198);
    }
  }
}

uint64_t sub_1BA446008(uint64_t a1)
{
  sub_1BA445FB0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ListStyleAccessoryView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t sub_1BA4460C8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1BA446134()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA44618C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

char *ListStyleAccessoryView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView_baseIdentifier];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___separator] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label] = 0;
  v23.receiver = v4;
  v23.super_class = type metadata accessor for ListStyleAccessoryView();
  v10 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = sub_1BA446508();
  [v10 addSubview_];

  v12 = OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView;
  v13 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView];
  v14 = sub_1BA446590();
  [v13 addSubview_];

  v15 = *&v10[v12];
  v16 = sub_1BA44666C();
  [v15 addSubview_];

  v17 = sub_1BA446B1C();
  sub_1B9F73B50(v17);
  v18 = sub_1BA446CFC();
  sub_1B9F73B50(v18);
  v19 = sub_1BA446EE0();
  sub_1B9F73B50(v19);
  v20 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v21 = sub_1BA4A6AE8();

  [v20 activateConstraints_];

  return v10;
}

id sub_1BA446508()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA446590()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___separator;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___separator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___separator);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69A44A8]) init];
    HKUIOnePixel();
    [v4 setSeparatorThickness_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() opaqueSeparatorColor];
    [v4 setColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1BA44666C()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label;
  v7 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label);
  }

  else
  {
    v40 = v3;
    v9 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    v10 = [objc_opt_self() systemBlueColor];
    [v9 setTextColor_];

    v11 = *MEMORY[0x1E69DDCF8];
    v12 = objc_opt_self();
    v13 = [v12 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:0];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];
    }

    else
    {
      v39 = v0;
      sub_1BA4A3DD8();
      v16 = v11;
      v17 = sub_1BA4A3E88();
      v18 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v43 = v37;
        *v19 = 136315906;
        v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v38 = v16;
        v22 = sub_1B9F0B82C(v20, v21, &v43);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        v41 = 0;
        v42 = 1;
        sub_1BA1508E8();
        v23 = sub_1BA4A6808();
        v25 = sub_1B9F0B82C(v23, v24, &v43);

        *(v19 + 14) = v25;
        *(v19 + 22) = 2080;
        LODWORD(v41) = 0;
        type metadata accessor for SymbolicTraits(0);
        v26 = sub_1BA4A6808();
        v28 = sub_1B9F0B82C(v26, v27, &v43);
        v16 = v38;

        *(v19 + 24) = v28;
        *(v19 + 32) = 2112;
        v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v19 + 34) = v29;
        v30 = v36;
        *v36 = v29;
        _os_log_impl(&dword_1B9F07000, v17, v18, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v19, 0x2Au);
        sub_1B9F8C6C8(v30);
        MEMORY[0x1BFAF43A0](v30, -1, -1);
        v31 = v37;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v31, -1, -1);
        MEMORY[0x1BFAF43A0](v19, -1, -1);
      }

      (*(v2 + 8))(v5, v40);
      v0 = v39;
      v32 = [v12 preferredFontDescriptorWithTextStyle_];
      v15 = [objc_opt_self() fontWithDescriptor:v32 size:0.0];
    }

    [v9 setFont_];

    [v9 setAdjustsFontForContentSizeCategory_];
    v33 = *(v0 + v6);
    *(v0 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v34 = v7;
  return v8;
}

void sub_1BA446AA8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label) = a1;
}

void (*sub_1BA446ABC(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA44666C();
  return sub_1BA446B04;
}

void sub_1BA446B04(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label) = v2;
}

uint64_t sub_1BA446B1C()
{
  sub_1B9F109F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5890;
  v2 = sub_1BA446508();
  v3 = [v2 leadingAnchor];

  v4 = [v0 leadingAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView;
  v7 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView] trailingAnchor];
  v8 = [v0 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v1 + 40) = v9;
  v10 = [*&v0[v6] topAnchor];
  v11 = [v0 topAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v1 + 48) = v12;
  v13 = [*&v0[v6] bottomAnchor];
  v14 = [v0 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v1 + 56) = v15;
  return v1;
}

uint64_t sub_1BA446CFC()
{
  sub_1B9F109F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5890;
  v2 = sub_1BA446590();
  v3 = [v2 topAnchor];

  v4 = sub_1BA446508();
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v6;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___separator;
  v8 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___separator) leadingAnchor];
  v9 = OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView;
  v10 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView) leadingAnchor];
  v11 = [v8 constraintEqualToAnchor_];

  *(v1 + 40) = v11;
  v12 = [*(v0 + v7) trailingAnchor];
  v13 = [*(v0 + v9) trailingAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v1 + 48) = v14;
  v15 = [*(v0 + v7) heightAnchor];
  [*(v0 + v7) separatorThickness];
  v16 = [v15 constraintEqualToConstant_];

  *(v1 + 56) = v16;
  return v1;
}

uint64_t sub_1BA446EE0()
{
  sub_1B9F109F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5890;
  v2 = sub_1BA44666C();
  v3 = [v2 topAnchor];

  v4 = sub_1BA446508();
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:11.0];
  *(v1 + 32) = v6;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView;
  v8 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView) bottomAnchor];
  v9 = OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label;
  v10 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label) bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10 constant:11.0];

  *(v1 + 40) = v11;
  v12 = [*(v0 + v9) leadingAnchor];
  v13 = [*(v0 + v7) leadingAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v1 + 48) = v14;
  v15 = [*(v0 + v9) trailingAnchor];
  v16 = [*(v0 + v7) trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:13.0];

  *(v1 + 56) = v17;
  return v1;
}

void sub_1BA4470E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA44666C();
  v11 = a2;
  v12 = v10;
  if (v11)
  {
    v13 = sub_1BA4A6758();
  }

  else
  {
    v13 = 0;
  }

  [v12 setText_];

  v14 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label);
  v15 = *MEMORY[0x1E69DDCF8];
  v16 = objc_opt_self();
  v17 = v14;
  v18 = [v16 preferredFontDescriptorWithTextStyle:v15 compatibleWithTraitCollection:0];
  v19 = v18;
  if (a3)
  {
    v20 = [v18 fontDescriptorWithSymbolicTraits_];

    v19 = v20;
  }

  if (v19)
  {
    v21 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v22 = v15;
    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v43 = v24;
      v26 = v25;
      v42 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v48 = v44;
      *v26 = 136315906;
      v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v29 = sub_1B9F0B82C(v27, v28, &v48);
      v45 = v22;
      v30 = v29;

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v46 = 0;
      v47 = 1;
      sub_1BA1508E8();
      v31 = sub_1BA4A6808();
      v33 = sub_1B9F0B82C(v31, v32, &v48);

      *(v26 + 14) = v33;
      *(v26 + 22) = 2080;
      LODWORD(v46) = a3;
      type metadata accessor for SymbolicTraits(0);
      v34 = sub_1BA4A6808();
      v36 = sub_1B9F0B82C(v34, v35, &v48);

      *(v26 + 24) = v36;
      v22 = v45;
      *(v26 + 32) = 2112;
      v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v26 + 34) = v37;
      v38 = v42;
      *v42 = v37;
      _os_log_impl(&dword_1B9F07000, v23, v43, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v26, 0x2Au);
      sub_1B9F8C6C8(v38);
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      v39 = v44;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v39, -1, -1);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v40 = [v16 preferredFontDescriptorWithTextStyle_];
    v21 = [objc_opt_self() fontWithDescriptor:v40 size:0.0];
  }

  [v17 setFont_];
}

void sub_1BA4474FC(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView_baseIdentifier];
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 1) = a2;

  if (a2)
  {
    v6 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];

    v7 = sub_1BA44666C();

    MEMORY[0x1BFAF1350](0x7972616D6972502ELL, 0xEE006E6F74747542);
    v8 = sub_1BA4A6758();

    [v7 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    v8 = sub_1BA44666C();
    [v8 setAccessibilityIdentifier_];
  }
}

id ListStyleAccessoryView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ListStyleAccessoryView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA4476FC()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA447758(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id NSBundle.mainStoryboardFile.getter()
{
  result = [v0 infoDictionary];
  if (result)
  {
    v2 = result;
    v3 = sub_1BA4A6628();

    if (*(v3 + 16) && (v4 = sub_1B9F24A34(0xD000000000000014, 0x80000001BA508DD0), (v5 & 1) != 0))
    {
      sub_1B9F0AD9C(*(v3 + 56) + 32 * v4, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BA447ACC(uint64_t a1, uint64_t *a2)
{
  v3 = MEMORY[0x1E69A3348];
  sub_1B9F374E8(a1, v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  v4 = *a2;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailDisclosureCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v7, v4 + v5);
  swift_endAccess();
  sub_1BA447D30();
  return sub_1B9F44700(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v3, sub_1B9F0CDE8);
}

uint64_t sub_1BA447B90@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailDisclosureCell_item;
  swift_beginAccess();
  return sub_1B9F374E8(v1 + v3, a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1BA447C00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailDisclosureCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA447D30();
  return sub_1B9F44700(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
}

void (*sub_1BA447C98(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA447CFC;
}

void sub_1BA447CFC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA447D30();
  }
}

void sub_1BA447D30()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1BA448B2C(0, &qword_1EBBF2B98, MEMORY[0x1E69A3C48], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = &v65 - v4;
  sub_1BA448B2C(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], v2);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v65 - v6;
  v8 = sub_1BA4A3FB8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A3F18();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1BA4A4428();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A4418();
  sub_1BA448B2C(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v17 = swift_allocObject();
  v67 = xmmword_1BA4B5480;
  *(v17 + 16) = xmmword_1BA4B5480;
  (*(v13 + 104))(v15, *MEMORY[0x1E69DBF28], v12);
  v18 = sub_1BA4A3F48();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
  sub_1BA4A75F8();
  v19 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailDisclosureCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v1 + v19, v76, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  if (v77)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, qword_1EDC61778);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v81 = 0;
      v79 = 0u;
      v80 = 0u;
    }
  }

  else
  {
    sub_1B9F44700(v76, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
    v79 = 0u;
    v80 = 0u;
    v81 = 0;
  }

  sub_1B9F374E8(&v79, v76, &qword_1EDC61770, qword_1EDC61778);
  v20 = v77;
  if (v77)
  {
    v21 = v78;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    v22 = (*(v21 + 8))(v20, v21);
    v24 = v23;
    __swift_destroy_boxed_opaque_existential_1(v76);
    if (v24)
    {
      sub_1B9F25350();
      v25 = swift_allocObject();
      *(v25 + 16) = v67;
      *(v25 + 32) = v22;
      *(v25 + 40) = v24;
      v26 = sub_1BA4A6AE8();

      v27 = HKUIJoinStringsForAutomationIdentifier();

      [v1 setAccessibilityIdentifier_];
      goto LABEL_10;
    }
  }

  else
  {
    sub_1B9F44700(v76, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider, sub_1B9F0CDE8);
  }

  [v1 setAccessibilityIdentifier_];
LABEL_10:
  sub_1B9F374E8(v1 + v19, v71, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  if (v72)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EBBF1780);
    if (swift_dynamicCast())
    {
      if (*(&v74 + 1))
      {
        sub_1B9F1134C(&v73, v76);
        v28 = v77;
        v29 = v78;
        __swift_project_boxed_opaque_existential_1(v76, v77);
        (*(v29 + 8))(v28, v29);
        v30 = v68;
        sub_1BA4A43B8();
        v31 = v77;
        v32 = v78;
        __swift_project_boxed_opaque_existential_1(v76, v77);
        (*(v32 + 16))(v31, v32);
        sub_1BA4A41A8();
        __swift_destroy_boxed_opaque_existential_1(v76);
        sub_1B9F44700(&v79, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider, sub_1B9F0CDE8);
        v33 = v70;
        *(&v80 + 1) = v70;
        v81 = MEMORY[0x1E69DC110];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v79);
        v35 = v69;
        (*(v69 + 16))(boxed_opaque_existential_1, v30, v33);
        MEMORY[0x1BFAF1EF0](&v79);
        (*(v35 + 8))(v30, v33);
        return;
      }
    }

    else
    {
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }
  }

  else
  {
    sub_1B9F44700(v71, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  sub_1B9F44700(&v73, &qword_1EBBF1778, &qword_1EBBF1780, &protocol descriptor for SectionedDataSourceItemTitleProviding, sub_1B9F0CDE8);
  sub_1B9F374E8(v1 + v19, v76, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  if (!v77)
  {
    v44 = &qword_1EDC6E1A0;
    v45 = &qword_1EDC6E1B0;
    v46 = MEMORY[0x1E69A3348];
    v47 = sub_1B9F0CDE8;
    v48 = v76;
    goto LABEL_22;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v36 = v73;
  v37 = sub_1BA4A2758();
  v38 = sub_1BA1591A8(v37);

  if (!v38)
  {

LABEL_23:
    sub_1B9F374E8(v1 + v19, v71, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    if (v72)
    {
      sub_1B9F0D950(0, &qword_1EDC6E1B0);
      sub_1B9F0D950(0, &qword_1EBBF2BA8);
      if (swift_dynamicCast())
      {
        if (*(&v74 + 1))
        {
          sub_1B9F1134C(&v73, v76);
          __swift_project_boxed_opaque_existential_1(v76, v77);
          sub_1BA4A82D8();
          v49 = v68;
          sub_1BA4A43B8();
          __swift_destroy_boxed_opaque_existential_1(v76);
          sub_1B9F44700(&v79, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider, sub_1B9F0CDE8);
          v50 = v70;
          *(&v80 + 1) = v70;
          v81 = MEMORY[0x1E69DC110];
          v51 = __swift_allocate_boxed_opaque_existential_1(&v79);
          v52 = v69;
          (*(v69 + 16))(v51, v49, v50);
LABEL_30:
          MEMORY[0x1BFAF1EF0](&v79);
          (*(v52 + 8))(v49, v50);
          return;
        }
      }

      else
      {
        v75 = 0;
        v73 = 0u;
        v74 = 0u;
      }
    }

    else
    {
      sub_1B9F44700(v71, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
      v73 = 0u;
      v74 = 0u;
      v75 = 0;
    }

    sub_1B9F44700(&v73, &unk_1EBBF2BA0, &qword_1EBBF2BA8, MEMORY[0x1E69E6F68], sub_1B9F0CDE8);
    sub_1B9F44700(&v79, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider, sub_1B9F0CDE8);
    v50 = v70;
    *(&v80 + 1) = v70;
    v81 = MEMORY[0x1E69DC110];
    v53 = __swift_allocate_boxed_opaque_existential_1(&v79);
    v52 = v69;
    v49 = v68;
    (*(v69 + 16))(v53, v68, v50);
    goto LABEL_30;
  }

  v39 = sub_1BA4A2778();
  v40 = v66;
  sub_1BA1591BC(v39, v66);
  v41 = v40;

  v42 = sub_1BA4A1D08();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v41, 1, v42) == 1)
  {

    v44 = &qword_1EBBF2B98;
    v45 = MEMORY[0x1E69A3C48];
    v46 = MEMORY[0x1E69E6720];
    v47 = sub_1BA448B2C;
    v48 = v41;
LABEL_22:
    sub_1B9F44700(v48, v44, v45, v46, v47);
    goto LABEL_23;
  }

  v54 = sub_1BA4A1CF8();
  (*(v43 + 8))(v41, v42);
  v55 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  [v55 setProfileIdentifier_];
  [v55 resume];
  v56 = [v55 displayTypeController];
  if (v56)
  {
    v57 = v56;
    v58 = [v56 displayTypeForObjectType_];

    if (v58)
    {
      v59 = [v58 localization];

      v60 = [v59 displayName];
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      v61 = v68;
      sub_1BA4A43B8();

      sub_1B9F44700(&v79, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider, sub_1B9F0CDE8);
      v62 = v70;
      *(&v80 + 1) = v70;
      v81 = MEMORY[0x1E69DC110];
      v63 = __swift_allocate_boxed_opaque_existential_1(&v79);
      v64 = v69;
      (*(v69 + 16))(v63, v61, v62);
      MEMORY[0x1BFAF1EF0](&v79);
      (*(v64 + 8))(v61, v62);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BA448B2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id DataTypeDetailDisclosureCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DataTypeDetailDisclosureCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailDisclosureCell_item];
  v10 = type metadata accessor for DataTypeDetailDisclosureCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id DataTypeDetailDisclosureCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DataTypeDetailDisclosureCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailDisclosureCell_item];
  v4 = type metadata accessor for DataTypeDetailDisclosureCell();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id DataTypeDetailDisclosureCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataTypeDetailDisclosureCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t EmbeddedDataSourceCollectionViewCell.Item.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EmbeddedDataSourceCollectionViewCell.Item.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_1BA449020(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  type metadata accessor for CompoundSectionedDataSource();
  sub_1B9F1DEA0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  swift_unknownObjectRetain();
  v7 = CompoundSectionedDataSource.__allocating_init(_:)(inited);
  v8 = objc_allocWithZone(type metadata accessor for CompoundDataSourceCollectionViewController());
  v9 = CompoundDataSourceCollectionViewController.init(dataSource:)(v7);
  v10 = [objc_opt_self() clearColor];
  v11 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_collectionViewBackgroundColor;
  swift_beginAccess();
  v12 = *&v9[v11];
  *&v9[v11] = v10;

  *a3 = v9;
}

uint64_t sub_1BA44911C(uint64_t a1)
{
  v2 = sub_1BA44AB60();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

void sub_1BA4491B0(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA44920C(uint64_t *a1))(id **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

uint64_t sub_1BA4492A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_eventHandlerSink;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1BA449354(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_eventHandlerSink;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1BA44940C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v2 view];
    if (!v3)
    {
      __break(1u);
      goto LABEL_11;
    }

    v4 = v3;
    [v3 removeFromSuperview];

    [v2 willMoveToParentViewController_];
    [v2 removeFromParentViewController];
    [v2 didMoveToParentViewController_];
  }

  v5 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_collectionViewController];
  if (v5)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = v5;
      v9 = v7;
      [v8 willMoveToParentViewController_];
      [v9 addChildViewController_];
      [v8 didMoveToParentViewController_];

      v10 = [v1 contentView];
      v11 = [v8 view];
      if (v11)
      {
        v12 = v11;
        [v10 addSubview_];

        v13 = [v8 view];
        if (v13)
        {
          v14 = [v1 contentView];
          [v13 hk:v14 alignConstraintsWithView:?];

          return;
        }

LABEL_12:
        __break(1u);
        return;
      }

LABEL_11:
      __break(1u);
      goto LABEL_12;
    }
  }
}

double sub_1BA449600@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v3, v5);
  if (v6)
  {
    sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(a1 + 64) = 0;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    sub_1B9F44760(v5, sub_1B9F7B6F8);
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0;
  }

  return result;
}

uint64_t sub_1BA4496DC(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v7);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v3 + v4, v6);
  swift_beginAccess();
  sub_1B9F63E74(v7, v3 + v4);
  swift_endAccess();
  sub_1BA449794(v6);
  sub_1B9F44760(v6, sub_1B9F7B6F8);
  return sub_1B9F44760(v7, sub_1B9F7B6F8);
}

void sub_1BA449794(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v2 + v4, &v18);
  if (*(&v19 + 1))
  {
    sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
    }
  }

  else
  {
    sub_1B9F44760(&v18, sub_1B9F7B6F8);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
  }

  v18 = v23;
  v19 = v24;
  v20 = v25;
  v21 = v26;
  v22 = v27;
  if (*(&v23 + 1))
  {
    v5 = *(&v20 + 1);
    swift_unknownObjectRetain();
    sub_1B9F44760(&v18, sub_1BA44AB10);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 8))(ObjectType, v5);
    v9 = v8;
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  sub_1B9F68124(a1, v16);
  if (!v17)
  {
    sub_1B9F44760(v16, sub_1B9F7B6F8);
LABEL_16:
    if (!v9)
    {
      return;
    }

    goto LABEL_17;
  }

  sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v10 = swift_getObjectType();
  v11 = (*(v15 + 8))(v10);
  v13 = v12;
  swift_unknownObjectRelease();
  if (!v9)
  {
    if (!v13)
    {
      return;
    }

    goto LABEL_17;
  }

  if (!v13)
  {
LABEL_17:

LABEL_18:
    sub_1BA44A2E0();
    return;
  }

  if (v7 == v11 && v9 == v13)
  {

    return;
  }

  v14 = sub_1BA4A8338();

  if ((v14 & 1) == 0)
  {
    goto LABEL_18;
  }
}

uint64_t sub_1BA449A4C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA449AA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v3, v5);
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA449794(v5);
  sub_1B9F44760(a1, sub_1B9F7B6F8);
  return sub_1B9F44760(v5, sub_1B9F7B6F8);
}

void (*sub_1BA449B58(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item;
  *(v3 + 168) = v1;
  *(v3 + 176) = v5;
  swift_beginAccess();
  sub_1B9F68124(v1 + v5, v4);
  return sub_1BA449BF0;
}

void sub_1BA449BF0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  v4 = *(*a1 + 176);
  if (a2)
  {
    sub_1B9F68124(*a1, v2 + 40);
    sub_1B9F68124(v3 + v4, v2 + 80);
    swift_beginAccess();
    sub_1B9F63E74(v2 + 40, v3 + v4);
    swift_endAccess();
    sub_1BA449794(v2 + 80);
    sub_1B9F44760(v2 + 80, sub_1B9F7B6F8);
  }

  else
  {
    sub_1B9F68124(v3 + v4, v2 + 40);
    swift_beginAccess();
    sub_1B9F63E74(v2, v3 + v4);
    swift_endAccess();
    sub_1BA449794(v2 + 40);
  }

  sub_1B9F44760(v2 + 40, sub_1B9F7B6F8);
  sub_1B9F44760(v2, sub_1B9F7B6F8);

  free(v2);
}

id EmbeddedDataSourceCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id EmbeddedDataSourceCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_eventHandlerSink] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_collectionViewController] = 0;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item];
  v10 = type metadata accessor for EmbeddedDataSourceCollectionViewCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id EmbeddedDataSourceCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void EmbeddedDataSourceCollectionViewCell.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_eventHandlerSink) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_collectionViewController) = 0;
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA44A174(uint64_t a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for EmbeddedDataSourceCollectionViewCell();
  v3 = objc_msgSendSuper2(&v13, sel_preferredLayoutAttributesFittingAttributes_, a1);
  v4 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_collectionViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [v5 collectionView];
    if (v6)
    {
      v7 = v6;
      [v6 layoutIfNeeded];

      v8 = [v5 collectionView];
      if (v8)
      {
        [v8 contentSize];
        v10 = v9;
        v12 = v11;

        [v3 setSize_];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1BA44A2E0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v2, &v19);
  if (*(&v20 + 1))
  {
    sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
    }
  }

  else
  {
    sub_1B9F44760(&v19, sub_1B9F7B6F8);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
  }

  v19 = v24;
  v20 = v25;
  v21 = v26;
  v22 = v27;
  v3 = v28;
  v23 = v28;
  if (*(&v24 + 1))
  {
    v4 = (v22)();
    v5 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_collectionViewController);
    *(v1 + OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_collectionViewController) = v4;
    v6 = v4;
    sub_1BA44940C(v5);

    v7 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins;
    swift_beginAccess();
    *(v6 + v7) = 0;
    v8 = v6;
    v9 = [v8 collectionView];
    if (v9)
    {
      v10 = v9;
      [v9 setLayoutMargins_];

      v11 = [v8 collectionView];
      if (v11)
      {
        v12 = v11;
        v13 = [objc_opt_self() clearColor];
        [v12 setBackgroundColor_];

        v14 = [v8 collectionView];
        if (v14)
        {
          v15 = v14;
          [v14 setClipsToBounds_];

          v16 = [v8 collectionView];
          if (v16)
          {
            [v16 setScrollEnabled_];

            v17 = sub_1B9F23FB0();
            swift_beginAccess();
            v18 = *(v17 + 16);

            [v18 registerObserver_];

            sub_1B9F44760(&v19, sub_1BA44AB10);
            return;
          }

LABEL_15:
          __break(1u);
          return;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }
}

id EmbeddedDataSourceCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmbeddedDataSourceCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA44A674(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1BA449B58(v2);
  return sub_1B9FCDD98;
}

void (*sub_1BA44A6E4(uint64_t *a1))(id **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

unint64_t sub_1BA44A790()
{
  result = qword_1EDC60EC0;
  if (!qword_1EDC60EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC60EC0);
  }

  return result;
}

void sub_1BA44AB10()
{
  if (!qword_1EBBF2BD0)
  {
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2BD0);
    }
  }
}

unint64_t sub_1BA44AB60()
{
  result = qword_1EDC60EB8;
  if (!qword_1EDC60EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC60EB8);
  }

  return result;
}

uint64_t sub_1BA44ABB4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1BA4A8108();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1BA44AC28()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA44AC9C()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  return sub_1BA4A84D8();
}

id sub_1BA44ACF0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController____lazy_storage___tableViewHeightLayoutConstraint;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController____lazy_storage___tableViewHeightLayoutConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController____lazy_storage___tableViewHeightLayoutConstraint];
LABEL_6:
    v12 = v2;
    return v3;
  }

  result = [v0 tableView];
  if (result)
  {
    v5 = result;
    v6 = [result heightAnchor];

    result = [v0 tableView];
    if (result)
    {
      v7 = result;
      [result contentSize];
      v9 = v8;

      v10 = [v6 constraintEqualToConstant_];
      [v10 setActive_];
      v11 = *&v0[v1];
      *&v0[v1] = v10;
      v3 = v10;

      v2 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BA44AED0()
{
  v1 = sub_1BA4A6478();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A64C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A6488();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 dismissViewControllerAnimated:1 completion:{0, v11}];
  v15 = &v0[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_flow];
  v16 = v0[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_flow + 8];
  if (v16 <= 1)
  {
    v23 = v6;
    v17 = *v15;
    sub_1B9F38BF4();
    v22 = v5;
    (*(v10 + 104))(v13, *MEMORY[0x1E69E7F88], v9);
    sub_1BA02040C(v17, v16);
    v18 = sub_1BA4A7338();
    (*(v10 + 8))(v13, v9);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    aBlock[4] = sub_1BA020420;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_124;
    v20 = _Block_copy(aBlock);
    sub_1BA4A64A8();
    v24 = MEMORY[0x1E69E7CC0];
    sub_1B9F0AF18(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
    sub_1B9F3F378();
    sub_1B9F0AF18(&qword_1EDC5E6A0, sub_1B9F3F378);
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v8, v4, v20);
    _Block_release(v20);

    (*(v2 + 8))(v4, v1);
    (*(v23 + 8))(v8, v22);
  }

  return result;
}

void sub_1BA44B2BC()
{
  v1 = v0;
  v2 = type metadata accessor for EmergencyAccessUserStatus();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v40 - v7;
  v9 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_switchCell];
  if (v9)
  {
    v10 = [*(v9 + OBJC_IVAR____TtC18HealthExperienceUI19SwitchTableViewCell_toggleSwitch) isOn];
    v11 = sub_1BA4A2958();
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    sub_1BA2058E0(sub_1BA44C2C8, v12, 0, 0);

    v13 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_healthStore];
    v14 = &v1[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_flow];
    v16 = v1[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_flow + 8];
    v45 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_flow];
    v15 = v45;
    v46 = v16;
    v17 = &v1[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_emergencyStatus];
    sub_1BA020470(&v1[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_emergencyStatus], v8);
    objc_allocWithZone(type metadata accessor for EmergencyAccessBuddyDoneViewController());
    v18 = v13;
    sub_1BA02040C(v15, v16);
    sub_1BA337850(v18, &v45, v8);
    v20 = v19;
    if (!HAFeatureFlagStewieEnabled() || v14[8] < 2u || *(v17 + *(v2 + 20)) != 1)
    {
      [v1 showViewController:v20 sender:v1];
      goto LABEL_10;
    }

    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v1;
    v43 = "eview_medical_id_later_button";
    v22 = qword_1EDC5E100;
    v42 = v20;
    v41 = v1;
    if (v22 != -1)
    {
      swift_once();
    }

    v40[1] = sub_1BA4A1318();
    v40[2] = v23;
    v24 = *v14;
    v25 = v14[8];
    sub_1BA020470(v17, v4);
    v26 = type metadata accessor for EmergencyAccessBuddyStewieViewController();
    v27 = objc_allocWithZone(v26);
    *&v27[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_healthStore] = v18;
    v28 = &v27[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_flow];
    *v28 = v24;
    v28[8] = v25;
    sub_1BA020470(v4, &v27[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_emergencyStatus]);
    v29 = &v27[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_nextVCHandler];
    *v29 = sub_1BA2B7514;
    v29[1] = v21;
    type metadata accessor for EmergencyAccessBuddyStartViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31 = objc_opt_self();
    swift_retain_n();
    v32 = v18;
    sub_1BA02040C(v24, v25);
    v33 = [v31 bundleForClass_];
    v34 = sub_1BA4A6758();
    v35 = [objc_opt_self() imageNamed:v34 inBundle:v33];

    if (v35)
    {
      sub_1BA4A1318();
      v36 = sub_1BA4A6758();

      v37 = sub_1BA4A6758();

      v44.receiver = v27;
      v44.super_class = v26;
      v38 = objc_msgSendSuper2(&v44, sel_initWithTitle_detailText_icon_contentLayout_, v36, v37, v35, 2);

      v20 = v38;
      v39 = [v20 headerView];
      [v39 setAllowFullWidthIcon_];

      sub_1BA0204E8(v4);
      [v41 showViewController:v20 sender:v41];

LABEL_10:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BA44B7FC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_1BA4A7BF8();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_1(&v9);
}

void sub_1BA44B870()
{
  v1 = v0;
  sub_1BA44C244(0, &qword_1EBBF2C30, MEMORY[0x1E69DC168]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v28 - v5;
  v7 = [objc_allocWithZone(type metadata accessor for SwitchTableViewCell()) initWithStyle:0 reuseIdentifier:0];
  [*&v7[OBJC_IVAR____TtC18HealthExperienceUI19SwitchTableViewCell_toggleSwitch] setOn_];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 tertiarySystemGroupedBackgroundColor];
  [v9 setBackgroundColor_];

  v11 = v9;
  v12 = [v11 textLabel];
  if (v12)
  {
    v13 = v12;
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v14 = sub_1BA4A6758();

    [v13 setText_];
  }

  v15 = [v11 textLabel];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() preferredFontForTextStyle_];
    [v16 setFont_];
  }

  v18 = [v11 textLabel];

  if (v18)
  {
    [v18 setNumberOfLines_];
  }

  v19 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_switchCell];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_switchCell] = v11;
  v20 = v11;

  v21 = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v21 hk_onboardingListEdgeInsets];
  [v21 _setSectionContentInset_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setScrollEnabled_];
  v22 = [v8 clearColor];
  [v21 setBackgroundColor_];

  [v1 setTableView_];
  sub_1BA44C1F0();
  sub_1BA4A45D8();
  sub_1BA4A44C8();
  v28 = 0;
  v29 = 0;
  sub_1BA4A4448();
  *(swift_allocObject() + 16) = v20;
  sub_1BA44C244(0, &qword_1EBBF2C40, MEMORY[0x1E69DC1A0]);
  objc_allocWithZone(v23);
  v24 = v20;
  v25 = v21;
  v26 = sub_1BA4A4658();
  sub_1BA4A4678();

  (*(v4 + 8))(v6, v3);
  v27 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_diffableDataSource];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_diffableDataSource] = v26;
}

id sub_1BA44BD48()
{
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    [v1 contentSize];
    v4 = v3;

    v5 = &v0[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_tableViewHeight];
    if (v4 == *&v0[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_tableViewHeight])
    {
LABEL_8:
      v12.receiver = v0;
      v12.super_class = type metadata accessor for EmergencyAccessBuddyLockScreenMedicalIDViewController();
      return objc_msgSendSuper2(&v12, sel_viewDidLayoutSubviews);
    }
  }

  else
  {
    v5 = &v0[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_tableViewHeight];
  }

  result = [v0 view];
  if (result)
  {
    v7 = result;
    [result layoutIfNeeded];

    result = [v0 tableView];
    if (result)
    {
      v8 = result;
      [result contentSize];
      v10 = v9;

      *v5 = v10;
      v11 = sub_1BA44ACF0();
      [v11 setConstant_];

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BA44BF88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmergencyAccessBuddyLockScreenMedicalIDViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EmergencyAccessBuddyLockScreenMedicalIDViewController()
{
  result = qword_1EBBF2C18;
  if (!qword_1EBBF2C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA44C0B8()
{
  result = type metadata accessor for EmergencyAccessUserStatus();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BA44C19C()
{
  result = qword_1EBBF2C28;
  if (!qword_1EBBF2C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2C28);
  }

  return result;
}

unint64_t sub_1BA44C1F0()
{
  result = qword_1EBBF2C38;
  if (!qword_1EBBF2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2C38);
  }

  return result;
}

void sub_1BA44C244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_1BA44C1F0();
    v9[0] = MEMORY[0x1E69E6530];
    v9[1] = &type metadata for EmergencyAccessBuddyLockScreenMedicalIDViewController.RowIdentifiers;
    v9[2] = MEMORY[0x1E69E6540];
    v9[3] = v6;
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t HADataTypeDetailTrendOverlay.trendActive.getter(unint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >= 3)
  {
    sub_1BA4A3E28();
    v6 = sub_1BA4A3E88();
    v7 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_1B9F0B82C(0xD00000000000001CLL, 0x80000001BA509040, &v15);
      *(v8 + 12) = 2080;
      v14 = a1;
      type metadata accessor for TrendOverlay(0);
      v10 = sub_1BA4A6808();
      v12 = sub_1B9F0B82C(v10, v11, &v15);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_1B9F07000, v6, v7, "Unexpected %s type: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v9, -1, -1);
      MEMORY[0x1BFAF43A0](v8, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return a1;
}

unint64_t HKOverlayRoomTrendActive.trendForURL.getter(unint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >= 3)
  {
    sub_1BA4A3E28();
    v6 = sub_1BA4A3E88();
    v7 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA509060, &v15);
      *(v8 + 12) = 2080;
      v14 = a1;
      type metadata accessor for HKOverlayRoomTrendActive(0);
      v10 = sub_1BA4A6808();
      v12 = sub_1B9F0B82C(v10, v11, &v15);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_1B9F07000, v6, v7, "Unexpected %s type: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v9, -1, -1);
      MEMORY[0x1BFAF43A0](v8, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return a1;
}

char *HKTDataTypeDetailFactory.createViewController(userActivity:context:)(void *a1, uint64_t a2)
{
  v183 = a2;
  v215 = sub_1BA4A3EA8();
  v192 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v5 = &v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v188 = &v164 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v175 = &v164 - v9;
  sub_1B9F0CC94(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v186 = &v164 - v14;
  sub_1B9F0CC94(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v182 = &v164 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v180 = &v164 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v187 = &v164 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v178 = &v164 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v184 = &v164 - v24;
  v189 = sub_1BA4A1728();
  v191 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v181 = &v164 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v177 = &v164 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v176 = &v164 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v179 = &v164 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v185 = &v164 - v33;
  v34 = sub_1BA4A35F8();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v190 = &v164 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v164 - v39;
  v41 = [a1 userInfo];
  v42 = MEMORY[0x1E69E7CA0];
  if (!v41)
  {
    v198 = 0u;
    v199 = 0u;
    goto LABEL_11;
  }

  v43 = v41;
  v168 = v12;
  v169 = v2;
  v171 = a1;
  v44 = sub_1BA4A6628();

  v45 = *MEMORY[0x1E69A2B88];
  v173 = *(v35 + 104);
  v174 = v35 + 104;
  v173(v40, v45, v34);
  v46 = sub_1BA4A35E8();
  v48 = v47;
  v49 = *(v35 + 8);
  v170 = v34;
  v172 = v35 + 8;
  v49(v40, v34);
  v205 = v46;
  v206 = v48;
  sub_1BA4A7D58();
  if (!*(v44 + 16) || (v50 = sub_1B9FDA8E4(&v207), (v51 & 1) == 0))
  {

    sub_1B9FDC768(&v207);
    v198 = 0u;
    v199 = 0u;
    v42 = MEMORY[0x1E69E7CA0];
    goto LABEL_11;
  }

  sub_1B9F0AD9C(*(v44 + 56) + 32 * v50, &v198);
  sub_1B9FDC768(&v207);

  v42 = MEMORY[0x1E69E7CA0];
  if (!*(&v199 + 1))
  {
LABEL_11:
    sub_1B9F0E0A0(&v198, &qword_1EDC6E300, v42 + 8, sub_1B9F23398);
    goto LABEL_12;
  }

  sub_1BA0B5A7C();
  if (swift_dynamicCast())
  {
    v52 = v207;
    v53 = [objc_opt_self() dataTypeWithCode_];
    if (v53)
    {
      v165 = v53;
      v166 = v52;
      v54 = v190;
      v55 = v170;
      v173(v190, *MEMORY[0x1E69A2BB8], v170);
      v56 = v184;
      sub_1BA4A70D8();
      v49(v54, v55);
      v57 = *(v191 + 6);
      v58 = v189;
      v59 = v57(v56, 1, v189);
      v167 = v49;
      if (v59 == 1)
      {
        v60 = v56;
        v61 = v58;
        v62 = v191;
      }

      else
      {
        v72 = *(v191 + 4);
        v184 = v191 + 32;
        v164 = v72;
        v72(v185, v56, v58);
        v173(v54, *MEMORY[0x1E69A2BB0], v55);
        v73 = v178;
        sub_1BA4A70D8();
        v74 = v54;
        v60 = v73;
        v49(v74, v55);
        v75 = v57(v73, 1, v58);
        v61 = v58;
        if (v75 != 1)
        {
          v94 = v179;
          v164(v179, v60, v58);
          v95 = v191;
          v96 = *(v191 + 2);
          v96(v176, v185, v61);
          v96(v177, v94, v61);
          v97 = v186;
          sub_1BA4A0F68();
          v98 = sub_1BA4A0FA8();
          (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
          (*(v95 + 7))(v187, 1, 1, v61);
          v99 = MEMORY[0x1E6968130];
          v100 = v168;
          sub_1BA41F398(v97, v168, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
          v101 = type metadata accessor for ChartContext();
          v102 = objc_allocWithZone(v101);
          v103 = &v102[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue];
          *v103 = 0;
          v103[8] = 1;
          v104 = &v102[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
          *v104 = 0;
          v104[8] = 1;
          v105 = &v102[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue];
          *v105 = 0;
          v105[8] = 1;
          v184 = MEMORY[0x1E6969530];
          v106 = v187;
          sub_1BA41F398(v187, &v102[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date], &qword_1EDC6E440, MEMORY[0x1E6969530]);
          sub_1BA41F398(v100, &v102[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval], &qword_1EDC6E2A0, v99);
          *v103 = 0;
          v103[8] = 1;
          *v104 = 0;
          v104[8] = 0;
          *v105 = 0;
          v105[8] = 0;
          v193.receiver = v102;
          v193.super_class = v101;
          v80 = objc_msgSendSuper2(&v193, sel_init);
          sub_1B9F0E0A0(v100, &qword_1EDC6E2A0, v99, sub_1B9F0CC94);
          sub_1B9F0E0A0(v106, &qword_1EDC6E440, v184, sub_1B9F0CC94);
          sub_1B9F0E0A0(v186, &qword_1EDC6E2A0, v99, sub_1B9F0CC94);
          v107 = *(v191 + 1);
          v108 = v189;
          v107(v179, v189);
          v107(v185, v108);
          v81 = v166;
          v77 = v170;
          v79 = v190;
          goto LABEL_23;
        }

        v62 = v191;
        (*(v191 + 1))(v185, v58);
      }

      sub_1B9F0E0A0(v60, &qword_1EDC6E440, MEMORY[0x1E6969530], sub_1B9F0CC94);
      v76 = v190;
      v77 = v170;
      v173(v190, *MEMORY[0x1E69A2BA0], v170);
      v78 = v180;
      sub_1BA4A70D8();
      v79 = v76;
      v167(v76, v77);
      if (v57(v78, 1, v61) == 1)
      {
        sub_1B9F0E0A0(v78, &qword_1EDC6E440, MEMORY[0x1E6969530], sub_1B9F0CC94);
        v80 = 0;
        v81 = v166;
      }

      else
      {
        v82 = v181;
        (*(v62 + 4))(v181, v78, v61);
        v83 = v187;
        (*(v62 + 2))(v187, v82, v61);
        (*(v62 + 7))(v83, 0, 1, v61);
        v84 = MEMORY[0x1E6969530];
        v85 = v182;
        sub_1BA41F398(v83, v182, &qword_1EDC6E440, MEMORY[0x1E6969530]);
        v86 = sub_1BA4A0FA8();
        (*(*(v86 - 8) + 56))(v186, 1, 1, v86);
        v87 = type metadata accessor for ChartContext();
        v88 = objc_allocWithZone(v87);
        v89 = &v88[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue];
        *v89 = 0;
        v89[8] = 1;
        v90 = &v88[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
        *v90 = 0;
        v90[8] = 1;
        v91 = &v88[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue];
        *v91 = 0;
        v91[8] = 1;
        sub_1BA41F398(v85, &v88[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date], &qword_1EDC6E440, v84);
        v185 = MEMORY[0x1E6968130];
        v92 = v186;
        sub_1BA41F398(v186, &v88[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval], &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
        *v89 = 0;
        v89[8] = 1;
        v81 = v166;
        *v90 = 0;
        v90[8] = 0;
        v79 = v190;
        *v91 = 0;
        v91[8] = 0;
        v194.receiver = v88;
        v194.super_class = v87;
        v80 = objc_msgSendSuper2(&v194, sel_init);
        sub_1B9F0E0A0(v187, &qword_1EDC6E440, v84, sub_1B9F0CC94);
        (*(v191 + 1))(v181, v189);
        v93 = v92;
        v77 = v170;
        sub_1B9F0E0A0(v93, &qword_1EDC6E2A0, v185, sub_1B9F0CC94);
        sub_1B9F0E0A0(v182, &qword_1EDC6E440, v84, sub_1B9F0CC94);
      }

LABEL_23:
      v173(v79, *MEMORY[0x1E69A2B90], v77);
      v109 = sub_1BA4A35E8();
      v111 = v110;
      v167(v79, v77);
      v112 = v171;
      v113 = [v171 userInfo];
      if (v113)
      {
        v114 = v113;
        v115 = sub_1BA4A6628();

        v205 = v109;
        v206 = v111;

        sub_1BA4A7D58();
        v116 = v80;
        if (*(v115 + 16) && (v117 = sub_1B9FDA8E4(&v207), (v118 & 1) != 0))
        {
          sub_1B9F0AD9C(*(v115 + 56) + 32 * v117, &v198);
          sub_1B9FDC768(&v207);

          if (*(&v199 + 1))
          {
            if (swift_dynamicCast())
            {
              v190 = sub_1BA44ED94(v207, *(&v207 + 1));
              if (v119)
              {
                *&v207 = 0;
                *(&v207 + 1) = 0xE000000000000000;
                sub_1BA4A7DF8();

                *&v207 = 0xD000000000000012;
                *(&v207 + 1) = 0x80000001BA5090E0;
                MEMORY[0x1BFAF1350](v109, v111);

                MEMORY[0x1BFAF1350](0xD000000000000012, 0x80000001BA509100);
                v120 = v207;
                v5 = v175;
                sub_1BA4A3DD8();

                v121 = sub_1BA4A3E88();
                v122 = sub_1BA4A6FA8();

                if (os_log_type_enabled(v121, v122))
                {
                  v5 = swift_slowAlloc();
                  v191 = swift_slowAlloc();
                  *&v198 = v191;
                  *v5 = 136315394;
                  *(v5 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA5090C0, &v198);
                  *(v5 + 6) = 2082;
                  v207 = v120;
                  LOBYTE(v208) = 1;

                  v123 = sub_1BA4A6808();
                  v125 = sub_1B9F0B82C(v123, v124, &v198);

                  *(v5 + 14) = v125;
                  _os_log_impl(&dword_1B9F07000, v121, v122, "[%s]: %{public}s", v5, 0x16u);
                  v126 = v191;
                  swift_arrayDestroy();
                  MEMORY[0x1BFAF43A0](v126, -1, -1);
                  MEMORY[0x1BFAF43A0](v5, -1, -1);

                  (*(v192 + 8))(v175, v215);
                }

                else
                {

                  (*(v192 + 8))(v5, v215);
                }

                sub_1B9FCB51C();
                swift_allocError();
                *v150 = v120;
                *(v150 + 16) = 1;
                swift_willThrow();

                return v5;
              }

              if (v80)
              {
              }

              else
              {
                v151 = v187;
                (*(v191 + 7))(v187, 1, 1, v189);
                v191 = MEMORY[0x1E6969530];
                v152 = v182;
                sub_1BA41F398(v151, v182, &qword_1EDC6E440, MEMORY[0x1E6969530]);
                v153 = sub_1BA4A0FA8();
                v154 = v186;
                (*(*(v153 - 8) + 56))(v186, 1, 1, v153);
                v155 = type metadata accessor for ChartContext();
                v156 = objc_allocWithZone(v155);
                v157 = &v156[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue];
                *v157 = 0;
                v157[8] = 1;
                v158 = &v156[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
                *v158 = 0;
                v158[8] = 1;
                v159 = &v156[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue];
                *v159 = 0;
                v159[8] = 1;

                v160 = v191;
                sub_1BA41F398(v152, &v156[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date], &qword_1EDC6E440, v191);
                v161 = MEMORY[0x1E6968130];
                sub_1BA41F398(v154, &v156[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval], &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
                *v157 = 0;
                v157[8] = 1;
                *v158 = 0;
                v158[8] = 0;
                v81 = v166;
                *v159 = 0;
                v159[8] = 0;
                v195.receiver = v156;
                v195.super_class = v155;
                v116 = objc_msgSendSuper2(&v195, sel_init);
                sub_1B9F0E0A0(v187, &qword_1EDC6E440, v160, sub_1B9F0CC94);
                v162 = v161;
                v112 = v171;
                sub_1B9F0E0A0(v154, &qword_1EDC6E2A0, v162, sub_1B9F0CC94);
                sub_1B9F0E0A0(v182, &qword_1EDC6E440, v160, sub_1B9F0CC94);
              }

              v163 = &v116[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
              *v163 = v190;
              v163[8] = 0;
            }

            else
            {
            }

            goto LABEL_35;
          }
        }

        else
        {

          sub_1B9FDC768(&v207);
          v198 = 0u;
          v199 = 0u;
        }
      }

      else
      {

        v198 = 0u;
        v199 = 0u;
        v116 = v80;
      }

      sub_1B9F0E0A0(&v198, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, sub_1B9F23398);
LABEL_35:
      v127 = v188;
      sub_1BA4A3DD8();
      v128 = sub_1BA4A3E88();
      v129 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        *&v198 = v131;
        *v130 = 136315138;
        if (v116)
        {
          v132 = v116;
          v133 = [v116 description];
          v134 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v116 = v135;

          v112 = v171;
        }

        else
        {
          v132 = 0;
          v134 = 0;
        }

        *&v207 = v134;
        *(&v207 + 1) = v116;
        sub_1B9F23398(0, &qword_1EDC6E410);
        v136 = sub_1BA4A6808();
        v138 = sub_1B9F0B82C(v136, v137, &v198);

        *(v130 + 4) = v138;
        _os_log_impl(&dword_1B9F07000, v128, v129, "[User Activity] Creating chart context %s", v130, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v131);
        MEMORY[0x1BFAF43A0](v131, -1, -1);
        MEMORY[0x1BFAF43A0](v130, -1, -1);

        (*(v192 + 8))(v188, v215);
        v116 = v132;
        v81 = v166;
      }

      else
      {

        (*(v192 + 8))(v127, v215);
      }

      v139 = v183;
      v140 = *(v183 + 40);
      sub_1B9F0A534(v183, &v205);
      v141 = v140;
      v142 = [v141 profileIdentifier];
      LOBYTE(v207) = 15;
      v143 = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v142, &v207);

      sub_1B9F0A534(v139 + 64, v204);
      sub_1B9F0A534(&v205, &v198);
      *(&v200 + 1) = v141;
      LOBYTE(v201) = v143;
      sub_1BA4A2488();
      swift_allocObject();
      v144 = v116;
      v145 = v112;
      v146 = v141;
      *(&v201 + 1) = sub_1BA4A2468();
      sub_1BA10F7B4(v204, &v196);
      if (v197)
      {

        sub_1B9F43A50(v204, &unk_1EDC6ADB0, &qword_1EDC6ADC0);
        __swift_destroy_boxed_opaque_existential_1(&v205);
        sub_1B9F1134C(&v196, &v207);
      }

      else
      {
        v147 = sub_1BA4A22B8();
        v148 = sub_1BA4A22A8();
        *(&v208 + 1) = v147;
        *&v209 = MEMORY[0x1E69A3CF8];
        *&v207 = v148;
        sub_1B9F43A50(v204, &unk_1EDC6ADB0, &qword_1EDC6ADC0);
        __swift_destroy_boxed_opaque_existential_1(&v205);
        if (v197)
        {
          sub_1B9F43A50(&v196, &unk_1EDC6ADB0, &qword_1EDC6ADC0);
        }
      }

      sub_1B9F1134C(&v207, v202);
      *(&v203 + 1) = v116;
      v211 = v202[0];
      v212 = v202[1];
      v207 = v198;
      v208 = v199;
      v209 = v200;
      v210 = v201;
      v214 = v112;
      v213 = v203;
      v149 = v165;
      v5 = HKTDataTypeDetailFactory.makeViewController(hkType:context:)(v165, &v207);

      sub_1BA114E30(&v207);
      return v5;
    }
  }

LABEL_12:
  sub_1BA4A3DD8();
  v63 = sub_1BA4A3E88();
  v64 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *&v198 = v66;
    *v65 = 136315394;
    *(v65 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA5090C0, &v198);
    *(v65 + 12) = 2082;
    *&v207 = 0xD000000000000033;
    *(&v207 + 1) = 0x80000001BA509080;
    LOBYTE(v208) = 1;
    v67 = sub_1BA4A6808();
    v69 = sub_1B9F0B82C(v67, v68, &v198);

    *(v65 + 14) = v69;
    _os_log_impl(&dword_1B9F07000, v63, v64, "[%s]: %{public}s", v65, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v66, -1, -1);
    MEMORY[0x1BFAF43A0](v65, -1, -1);
  }

  (*(v192 + 8))(v5, v215);
  sub_1B9FCB51C();
  swift_allocError();
  *v70 = 0xD000000000000033;
  *(v70 + 8) = 0x80000001BA509080;
  *(v70 + 16) = 1;
  swift_willThrow();
  return v5;
}

uint64_t HKTDataTypeDetailFactory.createViewController(hkType:pluginName:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA44E2F0(a2, a3, v30);
  if (!v4)
  {
    v26 = v10;
    v13 = v31;
    v14 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v15 = (*(v14 + 8))(a1, a4, v13, v14);
    if (v15)
    {
      a4 = v15;
      __swift_destroy_boxed_opaque_existential_1(v30);
    }

    else
    {
      sub_1BA4A3E08();

      v17 = sub_1BA4A3E88();
      v18 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v33 = v25;
        *v19 = 136315394;
        *(v19 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA5090C0, &v33);
        *(v19 + 12) = 2082;
        v27 = a2;
        v28 = a3;
        v29 = 0;

        v20 = sub_1BA4A6808();
        v22 = sub_1B9F0B82C(v20, v21, &v33);

        *(v19 + 14) = v22;
        _os_log_impl(&dword_1B9F07000, v17, v18, "[%s]: %{public}s", v19, 0x16u);
        v23 = v25;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v23, -1, -1);
        MEMORY[0x1BFAF43A0](v19, -1, -1);
      }

      (*(v26 + 8))(v12, v9);
      sub_1B9FCB51C();
      a4 = swift_allocError();
      *v24 = a2;
      *(v24 + 8) = a3;
      *(v24 + 16) = 0;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  return a4;
}

void *HKTDataTypeDetailFactory.createViewController(hkType:configurationProvider:context:)(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  (*(v7 + 8))(v13, a1, v6, v7);
  if (!v3)
  {
    v8 = DataTypeDetailConfiguration.makeDataSource(context:)(a3);

    sub_1BA114D9C(a3, v13);
    v9 = objc_allocWithZone(type metadata accessor for DataTypeDetailViewController());
    v10 = a1;
    sub_1BA32A8A0(v8, v13, v10);
    a1 = v11;
  }

  return a1;
}

uint64_t sub_1BA44E2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_1BA4A3EA8();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A1B28();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1B58();
  sub_1BA4A1B48();
  v12 = a1;
  v13 = v29;
  sub_1BA4A1B38();
  if (v13)
  {
  }

  v15 = sub_1BA4A1B18();
  (*(v9 + 8))(v11, v8);
  sub_1BA2FCEE4(&v30);

  if (v32)
  {
    return sub_1B9F1134C(&v30, v28);
  }

  sub_1B9F43A50(&v30, &qword_1EBBF0610, &qword_1EDC65730);
  sub_1BA4A3E08();
  v16 = a2;

  v17 = sub_1BA4A3E88();
  v18 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA5090C0, &v33);
    *(v19 + 12) = 2082;
    *&v30 = v12;
    *(&v30 + 1) = v16;
    v31 = 2;

    v21 = sub_1BA4A6808();
    v23 = sub_1B9F0B82C(v21, v22, &v33);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_1B9F07000, v17, v18, "[%s]: PluginDetailViewProviding Error: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v20, -1, -1);
    MEMORY[0x1BFAF43A0](v19, -1, -1);
  }

  (*(v26 + 8))(v7, v27);
  sub_1B9FCB51C();
  swift_allocError();
  *v24 = v12;
  *(v24 + 8) = v16;
  *(v24 + 16) = 2;
  swift_willThrow();
}

uint64_t sub_1BA44E67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_1BA4A3EA8();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A1B28();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1B58();
  sub_1BA4A1B48();
  v12 = a1;
  v13 = v29;
  sub_1BA4A1B38();
  if (v13)
  {
  }

  v15 = sub_1BA4A1B18();
  (*(v9 + 8))(v11, v8);
  sub_1BA2FD600(&v30);

  if (v32)
  {
    return sub_1B9F1134C(&v30, v28);
  }

  sub_1B9F43A50(&v30, &qword_1EBBF05F0, &qword_1EBBF05E8);
  sub_1BA4A3E08();
  v16 = a2;

  v17 = sub_1BA4A3E88();
  v18 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA5048D0, &v33);
    *(v19 + 12) = 2082;
    *&v30 = v12;
    *(&v30 + 1) = v16;
    v31 = 2;

    v21 = sub_1BA4A6808();
    v23 = sub_1B9F0B82C(v21, v22, &v33);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_1B9F07000, v17, v18, "[%s]: PluginDetailViewProviding Error: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v20, -1, -1);
    MEMORY[0x1BFAF43A0](v19, -1, -1);
  }

  (*(v26 + 8))(v7, v27);
  sub_1B9FCB51C();
  swift_allocError();
  *v24 = v12;
  *(v24 + 8) = v16;
  *(v24 + 16) = 2;
  swift_willThrow();
}

uint64_t sub_1BA44EA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_1BA4A3EA8();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A1B28();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1B58();
  sub_1BA4A1B48();
  v12 = a1;
  v13 = v29;
  sub_1BA4A1B38();
  if (v13)
  {
  }

  v15 = sub_1BA4A1B18();
  (*(v9 + 8))(v11, v8);
  sub_1BA2FE438(&v30);

  if (v32)
  {
    return sub_1B9F1134C(&v30, v28);
  }

  sub_1B9F43A50(&v30, &qword_1EBBF05D8, &qword_1EBBF05D0);
  sub_1BA4A3E08();
  v16 = a2;

  v17 = sub_1BA4A3E88();
  v18 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA5090C0, &v33);
    *(v19 + 12) = 2082;
    *&v30 = v12;
    *(&v30 + 1) = v16;
    v31 = 2;

    v21 = sub_1BA4A6808();
    v23 = sub_1B9F0B82C(v21, v22, &v33);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_1B9F07000, v17, v18, "[%s]: PluginDetailViewProviding Error: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v20, -1, -1);
    MEMORY[0x1BFAF43A0](v19, -1, -1);
  }

  (*(v26 + 8))(v7, v27);
  sub_1B9FCB51C();
  swift_allocError();
  *v24 = v12;
  *(v24 + 8) = v16;
  *(v24 + 16) = 2;
  swift_willThrow();
}

uint64_t sub_1BA44ED94(uint64_t result, unint64_t a2)
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
        result = sub_1BA4A7EB8();
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

  v6 = sub_1BA3BA4C0(result, a2, 10);
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

void *HKTDataTypeDetailFactory.createViewController(measure:configurationProvider:context:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  result = (*(v7 + 16))(v11, a1, v6, v7);
  if (!v3)
  {
    v9 = DataTypeDetailConfiguration.makeDataSource(context:)(a3);

    type metadata accessor for DataTypeDetailViewController();
    sub_1BA114D9C(a3, v11);
    sub_1B9F0A534(a1, v10);
    return DataTypeDetailViewController.__allocating_init(dataSource:context:measure:)(v9, v11, v10);
  }

  return result;
}

uint64_t HKTDataTypeDetailFactory.createViewController(measure:pluginName:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA44EA08(a2, a3, v30);
  if (!v4)
  {
    v26 = v10;
    v13 = v31;
    v14 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v15 = (*(v14 + 8))(a1, a4, v13, v14);
    if (v15)
    {
      a4 = v15;
      __swift_destroy_boxed_opaque_existential_1(v30);
    }

    else
    {
      sub_1BA4A3E08();

      v17 = sub_1BA4A3E88();
      v18 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v33 = v25;
        *v19 = 136315394;
        *(v19 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA5090C0, &v33);
        *(v19 + 12) = 2082;
        v27 = a2;
        v28 = a3;
        v29 = 0;

        v20 = sub_1BA4A6808();
        v22 = sub_1B9F0B82C(v20, v21, &v33);

        *(v19 + 14) = v22;
        _os_log_impl(&dword_1B9F07000, v17, v18, "[%s]: %{public}s", v19, 0x16u);
        v23 = v25;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v23, -1, -1);
        MEMORY[0x1BFAF43A0](v19, -1, -1);
      }

      (*(v26 + 8))(v12, v9);
      sub_1B9FCB51C();
      a4 = swift_allocError();
      *v24 = a2;
      *(v24 + 8) = a3;
      *(v24 + 16) = 0;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  return a4;
}

void *HealthChecklistDataSource.init(featureName:source:sendAnalyticsEvent:)(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v47 = a1;
  v8 = sub_1BA4A2A88();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v18 = *a3;
  v17 = a3[1];
  v19 = &v4[OBJC_IVAR____TtC18HealthExperienceUI25HealthChecklistDataSource_analyticsEvent];
  v20 = type metadata accessor for HealthChecklistDataSource();
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  *(v19 + 3) = 0u;
  v50.receiver = v4;
  v50.super_class = v20;
  v21 = objc_msgSendSuper2(&v50, sel_init);
  v22 = v21;
  if (v17 == 4)
  {
  }

  else
  {
    v46 = a2;
    if (a4)
    {
      v23 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x58);
      v43 = v9;
      v45 = v21;
      v23();
      sub_1BA4A2F48();
      v42 = sub_1BA4A2F38();
      v40 = sub_1BA4A2F28();
      v24 = *(v9 + 16);
      v24(v13, v16, v8);
      v25 = v48;
      v24(v48, v16, v8);
      sub_1BA1DBD2C(v18, v17);
      sub_1BA4A2A68();
      v44 = sub_1BA4A6758();

      sub_1BA4A2A68();
      v41 = sub_1BA4A6758();

      sub_1BA1DBD44();
      v39 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v26 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LOBYTE(v23) = v40;
      v38 = [v26 initWithBool_];
      v47 = sub_1BA4A6758();

      *&v49[0] = v18;
      *(&v49[0] + 1) = v17;
      sub_1BA1DB8CC(v23 & 1);
      sub_1BA44F84C(v18, v17);
      v27 = sub_1BA4A6758();

      v28 = *(v43 + 8);
      v28(v25, v8);
      v28(v13, v8);
      v28(v16, v8);
      v29 = v45;
      v30 = (v45 + OBJC_IVAR____TtC18HealthExperienceUI25HealthChecklistDataSource_analyticsEvent);
      v31 = *(v45 + OBJC_IVAR____TtC18HealthExperienceUI25HealthChecklistDataSource_analyticsEvent + 32);
      v32 = *(v45 + OBJC_IVAR____TtC18HealthExperienceUI25HealthChecklistDataSource_analyticsEvent + 48);
      v33 = *(v45 + OBJC_IVAR____TtC18HealthExperienceUI25HealthChecklistDataSource_analyticsEvent + 16);
      v49[0] = *(v45 + OBJC_IVAR____TtC18HealthExperienceUI25HealthChecklistDataSource_analyticsEvent);
      v49[1] = v33;
      v49[2] = v31;
      v49[3] = v32;
      *v30 = v47;
      v30[1] = v27;
      v34 = v41;
      v30[2] = v44;
      v30[3] = v34;
      v35 = v38;
      v30[4] = v39;
      v30[5] = v35;
      v30[6] = v18;
      v30[7] = v17;
      sub_1BA44F85C(v49);
    }

    else
    {

      sub_1BA44F84C(v18, v17);
    }
  }

  return v22;
}

uint64_t sub_1BA44F84C(uint64_t a1, uint64_t a2)
{
  if (a2 != 4)
  {
    return sub_1BA1DBD9C(a1, a2);
  }

  return a1;
}

uint64_t sub_1BA44F85C(uint64_t a1)
{
  sub_1BA44F8B8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA44F8B8()
{
  if (!qword_1EBBF2C50)
  {
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2C50);
    }
  }
}

void sub_1BA44F908()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A2A88();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25HealthChecklistDataSource_analyticsEvent + 16);
  v60 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25HealthChecklistDataSource_analyticsEvent);
  v61 = v10;
  v11 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25HealthChecklistDataSource_analyticsEvent + 48);
  v62 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25HealthChecklistDataSource_analyticsEvent + 32);
  v63 = v11;
  if (v60)
  {
    v45 = v3;
    v46 = v2;
    v47 = v60;
    v48 = *(&v63 + 1);
    v49 = v63;
    v40 = ObjectType;
    v41 = v62;
    v12 = v61;
    v43 = *(&v62 + 1);
    v44 = *(&v61 + 1);
    v42 = *(&v60 + 1);
    v13 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
    sub_1BA45011C(&v60, &v56);
    v14 = v12;
    v13();
    v15 = v5;
    v16 = v48;
    sub_1BA4A2A68();
    (*(v7 + 8))(v9, v6);
    v17 = sub_1BA4A6758();

    v18 = v17;

    sub_1BA0B2740();
    LOBYTE(v17) = sub_1BA4A7798();
    v44 = v14;

    v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    sub_1BA4A2F48();
    sub_1BA4A2F38();
    v20 = sub_1BA4A2F28();

    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];

    *&v56 = v49;
    *(&v56 + 1) = v16;
    sub_1BA1DBD2C(v49, v16);
    sub_1BA1DB8CC([v21 BOOLValue]);
    sub_1BA1DBD9C(v56, *(&v56 + 1));
    v43 = sub_1BA4A6758();

    sub_1BA4A3E58();
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v56 = v25;
      *v24 = 136315394;
      v26 = sub_1BA4A85D8();
      v42 = v15;
      v28 = v19;
      v29 = sub_1B9F0B82C(v26, v27, &v56);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      swift_beginAccess();
      v31 = qword_1EBBEDEA0;
      v30 = off_1EBBEDEA8;

      v32 = sub_1B9F0B82C(v31, v30, &v56);
      v19 = v28;

      *(v24 + 14) = v32;
      _os_log_impl(&dword_1B9F07000, v22, v23, "[%s]: Submitting %s analytics event (in|active)", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);

      (*(v45 + 8))(v42, v46);
    }

    else
    {

      (*(v45 + 8))(v15, v46);
    }

    v33 = v47;
    v34 = v48;
    v36 = v43;
    v35 = v44;
    *&v51 = v47;
    *(&v51 + 1) = v43;
    *&v52 = v44;
    *(&v52 + 1) = v18;
    *&v53 = v19;
    *(&v53 + 1) = v21;
    v37 = v49;
    *&v54 = v49;
    *(&v54 + 1) = v48;
    v56 = v51;
    v57 = v52;
    v58 = v53;
    v59 = v54;
    v38 = sub_1BA4A29B8();
    sub_1BA450180(&v51, v55);
    v39 = sub_1BA4A29A8();
    v50[3] = v38;
    v50[4] = MEMORY[0x1E69A3198];
    v50[0] = v39;
    sub_1BA0C33E0();
    sub_1BA4A2B58();
    v55[0] = v56;
    v55[1] = v57;
    v55[2] = v58;
    v55[3] = v59;
    sub_1BA0C3434(v55);
    __swift_destroy_boxed_opaque_existential_1(v50);
    *&v56 = v33;
    *(&v56 + 1) = v36;
    *&v57 = v35;
    *(&v57 + 1) = v18;
    *&v58 = v19;
    *(&v58 + 1) = v21;
    *&v59 = v37;
    *(&v59 + 1) = v34;
    sub_1BA0C3434(&v56);
  }
}

id HealthChecklistDataSource.__deallocating_deinit()
{
  sub_1BA44F908();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthChecklistDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id HealthChecklistDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_1BA450094(void *result, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {

    return sub_1BA1DBD9C(a7, a8);
  }

  return result;
}

uint64_t sub_1BA45011C(uint64_t a1, uint64_t a2)
{
  sub_1BA44F8B8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA4501DC(uint64_t a1, CGContext *a2)
{
  v34.receiver = v2;
  v34.super_class = type metadata accessor for PDFWithCustomFooterTextPage();
  objc_msgSendSuper2(&v34, sel_drawWithBox_toContext_, a1, a2);
  UIGraphicsPushContext(a2);
  CGContextSaveGState(a2);
  [v2 boundsForBox_];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  CGContextTranslateCTM(a2, 0.0, v11);
  CGContextScaleCTM(a2, 1.0, -1.0);
  v13 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EBBEE758);
  v14 = sub_1BA4A6AE8();
  v15 = [v13 bestPaperForPageSize:v14 withPapersFromArray:{612.0, 792.0}];

  [v15 paperSize];
  v35.origin.x = v6;
  v35.origin.y = v8;
  v35.size.width = v10;
  v35.size.height = v12;
  v16 = CGRectGetMinX(v35) + 36.0;
  v36.origin.x = v6;
  v36.origin.y = v8;
  v36.size.width = v10;
  v36.size.height = v12;
  MaxX = CGRectGetMaxX(v36);
  v37.origin.x = v6;
  v37.origin.y = v8;
  v37.size.width = v10;
  v37.size.height = v12;
  v18 = CGRectGetMaxY(v37) + -36.0;
  v19 = _s18HealthExperienceUI11PDFDefaultsO6FooterO05appleA6StringSo012NSAttributedG0CvgZ_0();
  [v19 size];
  [v19 drawAtPoint_];
  v21 = [v2 pageRef];
  if (v21)
  {
    v22 = v21;
    PageNumber = CGPDFPageGetPageNumber(v21);

    v24 = [v2 document];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 pageCount];

      v27 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x50))(PageNumber, v26);
      type metadata accessor for Key(0);
      sub_1BA4515D8(&qword_1EDC5E3D0, type metadata accessor for Key);
      v28 = sub_1BA4A6618();
      [v27 sizeWithAttributes_];
      v30 = v29;
      v32 = v31;

      v33 = sub_1BA4A6618();

      [v27 drawAtPoint:v33 withAttributes:{MaxX + -36.0 - v30, v18 - v32}];
    }
  }

  CGContextRestoreGState(a2);
  UIGraphicsPopContext();
}

uint64_t sub_1BA4505E8()
{
  sub_1B9F0ADF8(0, &qword_1EDC5E0C0);
  v0 = sub_1BA4A77C8();
  sub_1B9FDB1C4(MEMORY[0x1E69E7CC0]);
  return v0;
}

Swift::tuple_NSString_OpaquePointer __swiftcall PDFPageNumberedPage.footerString(pageNumber:pageCount:)(Swift::Int pageNumber, Swift::Int pageCount)
{
  _s18HealthExperienceUI11PDFDefaultsO6FooterO19pageIndicatorString0F6Number0F5CountSSSi_SitFZ_0(pageNumber, pageCount);
  v2 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v3 = sub_1BA4A6758();

  v4 = [v2 initWithString_];

  v5 = _s18HealthExperienceUI11PDFDefaultsO4TextO17captionAttributesSDySo21NSAttributedStringKeyaypGvgZ_0();
  v6 = v4;
  result._1._rawValue = v5;
  result._0 = v6;
  return result;
}

id PDFPageNumberedPage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PDFPageNumberedPage.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1BA4507F4(void *a1)
{
  v3 = objc_allocWithZone(v1);
  type metadata accessor for ImageInitializationOption(0);
  sub_1BA4515D8(&qword_1EBBE90B8, type metadata accessor for ImageInitializationOption);
  v4 = sub_1BA4A6618();

  v5 = [v3 initWithImage:a1 options:v4];

  return v5;
}

id PDFPageNumberedPage.init(image:options:)(void *a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for ImageInitializationOption(0);
  sub_1BA4515D8(&qword_1EBBE90B8, type metadata accessor for ImageInitializationOption);
  v4 = sub_1BA4A6618();

  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithImage_options_, a1, v4);

  if (v5)
  {
  }

  return v5;
}

id PDFPageNumberedPage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA450AF8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  _s18HealthExperienceUI11PDFDefaultsO4TextO17captionAttributesSDySo21NSAttributedStringKeyaypGvgZ_0();
  v0 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v1 = sub_1BA4A6758();

  type metadata accessor for Key(0);
  sub_1BA4515D8(&qword_1EDC5E3D0, type metadata accessor for Key);
  v2 = sub_1BA4A6618();

  v3 = [v0 initWithString:v1 attributes:{v2, 0xE000000000000000}];

  return v3;
}

id sub_1BA450CA4(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for ImageInitializationOption(0);
  sub_1BA4515D8(&qword_1EBBE90B8, type metadata accessor for ImageInitializationOption);
  v6 = sub_1BA4A6618();

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithImage_options_, a1, v6);

  if (v8)
  {
  }

  return v8;
}

id sub_1BA450DA8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for ImageInitializationOption(0);
  sub_1BA4515D8(&qword_1EBBE90B8, type metadata accessor for ImageInitializationOption);
  sub_1BA4A6628();
  v8 = a3;
  v9 = sub_1BA4A6618();

  v13.receiver = a1;
  v13.super_class = a5(v10);
  v11 = objc_msgSendSuper2(&v13, sel_initWithImage_options_, v8, v9);

  if (v11)
  {
  }

  return v11;
}

id sub_1BA450EDC()
{
  v1 = [v0 pageRef];
  if (v1 && (v2 = v1, PageNumber = CGPDFPageGetPageNumber(v1), v2, (v4 = [v0 document]) != 0))
  {
    v5 = v4;
    v6 = [v4 pageCount];

    _s18HealthExperienceUI11PDFDefaultsO6FooterO19pageIndicatorString0F6Number0F5CountSSSi_SitFZ_0(PageNumber, v6);
    _s18HealthExperienceUI11PDFDefaultsO4TextO17captionAttributesSDySo21NSAttributedStringKeyaypGvgZ_0();
    v7 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v8 = sub_1BA4A6758();
  }

  else
  {
    _s18HealthExperienceUI11PDFDefaultsO4TextO17captionAttributesSDySo21NSAttributedStringKeyaypGvgZ_0();
    v7 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v8 = sub_1BA4A6758();
  }

  type metadata accessor for Key(0);
  sub_1BA4515D8(&qword_1EDC5E3D0, type metadata accessor for Key);
  v9 = sub_1BA4A6618();

  v10 = [v7 initWithString:v8 attributes:v9];

  return v10;
}

void sub_1BA4510BC(uint64_t a1, CGContext *a2)
{
  v40.receiver = v2;
  v40.super_class = type metadata accessor for PDFPageAlignedNumberedPageWithCustomNotice();
  objc_msgSendSuper2(&v40, sel_drawWithBox_toContext_, a1, a2);
  v5 = sub_1BA450EDC();
  [v5 size];
  rect_8 = v6;
  rect_24 = v7;
  v8 = _s18HealthExperienceUI11PDFDefaultsO6FooterO05appleA6StringSo012NSAttributedG0CvgZ_0();
  v9 = [v8 size];
  rect_16 = v10;
  v11 = MEMORY[0x1E69E7D40];
  v12 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x50))(v9);
  UIGraphicsPushContext(a2);
  CGContextSaveGState(a2);
  [v2 boundsForBox_];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  CGContextTranslateCTM(a2, 0.0, v19);
  CGContextScaleCTM(a2, 1.0, -1.0);
  v21 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EBBEE758);
  v22 = sub_1BA4A6AE8();
  v23 = [v21 bestPaperForPageSize:v22 withPapersFromArray:{612.0, 792.0}];

  [v23 paperSize];
  v41.origin.x = v14;
  v41.origin.y = v16;
  v41.size.width = v18;
  v41.size.height = v20;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = v14;
  v42.origin.y = v16;
  v42.size.width = v18;
  v42.size.height = v20;
  v25 = CGRectGetHeight(v42) + -36.0;
  v26 = *((*v11 & *v2) + 0x58);
  rect = v14;
  if (v26())
  {
    v43.origin.x = v14;
    v43.origin.y = v16;
    v43.size.width = v18;
    v43.size.height = v20;
    v27 = [v12 boundingRectWithSize:1 options:0 context:{CGRectGetWidth(v43) + -36.0 + -36.0, 1.79769313e308}];
    v29 = v28;
    v31 = v30;
  }

  else
  {
    v27 = [v12 size];
    v29 = v32;
    v31 = v33;
  }

  v34 = MinX + 36.0;
  if ((v26)(v27))
  {
    [v12 drawWithRect:1 options:0 context:{v34, v25 - v31, v29, v31}];
  }

  else
  {
    [v12 drawAtPoint_];
  }

  v35 = v25 - (v31 + 4.0);
  v44.origin.x = rect;
  v44.origin.y = v16;
  v44.size.width = v18;
  v44.size.height = v20;
  [v5 drawAtPoint_];
  [v8 drawAtPoint_];
  CGContextRestoreGState(a2);
  UIGraphicsPopContext();
}

id sub_1BA4514C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1BA451514(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1BA4515A0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA4515D8(unint64_t *a1, void (*a2)(uint64_t))
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

id PDFArticle.title.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;
  return v2;
}

uint64_t PDFArticle.image.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 80);
  v10 = *(v1 + 64);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 96);
  v6 = *(v1 + 32);
  v9[0] = *(v1 + 16);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1BA4517E8(v9, v8);
}

uint64_t sub_1BA4517E8(uint64_t a1, uint64_t a2)
{
  sub_1BA45184C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA45184C()
{
  if (!qword_1EBBF2C58)
  {
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2C58);
    }
  }
}

uint64_t sub_1BA4518A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *PDFArticle.init(title:titleAttributes:image:body:bodyAttributes:spacing:spaceBelowArticleTitle:addLineOfSpaceBelowArticle:)@<X0>(uint64_t a1@<X3>, uint64_t (*a2)(uint64_t)@<X4>, char a3@<W7>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{

  v13 = a2(v12);
  v14 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v15 = sub_1BA4A6758();

  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v16 = sub_1BA4A6618();

  v17 = [v14 initWithString:v15 attributes:v16];

  *a4 = v17;
  *(a4 + 8) = 0;
  v18 = *(a1 + 48);
  *(a4 + 48) = *(a1 + 32);
  *(a4 + 64) = v18;
  *(a4 + 80) = *(a1 + 64);
  *(a4 + 96) = *(a1 + 80);
  v19 = *(a1 + 16);
  *(a4 + 16) = *a1;
  *(a4 + 32) = v19;
  v21 = 0;
  *(a4 + 128) = &type metadata for PDFAttributedStrings;
  *(a4 + 136) = &protocol witness table for PDFAttributedStrings;
  *(a4 + 144) = &protocol witness table for PDFAttributedStrings;
  result = PDFAttributedStrings.init(alignment:lineSplit:items:)(&v21, 1, v13, a4 + 104);
  *(a4 + 152) = a5;
  *(a4 + 160) = a6;
  *(a4 + 168) = a3;
  return result;
}

char *PDFArticle.init(title:titleAttributes:image:body:bodyAttributes:spacing:spaceBelowArticleTitle:addLineOfSpaceBelowArticle:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, char a3@<W6>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{

  v12 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v13 = sub_1BA4A6758();

  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v14 = sub_1BA4A6618();

  v15 = [v12 initWithString:v13 attributes:v14];

  *a4 = v15;
  *(a4 + 8) = 0;
  v16 = *(a1 + 48);
  *(a4 + 48) = *(a1 + 32);
  *(a4 + 64) = v16;
  *(a4 + 80) = *(a1 + 64);
  *(a4 + 96) = *(a1 + 80);
  v17 = *(a1 + 16);
  *(a4 + 16) = *a1;
  *(a4 + 32) = v17;
  v19 = 0;
  *(a4 + 128) = &type metadata for PDFAttributedStrings;
  *(a4 + 136) = &protocol witness table for PDFAttributedStrings;
  *(a4 + 144) = &protocol witness table for PDFAttributedStrings;
  result = PDFAttributedStrings.init(alignment:lineSplit:items:)(&v19, 1, a2, a4 + 104);
  *(a4 + 152) = a5;
  *(a4 + 160) = a6;
  *(a4 + 168) = a3;
  return result;
}

void PDFArticle.render(context:document:)(objc_class *a1, uint64_t a2)
{
  if (*(v2 + 9))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  sub_1BA3265EC(a1, a2, *v2, v5 | *(v2 + 8));
  v6 = *(v2 + 160);
  v55.origin.x = PDFBuilder.Document.drawingContext.getter();
  x = v55.origin.x;
  y = v55.origin.y;
  width = v55.size.width;
  height = v55.size.height;
  v11 = CGRectGetMinX(v55) + 0.0;
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = width;
  v56.size.height = height;
  v12 = v6 + CGRectGetMinY(v56);
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  v13 = CGRectGetWidth(v57);
  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = width;
  v58.size.height = height;
  v14 = CGRectGetHeight(v58);
  *(a2 + 168) = v11;
  *(a2 + 176) = v12;
  *(a2 + 184) = v13;
  *(a2 + 192) = v14 - v6;
  *(a2 + 200) = 0;
  v15 = *(v2 + 64);
  v53[2] = *(v2 + 48);
  v53[3] = v15;
  v53[4] = *(v2 + 80);
  v54 = *(v2 + 96);
  v16 = *(v2 + 32);
  v53[0] = *(v2 + 16);
  v53[1] = v16;
  if (v16)
  {
    v47 = *(v2 + 40);
    v48 = *(v2 + 56);
    v49 = *(v2 + 72);
    v50 = *(v2 + 88);
    v17 = *(v2 + 64);
    v51[2] = *(v2 + 48);
    v51[3] = v17;
    v51[4] = *(v2 + 80);
    v18 = *(v2 + 32);
    v45 = *(v2 + 16);
    v46 = v16;
    v52 = *(v2 + 96);
    v51[0] = v45;
    v51[1] = v18;
    sub_1BA326508(v51, v44);
    PDFImage.render(context:document:)(a1, a2);
    v19 = *(v2 + 152);
    v20 = *(a2 + 168);
    v21 = *(a2 + 176);
    v22 = *(a2 + 184);
    v23 = *(a2 + 192);
    v59.origin.x = v20;
    v59.origin.y = v21;
    v59.size.width = v22;
    v59.size.height = v23;
    v24 = CGRectGetMinX(v59) + 0.0;
    v60.origin.x = v20;
    v60.origin.y = v21;
    v60.size.width = v22;
    v60.size.height = v23;
    v25 = v19 + CGRectGetMinY(v60);
    v61.origin.x = v20;
    v61.origin.y = v21;
    v61.size.width = v22;
    v61.size.height = v23;
    v26 = CGRectGetWidth(v61);
    v62.origin.x = v20;
    v62.origin.y = v21;
    v62.size.width = v22;
    v62.size.height = v23;
    v27 = CGRectGetHeight(v62);
    sub_1BA451F28(v53);
    *(a2 + 168) = v24;
    *(a2 + 176) = v25;
    *(a2 + 184) = v26;
    *(a2 + 192) = v27 - v19;
    *(a2 + 200) = 0;
  }

  v28 = *(v2 + 128);
  v29 = *(v2 + 144);
  __swift_project_boxed_opaque_existential_1((v2 + 104), v28);
  (*(v29 + 16))(a1, a2, v28, v29);
  if (*(v2 + 168) == 1)
  {
    v30 = *(v2 + 128);
    v31 = *(v2 + 136);
    __swift_project_boxed_opaque_existential_1((v2 + 104), v30);
    v32 = (*(v31 + 8))(v30, v31);
    v33 = NSAttributedString.font.getter();

    if (v33)
    {
      [v33 lineHeight];
      v35 = v34;

      v36 = *(a2 + 168);
      v37 = *(a2 + 176);
      v38 = *(a2 + 184);
      v39 = *(a2 + 192);
      v63.origin.x = v36;
      v63.origin.y = v37;
      v63.size.width = v38;
      v63.size.height = v39;
      v40 = CGRectGetMinX(v63) + 0.0;
      v64.origin.x = v36;
      v64.origin.y = v37;
      v64.size.width = v38;
      v64.size.height = v39;
      v41 = v35 + CGRectGetMinY(v64);
      v65.origin.x = v36;
      v65.origin.y = v37;
      v65.size.width = v38;
      v65.size.height = v39;
      v42 = CGRectGetWidth(v65);
      v66.origin.x = v36;
      v66.origin.y = v37;
      v66.size.width = v38;
      v66.size.height = v39;
      v43 = CGRectGetHeight(v66);
      *(a2 + 168) = v40;
      *(a2 + 176) = v41;
      *(a2 + 184) = v42;
      *(a2 + 192) = v43 - v35;
      *(a2 + 200) = 0;
    }
  }
}

uint64_t sub_1BA451F28(uint64_t a1)
{
  sub_1BA45184C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double PDFArticle.boundingRectForContent(in:)(uint64_t a1)
{
  v2 = v1;
  v43 = *MEMORY[0x1E69E9840];
  sub_1BA281A54();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 9);
  *(inited + 56) = &type metadata for PDFArticleTitle;
  *(inited + 64) = &protocol witness table for PDFArticleTitle;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 41) = v7;
  v8 = *(v1 + 128);
  v9 = *(v2 + 144);
  v10 = __swift_project_boxed_opaque_existential_1((v2 + 104), v8);
  *(inited + 96) = v8;
  *(inited + 104) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
  v12 = *(v2 + 64);
  v36[2] = *(v2 + 48);
  v36[3] = v12;
  v36[4] = *(v2 + 80);
  v37 = *(v2 + 96);
  v13 = *(v2 + 32);
  v36[0] = *(v2 + 16);
  v36[1] = v13;
  v14 = v13;
  v15 = *(v2 + 40);
  v16 = *(v2 + 56);
  v17 = *(v2 + 72);
  v41 = *(v2 + 88);
  v42 = v36[0];
  v39 = v16;
  v40 = v17;
  v38 = v15;
  v18 = v5;
  if (v14)
  {
    sub_1BA4517E8(v36, &v33);
    inited = sub_1BA27FAAC(1, 3, 1, inited);
    v34 = &type metadata for PDFImage;
    v35 = &protocol witness table for PDFImage;
    v19 = swift_allocObject();
    *&v33 = v19;
    *(v19 + 16) = v42;
    *(v19 + 32) = v14;
    v20 = v39;
    *(v19 + 40) = v38;
    *(v19 + 56) = v20;
    v21 = v41;
    *(v19 + 72) = v40;
    *(v19 + 88) = v21;
    *(inited + 16) = 3;
    sub_1B9F25598(&v33, inited + 112);
  }

  v22 = *(inited + 16);
  if (v22)
  {
    v23 = inited + 32;
    v24 = 0.0;
    do
    {
      sub_1B9F0A534(v23, &v33);
      v25 = v34;
      v26 = v35;
      __swift_project_boxed_opaque_existential_1(&v33, v34);
      v44.origin.x = (v26[3])(a1, v25, v26);
      v24 = v24 + CGRectGetHeight(v44);
      __swift_destroy_boxed_opaque_existential_1(&v33);
      v23 += 40;
      --v22;
    }

    while (v22);

    if ((*(v2 + 168) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if ((*(v2 + 168) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v27 = *(v2 + 128);
  v28 = *(v2 + 136);
  __swift_project_boxed_opaque_existential_1((v2 + 104), v27);
  v29 = (*(v28 + 8))(v27, v28);
  v30 = NSAttributedString.font.getter();

  if (v30)
  {
    [v30 lineHeight];
  }

LABEL_11:
  v31 = PDFBuilder.Document.drawingContext.getter();
  CGRectGetWidth(*(a1 + 168));
  return v31;
}

double PDFArticle.minimumBoundingRectForContent(in:)(uint64_t a1)
{
  v2 = v1;
  v29 = *MEMORY[0x1E69E9840];
  sub_1BA281A54();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 9);
  *(inited + 56) = &type metadata for PDFArticleTitle;
  *(inited + 64) = &protocol witness table for PDFArticleTitle;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 41) = v7;
  v8 = *(v1 + 32);
  v23 = *(v1 + 16);
  v24 = v8;
  v28 = *(v1 + 96);
  v9 = *(v1 + 80);
  v26 = *(v1 + 64);
  v27 = v9;
  v25 = *(v1 + 48);
  v10 = v24;
  v11 = v5;
  if (v24)
  {
    sub_1BA4517E8(&v23, &v20);
    inited = sub_1BA27FAAC(1, 2, 1, inited);
    v21 = &type metadata for PDFImage;
    v22 = &protocol witness table for PDFImage;
    v12 = swift_allocObject();
    *&v20 = v12;
    *(v12 + 16) = v2[1];
    *(v12 + 32) = v10;
    *(v12 + 40) = *(v2 + 40);
    *(v12 + 56) = *(v2 + 56);
    *(v12 + 72) = *(v2 + 72);
    *(v12 + 88) = *(v2 + 88);
    *(inited + 16) = 2;
    sub_1B9F25598(&v20, inited + 72);
    v13 = *(inited + 16);
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = 1;
  }

  v14 = inited + 32;
  v15 = 0.0;
  do
  {
    sub_1B9F0A534(v14, &v20);
    v16 = v21;
    v17 = v22;
    __swift_project_boxed_opaque_existential_1(&v20, v21);
    v30.origin.x = (v17[4])(a1, v16, v17);
    v15 = v15 + CGRectGetHeight(v30);
    __swift_destroy_boxed_opaque_existential_1(&v20);
    v14 += 40;
    --v13;
  }

  while (v13);
LABEL_7:

  v18 = PDFBuilder.Document.drawingContext.getter();
  CGRectGetWidth(*(a1 + 168));
  return v18;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI8PDFImageVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
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
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1BA452550(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
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

uint64_t sub_1BA452598(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA452614(uint64_t a1)
{
  v46 = a1;
  v1 = sub_1BA4A1798();
  v44 = *(v1 - 8);
  v45 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v43 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA452CC0();
  v42 = v3;
  *&v40 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  v9 = sub_1BA4A33C8();
  v47 = *(v9 - 8);
  v10 = v47;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SummarySharingProfileHeaderCell.Item();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v10 + 16);
  v17(v12, v46, v9, v14);
  *v16 = 0xD000000000000019;
  v16[1] = 0x80000001BA509460;
  type metadata accessor for SummarySharingProfileHeaderCell();
  sub_1BA4A71C8();
  v18 = v16 + *(v13 + 20);
  v41 = v9;
  (v17)(v18, v12, v9);
  v19 = v40;
  v20 = v42;
  (*(v40 + 16))(v5, v8, v42);
  v21 = sub_1BA452D28();
  sub_1BA4A3468();
  (*(v19 + 8))(v8, v20);
  v22 = *(v47 + 8);
  v47 += 8;
  v42 = v22;
  v22(v12, v9);
  sub_1BA4A3428();
  swift_storeEnumTagMultiPayload();
  sub_1B9FF6758();
  inited = swift_initStackObject();
  v40 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F28360();
  v24 = swift_allocObject();
  *(v24 + 16) = v40;
  *(v24 + 56) = v13;
  *(v24 + 64) = v21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v24 + 32));
  v26 = v16;
  sub_1BA452D80(v16, boxed_opaque_existential_1);
  v27 = v43;
  sub_1BA4A1788();
  v28 = sub_1BA4A1748();
  v30 = v29;
  v31 = v45;
  v32 = *(v44 + 8);
  v32(v27, v45);
  v33 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = sub_1B9F1C5F0(v33);
  *(inited + 32) = 0;
  *(inited + 40) = 0;

  *(inited + 48) = v24;
  v34 = Array<A>.identifierToIndexDict()(v24);

  *(inited + 56) = v34;
  *(inited + 64) = v28;
  *(inited + 72) = v30;
  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  strcpy(v48, "MutableArray<");
  HIWORD(v48[1]) = -4864;
  sub_1BA4A1788();
  v35 = sub_1BA4A1748();
  v37 = v36;
  v32(v27, v31);
  MEMORY[0x1BFAF1350](v35, v37);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v38 = MutableArrayDataSource.init(arrangedSections:identifier:)(inited, v48[0], v48[1]);
  v42(v46, v41);
  sub_1BA452DE4(v26);
  return v38;
}

uint64_t sub_1BA452B50()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SummarySharingProfileHeaderDataSource()
{
  result = qword_1EBBF2C60;
  if (!qword_1EBBF2C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA452CC0()
{
  if (!qword_1EBBF2C70)
  {
    type metadata accessor for SummarySharingProfileHeaderCell();
    type metadata accessor for SummarySharingProfileHeaderCell.Item();
    v0 = sub_1BA4A71D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2C70);
    }
  }
}

unint64_t sub_1BA452D28()
{
  result = qword_1EBBF2C78;
  if (!qword_1EBBF2C78)
  {
    type metadata accessor for SummarySharingProfileHeaderCell.Item();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2C78);
  }

  return result;
}

uint64_t sub_1BA452D80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarySharingProfileHeaderCell.Item();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA452DE4(uint64_t a1)
{
  v2 = type metadata accessor for SummarySharingProfileHeaderCell.Item();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA452E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (!result)
  {
    sub_1BA4A7DF8();

    v5 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v5);

    MEMORY[0x1BFAF1350](0xD000000000000023, 0x80000001BA4EAFF0);
    sub_1B9FF806C();
    swift_allocError();
    *v6 = 91;
    *(v6 + 8) = 0xE100000000000000;
    *(v6 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

char *sub_1BA452F28(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  sub_1BA15E094();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  *(v6 + 32) = a2;
  v7 = a2;
  v8 = _s18HealthExperienceUI31SearchSectionDataSourceProviderC38makeCategoriesFetchedResultsController7context14sourceProfilesSo09NSFetchedlM0Cy0A8Platform8FeedItemCGSo22NSManagedObjectContextC_SayAI0G7ProfileOGtFZ_0(a1, v6);

  v9 = swift_allocObject();
  *(v9 + 2) = sub_1BA3153B0;
  *(v9 + 3) = 0;
  *(v9 + 4) = ObjectType;
  v10 = (v2 + qword_1EDC61AF0);
  *v10 = sub_1BA4531C8;
  v10[1] = v9;
  v11 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v8);

  return v11;
}

id sub_1BA4530A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileFetchedCategoriesDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ProfileFetchedCategoriesDataSource()
{
  result = qword_1EBBF2C88;
  if (!qword_1EBBF2C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA453130@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EBBE84F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EBBEE338;
  a1[3] = type metadata accessor for HeaderItem();
  a1[4] = sub_1BA011754();
  *a1 = v2;
}

uint64_t sub_1BA453224()
{
}

uint64_t sub_1BA4532A4()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA4533B4()
{
  sub_1BA4532A4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharedProfileOverviewDataSource()
{
  result = qword_1EBBF2CC0;
  if (!qword_1EBBF2CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA4534BC(void *a1, char *a2, void *a3)
{
  v4 = v3;
  v104 = *v4;
  v8 = sub_1BA4A3EA8();
  v109 = *(v8 - 8);
  v110 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v111 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA454158(0, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v116 = &v104 - v11;
  v12 = sub_1BA4A1798();
  v107 = *(v12 - 8);
  v108 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v105 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v106 = &v104 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v104 - v17;
  type metadata accessor for SharedProfileHeaderDataSource();
  v19 = a1;
  v121 = v19;
  v113 = a2;
  v20 = [a2 profileIdentifier];
  v21 = [v20 identifier];

  sub_1BA4A1778();
  v22 = sub_1BA0CDA8C(v19, v18);
  v23 = OBJC_IVAR____TtC18HealthExperienceUI31SharedProfileOverviewDataSource_sharedProfileHeaderDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI31SharedProfileOverviewDataSource_sharedProfileHeaderDataSource) = v22;

  v120 = a3;
  v24 = sub_1BA0410CC(a2, a3);
  v26 = v25;
  v28 = v27;

  v123 = MEMORY[0x1E69E6F90];
  sub_1BA454158(0, &qword_1EDC5DB98, sub_1B9F1ABA4, MEMORY[0x1E69E6F90]);
  v117 = v29;
  inited = swift_initStackObject();
  v124 = xmmword_1BA4B5460;
  *(inited + 16) = xmmword_1BA4B5460;
  *(inited + 32) = 1;
  *(inited + 40) = *(v4 + v23);
  *(inited + 48) = &protocol witness table for SingleUserDataDataSource<A>;
  *(inited + 56) = &protocol witness table for MutableArrayDataSource;
  *(inited + 64) = 2;
  *(inited + 72) = v24;
  *(inited + 80) = v26;
  *(inited + 88) = v28;
  v31 = sub_1B9F28D90(inited);
  swift_setDeallocating();
  sub_1B9F1ABA4();
  v122 = v32;

  v119 = v24;
  swift_unknownObjectRetain();
  swift_arrayDestroy();
  v115 = v23;
  v33 = *(v4 + v23);
  v114 = type metadata accessor for SizeClassResponsiveDataSource();
  swift_allocObject();

  v118 = sub_1B9F1D348(v31, v33, &protocol witness table for SingleUserDataDataSource<A>, &protocol witness table for MutableArrayDataSource);

  type metadata accessor for UnusedModelsVersionMismatchAlertDataSource();
  swift_allocObject();
  v34 = v121;
  v35 = v113;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI31SharedProfileOverviewDataSource_platformVersionMismatchDataSource) = UnusedModelsVersionMismatchAlertDataSource.init(context:healthStore:)(v34, v35);
  v36 = v34;
  v37 = sub_1BA4A6F38();
  type metadata accessor for PluginVersionMismatchAlertDataSource();
  swift_allocObject();
  v38 = sub_1BA247544(v36, v37);
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI31SharedProfileOverviewDataSource_pluginVersionMismatchDataSource) = v38;
  sub_1BA4540D4();
  swift_allocObject();

  v40 = sub_1BA063F2C(v39, v38);

  v41 = v36;
  v42 = sub_1BA4A6F38();
  v43 = objc_allocWithZone(type metadata accessor for SharedProfileNoticesDataSource());
  v44 = MEMORY[0x1E69E7CC0];
  v45 = sub_1BA26C5A4(v41, v42, MEMORY[0x1E69E7CC0]);
  v46 = OBJC_IVAR____TtC18HealthExperienceUI31SharedProfileOverviewDataSource_noticesDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI31SharedProfileOverviewDataSource_noticesDataSource) = v45;
  v47 = v41;
  v48 = [v35 profileIdentifier];
  type metadata accessor for SummaryFeedTrendsSectionDataSource(0);
  swift_allocObject();
  v49 = SummaryFeedTrendsSectionDataSource.init(context:sourceProfile:additionalPredicates:significantTrendsDataSourceLoadingCompletion:)(v47, v48, v44, 0, 0);
  v113 = OBJC_IVAR____TtC18HealthExperienceUI31SharedProfileOverviewDataSource_trendsDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI31SharedProfileOverviewDataSource_trendsDataSource) = v49;
  v50 = objc_allocWithZone(type metadata accessor for SharedSummariesDataSource());
  v51 = v47;
  v52 = v35;
  v53 = sub_1BA20F6B4(v52, v44, v51);
  v112 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v53);

  v121 = v52;
  sub_1BA454158(0, &qword_1EDC5DC70, sub_1BA03A7DC, v123);
  v123 = v54;
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1BA4B5480;
  v56 = v40;
  *(v55 + 32) = v40;
  *(v55 + 40) = &protocol witness table for PrimarySecondaryDataSource<A, B>;
  v57 = swift_initStackObject();
  *(v57 + 16) = v124;
  *(v57 + 32) = 1;
  v58 = *(v4 + v46);
  *(v57 + 40) = v58;
  *(v57 + 48) = &protocol witness table for FetchedResultsWithLayoutDataSource<A>;
  *(v57 + 56) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  *(v57 + 64) = 2;
  type metadata accessor for CompoundSectionedDataSource();
  swift_allocObject();
  v117 = v56;

  v59 = v58;
  *(v57 + 72) = CompoundSectionedDataSource.init(_:)(MEMORY[0x1E69E7CC0]);
  *(v57 + 80) = &protocol witness table for CompoundSectionedDataSource;
  *(v57 + 88) = &protocol witness table for CompoundSectionedDataSource;
  v60 = sub_1B9F28D90(v57);
  swift_setDeallocating();
  swift_arrayDestroy();
  v122 = v4;
  v61 = *(v4 + v46);
  swift_allocObject();
  v62 = v61;
  v63 = sub_1B9F1D348(v60, v61, &protocol witness table for FetchedResultsWithLayoutDataSource<A>, &protocol witness table for FetchedResultsControllerDataSource<A>);

  v64 = *(v55 + 16);
  v65 = *(v55 + 24);

  if (v64 >= v65 >> 1)
  {
    v55 = sub_1B9F1E00C(v65 > 1, v64 + 1, 1, v55);
  }

  *(v55 + 16) = v64 + 1;
  v66 = v55 + 16 * v64;
  *(v66 + 32) = v63;
  *(v66 + 40) = &protocol witness table for SizeClassResponsiveDataSource;
  v126 = v55;
  v67 = swift_initStackObject();
  *(v67 + 16) = v124;
  v68 = v112;
  *(v67 + 32) = *&v113[v122];
  *(v67 + 40) = &protocol witness table for HideableDataSource<A>;
  *(v67 + 48) = v68;
  *(v67 + 56) = &protocol witness table for FetchedResultsControllerDataSource<A>;

  v114 = v68;
  sub_1B9FE20B8(v67);
  v69 = v126;
  swift_allocObject();
  v70 = CompoundSectionedDataSource.init(_:)(v69);
  type metadata accessor for NoDataDataSource();
  swift_allocObject();
  v71 = NoDataDataSource.init()();

  v72 = v116;
  sub_1BA0CE620(v116);

  v73 = sub_1BA4A33C8();
  v74 = *(v73 - 8);
  if ((*(v74 + 48))(v72, 1, v73) == 1)
  {
    sub_1BA013068(v72);
    v75 = v111;
    sub_1BA4A3D88();
    v76 = v121;
    v77 = sub_1BA4A3E88();
    v78 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v125[0] = v116;
      *v79 = 136315394;
      v80 = sub_1BA4A85D8();
      v82 = sub_1B9F0B82C(v80, v81, v125);
      LODWORD(v115) = v78;
      v83 = v82;

      *(v79 + 4) = v83;
      *(v79 + 12) = 2080;
      v84 = [v76 profileIdentifier];
      v85 = [v84 description];
      v86 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v88 = v87;

      v89 = sub_1B9F0B82C(v86, v88, v125);

      *(v79 + 14) = v89;
      _os_log_impl(&dword_1B9F07000, v77, v115, "%s Could not fetch sharingEntryProfileInformation for health store %s", v79, 0x16u);
      v90 = v116;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v90, -1, -1);
      MEMORY[0x1BFAF43A0](v79, -1, -1);

      (*(v109 + 8))(v111, v110);
    }

    else
    {

      (*(v109 + 8))(v75, v110);
    }

    v98 = v121;
  }

  else
  {
    v91 = v105;
    sub_1BA4A3358();
    (*(v74 + 8))(v72, v73);
    v93 = v107;
    v92 = v108;
    v94 = v106;
    (*(v107 + 32))(v106, v91, v108);
    v95 = objc_allocWithZone(MEMORY[0x1E696C438]);
    v96 = sub_1BA4A1758();
    v97 = [v95 initForInvitationUUID_];

    type metadata accessor for SettingUpSharingDataSource();
    swift_allocObject();
    v98 = v121;
    v99 = sub_1BA112ED4(v121, v97);

    (*(v93 + 8))(v94, v92);
    v71 = v99;
  }

  sub_1BA4541BC();
  swift_allocObject();

  v100 = sub_1BA063C54(v70, v71);

  *(v122 + OBJC_IVAR____TtC18HealthExperienceUI31SharedProfileOverviewDataSource_sharedContentOrNoDataDataSource) = v100;
  v101 = swift_allocObject();
  *(v101 + 16) = v124;
  *(v101 + 32) = v118;
  *(v101 + 40) = &protocol witness table for SizeClassResponsiveDataSource;
  *(v101 + 48) = v100;
  *(v101 + 56) = &protocol witness table for PrimarySecondaryDataSource<A, B>;

  v102 = CompoundSectionedDataSource.init(_:)(v101);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v120);
  return v102;
}

void sub_1BA4540D4()
{
  if (!qword_1EBBF2CD0)
  {
    type metadata accessor for UnusedModelsVersionMismatchAlertDataSource();
    type metadata accessor for PluginVersionMismatchAlertDataSource();
    v0 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2CD0);
    }
  }
}

void sub_1BA454158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA4541BC()
{
  if (!qword_1EBBF2CD8)
  {
    type metadata accessor for CompoundSectionedDataSource();
    type metadata accessor for PlaceholderTextDataSource();
    v0 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2CD8);
    }
  }
}

void sub_1BA454240(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void static HKKeyValueDomain.saveOnboardingStatus(_:healthStore:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v6 = [objc_opt_self() emergencyDefaultsDomainWithHealthStore_];
  v7 = *MEMORY[0x1E696C840];
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v2;
  v12[4] = sub_1BA454788;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1BA454240;
  v12[3] = &block_descriptor_125;
  v9 = _Block_copy(v12);
  v10 = v5;
  v11 = v7;

  [v6 setNumber:v10 forKey:v11 completion:v9];
  _Block_release(v9);
}

uint64_t sub_1BA454414(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  if (a2)
  {
    sub_1BA4A3E08();
    v14 = a2;
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = v18;
      v38 = a4;
      *v17 = 136446466;
      swift_getMetatypeMetadata();
      v19 = sub_1BA4A6808();
      v21 = sub_1B9F0B82C(v19, v20, &v37);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v38 = a2;
      v22 = a2;
      sub_1BA34AC04();
      v23 = sub_1BA4A6808();
      v25 = sub_1B9F0B82C(v23, v24, &v37);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_1B9F07000, v15, v16, "[%{public}s] error while saving onboarding status: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_1BA4A3E08();
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37 = v30;
      v38 = a4;
      *v29 = 136446466;
      swift_getMetatypeMetadata();
      v31 = sub_1BA4A6808();
      v33 = sub_1B9F0B82C(v31, v32, &v37);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      v38 = a3;
      type metadata accessor for HKEmergencyOnboardingStatus(0);
      v34 = sub_1BA4A6808();
      v36 = sub_1B9F0B82C(v34, v35, &v37);

      *(v29 + 14) = v36;
      _os_log_impl(&dword_1B9F07000, v27, v28, "[%{public}s] Saved onboarding status: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    return (*(v8 + 8))(v13, v7);
  }
}

uint64_t sub_1BA4547B0()
{
  result = type metadata accessor for SummarySharingRelationshipManagementContext(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BA454864()
{
  result = sub_1BA4A33C8();
  if (v1 <= 0x3F)
  {
    result = sub_1BA4548E8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BA4548E8()
{
  result = qword_1EBBF2D00;
  if (!qword_1EBBF2D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBF2D00);
  }

  return result;
}

void sub_1BA454934()
{
  v1 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9FF1628(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BA10E1EC(v3);
    }

    else
    {
      if (qword_1EBBE83F8 != -1)
      {
        swift_once();
      }

      v5 = qword_1EBC095A8;
      v6 = sub_1BA4A6758();
      [objc_opt_self() imageNamed:v6 inBundle:v5];
    }
  }

  else
  {
    v7[15] = *v3;
    sub_1BA28772C();
  }
}

uint64_t sub_1BA454ACC(uint64_t (*a1)(void), const char *a2)
{
  v5 = v2;
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  sub_1B9FF1628(v5, &v30 - v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v20 = EnumCaseMultiPayload;
    result = 0;
    if (v20 == 1)
    {
      v31 = a2;
      sub_1BA4A3DD8();
      sub_1B9FF1628(v5, v15);
      v22 = sub_1BA4A3E88();
      v23 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v33 = v30;
        *v24 = 136315394;
        *(v24 + 4) = sub_1B9F0B82C(0xD00000000000001BLL, 0x80000001BA4DC670, &v33);
        *(v24 + 12) = 2080;
        sub_1B9FF1628(v15, v12);
        v25 = sub_1BA4A6808();
        v27 = v26;
        sub_1BA10E1EC(v15);
        v28 = sub_1B9F0B82C(v25, v27, &v33);

        *(v24 + 14) = v28;
        _os_log_impl(&dword_1B9F07000, v22, v23, v31, v24, 0x16u);
        v29 = v30;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v29, -1, -1);
        MEMORY[0x1BFAF43A0](v24, -1, -1);
      }

      else
      {

        sub_1BA10E1EC(v15);
      }

      (*(v7 + 8))(v9, v6);
      sub_1BA10E1EC(v18);
      return 0;
    }
  }

  else
  {
    v32 = *v18;
    return a1();
  }

  return result;
}

id HorizontalCollectionViewLayoutEngine.layout(for:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = [*(a1 + 8) traitCollection];
  sub_1BA4A7368();

  sub_1BA4A6598();
  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 fractionalWidthDimension_];
  v9 = [v7 estimatedDimension_];
  v10 = objc_opt_self();
  v11 = [v10 sizeWithWidthDimension:v8 heightDimension:v9];

  v12 = [objc_opt_self() itemWithLayoutSize_];
  v13 = [v7 fractionalWidthDimension_];
  v14 = [v7 uniformAcrossSiblingsWithEstimate_];
  v15 = [v10 sizeWithWidthDimension:v13 heightDimension:v14];

  v16 = objc_opt_self();
  sub_1B9F109F8();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B5470;
  *(v17 + 32) = v12;
  sub_1BA45505C();
  v18 = v12;
  v19 = sub_1BA4A6AE8();

  v20 = [v16 horizontalGroupWithLayoutSize:v15 subitems:v19];

  v21 = [objc_opt_self() sectionWithGroup_];
  [v21 setInterGroupSpacing_];
  [v21 setOrthogonalScrollingBehavior_];

  return v21;
}

unint64_t sub_1BA45505C()
{
  result = qword_1EBBF1FB8;
  if (!qword_1EBBF1FB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBF1FB8);
  }

  return result;
}

void ProfileButtonDisplaying<>.updateProfileButtonForRegularSizeClass()()
{
  v1 = [v0 navigationItem];
  [v1 setLargeTitleDisplayMode_];

  v2 = [v0 navigationItem];
  [v2 _setLargeTitleAccessoryView_alignToBaseline_];
}

uint64_t HealthChecklistOpenedAnalyticsSource.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1 == 0x656C69666F7250 && a2 == 0xE700000000000000;
  if (v6 || (sub_1BA4A8338() & 1) != 0)
  {

    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  if (a1 == 0x6C616E7265747845 && a2 == 0xEC0000004C525520 || (sub_1BA4A8338() & 1) != 0)
  {

    v8 = xmmword_1BA4BC920;
LABEL_11:
    *a3 = v8;
    return result;
  }

  if (a1 == 0x6C616E7265746E49 && a2 == 0xEC0000004C525520 || (sub_1BA4A8338() & 1) != 0)
  {

    v8 = xmmword_1BA4DC7B0;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000018 && 0x80000001BA5096B0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    v8 = xmmword_1BA4DC7A0;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000014 && 0x80000001BA5096D0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    v8 = xmmword_1BA4DC790;
    goto LABEL_11;
  }

  if (a1 == 0x655368746C616548 && a2 == 0xEE0073676E697474 || (sub_1BA4A8338() & 1) != 0)
  {

    v8 = xmmword_1BA4DC780;
    goto LABEL_11;
  }

  if (a1 == 0x6163696669746F4ELL && a2 == 0xED0000736E6F6974 || (sub_1BA4A8338() & 1) != 0)
  {

    v8 = xmmword_1BA4C2560;
    goto LABEL_11;
  }

  sub_1B9F252FC();
  v9 = sub_1BA4A7B28();

  if (v9[2] != 2 || ((v15 = v9, v11 = v9[4], v10 = v9[5], v11 != 0x6C616E7265747845) || v10 != 0xEC0000004C525520) && (sub_1BA4A8338() & 1) == 0)
  {
LABEL_39:

    v8 = xmmword_1BA4DC770;
    goto LABEL_11;
  }

  v13 = v15[6];
  v12 = v15[7];

  if (v11 == v13 && v10 == v12)
  {

    goto LABEL_39;
  }

  v14 = sub_1BA4A8338();

  if (v14)
  {
    goto LABEL_39;
  }

  *a3 = v13;
  a3[1] = v12;
  return result;
}

uint64_t HealthChecklistOpenedAnalyticsSource.rawValue.getter()
{
  v1 = v0[1];
  if (v1 <= 2)
  {
    switch(v1)
    {
      case 0:
        return 0x656C69666F7250;
      case 1:
        return 0x6C616E7265747845;
      case 2:
        return 0x6C616E7265746E49;
    }

LABEL_13:
    v3 = *v0;
    sub_1BA4A7DF8();

    strcpy(v4, "External URL: ");
    HIBYTE(v4[1]) = -18;
    MEMORY[0x1BFAF1350](v3, v1);
    return v4[0];
  }

  if (v1 > 4)
  {
    if (v1 == 5)
    {
      return 0x655368746C616548;
    }

    if (v1 == 6)
    {
      return 0x6163696669746F4ELL;
    }

    goto LABEL_13;
  }

  if (v1 == 3)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1BA4556D8@<X0>(uint64_t *a1@<X8>)
{
  result = HealthChecklistOpenedAnalyticsSource.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static HealthChecklistOpenedAnalyticsEvent.eventName.getter()
{
  swift_beginAccess();
  v0 = qword_1EBBF2D08;

  return v0;
}

uint64_t static HealthChecklistOpenedAnalyticsEvent.eventName.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_1EBBF2D08 = a1;
  off_1EBBF2D10 = a2;
}

unint64_t sub_1BA45580C()
{
  result = qword_1EBBF2D18;
  if (!qword_1EBBF2D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2D18);
  }

  return result;
}

unint64_t sub_1BA455864()
{
  result = qword_1EBBF2D20;
  if (!qword_1EBBF2D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2D20);
  }

  return result;
}

uint64_t sub_1BA4558B8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EBBF2D08 = v2;
  off_1EBBF2D10 = v1;
}

uint64_t sub_1BA45591C()
{
  swift_beginAccess();
  v0 = qword_1EBBF2D08;

  return v0;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI0A30ChecklistOpenedAnalyticsSourceO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BA455988(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483641);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA4559E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 6;
    }
  }

  return result;
}

char *AppRecommendationsFetchedResultsControllerDataSource.__allocating_init(managedObjectContext:for:sourceProfiles:)(void *a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1BA456148(a1, a2, a3);

  return v8;
}

char *AppRecommendationsFetchedResultsControllerDataSource.init(managedObjectContext:for:sourceProfiles:)(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_1BA456148(a1, a2, a3);

  return v5;
}

uint64_t sub_1BA455AF0()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1 && (v2 = v1, v3 = [v1 displayTypeForObjectType_], v2, v3))
  {
    sub_1B9F1B7C4(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BA4B5460;
    v5 = [v3 localization];
    v6 = [v5 titleEmbeddedDisplayName];

    v7 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v9 = v8;

    v10 = MEMORY[0x1E69E6158];
    *(v4 + 56) = MEMORY[0x1E69E6158];
    v11 = sub_1B9F1BE20();
    *(v4 + 32) = v7;
    *(v4 + 40) = v9;
    v13 = *(v0 + qword_1EDC84A48);
    v12 = *(v0 + qword_1EDC84A48 + 8);
    *(v4 + 96) = v10;
    *(v4 + 104) = v11;
    *(v4 + 64) = v11;
    *(v4 + 72) = v13;
    *(v4 + 80) = v12;

    v14 = sub_1BA4A6768();

    return v14;
  }

  else
  {
    sub_1BA4A7DF8();

    v16 = [*(v0 + qword_1EDC84A58) description];
    v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v19 = v18;

    MEMORY[0x1BFAF1350](v17, v19);

    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

unint64_t sub_1BA455D50@<X0>(void *a1@<X8>)
{
  v2 = sub_1BA4A4428();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = sub_1BA455AF0();
  v11 = v10;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  (*(v3 + 16))(v5, v8, v2);
  v12 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v9, v11, 0, 0, 0, 0, v5, 0, 0);
  v14 = v13;
  (*(v3 + 8))(v8, v2);
  a1[3] = v12;
  result = sub_1BA011754();
  a1[4] = result;
  *a1 = v14;
  return result;
}

uint64_t sub_1BA455F00()
{
}

id AppRecommendationsFetchedResultsControllerDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppRecommendationsFetchedResultsControllerDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA455F90(uint64_t a1)
{
}

void *AppRecommendationsFetchedResultsControllerDataSource.layout(for:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (qword_1EDC6CB68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ListLayoutConfiguration();
  __swift_project_value_buffer(v2, qword_1EDC6CB70);
  return ListLayoutConfiguration.layout(for:)(v1);
}

void *sub_1BA4560CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (qword_1EDC6CB68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ListLayoutConfiguration();
  __swift_project_value_buffer(v2, qword_1EDC6CB70);
  return ListLayoutConfiguration.layout(for:)(v1);
}

char *sub_1BA456148(uint64_t a1, void *a2, uint64_t a3)
{
  v34 = a3;
  v35 = a1;
  sub_1B9F1B7C4(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - v6;
  v8 = qword_1EDC84A50;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v9 = (v3 + v8);
  *v9 = sub_1BA4A1318();
  v9[1] = v10;
  v11 = (v3 + qword_1EDC84A48);
  *v11 = sub_1BA4A1318();
  v11[1] = v12;
  *(v3 + qword_1EDC84A58) = a2;
  sub_1BA4A27B8();
  v13 = a2;
  v33 = v3;
  v14 = MEMORY[0x1BFAED110]();
  v15 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v16 = sub_1BA4A6758();
  v17 = [v15 initWithKey:v16 ascending:1];

  sub_1B9F109F8();
  v18 = swift_allocObject();
  v32 = xmmword_1BA4B5470;
  *(v18 + 16) = xmmword_1BA4B5470;
  *(v18 + 32) = v17;
  sub_1BA0A361C();
  v19 = v17;
  v20 = sub_1BA4A6AE8();

  [v14 setSortDescriptors_];

  sub_1B9F1B7C4(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v21 = sub_1BA4A1C68();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BA4B5480;
  (*(v22 + 104))(v24 + v23, *MEMORY[0x1E69A3BA8], v21);
  v25 = swift_allocObject();
  *(v25 + 16) = v32;
  *(v25 + 32) = v13;
  v26 = sub_1BA4A0FA8();
  (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
  v27 = v13;
  v28 = MEMORY[0x1BFAED020](v24, v25, v7, v34);

  sub_1B9F1C1B0(v7);
  [v14 setPredicate_];

  v29 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v30 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0([v29 initWithFetchRequest:v14 managedObjectContext:v35 sectionNameKeyPath:0 cacheName:0]);

  return v30;
}

uint64_t type metadata accessor for AppRecommendationsFetchedResultsControllerDataSource()
{
  result = qword_1EDC5FAF0;
  if (!qword_1EDC5FAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *RelatedItemsFetchedResultsControllerDataSource.init(managedObjectContext:objectType:contentKinds:sortDescriptors:sourceProfiles:headerTitle:keyword:relevantDateRange:initialFetchLimit:additionalPredicate:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13)
{
  v42[1] = a8;
  v46 = a1;
  v47 = a10;
  sub_1BA170230(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + qword_1EDC84A78) = a2;
  v45 = v13;
  v22 = (v13 + qword_1EDC84A80);
  *v22 = a6;
  v22[1] = a7;
  sub_1BA4A27B8();
  v23 = a2;
  v24 = MEMORY[0x1BFAED110]();
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v25 = sub_1BA4A6AE8();

  [v24 setSortDescriptors_];

  if (a2)
  {
    sub_1B9F109F8();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BA4B5470;
    *(v26 + 32) = v23;
  }

  else
  {
    v26 = 0;
  }

  v44 = a13;
  v43 = v23;
  v27 = MEMORY[0x1BFAED020](a3, v26, v47, a5);

  sub_1B9F109F8();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B5470;
  *(v28 + 32) = v27;
  v48 = v28;
  if (a9)
  {
    v29 = sub_1BA4A0FA8();
    (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
    v30 = v27;
    v31 = sub_1BA4A25F8();

    sub_1B9F1C1B0(v21);
    v32 = v31;
    MEMORY[0x1BFAF1510]();
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  else
  {
    v33 = v27;
  }

  v34 = v44;
  if (v44)
  {
    v35 = v44;
    MEMORY[0x1BFAF1510]();
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v36 = sub_1BA4A6AE8();

  v37 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v24 setPredicate_];
  if ((a12 & 1) == 0)
  {
    [v24 setFetchLimit_];
  }

  v38 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v39 = v46;
  v40 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0([v38 initWithFetchRequest:v24 managedObjectContext:v46 sectionNameKeyPath:0 cacheName:0]);

  sub_1B9F1C1B0(v47);
  return v40;
}

uint64_t RelatedItemsFetchedResultsControllerDataSource.headerTitle.getter()
{
  v1 = *(v0 + qword_1EDC84A80);

  return v1;
}

char *RelatedItemsFetchedResultsControllerDataSource.__allocating_init(managedObjectContext:objectType:contentKinds:sortDescriptors:sourceProfiles:headerTitle:keyword:relevantDateRange:initialFetchLimit:additionalPredicate:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13)
{
  v43[1] = a8;
  v47 = a1;
  v48 = a10;
  sub_1BA170230(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_allocWithZone(v13);
  *&v22[qword_1EDC84A78] = a2;
  v46 = v22;
  v23 = &v22[qword_1EDC84A80];
  *v23 = a6;
  *(v23 + 1) = a7;
  sub_1BA4A27B8();
  v24 = a2;
  v25 = MEMORY[0x1BFAED110]();
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v26 = sub_1BA4A6AE8();

  [v25 setSortDescriptors_];

  if (a2)
  {
    sub_1B9F109F8();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1BA4B5470;
    *(v27 + 32) = v24;
  }

  else
  {
    v27 = 0;
  }

  v45 = a13;
  v44 = v24;
  v28 = MEMORY[0x1BFAED020](a3, v27, v48, a5);

  sub_1B9F109F8();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BA4B5470;
  *(v29 + 32) = v28;
  v49 = v29;
  if (a9)
  {
    v30 = sub_1BA4A0FA8();
    (*(*(v30 - 8) + 56))(v21, 1, 1, v30);
    v31 = v28;
    v32 = sub_1BA4A25F8();

    sub_1B9F1C1B0(v21);
    v33 = v32;
    MEMORY[0x1BFAF1510]();
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  else
  {
    v34 = v28;
  }

  v35 = v45;
  if (v45)
  {
    v36 = v45;
    MEMORY[0x1BFAF1510]();
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v37 = sub_1BA4A6AE8();

  v38 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v25 setPredicate_];
  if ((a12 & 1) == 0)
  {
    [v25 setFetchLimit_];
  }

  v39 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v40 = v47;
  v41 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0([v39 initWithFetchRequest:v25 managedObjectContext:v47 sectionNameKeyPath:0 cacheName:0]);

  sub_1B9F1C1B0(v48);
  return v41;
}

unint64_t sub_1BA456FB8@<X0>(void *a1@<X8>)
{
  v3 = sub_1BA4A4428();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = v1 + qword_1EDC84A80;
  v11 = *(v1 + qword_1EDC84A80);
  v12 = *(v10 + 8);

  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  (*(v4 + 16))(v6, v9, v3);
  v13 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v11, v12, 0, 0, 0, 0, v6, 0, 0);
  v15 = v14;
  (*(v4 + 8))(v9, v3);
  a1[3] = v13;
  result = sub_1BA011754();
  a1[4] = result;
  *a1 = v15;
  return result;
}

uint64_t sub_1BA457144()
{
}

id RelatedItemsFetchedResultsControllerDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RelatedItemsFetchedResultsControllerDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA4571C0(uint64_t a1)
{
}

uint64_t sub_1BA45726C(__int128 *a1)
{
  v8 = *a1;
  v2 = *(a1 + 2);
  static GridLayoutEngine.largeCard.getter(v16);
  v13 = v16[2];
  v14 = v16[3];
  v15 = v16[4];
  v11 = v16[0];
  v12 = v16[1];
  v9 = v8;
  v10 = v2;
  v3 = GridLayoutEngine.layout(for:)(&v9);
  if (v1)
  {
    return sub_1B9F5A690(v16);
  }

  v5 = v3;
  v6 = [objc_opt_self() estimatedDimension_];
  v7 = sub_1B9F5CA58(v6, 2);

  sub_1B9F5A690(v16);
  return v7;
}

uint64_t type metadata accessor for RelatedItemsFetchedResultsControllerDataSource()
{
  result = qword_1EDC5FEB0;
  if (!qword_1EDC5FEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1BA457578()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  [v0 setAdjustsFontForContentSizeCategory_];
  return v0;
}

uint64_t sub_1BA457680@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_buttonConfiguration);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_1BA1AE4BC(v4, v5);
}

uint64_t sub_1BA4576E0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_buttonConfiguration);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v2;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v5;
  sub_1BA1AE4BC(v2, v3);
  return sub_1BA1AE55C(v7, v8);
}

uint64_t sub_1BA457788@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_buttonConfiguration);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return sub_1BA1AE4BC(v4, v5);
}

uint64_t sub_1BA4577E4(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_buttonConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v6;
  return sub_1BA1AE55C(v4, v5);
}

id sub_1BA4578A0()
{
  sub_1BA459780(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v21 - v1;
  v3 = sub_1BA4A7838();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A1338();
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A79A8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = [objc_opt_self() systemBlueColor];
  [v13 setTitleColor:v14 forState:0];

  sub_1BA4A7968();
  sub_1BA4A7878();
  v15 = sub_1BA4A78C8();
  v17 = v16;
  v18 = sub_1BA4A12C8();
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    sub_1BA4A1328();
    sub_1BA4A11A8();
    (*(v22 + 8))(v8, v6);
  }

  v15(v25, 0);
  v19 = sub_1BA4A7808();
  sub_1BA4A4108();
  v19(v25, 0);
  (*(v23 + 104))(v5, *MEMORY[0x1E69DC4F0], v24);
  sub_1BA4A7848();
  (*(v10 + 16))(v2, v12, v9);
  (*(v10 + 56))(v2, 0, 1, v9);
  sub_1BA4A79D8();
  (*(v10 + 8))(v12, v9);
  return v13;
}

char *OBKStyleBulletListItemView.init(image:title:description:buttonConfiguration:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v8 = *a6;
  v7 = a6[1];
  v10 = a6[2];
  v9 = a6[3];
  v11 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageView;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setContentMode_];

  LODWORD(v13) = 1148846080;
  [v12 setContentCompressionResistancePriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [v12 setContentHuggingPriority:0 forAxis:v14];
  *&v6[v11] = v12;
  v15 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_titleLabel;
  *&v6[v15] = sub_1BA1AE0E4();
  v16 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_descriptionLabel;
  *&v6[v16] = sub_1BA457578();
  v17 = &v6[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_buttonConfiguration];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v18 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_button;
  *&v6[v18] = sub_1BA4578A0();
  v19 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageAndTextStackedConstraints] = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageAndTextSideBySideConstraints] = v19;
  swift_beginAccess();
  v20 = *v17;
  v21 = *(v17 + 1);
  *v17 = v8;
  *(v17 + 1) = v7;
  *(v17 + 2) = v10;
  *(v17 + 3) = v9;
  v58 = v8;
  sub_1BA1AE4BC(v8, v7);
  sub_1BA1AE55C(v20, v21);
  v61.receiver = v6;
  v61.super_class = type metadata accessor for OBKStyleBulletListItemView();
  v22 = objc_msgSendSuper2(&v61, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageView;
  [*&v22[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageView] setImage_];
  v24 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_titleLabel;
  v25 = *&v22[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_titleLabel];
  v26 = sub_1BA4A6758();

  [v25 setText_];

  v27 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_descriptionLabel;
  v28 = *&v22[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_descriptionLabel];
  v29 = v28;
  if (a5)
  {
    v30 = sub_1BA4A6758();
  }

  else
  {
    v30 = 0;
  }

  [v28 setText_];

  [v22 addSubview_];
  [v22 addSubview_];
  [v22 addSubview_];
  v31 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_button;
  [v22 addSubview_];
  sub_1BA458450();
  v32 = [*&v22[v27] text];
  v33 = MEMORY[0x1E69DDD80];
  if (!v32)
  {
    v34 = *&v22[v24];
    v35 = objc_opt_self();
    v36 = *v33;
    v37 = v34;
    v38 = [v35 preferredFontForTextStyle_];
    [v37 setFont_];

    v32 = v38;
  }

  if (v7)
  {
    sub_1BA459780(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5460;
    v40 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v41 = objc_opt_self();
    v42 = *v33;
    v43 = v40;
    v44 = [v41 preferredFontForTextStyle_];
    v45 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
    *(inited + 40) = v44;
    v46 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v45;
    *(inited + 72) = v46;
    v47 = objc_opt_self();
    v48 = v46;
    v49 = [v47 systemBlueColor];
    *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC6E380);
    *(inited + 80) = v49;
    sub_1B9FDB1C4(inited);
    swift_setDeallocating();
    sub_1B9FE9628();
    swift_arrayDestroy();
    v50 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v51 = sub_1BA4A6758();
    type metadata accessor for Key(0);
    sub_1BA0262E4();
    v52 = sub_1BA4A6618();

    v53 = [v50 initWithString:v51 attributes:v52];

    [*&v22[v31] setAttributedTitle:v53 forState:0];
    v54 = *&v22[v31];
    [v54 addTarget:v22 action:sel_buttonWasTapped forControlEvents:64];

    sub_1BA1AE55C(v58, v7);
  }

  else
  {
    v55 = [*&v22[v31] heightAnchor];
    v56 = [v55 constraintEqualToConstant_];

    [v56 setActive_];
  }

  return v22;
}

id OBKStyleBulletListItemView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1BA4583C4()
{
  [v0 addSubview_];
  [v0 addSubview_];
  [v0 addSubview_];
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_button];

  return [v0 addSubview_];
}

void sub_1BA458450()
{
  sub_1B9F109F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5880;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageView];
  v3 = [v2 topAnchor];
  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = [v2 leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 &selRef:v7 numberWithInteger:? + 5];

  *(v1 + 40) = v8;
  v9 = [v0 trailingAnchor];
  v10 = [v2 &selRef_cloudSyncObserverSyncCompleted_ + 4];
  v11 = [v9 constraintGreaterThanOrEqualToAnchor_];

  *(v1 + 48) = v11;
  v12 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_titleLabel];
  v13 = [v12 leadingAnchor];
  v14 = [v0 leadingAnchor];
  v15 = [v13 &selRef:v14 numberWithInteger:? + 5];

  *(v1 + 56) = v15;
  v16 = [v12 topAnchor];
  v17 = [v2 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:14.0];

  *(v1 + 64) = v18;
  v71 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageAndTextStackedConstraints;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageAndTextStackedConstraints] = v1;

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4C27A0;
  v20 = [v2 topAnchor];
  v21 = [v0 topAnchor];
  v22 = [v20 constraintGreaterThanOrEqualToAnchor_];

  *(v19 + 32) = v22;
  v23 = [v2 leadingAnchor];
  v24 = [v0 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v19 + 40) = v25;
  v26 = [v0 bottomAnchor];
  v27 = [v2 bottomAnchor];
  v28 = [v26 constraintGreaterThanOrEqualToAnchor_];

  *(v19 + 48) = v28;
  v29 = [v2 centerYAnchor];
  v30 = [v0 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v19 + 56) = v31;
  v32 = [v12 leadingAnchor];
  v33 = [v2 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:14.0];

  *(v19 + 64) = v34;
  v35 = [v12 trailingAnchor];
  v36 = [v0 trailingAnchor];
  v37 = [v35 &selRef:v36 numberWithInteger:? + 5];

  *(v19 + 72) = v37;
  *(v19 + 80) = sub_1BA458EDC();
  v70 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageAndTextSideBySideConstraints;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageAndTextSideBySideConstraints] = v19;

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1BA4BBC90;
  v39 = [v0 trailingAnchor];
  v40 = [v12 trailingAnchor];
  v41 = [v39 constraintGreaterThanOrEqualToAnchor_];

  *(v38 + 32) = v41;
  v42 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_descriptionLabel];
  v43 = [v42 topAnchor];
  v44 = [v12 bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:3.0];

  *(v38 + 40) = v45;
  v46 = [v42 leadingAnchor];
  v47 = [v12 leadingAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v38 + 48) = v48;
  v49 = [v42 trailingAnchor];
  v50 = [v0 trailingAnchor];
  v51 = [v49 constraintEqualToAnchor_];

  *(v38 + 56) = v51;
  v52 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_button];
  v53 = [v52 topAnchor];
  v54 = [v42 bottomAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:2.0];

  *(v38 + 64) = v55;
  v56 = [v52 leadingAnchor];
  v57 = [v42 leadingAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  *(v38 + 72) = v58;
  v59 = [v0 trailingAnchor];
  v60 = [v52 trailingAnchor];
  v61 = [v59 constraintGreaterThanOrEqualToAnchor_];

  *(v38 + 80) = v61;
  v62 = [v0 bottomAnchor];
  v63 = [v52 bottomAnchor];
  v64 = [v62 constraintEqualToAnchor_];

  *(v38 + 88) = v64;
  v65 = [v0 traitCollection];
  v66 = [v65 preferredContentSizeCategory];

  LOBYTE(v65) = sub_1BA4A74F8();
  v67 = v71;
  if ((v65 & 1) == 0)
  {
    v67 = v70;
  }

  v68 = *&v67[v0];

  v69 = objc_opt_self();
  sub_1B9F73B50(v68);
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v72 = sub_1BA4A6AE8();

  [v69 activateConstraints_];
}

id sub_1BA458D40()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  sub_1BA4A74F8();
  v3 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570);

  v4 = sub_1BA4A6AE8();

  [v3 activateConstraints_];

  v5 = sub_1BA4A6AE8();

  [v3 deactivateConstraints_];

  v7.receiver = v0;
  v7.super_class = type metadata accessor for OBKStyleBulletListItemView();
  return objc_msgSendSuper2(&v7, sel_updateConstraints);
}

id sub_1BA458EDC()
{
  v1 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_descriptionLabel] text];
  v2 = v1;
  if (v1)
  {
  }

  v3 = &v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_buttonConfiguration];
  swift_beginAccess();
  v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_titleLabel];
  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v3 + 1) == 0;
  }

  if (v5)
  {
    v6 = [v4 centerYAnchor];
    v7 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageView] centerYAnchor];
  }

  else
  {
    v6 = [v4 topAnchor];
    v7 = [v0 topAnchor];
  }

  v8 = v7;
  v9 = [v6 constraintEqualToAnchor_];

  return v9;
}

void sub_1BA458FF4(uint64_t a1)
{
  v3 = objc_opt_self();
  sub_1B9F109F8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B7510;
  v5 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_titleLabel) leadingAnchor];
  v6 = [*(a1 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_titleLabel) leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageView) centerXAnchor];
  v9 = [*(a1 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageView) centerXAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v11 = sub_1BA4A6AE8();

  [v3 activateConstraints_];
}

uint64_t sub_1BA45919C()
{
  v1 = &v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_buttonConfiguration];
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  if (v3)
  {
    sub_1BA1AE4BC(v2, v3);

    sub_1BA1AE55C(v2, v3);
    v5 = [v0 viewController];
    v4();
  }

  else
  {
    sub_1BA1AE4BC(v2, 0);
    return sub_1BA1AE55C(v2, 0);
  }
}

id OBKStyleBulletListItemView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id OBKStyleBulletListItemView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OBKStyleBulletListItemView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s18HealthExperienceUI26OBKStyleBulletListItemViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageView;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setContentMode_];

  LODWORD(v3) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v4];
  *(v0 + v1) = v2;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_titleLabel;
  *(v0 + v5) = sub_1BA1AE0E4();
  v6 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_descriptionLabel;
  *(v0 + v6) = sub_1BA457578();
  v7 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_buttonConfiguration);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_button;
  *(v0 + v8) = sub_1BA4578A0();
  v9 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageAndTextStackedConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageAndTextSideBySideConstraints) = v9;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA459780(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t PlaceholderTextDataSource.init(placeholderText:)(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v31 = *v2;
  v32 = v2;
  v3 = sub_1BA4A1798();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0xD000000000000014;
  v34 = 0x80000001BA4EB850;
  sub_1BA4A1788();
  v7 = sub_1BA4A1748();
  v9 = v8;
  v10 = *(v4 + 8);
  v10(v6, v3);
  MEMORY[0x1BFAF1350](v7, v9);

  v12 = v33;
  v11 = v34;
  v33 = type metadata accessor for PlaceholderTextCollectionViewCell();
  sub_1BA10E8A8();
  v13 = sub_1BA4A6808();
  v15 = v14;
  sub_1B9F1C048(0, &qword_1EDC5DC90);
  inited = swift_initStackObject();
  v28 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1BA45A458(0, &qword_1EDC5DCA0, sub_1B9F32244, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = v28;
  *(v17 + 56) = &type metadata for PlaceholderTextItem;
  *(v17 + 64) = sub_1B9FE9528();
  v18 = swift_allocObject();
  *(v17 + 32) = v18;
  *(v18 + 16) = v12;
  *(v18 + 24) = v11;
  *(v18 + 32) = v13;
  *(v18 + 40) = v15;
  v19 = v30;
  *(v18 + 48) = v29;
  *(v18 + 56) = v19;
  *(v18 + 64) = 0;
  sub_1BA4A1788();
  v20 = sub_1BA4A1748();
  v22 = v21;
  v10(v6, v3);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v24 = Array<A>.identifierToIndexDict()(v23);

  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v17;
  *(inited + 56) = v24;
  *(inited + 64) = v20;
  *(inited + 72) = v22;
  v25 = swift_allocObject();
  *(v25 + 16) = v31;
  v26 = sub_1B9F1DAFC(inited, 1, sub_1BA45A268, v25);

  return v26;
}

uint64_t sub_1BA459ADC(uint64_t a1, uint64_t a2)
{
  sub_1B9F1C048(0, &qword_1EBBF2D78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;

  sub_1BA459E78(a1, a2, 0, inited + 32);
  type metadata accessor for MutableArrayDataSourceWithLayout();
  sub_1BA45A458(0, &qword_1EDC5DBF0, sub_1B9F32148, MEMORY[0x1E69E6F90]);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  v7 = sub_1B9FE5D88(inited);
  swift_setDeallocating();
  v8 = sub_1BA45A4BC(inited + 32);
  *(v6 + 32) = v7;
  (*(v2 + 592))(v11, v8);
  sub_1BA0117AC();
  v9 = sub_1B9F293A8(v11);
  return MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:sectionLayout:)(v6, 1, v9);
}

uint64_t PlaceholderTextDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

double sub_1BA459D40@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EBBE8848 != -1)
  {
    swift_once();
  }

  v9[4] = xmmword_1EDC67D78;
  v9[5] = *&qword_1EDC67D88;
  v9[6] = xmmword_1EDC67D98;
  v9[7] = unk_1EDC67DA8;
  v9[0] = xmmword_1EDC67D38;
  v9[1] = *&qword_1EDC67D48;
  v9[2] = xmmword_1EDC67D58;
  v9[3] = *&qword_1EDC67D68;
  v16 = qword_1EDC67D48;
  v15 = xmmword_1EDC67D38;
  v2 = unk_1EDC67D50;
  v4 = xmmword_1EDC67D58;
  v3 = qword_1EDC67D68;
  v14 = qword_1EDC67DB0;
  v12 = unk_1EDC67D90;
  v13 = *(&xmmword_1EDC67D98 + 8);
  v10 = unk_1EDC67D70;
  v11 = *(&xmmword_1EDC67D78 + 8);
  sub_1B9F1D9A4(v9, &v8);
  sub_1B9F1DA18(v2, v4, *(&v4 + 1), v3);
  *a1 = v15;
  *(a1 + 16) = v16;
  v5 = v11;
  *(a1 + 56) = v10;
  *(a1 + 72) = v5;
  v6 = v13;
  *(a1 + 88) = v12;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 104) = v6;
  *(a1 + 120) = v14;
  sub_1B9F1DA18(*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

uint64_t sub_1BA459E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1BA4A1798();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0xD000000000000014;
  v19 = 0x80000001BA4EB850;
  sub_1BA4A1788();
  v12 = sub_1BA4A1748();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  MEMORY[0x1BFAF1350](v12, v14);

  v15 = v19;
  *a4 = v18;
  *(a4 + 8) = v15;
  v18 = type metadata accessor for PlaceholderTextCollectionViewCell();
  sub_1BA10E8A8();
  result = sub_1BA4A6808();
  *(a4 + 16) = result;
  *(a4 + 24) = v17;
  *(a4 + 32) = a1;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t PlaceholderTextItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PlaceholderTextItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1BA45A038(uint64_t a1)
{
  v2 = sub_1BA45A404();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

id sub_1BA45A0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 592))(v4);
  sub_1BA0117AC();
  return sub_1B9F293A8(v4);
}

uint64_t PlaceholderTextDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1BA45A268()
{
  (*(*(v0 + 16) + 592))(v2);
  sub_1BA0117AC();
  return sub_1B9F293A8(v2);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1BA45A2DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1BA45A324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for PlaceholderTextDataSource()
{
  result = qword_1EBBF2D60;
  if (!qword_1EBBF2D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA45A404()
{
  result = qword_1EBBF2D70;
  if (!qword_1EBBF2D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2D70);
  }

  return result;
}

void sub_1BA45A458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t DataTypeDetailConfiguration.ChartComponent.init(hkType:respectsSystemMargins:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t *sub_1BA45A518(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v4[2] = a1;
  *(v4 + 40) = a2;
  v8 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v4[3] = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v4[4] = v8;
  v9 = v7;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v9;
  v4[6] = sub_1BA4531C8;
  v4[7] = v10;

  return v4;
}

id sub_1BA45A5D0(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a3;
  v5 = MEMORY[0x1E69E6720];
  sub_1BA45E348(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v30 - v7;
  sub_1BA45E348(0, &qword_1EDC6E440, MEMORY[0x1E6969530], v5);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_1BA4A1728();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v31 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v32 = sub_1BA4A0FA8();
  v17 = *(v32 - 8);
  v18 = MEMORY[0x1EEE9AC00](v32);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v3;
  v21 = [*v3 identifier];
  if (v21)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v21 = sub_1BA4A6758();

    if (a2)
    {
LABEL_3:
      if (*(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue + 8))
      {
        v22 = 0;
      }

      else
      {
        v22 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue);
      }

      if (*(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue + 8) & 1) == 0 && (*(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue))
      {
        v23 = 0x2000;
      }

      else
      {
        v23 = 0;
      }

      sub_1BA45E3AC(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date, v10, &qword_1EDC6E440, MEMORY[0x1E6969530]);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_1B9F82BF4(v10, &qword_1EDC6E440, MEMORY[0x1E6969530]);
        v24 = v30;
        sub_1BA45E3AC(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval, v30, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
        v25 = v32;
        if ((*(v17 + 48))(v24, 1, v32) == 1)
        {
          v26 = v22;
          goto LABEL_15;
        }

        (*(v17 + 32))(v20, v24, v25);
      }

      else
      {
        (*(v12 + 32))(v16, v10, v11);
        (*(v12 + 16))(v31, v16, v11);
        sub_1BA4A0F78();
        (*(v12 + 8))(v16, v11);
        v25 = v32;
      }

      v26 = v22;
      goto LABEL_19;
    }
  }

  (*(v12 + 56))(v10, 1, 1, v11);
  sub_1B9F82BF4(v10, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  v24 = v30;
  v25 = v32;
  (*(v17 + 56))(v30, 1, 1, v32);
  v23 = 0;
  v26 = 0;
LABEL_15:
  sub_1B9F82BF4(v24, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  sub_1BA4A1718();
  sub_1BA4A0F78();
LABEL_19:
  v27 = sub_1BA4A0F28();
  v28 = [v34 interactiveChartForTypeIdentifier:v21 preferredOverlay:v26 chartOptions:v23 displayDateInterval:v27 restorationUserActivity:v33[1] chartSummaryTrendModel:v35];

  (*(v17 + 8))(v20, v25);
  return v28;
}

id sub_1BA45AB34(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a3;
  v5 = MEMORY[0x1E69E6720];
  sub_1BA45E348(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v30 - v7;
  sub_1BA45E348(0, &qword_1EDC6E440, MEMORY[0x1E6969530], v5);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_1BA4A1728();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v31 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v32 = sub_1BA4A0FA8();
  v17 = *(v32 - 8);
  v18 = MEMORY[0x1EEE9AC00](v32);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v3;
  v21 = [*(v3 + 16) identifier];
  if (v21)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v21 = sub_1BA4A6758();

    if (a2)
    {
LABEL_3:
      if (*(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue + 8))
      {
        v22 = 0;
      }

      else
      {
        v22 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue);
      }

      if (*(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue + 8) & 1) == 0 && (*(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue))
      {
        v23 = 0x2000;
      }

      else
      {
        v23 = 0;
      }

      sub_1BA45E3AC(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date, v10, &qword_1EDC6E440, MEMORY[0x1E6969530]);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_1B9F82BF4(v10, &qword_1EDC6E440, MEMORY[0x1E6969530]);
        v24 = v30;
        sub_1BA45E3AC(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval, v30, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
        v25 = v32;
        if ((*(v17 + 48))(v24, 1, v32) == 1)
        {
          v26 = v22;
          goto LABEL_15;
        }

        (*(v17 + 32))(v20, v24, v25);
      }

      else
      {
        (*(v12 + 32))(v16, v10, v11);
        (*(v12 + 16))(v31, v16, v11);
        sub_1BA4A0F78();
        (*(v12 + 8))(v16, v11);
        v25 = v32;
      }

      v26 = v22;
      goto LABEL_19;
    }
  }

  (*(v12 + 56))(v10, 1, 1, v11);
  sub_1B9F82BF4(v10, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  v24 = v30;
  v25 = v32;
  (*(v17 + 56))(v30, 1, 1, v32);
  v23 = 0;
  v26 = 0;
LABEL_15:
  sub_1B9F82BF4(v24, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  sub_1BA4A1718();
  sub_1BA4A0F78();
LABEL_19:
  v27 = sub_1BA4A0F28();
  v28 = [v34 interactiveChartForTypeIdentifier:v21 preferredOverlay:v26 chartOptions:v23 displayDateInterval:v27 restorationUserActivity:*(v33 + 24) chartSummaryTrendModel:v35];

  (*(v17 + 8))(v20, v25);
  return v28;
}

uint64_t DataTypeDetailConfiguration.ChartComponent.makeDataSource(context:)(uint64_t a1)
{
  v3 = sub_1BA4A1798();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 8);
  if ((*(a1 + 48) & 0xFE) == 2)
  {
    v9 = sub_1BA45B7B8(a1, 0, sub_1B9FAB774, 0, sub_1BA45D32C, 0, *v1, v8);

    sub_1BA45E0D0();
    v11 = swift_allocObject();
    v12 = *(v9 + 24);
    *(v11 + 16) = *(v9 + 16);
    *(v11 + 24) = v12;
    *(v11 + 32) = v9;
    *(v11 + 40) = 0;
  }

  else
  {
    v13 = *(a1 + 112);
    v43 = v8;
    v14 = v13;
    v42 = v7;
    DataTypeDetailChartCell.Item.init(dataType:restorationUserActivity:)(v42, v13, &v47);
    v15 = v47;
    v16 = v48;
    v17 = v49;
    sub_1BA45E348(0, &qword_1EDC5DCA0, sub_1B9F32244, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    v41 = xmmword_1BA4B5480;
    *(v18 + 16) = xmmword_1BA4B5480;
    *(v18 + 56) = &type metadata for DataTypeDetailChartCell.Item;
    *(v18 + 64) = sub_1BA40661C();
    v19 = swift_allocObject();
    *(v18 + 32) = v19;
    *(v19 + 16) = v15;
    *(v19 + 32) = v16;
    v46 = v17;
    *(v19 + 48) = v17;

    v20 = v15;
    v45 = *(&v15 + 1);
    v44 = v16;
    sub_1BA4A1788();
    v21 = sub_1BA4A1748();
    v23 = v22;
    (*(v4 + 8))(v6, v3);
    sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

    v25 = Array<A>.identifierToIndexDict()(v24);

    sub_1B9F1C048(0, &qword_1EDC5DC90);
    inited = swift_initStackObject();
    *(inited + 16) = v41;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    *(inited + 48) = v18;
    *(inited + 56) = v25;
    *(inited + 64) = v21;
    *(inited + 72) = v23;
    v27 = swift_allocObject();
    v28 = v42;
    *(v27 + 16) = v42;
    v29 = v43;
    *(v27 + 24) = v43;
    type metadata accessor for MutableArrayDataSourceWithLayout();
    swift_allocObject();
    v30 = v28;
    v31 = sub_1B9F1DAFC(inited, 1, sub_1BA45E6E4, v27);

    sub_1BA114D9C(a1, &v47);
    v32 = swift_allocObject();
    v33 = v52;
    *(v32 + 80) = v51;
    *(v32 + 96) = v33;
    *(v32 + 112) = v53;
    *(v32 + 128) = v54;
    v34 = v48;
    *(v32 + 16) = v47;
    *(v32 + 32) = v34;
    v35 = v50;
    *(v32 + 48) = v49;
    *(v32 + 64) = v35;
    v36 = sub_1BA45B7B8(a1, v31, sub_1B9FAB774, 0, sub_1BA45E0C8, v32, v30, v29);
    v38 = v37;

    sub_1BA45E0D0();
    v11 = swift_allocObject();
    v39 = *(v36 + 24);
    *(v11 + 16) = *(v36 + 16);
    *(v11 + 24) = v39;
    *(v11 + 32) = v36;
    *(v11 + 40) = 1;
  }

  return v11;
}

uint64_t sub_1BA45B5D0@<X0>(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a2 + 112);
  v6 = HKCodableChartFeedItemData.chartTrendModel.getter();
  a3[3] = &type metadata for DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem;
  a3[4] = sub_1BA45E62C();
  v7 = swift_allocObject();
  *a3 = v7;
  v7[4] = a1;
  v7[5] = v5;
  v7[6] = v6;
  v8 = v6;
  v9 = a1;
  v10 = v5;
  v11 = [v9 identifier];
  v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v14 = v13;

  MEMORY[0x1BFAF1350](v12, v14);

  v7[2] = 0xD000000000000018;
  v7[3] = 0x80000001BA509AF0;
  return result;
}

void DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem.init(dataType:restorationUserActivity:trendModel:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  a4[2] = a1;
  a4[3] = a2;
  a4[4] = a3;
  v7 = a3;
  v8 = a1;
  v9 = a2;
  v10 = [v8 identifier];
  v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v13 = v12;

  MEMORY[0x1BFAF1350](v11, v13);

  *a4 = 0xD000000000000018;
  a4[1] = 0x80000001BA509AF0;
}

uint64_t sub_1BA45B7B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8)
{
  v51 = a8;
  v49 = a5;
  v50 = a6;
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v10 = MEMORY[0x1E6968130];
  sub_1BA45E348(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v47 - v12;
  sub_1BA4A27B8();
  sub_1BA45E348(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v14 = sub_1BA4A1C68();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v48 = xmmword_1BA4B5480;
  *(v17 + 16) = xmmword_1BA4B5480;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x1E69A3B98], v14);
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v18 = swift_allocObject();
  v47 = xmmword_1BA4B5470;
  *(v18 + 16) = xmmword_1BA4B5470;
  *(v18 + 32) = a7;
  v19 = sub_1BA4A0FA8();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v20 = swift_allocObject();
  *(v20 + 16) = v48;
  v21 = a7;
  *(v20 + 32) = sub_1BA4A6F38();
  v22 = MEMORY[0x1BFAED020](v17, v18, v13, v20);

  sub_1B9F82BF4(v13, &qword_1EDC6E2A0, v10);
  v23 = v22;
  *&v48 = v23;
  v24 = sub_1BA4A26C8();

  v25 = swift_allocObject();
  *(v25 + 16) = v47;
  v26 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v27 = sub_1BA4A6758();
  v28 = [v26 initWithKey:v27 ascending:0];

  *(v25 + 32) = v28;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v29 = sub_1BA4A6AE8();

  [v24 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30 = v24;
  v31 = sub_1BA4A1B68();
  v32 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v30 managedObjectContext:v31 sectionNameKeyPath:0 cacheName:0];

  sub_1B9F126E0();
  v34 = objc_allocWithZone(v33);
  v35 = v32;
  v36 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v35);
  v37 = swift_allocObject();
  v38 = v50;
  *(v37 + 16) = v49;
  *(v37 + 24) = v38;
  *(v37 + 32) = v21;
  LOBYTE(v14) = v51;
  *(v37 + 40) = v51;
  sub_1BA1F2BF8(0);
  swift_allocObject();
  v39 = v21;
  v40 = v36;

  sub_1B9F17A68(v40, sub_1BA45E6E0, v37, 0);

  v41 = swift_allocObject();
  *(v41 + 16) = v39;
  *(v41 + 24) = v14;
  sub_1BA1F2BBC(0);
  swift_allocObject();
  v42 = v39;

  v44 = sub_1BA45A518(v43, 0, sub_1BA45E6E4, v41);
  v45 = sub_1BA45D9E0(v52, v44, v53, v54);

  return v45;
}

uint64_t DataTypeDetailConfiguration.ChartComponent.makeTrendBackedChartDataSource<A>(context:backupDataSource:cellRegistrationBlock:chartItemMaker:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v57 = a4;
  v58 = a7;
  v52 = a5;
  v53 = a6;
  v54 = a2;
  v55 = a3;
  v56 = a9;
  v50 = MEMORY[0x1E6968130];
  sub_1BA45E348(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v48 - v12;
  v14 = *v9;
  v51 = *(v9 + 8);
  sub_1BA4A27B8();
  sub_1BA45E348(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v15 = sub_1BA4A1C68();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v48 = xmmword_1BA4B5480;
  *(v18 + 16) = xmmword_1BA4B5480;
  (*(v16 + 104))(v18 + v17, *MEMORY[0x1E69A3B98], v15);
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v19 = swift_allocObject();
  v49 = xmmword_1BA4B5470;
  *(v19 + 16) = xmmword_1BA4B5470;
  *(v19 + 32) = v14;
  v20 = sub_1BA4A0FA8();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v21 = swift_allocObject();
  *(v21 + 16) = v48;
  v22 = v14;
  *(v21 + 32) = sub_1BA4A6F38();
  v23 = MEMORY[0x1BFAED020](v18, v19, v13, v21);

  sub_1B9F82BF4(v13, &qword_1EDC6E2A0, v50);
  v24 = v23;
  v25 = sub_1BA4A26C8();

  v26 = swift_allocObject();
  *(v26 + 16) = v49;
  v27 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v28 = sub_1BA4A6758();
  v29 = [v27 initWithKey:v28 ascending:0];

  *(v26 + 32) = v29;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v30 = sub_1BA4A6AE8();

  [v25 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = v25;
  v32 = sub_1BA4A1B68();
  v33 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v31 managedObjectContext:v32 sectionNameKeyPath:0 cacheName:0];

  sub_1B9F126E0();
  v35 = objc_allocWithZone(v34);
  v36 = v33;
  v37 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v36);
  v38 = swift_allocObject();
  v39 = v53;
  *(v38 + 16) = v52;
  *(v38 + 24) = v39;
  *(v38 + 32) = v22;
  LOBYTE(v18) = v51;
  *(v38 + 40) = v51;
  sub_1BA1F2BF8(0);
  swift_allocObject();
  v40 = v22;
  v41 = v37;

  sub_1B9F17A68(v41, sub_1BA45E318, v38, 0);

  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  *(v42 + 24) = v18;
  sub_1BA1F2BBC(0);
  swift_allocObject();
  v43 = v40;

  v45 = sub_1BA45A518(v44, 0, sub_1BA45E328, v42);
  v46 = DataTypeDetailConfiguration.ChartComponent.makeChartDataSource<A, B>(backupDataSource:chartWithLayoutDataSource:cellRegistrationBlock:)(v54, v45, v55, v57);

  return v46;
}

uint64_t DataTypeDetailConfiguration.ChartComponent.makeSharableSummaryChartDataSource(context:)(void *a1)
{
  v2 = sub_1BA45B7B8(a1, 0, sub_1B9FAB774, 0, sub_1BA45D32C, 0, *v1, *(v1 + 8));

  return v2;
}

uint64_t DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem.restorationUserActivity.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem.trendModel.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem.createInteractiveChart(chartFactory:chartContext:)(void *a1, uint64_t a2)
{
  if (*(v2 + 32))
  {
    v3 = a1;
    v4 = a2;
    v5 = HKChartSummaryTrendModel.makeModel(updatedFor:)(a2);
    a2 = v4;
    v6 = v5;
    a1 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1BA45AB34(a1, a2, v6);

  return v7;
}

void DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem.hash(into:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  if (!v1)
  {
    sub_1BA4A84A8();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_1BA4A84A8();
    return;
  }

  sub_1BA4A84A8();
  v3 = v1;
  sub_1BA4A77A8();

  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1BA4A84A8();
  v4 = v2;
  sub_1BA4A77A8();
}

uint64_t DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  if (!v1)
  {
    sub_1BA4A84A8();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1BA4A84A8();
    return sub_1BA4A84D8();
  }

  sub_1BA4A84A8();
  v3 = v1;
  sub_1BA4A77A8();

  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1BA4A84A8();
  v4 = v2;
  sub_1BA4A77A8();

  return sub_1BA4A84D8();
}

void *sub_1BA45C62C()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_1BA45C654(void *a1, uint64_t a2)
{
  if (*(v2 + 32))
  {
    v3 = a1;
    v4 = a2;
    v5 = HKChartSummaryTrendModel.makeModel(updatedFor:)(a2);
    a2 = v4;
    v6 = v5;
    a1 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1BA45AB34(a1, a2, v6);

  return v7;
}

uint64_t sub_1BA45C6D0()
{
  sub_1BA4A8488();
  DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem.hash(into:)();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA45C72C()
{
  sub_1BA4A8488();
  DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem.hash(into:)();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA45C780(uint64_t a1)
{
  v2 = sub_1BA45E62C();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

id DataTypeDetailConfiguration.ChartComponent.SharableChartItem.chartModel.getter()
{
  v1 = *(v0 + 24);
  if ([v1 hasChartModel])
  {
    return [v1 chartModel];
  }

  else
  {
    return 0;
  }
}

uint64_t _s18HealthExperienceUI27DataTypeDetailConfigurationV14ChartComponentV014DatabaseBackedH4ItemV15reuseIdentifierSSvg_0()
{
  type metadata accessor for DataTypeDetailChartCell();
  sub_1BA403C4C();
  return sub_1BA4A6808();
}

void DataTypeDetailConfiguration.ChartComponent.SharableChartItem.init(dataType:data:trendModel:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  a4[2] = a1;
  a4[3] = a2;
  a4[4] = a3;
  v7 = a3;
  v8 = a1;
  v9 = a2;
  v10 = [v8 identifier];
  v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v13 = v12;

  MEMORY[0x1BFAF1350](v11, v13);

  *a4 = 0xD000000000000012;
  a4[1] = 0x80000001BA509B10;
}

id DataTypeDetailConfiguration.ChartComponent.SharableChartItem.createInteractiveChart(chartFactory:chartContext:)(void *a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E6720];
  sub_1BA45E348(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - v7;
  sub_1BA45E348(0, &qword_1EDC6E440, MEMORY[0x1E6969530], v5);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - v17;
  v20 = v2[2];
  v19 = v2[3];
  v21 = v2[4];
  if (![v19 hasChartModel])
  {
    return 0;
  }

  result = [v19 chartModel];
  if (!result)
  {
    return result;
  }

  v40 = result;
  v41 = a1;
  v39 = a2;
  if (!a2)
  {
    v24 = sub_1BA4A1728();
    (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
    goto LABEL_9;
  }

  v38 = v20;
  sub_1BA45E3AC(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date, v14, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  v23 = a2;
  v24 = sub_1BA4A1728();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v14, 1, v24) != 1)
  {
    (*(v25 + 32))(v18, v14, v24);
    (*(v25 + 56))(v18, 0, 1, v24);
    v20 = v38;
    goto LABEL_14;
  }

  sub_1BA45E3AC(v23 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval, v8, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  v26 = sub_1BA4A0FA8();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v8, 1, v26) == 1)
  {
    sub_1B9F82BF4(v8, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
    v20 = v38;
LABEL_9:
    sub_1BA4A1728();
    (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
    goto LABEL_12;
  }

  v37 = v21;
  sub_1BA4A0F58();
  v21 = v37;
  (*(v27 + 8))(v8, v26);
  (*(v25 + 56))(v18, 0, 1, v24);
  v20 = v38;
LABEL_12:
  sub_1BA4A1728();
  if ((*(*(v24 - 8) + 48))(v14, 1, v24) != 1)
  {
    sub_1B9F82BF4(v14, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  }

LABEL_14:
  v28 = [v20 identifier];
  v29 = v41;
  if (!v28)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v28 = sub_1BA4A6758();

    if (v21)
    {
      goto LABEL_16;
    }

LABEL_18:
    v30 = 0;
    goto LABEL_19;
  }

  if (!v21)
  {
    goto LABEL_18;
  }

LABEL_16:
  v30 = HKChartSummaryTrendModel.makeModel(updatedFor:)(v39);
LABEL_19:
  sub_1BA45E3AC(v18, v11, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  v31 = sub_1BA4A1728();
  v32 = *(v31 - 8);
  v33 = 0;
  if ((*(v32 + 48))(v11, 1, v31) != 1)
  {
    v33 = sub_1BA4A16B8();
    (*(v32 + 8))(v11, v31);
  }

  v34 = v40;
  v35 = [v29 remoteInteractiveChartForTypeIdentifier:v28 model:v40 chartSummaryTrendModel:v30 displayDate:v33];

  sub_1B9F82BF4(v18, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  return v35;
}

void DataTypeDetailConfiguration.ChartComponent.SharableChartItem.hash(into:)()
{
  v1 = *(v0 + 32);
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  sub_1BA4A77A8();
  if (v1)
  {
    sub_1BA4A84A8();
    v2 = v1;
    sub_1BA4A77A8();
  }

  else
  {
    sub_1BA4A84A8();
  }
}

uint64_t DataTypeDetailConfiguration.ChartComponent.SharableChartItem.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  sub_1BA4A77A8();
  sub_1BA4A84A8();
  if (v1)
  {
    v2 = v1;
    sub_1BA4A77A8();
  }

  return sub_1BA4A84D8();
}

uint64_t sub_1BA45D0C8()
{
  v1 = *(v0 + 32);
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  sub_1BA4A77A8();
  sub_1BA4A84A8();
  if (v1)
  {
    v2 = v1;
    sub_1BA4A77A8();
  }

  return sub_1BA4A84D8();
}

void sub_1BA45D174()
{
  v1 = *(v0 + 32);
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  sub_1BA4A77A8();
  if (v1)
  {
    sub_1BA4A84A8();
    v2 = v1;
    sub_1BA4A77A8();
  }

  else
  {
    sub_1BA4A84A8();
  }
}

uint64_t sub_1BA45D234()
{
  v1 = *(v0 + 32);
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  sub_1BA4A77A8();
  sub_1BA4A84A8();
  if (v1)
  {
    v2 = v1;
    sub_1BA4A77A8();
  }

  return sub_1BA4A84D8();
}

uint64_t sub_1BA45D2DC(uint64_t a1)
{
  v2 = sub_1BA45E5D8();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA45D32C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = HKCodableChartFeedItemData.chartTrendModel.getter();
  a3[3] = &type metadata for DataTypeDetailConfiguration.ChartComponent.SharableChartItem;
  a3[4] = sub_1BA45E5D8();
  v7 = swift_allocObject();
  *a3 = v7;
  v7[4] = a2;
  v7[5] = a1;
  v7[6] = v6;
  v8 = v6;
  v9 = a2;
  v10 = a1;
  v11 = [v9 identifier];
  v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v14 = v13;

  MEMORY[0x1BFAF1350](v12, v14);

  v7[2] = 0xD000000000000012;
  v7[3] = 0x80000001BA509B10;
  return result;
}

uint64_t sub_1BA45D460(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, void, void), uint64_t a4, uint64_t a5)
{
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, v36);
  sub_1B9F32244();
  sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v12 = v35;
    v13 = [v35 userData];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1BA4A1608();
      v34 = v12;
      v16 = a3;
      v17 = v9;
      v18 = v15;
      v20 = v19;

      v21 = sub_1BA4A15F8();
      v22 = v18;
      v9 = v17;
      a3 = v16;
      v12 = v34;
      sub_1B9F2BB4C(v22, v20);
    }

    else
    {
      v21 = 0;
    }

    v23 = [objc_allocWithZone(MEMORY[0x1E69A4188]) initWithData_];

    if (v23)
    {
      sub_1BA45E348(0, &qword_1EDC5DCA0, sub_1B9F32244, MEMORY[0x1E69E6F90]);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1BA4B5480;
      a3(v36, v23, a5);
      v25 = v37;
      v26 = v38;
      v27 = __swift_project_boxed_opaque_existential_1(v36, v37);
      *(v24 + 56) = v25;
      *(v24 + 64) = *(v26 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v24 + 32));
      (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v27, v25);

      __swift_destroy_boxed_opaque_existential_1(v36);
    }

    else
    {
      sub_1BA4A3DD8();
      v29 = sub_1BA4A3E88();
      v30 = sub_1BA4A6FB8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1B9F07000, v29, v30, "Unable to decode sharable charting model", v31, 2u);
        MEMORY[0x1BFAF43A0](v31, -1, -1);
      }

      (*(v9 + 8))(v11, v8);
      return MEMORY[0x1E69E7CC0];
    }

    return v24;
  }

  else
  {
    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD000000000000038, 0x80000001BA509B70);
    sub_1BA4A7FB8();
    MEMORY[0x1BFAF1350](93, 0xE100000000000000);
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

id sub_1BA45D830(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1BA4A6598();
  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 estimatedDimension_];
  v9 = [v7 fractionalWidthDimension_];
  if (qword_1EDC6D4A0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDC6D4B0;
  v11 = qword_1EDC6D4A8;
  v12 = v10;
  sub_1BA4A75C8();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v7 estimatedDimension_];

  if (a4)
  {
    v22 = 3;
  }

  else
  {
    v22 = 2;
  }

  sub_1B9F1DA18(2, 1, v11, v12);
  sub_1B9F0ADF8(0, &qword_1EDC6B530);
  *&v24 = v6;
  *(&v24 + 1) = v21;
  v25 = v9;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = v22;
  v31 = v14;
  v32 = v16;
  v33 = v18;
  v34 = v20;
  return sub_1B9F293A8(&v24);
}

uint64_t sub_1BA45D9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    sub_1BA45E228();
    swift_allocObject();

    v9 = sub_1BA063820(v8, a1);

    sub_1BA45E2AC(0, &qword_1EDC69050, sub_1BA45E228, &protocol witness table for PrimarySecondaryDataSource<A, B>, type metadata accessor for CellRegistering);
    v10 = swift_allocObject();
    v10[4] = v9;
    v12 = v9[3];
    v11 = v9[4];
    v10[2] = v12;
    v10[3] = v11;
    v13 = swift_allocObject();
    v14 = 0;
    v13[2] = v9;
    v13[3] = a3;
    v13[4] = a4;
    v10[5] = sub_1BA45E680;
    v10[6] = v13;
  }

  else
  {
    sub_1BA45E2AC(0, &qword_1EDC69070, sub_1BA1F2BBC, &protocol witness table for DataSourceWithLayout<A>, type metadata accessor for CellRegistering);
    v10 = swift_allocObject();
    v10[4] = a2;
    v10[5] = a3;
    v10[6] = a4;
    v12 = *(a2 + 24);
    v11 = *(a2 + 32);
    v10[2] = v12;
    v10[3] = v11;
    v14 = 1;
  }

  sub_1BA45E140();
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v11;
  *(v15 + 32) = v10;
  *(v15 + 40) = v14;
  swift_bridgeObjectRetain_n();

  return v15;
}

uint64_t DataTypeDetailConfiguration.ChartComponent.makeChartDataSource<A, B>(backupDataSource:chartWithLayoutDataSource:cellRegistrationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = type metadata accessor for PrimarySecondaryDataSource();
    swift_unknownObjectRetain();
    v8 = swift_unknownObjectRetain();
    sub_1B9F34FD8(v8, a1);
    swift_unknownObjectRelease();
    v9 = SnapshotDataSource<>.withCellRegistration(_:)(a3, a4, v7, &protocol witness table for PrimarySecondaryDataSource<A, B>);

    v10 = type metadata accessor for CellRegistering();
    v11 = nullsub_1(v9, v10);
    nullsub_1(v11, v10);
    v12 = type metadata accessor for CellRegistering();

    v14 = static DataSourceBuilder.buildEither<A, B>(first:)(v13, v10, v12, &protocol witness table for CellRegistering<A>, &protocol witness table for CellRegistering<A>);

    swift_unknownObjectRelease();
  }

  else
  {
    v15 = SnapshotDataSource.withCellRegistration(_:)(a3, a4);
    v16 = type metadata accessor for CellRegistering();
    v17 = nullsub_1(v15, v16);
    v18 = nullsub_1(v17, v16);

    type metadata accessor for PrimarySecondaryDataSource();
    v19 = type metadata accessor for CellRegistering();
    v14 = static DataSourceBuilder.buildEither<A, B>(second:)(v18, v19, v16, &protocol witness table for CellRegistering<A>, &protocol witness table for CellRegistering<A>);
  }

  type metadata accessor for PrimarySecondaryDataSource();
  type metadata accessor for CellRegistering();
  type metadata accessor for CellRegistering();
  v20 = type metadata accessor for _ConditionalDataSource();
  v21 = nullsub_1(v14, v20);

  return v21;
}

uint64_t _s18HealthExperienceUI27DataTypeDetailConfigurationV14ChartComponentV014DatabaseBackedH4ItemV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  sub_1B9F0ADF8(0, &qword_1EDC6E350);
  if ((sub_1BA4A7798() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v4)
    {
      return 0;
    }

    sub_1B9F0ADF8(0, &qword_1EDC6B618);
    v7 = v4;
    v8 = v2;
    v9 = sub_1BA4A7798();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if (v5)
    {
      sub_1B9F0ADF8(0, &qword_1EBBF2DA0);
      v10 = v5;
      v11 = v3;
      v12 = sub_1BA4A7798();

      if (v12)
      {
        return 1;
      }
    }
  }

  else if (!v5)
  {
    return 1;
  }

  return 0;
}

uint64_t _s18HealthExperienceUI27DataTypeDetailConfigurationV14ChartComponentV08SharableH4ItemV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a2[4];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {
    sub_1B9F0ADF8(0, &qword_1EDC6E350);
    if (sub_1BA4A7798() & 1) != 0 && (sub_1BA4A7798())
    {
      if (v2)
      {
        if (v3)
        {
          sub_1B9F0ADF8(0, &qword_1EBBF2DA0);
          v5 = v3;
          v6 = v2;
          v7 = sub_1BA4A7798();

          if (v7)
          {
            return 1;
          }
        }
      }

      else if (!v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1BA45E0D0()
{
  if (!qword_1EDC66CB0)
  {
    sub_1BA45E140();
    v0 = type metadata accessor for _ConditionalDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC66CB0);
    }
  }
}

void sub_1BA45E140()
{
  if (!qword_1EDC66CC8)
  {
    sub_1BA45E2AC(255, &qword_1EDC69050, sub_1BA45E228, &protocol witness table for PrimarySecondaryDataSource<A, B>, type metadata accessor for CellRegistering);
    sub_1BA45E2AC(255, &qword_1EDC69070, sub_1BA1F2BBC, &protocol witness table for DataSourceWithLayout<A>, type metadata accessor for CellRegistering);
    v0 = type metadata accessor for _ConditionalDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC66CC8);
    }
  }
}

void sub_1BA45E228()
{
  if (!qword_1EDC65328[0])
  {
    sub_1BA1F2BBC(255);
    type metadata accessor for MutableArrayDataSourceWithLayout();
    v0 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v1)
    {
      atomic_store(v0, qword_1EDC65328);
    }
  }
}

void sub_1BA45E2AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1BA45E348(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA45E3AC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA45E348(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1BA45E430()
{
  result = qword_1EDC64F30;
  if (!qword_1EDC64F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64F30);
  }

  return result;
}

unint64_t sub_1BA45E488()
{
  result = qword_1EDC64F18;
  if (!qword_1EDC64F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64F18);
  }

  return result;
}

unint64_t sub_1BA45E4E0()
{
  result = qword_1EBBF2D80;
  if (!qword_1EBBF2D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2D80);
  }

  return result;
}

unint64_t sub_1BA45E538()
{
  result = qword_1EBBF2D88;
  if (!qword_1EBBF2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2D88);
  }

  return result;
}

unint64_t sub_1BA45E5D8()
{
  result = qword_1EBBF2D98;
  if (!qword_1EBBF2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2D98);
  }

  return result;
}

unint64_t sub_1BA45E62C()
{
  result = qword_1EDC64F20;
  if (!qword_1EDC64F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64F20);
  }

  return result;
}

uint64_t objectdestroy_32Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1BA45E714()
{
  v0 = sub_1BA4A6AE8();
  v1 = HKUIJoinStringsForAutomationIdentifier();

  if (v1)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    __break(1u);
  }
}

id sub_1BA45E788()
{
  type metadata accessor for SummaryHeaderProfileNameView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

id SummaryHeaderProfileNameCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1BA45E8D0()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA123998();
  v5 = *MEMORY[0x1E69DDD58];
  v6 = objc_opt_self();
  v7 = [v6 preferredFontDescriptorWithTextStyle:v5 compatibleWithTraitCollection:0];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v10 = v5;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34 = v30;
      *v13 = 136315906;
      v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v31 = v10;
      v16 = sub_1B9F0B82C(v14, v15, &v34);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      v32 = 0;
      v33 = 1;
      sub_1B9F6C1E4(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v17 = sub_1BA4A6808();
      v19 = sub_1B9F0B82C(v17, v18, &v34);

      *(v13 + 14) = v19;
      *(v13 + 22) = 2080;
      LODWORD(v32) = 0;
      type metadata accessor for SymbolicTraits(0);
      v20 = sub_1BA4A6808();
      v22 = sub_1B9F0B82C(v20, v21, &v34);
      v10 = v31;

      *(v13 + 24) = v22;
      *(v13 + 32) = 2112;
      v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v13 + 34) = v23;
      v24 = v29;
      *v29 = v23;
      _os_log_impl(&dword_1B9F07000, v11, v12, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v13, 0x2Au);
      sub_1BA4601D8(v24, &qword_1EDC6B490, sub_1BA0004FC);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      v25 = v30;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    v26 = [v6 preferredFontDescriptorWithTextStyle_];
    v9 = [objc_opt_self() fontWithDescriptor:v26 size:0.0];
  }

  [v4 setFont_];

  [v4 setTextAlignment_];
  [v4 setAdjustsFontSizeToFitWidth_];
  LODWORD(v27) = 1148846080;
  [v4 setContentHuggingPriority:1 forAxis:v27];
  return v4;
}

char *sub_1BA45ECD8()
{
  v0 = sub_1BA4A3EA8();
  v71 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v65 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v65 - v4;
  v6 = [objc_allocWithZone(type metadata accessor for LabelWithSpinner()) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label;
  v8 = *&v6[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 secondaryLabelColor];
  [v10 setTextColor_];

  [*&v6[v7] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v6[v7] setNumberOfLines_];
  v12 = *&v6[v7];
  v13 = *MEMORY[0x1E69DDD80];
  v14 = objc_opt_self();
  v15 = v12;
  v16 = [v14 preferredFontDescriptorWithTextStyle:v13 compatibleWithTraitCollection:0];
  if (v16)
  {
    v17 = v16;
    v18 = [objc_opt_self() fontWithDescriptor:v16 size:0.0];
  }

  else
  {
    v69 = v2;
    v70 = v0;
    sub_1BA4A3DD8();
    v19 = v13;
    v20 = sub_1BA4A3E88();
    v21 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v74 = v67;
      *v22 = 136315906;
      v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v68 = v19;
      v25 = sub_1B9F0B82C(v23, v24, &v74);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v72 = 0;
      v73 = 1;
      sub_1B9F6C1E4(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v26 = sub_1BA4A6808();
      v28 = sub_1B9F0B82C(v26, v27, &v74);

      *(v22 + 14) = v28;
      *(v22 + 22) = 2080;
      LODWORD(v72) = 0;
      type metadata accessor for SymbolicTraits(0);
      v29 = sub_1BA4A6808();
      v31 = sub_1B9F0B82C(v29, v30, &v74);
      v19 = v68;

      *(v22 + 24) = v31;
      *(v22 + 32) = 2112;
      v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v22 + 34) = v32;
      v33 = v66;
      *v66 = v32;
      _os_log_impl(&dword_1B9F07000, v20, v21, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v22, 0x2Au);
      sub_1BA4601D8(v33, &qword_1EDC6B490, sub_1BA0004FC);
      MEMORY[0x1BFAF43A0](v33, -1, -1);
      v34 = v67;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v34, -1, -1);
      MEMORY[0x1BFAF43A0](v22, -1, -1);
    }

    v0 = v70;
    (*(v71 + 8))(v5, v70);
    v35 = [v14 preferredFontDescriptorWithTextStyle_];
    v18 = [objc_opt_self() fontWithDescriptor:v35 size:0.0];

    v2 = v69;
  }

  [v15 setFont_];

  [*&v6[v7] setMaximumContentSizeCategory_];
  [*&v6[v7] setAdjustsFontForContentSizeCategory_];
  [*&v6[v7] setTextAlignment_];
  LODWORD(v36) = 1148846080;
  [*&v6[v7] setContentCompressionResistancePriority:0 forAxis:v36];
  LODWORD(v37) = 1148846080;
  [*&v6[v7] setContentCompressionResistancePriority:1 forAxis:v37];
  LODWORD(v38) = 1148846080;
  [*&v6[v7] setContentHuggingPriority:1 forAxis:v38];
  [*&v6[v7] setIsAccessibilityElement_];
  v39 = *MEMORY[0x1E69DDD28];
  v40 = *&v6[v7];
  v41 = [v14 preferredFontDescriptorWithTextStyle:v39 compatibleWithTraitCollection:0];
  if (v41)
  {
    v42 = v41;
    v43 = [objc_opt_self() fontWithDescriptor:v41 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v44 = v39;
    v45 = sub_1BA4A3E88();
    v46 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v70 = v0;
      v48 = v47;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v74 = v68;
      *v48 = 136315906;
      v49 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v69 = v2;
      v51 = sub_1B9F0B82C(v49, v50, &v74);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2080;
      v72 = 0;
      v73 = 1;
      sub_1B9F6C1E4(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v52 = sub_1BA4A6808();
      v54 = sub_1B9F0B82C(v52, v53, &v74);

      *(v48 + 14) = v54;
      *(v48 + 22) = 2080;
      LODWORD(v72) = 0;
      type metadata accessor for SymbolicTraits(0);
      v55 = sub_1BA4A6808();
      v57 = sub_1B9F0B82C(v55, v56, &v74);

      *(v48 + 24) = v57;
      *(v48 + 32) = 2112;
      v58 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v48 + 34) = v58;
      v59 = v67;
      *v67 = v58;
      _os_log_impl(&dword_1B9F07000, v45, v46, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v48, 0x2Au);
      sub_1BA4601D8(v59, &qword_1EDC6B490, sub_1BA0004FC);
      MEMORY[0x1BFAF43A0](v59, -1, -1);
      v60 = v68;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v60, -1, -1);
      MEMORY[0x1BFAF43A0](v48, -1, -1);

      (*(v71 + 8))(v69, v70);
    }

    else
    {

      (*(v71 + 8))(v2, v0);
    }

    v42 = [v14 preferredFontDescriptorWithTextStyle_];
    v43 = [objc_opt_self() fontWithDescriptor:v42 size:0.0];
  }

  v61 = v43;

  [v40 setFont_];
  [*&v6[v7] setTextAlignment_];
  [*&v6[v7] setLineBreakMode_];
  LODWORD(v62) = 1148846080;
  [*&v6[v7] setContentCompressionResistancePriority:1 forAxis:v62];
  LODWORD(v63) = 1132068864;
  [*&v6[v7] setContentHuggingPriority:1 forAxis:v63];
  return v6;
}

uint64_t sub_1BA45F5A8(void *a1)
{
  sub_1B9F6C1E4(0, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18[-v3 - 8];
  v5 = sub_1BA4A2888();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1B9F0A534(a1, v18);
  sub_1B9F0D950(0, &qword_1EDC6E1F0);
  v9 = swift_dynamicCast();
  v10 = *(v6 + 56);
  if (v9)
  {
    v10(v4, 0, 1, v5);
    (*(v6 + 32))(v8, v4, v5);
    v11 = sub_1BA4A2838();
    v12 = [v11 type];

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = (v6 + 8);
    if (v12 == 1)
    {
      v14 = sub_1BA4A2AF8();
    }

    else
    {
      v14 = sub_1BA4A2AB8();
    }

    v16 = v14;
    (*v13)(v8, v5);
    return v16;
  }

  else
  {
    v10(v4, 1, 1, v5);
    sub_1BA4601D8(v4, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    return sub_1BA4A2AB8();
  }
}

uint64_t sub_1BA45F81C(uint64_t a1)
{
  v2 = v1;
  sub_1B9F6C1E4(0, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18[-v5 - 8];
  v7 = sub_1BA4A2888();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BA125230(a1);
  sub_1B9F0A534(a1, v18);
  sub_1B9F0D950(0, &qword_1EDC6E1F0);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    v13 = sub_1BA4A2818();
    if ((v14 & 1) == 0 && v13 == 1)
    {
      v15 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v1 action:sel_showProfileViewController];
      [v2 addGestureRecognizer_];
    }

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v12(v6, 1, 1, v7);
    return sub_1BA4601D8(v6, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
  }
}

void sub_1BA45FA74(void *a1)
{
  if (a1)
  {
    v7 = a1;
    if ([v7 type] == 1)
    {
      v2 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton;
      [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton) setHidden_];
      [*(v1 + v2) setUserInteractionEnabled_];
      v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButtonHeightConstraint);
      if (v3)
      {
        [v3 setActive_];

        return;
      }

LABEL_13:
      __break(1u);
      return;
    }
  }

  v4 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton;
  [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton) setHidden_];
  v5 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButtonHeightConstraint);
  if (!v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  [v5 setActive_];
  v6 = *(v1 + v4);

  [v6 setUserInteractionEnabled_];
}

double sub_1BA45FBA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B9F0A534(a1, v7);
  sub_1B9F0D950(0, &qword_1EDC6E1F0);
  sub_1B9F0D950(0, &qword_1EBBEC328);
  if (swift_dynamicCast())
  {
    sub_1B9F25598(v5, v8);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_1BA4A2C28();
    if (v3)
    {

      sub_1B9F0A534(v8, a2);
      __swift_destroy_boxed_opaque_existential_1(v8);
      return result;
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_1BA460114(v5);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_1BA45FCAC()
{
  v1 = [v0 viewController];
  if (v1)
  {
    v11 = v1;
    v2 = UIViewController.resolvedHealthStore.getter();
    if (v2)
    {
      v3 = v2;
      sub_1BA4A22B8();
      v4 = v3;
      v5 = sub_1BA4A22A8();
      v6 = objc_allocWithZone(type metadata accessor for ProfileViewController());
      v7 = v4;

      v8 = sub_1BA249DB8(v7, v5, v6);

      v9 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
      [v9 setModalPresentationStyle_];
      [v11 presentViewController:v9 animated:1 completion:0];

      v10 = v9;
    }

    else
    {
      v10 = v11;
    }
  }
}

id sub_1BA45FE54(uint64_t (*a1)(void), double a2, double a3, double a4, double a5)
{
  v11.receiver = v5;
  v11.super_class = a1();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_1BA45FED4(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12.receiver = a1;
  v12.super_class = a7();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_1BA45FF60(void *a1, uint64_t (*a2)(void))
{
  v6.receiver = v2;
  v6.super_class = a2();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1BA45FFE4(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_1BA460078(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA460114(uint64_t a1)
{
  sub_1BA460170();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA460170()
{
  if (!qword_1EBBEC320)
  {
    sub_1B9F0D950(255, &qword_1EBBEC328);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC320);
    }
  }
}

uint64_t sub_1BA4601D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B9F6C1E4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DataTypeDetailConfiguration.TrendsComponent.init(hkType:maximumNumberOfItems:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id DataTypeDetailConfiguration.TrendsComponent.hkType.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t DataTypeDetailConfiguration.TrendsComponent.makeDataSource(context:)(void *a1)
{
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = &v54 - v4;
  v5 = v1[1];
  v60 = *v1;
  v63 = v5;
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5460;
  v62 = a1;
  *(v6 + 32) = sub_1BA4A6F38();
  *(v6 + 40) = 0;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v7 = sub_1BA4A1318();
  v56 = v8;
  v57 = v7;
  v64 = sub_1BA4A27B8();
  sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v58 = v9;
  v10 = sub_1BA4A1C68();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  v54 = xmmword_1BA4B5480;
  *(v13 + 16) = xmmword_1BA4B5480;
  v14 = *MEMORY[0x1E69A3BA0];
  v15 = *(v11 + 104);
  v15(v13 + v12, v14, v10);
  sub_1BA4A2208();
  v61 = v6;
  v55 = sub_1BA4A2638();

  __swift_project_boxed_opaque_existential_1(v62, v62[3]);
  v62 = sub_1BA4A1B68();
  v16 = swift_allocObject();
  *(v16 + 16) = v54;
  v15(v16 + v12, v14, v10);
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B8B60;
  v18 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v19 = sub_1BA4A6758();
  v20 = [v18 initWithKey:v19 ascending:0];

  *(v17 + 32) = v20;
  v21 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v22 = sub_1BA4A6758();
  v23 = [v21 initWithKey:v22 ascending:1];

  *(v17 + 40) = v23;
  v24 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v25 = sub_1BA4A6758();
  v26 = [v24 initWithKey:v25 ascending:0];

  *(v17 + 48) = v26;
  v27 = sub_1BA4A0FA8();
  v28 = v59;
  (*(*(v27 - 8) + 56))();
  v29 = objc_allocWithZone(type metadata accessor for RelatedItemsFetchedResultsControllerDataSource());
  v30 = v60;
  *&v29[qword_1EDC84A78] = v60;
  v58 = v29;
  v31 = &v29[qword_1EDC84A80];
  v32 = v56;
  *v31 = v57;
  *(v31 + 1) = v32;
  v33 = v30;
  v57 = v55;
  v34 = MEMORY[0x1BFAED110]();
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v35 = sub_1BA4A6AE8();

  [v34 setSortDescriptors_];

  if (v30)
  {
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1BA4B5470;
    *(v36 + 32) = v33;
  }

  else
  {
    v36 = 0;
  }

  v37 = v33;
  v38 = v28;
  v39 = MEMORY[0x1BFAED020](v16, v36, v28, v61);

  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1BA4B5470;
  *(v40 + 32) = v39;
  v65 = v40;
  v41 = v57;
  v42 = v39;
  MEMORY[0x1BFAF1510]();
  if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v43 = sub_1BA4A6AE8();

  v44 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v34 setPredicate_];
  v45 = v63;
  [v34 setFetchLimit_];
  v46 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v47 = v62;
  v48 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0([v46 initWithFetchRequest:v34 managedObjectContext:v62 sectionNameKeyPath:0 cacheName:0]);

  sub_1B9F1C1B0(v38);
  sub_1BA460A60(0);
  swift_allocObject();
  v49 = sub_1BA0488BC(v48, v45);

  sub_1BA460AB4(0, &qword_1EDC67CA8, sub_1BA460A60, &protocol witness table for DataSourceWithSectionItemLimit<A>, type metadata accessor for DataSourceWithLayout);
  v50 = swift_allocObject();
  v52 = *(v49 + 40);
  v51 = *(v49 + 48);
  *(v50 + 16) = v49;
  *(v50 + 24) = v52;
  *(v50 + 32) = v51;
  *(v50 + 40) = 1;
  *(v50 + 48) = sub_1BA236D80;
  *(v50 + 56) = 0;

  return v50;
}

void sub_1BA460AB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1BA460C18()
{
  v1 = v0;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A1318();
  v4 = v3;
  v5 = objc_opt_self();
  v6 = *MEMORY[0x1E69DDCF8];
  v7 = [v5 preferredFontForTextStyle_];
  [v7 pointSize];
  v9 = v8;

  v10 = [objc_opt_self() configurationWithPointSize_];
  v11 = sub_1BA4A6758();
  v12 = [objc_opt_self() systemImageNamed_];

  v61 = v10;
  if (v12)
  {
    v13 = [v12 imageWithConfiguration_];

    v14 = [objc_opt_self() systemBlueColor];
    v15 = [v13 imageWithTintColor:v14 renderingMode:1];
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  v60 = v15;
  [v16 setImage_];
  sub_1B9F0ADF8(0, &qword_1EDC6B520);
  v59 = v16;
  v17 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
  MEMORY[0x1BFAF1350](v2, v4);

  v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v19 = sub_1BA4A6758();

  v20 = [v18 initWithString_];

  [v17 appendAttributedString_];
  type metadata accessor for MultilineButton();
  v21 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = v21;
  [v22 setAttributedTitle:v17 forState:0];
  v23 = [v22 titleLabel];
  if (v23)
  {
    v24 = v23;
    v25 = [v5 preferredFontForTextStyle_];
    [v24 setFont_];
  }

  v26 = [v22 titleLabel];

  if (v26)
  {
    [v26 setNumberOfLines_];
  }

  [v22 setContentHorizontalAlignment_];
  [v22 addTarget:v1 action:sel_didTapLearnMore_ forControlEvents:64];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  [v27 addSubview_];
  v28 = [v1 contentView];
  [v28 addSubview_];

  v58 = objc_opt_self();
  sub_1B9F109F8();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BA4BBC90;
  v30 = [v22 topAnchor];
  v31 = [v27 topAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v29 + 32) = v32;
  v33 = [v27 bottomAnchor];
  v34 = [v22 bottomAnchor];
  v35 = [v33 &selRef:v34 numberWithInteger:? + 5];

  *(v29 + 40) = v35;
  v36 = [v22 leadingAnchor];
  v37 = [v27 &selRef__totalDistance + 1];
  v38 = [v36 &selRef:v37 numberWithInteger:? + 5];

  *(v29 + 48) = v38;
  v39 = [v27 trailingAnchor];
  v40 = [v22 &selRef_cloudSyncObserverSyncCompleted_ + 4];

  v41 = [v39 constraintGreaterThanOrEqualToAnchor_];
  *(v29 + 56) = v41;
  v42 = [v27 topAnchor];
  v43 = [v1 contentView];
  v44 = [v43 topAnchor];

  v45 = [v42 constraintEqualToAnchor_];
  *(v29 + 64) = v45;
  v46 = [v27 bottomAnchor];
  v47 = [v1 contentView];
  v48 = [v47 bottomAnchor];

  v49 = [v46 constraintEqualToAnchor_];
  *(v29 + 72) = v49;
  v50 = [v27 leadingAnchor];
  v51 = [v1 contentView];
  v52 = [v51 leadingAnchor];

  v53 = [v50 constraintEqualToAnchor_];
  *(v29 + 80) = v53;
  v54 = [v27 trailingAnchor];
  v55 = [v1 contentView];
  v56 = [v55 trailingAnchor];

  v57 = [v54 constraintEqualToAnchor_];
  *(v29 + 88) = v57;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v62 = sub_1BA4A6AE8();

  [v58 activateConstraints_];
}

void sub_1BA4614B8()
{
  v1 = [objc_opt_self() boldButton];
  if (v0[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_flow + 8] > 1u)
  {
    if (qword_1EDC5E100 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
  sub_1BA4A1318();
  v2 = sub_1BA4A6758();

  [v1 setTitle:v2 forState:{0, 0xE000000000000000}];

  [v1 addTarget:v0 action:sel_didTapNext_ forControlEvents:64];
  v3 = [v0 buttonTray];
  [v3 addButton_];
}

id sub_1BA461760()
{
  v1 = sub_1BA4A6478();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A64C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A6488();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 dismissViewControllerAnimated:1 completion:{0, v11}];
  v15 = &v0[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_flow];
  v16 = v0[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_flow + 8];
  if (v16 <= 1)
  {
    v23 = v6;
    v17 = *v15;
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
    v22 = v5;
    (*(v10 + 104))(v13, *MEMORY[0x1E69E7F88], v9);
    sub_1BA02040C(v17, v16);
    v18 = sub_1BA4A7338();
    (*(v10 + 8))(v13, v9);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    aBlock[4] = sub_1BA020420;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_126;
    v20 = _Block_copy(aBlock);
    sub_1BA4A64A8();
    v24 = MEMORY[0x1E69E7CC0];
    sub_1B9F0AF18(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
    sub_1B9F3F378();
    sub_1B9F0AF18(&qword_1EDC5E6A0, sub_1B9F3F378);
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v8, v4, v20);
    _Block_release(v20);

    (*(v2 + 8))(v4, v1);
    (*(v23 + 8))(v8, v22);
  }

  return result;
}

id sub_1BA461C04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmergencyAccessBuddyStewieViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EmergencyAccessBuddyStewieViewController()
{
  result = qword_1EBBF2DC0;
  if (!qword_1EBBF2DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA461D08()
{
  result = type metadata accessor for EmergencyAccessUserStatus();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1BA461DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for EndSharingRelationshipNotificationUserInfo();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A1798();
  (*(*(v9 - 8) + 16))(v8, a2, v9);
  *&v8[*(v6 + 28)] = a3;
  sub_1BA461FF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v19 = 0x55656C69666F7270;
  v20 = 0xEB00000000444955;
  v11 = MEMORY[0x1E69E6158];
  sub_1BA4A7D58();
  v12 = sub_1BA4A1748();
  *(inited + 96) = v11;
  *(inited + 72) = v12;
  *(inited + 80) = v13;
  v19 = 0x54656C69666F7270;
  v20 = 0xEB00000000657079;
  sub_1BA4A7D58();
  *(inited + 168) = MEMORY[0x1E69E6530];
  *(inited + 144) = a3;
  sub_1B9FDB524(inited);
  swift_setDeallocating();
  sub_1BA1284D4();
  swift_arrayDestroy();
  sub_1BA15F610(v8);
  if (qword_1EDC5E410 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDC5E418;
  v15 = objc_allocWithZone(sub_1BA4A34C8());
  v16 = v14;
  v17 = sub_1BA4A34B8();
  sub_1BA15F6D0();
  v18 = sub_1BA4A7198();
  [v18 addOperation_];
}

void sub_1BA461FF0()
{
  if (!qword_1EDC6B418)
  {
    sub_1BA1284D4();
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B418);
    }
  }
}

uint64_t sub_1BA462048()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2DD0 = result;
  *algn_1EBBF2DD8 = v1;
  return result;
}

uint64_t sub_1BA462108()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2DE0 = result;
  *algn_1EBBF2DE8 = v1;
  return result;
}

uint64_t sub_1BA4621CC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2DF0 = result;
  *algn_1EBBF2DF8 = v1;
  return result;
}

uint64_t sub_1BA462290()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2E00 = result;
  *algn_1EBBF2E08 = v1;
  return result;
}

uint64_t sub_1BA46233C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2E10 = result;
  *algn_1EBBF2E18 = v1;
  return result;
}

uint64_t sub_1BA4623E8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2E20 = result;
  *algn_1EBBF2E28 = v1;
  return result;
}

void PopoverPresenting<>.presentViewControllerAsPopover(_:animated:sender:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  v9 = v6;
  if (a3)
  {
    swift_unknownObjectRetain();
    [v9 setModalPresentationStyle_];
    v7 = [v9 presentationController];
    if (v7)
    {
      v8 = v7;
      [v7 setSourceItem_];
    }

    swift_unknownObjectRelease();
    v6 = v9;
  }

  [v3 presentViewController:v6 animated:a2 & 1 completion:0];
}

uint64_t FavoritableFeedItemDataSource.init(managedObjectContext:pinnedContentManager:predicate:cellClass:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BA46328C(a1, a2, a3, a4, a5);

  return v7;
}

uint64_t FavoritableFeedItemDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return v0;
}

uint64_t FavoritableFeedItemDataSource.init(managedObjectContext:pinnedContentManagerProvider:predicate:cellClass:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BA4635BC(a1, a2, a3, a4, a5);

  return v7;
}

uint64_t FavoritableFeedItemDataSource.__allocating_init(managedObjectContext:pinnedContentManagerProvider:predicate:cellClass:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_1BA4635BC(a1, a2, a3, a4, a5);

  return v10;
}

uint64_t sub_1BA462790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, v47);
  sub_1B9F32244();
  sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v14 = v53[0];
    sub_1BA4A25A8();
    sub_1BA4A2478();
    sub_1B9F28360();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BA4B5480;
    sub_1B9F0A534(v53, v52);
    *(v15 + 56) = &type metadata for FavoritableFeedItem;
    *(v15 + 64) = sub_1BA15BC8C();
    v16 = swift_allocObject();
    v17 = v15;
    *(v15 + 32) = v16;
    *(&v50 + 1) = 0;
    v51 = 0;
    *(&v48 + 1) = v14;
    sub_1B9F0A534(v52, v47);
    v18 = v14;
    sub_1BA4A2748();
    LOBYTE(v49) = sub_1BA4A2728() & 1;
    LOWORD(v49) = v49;
    *(&v49 + 1) = (*(*(a5 + 8) + 8))(a4);
    *&v50 = v19;
    v20 = sub_1BA4A2758();
    v21 = sub_1BA1591A8(v20);

    if (v21)
    {
      v22 = [v21 identifier];

      v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v25 = v24;

      sub_1B9F1C048(0, &qword_1EDC6E330);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1BA4B9FD0;
      *(v26 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      *(v26 + 40) = v27;
      strcpy((v26 + 48), "FavoritesEdit");
      *(v26 + 62) = -4864;
      *(v26 + 64) = v23;
      *(v26 + 72) = v25;
      v28 = sub_1BA4A6AE8();

      v29 = HKUIJoinStringsForAutomationIdentifier();

      if (v29)
      {
        v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v52);
      *(&v50 + 1) = v30;
      v51 = v32;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v52);
    }

    v45 = v49;
    *(v16 + 48) = v48;
    *(v16 + 64) = v45;
    *(v16 + 80) = v50;
    *(v16 + 96) = v51;
    v46 = v47[1];
    *(v16 + 16) = v47[0];
    *(v16 + 32) = v46;

    __swift_destroy_boxed_opaque_existential_1(v53);
    return v17;
  }

  else
  {
    sub_1BA4A3E28();
    sub_1B9F0A534(a1, v47);
    v33 = sub_1BA4A3E88();
    v34 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v52[0] = v36;
      *v35 = 136315394;
      v53[0] = a6;
      swift_getMetatypeMetadata();
      v37 = sub_1BA4A6808();
      v39 = sub_1B9F0B82C(v37, v38, v52);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      sub_1B9F0A534(v47, v53);
      v40 = sub_1BA4A6808();
      v42 = v41;
      __swift_destroy_boxed_opaque_existential_1(v47);
      v43 = sub_1B9F0B82C(v40, v42, v52);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_1B9F07000, v33, v34, "[%s]: Incorrect viewmodel; expected FeedItem, got: %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      MEMORY[0x1BFAF43A0](v35, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v47);
    }

    (*(v11 + 8))(v13, v10);
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t FavoritableFeedItemDataSource.__allocating_init(managedObjectContext:pinnedContentManager:predicate:cellClass:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_1BA46328C(a1, a2, a3, a4, a5);

  return v10;
}

uint64_t sub_1BA462CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1BA4A3EA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, v49);
  sub_1B9F32244();
  sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v15 = v54[0];
    sub_1B9F28360();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BA4B5480;
    sub_1B9F0A534(a5, v54);
    *(v16 + 56) = &type metadata for FavoritableFeedItem;
    *(v16 + 64) = sub_1BA15BC8C();
    v17 = swift_allocObject();
    v18 = v16;
    *(v16 + 32) = v17;
    *(&v52 + 1) = 0;
    v53 = 0;
    *(&v50 + 1) = v15;
    sub_1B9F0A534(v54, v49);
    v19 = v15;
    sub_1BA4A2748();
    LOBYTE(v51) = sub_1BA4A2728() & 1;
    LOWORD(v51) = v51;
    *(&v51 + 1) = (*(*(a4 + 8) + 8))(a3);
    *&v52 = v20;
    v21 = sub_1BA4A2758();
    v22 = sub_1BA1591A8(v21);

    if (v22)
    {
      v23 = [v22 identifier];

      v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v26 = v25;

      sub_1B9F1C048(0, &qword_1EDC6E330);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1BA4B9FD0;
      *(v27 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      *(v27 + 40) = v28;
      strcpy((v27 + 48), "FavoritesEdit");
      *(v27 + 62) = -4864;
      *(v27 + 64) = v24;
      *(v27 + 72) = v26;
      v29 = sub_1BA4A6AE8();

      v30 = HKUIJoinStringsForAutomationIdentifier();

      if (v30)
      {
        v31 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v33 = v32;
      }

      else
      {
        v31 = 0;
        v33 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v54);
      *(&v52 + 1) = v31;
      v53 = v33;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v46 = v51;
    *(v17 + 48) = v50;
    *(v17 + 64) = v46;
    *(v17 + 80) = v52;
    *(v17 + 96) = v53;
    v47 = v49[1];
    *(v17 + 16) = v49[0];
    *(v17 + 32) = v47;

    return v18;
  }

  else
  {
    sub_1BA4A3E28();
    sub_1B9F0A534(a1, v49);
    v34 = sub_1BA4A3E88();
    v35 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v55 = v37;
      *v36 = 136315394;
      v54[0] = a6;
      swift_getMetatypeMetadata();
      v38 = sub_1BA4A6808();
      v40 = sub_1B9F0B82C(v38, v39, &v55);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      sub_1B9F0A534(v49, v54);
      v41 = sub_1BA4A6808();
      v43 = v42;
      __swift_destroy_boxed_opaque_existential_1(v49);
      v44 = sub_1B9F0B82C(v41, v43, &v55);

      *(v36 + 14) = v44;
      _os_log_impl(&dword_1B9F07000, v34, v35, "[%s]: Incorrect viewmodel; expected FeedItem, got: %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      MEMORY[0x1BFAF43A0](v36, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v49);
    }

    (*(v12 + 8))(v14, v11);
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t FavoritableFeedItemDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BA46328C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v30 = *v5;
  sub_1BA4A27B8();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1BA4A2388();
  v9 = sub_1BA4A26E8();
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BA4B7510;
  *(v10 + 32) = a3;
  *(v10 + 40) = v9;
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v11 = a3;
  v12 = v9;
  v13 = sub_1BA4A6AE8();

  v14 = [objc_opt_self() andPredicateWithSubpredicates_];

  v15 = v14;
  v16 = sub_1BA4A26C8();

  [v16 setFetchLimit_];
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B5470;
  v18 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v19 = sub_1BA4A6758();
  v20 = [v18 initWithKey:v19 ascending:1];

  *(v17 + 32) = v20;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v21 = sub_1BA4A6AE8();

  [v16 setSortDescriptors_];

  v22 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v16 managedObjectContext:a1 sectionNameKeyPath:0 cacheName:0];
  sub_1B9F126E0();
  v24 = objc_allocWithZone(v23);
  v25 = v22;
  v26 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v25);
  sub_1B9F0A534(a2, v33);
  v27 = swift_allocObject();
  v27[2] = a4;
  v27[3] = a5;
  sub_1B9F25598(v33, (v27 + 4));
  v27[9] = v30;
  v28 = sub_1B9F17A68(v26, sub_1BA1672F0, v27, 0);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v28;
}

uint64_t sub_1BA4635BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  sub_1BA4A27B8();
  v10 = sub_1BA4A26C8();
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5470;
  v12 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v13 = sub_1BA4A6758();
  v14 = [v12 initWithKey:v13 ascending:1];

  *(v11 + 32) = v14;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v15 = sub_1BA4A6AE8();

  [v10 setSortDescriptors_];

  v16 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v10 managedObjectContext:a1 sectionNameKeyPath:0 cacheName:0];
  sub_1B9F126E0();
  v18 = objc_allocWithZone(v17);
  v19 = v16;
  v20 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v19);
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = v9;

  v22 = sub_1B9F17A68(v20, sub_1BA2E9AD0, v21, 0);

  return v22;
}

uint64_t type metadata accessor for FavoritableFeedItemDataSource()
{
  result = qword_1EDC6C180;
  if (!qword_1EDC6C180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA463884(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_providedViewContext;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1BA463934(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_providedViewContext;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1BA463A34(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA463A90(uint64_t *a1))(id **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

id sub_1BA463BC0()
{
  sub_1BA466E58(0, &qword_1EDC5F930, type metadata accessor for TabModel);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_currentViewModel;
  swift_beginAccess();
  sub_1B9F374E8(v0 + v4, v12, &qword_1EDC68F40, &qword_1EDC68F50);
  if (v13)
  {
    sub_1B9F0D950(0, &qword_1EDC68F50);
    v5 = type metadata accessor for TabModel(0);
    v6 = swift_dynamicCast();
    (*(*(v5 - 8) + 56))(v3, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_1B9F43A50(v12, &qword_1EDC68F40, &qword_1EDC68F50);
    v5 = type metadata accessor for TabModel(0);
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  }

  type metadata accessor for TabModel(0);
  v7 = 1;
  v8 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_1BA463DCC(v3);
  if (v8)
  {
    v9 = type metadata accessor for ListContentConfigurationHostCell();
    v11.receiver = v0;
    v11.super_class = v9;
    return objc_msgSendSuper2(&v11, sel_tintAdjustmentMode);
  }

  return v7;
}

uint64_t sub_1BA463DCC(uint64_t a1)
{
  sub_1BA466E58(0, &qword_1EDC5F930, type metadata accessor for TabModel);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BA463E98(uint64_t a1)
{
  sub_1BA466E58(0, &qword_1EDC5F930, type metadata accessor for TabModel);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_currentViewModel;
  swift_beginAccess();
  sub_1B9F374E8(v1 + v6, v13, &qword_1EDC68F40, &qword_1EDC68F50);
  if (v14)
  {
    sub_1B9F0D950(0, &qword_1EDC68F50);
    v7 = type metadata accessor for TabModel(0);
    v8 = swift_dynamicCast();
    (*(*(v7 - 8) + 56))(v5, v8 ^ 1u, 1, v7);
  }

  else
  {
    sub_1B9F43A50(v13, &qword_1EDC68F40, &qword_1EDC68F50);
    v7 = type metadata accessor for TabModel(0);
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  }

  type metadata accessor for TabModel(0);
  v9 = (*(*(v7 - 8) + 48))(v5, 1, v7);
  result = sub_1BA463DCC(v5);
  if (v9)
  {
    v11 = type metadata accessor for ListContentConfigurationHostCell();
    v12.receiver = v1;
    v12.super_class = v11;
    return objc_msgSendSuper2(&v12, sel_setTintAdjustmentMode_, a1);
  }

  return result;
}

void sub_1BA4640A8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_baseIdentifier;
  swift_beginAccess();
  *v5 = v2;
  v5[1] = v3;

  if (v3)
  {

    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  [v4 setAccessibilityIdentifier_];
}

uint64_t sub_1BA464144()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_1BA46419C(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_baseIdentifier];
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 1) = a2;

  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  [v2 setAccessibilityIdentifier_];
}

void (*sub_1BA46424C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_baseIdentifier;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BA4642D4;
}

void sub_1BA4642D4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (*&v4[v3[4] + 8])
    {

      v5 = sub_1BA4A6758();
      v4 = v3[3];
    }

    else
    {
      v5 = 0;
    }

    [v4 setAccessibilityIdentifier_];
  }

  free(v3);
}

uint64_t sub_1BA464374(uint64_t a1, uint64_t *a2)
{
  sub_1B9F374E8(a1, v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA464898();
  return sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1BA464424@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_item;
  swift_beginAccess();
  return sub_1B9F374E8(v1 + v3, a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1BA464494(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA464898();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

void (*sub_1BA464518(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA46457C;
}

void sub_1BA46457C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA464898();
  }
}

id ListContentConfigurationHostCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ListContentConfigurationHostCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_providedViewContext] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_currentViewModel];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = &v1[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_configurationProvider];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = &v1[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_baseIdentifier];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v1[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_item];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_itemBasedTraitRegistration] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ListContentConfigurationHostCell();
  v7 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    [v9 setAutomaticallyUpdatesContentConfiguration_];
  }

  return v8;
}

id ListContentConfigurationHostCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ListContentConfigurationHostCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_providedViewContext] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_currentViewModel];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = &v4[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_configurationProvider];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v11 = &v4[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_baseIdentifier];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v4[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_item];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_itemBasedTraitRegistration] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ListContentConfigurationHostCell();
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  [v13 setAutomaticallyUpdatesContentConfiguration_];
  return v13;
}

void sub_1BA464898()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v89 - v7;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_item;
  swift_beginAccess();
  sub_1B9F374E8(&v0[v9], &v101, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  if (*(&v102 + 1))
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1BA4A27B8();
    if (swift_dynamicCast())
    {
      v10 = v100[0];
      v11 = [v100[0] userData];
      if (v11)
      {
        v12 = v11;
        v13 = sub_1BA4A1608();
        v95 = v14;

        v15 = [v10 baseAutomationIdentifier];
        if (v15)
        {
          v16 = v15;
          v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v19 = v18;
        }

        else
        {
          v17 = 0;
          v19 = 0;
        }

        v36 = &v1[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_baseIdentifier];
        swift_beginAccess();
        *v36 = v17;
        v36[1] = v19;

        if (v19)
        {

          v37 = sub_1BA4A6758();
        }

        else
        {
          v37 = 0;
        }

        [v1 setAccessibilityIdentifier_];

        v38 = [v10 actionHandlerClassName];
        v39 = v38;
        if (v38)
        {
        }

        [v1 setUserInteractionEnabled_];
        v40 = 0;
        sub_1B9F48634(v10, &v101);
        v94 = v13;
        v93 = v10;
        v56 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_configurationProvider;
        swift_beginAccess();
        sub_1B9F4A184(&v101, &v1[v56], &qword_1EDC66650, &qword_1EDC66658);
        swift_endAccess();
        v57 = sub_1BA463B28();
        v59 = v57;
        v60 = *(v58 + 24);
        if (v60)
        {
          v61 = *(v58 + 32);
          v62 = v58;
          v63 = *(v58 + 24);
          v91 = v59;
          __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
          v96 = v3;
          v92 = 0;
          v64 = v56;
          v65 = *(v61 + 80);
          v66 = swift_unknownObjectRetain();
          v67 = v61;
          v13 = v94;
          v65(v66, &protocol witness table for ListContentConfigurationHostCell, v60, v67);
          v56 = v64;
          v40 = v92;
          v3 = v96;
          (v91)(&v101, 0);
        }

        else
        {
          (v57)(&v101, 0);
        }

        sub_1B9F374E8(&v1[v56], v100, &qword_1EDC66650, &qword_1EDC66658);
        if (v100[3])
        {
          v96 = v56;
          sub_1B9F0A534(v100, v97);
          sub_1B9F43A50(v100, &qword_1EDC66650, &qword_1EDC66658);
          v75 = v98;
          v76 = v99;
          __swift_project_boxed_opaque_existential_1(v97, v98);
          (*(v76 + 32))(&v101, v13, v95, v75, v76);
          if (v40)
          {
            __swift_destroy_boxed_opaque_existential_1(v97);
            v68 = v93;
            sub_1BA4A3E28();
            v41 = v1;
            v42 = v40;
            v43 = sub_1BA4A3E88();
            v44 = sub_1BA4A6FB8();

            LODWORD(v92) = v44;
            if (!os_log_type_enabled(v43, v44))
            {

              (*(v3 + 8))(v5, v2);
              v55 = &selRef_createHKUnitPreferenceController;
              v13 = v94;
LABEL_30:
              [v1 v55[267]];
              sub_1B9F2BB4C(v13, v95);

              return;
            }

            v91 = v43;
            v93 = v68;
            v96 = v3;
            v45 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v100[0] = v90;
            *v45 = 136315394;
            sub_1B9F374E8(&v1[v9], &v101, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
            v46 = *(&v102 + 1);
            if (*(&v102 + 1))
            {
              v47 = __swift_project_boxed_opaque_existential_1(&v101, *(&v102 + 1));
              v89[1] = v89;
              v48 = *(v46 - 8);
              v49 = MEMORY[0x1EEE9AC00](v47);
              v51 = v89 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v48 + 16))(v51, v49);
              sub_1B9F43A50(&v101, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
              v52 = sub_1BA4A2D58();
              v54 = v53;
              (*(v48 + 8))(v51, v46);
            }

            else
            {
              sub_1B9F43A50(&v101, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
              v52 = 0x6E776F6E6B6E75;
              v54 = 0xE700000000000000;
            }

            v68 = v93;
            v69 = sub_1B9F0B82C(v52, v54, v100);

            *(v45 + 4) = v69;
            *(v45 + 12) = 2080;
            swift_getErrorValue();
            v70 = sub_1BA4A8418();
            v72 = sub_1B9F0B82C(v70, v71, v100);

            *(v45 + 14) = v72;
            v73 = v91;
            _os_log_impl(&dword_1B9F07000, v91, v92, "Failed to update content for feed item: %s with error: %s", v45, 0x16u);
            v74 = v90;
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v74, -1, -1);
            MEMORY[0x1BFAF43A0](v45, -1, -1);

            (*(v96 + 8))(v5, v2);
            v13 = v94;
LABEL_29:
            v55 = &selRef_createHKUnitPreferenceController;
            goto LABEL_30;
          }

          __swift_destroy_boxed_opaque_existential_1(v97);
          v68 = v93;
          v56 = v96;
        }

        else
        {
          sub_1B9F43A50(v100, &qword_1EDC66650, &qword_1EDC66658);
          v101 = 0u;
          v102 = 0u;
          v103 = 0;
          v68 = v93;
        }

        v77 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_currentViewModel;
        swift_beginAccess();
        sub_1B9F4A184(&v101, &v1[v77], &qword_1EDC68F40, &qword_1EDC68F50);
        swift_endAccess();
        sub_1B9F374E8(&v1[v56], &v101, &qword_1EDC66650, &qword_1EDC66658);
        v78 = *(&v102 + 1);
        if (*(&v102 + 1))
        {
          v79 = v13;
          v80 = v103;
          v81 = __swift_project_boxed_opaque_existential_1(&v101, *(&v102 + 1));
          v82 = *(v78 - 8);
          v83 = MEMORY[0x1EEE9AC00](v81);
          v85 = v89 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v82 + 16))(v85, v83);
          sub_1B9F43A50(&v101, &qword_1EDC66650, &qword_1EDC66658);
          v86 = (*(v80 + 8))(v78, v80);
          (*(v82 + 8))(v85, v78);
          if (*(v86 + 16))
          {
            v87 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_itemBasedTraitRegistration;
            if (*&v1[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_itemBasedTraitRegistration])
            {
              swift_unknownObjectRetain();
              sub_1BA4A7718();
              swift_unknownObjectRelease();
            }

            v55 = &selRef_createHKUnitPreferenceController;
            v88 = MEMORY[0x1BFAF2130](v86, sel_setNeedsUpdateConfiguration);

            *&v1[v87] = v88;
            swift_unknownObjectRelease();
            v13 = v79;
            goto LABEL_30;
          }
        }

        else
        {
          sub_1B9F43A50(&v101, &qword_1EDC66650, &qword_1EDC66658);
        }

        goto LABEL_29;
      }
    }
  }

  else
  {
    sub_1B9F43A50(&v101, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  }

  sub_1BA4A3E28();
  v20 = v0;
  v21 = sub_1BA4A3E88();
  v22 = sub_1BA4A6FB8();

  if (os_log_type_enabled(v21, v22))
  {
    v96 = v3;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v100[0] = v24;
    *v23 = 136315138;
    sub_1B9F374E8(&v0[v9], &v101, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v25 = *(&v102 + 1);
    if (*(&v102 + 1))
    {
      v26 = __swift_project_boxed_opaque_existential_1(&v101, *(&v102 + 1));
      v94 = v89;
      v27 = *(v25 - 8);
      v95 = v2;
      v28 = v27;
      v29 = MEMORY[0x1EEE9AC00](v26);
      v31 = v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v31, v29);
      sub_1B9F43A50(&v101, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
      v32 = sub_1BA4A2D58();
      v34 = v33;
      (*(v28 + 8))(v31, v25);
      v2 = v95;
    }

    else
    {
      v32 = 0x6E776F6E6B6E55;
      sub_1B9F43A50(&v101, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
      v34 = 0xE700000000000000;
    }

    v35 = sub_1B9F0B82C(v32, v34, v100);

    *(v23 + 4) = v35;
    _os_log_impl(&dword_1B9F07000, v21, v22, "Failed to update hosting content for feed item: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1BFAF43A0](v24, -1, -1);
    MEMORY[0x1BFAF43A0](v23, -1, -1);

    (*(v96 + 8))(v8, v2);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }
}

uint64_t sub_1BA4655BC(uint64_t a1)
{
  v2 = v1;
  sub_1B9F7E0A0(0, &qword_1EDC5ECE0);
  v112 = *(v4 - 8);
  v113 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v111 = v107 - v5;
  sub_1BA466E58(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v110 = v107 - v7;
  v8 = sub_1BA4A3EA8();
  v115 = *(v8 - 8);
  v116 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v114 = v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v117 = (v107 - v11);
  v12 = sub_1BA4A40C8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v107 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v107 - v21;
  v23 = *(v13 + 16);
  v23(v107 - v21, a1, v12, v20);
  [v2 bounds];
  Width = CGRectGetWidth(v133);
  type metadata accessor for ObservableCellState(0);
  v25 = swift_allocObject();
  (v23)(v18, v22, v12);
  swift_beginAccess();
  (v23)(v15, v18, v12);
  sub_1BA4A4EE8();
  v26 = *(v13 + 8);
  v26(v18, v12);
  swift_endAccess();
  swift_beginAccess();
  *v132 = Width;
  v119 = v25;
  v27 = v118;
  sub_1BA4A4EE8();
  swift_endAccess();
  v26(v22, v12);
  v28 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_providedViewContext;
  swift_beginAccess();
  if (!*&v27[v28])
  {
    v29 = v117;
    sub_1BA4A3DD8();
    v30 = v27;
    v31 = sub_1BA4A3E88();
    v32 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v31, v32))
    {
      LODWORD(v109) = v32;
      v33 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v132[0] = v108;
      *v33 = 136446210;
      v34 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_item;
      swift_beginAccess();
      sub_1B9F374E8(&v30[v34], &v120, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
      v35 = *(&v121 + 1);
      if (*(&v121 + 1))
      {
        v36 = __swift_project_boxed_opaque_existential_1(&v120, *(&v121 + 1));
        v107[1] = v107;
        v37 = *(v35 - 8);
        v38 = MEMORY[0x1EEE9AC00](v36);
        v40 = v107 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v37 + 16))(v40, v38);
        sub_1B9F43A50(&v120, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
        v41 = sub_1BA4A2D58();
        v43 = v42;
        (*(v37 + 8))(v40, v35);
        v29 = v117;
      }

      else
      {
        sub_1B9F43A50(&v120, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
        v43 = 0x80000001BA4FACA0;
        v41 = 0xD00000000000002FLL;
      }

      v44 = sub_1B9F0B82C(v41, v43, v132);

      *(v33 + 4) = v44;
      _os_log_impl(&dword_1B9F07000, v31, v109, "observableViewEnvironment was unexpectedly nil on %{public}s. Initializing with default HKHealthStore and Presentation", v33, 0xCu);
      v45 = v108;
      __swift_destroy_boxed_opaque_existential_1(v108);
      MEMORY[0x1BFAF43A0](v45, -1, -1);
      MEMORY[0x1BFAF43A0](v33, -1, -1);
    }

    (*(v115 + 8))(v29, v116);
  }

  v46 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v48 = Strong;
    UIViewController.resolvedPinnedContentManager.getter(&v120);

    sub_1B9F1134C(&v120, v132);
  }

  else
  {
    v49 = sub_1BA4A22B8();
    v120 = 0u;
    v121 = 0u;
    v122 = 0;
    v50 = v46;
    v51 = sub_1BA4A22A8();
    v132[3] = v49;
    v132[4] = MEMORY[0x1E69A3CF8];
    v132[0] = v51;
    if (*(&v121 + 1))
    {
      sub_1B9F43A50(&v120, &unk_1EDC6ADB0, &qword_1EDC6ADC0);
    }
  }

  if (*&v27[v28])
  {
    v52 = *&v27[v28];
  }

  else
  {
    sub_1B9F0A534(v132, &v120);
    v53 = swift_unknownObjectWeakLoadStrong();
    if (v53)
    {
      v54 = v53;
      v55 = v46;
      UIViewController.resolvedHealthExperienceStore.getter(&v126);

      sub_1B9F1134C(&v126, v129);
    }

    else
    {
      v56 = sub_1BA4A1B08();
      v126 = 0u;
      v127 = 0u;
      v128 = 0;
      v57 = v46;
      v58 = sub_1BA4A1AF8();
      v130 = v56;
      v131 = MEMORY[0x1E69A3B38];
      v129[0] = v58;
      if (*(&v127 + 1))
      {
        sub_1B9F43A50(&v126, &qword_1EDC6AE08, &qword_1EDC6E248);
      }
    }

    type metadata accessor for ProvidedViewContext(0);
    v52 = swift_allocObject();
    swift_beginAccess();
    v125[0] = v46;
    sub_1B9F2ACE8();
    v59 = v46;
    sub_1BA4A4EE8();
    swift_endAccess();
    *(v52 + OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext_pinnedContentManagerProvider) = 0;
    sub_1B9F0A534(&v120, v52 + OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext_pinnedContentManager);
    sub_1B9F0A534(v129, &v126);
    swift_beginAccess();
    sub_1B9F0A534(&v126, v125);
    sub_1B9F0D950(0, &qword_1EDC6E248);
    sub_1BA4A4EE8();
    __swift_destroy_boxed_opaque_existential_1(&v126);
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1(&v120);
    __swift_destroy_boxed_opaque_existential_1(v129);
  }

  v60 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_configurationProvider;
  swift_beginAccess();
  sub_1B9F374E8(&v27[v60], &v120, &qword_1EDC66650, &qword_1EDC66658);
  if (!*(&v121 + 1))
  {

    sub_1B9F43A50(&v120, &qword_1EDC66650, &qword_1EDC66658);
    return __swift_destroy_boxed_opaque_existential_1(v132);
  }

  sub_1B9F1134C(&v120, v129);
  v61 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_currentViewModel;
  swift_beginAccess();
  sub_1B9F374E8(&v27[v61], &v120, &qword_1EDC68F40, &qword_1EDC68F50);
  if (!*(&v121 + 1))
  {

    v72 = &qword_1EDC68F40;
    v73 = &qword_1EDC68F50;
LABEL_27:
    sub_1B9F43A50(&v120, v72, v73);
LABEL_29:
    __swift_destroy_boxed_opaque_existential_1(v129);
    return __swift_destroy_boxed_opaque_existential_1(v132);
  }

  sub_1B9F1134C(&v120, &v126);
  v62 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_item;
  swift_beginAccess();
  sub_1B9F374E8(&v27[v62], &v120, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  if (!*(&v121 + 1))
  {

    __swift_destroy_boxed_opaque_existential_1(&v126);

    v72 = &qword_1EDC6E1A0;
    v73 = &qword_1EDC6E1B0;
    goto LABEL_27;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  sub_1BA4A27B8();

  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v126);

    goto LABEL_29;
  }

  v109 = v62;
  v63 = v125[0];
  v65 = v130;
  v64 = v131;
  v117 = __swift_project_boxed_opaque_existential_1(v129, v130);
  v66 = [v63 uniqueIdentifier];
  v67 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v69 = v68;

  v124 = 0;
  memset(v123, 0, sizeof(v123));
  sub_1BA2B2858(&v120);
  v70 = v67;
  v71 = v119;
  (*(v64 + 24))(v125, v70, v69, &v126, v123, v52, v119, &v120, v65, v64);
  v117 = 0;

  sub_1B9F8051C(&v120);
  sub_1B9F43A50(v123, &qword_1EDC68F40, &qword_1EDC68F50);
  MEMORY[0x1BFAF1EF0](v125);
  v75 = v130;
  v76 = v131;
  __swift_project_boxed_opaque_existential_1(v129, v130);
  (*(v76 + 56))(v71, v75, v76);
  sub_1BA4A75F8();
  v77 = v130;
  v78 = v131;
  __swift_project_boxed_opaque_existential_1(v129, v130);
  v79 = (*(v78 + 40))(v71, v77, v78);
  if (v79)
  {
    v80 = v130;
    v81 = v131;
    __swift_project_boxed_opaque_existential_1(v129, v130);
    v82 = v110;
    (*(v81 + 48))(v119, v80, v81);
    MEMORY[0x1BFAF1F10](v82);
  }

  v83 = v130;
  v84 = v131;
  __swift_project_boxed_opaque_existential_1(v129, v130);
  v85 = v117;
  v86 = (*(v84 + 64))(&v126, v83, v84);
  if (!v85)
  {
    [v27 setIndentationLevel_];

    __swift_destroy_boxed_opaque_existential_1(&v126);
    goto LABEL_29;
  }

  __swift_destroy_boxed_opaque_existential_1(&v126);

  __swift_destroy_boxed_opaque_existential_1(v129);
  v87 = v114;
  sub_1BA4A3DD8();
  v88 = v27;
  v89 = sub_1BA4A3E88();
  LODWORD(v63) = sub_1BA4A6FB8();

  v90 = os_log_type_enabled(v89, v63);
  v117 = v85;
  if (v90)
  {
    v110 = v88;
    v91 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v129[0] = v108;
    *v91 = 136315138;
    sub_1B9F374E8(v109 + v27, &v120, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v92 = *(&v121 + 1);
    if (*(&v121 + 1))
    {
      v93 = __swift_project_boxed_opaque_existential_1(&v120, *(&v121 + 1));
      v109 = v107;
      v94 = *(v92 - 8);
      LODWORD(v118) = v63;
      v63 = v94;
      v95 = MEMORY[0x1EEE9AC00](v93);
      v97 = v107 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v63 + 16))(v97, v95);
      sub_1B9F43A50(&v120, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
      v98 = sub_1BA4A2D58();
      v100 = v99;
      (*(v63 + 8))(v97, v92);
      LOBYTE(v63) = v118;
    }

    else
    {
      v98 = 0xD000000000000011;
      sub_1B9F43A50(&v120, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
      v100 = 0x80000001BA4FACD0;
    }

    v101 = sub_1B9F0B82C(v98, v100, v129);

    *(v91 + 4) = v101;
    _os_log_impl(&dword_1B9F07000, v89, v63, "Unable to load configuration for %s", v91, 0xCu);
    v102 = v108;
    __swift_destroy_boxed_opaque_existential_1(v108);
    MEMORY[0x1BFAF43A0](v102, -1, -1);
    MEMORY[0x1BFAF43A0](v91, -1, -1);

    (*(v115 + 8))(v114, v116);
  }

  else
  {

    (*(v115 + 8))(v87, v116);
  }

  sub_1B9F7E0A0(0, &qword_1EBBED9A8);
  *(&v121 + 1) = v103;
  v122 = sub_1BA1BD318();
  __swift_allocate_boxed_opaque_existential_1(&v120);
  v104 = [objc_opt_self() isAppleInternalInstall];
  v105 = v111;
  if (v104)
  {
    MEMORY[0x1EEE9AC00](v104);
  }

  sub_1BA4A59B8();
  v106 = v113;
  sub_1BA4A5998();
  (*(v112 + 8))(v105, v106);
  MEMORY[0x1BFAF1EF0](&v120);

  return __swift_destroy_boxed_opaque_existential_1(v132);
}

id sub_1BA466840()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v6 = sub_1BA4A3E88();
  v7 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = sub_1BA4A85D8();
    v12 = sub_1B9F0B82C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1B9F07000, v6, v7, "[%s]: providerInvalidatedContentConfiguration, updating configuration", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return [v1 setNeedsUpdateConfiguration];
}

id ListContentConfigurationHostCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ListContentConfigurationHostCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA466B70(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_providedViewContext;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

void (*sub_1BA466C30(uint64_t *a1))(id **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

uint64_t sub_1BA466CC8()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_1BA466D24(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = &v5[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_baseIdentifier];
  swift_beginAccess();
  *v6 = a1;
  *(v6 + 1) = a2;

  if (a2)
  {

    v7 = sub_1BA4A6758();
  }

  else
  {
    v7 = 0;
  }

  [v5 setAccessibilityIdentifier_];
}

void (*sub_1BA466DCC(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_baseIdentifier;
  *(v3 + 24) = *v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BA4642D4;
}

void sub_1BA466E58(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id OnboardingAddToFavoritesViewController.__allocating_init(title:detailText:icon:healthExperienceStore:pinnedContentManager:objectType:useSystemMargins:)(int a1, int a2, int a3, int a4, void *a5, uint64_t a6, uint64_t a7, void *a8, char a9)
{
  v13 = objc_allocWithZone(v9);
  sub_1B9F0A534(a6, v26);
  sub_1B9F0A534(a7, v25);
  type metadata accessor for OnboardingAddToFavoritesDataSource();
  swift_allocObject();
  v14 = a8;
  v15 = OnboardingAddToFavoritesDataSource.init(objectType:healthExperienceStore:pinnedContentManager:)(v14, v26, v25);
  *&v13[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSourceAdaptor] = 0;
  v16 = &v13[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSource];
  *v16 = v15;
  v16[1] = &protocol witness table for MutableArrayDataSource;
  *&v13[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_tableViewStyle] = 2;
  v13[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_useSystemMargins] = a9;
  v13[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_allowAnimations] = 0;
  v17 = sub_1BA4A6758();

  v18 = sub_1BA4A6758();

  v24.receiver = v13;
  v24.super_class = type metadata accessor for OnboardingTableViewController();
  v19 = objc_msgSendSuper2(&v24, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v17, v18, a5, 1);

  v20 = v19;
  [v20 setModalInPresentation_];

  __swift_destroy_boxed_opaque_existential_1(a7);
  __swift_destroy_boxed_opaque_existential_1(a6);
  return v20;
}

id OnboardingAddToFavoritesViewController.init(title:detailText:icon:healthExperienceStore:pinnedContentManager:objectType:useSystemMargins:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, char a9)
{
  v10 = v9;
  sub_1B9F0A534(a6, v25);
  sub_1B9F0A534(a7, v24);
  type metadata accessor for OnboardingAddToFavoritesDataSource();
  swift_allocObject();
  v14 = a8;
  v15 = OnboardingAddToFavoritesDataSource.init(objectType:healthExperienceStore:pinnedContentManager:)(v14, v25, v24);
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSourceAdaptor] = 0;
  v16 = &v9[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSource];
  *v16 = v15;
  v16[1] = &protocol witness table for MutableArrayDataSource;
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_tableViewStyle] = 2;
  v9[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_useSystemMargins] = a9;
  v9[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_allowAnimations] = 0;
  v17 = sub_1BA4A6758();

  v18 = sub_1BA4A6758();

  v23.receiver = v10;
  v23.super_class = type metadata accessor for OnboardingTableViewController();
  v19 = objc_msgSendSuper2(&v23, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v17, v18, a5, 1);

  v20 = v19;
  [v20 setModalInPresentation_];

  __swift_destroy_boxed_opaque_existential_1(a7);
  __swift_destroy_boxed_opaque_existential_1(a6);
  return v20;
}

id OnboardingAddToFavoritesViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingAddToFavoritesViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SectionedDataSourceContainerViewType.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

unint64_t sub_1BA467678()
{
  result = qword_1EBBF2E78;
  if (!qword_1EBBF2E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2E78);
  }

  return result;
}

uint64_t sub_1BA4676CC(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v3 = sub_1BA4A1798();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for SummarySharingVersionMismatchCell();
  sub_1BA468C90();
  v7 = sub_1BA4A6808();
  v39 = v8;
  v41 = 0xD000000000000049;
  v42 = 0x80000001BA50A1B0;
  sub_1BA4A1788();
  v9 = sub_1BA4A1748();
  v11 = v10;
  v12 = *(v4 + 8);
  v12(v6, v3);
  MEMORY[0x1BFAF1350](v9, v11);

  v13 = v41;
  v14 = v42;
  sub_1B9FF6758();
  v15 = swift_allocObject();
  v38 = xmmword_1BA4B5480;
  *(v15 + 16) = xmmword_1BA4B5480;
  sub_1B9F0CF6C(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = v38;
  *(v16 + 56) = &type metadata for SummarySharingVersionMismatchItem;
  *(v16 + 64) = sub_1BA468D44();
  v17 = swift_allocObject();
  *(v16 + 32) = v17;
  v19 = v39;
  v18 = v40;
  v17[2] = v7;
  v17[3] = v19;
  v17[4] = v13;
  v17[5] = v14;
  v17[6] = v18;
  v17[7] = a2;

  sub_1BA4A1788();
  v20 = sub_1BA4A1748();
  v22 = v21;
  v12(v6, v3);
  v23 = MEMORY[0x1E69E7CC0];
  *(v15 + 48) = MEMORY[0x1E69E7CC0];
  v24 = sub_1B9F1C5F0(v23);
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 48) = v16;
  *(v15 + 56) = v24;

  v25 = Array<A>.identifierToIndexDict()(v16);

  *(v15 + 56) = v25;

  *(v15 + 64) = v20;
  *(v15 + 72) = v22;
  v41 = 0x3C53447961727241;
  v42 = 0xE800000000000000;
  sub_1BA4A1788();
  v26 = sub_1BA4A1748();
  v28 = v27;
  v12(v6, v3);
  MEMORY[0x1BFAF1350](v26, v28);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v29 = v41;
  v30 = v42;
  type metadata accessor for ArrayDataSource();
  swift_allocObject();
  v31 = sub_1B9F348D8(v15, v29, v30);

  sub_1BA243890(0);
  v32 = swift_allocObject();
  v32[4] = v31;
  v32[5] = sub_1BA46868C;
  v32[6] = 0;
  v34 = v31[5];
  v33 = v31[6];
  v32[2] = v34;
  v32[3] = v33;
  v35 = swift_allocObject();
  v35[2] = sub_1BA4686B0;
  v35[3] = 0;
  v35[4] = v32;
  sub_1BA468DC4(0, &qword_1EBBEF0C0, sub_1BA243890, &protocol witness table for CellRegistering<A>, type metadata accessor for DataSourceWithLayout);
  v36 = swift_allocObject();
  *(v36 + 16) = v32;
  *(v36 + 24) = v34;
  *(v36 + 32) = v33;
  *(v36 + 40) = 1;
  *(v36 + 48) = sub_1BA468D98;
  *(v36 + 56) = v35;
  swift_bridgeObjectRetain_n();

  return v36;
}

id sub_1BA467AF0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell_messageView;
  [v0 addSubview_];
  v2 = *&v0[v1];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = &v2[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_didTapActionButton];
  swift_beginAccess();
  v5 = *v4;
  *v4 = sub_1BA468D3C;
  v4[1] = v3;
  v6 = v2;
  v7 = v0;
  sub_1B9F0E310(v5);

  return [*&v0[v1] hk:v7 alignConstraintsWithView:?];
}

uint64_t sub_1BA467BD8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1B9F68124(v1 + v3, v11);
  if (v12)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    if (swift_dynamicCast())
    {
      v4 = v13;
      v5 = v14;
      v6 = v15;
      v7 = v16;
      v8 = v17;
      v9 = v18;
    }
  }

  else
  {
    sub_1B9F7B644(v11);
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  sub_1BA2A8AB0(&v13);
  sub_1BA0CAA04(v4, v5);
  return sub_1B9F7B644(a1);
}

void (*sub_1BA467D14(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x98uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell_item;
  *(v3 + 136) = v1;
  *(v3 + 144) = v4;
  swift_beginAccess();
  return sub_1BA467DA0;
}

void sub_1BA467DA0(uint64_t **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1B9F68124(v3[17] + v3[18], (v3 + 12));
    if (v3[15])
    {
      sub_1B9F0D950(0, &qword_1EDC6E1B0);
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      if (swift_dynamicCast())
      {
        v4 = v3[6];
        v5 = v3[7];
        v6 = v3[8];
        v7 = v3[9];
        v8 = v3[10];
        v9 = v3[11];
      }
    }

    else
    {
      sub_1B9F7B644((v3 + 12));
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
    }

    *v3 = v4;
    v3[1] = v5;
    v3[2] = v6;
    v3[3] = v7;
    v3[4] = v8;
    v3[5] = v9;
    sub_1BA2A8AB0(v3);
    sub_1BA0CAA04(v4, v5);
  }

  free(v3);
}

id sub_1BA46807C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingVersionMismatchCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA468124@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

void (*sub_1BA468180(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1BA467D14(v2);
  return sub_1B9FCDD98;
}

unint64_t sub_1BA4681F4()
{
  result = qword_1EBBF2E98;
  if (!qword_1EBBF2E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2E98);
  }

  return result;
}

unint64_t sub_1BA468248(uint64_t a1)
{
  *(a1 + 8) = sub_1BA468278();
  result = sub_1BA4682CC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1BA468278()
{
  result = qword_1EBBF2EA0;
  if (!qword_1EBBF2EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2EA0);
  }

  return result;
}

unint64_t sub_1BA4682CC()
{
  result = qword_1EBBF2EA8;
  if (!qword_1EBBF2EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2EA8);
  }

  return result;
}

uint64_t sub_1BA468320(void *a1)
{
  sub_1BA468CD8(0, &unk_1EBBF2EC8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA468C3C();
  sub_1BA4A8548();
  v9[15] = 0;
  sub_1BA4A8248();
  if (!v1)
  {
    v9[14] = 1;
    sub_1BA4A8248();
    v9[13] = 2;
    sub_1BA4A8208();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BA4684AC()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x4E676E6972616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6564496573756572;
  }
}

uint64_t sub_1BA468520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA4687C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA468548(uint64_t a1)
{
  v2 = sub_1BA468C3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA468584(uint64_t a1)
{
  v2 = sub_1BA468C3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA4685C0(uint64_t a1)
{
  v2 = sub_1BA468F5C();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

double sub_1BA46860C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1BA4688F4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

void *sub_1BA4686B0(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC6CB88 != -1)
  {
    v10 = v4;
    swift_once();
    v4 = v10;
  }

  v7 = __swift_project_value_buffer(v4, qword_1EDC6CB90);
  sub_1B9F37E38(v7, v6);
  *(v6 + 7) = 0x4024000000000000;
  *(v6 + 9) = 0x4024000000000000;
  v8 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA047354(v6);
  return v8;
}

uint64_t sub_1BA4687C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564496573756572 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BA4E1DC0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E676E6972616873 && a2 == 0xEB00000000656D61)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1BA4688F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  sub_1BA468CD8(0, &qword_1EBBF2EB0, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - v6;
  v8 = sub_1BA4A1798();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for SummarySharingVersionMismatchCell();
  sub_1BA468C90();
  sub_1BA4A6808();

  v33 = 0xD000000000000049;
  v34 = 0x80000001BA50A1B0;
  sub_1BA4A1788();
  v12 = sub_1BA4A1748();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  MEMORY[0x1BFAF1350](v12, v14);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA468C3C();
  sub_1BA4A8528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v35;
  v16 = v32;
  LOBYTE(v33) = 0;
  v17 = sub_1BA4A8188();
  v19 = v18;
  v31 = v17;
  LOBYTE(v33) = 1;
  v20 = sub_1BA4A8188();
  v22 = v21;
  v30 = v20;
  LOBYTE(v33) = 2;
  v23 = sub_1BA4A8138();
  v24 = v7;
  v26 = v25;
  (*(v16 + 8))(v24, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v28 = v30;
  *v15 = v31;
  v15[1] = v19;
  v15[2] = v28;
  v15[3] = v22;
  v15[4] = v23;
  v15[5] = v26;
  return result;
}

unint64_t sub_1BA468C3C()
{
  result = qword_1EBBF2EB8;
  if (!qword_1EBBF2EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2EB8);
  }

  return result;
}

unint64_t sub_1BA468C90()
{
  result = qword_1EBBF2EC0;
  if (!qword_1EBBF2EC0)
  {
    type metadata accessor for SummarySharingVersionMismatchCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBF2EC0);
  }

  return result;
}

void sub_1BA468CD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA468C3C();
    v7 = a3(a1, &type metadata for SummarySharingVersionMismatchItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1BA468D44()
{
  result = qword_1EBBF2ED8;
  if (!qword_1EBBF2ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2ED8);
  }

  return result;
}

void sub_1BA468DC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1BA468E58()
{
  result = qword_1EBBF2EE0;
  if (!qword_1EBBF2EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2EE0);
  }

  return result;
}

unint64_t sub_1BA468EB0()
{
  result = qword_1EBBF2EE8;
  if (!qword_1EBBF2EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2EE8);
  }

  return result;
}

unint64_t sub_1BA468F08()
{
  result = qword_1EBBF2EF0;
  if (!qword_1EBBF2EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2EF0);
  }

  return result;
}

unint64_t sub_1BA468F5C()
{
  result = qword_1EBBF2EF8;
  if (!qword_1EBBF2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2EF8);
  }

  return result;
}

unint64_t sub_1BA468FB0@<X0>(void *a1@<X8>)
{
  v2 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A1F88();
  v7 = v6;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v8 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v5, v7, 0, 0, 0, 0, v4, 0, 0);
  v10 = v9;
  a1[3] = v8;
  result = sub_1BA011754();
  a1[4] = result;
  *a1 = v10;
  return result;
}

id GetMoreFromHealthResultsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetMoreFromHealthResultsController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GetMoreFromHealthResultsController()
{
  result = qword_1EDC6E188;
  if (!qword_1EDC6E188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA469240(void **a1)
{
  sub_1B9F664FC(0, &qword_1EDC6AE40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v35 - v4;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1BA442F0C(v5);
  }

  v6 = v5[2];
  v39 = v5 + 4;
  v47[0] = (v5 + 4);
  v47[1] = v6;
  result = sub_1BA4A82B8();
  if (result >= v6)
  {
    if (v6 >= 2)
    {
      v35 = v5;
      v36 = a1;
      v37 = v1;
      v38 = v6;
      v10 = -1;
      v11 = 1;
      v12 = v39;
      do
      {
        v41 = v11;
        v42 = v10;
        v13 = *&v39[2 * v11];
        v40 = v12;
        do
        {
          v43 = v13;
          v14 = v12[1];
          ObjectType = swift_getObjectType();
          v16 = *(&v43 + 1);
          v17 = *(*(&v43 + 1) + 24);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v18 = v17(ObjectType, v16);
          v19 = [v18 displayName];

          v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v22 = v21;

          v45 = v20;
          v46 = v22;
          v23 = swift_getObjectType();
          v24 = (*(v14 + 24))(v23, v14);
          v25 = [v24 displayName];

          v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v28 = v27;

          v44[0] = v26;
          v44[1] = v28;
          v29 = sub_1BA4A17C8();
          v30 = v48;
          (*(*(v29 - 8) + 56))(v48, 1, 1, v29);
          sub_1B9F252FC();
          v31 = sub_1BA4A7BB8();
          sub_1BA46E6F0(v30, &qword_1EDC6AE40, MEMORY[0x1E6969770]);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          if (v31 != -1)
          {
            break;
          }

          v32 = *v12;
          v13 = *(v12 + 1);
          *v12 = v13;
          *(v12 + 1) = v32;
          v12 -= 2;
        }

        while (!__CFADD__(v10++, 1));
        v11 = v41 + 1;
        v12 = v40 + 2;
        v10 = v42 - 1;
      }

      while (v41 + 1 != v38);
      a1 = v36;
      v5 = v35;
    }
  }

  else
  {
    v8 = result;
    if (v6 >= 2)
    {
      sub_1B9F0D9AC(0, &unk_1EBBE9B28);
      v9 = sub_1BA4A6B98();
      *(v9 + 16) = v6 >> 1;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v45 = (v9 + 32);
    v46 = v6 >> 1;
    v34 = v9;
    sub_1BA46BFDC(&v45, v44, v47, v8);
    *(v34 + 16) = 0;
  }

  *a1 = v5;
  return result;
}

char *AllHighlightsByCategoryViewController.__allocating_init(healthExperienceStore:healthStore:provenance:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = &v10[OBJC_IVAR____TtC18HealthExperienceUI37AllHighlightsByCategoryViewController_provenance];
  *v11 = a3;
  *(v11 + 1) = a4;
  v12 = [objc_opt_self() allCategories];
  sub_1B9F0ADF8(0, &qword_1EDC6B5C0);
  v13 = sub_1BA4A6B08();

  sub_1B9F0A534(a1, v18);
  type metadata accessor for AllHighlightsByCategoryDataSource(0);
  swift_allocObject();
  v14 = a2;
  v15 = sub_1BA46DEFC(v13, v18, v14);

  v16 = CompoundDataSourceCollectionViewController.init(dataSource:)(v15);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v16;
}

char *AllHighlightsByCategoryViewController.init(healthExperienceStore:healthStore:provenance:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI37AllHighlightsByCategoryViewController_provenance);
  *v8 = a3;
  v8[1] = a4;
  v9 = [objc_opt_self() allCategories];
  sub_1B9F0ADF8(0, &qword_1EDC6B5C0);
  v10 = sub_1BA4A6B08();

  sub_1B9F0A534(a1, v15);
  type metadata accessor for AllHighlightsByCategoryDataSource(0);
  swift_allocObject();
  v11 = a2;
  v12 = sub_1BA46DEFC(v10, v15, v11);

  v13 = CompoundDataSourceCollectionViewController.init(dataSource:)(v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

uint64_t AllHighlightsByCategoryDataSource.__allocating_init(displayCategories:healthExperienceStore:healthStore:)(unint64_t a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  v6 = sub_1BA46DEFC(a1, a2, a3);

  return v6;
}

id AllHighlightsByCategoryViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1BA46997C()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for AllHighlightsByCategoryViewController();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  v1 = [v0 navigationItem];
  [v1 setLargeTitleDisplayMode_];

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v2 = sub_1BA4A6758();

  [v0 setTitle_];

  result = [v0 collectionView];
  if (result)
  {
    v4 = result;
    v5 = sub_1BA4A6AE8();
    v6 = HKUIJoinStringsForAutomationIdentifier();

    [v4 setAccessibilityIdentifier_];
    v11 = 8;
    if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI37AllHighlightsByCategoryViewController_provenance + 8])
    {
      v7 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI37AllHighlightsByCategoryViewController_provenance];
      v8 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI37AllHighlightsByCategoryViewController_provenance + 8];
    }

    else
    {
      v8 = 0xE300000000000000;
      v7 = 7104878;
    }

    type metadata accessor for HealthAppAnalyticsManager();
    v10 = 0;
    memset(v9, 0, sizeof(v9));

    static HealthAppAnalyticsManager.submitInteraction(action:viewController:analyticProvenance:pinnedContentManager:)(&v11, v0, v7, v8, v9);

    return sub_1BA46E780(v9, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id AllHighlightsByCategoryViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id AllHighlightsByCategoryViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AllHighlightsByCategoryViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA469D28(uint64_t a1, uint64_t *a2)
{
  sub_1B9F0A534(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33AllHighlightsByCategoryDataSource_healthExperienceStore;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v3 + v4);
  sub_1B9F1134C(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA469D94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33AllHighlightsByCategoryDataSource_healthExperienceStore;
  swift_beginAccess();
  return sub_1B9F0A534(v1 + v3, a1);
}

uint64_t sub_1BA469DEC(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33AllHighlightsByCategoryDataSource_healthExperienceStore;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);
  sub_1B9F1134C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t AllHighlightsByCategoryDataSource.init(displayCategories:healthExperienceStore:healthStore:)(unint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BA46DEFC(a1, a2, a3);

  return v4;
}

void sub_1BA469F24()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI33AllHighlightsByCategoryDataSource_healthExperienceStore);

  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33AllHighlightsByCategoryDataSource_healthStore);
}

uint64_t AllHighlightsByCategoryDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI33AllHighlightsByCategoryDataSource_healthExperienceStore);

  return v0;
}

uint64_t AllHighlightsByCategoryDataSource.__deallocating_deinit()
{
  AllHighlightsByCategoryDataSource.deinit();

  return swift_deallocClassInstance();
}

void sub_1BA46A0AC(uint64_t a1@<X3>, uint64_t *a2@<X4>, uint64_t *a3@<X8>)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (SnapshotDataSource.numberOfSections.getter(a1, a2[1]) >= 1)
  {
    v40 = v7;
    v10 = a2[3];
    v11 = v10(a1, a2);
    v12 = [v11 listIcon];

    if (v12)
    {
      v40 = 0x80000001BA4EA100;
      v13 = v10(a1, a2);
      v14 = [v13 displayName];

      v39 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v16 = v15;

      v17 = a2[4];
      v18 = v12;
      v19 = v17(a1, a2);
      v21 = v20;
      a3[3] = &type metadata for HeaderWithIconItem;
      a3[4] = sub_1B9FE8F38();
      v22 = swift_allocObject();
      *a3 = v22;

      v22[2] = 0xD000000000000024;
      v23 = v39;
      v22[3] = v40;
      v22[4] = v23;
      v22[5] = v16;
      v22[6] = v12;
      v22[7] = 0;
      v22[8] = v19;
      v22[9] = v21;
      return;
    }

    sub_1BA4A3DD8();
    swift_unknownObjectRetain();
    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6FB8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v38 = v24;
      v27 = v26;
      v39 = swift_slowAlloc();
      v41 = v39;
      *v27 = 136380675;
      v37 = v25;
      v28 = v10(a1, a2);
      v29 = [v28 displayName];

      v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v32 = v31;

      v33 = sub_1B9F0B82C(v30, v32, &v41);

      *(v27 + 4) = v33;
      v34 = v38;
      _os_log_impl(&dword_1B9F07000, v38, v37, "listIcon is missing from display category: %{private}s", v27, 0xCu);
      v35 = v39;
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1BFAF43A0](v35, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
    }

    else
    {
    }

    (*(v40 + 8))(v9, v6);
  }

  a3[3] = &type metadata for EmptyHeaderItem;
  a3[4] = sub_1B9FDA1B0();
  *a3 = swift_allocObject();
  EmptyHeaderItem.init()();
}

uint64_t sub_1BA46A450(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v70 = a4;
  v74 = a3;
  v7 = MEMORY[0x1E69E6720];
  sub_1B9F664FC(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v73 = &v61 - v9;
  sub_1B9F664FC(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], v7);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = &v61 - v11;
  v69 = sub_1BA4A3FB8();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A3F18();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BA4A4428();
  v71 = *(v18 - 8);
  v72 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, &v79);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50);
  sub_1BA4A2558();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v21 = *&v78[0];
  v22 = sub_1BA4A2508();
  if (!v22)
  {
LABEL_11:

LABEL_12:
    *&v79 = 0;
    *(&v79 + 1) = 0xE000000000000000;
    sub_1BA4A7DF8();
    v78[0] = v79;
    MEMORY[0x1BFAF1350](0xD000000000000039, 0x80000001BA50A690);
    sub_1B9F0A534(a1, &v79);
    v60 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v60);

    result = sub_1BA4A8018();
    __break(1u);
    return result;
  }

  v23 = v22;
  sub_1BA4A4418();
  v24 = [v74 displayTypeController];
  if (!v24)
  {
    __break(1u);
    goto LABEL_10;
  }

  a1 = v24;
  v65 = a5;
  v66 = v21;
  v21 = [v24 displayTypeForObjectType_];

  if (!v21)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = [v21 localization];

  v26 = [v25 displayName];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A43B8();
  sub_1B9F21D24(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  v61 = xmmword_1BA4B5480;
  *(v27 + 16) = xmmword_1BA4B5480;
  *&v79 = 0;
  *(&v79 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();

  *&v79 = 0xD00000000000001BLL;
  *(&v79 + 1) = 0x80000001BA50A6D0;
  v28 = [v23 description];
  v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v30 = v20;
  v32 = v31;

  MEMORY[0x1BFAF1350](v29, v32);

  v62 = *(&v79 + 1);
  v63 = v79;
  v33 = v72;
  v80 = v72;
  v81 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v79);
  v35 = *(v71 + 16);
  v64 = v30;
  v35(boxed_opaque_existential_1, v30, v33);
  sub_1B9F664FC(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v36 = swift_allocObject();
  *(v36 + 16) = v61;
  (*(v15 + 104))(v17, *MEMORY[0x1E69DBF28], v14);
  v37 = sub_1BA4A3F48();
  (*(*(v37 - 8) + 56))(v67, 1, 1, v37);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v68 + 8))(v13, v69);
  (*(v15 + 8))(v17, v14);
  sub_1B9F0A534(v70, v78);
  v38 = swift_allocObject();
  v39 = v74;
  *(v38 + 16) = v23;
  *(v38 + 24) = v39;
  sub_1B9F1134C(v78, v38 + 32);
  v40 = v39;
  v41 = v23;
  v42 = v73;
  sub_1BA4A4158();
  v43 = sub_1BA4A4168();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  sub_1B9F1C048(0, &qword_1EDC6E330);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1BA4B9FD0;
  strcpy((v44 + 32), "AllHighlights");
  *(v44 + 46) = -4864;
  v45 = [v65 displayName];
  v46 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v48 = v47;

  *(v44 + 48) = v46;
  *(v44 + 56) = v48;
  v74 = v41;
  *(v44 + 64) = sub_1BA190CA4();
  *(v44 + 72) = v49;
  v50 = sub_1BA4A6AE8();

  v51 = HKUIJoinStringsForAutomationIdentifier();

  if (v51)
  {
    v52 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  v55 = type metadata accessor for ContentConfigurationItem();
  *(v27 + 56) = v55;
  *(v27 + 64) = sub_1B9F25550(&qword_1EDC664A0, type metadata accessor for ContentConfigurationItem);
  v56 = __swift_allocate_boxed_opaque_existential_1((v27 + 32));
  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  sub_1BA46E780(&v75, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  *(&v76 + 1) = &type metadata for BasicCellSelectionHandler;
  v77 = &off_1F381BCC8;
  *&v75 = sub_1BA46E800;
  *(&v75 + 1) = v38;
  LOBYTE(v76) = 2;
  sub_1B9F2F698(&v75, (v56 + 2));
  *(v56 + v55[12]) = 0;
  *(v56 + v55[13]) = 0;
  v57 = v62;
  *v56 = v63;
  v56[1] = v57;
  sub_1B9F1134C(&v79, (v56 + 9));
  *(v56 + 112) = 0;
  v56[15] = v36;
  sub_1B9F2F728(v73, v56 + v55[10]);
  v56[7] = v52;
  v56[8] = v54;
  v58 = (v56 + v55[11]);
  *v58 = 0;
  v58[1] = 0;
  sub_1BA46E780(&v75, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);

  (*(v71 + 8))(v64, v72);
  return v27;
}

void sub_1BA46AE4C(void *a1, void *a2, void *a3, uint64_t a4)
{
  sub_1B9F0A534(a4, v25);
  v7 = objc_allocWithZone(type metadata accessor for AllHighlightsForDataTypeViewController());
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_hkType] = a2;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_healthStore] = a3;
  sub_1B9F0A534(v25, &v7[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_healthExperienceStore]);
  v7[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_hideShowAllButton] = 1;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_provenance] = xmmword_1BA4C8530;
  sub_1B9F0A534(v25, v24);
  type metadata accessor for AllHighlightsForDataTypeDataSource();
  swift_allocObject();
  v8 = a2;
  v9 = a3;
  sub_1BA237ED8(v8, v9, v24, 1);

  v11 = CompoundDataSourceCollectionViewController.init(dataSource:)(v10);
  v12 = qword_1EDC5E100;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1B9F21D24(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BA4B5480;
  v15 = [v9 displayTypeController];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 displayTypeForObjectType_];

    if (v17)
    {
      v18 = [v17 localization];

      v19 = [v18 displayName];
      v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v22 = v21;

      *(v14 + 56) = MEMORY[0x1E69E6158];
      *(v14 + 64) = sub_1B9F1BE20();
      *(v14 + 32) = v20;
      *(v14 + 40) = v22;
      sub_1BA4A6768();

      v23 = sub_1BA4A6758();

      [v13 setTitle_];

      __swift_destroy_boxed_opaque_existential_1(v25);
      [a1 showViewController:v13 sender:a1];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BA46B1D8()
{
}

uint64_t sub_1BA46B22C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return v0;
}

uint64_t sub_1BA46B35C()
{
  v1 = *(v0 + qword_1EBBF2F28);

  return v1;
}

uint64_t sub_1BA46B3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v51 = a7;
  v46 = a5;
  v47 = a4;
  sub_1B9F664FC(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = &v40 - v9;
  v10 = sub_1BA4A3FB8();
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1BA4A3F18();
  v13 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1BA4A4428();
  v42 = *(v52 - 8);
  v16 = v42;
  MEMORY[0x1EEE9AC00](v52);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static HKTypeGroup.typeGroup(for:)(v57);
  sub_1BA4A4418();

  v41 = v18;
  sub_1BA4A43B8();
  sub_1B9F21D24(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  v40 = xmmword_1BA4B5480;
  *(v19 + 16) = xmmword_1BA4B5480;
  *&v56[0] = 0;
  *(&v56[0] + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();

  *&v56[0] = 0xD000000000000019;
  *(&v56[0] + 1) = 0x80000001BA50A670;
  v20 = [a6 description];
  v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v23 = v22;

  MEMORY[0x1BFAF1350](v21, v23);

  v43 = *(&v56[0] + 1);
  v44 = *&v56[0];
  v24 = type metadata accessor for ContentConfigurationItem();
  *(v19 + 56) = v24;
  *(v19 + 64) = sub_1B9F25550(&qword_1EDC664A0, type metadata accessor for ContentConfigurationItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v19 + 32));
  v26 = MEMORY[0x1E69DC110];
  v27 = v52;
  boxed_opaque_existential_1[12] = v52;
  boxed_opaque_existential_1[13] = v26;
  v28 = __swift_allocate_boxed_opaque_existential_1(boxed_opaque_existential_1 + 9);
  (*(v16 + 16))(v28, v18, v27);
  sub_1B9F664FC(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v29 = swift_allocObject();
  *(v29 + 16) = v40;
  v30 = v45;
  (*(v13 + 104))(v15, *MEMORY[0x1E69DBF28], v45);
  v31 = sub_1BA4A3F48();
  (*(*(v31 - 8) + 56))(v48, 1, 1, v31);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v49 + 8))(v12, v50);
  (*(v13 + 8))(v15, v30);
  sub_1B9F0A534(v51, v56);
  v32 = swift_allocObject();
  v33 = v57[1];
  *(v32 + 16) = v57[0];
  *(v32 + 32) = v33;
  *(v32 + 48) = v57[2];
  sub_1B9F1134C(v56, v32 + 64);
  v34 = v46;
  *(v32 + 104) = v47;
  *(v32 + 112) = v34;
  v35 = v24[10];

  sub_1BA4A4158();
  v36 = sub_1BA4A4168();
  (*(*(v36 - 8) + 56))(boxed_opaque_existential_1 + v35, 0, 1, v36);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_1BA46E780(&v53, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  *(&v54 + 1) = &type metadata for BasicCellSelectionHandler;
  v55 = &off_1F381BCC8;
  *&v53 = sub_1BA46E770;
  *(&v53 + 1) = v32;
  LOBYTE(v54) = 2;
  sub_1B9F2F698(&v53, (boxed_opaque_existential_1 + 2));
  *(boxed_opaque_existential_1 + v24[12]) = 0;
  *(boxed_opaque_existential_1 + v24[13]) = 0;
  v37 = v43;
  *boxed_opaque_existential_1 = v44;
  boxed_opaque_existential_1[1] = v37;
  *(boxed_opaque_existential_1 + 112) = 0;
  boxed_opaque_existential_1[15] = v29;
  boxed_opaque_existential_1[7] = 0;
  boxed_opaque_existential_1[8] = 0;
  v38 = (boxed_opaque_existential_1 + v24[11]);
  *v38 = 0;
  v38[1] = 0;
  sub_1BA46E780(&v53, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  (*(v42 + 8))(v41, v52);
  return v19;
}

void sub_1BA46BAC0(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  sub_1B9F0A534(a3, v13);
  sub_1B9F1C048(0, &qword_1EDC6E330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;

  *(inited + 32) = sub_1BA4A2068();
  *(inited + 40) = v7;
  *(inited + 48) = sub_1BA4A2058();
  *(inited + 56) = v8;
  objc_allocWithZone(type metadata accessor for AllHighlightsForExperienceViewController());
  sub_1B9F0A534(v13, v12);
  type metadata accessor for AllHighlightsForExperienceDataSource();
  swift_allocObject();
  v9 = AllHighlightsForExperienceDataSource.init(baseKeyword:sectionKeywords:healthExperienceStore:)(v4, v5, inited, v12);
  v10 = CompoundDataSourceCollectionViewController.init(dataSource:)(v9);
  v11 = sub_1BA4A6758();
  [v10 setTitle_];

  __swift_destroy_boxed_opaque_existential_1(v13);
  [a1 showViewController:v10 sender:a1];
}

void sub_1BA46BC40()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + qword_1EBBF2F58);
  v1 = *(v0 + qword_1EBBF2F68);
}

uint64_t sub_1BA46BCC8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  __swift_destroy_boxed_opaque_existential_1(v0 + qword_1EBBF2F58);
  return v0;
}

uint64_t sub_1BA46BE1C(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA46BE84()
{
  v1 = *(v0 + qword_1EBBF2F40);

  return v1;
}

uint64_t sub_1BA46BEC0()
{
  sub_1B9F437FC();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F405E0();
}

void *sub_1BA46BF10(uint64_t a1)
{
  v2 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 8);
  _s18HealthExperienceUI23ListLayoutConfigurationV16withLeadingInset5insetAC12CoreGraphics7CGFloatV_tFZ_0(v4);
  v6 = ListLayoutConfiguration.layout(for:)(v5);
  sub_1BA047354(v4);
  return v6;
}

void sub_1BA46BFDC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v136 = a1;
  sub_1B9F664FC(0, &qword_1EDC6AE40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v146 = &v133 - v10;
  v143 = a3;
  v11 = a3[1];
  if (v11 >= 1)
  {
    v133 = a4;
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v14 = v12;
      if (v12 + 1 >= v11)
      {
        v11 = v12 + 1;
      }

      else
      {
        v15 = *v143;
        v16 = *(*v143 + 16 * (v12 + 1) + 8);
        v134 = 16 * v12;
        v135 = v6;
        *&v147 = v15 + 16 * v12;
        v17 = *(v147 + 8);
        ObjectType = swift_getObjectType();
        v137 = v12;
        v19 = *(v16 + 24);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v20 = v19(ObjectType, v16);
        v21 = [v20 displayName];

        v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v24 = v23;

        v150 = v22;
        v151 = v24;
        v25 = swift_getObjectType();
        v26 = (*(v17 + 24))(v25, v17);
        v27 = [v26 displayName];

        v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v5 = v29;

        v148 = v28;
        v149 = v5;
        v30 = sub_1BA4A17C8();
        v31 = *(v30 - 8);
        v32 = v146;
        v140 = *(v31 + 56);
        v141 = v30;
        v139 = v31 + 56;
        (v140)(v146, 1, 1);
        v138 = sub_1B9F252FC();
        v145 = sub_1BA4A7BB8();
        sub_1BA46E6F0(v32, &qword_1EDC6AE40, MEMORY[0x1E6969770]);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v33 = v137 + 2;
        v34 = (v147 + 24);
        v142 = v13;
        v144 = v11;
        while (v11 != v33)
        {
          LODWORD(v147) = v145 == -1;
          v35 = *v34;
          v37 = v34 + 2;
          v36 = v34[2];
          v38 = swift_getObjectType();
          v39 = *(v36 + 24);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v40 = v39(v38, v36);
          v41 = [v40 displayName];

          v42 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v5 = v43;

          v150 = v42;
          v151 = v5;
          v44 = swift_getObjectType();
          v45 = (*(v35 + 24))(v44, v35);
          v46 = [v45 displayName];

          v47 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v49 = v48;

          v148 = v47;
          v149 = v49;
          v50 = v146;
          (v140)(v146, 1, 1, v141);
          v51 = sub_1BA4A7BB8();
          sub_1BA46E6F0(v50, &qword_1EDC6AE40, MEMORY[0x1E6969770]);
          v11 = v144;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          ++v33;
          v34 = v37;
          v13 = v142;
          if (((v147 ^ (v51 != -1)) & 1) == 0)
          {
            v11 = v33 - 1;
            break;
          }
        }

        v52 = v134;
        v6 = v135;
        v14 = v137;
        if (v145 == -1)
        {
          if (v11 < v137)
          {
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v137 < v11)
          {
            v53 = 16 * v11 - 16;
            v54 = v11;
            v55 = v137;
            do
            {
              if (v55 != --v54)
              {
                v57 = *v143;
                if (!*v143)
                {
                  goto LABEL_126;
                }

                v56 = *(v57 + v52);
                *(v57 + v52) = *(v57 + v53);
                *(v57 + v53) = v56;
              }

              ++v55;
              v53 -= 16;
              v52 += 16;
            }

            while (v55 < v54);
          }
        }
      }

      v58 = v143[1];
      if (v11 >= v58)
      {
        goto LABEL_28;
      }

      if (__OFSUB__(v11, v14))
      {
        goto LABEL_118;
      }

      if (v11 - v14 >= v133)
      {
        goto LABEL_28;
      }

      if (__OFADD__(v14, v133))
      {
        goto LABEL_119;
      }

      if (v14 + v133 >= v58)
      {
        v59 = v143[1];
      }

      else
      {
        v59 = v14 + v133;
      }

      if (v59 < v14)
      {
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      if (v11 == v59)
      {
LABEL_28:
        v12 = v11;
        if (v11 < v14)
        {
          goto LABEL_117;
        }
      }

      else
      {
        v142 = v13;
        v135 = v6;
        v145 = *v143;
        v106 = v145 + 16 * v11 - 16;
        v137 = v14;
        v107 = (v14 - v11);
        v139 = v59;
        do
        {
          v144 = v11;
          v108 = *(v145 + 16 * v11);
          v140 = v107;
          v141 = v106;
          do
          {
            v147 = v108;
            v5 = *v106;
            v109 = *(v106 + 8);
            v110 = swift_getObjectType();
            v111 = *(&v147 + 1);
            v112 = *(*(&v147 + 1) + 24);
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v113 = v112(v110, v111);
            v114 = [v113 displayName];

            v115 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v117 = v116;

            v150 = v115;
            v151 = v117;
            v118 = swift_getObjectType();
            v119 = (*(v109 + 24))(v118, v109);
            v120 = [v119 displayName];

            v121 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v123 = v122;

            v148 = v121;
            v149 = v123;
            v124 = sub_1BA4A17C8();
            v125 = v146;
            (*(*(v124 - 8) + 56))(v146, 1, 1, v124);
            sub_1B9F252FC();
            v126 = sub_1BA4A7BB8();
            sub_1BA46E6F0(v125, &qword_1EDC6AE40, MEMORY[0x1E6969770]);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            if (v126 != -1)
            {
              break;
            }

            if (!v145)
            {
              goto LABEL_123;
            }

            v127 = *v106;
            v108 = *(v106 + 16);
            *v106 = v108;
            *(v106 + 16) = v127;
            v106 -= 16;
          }

          while (!__CFADD__(v107++, 1));
          v11 = v144 + 1;
          v106 = v141 + 16;
          v107 = v140 - 1;
          v12 = v139;
        }

        while (v144 + 1 != v139);
        v6 = v135;
        v13 = v142;
        v14 = v137;
        if (v139 < v137)
        {
          goto LABEL_117;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1BA27F470(0, *(v13 + 2) + 1, 1, v13);
      }

      v61 = *(v13 + 2);
      v60 = *(v13 + 3);
      v62 = v61 + 1;
      if (v61 >= v60 >> 1)
      {
        v13 = sub_1BA27F470((v60 > 1), v61 + 1, 1, v13);
      }

      *(v13 + 2) = v62;
      v63 = &v13[16 * v61];
      *(v63 + 4) = v14;
      *(v63 + 5) = v12;
      v64 = *v136;
      if (!*v136)
      {
        goto LABEL_127;
      }

      if (v61)
      {
        while (1)
        {
          v5 = v62 - 1;
          if (v62 >= 4)
          {
            break;
          }

          if (v62 == 3)
          {
            v65 = *(v13 + 4);
            v66 = *(v13 + 5);
            v75 = __OFSUB__(v66, v65);
            v67 = v66 - v65;
            v68 = v75;
LABEL_48:
            if (v68)
            {
              goto LABEL_106;
            }

            v81 = &v13[16 * v62];
            v83 = *v81;
            v82 = *(v81 + 1);
            v84 = __OFSUB__(v82, v83);
            v85 = v82 - v83;
            v86 = v84;
            if (v84)
            {
              goto LABEL_109;
            }

            v87 = &v13[16 * v5 + 32];
            v89 = *v87;
            v88 = *(v87 + 1);
            v75 = __OFSUB__(v88, v89);
            v90 = v88 - v89;
            if (v75)
            {
              goto LABEL_112;
            }

            if (__OFADD__(v85, v90))
            {
              goto LABEL_113;
            }

            if (v85 + v90 >= v67)
            {
              if (v67 < v90)
              {
                v5 = v62 - 2;
              }

              goto LABEL_69;
            }

            goto LABEL_62;
          }

          v91 = &v13[16 * v62];
          v93 = *v91;
          v92 = *(v91 + 1);
          v75 = __OFSUB__(v92, v93);
          v85 = v92 - v93;
          v86 = v75;
LABEL_62:
          if (v86)
          {
            goto LABEL_108;
          }

          v94 = &v13[16 * v5];
          v96 = *(v94 + 4);
          v95 = *(v94 + 5);
          v75 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v75)
          {
            goto LABEL_111;
          }

          if (v97 < v85)
          {
            goto LABEL_3;
          }

LABEL_69:
          v102 = v5 - 1;
          if (v5 - 1 >= v62)
          {
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

          if (!*v143)
          {
            goto LABEL_124;
          }

          v103 = *&v13[16 * v102 + 32];
          v104 = *&v13[16 * v5 + 40];
          sub_1BA46CB24((*v143 + 16 * v103), (*v143 + 16 * *&v13[16 * v5 + 32]), (*v143 + 16 * v104), v64);
          if (v6)
          {
            goto LABEL_99;
          }

          if (v104 < v103)
          {
            goto LABEL_102;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1BA442D80(v13);
          }

          if (v102 >= *(v13 + 2))
          {
            goto LABEL_103;
          }

          v105 = &v13[16 * v102];
          *(v105 + 4) = v103;
          *(v105 + 5) = v104;
          v152 = v13;
          sub_1BA442CF4(v5);
          v13 = v152;
          v62 = *(v152 + 2);
          if (v62 <= 1)
          {
            goto LABEL_3;
          }
        }

        v69 = &v13[16 * v62 + 32];
        v70 = *(v69 - 64);
        v71 = *(v69 - 56);
        v75 = __OFSUB__(v71, v70);
        v72 = v71 - v70;
        if (v75)
        {
          goto LABEL_104;
        }

        v74 = *(v69 - 48);
        v73 = *(v69 - 40);
        v75 = __OFSUB__(v73, v74);
        v67 = v73 - v74;
        v68 = v75;
        if (v75)
        {
          goto LABEL_105;
        }

        v76 = &v13[16 * v62];
        v78 = *v76;
        v77 = *(v76 + 1);
        v75 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v75)
        {
          goto LABEL_107;
        }

        v75 = __OFADD__(v67, v79);
        v80 = v67 + v79;
        if (v75)
        {
          goto LABEL_110;
        }

        if (v80 >= v72)
        {
          v98 = &v13[16 * v5 + 32];
          v100 = *v98;
          v99 = *(v98 + 1);
          v75 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v75)
          {
            goto LABEL_114;
          }

          if (v67 < v101)
          {
            v5 = v62 - 2;
          }

          goto LABEL_69;
        }

        goto LABEL_48;
      }

LABEL_3:
      v11 = v143[1];
      if (v12 >= v11)
      {
        goto LABEL_89;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_89:
  v5 = *v136;
  if (!*v136)
  {
    goto LABEL_128;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_121:
    v13 = sub_1BA442D80(v13);
  }

  v129 = v6;
  v152 = v13;
  v130 = *(v13 + 2);
  if (v130 >= 2)
  {
    while (*v143)
    {
      v131 = *&v13[16 * v130];
      v6 = *&v13[16 * v130 + 24];
      sub_1BA46CB24((*v143 + 16 * v131), (*v143 + 16 * *&v13[16 * v130 + 16]), (*v143 + 16 * v6), v5);
      if (v129)
      {
        goto LABEL_99;
      }

      if (v6 < v131)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1BA442D80(v13);
      }

      if (v130 - 2 >= *(v13 + 2))
      {
        goto LABEL_116;
      }

      v132 = &v13[16 * v130];
      *v132 = v131;
      *(v132 + 1) = v6;
      v152 = v13;
      sub_1BA442CF4(v130 - 1);
      v13 = v152;
      v130 = *(v152 + 2);
      if (v130 <= 1)
      {
        goto LABEL_99;
      }
    }

    goto LABEL_125;
  }

LABEL_99:
}

uint64_t sub_1BA46CB24(char *a1, char *a2, char *a3, char *a4)
{
  sub_1B9F664FC(0, &qword_1EDC6AE40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v66 = &v61 - v9;
  v10 = a2 - a1 + 15;
  if (a2 - a1 >= 0)
  {
    v10 = a2 - a1;
  }

  v11 = v10 >> 4;
  v12 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 4;
  if (v11 >= v12 >> 4)
  {
    if (a4 != a2 || &a2[16 * v13] <= a4)
    {
      memmove(a4, a2, 16 * v13);
    }

    v72 = &a4[16 * v13];
    if (a3 - a2 >= 16 && a2 > a1)
    {
      v63 = a4;
      v65 = a1;
LABEL_26:
      v62 = a2 - 16;
      v36 = a3 - 16;
      v37 = v72;
      v64 = a2;
      do
      {
        v67 = v36;
        v38 = v36 + 16;
        v39 = *(v37 - 1);
        v37 -= 16;
        v40 = *(a2 - 1);
        ObjectType = swift_getObjectType();
        v42 = *(v39 + 24);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v43 = v42(ObjectType, v39);
        v44 = [v43 displayName];

        v45 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v47 = v46;

        v70 = v45;
        v71 = v47;
        v48 = swift_getObjectType();
        v49 = (*(v40 + 24))(v48, v40);
        v50 = [v49 displayName];

        v51 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v53 = v52;

        v68 = v51;
        v69 = v53;
        v54 = sub_1BA4A17C8();
        v55 = v66;
        (*(*(v54 - 8) + 56))(v66, 1, 1, v54);
        sub_1B9F252FC();
        v56 = sub_1BA4A7BB8();
        sub_1BA46E6F0(v55, &qword_1EDC6AE40, MEMORY[0x1E6969770]);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v56 == -1)
        {
          a4 = v63;
          v35 = v38 == v64;
          v58 = v65;
          a3 = v67;
          v59 = v62;
          if (!v35)
          {
            *v67 = *v62;
          }

          if (v72 <= a4 || (a2 = v59, v59 <= v58))
          {
            a2 = v59;
            goto LABEL_38;
          }

          goto LABEL_26;
        }

        v35 = v38 == v72;
        a4 = v63;
        v57 = v67;
        if (!v35)
        {
          *v67 = *v37;
        }

        v36 = v57 - 16;
        v72 = v37;
        a2 = v64;
      }

      while (v37 > a4);
      v72 = v37;
    }
  }

  else
  {
    if (a4 != a1 || &a1[16 * v11] <= a4)
    {
      memmove(a4, a1, 16 * v11);
    }

    v72 = &a4[16 * v11];
    if (a2 - a1 >= 16 && a2 < a3)
    {
      v67 = a3;
      while (1)
      {
        v65 = a1;
        v14 = *(a2 + 1);
        v15 = a2;
        v16 = *(a4 + 1);
        v17 = swift_getObjectType();
        v18 = *(v14 + 24);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = v18(v17, v14);
        v20 = [v19 displayName];

        v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v23 = v22;

        v70 = v21;
        v71 = v23;
        v24 = swift_getObjectType();
        v25 = (*(v16 + 24))(v24, v16);
        v26 = [v25 displayName];

        v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v29 = v28;

        v68 = v27;
        v69 = v29;
        v30 = sub_1BA4A17C8();
        v31 = v66;
        (*(*(v30 - 8) + 56))(v66, 1, 1, v30);
        sub_1B9F252FC();
        v32 = sub_1BA4A7BB8();
        sub_1BA46E6F0(v31, &qword_1EDC6AE40, MEMORY[0x1E6969770]);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v32 != -1)
        {
          break;
        }

        v33 = v15;
        a2 = v15 + 16;
        v34 = v65;
        if (v65 != v15)
        {
          goto LABEL_14;
        }

LABEL_15:
        a1 = v34 + 16;
        if (a4 >= v72 || a2 >= v67)
        {
          goto LABEL_36;
        }
      }

      v33 = a4;
      v34 = v65;
      v35 = v65 == a4;
      a4 += 16;
      a2 = v15;
      if (v35)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v34 = *v33;
      goto LABEL_15;
    }

LABEL_36:
    a2 = a1;
  }

LABEL_38:
  if (a2 != a4 || a2 >= &a4[(v72 - a4 + (v72 - a4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(a2, a4, 16 * ((v72 - a4) / 16));
  }

  return 1;
}

uint64_t sub_1BA46D134(void *a1, void *a2, void *a3)
{
  v45 = a2;
  v6 = sub_1BA4A1C68();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v3 + qword_1EBBF2F28);
  *&v48[0] = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(&v48[0] + 1) = v11;

  MEMORY[0x1BFAF1350](0x686769486C6C412ELL, 0xEE0073746867696CLL);

  v12 = *(&v48[0] + 1);
  *v10 = *&v48[0];
  v10[1] = v12;
  v47 = v3;
  *(v3 + qword_1EBBF2F18) = a1;
  *(v3 + qword_1EBBF2F20) = a3;
  sub_1BA4A2558();
  v44 = a1;
  v46 = a3;
  v13 = sub_1BA4A2518();
  static HKTypeGroup.typeGroup(for:)(v48);
  (*(v7 + 104))(v9, *MEMORY[0x1E69A3BF8], v6);
  v14 = sub_1BA4A2538();
  (*(v7 + 8))(v9, v6);
  v15 = sub_1BA4A2548();
  v16 = sub_1BA4A2528();

  sub_1B9F1C048(0, &qword_1EDC6B400);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B8B60;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = v16;
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v43 = v14;
  v18 = v15;
  v19 = v16;
  v20 = sub_1BA4A6AE8();

  v21 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v13 setPredicate_];
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BA4B5470;
  v23 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v24 = sub_1BA4A6758();
  v25 = [v23 initWithKey:v24 ascending:1];

  *(v22 + 32) = v25;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v26 = sub_1BA4A6AE8();

  [v13 setSortDescriptors_];

  v27 = v45;
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  v28 = v13;
  v29 = sub_1BA4A1B68();
  v30 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v28 managedObjectContext:v29 sectionNameKeyPath:0 cacheName:0];

  sub_1BA3CBE80();
  v32 = objc_allocWithZone(v31);
  v33 = v30;
  v34 = sub_1BA3CB95C(v33);
  sub_1B9F0A534(v27, v48);
  v35 = swift_allocObject();
  v36 = v46;
  *(v35 + 16) = v46;
  sub_1B9F1134C(v48, v35 + 24);
  v37 = v44;
  *(v35 + 64) = v44;
  v38 = v37;
  v39 = v36;
  v40 = sub_1BA271C18(v34, sub_1BA46E7F0, v35, 0);

  __swift_destroy_boxed_opaque_existential_1(v27);
  return v40;
}

void sub_1BA46D5E8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  sub_1B9F664FC(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v50 - v12;
  v14 = (v5 + qword_1EBBF2F40);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v5 + qword_1EBBF2F48);
  *v15 = a1;
  v15[1] = a2;
  *(v5 + qword_1EBBF2F50) = a5;
  sub_1B9F0A534(a4, v5 + qword_1EBBF2F58);
  *(v5 + qword_1EBBF2F60) = a3;
  v16 = objc_opt_self();

  v17 = a5;
  v18 = a3;
  v19 = [v16 sharedInstanceForHealthStore_];
  if (v19)
  {
    v20 = v19;
    v53 = a1;
    v54 = a2;
    v21 = [v19 displayTypeForObjectType_];

    if (v21)
    {
      v22 = [v21 displayCategory];

      *(v5 + qword_1EBBF2F68) = v22;
      sub_1BA4A27B8();
      v51 = v22;
      v52 = v5;
      v23 = MEMORY[0x1BFAED110]();
      sub_1B9F664FC(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
      v24 = sub_1BA4A1C68();
      v25 = *(v24 - 8);
      v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1BA4B5480;
      (*(v25 + 104))(v27 + v26, *MEMORY[0x1E69A3B88], v24);
      sub_1B9F1C048(0, &qword_1EDC6B400);
      v28 = swift_allocObject();
      v50 = xmmword_1BA4B5470;
      *(v28 + 16) = xmmword_1BA4B5470;
      *(v28 + 32) = v18;
      v29 = sub_1BA4A0FA8();
      (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
      sub_1B9F1C048(0, &qword_1EDC6B450);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1BA4B5460;
      v31 = v18;
      *(v30 + 32) = sub_1BA4A1D78();
      *(v30 + 40) = 0;
      v32 = MEMORY[0x1BFAED020](v27, v28, v13, v30);

      sub_1BA46E6F0(v13, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
      v33 = v32;
      [v23 setPredicate_];
      v34 = swift_allocObject();
      *(v34 + 16) = v50;
      v35 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v36 = sub_1BA4A6758();
      v37 = [v35 initWithKey:v36 ascending:1];

      *(v34 + 32) = v37;
      sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
      v38 = sub_1BA4A6AE8();

      [v23 setSortDescriptors_];

      __swift_project_boxed_opaque_existential_1(a4, a4[3]);
      v39 = v23;
      v40 = sub_1BA4A1B68();
      v41 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v39 managedObjectContext:v40 sectionNameKeyPath:0 cacheName:0];

      sub_1B9F126E0();
      v43 = objc_allocWithZone(v42);
      v44 = v41;
      v45 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v44);
      sub_1B9F0A534(a4, v55);
      v46 = swift_allocObject();
      v48 = v53;
      v47 = v54;
      v46[2] = v51;
      v46[3] = v48;
      v46[4] = v47;
      v46[5] = v31;
      sub_1B9F1134C(v55, (v46 + 6));
      v49 = v31;
      sub_1B9F17A68(v45, sub_1BA46E760, v46, 0);

      __swift_destroy_boxed_opaque_existential_1(a4);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BA46DB9C(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_1BA4A7CC8();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_15:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v6 < 1)
  {
    __break(1u);
LABEL_25:
    __break(1u);

    __break(1u);
    return result;
  }

  v7 = 0;
  v3 = (a1 & 0xC000000000000001);
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    if (v3)
    {
      v9 = MEMORY[0x1BFAF2860](v7, a1);
    }

    else
    {
      v9 = *(a1 + 8 * v7 + 32);
    }

    v10 = v9;
    sub_1B9F0A534(a2, v31);
    type metadata accessor for DataTypesWithHighlightsDataSource(0);
    swift_allocObject();
    v11 = v10;
    v12 = a3;
    v13 = sub_1BA46D134(v11, v31, v12);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1BA2808A0(0, v8[2] + 1, 1, v8);
    }

    v15 = v8[2];
    v14 = v8[3];
    if (v15 >= v14 >> 1)
    {
      v8 = sub_1BA2808A0((v14 > 1), v15 + 1, 1, v8);
    }

    ++v7;

    v8[2] = v15 + 1;
    v16 = &v8[2 * v15];
    v16[4] = v13;
    v16[5] = &off_1F3821780;
  }

  while (v6 != v7);
LABEL_16:
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v17 = sub_1BA4A1318();
  v19 = v18;
  v20 = [objc_opt_self() menstrualFlowType];
  if (!v20)
  {
    goto LABEL_25;
  }

  v21 = v20;
  sub_1B9F0A534(a2, v31);
  type metadata accessor for HighlightSearchItemDataSource(0);
  swift_allocObject();
  v22 = a3;
  sub_1BA46D5E8(v17, v19, v21, v31, v22);
  v24 = v23;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1BA2808A0(0, v8[2] + 1, 1, v8);
  }

  v26 = v8[2];
  v25 = v8[3];
  if (v26 >= v25 >> 1)
  {
    v8 = sub_1BA2808A0((v25 > 1), v26 + 1, 1, v8);
  }

  v8[2] = v26 + 1;
  v27 = &v8[2 * v26];
  v27[4] = v24;
  v27[5] = &off_1F3821720;
  v31[0] = v8;

  sub_1BA469240(v31);

  v28 = sub_1B9FE621C(v31[0]);

  return v28;
}

uint64_t sub_1BA46DEFC(unint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_1BA4A1798();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a2;
  sub_1B9F0A534(a2, v4 + OBJC_IVAR____TtC18HealthExperienceUI33AllHighlightsByCategoryDataSource_healthExperienceStore);
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI33AllHighlightsByCategoryDataSource_displayCategories) = a1;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI33AllHighlightsByCategoryDataSource_healthStore) = a3;
  v12 = objc_opt_self();

  v43 = a3;
  v13 = [v12 configurationWithPointSize_];
  v14 = sub_1BA4A6758();
  v15 = [objc_opt_self() systemImageNamed:v14 withConfiguration:v13];

  if (v15)
  {
    v16 = [objc_opt_self() systemBlueColor];
    v17 = [v15 imageWithTintColor_];
  }

  else
  {
    v17 = 0;
  }

  v18 = qword_1EDC5E100;
  v42 = v17;
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = sub_1BA4A1318();
  v21 = v20;
  *&v47 = type metadata accessor for CenteredIconDescriptionCollectionViewCell();
  sub_1BA46E6A8();
  *&v47 = sub_1BA4A6808();
  *(&v47 + 1) = v22;
  *&v48 = v17;
  *(&v48 + 1) = v19;
  *v49 = v21;
  sub_1B9F1C048(0, &qword_1EDC5DC90);
  memset(&v49[8], 0, 32);
  inited = swift_initStackObject();
  v45 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F21D24(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  *(v24 + 16) = v45;
  *(v24 + 56) = &type metadata for CenteredIconDescriptionItem;
  *(v24 + 64) = sub_1BA3B87F4();
  v25 = swift_allocObject();
  *(v24 + 32) = v25;
  v26 = *&v49[16];
  *(v25 + 48) = *v49;
  *(v25 + 64) = v26;
  *(v25 + 80) = *&v49[32];
  v27 = v48;
  *(v25 + 16) = v47;
  *(v25 + 32) = v27;
  sub_1BA2985A8(&v47, v46);
  sub_1BA4A1788();
  v28 = sub_1BA4A1748();
  v30 = v29;
  (*(v9 + 8))(v11, v8);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v32 = Array<A>.identifierToIndexDict()(v31);

  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v24;
  *(inited + 56) = v32;
  *(inited + 64) = v28;
  *(inited + 72) = v30;
  type metadata accessor for MutableArrayDataSourceWithLayout();
  swift_allocObject();
  v33 = sub_1B9F1DAFC(inited, 1, sub_1B9F5AEA0, 0);
  sub_1BA139FFC();
  v34 = swift_allocObject();
  v34[4] = v33;
  v34[5] = sub_1BA296534;
  v34[6] = 0;
  v35 = *(v33 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v34[2] = *(v33 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v34[3] = v35;

  v36 = v44;
  v37 = sub_1BA46DB9C(a1, v44, v43);

  sub_1B9F1DEA0();
  v38 = swift_allocObject();
  *(v38 + 16) = v45;
  *(v38 + 32) = v34;
  *(v38 + 40) = &protocol witness table for CellRegistering<A>;
  v46[0] = v38;

  sub_1B9FE20B8(v37);
  v39 = CompoundSectionedDataSource.init(_:)(v46[0]);

  sub_1BA298658(&v47);

  __swift_destroy_boxed_opaque_existential_1(v36);
  return v39;
}

unint64_t sub_1BA46E6A8()
{
  result = qword_1EBBE9E10;
  if (!qword_1EBBE9E10)
  {
    type metadata accessor for CenteredIconDescriptionCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9E10);
  }

  return result;
}

uint64_t sub_1BA46E6F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F664FC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA46E780(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F21D24(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t HeaderDescriptionDataSource.init()()
{
  v1 = sub_1BA4A1798();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27HeaderDescriptionDataSource_notificationCancellable) = 0;
  sub_1BA46EA70(v16);
  v5 = v16[0];
  v6 = v16[1];
  v7 = v18;
  v8 = v19;
  sub_1B9F216C8(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  v15 = v17;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 48) = v15;
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  strcpy(v16, "MutableArray<");
  HIWORD(v16[1]) = -4864;
  sub_1BA4A1788();
  v10 = sub_1BA4A1748();
  v12 = v11;
  (*(v2 + 8))(v4, v1);
  MEMORY[0x1BFAF1350](v10, v12);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v13 = MutableArrayDataSource.init(arrangedSections:identifier:)(inited, v16[0], v16[1]);

  sub_1BA46F424();

  return v13;
}

void sub_1BA46EA70(void *a1@<X8>)
{
  v2 = sub_1BA4A1798();
  v69 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v68 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  if ([v4 hasPairedWatch])
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    v5 = qword_1EDC84A30;
  }

  else
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    v5 = qword_1EDC84A30;
  }

  v65 = sub_1BA4A1318();
  v64 = v6;
  v67 = [objc_opt_self() sharedInstance];
  v7 = [v67 getActivePairedDevice];
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v8 = [v4 currentDeviceDisplayName];
  v66 = v7;
  v63 = v5;
  if (v8)
  {
    v9 = v8;
    v61 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v62 = v10;

    if (v7)
    {
      if ([v7 valueForProperty_])
      {
        sub_1BA4A7BF8();
        swift_unknownObjectRelease();
      }

      else
      {
        v70 = 0u;
        v71 = 0u;
      }

      v72 = v70;
      v73 = v71;
      if (*(&v71 + 1))
      {
        v13 = MEMORY[0x1E69E6158];
        if (swift_dynamicCast())
        {

          v14 = v2;
          v16 = *(&v70 + 1);
          v15 = v70;
          v60 = sub_1BA4A1318();
          sub_1B9F1B560(0, &qword_1EDC6B410, &qword_1EDC6B3D0);
          v17 = v13;
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_1BA4B5460;
          *(v18 + 56) = v17;
          v19 = sub_1B9F1BE20();
          v20 = v62;
          *(v18 + 32) = v61;
          *(v18 + 40) = v20;
          *(v18 + 96) = v17;
          *(v18 + 104) = v19;
          *(v18 + 64) = v19;
          *(v18 + 72) = v15;
          v2 = v14;
          *(v18 + 80) = v16;
          v21 = sub_1BA4A6768();
          v23 = v22;

          sub_1BA4A1318();
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_1BA4B5480;
          *(v24 + 56) = MEMORY[0x1E69E6158];
          *(v24 + 64) = v19;
          *(v24 + 32) = v21;
          *(v24 + 40) = v23;
          v11 = sub_1BA4A6768();
          v12 = v25;

          goto LABEL_23;
        }

        v60 = v2;
LABEL_22:
        v26 = MEMORY[0x1E69E6158];
        sub_1BA4A1318();
        sub_1B9F1B560(0, &qword_1EDC6B410, &qword_1EDC6B3D0);
        v27 = swift_allocObject();
        v59 = xmmword_1BA4B5480;
        *(v27 + 16) = xmmword_1BA4B5480;
        *(v27 + 56) = v26;
        v28 = sub_1B9F1BE20();
        *(v27 + 64) = v28;
        v29 = v62;
        *(v27 + 32) = v61;
        *(v27 + 40) = v29;
        v30 = sub_1BA4A6768();
        v32 = v31;

        v33 = swift_allocObject();
        *(v33 + 16) = v59;
        *(v33 + 56) = v26;
        *(v33 + 64) = v28;
        *(v33 + 32) = v30;
        *(v33 + 40) = v32;
        v11 = sub_1BA4A6768();
        v12 = v34;

        v2 = v60;
        goto LABEL_23;
      }
    }

    else
    {
      v72 = 0u;
      v73 = 0u;
    }

    v60 = v2;
    sub_1B9F23224(&v72);
    goto LABEL_22;
  }

  v11 = 0;
  v12 = 0xE000000000000000;
LABEL_23:
  v35 = objc_opt_self();
  v36 = [v35 configurationWithPointSize_];
  v37 = [v35 configurationPreferringMulticolor];
  v38 = [v36 configurationByApplyingConfiguration_];

  type metadata accessor for HeaderDescriptionDataSource();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = [objc_opt_self() bundleForClass_];
  v41 = v38;
  v42 = sub_1BA4A6758();
  v43 = [objc_opt_self() imageNamed:v42 inBundle:v40 withConfiguration:v41];

  v44 = v43;
  v45 = sub_1BA4A1318();
  v47 = v46;
  *&v72 = type metadata accessor for CenteredIconDescriptionCollectionViewCell();
  sub_1BA46E6A8();
  *&v72 = sub_1BA4A6808();
  *(&v72 + 1) = v48;
  *&v73 = v43;
  *(&v73 + 1) = v45;
  *&v74 = v47;
  *(&v74 + 1) = v65;
  *&v75 = v64;
  *(&v75 + 1) = v11;
  v76 = v12;
  sub_1B9F1B560(0, &qword_1EDC5DCA0, &qword_1EDC6AD50);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1BA4B5480;
  *(v49 + 56) = &type metadata for CenteredIconDescriptionItem;
  *(v49 + 64) = sub_1BA3B87F4();
  v50 = swift_allocObject();
  *(v49 + 32) = v50;
  v51 = v75;
  *(v50 + 48) = v74;
  *(v50 + 64) = v51;
  *(v50 + 80) = v76;
  v52 = v73;
  *(v50 + 16) = v72;
  *(v50 + 32) = v52;
  sub_1BA2985A8(&v72, &v70);
  v53 = v68;
  sub_1BA4A1788();
  v54 = sub_1BA4A1748();
  v56 = v55;
  (*(v69 + 8))(v53, v2);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v58 = Array<A>.identifierToIndexDict()(v57);

  sub_1BA298658(&v72);

  *a1 = 0;
  a1[1] = 0;
  a1[2] = v49;
  a1[3] = v58;
  a1[4] = v54;
  a1[5] = v56;
}

uint64_t sub_1BA46F398()
{
  sub_1B9F216C8(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1BA46EA70((inited + 32));
  sub_1BA0E7F10(inited, 1);
  swift_setDeallocating();
  return sub_1B9FF7224(inited + 32);
}

uint64_t sub_1BA46F424()
{
  v1 = v0;
  sub_1BA46FB50();
  v3 = *(v2 - 8);
  v19 = v2;
  v20 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A7488();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  sub_1BA46FCAC(&qword_1EBBF2FB0, type metadata accessor for HeaderDescriptionDataSource);
  v13 = sub_1BA4A30E8();
  v14 = [objc_opt_self() defaultCenter];
  sub_1BA4A7498();

  v21 = v13;
  (*(v7 + 16))(v9, v12, v6);
  sub_1BA46FC3C();
  sub_1BA46FCAC(&qword_1EBBF2FA8, sub_1BA46FC3C);
  sub_1BA46FCAC(&unk_1EDC6B560, MEMORY[0x1E6969F20]);

  sub_1BA4A4BE8();
  swift_allocObject();
  swift_weakInit();
  sub_1BA46FCAC(&qword_1EBBF2FB8, sub_1BA46FB50);
  v15 = v19;
  v16 = sub_1BA4A5148();

  (*(v20 + 8))(v5, v15);
  (*(v7 + 8))(v12, v6);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI27HeaderDescriptionDataSource_notificationCancellable) = v16;
}

uint64_t sub_1BA46F7CC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BA46F398();
  }

  return result;
}

uint64_t HeaderDescriptionDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t HeaderDescriptionDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *HeaderDescriptionDataSource.layout(for:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (qword_1EDC6CB88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ListLayoutConfiguration();
  __swift_project_value_buffer(v2, qword_1EDC6CB90);
  return ListLayoutConfiguration.layout(for:)(v1);
}

uint64_t type metadata accessor for HeaderDescriptionDataSource()
{
  result = qword_1EBBF2F88;
  if (!qword_1EBBF2F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA46FB50()
{
  if (!qword_1EBBF2F98)
  {
    sub_1BA46FC3C();
    sub_1BA4A7488();
    sub_1BA46FCAC(&qword_1EBBF2FA8, sub_1BA46FC3C);
    sub_1BA46FCAC(&unk_1EDC6B560, MEMORY[0x1E6969F20]);
    v0 = sub_1BA4A4BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2F98);
    }
  }
}

void sub_1BA46FC3C()
{
  if (!qword_1EBBF2FA0)
  {
    sub_1BA4A1018();
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2FA0);
    }
  }
}

uint64_t sub_1BA46FCAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA46FD04(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA46FD8C();
  return sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1BA46FD8C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1BA4A1728();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v10, v31);
  if (v32)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EBBF2FD8);
    if (swift_dynamicCast())
    {
      if (*(&v34 + 1))
      {
        sub_1B9F1134C(&v33, v36);
        v11 = v37;
        v12 = v38;
        __swift_project_boxed_opaque_existential_1(v36, v37);
        (*(v12 + 8))(v11, v12);
        v13 = sub_1BA470378();
        v14 = sub_1BA4A16B8();
        [v13 setDate:v14 animated:0];

        v15 = v37;
        v16 = v38;
        __swift_project_boxed_opaque_existential_1(v36, v37);
        (*(v16 + 16))(v1, v9, v15, v16);
        (*(v7 + 8))(v9, v6);
        return __swift_destroy_boxed_opaque_existential_1(v36);
      }
    }

    else
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v31, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
  }

  sub_1B9F43A50(&v33, &qword_1EBBF2FD0, &qword_1EBBF2FD8);
  sub_1BA4A3DE8();
  v18 = v1;
  v19 = sub_1BA4A3E88();
  v20 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v36[0] = v22;
    *v21 = 136446722;
    v23 = sub_1BA4A85D8();
    v25 = sub_1B9F0B82C(v23, v24, v36);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_1B9F0B82C(1835365481, 0xE400000000000000, v36);
    *(v21 + 22) = 2082;
    sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    *&v33 = v26;
    sub_1BA0928CC();
    v27 = sub_1BA4A6808();
    v29 = sub_1B9F0B82C(v27, v28, v36);

    *(v21 + 24) = v29;
    _os_log_impl(&dword_1B9F07000, v19, v20, "[%{public}s.%{public}s]: Attempted to set item (%{public}s) that did not conform to CalendarPickerTableViewCellDataSource", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v22, -1, -1);
    MEMORY[0x1BFAF43A0](v21, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BA470204@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA47025C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA46FD8C();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t (*sub_1BA4702E0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA470344;
}

uint64_t sub_1BA470344(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA46FD8C();
  }

  return result;
}

id sub_1BA470378()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell____lazy_storage___picker;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell____lazy_storage___picker);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell____lazy_storage___picker);
  }

  else
  {
    v4 = sub_1BA4703DC(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA4703DC(uint64_t a1)
{
  v18 = a1;
  v1 = sub_1BA4A18A8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A1728();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E69DC920]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setPreferredDatePickerStyle_];
  [v9 setDatePickerMode_];
  sub_1BA4A1718();
  v10 = sub_1BA4A16B8();
  v11 = *(v6 + 8);
  v11(v8, v5);
  [v9 setMaximumDate_];

  v12 = objc_opt_self();
  sub_1BA4A1878();
  v13 = sub_1BA4A1818();
  (*(v2 + 8))(v4, v1);
  v14 = [v12 hk:v13 minimumDateForBirthDateWithCalendar:?];

  sub_1BA4A16F8();
  v15 = sub_1BA4A16B8();
  v11(v8, v5);
  [v9 setMinimumDate_];

  [v9 addTarget:v18 action:sel_pickerDateChanged_ forControlEvents:4096];
  return v9;
}

id CalendarPickerTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

char *CalendarPickerTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell_item];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell____lazy_storage___picker] = 0;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for CalendarPickerTableViewCell();
  v7 = objc_msgSendSuper2(&v14, sel_initWithStyle_reuseIdentifier_, a1, v6);

  v8 = v7;
  v9 = [v8 contentView];
  v10 = sub_1BA470378();
  [v9 addSubview_];

  v11 = *&v8[OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell____lazy_storage___picker];
  v12 = [v8 contentView];

  [v11 hk:v12 alignConstraintsWithView:?];
  return v8;
}

uint64_t sub_1BA470928(void *a1)
{
  v3 = sub_1BA4A1728();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v7, v13);
  if (v14)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EBBF2FD8);
    if (swift_dynamicCast())
    {
      v8 = *(&v16 + 1);
      if (*(&v16 + 1))
      {
        v9 = v17;
        __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
        v10 = [a1 date];
        sub_1BA4A16F8();

        (*(v9 + 16))(v1, v6, v8, v9);
        (*(v4 + 8))(v6, v3);
        return __swift_destroy_boxed_opaque_existential_1(&v15);
      }
    }

    else
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v13, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  return sub_1B9F43A50(&v15, &qword_1EBBF2FD0, &qword_1EBBF2FD8);
}

id CalendarPickerTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalendarPickerTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA470D28(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v27 = v6;
  MEMORY[0x1BFAF1350](46, 0xE100000000000000);
  v7 = [a1 objectType];
  v8 = [v7 identifier];

  v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v11 = v10;

  MEMORY[0x1BFAF1350](v9, v11);

  v12 = v26;
  v13 = v27;
  v14 = [a1 localization];
  v15 = [v14 titleEmbeddedDisplayName];

  v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v18 = v17;

  v19 = [a1 localization];
  v20 = [v19 summary];

  if (v20)
  {
    v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  DataTypeDescriptionAttribution.init(displayType:mode:)(a1, a2, &v26);
  v24 = v26;
  v25 = v27;
  *a3 = v16;
  *(a3 + 8) = v18;
  *(a3 + 16) = v21;
  *(a3 + 24) = v23;
  *(a3 + 32) = v24;
  *(a3 + 40) = v25;
  *(a3 + 48) = v12;
  *(a3 + 56) = v13;
}

id sub_1BA470EE4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

unint64_t ViewFactoryFailure.localizedDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16) <= 1u)
  {
    if (!*(v0 + 16))
    {
      sub_1BA4A7DF8();

      v7 = 0x20656C646E7542;
      MEMORY[0x1BFAF1350](v2, v1);
      v3 = 0xD000000000000029;
      v4 = 0x80000001BA50A960;
LABEL_8:
      MEMORY[0x1BFAF1350](v3, v4);
      return v7;
    }

    sub_1BA4A7DF8();

    v5 = 0xD000000000000010;
LABEL_7:
    v7 = v5;
    v3 = v2;
    v4 = v1;
    goto LABEL_8;
  }

  if (*(v0 + 16) == 2)
  {
    sub_1BA4A7DF8();

    v5 = 0xD00000000000001DLL;
    goto LABEL_7;
  }

  return 0xD00000000000004FLL;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI18ViewFactoryFailureO(uint64_t a1)
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

uint64_t sub_1BA471098(uint64_t a1, unsigned int a2)
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

uint64_t sub_1BA4710E0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BA471124(uint64_t result, unsigned int a2)
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

uint64_t (*sub_1BA471224(void *a1))(void *a1, char a2)
{
  a1[2] = v1;
  *a1 = (*(*(*v1 + 88) + 80))(*(*v1 + 80));
  a1[1] = v3;
  return sub_1BA4712B0;
}

uint64_t sub_1BA4712B0(void *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if ((a2 & 1) == 0)
  {
    return (*(*(*v3 + 88) + 88))(*a1, v2, *(*v3 + 80));
  }

  v4 = *(*v3 + 88);
  v5 = *(v4 + 88);
  v6 = *(*v3 + 80);
  v7 = swift_unknownObjectRetain();
  v5(v7, v2, v6, v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_1BA4714F0(uint64_t a1)
{
  v34 = a1;
  v28 = *v1;
  v29 = v2;
  v3 = sub_1BA4A3EA8();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v28 + 88);
  v6 = *(v28 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1BA4A7AA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  sub_1B9F0A534(v34, v33);
  sub_1B9F7EABC();
  v16 = swift_dynamicCast();
  v17 = *(v12 + 56);
  if (v16)
  {
    v17(v11, 0, 1, AssociatedTypeWitness);
    (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
    v18 = (*(v5 + 72))(v15, v6, v5);
    (*(v12 + 8))(v15, AssociatedTypeWitness);
  }

  else
  {
    v17(v11, 1, 1, AssociatedTypeWitness);
    (*(v9 + 8))(v11, v8);
    v19 = v30;
    sub_1BA4A3E28();
    v20 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v20, v18))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33[0] = v22;
      *v21 = 136315138;
      v23 = sub_1BA4A85D8();
      v25 = sub_1B9F0B82C(v23, v24, v33);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1B9F07000, v20, v18, "Model for %s is unable to cast to required type", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    (*(v31 + 8))(v19, v32);
    sub_1B9F21374();
    swift_allocError();
    *v26 = 0x8000000000000000;
    swift_willThrow();
  }

  return v18;
}

uint64_t PlatformConfigurationProvider.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1BFAF43A0);
  }

  return result;
}

id OnboardingCollectionViewController.init(collectionViewController:title:detailText:icon:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint] = 0;
  v9 = &v6[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastWidthUseForCollectionViewLayout];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v6[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastAvailableContentViewHeight];
  *v10 = 0;
  v10[8] = 1;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentSizeObserver] = 0;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_] = a1;
  v11 = a1;
  v12 = sub_1BA4A6758();

  if (a5)
  {
    v13 = sub_1BA4A6758();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v6;
  v16.super_class = type metadata accessor for OnboardingCollectionViewController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithTitle_detailText_icon_contentLayout_, v12, v13, a6, 3);

  return v14;
}

void sub_1BA471C3C()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_];
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v30.origin.x = v7;
  v30.origin.y = v9;
  v30.size.width = v11;
  v30.size.height = v13;
  [v3 setFrame_];

  v14 = [v1 collectionView];
  if (!v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = v14;
  v16 = [v0 view];
  if (!v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = v16;
  [v16 hk_onboardingListDirectionalEdgeInsets];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v15 setDirectionalLayoutMargins_];
  v26 = [v1 collectionView];
  if (!v26)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v27 = v26;
  v28 = [objc_opt_self() systemBackgroundColor];
  [v27 setBackgroundColor_];
}

id OnboardingCollectionViewController.__allocating_init(collectionViewController:title:detailText:icon:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = objc_allocWithZone(v6);
  *&v10[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint] = 0;
  v11 = &v10[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastWidthUseForCollectionViewLayout];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v10[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastAvailableContentViewHeight];
  *v12 = 0;
  v12[8] = 1;
  *&v10[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentSizeObserver] = 0;
  *&v10[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_] = a1;
  v13 = a1;
  v14 = sub_1BA4A6758();

  if (a5)
  {
    v15 = sub_1BA4A6758();
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v10;
  v18.super_class = v6;
  v16 = objc_msgSendSuper2(&v18, sel_initWithTitle_detailText_icon_contentLayout_, v14, v15, a6, 3);

  return v16;
}

id sub_1BA471F68()
{
  v1 = v0;
  sub_1BA472460();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OnboardingCollectionViewController();
  v34.receiver = v0;
  v34.super_class = v7;
  objc_msgSendSuper2(&v34, sel_viewDidLoad);
  v8 = [v0 scrollView];
  [v1 setContentScrollView:v8 forEdge:15];

  v9 = [v1 contentView];
  v10 = [v9 heightAnchor];

  v11 = [v10 constraintEqualToConstant_];
  v12 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint] = v11;
  v13 = v11;

  v14 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_];
  [v1 addChildViewController_];
  v15 = [v1 contentView];
  result = [v14 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = result;
  [v15 addSubview_];

  [v14 didMoveToParentViewController_];
  result = [v14 collectionView];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = result;
  [result setScrollEnabled_];

  result = [v14 collectionView];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = result;
  [result setBounces_];

  result = [v14 collectionView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  result = [v14 collectionView];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = result;
  [result setAutomaticallyAdjustsScrollIndicatorInsets_];

  result = [v14 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  result = [v14 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = result;
  [result setAutoresizingMask_];

  sub_1BA471C3C();
  type metadata accessor for CompoundDataSourceCollectionViewController();
  v24 = swift_dynamicCastClass();
  if (v24)
  {
    v25 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins;
    v26 = v24;
    swift_beginAccess();
    *(v26 + v25) = 0;
  }

  v27 = objc_opt_self();
  sub_1B9F109F8();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B5470;
  *(v28 + 32) = v13;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v29 = v13;
  v30 = sub_1BA4A6AE8();

  [v27 activateConstraints_];

  result = [v14 collectionView];
  if (result)
  {
    v31 = result;
    swift_getKeyPath();
    sub_1BA4A14F8();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BA472C30();
    v32 = sub_1BA4A5148();

    (*(v4 + 8))(v6, v3);
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentSizeObserver] = v32;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1BA472460()
{
  if (!qword_1EBBF3008)
  {
    sub_1B9F0ADF8(255, &qword_1EDC5E4E8);
    type metadata accessor for CGSize(255);
    v0 = sub_1BA4A7778();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF3008);
    }
  }
}

void sub_1BA4724D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong availableContentViewHeight];
    v3 = v2;
    v4 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_] collectionView];
    if (v4)
    {
      v5 = v4;
      if (v3 > 120.0)
      {
        v6 = v3;
      }

      else
      {
        v6 = 120.0;
      }

      [v4 contentSize];
      v8 = v7;

      if (v6 > v8)
      {
        v8 = v6;
      }

      v9 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint];
      [v9 setConstant_];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1BA472608(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for OnboardingCollectionViewController();
  objc_msgSendSuper2(&v11, sel_viewIsAppearing_, a1 & 1);
  sub_1BA471C3C();
  [v1 availableContentViewHeight];
  v4 = v3;
  result = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_] collectionView];
  if (result)
  {
    v6 = result;
    if (v4 > 120.0)
    {
      v7 = v4;
    }

    else
    {
      v7 = 120.0;
    }

    [result contentSize];
    v9 = v8;

    if (v7 > v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    return [*&v1[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint] setConstant_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BA472730()
{
  v22.receiver = v0;
  v22.super_class = type metadata accessor for OnboardingCollectionViewController();
  objc_msgSendSuper2(&v22, sel_viewDidLayoutSubviews);
  sub_1BA471C3C();
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_];
  result = [v1 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = result;
  [result layoutIfNeeded];

  [v0 availableContentViewHeight];
  v5 = v4;
  result = [v1 collectionView];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  if (v5 > 120.0)
  {
    v7 = v5;
  }

  else
  {
    v7 = 120.0;
  }

  [result contentSize];
  v9 = v8;

  if (v7 > v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  v11 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint;
  [*&v0[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint] setConstant_];
  result = [v0 availableContentViewHeight];
  v13 = &v0[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastAvailableContentViewHeight];
  if ((v0[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastAvailableContentViewHeight + 8] & 1) != 0 || v12 != *v13)
  {
    [v0 availableContentViewHeight];
    *v13 = v14;
    v13[8] = 0;
    [v0 availableContentViewHeight];
    v16 = v15;
    result = [v1 collectionView];
    if (result)
    {
      v17 = result;
      if (v16 > 120.0)
      {
        v18 = v16;
      }

      else
      {
        v18 = 120.0;
      }

      [result contentSize];
      v20 = v19;

      if (v18 > v20)
      {
        v21 = v18;
      }

      else
      {
        v21 = v20;
      }

      return [*&v0[v11] setConstant_];
    }

LABEL_22:
    __break(1u);
  }

  return result;
}

id OnboardingCollectionViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_1BA4A6758();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_1BA4A6758();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1BA4A6758();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id OnboardingCollectionViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1BA4A6758();

  if (a4)
  {
    v12 = sub_1BA4A6758();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id OnboardingCollectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingCollectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BA472C30()
{
  result = qword_1EBBF3010;
  if (!qword_1EBBF3010)
  {
    sub_1BA472460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3010);
  }

  return result;
}

id OnboardingIconSmallPaddingViewController.__allocating_init(title:detailText:heroView:heroViewHeight:linkButtonText:linkButtonAccessibilityIdentifier:)(int a1, int a2, int a3, int a4, void *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = objc_allocWithZone(v11);
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroView] = a5;
  v17 = &v16[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroViewCustomHeight];
  *v17 = a6;
  v17[8] = a7 & 1;
  v18 = &v16[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_linkButtonText];
  *v18 = a8;
  *(v18 + 1) = a9;
  v19 = &v16[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_linkButtonAccessibilityIdentifier];
  *v19 = a10;
  *(v19 + 1) = a11;
  v20 = a5;
  v21 = sub_1BA4A6758();

  v22 = sub_1BA4A6758();

  v26.receiver = v16;
  v26.super_class = v25;
  v23 = objc_msgSendSuper2(&v26, sel_initWithTitle_detailText_icon_contentLayout_, v21, v22, 0, 3);

  return v23;
}

id OnboardingIconSmallPaddingViewController.init(title:detailText:heroView:heroViewHeight:linkButtonText:linkButtonAccessibilityIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroView] = a5;
  v12 = &v11[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroViewCustomHeight];
  *v12 = a6;
  v12[8] = a7 & 1;
  v13 = &v11[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_linkButtonText];
  *v13 = a8;
  *(v13 + 1) = a9;
  v14 = &v11[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_linkButtonAccessibilityIdentifier];
  *v14 = a10;
  *(v14 + 1) = a11;
  v15 = a5;
  v16 = sub_1BA4A6758();

  v17 = sub_1BA4A6758();

  v20.receiver = v11;
  v20.super_class = type metadata accessor for OnboardingIconSmallPaddingViewController();
  v18 = objc_msgSendSuper2(&v20, sel_initWithTitle_detailText_icon_contentLayout_, v16, v17, 0, 3);

  return v18;
}

id OnboardingIconSmallPaddingViewController.__allocating_init(title:detailText:heroImage:heroImageHeight:linkButtonText:linkButtonAccessibilityIdentifier:)(int a1, int a2, int a3, int a4, void *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = objc_allocWithZone(v11);
  v16 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v16 setContentMode_];
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroView] = v16;
  v17 = &v15[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroViewCustomHeight];
  *v17 = a6;
  v17[8] = a7 & 1;
  v18 = &v15[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_linkButtonText];
  *v18 = a8;
  *(v18 + 1) = a9;
  v19 = &v15[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_linkButtonAccessibilityIdentifier];
  *v19 = a10;
  *(v19 + 1) = a11;
  v20 = sub_1BA4A6758();

  v21 = sub_1BA4A6758();

  v26.receiver = v15;
  v26.super_class = v11;
  v22 = objc_msgSendSuper2(&v26, sel_initWithTitle_detailText_icon_contentLayout_, v20, v21, 0, 3);

  return v22;
}

id OnboardingIconSmallPaddingViewController.init(title:detailText:heroImage:heroImageHeight:linkButtonText:linkButtonAccessibilityIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v15 setContentMode_];
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroView] = v15;
  v16 = &v11[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroViewCustomHeight];
  *v16 = a6;
  v16[8] = a7 & 1;
  v17 = &v11[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_linkButtonText];
  *v17 = a8;
  *(v17 + 1) = a9;
  v18 = &v11[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_linkButtonAccessibilityIdentifier];
  *v18 = a10;
  *(v18 + 1) = a11;
  v19 = sub_1BA4A6758();

  v20 = sub_1BA4A6758();

  v24.receiver = v11;
  v24.super_class = type metadata accessor for OnboardingIconSmallPaddingViewController();
  v21 = objc_msgSendSuper2(&v24, sel_initWithTitle_detailText_icon_contentLayout_, v19, v20, 0, 3);

  return v21;
}

void sub_1BA473200()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for OnboardingIconSmallPaddingViewController();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroViewCustomHeight];
  if (v0[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroViewCustomHeight + 8])
  {
    v1 = 82.0;
  }

  [v0 hxui:*&v0[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroView] addCustomImageIconViewWithImageView:0 accessibilityIdentifier:v1 height:?];
  if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_linkButtonText + 8])
  {
    v2 = sub_1BA4A6758();
    if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_linkButtonAccessibilityIdentifier + 8])
    {
      v3 = sub_1BA4A6758();
    }

    else
    {
      v3 = 0;
    }
  }
}

id OnboardingIconSmallPaddingViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_1BA4A6758();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_1BA4A6758();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1BA4A6758();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id OnboardingIconSmallPaddingViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1BA4A6758();

  if (a4)
  {
    v12 = sub_1BA4A6758();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id OnboardingIconSmallPaddingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingIconSmallPaddingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA4736C0()
{
  v1 = *(v0 + 16);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5480;
  *(v2 + 56) = v1;
  *(v2 + 64) = &protocol witness table for PDFSpacer;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t PDFRenderableProvider<>.renderables.getter(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BA4737A0, 0, 0);
}

uint64_t sub_1BA4737A0()
{
  v1 = *(v0 + 32);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5480;
  v6 = *(v0 + 16);
  *(v2 + 56) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v1);
  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_1BA4738A8(uint64_t a1)
{
  *(v2 + 48) = *v1;
  v3 = *(v1 + 8);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1BA4738DC, 0, 0);
}

uint64_t sub_1BA4738DC()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  *(v6 + 56) = v5;
  *(v6 + 64) = &protocol witness table for PDFFloatingImage;
  v7 = swift_allocObject();
  *(v6 + 32) = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  v10 = *(v0 + 8);
  v8 = v4;

  return v10(v6);
}

uint64_t sub_1BA4739F0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 1);
  return MEMORY[0x1EEE6DFA0](sub_1BA473A1C, 0, 0);
}

uint64_t sub_1BA473A1C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 56) = v4;
  *(v5 + 64) = &protocol witness table for PDFVStackWithFixedWidth;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 48) = v1;
  v7 = v0[1];

  return v7(v5);
}

uint64_t sub_1BA473B0C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1BA473B3C, 0, 0);
}

uint64_t sub_1BA473B3C()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 56) = v4;
  *(v5 + 64) = &protocol witness table for PDFVerticalSeparator;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 48) = v1;
  v8 = v0[1];
  v6 = v1;

  return v8(v5);
}

uint64_t sub_1BA473C2C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1BA473C50, 0, 0);
}

uint64_t sub_1BA473C50()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  *(v3 + 56) = v2;
  *(v3 + 64) = &protocol witness table for PDFTable;
  *(v3 + 32) = v1;
  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_1BA473D30(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BA473D50, 0, 0);
}

uint64_t sub_1BA473D50()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  *(v3 + 56) = v2;
  *(v3 + 64) = &protocol witness table for PDFThreeStringSingleLineHStack;
  v4 = swift_allocObject();
  *(v3 + 32) = v4;
  sub_1BA4770D8(v1, v4 + 16);
  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_1BA473E60()
{
  v1 = *(v0 + 16);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5480;
  *(v2 + 56) = v1;
  *(v2 + 64) = &protocol witness table for PDFColumnBreak;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BA473F3C()
{
  v1 = *(v0 + 16);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5480;
  *(v2 + 56) = v1;
  *(v2 + 64) = &protocol witness table for PDFPageBreak;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BA473FF8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 56) = *(v1 + 16);
  *(v2 + 40) = *(v1 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1BA474030, 0, 0);
}

uint64_t sub_1BA474030()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B5480;
  *(v7 + 56) = v6;
  *(v7 + 64) = &protocol witness table for PDFEmptySpace;
  v8 = swift_allocObject();
  *(v7 + 32) = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  *(v8 + 32) = v3;
  *(v8 + 40) = v2;
  *(v8 + 48) = v1;
  v9 = *(v0 + 8);

  return v9(v7);
}

uint64_t sub_1BA47413C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = v1[1];
  *(v2 + 40) = *(v1 + 16);
  *(v2 + 41) = *(v1 + 17);
  return MEMORY[0x1EEE6DFA0](sub_1BA474178, 0, 0);
}

uint64_t sub_1BA474178()
{
  v1 = *(v0 + 41);
  v2 = *(v0 + 40);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  *(v6 + 56) = v5;
  *(v6 + 64) = &protocol witness table for PDFVStack;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  *(v6 + 48) = v2;
  *(v6 + 49) = v1;
  v8 = *(v0 + 8);

  return v8(v6);
}

uint64_t sub_1BA474280(uint64_t a1)
{
  v3 = *v1;
  v2[2] = a1;
  v2[3] = v3;
  v2[4] = v1[1];
  return MEMORY[0x1EEE6DFA0](sub_1BA4742AC, 0, 0);
}

uint64_t sub_1BA4742AC()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5480;
  *(v4 + 56) = v3;
  *(v4 + 64) = &protocol witness table for PDFHorizontallySequentialItems;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v6 = v0[1];

  return v6(v4);
}

uint64_t sub_1BA47439C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1BA4743C0, 0, 0);
}

uint64_t sub_1BA4743C0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  *(v3 + 56) = v2;
  *(v3 + 64) = &protocol witness table for PDFGrid;
  *(v3 + 32) = v1;
  v5 = v0[1];

  return v5(v3);
}

void sub_1BA4744C0()
{
  v1 = v0[2];
  v2 = v1[2];
  v3 = MEMORY[0x1E69E7CC0];
  v0[3] = v2;
  v0[4] = v3;
  if (v2)
  {
    v0[5] = 1;
    v4 = v1[7];
    v5 = v1[8];
    __swift_project_boxed_opaque_existential_1(v1 + 4, v4);
    v20 = (*(v5 + 8) + **(v5 + 8));
    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    v6[1] = sub_1BA474788;

    v20(v4, v5);
    return;
  }

  v7 = v3[2];
  if (!v7)
  {

    v9 = 0;
LABEL_25:
    v19 = v0[1];

    v19(v9);
    return;
  }

  v8 = 0;
  v9 = v3;
  while (v8 < v3[2])
  {
    v10 = v3[v8 + 4];
    v11 = *(v10 + 16);
    v12 = v9[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      goto LABEL_29;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v13 <= v9[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      v9 = sub_1BA27FAAC(isUniquelyReferenced_nonNull_native, v15, 1, v9);
      if (*(v10 + 16))
      {
LABEL_19:
        if ((v9[3] >> 1) - v9[2] < v11)
        {
          goto LABEL_31;
        }

        sub_1BA0A186C();
        swift_arrayInitWithCopy();

        if (v11)
        {
          v16 = v9[2];
          v17 = __OFADD__(v16, v11);
          v18 = v16 + v11;
          if (v17)
          {
            goto LABEL_32;
          }

          v9[2] = v18;
        }

        goto LABEL_8;
      }
    }

    if (v11)
    {
      goto LABEL_30;
    }

LABEL_8:
    if (v7 == ++v8)
    {

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
}

uint64_t sub_1BA474788(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1BA4748DC, 0, 0);
  }
}

void sub_1BA4748DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4[7];
  if (v5)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a4 = v4[4];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_3;
  }

  v9 = v4[5];
LABEL_7:
  v10 = v4[3];
  if (v9 != v10)
  {
    if (v9 >= v10)
    {
      __break(1u);
    }

    else
    {
      v4[5] = v9 + 1;
      if (!__OFADD__(v9, 1))
      {
        v23 = (v4[2] + 40 * v9);
        v24 = v23[7];
        v25 = v23[8];
        __swift_project_boxed_opaque_existential_1(v23 + 4, v24);
        v28 = (*(v25 + 8) + **(v25 + 8));
        v26 = swift_task_alloc();
        v4[6] = v26;
        *v26 = v4;
        v26[1] = sub_1BA474788;

        v28(v24, v25);
        return;
      }
    }

    __break(1u);
    return;
  }

  v5 = v4[4];
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v12 >= *(v5 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        a4 = sub_1BA27FAD4(0, a4[2] + 1, 1, a4);
LABEL_3:
        v8 = a4[2];
        v7 = a4[3];
        if (v8 >= v7 >> 1)
        {
          a4 = sub_1BA27FAD4((v7 > 1), v8 + 1, 1, a4);
        }

        a4[2] = v8 + 1;
        a4[v8 + 4] = v5;
        v9 = v4[5];
        v4[4] = a4;
        goto LABEL_7;
      }

      v14 = *(v5 + 32 + 8 * v12);
      v15 = *(v14 + 16);
      v16 = v13[2];
      v17 = v16 + v15;
      if (__OFADD__(v16, v15))
      {
        goto LABEL_37;
      }

      v18 = swift_isUniquelyReferenced_nonNull_native();
      if (v18 && v17 <= v13[3] >> 1)
      {
        if (*(v14 + 16))
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v16 <= v17)
        {
          v19 = v16 + v15;
        }

        else
        {
          v19 = v16;
        }

        v13 = sub_1BA27FAAC(v18, v19, 1, v13);
        if (*(v14 + 16))
        {
LABEL_22:
          if ((v13[3] >> 1) - v13[2] < v15)
          {
            goto LABEL_39;
          }

          sub_1BA0A186C();
          swift_arrayInitWithCopy();

          if (v15)
          {
            v20 = v13[2];
            v21 = __OFADD__(v20, v15);
            v22 = v20 + v15;
            if (v21)
            {
              goto LABEL_40;
            }

            v13[2] = v22;
          }

          goto LABEL_11;
        }
      }

      if (v15)
      {
        goto LABEL_38;
      }

LABEL_11:
      if (v11 == ++v12)
      {

        goto LABEL_33;
      }
    }
  }

  v13 = 0;
LABEL_33:
  v27 = v4[1];

  v27(v13);
}

uint64_t sub_1BA474C34(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1BA474C5C, 0, 0);
}

uint64_t sub_1BA474C5C()
{
  v1 = v0[3];
  v2 = v0[2];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  *(v3 + 56) = v2;
  *(v3 + 64) = &protocol witness table for PDFVerticalSpacer;
  *(v3 + 32) = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1BA474D20(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BA474D40, 0, 0);
}

uint64_t sub_1BA474D40()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  *(v3 + 56) = v2;
  *(v3 + 64) = &protocol witness table for PDFDebugContainer;
  v4 = swift_allocObject();
  *(v3 + 32) = v4;
  sub_1BA2FC8A0(v1, v4 + 16);
  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_1BA474E30(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  *(v2 + 48) = *(v1 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1BA474E68, 0, 0);
}

uint64_t sub_1BA474E68()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v8 = *(v0 + 24);
  v3 = *(v0 + 16);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5480;
  *(v4 + 56) = v3;
  *(v4 + 64) = &protocol witness table for PDFHorizontalSeparator;
  v5 = swift_allocObject();
  *(v4 + 32) = v5;
  *(v5 + 16) = v8;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  v9 = *(v0 + 8);
  v6 = v1;

  return v9(v4);
}

uint64_t sub_1BA474F80(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = v1[1];
  *(v2 + 40) = *(v1 + 1);
  *(v2 + 56) = v1[4];
  return MEMORY[0x1EEE6DFA0](sub_1BA474FBC, 0, 0);
}

uint64_t sub_1BA474FBC()
{
  v1 = v0[7];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v6 = v0[2];
  v5 = v0[3];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B5480;
  *(v7 + 56) = v6;
  *(v7 + 64) = &protocol witness table for PDFBox;
  v8 = swift_allocObject();
  *(v7 + 32) = v8;
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v3;
  v8[5] = v2;
  v8[6] = v1;
  v12 = v0[1];
  v9 = v5;
  v10 = v2;

  return v12(v7);
}

uint64_t sub_1BA4750DC(uint64_t a1)
{
  *(v2 + 192) = v1;
  *(v2 + 200) = a1;
  v3 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(v1 + 64);
  *(v2 + 96) = *(v1 + 80);
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1BA47511C, 0, 0);
}

uint64_t sub_1BA47511C()
{
  v2 = v0[24];
  v1 = v0[25];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  *(v3 + 56) = v1;
  *(v3 + 64) = &protocol witness table for PDFImage;
  v4 = swift_allocObject();
  *(v3 + 32) = v4;
  v5 = *(v2 + 16);
  *(v4 + 16) = *v2;
  *(v4 + 32) = v5;
  v7 = *(v2 + 48);
  v6 = *(v2 + 64);
  v8 = *(v2 + 32);
  *(v4 + 96) = *(v2 + 80);
  *(v4 + 64) = v7;
  *(v4 + 80) = v6;
  *(v4 + 48) = v8;
  sub_1BA326508((v0 + 2), (v0 + 13));
  v9 = v0[1];

  return v9(v3);
}

uint64_t sub_1BA47522C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = v1[1];
  *(v2 + 40) = *(v1 + 1);
  return MEMORY[0x1EEE6DFA0](sub_1BA475260, 0, 0);
}

uint64_t sub_1BA475260()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v5 = v0[2];
  v4 = v0[3];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  *(v6 + 56) = v5;
  *(v6 + 64) = &protocol witness table for PDFHStack;
  v7 = swift_allocObject();
  *(v6 + 32) = v7;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v1;
  v7[5] = v2;
  v10 = v0[1];

  v8 = v1;

  return v10(v6);
}

uint64_t sub_1BA47537C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 8);
  return MEMORY[0x1EEE6DFA0](sub_1BA4753A8, 0, 0);
}

uint64_t sub_1BA4753A8()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5480;
  *(v4 + 56) = v3;
  *(v4 + 64) = &protocol witness table for PDFSeparatedContent;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v6 = *(v0 + 8);

  return v6(v4);
}

uint64_t sub_1BA475498(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BA4754B8, 0, 0);
}

uint64_t sub_1BA4754B8()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  *(v3 + 56) = v2;
  *(v3 + 64) = &protocol witness table for PDFArticle;
  v4 = swift_allocObject();
  *(v3 + 32) = v4;
  sub_1BA47707C(v1, v4 + 16);
  v5 = v0[1];

  return v5(v3);
}

uint64_t Array<A>.render(context:document:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1BA47572C(a3);
  PDFVStack.render(context:document:)(a1, a2);
}

double Array<A>.boundingRectForContent(in:)(uint64_t a1, uint64_t a2)
{
  sub_1BA47572C(a2);
  PDFVStack.boundingRectForContent(in:)(a1);
  v4 = v3;

  return v4;
}

double Array<A>.minimumBoundingRectForContent(in:)(uint64_t a1, uint64_t a2)
{
  sub_1BA47572C(a2);
  PDFVStack.boundingRectForContent(in:)(a1);
  v4 = v3;

  return v4;
}

void *sub_1BA47572C(uint64_t a1)
{
  v8 = a1;
  v1 = sub_1BA4A6BF8();
  WitnessTable = swift_getWitnessTable();
  v3 = sub_1BA3D8580(&v8, v1, WitnessTable);
  sub_1BA476BD4(0, &qword_1EBBEB2F0, sub_1BA0A17D4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = v3;
  v5 = inited + 32;
  v6 = _s18HealthExperienceUI20PDFRenderableBuilderV10buildBlockySayAA0D0_pGAFd_tFZ_0(inited);
  swift_setDeallocating();
  sub_1BA0A18D0(v5);
  return v6;
}

uint64_t Array<A>.renderables.getter(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BA475898, 0, 0);
}

uint64_t sub_1BA475898()
{
  sub_1BA0A186C();
  v1 = sub_1BA4A7FA8();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BA475910(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = *(a1 + 16);
  *v5 = v2;
  v5[1] = sub_1BA2A6C20;

  return Array<A>.renderables.getter(v4, v6);
}

uint64_t PDFRenderableProvider.shared()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1BA476BD4(0, &qword_1EBBF3038, sub_1BA476C38, MEMORY[0x1E69A3170]);
  (*(v6 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  (*(v6 + 32))(v9 + v8, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1BA4A28C8();
}

uint64_t sub_1BA475B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v9 = (*(a4 + 8) + **(a4 + 8));
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_1BA475C3C;

  return v9(a3, a4);
}

uint64_t sub_1BA475C3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1BA475D88, 0, 0);
  }
}

uint64_t CachedAsync<>.renderables.getter()
{
  *(v1 + 24) = v0;
  v4 = (*MEMORY[0x1E69A3168] + MEMORY[0x1E69A3168]);
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_1BA475E58;

  return v4(v1 + 16);
}

uint64_t sub_1BA475E58()
{
  *(*v1 + 40) = v0;

  sub_1BA476BD4(0, &qword_1EBBF3038, sub_1BA476C38, MEMORY[0x1E69A3170]);
  sub_1BA476D54();
  v3 = sub_1BA4A6C28();
  if (v0)
  {
    v4 = sub_1BA475FF8;
  }

  else
  {
    v4 = sub_1BA475FDC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1BA476010()
{
  *(v1 + 24) = *v0;
  v4 = (*MEMORY[0x1E69A3168] + MEMORY[0x1E69A3168]);
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_1BA4760C0;

  return v4(v1 + 16);
}

uint64_t sub_1BA4760C0()
{
  *(*v1 + 40) = v0;

  sub_1BA476BD4(0, &qword_1EBBF3038, sub_1BA476C38, MEMORY[0x1E69A3170]);
  sub_1BA476D54();
  v3 = sub_1BA4A6C28();
  if (v0)
  {
    v4 = sub_1BA477134;
  }

  else
  {
    v4 = sub_1BA47713C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1BA476264()
{
  v1 = *(v0 + 16);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5480;
  *(v2 + 56) = v1;
  *(v2 + 64) = &protocol witness table for PDFEmptyTableCell;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BA476320(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BA477138;

  return PDFRenderableProvider<>.renderables.getter(a1, &protocol witness table for NSAttributedString);
}

uint64_t sub_1BA4763BC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 8);
  *(v2 + 33) = *(v1 + 9);
  return MEMORY[0x1EEE6DFA0](sub_1BA4763F0, 0, 0);
}

uint64_t sub_1BA4763F0()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 56) = v4;
  *(v5 + 64) = &protocol witness table for PDFAttributedStrings;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 41) = v1;
  v8 = *(v0 + 8);
  v6 = v3;

  return v8(v5);
}

uint64_t sub_1BA4764E4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 8);
  *(v2 + 33) = *(v1 + 9);
  return MEMORY[0x1EEE6DFA0](sub_1BA476518, 0, 0);
}

uint64_t sub_1BA476518()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 56) = v4;
  *(v5 + 64) = &protocol witness table for PDFText;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 41) = v1;
  v8 = *(v0 + 8);
  v6 = v3;

  return v8(v5);
}

uint64_t sub_1BA47660C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 8);
  *(v2 + 33) = *(v1 + 9);
  return MEMORY[0x1EEE6DFA0](sub_1BA476640, 0, 0);
}

uint64_t sub_1BA476640()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 56) = v4;
  *(v5 + 64) = &protocol witness table for PDFTitle;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 41) = v1;
  v8 = *(v0 + 8);
  v6 = v3;

  return v8(v5);
}

uint64_t sub_1BA476734(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 8);
  *(v2 + 33) = *(v1 + 9);
  return MEMORY[0x1EEE6DFA0](sub_1BA476768, 0, 0);
}

uint64_t sub_1BA476768()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 56) = v4;
  *(v5 + 64) = &protocol witness table for PDFCaption;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 41) = v1;
  v8 = *(v0 + 8);
  v6 = v3;

  return v8(v5);
}

uint64_t sub_1BA47685C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 8);
  *(v2 + 33) = *(v1 + 9);
  return MEMORY[0x1EEE6DFA0](sub_1BA476890, 0, 0);
}

uint64_t sub_1BA476890()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 56) = v4;
  *(v5 + 64) = &protocol witness table for PDFArticleTitle;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 41) = v1;
  v8 = *(v0 + 8);
  v6 = v3;

  return v8(v5);
}

uint64_t sub_1BA476984(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 8);
  *(v2 + 33) = *(v1 + 9);
  return MEMORY[0x1EEE6DFA0](sub_1BA4769B8, 0, 0);
}

uint64_t sub_1BA4769B8()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 56) = v4;
  *(v5 + 64) = &protocol witness table for PDFBody;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 41) = v1;
  v8 = *(v0 + 8);
  v6 = v3;

  return v8(v5);
}

uint64_t sub_1BA476AAC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 8);
  *(v2 + 33) = *(v1 + 9);
  return MEMORY[0x1EEE6DFA0](sub_1BA476AE0, 0, 0);
}

uint64_t sub_1BA476AE0()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 56) = v4;
  *(v5 + 64) = &protocol witness table for PDFBodyList;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 41) = v1;
  v8 = *(v0 + 8);
  v6 = v3;

  return v8(v5);
}

void sub_1BA476BD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA476C6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA0C2E3C;

  return sub_1BA475B1C(a1, v1 + v6, v4, v5);
}

unint64_t sub_1BA476D54()
{
  result = qword_1EBBF3048;
  if (!qword_1EBBF3048)
  {
    sub_1BA476BD4(255, &qword_1EBBF3038, sub_1BA476C38, MEMORY[0x1E69A3170]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3048);
  }

  return result;
}

uint64_t sub_1BA476DDC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of PDFRenderableProvider.renderables.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BA476F80;

  return v7(a1, a2);
}

uint64_t sub_1BA476F80(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t ManualDataEntryType.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

unint64_t sub_1BA4771CC()
{
  result = qword_1EBBF3050;
  if (!qword_1EBBF3050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3050);
  }

  return result;
}

uint64_t static UIButton.Configuration.cameraCloseButton()()
{
  sub_1BA4A78A8();
  v0 = sub_1BA4A6758();
  v1 = [objc_opt_self() systemImageNamed_];

  sub_1BA4A7958();
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = [v3 colorWithAlphaComponent_];

  sub_1BA4A78E8();
  v5 = [v2 blackColor];
  return sub_1BA4A78F8();
}

uint64_t DatePickerItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DatePickerItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DatePickerItem.uniqueIdentifier.getter()
{
  type metadata accessor for DatePickerItem();
  v0 = sub_1BA4A1748();
  MEMORY[0x1BFAF1350](v0);

  return 0x6B63695065746144;
}

uint64_t type metadata accessor for DatePickerItem()
{
  result = qword_1EBBF30A0;
  if (!qword_1EBBF30A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DatePickerItem.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for DatePickerItem() + 24));

  return v1;
}

uint64_t DatePickerItem.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DatePickerItem() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DatePickerItem.placeholderText.getter()
{
  v1 = *(v0 + *(type metadata accessor for DatePickerItem() + 28));

  return v1;
}

uint64_t DatePickerItem.placeholderText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DatePickerItem() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1BA47773C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
  }

  else
  {
    v3 = 0;
  }

  v4 = (a2 + *(type metadata accessor for DatePickerItem() + 32));
  v5 = *v4;
  sub_1B9F0F1B8(v2);
  result = sub_1B9F0E310(v5);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t DatePickerItem.dataProvider.getter()
{
  v1 = *(v0 + *(type metadata accessor for DatePickerItem() + 32));
  sub_1B9F0F1B8(v1);
  return v1;
}

uint64_t DatePickerItem.dataProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DatePickerItem() + 32));
  result = sub_1B9F0E310(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1BA47787C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DatePickerItem() + 36));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BA074E64;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_1B9F0F1B8(v4);
}

uint64_t sub_1BA477910(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA074E3C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for DatePickerItem() + 36));
  v8 = *v7;
  sub_1B9F0F1B8(v3);
  result = sub_1B9F0E310(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t DatePickerItem.updateHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for DatePickerItem() + 36));
  sub_1B9F0F1B8(v1);
  return v1;
}

uint64_t DatePickerItem.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DatePickerItem() + 36));
  result = sub_1B9F0E310(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DatePickerItem.isEditEnabled.setter(char a1)
{
  result = type metadata accessor for DatePickerItem();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t DatePickerItem.datePickerMode.setter(uint64_t a1)
{
  result = type metadata accessor for DatePickerItem();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t DatePickerItem.datePickerStyle.setter(uint64_t a1)
{
  result = type metadata accessor for DatePickerItem();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t DatePickerItem.baseIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for DatePickerItem() + 56));

  return v1;
}

uint64_t DatePickerItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DatePickerItem() + 56));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1BA477ECC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1B9F481BC(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t DatePickerItem.init(title:placeholderText:isEditEnabled:datePickerMode:datePickerStyle:dataProvider:updateHandler:maximumDate:accessibilityIdentifierPrefix:backgroundConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  type metadata accessor for DatePickerCollectionViewCell();
  sub_1BA478304();
  *a9 = sub_1BA4A6808();
  a9[1] = v19;
  v20 = type metadata accessor for DatePickerItem();
  sub_1BA4A1788();
  v21 = (a9 + v20[7]);
  v22 = (a9 + v20[8]);
  v23 = (a9 + v20[9]);
  v24 = v20[13];
  v25 = sub_1BA4A1728();
  (*(*(v25 - 8) + 56))(a9 + v24, 1, 1, v25);
  v26 = (a9 + v20[14]);
  *v26 = 0;
  v26[1] = 0;
  v27 = v20[15];
  v28 = sub_1BA4A4168();
  (*(*(v28 - 8) + 56))(a9 + v27, 1, 1, v28);
  v29 = (a9 + v20[6]);
  *v29 = a1;
  v29[1] = a2;
  *v21 = a3;
  v21[1] = a4;
  *(a9 + v20[10]) = a5;
  *(a9 + v20[11]) = a6;
  *(a9 + v20[12]) = a7;
  *v22 = a8;
  v22[1] = a10;
  *v23 = a11;
  v23[1] = a12;
  sub_1BA478870(a13, a9 + v24, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  sub_1BA478870(a16, a9 + v27, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  if (a15)
  {
    v38 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v39 = v30;

    MEMORY[0x1BFAF1350](46, 0xE100000000000000);

    MEMORY[0x1BFAF1350](a14, a15);

    MEMORY[0x1BFAF1350](0x636950657461442ELL, 0xEB0000000072656BLL);

    sub_1BA47BCAC(a16, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    result = sub_1BA47BCAC(a13, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    *v26 = v38;
    v26[1] = v39;
  }

  else
  {
    sub_1BA47BCAC(a16, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    return sub_1BA47BCAC(a13, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  }

  return result;
}

unint64_t sub_1BA478304()
{
  result = qword_1EBBF3058;
  if (!qword_1EBBF3058)
  {
    type metadata accessor for DatePickerCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBF3058);
  }

  return result;
}

uint64_t (*sub_1BA478348(uint64_t a1, uint64_t a2))(uint64_t result)
{
  v3 = *(a2 + 36);
  *(a1 + 24) = v3;
  v4 = (v2 + v3);
  v6 = *v4;
  v5 = v4[1];
  if (!v6)
  {
    v5 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v2;
  return sub_1BA47C1FC;
}

uint64_t sub_1BA47838C()
{
  v0 = sub_1BA4A1748();
  MEMORY[0x1BFAF1350](v0);

  return 0x6B63695065746144;
}

uint64_t sub_1BA4783F8(uint64_t a1)
{
  v2 = sub_1BA47BDE4(&qword_1EBBF3090);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA478460(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1BA4784CC()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA478524(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1BA4785E4(uint64_t a1, void **a2)
{
  sub_1BA478734(a1, v7, &qword_1EDC6E1A0, sub_1B9FCD918);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_1BA478870(v7, v3 + v4, &qword_1EDC6E1A0, sub_1B9FCD918);
  v5 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0xE8))(v5);
  return sub_1BA47BCAC(v7, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA4786C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_item;
  swift_beginAccess();
  return sub_1BA478734(v1 + v3, a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA478734(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1B9F481BC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA4787A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_1BA478870(a1, v1 + v3, &qword_1EDC6E1A0, sub_1B9FCD918);
  v4 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE8))(v4);
  return sub_1BA47BCAC(a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA478870(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1B9F481BC(0, a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t (*sub_1BA4788DC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA478940;
}

uint64_t sub_1BA478940(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0xE8))(result);
  }

  return result;
}

char *sub_1BA4789A4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1BA4A3EA8();
  v88 = *(v10 - 8);
  v89 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v84 - v14;
  v16 = &v5[OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_baseIdentifier];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v5[OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_item];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 4) = 0;
  v18 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = *MEMORY[0x1E69DDCF8];
  v90 = objc_opt_self();
  v20 = [v90 preferredFontDescriptorWithTextStyle:v19 compatibleWithTraitCollection:0];
  v87 = v12;
  if (v20)
  {
    v21 = v20;
    v22 = [objc_opt_self() fontWithDescriptor:v20 size:0.0];

    v23 = v90;
  }

  else
  {
    sub_1BA4A3DD8();
    v24 = v19;
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v93 = v86;
      *v27 = 136315906;
      v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v30 = v24;
      v31 = sub_1B9F0B82C(v28, v29, &v93);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v91 = 0;
      v92 = 1;
      sub_1B9F481BC(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v32 = sub_1BA4A6808();
      v34 = sub_1B9F0B82C(v32, v33, &v93);

      *(v27 + 14) = v34;
      *(v27 + 22) = 2080;
      LODWORD(v91) = 0;
      type metadata accessor for SymbolicTraits(0);
      v35 = sub_1BA4A6808();
      v37 = sub_1B9F0B82C(v35, v36, &v93);

      *(v27 + 24) = v37;
      v24 = v30;
      *(v27 + 32) = 2112;
      v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v27 + 34) = v38;
      v39 = v85;
      *v85 = v38;
      _os_log_impl(&dword_1B9F07000, v25, v26, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v27, 0x2Au);
      sub_1BA47C19C(v39, sub_1BA074DD4);
      MEMORY[0x1BFAF43A0](v39, -1, -1);
      v40 = v86;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v40, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
    }

    (*(v88 + 8))(v15, v89);
    v23 = v90;
    v41 = [v90 preferredFontDescriptorWithTextStyle_];
    v22 = [objc_opt_self() fontWithDescriptor:v41 size:0.0];
  }

  v42 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_titleLabel;
  [v18 setFont_];

  [v18 setTextAlignment_];
  [v18 setAdjustsFontForContentSizeCategory_];
  v43 = objc_opt_self();
  v44 = [v43 labelColor];
  [v18 setTextColor_];

  [v18 setUserInteractionEnabled_];
  *&v5[v42] = v18;
  v45 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v45 setTranslatesAutoresizingMaskIntoConstraints_];
  v46 = [v23 preferredFontDescriptorWithTextStyle:v19 compatibleWithTraitCollection:0];
  if (v46)
  {
    v47 = v46;
    v48 = [objc_opt_self() fontWithDescriptor:v46 size:0.0];
  }

  else
  {
    v49 = v87;
    sub_1BA4A3DD8();
    v50 = v19;
    v51 = sub_1BA4A3E88();
    v52 = sub_1BA4A6FB8();
    v90 = v50;

    v53 = v52;
    v54 = v52;
    v55 = v51;
    if (os_log_type_enabled(v51, v54))
    {
      v56 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v93 = v86;
      *v56 = 136315906;
      v57 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v59 = sub_1B9F0B82C(v57, v58, &v93);

      *(v56 + 4) = v59;
      *(v56 + 12) = 2080;
      v91 = 0;
      v92 = 1;
      sub_1B9F481BC(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v60 = sub_1BA4A6808();
      v62 = sub_1B9F0B82C(v60, v61, &v93);

      *(v56 + 14) = v62;
      *(v56 + 22) = 2080;
      LODWORD(v91) = 0;
      type metadata accessor for SymbolicTraits(0);
      v63 = sub_1BA4A6808();
      v65 = sub_1B9F0B82C(v63, v64, &v93);

      *(v56 + 24) = v65;
      *(v56 + 32) = 2112;
      v66 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v56 + 34) = v66;
      v67 = v85;
      *v85 = v66;
      _os_log_impl(&dword_1B9F07000, v55, v53, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v56, 0x2Au);
      sub_1BA47C19C(v67, sub_1BA074DD4);
      MEMORY[0x1BFAF43A0](v67, -1, -1);
      v68 = v86;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v68, -1, -1);
      MEMORY[0x1BFAF43A0](v56, -1, -1);
    }

    (*(v88 + 8))(v49, v89);
    v47 = [v23 preferredFontDescriptorWithTextStyle_];
    v48 = [objc_opt_self() fontWithDescriptor:v47 size:0.0];
  }

  v69 = v48;

  v70 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_selectedDateLabel;
  [v45 setFont_];

  [v45 setTextAlignment_];
  [v45 setAdjustsFontForContentSizeCategory_];
  v71 = [v43 systemBlueColor];
  [v45 setTextColor_];

  [v45 setUserInteractionEnabled_];
  *&v5[v70] = v45;
  v72 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker;
  v73 = [objc_allocWithZone(MEMORY[0x1E69DC920]) init];
  [v73 setTranslatesAutoresizingMaskIntoConstraints_];
  [v73 setPreferredDatePickerStyle_];
  [v73 setDatePickerMode_];
  *&v5[v72] = v73;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_allConstraints] = MEMORY[0x1E69E7CC0];
  v74 = type metadata accessor for DatePickerCollectionViewCell();
  v94.receiver = v5;
  v94.super_class = v74;
  v75 = objc_msgSendSuper2(&v94, sel_initWithFrame_, a1, a2, a3, a4);
  v76 = [v75 contentView];
  [v76 addSubview_];

  v77 = [v75 contentView];
  [v77 addSubview_];

  v78 = [v75 contentView];
  [v78 addSubview_];

  v79 = *MEMORY[0x1E69796E8];
  v80 = [v75 layer];
  [v80 setCornerCurve_];

  v81 = [v75 layer];
  [v81 setCornerRadius_];

  v82 = [v75 layer];
  [v82 setMaskedCorners_];

  [v75 setClipsToBounds_];
  sub_1BA479984();

  return v75;
}

id DatePickerCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_1BA479470()
{
  sub_1B9F481BC(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - v4;
  v6 = sub_1BA4A4168();
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  sub_1B9F481BC(0, &qword_1EBBF3070, type metadata accessor for DatePickerItem);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v26 - v13;
  v15 = type metadata accessor for DatePickerItem();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_1BA478734(v0 + v19, v28, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v29)
  {
    sub_1BA47BCAC(v28, &qword_1EDC6E1A0, sub_1B9FCD918);
    (*(v16 + 56))(v14, 1, 1, v15);
    return sub_1BA47BCAC(v14, &qword_1EBBF3070, type metadata accessor for DatePickerItem);
  }

  sub_1B9FCD918();
  v20 = swift_dynamicCast();
  (*(v16 + 56))(v14, v20 ^ 1u, 1, v15);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_1BA47BCAC(v14, &qword_1EBBF3070, type metadata accessor for DatePickerItem);
  }

  sub_1BA47BD08(v14, v18);
  sub_1BA478734(&v18[*(v15 + 60)], v5, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  v21 = v26;
  if ((*(v26 + 48))(v5, 1, v6) == 1)
  {
    sub_1BA47BCAC(v5, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    sub_1BA4A4158();
    v22 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    v23 = v27;
    (*(v21 + 16))(v27, v8, v6);
    (*(v21 + 56))(v23, 0, 1, v6);
    MEMORY[0x1BFAF1F10](v23);
    (*(v21 + 8))(v8, v6);
  }

  else
  {
    (*(v21 + 32))(v11, v5, v6);
    v25 = v27;
    (*(v21 + 16))(v27, v11, v6);
    (*(v21 + 56))(v25, 0, 1, v6);
    MEMORY[0x1BFAF1F10](v25);
    (*(v21 + 8))(v11, v6);
  }

  return sub_1BA47C19C(v18, type metadata accessor for DatePickerItem);
}

void sub_1BA479984()
{
  v1 = v0;
  v57 = objc_opt_self();
  v58 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_allConstraints;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);

  v2 = sub_1BA4A6AE8();

  [v57 deactivateConstraints_];

  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4C27A0;
  v4 = v3;
  v5 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_titleLabel];
  v6 = [v5 leadingAnchor];
  v7 = [v1 contentView];
  v8 = [v7 leadingAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:16.0];
  v4[4] = v9;
  v10 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_selectedDateLabel];
  v11 = [v10 topAnchor];
  v12 = [v1 &selRef_fetchSources];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:12.0];
  v4[5] = v14;
  v56 = v10;
  v15 = [v10 leadingAnchor];
  v16 = [v5 trailingAnchor];
  v17 = [v15 constraintGreaterThanOrEqualToAnchor:v16 constant:16.0];

  v4[6] = v17;
  v18 = [v1 contentView];
  v19 = [v18 trailingAnchor];

  v20 = [v10 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:16.0];

  v4[7] = v21;
  v22 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker];
  v23 = [v22 leadingAnchor];
  v24 = [v1 contentView];
  v25 = [v24 leadingAnchor];

  v26 = [v23 constraintEqualToAnchor:v25 constant:16.0];
  v4[8] = v26;
  v27 = [v1 contentView];
  v28 = [v27 trailingAnchor];

  v29 = [v22 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:16.0];

  v4[9] = v30;
  v31 = [v1 contentView];
  v32 = [v31 bottomAnchor];

  v33 = [v22 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:12.0];

  v4[10] = v34;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B7510;
  v36 = [v5 centerYAnchor];
  v37 = [v22 centerYAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(inited + 32) = v38;
  v39 = [v22 topAnchor];
  v40 = [v1 contentView];
  v41 = [v40 topAnchor];

  v42 = [v39 constraintEqualToAnchor:v41 constant:12.0];
  *(inited + 40) = v42;
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_1BA4B8B60;
  v44 = [v5 topAnchor];
  v45 = [v1 contentView];
  v46 = [v45 topAnchor];

  v47 = [v44 constraintEqualToAnchor:v46 constant:12.0];
  *(v43 + 32) = v47;
  v48 = [v22 topAnchor];
  v49 = [v5 bottomAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v43 + 40) = v50;
  v51 = [v22 topAnchor];
  v52 = [v56 bottomAnchor];
  v53 = [v51 constraintEqualToAnchor_];

  *(v43 + 48) = v53;
  if ([v56 isHidden])
  {
    v54 = inited;
  }

  else
  {
    v54 = v43;
  }

  sub_1B9F73B50(v54);
  *&v1[v58] = v4;

  v55 = sub_1BA4A6AE8();

  [v57 activateConstraints_];
}

uint64_t sub_1BA47A0DC()
{
  v1 = v0;
  sub_1B9F481BC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  v8 = sub_1BA4A1728();
  v45 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  sub_1B9F481BC(0, &qword_1EBBF3070, type metadata accessor for DatePickerItem);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42 - v14;
  v16 = type metadata accessor for DatePickerItem();
  v17 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_1BA478734(&v1[v20], v46, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v47)
  {
    sub_1BA47BCAC(v46, &qword_1EDC6E1A0, sub_1B9FCD918);
    (*(v17 + 56))(v15, 1, 1, v16);
    return sub_1BA47BCAC(v15, &qword_1EBBF3070, type metadata accessor for DatePickerItem);
  }

  sub_1B9FCD918();
  v21 = swift_dynamicCast();
  (*(v17 + 56))(v15, v21 ^ 1u, 1, v16);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_1BA47BCAC(v15, &qword_1EBBF3070, type metadata accessor for DatePickerItem);
  }

  sub_1BA47BD08(v15, v19);
  sub_1BA479470();
  v22 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_titleLabel];
  v23 = sub_1BA4A6758();
  [v22 setText_];

  v24 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker];
  [v24 setDatePickerMode_];
  v43 = *&v19[v16[12]];
  [v24 setPreferredDatePickerStyle_];
  v25 = *&v19[v16[8]];
  if (!v25)
  {
    v26 = v45;
    (*(v45 + 56))(v7, 1, 1, v8);
    goto LABEL_9;
  }

  v25(v19);
  v26 = v45;
  if ((*(v45 + 48))(v7, 1, v8) == 1)
  {
LABEL_9:
    sub_1BA47BCAC(v7, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    goto LABEL_10;
  }

  (*(v26 + 32))(v12, v7, v8);
  v27 = sub_1BA4A16B8();
  [v24 setDate:v27 animated:1];

  (*(v26 + 8))(v12, v8);
LABEL_10:
  sub_1BA478734(&v19[v16[13]], v4, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  if ((*(v26 + 48))(v4, 1, v8) == 1)
  {
    sub_1BA47BCAC(v4, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  }

  else
  {
    v29 = v44;
    (*(v26 + 32))(v44, v4, v8);
    v30 = sub_1BA4A16B8();
    [v24 setMaximumDate_];

    (*(v26 + 8))(v29, v8);
  }

  v31 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_selectedDateLabel];
  [v31 setHidden_];
  if (*&v19[v16[7] + 8])
  {
    v32 = sub_1BA4A6758();
  }

  else
  {
    v32 = 0;
  }

  [v31 setText_];

  v33 = v19[v16[10]];
  v34 = objc_opt_self();
  v35 = &selRef_systemBlueColor;
  if (!v33)
  {
    v35 = &selRef_systemGrayColor;
  }

  v36 = [v34 *v35];
  [v31 setTextColor_];

  [v1 setUserInteractionEnabled_];
  sub_1BA479984();
  [v24 addTarget:v1 action:sel_pickerDateChanged_ forControlEvents:0xFFFFFFFFLL];
  sub_1BA47A9EC(v24);
  v37 = &v19[v16[14]];
  v38 = *v37;
  v39 = *(v37 + 1);
  v40 = &v1[OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_baseIdentifier];
  swift_beginAccess();
  *v40 = v38;
  *(v40 + 1) = v39;

  if (v39)
  {
    v41 = sub_1BA4A6758();
    [v24 setAccessibilityIdentifier_];
  }

  else
  {
    [v24 setAccessibilityIdentifier_];
  }

  return sub_1BA47C19C(v19, type metadata accessor for DatePickerItem);
}

Swift::Void __swiftcall DatePickerCollectionViewCell.updateAutomationIdentifiers(with:)(Swift::String_optional with)
{
  if (with.value._object)
  {
    v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker);
    v4 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker);

    [v3 setAccessibilityIdentifier_];
  }
}

void sub_1BA47A8DC()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v2 = sub_1BA4A6758();
  [v1 setDateFormat_];

  v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_selectedDateLabel);
  v4 = sub_1BA4A16B8();
  v5 = [v1 stringFromDate_];

  if (!v5)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v5 = sub_1BA4A6758();
  }

  [v3 setText_];
}

uint64_t sub_1BA47A9EC(void *a1)
{
  v2 = v1;
  v34 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A1728();
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F481BC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33 - v10;
  sub_1B9F481BC(0, &qword_1EBBF3070, type metadata accessor for DatePickerItem);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v33 - v13;
  v15 = type metadata accessor for DatePickerItem();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_1BA478734(v2 + v19, v39, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (v39[3])
  {
    sub_1B9FCD918();
    v20 = swift_dynamicCast();
    (*(v16 + 56))(v14, v20 ^ 1u, 1, v15);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      sub_1BA47BD08(v14, v18);
      v21 = *&v18[*(v15 + 36)];
      v22 = v35;
      if (v21)
      {
        v23 = [v34 date];
        sub_1BA4A16F8();

        (*(v22 + 56))(v11, 0, 1, v6);
        v21(v18, v11);
        sub_1BA47BCAC(v11, &qword_1EDC6E440, MEMORY[0x1E6969530]);
      }

      v24 = [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker) date];
      sub_1BA4A16F8();

      sub_1BA47A8DC();
      (*(v22 + 8))(v8, v6);
      return sub_1BA47C19C(v18, type metadata accessor for DatePickerItem);
    }
  }

  else
  {
    sub_1BA47BCAC(v39, &qword_1EDC6E1A0, sub_1B9FCD918);
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  sub_1BA47BCAC(v14, &qword_1EBBF3070, type metadata accessor for DatePickerItem);
  sub_1BA4A3DD8();
  v26 = sub_1BA4A3E88();
  v27 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v39[0] = v29;
    *v28 = 136315138;
    v30 = sub_1BA4A85D8();
    v32 = sub_1B9F0B82C(v30, v31, v39);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1B9F07000, v26, v27, "[%s] item is not a DatePickerItem", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1BFAF43A0](v29, -1, -1);
    MEMORY[0x1BFAF43A0](v28, -1, -1);
  }

  return (*(v37 + 8))(v5, v38);
}

id DatePickerCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DatePickerCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DatePickerCollectionViewCell.didSelectCell(_:in:)(UIView *_, UIViewController *in)
{
  v3 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker);
  v4 = [v3 heightAnchor];
  v5 = [v4 constraintEqualToConstant_];

  [v5 setActive_];

  [v3 setHidden_];
}

id sub_1BA47B170()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker;
  v3 = [*(*v0 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker) heightAnchor];
  v4 = [v3 constraintEqualToConstant_];

  [v4 setActive_];
  v5 = *(v1 + v2);

  return [v5 setHidden_];
}

void sub_1BA47B214(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker);
    v6 = sub_1BA4A6758();
    [v4 setAccessibilityIdentifier_];
  }

  else
  {
    v5 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker);

    [v5 setAccessibilityIdentifier_];
  }
}

uint64_t sub_1BA47B2B0()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA47B30C(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void _s18HealthExperienceUI28DatePickerCollectionViewCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v70 = *(v2 - 8);
  v71 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v66 - v6;
  v8 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_baseIdentifier);
  *v8 = 0;
  v8[1] = 0;
  v9 = v1 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_item;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = *MEMORY[0x1E69DDCF8];
  v72 = objc_opt_self();
  v12 = [v72 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:0];
  v69 = v4;
  if (v12)
  {
    v13 = v12;
    v14 = [objc_opt_self() fontWithDescriptor:v12 size:0.0];

    v15 = v72;
  }

  else
  {
    sub_1BA4A3DD8();
    v16 = v11;
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v75 = v68;
      *v19 = 136315906;
      v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v22 = v16;
      v23 = sub_1B9F0B82C(v20, v21, &v75);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v73 = 0;
      v74 = 1;
      sub_1B9F481BC(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, &v75);

      *(v19 + 14) = v26;
      *(v19 + 22) = 2080;
      LODWORD(v73) = 0;
      type metadata accessor for SymbolicTraits(0);
      v27 = sub_1BA4A6808();
      v29 = sub_1B9F0B82C(v27, v28, &v75);

      *(v19 + 24) = v29;
      v16 = v22;
      *(v19 + 32) = 2112;
      v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v19 + 34) = v30;
      v31 = v67;
      *v67 = v30;
      _os_log_impl(&dword_1B9F07000, v17, v18, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v19, 0x2Au);
      sub_1BA47C19C(v31, sub_1BA074DD4);
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      v32 = v68;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v32, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    (*(v70 + 8))(v7, v71);
    v15 = v72;
    v33 = [v72 preferredFontDescriptorWithTextStyle_];
    v14 = [objc_opt_self() fontWithDescriptor:v33 size:0.0];
  }

  v34 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_titleLabel;
  [v10 setFont_];

  [v10 setTextAlignment_];
  [v10 setAdjustsFontForContentSizeCategory_];
  v35 = objc_opt_self();
  v36 = [v35 labelColor];
  [v10 setTextColor_];

  [v10 setUserInteractionEnabled_];
  *(v1 + v34) = v10;
  v37 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  v38 = [v15 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:0];
  if (v38)
  {
    v39 = v38;
    v40 = [objc_opt_self() fontWithDescriptor:v38 size:0.0];
  }

  else
  {
    v41 = v69;
    sub_1BA4A3DD8();
    v42 = v11;
    v43 = sub_1BA4A3E88();
    v44 = sub_1BA4A6FB8();
    v72 = v42;

    v45 = v44;
    v46 = v44;
    v47 = v43;
    if (os_log_type_enabled(v43, v46))
    {
      v48 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v75 = v68;
      *v48 = 136315906;
      v49 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v51 = sub_1B9F0B82C(v49, v50, &v75);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2080;
      v73 = 0;
      v74 = 1;
      sub_1B9F481BC(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v52 = sub_1BA4A6808();
      v54 = sub_1B9F0B82C(v52, v53, &v75);

      *(v48 + 14) = v54;
      *(v48 + 22) = 2080;
      LODWORD(v73) = 0;
      type metadata accessor for SymbolicTraits(0);
      v55 = sub_1BA4A6808();
      v57 = sub_1B9F0B82C(v55, v56, &v75);

      *(v48 + 24) = v57;
      *(v48 + 32) = 2112;
      v58 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v48 + 34) = v58;
      v59 = v67;
      *v67 = v58;
      _os_log_impl(&dword_1B9F07000, v47, v45, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v48, 0x2Au);
      sub_1BA47C19C(v59, sub_1BA074DD4);
      MEMORY[0x1BFAF43A0](v59, -1, -1);
      v60 = v68;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v60, -1, -1);
      MEMORY[0x1BFAF43A0](v48, -1, -1);
    }

    (*(v70 + 8))(v41, v71);
    v39 = [v15 preferredFontDescriptorWithTextStyle_];
    v40 = [objc_opt_self() fontWithDescriptor:v39 size:0.0];
  }

  v61 = v40;

  v62 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_selectedDateLabel;
  [v37 setFont_];

  [v37 setTextAlignment_];
  [v37 setAdjustsFontForContentSizeCategory_];
  v63 = [v35 systemBlueColor];
  [v37 setTextColor_];

  [v37 setUserInteractionEnabled_];
  *(v1 + v62) = v37;
  v64 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker;
  v65 = [objc_allocWithZone(MEMORY[0x1E69DC920]) init];
  [v65 setTranslatesAutoresizingMaskIntoConstraints_];
  [v65 setPreferredDatePickerStyle_];
  [v65 setDatePickerMode_];
  *(v1 + v64) = v65;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_allConstraints) = MEMORY[0x1E69E7CC0];
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA47BCAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B9F481BC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA47BD08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatePickerItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA47BD6C(uint64_t a1)
{
  result = sub_1BA47BDE4(&qword_1EBBF3090);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA47BDE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DatePickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA47BE50()
{
  v0 = MEMORY[0x1E69E6158];
  sub_1BA4A1798();
  if (v1 <= 0x3F)
  {
    sub_1B9F23348(319, &qword_1EDC6E410, v0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9F481BC(319, &qword_1EDC5DB48, sub_1B9F37BB8);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Mode(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for UIDatePickerStyle(319);
          if (v5 <= 0x3F)
          {
            sub_1B9F481BC(319, &qword_1EDC6E440, MEMORY[0x1E6969530]);
            if (v6 <= 0x3F)
            {
              sub_1B9F481BC(319, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BA47C19C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *AllHealthDataViewController.__allocating_init(healthStore:healthExperienceStore:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_providedPresentation] = 1;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_healthStore] = a1;
  sub_1B9F0A534(a2, &v5[OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_healthExperienceStore]);
  sub_1B9F0A534(a2, v10);
  type metadata accessor for AllHealthDataDataSource(0);
  swift_allocObject();
  v6 = a1;
  v7 = sub_1BA1ECE48(v6, v10);
  v8 = CompoundDataSourceCollectionViewController.init(dataSource:)(v7);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v8;
}

uint64_t sub_1BA47C2C0@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_providedPresentation;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1BA47C314(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_providedPresentation;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

char *AllHealthDataViewController.init(healthStore:healthExperienceStore:)(void *a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_providedPresentation) = 1;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_healthStore) = a1;
  sub_1B9F0A534(a2, v3 + OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_healthExperienceStore);
  sub_1B9F0A534(a2, v10);
  type metadata accessor for AllHealthDataDataSource(0);
  swift_allocObject();
  v6 = a1;
  v7 = sub_1BA1ECE48(v6, v10);
  v8 = CompoundDataSourceCollectionViewController.init(dataSource:)(v7);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v8;
}

void sub_1BA47C4F4()
{
  v1 = sub_1BA4A3678();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AllHealthDataViewController();
  v13.receiver = v0;
  v13.super_class = v5;
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v6 = [objc_opt_self() mainBundle];
  sub_1BA4A1318();

  v7 = sub_1BA4A6758();
  [v0 setTitle_];

  (*(v2 + 104))(v4, *MEMORY[0x1E69A2BF0], v1);
  v8 = sub_1BA4A35B8();
  (*(v2 + 8))(v4, v1);
  [v0 setUserActivity_];

  v9 = [v0 collectionView];
  if (v9)
  {
    v10 = v9;

    v11 = sub_1BA4A6AE8();
    v12 = HKUIJoinStringsForAutomationIdentifier();

    [v10 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA47C96C()
{
  sub_1B9F36938();
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    sub_1B9FF578C();
  }

  else
  {
    __break(1u);
  }
}

id AllHealthDataViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_1BA47CAA8()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_healthExperienceStore;

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

id AllHealthDataViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AllHealthDataViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA47CB68@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_providedPresentation;
  result = swift_beginAccess();
  *a1 = *(v3 + v4);
  return result;
}

__n128 CategoryTileView.init(viewModel:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  result = *(a1 + 16);
  v5 = *(a1 + 32);
  *(a2 + 16) = result;
  *(a2 + 32) = v5;
  *(a2 + 48) = v3;
  return result;
}

uint64_t HKTypeGroupCategoryTileViewModel.init(hkTypeGroupIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_1EDC6EA18;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = off_1EDC6EA20;
  if (*(off_1EDC6EA20 + 2))
  {
    v8 = sub_1B9F24A34(a1, a2);
    v10 = v9;

    if (v10)
    {
      v11 = v7[7] + 48 * v8;
      v12 = *(v11 + 8);
      v14 = *(v11 + 32);
      v13 = *(v11 + 40);
      *a3 = *v11;
      *(a3 + 8) = v12;
      *(a3 + 16) = *(v11 + 16);
      *(a3 + 32) = v14;
      *(a3 + 40) = v13;
      *(a3 + 48) = a1;
      *(a3 + 56) = a2;
    }
  }

  else
  {
  }

  sub_1BA483124();
  swift_allocError();
  swift_willThrow();
}

uint64_t StandardCategoryTileViewModel.init(title:imageRepresentation:colorRepresentation:imageMode:usesAccessories:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  v12 = *a5;
  v13 = a5[1];
  v14 = type metadata accessor for StandardCategoryTileViewModel();
  v15 = v14[5];
  v16 = sub_1BA4A2BF8();
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  v17 = v14[6];
  v18 = sub_1BA4A2B98();
  (*(*(v18 - 8) + 56))(&a7[v17], 1, 1, v18);
  *a7 = a1;
  *(a7 + 1) = a2;
  sub_1BA4831C4(a3, &a7[v15], sub_1BA0D0F10);
  result = sub_1BA4831C4(a4, &a7[v17], sub_1B9F20584);
  v20 = &a7[v14[7]];
  *v20 = v12;
  *(v20 + 1) = v13;
  a7[v14[8]] = a6;
  return result;
}

uint64_t sub_1BA47CF74()
{
  if (*v0)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x6C6F626D7973;
  }
}

uint64_t sub_1BA47CFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
  if (v6 || (sub_1BA4A8338() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BA4A8338();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1BA47D074(uint64_t a1)
{
  v2 = sub_1BA4832D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA47D0B0(uint64_t a1)
{
  v2 = sub_1BA4832D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA47D104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465726564726F62 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BA4A8338();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BA47D18C(uint64_t a1)
{
  v2 = sub_1BA48322C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA47D1C8(uint64_t a1)
{
  v2 = sub_1BA48322C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA47D204()
{
  if (*v0)
  {
    return 0x7974696361706FLL;
  }

  else
  {
    return 0x6E65636341657375;
  }
}

uint64_t sub_1BA47D24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65636341657375 && a2 == 0xEE00726F6C6F4374;
  if (v6 || (sub_1BA4A8338() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7974696361706FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BA4A8338();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1BA47D330(uint64_t a1)
{
  v2 = sub_1BA483280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA47D36C(uint64_t a1)
{
  v2 = sub_1BA483280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CategoryTileImageViewModel.ImageMode.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1BA48345C(0, &qword_1EDC5DD70, sub_1BA48322C, &type metadata for CategoryTileImageViewModel.ImageMode.CustomCodingKeys, MEMORY[0x1E69E6F58]);
  v22 = v4;
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v20 - v5;
  sub_1BA48345C(0, &qword_1EDC5DD68, sub_1BA483280, &type metadata for CategoryTileImageViewModel.ImageMode.SymbolCodingKeys, v3);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  sub_1BA48345C(0, &qword_1EDC5DD78, sub_1BA4832D4, &type metadata for CategoryTileImageViewModel.ImageMode.CodingKeys, v3);
  v10 = v9;
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4832D4();
  sub_1BA4A8548();
  if (v13 < 0)
  {
    v16 = v20;
    v30 = 1;
    sub_1BA48322C();
    v17 = v21;
    sub_1BA4A81F8();
    v18 = v22;
    sub_1BA4A8258();
    (*(v16 + 8))(v17, v18);
  }

  else
  {
    v29 = 0;
    sub_1BA483280();
    sub_1BA4A81F8();
    v28 = 0;
    v14 = v24;
    v15 = v25;
    sub_1BA4A8258();
    if (!v15)
    {
      v27 = 1;
      sub_1BA4A8268();
    }

    (*(v23 + 8))(v8, v14);
  }

  return (*(v26 + 8))(v12, v10);
}

uint64_t CategoryTileImageViewModel.ImageMode.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v41 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1BA48345C(0, &qword_1EDC5DED0, sub_1BA48322C, &type metadata for CategoryTileImageViewModel.ImageMode.CustomCodingKeys, MEMORY[0x1E69E6F48]);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v39 - v5;
  sub_1BA48345C(0, &qword_1EDC5DEC8, sub_1BA483280, &type metadata for CategoryTileImageViewModel.ImageMode.SymbolCodingKeys, v3);
  v7 = v6;
  v40 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - v8;
  sub_1BA48345C(0, &qword_1EDC5DED8, sub_1BA4832D4, &type metadata for CategoryTileImageViewModel.ImageMode.CodingKeys, v3);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = *(a1 + 24);
  v47 = a1;
  v14 = a1;
  v16 = &v39 - v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1BA4832D4();
  v45 = v16;
  v17 = v46;
  sub_1BA4A8528();
  if (!v17)
  {
    v18 = v42;
    v19 = v43;
    v20 = v44;
    v46 = v12;
    v21 = sub_1BA4A81D8();
    v22 = (2 * *(v21 + 16)) | 1;
    v49 = v21;
    v50 = v21 + 32;
    v51 = 0;
    v52 = v22;
    v23 = sub_1B9F4BD44();
    if (v23 == 2 || v51 != v52 >> 1)
    {
      v29 = sub_1BA4A7E68();
      swift_allocError();
      v31 = v30;
      sub_1B9FFFD90();
      *v31 = &type metadata for CategoryTileImageViewModel.ImageMode;
      v32 = v45;
      sub_1BA4A8128();
      sub_1BA4A7E48();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
      swift_willThrow();
      (*(v46 + 8))(v32, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v23)
      {
        v48 = 1;
        sub_1BA48322C();
        v24 = v18;
        sub_1BA4A8118();
        v25 = v41;
        v26 = v20;
        v27 = sub_1BA4A8198();
        v28 = v46;
        v33 = v27;
        (*(v19 + 8))(v24, v26);
        (*(v28 + 8))(v45, v11);
        swift_unknownObjectRelease();
        v34 = v33 & 1 | 0x8000000000000000;
        v35 = 0;
      }

      else
      {
        v48 = 0;
        sub_1BA483280();
        sub_1BA4A8118();
        v48 = 0;
        v36 = sub_1BA4A8198();
        v48 = 1;
        sub_1BA4A81A8();
        v35 = v38;
        (*(v40 + 8))(v9, v7);
        (*(v46 + 8))(v45, v11);
        swift_unknownObjectRelease();
        v34 = v36 & 1;
        v25 = v41;
      }

      *v25 = v34;
      v25[1] = v35;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

__n128 CategoryTileImageViewModel.init(regularSizeImage:compactSizeImage:mode:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  return result;
}

uint64_t CategoryTileViewModel.accessories.getter()
{
  sub_1B9F87EE0(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_1BA4A3FB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A3F18();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F87EE0(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5480;
  (*(v8 + 104))(v10, *MEMORY[0x1E69DBF28], v7);
  v12 = sub_1BA4A3F48();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t HKTypeGroupCategoryTileViewModel.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t HKTypeGroupCategoryTileViewModel.image.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = HKTypeGroup.displayCategory.getter();
  v3 = [v2 systemImageName];

  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v4 = HKTypeGroup.displayCategory.getter();
  v5 = [v4 largeListIcon];

  if (v5)
  {
    result = sub_1BA4A6158();
    v7 = 0x3FE999999999999ALL;
  }

  else
  {

    result = 0;
    v7 = 0;
  }

  *a1 = result;
  a1[1] = v5;
  a1[2] = 0;
  a1[3] = v7;
  return result;
}

uint64_t HKTypeGroupCategoryTileViewModel.color.getter()
{
  v4 = *v0;
  v5 = v0[1];
  v6 = *(v0 + 1);
  v7 = *(v0 + 2);
  v1 = HKTypeGroup.displayCategory.getter();
  v2 = [v1 color];

  if (v2)
  {
    return sub_1BA4A6048();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA47E1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001BA50ADC0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1BA4A8338();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1BA47E284(uint64_t a1)
{
  v2 = sub_1BA483328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA47E2C0(uint64_t a1)
{
  v2 = sub_1BA483328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKTypeGroupCategoryTileViewModel.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v42 = a2;
  sub_1BA48345C(0, &qword_1EDC5DE78, sub_1BA483328, &type metadata for HKTypeGroupCategoryTileViewModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA483328();
  sub_1BA4A8528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v42;
  v12 = sub_1BA4A8188();
  v14 = v13;
  v15 = qword_1EDC6EA18;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = off_1EDC6EA20;
  if (*(off_1EDC6EA20 + 2))
  {
    v35 = sub_1B9F24A34(v12, v14);
    v36 = v12;
    v18 = v17;

    if (v18)
    {
      v19 = (v16[7] + 48 * v35);
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[3];
      v32 = v19[2];
      v33 = v20;
      v35 = v22;
      v23 = v19[5];
      v30 = v19[4];
      v31 = *(v9 + 8);
      v34 = v21;

      v31(v8, v5);
      v25 = v32;
      v24 = v33;
      *&v37 = v33;
      *(&v37 + 1) = v21;
      v26 = v36;
      *&v38 = v32;
      *(&v38 + 1) = v35;
      v27 = v30;
      *&v39 = v30;
      *(&v39 + 1) = v23;
      *&v40 = v36;
      *(&v40 + 1) = v14;
      v28 = v38;
      *v10 = v37;
      v10[1] = v28;
      v29 = v40;
      v10[2] = v39;
      v10[3] = v29;
      sub_1BA48337C(&v37, v41);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v41[0] = v24;
      v41[1] = v34;
      v41[2] = v25;
      v41[3] = v35;
      v41[4] = v27;
      v41[5] = v23;
      v41[6] = v26;
      v41[7] = v14;
      return sub_1BA32C710(v41);
    }
  }

  else
  {
  }

  sub_1BA483124();
  swift_allocError();
  swift_willThrow();
  (*(v9 + 8))(v8, v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t HKTypeGroupCategoryTileViewModel.encode(to:)(void *a1)
{
  sub_1BA48345C(0, &qword_1EDC5DD10, sub_1BA483328, &type metadata for HKTypeGroupCategoryTileViewModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA483328();
  sub_1BA4A8548();
  sub_1BA4A8248();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BA47E794()
{
  v4 = *v0;
  v5 = v0[1];
  v6 = *(v0 + 1);
  v7 = *(v0 + 2);
  v1 = HKTypeGroup.displayCategory.getter();
  v2 = [v1 color];

  if (v2)
  {
    return sub_1BA4A6048();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA47E808()
{
  sub_1B9F87EE0(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_1BA4A3FB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A3F18();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F87EE0(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5480;
  (*(v8 + 104))(v10, *MEMORY[0x1E69DBF28], v7);
  v12 = sub_1BA4A3F48();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t sub_1BA47EB30(void *a1)
{
  sub_1BA48345C(0, &qword_1EDC5DD10, sub_1BA483328, &type metadata for HKTypeGroupCategoryTileViewModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA483328();
  sub_1BA4A8548();
  sub_1BA4A8248();
  return (*(v4 + 8))(v6, v3);
}

uint64_t StandardCategoryTileViewModel.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t StandardCategoryTileViewModel.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 StandardCategoryTileViewModel.imageMode.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for StandardCategoryTileViewModel() + 28));
  *a1 = result;
  return result;
}

uint64_t StandardCategoryTileViewModel.imageMode.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for StandardCategoryTileViewModel();
  v5 = (v1 + *(result + 28));
  *v5 = v2;
  v5[1] = v3;
  return result;
}

uint64_t StandardCategoryTileViewModel.usesAccessories.setter(char a1)
{
  result = type metadata accessor for StandardCategoryTileViewModel();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t StandardCategoryTileViewModel.accessories.getter()
{
  sub_1B9F87EE0(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_1BA4A3FB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3F18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for StandardCategoryTileViewModel() + 32)) != 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B9F87EE0(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5480;
  (*(v9 + 104))(v11, *MEMORY[0x1E69DBF28], v8);
  v13 = sub_1BA4A3F48();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  return v12;
}

__n128 StandardCategoryTileViewModel.image.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1BA0D0F10(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A2BF8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = type metadata accessor for StandardCategoryTileViewModel();
  sub_1BA486560(v2 + *(v14 + 20), v6, sub_1BA0D0F10);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BA486500(v6, sub_1BA0D0F10);
LABEL_7:
    result.n128_u64[0] = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  (*(v8 + 32))(v13, v6, v7);
  v16 = sub_1BA4A2BB8();
  if (!v16)
  {
    (*(v8 + 8))(v13, v7);
    goto LABEL_7;
  }

  v17 = v16;
  (*(v8 + 16))(v10, v13, v7);
  if ((*(v8 + 88))(v10, v7) == *MEMORY[0x1E69A3288])
  {
    (*(v8 + 96))(v10, v7);
    sub_1B9F2C258();
    v23 = *(v18 + 48);
    v19 = sub_1BA4A6158();
    (*(v8 + 8))(v13, v7);
    sub_1BA486500(&v10[v23], sub_1BA232FB8);
  }

  else
  {
    v19 = sub_1BA4A2BE8();
    v20 = *(v8 + 8);
    v20(v13, v7);
    v20(v10, v7);
  }

  v21 = *(v14 + 28);
  *a1 = v19;
  *(a1 + 8) = v17;
  result = *(v2 + v21);
  *(a1 + 16) = result;
  return result;
}

uint64_t StandardCategoryTileViewModel.color.getter()
{
  v1 = sub_1BA4A2C58();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StandardCategoryTileViewModel();
  sub_1BA486560(v0 + *(v8 + 24), v7, sub_1B9F20584);
  v9 = sub_1BA4A2B98();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_1BA486500(v7, sub_1B9F20584);
    return 0;
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    sub_1BA4A2C48();
    v12 = sub_1BA4A2B78();
    (*(v2 + 8))(v4, v1);
    (*(v10 + 8))(v7, v9);
    return v12;
  }
}

unint64_t sub_1BA47F86C()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0xD000000000000013;
  v4 = 0x646F4D6567616D69;
  if (v1 != 3)
  {
    v4 = 0x6563634173657375;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BA47F91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA485C2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA47F944(uint64_t a1)
{
  v2 = sub_1BA4833B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA47F980(uint64_t a1)
{
  v2 = sub_1BA4833B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StandardCategoryTileViewModel.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1BA48345C(0, &qword_1EDC5DD40, sub_1BA4833B4, &type metadata for StandardCategoryTileViewModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4833B4();
  sub_1BA4A8548();
  LOBYTE(v12) = 0;
  sub_1BA4A8248();
  if (!v2)
  {
    v10 = type metadata accessor for StandardCategoryTileViewModel();
    LOBYTE(v12) = 1;
    sub_1BA4A2BF8();
    sub_1B9F208E4(&qword_1EDC6AD68, MEMORY[0x1E69A32A0]);
    sub_1BA4A8238();
    LOBYTE(v12) = 2;
    sub_1BA4A2B98();
    sub_1B9F208E4(&qword_1EDC6AD70, MEMORY[0x1E69A3260]);
    sub_1BA4A8238();
    v12 = *(v3 + *(v10 + 28));
    v13 = 3;
    sub_1BA483408();
    sub_1BA4A8288();
    LOBYTE(v12) = 4;
    sub_1BA4A8258();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t StandardCategoryTileViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0D0F10(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA48345C(0, &qword_1EDC5DEA8, sub_1BA4833B4, &type metadata for StandardCategoryTileViewModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v36 = v7;
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for StandardCategoryTileViewModel();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v13 + 20);
  v15 = sub_1BA4A2BF8();
  v16 = *(*(v15 - 8) + 56);
  v40 = v14;
  v16(v12 + v14, 1, 1, v15);
  v17 = *(v10 + 24);
  v18 = sub_1BA4A2B98();
  v19 = *(*(v18 - 8) + 56);
  v39 = v17;
  v19(v12 + v17, 1, 1, v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4833B4();
  v37 = v9;
  v20 = v38;
  sub_1BA4A8528();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v23 = v39;
    sub_1BA486500(v12 + v40, sub_1BA0D0F10);
    v29 = sub_1B9F20584;
    v30 = v12 + v23;
  }

  else
  {
    v21 = v34;
    v22 = v35;
    v38 = v10;
    LOBYTE(v41) = 0;
    *v12 = sub_1BA4A8188();
    v12[1] = v25;
    v31 = v25;
    LOBYTE(v41) = 1;
    sub_1B9F208E4(&qword_1EDC6AD58, MEMORY[0x1E69A32A0]);
    sub_1BA4A8178();
    sub_1BA4831C4(v22, v12 + v40, sub_1BA0D0F10);
    LOBYTE(v41) = 2;
    sub_1B9F208E4(&qword_1EDC6E1D8, MEMORY[0x1E69A3260]);
    v26 = v33;
    sub_1BA4A8178();
    sub_1BA4831C4(v26, v12 + v39, sub_1B9F20584);
    v42 = 3;
    sub_1BA4834C4();
    sub_1BA4A81C8();
    v27 = v38;
    *(v12 + *(v38 + 28)) = v41;
    LOBYTE(v41) = 4;
    v28 = sub_1BA4A8198();
    (*(v21 + 8))(v37, v36);
    *(v12 + *(v27 + 32)) = v28 & 1;
    sub_1BA486560(v12, v32, type metadata accessor for StandardCategoryTileViewModel);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v29 = type metadata accessor for StandardCategoryTileViewModel;
    v30 = v12;
  }

  return sub_1BA486500(v30, v29);
}

uint64_t AsyncImageCategoryTileViewModel.title.getter()
{
  v0 = sub_1BA43D4F0();

  return v0;
}

double AsyncImageCategoryTileViewModel.image.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = AsyncImageCategoryTileViewModel.regularSizeImage.getter(a1);
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  v7 = AsyncImageCategoryTileViewModel.compactSizeImage.getter(a1);
  if (!v7)
  {

LABEL_5:
    *&v9 = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return *&v9;
  }

  v8 = *(a1 + 44);
  *a2 = v6;
  *(a2 + 8) = v7;
  v9 = *(v2 + v8);
  *(a2 + 16) = v9;
  return *&v9;
}

uint64_t AsyncImageCategoryTileViewModel.regularSizeImage.getter(uint64_t a1)
{
  sub_1BA0D0F10(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 36);
  sub_1BA486560(v1 + v12, &v20 - v10, sub_1BA0D0F10);
  v13 = sub_1BA4A2BF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v11, 1, v13) != 1)
  {
    sub_1BA486560(v11, v8, sub_1BA0D0F10);
    if ((*(v14 + 88))(v8, v13) == *MEMORY[0x1E69A3288])
    {
      (*(v14 + 96))(v8, v13);
      sub_1B9F2C258();
      v17 = *(v16 + 48);
      v18 = sub_1BA4A6158();
      sub_1BA486500(&v8[v17], sub_1BA232FB8);
      goto LABEL_8;
    }

    (*(v14 + 8))(v8, v13);
  }

  sub_1BA486560(v1 + v12, v5, sub_1BA0D0F10);
  if (v15(v5, 1, v13) == 1)
  {
    sub_1BA486500(v5, sub_1BA0D0F10);
    v18 = 0;
  }

  else
  {
    v18 = sub_1BA4A2BE8();
    (*(v14 + 8))(v5, v13);
  }

LABEL_8:
  sub_1BA486500(v11, sub_1BA0D0F10);
  return v18;
}

uint64_t AsyncImageCategoryTileViewModel.compactSizeImage.getter(uint64_t a1)
{
  sub_1BA0D0F10(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA486560(v1 + *(a1 + 36), v5, sub_1BA0D0F10);
  v6 = sub_1BA4A2BF8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1BA486500(v5, sub_1BA0D0F10);
    return 0;
  }

  else
  {
    v9 = sub_1BA4A2BB8();
    (*(v7 + 8))(v5, v6);
    return v9;
  }
}

__n128 AsyncImageCategoryTileViewModel.imageMode.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(v2 + *(a1 + 44));
  *a2 = result;
  return result;
}

uint64_t sub_1BA4807C0()
{
  v0 = sub_1BA4A8108();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1BA480810(unsigned __int8 a1)
{
  v1 = 0x656C746974;
  v2 = 0x646F4D6567616D69;
  v3 = 0x797341736465656ELL;
  if (a1 != 4)
  {
    v3 = 0x766F72506E6F6369;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD000000000000013;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BA4808EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BA480960(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1BA4809CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BA480A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BA480AAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BA4807C0();
  *a1 = result;
  return result;
}

unint64_t sub_1BA480AE4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BA480810(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BA480B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1BA48080C(a1, a2, *(a3 + 16), *(a3 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_1BA480B50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BA485DF8();
  *a1 = result;
  return result;
}

uint64_t sub_1BA480B7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BA480BD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t AsyncImageCategoryTileViewModel.init(title:imageRepresentation:colorRepresentation:needsAsyncImage:imageMode:iconProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v15 = *a6;
  v16 = a6[1];
  *a9 = a1;
  a9[1] = a2;
  v17 = type metadata accessor for AsyncImageCategoryTileViewModel();
  sub_1BA486498(a3, a9 + v17[9], sub_1BA0D0F10);
  sub_1BA486498(a4, a9 + v17[10], sub_1B9F20584);
  *(a9 + v17[12]) = a5;
  v18 = (a9 + v17[11]);
  *v18 = v15;
  v18[1] = v16;
  v19 = *(*(a8 - 8) + 32);
  v20 = a9 + v17[13];

  return v19(v20, a7, a8);
}

uint64_t AsyncImageCategoryTileViewModel.color.getter(uint64_t a1)
{
  v3 = sub_1BA4A2C58();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA486560(v1 + *(a1 + 40), v9, sub_1B9F20584);
  v10 = sub_1BA4A2B98();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BA486500(v9, sub_1B9F20584);
    return 0;
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    sub_1BA4A2C48();
    v13 = sub_1BA4A2B78();
    (*(v4 + 8))(v6, v3);
    (*(v11 + 8))(v9, v10);
    return v13;
  }
}

uint64_t AsyncImageCategoryTileViewModel.fetchImage()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v8 = (*(v4 + 24) + **(v4 + 24));
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BA0C2E3C;

  return v8(a1, v5, v4);
}

uint64_t AsyncImageCategoryTileViewModel.encode(to:)(void *a1, uint64_t a2)
{
  v15 = a2;
  v3 = v2;
  v5 = *(a2 + 16);
  v14[0] = *(a2 + 24);
  v14[1] = v5;
  type metadata accessor for AsyncImageCategoryTileViewModel.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1BA4A8298();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A8548();
  LOBYTE(v17) = 0;
  v10 = v16;
  sub_1BA4A8248();
  if (v10)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v12 = v7;
  v13 = v15;
  LOBYTE(v17) = 1;
  sub_1BA4A2BF8();
  sub_1B9F208E4(&qword_1EDC6AD68, MEMORY[0x1E69A32A0]);
  sub_1BA4A8238();
  LOBYTE(v17) = 2;
  sub_1BA4A2B98();
  sub_1B9F208E4(&qword_1EDC6AD70, MEMORY[0x1E69A3260]);
  sub_1BA4A8238();
  v17 = *(v3 + *(v13 + 44));
  v18 = 3;
  sub_1BA483408();
  sub_1BA4A8288();
  LOBYTE(v17) = 4;
  sub_1BA4A8258();
  LOBYTE(v17) = 5;
  sub_1BA4A8288();
  return (*(v12 + 8))(v9, v6);
}

uint64_t AsyncImageCategoryTileViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v36 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v40 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0D0F10(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v42 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AsyncImageCategoryTileViewModel.CodingKeys();
  swift_getWitnessTable();
  v44 = sub_1BA4A81E8();
  v41 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v13 = &v34 - v12;
  v39 = a3;
  v14 = type metadata accessor for AsyncImageCategoryTileViewModel();
  v35 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v34 - v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v43 = v13;
  v17 = v45;
  sub_1BA4A8528();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v41;
  v18 = v42;
  v45 = a2;
  LOBYTE(v46) = 0;
  *v16 = sub_1BA4A8188();
  v16[1] = v20;
  sub_1BA4A2BF8();
  LOBYTE(v46) = 1;
  sub_1B9F208E4(&qword_1EDC6AD58, MEMORY[0x1E69A32A0]);
  v21 = v18;
  sub_1BA4A8178();
  v22 = v14;
  sub_1BA486498(v21, v16 + *(v14 + 36), sub_1BA0D0F10);
  sub_1BA4A2B98();
  LOBYTE(v46) = 2;
  sub_1B9F208E4(&qword_1EDC6E1D8, MEMORY[0x1E69A3260]);
  v23 = v40;
  sub_1BA4A8178();
  sub_1BA486498(v23, v16 + v22[10], sub_1B9F20584);
  v47 = 3;
  sub_1BA4834C4();
  sub_1BA4A81C8();
  v24 = v22;
  *(v16 + v22[11]) = v46;
  LOBYTE(v46) = 4;
  v25 = sub_1BA4A8198();
  v26 = v22[12];
  v42 = v16;
  *(v16 + v26) = v25 & 1;
  LOBYTE(v46) = 5;
  v27 = v38;
  v28 = v45;
  sub_1BA4A81C8();
  (*(v19 + 8))(v43, v44);
  v29 = v24[13];
  v30 = v24;
  v31 = v42;
  (*(v36 + 32))(v42 + v29, v27, v28);
  v32 = v35;
  (*(v35 + 16))(v37, v31, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v32 + 8))(v31, v30);
}

uint64_t sub_1BA4819D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BA0C36D8;

  return AsyncImageCategoryTileViewModel.fetchImage()(a1, a2);
}

uint64_t HostedCategoryTileView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_1B9F87EE0(0, &qword_1EBBECFB8, sub_1BA175634, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for HostedCategoryTileView();
  v7 = (a3 + *(v6 + 52));
  v8 = type metadata accessor for ViewModelState();
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  v7[4] = 0u;
  (*(*(a2 - 8) + 16))(a3 + *(v6 + 56), a1 + *(v8 + 28), a2);
  return (*(*(v8 - 8) + 8))(a1, v8);
}

__n128 HostedCategoryTileView.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 24);
  v5 = (*(v3 + 16))(v4, v3);
  v7 = v6;
  v8 = (*(v3 + 24))(v4, v3);
  (*(v3 + 32))(v11, v4, v3);
  result = v11[0];
  v10 = v11[1];
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = result;
  *(a2 + 40) = v10;
  return result;
}

void (*sub_1BA481D34(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = HostedCategoryTileView.actionHandlerContent.modify();
  return sub_1B9FCDD98;
}

uint64_t CategoryTileView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  *a1 = sub_1BA4A5798();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1BA485E00(0, &qword_1EBBF30D8, sub_1BA483560);
  return sub_1BA481E44(v6, a1 + *(v4 + 44));
}

uint64_t sub_1BA481E44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA4835FC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  *v9 = sub_1BA4A5878();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_1BA485E00(0, &qword_1EBBF32E0, sub_1BA483690);
  sub_1BA481F8C(a1, &v9[*(v10 + 44)]);
  sub_1BA485F24(v9, v6, sub_1BA4835FC);
  sub_1BA485F24(v6, a2, sub_1BA4835FC);
  sub_1BA483594();
  v12 = a2 + *(v11 + 48);
  *v12 = 0;
  *(v12 + 8) = 0;
  sub_1BA48601C(v9, sub_1BA4835FC);
  return sub_1BA48601C(v6, sub_1BA4835FC);
}

uint64_t sub_1BA481F8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v182 = a2;
  v157 = sub_1BA4A5438();
  MEMORY[0x1EEE9AC00](v157);
  v158 = &v156 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA483D60(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v165 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A6138();
  v160 = *(v6 - 8);
  v161 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v159 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA483C28(0);
  v176 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v162 = &v156 - v12;
  sub_1BA485E6C(0, &qword_1EBBF32E8, sub_1BA483814, sub_1BA483C28, MEMORY[0x1E697F948]);
  v174 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v175 = &v156 - v14;
  sub_1BA485EF0(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F89828();
  v166 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA483940();
  v168 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4838E0();
  v167 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v156 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA483898(0);
  v171 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v156 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA483814();
  v173 = v30;
  v170 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v169 = &v156 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA485E6C(0, &qword_1EBBF3110, sub_1BA483814, sub_1BA483C28, MEMORY[0x1E697F960]);
  v33 = v32;
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v172 = &v156 - v35;
  sub_1BA483778();
  MEMORY[0x1EEE9AC00](v36 - 8);
  v181 = &v156 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39.n128_f64[0] = MEMORY[0x1EEE9AC00](v38);
  v40 = a1[1];
  v178 = *a1;
  v179 = v40;
  v41 = a1[3];
  v180 = a1[2];
  v183 = v41;
  v184 = &v156 - v42;
  if (v41)
  {
    v164 = v33;
    v44 = a1[4];
    v43 = a1[5];
    v45 = a1[6];
    v177 = v43;
    v163 = v44;
    if (v43 < 0)
    {
      v59 = v159;
      v58 = v160;
      v60 = v161;
      (*(v160 + 104))(v159, *MEMORY[0x1E6981630], v161, v39.n128_f64[0]);

      v61 = v44;
      v170 = sub_1BA4A6198();
      (*(v58 + 8))(v59, v60);
      sub_1BA4A63C8();
      sub_1BA4A5448();
      *&v185[54] = v209;
      *&v185[70] = v210;
      *&v185[86] = v211;
      *&v185[102] = v212;
      *&v185[6] = v206;
      LOBYTE(v186) = 1;
      *&v185[22] = v207;
      v62 = 1;
      *&v185[38] = v208;
      if (v177)
      {
        v63 = *(v157 + 20);
        v64 = *MEMORY[0x1E697F468];
        v65 = sub_1BA4A5818();
        v66 = v158;
        (*(*(v65 - 8) + 104))(&v158[v63], v64, v65);
        __asm { FMOV            V0.2D, #3.0 }

        *v66 = _Q0;
        v72 = [objc_opt_self() systemGroupedBackgroundColor];
        v73 = sub_1BA4A6048();
        sub_1BA4A51F8();
        v74 = v165;
        sub_1BA486560(v66, v165, MEMORY[0x1E697EAF0]);
        sub_1BA48626C();
        v76 = v74 + *(v75 + 36);
        v77 = v214;
        *v76 = v213;
        *(v76 + 16) = v77;
        *(v76 + 32) = v215;
        sub_1BA486300();
        *(v74 + *(v78 + 52)) = v73;
        *(v74 + *(v78 + 56)) = 256;
        v79 = sub_1BA4A63C8();
        v81 = v80;
        sub_1BA486500(v66, MEMORY[0x1E697EAF0]);
        sub_1BA4863B0();
        v62 = 0;
        v83 = (v74 + *(v82 + 36));
        *v83 = v79;
        v83[1] = v81;
      }

      sub_1BA483D94();
      v85 = v165;
      (*(*(v84 - 8) + 56))(v165, v62, 1, v84);
      v86 = sub_1BA4A63C8();
      v88 = v87;
      v89 = &v10[*(v176 + 36)];
      sub_1BA486498(v85, v89, sub_1BA483D60);
      sub_1BA483CFC();
      v91 = (v89 + *(v90 + 36));
      *v91 = v86;
      v91[1] = v88;
      v92 = *&v185[32];
      *(v10 + 66) = *&v185[48];
      *(v10 + 50) = v92;
      v93 = *v185;
      *(v10 + 34) = *&v185[16];
      *(v10 + 18) = v93;
      *(v10 + 16) = *&v185[110];
      *(v10 + 114) = *&v185[96];
      v94 = *&v185[64];
      *(v10 + 98) = *&v185[80];
      *v10 = v170;
      *(v10 + 1) = 0;
      *(v10 + 8) = 1;
      *(v10 + 82) = v94;
      v95 = v162;
      sub_1BA486498(v10, v162, sub_1BA483C28);
      sub_1BA486560(v95, v175, sub_1BA483C28);
      swift_storeEnumTagMultiPayload();
      v96 = sub_1BA483A3C();
      v190 = v171;
      v191 = v96;
      swift_getOpaqueTypeConformance2();
      sub_1BA486104();
      v97 = v172;
      sub_1BA4A58E8();
      sub_1BA277094(v183, v163);
      sub_1BA486500(v95, sub_1BA483C28);
    }

    else
    {
      v162 = v34;
      v165 = v45;
      v46 = *MEMORY[0x1E6981698];
      v47 = v44;
      v48 = sub_1BA4A6178();
      v49 = *(v48 - 8);
      (*(v49 + 104))(v17, v46, v48);
      (*(v49 + 56))(v17, 0, 1, v48);

      v50 = v47;
      v51 = sub_1BA4A6148();
      sub_1BA486500(v17, sub_1BA485EF0);
      v52 = (v20 + *(v166 + 36));
      sub_1B9F89374(0);
      v54 = *(v53 + 28);
      v55 = *MEMORY[0x1E69816C0];
      v56 = sub_1BA4A6188();
      (*(*(v56 - 8) + 104))(v52 + v54, v55, v56);
      *v52 = swift_getKeyPath();
      *v20 = v51;
      if (v177)
      {
        v57 = sub_1BA4A6078();
      }

      else
      {
        v98 = [objc_opt_self() systemBackgroundColor];
        v57 = sub_1BA4A6048();
      }

      v99 = v57;
      v100 = v165;
      v34 = v162;
      sub_1BA486498(v20, v23, sub_1B9F89828);
      *&v23[*(v168 + 36)] = v99;
      sub_1BA486498(v23, v26, sub_1BA483940);
      *&v26[*(v167 + 36)] = v100;
      v101 = sub_1BA4A5CE8();
      KeyPath = swift_getKeyPath();
      sub_1BA486498(v26, v29, sub_1BA4838E0);
      v103 = v171;
      v104 = &v29[*(v171 + 36)];
      *v104 = KeyPath;
      v104[1] = v101;
      sub_1BA4A5C98();
      v105 = sub_1BA483A3C();
      v106 = v169;
      sub_1BA4A5E98();
      sub_1BA486500(v29, sub_1BA483898);
      v107 = v170;
      v108 = v173;
      (*(v170 + 16))(v175, v106, v173);
      swift_storeEnumTagMultiPayload();
      *&v206 = v103;
      *(&v206 + 1) = v105;
      swift_getOpaqueTypeConformance2();
      sub_1BA486104();
      v97 = v172;
      sub_1BA4A58E8();
      sub_1BA277094(v183, v163);
      (*(v107 + 8))(v106, v108);
    }

    sub_1B9FAA3FC(v97, v184);
    (*(v34 + 56))(v109);
  }

  else
  {
    (*(v34 + 56))(v39);
  }

  v190 = v178;
  v191 = v179;
  sub_1B9F252FC();

  v110 = sub_1BA4A5E18();
  v112 = v111;
  v114 = v113;
  sub_1BA4A5C18();
  v115 = sub_1BA4A5DE8();
  v117 = v116;
  v119 = v118;

  sub_1BA102AF4(v110, v112, v114 & 1);

  sub_1BA4A5CB8();
  v120 = sub_1BA4A5DA8();
  v122 = v121;
  v124 = v123;
  sub_1BA102AF4(v115, v117, v119 & 1);

  if (v180)
  {
    v125 = [objc_opt_self() systemBackgroundColor];
    v126 = sub_1BA4A6048();
  }

  else
  {
    v126 = sub_1BA4A60E8();
  }

  v190 = v126;
  v127 = sub_1BA4A5DC8();
  v180 = v128;
  v130 = v129;
  v183 = v131;
  sub_1BA102AF4(v120, v122, v124 & 1);

  v132 = sub_1BA4A5B88();
  sub_1BA4A5188();
  v134 = v133;
  v136 = v135;
  v138 = v137;
  v140 = v139;
  v141 = v130 & 1;
  v205 = v130 & 1;
  v202 = 0;
  v142 = v184;
  v143 = v181;
  sub_1BA485F24(v184, v181, sub_1BA483778);
  v144 = v182;
  *v182 = 0;
  *(v144 + 8) = 0;
  sub_1BA4836C4();
  v146 = v145;
  sub_1BA485F24(v143, v144 + *(v145 + 48), sub_1BA483778);
  v147 = v144 + *(v146 + 64);
  *v147 = 0;
  v147[8] = 0;
  v148 = (v144 + *(v146 + 80));
  *&v186 = v127;
  v149 = v180;
  *(&v186 + 1) = v180;
  LOBYTE(v187) = v141;
  *(&v187 + 1) = *v204;
  DWORD1(v187) = *&v204[3];
  v150 = v183;
  *(&v187 + 1) = v183;
  LOBYTE(v188) = v132;
  *(&v188 + 1) = *v203;
  DWORD1(v188) = *&v203[3];
  *(&v188 + 1) = v134;
  *&v189[0] = v136;
  *(&v189[0] + 1) = v138;
  *&v189[1] = v140;
  BYTE8(v189[1]) = 0;
  v151 = v186;
  v152 = v187;
  v153 = v188;
  *(v148 + 57) = *(v189 + 9);
  v154 = v189[0];
  v148[2] = v153;
  v148[3] = v154;
  *v148 = v151;
  v148[1] = v152;
  sub_1BA485F8C(&v186, &v190);
  sub_1BA48601C(v142, sub_1BA483778);
  v190 = v127;
  v191 = v149;
  v192 = v141;
  *v193 = *v204;
  *&v193[3] = *&v204[3];
  v194 = v150;
  v195 = v132;
  *v196 = *v203;
  *&v196[3] = *&v203[3];
  v197 = v134;
  v198 = v136;
  v199 = v138;
  v200 = v140;
  v201 = 0;
  sub_1BA48607C(&v190);
  return sub_1BA48601C(v143, sub_1BA483778);
}

uint64_t sub_1BA482FD0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  *a1 = sub_1BA4A5798();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1BA485E00(0, &qword_1EBBF30D8, sub_1BA483560);
  return sub_1BA481E44(v6, a1 + *(v4 + 44));
}

uint64_t sub_1BA483088(uint64_t a1)
{
  sub_1BA175634(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BA486560(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), sub_1BA175634);
  return sub_1BA4A5638();
}

unint64_t sub_1BA483124()
{
  result = qword_1EBBF30D0;
  if (!qword_1EBBF30D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF30D0);
  }

  return result;
}

uint64_t type metadata accessor for StandardCategoryTileViewModel()
{
  result = qword_1EDC6C070;
  if (!qword_1EDC6C070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA4831C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BA48322C()
{
  result = qword_1EDC6C548;
  if (!qword_1EDC6C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C548);
  }

  return result;
}

unint64_t sub_1BA483280()
{
  result = qword_1EDC6C540;
  if (!qword_1EDC6C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C540);
  }

  return result;
}

unint64_t sub_1BA4832D4()
{
  result = qword_1EDC6C570[0];
  if (!qword_1EDC6C570[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC6C570);
  }

  return result;
}

unint64_t sub_1BA483328()
{
  result = qword_1EDC6BD48[0];
  if (!qword_1EDC6BD48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC6BD48);
  }

  return result;
}

unint64_t sub_1BA4833B4()
{
  result = qword_1EDC6C0A8[0];
  if (!qword_1EDC6C0A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC6C0A8);
  }

  return result;
}

unint64_t sub_1BA483408()
{
  result = qword_1EDC654B8[0];
  if (!qword_1EDC654B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC654B8);
  }

  return result;
}

void sub_1BA48345C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1BA4834C4()
{
  result = qword_1EDC654B0;
  if (!qword_1EDC654B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC654B0);
  }

  return result;
}

void sub_1BA483594()
{
  if (!qword_1EBBF30E8)
  {
    sub_1BA4835FC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF30E8);
    }
  }
}

void sub_1BA4835FC()
{
  if (!qword_1EBBF30F0)
  {
    sub_1BA483690(255);
    sub_1B9F208E4(qword_1EBBF3190, sub_1BA483690);
    v0 = sub_1BA4A6268();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF30F0);
    }
  }
}

void sub_1BA4836C4()
{
  if (!qword_1EBBF3100)
  {
    sub_1BA483778();
    sub_1BA486444(255, &qword_1EBBF3188, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EBBF3100);
    }
  }
}

void sub_1BA483778()
{
  if (!qword_1EBBF3108)
  {
    sub_1BA485E6C(255, &qword_1EBBF3110, sub_1BA483814, sub_1BA483C28, MEMORY[0x1E697F960]);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF3108);
    }
  }
}

void sub_1BA483814()
{
  if (!qword_1EBBF3118)
  {
    sub_1BA483898(255);
    sub_1BA483A3C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBF3118);
    }
  }
}

void sub_1BA4838E0()
{
  if (!qword_1EBBF3128)
  {
    sub_1BA483940();
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF3128);
    }
  }
}

void sub_1BA483940()
{
  if (!qword_1EBBF3130)
  {
    sub_1B9F89828();
    sub_1BA486444(255, &qword_1EBBEC988, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF3130);
    }
  }
}

void sub_1BA4839D4()
{
  if (!qword_1EDC5EC48)
  {
    sub_1B9F23398(255, &qword_1EDC5EBD8);
    v0 = sub_1BA4A5B08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EC48);
    }
  }
}

unint64_t sub_1BA483A3C()
{
  result = qword_1EBBF3138;
  if (!qword_1EBBF3138)
  {
    sub_1BA483898(255);
    sub_1BA4861EC(&qword_1EBBF3140, sub_1BA4838E0, sub_1BA483B24);
    sub_1B9F208E4(&qword_1EDC5EC50, sub_1BA4839D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3138);
  }

  return result;
}

unint64_t sub_1BA483B24()
{
  result = qword_1EBBF3148;
  if (!qword_1EBBF3148)
  {
    sub_1BA483940();
    sub_1B9F893F0();
    sub_1BA483BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3148);
  }

  return result;
}

unint64_t sub_1BA483BA4()
{
  result = qword_1EBBEC9F0;
  if (!qword_1EBBEC9F0)
  {
    sub_1BA486444(255, &qword_1EBBEC988, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC9F0);
  }

  return result;
}

void sub_1BA483C70()
{
  if (!qword_1EBBF3158)
  {
    sub_1BA486444(255, &qword_1EDC5F170, MEMORY[0x1E6981748], MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF3158);
    }
  }
}

void sub_1BA483CFC()
{
  if (!qword_1EBBF3160)
  {
    sub_1BA483D60(255);
    sub_1BA483E58();
    v0 = sub_1BA4A5458();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF3160);
    }
  }
}

void sub_1BA483D94()
{
  if (!qword_1EBBF3170)
  {
    sub_1BA4A5438();
    sub_1B9F208E4(&qword_1EDC5EDD0, MEMORY[0x1E697EAF0]);
    v0 = sub_1BA4A5428();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF3170);
    }
  }
}

unint64_t sub_1BA483E58()
{
  result = qword_1EBBF3178;
  if (!qword_1EBBF3178)
  {
    sub_1BA483D60(255);
    sub_1B9F208E4(&qword_1EBBF3180, sub_1BA483D94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3178);
  }

  return result;
}

unint64_t sub_1BA483F00(uint64_t a1)
{
  result = sub_1BA483F28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA483F28()
{
  result = qword_1EDC6BD20;
  if (!qword_1EDC6BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BD20);
  }

  return result;
}

unint64_t sub_1BA483F7C(uint64_t a1)
{
  *(a1 + 16) = sub_1BA232C40();
  result = sub_1BA2E6B44();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1BA483FAC(uint64_t a1)
{
  result = sub_1B9F208E4(&qword_1EDC6C080, type metadata accessor for StandardCategoryTileViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA484004(uint64_t a1)
{
  *(a1 + 16) = sub_1B9F208E4(&qword_1EDC6C088, type metadata accessor for StandardCategoryTileViewModel);
  result = sub_1B9F208E4(&qword_1EDC6C090, type metadata accessor for StandardCategoryTileViewModel);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1BA484088(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA4840C4(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1BA484140(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BA48417C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of CategoryIconProvider.fetchImage()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BA0C2E3C;

  return v9(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for CategoryTileImageViewModel.ImageMode(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for CategoryTileImageViewModel.ImageMode(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = 2 * -a2;
      *(result + 8) = 0;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of CategoryTileViewModelAsyncImageProviding.fetchImage()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BA0C36D8;

  return v9(a1, a2, a3);
}

void sub_1BA4845C8()
{
  sub_1BA0D0F10(319);
  if (v0 <= 0x3F)
  {
    sub_1B9F20584(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BA484674()
{
  sub_1BA0D0F10(319);
  if (v0 <= 0x3F)
  {
    sub_1B9F20584(319);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BA48473C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1BA4A2BF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(sub_1BA4A2B98() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(a3 + 16) - 8);
  if (v9 <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v9;
  }

  v16 = *(*(a3 + 16) - 8);
  v17 = *(v14 + 84);
  v18 = *(v7 + 80);
  v19 = *(v10 + 80);
  v20 = *(v10 + 64);
  v21 = *(v14 + 80);
  v22 = *(v14 + 64);
  if (v15 <= v17)
  {
    v23 = *(v14 + 84);
  }

  else
  {
    v23 = v15;
  }

  if (v23 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v23;
  }

  if (v8)
  {
    v25 = *(v7 + 64);
  }

  else
  {
    v25 = *(v7 + 64) + 1;
  }

  if (v12)
  {
    v26 = v20;
  }

  else
  {
    v26 = v20 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v27 = v26 + 7;
  v28 = v21 + 17;
  if (a2 <= v24)
  {
    goto LABEL_45;
  }

  v29 = ((v28 + ((v27 + ((v25 + v19 + ((v18 + 16) & ~v18)) & ~v19)) & 0xFFFFFFFFFFFFFFF8)) & ~v21) + v22;
  v30 = 8 * v29;
  if (v29 > 3)
  {
    goto LABEL_25;
  }

  v32 = ((a2 - v24 + ~(-1 << v30)) >> v30) + 1;
  if (HIWORD(v32))
  {
    v31 = *(a1 + v29);
    if (v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v32 <= 0xFF)
    {
      if (v32 < 2)
      {
        goto LABEL_45;
      }

LABEL_25:
      v31 = *(a1 + v29);
      if (!*(a1 + v29))
      {
        goto LABEL_45;
      }

LABEL_32:
      v33 = (v31 - 1) << v30;
      if (v29 > 3)
      {
        v33 = 0;
      }

      if (v29)
      {
        if (v29 <= 3)
        {
          v34 = v29;
        }

        else
        {
          v34 = 4;
        }

        if (v34 > 2)
        {
          if (v34 == 3)
          {
            v35 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v35 = *a1;
          }
        }

        else if (v34 == 1)
        {
          v35 = *a1;
        }

        else
        {
          v35 = *a1;
        }
      }

      else
      {
        v35 = 0;
      }

      return v24 + (v35 | v33) + 1;
    }

    v31 = *(a1 + v29);
    if (*(a1 + v29))
    {
      goto LABEL_32;
    }
  }

LABEL_45:
  if ((v23 & 0x80000000) == 0)
  {
    v36 = *(a1 + 1);
    if (v36 >= 0xFFFFFFFF)
    {
      LODWORD(v36) = -1;
    }

    return (v36 + 1);
  }

  if (v9 == v24)
  {
    if (v8 >= 2)
    {
      v38 = (*(v7 + 48))((a1 + v18 + 16) & ~v18, v8, v6);
      goto LABEL_62;
    }

    return 0;
  }

  v39 = (((a1 + v18 + 16) & ~v18) + v25 + v19) & ~v19;
  if (v13 == v24)
  {
    if (v12 >= 2)
    {
      v38 = (*(v11 + 48))(v39);
LABEL_62:
      if (v38 >= 2)
      {
        return v38 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v40 = *(v16 + 48);

  return v40((v28 + ((v27 + v39) & 0xFFFFFFFFFFFFFFF8)) & ~v21, v17);
}

void sub_1BA484AC0(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1BA4A2BF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0;
  v13 = *(sub_1BA4A2B98() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  if (v15)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v11 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v11;
  }

  v18 = *(a4 + 16);
  v19 = *(v18 - 8);
  v20 = *(v19 + 84);
  v21 = *(v9 + 80);
  v22 = *(v13 + 80);
  v23 = *(v13 + 64);
  v24 = *(v19 + 80);
  if (v17 <= v20)
  {
    v25 = *(v19 + 84);
  }

  else
  {
    v25 = v17;
  }

  if (v25 <= 0x7FFFFFFF)
  {
    v26 = 0x7FFFFFFF;
  }

  else
  {
    v26 = v25;
  }

  if (v10)
  {
    v27 = *(v9 + 64);
  }

  else
  {
    v27 = *(v9 + 64) + 1;
  }

  if (v15)
  {
    v28 = v23;
  }

  else
  {
    v28 = v23 + 1;
  }

  v29 = v28 + 7;
  v30 = ((v24 + 17 + ((v29 + ((v27 + v22 + ((v21 + 16) & ~v21)) & ~v22)) & 0xFFFFFFFFFFFFFFF8)) & ~v24) + *(v19 + 64);
  if (a3 <= v26)
  {
    goto LABEL_33;
  }

  if (v30 <= 3)
  {
    v31 = ((a3 - v26 + ~(-1 << (8 * v30))) >> (8 * v30)) + 1;
    if (HIWORD(v31))
    {
      v12 = 4;
      if (v26 >= a2)
      {
        goto LABEL_43;
      }

LABEL_34:
      v33 = ~v26 + a2;
      if (v30 >= 4)
      {
        bzero(a1, v30);
        *a1 = v33;
        v34 = 1;
        if (v12 > 1)
        {
          goto LABEL_69;
        }

        goto LABEL_66;
      }

      v34 = (v33 >> (8 * v30)) + 1;
      if (v30)
      {
        v35 = v33 & ~(-1 << (8 * v30));
        bzero(a1, v30);
        if (v30 != 3)
        {
          if (v30 == 2)
          {
            *a1 = v35;
            if (v12 > 1)
            {
LABEL_69:
              if (v12 == 2)
              {
                *(a1 + v30) = v34;
              }

              else
              {
                *(a1 + v30) = v34;
              }

              return;
            }
          }

          else
          {
            *a1 = v33;
            if (v12 > 1)
            {
              goto LABEL_69;
            }
          }

LABEL_66:
          if (v12)
          {
            *(a1 + v30) = v34;
          }

          return;
        }

        *a1 = v35;
        *(a1 + 2) = BYTE2(v35);
      }

      if (v12 > 1)
      {
        goto LABEL_69;
      }

      goto LABEL_66;
    }

    if (v31 < 0x100)
    {
      v32 = 1;
    }

    else
    {
      v32 = 2;
    }

    if (v31 >= 2)
    {
      v12 = v32;
    }

    else
    {
      v12 = 0;
    }

LABEL_33:
    if (v26 >= a2)
    {
      goto LABEL_43;
    }

    goto LABEL_34;
  }

  v12 = 1;
  if (v26 < a2)
  {
    goto LABEL_34;
  }

LABEL_43:
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v30) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_50;
    }

    *(a1 + v30) = 0;
LABEL_49:
    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  if (!v12)
  {
    goto LABEL_49;
  }

  *(a1 + v30) = 0;
  if (!a2)
  {
    return;
  }

LABEL_50:
  if ((v25 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = (a2 - 1);
    }

    return;
  }

  if (v11 == v26)
  {
    if (v10 < 2)
    {
      return;
    }

    v36 = *(v9 + 56);
    v37 = (a2 + 1);
    v38 = (a1 + v21 + 16) & ~v21;
    v39 = v10;
    v18 = v8;
    goto LABEL_74;
  }

  v40 = (((a1 + v21 + 16) & ~v21) + v27 + v22) & ~v22;
  if (v16 != v26)
  {
    v36 = *(v19 + 56);
    v38 = (v24 + 17 + ((v29 + v40) & 0xFFFFFFFFFFFFFFF8)) & ~v24;
    v37 = a2;
    v39 = v20;
LABEL_74:

    v36(v38, v37, v39, v18);
    return;
  }

  if (v15 >= 2)
  {
    v41 = *(v14 + 56);

    v41(v40, (a2 + 1));
  }
}

void sub_1BA484EF8()
{
  sub_1B9F87EE0(319, &qword_1EBBECF60, sub_1BA175634, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1B9F23398(319, qword_1EDC6BB70);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BA484FD8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1BA4A59D8() - 8);
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (*(v6 + 84))
  {
    v11 = *(v6 + 64);
  }

  else
  {
    v11 = *(v6 + 64) + 1;
  }

  if (v11 <= 8)
  {
    v11 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v10)
  {
    goto LABEL_33;
  }

  v12 = (((v11 & 0xFFFFFFFFFFFFFFF8) + v9 + 88) & ~v9) + *(v7 + 64);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((a2 - v10 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_33:
      v20 = ((a1 + v11 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v8 > 0x7FFFFFFE)
      {
        v22 = *(v7 + 48);

        return v22((v20 + v9 + 80) & ~v9);
      }

      else
      {
        v21 = *v20;
        if (v21 >= 0xFFFFFFFF)
        {
          LODWORD(v21) = -1;
        }

        if ((v21 + 1) >= 2)
        {
          return v21;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_33;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 <= 3)
    {
      v18 = v12;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

void sub_1BA48522C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1BA4A59D8() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(*(a4 + 24) - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v9)
  {
    v15 = v10;
  }

  else
  {
    v15 = v10 + 1;
  }

  if (v15 <= 8)
  {
    v15 = 8;
  }

  v16 = (((v15 & 0xFFFFFFFFFFFFFFF8) + v13 + 88) & ~v13) + *(v11 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_51:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  v23 = (&a1[v15 + 8] & 0xFFFFFFFFFFFFFFF8);
  if (v12 > 0x7FFFFFFE)
  {
    v24 = *(v11 + 56);

    v24((v23 + v13 + 80) & ~v13, a2);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    v23[3] = 0u;
    v23[4] = 0u;
    v23[1] = 0u;
    v23[2] = 0u;
    *v23 = 0u;
    *v23 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v23 = a2;
  }
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI26CategoryTileImageViewModelVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1BA485564()
{
  if (!qword_1EBBF3220)
  {
    sub_1BA483560(255);
    sub_1B9F208E4(qword_1EBBF3228, sub_1BA483560);
    v0 = sub_1BA4A6218();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF3220);
    }
  }
}

unint64_t sub_1BA48565C()
{
  result = qword_1EBBF32B0;
  if (!qword_1EBBF32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF32B0);
  }

  return result;
}

unint64_t sub_1BA4856B4()
{
  result = qword_1EBBF32B8;
  if (!qword_1EBBF32B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF32B8);
  }

  return result;
}

unint64_t sub_1BA48570C()
{
  result = qword_1EBBF32C0;
  if (!qword_1EBBF32C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF32C0);
  }

  return result;
}

unint64_t sub_1BA485764()
{
  result = qword_1EBBF32C8;
  if (!qword_1EBBF32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF32C8);
  }

  return result;
}

unint64_t sub_1BA4857BC()
{
  result = qword_1EBBF32D0;
  if (!qword_1EBBF32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF32D0);
  }

  return result;
}

unint64_t sub_1BA485814()
{
  result = qword_1EBBF32D8;
  if (!qword_1EBBF32D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF32D8);
  }

  return result;
}

unint64_t sub_1BA4858C0()
{
  result = qword_1EDC6C098;
  if (!qword_1EDC6C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C098);
  }

  return result;
}

unint64_t sub_1BA485918()
{
  result = qword_1EDC6C0A0;
  if (!qword_1EDC6C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C0A0);
  }

  return result;
}

unint64_t sub_1BA485970()
{
  result = qword_1EDC6BD38;
  if (!qword_1EDC6BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BD38);
  }

  return result;
}

unint64_t sub_1BA4859C8()
{
  result = qword_1EDC6BD40;
  if (!qword_1EDC6BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BD40);
  }

  return result;
}

unint64_t sub_1BA485A20()
{
  result = qword_1EDC6C560;
  if (!qword_1EDC6C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C560);
  }

  return result;
}

unint64_t sub_1BA485A78()
{
  result = qword_1EDC6C568;
  if (!qword_1EDC6C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C568);
  }

  return result;
}

unint64_t sub_1BA485AD0()
{
  result = qword_1EDC6C530;
  if (!qword_1EDC6C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C530);
  }

  return result;
}

unint64_t sub_1BA485B28()
{
  result = qword_1EDC6C538;
  if (!qword_1EDC6C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C538);
  }

  return result;
}

unint64_t sub_1BA485B80()
{
  result = qword_1EDC6C550;
  if (!qword_1EDC6C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C550);
  }

  return result;
}

unint64_t sub_1BA485BD8()
{
  result = qword_1EDC6C558;
  if (!qword_1EDC6C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C558);
  }

  return result;
}

uint64_t sub_1BA485C2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BA4E1630 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BA4E1650 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646F4D6567616D69 && a2 == 0xE900000000000065 || (sub_1BA4A8338() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6563634173657375 && a2 == 0xEF736569726F7373)
  {

    return 4;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_1BA485E00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A52C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BA485E6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1BA485F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA485F8C(uint64_t a1, uint64_t a2)
{
  sub_1BA486444(0, &qword_1EBBF3188, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA48601C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA48607C(uint64_t a1)
{
  sub_1BA486444(0, &qword_1EBBF3188, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BA486104()
{
  result = qword_1EBBF32F8;
  if (!qword_1EBBF32F8)
  {
    sub_1BA483C28(255);
    sub_1BA4861EC(&qword_1EBBF3300, sub_1BA483C70, sub_1BA0D6A80);
    sub_1B9F208E4(&qword_1EBBF3308, sub_1BA483CFC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF32F8);
  }

  return result;
}

uint64_t sub_1BA4861EC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA48626C()
{
  if (!qword_1EBBF3310)
  {
    sub_1BA4A5438();
    sub_1B9F208E4(&qword_1EDC5EDD0, MEMORY[0x1E697EAF0]);
    v0 = sub_1BA4A52B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF3310);
    }
  }
}

void sub_1BA486300()
{
  if (!qword_1EBBF3318)
  {
    sub_1BA48626C();
    sub_1B9F208E4(&qword_1EBBF3320, sub_1BA48626C);
    v0 = sub_1BA4A5198();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF3318);
    }
  }
}

void sub_1BA4863B0()
{
  if (!qword_1EBBF3328)
  {
    sub_1BA486300();
    sub_1BA486444(255, &qword_1EBBF3330, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697F930]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF3328);
    }
  }
}

void sub_1BA486444(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1BA486498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA486500(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA486560(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id InternalSettingsFeatureStateListViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t InternalSettingsFeatureStateListViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v13 = sub_1BA486D74;
  v14 = 0;
  v15 = 0;
  sub_1BA486DAC();
  sub_1BA4A6288();
  v7 = sub_1BA4A5A08();

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    *&v3[OBJC_IVAR____TtC18HealthExperienceUI46InternalSettingsFeatureStateListViewController_host] = v8;
    if (a2)
    {
      v9 = sub_1BA4A6758();
    }

    else
    {
      v9 = 0;
    }

    v12.receiver = v3;
    v12.super_class = ObjectType;
    v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

    return v10;
  }

  else
  {

    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall InternalSettingsFeatureStateListViewController.viewDidLoad()()
{
  v40.receiver = v0;
  v40.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v40, sel_viewDidLoad);
  v1 = sub_1BA4A6758();
  [v0 setTitle_];

  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI46InternalSettingsFeatureStateListViewController_host];
  [v0 addChildViewController_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5;
  [v4 addSubview_];

  v7 = [v2 view];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_1BA488830(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5890;
  v10 = [v2 view];
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  v12 = [v10 topAnchor];

  v13 = [v0 view];
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13;
  v15 = [v13 topAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v9 + 32) = v16;
  v17 = [v2 view];
  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = v20;
  v22 = [v20 leadingAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v9 + 40) = v23;
  v24 = [v2 view];
  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = v24;
  v26 = [v24 bottomAnchor];

  v27 = [v0 view];
  if (!v27)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v26 constraintEqualToAnchor_];
  *(v9 + 48) = v30;
  v31 = [v2 view];
  if (!v31)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = v31;
  v33 = [v31 trailingAnchor];

  v34 = [v0 view];
  if (v34)
  {
    v35 = v34;
    v36 = objc_opt_self();
    v37 = [v35 trailingAnchor];

    v38 = [v33 constraintEqualToAnchor_];
    *(v9 + 56) = v38;
    sub_1B9F740B0();
    v39 = sub_1BA4A6AE8();

    [v36 activateConstraints_];

    [v2 didMoveToParentViewController_];
    return;
  }

LABEL_23:
  __break(1u);
}

id InternalSettingsFeatureStateListViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1BA486D74()
{
  type metadata accessor for InternalSettingsFeatureListModel();
  swift_allocObject();
  return sub_1BA380C7C();
}

unint64_t sub_1BA486DAC()
{
  result = qword_1EBBF3338;
  if (!qword_1EBBF3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3338);
  }

  return result;
}

uint64_t sub_1BA486E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v47 = a4;
  sub_1BA487CA0();
  v48 = v7;
  v45 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v40 - v10;
  sub_1BA487A34();
  v44 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  type metadata accessor for InternalSettingsFeatureListModel();
  sub_1BA487E8C(&unk_1EBBF15F0, type metadata accessor for InternalSettingsFeatureListModel);
  v17 = a3 & 1;
  sub_1BA4A51E8();
  v18 = sub_1BA381488();
  v20 = v19;

  if (v20)
  {
    v50 = v18;
    v51 = v20;
    sub_1B9F252FC();
    v21 = sub_1BA4A5E18();
    v25 = v24 & 1;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v25 = 0;
    v23 = 0;
  }

  v50 = v21;
  v51 = v22;
  v52 = v25;
  v53 = v23;
  MEMORY[0x1EEE9AC00](v21);
  *(&v40 - 4) = a1;
  *(&v40 - 3) = a2;
  *(&v40 - 16) = v17;
  sub_1BA487AC8();
  sub_1BA488830(0, &qword_1EBBEEB90, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
  sub_1BA4886D8(&qword_1EBBF33A8, sub_1BA487AC8, sub_1BA487EE0);
  sub_1BA3B1428();
  v42 = v16;
  v26 = sub_1BA4A6368();
  MEMORY[0x1EEE9AC00](v26);
  *(&v40 - 4) = a1;
  *(&v40 - 3) = a2;
  *(&v40 - 16) = v17;
  sub_1BA487D28(0, &qword_1EBBF3388, sub_1BA487DA4);
  sub_1BA487F68();
  v27 = v49;
  sub_1BA4A6358();
  v28 = *(v12 + 16);
  v29 = v43;
  v30 = v44;
  v28(v43, v16, v44);
  v32 = v45;
  v31 = v46;
  v41 = *(v45 + 16);
  v33 = v27;
  v34 = v48;
  v41(v46, v33, v48);
  v35 = v47;
  v28(v47, v29, v30);
  sub_1BA4879C4();
  v41(&v35[*(v36 + 48)], v31, v34);
  v37 = *(v32 + 8);
  v37(v49, v34);
  v38 = *(v12 + 8);
  v38(v42, v30);
  v37(v31, v34);
  return (v38)(v29, v30);
}

uint64_t sub_1BA487300()
{
  type metadata accessor for InternalSettingsFeatureListModel();
  sub_1BA487E8C(&unk_1EBBF15F0, type metadata accessor for InternalSettingsFeatureListModel);
  sub_1BA4A51E8();

  sub_1BA487BB4(0, &qword_1EBBE99A8, type metadata accessor for InternalSettingsFeatureStateModel, MEMORY[0x1E69E62F8]);
  sub_1BA487D28(0, &qword_1EBBF3370, sub_1BA3B18B8);
  sub_1BA487C18();
  sub_1BA487EE0();
  sub_1BA487E8C(&qword_1EBBF33C0, type metadata accessor for InternalSettingsFeatureStateModel);
  return sub_1BA4A6308();
}

uint64_t sub_1BA4874A8(void **a1)
{
  v1 = *a1;
  v2 = [*(*a1 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore) featureIdentifier];
  v3 = NSStringFromHKFeatureIdentifier();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  type metadata accessor for InternalSettingsFeatureStateModel(0);
  sub_1BA487E8C(&qword_1EBBF15C8, type metadata accessor for InternalSettingsFeatureStateModel);
  v4 = v1;
  sub_1BA4A5348();
  sub_1BA3B18B8();
  sub_1B9F252FC();
  return sub_1BA4A5328();
}

uint64_t sub_1BA4875C0()
{
  sub_1BA4A57F8();
  type metadata accessor for InternalSettingsFeatureListModel();
  sub_1BA487E8C(&unk_1EBBF15F0, type metadata accessor for InternalSettingsFeatureListModel);
  sub_1BA4A51E8();
  sub_1BA4A5348();
  sub_1BA487DA4();
  return sub_1BA4A5318();
}

uint64_t sub_1BA4876DC()
{
  v1 = sub_1BA4A5938();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA487914();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v8) = *(v0 + 16);
  v12 = *v0;
  v13 = v8;
  sub_1BA487BB4(0, &qword_1EBBF3350, sub_1BA4879C4, MEMORY[0x1E6981F40]);
  sub_1BA487DF8();
  sub_1BA4A5D88();
  sub_1BA4A5928();
  sub_1BA487E8C(&qword_1EBBF33A0, sub_1BA487914);
  sub_1BA4A6018();
  (*(v2 + 8))(v4, v1);
  return (*(v7 + 8))(v9, v6);
}

void sub_1BA487914()
{
  if (!qword_1EBBF3348)
  {
    sub_1BA487BB4(255, &qword_1EBBF3350, sub_1BA4879C4, MEMORY[0x1E6981F40]);
    sub_1BA487DF8();
    v0 = sub_1BA4A5D98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF3348);
    }
  }
}

void sub_1BA4879C4()
{
  if (!qword_1EBBF3358)
  {
    sub_1BA487A34();
    sub_1BA487CA0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF3358);
    }
  }
}

void sub_1BA487A34()
{
  if (!qword_1EBBF3360)
  {
    sub_1BA487AC8();
    sub_1BA488830(255, &qword_1EBBEEB90, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    v0 = sub_1BA4A6378();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF3360);
    }
  }
}

void sub_1BA487AC8()
{
  if (!qword_1EBBF3368)
  {
    sub_1BA487BB4(255, &qword_1EBBE99A8, type metadata accessor for InternalSettingsFeatureStateModel, MEMORY[0x1E69E62F8]);
    sub_1BA487D28(255, &qword_1EBBF3370, sub_1BA3B18B8);
    sub_1BA487C18();
    v0 = sub_1BA4A6318();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF3368);
    }
  }
}

void sub_1BA487BB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA487C18()
{
  result = qword_1EBBF3378;
  if (!qword_1EBBF3378)
  {
    sub_1BA487BB4(255, &qword_1EBBE99A8, type metadata accessor for InternalSettingsFeatureStateModel, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3378);
  }

  return result;
}

void sub_1BA487CA0()
{
  if (!qword_1EBBF3380)
  {
    sub_1BA487D28(255, &qword_1EBBF3388, sub_1BA487DA4);
    v0 = sub_1BA4A6378();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF3380);
    }
  }
}

void sub_1BA487D28(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1BA4A5338();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BA487DA4()
{
  result = qword_1EBBF3390;
  if (!qword_1EBBF3390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3390);
  }

  return result;
}

unint64_t sub_1BA487DF8()
{
  result = qword_1EBBF3398;
  if (!qword_1EBBF3398)
  {
    sub_1BA487BB4(255, &qword_1EBBF3350, sub_1BA4879C4, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3398);
  }

  return result;
}

uint64_t sub_1BA487E8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BA487EE0()
{
  result = qword_1EBBF33B0;
  if (!qword_1EBBF33B0)
  {
    sub_1BA487D28(255, &qword_1EBBF3370, sub_1BA3B18B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF33B0);
  }

  return result;
}

unint64_t sub_1BA487F68()
{
  result = qword_1EBBF33B8;
  if (!qword_1EBBF33B8)
  {
    sub_1BA487D28(255, &qword_1EBBF3388, sub_1BA487DA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF33B8);
  }

  return result;
}

uint64_t sub_1BA488010()
{
  sub_1BA487BB4(0, &qword_1EBBE99A8, type metadata accessor for InternalSettingsFeatureStateModel, MEMORY[0x1E69E62F8]);
  sub_1BA487C18();
  sub_1BA3B0BA4();
  sub_1BA487E8C(&qword_1EBBF33C0, type metadata accessor for InternalSettingsFeatureStateModel);

  return sub_1BA4A6308();
}

__n128 sub_1BA488120@<Q0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for InternalSettingsFeatureStateModel(0);
  sub_1BA487E8C(&qword_1EBBF15C8, type metadata accessor for InternalSettingsFeatureStateModel);
  v4 = v3;
  v5 = sub_1BA4A5348();
  v7 = v6;
  sub_1BA488830(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1BA4A61A8();
  result = v9;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = 1;
  *(a2 + 24) = v9;
  *(a2 + 40) = v10;
  return result;
}

uint64_t sub_1BA48820C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_1BA4A5938();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA48856C();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA488754();
  v12 = *(v11 - 8);
  v21 = v11;
  v22 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1[1];
  v24 = *v1;
  v25 = v15;
  sub_1BA48861C();
  sub_1BA4886D8(&qword_1EBBF33D8, sub_1BA48861C, sub_1BA3B0BA4);
  sub_1BA4A5D88();
  sub_1BA4A5928();
  v16 = sub_1BA487E8C(&qword_1EBBF33E8, sub_1BA48856C);
  v17 = MEMORY[0x1E697C750];
  sub_1BA4A6018();
  (*(v3 + 8))(v5, v2);
  (*(v8 + 8))(v10, v7);
  sub_1BA4A57F8();
  v26 = v7;
  v27 = v2;
  v28 = v16;
  v29 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v21;
  sub_1BA4A5F48();

  return (*(v22 + 8))(v14, v18);
}

void sub_1BA48856C()
{
  if (!qword_1EBBF33C8)
  {
    sub_1BA48861C();
    sub_1BA4886D8(&qword_1EBBF33D8, sub_1BA48861C, sub_1BA3B0BA4);
    v0 = sub_1BA4A5D98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF33C8);
    }
  }
}

void sub_1BA48861C()
{
  if (!qword_1EBBF33D0)
  {
    sub_1BA487BB4(255, &qword_1EBBE99A8, type metadata accessor for InternalSettingsFeatureStateModel, MEMORY[0x1E69E62F8]);
    sub_1BA487C18();
    v0 = sub_1BA4A6318();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF33D0);
    }
  }
}

uint64_t sub_1BA4886D8(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA488754()
{
  if (!qword_1EBBF33E0)
  {
    sub_1BA48856C();
    sub_1BA4A5938();
    sub_1BA487E8C(&qword_1EBBF33E8, sub_1BA48856C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBF33E0);
    }
  }
}

void sub_1BA488830(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 PluginDeepLinkRouter.__allocating_init(viewControllerRouter:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = swift_allocObject();
  result = *a1;
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  *(v3 + 48) = v2;
  return result;
}

Swift::Void __swiftcall PluginDeepLinkRouter.launchPluginForSharingActivity(activity:)(NSUserActivity activity)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  v10 = sub_1BA4A35D8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [(objc_class *)activity.super.isa userInfo];
  if (!v15)
  {
    v48 = 0u;
    v49 = 0u;
    goto LABEL_11;
  }

  isa = activity.super.isa;
  v46 = v1;
  v47 = v9;
  v16 = v3;
  v17 = v15;
  v18 = sub_1BA4A6628();

  (*(v11 + 104))(v14, *MEMORY[0x1E69A2B78], v10);
  v19 = sub_1BA4A35C8();
  v21 = v20;
  (*(v11 + 8))(v14, v10);
  v51[27] = v19;
  v51[28] = v21;
  sub_1BA4A7D58();
  if (!*(v18 + 16) || (v22 = sub_1B9FDA8E4(v51), (v23 & 1) == 0))
  {

    sub_1B9FDC768(v51);
    v48 = 0u;
    v49 = 0u;
    v3 = v16;
    goto LABEL_11;
  }

  sub_1B9F0AD9C(*(v18 + 56) + 32 * v22, &v48);
  sub_1B9FDC768(v51);

  v3 = v16;
  if (!*(&v49 + 1))
  {
LABEL_11:
    sub_1B9F23224(&v48);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_1BA4A3E08();
    v35 = sub_1BA4A3E88();
    v36 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1B9F07000, v35, v36, "UserActivity is missing plugin bundle name", v37, 2u);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    return;
  }

  v25 = v51[0];
  v24 = v51[1];
  if (sub_1B9F119F8())
  {
    swift_getObjectType();
    v26 = swift_conformsToProtocol2();
    if (v26)
    {
      v27 = v26;

      v28 = v46[2];
      v29 = v46[3];
      v30 = v46[6];
      ObjectType = swift_getObjectType();
      v51[0] = v28;
      v32 = *(v30 + 24);
      v47 = v28;
      v33 = v32(ObjectType, v30);
      v34 = swift_getObjectType();
      sub_1BA489AEC(v33, v51);
      *(&v49 + 1) = ObjectType;
      v50 = v29;
      *&v48 = v47;
      (*(v27 + 16))(isa, v51, &v48, v34, v27);
      swift_unknownObjectRelease();

      sub_1BA489E8C(v51);
      __swift_destroy_boxed_opaque_existential_1(&v48);
      return;
    }

    swift_unknownObjectRelease();
  }

  v38 = v47;
  sub_1BA4A3E08();

  v39 = sub_1BA4A3E88();
  v40 = sub_1BA4A6F88();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v51[0] = v42;
    *v41 = 136446210;
    v43 = sub_1B9F0B82C(v25, v24, v51);

    *(v41 + 4) = v43;
    _os_log_impl(&dword_1B9F07000, v39, v40, "%{public}s does not conform to PluginNSUADelegate", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1BFAF43A0](v42, -1, -1);
    MEMORY[0x1BFAF43A0](v41, -1, -1);
  }

  else
  {
  }

  (*(v4 + 8))(v38, v3);
}

uint64_t PluginDeepLinkRouter.launchPluginFromURL(_:pluginType:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v32 = sub_1BA4A35A8();
  v5 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3EA8();
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3588();
  if (sub_1B9F119F8() && (swift_getObjectType(), (v11 = swift_conformsToProtocol2()) != 0))
  {
    v12 = v11;

    v13 = v3[2];
    v32 = v3[3];
    v14 = v3[6];
    ObjectType = swift_getObjectType();
    v34[0] = v13;
    v16 = *(v14 + 24);
    v17 = v13;
    v18 = v16(ObjectType, v14);
    v19 = swift_getObjectType();
    sub_1BA489AEC(v18, v34);
    v33[3] = ObjectType;
    v33[4] = v32;
    v33[0] = v17;
    (*(v12 + 16))(v30, v34, v33, v19, v12);
    swift_unknownObjectRelease();

    sub_1BA489E8C(v34);
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {

    swift_unknownObjectRelease();
    sub_1BA4A3E08();
    v21 = v32;
    (*(v5 + 16))(v7, a2, v32);
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6F88();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34[0] = v25;
      *v24 = 136446210;
      v26 = sub_1BA4A3588();
      v30 = v8;
      v28 = v27;
      (*(v5 + 8))(v7, v32);
      v29 = sub_1B9F0B82C(v26, v28, v34);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1B9F07000, v22, v23, "launchPluginFromURL - %{public}s does not conform to PluginURLDelegate", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);

      return (*(v31 + 8))(v10, v30);
    }

    else
    {

      (*(v5 + 8))(v7, v21);
      return (*(v31 + 8))(v10, v8);
    }
  }
}

Swift::Void __swiftcall PluginDeepLinkRouter.launchPluginFromNSUA(activity:)(NSUserActivity activity)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  v10 = sub_1BA4A35D8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [(objc_class *)activity.super.isa userInfo];
  if (!v15)
  {
    v48 = 0u;
    v49 = 0u;
    goto LABEL_11;
  }

  isa = activity.super.isa;
  v46 = v1;
  v47 = v9;
  v16 = v3;
  v17 = v15;
  v18 = sub_1BA4A6628();

  (*(v11 + 104))(v14, *MEMORY[0x1E69A2B78], v10);
  v19 = sub_1BA4A35C8();
  v21 = v20;
  (*(v11 + 8))(v14, v10);
  v51[27] = v19;
  v51[28] = v21;
  sub_1BA4A7D58();
  if (!*(v18 + 16) || (v22 = sub_1B9FDA8E4(v51), (v23 & 1) == 0))
  {

    sub_1B9FDC768(v51);
    v48 = 0u;
    v49 = 0u;
    v3 = v16;
    goto LABEL_11;
  }

  sub_1B9F0AD9C(*(v18 + 56) + 32 * v22, &v48);
  sub_1B9FDC768(v51);

  v3 = v16;
  if (!*(&v49 + 1))
  {
LABEL_11:
    sub_1B9F23224(&v48);
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v25 = v51[0];
    v24 = v51[1];
    if (sub_1B9F119F8() && (swift_getObjectType(), (v26 = swift_conformsToProtocol2()) != 0))
    {
      v27 = v26;

      v28 = v46[2];
      v29 = v46[3];
      v30 = v46[6];
      ObjectType = swift_getObjectType();
      v51[0] = v28;
      v32 = *(v30 + 24);
      v47 = v28;
      v33 = v32(ObjectType, v30);
      v34 = swift_getObjectType();
      sub_1BA489AEC(v33, v51);
      *(&v49 + 1) = ObjectType;
      v50 = v29;
      *&v48 = v47;
      (*(v27 + 16))(isa, v51, &v48, v34, v27);
      swift_unknownObjectRelease();

      sub_1BA489E8C(v51);
      __swift_destroy_boxed_opaque_existential_1(&v48);
    }

    else
    {
      swift_unknownObjectRelease();
      v38 = v47;
      sub_1BA4A3E08();

      v39 = sub_1BA4A3E88();
      v40 = sub_1BA4A6F88();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v51[0] = v42;
        *v41 = 136446210;
        v43 = sub_1B9F0B82C(v25, v24, v51);

        *(v41 + 4) = v43;
        _os_log_impl(&dword_1B9F07000, v39, v40, "launchPluginFromNSUA - %{public}s does not conform to PluginURLDelegate", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x1BFAF43A0](v42, -1, -1);
        MEMORY[0x1BFAF43A0](v41, -1, -1);
      }

      else
      {
      }

      (*(v4 + 8))(v38, v3);
    }

    return;
  }

LABEL_12:
  sub_1BA4A3E08();
  v35 = sub_1BA4A3E88();
  v36 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1B9F07000, v35, v36, "UserActivity is missing plugin bundle name", v37, 2u);
    MEMORY[0x1BFAF43A0](v37, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
}

uint64_t PluginDeepLinkRouter.launchPluginFromWebBrowsingActivity(activity:pluginType:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a1;
  v34 = sub_1BA4A35A8();
  v5 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3588();
  v12 = sub_1B9F119F8();

  if (v12)
  {
    swift_getObjectType();
    v13 = swift_conformsToProtocol2();
    if (v13)
    {
      v14 = v13;
      v15 = v3[2];
      v34 = v3[3];
      v16 = v3[6];
      ObjectType = swift_getObjectType();
      v36[0] = v15;
      v18 = *(v16 + 24);
      v19 = v15;
      v20 = v18(ObjectType, v16);
      v21 = swift_getObjectType();
      sub_1BA489AEC(v20, v36);
      v35[3] = ObjectType;
      v35[4] = v34;
      v35[0] = v19;
      (*(v14 + 16))(v33, v36, v35, v21, v14);
      swift_unknownObjectRelease();

      sub_1BA489E8C(v36);
      return __swift_destroy_boxed_opaque_existential_1(v35);
    }

    swift_unknownObjectRelease();
  }

  v33 = v9;
  sub_1BA4A3E08();
  v23 = v34;
  (*(v5 + 16))(v7, a2, v34);
  v24 = sub_1BA4A3E88();
  v25 = sub_1BA4A6F88();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36[0] = v27;
    *v26 = 136446210;
    v28 = sub_1BA4A3588();
    v32 = v8;
    v30 = v29;
    (*(v5 + 8))(v7, v34);
    v31 = sub_1B9F0B82C(v28, v30, v36);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_1B9F07000, v24, v25, "%{public}s does not conform to PluginNSUADelegate", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1BFAF43A0](v27, -1, -1);
    MEMORY[0x1BFAF43A0](v26, -1, -1);

    return (*(v33 + 8))(v11, v32);
  }

  else
  {

    (*(v5 + 8))(v7, v23);
    return (*(v33 + 8))(v11, v8);
  }
}

uint64_t PluginDeepLinkRouter.init(viewControllerRouter:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = v2;
  return v1;
}

id sub_1BA489AEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  UIViewController.availableHealthExperienceStore.getter(&v34);
  if (*(&v35 + 1))
  {
    sub_1B9F1134C(&v34, v45);
  }

  else
  {
    v5 = v2[2];
    v6 = v3[4];
    ObjectType = swift_getObjectType();
    *&v26[0] = v5;
    (*(v6 + 8))(v45, ObjectType, v6);
    if (*(&v35 + 1))
    {
      sub_1B9F43A50(&v34, &qword_1EDC6AE08, &qword_1EDC6E248);
    }
  }

  v8 = sub_1B9F600B4();
  if (!v8)
  {
    v9 = v3[2];
    v10 = v3[5];
    v11 = swift_getObjectType();
    *&v34 = v9;
    v8 = (*(v10 + 8))(v11, v10);
  }

  v12 = v8;
  UIViewController.resolvedPinnedContentManager.getter(v44);
  sub_1B9F0A534(v45, v43);
  UIViewController.resolvedPinnedContentManager.getter(v42);
  sub_1B9F0A534(v45, v33);
  v13 = v12;
  v14 = [v13 profileIdentifier];
  LOBYTE(v34) = 15;
  LOBYTE(v12) = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v14, &v34);

  sub_1B9F0A534(v44, v32);
  sub_1B9F0A534(v33, v26);
  *(&v27 + 1) = v13;
  LOBYTE(v28) = v12;
  sub_1BA4A2488();
  swift_allocObject();
  v15 = v13;
  *(&v28 + 1) = sub_1BA4A2468();
  sub_1BA10F7B4(v32, &v24);
  if (v25)
  {

    sub_1B9F43A50(v32, &unk_1EDC6ADB0, &qword_1EDC6ADC0);
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v44);
    __swift_destroy_boxed_opaque_existential_1(v45);
    sub_1B9F1134C(&v24, &v34);
  }

  else
  {
    v16 = sub_1BA4A22B8();
    v17 = sub_1BA4A22A8();
    *(&v35 + 1) = v16;
    *&v36 = MEMORY[0x1E69A3CF8];
    *&v34 = v17;
    sub_1B9F43A50(v32, &unk_1EDC6ADB0, &qword_1EDC6ADC0);
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v44);
    __swift_destroy_boxed_opaque_existential_1(v45);
    if (v25)
    {
      sub_1B9F43A50(&v24, &unk_1EDC6ADB0, &qword_1EDC6ADC0);
    }
  }

  sub_1B9F1134C(&v34, v29);
  v31 = 0;
  v41 = 0;
  v38 = v29[0];
  v39 = v29[1];
  v34 = v26[0];
  v35 = v26[1];
  v36 = v27;
  v37 = v28;
  v40 = v30;
  sub_1B9F1134C(v43, a2);
  *(a2 + 40) = v15;
  sub_1B9F1134C(v42, a2 + 48);
  v18 = v39;
  *(a2 + 152) = v38;
  *(a2 + 168) = v18;
  *(a2 + 184) = v40;
  v19 = v35;
  *(a2 + 88) = v34;
  *(a2 + 104) = v19;
  v20 = v37;
  *(a2 + 120) = v36;
  v21 = v41;
  *(a2 + 136) = v20;
  *(a2 + 200) = v21;
  *(a2 + 208) = a1;

  return a1;
}

uint64_t PluginDeepLinkRouter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of PluginDeepLinkRouter.__allocating_init(viewControllerRouter:)(uint64_t a1)
{
  v2 = *(v1 + 88);
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v3;
  return v2(v6);
}

uint64_t sub_1BA489F68(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 == 1)
  {
    v4 = sub_1BA48B8DC(a3, a4);
  }

  else
  {
    if (*a1)
    {
      return 0;
    }

    v4 = sub_1BA48ADCC(a2, a3, a4);
  }

  if (v4 >> 62)
  {
    sub_1B9F0ADF8(0, &qword_1EBBF3400);

    sub_1BA4A8028();
  }

  else
  {

    sub_1BA4A8358();
    sub_1B9F0ADF8(0, &qword_1EBBF3400);
  }

  sub_1B9F0ADF8(0, &qword_1EBBEDA10);
  return sub_1BA4A76C8();
}

uint64_t sub_1BA48A0A0(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 <= 1u)
  {
    if (*a1)
    {
      (*(a3 + 32))(v19, a2, a3);
      v13 = v20;
      v14 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v5 = (*(v14 + 16))(v13, v14);
    }

    else
    {
      (*(a3 + 32))(v19, a2, a3);
      v3 = v20;
      v4 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v5 = (*(v4 + 8))(v3, v4);
    }

LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v19);
    return v5 & 1;
  }

  if (*a1 == 2)
  {
    v6 = *(a3 + 32);
    v6(v19, a2, a3);
    v9 = v20;
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    if ((*(v10 + 24))(v9, v10))
    {
      v6(v16, a2, a3);
      v11 = v17;
      v12 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v5 = (*(v12 + 32))(v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_10;
  }

  v5 = 1;
  return v5 & 1;
}

void sub_1BA48A278(_BYTE *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      sub_1BA48A664(a5, a6);
    }

    else
    {
      sub_1BA48A87C(a4, a5, a6);
    }
  }

  else if (*a1)
  {
    sub_1BA48A47C(a2, a3, a5, a6);
  }

  else
  {
    sub_1BA48A354(a2, a3, a4);
  }
}

HealthExperienceUI::ContactQuickActionType_optional __swiftcall ContactQuickActionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1BA48A2E8()
{
  result = qword_1EBBF33F0;
  if (!qword_1EBBF33F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF33F0);
  }

  return result;
}

void sub_1BA48A354(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v7 = objc_allocWithZone(MEMORY[0x1E6973F10]);

  v10 = [v7 init];
  [v10 setMessageComposeDelegate_];
  [v10 setModalPresentationStyle_];
  sub_1B9F25350();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5480;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  v9 = sub_1BA4A6AE8();

  [v10 setRecipients_];

  if (a3)
  {
    [a3 presentViewController:v10 animated:1 completion:0];
  }
}

void sub_1BA48A47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = *(a4 + 32);
    v6(v18, a3, a4);
    v7 = v19;
    v8 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v9 = (*(v8 + 40))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v18);
    if (v9)
    {
      v10 = objc_allocWithZone(MEMORY[0x1E695CF50]);
      v11 = sub_1BA4A6758();
      v12 = [v10 initWithStringValue_];

      (*(*(a4 + 8) + 8))(v12, a3);
      return;
    }
  }

  else
  {
    v6 = *(a4 + 32);
  }

  v6(v18, a3, a4);
  v13 = v19;
  v14 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v15 = (*(v14 + 48))(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v18);
  if (v15)
  {
    v16 = (*(a4 + 40))(a3, a4);
    if (v17)
    {
      (*(*(a4 + 16) + 8))(0, v16, v17, a3);
    }
  }
}

uint64_t sub_1BA48A664(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(a2 + 40))(a1, a2, v6);
  if (v10)
  {
    (*(*(a2 + 16) + 8))(1, v9, v10, a1);
  }

  else
  {
    sub_1BA4A3DD8();
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = a1;
      v20 = v15;
      *v14 = 136315138;
      swift_getMetatypeMetadata();
      v16 = sub_1BA4A6808();
      v18 = sub_1B9F0B82C(v16, v17, &v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1B9F07000, v12, v13, "[%s] Cannot FaceTime because there is no known email or phone number", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_1BA48A87C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = *(a3 + 24);
    v11 = a1;
    v20 = v10(a2, a3);
    sub_1BA48AA9C(v20);

    v12 = v20;
  }

  else
  {
    sub_1BA4A3E28();
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      v17 = sub_1BA4A85D8();
      v19 = sub_1B9F0B82C(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1B9F07000, v13, v14, "[%s] Presenting view controller not found", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }
}

void sub_1BA48AA9C(void *a1)
{
  swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() authorizationStatusForEntityType_];
  if ((v7 - 1) < 2)
  {

    sub_1BA48C510();
  }

  else if ((v7 - 3) >= 2)
  {
    if (v7)
    {
      sub_1BA4A3DD8();
      v13 = sub_1BA4A3E88();
      v14 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        aBlock[0] = v16;
        *v15 = 136446210;
        v17 = sub_1BA4A85D8();
        v19 = sub_1B9F0B82C(v17, v18, aBlock);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_1B9F07000, v13, v14, "[%{public}s]: Unknown authorization status, showing access required alert.", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x1BFAF43A0](v16, -1, -1);
        MEMORY[0x1BFAF43A0](v15, -1, -1);
      }

      (*(v4 + 8))(v6, v3);
      sub_1BA48C510();
    }

    else
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      *(v9 + 24) = a1;
      aBlock[4] = sub_1BA48CF08;
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BA454240;
      aBlock[3] = &block_descriptor_127;
      v10 = _Block_copy(aBlock);
      v11 = v1;
      v12 = a1;

      [v8 requestAccessForEntityType:0 completionHandler:v10];
      _Block_release(v10);
    }
  }

  else
  {

    sub_1BA48C844(a1);
  }
}

uint64_t sub_1BA48ADCC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v108 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v108 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v108 - v19;
  if (![objc_opt_self() canSendText])
  {
    sub_1BA4A3DD8();
    swift_unknownObjectRetain();
    v30 = sub_1BA4A3E88();
    v31 = sub_1BA4A6FA8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = v8;
      v34 = swift_slowAlloc();
      v118[0] = v34;
      *v32 = 136315138;
      v115[0] = v4;
      swift_unknownObjectRetain();
      v35 = sub_1BA4A6828();
      v37 = sub_1B9F0B82C(v35, v36, v118);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_1B9F07000, v30, v31, "%s: MFMessageComposeViewController is not in the state to send text", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1BFAF43A0](v34, -1, -1);
      MEMORY[0x1BFAF43A0](v32, -1, -1);

      (*(v9 + 8))(v11, v33);
      return MEMORY[0x1E69E7CC0];
    }

    v38 = *(v9 + 8);
    v39 = v11;
LABEL_13:
    v38(v39, v8);
    return MEMORY[0x1E69E7CC0];
  }

  if (!a1)
  {
    sub_1BA4A3DD8();
    swift_unknownObjectRetain();
    v40 = sub_1BA4A3E88();
    v41 = sub_1BA4A6FA8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = v8;
      v44 = swift_slowAlloc();
      v118[0] = v44;
      *v42 = 136315138;
      v115[0] = v4;
      swift_unknownObjectRetain();
      v45 = sub_1BA4A6828();
      v47 = sub_1B9F0B82C(v45, v46, v118);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_1B9F07000, v40, v41, "%s: presentingViewController is nil so cannot send text", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1BFAF43A0](v44, -1, -1);
      MEMORY[0x1BFAF43A0](v42, -1, -1);

      (*(v9 + 8))(v14, v43);
      return MEMORY[0x1E69E7CC0];
    }

    v38 = *(v9 + 8);
    v39 = v14;
    goto LABEL_13;
  }

  v112 = v8;
  v121[0] = MEMORY[0x1E69E7CC8];
  v21 = *(a3 + 32);
  v109 = a1;
  v110 = v21;
  v21(v118, a2, a3);
  v22 = a2;
  v23 = v119;
  v24 = v120;
  __swift_project_boxed_opaque_existential_1(v118, v119);
  v25 = (*(v24 + 56))(v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v118);
  v113 = a3;
  v114 = v22;
  if (v25)
  {
    v26 = (*(a3 + 24))(v22, a3);
    v27 = [v26 phoneNumbers];

    sub_1B9F0ADF8(0, &unk_1EBBEE300);
    v28 = sub_1BA4A6B08();

    sub_1BA2777D8(v28, v121);
    v111 = 0;

    v29 = v22;
  }

  else
  {
    sub_1BA4A3E28();
    v48 = sub_1BA4A3E88();
    v49 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v108 = v50;
      v111 = swift_slowAlloc();
      v118[0] = v111;
      *v50 = 136315138;
      v51 = v114;
      v52 = sub_1BA4A85D8();
      v54 = sub_1B9F0B82C(v52, v53, v118);

      v55 = v108;
      *(v108 + 1) = v54;
      a3 = v113;
      v56 = v49;
      v29 = v51;
      _os_log_impl(&dword_1B9F07000, v48, v56, "[%s] SMS is not available", v55, 0xCu);
      v57 = v111;
      __swift_destroy_boxed_opaque_existential_1(v111);
      MEMORY[0x1BFAF43A0](v57, -1, -1);
      MEMORY[0x1BFAF43A0](v55, -1, -1);

      (*(v9 + 8))(v20, v112);
      v111 = 0;
    }

    else
    {

      (*(v9 + 8))(v20, v112);
      v111 = 0;
      v29 = v114;
    }
  }

  v59 = v110;
  v110(v118, v29, a3);
  v60 = a3;
  v61 = v119;
  v62 = v120;
  __swift_project_boxed_opaque_existential_1(v118, v119);
  if (((*(v62 + 8))(v61, v62) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v118);
    goto LABEL_21;
  }

  v59(v115, v29, v60);
  v63 = v116;
  v64 = v117;
  __swift_project_boxed_opaque_existential_1(v115, v116);
  LOBYTE(v63) = (*(v64 + 64))(v63, v64);
  __swift_destroy_boxed_opaque_existential_1(v115);
  __swift_destroy_boxed_opaque_existential_1(v118);
  if ((v63 & 1) == 0)
  {
LABEL_21:
    sub_1BA4A3E28();
    v71 = sub_1BA4A3E88();
    v72 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v118[0] = v74;
      *v73 = 136315138;
      v75 = v4;
      v76 = v114;
      v77 = sub_1BA4A85D8();
      v79 = sub_1B9F0B82C(v77, v78, v118);

      *(v73 + 4) = v79;
      v80 = v72;
      v29 = v76;
      v4 = v75;
      _os_log_impl(&dword_1B9F07000, v71, v80, "[%s] iMessage is not available", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x1BFAF43A0](v74, -1, -1);
      MEMORY[0x1BFAF43A0](v73, -1, -1);

      v81 = (*(v9 + 8))(v17, v112);
    }

    else
    {

      v81 = (*(v9 + 8))(v17, v112);
      v29 = v114;
    }

    v70 = v109;
    goto LABEL_47;
  }

  v65 = v113;
  v59(v118, v29, v113);
  v66 = v119;
  v67 = v120;
  __swift_project_boxed_opaque_existential_1(v118, v119);
  LOBYTE(v66) = (*(v67 + 56))(v66, v67);
  __swift_destroy_boxed_opaque_existential_1(v118);
  v68 = v65;
  v69 = *(v65 + 24);
  if ((v66 & 1) == 0)
  {
    v112 = *(v65 + 24);
    v82 = v69(v29, v65);
    v83 = [v82 phoneNumbers];

    sub_1B9F0ADF8(0, &unk_1EBBEE300);
    v84 = sub_1BA4A6B08();

    if (v84 >> 62)
    {
LABEL_43:
      v85 = sub_1BA4A7CC8();
      if (v85)
      {
LABEL_27:
        v86 = 0;
        while (1)
        {
          if ((v84 & 0xC000000000000001) != 0)
          {
            v87 = MEMORY[0x1BFAF2860](v86, v84);
          }

          else
          {
            if (v86 >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v87 = *(v84 + 8 * v86 + 32);
          }

          v88 = v87;
          v29 = v86 + 1;
          if (__OFADD__(v86, 1))
          {
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          v118[0] = v87;
          if (sub_1BA48C2DC(v118, v4, v114, v113))
          {
            break;
          }

          ++v86;
          v89 = v29 == v85;
          v29 = v114;
          if (v89)
          {
            goto LABEL_44;
          }
        }

        v90 = [v88 label];
        if (v90)
        {
          v91 = v90;
          v92 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v94 = v93;
        }

        else
        {
          v92 = 0;
          v94 = 0xE000000000000000;
        }

        v29 = v114;
        v95 = [v88 value];
        v96 = [v95 stringValue];

        v97 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v99 = v98;

        v100 = v121[0];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118[0] = v100;
        sub_1B9F248E4(v97, v99, v92, v94, isUniquelyReferenced_nonNull_native);

        v121[0] = v118[0];
        goto LABEL_45;
      }
    }

    else
    {
      v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v85)
      {
        goto LABEL_27;
      }
    }

LABEL_44:

LABEL_45:
    v69 = v112;
    v68 = v113;
    v70 = v109;
    goto LABEL_46;
  }

  v70 = v109;
LABEL_46:
  v102 = v69(v29, v68);
  v103 = [v102 emailAddresses];

  sub_1B9F0ADF8(0, &unk_1EBBEE300);
  v104 = sub_1BA4A6B08();

  sub_1BA277B1C(v104, v121);

LABEL_47:
  v105 = v121[0];
  MEMORY[0x1EEE9AC00](v81);
  v106 = v113;
  *(&v108 - 4) = v29;
  *(&v108 - 3) = v106;
  *(&v108 - 2) = v4;
  *(&v108 - 1) = v70;
  v107 = sub_1BA27A22C(v105, sub_1BA48CF40);

  return v107;
}

uint64_t sub_1BA48B8DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  LOBYTE(v62[0]) = 1;
  v59 = sub_1BA3BFC74();
  v12 = MEMORY[0x1E69E7CC0];
  v65 = MEMORY[0x1E69E7CC0];
  v54 = *(a2 + 32);
  v55 = a2 + 32;
  v54(v62, a1, a2);
  v13 = v63;
  v14 = v64;
  __swift_project_boxed_opaque_existential_1(v62, v63);
  v15 = (*(v14 + 40))(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v62);
  if (v15)
  {
    v52 = v7;
    v16 = (*(a2 + 24))(a1, a2);
    v17 = [v16 phoneNumbers];

    sub_1B9F0ADF8(0, &unk_1EBBEE300);
    v18 = sub_1BA4A6B08();

    if (v18 >> 62)
    {
      goto LABEL_18;
    }

    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      while (1)
      {
        v58 = v18;
        v62[0] = v12;
        v18 = v62;
        sub_1BA4A7F08();
        if (v19 < 0)
        {
          break;
        }

        v14 = v3;
        v3 = a1;
        v51 = v6;
        v13 = 0;
        v17 = 0;
        v20 = v58;
        v6 = v58 & 0xC000000000000001;
        v56 = v58 & 0xFFFFFFFFFFFFFF8;
        v57 = a2;
        while (1)
        {
          a2 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v6)
          {
            v21 = MEMORY[0x1BFAF2860](v13);
          }

          else
          {
            if (v13 >= *(v56 + 16))
            {
              goto LABEL_17;
            }

            v21 = *(v20 + 8 * v13 + 32);
          }

          v22 = v21;
          v60 = v21;
          sub_1BA48C084(&v60, v59, v14, v3, v57, &v61);

          a1 = v61;
          v18 = v62;
          sub_1BA4A7ED8();
          v12 = *(v62[0] + 16);
          sub_1BA4A7F18();
          sub_1BA4A7F28();
          sub_1BA4A7EE8();
          ++v13;
          v20 = v58;
          if (a2 == v19)
          {

            v23 = v62[0];
            v65 = v62[0];
            v6 = v51;
            v7 = v52;
            a1 = v3;
            v3 = v14;
            a2 = v57;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        v19 = sub_1BA4A7CC8();
        if (!v19)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_19:

    v23 = MEMORY[0x1E69E7CC0];
    v65 = MEMORY[0x1E69E7CC0];
    v7 = v52;
  }

  else
  {
    sub_1BA4A3E28();
    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v62[0] = v57;
      *v26 = 136315138;
      v27 = sub_1BA4A85D8();
      v58 = a1;
      v29 = v6;
      v30 = a2;
      v31 = v3;
      v32 = v7;
      v33 = sub_1B9F0B82C(v27, v28, v62);
      a1 = v58;

      *(v26 + 4) = v33;
      v7 = v32;
      v3 = v31;
      a2 = v30;
      v6 = v29;
      _os_log_impl(&dword_1B9F07000, v24, v25, "[%s] cellular is not available", v26, 0xCu);
      v34 = v57;
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x1BFAF43A0](v34, -1, -1);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    v23 = MEMORY[0x1E69E7CC0];
  }

LABEL_20:
  v54(v62, a1, a2);
  v35 = v63;
  v36 = v64;
  __swift_project_boxed_opaque_existential_1(v62, v63);
  LOBYTE(v35) = (*(v36 + 48))(v35, v36);
  __swift_destroy_boxed_opaque_existential_1(v62);
  if (v35)
  {
    v37 = (*(a2 + 40))(a1, a2);
    if (v38)
    {
      v13 = v37;
      v14 = v38;
      v17 = a1;
      sub_1B9F0ADF8(0, &unk_1EDC5E0B0);
      if (qword_1EDC5E100 == -1)
      {
LABEL_23:
        sub_1BA4A1318();
        v39 = swift_allocObject();
        v39[2] = v17;
        v39[3] = a2;
        v39[4] = v3;
        v39[5] = v13;
        v39[6] = v14;
        v40 = v59;
        swift_unknownObjectRetain();
        v41 = sub_1BA4A77E8();
        MEMORY[0x1BFAF1510]();
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();

        return v65;
      }

LABEL_32:
      swift_once();
      goto LABEL_23;
    }
  }

  v42 = v53;
  sub_1BA4A3E28();
  v43 = sub_1BA4A3E88();
  v44 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v62[0] = v46;
    *v45 = 136315138;
    v47 = sub_1BA4A85D8();
    v49 = sub_1B9F0B82C(v47, v48, v62);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_1B9F07000, v43, v44, "[%s] FaceTime audio is not available", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x1BFAF43A0](v46, -1, -1);
    MEMORY[0x1BFAF43A0](v45, -1, -1);
  }

  (*(v7 + 8))(v42, v6);
  return v23;
}

uint64_t sub_1BA48C084@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = *a1;
  v9 = [*a1 label];
  if (v9)
  {
    v10 = v9;
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    v11 = objc_opt_self();

    v12 = sub_1BA4A6758();
    v13 = [v11 localizedStringForLabel_];

    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    swift_bridgeObjectRelease_n();
  }

  sub_1B9F0ADF8(0, &unk_1EDC5E0B0);
  v14 = a2;
  v15 = [v8 value];
  v16 = [v15 stringValue];

  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a3;
  v17[5] = v8;
  swift_unknownObjectRetain();
  v18 = v8;
  result = sub_1BA4A77E8();
  *a6 = result;
  return result;
}

void sub_1BA48C268(int a1, int a2, id a3, uint64_t a4, uint64_t a5)
{
  v6 = [a3 value];
  (*(*(a5 + 8) + 8))();
}

uint64_t sub_1BA48C2DC(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [*a1 value];
  v7 = [v6 stringValue];

  v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v10 = v9;

  v11 = (*(a4 + 40))(a3, a4);
  if (v12)
  {
    if (v8 == v11 && v12 == v10)
    {

      return 1;
    }

    else
    {
      v14 = sub_1BA4A8338();

      return v14 & 1;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1BA48C3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  sub_1B9F0ADF8(0, &unk_1EDC5E0B0);

  sub_1BA3BFC74();
  v14 = swift_allocObject();
  v14[2] = a7;
  v14[3] = a8;
  v14[4] = a5;
  v14[5] = a3;
  v14[6] = a4;
  v14[7] = a6;
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();
  v15 = a6;
  return sub_1BA4A77E8();
}

void sub_1BA48C510()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA4A1318();
  sub_1BA4A1318();
  sub_1BA4A1318();
  v1 = sub_1BA4A6758();

  v2 = sub_1BA4A6758();

  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:{1, 0xE000000000000000}];

  v4 = sub_1BA4A6758();

  aBlock[4] = sub_1BA48CA10;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA0B06D4;
  aBlock[3] = &block_descriptor_13_2;
  v5 = _Block_copy(aBlock);

  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:0 handler:v5];
  _Block_release(v5);

  v8 = sub_1BA4A6758();

  v9 = [v6 actionWithTitle:v8 style:0 handler:0];

  [v3 addAction_];
  [v3 addAction_];
  [v0 presentViewController:v3 animated:1 completion:0];
}

void sub_1BA48C844(void *a1)
{
  v2 = v1;
  v4 = [a1 hasBeenPersisted];
  v5 = objc_opt_self();
  if (v4)
  {
    v6 = [v5 viewControllerForContact_];
  }

  else
  {
    v7 = [v5 viewControllerForUnknownContact_];
    v8 = swift_dynamicCastObjCProtocolConditional();
    v6 = v7;
    [v6 setDelegate_];
    sub_1B9F0ADF8(0, &qword_1EDC5E540);
    v9 = sub_1BA4A7068();
    [v6 setContactStore_];
  }

  [v6 setAllowsEditing_];
  v10 = [v6 navigationItem];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v2 action:sel_dismissContactViewController];
  [v10 setRightBarButtonItem_];

  v12 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  [v2 presentViewController:v12 animated:1 completion:0];
}

id sub_1BA48CA10()
{
  sub_1B9F0AB34(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v15 - v4;
  v6 = [objc_opt_self() internalPrivacySettingsURLString];
  v7 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v9 = v8;

  v15[0] = v7;
  v15[1] = v9;
  MEMORY[0x1BFAF1350](0x544341544E4F432FLL, 0xE900000000000053);
  sub_1BA4A15C8();

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v11 = result;
    sub_1BA3331A4(v5, v2);
    v12 = sub_1BA4A15D8();
    v13 = *(v12 - 8);
    v14 = 0;
    if ((*(v13 + 48))(v2, 1, v12) != 1)
    {
      v14 = sub_1BA4A1548();
      (*(v13 + 8))(v2, v12);
    }

    [v11 openSensitiveURL:v14 withOptions:0];

    return sub_1BA0B17A4(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA48CC2C(char a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1BA4A6478();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BA4A64C8();
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v14 = sub_1BA4A7308();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  aBlock[4] = sub_1BA48CF10;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_10_0;
  v16 = _Block_copy(aBlock);
  v17 = a3;
  v18 = a4;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F0AB34(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v13, v10, v16);
  _Block_release(v16);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v21);
}

void sub_1BA48CF10()
{
  if (*(v0 + 16) == 1)
  {
    sub_1BA48C844(*(v0 + 32));
  }
}

uint64_t sub_1BA48CF4C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = 0;
  return (*(v2 + 48))(&v7, v3, v4, v5, v1);
}

void sub_1BA48D00C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_overlayView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1BA48D06C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_overlayView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BA48D0C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_overlayView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1BA48D178(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_showsBackground;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_overlayView;
  swift_beginAccess();
  return [*(v3 + v5) setHidden_];
}

uint64_t sub_1BA48D1FC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_showsBackground;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1BA48D240(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_showsBackground;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_overlayView;
  swift_beginAccess();
  return [*(v1 + v4) setHidden_];
}

void (*sub_1BA48D2C4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_showsBackground;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BA48D34C;
}

void sub_1BA48D34C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    v6 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_overlayView;
    swift_beginAccess();
    [*(v5 + v6) setHidden_];
  }

  free(v3);
}

id CameraScannerTextOverlayViewController.init(titleText:automationIdentifierPrefix:overlayMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  v9 = *(a5 + 8);
  v5[OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_showsBackground] = 1;
  v10 = &v5[OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_titleText];
  *v10 = a1;
  v10[1] = a2;
  v19 = v8;
  LOBYTE(v20) = v9;

  CameraScannerOverlayMode.createView()(v11);
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_overlayView] = v12;
  v13 = &v5[OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_automationIdentifierPrefix];
  *v13 = a3;
  v13[1] = a4;
  v18.receiver = v5;
  v18.super_class = type metadata accessor for CameraScannerTextOverlayViewController();

  v14 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
  result = [v14 view];
  if (result)
  {
    v16 = result;

    v17 = [objc_opt_self() clearColor];
    [v16 setBackgroundColor_];

    [v14 setOverrideUserInterfaceStyle_];
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA48D70C()
{
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_titleText);
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_titleText + 8);
  v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_automationIdentifierPrefix);
  v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_automationIdentifierPrefix + 8);
  v5 = type metadata accessor for CameraScannerOverlayContentView();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___stackView] = 0;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___titleLabel] = 0;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___detailLabel] = 0;
  v7 = &v6[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_title];
  *v7 = v2;
  *(v7 + 1) = v1;
  v8 = &v6[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_detail];
  *v8 = v2;
  *(v8 + 1) = v1;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_detailMaxNumberOfLines] = 0;
  v9 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  swift_bridgeObjectRetain_n();

  v10 = [v9 init];
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerView] = v10;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerHeight] = 0;
  v11 = &v6[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_automationIdentifierPrefix];
  *v11 = v4;
  *(v11 + 1) = v3;
  v54.receiver = v6;
  v54.super_class = v5;
  v12 = objc_msgSendSuper2(&v54, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1B9F109F8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B8B60;
  v51 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerView;
  v14 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerView];
  *(inited + 32) = v14;
  v52 = v12;
  v15 = v12;
  v16 = v14;
  *(inited + 40) = sub_1BA2DE928();
  *(inited + 48) = sub_1BA2DEB5C();
  v17 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___stackView;
  v18 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x1BFAF2860](0, inited))
  {
    v20 = i;
    v21 = sub_1BA2DE850();
    [v21 addArrangedSubview_];

    [v20 hk:*&v15[v17] alignHorizontalConstraintsWithView:0.0 margin:?];
    if (v18)
    {
      v22 = MEMORY[0x1BFAF2860](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_13;
      }

      v22 = *(inited + 40);
    }

    v23 = v22;
    v24 = sub_1BA2DE850();
    [v24 addArrangedSubview_];

    [v23 hk:*&v15[v17] alignHorizontalConstraintsWithView:0.0 margin:?];
    if (v18)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v25 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  v25 = MEMORY[0x1BFAF2860](2, inited);
LABEL_10:
  v26 = v25;
  v27 = sub_1BA2DE850();
  [v27 addArrangedSubview_];

  [v26 hk:*&v15[v17] alignHorizontalConstraintsWithView:0.0 margin:?];
  swift_setDeallocating();
  swift_arrayDestroy();
  v28 = v15;
  v29 = sub_1BA2DE850();
  [v28 addSubview_];

  v50 = objc_opt_self();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1BA4B5880;
  v31 = [*&v52[v51] heightAnchor];
  v32 = [v31 constraintEqualToConstant_];

  *(v30 + 32) = v32;
  v33 = [*&v15[v17] leadingAnchor];
  v34 = [v28 leadingAnchor];

  v35 = [v33 constraintEqualToAnchor_];
  *(v30 + 40) = v35;
  v36 = [*&v15[v17] trailingAnchor];
  v37 = [v28 trailingAnchor];

  v38 = [v36 constraintEqualToAnchor_];
  *(v30 + 48) = v38;
  v39 = [*&v15[v17] topAnchor];
  v40 = [v28 topAnchor];

  v41 = [v39 constraintEqualToAnchor_];
  *(v30 + 56) = v41;
  v42 = [v28 heightAnchor];

  v43 = [*&v15[v17] heightAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v30 + 64) = v44;
  sub_1B9F740B0();
  v45 = sub_1BA4A6AE8();

  [v50 activateConstraints_];

  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  v46 = [v53 view];
  if (v46)
  {
    v47 = v46;
    [v46 addSubview_];

    v48 = [v53 view];
    if (v48)
    {
      v49 = v48;
      [v48 hk:v28 alignConstraintsWithView:?];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id CameraScannerTextOverlayViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CameraScannerTextOverlayViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraScannerTextOverlayViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA48DEDC(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_showsBackground;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BA48D34C;
}

Swift::Void __swiftcall FavoritableDisplayingConsuming.updateCellAndFavoritesStateFromUserInteractionWithAlert(_:in:)(UIView *_, UIViewController *in)
{
  v4 = v3;
  v5 = v2;
  v8 = sub_1BA4A2458();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedBehavior];
  if (v12)
  {
    v13 = v12;
    v33 = in;
    v14 = [v12 features];

    if (v14)
    {
      v15 = [v14 simplifiedLogging];

      if (v15)
      {
        FavoritableDisplayingConsuming.favoritesItem.getter(v5, v4, v35);
        v16 = v36;
        v17 = v37;
        __swift_project_boxed_opaque_existential_1(v35, v36);
        (*(v17 + 32))(v34, v16, v17);
        __swift_project_boxed_opaque_existential_1(v34, v34[3]);
        v18 = sub_1BA4A2368();
        if (v18)
        {
          v19 = v18;
          v20 = sub_1BA4A0E68();

          v21 = *(v20 + 16);

          __swift_destroy_boxed_opaque_existential_1(v34);
          __swift_destroy_boxed_opaque_existential_1(v35);
          if (v21 == 1)
          {
            FavoritableDisplayingConsuming.favoritesItem.getter(v5, v4, v35);
            v22 = v36;
            v23 = v37;
            __swift_project_boxed_opaque_existential_1(v35, v36);
            LOBYTE(v22) = (*(v23 + 48))(v22, v23);
            __swift_destroy_boxed_opaque_existential_1(v35);
            if (v22)
            {
              FavoritableDisplayingConsuming.favoritesItem.getter(v5, v4, v35);
              v24 = v36;
              v25 = v37;
              __swift_project_boxed_opaque_existential_1(v35, v36);
              v32 = (*(v25 + 24))(v24, v25);
              v27 = v26;
              (*(v9 + 104))(v11, *MEMORY[0x1E69A3DA8], v8);
              v28 = sub_1BA4A2448();
              v30 = v29;
              (*(v9 + 8))(v11, v8);
              if (v32 == v28 && v27 == v30)
              {

                __swift_destroy_boxed_opaque_existential_1(v35);
LABEL_13:
                FavoritableDisplayingConsuming.presentQuickLogAlert(on:sender:)(v33, _, v5, v4);
                return;
              }

              v31 = sub_1BA4A8338();

              __swift_destroy_boxed_opaque_existential_1(v35);
              if (v31)
              {
                goto LABEL_13;
              }
            }
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v34);
          __swift_destroy_boxed_opaque_existential_1(v35);
        }
      }

      FavoritableDisplayingConsuming.updateCellAndFavoritesStateFromUserInteraction()();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t FavoritableDisplayingConsuming.favoritesItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(v5 + 8);
  v6(v9, a1, v5);
  if (v9[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EDC6CCD8);
    if (swift_dynamicCast())
    {
      if (*(&v11 + 1))
      {
        return sub_1B9F1134C(&v10, a3);
      }
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v9, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  sub_1B9F43A50(&v10, &qword_1EBBE9BB0, &qword_1EDC6CCD8);
  *&v10 = 0;
  *(&v10 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();

  v9[0] = 0xD00000000000001BLL;
  v9[1] = 0x80000001BA4E24D0;
  v6(&v10, a1, v5);
  sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  v8 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v8);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

Swift::Void __swiftcall FavoritableDisplayingConsuming.updateCellAndFavoritesStateFromUserInteraction()()
{
  v3 = v1;
  v4 = v0;
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  FavoritableDisplayingConsuming.favoritesItem.getter(v4, v3, v48);
  v10 = v49;
  v9 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  LODWORD(v10) = (*(v9 + 48))(v10, v9);
  __swift_destroy_boxed_opaque_existential_1(v48);
  sub_1BA4A3DD8();
  v11 = v2;
  v12 = sub_1BA4A3E88();
  v13 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v43 = v10;
    v15 = v3;
    v42 = v5;
    v16 = v14;
    v41 = swift_slowAlloc();
    v47[0] = v41;
    *v16 = 136446979;
    v17 = sub_1BA4A85D8();
    v19 = sub_1B9F0B82C(v17, v18, v47);

    *(v16 + 4) = v19;
    HIDWORD(v40) = v13;
    *(v16 + 12) = 2080;
    FavoritableDisplayingConsuming.favoritesItem.getter(v4, v15, v48);
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v20 = sub_1BA4A2D58();
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1(v48);
    v23 = sub_1B9F0B82C(v20, v22, v47);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2080;
    v24 = v15;
    FavoritableDisplayingConsuming.favoritesItem.getter(v4, v15, v48);
    v25 = v49;
    v10 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v26 = *(v10 + 24);
    v27 = v10;
    LOBYTE(v10) = v43;
    v28 = v26(v25, v27);
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_1(v48);
    v31 = sub_1B9F0B82C(v28, v30, v47);

    *(v16 + 24) = v31;
    *(v16 + 32) = 2081;
    if (v10)
    {
      v32 = 0x65736C6166;
    }

    else
    {
      v32 = 1702195828;
    }

    if (v10)
    {
      v33 = 0xE500000000000000;
    }

    else
    {
      v33 = 0xE400000000000000;
    }

    v34 = sub_1B9F0B82C(v32, v33, v47);

    *(v16 + 34) = v34;
    _os_log_impl(&dword_1B9F07000, v12, BYTE4(v40), "[%{public}s] User tapped on %s, in domain %s, changing isFavorite to: %{private}s", v16, 0x2Au);
    v35 = v41;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v35, -1, -1);
    MEMORY[0x1BFAF43A0](v16, -1, -1);

    (*(v6 + 8))(v8, v42);
  }

  else
  {
    v24 = v3;

    (*(v6 + 8))(v8, v5);
  }

  FavoritableDisplayingConsuming.favoritesItem.getter(v4, v24, v48);
  v36 = v49;
  v37 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  (*(v37 + 32))(v47, v36, v37);
  __swift_project_boxed_opaque_existential_1(v47, v47[3]);
  FavoritableDisplayingConsuming.favoritesItem.getter(v4, v24, v44);
  v38 = v45;
  v39 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  (*(v39 + 16))(v38, v39);
  if (v10)
  {
    sub_1BA4A2378();
  }

  else
  {
    sub_1BA4A2348();
  }

  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v48);
}

void FavoritableDisplayingConsuming.presentQuickLogAlert(on:sender:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = v7;

  v9 = sub_1BA4A6758();

  aBlock[4] = sub_1BA48F0F0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA0B06D4;
  aBlock[3] = &block_descriptor_128;
  v10 = _Block_copy(aBlock);

  v11 = objc_opt_self();
  v12 = [v11 actionWithTitle:v9 style:2 handler:{v10, 0xE000000000000000}];
  _Block_release(v10);

  sub_1BA4A1318();
  v13 = sub_1BA4A6758();

  v14 = [v11 actionWithTitle:v13 style:1 handler:{0, 0xE000000000000000}];

  sub_1BA4A1318();
  sub_1BA4A1318();
  v15 = sub_1BA4A6758();

  v16 = sub_1BA4A6758();

  v17 = [objc_opt_self() alertControllerWithTitle:v15 message:v16 preferredStyle:{0, 0xE000000000000000}];

  v18 = [v17 popoverPresentationController];
  [v18 setSourceItem_];

  [v17 addAction_];
  [v17 addAction_];
  [a1 presentViewController:v17 animated:1 completion:0];
}

void sub_1BA48EF38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    FavoritableDisplayingConsuming.handleQuickLogAlertContinueTapped()();
  }
}

Swift::Void __swiftcall FavoritableDisplayingConsuming.handleQuickLogAlertContinueTapped()()
{
  v3 = v1;
  v4 = v0;
  FavoritableDisplayingConsuming.favoritesItem.getter(v0, v1, v15);
  v5 = v16;
  v6 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v6 + 32))(v14, v5, v6);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  FavoritableDisplayingConsuming.favoritesItem.getter(v4, v3, v11);
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v8 + 16))(v7, v8);
  sub_1BA4A2378();

  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  v9 = [v2 viewController];
  if (v9)
  {
    v10 = v9;
    [v9 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t PromotionFeatureStatusFeedItemProvider.makeDismissalStateManager(context:)@<X0>(void *a1@<X8>)
{
  sub_1BA4A1F58();
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_1BA4A1F48();
  v2 = sub_1BA4A2498();
  v4 = v3;
  v5 = type metadata accessor for BasicPromotionDismissalStateManager();
  v6 = swift_allocObject();
  sub_1BA4A2438();
  swift_allocObject();
  v6[2] = sub_1BA4A2408();
  v6[3] = v2;
  v6[4] = v4;
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  a1[3] = v5;
  a1[4] = &protocol witness table for BasicPromotionDismissalStateManager;
  *a1 = v6;
  return result;
}

uint64_t PromotionFeatureStatusFeedItemProvider.customizedFeedItem(for:featureStatus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A1F38();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t PromotionFeatureStatusFeedItemProvider.contentKind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69A3C00];
  v3 = sub_1BA4A1C68();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t PromotionFeatureStatusFeedItemProvider.makeFeedItemPublisher(context:featureStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a1;
  sub_1BA48FA8C(0);
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA48FB24();
  v43 = v9;
  v48 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2906B8(0);
  v55 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v49 = sub_1BA4A1F38();
  v16 = *(v49 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v40 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v39 - v19;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v20 = sub_1BA4A7AA8();
  v52 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v39 - v22;
  v24 = v56;
  (*(a4 + 56))(a2, a3, a4, v21);
  v42 = a3;
  v58 = a3;
  v59 = a4;
  v25 = v50;
  v60 = v24;
  v61 = v50;
  v62 = a2;
  v26 = v49;
  v53 = v20;
  v51 = v23;
  sub_1B9F4F700(sub_1BA48FBD0, v57, MEMORY[0x1E69E73E0], v49, v27, v15);
  if ((*(v16 + 48))(v15, 1, v26) == 1)
  {
    sub_1BA48FC0C(v15);
    (*(v16 + 56))(v41, 1, 1, v26);
    v28 = v44;
    sub_1BA4A4E78();
    sub_1BA48FC68(&qword_1EDC5F450, sub_1BA48FA8C);
    v29 = v46;
    v30 = sub_1BA4A4F98();
    (*(v45 + 8))(v28, v29);
  }

  else
  {
    v31 = *(v16 + 32);
    v32 = v54;
    v31(v54, v15, v26);
    v56 = sub_1BA490430(v25, v42, a4);
    v63 = v56;
    v33 = v40;
    (*(v16 + 16))(v40, v32, v26);
    v34 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v35 = swift_allocObject();
    v31((v35 + v34), v33, v26);
    sub_1BA18779C();
    sub_1BA48FC68(&qword_1EDC5F4A8, sub_1BA18779C);
    v36 = v47;
    sub_1BA4A4FE8();

    sub_1BA48FC68(&qword_1EDC5F678, sub_1BA48FB24);
    v37 = v43;
    v30 = sub_1BA4A4F98();
    (*(v48 + 8))(v36, v37);
    (*(v16 + 8))(v54, v26);
  }

  (*(v52 + 8))(v51, v53);
  return v30;
}

void sub_1BA48FAC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA48FB24()
{
  if (!qword_1EDC5F670)
  {
    sub_1BA18779C();
    sub_1BA2906B8(255);
    sub_1BA48FC68(&qword_1EDC5F4A8, sub_1BA18779C);
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F670);
    }
  }
}

uint64_t sub_1BA48FC0C(uint64_t a1)
{
  sub_1BA2906B8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA48FC68(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA48FCB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a6;
  v53 = a3;
  v61 = a2;
  v9 = sub_1BA4A1C68();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  v60 = AssociatedConformanceWitness;
  v56 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v54 = v13;
  v55 = swift_getAssociatedTypeWitness();
  v14 = sub_1BA4A7AA8();
  v58 = *(v14 - 8);
  v59 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v48 - v15;
  v16 = sub_1BA4A1F38();
  v50 = *(v16 - 8);
  v51 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_1BA4A7AA8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v48 - v21;
  v23 = *(v18 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v48 - v26;
  v28 = *(a5 + 72);
  v62 = a1;
  v28(a1, a4, a5, v25);
  if ((*(v23 + 48))(v22, 1, v18) == 1)
  {
    (*(v20 + 8))(v22, v19);
    v67 = 0xF000000000000000;
    v68 = 0;
  }

  else
  {
    (*(v23 + 32))(v27, v22, v18);
    sub_1BA4A0EE8();
    swift_allocObject();
    sub_1BA4A0ED8();
    swift_getAssociatedConformanceWitness();
    v29 = sub_1BA4A0EC8();
    v46 = *(v23 + 8);
    v67 = v47;
    v68 = v29;
    v46(v27, v18);
  }

  v49 = a5;
  v30 = swift_checkMetadataState();
  v31 = swift_checkMetadataState();
  v69 = sub_1BA4A2498();
  v33 = v32;
  v34 = v55;
  v35 = *(v55 - 8);
  v36 = v57;
  (*(v35 + 16))(v57, v61, v55);
  (*(v35 + 56))(v36, 0, 1, v34);
  v37 = v64;
  sub_1BA4A24A8();
  v38 = sub_1BA4A1F68();
  v39 = v63;
  static PluginFeedItem.platformFeedItem<A, B>(viewType:actionHandlerType:actionHandlerUserData:uniqueIdentifier:userDataObject:contentKind:sourceProfile:)(v30, v31, v68, v67, v69, v33, v36, v37, v38);

  (*(v65 + 8))(v37, v66);
  (*(v58 + 8))(v36, v59);
  v40 = sub_1BA4A24C8();
  v42 = v41;
  sub_1BA490C24(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1BA4B5460;
  *(v43 + 32) = 0x6574736567677553;
  *(v43 + 40) = 0xEF6E6F6974634164;
  *(v43 + 48) = v40;
  *(v43 + 56) = v42;

  v44 = sub_1BA4A6AE8();

  v45 = HKUIJoinStringsForAutomationIdentifier();

  if (v45)
  {

    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA4A1ED8();
    sub_1BA4A24B8();
    sub_1BA4A1E48();
    (*(v49 + 80))(v39, v53, a4);
    sub_1B9F6AC8C(v68, v67);
    (*(v50 + 8))(v39, v51);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA490430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BA49089C();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 64))(v18, a1, a2, a3, v9);
  v12 = v19;
  v13 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v17 = (*(v13 + 16))(v12, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  sub_1BA49097C();
  sub_1BA490C24(0, &qword_1EDC5F438, MEMORY[0x1E69E6370], MEMORY[0x1E695C000]);
  sub_1BA48FC68(&qword_1EDC5F4B8, sub_1BA49097C);
  sub_1BA08FC30();
  sub_1BA4A5018();

  sub_1BA48FC68(&unk_1EDC5F5C8, sub_1BA49089C);
  v15 = sub_1BA4A4F98();
  (*(v8 + 8))(v11, v7);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v15;
}

uint64_t sub_1BA490698@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A1F38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = sub_1BA4A1DE8();
  if (v9 == 2 || (v9 & 1) == 0)
  {
    sub_1BA4A1DF8();
  }

  (*(v5 + 32))(a2, v8, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_1BA4907CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_1BA4A1F38() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BA490698(v4, a1);
}

void sub_1BA49089C()
{
  if (!qword_1EDC5F5C0)
  {
    sub_1BA49097C();
    sub_1BA490C24(255, &qword_1EDC5F438, MEMORY[0x1E69E6370], MEMORY[0x1E695C000]);
    sub_1BA48FC68(&qword_1EDC5F4B8, sub_1BA49097C);
    sub_1BA08FC30();
    v0 = sub_1BA4A4BB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F5C0);
    }
  }
}

void sub_1BA49097C()
{
  if (!qword_1EDC5F4B0)
  {
    sub_1B9FED358();
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F4B0);
    }
  }
}

uint64_t sub_1BA4909E4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
  v9 = v8;
  v10 = sub_1BA4A3E88();
  v11 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23[1] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136446466;
    v15 = sub_1BA4A85D8();
    v17 = sub_1B9F0B82C(v15, v16, &v24);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v23[2] = v8;
    v18 = v8;
    sub_1B9FED358();
    v19 = sub_1BA4A6808();
    v21 = sub_1B9F0B82C(v19, v20, &v24);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_1B9F07000, v10, v11, "[%{public}s] Failed to fetch dismissal state: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v14, -1, -1);
    MEMORY[0x1BFAF43A0](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  LOBYTE(v24) = 0;
  return sub_1BA4A4E78();
}

void sub_1BA490C24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

double PDFTableEmptyRow.row.getter()
{
  sub_1B9F1B560(0, &qword_1EDC5DC80, qword_1EDC69430);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1BA4B5480;
  *(v0 + 56) = &type metadata for PDFEmptyTableCell;
  *(v0 + 64) = &protocol witness table for PDFEmptyTableCell;
  return result;
}

double sub_1BA490D08()
{
  sub_1B9F1B560(0, &qword_1EDC5DC80, qword_1EDC69430);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1BA4B5480;
  *(v0 + 56) = &type metadata for PDFEmptyTableCell;
  *(v0 + 64) = &protocol witness table for PDFEmptyTableCell;
  return result;
}

uint64_t PDFTableRow.row.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

HealthExperienceUI::PDFTableRow __swiftcall PDFTableRow.init(_:attributes:)(Swift::OpaquePointer _, Swift::OpaquePointer attributes)
{
  v4 = v2;
  v5 = *(_._rawValue + 2);
  if (v5)
  {
    v15 = v2;
    v19 = MEMORY[0x1E69E7CC0];
    sub_1BA067080(0, v5, 0);
    v6 = v19;
    v7 = _._rawValue + 40;
    do
    {
      v8 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

      v9 = sub_1BA4A6758();
      type metadata accessor for Key(0);
      sub_1BA0262E4();
      v10 = sub_1BA4A6618();
      v11 = [v8 initWithString:v9 attributes:v10];

      v19 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1BA067080((v12 > 1), v13 + 1, 1);
        v6 = v19;
      }

      v17 = sub_1BA1C39F8();
      v18 = &protocol witness table for NSAttributedString;
      *&v16 = v11;
      *(v6 + 16) = v13 + 1;
      sub_1B9F25598(&v16, v6 + 40 * v13 + 32);
      v7 += 16;
      --v5;
    }

    while (v5);

    v4 = v15;
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  *v4 = v6;
  return result;
}

uint64_t Array<A>.row.getter()
{
  sub_1B9F0D950(0, qword_1EDC69430);

  return sub_1BA4A7FA8();
}

uint64_t static PDFTableRowProvidingBuilder.buildExpression(_:)(uint64_t a1)
{
  sub_1B9F1B560(0, &qword_1EBBEF698, &qword_1EBBEF6A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5480;
  sub_1B9F0A534(a1, v2 + 32);
  return v2;
}

void *sub_1BA49104C(void *result)
{
  v1 = result[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = MEMORY[0x1E69E7CC0];
  for (i = result + 4; ; ++i)
  {
    v4 = *i;
    v5 = *(*i + 16);
    v6 = v2[2];
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= v2[3] >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_1BA281050(result, v8, 1, v2);
      v2 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((v2[3] >> 1) - v2[2] < v5)
        {
          goto LABEL_22;
        }

        sub_1B9F0D950(0, &qword_1EBBEF6A0);
        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = v2[2];
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          v2[2] = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    if (!--v1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t static PDFTableRowProvidingBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t PromptTileView.init(_:didTapAction:didTapDismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  *(a6 + 16) = swift_getKeyPath();
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  v12 = type metadata accessor for PromptTileView(0);
  v13 = v12[6];
  *(a6 + v13) = swift_getKeyPath();
  sub_1BA49AC7C(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  result = sub_1BA49147C(a1, a6 + v12[7], type metadata accessor for PromptTileViewModel);
  v15 = (a6 + v12[8]);
  *v15 = a2;
  v15[1] = a3;
  v16 = (a6 + v12[9]);
  *v16 = a4;
  v16[1] = a5;
  return result;
}

void static PromptTileViewModel.Padding.defaultConfiguration.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
}

uint64_t PromptTileViewModel.init(headerViewModel:contentPrimaryText:contentSecondaryText:contentActionText:imageRepresentation:presentationsToHideHeader:presentationsToHideAccessory:padding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v14 = *a12;
  v15 = a12[1];
  v16 = *(a12 + 16);
  v17 = a12[3];
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  v18 = type metadata accessor for PromptTileViewModel(0);
  result = sub_1BA49147C(a8, a9 + v18[8], sub_1BA0D0F10);
  *(a9 + v18[11]) = a11;
  *(a9 + v18[10]) = a10;
  v20 = a9 + v18[9];
  *v20 = v14;
  *(v20 + 1) = v15;
  v20[16] = v16;
  *(v20 + 3) = v17;
  return result;
}

uint64_t PromptTileViewModel.Padding.init(imageTopPadding:imageWidth:contentTrailingPadding:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a2 & 1;
  *(a3 + 24) = a5;
  return result;
}

uint64_t sub_1BA49147C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA4914E4()
{
  v1 = 0x6469576567616D69;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x706F546567616D69;
  }
}

uint64_t sub_1BA491554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA499F64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA49157C(uint64_t a1)
{
  v2 = sub_1BA491804();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA4915B8(uint64_t a1)
{
  v2 = sub_1BA491804();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptTileViewModel.Padding.encode(to:)(void *a1)
{
  sub_1BA492890(0, &qword_1EDC5DDB8, sub_1BA491804, &type metadata for PromptTileViewModel.Padding.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v16 = *(v1 + 16);
  v10 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA491804();
  sub_1BA4A8548();
  v14 = v9;
  v17 = 0;
  sub_1BA013730();
  sub_1BA4A8288();
  if (!v2)
  {
    v14 = v13;
    v15 = v16;
    v17 = 1;
    sub_1BA4A8238();
    v14 = v10;
    v17 = 2;
    sub_1BA4A8288();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1BA491804()
{
  result = qword_1EDC6D120;
  if (!qword_1EDC6D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6D120);
  }

  return result;
}

uint64_t PromptTileViewModel.Padding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1BA492890(0, &qword_1EDC5DF08, sub_1BA491804, &type metadata for PromptTileViewModel.Padding.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA491804();
  sub_1BA4A8528();
  if (!v2)
  {
    v9 = v6;
    v10 = v17;
    v20 = 0;
    sub_1BA013994();
    sub_1BA4A81C8();
    v11 = v18;
    v20 = 1;
    sub_1BA4A8178();
    v12 = v9;
    v13 = v18;
    v21 = v19;
    v20 = 2;
    sub_1BA4A81C8();
    (*(v12 + 8))(v8, v5);
    v15 = v18;
    v16 = v21;
    *v10 = v11;
    *(v10 + 8) = v13;
    *(v10 + 16) = v16;
    *(v10 + 24) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BA491B10()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000019;
    if (v1 != 6)
    {
      v5 = 0xD00000000000001CLL;
    }

    v6 = 0xD000000000000013;
    if (v1 != 4)
    {
      v6 = 0x676E6964646170;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6956726564616568;
    v3 = 0xD000000000000014;
    if (v1 != 2)
    {
      v3 = 0xD000000000000011;
    }

    if (*v0)
    {
      v2 = 0xD000000000000012;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1BA491C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA49A094(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA491C50(uint64_t a1)
{
  v2 = sub_1BA4920A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA491C8C(uint64_t a1)
{
  v2 = sub_1BA4920A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptTileViewModel.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1BA492890(0, &qword_1EDC5DDC0, sub_1BA4920A4, &type metadata for PromptTileViewModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4920A4();
  sub_1BA4A8548();
  v16[0] = *v3;
  v19 = 0;
  type metadata accessor for DismissibleCellHeaderView.ViewModel(0);
  sub_1BA4920F8(&qword_1EDC65D60, type metadata accessor for DismissibleCellHeaderView.ViewModel);
  sub_1BA4A8288();
  if (!v2)
  {
    LOBYTE(v16[0]) = 1;
    sub_1BA4A8248();
    LOBYTE(v16[0]) = 2;
    sub_1BA4A8208();
    LOBYTE(v16[0]) = 3;
    sub_1BA4A8208();
    v11 = type metadata accessor for PromptTileViewModel(0);
    LOBYTE(v16[0]) = 4;
    sub_1BA4A2BF8();
    sub_1BA4920F8(&qword_1EDC6AD68, MEMORY[0x1E69A32A0]);
    sub_1BA4A8238();
    v12 = v3 + v11[9];
    v13 = *(v12 + 1);
    v14 = v12[16];
    v15 = *(v12 + 3);
    v16[0] = *v12;
    v16[1] = v13;
    v17 = v14;
    v18 = v15;
    v19 = 5;
    sub_1BA492140();
    sub_1BA4A8288();
    v16[0] = *(v3 + v11[10]);
    v19 = 6;
    sub_1BA49AB08(0, &qword_1EDC6B680, &type metadata for Presentation, MEMORY[0x1E69E62F8]);
    sub_1BA49294C(&unk_1EDC5E700, sub_1BA492194);
    sub_1BA4A8288();
    v16[0] = *(v3 + v11[11]);
    v19 = 7;
    sub_1BA4A8288();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1BA4920A4()
{
  result = qword_1EDC6D138[0];
  if (!qword_1EDC6D138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC6D138);
  }

  return result;
}

uint64_t sub_1BA4920F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BA492140()
{
  result = qword_1EDC67D20;
  if (!qword_1EDC67D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67D20);
  }

  return result;
}

unint64_t sub_1BA492194()
{
  result = qword_1EDC69538[0];
  if (!qword_1EDC69538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC69538);
  }

  return result;
}

uint64_t PromptTileViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  sub_1BA0D0F10(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA492890(0, &qword_1EDC5DF10, sub_1BA4920A4, &type metadata for PromptTileViewModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v7 = *(v6 - 8);
  v32 = v6;
  v33 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - v8;
  v10 = type metadata accessor for PromptTileViewModel(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1BA4920A4();
  v14 = v9;
  v15 = v34;
  sub_1BA4A8528();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    v30 = v5;
    v34 = v12;
    type metadata accessor for DismissibleCellHeaderView.ViewModel(0);
    v40 = 0;
    sub_1BA4920F8(&qword_1EDC65D58, type metadata accessor for DismissibleCellHeaderView.ViewModel);
    v16 = v32;
    v17 = v14;
    sub_1BA4A81C8();
    v18 = v34;
    *v34 = v36;
    LOBYTE(v36) = 1;
    v18[1] = sub_1BA4A8188();
    v18[2] = v19;
    LOBYTE(v36) = 2;
    v18[3] = sub_1BA4A8138();
    v18[4] = v20;
    LOBYTE(v36) = 3;
    v18[5] = sub_1BA4A8138();
    v18[6] = v21;
    v29[1] = v21;
    sub_1BA4A2BF8();
    LOBYTE(v36) = 4;
    sub_1BA4920F8(&qword_1EDC6AD58, MEMORY[0x1E69A32A0]);
    v22 = v30;
    sub_1BA4A8178();
    sub_1BA49147C(v22, v18 + v10[8], sub_1BA0D0F10);
    v40 = 5;
    sub_1BA4928F8();
    sub_1BA4A81C8();
    v23 = v37;
    v24 = v38;
    v25 = v39;
    v26 = v18 + v10[9];
    *v26 = v36;
    *(v26 + 1) = v23;
    v26[16] = v24;
    *(v26 + 3) = v25;
    sub_1BA49AB08(0, &qword_1EDC6B680, &type metadata for Presentation, MEMORY[0x1E69E62F8]);
    v40 = 6;
    v30 = sub_1BA49294C(&qword_1EDC5E6F8, sub_1BA4929DC);
    sub_1BA4A81C8();
    *(v18 + v10[10]) = v36;
    v40 = 7;
    sub_1BA4A81C8();
    (*(v33 + 8))(v17, v16);
    v27 = v34;
    *(v34 + v10[11]) = v36;
    sub_1BA49AAA0(v27, v31, type metadata accessor for PromptTileViewModel);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return sub_1BA492A30(v27, type metadata accessor for PromptTileViewModel);
  }
}

void sub_1BA492890(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1BA4928F8()
{
  result = qword_1EDC67D18;
  if (!qword_1EDC67D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67D18);
  }

  return result;
}

uint64_t sub_1BA49294C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA49AB08(255, &qword_1EDC6B680, &type metadata for Presentation, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA4929DC()
{
  result = qword_1EDC69528;
  if (!qword_1EDC69528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC69528);
  }

  return result;
}

uint64_t sub_1BA492A30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA492A90()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
  }

  else
  {

    sub_1BA4A6FB8();
    v7 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1B9F84D1C(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_1BA492BF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A5718();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA49AC7C(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PromptTileView(0);
  sub_1BA23D6B4(v1 + *(v10 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BA4A53C8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1BA4A6FB8();
    v13 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t PromptTileView.didTapAction.getter()
{
  v1 = *(v0 + *(type metadata accessor for PromptTileView(0) + 32));

  return v1;
}

uint64_t PromptTileView.didTapDismiss.getter()
{
  v1 = *(v0 + *(type metadata accessor for PromptTileView(0) + 36));

  return v1;
}

uint64_t PromptTileView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BA4A5868();
  *(a1 + 8) = 0x402C000000000000;
  *(a1 + 16) = 0;
  sub_1BA49A32C(0, &qword_1EDC5F300, sub_1BA493588);
  return sub_1BA492F78(v1, a1 + *(v3 + 44));
}

uint64_t sub_1BA492F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  sub_1BA493DF8(0);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35[0] = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4937D4(0, &qword_1EDC5ED88, sub_1BA493640, sub_1BA493DF8, MEMORY[0x1E697F948]);
  v35[1] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v35 - v6;
  sub_1BA493640();
  v35[2] = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A53C8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4935F8(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v36 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v35 - v18;
  sub_1BA4935C4(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v35 - v24;
  sub_1BA4944C4(v35 - v24);
  sub_1BA492BF4(v14);
  v26 = sub_1BA4A53B8();
  (*(v12 + 8))(v14, v11);
  if (v26)
  {
    *v10 = sub_1BA4A5878();
    *(v10 + 1) = 0;
    v10[16] = 0;
    sub_1BA49A32C(0, &qword_1EBBF3440, sub_1BA4936D4);
    sub_1BA496148(a1, &v10[*(v27 + 44)]);
    sub_1BA49AAA0(v10, v7, sub_1BA493640);
    swift_storeEnumTagMultiPayload();
    sub_1BA4920F8(&qword_1EDC5EA90, sub_1BA493640);
    sub_1BA49ADB4(&qword_1EDC5F120, sub_1BA493DF8, &qword_1EDC5EAE0, sub_1BA493E34);
    sub_1BA4A58E8();
    v28 = sub_1BA493640;
    v29 = v10;
  }

  else
  {
    v30 = v35[0];
    sub_1BA494748(v35[0]);
    sub_1BA49AAA0(v30, v7, sub_1BA493DF8);
    swift_storeEnumTagMultiPayload();
    sub_1BA4920F8(&qword_1EDC5EA90, sub_1BA493640);
    sub_1BA49ADB4(&qword_1EDC5F120, sub_1BA493DF8, &qword_1EDC5EAE0, sub_1BA493E34);
    sub_1BA4A58E8();
    v28 = sub_1BA493DF8;
    v29 = v30;
  }

  sub_1BA492A30(v29, v28);
  sub_1BA49AAA0(v25, v22, sub_1BA4935C4);
  v31 = v36;
  sub_1BA49AAA0(v19, v36, sub_1BA4935F8);
  v32 = v38;
  sub_1BA49AAA0(v22, v38, sub_1BA4935C4);
  sub_1BA493710(0, &qword_1EDC65B10, sub_1BA4935C4, sub_1BA4935F8);
  sub_1BA49AAA0(v31, v32 + *(v33 + 48), sub_1BA4935F8);
  sub_1BA492A30(v19, sub_1BA4935F8);
  sub_1BA492A30(v25, sub_1BA4935C4);
  sub_1BA492A30(v31, sub_1BA4935F8);
  return sub_1BA492A30(v22, sub_1BA4935C4);
}

void sub_1BA493640()
{
  if (!qword_1EDC5EA88)
  {
    sub_1BA4936D4(255);
    sub_1BA4920F8(&qword_1EDC5E920, sub_1BA4936D4);
    v0 = sub_1BA4A6268();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EA88);
    }
  }
}

void sub_1BA493710(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1BA4937D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1BA49388C()
{
  if (!qword_1EDC5F108)
  {
    sub_1BA493914(255);
    sub_1BA2C446C(255, &qword_1EDC5F2C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5F108);
    }
  }
}

void sub_1BA493950()
{
  if (!qword_1EDC5EAE8)
  {
    sub_1BA4939E4(255);
    sub_1BA4920F8(&qword_1EDC5E960, sub_1BA4939E4);
    v0 = sub_1BA4A6218();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EAE8);
    }
  }
}

void sub_1BA493A18()
{
  if (!qword_1EDC5F008)
  {
    sub_1BA493AB4(255);
    sub_1BA49AB08(255, &unk_1EDC694E0, &_s18HealthExperienceUI13AccessoryViewVN_0, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDC5F008);
    }
  }
}

void sub_1BA493AFC()
{
  if (!qword_1EDC5F160)
  {
    sub_1BA493B5C(255);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F160);
    }
  }
}

void sub_1BA493B98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1BA493C40()
{
  if (!qword_1EDC5EB48)
  {
    sub_1BA493CD4(255);
    sub_1BA4920F8(&qword_1EDC5E9F8, sub_1BA493CD4);
    v0 = sub_1BA4A6218();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EB48);
    }
  }
}

void sub_1BA493D08()
{
  if (!qword_1EDC67270)
  {
    sub_1BA49AB08(255, &unk_1EDC694E0, &_s18HealthExperienceUI13AccessoryViewVN_0, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDC67270);
    }
  }
}

void sub_1BA493E34()
{
  if (!qword_1EDC5EAD8)
  {
    sub_1BA493EC8(255);
    sub_1BA4920F8(&qword_1EDC5E940, sub_1BA493EC8);
    v0 = sub_1BA4A6218();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EAD8);
    }
  }
}

void sub_1BA493F04()
{
  if (!qword_1EDC5ED50)
  {
    sub_1BA4937D4(255, &qword_1EDC5ED58, sub_1BA493FA0, sub_1BA49409C, MEMORY[0x1E697F960]);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5ED50);
    }
  }
}

void sub_1BA49415C()
{
  if (!qword_1EDC5EA80)
  {
    sub_1BA4941F0(255);
    sub_1BA4920F8(&qword_1EDC5E910, sub_1BA4941F0);
    v0 = sub_1BA4A6268();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EA80);
    }
  }
}

void sub_1BA49422C()
{
  if (!qword_1EDC5EB58)
  {
    sub_1BA4942C0(255);
    sub_1BA4920F8(&qword_1EDC5EA08, sub_1BA4942C0);
    v0 = sub_1BA4A6218();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EB58);
    }
  }
}

void sub_1BA4942F4()
{
  if (!qword_1EDC67268)
  {
    sub_1BA494364(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDC67268);
    }
  }
}

void sub_1BA4943A0()
{
  if (!qword_1EDC5F2B0)
  {
    sub_1BA49AB08(255, &unk_1EDC694E0, &_s18HealthExperienceUI13AccessoryViewVN_0, MEMORY[0x1E69E6720]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F2B0);
    }
  }
}

uint64_t sub_1BA494424(uint64_t a1)
{
  *(a1 + 16) = sub_1BA4920F8(&qword_1EDC67D08, type metadata accessor for PromptTileViewModel);
  result = sub_1BA4920F8(&qword_1EDC67D10, type metadata accessor for PromptTileViewModel);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1BA4944C4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PromptTileView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BA497438())
  {
    v7 = *(v1 + *(v3 + 28));
    sub_1BA49AAA0(v1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PromptTileView);
    v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v9 = swift_allocObject();
    sub_1BA49147C(v6, v9 + v8, type metadata accessor for PromptTileView);
    swift_beginAccess();
    *(a1 + 24) = swift_getKeyPath();
    *(a1 + 32) = 0;
    *(a1 + 40) = swift_getKeyPath();
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v10 = type metadata accessor for DismissibleCellHeaderView(0);
    v11 = *(v10 + 32);
    *(a1 + v11) = swift_getKeyPath();
    sub_1BA49AC7C(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();

    *(a1 + 8) = v9;
    *(a1 + 16) = v7;
    *a1 = sub_1BA49B534;
    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for DismissibleCellHeaderView(0);
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }
}

void sub_1BA494748(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BA4A5718();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA493E34();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v10 = sub_1BA4A5788();
  *(v10 + 1) = 0x4030000000000000;
  v10[16] = 0;
  sub_1BA49A32C(0, &qword_1EDC5F308, sub_1BA493EC8);
  sub_1BA4949C0(v2, &v10[*(v11 + 44)]);
  v12 = sub_1BA4A5B88();
  v13 = *v2;
  if (*(v2 + 8) != 1)
  {

    sub_1BA4A6FB8();
    v14 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1B9F80960(v13, 0);
    (*(v5 + 8))(v7, v4);
  }

  sub_1BA4A5188();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_1BA49147C(v10, a1, sub_1BA493E34);
  sub_1BA493DF8(0);
  v24 = a1 + *(v23 + 36);
  *v24 = v12;
  *(v24 + 8) = v16;
  *(v24 + 16) = v18;
  *(v24 + 24) = v20;
  *(v24 + 32) = v22;
  *(v24 + 40) = 0;
}

void sub_1BA4949C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  sub_1BA494120(0);
  v116 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v92 - v7;
  sub_1BA4937D4(0, &qword_1EDC5EDA0, sub_1BA493FA0, sub_1BA49409C, MEMORY[0x1E697F948]);
  v108 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v110 = &v92 - v10;
  v102 = sub_1BA4A6138();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA493FE8(0);
  v104 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v105 = (&v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA493FA0(0);
  v109 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v99 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v100 = &v92 - v18;
  sub_1BA4940E4(0);
  v103 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA49409C(0);
  v107 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v97 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v98 = &v92 - v25;
  sub_1BA4937D4(0, &qword_1EDC5ED58, sub_1BA493FA0, sub_1BA49409C, MEMORY[0x1E697F960]);
  v113 = *(v26 - 8);
  v114 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v106 = &v92 - v27;
  sub_1BA0D0F10(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BA4A2BF8();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA493F04();
  MEMORY[0x1EEE9AC00](v35 - 8);
  v115 = &v92 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v111 = &v92 - v38;
  v39 = *(type metadata accessor for PromptTileView(0) + 28);
  v118 = a1;
  v40 = a1 + v39;
  v41 = type metadata accessor for PromptTileViewModel(0);
  sub_1BA49AAA0(v40 + *(v41 + 32), v30, sub_1BA0D0F10);
  v42 = (*(v32 + 48))(v30, 1, v31);
  v112 = v40;
  if (v42 == 1)
  {
    sub_1BA492A30(v30, sub_1BA0D0F10);
    v43 = 1;
    v44 = v111;
LABEL_9:
    (*(v113 + 56))(v44, v43, 1, v114);
    *v8 = sub_1BA4A5878();
    *(v8 + 1) = 0;
    v8[16] = 0;
    sub_1BA49A32C(0, &qword_1EDC5F2E0, sub_1BA4941F0);
    sub_1BA495794(v118, &v8[*(v82 + 44)]);
    v83 = sub_1BA4A5BC8();
    sub_1BA4A5188();
    v84 = v115;
    v85 = &v8[*(v116 + 36)];
    *v85 = v83;
    *(v85 + 1) = v86;
    *(v85 + 2) = v87;
    *(v85 + 3) = v88;
    *(v85 + 4) = v89;
    v85[40] = 0;
    sub_1BA49AAA0(v44, v84, sub_1BA493F04);
    sub_1BA49AAA0(v8, v5, sub_1BA494120);
    v90 = v117;
    sub_1BA49AAA0(v84, v117, sub_1BA493F04);
    sub_1BA493710(0, &qword_1EDC5ED48, sub_1BA493F04, sub_1BA494120);
    sub_1BA49AAA0(v5, v90 + *(v91 + 48), sub_1BA494120);
    sub_1BA492A30(v8, sub_1BA494120);
    sub_1BA492A30(v44, sub_1BA493F04);
    sub_1BA492A30(v5, sub_1BA494120);
    sub_1BA492A30(v84, sub_1BA493F04);
    return;
  }

  v96 = v5;
  v93 = v32;
  v45 = *(v32 + 32);
  v94 = v31;
  v45(v34, v30, v31);
  v95 = v41;
  if (*(v40 + *(v41 + 36) + 16) == 1)
  {
    v46 = v34;
    v47 = sub_1BA4A2BE8();
    sub_1BA493AFC();
    sub_1BA4A53A8();
    *v21 = v47;
    LOBYTE(v47) = sub_1BA4A5B88();
    sub_1BA4A5188();
    v48 = v21 + *(v103 + 36);
    *v48 = v47;
    *(v48 + 1) = v49;
    *(v48 + 2) = v50;
    *(v48 + 3) = v51;
    *(v48 + 4) = v52;
    v48[40] = 0;
    sub_1BA49AB08(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1BA4B5460;
    *(v53 + 32) = sub_1BA492A90();
    *(v53 + 40) = v54;
    *(v53 + 48) = 1852793673;
    *(v53 + 56) = 0xE400000000000000;
    v55 = sub_1BA4A6AE8();

    v56 = HKUIJoinStringsForAutomationIdentifier();

    if (v56)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      sub_1BA49B230();
      v57 = v97;
      sub_1BA4A5F18();

      sub_1BA492A30(v21, sub_1BA4940E4);
      v58 = v98;
      sub_1BA4A5408();
      v59 = sub_1BA49409C;
      sub_1BA492A30(v57, sub_1BA49409C);
      sub_1BA49AAA0(v58, v110, sub_1BA49409C);
      swift_storeEnumTagMultiPayload();
      sub_1BA49B26C(&qword_1EDC5EE20, sub_1BA493FA0, sub_1BA49B320);
      sub_1BA49B26C(&qword_1EDC5EED8, sub_1BA49409C, sub_1BA49B230);
      v60 = v106;
LABEL_8:
      sub_1BA4A58E8();
      sub_1BA492A30(v58, v59);
      v5 = v96;
      (*(v93 + 8))(v46, v94);
      v81 = v60;
      v44 = v111;
      sub_1BA49B454(v81, v111, &qword_1EDC5ED58, sub_1BA493FA0, sub_1BA49409C, MEMORY[0x1E697F960]);
      v43 = 0;
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    v46 = v34;
    sub_1BA4A2BE8();
    v61 = v101;
    v62 = v102;
    (*(v101 + 104))(v12, *MEMORY[0x1E6981630], v102);
    v63 = sub_1BA4A6198();

    (*(v61 + 8))(v12, v62);
    sub_1BA493AFC();
    v64 = v105;
    sub_1BA4A53A8();
    *v64 = v63;
    sub_1BA494060(0);
    v66 = v64 + *(v65 + 36);
    *v66 = 0;
    *(v66 + 4) = 1;
    sub_1BA4A63C8();
    sub_1BA4A5278();
    sub_1BA494024(0);
    v68 = (v64 + *(v67 + 36));
    v69 = v120;
    *v68 = v119;
    v68[1] = v69;
    v68[2] = v121;
    v70 = sub_1BA4A5B88();
    sub_1BA4A5188();
    v71 = v64 + *(v104 + 36);
    *v71 = v70;
    *(v71 + 1) = v72;
    *(v71 + 2) = v73;
    *(v71 + 3) = v74;
    *(v71 + 4) = v75;
    v71[40] = 0;
    sub_1BA49AB08(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1BA4B5460;
    *(v76 + 32) = sub_1BA492A90();
    *(v76 + 40) = v77;
    *(v76 + 48) = 1852793673;
    *(v76 + 56) = 0xE400000000000000;
    v78 = sub_1BA4A6AE8();

    v79 = HKUIJoinStringsForAutomationIdentifier();

    if (v79)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      sub_1BA49B320();
      v80 = v99;
      sub_1BA4A5F18();

      sub_1BA492A30(v64, sub_1BA493FE8);
      v58 = v100;
      sub_1BA4A5408();
      v59 = sub_1BA493FA0;
      sub_1BA492A30(v80, sub_1BA493FA0);
      sub_1BA49AAA0(v58, v110, sub_1BA493FA0);
      swift_storeEnumTagMultiPayload();
      sub_1BA49B26C(&qword_1EDC5EE20, sub_1BA493FA0, sub_1BA49B320);
      sub_1BA49B26C(&qword_1EDC5EED8, sub_1BA49409C, sub_1BA49B230);
      v60 = v106;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1BA495794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PromptTileView(0);
  v5 = v4 - 8;
  v39 = *(v4 - 8);
  v38 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0(0);
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v40 = sub_1BA4A5788();
  v43 = 0;
  sub_1BA495DC0(a1, &v59);
  v52 = v60[7];
  v53 = v60[8];
  v54[0] = v60[9];
  *(v54 + 9) = *(&v60[9] + 9);
  v48 = v60[3];
  v49 = v60[4];
  v50 = v60[5];
  v51 = v60[6];
  v44 = v59;
  v45 = v60[0];
  v46 = v60[1];
  v47 = v60[2];
  v55[8] = v60[7];
  v55[9] = v60[8];
  v56[0] = v60[9];
  *(v56 + 9) = *(&v60[9] + 9);
  v55[4] = v60[3];
  v55[5] = v60[4];
  v55[6] = v60[5];
  v55[7] = v60[6];
  v55[0] = v59;
  v55[1] = v60[0];
  v55[2] = v60[1];
  v55[3] = v60[2];
  sub_1BA49AAA0(&v44, &v57, sub_1BA4942C0);
  sub_1BA492A30(v55, sub_1BA4942C0);
  *(&v42[8] + 7) = v52;
  *(&v42[9] + 7) = v53;
  *(&v42[10] + 7) = v54[0];
  v42[11] = *(v54 + 9);
  *(&v42[4] + 7) = v48;
  *(&v42[5] + 7) = v49;
  *(&v42[6] + 7) = v50;
  *(&v42[7] + 7) = v51;
  *(v42 + 7) = v44;
  *(&v42[1] + 7) = v45;
  *(&v42[2] + 7) = v46;
  *(&v42[3] + 7) = v47;
  v37 = v43;
  v14 = (a1 + *(v5 + 36));
  v15 = v14[3];
  v16 = v14[4];
  v17 = v14[5];
  v35 = v14[6];
  v36 = v17;
  sub_1BA49AAA0(a1, v7, type metadata accessor for PromptTileView);
  v18 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v19 = swift_allocObject();
  sub_1BA49147C(v7, v19 + v18, type metadata accessor for PromptTileView);
  KeyPath = swift_getKeyPath();
  *&v13[v9[7]] = swift_getKeyPath();
  sub_1BA49AC7C(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  *v13 = KeyPath;
  *(v13 + 1) = 0;
  v13[16] = 0;
  v21 = &v13[v9[8]];
  *v21 = v15;
  *(v21 + 1) = v16;
  v22 = &v13[v9[9]];
  v23 = v35;
  *v22 = v36;
  *(v22 + 1) = v23;
  v24 = &v13[v9[10]];
  *v24 = sub_1BA49B8D0;
  *(v24 + 1) = v19;
  v25 = v41;
  sub_1BA49AAA0(v13, v41, _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0);
  v26 = v40;
  v57 = v40;
  LOBYTE(v19) = v37;
  v58[0] = v37;
  *&v58[129] = v42[8];
  *&v58[145] = v42[9];
  *&v58[161] = v42[10];
  *&v58[177] = v42[11];
  *&v58[65] = v42[4];
  *&v58[81] = v42[5];
  *&v58[97] = v42[6];
  *&v58[113] = v42[7];
  *&v58[1] = v42[0];
  *&v58[17] = v42[1];
  *&v58[33] = v42[2];
  *&v58[49] = v42[3];
  v27 = *&v58[160];
  *(a2 + 160) = *&v58[144];
  *(a2 + 176) = v27;
  *(a2 + 192) = *&v58[176];
  *(a2 + 208) = v58[192];
  v28 = *&v58[96];
  *(a2 + 96) = *&v58[80];
  *(a2 + 112) = v28;
  v29 = *&v58[128];
  *(a2 + 128) = *&v58[112];
  *(a2 + 144) = v29;
  v30 = *&v58[32];
  *(a2 + 32) = *&v58[16];
  *(a2 + 48) = v30;
  v31 = *&v58[64];
  *(a2 + 64) = *&v58[48];
  *(a2 + 80) = v31;
  v32 = *v58;
  *a2 = v57;
  *(a2 + 16) = v32;
  sub_1BA493710(0, &qword_1EDC5EB50, sub_1BA49422C, _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0);
  sub_1BA49AAA0(v25, a2 + *(v33 + 48), _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0);

  sub_1BA49AAA0(&v57, &v59, sub_1BA49422C);
  sub_1BA492A30(v13, _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0);
  sub_1BA492A30(v25, _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0);
  *(&v60[8] + 1) = v42[8];
  *(&v60[9] + 1) = v42[9];
  *(&v60[10] + 1) = v42[10];
  *(&v60[11] + 1) = v42[11];
  *(&v60[4] + 1) = v42[4];
  *(&v60[5] + 1) = v42[5];
  *(&v60[6] + 1) = v42[6];
  *(&v60[7] + 1) = v42[7];
  *(v60 + 1) = v42[0];
  *(&v60[1] + 1) = v42[1];
  *(&v60[2] + 1) = v42[2];
  v59 = v26;
  LOBYTE(v60[0]) = v19;
  *(&v60[3] + 1) = v42[3];
  return sub_1BA492A30(&v59, sub_1BA49422C);
}

uint64_t sub_1BA495DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PromptTileView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = a1 + *(v7 + 36);
  v9 = *(v8 + 16);
  v38 = *(v8 + 8);
  v39 = v9;
  KeyPath = swift_getKeyPath();

  if (sub_1BA497438())
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 1;
  }

  else
  {
    v14 = sub_1BA4975C0();
    sub_1BA49AAA0(a1, &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PromptTileView);
    v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    sub_1BA49147C(&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v15, type metadata accessor for PromptTileView);
    v10 = swift_getKeyPath();
    if (v14)
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    v13 = sub_1BA49B8CC;
  }

  v16 = sub_1BA4A5B88();
  sub_1BA4A5188();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v67 = 0;
  v25 = sub_1BA4A5BC8();
  sub_1BA4A5188();
  v68 = 0;
  v44 = 0;
  v43 = 0;
  v45[0] = v10;
  v45[1] = 0;
  *&v46 = v11;
  *(&v46 + 1) = v13;
  *&v47 = v12;
  BYTE8(v47) = v16;
  *&v48 = v18;
  *(&v48 + 1) = v20;
  *&v49 = v22;
  *(&v49 + 1) = v24;
  LOBYTE(v50) = 0;
  BYTE8(v50) = v25;
  *&v51 = v26;
  *(&v51 + 1) = v27;
  *&v52 = v28;
  *(&v52 + 1) = v29;
  v53 = 0;
  *&v42[7] = v10;
  *&v42[71] = v49;
  *&v42[55] = v48;
  *&v42[39] = v47;
  *&v42[23] = v46;
  v42[135] = 0;
  *&v42[119] = v52;
  *&v42[103] = v51;
  *&v42[87] = v50;
  v30 = v10;
  v32 = v39;
  v31 = KeyPath;
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v38;
  *(a2 + 32) = v32;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v33 = *&v42[64];
  *(a2 + 129) = *&v42[80];
  v34 = *&v42[112];
  *(a2 + 145) = *&v42[96];
  *(a2 + 161) = v34;
  *(a2 + 177) = *&v42[128];
  v35 = *v42;
  *(a2 + 65) = *&v42[16];
  v36 = *&v42[48];
  *(a2 + 81) = *&v42[32];
  *(a2 + 97) = v36;
  *(a2 + 113) = v33;
  *(a2 + 49) = v35;
  v54[0] = v30;
  v54[1] = 0;
  v54[2] = v11;
  v54[3] = v13;
  v54[4] = v12;
  v55 = v16;
  v56 = v18;
  v57 = v20;
  v58 = v22;
  v59 = v24;
  v60 = 0;
  v61 = v25;
  v62 = v26;
  v63 = v27;
  v64 = v28;
  v65 = v29;
  v66 = 0;
  sub_1B9F84D0C(v31, 0, 0);

  sub_1BA49AAA0(v45, &v41, sub_1BA494364);
  sub_1BA492A30(v54, sub_1BA494364);
  sub_1B9F84D1C(v31, 0, 0);
}

uint64_t sub_1BA496148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = type metadata accessor for PromptTileView(0);
  v4 = v3 - 8;
  v101 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v102 = v5;
  v103 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA493D9C(0);
  v105 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v107 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v106 = &v94 - v9;
  sub_1BA493858(0);
  v100 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA493914(0);
  v95 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v94 - v15;
  sub_1BA4937D4(0, &qword_1EBBF3448, sub_1BA493858, sub_1BA493C04, MEMORY[0x1E697F948]);
  v99 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v94 - v18;
  sub_1BA0D0F10(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA49378C(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v104 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v109 = a1;
  v110 = &v94 - v26;
  v27 = (a1 + *(v4 + 36));
  v98 = type metadata accessor for PromptTileViewModel(0);
  sub_1BA49AAA0(v27 + *(v98 + 32), v22, sub_1BA0D0F10);
  v28 = sub_1BA4A2BF8();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v22, 1, v28) == 1)
  {
    sub_1BA492A30(v22, sub_1BA0D0F10);
    v30 = sub_1BA4A5788();
    v111[0] = 1;
    sub_1BA4971C4(v109, &v118);
    v127 = v120;
    v128 = v121;
    v129 = v122;
    v130 = v123;
    v125 = v118;
    v126 = v119;
    v133 = v120;
    v134 = v121;
    v135 = v122;
    v136 = v123;
    v131 = v118;
    v132 = v119;
    sub_1BA49AAA0(&v125, &v112, sub_1BA493CD4);
    sub_1BA492A30(&v131, sub_1BA493CD4);
    *(&v124[2] + 7) = v127;
    *(&v124[3] + 7) = v128;
    *(&v124[4] + 7) = v129;
    *(&v124[5] + 7) = v130;
    *(v124 + 7) = v125;
    *(&v124[1] + 7) = v126;
    v31 = v111[0];
    v32 = sub_1BA4A5BC8();
    sub_1BA4A5188();
    v33 = v124[2];
    *(v19 + 65) = v124[3];
    v34 = v124[5];
    *(v19 + 81) = v124[4];
    *(v19 + 97) = v34;
    v35 = v124[1];
    *(v19 + 17) = v124[0];
    *(v19 + 33) = v35;
    *v19 = v30;
    *(v19 + 1) = 0;
    v19[16] = v31;
    *(v19 + 14) = *(&v124[5] + 15);
    *(v19 + 49) = v33;
    v19[120] = v32;
    *(v19 + 16) = v36;
    *(v19 + 17) = v37;
    *(v19 + 18) = v38;
    *(v19 + 19) = v39;
    v19[160] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1BA493C04(0);
    sub_1BA4920F8(&qword_1EBBF3450, sub_1BA493858);
    sub_1BA49ADB4(&qword_1EBBF3458, sub_1BA493C04, &qword_1EBBF3460, sub_1BA493C40);
    sub_1BA4A58E8();
  }

  else
  {
    v40 = sub_1BA4A2BE8();
    v94 = v40;
    (*(v29 + 8))(v22, v28);
    *v16 = sub_1BA4A5788();
    *(v16 + 1) = 0;
    v16[16] = 1;
    sub_1BA49A32C(0, &qword_1EBBF3468, sub_1BA4939E4);
    sub_1BA496D08(v40, v109, &v16[*(v41 + 44)]);
    LOBYTE(v40) = sub_1BA4A5B98();
    sub_1BA4A5188();
    v42 = &v16[*(v95 + 36)];
    *v42 = v40;
    *(v42 + 1) = v43;
    *(v42 + 2) = v44;
    *(v42 + 3) = v45;
    *(v42 + 4) = v46;
    v42[40] = 0;
    v48 = v27[1];
    v47 = v27[2];
    KeyPath = swift_getKeyPath();

    v50 = sub_1BA4A5BC8();
    sub_1BA4A5188();
    LOBYTE(v131) = 0;
    LOBYTE(v125) = 0;
    v118 = KeyPath;
    LOBYTE(v119) = 0;
    *(&v119 + 1) = v48;
    *&v120 = v47;
    BYTE8(v120) = v50;
    *&v121 = v51;
    *(&v121 + 1) = v52;
    *&v122 = v53;
    *(&v122 + 1) = v54;
    LOBYTE(v123) = 0;
    v55 = v96;
    sub_1BA49AAA0(v16, v96, sub_1BA493914);
    v115 = v121;
    v116 = v122;
    v117 = v123;
    v112 = v118;
    v113 = v119;
    v114 = v120;
    v56 = v97;
    sub_1BA49AAA0(v55, v97, sub_1BA493914);
    sub_1BA49388C();
    v58 = v56 + *(v57 + 48);
    v59 = v56;
    v61 = v116;
    v128 = v115;
    v62 = v115;
    v60 = v115;
    v129 = v116;
    v63 = v117;
    LOBYTE(v130) = v117;
    v64 = v113;
    v126 = v113;
    v127 = v114;
    *(v58 + 32) = v114;
    *(v58 + 48) = v60;
    *(v58 + 64) = v61;
    v65 = v112;
    v66 = v112;
    v68 = v113;
    v67 = v114;
    v125 = v112;
    *(v58 + 80) = v63;
    *v58 = v65;
    *(v58 + 16) = v64;
    v133 = v67;
    v134 = v62;
    v135 = v116;
    LOBYTE(v136) = v117;
    v131 = v66;
    v132 = v68;
    v69 = MEMORY[0x1E697E5E0];
    sub_1BA49AD40(&v118, v111, &qword_1EDC5F2C0, &_s18HealthExperienceUI22ContentPrimaryTextViewVN_0, MEMORY[0x1E697E5E0], sub_1BA2C446C);
    sub_1BA49AD40(&v125, v111, &qword_1EDC5F2C0, &_s18HealthExperienceUI22ContentPrimaryTextViewVN_0, v69, sub_1BA2C446C);
    sub_1BA49ACE0(&v131, &qword_1EDC5F2C0, &_s18HealthExperienceUI22ContentPrimaryTextViewVN_0, v69, sub_1BA2C446C);
    sub_1BA492A30(v55, sub_1BA493914);
    sub_1BA49AAA0(v59, v19, sub_1BA493858);
    swift_storeEnumTagMultiPayload();
    sub_1BA493C04(0);
    sub_1BA4920F8(&qword_1EBBF3450, sub_1BA493858);
    sub_1BA49ADB4(&qword_1EBBF3458, sub_1BA493C04, &qword_1EBBF3460, sub_1BA493C40);
    sub_1BA4A58E8();

    sub_1BA49ACE0(&v118, &qword_1EDC5F2C0, &_s18HealthExperienceUI22ContentPrimaryTextViewVN_0, MEMORY[0x1E697E5E0], sub_1BA2C446C);
    sub_1BA492A30(v59, sub_1BA493858);
    sub_1BA492A30(v16, sub_1BA493914);
  }

  v71 = v27[3];
  v70 = v27[4];
  v72 = v27[6];
  v100 = v27[5];
  v73 = v103;
  sub_1BA49AAA0(v109, v103, type metadata accessor for PromptTileView);
  v74 = (*(v101 + 80) + 16) & ~*(v101 + 80);
  v75 = swift_allocObject();
  sub_1BA49147C(v73, v75 + v74, type metadata accessor for PromptTileView);
  v76 = swift_getKeyPath();
  v77 = swift_getKeyPath();
  v78 = _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0(0);
  v79 = v106;
  *&v106[v78[5]] = v77;
  sub_1BA49AC7C(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  *v79 = v76;
  *(v79 + 8) = 0;
  *(v79 + 16) = 0;
  v80 = (v79 + v78[6]);
  *v80 = v71;
  v80[1] = v70;
  v81 = (v79 + v78[7]);
  *v81 = v100;
  v81[1] = v72;
  v82 = (v79 + v78[8]);
  *v82 = sub_1BA49AE54;
  v82[1] = v75;

  LOBYTE(v70) = sub_1BA4A5BC8();
  sub_1BA4A5188();
  v83 = v104;
  v84 = v79 + *(v105 + 36);
  *v84 = v70;
  *(v84 + 8) = v85;
  *(v84 + 16) = v86;
  *(v84 + 24) = v87;
  *(v84 + 32) = v88;
  *(v84 + 40) = 0;
  v89 = v110;
  sub_1BA49AAA0(v110, v83, sub_1BA49378C);
  v90 = v107;
  sub_1BA49AAA0(v79, v107, sub_1BA493D9C);
  v91 = v108;
  sub_1BA49AAA0(v83, v108, sub_1BA49378C);
  sub_1BA493710(0, &qword_1EDC5ED08, sub_1BA49378C, sub_1BA493D9C);
  sub_1BA49AAA0(v90, v91 + *(v92 + 48), sub_1BA493D9C);
  sub_1BA492A30(v79, sub_1BA493D9C);
  sub_1BA492A30(v89, sub_1BA49378C);
  sub_1BA492A30(v90, sub_1BA493D9C);
  return sub_1BA492A30(v83, sub_1BA49378C);
}

void sub_1BA496D08(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = type metadata accessor for PromptTileView(0);
  v35[0] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v35[1] = v6;
  v36 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA493AFC();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA493AB4(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v35 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v35 - v17;
  sub_1BA4A53A8();
  *v9 = a1;
  sub_1BA49AB08(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4B5460;

  *(v19 + 32) = sub_1BA492A90();
  *(v19 + 40) = v20;
  *(v19 + 48) = 1852793673;
  *(v19 + 56) = 0xE400000000000000;
  v21 = sub_1BA4A6AE8();

  v22 = HKUIJoinStringsForAutomationIdentifier();

  if (v22)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA49AE58();
    sub_1BA4A5F18();

    sub_1BA492A30(v9, sub_1BA493AFC);
    sub_1BA4A5408();
    sub_1BA492A30(v15, sub_1BA493AB4);
    if (sub_1BA497438())
    {
      KeyPath = 0;
      v24 = 0;
      v25 = 0;
      v26 = 1;
    }

    else
    {
      v27 = sub_1BA4975C0();
      v28 = a2;
      v29 = v36;
      sub_1BA49AAA0(v28, v36, type metadata accessor for PromptTileView);
      v30 = (*(v35[0] + 80) + 16) & ~*(v35[0] + 80);
      v25 = swift_allocObject();
      sub_1BA49147C(v29, v25 + v30, type metadata accessor for PromptTileView);
      KeyPath = swift_getKeyPath();
      if (v27)
      {
        v24 = 256;
      }

      else
      {
        v24 = 0;
      }

      v26 = sub_1BA49B8CC;
    }

    sub_1BA49AAA0(v18, v12, sub_1BA493AB4);
    v31 = v37;
    sub_1BA49AAA0(v12, v37, sub_1BA493AB4);
    sub_1BA493A18();
    v33 = v31 + *(v32 + 48);
    *v33 = 0;
    *(v33 + 8) = 1;
    v34 = (v31 + *(v32 + 64));
    *v34 = KeyPath;
    v34[1] = 0;
    v34[2] = v24;
    v34[3] = v26;
    v34[4] = v25;
    sub_1BA49B15C(KeyPath, 0, v24, v26, v25, sub_1B9F84D0C, sub_1B9F0F1B4);
    sub_1BA492A30(v18, sub_1BA493AB4);
    sub_1BA49B15C(KeyPath, 0, v24, v26, v25, sub_1B9F84D1C, sub_1B9F0E310);
    sub_1BA492A30(v12, sub_1BA493AB4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA4971C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PromptTileView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = a1 + *(v7 + 36);
  v10 = *(v8 + 8);
  v9 = *(v8 + 16);
  KeyPath = swift_getKeyPath();

  if (sub_1BA497438())
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 1;
  }

  else
  {
    v16 = sub_1BA4975C0();
    sub_1BA49AAA0(a1, &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PromptTileView);
    v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v14 = swift_allocObject();
    sub_1BA49147C(&v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v17, type metadata accessor for PromptTileView);
    v12 = swift_getKeyPath();
    if (v16)
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }

    v15 = sub_1BA49B8CC;
  }

  v20[8] = 0;
  v20[0] = 0;
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v10;
  *(a2 + 32) = v9;
  *(a2 + 40) = 0x4020000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = v12;
  *(a2 + 64) = 0;
  *(a2 + 72) = v13;
  *(a2 + 80) = v15;
  *(a2 + 88) = v14;
  v18 = v12;
  sub_1B9F84D0C(KeyPath, 0, 0);

  sub_1BA49B15C(v18, 0, v13, v15, v14, sub_1B9F84D0C, sub_1B9F0F1B4);
  sub_1BA49B15C(v18, 0, v13, v15, v14, sub_1B9F84D1C, sub_1B9F0E310);
  sub_1B9F84D1C(KeyPath, 0, 0);
}

BOOL sub_1BA497438()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for PromptTileView(0) + 28);
  v6 = *(v5 + *(type metadata accessor for PromptTileViewModel(0) + 40));
  v7 = *v0;
  if (*(v0 + 8) == 1)
  {
    v11 = *v0;
  }

  else
  {

    sub_1BA4A6FB8();
    v8 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1B9F80960(v7, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v7) = v11;
  }

  return !sub_1BA006608(v7, v6);
}

BOOL sub_1BA4975C0()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for PromptTileView(0) + 28);
  v6 = *(v5 + *(type metadata accessor for PromptTileViewModel(0) + 44));
  v7 = *v0;
  if (*(v0 + 8) == 1)
  {
    v11 = *v0;
  }

  else
  {

    sub_1BA4A6FB8();
    v8 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1B9F80960(v7, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v7) = v11;
  }

  if (sub_1BA006608(v7, v6))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  return (v10 & 2) == 0;
}

uint64_t sub_1BA4977A0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BA4A5868();
  *(a1 + 8) = 0x402C000000000000;
  *(a1 + 16) = 0;
  sub_1BA49A32C(0, &qword_1EDC5F300, sub_1BA493588);
  return sub_1BA492F78(v1, a1 + *(v3 + 44));
}

void sub_1BA49783C()
{
  type metadata accessor for DismissibleCellHeaderView.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1BA49AB08(319, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BA0D0F10(319);
      if (v2 <= 0x3F)
      {
        sub_1BA49AB08(319, &qword_1EDC6B680, &type metadata for Presentation, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BA497978()
{
  sub_1BA49AB08(319, &qword_1EDC5F350, &type metadata for Presentation, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1BA49AB08(319, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1BA49AC7C(319, &qword_1EDC6B6D0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PromptTileViewModel(319);
        if (v3 <= 0x3F)
        {
          sub_1B9F37BB8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BA497ABC()
{
  if (!qword_1EDC5EAC8)
  {
    sub_1BA493588(255);
    sub_1BA4920F8(&qword_1EDC5E9E8, sub_1BA493588);
    v0 = sub_1BA4A6268();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EAC8);
    }
  }
}

void sub_1BA497B78()
{
  sub_1BA49AB08(319, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1BA49AC7C(319, &qword_1EDC6B6D0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1BA49AB08(319, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1BA49AC7C(319, &qword_1EDC5DB48, sub_1B9F37BB8, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1BA497CE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1BA497D40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_1BA497DD0()
{
  result = qword_1EBBF3428;
  if (!qword_1EBBF3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3428);
  }

  return result;
}

unint64_t sub_1BA497E28()
{
  result = qword_1EBBF3430;
  if (!qword_1EBBF3430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3430);
  }

  return result;
}

void sub_1BA497E98(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A5718();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4937D4(0, &qword_1EBBF3438, sub_1BA2C7558, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v12 = &v27 - v11;
  if (*(v1 + 17))
  {
    v28 = v4;
    v29 = v9;
    v30 = v8;
    v31 = a1;
    v13 = *(v1 + 3);
    v14 = *(v1 + 4);
    if (qword_1EDC5EBA0 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDC5EBA8;
    KeyPath = swift_getKeyPath();
    v33 = v13;
    v34 = v14;
    v35 = KeyPath;
    v36 = v15;
    sub_1BA49AB08(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BA4B9FD0;
    v37 = *v1;
    v38 = *(v1 + 16);
    v18 = *(&v37 + 1);
    v19 = v37;
    v20 = v38;
    sub_1B9F0F1B4(v13, v14);

    if (v20 == 1)
    {
      sub_1BA49AD40(&v37, v32, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0], sub_1BA49AB08);
    }

    else
    {
      v22 = MEMORY[0x1E697DCC0];
      sub_1BA49AD40(&v37, v32, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0], sub_1BA49AB08);
      sub_1BA4A6FB8();
      v23 = sub_1BA4A5B28();
      sub_1BA4A3CA8();

      sub_1BA4A5708();
      swift_getAtKeyPath();
      sub_1BA49ACE0(&v37, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], v22, sub_1BA49AB08);
      (*(v28 + 8))(v6, v3);
      v19 = v32[0];
      v18 = v32[1];
    }

    *(v17 + 32) = v19;
    *(v17 + 40) = v18;
    *(v17 + 48) = 0x726564616548;
    *(v17 + 56) = 0xE600000000000000;
    *(v17 + 64) = 0x6E6F7474754258;
    *(v17 + 72) = 0xE700000000000000;
    v24 = sub_1BA4A6AE8();

    v25 = HKUIJoinStringsForAutomationIdentifier();

    if (v25)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      sub_1BA2C7558();
      sub_1BA49AB58(&qword_1EDC5F270, sub_1BA2C7558, sub_1BA2C7684);
      sub_1BA4A5F18();

      sub_1B9F0E310(v33);

      v26 = v31;
      sub_1BA49B454(v12, v31, &qword_1EBBF3438, sub_1BA2C7558, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
      (*(v29 + 56))(v26, 0, 1, v30);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v21 = *(v9 + 56);

    v21(a1, 1, 1, v10);
  }
}

void sub_1BA49842C(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = sub_1BA4A5718();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F87DEC(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A5D68();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 4);
  *&v45 = *(v1 + 3);
  *(&v45 + 1) = v11;
  sub_1B9F252FC();

  v12 = sub_1BA4A5E18();
  v41 = v13;
  v42 = v12;
  v15 = v14;
  v40 = v16;
  KeyPath = swift_getKeyPath();
  v18 = v15 & 1;
  LOBYTE(v45) = v15 & 1;
  (*(v8 + 104))(v10, *MEMORY[0x1E6980EF8], v7);
  v19 = sub_1BA4A5C28();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_1BA4A5CB8();
  v20 = sub_1BA4A5CD8();
  sub_1BA492A30(v6, sub_1B9F87DEC);
  (*(v8 + 8))(v10, v7);
  v21 = swift_getKeyPath();
  v22 = sub_1BA4A60E8();
  v23 = swift_getKeyPath();
  LOBYTE(v11) = sub_1BA4A5B98();
  sub_1BA4A5188();
  v54 = 0;
  *&v45 = v42;
  *(&v45 + 1) = v41;
  LOBYTE(v46) = v18;
  *(&v46 + 1) = v40;
  LOWORD(v47) = 256;
  *(&v47 + 1) = KeyPath;
  LOBYTE(v48) = 0;
  *(&v48 + 1) = v21;
  *&v49 = v20;
  *(&v49 + 1) = v23;
  *&v50 = v22;
  BYTE8(v50) = v11;
  *&v51 = v24;
  *(&v51 + 1) = v25;
  *&v52 = v26;
  *(&v52 + 1) = v27;
  v53 = 0;
  sub_1BA49AB08(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B5460;
  v55 = *v1;
  v56 = *(v1 + 16);
  v29 = v55;
  if (v56 == 1)
  {
  }

  else
  {

    sub_1BA4A6FB8();
    v31 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    v32 = v36;
    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1BA49ACE0(&v55, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0], sub_1BA49AB08);
    (*(v37 + 8))(v32, v38);
    v30 = *(&v43[0] + 1);
    v29 = *&v43[0];
  }

  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  *(v28 + 48) = 0x656C746954;
  *(v28 + 56) = 0xE500000000000000;
  v33 = sub_1BA4A6AE8();

  v34 = HKUIJoinStringsForAutomationIdentifier();

  if (v34)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA0D62F4(0);
    sub_1BA49B3D4(&qword_1EDC5EE40, sub_1BA0D62F4, sub_1BA0D6574);
    sub_1BA4A5F18();

    v43[6] = v51;
    v43[7] = v52;
    v44 = v53;
    v43[2] = v47;
    v43[3] = v48;
    v43[4] = v49;
    v43[5] = v50;
    v43[0] = v45;
    v43[1] = v46;
    sub_1BA492A30(v43, sub_1BA0D62F4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA498978()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
  }

  else
  {

    sub_1BA4A6FB8();
    v7 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1B9F84D1C(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_1BA498ADC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A5718();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA49AC7C(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0(0);
  sub_1BA23D6B4(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BA4A53C8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1BA4A6FB8();
    v13 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1BA498D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA49A4D8(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27[-v8];
  sub_1BA49A430(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27[-v14];
  v16 = _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0(0);
  v17 = (a1 + *(v16 + 24));
  v18 = v17[1];
  if (v18)
  {
    v28 = *v17;
    v29 = v18;
    sub_1BA499170(&v28, a1);
    sub_1BA4937D4(0, &qword_1EDC5EE58, sub_1BA0D6380, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
  }

  else
  {
    sub_1BA4937D4(0, &qword_1EDC5EE58, sub_1BA0D6380, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  }

  v21 = (a1 + *(v16 + 28));
  v22 = v21[1];
  if (v22)
  {
    v28 = *v21;
    v29 = v22;
    sub_1BA4993A0(&v28, a1, v9);
    sub_1BA4937D4(0, &qword_1EDC5F1A8, sub_1BA49A584, sub_1BA0D5B58, MEMORY[0x1E697E830]);
    (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
  }

  else
  {
    sub_1BA4937D4(0, &qword_1EDC5F1A8, sub_1BA49A584, sub_1BA0D5B58, MEMORY[0x1E697E830]);
    (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  }

  sub_1BA49AAA0(v15, v12, sub_1BA49A430);
  sub_1B9FAAF58(v9, v6);
  sub_1BA49AAA0(v12, a2, sub_1BA49A430);
  sub_1BA493710(0, &qword_1EDC5EE48, sub_1BA49A430, sub_1BA49A4D8);
  sub_1B9FAAF58(v6, a2 + *(v25 + 48));
  sub_1B9FAAFBC(v9);
  sub_1BA492A30(v15, sub_1BA49A430);
  sub_1B9FAAFBC(v6);
  return sub_1BA492A30(v12, sub_1BA49A430);
}

void sub_1BA499170(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  sub_1B9F252FC();

  v2 = MEMORY[0x1E69E6158];
  v3 = sub_1BA4A5E18();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  v11 = v7 & 1;
  v12 = sub_1BA4A5C18();
  v13 = swift_getKeyPath();
  v14 = sub_1BA4A60F8();
  *&v21 = v3;
  *(&v21 + 1) = v5;
  LOBYTE(v22) = v11;
  *(&v22 + 1) = v9;
  LOWORD(v23) = 256;
  *(&v23 + 1) = KeyPath;
  LOBYTE(v24) = 0;
  *(&v24 + 1) = v13;
  *&v25 = v12;
  *(&v25 + 1) = swift_getKeyPath();
  v26 = v14;
  sub_1BA49AB08(0, &qword_1EDC6E330, v2, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5460;
  *(v15 + 32) = sub_1BA498978();
  *(v15 + 40) = v16;
  *(v15 + 48) = 0x7470697263736544;
  *(v15 + 56) = 0xEB000000006E6F69;
  v17 = sub_1BA4A6AE8();

  v18 = HKUIJoinStringsForAutomationIdentifier();

  if (v18)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA0D6380();
    sub_1BA0D6574();
    sub_1BA4A5F18();

    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    sub_1BA492A30(v19, sub_1BA0D6380);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA4993A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v5 = sub_1BA4A53C8();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A5488();
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A5848();
  v10 = *(v9 - 8);
  v49 = v9;
  v50 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_1BA49A658(0);
  v47 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA49A584();
  v51 = *(v18 - 8);
  v52 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = a1[1];
  sub_1BA49AAA0(a2, &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0);
  v23 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v24 = swift_allocObject();
  sub_1BA49147C(&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0);
  v60 = v21;
  v61 = v22;
  v62 = a2;
  sub_1BA4937D4(0, &qword_1EDC5EE90, sub_1BA0D57D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  sub_1BA49A7C8();
  sub_1BA4A61C8();
  v25 = sub_1BA4A6058();
  KeyPath = swift_getKeyPath();
  sub_1BA49A6A0();
  v28 = &v17[*(v27 + 36)];
  *v28 = KeyPath;
  v28[1] = v25;
  v29 = &v17[*(v47 + 36)];
  sub_1BA49A8EC(0);
  v31 = *(v30 + 28);
  v32 = *MEMORY[0x1E697DC20];
  v33 = sub_1BA4A51C8();
  v34 = v29 + v31;
  v35 = v20;
  (*(*(v33 - 8) + 104))(v34, v32, v33);
  *v29 = swift_getKeyPath();
  v36 = v48;
  sub_1BA4A5838();
  sub_1BA49A920();
  sub_1BA4920F8(&qword_1EDC5EDC8, MEMORY[0x1E697C540]);
  v37 = v49;
  sub_1BA4A5EA8();
  (*(v50 + 8))(v36, v37);
  sub_1BA492A30(v17, sub_1BA49A658);
  v38 = v53;
  sub_1BA498ADC(v53);
  LOBYTE(v32) = sub_1BA4A53B8();
  (*(v54 + 8))(v38, v55);
  v39 = v56;
  if (v32)
  {
    sub_1BA4A5468();
  }

  else
  {
    sub_1BA4A5478();
  }

  v40 = swift_getKeyPath();
  sub_1BA4937D4(0, &qword_1EDC5F1A8, sub_1BA49A584, sub_1BA0D5B58, MEMORY[0x1E697E830]);
  v42 = v59;
  v43 = (v59 + *(v41 + 36));
  sub_1BA0D5B58(0);
  (*(v57 + 32))(v43 + *(v44 + 28), v39, v58);
  *v43 = v40;
  return (*(v51 + 32))(v42, v35, v52);
}

void sub_1BA4999E0()
{
  sub_1B9F252FC();

  v0 = MEMORY[0x1E69E6158];
  v1 = sub_1BA4A5E18();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1BA4A5C18();
  sub_1BA4A5C98();
  v8 = sub_1BA4A5D08();

  *&v15 = v1;
  *(&v15 + 1) = v3;
  LOBYTE(v16) = v5 & 1;
  *(&v16 + 1) = v7;
  LOWORD(v17) = 256;
  *(&v17 + 1) = swift_getKeyPath();
  *&v18 = v8;
  *(&v18 + 1) = swift_getKeyPath();
  v19 = 0;
  sub_1BA49AB08(0, &qword_1EDC6E330, v0, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5460;
  *(v9 + 32) = sub_1BA498978();
  *(v9 + 40) = v10;
  *(v9 + 48) = 1802398028;
  *(v9 + 56) = 0xE400000000000000;
  v11 = sub_1BA4A6AE8();

  v12 = HKUIJoinStringsForAutomationIdentifier();

  if (v12)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA0D57D8();
    sub_1BA0D66E4(&qword_1EDC5EF08, sub_1BA0D57D8, sub_1BA0D5B8C);
    sub_1BA4A5F18();

    v13[2] = v17;
    v13[3] = v18;
    v14 = v19;
    v13[0] = v15;
    v13[1] = v16;
    sub_1BA492A30(v13, sub_1BA0D57D8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA499C18@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BA4A5878();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  sub_1BA49A32C(0, &qword_1EDC5F2F0, sub_1BA49A398);
  return sub_1BA498D48(v1, a1 + *(v3 + 44));
}

unint64_t sub_1BA499C90()
{
  result = qword_1EDC6D128;
  if (!qword_1EDC6D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6D128);
  }

  return result;
}

unint64_t sub_1BA499CE8()
{
  result = qword_1EDC6D130;
  if (!qword_1EDC6D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6D130);
  }

  return result;
}

unint64_t sub_1BA499D40()
{
  result = qword_1EDC6D110;
  if (!qword_1EDC6D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6D110);
  }

  return result;
}

unint64_t sub_1BA499D98()
{
  result = qword_1EDC6D118;
  if (!qword_1EDC6D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6D118);
  }

  return result;
}

uint64_t sub_1BA499DEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BA4A5588();
  *a1 = result;
  return result;
}

uint64_t sub_1BA499E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1BA499F64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706F546567616D69 && a2 == 0xEF676E6964646150;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6469576567616D69 && a2 == 0xEA00000000006874 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BA50B070 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1BA49A094(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6956726564616568 && a2 == 0xEF6C65646F4D7765;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BA4E9FF0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001BA4EA030 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BA4EA050 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BA4E1630 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E6964646170 && a2 == 0xE700000000000000 || (sub_1BA4A8338() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001BA50B090 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001BA50B0B0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void sub_1BA49A32C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A52C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BA49A3D4(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1BA493710(255, a3, a4, a5);
    v6 = sub_1BA4A6428();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1BA49A46C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1BA49AB08(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1BA4A5B08();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BA49A514(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1BA4937D4(255, a3, a4, a5, MEMORY[0x1E697E830]);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1BA49A584()
{
  if (!qword_1EDC5EBB0)
  {
    sub_1BA49A658(255);
    sub_1BA4A5848();
    sub_1BA49A920();
    sub_1BA4920F8(&qword_1EDC5EDC8, MEMORY[0x1E697C540]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5EBB0);
    }
  }
}

void sub_1BA49A6A0()
{
  if (!qword_1EDC5F130)
  {
    sub_1BA49A720();
    sub_1BA49A46C(255, &qword_1EDC5EC38, &qword_1EDC5EB98, MEMORY[0x1E69815C0]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F130);
    }
  }
}

void sub_1BA49A720()
{
  if (!qword_1EDC5EB70)
  {
    sub_1BA4937D4(255, &qword_1EDC5EE90, sub_1BA0D57D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1BA49A7C8();
    v0 = sub_1BA4A61F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EB70);
    }
  }
}

unint64_t sub_1BA49A7C8()
{
  result = qword_1EDC5EE98;
  if (!qword_1EDC5EE98)
  {
    sub_1BA4937D4(255, &qword_1EDC5EE90, sub_1BA0D57D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1BA0D66E4(&qword_1EDC5EF08, sub_1BA0D57D8, sub_1BA0D5B8C);
    sub_1BA4920F8(&qword_1EDC5EBF0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EE98);
  }

  return result;
}

unint64_t sub_1BA49A920()
{
  result = qword_1EDC5EFC0;
  if (!qword_1EDC5EFC0)
  {
    sub_1BA49A658(255);
    sub_1BA49A9D0();
    sub_1BA4920F8(&qword_1EDC5ECA8, sub_1BA49A8EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EFC0);
  }

  return result;
}

unint64_t sub_1BA49A9D0()
{
  result = qword_1EDC5F138;
  if (!qword_1EDC5F138)
  {
    sub_1BA49A6A0();
    sub_1BA4920F8(&qword_1EDC5EB78, sub_1BA49A720);
    sub_1B9F87940(&qword_1EDC5EC40, &qword_1EDC5EC38, &qword_1EDC5EB98, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F138);
  }

  return result;
}

uint64_t sub_1BA49AAA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BA49AB08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BA49AB58(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1B9F87940(&qword_1EDC5EC40, &qword_1EDC5EC38, &qword_1EDC5EB98, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA49ABFC()
{
  v1 = _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 40) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

void sub_1BA49AC7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA49ACE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA49AD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1BA49ADB4(unint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1BA4920F8(a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA49AE58()
{
  result = qword_1EDC5F168;
  if (!qword_1EDC5F168)
  {
    sub_1BA493AFC();
    sub_1BA4920F8(&qword_1EDC5ECC8, sub_1BA493B5C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F168);
  }

  return result;
}

uint64_t objectdestroy_81Tm()
{
  v1 = type metadata accessor for PromptTileView(0);
  v2 = *(*(v1 - 8) + 80);
  v12 = *(*(v1 - 8) + 64);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  sub_1B9F80960(*(v0 + v3), *(v0 + v3 + 8));
  sub_1B9F84D1C(*(v4 + 16), *(v4 + 24), *(v4 + 32));
  v5 = *(v1 + 24);
  sub_1BA49AC7C(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1BA4A53C8();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v4 + *(v1 + 28);

  v8 = *(type metadata accessor for PromptTileViewModel(0) + 32);
  v9 = sub_1BA4A2BF8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v12, v2 | 7);
}

uint64_t sub_1BA49B15C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void), uint64_t (*a7)(uint64_t, uint64_t))
{
  if (a4 != 1)
  {
    a6(result, a2, a3 & 1);

    return a7(a4, a5);
  }

  return result;
}

uint64_t sub_1BA49B26C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1BA4920F8(&qword_1EDC5EBF0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA49B3D4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA49B454(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1BA4937D4(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

void sub_1BA49B538()
{
  if (!qword_1EDC5EAA8)
  {
    sub_1BA49A398(255);
    sub_1BA4920F8(&qword_1EDC5E950, sub_1BA49A398);
    v0 = sub_1BA4A6268();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EAA8);
    }
  }
}

unint64_t sub_1BA49B5CC()
{
  result = qword_1EDC5EE10;
  if (!qword_1EDC5EE10)
  {
    sub_1BA4937D4(255, &qword_1EDC5EE08, sub_1BA0D62F4, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1BA49B3D4(&qword_1EDC5EE40, sub_1BA0D62F4, sub_1BA0D6574);
    sub_1BA4920F8(&qword_1EDC5EBF0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EE10);
  }

  return result;
}

unint64_t sub_1BA49B6F8()
{
  result = qword_1EBBF3470;
  if (!qword_1EBBF3470)
  {
    sub_1BA49A514(255, &qword_1EBBF3478, &qword_1EBBF3438, sub_1BA2C7558, MEMORY[0x1E697CBE8]);
    sub_1BA49B7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3470);
  }

  return result;
}

unint64_t sub_1BA49B7A8()
{
  result = qword_1EBBF3480;
  if (!qword_1EBBF3480)
  {
    sub_1BA4937D4(255, &qword_1EBBF3438, sub_1BA2C7558, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1BA49AB58(&qword_1EDC5F270, sub_1BA2C7558, sub_1BA2C7684);
    sub_1BA4920F8(&qword_1EDC5EBF0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3480);
  }

  return result;
}

uint64_t PDFBody.init(attributedString:renderMethod:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *(a3 + 8) = 0;
  *a3 = result;
  *(a3 + 9) = v3;
  return result;
}

uint64_t sub_1BA49B910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1B9F46920(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1B9F23224(v13);
}

void PDFBody.init(alignment:_:attributes:)(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 9) = 0;
  *(a2 + 8) = v3;
  v4 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v5 = sub_1BA4A6758();

  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v6 = sub_1BA4A6618();

  v7 = [v4 initWithString:v5 attributes:v6];

  *a2 = v7;
}

void PDFRenderable<>.render(context:document:)(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(&v42 + 1, a3, a4);
  v8 = BYTE1(v42);
  if (*(a2 + 96) == 1)
  {
    BYTE1(v42) ^= 1u;
    if ((v8 & 1) == 0)
    {
LABEL_3:
      type metadata accessor for PDFBuilder.Document();
      swift_initStackObject();
      v9 = sub_1BA20F244(a2);
      v10 = PDFBuilder.Document.drawingContext.getter();
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v43.origin.x = v10;
      v43.origin.y = v12;
      v43.size.width = v14;
      v43.size.height = v16;
      Width = CGRectGetWidth(v43);
      v18 = *(a4 + 8);
      v19 = v18(a3, a4);
      [v19 boundingRectWithSize:1 options:0 context:{CGRectGetWidth(*(v9 + 168)), INFINITY}];
      x = v44.origin.x;
      y = v44.origin.y;
      v22 = v44.size.width;
      height = v44.size.height;
      v24 = CGRectGetWidth(v44);
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = v22;
      v45.size.height = height;
      v25 = ceil(CGRectGetHeight(v45));
      v26 = *(v9 + 168);
      v27 = *(v9 + 176);

      v46.origin.x = v26;
      v46.origin.y = v27;
      v46.size.width = v24;
      v46.size.height = v25;
      v28 = Width - CGRectGetWidth(v46) + -1.0;
      v29 = *(v9 + 168);
      v30 = *(v9 + 176);
      v31 = *(v9 + 184);
      v32 = *(v9 + 192);
      v47.origin.x = v29;
      v47.origin.y = v30;
      v47.size.width = v31;
      v47.size.height = v32;
      v33 = v28 + CGRectGetMinX(v47);
      v48.origin.x = v29;
      v48.origin.y = v30;
      v48.size.width = v31;
      v48.size.height = v32;
      v34 = CGRectGetMinY(v48) + 0.0;
      v49.origin.x = v29;
      v49.origin.y = v30;
      v49.size.width = v31;
      v49.size.height = v32;
      v35 = CGRectGetWidth(v49) - v28;
      v50.origin.x = v29;
      v50.origin.y = v30;
      v50.size.width = v31;
      v50.size.height = v32;
      v36 = CGRectGetHeight(v50);
      *(v9 + 168) = v33;
      *(v9 + 176) = v34;
      *(v9 + 184) = v35;
      *(v9 + 192) = v36;
      *(v9 + 200) = 0;
      v37 = v18(a3, a4);
      (*(a4 + 24))(&v42, a3, a4);
      v41 = v42;
      v38.super.super.isa = a1;
      sub_1BA49C858(v38, v9, a2, &v41);

      return;
    }
  }

  else if (BYTE1(v42))
  {
    goto LABEL_3;
  }

  v39 = (*(a4 + 8))(a3, a4);
  (*(a4 + 24))(&v42, a3, a4);
  v41 = v42;
  v40.super.super.isa = a1;
  sub_1BA49C858(v40, a2, 0, &v41);
}

double PDFRenderable<>.boundingRectForContent(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8))(a2, a3);
  v11.origin.x = PDFBuilder.Document.drawingContext.getter();
  [v4 boundingRectWithSize:1 options:0 context:{CGRectGetWidth(v11), INFINITY}];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  CGRectGetWidth(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  CGRectGetHeight(v13);
  v9 = *(a1 + 168);

  return v9;
}

char *PDFAttributedStrings.init(alignment:lineSplit:items:)@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v46 = 0;
  v47 = v5;
  result = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v7 = result;
  v8 = 0;
  v9 = *(a3 + 16);
  v36 = v9;
  v37 = a3 + 32;
  v10 = &selRef_createHKUnitPreferenceController;
  v35 = result;
  while (1)
  {
    if (v8 == v9)
    {
      v11 = 0;
      v12 = 0uLL;
      v8 = v9;
      v13 = 0uLL;
      v14 = 0uLL;
      goto LABEL_7;
    }

    if (v8 >= *(a3 + 16))
    {
      break;
    }

    *&v40 = v8;
    sub_1BA4518A8(v37 + 48 * v8, &v40 + 8);
    v12 = v40;
    v13 = v41;
    v14 = v42;
    ++v8;
    v11 = v43;
LABEL_7:
    v44[0] = v12;
    v44[1] = v13;
    v44[2] = v14;
    v45 = v11;
    if (!v14)
    {

      v32 = v47;
      v33 = v46;
      *a4 = v7;
      *(a4 + 8) = v32;
      *(a4 + 9) = v33;
      return result;
    }

    v39 = v12;
    sub_1BA0956E8((v44 + 8), &v40);
    v15 = *(&v41 + 1);
    v16 = v42;
    __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
    v17 = (*(v16 + 8))(v15, v16);
    [v7 v10[254]];

    if (v39 != *(a3 + 16) - 1 && (a2 & 1) != 0)
    {
      v18 = *(&v41 + 1);
      v19 = v42;
      __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
      v20 = (*(v19 + 8))(v18, v19);
      result = [v20 length];
      v21 = result - 1;
      if (__OFSUB__(result, 1))
      {
        goto LABEL_14;
      }

      v22 = a3;
      v23 = v10;
      v24 = *(&v41 + 1);
      v25 = v42;
      __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
      v26 = (*(v25 + 8))(v24, v25);
      v27 = [v26 attributesAtIndex:v21 effectiveRange:0];

      type metadata accessor for Key(0);
      sub_1BA0262E4();
      sub_1BA4A6628();

      v28 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v29 = sub_1BA4A6758();
      v30 = sub_1BA4A6618();
      v10 = v23;
      a3 = v22;
      v7 = v35;
      v9 = v36;

      v31 = [v28 initWithString:v29 attributes:v30];

      [v35 v10 + 411];
    }

    result = __swift_destroy_boxed_opaque_existential_1(&v40);
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t NSAttributedString.font.getter()
{
  v10 = 0;
  result = [v0 length];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = *MEMORY[0x1E69DB648];
    v4 = swift_allocObject();
    *(v4 + 16) = &v10;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1BA49D86C;
    *(v5 + 24) = v4;
    aBlock[4] = sub_1BA49D874;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA49B910;
    aBlock[3] = &block_descriptor_129;
    v6 = _Block_copy(aBlock);

    [v0 enumerateAttribute:v3 inRange:0 options:v2 usingBlock:{0x100000, v6}];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v8 = v10;

      return v8;
    }
  }

  __break(1u);
  return result;
}

void sub_1BA49C370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  sub_1B9FF168C(a1, v8);
  if (v9)
  {
    sub_1B9F0ADF8(0, &unk_1EDC5E210);
    if (swift_dynamicCast())
    {
      v6 = *a5;
      *a5 = v7;
    }
  }

  else
  {
    sub_1B9F23224(v8);
  }
}

double NSAttributedString.boundingRectForContent(in:)(uint64_t a1)
{
  v2 = v1;
  v9.origin.x = PDFBuilder.Document.drawingContext.getter();
  [v2 boundingRectWithSize:1 options:0 context:{CGRectGetWidth(v9), INFINITY}];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  CGRectGetWidth(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGRectGetHeight(v11);
  return *(a1 + 168);
}

double NSAttributedString.minimumBoundingRectForContent(in:)(uint64_t a1)
{
  v2 = NSAttributedString.font.getter();
  if (v2)
  {
    v3 = v2;
    [v2 lineHeight];
  }

  else
  {
    if (qword_1EBBE8438 != -1)
    {
      swift_once();
    }

    [qword_1EBBED250 lineHeight];
  }

  sub_1BA4A73B8();
  v5.origin.x = PDFBuilder.Document.drawingContext.getter();
  CGRectGetWidth(v5);
  return *(a1 + 168);
}

void NSAttributedString.render(context:document:)(UIGraphicsPDFRendererContext a1, uint64_t a2)
{
  v3 = v2;
  v43 = *MEMORY[0x1E69E9840];
  Length = CFAttributedStringGetLength(v2);
  v7 = NSAttributedString.font.getter();
  if (v7)
  {
    v8 = v7;
    [v7 lineHeight];
    v10 = v9;
  }

  else
  {
    if (qword_1EBBE8438 != -1)
    {
LABEL_16:
      swift_once();
    }

    [qword_1EBBED250 lineHeight];
    v10 = v11;
  }

  sub_1BA4A73B8();
  v13 = v12;
  v45.origin.x = PDFBuilder.Document.drawingContext.getter();
  Width = CGRectGetWidth(v45);
  if (v13 >= Width)
  {
    v15 = Width;
  }

  else
  {
    v15 = v13;
  }

  v16 = ceil(v10);
  v46 = *(a2 + 168);
  x = v46.origin.x;
  y = v46.origin.y;
  if (!CGRectContainsRect(v46, *(&v15 - 2)))
  {
    PDFBuilder.Document.moveToNextDrawableRegion(in:)(a1);
  }

  v19 = 0;
  v41 = 0x7FF0000000000000;
  while (1)
  {
    v20 = CTFramesetterCreateWithAttributedString(v3);
    fitRange.location = 0;
    fitRange.length = 0;
    v44.location = v19;
    v44.length = 0;
    v21 = CTFramesetterSuggestFrameSizeWithConstraints(v20, v44, 0, *(a2 + 184), &fitRange);
    v22 = [(__CFAttributedString *)v3 attributedSubstringFromRange:fitRange.location, fitRange.length, v21.width, v21.height];
    [v22 boundingRectWithSize:1 options:0 context:{CGRectGetWidth(*(a2 + 168)), INFINITY}];
    v23 = v47.origin.x;
    v24 = v47.origin.y;
    v25 = v47.size.width;
    height = v47.size.height;
    v27 = CGRectGetWidth(v47);
    v48.origin.x = v23;
    v48.origin.y = v24;
    v48.size.width = v25;
    v48.size.height = height;
    v28 = ceil(CGRectGetHeight(v48));
    v29 = *(a2 + 168);
    v30 = *(a2 + 176);
    [v22 drawInRect_];
    v49.origin.x = v29;
    v49.origin.y = v30;
    v49.size.width = v27;
    v49.size.height = v28;
    v31 = CGRectGetHeight(v49);
    v32 = *(a2 + 168);
    v33 = *(a2 + 176);
    v34 = *(a2 + 184);
    v35 = *(a2 + 192);
    v50.origin.x = v32;
    v50.origin.y = v33;
    v50.size.width = v34;
    v50.size.height = v35;
    v36 = CGRectGetMinX(v50) + 0.0;
    v51.origin.x = v32;
    v51.origin.y = v33;
    v51.size.width = v34;
    v51.size.height = v35;
    v37 = v31 + CGRectGetMinY(v51);
    v52.origin.x = v32;
    v52.origin.y = v33;
    v52.size.width = v34;
    v52.size.height = v35;
    v38 = CGRectGetWidth(v52);
    v53.origin.x = v32;
    v53.origin.y = v33;
    v53.size.width = v34;
    v53.size.height = v35;
    v39 = CGRectGetHeight(v53);
    *(a2 + 168) = v36;
    *(a2 + 176) = v37;
    *(a2 + 184) = v38;
    *(a2 + 192) = v39 - v31;
    *(a2 + 200) = 0;
    v40 = __OFADD__(v19, fitRange.length);
    v19 += fitRange.length;
    if (v40)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v19 == Length)
    {
      break;
    }

    PDFBuilder.Document.moveToNextDrawableRegion(in:)(a1);
  }
}

void sub_1BA49C858(UIGraphicsPDFRendererContext a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = v4;
  v79 = *MEMORY[0x1E69E9840];
  LOBYTE(v9) = *a4;
  Length = CFAttributedStringGetLength(v4);
  v11 = NSAttributedString.font.getter();
  if (!v11)
  {
    if (qword_1EBBE8438 != -1)
    {
      goto LABEL_25;
    }

    goto LABEL_4;
  }

  v12 = v11;
  [v11 lineHeight];
  v14 = v13;

  while (1)
  {
    sub_1BA4A73B8();
    v17 = v16;
    v81.origin.x = PDFBuilder.Document.drawingContext.getter();
    Width = CGRectGetWidth(v81);
    if (v17 >= Width)
    {
      v19 = Width;
    }

    else
    {
      v19 = v17;
    }

    v20 = ceil(v14);
    v82 = *(a2 + 168);
    x = v82.origin.x;
    y = v82.origin.y;
    if (!CGRectContainsRect(v82, *(&v19 - 2)))
    {
      PDFBuilder.Document.moveToNextDrawableRegion(in:)(a1);
      if (a3)
      {
        swift_beginAccess();
        v23 = *(a2 + 160);
        swift_beginAccess();
        *(a3 + 160) = v23;
        *(a3 + 120) = *(a2 + 120);

        sub_1BA20F060();
      }
    }

    if (v9)
    {
      break;
    }

    swift_beginAccess();
    v9 = 0;
    while (1)
    {
      v44 = CTFramesetterCreateWithAttributedString(v5);
      fitRange.location = 0;
      fitRange.length = 0;
      v80.location = v9;
      v80.length = 0;
      v45 = CTFramesetterSuggestFrameSizeWithConstraints(v44, v80, 0, *(a2 + 184), &fitRange);
      v46 = [(__CFAttributedString *)v5 attributedSubstringFromRange:fitRange.location, fitRange.length, v45.width, v45.height];
      [v46 boundingRectWithSize:1 options:0 context:{CGRectGetWidth(*(a2 + 168)), INFINITY}];
      v47 = v91.origin.x;
      v48 = v91.origin.y;
      v49 = v91.size.width;
      height = v91.size.height;
      v51 = CGRectGetWidth(v91);
      v92.origin.x = v47;
      v92.origin.y = v48;
      v92.size.width = v49;
      v92.size.height = height;
      v52 = ceil(CGRectGetHeight(v92));
      v53 = *(a2 + 168);
      v54 = *(a2 + 176);
      [v46 drawInRect_];
      v74 = v53;
      v75 = v52;
      v93.origin.x = v53;
      v93.origin.y = v54;
      rect = v51;
      v93.size.width = v51;
      v93.size.height = v52;
      v55 = CGRectGetHeight(v93);
      v56 = *(a2 + 168);
      v57 = *(a2 + 176);
      v58 = *(a2 + 184);
      v59 = *(a2 + 192);
      v94.origin.x = v56;
      v94.origin.y = v57;
      v94.size.width = v58;
      v94.size.height = v59;
      v77 = CGRectGetMinX(v94) + 0.0;
      v95.origin.x = v56;
      v95.origin.y = v57;
      v95.size.width = v58;
      v95.size.height = v59;
      v60 = v55 + CGRectGetMinY(v95);
      v96.origin.x = v56;
      v96.origin.y = v57;
      v96.size.width = v58;
      v96.size.height = v59;
      v61 = CGRectGetWidth(v96);
      v97.origin.x = v56;
      v97.origin.y = v57;
      v97.size.width = v58;
      v97.size.height = v59;
      v62 = CGRectGetHeight(v97);
      *(a2 + 168) = v77;
      *(a2 + 176) = v60;
      *(a2 + 184) = v61;
      *(a2 + 192) = v62 - v55;
      *(a2 + 200) = 0;
      if (a3)
      {
        v98.origin.x = v74;
        v98.size.height = v75;
        v98.origin.y = v54;
        v98.size.width = rect;
        v63 = CGRectGetHeight(v98);
        v99.origin.x = PDFBuilder.Document.drawingContext.getter();
        v64 = v99.origin.x;
        v65 = v99.origin.y;
        v66 = v99.size.width;
        v67 = v99.size.height;
        v68 = CGRectGetMinX(v99) + 0.0;
        v100.origin.x = v64;
        v100.origin.y = v65;
        v100.size.width = v66;
        v100.size.height = v67;
        v69 = v63 + CGRectGetMinY(v100);
        v101.origin.x = v64;
        v101.origin.y = v65;
        v101.size.width = v66;
        v101.size.height = v67;
        v70 = CGRectGetWidth(v101);
        v102.origin.x = v64;
        v102.origin.y = v65;
        v102.size.width = v66;
        v102.size.height = v67;
        v71 = CGRectGetHeight(v102);
        *(a3 + 168) = v68;
        *(a3 + 176) = v69;
        *(a3 + 184) = v70;
        *(a3 + 192) = v71 - v63;
        *(a3 + 200) = 0;
      }

      v72 = __OFADD__(v9, fitRange.length);
      v9 += fitRange.length;
      if (v72)
      {
        break;
      }

      if (v9 == Length)
      {

        return;
      }

      PDFBuilder.Document.moveToNextDrawableRegion(in:)(a1);
      if (a3)
      {
        v73 = *(a2 + 160);
        swift_beginAccess();
        *(a3 + 160) = v73;
        *(a3 + 120) = *(a2 + 120);

        sub_1BA20F060();
      }
    }

    __break(1u);
LABEL_25:
    swift_once();
LABEL_4:
    [qword_1EBBED250 lineHeight];
    v14 = v15;
  }

  [(__CFAttributedString *)v5 drawAtPoint:*(a2 + 168), *(a2 + 176)];
  [(__CFAttributedString *)v5 size];
  v25 = v24;
  v26 = *(a2 + 168);
  v27 = *(a2 + 176);
  v28 = *(a2 + 184);
  v29 = *(a2 + 192);
  v83.origin.x = v26;
  v83.origin.y = v27;
  v83.size.width = v28;
  v83.size.height = v29;
  v30 = CGRectGetMinX(v83) + 0.0;
  v84.origin.x = v26;
  v84.origin.y = v27;
  v84.size.width = v28;
  v84.size.height = v29;
  v31 = v25 + CGRectGetMinY(v84);
  v85.origin.x = v26;
  v85.origin.y = v27;
  v85.size.width = v28;
  v85.size.height = v29;
  v32 = CGRectGetWidth(v85);
  v86.origin.x = v26;
  v86.origin.y = v27;
  v86.size.width = v28;
  v86.size.height = v29;
  v33 = CGRectGetHeight(v86);
  *(a2 + 168) = v30;
  *(a2 + 176) = v31;
  *(a2 + 184) = v32;
  *(a2 + 192) = v33 - v25;
  *(a2 + 200) = 0;
  if (a3)
  {
    [(__CFAttributedString *)v5 size];
    v35 = v34;
    v87.origin.x = PDFBuilder.Document.drawingContext.getter();
    v36 = v87.origin.x;
    v37 = v87.origin.y;
    v38 = v87.size.width;
    v39 = v87.size.height;
    v40 = CGRectGetMinX(v87) + 0.0;
    v88.origin.x = v36;
    v88.origin.y = v37;
    v88.size.width = v38;
    v88.size.height = v39;
    v41 = v35 + CGRectGetMinY(v88);
    v89.origin.x = v36;
    v89.origin.y = v37;
    v89.size.width = v38;
    v89.size.height = v39;
    v42 = CGRectGetWidth(v89);
    v90.origin.x = v36;
    v90.origin.y = v37;
    v90.size.width = v38;
    v90.size.height = v39;
    v43 = CGRectGetHeight(v90);
    *(a3 + 168) = v40;
    *(a3 + 176) = v41;
    *(a3 + 184) = v42;
    *(a3 + 192) = v43 - v35;
    *(a3 + 200) = 0;
  }
}

double sub_1BA49CDFC(uint64_t a1)
{
  v3 = *v1;
  v9.origin.x = PDFBuilder.Document.drawingContext.getter();
  [v3 boundingRectWithSize:1 options:0 context:{CGRectGetWidth(v9), INFINITY}];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  CGRectGetWidth(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGRectGetHeight(v11);
  return *(a1 + 168);
}

double PDFRenderable<>.minimumBoundingRectForContent(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8))(a2, a3);
  v5 = NSAttributedString.font.getter();
  if (v5)
  {
    v6 = v5;
    [v5 lineHeight];
  }

  else
  {
    if (qword_1EBBE8438 != -1)
    {
      swift_once();
    }

    [qword_1EBBED250 lineHeight];
  }

  sub_1BA4A73B8();
  v9.origin.x = PDFBuilder.Document.drawingContext.getter();
  CGRectGetWidth(v9);
  v7 = *(a1 + 168);

  return v7;
}

char *PDFAttributedStrings.init(alignment:lineSplit:_:)@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v10 = *a1;
  v6 = a3();
  result = PDFAttributedStrings.init(alignment:lineSplit:items:)(&v10, a2, v6, &v11);
  v8 = v12;
  v9 = v13;
  *a4 = v11;
  *(a4 + 8) = v8;
  *(a4 + 9) = v9;
  return result;
}

uint64_t sub_1BA49D0A4(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1BA3265EC(a1, a2, *v2, v3 | *(v2 + 8));
}

void _s18HealthExperienceUI10PDFCaptionV_9alignment10attributesACSS_AA16PDFTextAlignmentOSDySo21NSAttributedStringKeyaypGtcfC_0(char *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 9) = 0;
  *(a2 + 8) = v3;
  v4 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v5 = sub_1BA4A6758();

  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v6 = sub_1BA4A6618();

  v7 = [v4 initWithString:v5 attributes:v6];

  *a2 = v7;
}

uint64_t PDFBodyList.init(_:alignment:attributes:boldAttributes:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 8) = *a3;
  sub_1BA49D89C(a1, a2, a4);
  v7 = v6;

  *a5 = v7;
  return result;
}

unint64_t sub_1BA49D4AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1BA4A69E8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1BA280158(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1BA280158((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1BA4A69B8();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1BA4A68E8();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1BA4A68E8();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1BA4A69E8();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1BA280158(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1BA4A69E8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1BA280158(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1BA280158((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1BA4A68E8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void sub_1BA49D89C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v80 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  *&v92 = 10;
  *(&v92 + 1) = 0xE100000000000000;
  v89 = &v92;

  v7 = sub_1BA49D4AC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B9F13F84, v88, a1, a2, v6);
  v8 = v7;
  v79 = *(v7 + 16);
  if (v79)
  {
    v9 = 0;
    v10 = 0;
    v77 = a3;
    v78 = v7 + 32;
    v11 = 0xE000000000000000;
    v76 = v7;
    do
    {
      v16 = v9;
      v81 = v11;
      v82 = v10;
      while (1)
      {
        v17 = *(v8 + 16);
        if (v16 >= v17)
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }

        v18 = (v78 + 32 * v16);
        v19 = *v18;
        v20 = v18[1];
        v22 = v18[2];
        v21 = v18[3];
        v86 = v16;
        v87 = v16 + 1;
        v85 = v17 - 1;
        v23 = v20 >> 14;
        v24 = *v18 >> 14;

        if (v24 != v20 >> 14)
        {
          break;
        }

LABEL_12:
        if (v86 != v85)
        {
          *&v92 = 10;
          *(&v92 + 1) = 0xE100000000000000;
          v28 = MEMORY[0x1BFAF12A0](v19, v20, v22, v21);
          v30 = v29;

          *&v91[0] = v28;
          *(&v91[0] + 1) = v30;
          sub_1BA4A6908();
          v19 = sub_1BA4A7B08();
          v20 = v31;
          v22 = v32;
          v21 = v33;
        }

        v8 = v76;
        a3 = v77;
        v11 = v81;
        MEMORY[0x1BFAF12A0](v19, v20, v22, v21);

        v34 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v35 = sub_1BA4A6758();

        type metadata accessor for Key(0);
        sub_1BA0262E4();
        v36 = sub_1BA4A6618();
        v37 = [v34 initWithString:v35 attributes:v36];

        [v80 appendAttributedString_];
        v16 = v87;
        v10 = v82;
        if (v87 == v79)
        {
          goto LABEL_22;
        }
      }

      v25 = v19 >> 14;
      while (sub_1BA4A7AF8() != 32 || v26 != 0xE100000000000000)
      {
        v27 = sub_1BA4A8338();

        if (v27)
        {
          goto LABEL_17;
        }

        v25 = sub_1BA4A7AD8() >> 14;
        if (v25 == v23)
        {
          goto LABEL_12;
        }
      }

LABEL_17:

      if (v25 < v24)
      {
        goto LABEL_29;
      }

      v38 = sub_1BA4A7B18();
      v83 = v39;
      v41 = v40;
      v43 = v42;

      v44 = MEMORY[0x1BFAF12A0](v38, v83, v41, v43);
      v46 = v45;

      if (v23 < v25)
      {
        goto LABEL_30;
      }

      v47 = v44;
      v48 = sub_1BA4A7B18();
      v50 = v49;
      v51 = v46;
      v53 = v52;
      v55 = v54;

      v56 = MEMORY[0x1BFAF12A0](v48, v50, v53, v55);
      v58 = v57;

      v59 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v84 = v47;
      v60 = sub_1BA4A6758();
      type metadata accessor for Key(0);
      sub_1BA0262E4();
      v61 = sub_1BA4A6618();
      v62 = [v59 initWithString:v60 attributes:v61];

      v11 = v51;
      if (v86 != v85)
      {
        *&v92 = v56;
        *(&v92 + 1) = v58;

        MEMORY[0x1BFAF1350](10, 0xE100000000000000);
      }

      v8 = v76;
      a3 = v77;
      v12 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v13 = sub_1BA4A6758();

      v14 = sub_1BA4A6618();
      v15 = [v12 initWithString:v13 attributes:v14];

      [v80 appendAttributedString_];
      [v80 appendAttributedString_];

      v9 = v87;
      v10 = v84;
    }

    while (v87 != v79);
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

LABEL_22:

  v63 = *MEMORY[0x1E69DB688];
  if (*(a3 + 16) && (v64 = sub_1B9F4E588(*MEMORY[0x1E69DB688]), (v65 & 1) != 0) && (sub_1B9F0AD9C(*(a3 + 56) + 32 * v64, &v92), sub_1B9F0ADF8(0, &qword_1EDC5E340), (swift_dynamicCast() & 1) != 0))
  {
    v66 = *&v91[0];
  }

  else
  {
    v66 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  }

  *&v92 = v10;
  *(&v92 + 1) = v11;
  MEMORY[0x1BFAF1350](32, 0xE100000000000000);
  v67 = sub_1BA4A6758();

  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v68 = sub_1BA4A6618();
  [v67 sizeWithAttributes_];
  v70 = v69;

  [v66 setFirstLineHeadIndent_];
  [v66 setHeadIndent_];
  v71 = sub_1B9FDB1C4(MEMORY[0x1E69E7CC0]);
  v93 = sub_1B9F0ADF8(0, &qword_1EDC5E340);
  *&v92 = v66;
  sub_1B9F46920(&v92, v91);
  v72 = v66;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90 = v71;
  sub_1B9FF1D74(v91, v63, isUniquelyReferenced_nonNull_native);
  v74 = sub_1BA4A6618();

  v75 = v80;
  [v75 addAttributes:v74 range:{0, objc_msgSend(v75, sel_length)}];
}

unint64_t sub_1BA49E02C()
{
  result = qword_1EBBF3488;
  if (!qword_1EBBF3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3488);
  }

  return result;
}

unint64_t sub_1BA49E084()
{
  result = qword_1EBBF3490;
  if (!qword_1EBBF3490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3490);
  }

  return result;
}

uint64_t sub_1BA49E264(uint64_t a1)
{
  v3 = type metadata accessor for MultiColumnDataSource.LayoutEngine();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 32) = 0x4072C00000000000;
  swift_beginAccess();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v4 + 40) = 1;
  v8[3] = v3;
  v8[4] = &protocol witness table for MultiColumnDataSource.LayoutEngine;
  v8[0] = v4;
  v5 = *(v1 + 656);

  v6 = v5(a1, v8);
  *(v4 + 24) = &protocol witness table for MultiColumnDataSource;
  swift_unknownObjectWeakAssign();

  return v6;
}

uint64_t MultiColumnDataSource.__allocating_init(_:)(uint64_t a1)
{
  v3 = type metadata accessor for MultiColumnDataSource.LayoutEngine();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 32) = 0x4072C00000000000;
  swift_beginAccess();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v4 + 40) = 1;
  v8[3] = v3;
  v8[4] = &protocol witness table for MultiColumnDataSource.LayoutEngine;
  v8[0] = v4;
  v5 = *(v1 + 648);

  v6 = v5(a1, v8);
  *(v4 + 24) = &protocol witness table for MultiColumnDataSource;
  swift_unknownObjectWeakAssign();

  return v6;
}

uint64_t sub_1BA49E44C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 8);
  v4 = [v3 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  v6 = sub_1BA4A7548();
  v7 = sub_1BA4A7528();

  v8 = [v3 traitCollection];
  v9 = sub_1BA4A7368();

  if ((v7 & 1) != 0 || v9 == 2 || v9 == 1)
  {

    return 1;
  }

  else
  {
    v11 = sub_1BA49F8D4(v2 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_layoutProvider, *(v2 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_columnItems));

    v12 = *(v11 + 16);

    return v12;
  }
}

uint64_t sub_1BA49E550()
{
  v1 = *(sub_1BA49F8D4(v0 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_layoutProvider, *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_columnItems)) + 16);

  return v1;
}

uint64_t sub_1BA49E594(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  sub_1B9F0A534(a2, v6);
  v4 = sub_1BA49FC08(a1, v6);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v4;
}

uint64_t sub_1BA49E60C(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  sub_1B9F0A534(a2, v7);
  sub_1BA49EE0C(a1, v7);
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v5;
}

uint64_t MultiColumnDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_layoutProvider);
  return v0;
}

uint64_t sub_1BA49E7CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_columnItems);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1B9F39554(0, v2, 0);
    v3 = v9;
    v4 = (v1 + 64);
    do
    {
      v5 = *(v9 + 16);
      v6 = *(v9 + 24);
      v8 = *v4;
      swift_unknownObjectRetain();
      if (v5 >= v6 >> 1)
      {
        sub_1B9F39554((v6 > 1), v5 + 1, 1);
      }

      *(v9 + 16) = v5 + 1;
      *(v9 + 16 * v5 + 32) = v8;
      v4 = (v4 + 72);
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1BA49E8A4()
{
  v1 = v0;
  sub_1B9F12538();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA49F8D4(v1 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_layoutProvider, *(v1 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_columnItems));
  v49 = *(v7 + 16);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v8, v3);
  v9 = sub_1BA4A4578();
  (*(v4 + 8))(v6, v3);
  v10 = *(v9 + 16);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  result = swift_beginAccess();
  if (v10)
  {
    v13 = 0;
    v14 = v9 + 40;
    v46 = v10 - 1;
    v15 = MEMORY[0x1E69E7CC0];
    v47 = v9 + 40;
    v48 = v7;
    while (1)
    {
      v16 = (v14 + 16 * v13);
      v17 = v13;
      while (1)
      {
        if (v17 >= *(v9 + 16))
        {
          __break(1u);
          return result;
        }

        v18 = *(v1 + v11);
        if (*(v18 + 16))
        {
          break;
        }

LABEL_4:
        ++v17;
        v16 += 2;
        if (v10 == v17)
        {
          v7 = v48;
          goto LABEL_18;
        }
      }

      v19 = *(v16 - 1);
      v20 = *v16;

      v21 = sub_1B9F24A34(v19, v20);
      if ((v22 & 1) == 0)
      {
        break;
      }

      v23 = (*(v18 + 56) + 48 * v21);
      v25 = *v23;
      v24 = v23[1];
      v26 = v23[2];
      v40 = v23[3];
      v41 = v25;
      v27 = v23[5];
      v43 = v23[4];
      v44 = v24;

      v45 = v26;
      v28 = v40;

      v42 = v27;

      result = swift_isUniquelyReferenced_nonNull_native();
      v29 = v41;
      if ((result & 1) == 0)
      {
        result = sub_1B9F21540(0, *(v15 + 16) + 1, 1, v15);
        v15 = result;
      }

      v31 = *(v15 + 16);
      v30 = *(v15 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_1B9F21540((v30 > 1), v31 + 1, 1, v15);
        v15 = result;
      }

      v13 = v17 + 1;
      *(v15 + 16) = v31 + 1;
      v32 = (v15 + 48 * v31);
      v34 = v44;
      v33 = v45;
      v32[4] = v29;
      v32[5] = v34;
      v32[6] = v33;
      v32[7] = v28;
      v35 = v42;
      v32[8] = v43;
      v32[9] = v35;
      v14 = v47;
      v36 = v46 == v17;
      v7 = v48;
      if (v36)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_4;
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_18:

  if (*(v15 + 16))
  {
    v37 = *(v15 + 48);

    v38 = *(v37 + 16);

    if (v49 == v38)
    {
    }
  }

  else
  {
  }

  v39 = sub_1B9FE4F98(v7);

  sub_1BA0EB668(0, v39, 1);
}

uint64_t MultiColumnDataSource.LayoutEngine.__allocating_init(columnDelegate:collapseEmptySections:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 32) = 0x4072C00000000000;
  swift_beginAccess();
  *(v5 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v5 + 40) = a3;
  return v5;
}

uint64_t MultiColumnDataSource.__allocating_init(_:layoutProvider:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1BA49FC08(a1, a2);

  return v4;
}

uint64_t MultiColumnDataSource.init(_:layoutProvider:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BA49FC08(a1, a2);

  return v2;
}

void sub_1BA49EE0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_childDataSourcesChangesSink) = 0;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_columnItems) = a1;
  sub_1B9F0A534(a2, v3 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_layoutProvider);
  sub_1B9FF6758();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;

  v11 = sub_1BA49F8D4(a2, a1);

  v12 = sub_1B9FE4F98(v11);

  sub_1BA4A1788();
  v13 = sub_1BA4A1748();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  v16 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = sub_1B9F1C5F0(v16);
  *(inited + 32) = 0;
  *(inited + 40) = 0;

  *(inited + 48) = v12;
  v17 = Array<A>.identifierToIndexDict()(v12);

  *(inited + 56) = v17;
  *(inited + 64) = v13;
  *(inited + 72) = v15;
  v29 = a2;
  sub_1B9F0A534(a2, v30);
  v18 = swift_allocObject();
  sub_1B9F1134C(v30, v18 + 16);
  v19 = sub_1B9F2E074(inited, 1, sub_1BA4A03BC, v18);

  v20 = sub_1BA49E7CC();
  v21 = v20;
  v22 = *(v20 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = (v20 + 40);
    while (v23 < *(v21 + 16))
    {
      ++v23;
      v25 = *v24;
      ObjectType = swift_getObjectType();
      v27 = *(v25 + 40);
      swift_unknownObjectRetain();
      v28 = v27(ObjectType, v25);
      [v28 registerObserver_];
      swift_unknownObjectRelease();

      v24 += 2;
      if (v22 == v23)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    __swift_destroy_boxed_opaque_existential_1(v29);
  }
}

uint64_t sub_1BA49F0F0(__int128 *a1, void *a2)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v7 = v6;
  v8 = v2;
  return (*(v4 + 8))(&v7, v3, v4);
}

void (*sub_1BA49F278(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1BA0970B4;
}

uint64_t MultiColumnDataSource.LayoutEngine.init(columnDelegate:collapseEmptySections:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 32) = 0x4072C00000000000;
  swift_beginAccess();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v3 + 40) = a3;
  return v3;
}

uint64_t sub_1BA49F394(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v27[0] = v3;
    v27[1] = v2;
    v27[2] = v4;
    v7 = (*(v5 + 8))(v27, ObjectType, v5);
    swift_unknownObjectRelease();
    v8 = objc_opt_self();
    v9 = [v8 fractionalWidthDimension_];
    v10 = [v8 estimatedDimension_];
    v11 = objc_opt_self();
    v12 = [v11 sizeWithWidthDimension:v9 heightDimension:v10];

    v13 = [objc_opt_self() itemWithLayoutSize_];
    v14 = objc_opt_self();
    v15 = [v8 fractionalWidthDimension_];
    v16 = [v8 estimatedDimension_];
    v17 = [v11 sizeWithWidthDimension:v15 heightDimension:v16];

    v18 = [v14 horizontalGroupWithLayoutSize:v17 repeatingSubitem:v13 count:v7];
    v19 = objc_opt_self();
    v20 = [v2 traitCollection];
    sub_1BA4A7368();

    sub_1BA4A6598();
    v21 = [v19 fixedSpacing_];
    [v18 setInterItemSpacing_];

    v22 = [objc_opt_self() sectionWithGroup_];
    return v22;
  }

  else
  {
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](91, 0xE100000000000000);
    v24 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v24);

    MEMORY[0x1BFAF1350](0xD00000000000003CLL, 0x80000001BA50B100);
    swift_unknownObjectRetain();
    v25 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v25);

    sub_1B9FF806C();
    swift_allocError();
    *v26 = 0;
    *(v26 + 8) = 0xE000000000000000;
    *(v26 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t MultiColumnDataSource.LayoutEngine.__deallocating_deinit()
{
  sub_1B9FAB600(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA49F7FC()
{

  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_layoutProvider;

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_1BA49F850()
{
  MultiColumnDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA49F8D4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = a2 + 32;
    v35 = a2 + 32;
LABEL_3:
    v7 = v6 + 72 * v5;
    v8 = v5;
    while (v8 < v2)
    {
      v9 = *(v7 + 48);
      v38 = *(v7 + 32);
      v39 = v9;
      v40 = *(v7 + 64);
      v10 = *(v7 + 16);
      v36 = *v7;
      v37 = v10;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_28;
      }

      v11 = *(v7 + 48);
      *&v42[40] = *(v7 + 32);
      *&v42[56] = v11;
      v42[72] = *(v7 + 64);
      v12 = *v7;
      *&v42[24] = *(v7 + 16);
      *&v42[8] = v12;
      *v42 = v8;
      v13 = *&v42[48];
      ObjectType = swift_getObjectType();
      sub_1BA038EEC(&v36, v41);
      if (!SnapshotDataSource.isEmpty.getter(ObjectType, v13) || (v15 = v4[3], v16 = v4[4], __swift_project_boxed_opaque_existential_1(v4, v15), ((*(v16 + 16))(v8, v15, v16) & 1) == 0))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v43 = v3;
        if ((result & 1) == 0)
        {
          result = sub_1BA066C24(0, *(v3 + 16) + 1, 1);
          v3 = v43;
        }

        v6 = v35;
        v18 = *(v3 + 16);
        v17 = *(v3 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_1BA066C24((v17 > 1), v18 + 1, 1);
          v3 = v43;
        }

        *(v3 + 16) = v18 + 1;
        v19 = (v3 + 80 * v18);
        v19[2] = *v42;
        v20 = *&v42[16];
        v21 = *&v42[32];
        v22 = *&v42[48];
        *(v19 + 89) = *&v42[57];
        v19[4] = v21;
        v19[5] = v22;
        v19[3] = v20;
        if (v5 != v2)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }

      result = sub_1BA4A03D8(v42);
      ++v8;
      v7 += 72;
      if (v5 == v2)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_27;
  }

LABEL_15:
  v23 = *(v3 + 16);
  if (!v23)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v41[0] = MEMORY[0x1E69E7CC0];
  result = sub_1BA066BEC(0, v23, 0);
  if (*(v3 + 16))
  {
    v24 = 0;
    v25 = v41[0];
    v26 = 32;
    while (1)
    {
      *v42 = *(v3 + v26);
      v27 = *(v3 + v26 + 16);
      v28 = *(v3 + v26 + 32);
      v29 = *(v3 + v26 + 48);
      *&v42[57] = *(v3 + v26 + 57);
      *&v42[32] = v28;
      *&v42[48] = v29;
      *&v42[16] = v27;
      sub_1BA4A0498(v42, &v36);
      v41[0] = v25;
      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1BA066BEC((v30 > 1), v31 + 1, 1);
        v25 = v41[0];
      }

      *(&v37 + 1) = &type metadata for EmbeddedDataSourceCollectionViewCell.Item;
      *&v38 = sub_1BA44AB60();
      v32 = swift_allocObject();
      *&v36 = v32;
      v33 = *&v42[24];
      v34 = *&v42[56];
      *(v32 + 48) = *&v42[40];
      *(v32 + 64) = v34;
      *(v32 + 80) = v42[72];
      *(v32 + 16) = *&v42[8];
      *(v32 + 32) = v33;
      *(v25 + 16) = v31 + 1;
      result = sub_1B9F1134C(&v36, v25 + 40 * v31 + 32);
      if (v23 - 1 == v24)
      {
        break;
      }

      ++v24;
      v26 += 80;
      if (v24 >= *(v3 + 16))
      {
        goto LABEL_26;
      }
    }

    return v25;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1BA49FC08(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BA4A1798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_childDataSourcesChangesSink) = 0;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  v47 = v8;
  v45 = a1;
  if (v8)
  {
    v41 = v6;
    v42 = v5;
    v43 = v2;
    v44 = a2;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1BA066C44(0, v8, 0);
    v49 = type metadata accessor for EmbeddedDataSourceCollectionViewCell();
    v10 = v53;
    v11 = (a1 + 32);
    v48 = sub_1BA038E58();
    do
    {
      v51 = *v11;
      *&v52[0] = v49;
      swift_unknownObjectRetain();
      v50 = sub_1BA4A6808();
      v13 = v12;
      ObjectType = swift_getObjectType();
      v15 = *(&v51 + 1);
      v16 = *(*(&v51 + 1) + 8);
      swift_unknownObjectRetain();
      v17 = v16(ObjectType, v15);
      *&v52[0] = 0x6465646465626D45;
      *(&v52[0] + 1) = 0xE90000000000005FLL;
      MEMORY[0x1BFAF1350](v17);

      v18 = v52[0];
      v19 = swift_allocObject();
      *(v19 + 16) = v51;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_1BA038EA0;
      *(v20 + 24) = v19;
      v53 = v10;
      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1BA066C44((v21 > 1), v22 + 1, 1);
        v10 = v53;
      }

      *(v10 + 16) = v22 + 1;
      v23 = v10 + 72 * v22;
      *(v23 + 32) = v18;
      *(v23 + 48) = v50;
      *(v23 + 56) = v13;
      *(v23 + 64) = v51;
      *(v23 + 80) = sub_1BA043E74;
      *(v23 + 88) = v20;
      *(v23 + 96) = 1;
      ++v11;
      --v8;
    }

    while (v8);
    a2 = v44;
    v2 = v43;
    v5 = v42;
    v6 = v41;
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_columnItems) = v10;
  sub_1B9F0A534(a2, v2 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_layoutProvider);
  sub_1B9FF6758();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;

  v25 = sub_1BA49F8D4(a2, v10);

  v26 = sub_1B9FE4F98(v25);

  v27 = v46;
  sub_1BA4A1788();
  v28 = sub_1BA4A1748();
  v30 = v29;
  (*(v6 + 8))(v27, v5);
  *(inited + 48) = v9;
  *(inited + 56) = sub_1B9F1C5F0(v9);
  *(inited + 32) = 0;
  *(inited + 40) = 0;

  *(inited + 48) = v26;
  v31 = Array<A>.identifierToIndexDict()(v26);

  *(inited + 56) = v31;
  *(inited + 64) = v28;
  *(inited + 72) = v30;
  sub_1B9F0A534(a2, v52);
  v32 = swift_allocObject();
  sub_1B9F1134C(v52, v32 + 16);
  v33 = sub_1B9F2E074(inited, 1, sub_1BA4A0520, v32);

  v34 = v47;
  if (v47)
  {
    v35 = (v45 + 40);
    do
    {
      v36 = *v35;
      v37 = swift_getObjectType();
      v38 = *(v36 + 40);
      swift_unknownObjectRetain();
      v39 = v38(v37, v36);
      [v39 registerObserver_];
      swift_unknownObjectRelease();

      v35 += 2;
      --v34;
    }

    while (v34);
  }

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v33;
}

uint64_t sub_1BA4A03D8(uint64_t a1)
{
  sub_1BA4A0434();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA4A0434()
{
  if (!qword_1EDC5E5C8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E5C8);
    }
  }
}

uint64_t sub_1BA4A0498(uint64_t a1, uint64_t a2)
{
  sub_1BA4A0434();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CGSizeApplyAffineTransform(CGSize size, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAFE0](t, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}

CFRange CTFrameGetVisibleStringRange(CTFrameRef frame)
{
  v1 = MEMORY[0x1EEDBF1C0](frame);
  result.length = v2;
  result.location = v1;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x1EEDBF1F0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}

CFRange CTLineGetStringRange(CTLineRef line)
{
  v1 = MEMORY[0x1EEDBF340](line);
  result.length = v2;
  result.location = v1;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}