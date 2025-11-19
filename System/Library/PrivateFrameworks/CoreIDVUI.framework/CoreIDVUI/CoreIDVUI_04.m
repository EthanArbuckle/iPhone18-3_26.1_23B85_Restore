uint64_t sub_2457DF7BC()
{
  v0 = sub_245910BE4();
  v4 = sub_2457DF83C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2457DF83C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2459112D4();
    if (!v9 || (v10 = v9, v11 = sub_2457E3F48(v9, 0), v12 = sub_2457DF994(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_245910AE4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_245910AE4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_245911534();
LABEL_4:

  return sub_245910AE4();
}

unint64_t sub_2457DF994(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_2458487F0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_245910B84();
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
          result = sub_245911534();
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

    result = sub_2458487F0(v12, a6, a7);
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

    result = sub_245910B54();
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

void *sub_2457DFBB4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE298A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2457DFD28();
  sub_245911874();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_2457DFD7C();
    sub_245911694();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t sub_2457DFD28()
{
  result = qword_27EE298A8;
  if (!qword_27EE298A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE298A8);
  }

  return result;
}

unint64_t sub_2457DFD7C()
{
  result = qword_27EE298B0;
  if (!qword_27EE298B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE298B0);
  }

  return result;
}

unint64_t sub_2457DFDD0()
{
  result = qword_27EE298C0;
  if (!qword_27EE298C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE298C0);
  }

  return result;
}

uint64_t sub_2457DFE24(uint64_t a1)
{
  v4 = sub_24590F354();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  if (v9 < 0xC)
  {
    __break(1u);
    goto LABEL_26;
  }

  sub_2458277D0(v6, v6 + 32, 12, (2 * v9) | 1);
  v1 = v10;
  v2 = *(v10 + 16);
  if (v2 >= 3)
  {
    if (v2 == 3)
    {

      v15 = v1;
      goto LABEL_10;
    }

LABEL_26:
    sub_2458277D0(v1, v1 + 32, 0, 7uLL);
    v15 = v24;
LABEL_10:
    v16 = sub_2457DDB94(v15, &unk_285882C78);

    if (v16)
    {
LABEL_11:
    }

    else
    {
      if (v2 >= 0xA)
      {
        v18 = *(v1 + 16);
        if (v18 < 0xA)
        {
          __break(1u);
          goto LABEL_28;
        }

        if (v18 != 10)
        {
          goto LABEL_29;
        }

        v19 = v1;
        goto LABEL_19;
      }

      if (v2 == 3)
      {
        goto LABEL_4;
      }

      while (1)
      {
        v21 = *(v1 + 16);
        if (v21 >= 4)
        {
          break;
        }

LABEL_28:
        __break(1u);
LABEL_29:
        sub_2458277D0(v1, v1 + 32, 0, 0x15uLL);
        v19 = v25;
LABEL_19:
        v20 = sub_2457DDB94(v19, &unk_285882CA0);

        if (v20)
        {
          goto LABEL_11;
        }
      }

      v22 = v1;
      if (v21 != 4)
      {
        sub_2458277D0(v1, v1 + 32, 0, 9uLL);
        v22 = v26;
      }

      v23 = sub_2457DDB94(v22, &unk_285882CD0);

      if ((v23 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v17 = sub_2458494E0(v1);

    return v17;
  }

LABEL_4:

LABEL_5:

  sub_24590C714();
  v11 = sub_24590F344();
  v12 = sub_245910F64();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_245767000, v11, v12, "Invalid image data header", v13, 2u);
    MEMORY[0x245D77B40](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return 0;
}

uint64_t sub_2457E010C(uint64_t a1)
{
  v38 = 0;
  v39 = 0xE000000000000000;
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84B78];
    v4 = MEMORY[0x277D84BC0];
    do
    {
      v5 = *v2++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29398);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_245916930;
      *(v6 + 56) = v3;
      *(v6 + 64) = v4;
      *(v6 + 32) = v5;
      v7 = sub_245910A24();
      MEMORY[0x245D76160](v7);

      --v1;
    }

    while (v1);
  }

  result = sub_245910A94();
  v10 = v9;
  v11 = HIBYTE(v9) & 0xF;
  v12 = result & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    return 0;
  }

  if ((v10 & 0x1000000000000000) == 0)
  {
    if ((v10 & 0x2000000000000000) != 0)
    {
      v36[0] = result;
      v36[1] = v10 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v11)
        {
          if (--v11)
          {
            v15 = 0;
            v26 = v36 + 1;
            while (1)
            {
              v27 = *v26;
              v28 = v27 - 48;
              if ((v27 - 48) >= 0xA)
              {
                if ((v27 - 65) < 6)
                {
                  v28 = v27 - 55;
                }

                else
                {
                  if ((v27 - 97) > 5)
                  {
                    goto LABEL_90;
                  }

                  v28 = v27 - 87;
                }
              }

              if ((v15 - 0x800000000000000) >> 60 != 15)
              {
                break;
              }

              v19 = __OFADD__(16 * v15, v28);
              v15 = 16 * v15 + v28;
              if (v19)
              {
                break;
              }

              ++v26;
              if (!--v11)
              {
                goto LABEL_91;
              }
            }
          }

          goto LABEL_90;
        }

LABEL_101:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v11)
        {
          v15 = 0;
          v31 = v36;
          while (1)
          {
            v32 = *v31;
            v33 = v32 - 48;
            if ((v32 - 48) >= 0xA)
            {
              if ((v32 - 65) < 6)
              {
                v33 = v32 - 55;
              }

              else
              {
                if ((v32 - 97) > 5)
                {
                  goto LABEL_90;
                }

                v33 = v32 - 87;
              }
            }

            if ((v15 - 0x800000000000000) >> 60 != 15)
            {
              break;
            }

            v19 = __OFADD__(16 * v15, v33);
            v15 = 16 * v15 + v33;
            if (v19)
            {
              break;
            }

            ++v31;
            if (!--v11)
            {
              goto LABEL_91;
            }
          }
        }

        goto LABEL_90;
      }

      if (v11)
      {
        if (--v11)
        {
          v15 = 0;
          v20 = v36 + 1;
          while (1)
          {
            v21 = *v20;
            v22 = v21 - 48;
            if ((v21 - 48) >= 0xA)
            {
              if ((v21 - 65) < 6)
              {
                v22 = v21 - 55;
              }

              else
              {
                if ((v21 - 97) > 5)
                {
                  goto LABEL_90;
                }

                v22 = v21 - 87;
              }
            }

            if ((v15 - 0x800000000000000) >> 60 != 15)
            {
              break;
            }

            v19 = __OFSUB__(16 * v15, v22);
            v15 = 16 * v15 - v22;
            if (v19)
            {
              break;
            }

            ++v20;
            if (!--v11)
            {
              goto LABEL_91;
            }
          }
        }

        goto LABEL_90;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_245911534();
      }

      v14 = *result;
      if (v14 == 43)
      {
        if (v12 >= 1)
        {
          v11 = v12 - 1;
          if (v12 != 1)
          {
            if (result)
            {
              v15 = 0;
              v23 = (result + 1);
              while (1)
              {
                v24 = *v23;
                v25 = v24 - 48;
                if ((v24 - 48) >= 0xA)
                {
                  if ((v24 - 65) < 6)
                  {
                    v25 = v24 - 55;
                  }

                  else
                  {
                    if ((v24 - 97) > 5)
                    {
                      goto LABEL_90;
                    }

                    v25 = v24 - 87;
                  }
                }

                if ((v15 - 0x800000000000000) >> 60 != 15)
                {
                  goto LABEL_90;
                }

                v19 = __OFADD__(16 * v15, v25);
                v15 = 16 * v15 + v25;
                if (v19)
                {
                  goto LABEL_90;
                }

                ++v23;
                if (!--v11)
                {
                  goto LABEL_91;
                }
              }
            }

            goto LABEL_78;
          }

          goto LABEL_90;
        }

        goto LABEL_100;
      }

      if (v14 != 45)
      {
        if (v12)
        {
          if (result)
          {
            v15 = 0;
            while (1)
            {
              v29 = *result;
              v30 = v29 - 48;
              if ((v29 - 48) >= 0xA)
              {
                if ((v29 - 65) < 6)
                {
                  v30 = v29 - 55;
                }

                else
                {
                  if ((v29 - 97) > 5)
                  {
                    goto LABEL_90;
                  }

                  v30 = v29 - 87;
                }
              }

              if ((v15 - 0x800000000000000) >> 60 != 15)
              {
                goto LABEL_90;
              }

              v19 = __OFADD__(16 * v15, v30);
              v15 = 16 * v15 + v30;
              if (v19)
              {
                goto LABEL_90;
              }

              ++result;
              if (!--v12)
              {
                LOBYTE(v11) = 0;
                goto LABEL_91;
              }
            }
          }

          goto LABEL_78;
        }

LABEL_90:
        v15 = 0;
        LOBYTE(v11) = 1;
        goto LABEL_91;
      }

      if (v12 >= 1)
      {
        v11 = v12 - 1;
        if (v12 != 1)
        {
          if (result)
          {
            v15 = 0;
            v16 = (result + 1);
            while (1)
            {
              v17 = *v16;
              v18 = v17 - 48;
              if ((v17 - 48) >= 0xA)
              {
                if ((v17 - 65) < 6)
                {
                  v18 = v17 - 55;
                }

                else
                {
                  if ((v17 - 97) > 5)
                  {
                    goto LABEL_90;
                  }

                  v18 = v17 - 87;
                }
              }

              if ((v15 - 0x800000000000000) >> 60 != 15)
              {
                goto LABEL_90;
              }

              v19 = __OFSUB__(16 * v15, v18);
              v15 = 16 * v15 - v18;
              if (v19)
              {
                goto LABEL_90;
              }

              ++v16;
              if (!--v11)
              {
                goto LABEL_91;
              }
            }
          }

LABEL_78:
          v15 = 0;
          LOBYTE(v11) = 0;
LABEL_91:
          v37 = v11;
          v34 = v11;
          goto LABEL_92;
        }

        goto LABEL_90;
      }

      __break(1u);
    }

    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v15 = sub_2457DF230(result, v10, 16);
  v34 = v35;
LABEL_92:

  if (v34)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t sub_2457E05B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE298E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2457E0620()
{
  result = qword_27EE298E8;
  if (!qword_27EE298E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE298E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DG2Data.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DG2Data.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2457E0758()
{
  result = qword_27EE298F0;
  if (!qword_27EE298F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE298F0);
  }

  return result;
}

unint64_t sub_2457E07B0()
{
  result = qword_27EE298F8;
  if (!qword_27EE298F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE298F8);
  }

  return result;
}

unint64_t sub_2457E0808()
{
  result = qword_27EE29900;
  if (!qword_27EE29900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29900);
  }

  return result;
}

uint64_t sub_2457E085C(uint64_t a1, unint64_t a2)
{
  v4 = sub_24590C174();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_24578FC28(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_2457E3F48(v10, 0);
      v14 = sub_24590C0E4();
      sub_24578FC28(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

void sub_2457E09D8(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_245911424())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x245D76B30](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_2457E2440(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_2457E0ACC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v63 = a2;
  v3 = sub_24590EBD4();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x28223BE20](v3);
  v65 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24590CB34();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x28223BE20](v5);
  v72 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24590EA74();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v78 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29978);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v68 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v74 = &v58 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - v15;
  v17 = sub_24590EC54();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v64 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v71 = &v58 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v73 = &v58 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v58 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v58 - v28;
  v75 = a1;
  sub_24590EC14();
  v30 = *(v18 + 48);
  if (v30(v16, 1, v17) == 1)
  {
    sub_245778F94(v16, &qword_27EE29978);
    (*(v8 + 104))(v78, *MEMORY[0x277CFF9E8], v7);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2457E41C0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    return swift_willThrow();
  }

  else
  {
    v61 = v8;
    v62 = v30;
    v60 = v7;
    v32 = *(v18 + 32);
    v32(v29, v16, v17);
    v33 = v17;
    v34 = *(v18 + 16);
    v76 = v33;
    v34(v27, v29);
    v35 = v77;
    sub_24590EC94();
    if (v35)
    {
      return (*(v18 + 8))(v29, v76);
    }

    else
    {
      v77 = v18;
      v58 = v79;
      v59 = v29;
      v36 = v74;
      sub_24590EC14();
      if (v62(v36, 1, v76) == 1)
      {
        sub_245778F94(v36, &qword_27EE29978);
        (*(v61 + 104))(v78, *MEMORY[0x277CFFA58], v60);
        sub_2458CC8AC(MEMORY[0x277D84F90]);
        sub_24590EA84();
        sub_2457E41C0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
        swift_allocError();
        sub_24590EA94();
        swift_willThrow();
        return (*(v77 + 8))(v59, v76);
      }

      else
      {
        v37 = v32;
        v38 = v73;
        v39 = v76;
        v37(v73, v36, v76);
        (v34)(v71, v38, v39);
        v40 = v72;
        sub_24590CB14();
        v41 = v68;
        sub_24590EC14();
        v42 = v41;
        v43 = v41;
        v44 = v76;
        v45 = v62(v43, 1, v76);
        v46 = v59;
        if (v45 == 1)
        {
          sub_245778F94(v42, &qword_27EE29978);
          (*(v61 + 104))(v78, *MEMORY[0x277CFF928], v60);
          v47 = v44;
          sub_2458CC8AC(MEMORY[0x277D84F90]);
          sub_24590EA84();
          sub_2457E41C0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
          swift_allocError();
          sub_24590EA94();
          swift_willThrow();
          (*(v69 + 8))(v40, v70);
          v48 = *(v77 + 8);
          v48(v73, v47);
          return (v48)(v59, v47);
        }

        else
        {
          v49 = v42;
          v50 = v64;
          v37(v64, v49, v44);
          v51 = v65;
          sub_24590EBC4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29980);
          sub_24590ECB4();
          (*(v66 + 8))(v51, v67);
          v52 = *(v77 + 8);
          v53 = v50;
          v54 = v76;
          v52(v53, v76);
          v52(v38, v54);
          v52(v46, v54);
          v55 = v79;
          v56 = type metadata accessor for LDSSecurityObject(0);
          v57 = v63;
          result = (*(v69 + 32))(v63 + *(v56 + 20), v40, v70);
          *v57 = v58;
          *(v57 + *(v56 + 24)) = v55;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2457E1540@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v50 = sub_24590EBD4();
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DataGroupHash(0);
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29978);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v37 - v12;
  v14 = sub_24590EC54();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v51 = &v37 - v19;
  sub_24590EC14();
  v20 = *(v15 + 48);
  v52 = v14;
  v46 = v20;
  v47 = v15 + 48;
  if (v20(v13, 1, v14) == 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_3:
    result = sub_245778F94(v13, &qword_27EE29978);
    *v38 = v21;
  }

  else
  {
    v24 = *(v15 + 32);
    v23 = v15 + 32;
    v42 = (v23 - 16);
    v43 = v24;
    v44 = v53 + 1;
    v45 = v18;
    v53 = (v23 - 24);
    v21 = MEMORY[0x277D84F90];
    v40 = v10;
    v41 = v8;
    v25 = v23;
    v26 = v51;
    v27 = v52;
    v39 = v25;
    while (1)
    {
      v43(v26, v13, v27);
      v28 = v26;
      v29 = v27;
      v30 = v45;
      (*v42)(v45, v28, v29);
      sub_24590EBC4();
      sub_24590ECB4();
      if (v2)
      {
        break;
      }

      v52 = 0;
      v31 = v4;
      (*v44)(v4, v50);
      v32 = *v53;
      (*v53)(v30, v29);
      sub_2457E4020(v8, v10, type metadata accessor for DataGroupHash);
      v27 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_24580A6FC(0, v21[2] + 1, 1, v21);
      }

      v26 = v51;
      v34 = v21[2];
      v33 = v21[3];
      if (v34 >= v33 >> 1)
      {
        v21 = sub_24580A6FC(v33 > 1, v34 + 1, 1, v21);
      }

      v32(v26, v27);
      v21[2] = v34 + 1;
      v10 = v40;
      sub_2457E4020(v40, v21 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v34, type metadata accessor for DataGroupHash);
      sub_24590EC14();
      v35 = v46(v13, 1, v27);
      v4 = v31;
      v8 = v41;
      v2 = v52;
      if (v35 == 1)
      {
        goto LABEL_3;
      }
    }

    (*v44)(v4, v50);
    v36 = *v53;
    (*v53)(v30, v29);
    v36(v51, v29);
  }

  return result;
}

uint64_t sub_2457E1A84@<X0>(char *a1@<X8>)
{
  v12 = a1;
  v2 = sub_24590EC04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24590EBD4();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  sub_24590EC64();
  result = sub_24590EC74();
  if (!v1)
  {
    v9 = v12;
    v11 = v13;
    sub_24590EC64();
    sub_24590EC74();
    v10 = type metadata accessor for DataGroupHash(0);
    result = (*(v3 + 32))(&v9[*(v10 + 20)], v5, v2);
    *v9 = v11;
  }

  return result;
}

uint64_t sub_2457E1CA4(uint64_t a1)
{
  v2 = sub_24590EBD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590EBC4();
  sub_24590ECB4();
  v6 = sub_24590EC54();
  (*(*(v6 - 8) + 8))(a1, v6);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2457E1DE8(void *a1, void *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return MEMORY[0x2821CFA00](a1 + *(a3 + 20), a2 + *(a3 + 20));
  }

  else
  {
    return 0;
  }
}

void sub_2457E1E10(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24590BFF4();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24590EA74();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v29 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SOD(0);
  v13 = v12[6];
  v14 = sub_24590EC44();
  v15 = *(*(v14 - 8) + 56);
  v35 = v13;
  v15(a3 + v13, 1, 1, v14);
  v34 = a3 + v12[7];
  *v34 = xmmword_2459169A0;
  sub_2457E4090(a1, a3);
  v37 = v12;
  v33 = v12[5];
  *(a3 + v33) = a2;
  v36 = a2;
  v16 = [v36 signers];
  sub_24579D5E0(0, &qword_27EE29990);
  v17 = sub_245910C44();

  if (v17 >> 62)
  {
    v32 = sub_245911424();
    if (v32)
    {
      goto LABEL_3;
    }

LABEL_20:

    (*(v10 + 104))(v29, *MEMORY[0x277CFF990], v9);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2457E41C0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    sub_2457E40F4(a1);
    goto LABEL_21;
  }

  v32 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_20;
  }

LABEL_3:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x245D76B30](0, v17);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v18 = *(v17 + 32);
  }

  v19 = v18;
  v28 = a1;

  v20 = [v19 signerCertificate];
  v21 = v37[8];
  v29 = a3;
  *(a3 + v21) = v20;
  v27 = v19;
  v22 = [v19 protectedAttributes];
  v23 = MEMORY[0x277D84F90];
  v42 = MEMORY[0x277D84F90];
  sub_2459111F4();
  sub_2457E41C0(&qword_27EE29998, MEMORY[0x277CC9178]);
  sub_2459112F4();
  if (v41)
  {
    v26 = v22;
    do
    {
      while (1)
      {
        sub_2457AA3F0(&v40, &v38);
        sub_24579D5E0(0, &qword_27EE299A0);
        if ((swift_dynamicCast() & 1) == 0 || !v39)
        {
          break;
        }

        MEMORY[0x245D76260]();
        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_245910C74();
        }

        sub_245910CA4();
        v23 = v42;
        sub_2459112F4();
        v22 = v26;
        if (!v41)
        {
          goto LABEL_16;
        }
      }

      sub_2459112F4();
    }

    while (v41);
    v22 = v26;
  }

LABEL_16:

  (*(v30 + 8))(v8, v6);
  a3 = v29;
  v24 = v31;
  sub_2457E09D8(v23, v29);
  if (!v24)
  {
    sub_2457E40F4(v28);

    v25 = v27;
    goto LABEL_23;
  }

  sub_2457E40F4(v28);

LABEL_21:
  sub_2457E40F4(a3);

  sub_245778F94(a3 + v35, &qword_27EE29920);
  sub_245771C44(*v34, *(v34 + 8));
  if (!v32)
  {
    return;
  }

  v25 = *(a3 + v37[8]);
LABEL_23:
}

void sub_2457E2440(void **a1, uint64_t a2)
{
  v50 = a2;
  v3 = sub_24590F354();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24590EBD4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24590EC44();
  v48 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v44 - v10;
  v11 = *a1;
  v12 = [v11 attributeType];
  v13 = sub_2459109C4();
  v14 = [v12 isEqualToString_];

  if (v14)
  {
    v15 = [v11 attributeValues];
    v16 = sub_245910C44();

    if (v16[2])
    {
      v18 = v16[4];
      v17 = v16[5];
      sub_24578FB80(v18, v17);

      sub_24578FB80(v18, v17);
      sub_2457E085C(v18, v17);
      sub_24590EC64();
      v19 = v49;
      v20 = v51;
      sub_24590EC84();
      if (v20)
      {
        sub_24578FC28(v18, v17);
      }

      else
      {
        v44 = v18;
        v51 = v17;
        v31 = v47;
        sub_24590C714();
        v32 = v48;
        (*(v48 + 16))(v9, v19, v6);
        v33 = sub_24590F344();
        v34 = sub_245910F54();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v52 = v36;
          *v35 = 136315138;
          v37 = sub_24590EC24();
          v39 = v38;
          (*(v48 + 8))(v9, v6);
          v40 = sub_2458CC378(v37, v39, &v52);

          *(v35 + 4) = v40;
          _os_log_impl(&dword_245767000, v33, v34, "sod.signedAttrs.contentType = %s", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v36);
          v41 = v36;
          v32 = v48;
          MEMORY[0x245D77B40](v41, -1, -1);
          MEMORY[0x245D77B40](v35, -1, -1);

          sub_24578FC28(v44, v51);
          (*(v45 + 8))(v47, v46);
        }

        else
        {

          sub_24578FC28(v44, v51);
          (*(v32 + 8))(v9, v6);
          (*(v45 + 8))(v31, v46);
        }

        v42 = *(type metadata accessor for SOD(0) + 24);
        v43 = v50;
        sub_245778F94(v50 + v42, &qword_27EE29920);
        (*(v32 + 32))(v43 + v42, v49, v6);
        (*(v32 + 56))(v43 + v42, 0, 1, v6);
      }

      return;
    }
  }

  v21 = [v11 attributeType];
  v22 = sub_2459109C4();
  v23 = [v21 isEqualToString_];

  if (v23)
  {
    v24 = [v11 attributeValues];
    v25 = sub_245910C44();

    if (v25[2])
    {
      v26 = v25[4];
      v27 = v25[5];
      sub_24578FB80(v26, v27);
    }

    else
    {
      v26 = 0;
      v27 = 0xF000000000000000;
    }

    v28 = (v50 + *(type metadata accessor for SOD(0) + 28));
    v29 = *v28;
    v30 = v28[1];
    *v28 = v26;
    v28[1] = v27;
    sub_245771C44(v29, v30);
  }
}

void sub_2457E29F0()
{
  v105[3] = *MEMORY[0x277D85DE8];
  v0 = sub_24590EA74();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29988);
  MEMORY[0x28223BE20](v4 - 8);
  v95 = &v84 - v5;
  v6 = sub_24590F354();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v94 = &v84 - v11;
  v12 = sub_24590EBD4();
  v101 = *(v12 - 1);
  v102 = v12;
  MEMORY[0x28223BE20](v12);
  v98 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24590EC54();
  v99 = *(v14 - 8);
  v100 = v14;
  MEMORY[0x28223BE20](v14);
  v103 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LDSSecurityObject(0);
  v17 = MEMORY[0x28223BE20](v16);
  v93 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v97 = &v84 - v20;
  MEMORY[0x28223BE20](v19);
  v96 = &v84 - v21;
  v22 = sub_24590C144();
  v23 = [objc_opt_self() recordFromData_];

  if (!v23)
  {
    goto LABEL_12;
  }

  v91 = v10;
  v24 = v23;
  if ([v24 tag] != 119)
  {

LABEL_12:
    (*(v1 + 104))(v3, *MEMORY[0x277CFF958], v0);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2457E41C0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
    return;
  }

  v88 = v6;
  v89 = v7;
  v25 = objc_opt_self();
  v26 = [v24 value];

  v27 = v24;
  v28 = sub_24590C154();
  v30 = v29;

  v31 = sub_24590C144();
  sub_24578FC28(v28, v30);
  v105[0] = 0;
  v32 = [v25 decodeMessageSecurityObject:v31 options:0 error:v105];

  if (!v32)
  {
    v60 = v105[0];
    sub_24590BFA4();

    swift_willThrow();
    return;
  }

  v90 = v27;
  v33 = v105[0];
  v34 = [v32 contentType];
  v35 = [v34 isEqualToString_];

  if (!v35 || (v36 = [v32 content]) == 0)
  {
    (*(v1 + 104))(v3, *MEMORY[0x277CFFA60], v0);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2457E41C0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    return;
  }

  v87 = v32;
  v37 = v36;
  v38 = sub_24590C154();
  v40 = v39;

  v41 = objc_opt_self();
  v42 = sub_24590C144();
  v105[0] = 0;
  v43 = [v41 decodeMessageSecurityObject:v42 options:0 error:v105];

  v44 = v43;
  if (!v43)
  {
    v61 = v105[0];
    sub_24590BFA4();

    swift_willThrow();
    sub_24578FC28(v38, v40);
    goto LABEL_17;
  }

  v85 = v38;
  v45 = v105[0];
  v46 = [v43 contentType];
  v47 = sub_2459109C4();
  v86 = v44;
  v48 = v47;
  v49 = [v46 isEqualToString_];

  v50 = v86;
  if (!v49 || (v51 = [v86 dataContent]) == 0)
  {
    (*(v1 + 104))(v3, *MEMORY[0x277CFF968], v0);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2457E41C0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    sub_24578FC28(v85, v40);
LABEL_17:
    v59 = &v107;
    goto LABEL_18;
  }

  v52 = v51;
  v53 = sub_24590C154();
  v55 = v54;

  sub_24578FB80(v53, v55);
  sub_2457E085C(v53, v55);
  v57 = v103;
  v56 = v104;
  sub_24590ECA4();
  v58 = v90;
  if (v56)
  {

    sub_24578FC28(v85, v40);
    sub_24578FC28(v53, v55);

    v59 = &v106;
LABEL_18:

    return;
  }

  v62 = v98;
  sub_24590EBC4();
  v63 = v97;
  sub_24590ECB4();
  v84 = v55;
  v104 = v40;
  (*(v101 + 8))(v62, v102);
  (*(v99 + 8))(v57, v100);
  v64 = v96;
  sub_2457E4020(v63, v96, type metadata accessor for LDSSecurityObject);
  v65 = v94;
  v66 = sub_24590C714();
  MEMORY[0x28223BE20](v66);
  sub_24590F324();
  v67 = v89 + 8;
  v68 = *(v89 + 8);
  v68(v65, v88);
  v69 = v93;
  sub_2457E4090(v64, v93);
  v70 = v86;
  v71 = v95;
  v72 = v69;
  v73 = v70;
  sub_2457E1E10(v72, v70, v95);
  v102 = v73;
  v103 = v68;
  v89 = v67;
  v74 = type metadata accessor for SOD(0);
  (*(*(v74 - 8) + 56))(v71, 0, 1, v74);
  v75 = OBJC_IVAR____TtC9CoreIDVUI5EFSOD_sodData;
  v76 = v71;
  v77 = v92;
  swift_beginAccess();
  sub_2457E4150(v76, v77 + v75);
  swift_endAccess();
  sub_24590C714();
  v78 = sub_24590F344();
  v79 = sub_245910F54();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&dword_245767000, v78, v79, "Successfully parsed EF.SOD", v80, 2u);
    v81 = v80;
    v64 = v96;
    MEMORY[0x245D77B40](v81, -1, -1);
    sub_24578FC28(v85, v104);

    sub_24578FC28(v53, v84);
  }

  else
  {

    sub_24578FC28(v53, v84);
    sub_24578FC28(v85, v104);

    v58 = v87;
  }

  v82 = v103;
  v83 = v88;

  v82(v91, v83);
  sub_2457E40F4(v64);
}

uint64_t sub_2457E37C8()
{
  sub_2459114D4();
  MEMORY[0x245D76160](0xD00000000000001CLL, 0x8000000245927300);
  v0 = sub_2459116E4();
  MEMORY[0x245D76160](v0);

  MEMORY[0x245D76160](0x3D206F676C61202CLL, 0xEA00000000002020);
  type metadata accessor for LDSSecurityObject(0);
  sub_24590CB34();
  sub_2457E41C0(&qword_27EE299A8, MEMORY[0x277CFF428]);
  v1 = sub_2459116E4();
  MEMORY[0x245D76160](v1);

  MEMORY[0x245D76160](0xD000000000000013, 0x8000000245927320);
  v2 = sub_2459116E4();
  MEMORY[0x245D76160](v2);

  return 0;
}

uint64_t sub_2457E3968()
{
  sub_24578FC28(*(v0 + 16), *(v0 + 24));

  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI5EFSOD_sodData, &qword_27EE29988);

  return swift_deallocClassInstance();
}

void sub_2457E3A1C()
{
  sub_2457E3C68(319, &qword_27EE29918, type metadata accessor for SOD, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2457E3B5C()
{
  type metadata accessor for LDSSecurityObject(319);
  if (v0 <= 0x3F)
  {
    sub_24579D5E0(319, &qword_27EE29938);
    if (v1 <= 0x3F)
    {
      sub_2457E3C68(319, &qword_27EE29940, MEMORY[0x277D6A958], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2457E3CCC();
        if (v3 <= 0x3F)
        {
          type metadata accessor for SecCertificate(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2457E3C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2457E3CCC()
{
  if (!qword_27EE29948)
  {
    v0 = sub_2459112C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE29948);
    }
  }
}

void sub_2457E3D44()
{
  sub_24590CB34();
  if (v0 <= 0x3F)
  {
    sub_2457E3C68(319, &qword_27EE29960, type metadata accessor for DataGroupHash, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2457E3E50()
{
  result = sub_24590EC04();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2457E3EF0()
{
  v0 = sub_24590EC44();
  __swift_allocate_value_buffer(v0, qword_27EE32BD8);
  __swift_project_value_buffer(v0, qword_27EE32BD8);
  return sub_24590EC34();
}

void *sub_2457E3F48(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE299B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2457E4020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2457E4090(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LDSSecurityObject(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2457E40F4(uint64_t a1)
{
  v2 = type metadata accessor for LDSSecurityObject(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2457E4150(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29988);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2457E41C0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2457E4208()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_mrzFormat;
  v4 = sub_24590EAC4();
  v5 = sub_24590EAE4();
  v6 = sub_24590EAE4();
  v7 = 8.0;
  if (v6 > 2)
  {
    v7 = 0.0;
  }

  [v0 setFrame_];
  v8 = &v0[v3];
  v9 = sub_24590EAE4();
  if (v9 < 0)
  {
    goto LABEL_22;
  }

  v10 = v9;
  v11 = MEMORY[0x277D84F90];
  v1 = &off_278E87000;
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    sub_245911564();
    do
    {
      [objc_allocWithZone(MEMORY[0x277CD9FC8]) init];
      sub_245911544();
      sub_245911574();
      sub_245911584();
      sub_245911554();
      --v10;
    }

    while (v10);
    v11 = v20;
  }

  v12 = OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_mrzLineLayers;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_mrzLineLayers] = v11;

  v8 = *&v2[v12];
  if (v8 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_245911424())
  {

    if (!i)
    {
      break;
    }

    v14 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x245D76B30](v14, v8);
      }

      else
      {
        if (v14 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v15 = *(v8 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      sub_2457E49C8(v14, v15, v2);

      ++v14;
      if (v17 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_19:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE299F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_245918640;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CBEB68]) v1[350]];
  *(inited + 56) = 0x73646E756F62;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CBEB68]) v1[350]];
  *(inited + 80) = 0x656D617266;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CBEB68]) v1[350]];
  *(inited + 104) = 0x7974696361706FLL;
  *(inited + 112) = 0xE700000000000000;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CBEB68]) v1[350]];
  *(inited + 128) = 0x756F72676B636162;
  *(inited + 136) = 0xEF726F6C6F43646ELL;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CBEB68]) v1[350]];
  *(inited + 152) = 0x726F66736E617274;
  *(inited + 160) = 0xE90000000000006DLL;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CBEB68]) v1[350]];
  *(inited + 176) = 0x73746E65746E6F63;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CBEB68]) v1[350]];
  *(inited + 200) = 0x737265746C6966;
  *(inited + 208) = 0xE700000000000000;
  *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CBEB68]) v1[350]];
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x80000002459273C0;
  *(inited + 240) = [objc_allocWithZone(MEMORY[0x277CBEB68]) v1[350]];
  *(inited + 248) = 0x6F43726564726F62;
  *(inited + 256) = 0xEB00000000726F6CLL;
  *(inited + 264) = [objc_allocWithZone(MEMORY[0x277CBEB68]) v1[350]];
  *(inited + 272) = 0x6957726564726F62;
  *(inited + 280) = 0xEB00000000687464;
  *(inited + 288) = [objc_allocWithZone(MEMORY[0x277CBEB68]) v1[350]];
  strcpy((inited + 296), "cornerRadius");
  *(inited + 309) = 0;
  *(inited + 310) = -5120;
  *(inited + 312) = [objc_allocWithZone(MEMORY[0x277CBEB68]) v1[350]];
  sub_2458B8C7C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29A00);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29A08);
  v19 = sub_2459108E4();

  [v2 setActions_];
}

id sub_2457E46FC(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_mrzLineLayers] = MEMORY[0x277D84F90];
  sub_2457816F0(a1, v19);
  if (swift_dynamicCast())
  {
    v4 = v18;
    v5 = OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_mrzFormat;
    v6 = sub_24590EAF4();
    (*(*(v6 - 8) + 16))(&v1[v5], &v18[v5], v6);
    *&v1[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_fontWeight] = *&v18[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_fontWeight];
    v7 = *&v4[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_textColor];
    *&v1[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_textColor] = v7;
    v8 = v4[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_ignoresAccessibilityBold];
    v9 = v7;

    v1[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_ignoresAccessibilityBold] = v8;
  }

  else
  {
    v10 = OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_mrzFormat;
    v11 = *MEMORY[0x277CFFE40];
    v12 = sub_24590EAF4();
    (*(*(v12 - 8) + 104))(&v1[v10], v11, v12);
    *&v1[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_fontWeight] = *MEMORY[0x277D74410];
    *&v1[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_textColor] = [objc_opt_self() whiteColor];
    v1[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_ignoresAccessibilityBold] = 0;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_245911704();
  v17.receiver = v1;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_initWithLayer_, v13);
  swift_unknownObjectRelease();
  v15 = v14;
  sub_2457E4208();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

id sub_2457E49C8(uint64_t a1, void *a2, char *a3)
{
  v6 = [*&a3[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_textColor] CGColor];
  [a2 setForegroundColor_];

  v7 = [objc_opt_self() clearColor];
  v8 = [v7 CGColor];

  [a2 setBackgroundColor_];
  [a2 setWrapped_];
  [a2 setAlignmentMode_];
  [a2 setTruncationMode_];
  [a2 setContentsScale_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE299F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_245918640;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 56) = 0x73646E756F62;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 80) = 0x656D617266;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 104) = 0x7974696361706FLL;
  *(inited + 112) = 0xE700000000000000;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 128) = 0x756F72676B636162;
  *(inited + 136) = 0xEF726F6C6F43646ELL;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 152) = 0x726F66736E617274;
  *(inited + 160) = 0xE90000000000006DLL;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 176) = 0x73746E65746E6F63;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 200) = 0x737265746C6966;
  *(inited + 208) = 0xE700000000000000;
  *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x80000002459273C0;
  *(inited + 240) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 248) = 0x6F43726564726F62;
  *(inited + 256) = 0xEB00000000726F6CLL;
  *(inited + 264) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 272) = 0x6957726564726F62;
  *(inited + 280) = 0xEB00000000687464;
  *(inited + 288) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  strcpy((inited + 296), "cornerRadius");
  *(inited + 309) = 0;
  *(inited + 310) = -5120;
  *(inited + 312) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  sub_2458B8C7C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29A00);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29A08);
  v10 = sub_2459108E4();

  [a2 setActions_];

  v11 = sub_24590EAE4();
  v12 = 54.0;
  if (v11 > 2)
  {
    v12 = 46.0;
  }

  [a2 setFrame_];
  return [a3 addSublayer_];
}

uint64_t sub_2457E4E80(uint64_t *a1)
{
  v2 = a1;
  v3 = a1[2];
  result = sub_24590EAE4();
  v13 = v3;
  if (v3 == result)
  {
    v5 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_mrzLineLayers);
    if (v5 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_245911424())
    {

      if (!i)
      {
        break;
      }

      v7 = 0;
      v8 = v2 + 5;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x245D76B30](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v2 = v9;
        if (v13 == v7)
        {
          break;
        }

        ++v7;
        v10 = *(v8 - 1);
        v11 = *v8;

        v12 = sub_2457E500C(v10, v11);

        [v2 setString_];

        v8 += 2;
        if (i == v7)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_14:
  }

  return result;
}

id sub_2457E500C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36[2] = a2;
  v36[1] = a1;
  v4 = sub_24590F354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v8 setMinimumLineHeight_];
  [v8 setMaximumLineHeight_];
  [v8 setAlignment_];
  if (qword_27EE28698 != -1)
  {
    swift_once();
  }

  if (qword_27EE32B40)
  {
    v9 = [qword_27EE32B40 fontWithSize_];
    v10 = 0.0;
  }

  else
  {
    v9 = [objc_opt_self() monospacedSystemFontOfSize:37.0 weight:*(v3 + OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_fontWeight)];
    sub_24590C714();
    v11 = sub_24590F344();
    v12 = sub_245910F64();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_245767000, v11, v12, "MRZLayer failed to get font OCRB; Falling back to monospaced system font", v13, 2u);
      MEMORY[0x245D77B40](v13, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v10 = 3.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2B030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_245916CF0;
  v15 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v16 = sub_24579D5E0(0, &qword_27EE2B040);
  v17 = MEMORY[0x277D740D0];
  *(inited + 40) = v9;
  v18 = *v17;
  *(inited + 64) = v16;
  *(inited + 72) = v18;
  v19 = MEMORY[0x277D839F8];
  *(inited + 80) = v10;
  v20 = *MEMORY[0x277D74118];
  *(inited + 104) = v19;
  *(inited + 112) = v20;
  v21 = sub_24579D5E0(0, &qword_27EE299F0);
  *(inited + 120) = v8;
  v22 = *MEMORY[0x277D740C0];
  *(inited + 144) = v21;
  *(inited + 152) = v22;
  v23 = *(v3 + OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_textColor);
  v24 = v15;
  v25 = v18;
  v26 = v20;
  v27 = v8;
  v28 = v22;
  v29 = [v23 CGColor];
  type metadata accessor for CGColor(0);
  *(inited + 184) = v30;
  *(inited + 160) = v29;
  sub_2458B8260(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2B050);
  swift_arrayDestroy();
  v31 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v32 = sub_2459109C4();
  type metadata accessor for Key(0);
  sub_24577FF04();
  v33 = sub_2459108E4();

  v34 = [v31 initWithString:v32 attributes:v33];

  return v34;
}

uint64_t sub_2457E5448(double a1)
{
  if (a1 > 1.5)
  {
    a1 = 1.5;
  }

  v2 = a1 * 46.0 + -16.0;
  v3 = v2 + sub_24590EAE4() * 46.0;
  [v1 setBounds_];
  v4 = *&v1[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_mrzLineLayers];
  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_245911424())
  {

    if (!i)
    {
      break;
    }

    v6 = 0;
    v7 = v2 + 46.0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245D76B30](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v2 = v7 * v6;
      [v8 setFrame_];

      ++v6;
      if (v10 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_14:
}

uint64_t type metadata accessor for MRZLayer()
{
  result = qword_27EE299E0;
  if (!qword_27EE299E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2457E571C()
{
  result = sub_24590EAF4();
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

id sub_2457E57E0(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v16 = sub_24590EAF4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_outlineLayer;
  *&v8[v20] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v21 = OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_dashedLineLayer;
  *&v8[v21] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v22 = OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_mrzLayer;
  v23 = *MEMORY[0x277D743F8];
  (*(v17 + 104))(v19, *MEMORY[0x277CFFE40], v16);
  v24 = objc_opt_self();
  v25 = [v24 whiteColor];
  v26 = type metadata accessor for MRZLayer();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_mrzLineLayers] = MEMORY[0x277D84F90];
  (*(v17 + 16))(&v27[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_mrzFormat], v19, v16);
  *&v27[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_fontWeight] = v23;
  *&v27[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_textColor] = v25;
  v27[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_ignoresAccessibilityBold] = 0;
  v41.receiver = v27;
  v41.super_class = v26;
  v28 = v25;
  v29 = objc_msgSendSuper2(&v41, sel_init);
  sub_2457E4208();

  (*(v17 + 8))(v19, v16);
  *&v8[v22] = v29;
  v30 = OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_overlayContainerLayer;
  *&v8[v30] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v31 = OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_cutoutOverlayLayer;
  *&v8[v31] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v32 = OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_topGradientLayer;
  *&v8[v32] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v33 = OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_outlineGradientMaskLayer;
  *&v8[v33] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v34 = OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_blackoutLayer;
  *&v8[v34] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *&v8[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_gradientStartY] = 0;
  *&v8[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_gradientEndY] = 0;
  *&v8[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_outlineGradientMaskStartY] = 0;
  *&v8[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_outlineGradientMaskEndY] = 0;
  *&v8[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_horizontalPadding] = a1;
  v35 = &v8[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_passportAnchor];
  *v35 = a2;
  v35[1] = a3;
  v36 = type metadata accessor for PassportCameraOverlayView();
  v40.receiver = v8;
  v40.super_class = v36;
  v37 = objc_msgSendSuper2(&v40, sel_initWithFrame_, a4, a5, a6, a7);
  [v37 setClipsToBounds_];
  v38 = [v24 clearColor];
  [v37 setBackgroundColor_];

  [v37 setAlpha_];
  sub_2457E5BF8();

  return v37;
}

void sub_2457E5BF8()
{
  v1 = *&v0[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_cutoutOverlayLayer];
  v2 = objc_opt_self();
  v3 = [v2 blackColor];
  v4 = [v3 CGColor];

  [v1 setFillColor_];
  [v1 setFillRule_];
  v5 = [v0 layer];
  [v5 addSublayer_];

  sub_2457E618C();
  sub_2457E5D9C();
  sub_2457E6340();
  sub_2457E5E9C();
  sub_2457E602C();
  v6 = *&v0[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_blackoutLayer];
  v7 = [v2 blackColor];
  v8 = [v7 CGColor];

  [v6 setBackgroundColor_];
  [v6 setOpacity_];
  v9 = [v0 layer];
  [v9 addSublayer_];
}

id sub_2457E5D9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_outlineLayer);
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = [v3 CGColor];

  [v1 setStrokeColor_];
  v5 = [v2 clearColor];
  v6 = [v5 CGColor];

  [v1 setFillColor_];

  return [v1 setLineWidth_];
}

void sub_2457E5E9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_dashedLineLayer);
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = [v3 CGColor];

  [v1 setStrokeColor_];
  v5 = [v2 clearColor];
  v6 = [v5 CGColor];

  [v1 setFillColor_];
  [v1 setLineWidth_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2459186C0;
  sub_2457E76F0();
  *(v7 + 32) = sub_245911274();
  *(v7 + 40) = sub_245911274();
  v8 = sub_245910C34();

  [v1 setLineDashPattern_];
}

void sub_2457E602C()
{
  v1 = *&v0[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_overlayContainerLayer];
  [v1 addSublayer_];
  [v1 addSublayer_];
  [v1 addSublayer_];
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  [v1 setShadowColor_];
  LODWORD(v4) = 1.0;
  [v1 setShadowOpacity_];
  [v1 setShadowRadius_];
  [v1 setShadowOffset_];
  v5 = [v0 layer];
  [v5 addSublayer_];
}

void sub_2457E618C()
{
  v1 = *&v0[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_topGradientLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_245916CE0;
  v3 = objc_opt_self();
  v4 = [v3 blackColor];
  v5 = [v4 CGColor];

  type metadata accessor for CGColor(0);
  v7 = v6;
  *(v2 + 56) = v6;
  *(v2 + 32) = v5;
  v8 = [v3 clearColor];
  v9 = [v8 CGColor];

  *(v2 + 88) = v7;
  *(v2 + 64) = v9;
  v10 = sub_245910C34();

  [v1 setColors_];

  [v1 setStartPoint_];
  [v1 setEndPoint_];
  v11 = [v0 layer];
  [v11 addSublayer_];
}

id sub_2457E6340()
{
  v1 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_outlineGradientMaskLayer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_245916CE0;
  v3 = objc_opt_self();
  v4 = [v3 clearColor];
  v5 = [v4 CGColor];

  type metadata accessor for CGColor(0);
  v7 = v6;
  *(v2 + 56) = v6;
  *(v2 + 32) = v5;
  v8 = [v3 blackColor];
  v9 = [v8 CGColor];

  *(v2 + 88) = v7;
  *(v2 + 64) = v9;
  v10 = sub_245910C34();

  [v1 setColors_];

  [v1 setStartPoint_];
  [v1 setEndPoint_];
  v11 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_outlineLayer);

  return [v11 setMask_];
}

void sub_2457E64D4()
{
  v1 = v0;
  v2 = sub_24590FB94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PassportCameraOverlayView();
  v27.receiver = v1;
  v27.super_class = v6;
  objc_msgSendSuper2(&v27, sel_layoutSubviews);
  [v1 bounds];
  v7 = CGRectGetWidth(v29) - (*&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_horizontalPadding] + *&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_horizontalPadding]);
  [v1 bounds];
  (*(v3 + 104))(v5, *MEMORY[0x277CE0118], v2);
  sub_245910134();
  v8 = sub_245910124();
  sub_2457E767C(v28);
  v9 = *&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_outlineLayer];
  [v9 setPath_];
  [v1 bounds];
  [v9 setFrame_];
  sub_2457E68A4(v7);
  sub_2457E6B3C(v8);
  sub_2457E6C98();
  v10 = *&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_gradientStartY];
  [v1 bounds];
  Height = CGRectGetHeight(v30);
  v12 = *&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_gradientEndY];
  v13 = v10 / Height;
  [v1 bounds];
  v14 = CGRectGetHeight(v31);
  v15 = *&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_topGradientLayer];
  v16 = v12 / v14;
  [v15 setStartPoint_];
  [v15 setEndPoint_];
  v17 = *&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_outlineGradientMaskStartY];
  [v1 bounds];
  v18 = CGRectGetHeight(v32);
  v19 = *&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_outlineGradientMaskEndY];
  v20 = v17 / v18;
  [v1 bounds];
  v21 = CGRectGetHeight(v33);
  v22 = *&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_outlineGradientMaskLayer];
  v23 = v19 / v21;
  [v22 setStartPoint_];
  [v22 setEndPoint_];
  v24 = *&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_overlayContainerLayer];
  [v1 bounds];
  [v24 setFrame_];
  [v1 bounds];
  [v15 setFrame_];
  [v1 bounds];
  [v22 setFrame_];
  v25 = *&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_blackoutLayer];
  [v1 bounds];
  [v25 setFrame_];
}

CGFloat sub_2457E68A4(double a1)
{
  v2 = a1;
  v3 = a1 / -125.0 * 176.0;
  [v1 bounds];
  v4 = CGRectGetHeight(v18) * 0.5 + v3 * (*&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_passportAnchor + 8] + -0.5);
  v5 = *&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_horizontalPadding];
  [v1 bounds];
  v6 = CGRectGetWidth(v19) - v5;
  v7 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  [v7 moveToPoint_];
  [v7 addLineToPoint_];
  v8 = *&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_dashedLineLayer];
  v9 = [v7 CGPath];
  [v8 setPath_];

  [v1 bounds];
  [v8 setFrame_];
  v10 = v2 / 24.2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2459186C0;
  v12 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v2 = v2 / 24.2 * 0.8;
  LODWORD(v13) = LODWORD(v2);
  *(v11 + 32) = [v12 initWithFloat_];
  v14 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v2 = v10 * 0.2;
  LODWORD(v15) = LODWORD(v2);
  *(v11 + 40) = [v14 initWithFloat_];
  sub_2457E76F0();
  v16 = sub_245910C34();

  [v8 setLineDashPattern_];

  [v8 setLineDashPhase_];
  *&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_gradientEndY] = v4 + 24.0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_gradientStartY] = v4 + -24.0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_outlineGradientMaskEndY] = v4;
  result = v4 + -48.0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_outlineGradientMaskStartY] = v4 + -48.0;
  return result;
}

void sub_2457E6B3C(uint64_t a1)
{
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = objc_opt_self();
  v12 = [v11 bezierPathWithRect_];
  v15 = [v11 bezierPathWithCGPath_];
  [v12 appendPath_];
  [v12 setUsesEvenOddFillRule_];
  v13 = *&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_cutoutOverlayLayer];
  v14 = [v12 CGPath];
  [v13 setPath_];

  [v1 bounds];
  [v13 setFrame_];
}

uint64_t sub_2457E6C98()
{
  v1 = v0;
  v2 = sub_24590EAF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_mrzLayer];
  (*(v3 + 104))(v5, *MEMORY[0x277CFFE40], v2);
  result = sub_24590EAE4();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    *(&v30 - 2) = v5;
    v9 = sub_2457E7A5C(sub_2457E76D0, (&v30 - 2), 0, v8);
    (*(v3 + 8))(v5, v2);
    sub_2457E4E80(v9);

    [v1 bounds];
    v10 = (CGRectGetWidth(v34) - (*&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_horizontalPadding] + *&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_horizontalPadding])) * 0.9;
    v11 = v10 / (sub_24590EAC4() * 26.25);
    CGAffineTransformMakeScale(&v32, v11, v11);
    m21 = v32.m21;
    m22 = v32.m22;
    v31 = *&v32.m11;
    v30 = *&v32.m13;
    v14 = sub_2457E70B4();
    v16 = v15;
    v17 = sub_24590EAE4();
    v18 = sub_24590EAE4();
    v19 = 8.0;
    if (v18 > 2)
    {
      v19 = 0.0;
    }

    *&m.c = v30;
    *&m.a = v31;
    v20 = v16 + v11 * (v17 * 46.0 + v19) * -0.5;
    m.tx = m21;
    m.ty = m22;
    CATransform3DMakeAffineTransform(&v32, &m);
    [v6 setTransform_];
    [v6 setPosition_];
    [v6 bounds];
    v25 = [objc_opt_self() bezierPathWithRect_];
    v26 = [v25 CGPath];

    [v6 setShadowPath_];
    v27 = [objc_opt_self() blackColor];
    v28 = [v27 CGColor];

    [v6 setShadowColor_];
    [v6 setShadowOffset_];
    LODWORD(v29) = 1051361018;
    [v6 setShadowOpacity_];
    return [v6 setShadowRadius_];
  }

  return result;
}

double sub_2457E70B4()
{
  v1 = v0;
  v2 = sub_24590FB94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  [v1 bounds];
  CGRectGetWidth(v18);
  [v1 bounds];
  (*(v3 + 104))(v5, *MEMORY[0x277CE0118], v2);
  sub_245910134();
  v6 = sub_245910124();
  sub_2457E767C(v17);
  BoundingBox = CGPathGetBoundingBox(v6);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  MidX = CGRectGetMidX(BoundingBox);
  v12 = *&v1[OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_outlineLayer];
  [v12 frame];
  v14 = MidX + v13;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  CGRectGetMaxY(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  CGRectGetHeight(v21);
  [v12 frame];

  return v14;
}

double sub_2457E7310()
{
  v1 = v0;
  v2 = sub_24590FB94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  [v1 bounds];
  CGRectGetWidth(v14);
  [v1 bounds];
  (*(v3 + 104))(v5, *MEMORY[0x277CE0118], v2);
  sub_245910134();
  v6 = sub_245910124();
  sub_2457E767C(v13);
  BoundingBox = CGPathGetBoundingBox(v6);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  CGRectGetMidY(BoundingBox);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  CGRectGetWidth(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  CGRectGetHeight(v17);

  return x;
}

id sub_2457E7554()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassportCameraOverlayView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2457E76F0()
{
  result = qword_27EE29168;
  if (!qword_27EE29168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE29168);
  }

  return result;
}

void sub_2457E773C()
{
  v1 = v0;
  v2 = sub_24590EAF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_outlineLayer;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v7 = OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_dashedLineLayer;
  *(v1 + v7) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v8 = OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_mrzLayer;
  v9 = *MEMORY[0x277D743F8];
  (*(v3 + 104))(v5, *MEMORY[0x277CFFE40], v2);
  v10 = [objc_opt_self() whiteColor];
  v11 = type metadata accessor for MRZLayer();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_mrzLineLayers] = MEMORY[0x277D84F90];
  (*(v3 + 16))(&v12[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_mrzFormat], v5, v2);
  *&v12[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_fontWeight] = v9;
  *&v12[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_textColor] = v10;
  v12[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_ignoresAccessibilityBold] = 0;
  v20.receiver = v12;
  v20.super_class = v11;
  v13 = v10;
  v14 = objc_msgSendSuper2(&v20, sel_init);
  sub_2457E4208();

  (*(v3 + 8))(v5, v2);
  *(v1 + v8) = v14;
  v15 = OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_overlayContainerLayer;
  *(v1 + v15) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v16 = OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_cutoutOverlayLayer;
  *(v1 + v16) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v17 = OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_topGradientLayer;
  *(v1 + v17) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v18 = OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_outlineGradientMaskLayer;
  *(v1 + v18) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v19 = OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_blackoutLayer;
  *(v1 + v19) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_gradientStartY) = 0;
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_gradientEndY) = 0;
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_outlineGradientMaskStartY) = 0;
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI25PassportCameraOverlayView_outlineGradientMaskEndY) = 0;
  sub_2459115D4();
  __break(1u);
}

uint64_t sub_2457E7A5C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v7 = a3;
  v25 = MEMORY[0x277D84F90];
  sub_24577CCB4(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v25;
    v9 = a4;
    if (a4 <= v7)
    {
      v9 = v7;
    }

    v19 = v9 - v7 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v11 = v7;
      v22 = v7 + v8;
      a1(&v23, &v22);
      if (v4)
      {
        goto LABEL_22;
      }

      v13 = v23;
      v12 = v24;
      v25 = v6;
      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        v17 = v24;
        sub_24577CCB4((v14 > 1), v15 + 1, 1);
        v12 = v17;
        v6 = v25;
      }

      *(v6 + 16) = v15 + 1;
      v16 = v6 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      if (a4 < v11)
      {
        goto LABEL_18;
      }

      if (v19 == ++v8)
      {
        goto LABEL_19;
      }

      v7 = v11;
      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

void sub_2457E7BE0()
{
  v1 = v0;
  v2 = sub_24590EAF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *&v1[OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_previewLayer];
  [v6 setVideoGravity_];
  v7 = *&v1[OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_finalFrameLayer];
  [v7 setContentsGravity_];
  [v7 setOpacity_];
  v8 = *&v1[OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_mrzLayer];
  (*(v3 + 104))(v5, *MEMORY[0x277CFFE40], v2);
  v9 = sub_24590EAE4();
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](v9);
    *&v19[-16] = v5;
    v11 = sub_2457E7A5C(sub_2457E76D0, &v19[-32], 0, v10);
    (*(v3 + 8))(v5, v2);
    sub_2457E4E80(v11);

    v12 = *&v1[OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_mrzWrapperLayer];
    [v12 setOpacity_];
    v13 = [objc_opt_self() blackColor];
    v14 = [v13 CGColor];

    [v12 setShadowColor_];
    LODWORD(v15) = 1.0;
    [v12 setShadowOpacity_];
    [v12 setShadowRadius_];
    [v12 setShadowOffset_];
    [v12 addSublayer_];
    v16 = [v1 layer];
    [v16 addSublayer_];

    v17 = [v1 layer];
    [v17 addSublayer_];

    [v1 addSubview_];
    v18 = [v1 layer];
    [v18 addSublayer_];
  }
}

id sub_2457E7F4C()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_previewLayer];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_finalFrameLayer];
  [v0 bounds];
  [v2 setFrame_];
  v3 = *&v0[OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_passportOverlayView];
  [v0 bounds];
  [v3 setFrame_];
  v4 = *&v0[OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_mrzWrapperLayer];
  [v0 bounds];
  return [v4 setFrame_];
}

uint64_t sub_2457E8074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_245910D34();
  v4[3] = sub_245910D24();
  v6 = sub_245910CD4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_2457E810C, v6, v5);
}

uint64_t sub_2457E810C()
{
  *(v0 + 48) = *(*(v0 + 16) + OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_mrzCaptureSessionManager);
  type metadata accessor for MRZCaptureSessionManager();
  sub_2457EF030(&unk_27EE29BA0, type metadata accessor for MRZCaptureSessionManager);
  v2 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2457E81D4, v2, v1);
}

uint64_t sub_2457E81D4()
{
  [*(v0[6] + 40) stopRunning];
  v1 = v0[4];
  v2 = v0[5];

  return MEMORY[0x2822009F8](sub_2457B3D20, v1, v2);
}

void sub_2457E8244()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  [v1 setOpacity_];
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  v4 = [v3 CGColor];

  [v1 setFillColor_];
  v5 = [v2 systemRedColor];
  v6 = [v5 CGColor];

  [v1 setStrokeColor_];
  [v1 setLineWidth_];
  v7 = [v0 layer];
  [v7 addSublayer_];

  [v0 bounds];
  [v1 setFrame_];

  v8 = OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_previewDetectionBox;
  swift_beginAccess();
  v9 = *&v0[v8];
  *&v0[v8] = v1;
}

uint64_t sub_2457E83E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_245910D34();
  v4[3] = sub_245910D24();
  v6 = sub_245910CD4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_2457E847C, v6, v5);
}

uint64_t sub_2457E847C()
{
  v0[6] = *(v0[2] + OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_mrzCaptureSessionManager);
  type metadata accessor for MRZCaptureSessionManager();
  sub_2457EF030(&unk_27EE29BA0, type metadata accessor for MRZCaptureSessionManager);
  v2 = sub_245910CD4();
  v0[7] = v2;
  v0[8] = v1;

  return MEMORY[0x2822009F8](sub_2457E8544, v2, v1);
}

uint64_t sub_2457E8544()
{
  sub_2457E8AD8();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_2457E85A8, v1, v2);
}

uint64_t sub_2457E85A8()
{
  v0[9] = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = v0[7];
  v1 = v0[8];

  return MEMORY[0x2822009F8](sub_2457E864C, v2, v1);
}

uint64_t sub_2457E864C()
{
  v1 = v0[9];
  v2 = (v0[6] + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_onFinishCapture);
  v3 = *v2;
  *v2 = sub_2457ECB78;
  v2[1] = v1;
  sub_245771C34(v3);

  v4 = v0[4];
  v5 = v0[5];

  return MEMORY[0x2822009F8](sub_2457E86E0, v4, v5);
}

uint64_t sub_2457E870C()
{
  v1 = v0[5];
  v2 = *(v0[6] + 40);
  v0[11] = v2;
  v3 = v0[4];
  v4 = v2;

  return MEMORY[0x2822009F8](sub_2457E878C, v3, v1);
}

uint64_t sub_2457E878C()
{
  v1 = *(v0 + 88);
  [*(v0 + 80) setSession_];

  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_2457E8800, v2, v3);
}

uint64_t sub_2457E8800()
{
  [*(v0[6] + 40) startRunning];
  v1 = v0[4];
  v2 = v0[5];

  return MEMORY[0x2822009F8](sub_2457E8870, v1, v2);
}

uint64_t sub_2457E8870()
{
  [*(v0 + 80) metadataOutputRectOfInterestForRect_];
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 112) = v3;
  *(v0 + 120) = v4;
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_2457E88FC, v5, v6);
}

uint64_t sub_2457E88FC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 112);
  *(v1 + 64) = *(v0 + 96);
  *(v1 + 80) = v2;
  *(v1 + 96) = 0;
  return MEMORY[0x2822009F8](sub_2457E8924, *(v0 + 32), *(v0 + 40));
}

uint64_t sub_2457E8924()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_captureRegionOfInterest;
  v2 = *(v0 + 112);
  *v1 = *(v0 + 96);
  *(v1 + 16) = v2;
  *(v1 + 32) = 0;
  sub_24579D5E0(0, &qword_27EE2B020);
  v3 = sub_24590D8F4();
  v4 = MEMORY[0x245D76600](v3);

  if (v4)
  {
    v5 = *(v0 + 16);
    sub_2457E8244();
    v6 = swift_allocObject();
    *(v0 + 128) = v6;
    *(v6 + 16) = v5;
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = v5;

    return MEMORY[0x2822009F8](sub_2457E8A4C, v8, v7);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_2457E8A4C()
{
  v1 = v0[16];
  v2 = (v0[6] + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_updateMRZDetectionBox);
  v3 = *v2;
  *v2 = sub_2457ECB80;
  v2[1] = v1;
  sub_245771C34(v3);
  v4 = v0[4];
  v5 = v0[5];

  return MEMORY[0x2822009F8](sub_2457EF078, v4, v5);
}

id sub_2457E8AD8()
{
  v57[11] = *MEMORY[0x277D85DE8];
  v1 = sub_24590F354();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v54 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v54 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v54 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v54 - v15;
  v17 = v0[5];
  [v17 beginConfiguration];
  [v17 setSessionPreset_];
  v18 = sub_2457ECF38();
  if (v18)
  {
    v19 = v18;
    v55 = v2;
    v56 = v1;
    v20 = objc_allocWithZone(MEMORY[0x277CE5AD8]);
    v57[0] = 0;
    v21 = v19;
    v22 = [v20 initWithDevice:v21 error:v57];
    if (v22)
    {
      v23 = v22;
      v24 = v57[0];

      if ([v17 canAddInput_])
      {
        v25 = v0[2];
        v0[2] = v19;
        v26 = v21;

        [v17 addInput_];
        v27 = v0[4];
        if ([v17 canAddOutput_])
        {
          [v27 setSampleBufferDelegate:v0 queue:v0[3]];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29BC0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_245916930;
          *(inited + 32) = sub_245910A04();
          *(inited + 40) = v29;
          *(inited + 72) = MEMORY[0x277D84CC0];
          *(inited + 48) = 875704422;
          sub_2458B8B4C(inited);
          swift_setDeallocating();
          sub_245778F94(inited + 32, &qword_27EE29BC8);
          v30 = sub_2459108E4();

          [v27 setVideoSettings_];

          v31 = [v27 connectionWithMediaType_];
          if (v31)
          {
            v32 = v31;
            [v31 setPreferredVideoStabilizationMode_];
          }

          [v17 addOutput_];
        }

        v57[0] = 0;
        if ([v26 lockForConfiguration:v57])
        {
          v33 = v57[0];
          if ([v26 isAutoFocusRangeRestrictionSupported])
          {
            [v26 setAutoFocusRangeRestriction:1];
          }

          [v26 unlockForConfiguration];
          v2 = v55;
        }

        else
        {
          v45 = v57[0];
          v46 = sub_24590BFA4();

          swift_willThrow();
          sub_24590C714();
          v47 = sub_24590F344();
          v48 = sub_245910F64();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            *v49 = 0;
            _os_log_impl(&dword_245767000, v47, v48, "PassportMRZCameraPreview could not add device input", v49, 2u);
            MEMORY[0x245D77B40](v49, -1, -1);
          }

          v2 = v55;
          (*(v55 + 8))(v5, v56);
        }

        sub_24590C714();
        v34 = sub_24590F344();
        v50 = sub_245910F84();
        if (os_log_type_enabled(v34, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_245767000, v34, v50, "PassportMRZCameraPreview running capture session.", v51, 2u);
          v52 = v51;
          v2 = v55;
          MEMORY[0x245D77B40](v52, -1, -1);
        }

        else
        {

          v34 = v26;
        }

        v1 = v56;
        goto LABEL_30;
      }

      sub_24590C714();
      v34 = sub_24590F344();
      v43 = sub_245910F64();
      if (os_log_type_enabled(v34, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_245767000, v34, v43, "PassportMRZCameraPreview could not add device input", v44, 2u);
        MEMORY[0x245D77B40](v44, -1, -1);
      }

      else
      {

        v34 = v21;
      }

      v16 = v14;
    }

    else
    {
      v39 = v57[0];
      v40 = sub_24590BFA4();

      swift_willThrow();
      sub_24590C714();
      v34 = sub_24590F344();
      v41 = sub_245910F64();
      if (os_log_type_enabled(v34, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_245767000, v34, v41, "PassportMRZCameraPreview could not create device input", v42, 2u);
        MEMORY[0x245D77B40](v42, -1, -1);
      }

      else
      {

        v34 = v21;
      }

      v16 = v11;
    }

    v2 = v55;
    v1 = v56;
    goto LABEL_30;
  }

  sub_24590C714();
  v34 = sub_24590F344();
  v35 = sub_245910F64();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = v2;
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_245767000, v34, v35, "PassportMRZCameraPreview could not get capture device", v37, 2u);
    v38 = v37;
    v2 = v36;
    MEMORY[0x245D77B40](v38, -1, -1);
  }

  v16 = v8;
LABEL_30:

  (*(v2 + 8))(v16, v1);
  return [v17 commitConfiguration];
}

uint64_t sub_2457E9220(__int128 *a1)
{
  v1 = a1[5];
  v17 = a1[4];
  v18 = v1;
  v19 = a1[6];
  v20 = *(a1 + 112);
  v2 = a1[1];
  v13 = *a1;
  v14 = v2;
  v3 = a1[3];
  v15 = a1[2];
  v16 = v3;
  v4 = *(a1 + 15);
  v5 = *(a1 + 16);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_24578FE88(&v13, v11);
    sub_2457E9718(v5);
    sub_2457E98C4(v4);
    sub_24579D5E0(0, &qword_27EE29630);
    MEMORY[0x245D75D50](0.5, 1.0, 0.0);
    sub_245910704();

    MEMORY[0x28223BE20](v8);
    *(swift_allocObject() + 16) = v7;
    v9 = v7;
    sub_2459111E4();

    v10 = *&v9[OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_onMRZFound];
    if (v10)
    {
      v11[4] = v17;
      v11[5] = v18;
      v11[6] = v19;
      v12 = v20;
      v11[0] = v13;
      v11[1] = v14;
      v11[2] = v15;
      v11[3] = v16;
      v10(v11);
    }

    return sub_2457ECBF8(&v13);
  }

  return result;
}

void sub_2457E9410(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29BB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20[-v5];
  v7 = sub_24590C9E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2457EA0B0(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_245778F94(v6, &unk_27EE29BB0);
    v11 = OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_previewDetectionBox;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (v12)
    {
      [v12 setOpacity_];
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
    sub_24590C9C4();
    [v13 moveToPoint_];
    sub_24590C9D4();
    [v13 addLineToPoint_];
    sub_24590C9A4();
    [v13 addLineToPoint_];
    sub_24590C994();
    [v13 addLineToPoint_];
    sub_24590C9C4();
    [v13 addLineToPoint_];
    v14 = OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_previewDetectionBox;
    swift_beginAccess();
    v15 = *(v2 + v14);
    if (v15)
    {
      v16 = v15;
      v17 = [v13 CGPath];
      [v16 setPath_];
    }

    swift_beginAccess();
    v18 = *(v2 + v14);
    if (v18)
    {
      swift_endAccess();
      LODWORD(v19) = 1.0;
      [v18 setOpacity_];

      (*(v8 + 8))(v10, v7);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      swift_endAccess();
    }
  }
}

void sub_2457E9718(void *a1)
{
  v3 = sub_24590F354();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_finalFrameLayer);
    v14 = a1;
    LODWORD(v8) = 1.0;
    [v7 setOpacity_];
    [v7 setContents_];
    v9 = v14;
  }

  else
  {
    sub_24590C714();
    v10 = sub_24590F344();
    v11 = sub_245910F64();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_245767000, v10, v11, "PassportMRZCameraPreviewView no final frame image to display", v12, 2u);
      MEMORY[0x245D77B40](v12, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2457E98C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24590F354();
  v97 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v95 = &v91 - v8;
  v9 = sub_24590CA04();
  v10 = *(v9 - 8);
  v101 = v9;
  v102 = v10;
  MEMORY[0x28223BE20](v9);
  v100 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29BB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v91 - v13;
  v15 = sub_24590C9E4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2457EA0B0(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_245778F94(v14, &unk_27EE29BB0);
    sub_24590C714();
    v19 = sub_24590F344();
    v20 = sub_245910F64();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_245767000, v19, v20, "PassportMRZCameraPreviewView failed to get MRZ bounds to update MRZ layer", v21, 2u);
      MEMORY[0x245D77B40](v21, -1, -1);
    }

    return (*(v97 + 8))(v7, v4);
  }

  else
  {
    v23 = *(v16 + 32);
    v96 = v18;
    v23(v18, v14, v15);
    v24 = COERCE_DOUBLE(sub_24584CDF0(a1, 1080.0, 1920.0));
    v26 = v25;
    v27 = COERCE_DOUBLE(sub_24584D098(a1, 1080.0, 1920.0));
    if ((v26 & 1) == 0 && (v28 & 1) == 0)
    {
      sub_2457E5448(v27 / v24);
    }

    v29 = *(a1 + 16);
    m11 = MEMORY[0x277D84F90];
    if (v29)
    {
      v91 = v16;
      v92 = v4;
      v93 = v15;
      v94 = v2;
      *&v109.m11 = MEMORY[0x277D84F90];
      sub_24577CCB4(0, v29, 0);
      m11 = v109.m11;
      v31 = *(v102 + 16);
      v32 = a1 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
      v98 = *(v102 + 72);
      v99 = v31;
      v102 += 16;
      v33 = (v102 - 8);
      do
      {
        v34 = v100;
        v35 = v101;
        v99(v100, v32, v101);
        v36 = sub_24590C984();
        v38 = v37;
        (*v33)(v34, v35);
        v109.m11 = m11;
        v40 = *(*&m11 + 16);
        v39 = *(*&m11 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_24577CCB4((v39 > 1), v40 + 1, 1);
          m11 = v109.m11;
        }

        *(*&m11 + 16) = v40 + 1;
        v41 = *&m11 + 16 * v40;
        *(v41 + 32) = v36;
        *(v41 + 40) = v38;
        v32 += v98;
        --v29;
      }

      while (v29);
      v15 = v93;
      v2 = v94;
      v16 = v91;
      v4 = v92;
    }

    sub_24590C9C4();
    v43 = v42;
    v45 = v44;
    sub_24590C9A4();
    v47 = v46;
    v49 = v48;
    sub_24590C9D4();
    v51 = v50;
    v53 = v52;
    sub_24590C994();
    v56 = ((v43 + v47) * 0.5 + (v51 + v54) * 0.5) * 0.5;
    v57 = ((v45 + v49) * 0.5 + (v53 + v55) * 0.5) * 0.5;
    v58 = *(v2 + OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_mrzLayer);
    [v58 bounds];
    v60 = v59;
    v62 = v61;
    sub_24590C9C4();
    v64 = v63;
    v66 = v65;
    sub_24590C9D4();
    v68 = v67;
    v70 = v69;
    sub_24590C994();
    v71 = 0.0;
    v72 = 1.0;
    v74 = v73 - v66;
    v76 = (v68 - v64) / v60;
    v77 = (v70 - v66) / v60;
    v78 = (v75 - v64) / v62;
    if (v62 == 0.0)
    {
      v76 = 1.0;
      v77 = 0.0;
      v79 = 0.0;
    }

    else
    {
      v79 = v78;
    }

    if (v62 == 0.0)
    {
      v80 = 1.0;
    }

    else
    {
      v80 = v74 / v62;
    }

    if (v60 == 0.0)
    {
      v81 = 1.0;
    }

    else
    {
      v81 = v76;
    }

    if (v60 == 0.0)
    {
      v82 = 0.0;
    }

    else
    {
      v82 = v77;
    }

    if (v60 != 0.0)
    {
      v71 = v79;
      v72 = v80;
    }

    v103.a = v81;
    v103.b = v82;
    v103.c = v71;
    v103.d = v72;
    v103.tx = 0.0;
    v103.ty = 0.0;
    CATransform3DMakeAffineTransform(&v109, &v103);
    v83 = v95;
    v84 = sub_24590C714();
    MEMORY[0x28223BE20](v84);
    *(&v91 - 2) = m11;
    sub_24590F324();
    (*(v97 + 8))(v83, v4);
    v105 = *&v109.m31;
    v106 = *&v109.m33;
    v107 = *&v109.m41;
    v108 = *&v109.m43;
    *&v103.a = *&v109.m11;
    *&v103.c = *&v109.m13;
    *&v103.tx = *&v109.m21;
    v104 = *&v109.m23;
    [v58 setTransform_];
    [v58 setPosition_];
    v85 = OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_previewDetectionBox;
    swift_beginAccess();
    v86 = *(v2 + v85);
    if (v86)
    {
      [v86 setOpacity_];
    }

    sub_24579D5E0(0, &qword_27EE29630);
    v87 = MEMORY[0x245D75D50](0.5, 1.0, 0.0);
    MEMORY[0x28223BE20](v87);
    *(&v91 - 2) = v2;
    *(&v91 - 1) = m11;
    sub_2459111E4();

    v89 = *(v2 + OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_passportOverlayView);
    v90 = MEMORY[0x245D75D50](v88, 0.5, 1.0, 0.0);
    MEMORY[0x28223BE20](v90);
    *(&v91 - 2) = v89;
    *(&v91 - 2) = 1065353216;
    sub_2459111E4();

    return (*(v16 + 8))(v96, v15);
  }
}

uint64_t sub_2457EA0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v5 = COERCE_DOUBLE(sub_24590F354());
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v70 - v10;
  v12 = sub_24590C9E4();
  v78 = *(v12 - 8);
  v79 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24590CA04();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v22 = *(a1 + 16);
  if (v22 < 2)
  {
    sub_24590C714();
    v38 = sub_24590F344();
    v39 = sub_245910F54();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_245767000, v38, v39, "PassportMRZCameraPreviewView not enough MRZ lines to compute MRZ bounds", v40, 2u);
      MEMORY[0x245D77B40](v40, -1, -1);
    }

    (*(*&v6 + 8))(v9, v5);
    v37 = 1;
    v34 = v79;
  }

  else
  {
    v73 = v6;
    v74 = *&v5;
    v77 = a2;
    v24 = v20 + 16;
    v23 = *(v20 + 16);
    v25 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v26 = &v70 - v19;
    v27 = v21;
    v75 = v20;
    v23(&v70 - v19, v25, v21);
    v23(v18, v25 + *(v24 + 56) * (v22 - 1), v27);
    v28 = (v2 + OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_captureRegionOfInterest);
    v29 = *(v2 + OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_captureRegionOfInterest + 32);
    v76 = v26;
    if ((v29 & 1) == 0)
    {
      v43 = v28[2];
      v42 = v28[3];
      v45 = *v28;
      v44 = v28[1];
      sub_24590C9F4();
      sub_24590C9C4();
      v47 = v46;
      v49 = v48;
      v41 = v78;
      v34 = v79;
      v50 = *(v78 + 8);
      v50(v14, v79);
      v80.origin.x = v45;
      v80.origin.y = v44;
      v80.size.width = v43;
      v80.size.height = v42;
      v74 = v45 + v47 * CGRectGetWidth(v80);
      v81.origin.x = v45;
      v81.origin.y = v44;
      v81.size.width = v43;
      v81.size.height = v42;
      v73 = 1.0 - (v44 + v49 * CGRectGetHeight(v81));
      sub_24590C9F4();
      sub_24590C9D4();
      v52 = v51;
      v54 = v53;
      v50(v14, v34);
      v82.origin.x = v45;
      v82.origin.y = v44;
      v82.size.width = v43;
      v82.size.height = v42;
      v72 = v45 + v52 * CGRectGetWidth(v82);
      v83.origin.x = v45;
      v83.origin.y = v44;
      v83.size.width = v43;
      v83.size.height = v42;
      v71 = 1.0 - (v44 + v54 * CGRectGetHeight(v83));
      sub_24590C9F4();
      sub_24590C994();
      v56 = v55;
      v58 = v57;
      v50(v14, v34);
      v84.origin.x = v45;
      v84.origin.y = v44;
      v84.size.width = v43;
      v84.size.height = v42;
      v59 = v45 + v56 * CGRectGetWidth(v84);
      v85.origin.x = v45;
      v85.origin.y = v44;
      v85.size.width = v43;
      v85.size.height = v42;
      v60 = 1.0 - (v44 + v58 * CGRectGetHeight(v85));
      sub_24590C9F4();
      sub_24590C9A4();
      v62 = v61;
      v64 = v63;
      v50(v14, v34);
      v86.origin.x = v45;
      v86.origin.y = v44;
      v86.size.width = v43;
      v86.size.height = v42;
      v65 = v45 + v62 * CGRectGetWidth(v86);
      v87.origin.x = v45;
      v87.origin.y = v44;
      v87.size.width = v43;
      v87.size.height = v42;
      v66 = 1.0 - (v44 + v64 * CGRectGetHeight(v87));
      v67 = *(v2 + OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_previewLayer);
      [v67 pointForCaptureDevicePointOfInterest_];
      [v67 pointForCaptureDevicePointOfInterest_];
      [v67 pointForCaptureDevicePointOfInterest_];
      [v67 pointForCaptureDevicePointOfInterest_];
      a2 = v77;
      sub_24590C9B4();
      v68 = *(v75 + 8);
      v68(v18, v27);
      v68(v76, v27);
      v37 = 0;
      return (*(v41 + 56))(a2, v37, 1, v34);
    }

    v72 = *&v18;
    v30 = v75;
    sub_24590C714();
    v31 = sub_24590F344();
    v32 = sub_245910F54();
    v33 = os_log_type_enabled(v31, v32);
    a2 = v77;
    v34 = v79;
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_245767000, v31, v32, "PassportMRZCameraPreviewView has not set up region of interest; cannot compute MRZ bounds", v35, 2u);
      MEMORY[0x245D77B40](v35, -1, -1);
    }

    (*(*&v73 + 8))(v11, COERCE_DOUBLE(*&v74));
    v36 = *(v30 + 8);
    v36(*&v72, v27);
    v36(v76, v27);
    v37 = 1;
  }

  v41 = v78;
  return (*(v41 + 56))(a2, v37, 1, v34);
}

uint64_t sub_2457EA79C(uint64_t a1)
{
  sub_2459114D4();
  MEMORY[0x245D76160](0xD000000000000039, 0x8000000245927980);
  v2 = MEMORY[0x245D76290](a1, MEMORY[0x277D837D0]);
  MEMORY[0x245D76160](v2);

  return 0;
}

uint64_t sub_2457EA940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isEscapingClosureAtFileLocation = v3;
  swift_getObjectType();
  v12 = a1;
  v13 = a2;
  v14 = a3;
  sub_245911154();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = sub_2457ED20C;
    *(v8 + 24) = &v11;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_2457ED240;
    *(v9 + 24) = v8;

    v16[0] = isEscapingClosureAtFileLocation;
    sub_2457ED268(v16);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_2459114D4();
  MEMORY[0x245D76160](0xD00000000000003FLL, 0x8000000245927A20);
  v15 = isEscapingClosureAtFileLocation;
  sub_2459115C4();
  MEMORY[0x245D76160](46, 0xE100000000000000);
  result = sub_2459115D4();
  __break(1u);
  return result;
}

uint64_t sub_2457EABC4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24590F354();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_24590C474();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v56 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24590E9D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v59 = &v51[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29BF0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v51[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE295E8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v64 = &v51[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v62 = &v51[-v19];
  MEMORY[0x28223BE20](v18);
  v21 = &v51[-v20];
  v22 = *(v9 + 16);
  v65 = a1;
  v60 = v22;
  v22(&v51[-v20], a1, v8);
  v23 = *(v9 + 56);
  v61 = v9 + 56;
  v63 = v23;
  v23(v21, 0, 1, v8);
  v24 = OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_lastResult;
  swift_beginAccess();
  v25 = *(v12 + 56);
  sub_245778F2C(v21, v14, &qword_27EE295E8);
  v66 = v2;
  sub_245778F2C(v2 + v24, &v14[v25], &qword_27EE295E8);
  v26 = *(v9 + 48);
  if (v26(v14, 1, v8) == 1)
  {
    sub_245778F94(v21, &qword_27EE295E8);
    v27 = v26(&v14[v25], 1, v8);
    v28 = v64;
    v29 = v65;
    if (v27 == 1)
    {
      result = sub_245778F94(v14, &qword_27EE295E8);
      v31 = v66;
      v32 = v63;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_245778F2C(v14, v62, &qword_27EE295E8);
  if (v26(&v14[v25], 1, v8) == 1)
  {
    sub_245778F94(v21, &qword_27EE295E8);
    (*(v9 + 8))(v62, v8);
    v28 = v64;
    v29 = v65;
LABEL_6:
    sub_245778F94(v14, &unk_27EE29BF0);
    v33 = 1;
    v31 = v66;
    v32 = v63;
LABEL_7:
    v34 = &qword_27EE29000;
    goto LABEL_10;
  }

  v35 = v59;
  (*(v9 + 32))(v59, &v14[v25], v8);
  sub_2457EF030(&unk_27EE29C00, MEMORY[0x277CFF850]);
  v36 = v62;
  v52 = sub_245910934();
  v37 = *(v9 + 8);
  v37(v35, v8);
  sub_245778F94(v21, &qword_27EE295E8);
  v37(v36, v8);
  result = sub_245778F94(v14, &qword_27EE295E8);
  v29 = v65;
  v31 = v66;
  v32 = v63;
  v28 = v64;
  if ((v52 & 1) == 0)
  {
    v33 = 1;
    goto LABEL_7;
  }

LABEL_9:
  v34 = &qword_27EE29000;
  v38 = *(v31 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_resultCount);
  v39 = __OFADD__(v38, 1);
  v33 = v38 + 1;
  if (v39)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  v40 = v34[348];
  *(v31 + v40) = v33;
  v60(v28, v29, v8);
  v32(v28, 0, 1, v8);
  swift_beginAccess();
  sub_2457CB86C(v28, v31 + v24);
  result = swift_endAccess();
  if (*(v31 + v40) >= 3 && (*(v31 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_isShowingIneligibleMRZ) & 1) == 0)
  {
    v32(v28, 1, 1, v8);
    swift_beginAccess();
    sub_2457CB86C(v28, v31 + v24);
    swift_endAccess();
    *(v31 + v40) = 0;
    v41 = sub_24590E9C4();
    v42 = 0;
    v43 = 0;
    if ((v41 & 1) == 0)
    {
      v45 = v56;
      v44 = v57;
      v46 = v58;
      (*(v57 + 104))(v56, *MEMORY[0x277CFF338], v58);
      v47 = sub_24579AC34(v29, v45, 0);
      v43 = v48;
      v49 = v47;
      (*(v44 + 8))(v45, v46);
      v42 = v49;
    }

    v50 = *(v31 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_onImageQualityFeedback);
    if (v50)
    {
      v50(v42, v43);
    }
  }

  return result;
}

unint64_t sub_2457EB330(uint64_t a1)
{
  sub_2459114D4();

  v2 = sub_24590CA04();
  v3 = MEMORY[0x245D76290](a1, v2);
  MEMORY[0x245D76160](v3);

  return 0xD00000000000002FLL;
}

uint64_t sub_2457EB3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = sub_245910D34();
  v6 = sub_245910D24();
  v7 = OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_updateMRZDetectionBox;
  v5[6] = v6;
  v5[7] = v7;
  type metadata accessor for MRZCaptureSessionManager();
  sub_2457EF030(&unk_27EE29BA0, type metadata accessor for MRZCaptureSessionManager);
  v9 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2457EB4A8, v9, v8);
}

uint64_t sub_2457EB4A8()
{
  v1 = (v0[3] + v0[7]);
  v2 = *v1;
  v0[8] = *v1;
  if (v2)
  {
    v0[9] = v1[1];

    v3 = sub_245910CD4();
    v5 = v4;
    v6 = sub_2457EB5E4;
  }

  else
  {
    v3 = sub_245910CD4();
    v5 = v7;
    v6 = sub_2457EB570;
  }

  return MEMORY[0x2822009F8](v6, v3, v5);
}

uint64_t sub_2457EB570()
{

  **(v0 + 16) = *(v0 + 64) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2457EB5E4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);

  v1(v2);
  sub_245771C34(v1);
  **(v0 + 16) = *(v0 + 64) == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2457EB680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49[5] = a5;
  v49[6] = a4;
  v52 = a1;
  v11 = sub_24590F354();
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v49[0] = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v49 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v49 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v49 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v49 - v24;
  v53[3] = sub_24590C5B4();
  v53[4] = MEMORY[0x277CFF3A0];
  __swift_allocate_boxed_opaque_existential_1(v53);
  sub_24590C5A4();
  v49[1] = a2;
  v49[2] = a3;
  v49[3] = a6;
  v49[4] = a7;
  LOBYTE(a6) = sub_24590CA14();
  __swift_destroy_boxed_opaque_existential_1(v53);
  if (a6)
  {
    sub_24590C714();
    v26 = sub_24590F344();
    v27 = sub_245910F54();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_245767000, v26, v27, "PassportMRZCameraPreview Hit MRZ eligibility check: underage", v28, 2u);
      MEMORY[0x245D77B40](v28, -1, -1);
    }

    (*(v50 + 8))(v17, v51);
    v29 = *MEMORY[0x277CFF808];
    v30 = sub_24590E9D4();
    (*(*(v30 - 8) + 104))(v52, v29, v30);
    sub_24590C594();
LABEL_5:
    sub_24590C4F4();
    return 0;
  }

  v31 = sub_24590CA24();
  if (v31 < 0)
  {
    sub_24590C714();
    v39 = sub_24590F344();
    v40 = sub_245910F54();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_245767000, v39, v40, "PassportMRZCameraPreview Hit MRZ eligibility check: expired", v41, 2u);
      MEMORY[0x245D77B40](v41, -1, -1);
    }

    (*(v50 + 8))(v20, v51);
    v42 = *MEMORY[0x277CFF7E8];
    v43 = sub_24590E9D4();
    (*(*(v43 - 8) + 104))(v52, v42, v43);
    sub_24590C594();
    goto LABEL_5;
  }

  if ((sub_24590CA44() & 1) == 0)
  {
    sub_24590C714();
    v44 = sub_24590F344();
    v45 = sub_245910F54();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_245767000, v44, v45, "PassportMRZCameraPreview Hit MRZ eligibility check: unsupported country", v46, 2u);
      MEMORY[0x245D77B40](v46, -1, -1);
    }

    (*(v50 + 8))(v23, v51);
    v47 = *MEMORY[0x277CFF820];
    v48 = sub_24590E9D4();
    (*(*(v48 - 8) + 104))(v52, v47, v48);
    sub_24590C594();
    goto LABEL_5;
  }

  v33 = v25;
  sub_24590C714();
  v34 = sub_24590F344();
  v35 = sub_245910F54();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_245767000, v34, v35, "PassportMRZCameraPreview MRZ eligibility check passed.", v36, 2u);
    MEMORY[0x245D77B40](v36, -1, -1);
  }

  (*(v50 + 8))(v33, v51);
  v37 = *MEMORY[0x277CFF848];
  v38 = sub_24590E9D4();
  (*(*(v38 - 8) + 104))(v52, v37, v38);
  sub_24590C594();
  sub_24590C4F4();
  return v31;
}

uint64_t sub_2457EBE54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v6 = v5;
  v78 = a5;
  v80 = a4;
  v84 = sub_24590CA04();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v10 - 8);
  v79 = &v62 - v11;
  v12 = sub_24590F354();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v6 + 40) stopRunning];
  sub_24590C714();
  v16 = sub_24590F344();
  v17 = sub_245910F84();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_245767000, v16, v17, "PassportMRZCameraPreview Passport MRZ was found.", v18, 2u);
    MEMORY[0x245D77B40](v18, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v19 = sub_24590EB74();
  v21 = v20;
  v22 = sub_24590EB24();
  v76 = v23;
  v77 = v22;
  v24 = sub_24590EB64();
  v74 = v25;
  v75 = v24;
  v26 = sub_24590EB34();
  v72 = v27;
  v73 = v26;
  v71 = sub_24590EB04();
  v70 = sub_24590EB14();
  v69 = sub_24590EB44();
  v28 = sub_24590EB54();
  v29 = v28;
  v30 = *(a2 + 16);
  v31 = MEMORY[0x277D84F90];
  if (v30)
  {
    v63 = v28;
    v64 = v21;
    v65 = v19;
    v67 = a3;
    v68 = v6;
    v85 = MEMORY[0x277D84F90];
    sub_24577CCB4(0, v30, 0);
    v31 = v85;
    v32 = v82 + 16;
    v33 = *(v82 + 16);
    v34 = *(v82 + 80);
    v66 = a2;
    v35 = a2 + ((v34 + 32) & ~v34);
    v81 = *(v82 + 72);
    v82 = v33;
    v36 = (v32 - 8);
    do
    {
      v37 = v83;
      v38 = v84;
      (v82)(v83, v35, v84);
      v39 = sub_24590C984();
      v41 = v40;
      (*v36)(v37, v38);
      v85 = v31;
      v43 = *(v31 + 16);
      v42 = *(v31 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_24577CCB4((v42 > 1), v43 + 1, 1);
        v31 = v85;
      }

      *(v31 + 16) = v43 + 1;
      v44 = v31 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v41;
      v35 += v81;
      --v30;
    }

    while (v30);
    a3 = v67;
    v6 = v68;
    a2 = v66;
    v19 = v65;
    v21 = v64;
    v29 = v63;
  }

  v45 = v78 & 1;
  v46 = sub_245910D64();
  v47 = v79;
  (*(*(v46 - 8) + 56))(v79, 1, 1, v46);
  sub_245910D34();
  v48 = a3;

  v49 = sub_245910D24();
  v50 = swift_allocObject();
  v51 = MEMORY[0x277D85700];
  *(v50 + 16) = v49;
  *(v50 + 24) = v51;
  *(v50 + 32) = v6;
  *(v50 + 40) = v19;
  v53 = v76;
  v52 = v77;
  *(v50 + 48) = v21;
  *(v50 + 56) = v52;
  v55 = v74;
  v54 = v75;
  *(v50 + 64) = v53;
  *(v50 + 72) = v54;
  v57 = v72;
  v56 = v73;
  *(v50 + 80) = v55;
  *(v50 + 88) = v56;
  v59 = v70;
  v58 = v71;
  *(v50 + 96) = v57;
  *(v50 + 104) = v58;
  v60 = v69;
  *(v50 + 112) = v59;
  *(v50 + 120) = v60;
  *(v50 + 128) = v29;
  *(v50 + 136) = v31;
  *(v50 + 144) = v80;
  *(v50 + 152) = v45;
  *(v50 + 160) = a2;
  *(v50 + 168) = a3;
  sub_2458B93DC(0, 0, v47, &unk_245918948, v50);

  sub_24590C594();
  return sub_24590C504();
}

uint64_t sub_2457EC318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2459114D4();
  MEMORY[0x245D76160](0xD000000000000050, 0x8000000245927AC0);
  MEMORY[0x245D76160](a1, a2);
  MEMORY[0x245D76160](0x797269707865202CLL, 0xEE00203A65746144);
  MEMORY[0x245D76160](a3, a4);
  MEMORY[0x245D76160](0xD000000000000012, 0x8000000245927B20);
  MEMORY[0x245D76160](a5, a6);
  return 0;
}

uint64_t sub_2457EC428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[37] = a6;
  v7[38] = a7;
  v7[35] = a4;
  v7[36] = a5;
  v7[34] = a1;
  v7[39] = sub_245910D34();
  v8 = sub_245910D24();
  v9 = OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_onFinishCapture;
  v7[40] = v8;
  v7[41] = v9;
  type metadata accessor for MRZCaptureSessionManager();
  sub_2457EF030(&unk_27EE29BA0, type metadata accessor for MRZCaptureSessionManager);
  v11 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2457EC518, v11, v10);
}

uint64_t sub_2457EC518()
{
  v1 = (v0[35] + v0[41]);
  v2 = *v1;
  v0[42] = *v1;
  if (v2)
  {
    v0[43] = v1[1];

    v3 = sub_245910CD4();
    v5 = v4;
    v6 = sub_2457EC654;
  }

  else
  {
    v3 = sub_245910CD4();
    v5 = v7;
    v6 = sub_2457EC5E0;
  }

  return MEMORY[0x2822009F8](v6, v3, v5);
}

uint64_t sub_2457EC5E0()
{

  **(v0 + 272) = *(v0 + 336) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2457EC654()
{
  v24 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  v4 = *(v0 + 288);

  v5 = *(v4 + 80);
  v19 = *(v4 + 64);
  v20 = v5;
  v21 = *(v4 + 96);
  LOBYTE(v22) = *(v4 + 112);
  v6 = *(v4 + 16);
  v15 = *v4;
  v16 = v6;
  v7 = *(v4 + 48);
  v17 = *(v4 + 32);
  v18 = v7;
  *(&v22 + 1) = v2;
  v23 = v3;
  sub_24578FE88(v4, v0 + 152);
  v8 = v3;

  v1(&v15);
  sub_245771C34(v1);
  v9 = v22;
  *(v0 + 112) = v21;
  *(v0 + 128) = v9;
  *(v0 + 144) = v23;
  v10 = v18;
  *(v0 + 48) = v17;
  *(v0 + 64) = v10;
  v11 = v20;
  *(v0 + 80) = v19;
  *(v0 + 96) = v11;
  v12 = v16;
  *(v0 + 16) = v15;
  *(v0 + 32) = v12;
  sub_2457EEFF0(v0 + 16);
  **(v0 + 272) = *(v0 + 336) == 0;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2457EC7A0()
{

  sub_2457EEE18(*(v0 + 112), *(v0 + 120));

  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_lastResult, &qword_27EE295E8);
  sub_245771C34(*(v0 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_onImageQualityFeedback));
  sub_245771C34(*(v0 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_updateMRZDetectionBox));
  sub_245771C34(*(v0 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_onFinishCapture));
  return v0;
}

uint64_t sub_2457EC858()
{
  sub_2457EC7A0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MRZCaptureSessionManager()
{
  result = qword_27EE29B88;
  if (!qword_27EE29B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2457EC910()
{
  sub_2457ECA10();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2457ECA10()
{
  if (!qword_280ADF778)
  {
    sub_24590E9D4();
    v0 = sub_2459112C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280ADF778);
    }
  }
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_2457ECA9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_2457ECAE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2457ECBB8()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_onCompleteTransitionOut);
  if (*v1)
  {
    return (*v1)();
  }

  return result;
}

void sub_2457ECC4C()
{
  v1 = v0;
  v2 = sub_24590EAF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_captureRegionOfInterest;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  v7 = OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_passportOverlayView;
  v8 = objc_allocWithZone(type metadata accessor for PassportCameraOverlayView());
  *(v0 + v7) = sub_2457E57E0(38.0, 0.5, 0.7, 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_previewLayer;
  *(v1 + v9) = [objc_allocWithZone(MEMORY[0x277CE5B68]) init];
  v10 = OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_finalFrameLayer;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v11 = OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_mrzWrapperLayer;
  *(v1 + v11) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v12 = OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_mrzLayer;
  v13 = *MEMORY[0x277D743F8];
  (*(v3 + 104))(v5, *MEMORY[0x277CFFE40], v2);
  v14 = [objc_opt_self() whiteColor];
  v15 = type metadata accessor for MRZLayer();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_mrzLineLayers] = MEMORY[0x277D84F90];
  (*(v3 + 16))(&v16[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_mrzFormat], v5, v2);
  *&v16[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_fontWeight] = v13;
  *&v16[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_textColor] = v14;
  v16[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_ignoresAccessibilityBold] = 0;
  v19.receiver = v16;
  v19.super_class = v15;
  v17 = v14;
  v18 = objc_msgSendSuper2(&v19, sel_init);
  sub_2457E4208();

  (*(v3 + 8))(v5, v2);
  *(v1 + v12) = v18;
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_previewDetectionBox) = 0;
  sub_2459115D4();
  __break(1u);
}

id sub_2457ECF38()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  v7 = objc_opt_self();
  v8 = *MEMORY[0x277CE5EA8];
  v9 = [v7 defaultDeviceWithDeviceType:*MEMORY[0x277CE5870] mediaType:*MEMORY[0x277CE5EA8] position:1];
  if (!v9)
  {
    result = [v7 defaultDeviceWithDeviceType:*MEMORY[0x277CE5878] mediaType:v8 position:1];
    if (!result)
    {
      return result;
    }

    v10 = result;
    sub_24590C714();
    v11 = sub_24590F344();
    v15 = sub_245910F54();
    if (!os_log_type_enabled(v11, v15))
    {
      v6 = v4;
      goto LABEL_9;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_245767000, v11, v15, "PassportMRZCameraPreview Using Wide Angle Camera", v13, 2u);
    v6 = v4;
    goto LABEL_7;
  }

  v10 = v9;
  sub_24590C714();
  v11 = sub_24590F344();
  v12 = sub_245910F54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_245767000, v11, v12, "PassportMRZCameraPreview Using Ultra Wide Camera", v13, 2u);
LABEL_7:
    MEMORY[0x245D77B40](v13, -1, -1);
  }

LABEL_9:

  (*(v1 + 8))(v6, v0);
  return v10;
}

id sub_2457ED190()
{
  v1 = *(v0 + 16);
  sub_2457E4E80(*(v0 + 24));
  v2 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_mrzWrapperLayer);
  LODWORD(v3) = 1.0;
  [v2 setOpacity_];

  return [v2 setShadowOpacity_];
}

id sub_2457ED294(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  CGAffineTransformMakeRotation(&v14, -1.57079633);
  tx = v14.tx;
  ty = v14.ty;
  v11 = *&v14.c;
  v12 = *&v14.a;
  [v3 extent];
  Height = CGRectGetHeight(v15);
  *&v14.a = v12;
  *&v14.c = v11;
  v14.tx = tx;
  v14.ty = ty;
  CGAffineTransformTranslate(&v13, &v14, -Height, 0.0);
  v14 = v13;
  v7 = [v3 imageByApplyingTransform_];

  v8 = v7;
  [v8 extent];
  v9 = [v2 createCGImage:v8 fromRect:?];

  return v9;
}

void sub_2457ED3C0(opaqueCMSampleBuffer *a1)
{
  v2 = v1;
  v176 = sub_24590C474();
  v4 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v175 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29BD0);
  MEMORY[0x28223BE20](v6 - 8);
  v182 = &v157 - v7;
  v8 = sub_24590EB84();
  v186 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v11 - 8);
  v180 = &v157 - v12;
  v188 = sub_24590EA74();
  v213 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v187 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_24590EA24();
  v210 = *(v219 - 8);
  v14 = MEMORY[0x28223BE20](v219);
  v217 = &v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v218 = &v157 - v16;
  v197 = sub_24590CA04();
  v214 = *(v197 - 8);
  v17 = MEMORY[0x28223BE20](v197);
  v177 = &v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v157 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v157 - v22;
  v191 = sub_24590F354();
  v24 = *(v191 - 8);
  v25 = MEMORY[0x28223BE20](v191);
  v173 = &v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v174 = &v157 - v28;
  MEMORY[0x28223BE20](v27);
  v190 = &v157 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29BE0);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = &v157 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v184 = &v157 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v194 = &v157 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v211 = &v157 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v207 = &v157 - v41;
  MEMORY[0x28223BE20](v40);
  v212 = &v157 - v42;
  v43 = sub_24590E9D4();
  v181 = *(v43 - 8);
  v44 = MEMORY[0x28223BE20](v43);
  v183 = &v157 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v189 = &v157 - v46;
  v47 = CMSampleBufferGetImageBuffer(a1);
  if (!v47)
  {
    return;
  }

  v48 = *(v2 + 152);
  v49 = __OFADD__(v48, 1);
  v50 = v48 + 1;
  if (v49)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  *(v2 + 152) = v50;
  v51 = *(v2 + 160);
  if (v51 != -1)
  {
    if (v51)
    {
      v50 %= v51;
    }

    if (v50)
    {

      return;
    }
  }

  v209 = v21;
  v163 = v33;
  v167 = v43;
  v164 = v10;
  v52 = *(v2 + 144);
  v53 = *(v2 + 80);
  v222[0] = *(v2 + 64);
  v222[1] = v53;
  v223 = *(v2 + 96);
  v54 = v189;
  v166 = v47;
  v161 = v52;
  v55 = v4;
  v56 = sub_245798EF8(v189, v47, v222);
  sub_2457EABC4(v54);
  v57 = v214;
  v58 = v214 + 7;
  v59 = v214[7];
  v60 = v197;
  v59(v212, 1, 1, v197);
  v196 = v58;
  v195 = v59;
  v59(v207, 1, 1, v60);
  v61 = v190;
  v62 = sub_24590C714();
  MEMORY[0x28223BE20](v62);
  sub_24590F324();
  v63 = *(v24 + 8);
  v179 = v24 + 8;
  v178 = v63;
  v63(v61, v191);
  v64 = v56;
  v65 = *(v56 + 2);
  v162 = v55;
  v208 = v65;
  v165 = v8;
  if (!v65)
  {

    v93 = MEMORY[0x277D84F90];
    v68 = v57;
    v95 = v182;
    v94 = v186;
    goto LABEL_32;
  }

  v66 = 0;
  v160 = v2;
  v205 = *(v2 + 48);
  v158 = *(v57 + 80);
  v159 = (v158 + 32) & ~v158;
  v204 = &v56[v159];
  v216 = v57 + 2;
  v203 = (v210 + 2);
  v202 = (v210 + 11);
  v201 = *MEMORY[0x277CFF8E8];
  v172 = "ion; Expected same executor as ";
  v171 = (v213 + 104);
  v193 = *MEMORY[0x277CFF8F0];
  v185 = *MEMORY[0x277CFF8E0];
  v170 = *MEMORY[0x277CFFA08];
  v169 = "tureSessionManager";
  v168 = 0x8000000245927A90;
  ++v210;
  v200 = (v57 + 1);
  v199 = (v57 + 6);
  v192 = (v57 + 4);
  v67 = &qword_27EE29BE0;
  v68 = v57;
  v69 = v197;
  v70 = v23;
  v206 = v64;
  v215 = v23;
  while (1)
  {
    if (v66 >= *(v64 + 2))
    {
      __break(1u);
      goto LABEL_55;
    }

    v72 = v67;
    v73 = v68[9];
    v74 = v68[2];
    v74(v70, &v204[v73 * v66], v69);
    v75 = v70;
    sub_24590C984();
    v76 = v218;
    sub_24590CA54();

    v77 = v217;
    v78 = v219;
    (*v203)(v217, v76, v219);
    v79 = (*v202)(v77, v78);
    v213 = v74;
    if (v79 == v201)
    {
      v198 = v73;
      v80 = v212;
      v67 = v72;
      sub_245778F94(v212, v72);
      v74(v80, v75, v69);
      v195(v80, 0, 1, v69);
      v81 = v209;
      v82 = v211;
    }

    else
    {
      v81 = v209;
      v67 = v72;
      if (v79 == v193)
      {
        v198 = v73;
        v83 = v207;
        sub_245778F94(v207, v72);
        v69 = v197;
        (v213)(v83, v215, v197);
        v195(v83, 0, 1, v69);
        v82 = v211;
        v80 = v212;
      }

      else
      {
        v82 = v211;
        if (v79 == v185)
        {
          (*v210)(v218, v219);
          v70 = v215;
          v69 = v197;
          (*v200)(v215, v197);
          goto LABEL_14;
        }

        v198 = v73;
        v220 = 0;
        v221 = 0xE000000000000000;
        sub_2459114D4();
        MEMORY[0x245D76160](0xD000000000000022, v172 | 0x8000000000000000);
        v84 = v219;
        sub_2459115C4();
        (*v171)(v187, v170, v188);
        sub_24590EA84();
        sub_2457EF030(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
        v85 = swift_allocError();
        sub_24590EA94();
        v86 = v190;
        sub_24590C714();
        sub_24590C3F4();
        v178(v86, v191);

        (*v210)(v217, v84);
        v80 = v212;
        v69 = v197;
      }
    }

    sub_245778F2C(v80, v82, v67);
    v87 = *v199;
    if ((*v199)(v82, 1, v69) != 1)
    {
      break;
    }

    (*v210)(v218, v219);
    v70 = v215;
    (*v200)(v215, v69);
    v71 = v82;
LABEL_13:
    sub_245778F94(v71, v67);
LABEL_14:
    v68 = v214;
    ++v66;
    v64 = v206;
    if (v208 == v66)
    {

      v93 = MEMORY[0x277D84F90];
      v2 = v160;
      v8 = v165;
      v94 = v186;
      v95 = v182;
      goto LABEL_32;
    }
  }

  v88 = v82;
  v89 = v215;
  v90 = *v192;
  (*v192)(v81, v88, v69);
  v91 = v194;
  sub_245778F2C(v207, v194, v67);
  if (v87(v91, 1, v69) == 1)
  {
    v92 = *v200;
    (*v200)(v81, v69);
    (*v210)(v218, v219);
    v92(v89, v69);
    v71 = v91;
    v70 = v89;
    goto LABEL_13;
  }

  v96 = v177;
  v90(v177, v91, v69);
  v97 = v160;
  v98 = *(v160 + 104);
  v99 = v98 + 1;
  v68 = v214;
  if (__OFADD__(v98, 1))
  {
    goto LABEL_56;
  }

  *(v160 + 104) = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29BE8);
  v100 = v159;
  v101 = v198;
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_245916CE0;
  v217 = v102;
  v103 = v102 + v100;
  v104 = v213;
  (v213)(v103, v209, v69);
  v104(v103 + v101, v96, v69);
  v8 = v165;
  v94 = v186;
  v95 = v182;
  v2 = v97;
  if (v99 == 1)
  {
    v216 = *(v97 + 56);
    v213 = sub_24590E3E4();
    v211 = sub_24590E024();
    sub_24590CDA4();
    sub_24590E1B4();
    sub_24590E484();

    v68 = v214;
  }

  v105 = *v200;
  v106 = v197;
  (*v200)(v177, v197);
  v105(v209, v106);
  (*v210)(v218, v219);
  v105(v89, v106);
  v93 = v217;
LABEL_32:
  sub_24579D5E0(0, &qword_27EE2B020);
  v107 = sub_24590D8F4();
  v108 = MEMORY[0x245D76600](v107);

  v109 = v184;
  if (v108)
  {
    v110 = sub_245910D64();
    v111 = v180;
    (*(*(v110 - 8) + 56))(v180, 1, 1, v110);
    sub_245910D34();

    v112 = sub_245910D24();
    v113 = swift_allocObject();
    v114 = MEMORY[0x277D85700];
    v113[2] = v112;
    v113[3] = v114;
    v113[4] = v2;
    v113[5] = v93;
    sub_2458B93DC(0, 0, v111, &unk_245918930, v113);
  }

  sub_24590CA64();
  if ((*(v94 + 48))(v95, 1, v8) == 1)
  {

    sub_245778F94(v95, &unk_27EE29BD0);
    v115 = v181;
    v116 = v212;
    goto LABEL_40;
  }

  (*(v94 + 32))(v164, v95, v8);
  sub_24590CA74();
  v117 = sub_24590EB24();
  v119 = v118;
  v120 = sub_24590EB64();
  v122 = v121;
  v123 = sub_24590EB34();
  v125 = sub_2457EB680(v183, v117, v119, v120, v122, v123, v124);
  v127 = v126;

  if (sub_24590E9C4())
  {
    v128 = *(v2 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_onImageQualityFeedback);
    v116 = v212;
    v68 = v214;
    if (v128)
    {
      v128(0, 0);
    }

    v129 = sub_2457ED294(v166);
    v130 = v127 & 1;
    v131 = v164;
    sub_2457EBE54(v164, v93, v129, v125, v130);

    v115 = v181;
    (*(v181 + 8))(v183, v167);
    (*(v186 + 8))(v131, v165);
    v109 = v184;
LABEL_40:
    sub_245778F2C(v116, v109, &qword_27EE29BE0);
    v132 = v68[6];
    v133 = v197;
    if (v132(v109, 1, v197) != 1 || (sub_245778F94(v109, &qword_27EE29BE0), v109 = v163, sub_245778F2C(v207, v163, &qword_27EE29BE0), v132(v109, 1, v133) != 1))
    {
      v137 = v167;

      sub_245778F94(v207, &qword_27EE29BE0);
      sub_245778F94(v116, &qword_27EE29BE0);
      (*(v115 + 8))(v189, v137);
      sub_245778F94(v109, &qword_27EE29BE0);
      *(v2 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_noCandidatesCount) = 0;
      return;
    }

    sub_245778F94(v109, &qword_27EE29BE0);
    v134 = *(v2 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_noCandidatesCount);
    v49 = __OFADD__(v134, 1);
    v135 = v134 + 1;
    v136 = v167;
    if (!v49)
    {
      *(v2 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_noCandidatesCount) = v135;
      if (v135 >= 5)
      {
        sub_24590CA74();

        sub_245778F94(v207, &qword_27EE29BE0);
        sub_245778F94(v116, &qword_27EE29BE0);
        (*(v115 + 8))(v189, v136);
        v154 = *(v2 + 112);
        v155 = *(v2 + 120);
        *(v2 + 112) = 0u;
        *(v2 + 128) = 0u;
        sub_2457EEE18(v154, v155);
        *(v2 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_isShowingIneligibleMRZ) = 0;
      }

      else
      {

        sub_245778F94(v207, &qword_27EE29BE0);
        sub_245778F94(v116, &qword_27EE29BE0);
        (*(v115 + 8))(v189, v136);
      }

      return;
    }

LABEL_57:
    __break(1u);
    return;
  }

  v138 = v174;
  sub_24590C714();
  v139 = sub_24590F344();
  v140 = sub_245910F54();
  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    *v141 = 0;
    _os_log_impl(&dword_245767000, v139, v140, "PassportMRZCameraPreview MRZ ineligible; returning", v141, 2u);
    MEMORY[0x245D77B40](v141, -1, -1);
  }

  v178(v138, v191);
  *(v2 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_isShowingIneligibleMRZ) = 1;
  v142 = v162;
  v143 = v175;
  v144 = v176;
  (*(v162 + 104))(v175, *MEMORY[0x277CFF338], v176);
  v145 = sub_24579AC34(v183, v143, 0);
  v146 = v165;
  v147 = v186;
  v148 = v164;
  v149 = v167;
  v151 = v150;
  v152 = v145;
  (*(v142 + 8))(v143, v144);
  v153 = *(v2 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_onImageQualityFeedback);
  if (v153)
  {
    v153(v152, v151);
  }

  else
  {
  }

  v156 = *(v181 + 8);
  v156(v183, v149);
  (*(v147 + 8))(v148, v146);
  sub_245778F94(v207, &qword_27EE29BE0);
  sub_245778F94(v212, &qword_27EE29BE0);
  v156(v189, v149);
}

uint64_t sub_2457EEE18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2457EEE5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2457AA49C;

  return sub_2457EB3BC(a1, v4, v5, v7, v6);
}

uint64_t sub_2457EEF1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[20];
  v8 = v1[21];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2457A18F4;

  return sub_2457EC428(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t sub_2457EF030(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2457EF07C()
{
  v1 = v0;
  v58 = sub_24590F354();
  v2 = *(v58 - 8);
  v3 = MEMORY[0x28223BE20](v58);
  v57 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v56 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v56 - v8;
  v10 = sub_24590D5E4();
  if (v11 && (v12 = sub_24586C880(v10, v11), v14 = v13, , v14))
  {
    v1[4] = v12;
    v1[5] = v14;
  }

  else
  {
    sub_24590C714();

    v15 = sub_24590F344();
    v16 = sub_245910F64();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v59 = v56;
      *v17 = 136315138;
      v18 = sub_24590D5E4();
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v18 = 0x3E6C696E3CLL;
        v20 = 0xE500000000000000;
      }

      v21 = v7;
      v22 = v2;
      v23 = sub_2458CC378(v18, v20, &v59);

      *(v17 + 4) = v23;
      v2 = v22;
      v7 = v21;
      _os_log_impl(&dword_245767000, v15, v16, "PassportMRZReaderViewConfiguration could not localize string id: %s", v17, 0xCu);
      v24 = v56;
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x245D77B40](v24, -1, -1);
      MEMORY[0x245D77B40](v17, -1, -1);
    }

    (*(v2 + 8))(v9, v58);
    v1[4] = 0;
    v1[5] = 0;
  }

  v25 = sub_24590D634();
  if (v26 && (v27 = sub_24586C880(v25, v26), v29 = v28, , v29))
  {
    v1[6] = v27;
    v1[7] = v29;
    v30 = v57;
  }

  else
  {
    sub_24590C714();

    v31 = sub_24590F344();
    v32 = sub_245910F64();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v59 = v34;
      *v33 = 136315138;
      v35 = sub_24590D634();
      if (v36)
      {
        v37 = v36;
      }

      else
      {
        v35 = 0x3E6C696E3CLL;
        v37 = 0xE500000000000000;
      }

      v38 = v7;
      v39 = v2;
      v40 = sub_2458CC378(v35, v37, &v59);

      *(v33 + 4) = v40;
      v2 = v39;
      _os_log_impl(&dword_245767000, v31, v32, "PassportMRZReaderViewConfiguration could not localize string id: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x245D77B40](v34, -1, -1);
      MEMORY[0x245D77B40](v33, -1, -1);

      (*(v39 + 8))(v38, v58);
    }

    else
    {

      (*(v2 + 8))(v7, v58);
    }

    v30 = v57;
    v1[6] = 0;
    v1[7] = 0;
  }

  v41 = sub_24590D604();
  if (v42 && (v43 = sub_24586C880(v41, v42), v45 = v44, , v45))
  {
    v1[8] = v43;
    v1[9] = v45;
  }

  else
  {
    sub_24590C714();

    v46 = sub_24590F344();
    v47 = sub_245910F64();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v59 = v49;
      *v48 = 136315138;
      v50 = sub_24590D604();
      if (v51)
      {
        v52 = v51;
      }

      else
      {
        v50 = 0x3E6C696E3CLL;
        v52 = 0xE500000000000000;
      }

      v53 = v2;
      v54 = sub_2458CC378(v50, v52, &v59);

      *(v48 + 4) = v54;
      _os_log_impl(&dword_245767000, v46, v47, "PassportMRZReaderViewConfiguration could not localize string id: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x245D77B40](v49, -1, -1);
      MEMORY[0x245D77B40](v48, -1, -1);

      (*(v53 + 8))(v30, v58);
    }

    else
    {

      (*(v2 + 8))(v30, v58);
    }

    v1[8] = 0;
    v1[9] = 0;
  }
}

uint64_t sub_2457EF5FC()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24586C880(0xD00000000000002CLL, 0x8000000245927C20);
  if (v7)
  {
    v0[4] = v6;
    v0[5] = v7;
  }

  else
  {
    sub_24590C714();
    v8 = sub_24590F344();
    v9 = sub_245910F64();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_2458CC378(0xD00000000000002CLL, 0x8000000245927C20, &v14);
      _os_log_impl(&dword_245767000, v8, v9, "PassportMRZReaderViewConfiguration could not localize string id: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x245D77B40](v11, -1, -1);
      MEMORY[0x245D77B40](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v1[4] = 0;
    v1[5] = 0;
  }

  v1[6] = 0;
  v1[7] = 0;

  v1[8] = 0;
  v1[9] = 0;
}

uint64_t sub_2457EF7F0()
{

  sub_245771C34(*(v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_2457EF888()
{
  v1 = *(*v0 + 64);

  return v1;
}

uint64_t sub_2457EF8C8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;
  return sub_245771C34(v4);
}

uint64_t sub_2457EF8E0(void *a1, uint64_t a2)
{
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 80) = 2;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = a1;

  sub_2457EF07C();
  return v2;
}

void __swiftcall MRZPassportInformation.init(docNumber:dobWithCheckDigit:expiryDateWithCheckDigit:issuingCountryCode:dobRepeatCount:doeRepeatCount:docNumberRepeatCount:issuerNumberRepeatCount:mrzLines:ageOfDocument:)(CoreIDVUI::MRZPassportInformation *__return_ptr retstr, Swift::String docNumber, Swift::String dobWithCheckDigit, Swift::String expiryDateWithCheckDigit, Swift::String issuingCountryCode, Swift::Int dobRepeatCount, Swift::Int doeRepeatCount, Swift::Int docNumberRepeatCount, Swift::Int issuerNumberRepeatCount, Swift::OpaquePointer mrzLines, Swift::Int_optional ageOfDocument)
{
  retstr->docNumber = docNumber;
  retstr->dobWithCheckDigit = dobWithCheckDigit;
  retstr->expiryDateWithCheckDigit = expiryDateWithCheckDigit;
  retstr->issuingCountryCode = issuingCountryCode;
  *&retstr->dobRepeatCount = *&dobRepeatCount;
  *&retstr->docNumberRepeatCount = *&docNumberRepeatCount;
  retstr->mrzLines = mrzLines;
  retstr->ageOfDocument.value = ageOfDocument.value;
  retstr->ageOfDocument.is_nil = ageOfDocument.is_nil;
}

uint64_t MRZPassportInformation.docNumber.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MRZPassportInformation.dobWithCheckDigit.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MRZPassportInformation.expiryDateWithCheckDigit.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MRZPassportInformation.issuingCountryCode.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_2457EFA54(__int128 *a1, uint64_t *a2)
{
  v2 = a1[5];
  v24 = a1[4];
  v25 = v2;
  v26 = a1[6];
  v27 = *(a1 + 112);
  v3 = a1[1];
  v20 = *a1;
  v21 = v3;
  v4 = a1[3];
  v22 = a1[2];
  v23 = v4;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(v5 + 32);
  v8 = *(v5 + 64);
  v28[2] = *(v5 + 48);
  v28[3] = v8;
  v9 = *(v5 + 80);
  v10 = *(v5 + 96);
  v11 = *(v5 + 112);
  v29 = *(v5 + 128);
  v28[5] = v10;
  v28[6] = v11;
  v28[4] = v9;
  v28[0] = v6;
  v28[1] = v7;
  v13 = v22;
  v12 = v23;
  v14 = v21;
  *(v5 + 16) = v20;
  *(v5 + 32) = v14;
  *(v5 + 48) = v13;
  *(v5 + 64) = v12;
  v16 = v25;
  v15 = v26;
  v17 = v24;
  *(v5 + 128) = v27;
  *(v5 + 96) = v16;
  *(v5 + 112) = v15;
  *(v5 + 80) = v17;
  sub_245778F2C(&v20, &v19, &qword_27EE29C10);
  return sub_245778F94(v28, &qword_27EE29C10);
}

uint64_t sub_2457EFB44@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v4 = *(v1 + 96);
  v15 = *(v1 + 80);
  v3 = v15;
  v16 = v4;
  v17 = *(v1 + 112);
  v5 = v17;
  v18 = *(v1 + 128);
  v6 = v18;
  v7 = *(v1 + 32);
  v12[0] = *(v1 + 16);
  v12[1] = v7;
  v9 = *(v1 + 64);
  v13 = *(v1 + 48);
  v8 = v13;
  v14 = v9;
  *a1 = v12[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  *(a1 + 112) = v6;
  return sub_245778F2C(v12, &v11, &qword_27EE29C10);
}

uint64_t sub_2457EFBD8(__int128 *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  v13[4] = *(v1 + 80);
  v13[5] = v3;
  v13[6] = *(v1 + 112);
  v14 = *(v1 + 128);
  v4 = *(v1 + 32);
  v13[0] = *(v1 + 16);
  v13[1] = v4;
  v5 = *(v1 + 64);
  v13[2] = *(v1 + 48);
  v13[3] = v5;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v8;
  *(v1 + 16) = v6;
  *(v1 + 32) = v7;
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  *(v1 + 128) = *(a1 + 112);
  *(v1 + 96) = v10;
  *(v1 + 112) = v11;
  *(v1 + 80) = v9;
  return sub_245778F94(v13, &qword_27EE29C10);
}

uint64_t sub_2457EFCD0(__int128 *a1, void *a2)
{
  v2 = a1[13];
  v40 = a1[12];
  v41 = v2;
  v42 = a1[14];
  v43 = *(a1 + 30);
  v3 = a1[9];
  v36 = a1[8];
  v37 = v3;
  v4 = a1[11];
  v38 = a1[10];
  v39 = v4;
  v5 = a1[5];
  v32 = a1[4];
  v33 = v5;
  v6 = a1[7];
  v34 = a1[6];
  v35 = v6;
  v7 = a1[1];
  v28 = *a1;
  v29 = v7;
  v8 = a1[3];
  v9 = *a2;
  v10 = (*a2 + 136);
  v30 = a1[2];
  v31 = v8;
  swift_beginAccess();
  v11 = v10[11];
  v44[10] = v10[10];
  v44[11] = v11;
  v12 = v10[9];
  v44[8] = v10[8];
  v44[9] = v12;
  v45 = *(v9 + 376);
  v13 = v10[14];
  v44[13] = v10[13];
  v44[14] = v13;
  v44[12] = v10[12];
  v14 = *(v9 + 216);
  v44[4] = *(v9 + 200);
  v44[5] = v14;
  v15 = *(v9 + 248);
  v44[6] = *(v9 + 232);
  v44[7] = v15;
  v16 = *(v9 + 152);
  v44[0] = *(v9 + 136);
  v44[1] = v16;
  v17 = *(v9 + 184);
  v44[2] = *(v9 + 168);
  v44[3] = v17;
  v18 = v29;
  *(v9 + 136) = v28;
  v19 = v41;
  v10[12] = v40;
  v10[13] = v19;
  v10[14] = v42;
  v20 = v43;
  v21 = v37;
  v10[8] = v36;
  v10[9] = v21;
  v22 = v39;
  v10[10] = v38;
  v10[11] = v22;
  v23 = v33;
  *(v9 + 200) = v32;
  *(v9 + 216) = v23;
  v24 = v35;
  *(v9 + 232) = v34;
  *(v9 + 248) = v24;
  *(v9 + 152) = v18;
  v25 = v31;
  *(v9 + 168) = v30;
  *(v9 + 376) = v20;
  *(v9 + 184) = v25;
  sub_245778F2C(&v28, &v27, &qword_27EE29C18);
  return sub_245778F94(v44, &qword_27EE29C18);
}

uint64_t sub_2457EFE44@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 344);
  v4 = *(v1 + 312);
  v24 = *(v1 + 328);
  v25 = v3;
  v5 = *(v1 + 344);
  v26 = *(v1 + 360);
  v6 = *(v1 + 280);
  v21[8] = *(v1 + 264);
  v21[9] = v6;
  v7 = *(v1 + 312);
  v9 = *(v1 + 264);
  v8 = *(v1 + 280);
  v22 = *(v1 + 296);
  v10 = v22;
  v23 = v7;
  v11 = *(v1 + 216);
  v21[4] = *(v1 + 200);
  v21[5] = v11;
  v12 = *(v1 + 248);
  v21[6] = *(v1 + 232);
  v21[7] = v12;
  v13 = *(v1 + 152);
  v21[0] = *(v1 + 136);
  v21[1] = v13;
  v14 = *(v1 + 184);
  v21[2] = *(v1 + 168);
  v21[3] = v14;
  *(a1 + 192) = v24;
  *(a1 + 208) = v5;
  *(a1 + 224) = *(v1 + 360);
  *(a1 + 128) = v9;
  *(a1 + 144) = v8;
  v27 = *(v1 + 376);
  *(a1 + 240) = *(v1 + 376);
  *(a1 + 160) = v10;
  *(a1 + 176) = v4;
  v15 = *(v1 + 216);
  *(a1 + 64) = *(v1 + 200);
  *(a1 + 80) = v15;
  v16 = *(v1 + 248);
  *(a1 + 96) = *(v1 + 232);
  *(a1 + 112) = v16;
  v17 = *(v1 + 152);
  *a1 = *(v1 + 136);
  *(a1 + 16) = v17;
  v18 = *(v1 + 184);
  *(a1 + 32) = *(v1 + 168);
  *(a1 + 48) = v18;
  return sub_245778F2C(v21, &v20, &qword_27EE29C18);
}

uint64_t sub_2457EFF58(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 328);
  v4 = *(v1 + 360);
  v19[13] = *(v1 + 344);
  v19[14] = v4;
  v5 = *(v1 + 264);
  v6 = *(v1 + 296);
  v7 = *(v1 + 312);
  v19[9] = *(v1 + 280);
  v19[10] = v6;
  v19[11] = v7;
  v19[12] = v3;
  v8 = *(v1 + 216);
  v19[4] = *(v1 + 200);
  v19[5] = v8;
  v19[6] = *(v1 + 232);
  v19[7] = *(v1 + 248);
  v19[8] = v5;
  v9 = *(v1 + 152);
  v19[0] = *(v1 + 136);
  v19[1] = v9;
  v10 = *(v1 + 184);
  v19[2] = *(v1 + 168);
  v19[3] = v10;
  v11 = *(a1 + 208);
  *(v1 + 328) = *(a1 + 192);
  *(v1 + 344) = v11;
  *(v1 + 360) = *(a1 + 224);
  v12 = *(a1 + 144);
  *(v1 + 264) = *(a1 + 128);
  *(v1 + 280) = v12;
  v13 = *(a1 + 176);
  *(v1 + 296) = *(a1 + 160);
  *(v1 + 312) = v13;
  v14 = *(a1 + 80);
  *(v1 + 200) = *(a1 + 64);
  *(v1 + 216) = v14;
  v15 = *(a1 + 112);
  *(v1 + 232) = *(a1 + 96);
  *(v1 + 248) = v15;
  v16 = *(a1 + 16);
  *(v1 + 136) = *a1;
  *(v1 + 152) = v16;
  v17 = *(a1 + 48);
  *(v1 + 168) = *(a1 + 32);
  v20 = *(v1 + 376);
  *(v1 + 376) = *(a1 + 240);
  *(v1 + 184) = v17;
  return sub_245778F94(v19, &qword_27EE29C18);
}

void sub_2457F00BC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 384);
  *(v3 + 384) = v2;
  v5 = v2;
}

void *sub_2457F0114()
{
  swift_beginAccess();
  v1 = *(v0 + 384);
  v2 = v1;
  return v1;
}

void sub_2457F0158(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 384);
  *(v1 + 384) = a1;
}

uint64_t PassportScanResult.__allocating_init(mrzInformation:chipData:selfie:)(__int128 *a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  v6 = sub_2457F74B8(a1, a2, a3);

  return v6;
}

uint64_t PassportScanResult.init(mrzInformation:chipData:selfie:)(__int128 *a1, uint64_t a2, void *a3)
{
  v4 = sub_2457F74B8(a1, a2, a3);

  return v4;
}

uint64_t PassportScanResult.deinit()
{
  sub_2457F770C(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 344);
  v9[12] = *(v0 + 328);
  v9[13] = v1;
  v9[14] = *(v0 + 360);
  v10 = *(v0 + 376);
  v2 = *(v0 + 280);
  v9[8] = *(v0 + 264);
  v9[9] = v2;
  v3 = *(v0 + 312);
  v9[10] = *(v0 + 296);
  v9[11] = v3;
  v4 = *(v0 + 216);
  v9[4] = *(v0 + 200);
  v9[5] = v4;
  v5 = *(v0 + 248);
  v9[6] = *(v0 + 232);
  v9[7] = v5;
  v6 = *(v0 + 152);
  v9[0] = *(v0 + 136);
  v9[1] = v6;
  v7 = *(v0 + 184);
  v9[2] = *(v0 + 168);
  v9[3] = v7;
  sub_245778F94(v9, &qword_27EE29C18);

  return v0;
}

uint64_t PassportScanResult.__deallocating_deinit()
{
  sub_2457F770C(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 344);
  v9[12] = *(v0 + 328);
  v9[13] = v1;
  v9[14] = *(v0 + 360);
  v10 = *(v0 + 376);
  v2 = *(v0 + 280);
  v9[8] = *(v0 + 264);
  v9[9] = v2;
  v3 = *(v0 + 312);
  v9[10] = *(v0 + 296);
  v9[11] = v3;
  v4 = *(v0 + 216);
  v9[4] = *(v0 + 200);
  v9[5] = v4;
  v5 = *(v0 + 248);
  v9[6] = *(v0 + 232);
  v9[7] = v5;
  v6 = *(v0 + 152);
  v9[0] = *(v0 + 136);
  v9[1] = v6;
  v7 = *(v0 + 184);
  v9[2] = *(v0 + 168);
  v9[3] = v7;
  sub_245778F94(v9, &qword_27EE29C18);

  return swift_deallocClassInstance();
}

uint64_t sub_2457F042C()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = [objc_opt_self() standardUserDefaults];
  sub_24590D984();
  v13 = sub_245910F94();

  if (v13)
  {
    sub_24590C714();
    v14 = sub_24590F344();
    v15 = sub_245910F54();
    if (!os_log_type_enabled(v14, v15))
    {
      v17 = 1;
      goto LABEL_14;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_245767000, v14, v15, "MRZReaderViewController getPendingCommands readiness check enabled via debug setting", v16, 2u);
    v17 = 1;
  }

  else
  {
    v18 = *(*(v1 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_proofingFlowManager) + 312);
    if (v18 && (v19 = v18, v20 = sub_24590D7C4(), v19, v20 != 2) && (v20 & 1) != 0)
    {
      sub_24590C714();
      v14 = sub_24590F344();
      v21 = sub_245910F54();
      if (!os_log_type_enabled(v14, v21))
      {
        v17 = 1;
        v11 = v9;
        goto LABEL_14;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_245767000, v14, v21, "MRZReaderViewController getPendingCommands readiness check enabled via server config", v16, 2u);
      v17 = 1;
      v11 = v9;
    }

    else
    {
      sub_24590C714();
      v14 = sub_24590F344();
      v22 = sub_245910F54();
      if (!os_log_type_enabled(v14, v22))
      {
        v17 = 0;
        v11 = v6;
        goto LABEL_14;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_245767000, v14, v22, "MRZReaderViewController getPendingCommands readiness check disabled", v16, 2u);
      v17 = 0;
      v11 = v6;
    }
  }

  MEMORY[0x245D77B40](v16, -1, -1);
LABEL_14:

  (*(v3 + 8))(v11, v2);
  return v17;
}

id sub_2457F0740()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___previewView;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___previewView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___previewView);
  }

  else
  {
    v4 = sub_2457F07A4(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2457F07A4(uint64_t a1)
{
  v64 = sub_24590F354();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = &v61 - v4;
  v75 = sub_245911024();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_245911114();
  MEMORY[0x28223BE20](v70);
  v69 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_245910814();
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24590EAF4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_imageQualityManager);
  v13 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_documentsRepository) + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportFrameRate;
  v14 = *v13;
  v15 = *(v13 + 8) == 0;
  v76 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_mrzParser);
  v16 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_proofingFlowManager);
  if (!v15)
  {
    v14 = 3;
  }

  v74 = v14;
  v66 = *(v16 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_analyticsReporter);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = type metadata accessor for PassportMRZCameraPreviewView();
  v18 = objc_allocWithZone(v77);
  v19 = &v18[OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_captureRegionOfInterest];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v19[32] = 1;
  v20 = OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_passportOverlayView;
  v21 = objc_allocWithZone(type metadata accessor for PassportCameraOverlayView());

  v65 = v17;

  *&v18[v20] = sub_2457E57E0(38.0, 0.5, 0.7, 0.0, 0.0, 0.0, 0.0);
  v22 = OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_previewLayer;
  *&v18[v22] = [objc_allocWithZone(MEMORY[0x277CE5B68]) init];
  v23 = OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_finalFrameLayer;
  *&v18[v23] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) &selRef_initWithString_attributes_];
  v24 = OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_mrzWrapperLayer;
  *&v18[v24] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) &selRef_initWithString_attributes_];
  v25 = OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_mrzLayer;
  v26 = *MEMORY[0x277D743F8];
  (*(v10 + 104))(v12, *MEMORY[0x277CFFE40], v9);
  v68 = objc_opt_self();
  v27 = [v68 whiteColor];
  v28 = type metadata accessor for MRZLayer();
  v29 = objc_allocWithZone(v28);
  *&v29[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_mrzLineLayers] = MEMORY[0x277D84F90];
  (*(v10 + 16))(&v29[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_mrzFormat], v12, v9);
  *&v29[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_fontWeight] = v26;
  *&v29[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_textColor] = v27;
  v29[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_ignoresAccessibilityBold] = 0;
  v84.receiver = v29;
  v84.super_class = v28;
  v30 = v27;
  v31 = objc_msgSendSuper2(&v84, &selRef_initWithString_attributes_);
  sub_2457E4208();

  (*(v10 + 8))(v12, v9);
  *&v18[v25] = v31;
  *&v18[OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_previewDetectionBox] = 0;
  v32 = type metadata accessor for MRZCaptureSessionManager();
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  sub_24579D5E0(0, &qword_27EE29CA0);
  v34 = v66;

  sub_245910804();
  v83 = MEMORY[0x277D84F90];
  sub_2457F7CDC(&qword_27EE29CA8, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29CB0);
  sub_2457F7D24();
  sub_2459113A4();
  (*(v73 + 104))(v72, *MEMORY[0x277D85268], v75);
  *(v33 + 24) = sub_245911124();
  *(v33 + 32) = [objc_allocWithZone(MEMORY[0x277CE5B60]) init];
  *(v33 + 40) = [objc_allocWithZone(MEMORY[0x277CE5B38]) init];
  *(v33 + 64) = 0u;
  *(v33 + 80) = 0u;
  *(v33 + 96) = 1;
  *(v33 + 152) = 0;
  *(v33 + 104) = 0u;
  *(v33 + 120) = 0u;
  *(v33 + 136) = 0;
  v35 = OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_lastResult;
  v36 = sub_24590E9D4();
  (*(*(v36 - 8) + 56))(v33 + v35, 1, 1, v36);
  *(v33 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_resultCount) = 0;
  *(v33 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_guidanceRepeatCount) = 3;
  *(v33 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_isShowingIneligibleMRZ) = 0;
  *(v33 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_noCandidatesCount) = 0;
  *(v33 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_resetMRZCount) = 5;
  v37 = (v33 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_updateMRZDetectionBox);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v33 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_onFinishCapture);
  *v38 = 0;
  v38[1] = 0;
  *(v33 + 144) = v78;
  *(v33 + 160) = v74;
  *(v33 + 48) = v76;
  *(v33 + 56) = v34;
  v39 = (v33 + OBJC_IVAR____TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager_onImageQualityFeedback);
  v40 = v65;
  *v39 = sub_2457F7CC4;
  v39[1] = v40;
  v82.receiver = v33;
  v82.super_class = v32;

  v41 = objc_msgSendSuper2(&v82, sel_init);

  v42 = v80;

  *&v18[OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_mrzCaptureSessionManager] = v41;
  v43 = &v18[OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_onMRZFound];
  v44 = v71;
  *v43 = sub_2457F7CCC;
  v43[1] = v44;
  v45 = &v18[OBJC_IVAR____TtC9CoreIDVUI28PassportMRZCameraPreviewView_onCompleteTransitionOut];
  *v45 = sub_2457F7CD4;
  v45[1] = v42;
  v81.receiver = v18;
  v81.super_class = v77;

  v46 = objc_msgSendSuper2(&v81, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v46 setClipsToBounds_];
  v47 = [v68 systemBlackColor];
  [v46 setBackgroundColor_];

  [v46 setAlpha_];
  sub_2457E7BE0();
  v48 = sub_245910D64();
  v49 = v79;
  (*(*(v48 - 8) + 56))(v79, 1, 1, v48);
  sub_245910D34();
  v50 = v46;
  v51 = sub_245910D24();
  v52 = swift_allocObject();
  v53 = MEMORY[0x277D85700];
  v52[2] = v51;
  v52[3] = v53;
  v52[4] = v50;
  sub_2458B90EC(0, 0, v49, &unk_245918B58, v52);

  [v50 setTranslatesAutoresizingMaskIntoConstraints_];
  v54 = [v50 layer];
  sub_24579D5E0(0, &qword_27EE2B020);
  v55 = sub_24590D8B4();
  LOBYTE(v51) = MEMORY[0x245D76600](v55);

  if (v51)
  {
    v56 = v62;
    sub_24590C714();
    v57 = sub_24590F344();
    v58 = sub_245910F54();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_245767000, v57, v58, "CALayer internal setting is enabled to allow screen capture on redacted layer", v59, 2u);
      MEMORY[0x245D77B40](v59, -1, -1);
    }

    (*(v63 + 8))(v56, v64);
  }

  else
  {
    [v54 setDisableUpdateMask_];
  }

  return v50;
}

void sub_2457F1370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_245910D64();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    sub_245910D34();

    v10 = v8;
    v11 = sub_245910D24();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = a1;
    v12[5] = a2;
    v12[6] = v10;
    sub_2458B90EC(0, 0, v6, &unk_245918B68, v12);
  }
}

void sub_2457F14E0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_2457F3264(a1);
  }
}

void sub_2457F153C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_hasCompletedExitTransition) = 1;
    sub_2457F7020();
  }
}

id sub_2457F15A0()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___backgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___backgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___backgroundView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v5 = [objc_opt_self() secondarySystemBackgroundColor];
    [v4 setBackgroundColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2457F1688()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent_];

  [v0 setBackgroundColor_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v0 layer];
  [v4 setCornerRadius_];

  v5 = [v0 layer];
  [v5 setCornerCurve_];

  [v0 setHidden_];
  v6 = [v0 layer];
  v7 = [v1 blackColor];
  v8 = [v7 CGColor];

  [v6 setShadowColor_];
  v9 = [v0 layer];
  [v9 setShadowRadius_];

  return v0;
}

id sub_2457F1874(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2457F18D4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_245916930;
  v2 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29648);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_245916930;
  v4 = *MEMORY[0x277CC4980];
  *(v3 + 32) = *MEMORY[0x277CC4980];
  v5 = *MEMORY[0x277CC4958];
  *(v3 + 40) = *MEMORY[0x277CC4958];
  v6 = v5;
  v7 = v2;
  v8 = v4;
  v9 = sub_2458B8934(v3);
  swift_setDeallocating();
  sub_245778F94(v3 + 32, &qword_27EE29650);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29658);
  *(inited + 40) = v9;
  sub_2458B8A24(inited);
  swift_setDeallocating();
  sub_245778F94(inited + 32, &qword_27EE29660);
  type metadata accessor for CFString(0);
  sub_2457F7CDC(&qword_27EE28910, type metadata accessor for CFString);
  v10 = sub_2459108E4();

  v11 = CTFontDescriptorCreateWithAttributes(v10);

  v12 = CTFontCreateWithFontDescriptor(v11, 15.0, 0);
  [v0 setFont_];

  v13 = v0;
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setAdjustsFontForContentSizeCategory_];
  v14 = objc_opt_self();
  v15 = [v14 whiteColor];
  [v13 setTextColor_];

  [v13 setTextAlignment_];
  [v13 setNumberOfLines_];
  v16 = [v13 layer];
  v17 = [v14 blackColor];
  v18 = [v17 CGColor];

  [v16 setShadowColor_];
  v19 = [v13 layer];
  LODWORD(v20) = 0.75;
  [v19 setShadowOpacity_];

  v21 = [v13 layer];
  [v21 setShadowRadius_];

  v22 = [v13 layer];
  [v22 setShadowOffset_];

  return v13;
}

id sub_2457F1CA4()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PassportMRZReaderViewController();
  v70.receiver = v0;
  v70.super_class = v6;
  objc_msgSendSuper2(&v70, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = [objc_opt_self() systemBackgroundColor];
  [v8 setBackgroundColor_];

  v10 = objc_opt_self();
  v11 = [v10 standardUserDefaults];
  sub_24590D8E4();
  v49 = sub_245910FA4();
  v13 = v12;

  if (!v13)
  {
LABEL_21:
    sub_2457F271C();
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = &v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
    v43 = *&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
    *v42 = sub_2457F7FB8;
    v42[1] = v41;

    sub_245771C34(v43);
  }

  v47 = v3;
  v14 = [v10 standardUserDefaults];
  sub_24590D874();
  v48 = sub_245910FA4();
  v16 = v15;

  if (!v16)
  {
LABEL_20:

    goto LABEL_21;
  }

  v17 = [v10 standardUserDefaults];
  sub_24590D884();
  v18 = sub_245910FA4();
  v20 = v19;

  if (!v20)
  {
LABEL_19:

    goto LABEL_20;
  }

  v21 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v21 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    goto LABEL_18;
  }

  v22 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v22 = v48 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    goto LABEL_18;
  }

  v23 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v23 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
LABEL_18:

    goto LABEL_19;
  }

  v46 = v18;
  sub_24590C714();
  v24 = sub_24590F344();
  v25 = sub_245910F84();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v45 = v24;
    v27 = v26;
    *v26 = 0;
    _os_log_impl(&dword_245767000, v45, v25, "Using overriden MRZ values skipping MRZ scan", v26, 2u);
    v28 = v27;
    v24 = v45;
    MEMORY[0x245D77B40](v28, -1, -1);
  }

  (*(v47 + 8))(v5, v2);
  LOBYTE(v68[0]) = 1;
  *&v52 = v49;
  *(&v52 + 1) = v13;
  *&v53 = v48;
  *(&v53 + 1) = v16;
  *&v54 = v46;
  *(&v54 + 1) = v20;
  *&v55 = 0;
  *(&v55 + 1) = 0xE000000000000000;
  *&v29 = -1;
  *(&v29 + 1) = -1;
  v56 = v29;
  v57 = v29;
  v58 = MEMORY[0x277D84F90];
  v59 = 1;
  v1[OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_hasCompletedExitTransition] = 1;
  v30 = *&v1[OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_passportScanResult];
  v62 = v54;
  v63 = v55;
  v60 = v52;
  v61 = v53;
  v67 = 1;
  v65 = v57;
  v66 = v58;
  v64 = v56;
  swift_beginAccess();
  v31 = *(v30 + 80);
  v32 = *(v30 + 96);
  v33 = *(v30 + 112);
  v69 = *(v30 + 128);
  v68[6] = v33;
  v34 = *(v30 + 16);
  v35 = *(v30 + 32);
  v36 = *(v30 + 64);
  v68[2] = *(v30 + 48);
  v68[3] = v36;
  v68[4] = v31;
  v68[5] = v32;
  v68[0] = v34;
  v68[1] = v35;
  v37 = v61;
  *(v30 + 16) = v60;
  *(v30 + 32) = v37;
  v38 = v63;
  *(v30 + 48) = v62;
  *(v30 + 64) = v38;
  v39 = v65;
  *(v30 + 80) = v64;
  *(v30 + 96) = v39;
  v40 = v66;
  *(v30 + 128) = v67;
  *(v30 + 112) = v40;
  sub_24578FE88(&v52, v50);
  sub_245778F94(v68, &qword_27EE29C10);
  v50[4] = v56;
  v50[5] = v57;
  v50[6] = v58;
  v51 = v59;
  v50[0] = v52;
  v50[1] = v53;
  v50[2] = v54;
  v50[3] = v55;
  sub_2457F3264(v50);
  return sub_2457ECBF8(&v52);
}

uint64_t sub_2457F2170()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_24590C714();
    v6 = sub_24590F344();
    v7 = sub_245910F84();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_245767000, v6, v7, "PassportMRZReaderViewController cancelling", v8, 2u);
      MEMORY[0x245D77B40](v8, -1, -1);
    }

    (*(v1 + 8))(v3, v0);

    sub_245887AB8(v5, 0xD000000000000012, 0x8000000245926590, 0, 0, 0);
  }

  return result;
}

uint64_t sub_2457F236C(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PassportMRZReaderViewController();
  objc_msgSendSuper2(&v4, sel_viewDidAppear_, a1 & 1);
  sub_24590E3D4();

  sub_24590E024();
  sub_24590CDA4();
  sub_24590E1B4();
  sub_24590E484();
}

void sub_2457F24EC(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for PassportMRZReaderViewController();
  v14.receiver = v2;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, sel_viewWillDisappear_, a1 & 1);
  sub_24590CA74();
  v8 = sub_2457F0740();
  v9 = sub_245910D64();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_245910D34();
  v10 = v8;
  v11 = sub_245910D24();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  sub_2458B90EC(0, 0, v6, &unk_245918B70, v12);

  if (*&v2[OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_networkTask])
  {

    sub_245910DD4();
  }
}

void sub_2457F26F4()
{
  sub_2458A2684();

  sub_2457F271C();
}

void sub_2457F271C()
{
  v1 = sub_2457F1668();
  v2 = sub_2457F1854();
  [v1 addSubview_];

  v3 = sub_2458A1E14();
  v4 = sub_2457F15A0();
  [v3 addSubview_];

  v5 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView;
  v6 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView);
  v7 = sub_2457F0740();
  [v6 addSubview_];

  v8 = OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___guidanceContainer;
  [*(v0 + v5) addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2459189D0;
  v10 = OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___backgroundView;
  v11 = [*(v0 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___backgroundView) leftAnchor];
  v12 = [*(v0 + v5) &selRef_setRenderMode_ + 2];
  v13 = [v11 constraintEqualToAnchor_];

  *(v9 + 32) = v13;
  v14 = [*(v0 + v10) rightAnchor];
  v15 = [*(v0 + v5) rightAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v9 + 40) = v16;
  v17 = [*(v0 + v10) topAnchor];
  v18 = [*(v0 + v5) &off_278E87950];
  v19 = [v17 constraintEqualToAnchor_];

  *(v9 + 48) = v19;
  v20 = [*(v0 + v10) bottomAnchor];
  v21 = [*(v0 + v5) &selRef_getGlobalProgenitorKeyAttestation_ + 5];
  v22 = [v20 constraintEqualToAnchor_];

  *(v9 + 56) = v22;
  v23 = OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___previewView;
  v24 = [*(v0 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___previewView) leftAnchor];
  v25 = [*(v0 + v5) leftAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v9 + 64) = v26;
  v27 = [*(v0 + v23) rightAnchor];
  v28 = [*(v0 + v5) rightAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v9 + 72) = v29;
  v30 = [*(v0 + v23) topAnchor];
  v31 = [*(v0 + v5) topAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v9 + 80) = v32;
  v33 = [*(v0 + v23) bottomAnchor];
  v34 = [*(v0 + v5) bottomAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v9 + 88) = v35;
  v36 = [*(v0 + v8) topAnchor];
  v37 = [*(v0 + v5) topAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:20.0];

  *(v9 + 96) = v38;
  v39 = [*(v0 + v8) trailingAnchor];
  v40 = [*(v0 + v5) trailingAnchor];
  v41 = [v39 constraintLessThanOrEqualToAnchor:v40 constant:-20.0];

  *(v9 + 104) = v41;
  v42 = [*(v0 + v8) leadingAnchor];
  v43 = [*(v0 + v5) leadingAnchor];
  v44 = [v42 constraintGreaterThanOrEqualToAnchor:v43 constant:20.0];

  *(v9 + 112) = v44;
  v45 = [*(v0 + v8) centerXAnchor];
  v46 = [*(v0 + v5) centerXAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v9 + 120) = v47;
  v48 = OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___guidancePrompt;
  v49 = [*(v0 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___guidancePrompt) topAnchor];
  v50 = [*(v0 + v8) topAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:2.0];

  *(v9 + 128) = v51;
  v52 = [*(v0 + v48) bottomAnchor];
  v53 = [*(v0 + v8) bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:-2.0];

  *(v9 + 136) = v54;
  v55 = [*(v0 + v48) trailingAnchor];
  v56 = [*(v0 + v8) trailingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:-8.0];

  *(v9 + 144) = v57;
  v58 = [*(v0 + v48) leadingAnchor];
  v59 = [*(v0 + v8) leadingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:8.0];

  *(v9 + 152) = v60;
  v61 = objc_opt_self();
  sub_24579D5E0(0, &qword_27EE291F0);
  v62 = sub_245910C34();

  [v61 activateConstraints_];
}

uint64_t sub_2457F2E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_24590F354();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  sub_245910D34();
  v6[8] = sub_245910D24();
  v9 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2457F2F94, v9, v8);
}

uint64_t sub_2457F2F94()
{
  v31 = v0;
  v1 = v0[3];

  sub_24590C714();

  v2 = sub_24590F344();
  v3 = sub_245910F54();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  if (v4)
  {
    v9 = v0[2];
    v8 = v0[3];
    v29 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315138;
    v12 = v8 == 0;
    if (v8)
    {
      v13 = v9;
    }

    else
    {
      v13 = 0x3E6C696E3CLL;
    }

    if (v12)
    {
      v14 = 0xE500000000000000;
    }

    else
    {
      v14 = v1;
    }

    v15 = sub_2458CC378(v13, v14, &v30);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_245767000, v2, v3, "PassportMRZReaderViewController updating IMQ feedback: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245D77B40](v11, -1, -1);
    MEMORY[0x245D77B40](v10, -1, -1);

    (*(v5 + 8))(v29, v7);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v16 = v0[3];
  v17 = sub_2457F1854();
  if (v16)
  {
    v18 = sub_2459109C4();
  }

  else
  {
    v18 = 0;
  }

  v19 = v0[4];
  [v17 setText_];

  v20 = sub_2457F1668();
  [v20 setHidden_];

  v21 = (v19 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_lastSpokenAlertMessage);
  v22 = *(v19 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_lastSpokenAlertMessage + 8);
  if (v16)
  {
    if (v22 && (*v21 == v0[2] && v22 == v0[3] || (sub_245911714() & 1) != 0))
    {
      goto LABEL_22;
    }

    v23 = *MEMORY[0x277D76438];
    v24 = sub_2459109C4();
  }

  else
  {
    if (!v22)
    {
      goto LABEL_22;
    }

    v24 = 0;
    v23 = *MEMORY[0x277D76438];
  }

  v26 = v0[2];
  v25 = v0[3];
  UIAccessibilityPostNotification(v23, v24);
  swift_unknownObjectRelease();
  *v21 = v26;
  v21[1] = v25;

LABEL_22:

  v27 = v0[1];

  return v27();
}

void sub_2457F3264(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v4 - 8);
  v57 = &v52 - v5;
  v56 = sub_24590C1F4();
  v6 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v52 - v10;
  v12 = *(a1 + 80);
  v67 = *(a1 + 64);
  v68 = v12;
  v69 = *(a1 + 96);
  v70 = *(a1 + 112);
  v13 = *(a1 + 16);
  v63 = *a1;
  v64 = v13;
  v14 = *(a1 + 48);
  v65 = *(a1 + 32);
  v66 = v14;
  v15 = *&v1[OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_configuration];
  sub_2457EF5FC();
  *(v15 + 80) = 0;
  v16 = *(v15 + 88);
  if (v16)
  {

    v16(v17);
    sub_245771C34(v16);
  }

  v18 = *&v2[OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_passportScanResult];
  swift_beginAccess();
  v19 = *(v18 + 80);
  v20 = *(v18 + 96);
  v21 = *(v18 + 112);
  v62 = *(v18 + 128);
  v61[6] = v21;
  v22 = *(v18 + 16);
  v23 = *(v18 + 32);
  v24 = *(v18 + 64);
  v61[2] = *(v18 + 48);
  v61[3] = v24;
  v61[4] = v19;
  v61[5] = v20;
  v61[0] = v22;
  v61[1] = v23;
  v25 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v25;
  v26 = *(a1 + 48);
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = v26;
  v27 = *(a1 + 80);
  *(v18 + 80) = *(a1 + 64);
  *(v18 + 96) = v27;
  v28 = *(a1 + 96);
  *(v18 + 128) = *(a1 + 112);
  *(v18 + 112) = v28;
  sub_24578FE88(&v63, v59);
  sub_245778F94(v61, &qword_27EE29C10);
  v71 = v63;
  v59[0] = v63;
  v29 = v64;
  sub_2457F7AB8(&v71, &v58);
  MEMORY[0x245D76160](v29, *(&v29 + 1));
  MEMORY[0x245D76160](v65, *(&v65 + 1));
  v30 = v59[0];
  v31 = objc_allocWithZone(sub_24590C914());

  sub_24590C904();
  v32 = objc_allocWithZone(sub_24590D7A4());
  v55 = sub_24590D784();
  sub_24590CA84();
  v59[4] = v67;
  v59[5] = v68;
  v59[6] = v69;
  v60 = v70;
  v59[0] = v63;
  v59[1] = v64;
  v59[2] = v65;
  v59[3] = v66;
  sub_245786868(v30, *(&v30 + 1), v11, v59);

  sub_245778F94(v11, &qword_27EE28EF0);
  sub_24590C1E4();
  v33 = sub_24590C1D4();
  v53 = v34;
  v54 = v33;
  (*(v6 + 8))(v8, v56);
  sub_24590E3F4();

  sub_24590E024();
  sub_24590CDA4();
  sub_24590E1B4();
  sub_24590E484();

  v35 = sub_245910D64();
  v36 = *(*(v35 - 8) + 56);
  v37 = v57;
  v36(v57, 1, 1, v35);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v39 = v54;
  v40 = v55;
  v38[4] = v2;
  v38[5] = v40;
  v41 = v53;
  v38[6] = v39;
  v38[7] = v41;
  v42 = v2;
  v43 = v40;
  v44 = sub_24581B2A4(0, 0, v37, &unk_245918B18, v38);
  sub_245778F94(v37, &unk_27EE297B0);
  *&v42[OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_networkTask] = v44;

  v36(v37, 1, 1, v35);
  sub_245910D34();
  sub_24578FE88(&v63, v59);
  v45 = v42;
  v46 = sub_245910D24();
  v47 = swift_allocObject();
  v48 = v68;
  *(v47 + 104) = v67;
  *(v47 + 120) = v48;
  *(v47 + 136) = v69;
  v49 = v64;
  *(v47 + 40) = v63;
  *(v47 + 56) = v49;
  v50 = v66;
  *(v47 + 72) = v65;
  v51 = MEMORY[0x277D85700];
  *(v47 + 16) = v46;
  *(v47 + 24) = v51;
  *(v47 + 32) = v45;
  *(v47 + 152) = v70;
  *(v47 + 88) = v50;
  sub_2458B90EC(0, 0, v37, &unk_245918B28, v47);
}

uint64_t sub_2457F38B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_24590F354();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2457F3984, 0, 0);
}

uint64_t sub_2457F3984()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "PassportMRZReaderViewController sending MRZ as initial proofing data", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];

  v7 = *(v6 + 8);
  v0[10] = v7;
  v7(v4, v5);
  v0[11] = OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_proofingFlowManager;
  v0[12] = sub_245910D34();
  v0[13] = sub_245910D24();
  v9 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2457F3ACC, v9, v8);
}

uint64_t sub_2457F3ACC()
{
  v1 = v0[11];
  v2 = v0[2];

  v0[14] = *(v2 + v1);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_2457F3B7C;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return sub_24587F1F4(v6, v4, v5);
}

uint64_t sub_2457F3B7C()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2457F40F8, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 136) = v3;
    *v3 = v2;
    v3[1] = sub_2457F3CE8;

    return sub_2457F4744();
  }
}

uint64_t sub_2457F3CE8()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2457F42A0, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 152) = v3;
    *v3 = v2;
    v3[1] = sub_2457F3E54;

    return sub_2457F68E0();
  }
}

uint64_t sub_2457F3E54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2457F3F80()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 16);

  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = 0;
  v4 = sub_245809110(sub_2457F7CA8, v3, "CoreIDVUI/IdentityProofingFlowManager.swift", 43);

  v5 = [v2 navigationController];
  sub_24586D558(v4, v5);

  return MEMORY[0x2822009F8](sub_2457F4088, 0, 0);
}

uint64_t sub_2457F4088()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2457F40F8()
{
  v1 = v0[16];
  v0[20] = v1;
  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_245767000, v3, v4, "PassportMRZReaderViewController failed initiatePartialProofing: %@", v5, 0xCu);
    sub_245778F94(v6, &qword_27EE297C0);
    MEMORY[0x245D77B40](v6, -1, -1);
    MEMORY[0x245D77B40](v5, -1, -1);
  }

  v9 = v0[10];
  v10 = v0[8];
  v11 = v0[6];

  v9(v10, v11);
  v0[21] = sub_245910D24();
  v13 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2457F3F80, v13, v12);
}

uint64_t sub_2457F42A0()
{
  v1 = v0[18];
  v0[20] = v1;
  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_245767000, v3, v4, "PassportMRZReaderViewController failed initiatePartialProofing: %@", v5, 0xCu);
    sub_245778F94(v6, &qword_27EE297C0);
    MEMORY[0x245D77B40](v6, -1, -1);
    MEMORY[0x245D77B40](v5, -1, -1);
  }

  v9 = v0[10];
  v10 = v0[8];
  v11 = v0[6];

  v9(v10, v11);
  v0[21] = sub_245910D24();
  v13 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2457F3F80, v13, v12);
}

uint64_t sub_2457F4448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_245910D34();
  v5[4] = sub_245910D24();
  v7 = sub_245910CD4();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_2457F44E0, v7, v6);
}

uint64_t sub_2457F44E0()
{
  v1 = *(v0 + 24);
  v2 = *v1;
  v3 = v1[1];
  v4 = sub_2458214FC(v1[6], v1[7], *v1, v3);
  v5 = (v4 == 2) | v4;
  v6 = v1[12];
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_2457F45C4;

  return sub_24582C3E4(v6, v2, v3, v5 & 1);
}

uint64_t sub_2457F45C4()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_2457F46E4, v3, v2);
}

uint64_t sub_2457F46E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2457F4744()
{
  v1[9] = v0;
  v2 = sub_24590C6B4();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = sub_245910D04();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v4 = sub_24590F354();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v5 = sub_24590EA74();
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A800);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v6 = sub_24590C1C4();
  v1[24] = v6;
  v1[25] = *(v6 - 8);
  v1[26] = swift_task_alloc();
  sub_245910D34();
  v1[27] = sub_245910D24();
  v8 = sub_245910CD4();
  v1[28] = v8;
  v1[29] = v7;

  return MEMORY[0x2822009F8](sub_2457F49EC, v8, v7);
}

uint64_t sub_2457F49EC()
{
  if (sub_2457F042C())
  {
    v2 = v0[25];
    v1 = v0[26];
    v3 = v0[24];
    v4 = v0[9];
    sub_24590C1B4();
    sub_24590C194();
    v0[30] = v5;
    v6 = *(v2 + 8);
    v0[31] = v6;
    v0[32] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v1, v3);
    v7 = swift_allocObject();
    v0[33] = v7;
    *(v7 + 16) = v4;
    v8 = v4;
    v9 = swift_task_alloc();
    v0[34] = v9;
    *v9 = v0;
    v9[1] = sub_2457F4BBC;
    v10.n128_u64[0] = 0x404E000000000000;

    return MEMORY[0x282151470](v10);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_2457F4BBC()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_2457F4E08;
  }

  else
  {

    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_2457F4CD8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2457F4CD8()
{

  v1 = v0[31];
  v2 = v0[26];
  v3 = v0[24];
  sub_24590C1B4();
  sub_24590C194();
  v1(v2, v3);
  sub_24590C594();
  sub_24590C574();

  v4 = v0[1];

  return v4();
}

uint64_t sub_2457F4E08()
{
  v1 = *(v0 + 280);

  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 280);
  if (v3)
  {
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    v7 = *(v0 + 152);
    v8 = *(v0 + 112);
    v41 = *(v0 + 120);
    v9 = *(v0 + 104);

    (*(v6 + 104))(v5, *MEMORY[0x277CFFCF8], v7);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2457F7CDC(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v10 = swift_allocError();
    sub_24590EA94();
    (*(v8 + 8))(v41, v9);
    v11 = v10;
    v12 = (v0 + 40);
  }

  else
  {
    v12 = (v0 + 48);

    *(v0 + 48) = v4;
    v13 = v4;
    v14 = swift_dynamicCast();
    v11 = *(v0 + 280);
    if (v14)
    {
      v16 = *(v0 + 160);
      v15 = *(v0 + 168);
      v17 = *(v0 + 152);
      v18 = *(v0 + 88);
      v40 = *(v0 + 80);
      v42 = *(v0 + 96);

      (*(v16 + 104))(v15, *MEMORY[0x277CFFC68], v17);
      sub_2458CC8AC(MEMORY[0x277D84F90]);
      sub_24590EA84();
      sub_2457F7CDC(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
      v11 = swift_allocError();
      sub_24590EA94();
      (*(v18 + 8))(v42, v40);
    }
  }

  v19 = *(v0 + 248);
  v20 = *(v0 + 208);
  v21 = *(v0 + 192);
  sub_24590C1B4();
  sub_24590C194();
  v19(v20, v21);
  if (v11)
  {
    v23 = *(v0 + 176);
    v22 = *(v0 + 184);
    v24 = *(v0 + 160);
    v39 = *(v0 + 152);
    swift_getErrorValue();
    v25 = *(v0 + 16);
    v26 = *(v0 + 24);
    v27 = *(v26 - 8);
    v28 = swift_task_alloc();
    (*(v27 + 16))(v28, v25, v26);
    sub_2459117E4();
    (*(v27 + 8))(v28, v26);
    sub_245778F2C(v22, v23, &qword_27EE2A800);
    v29 = (*(v24 + 48))(v23, 1, v39);
    v30 = *(v0 + 184);
    if (v29 == 1)
    {
      sub_245778F94(*(v0 + 184), &qword_27EE2A800);
    }

    else
    {
      v32 = *(v0 + 168);
      v34 = *(v0 + 152);
      v33 = *(v0 + 160);
      (*(v33 + 32))(v32, *(v0 + 176), v34);
      *(v0 + 64) = sub_24590EA64();
      sub_2459116E4();
      (*(v33 + 8))(v32, v34);
      sub_245778F94(v30, &qword_27EE2A800);
    }

    v36 = *(v0 + 136);
    v35 = *(v0 + 144);
    v37 = *(v0 + 128);

    sub_24590C594();
    sub_24590C574();

    sub_24590C714();
    sub_24590C3F4();
    (*(v36 + 8))(v35, v37);
    swift_willThrow();

    v31 = *(v0 + 8);
  }

  else
  {
    sub_24590C594();
    sub_24590C574();

    v31 = *(v0 + 8);
  }

  return v31();
}

uint64_t sub_2457F54C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2457A18F4;

  return sub_2457F5558();
}

uint64_t sub_2457F5558()
{
  v1[2] = v0;
  v2 = sub_24590EA74();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_2459115A4();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_24590F354();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_245910D34();
  v1[14] = sub_245910D24();
  v6 = sub_245910CD4();
  v1[15] = v6;
  v1[16] = v5;

  return MEMORY[0x2822009F8](sub_2457F571C, v6, v5);
}

uint64_t sub_2457F571C()
{
  sub_245910DF4();
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "MRZReaderViewController checking server readiness to start NFC scanning", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = v0[13];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[2];

  v8 = *(v6 + 8);
  v0[17] = v8;
  result = v8(v4, v5);
  v10 = *(v7 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_checkGetPendingCommandsReadinessAttempts);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v7 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_checkGetPendingCommandsReadinessAttempts) = v12;
    v13 = swift_task_alloc();
    v0[18] = v13;
    *v13 = v0;
    v13[1] = sub_2457F5A28;

    return sub_24587FF2C();
  }

  return result;
}

uint64_t sub_2457F5A28(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  v5 = *(v3 + 128);
  v6 = *(v3 + 120);
  if (v1)
  {
    v7 = sub_2457F6558;
  }

  else
  {
    v7 = sub_2457F5B6C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2457F5B6C()
{
  v1 = sub_24590D694();
  v2 = v0[19];
  if (v1)
  {

    v3 = v0[1];
LABEL_7:

    return v3();
  }

  v4 = sub_24590D684();
  if (v5)
  {
    v6 = v0[19];
    v8 = v0[4];
    v7 = v0[5];
    v9 = v0[3];

    (*(v8 + 104))(v7, *MEMORY[0x277CFFCD8], v9);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2457F7CDC(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v10 = swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    sub_24590C714();
    v11 = v10;
    v12 = sub_24590F344();
    v13 = sub_245910F64();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v10;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_245767000, v12, v13, "MRZReaderViewController failed readiness check: %@", v14, 0xCu);
      sub_245778F94(v15, &qword_27EE297C0);
      MEMORY[0x245D77B40](v15, -1, -1);
      MEMORY[0x245D77B40](v14, -1, -1);
    }

    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[9];

    (*(v19 + 8))(v18, v20);
    swift_willThrow();

    v3 = v0[1];
    goto LABEL_7;
  }

  v22 = v4;
  sub_24590C714();
  v23 = sub_24590F344();
  v24 = sub_245910F54();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = v22;
    _os_log_impl(&dword_245767000, v23, v24, "MRZReaderViewController server is not ready to start NFC scanning, retrying in %f seconds.", v25, 0xCu);
    MEMORY[0x245D77B40](v25, -1, -1);
  }

  v26 = v0[17];
  v27 = v0[12];
  v28 = v0[9];

  v26(v27, v28);
  v29 = sub_245911894();
  v31 = v30;
  sub_2459117A4();
  v32 = swift_task_alloc();
  v0[21] = v32;
  *v32 = v0;
  v32[1] = sub_2457F6014;

  return sub_2458959E4(v29, v31, 0, 0, 1);
}

uint64_t sub_2457F6014()
{
  v2 = *v1;
  v2[22] = v0;

  if (v0)
  {
    (*(v2[7] + 8))(v2[8], v2[6]);
    v3 = v2[15];
    v4 = v2[16];

    return MEMORY[0x2822009F8](sub_2457F62E8, v3, v4);
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);
    v5 = swift_task_alloc();
    v2[23] = v5;
    *v5 = v2;
    v5[1] = sub_2457F61AC;

    return sub_2457F5558();
  }
}

uint64_t sub_2457F61AC()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_2457F6718;
  }

  else
  {
    v5 = sub_2457F64B0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2457F62E8()
{
  v1 = v0[19];

  v2 = v0[22];
  sub_24590C714();
  v3 = v2;
  v4 = sub_24590F344();
  v5 = sub_245910F64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_245767000, v4, v5, "MRZReaderViewController failed readiness check: %@", v6, 0xCu);
    sub_245778F94(v7, &qword_27EE297C0);
    MEMORY[0x245D77B40](v7, -1, -1);
    MEMORY[0x245D77B40](v6, -1, -1);
  }

  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];

  (*(v11 + 8))(v10, v12);
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_2457F64B0()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2457F6558()
{

  v1 = v0[20];
  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_245767000, v3, v4, "MRZReaderViewController failed readiness check: %@", v5, 0xCu);
    sub_245778F94(v6, &qword_27EE297C0);
    MEMORY[0x245D77B40](v6, -1, -1);
    MEMORY[0x245D77B40](v5, -1, -1);
  }

  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];

  (*(v10 + 8))(v9, v11);
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_2457F6718()
{
  v1 = v0[19];

  v2 = v0[24];
  sub_24590C714();
  v3 = v2;
  v4 = sub_24590F344();
  v5 = sub_245910F64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_245767000, v4, v5, "MRZReaderViewController failed readiness check: %@", v6, 0xCu);
    sub_245778F94(v7, &qword_27EE297C0);
    MEMORY[0x245D77B40](v7, -1, -1);
    MEMORY[0x245D77B40](v6, -1, -1);
  }

  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];

  (*(v11 + 8))(v10, v12);
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_2457F68E0()
{
  v1[2] = v0;
  v2 = sub_24590F354();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_2459115A4();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  sub_245910D34();
  v1[9] = sub_245910D24();
  v5 = sub_245910CD4();
  v1[10] = v5;
  v1[11] = v4;

  return MEMORY[0x2822009F8](sub_2457F6A30, v5, v4);
}

uint64_t sub_2457F6A30()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_configuration);
  sub_2457EF5FC();
  *(v1 + 80) = 1;
  v2 = *(v1 + 88);
  if (v2)
  {

    v2(v3);
    sub_245771C34(v2);
  }

  sub_24590E404();

  sub_24590E024();
  sub_24590CDA4();
  sub_24590E1B4();
  sub_24590E484();

  sub_2459117A4();
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_2457F6C38;

  return sub_2458959E4(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_2457F6C38()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_2457F6E68;
  }

  else
  {
    v8 = sub_2457F6DD0;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2457F6DD0()
{

  *(*(v0 + 16) + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_hasCompletedProofingRequest) = 1;
  sub_2457F7020();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2457F6E68()
{
  v1 = v0[13];

  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_245767000, v3, v4, "MRZReaderViewController Failed to fail sleep: %@", v7, 0xCu);
    sub_245778F94(v8, &qword_27EE297C0);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  *(v0[2] + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_hasCompletedProofingRequest) = 1;
  sub_2457F7020();

  v11 = v0[1];

  return v11();
}

void sub_2457F7020()
{
  v1 = sub_24590F354();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  if (*(v0 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_hasCompletedExitTransition) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_hasCompletedProofingRequest) == 1)
    {
      v16 = [v0 navigationController];
      sub_24586CA74(v16, 2, 0, 0);
      v8 = v16;
    }

    else
    {
      sub_24590C714();
      v12 = sub_24590F344();
      v13 = sub_245910F84();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_245767000, v12, v13, "MRZReaderViewController proofing request has not completed; not yet navigating to next screen.", v14, 2u);
        MEMORY[0x245D77B40](v14, -1, -1);
      }

      (*(v2 + 8))(v7, v1);
    }
  }

  else
  {
    sub_24590C714();
    v9 = sub_24590F344();
    v10 = sub_245910F84();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_245767000, v9, v10, "MRZReaderViewController exit transition has not completed; not yet navigating to next screen.", v11, 2u);
      MEMORY[0x245D77B40](v11, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }
}

void sub_2457F7290()
{

  v1 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___guidancePrompt);
}

id sub_2457F7384()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassportMRZReaderViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2457F74B8(__int128 *a1, uint64_t a2, void *a3)
{
  *(v3 + 128) = 0;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 16) = 0u;
  sub_2457F80D0(v43);
  v7 = v43[13];
  *(v3 + 328) = v43[12];
  *(v3 + 344) = v7;
  *(v3 + 360) = v43[14];
  v8 = v43[9];
  *(v3 + 264) = v43[8];
  *(v3 + 280) = v8;
  v9 = v43[11];
  *(v3 + 296) = v43[10];
  *(v3 + 312) = v9;
  v10 = v43[5];
  *(v3 + 200) = v43[4];
  *(v3 + 216) = v10;
  v11 = v43[7];
  *(v3 + 232) = v43[6];
  *(v3 + 248) = v11;
  v12 = v43[1];
  *(v3 + 136) = v43[0];
  *(v3 + 152) = v12;
  v13 = v43[3];
  *(v3 + 168) = v43[2];
  v14 = v44;
  *(v3 + 184) = v13;
  *(v3 + 376) = v14;
  *(v3 + 384) = 0;
  swift_beginAccess();
  v15 = *(v3 + 96);
  v16 = *(v3 + 112);
  v17 = *(v3 + 64);
  v45[4] = *(v3 + 80);
  v45[5] = v15;
  v45[6] = v16;
  v46 = *(v3 + 128);
  v18 = *(v3 + 32);
  v19 = *(v3 + 48);
  v45[0] = *(v3 + 16);
  v45[1] = v18;
  v45[2] = v19;
  v45[3] = v17;
  v20 = *a1;
  v21 = a1[2];
  v22 = a1[3];
  *(v3 + 32) = a1[1];
  *(v3 + 48) = v21;
  *(v3 + 16) = v20;
  v23 = a1[4];
  v24 = a1[5];
  v25 = a1[6];
  *(v3 + 128) = *(a1 + 112);
  *(v3 + 96) = v24;
  *(v3 + 112) = v25;
  *(v3 + 64) = v22;
  *(v3 + 80) = v23;
  sub_245778F94(v45, &qword_27EE29C10);
  swift_beginAccess();
  v26 = *(v3 + 344);
  v47[12] = *(v3 + 328);
  v47[13] = v26;
  v47[14] = *(v3 + 360);
  v27 = *(v3 + 280);
  v47[8] = *(v3 + 264);
  v47[9] = v27;
  v28 = *(v3 + 312);
  v47[10] = *(v3 + 296);
  v47[11] = v28;
  v29 = *(v3 + 216);
  v47[4] = *(v3 + 200);
  v47[5] = v29;
  v30 = *(v3 + 248);
  v47[6] = *(v3 + 232);
  v47[7] = v30;
  v31 = *(v3 + 152);
  v47[0] = *(v3 + 136);
  v47[1] = v31;
  v32 = *(v3 + 184);
  v47[2] = *(v3 + 168);
  v47[3] = v32;
  v33 = *(a2 + 208);
  *(v3 + 328) = *(a2 + 192);
  *(v3 + 344) = v33;
  *(v3 + 360) = *(a2 + 224);
  v34 = *(a2 + 144);
  *(v3 + 264) = *(a2 + 128);
  *(v3 + 280) = v34;
  v35 = *(a2 + 176);
  *(v3 + 296) = *(a2 + 160);
  *(v3 + 312) = v35;
  v36 = *(a2 + 80);
  *(v3 + 200) = *(a2 + 64);
  *(v3 + 216) = v36;
  v37 = *(a2 + 112);
  *(v3 + 232) = *(a2 + 96);
  *(v3 + 248) = v37;
  v38 = *(a2 + 16);
  *(v3 + 136) = *a2;
  *(v3 + 152) = v38;
  v39 = *(a2 + 48);
  *(v3 + 168) = *(a2 + 32);
  v48 = *(v3 + 376);
  *(v3 + 376) = *(a2 + 240);
  *(v3 + 184) = v39;
  sub_245778F94(v47, &qword_27EE29C18);
  swift_beginAccess();
  v40 = *(v3 + 384);
  *(v3 + 384) = a3;
  v41 = a3;

  return v3;
}

uint64_t sub_2457F770C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2457F77A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_2457F77F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2457F7A18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2457A18F4;

  return sub_2457F54C8();
}

uint64_t sub_2457F7B14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2457AA49C;

  return sub_2457F38B4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2457F7BE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_2457F4448(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_2457F7CDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2457F7D24()
{
  result = qword_27EE29CB8;
  if (!qword_27EE29CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29CB8);
  }

  return result;
}

uint64_t sub_2457F7D88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_2457E83E4(a1, v4, v5, v6);
}

uint64_t sub_2457F7E3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2457AA49C;

  return sub_2457F2E9C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2457F7F04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457A18F4;

  return sub_2457E8074(a1, v4, v5, v6);
}

void sub_2457F7FC0()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_documentsRepository;
  if (qword_27EE286A0 != -1)
  {
    swift_once();
  }

  *(v0 + v1) = qword_27EE32B48;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_hasCompletedExitTransition) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_hasCompletedProofingRequest) = 0;
  v2 = (v0 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_lastSpokenAlertMessage);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_networkTask) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_checkGetPendingCommandsReadinessAttempts) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___previewView) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___guidanceContainer) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___guidancePrompt) = 0;
  sub_2459115D4();
  __break(1u);
}

double sub_2457F80D0(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_2457F8100(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7964616572;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x73736563637573;
    }

    else
    {
      v4 = 0x6572756C696166;
    }

    v5 = 0xE700000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x6572676F72506E69;
    }

    else
    {
      v4 = 0x7964616572;
    }

    if (v3)
    {
      v5 = 0xEA00000000007373;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x73736563637573;
  if (a2 != 2)
  {
    v7 = 0x6572756C696166;
  }

  if (a2)
  {
    v2 = 0x6572676F72506E69;
    v6 = 0xEA00000000007373;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_245911714();
  }

  return v10 & 1;
}

uint64_t sub_2457F8248(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7669747369737361;
    }

    else
    {
      v3 = 0x6F43686374697773;
    }

    if (v2)
    {
      v4 = 0xEE006863756F5465;
    }

    else
    {
      v4 = 0xED00006C6F72746ELL;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6E6F436563696F76;
    v4 = 0xEC0000006C6F7274;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000013;
    v4 = 0x800000024591F620;
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 1836019578;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x7669747369737361;
    }

    else
    {
      v6 = 0x6F43686374697773;
    }

    if (a2)
    {
      v5 = 0xEE006863756F5465;
    }

    else
    {
      v5 = 0xED00006C6F72746ELL;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEC0000006C6F7274;
    if (v3 != 0x6E6F436563696F76)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x800000024591F620;
    if (v3 != 0xD000000000000013)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    if (v3 != 1836019578)
    {
LABEL_31:
      v7 = sub_245911714();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_2457F840C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000012;
  v3 = "PhoneMetalAntenna";
  v4 = a1;
  if (a1 == 4)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (a1 == 4)
  {
    v6 = "doublePageLandscapeOutward";
  }

  else
  {
    v6 = "lastPagePortrait";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000001ALL;
  }

  else
  {
    v7 = v5;
  }

  if (v4 == 3)
  {
    v6 = "doublePageLandscapeInward";
  }

  v8 = 0xD000000000000019;
  if (v4 == 1)
  {
    v8 = 0xD000000000000012;
    v9 = "photoPageLandscape";
  }

  else
  {
    v9 = "doublePagePortrait";
  }

  if (!v4)
  {
    v8 = 0xD000000000000012;
    v9 = "PhoneMetalAntenna";
  }

  if (v4 > 2)
  {
    v10 = v6;
  }

  else
  {
    v7 = v8;
    v10 = v9;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000001ALL;
      v3 = "doublePageLandscapeInward";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000010;
      v3 = "doublePageLandscapeOutward";
    }

    else
    {
      v2 = 0xD000000000000011;
      v3 = "lastPagePortrait";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = "photoPageLandscape";
    }

    else
    {
      v2 = 0xD000000000000019;
      v3 = "doublePagePortrait";
    }
  }

  if (v7 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_245911714();
  }

  return v11 & 1;
}

uint64_t sub_2457F8574()
{
  result = MEMORY[0x245D75D50](0.35, 1.0, 0.0);
  qword_27EE29CC0 = result;
  return result;
}

uint64_t sub_2457F85A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = _s11NFCScanViewVMa(0);
  v4 = v3 - 8;
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = v5;
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24590FB14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29E58);
  MEMORY[0x28223BE20](v40);
  v11 = (&v34 - v10);
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28BC8);
  swift_storeEnumTagMultiPayload();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29E60);
  v13 = v11 + v12[13];
  *v13 = swift_getKeyPath();
  v13[40] = 0;
  sub_2457F8C20(v2, v11 + v12[14]);
  sub_2457F9ACC(v2, v11 + v12[15]);
  v14 = v2 + *(v4 + 28);
  v15 = *v14;
  v16 = *(v14 + 8);

  v17 = v15;
  if ((v16 & 1) == 0)
  {
    sub_245910F74();
    v18 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v17 = v41;
  }

  v19 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29E68) + 36));
  *v19 = sub_24580F470;
  v19[1] = v17;
  v19[2] = 0;
  v19[3] = 0;

  v35 = v7;
  if (v16)
  {
    v20 = (v11 + *(v40 + 36));
    *v20 = 0;
    v20[1] = 0;
    v20[2] = sub_24580F474;
    v20[3] = v15;

    v21 = v15;
  }

  else
  {
    sub_245910F74();
    v22 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();

    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = v41;
    v25 = (v11 + *(v40 + 36));
    *v25 = 0;
    v25[1] = 0;
    v25[2] = sub_24580F474;
    v25[3] = v24;

    sub_245910F74();
    v26 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();

    v23(v9, v6);
    v21 = v41;
  }

  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v21;
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v21;

  sub_245910634();

  if ((v16 & 1) == 0)
  {
    sub_245910F74();
    v29 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v35 + 8))(v9, v6);
  }

  v30 = v38;
  sub_24580F49C(v2, v38, _s11NFCScanViewVMa);
  v31 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v32 = swift_allocObject();
  sub_24580F504(v30, v32 + v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29E70);
  sub_24580F5D8();
  sub_24580F71C();
  sub_2459103A4();

  return sub_245778F94(v11, &qword_27EE29E58);
}

__n128 sub_2457F8C20@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24590FB14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(_s11NFCScanViewVMa(0) + 20);
  v54 = a1;
  v9 = (a1 + v8);
  v10 = *v9;
  v11 = *(v9 + 8);

  v12 = v10;
  if ((v11 & 1) == 0)
  {
    sub_245910F74();
    v13 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v12 = v58;
  }

  v53 = *(v12 + 128);

  if (v11)
  {
    v52 = *(v10 + 168);

    v14 = v10;
  }

  else
  {
    sub_245910F74();
    v15 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();

    v16 = *(v5 + 8);
    v16(v7, v4);
    v52 = *(v58 + 168);

    sub_245910F74();
    v17 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();

    v16(v7, v4);
    v14 = v58;
  }

  v18 = *(v14 + 176);
  v50 = *(v14 + 184);
  v19 = *(v14 + 192);
  v49 = *(v14 + 200);
  v51 = v19;

  v20 = v10;
  if ((v11 & 1) == 0)
  {
    sub_245910F74();
    v21 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v20 = v58;
  }

  swift_getKeyPath();
  *&v58 = v20;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  v48 = *(v20 + 201);

  if ((v11 & 1) == 0)
  {
    sub_245910F74();
    v22 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  sub_2457F942C();
  v24 = v23;

  if (v11)
  {
    v56 = v10;
  }

  else
  {

    sub_245910F74();
    v25 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v10 = v56;
  }

  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v10;
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v10;

  sub_245910634();
  v28 = v58;
  v29 = v59;
  v55 = 0;
  v30 = [objc_opt_self() di_mainScreen];
  [v30 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v61.origin.x = v32;
  v61.origin.y = v34;
  v61.size.width = v36;
  v61.size.height = v38;
  CGRectGetHeight(v61);
  sub_2459106E4();
  sub_24590F684();
  v39 = v55;
  *&v57[7] = v58;
  *&v57[23] = v59;
  *&v57[39] = v60;
  v40 = sub_2459106D4();
  v42 = v41;
  v43 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29F18) + 36);
  sub_2457F95A4(v43);
  v44 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29F20) + 36));
  *v44 = v40;
  v44[1] = v42;
  *(a2 + 44) = v24;
  *(a2 + 120) = *&v57[47];
  result = *&v57[16];
  *(a2 + 105) = *&v57[32];
  v46 = *v57;
  *(a2 + 89) = result;
  *a2 = v53;
  *(a2 + 8) = v52;
  v47 = v50;
  *(a2 + 16) = v18;
  *(a2 + 24) = v47;
  *(a2 + 32) = v51;
  *(a2 + 40) = v49;
  *(a2 + 41) = v48;
  *(a2 + 48) = v39;
  *(a2 + 56) = v28;
  *(a2 + 72) = v29;
  *(a2 + 73) = v46;
  return result;
}

uint64_t sub_2457F938C()
{
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  return *(v0 + 201);
}

uint64_t sub_2457F942C()
{
  swift_getKeyPath();
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  result = swift_beginAccess();
  v2 = 0;
  v3 = *(v0 + 88);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = 0.0;
  while (v6)
  {
LABEL_10:
    v10 = __clz(__rbit64(v6)) | (v2 << 6);
    v11 = 0.0;
    if ((*(*(v3 + 48) + v10) - 10) <= 3u)
    {
      v11 = flt_245918B90[(*(*(v3 + 48) + v10) - 10)];
    }

    v6 &= v6 - 1;
    v8 = v8 + (*(*(v3 + 56) + 4 * v10) * v11);
  }

  while (1)
  {
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      return result;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v2;
    if (v6)
    {
      v2 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

double sub_2457F95A4@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_24590FB14();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2459106B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s11NFCScanViewVMa(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_24580F49C(v1, &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), _s11NFCScanViewVMa);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  sub_24580F504(&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v36 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29F28);
  sub_24580FD6C();
  sub_2459105B4();
  sub_2459106A4();
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29F68) + 36);
  sub_2459106C4();
  (*(v6 + 8))(v8, v5);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29F70);
  v17 = *(v16 + 52);
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_24590FB94();
  (*(*(v19 - 8) + 104))(v15 + v17, v18, v19);
  *(v15 + *(v16 + 56)) = 256;
  v20 = *(v1 + *(v10 + 28) + 8);

  if ((v20 & 1) == 0)
  {
    sub_245910F74();
    v21 = sub_24590FF74();
    sub_24590F314();

    v22 = v33;
    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v34 + 8))(v22, v35);
  }

  v23 = sub_2457FBD04();

  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29F78) + 36)) = v23;
  if (qword_27EE286D0 != -1)
  {
    swift_once();
  }

  v24 = qword_27EE29CC0;

  if ((v20 & 1) == 0)
  {
    sub_245910F74();
    v25 = sub_24590FF74();
    sub_24590F314();

    v26 = v33;
    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v34 + 8))(v26, v35);
  }

  v27 = sub_2457FBD04();

  v28 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29F80) + 36));
  *v28 = v24;
  *(v28 + 1) = v27;

  v29 = sub_24590FFB4();
  v30 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29F88) + 36);
  *v30 = v29;
  result = 0.0;
  *(v30 + 8) = 0u;
  *(v30 + 24) = 0u;
  *(v30 + 40) = 1;
  return result;
}

uint64_t sub_2457F9ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29EA8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = sub_24590FB14();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a1 + *(_s11NFCScanViewVMa(0) + 20));
  v13 = *v12;
  v14 = *(v12 + 8);

  if ((v14 & 1) == 0)
  {
    sub_245910F74();
    v15 = sub_24590FF74();
    v21 = v7;
    v16 = a2;
    v17 = v15;
    sub_24590F314();

    a2 = v16;
    v7 = v21;
    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v13 = v22;
  }

  swift_getKeyPath();
  v22 = v13;
  sub_245809CFC(&qword_27EE29CE0, _s17NFCScanViewConfigCMa);
  sub_24590C2A4();

  v18 = *(v13 + 120);

  if (v18 < 0xA && ((0x2F3u >> v18) & 1) != 0)
  {
    v19 = 1;
  }

  else
  {
    sub_2457F9DB4(v7);
    sub_24577ABC4(v7, a2, &qword_27EE29EA8);
    v19 = 0;
  }

  return (*(v5 + 56))(a2, v19, 1, v4);
}