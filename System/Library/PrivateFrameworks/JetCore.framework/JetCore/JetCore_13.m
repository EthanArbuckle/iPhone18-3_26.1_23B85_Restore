id Models.AdamID.nsNumber.getter(uint64_t a1, unint64_t a2)
{
  v2 = Models.AdamID.uint64.getter(a1, a2);
  if (v3)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  }
}

uint64_t Models.AdamID.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DB50BAC0();
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t sub_1DB412DA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7JetCore6ModelsO6AdamIDV8rawValueAESS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1DB412DD0@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1DB413864(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void *sub_1DB412DFC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44F50, &qword_1DB518EA8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1DB412E70()
{
  v0 = sub_1DB50A870();
  v4 = sub_1DB412EF0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1DB412EF0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1DB50A730();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1DB50B160();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1DB412DFC(v9, 0);
  v12 = sub_1DB413048(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1DB50A730();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1DB50B440();
LABEL_4:

  return sub_1DB50A730();
}

unint64_t sub_1DB413048(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1DB413268(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1DB50A7F0();
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
          result = sub_1DB50B440();
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

    result = sub_1DB413268(v12, a6, a7);
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

    result = sub_1DB50A7D0();
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

uint64_t sub_1DB413268(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1DB50A800();
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
    v5 = MEMORY[0x1E1285CD0](15, a1 >> 16);
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

unsigned __int8 *sub_1DB4132E4(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1DB50A860();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DB412E70();
    v39 = v38;

    v5 = v39;
    if ((v39 & 0x2000000000000000) == 0)
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
      result = sub_1DB50B440();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_126;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_47:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_65;
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
        v30 = 0;
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        while (1)
        {
          v34 = *result;
          if (v34 < 0x30 || v34 >= v31)
          {
            if (v34 < 0x41 || v34 >= v32)
            {
              v17 = 0;
              if (v34 < 0x61 || v34 >= v33)
              {
                goto LABEL_127;
              }

              v35 = -87;
            }

            else
            {
              v35 = -55;
            }
          }

          else
          {
            v35 = -48;
          }

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v36 = v30 * a3;
          v37 = v34 + v35;
          v20 = __CFADD__(v36, v37);
          v30 = v36 + v37;
          if (v20)
          {
            goto LABEL_126;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_125;
          }
        }
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_126;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_65:
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

  v40 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v40)
      {
        v30 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_127;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v65 = v30 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v30 = v65 + v66;
          if (v20)
          {
            goto LABEL_126;
          }

          v62 = (v62 + 1);
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v40)
    {
      v41 = v40 - 1;
      if (v41)
      {
        v30 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v48 = v30 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v30 = v48 - v49;
          if (!v20)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v40)
  {
    v50 = v40 - 1;
    if (v50)
    {
      v30 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_127;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v30, a3))
        {
          goto LABEL_126;
        }

        v57 = v30 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v30 = v57 + v58;
        if (v20)
        {
          goto LABEL_126;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_125:
      v17 = v30;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_1DB413864(uint64_t *a1)
{
  v3 = sub_1DB50B3D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (v1)
  {
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  v9 = sub_1DB50BA40();
  v8 = v9;
  v11 = v10;
  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    v22 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BDB0();
    sub_1DB50B3C0();
    v23 = sub_1DB50B3E0();
    swift_allocError();
    v25 = v24;
    (*(v4 + 16))(v24, v7, v3);
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6B00], v23);
    swift_willThrow();
    (*(v4 + 8))(v7, v3);
    goto LABEL_16;
  }

  v40 = v4;
  v35 = v9;
  v36 = v10;
  v37 = 0;
  v38 = v12;
  v34 = v12;

  v13 = sub_1DB50A7B0();
  if (!v14)
  {
LABEL_13:

    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BDB0();
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000031, 0x80000001DB52D9B0);
    goto LABEL_14;
  }

  while (1)
  {
    if (v13 == 48 && v14 == 0xE100000000000000)
    {

      goto LABEL_9;
    }

    v15 = sub_1DB50BA30();

    if ((v15 & 1) == 0)
    {
      break;
    }

LABEL_9:
    v13 = sub_1DB50A7B0();
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  v35 = v8;
  v36 = v11;
  v37 = 0;
  v38 = v34;

  v27 = sub_1DB50A7B0();
  if (!v28)
  {
LABEL_29:

    __swift_destroy_boxed_opaque_existential_0(v39);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v8;
  }

  v29 = v27;
  v30 = v28;
  while (2)
  {
    if (v29 == 48 && v30 == 0xE100000000000000)
    {
      goto LABEL_21;
    }

    if ((sub_1DB50BA30() & 1) == 0)
    {
      if (v29 == 57 && v30 == 0xE100000000000000)
      {

LABEL_22:
        v29 = sub_1DB50A7B0();
        v30 = v32;
        if (!v32)
        {
          goto LABEL_29;
        }

        continue;
      }

LABEL_21:
      v31 = sub_1DB50BA30();

      if (v31)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    break;
  }

LABEL_31:

  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDB0();
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1DB50B320();

  v35 = 0xD000000000000028;
  v36 = 0x80000001DB52D9F0;
LABEL_14:
  MEMORY[0x1E1285C70](v8, v11);

  MEMORY[0x1E1285C70](96, 0xE100000000000000);
  sub_1DB50B3C0();
  v17 = sub_1DB50B3E0();
  swift_allocError();
  v19 = v18;
  v20 = v40;
  (*(v40 + 16))(v18, v7, v3);
  (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B00], v17);
  swift_willThrow();
  v21 = *(v20 + 8);
  v8 = v20 + 8;
  v21(v7, v3);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_0(v39);
LABEL_17:
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t _s7JetCore6ModelsO6AdamIDV8rawValueAESS_tcfC_0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    sub_1DB3CC438("JetCore/AdamID.swift", 0x14uLL, 2, 0x13uLL);
  }

  MEMORY[0x1EEE9AC00](a1);

  v4 = sub_1DB50A7B0();
  if (!v5)
  {
LABEL_13:

    sub_1DB3D66F0("JetCore/AdamID.swift", 20, 2, 21, sub_1DB4140EC);
    goto LABEL_15;
  }

  while (1)
  {
    if (v4 == 48 && v5 == 0xE100000000000000)
    {

      goto LABEL_9;
    }

    v6 = sub_1DB50BA30();

    if ((v6 & 1) == 0)
    {
      break;
    }

LABEL_9:
    v4 = sub_1DB50A7B0();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  MEMORY[0x1EEE9AC00](v7);

  v8 = sub_1DB50A7B0();
  if (!v9)
  {
LABEL_25:

    return a1;
  }

  v10 = v8;
  v11 = v9;
  while (2)
  {
    if (v10 == 48 && v11 == 0xE100000000000000)
    {
      goto LABEL_17;
    }

    if ((sub_1DB50BA30() & 1) == 0)
    {
      if (v10 == 57 && v11 == 0xE100000000000000)
      {

LABEL_18:
        v10 = sub_1DB50A7B0();
        v11 = v13;
        if (!v13)
        {
          goto LABEL_25;
        }

        continue;
      }

LABEL_17:
      v12 = sub_1DB50BA30();

      if (v12)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    break;
  }

LABEL_27:

  sub_1DB3D66F0("JetCore/AdamID.swift", 20, 2, 23, sub_1DB4140F4);
  return a1;
}

unint64_t sub_1DB414030()
{
  result = qword_1ECC45770;
  if (!qword_1ECC45770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45770);
  }

  return result;
}

unint64_t sub_1DB414088()
{
  result = qword_1ECC45778;
  if (!qword_1ECC45778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45778);
  }

  return result;
}

uint64_t URLJetPackAssetRequest.init(url:sourcePolicy:usageID:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = sub_1DB509CA0();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for URLJetPackAssetRequest();
  *(a5 + *(result + 20)) = v9;
  v12 = (a5 + *(result + 24));
  *v12 = a3;
  v12[1] = a4;
  return result;
}

uint64_t type metadata accessor for URLJetPackAssetRequest()
{
  result = qword_1EE30CE48;
  if (!qword_1EE30CE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t URLJetPackAssetRequest.init(url:sourcePolicy:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_1DB509CA0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for URLJetPackAssetRequest();
  *(a3 + *(result + 20)) = v5;
  v8 = (a3 + *(result + 24));
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t URLJetPackAssetRequest.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DB509CA0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t URLJetPackAssetRequest._sourcePolicy.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for URLJetPackAssetRequest();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t URLJetPackAssetRequest.usageID.getter()
{
  v1 = (v0 + *(type metadata accessor for URLJetPackAssetRequest() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t URLJetPackAssetRequest.usageIDOrDefault.getter()
{
  v1 = (v0 + *(type metadata accessor for URLJetPackAssetRequest() + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0x746C7561666564;
  }

  return v2;
}

uint64_t URLJetPackAssetRequest._cacheKey.getter()
{
  sub_1DB509CA0();
  sub_1DB415418(&qword_1EE30E288, MEMORY[0x1E6968FB0]);

  return sub_1DB50B8F0();
}

uint64_t URLJetPackAssetRequest.hash(into:)()
{
  sub_1DB509CA0();
  sub_1DB415418(&unk_1EE30E298, MEMORY[0x1E6968FB0]);
  sub_1DB50A5D0();
  v1 = type metadata accessor for URLJetPackAssetRequest();
  if (*(v0 + *(v1 + 20)))
  {
    *(v0 + *(v1 + 20));
  }

  sub_1DB50A740();

  v2 = (v0 + *(v1 + 24));
  if (!v2[1])
  {
    return sub_1DB50BD10();
  }

  v3 = *v2;
  sub_1DB50BD10();

  return sub_1DB50A740();
}

uint64_t URLJetPackAssetRequest.withSourcePolicy(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1DB509CA0();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  v6 = type metadata accessor for URLJetPackAssetRequest();
  v7 = (v2 + *(v6 + 24));
  *(a2 + *(v6 + 20)) = v4;
  v9 = *v7;
  v8 = v7[1];
  v10 = (a2 + *(v6 + 24));
  *v10 = v9;
  v10[1] = v8;
}

uint64_t sub_1DB41460C()
{
  v1 = 0x50656372756F735FLL;
  if (*v0 != 1)
  {
    v1 = 0x44496567617375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1DB41466C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB41562C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB414694(uint64_t a1)
{
  v2 = sub_1DB4151BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4146D0(uint64_t a1)
{
  v2 = sub_1DB4151BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t URLJetPackAssetRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45780, &qword_1DB51B630);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4151BC();
  sub_1DB50BE40();
  v16[15] = 0;
  sub_1DB509CA0();
  sub_1DB415418(&qword_1ECC440B0, MEMORY[0x1E6968FB0]);
  sub_1DB50B8A0();
  if (!v2)
  {
    v11 = type metadata accessor for URLJetPackAssetRequest();
    v16[14] = *(v3 + *(v11 + 20));
    v16[13] = 1;
    sub_1DB415210();
    sub_1DB50B8A0();
    v12 = (v3 + *(v11 + 24));
    v13 = *v12;
    v14 = v12[1];
    v16[12] = 2;
    sub_1DB50B800();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t URLJetPackAssetRequest.hashValue.getter()
{
  sub_1DB50BCF0();
  sub_1DB509CA0();
  sub_1DB415418(&unk_1EE30E298, MEMORY[0x1E6968FB0]);
  sub_1DB50A5D0();
  v1 = type metadata accessor for URLJetPackAssetRequest();
  if (*(v0 + *(v1 + 20)))
  {
    *(v0 + *(v1 + 20));
  }

  sub_1DB50A740();

  v2 = (v0 + *(v1 + 24));
  if (v2[1])
  {
    v3 = *v2;
    sub_1DB50BD10();
    sub_1DB50A740();
  }

  else
  {
    sub_1DB50BD10();
  }

  return sub_1DB50BD30();
}

uint64_t URLJetPackAssetRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1DB509CA0();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45790, &qword_1DB51B638);
  v28 = *(v30 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v26 - v8;
  v10 = type metadata accessor for URLJetPackAssetRequest();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4151BC();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v13;
  v16 = v28;
  v15 = v29;
  v35 = 0;
  sub_1DB415418(&qword_1EE30E290, MEMORY[0x1E6968FB0]);
  v17 = v30;
  sub_1DB50B780();
  (*(v15 + 32))(v26, v31, v4);
  v33 = 1;
  sub_1DB415264();
  sub_1DB50B780();
  v26[*(v10 + 20)] = v34;
  v32 = 2;
  v18 = sub_1DB50B6E0();
  v31 = v19;
  v20 = v18;
  (*(v16 + 8))(v9, v17);
  v22 = v26;
  v21 = v27;
  v23 = &v26[*(v10 + 24)];
  v24 = v31;
  *v23 = v20;
  v23[1] = v24;
  sub_1DB4152B8(v22, v21);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1DB41531C(v22);
}

uint64_t sub_1DB414DE8()
{
  sub_1DB509CA0();
  sub_1DB415418(&qword_1EE30E288, MEMORY[0x1E6968FB0]);

  return sub_1DB50B8F0();
}

uint64_t sub_1DB414EA4(uint64_t a1, uint64_t a2)
{
  sub_1DB50BCF0();
  sub_1DB509CA0();
  sub_1DB415418(&unk_1EE30E298, MEMORY[0x1E6968FB0]);
  sub_1DB50A5D0();
  if (*(v2 + *(a2 + 20)))
  {
    *(v2 + *(a2 + 20));
  }

  sub_1DB50A740();

  v4 = (v2 + *(a2 + 24));
  if (v4[1])
  {
    v5 = *v4;
    sub_1DB50BD10();
    sub_1DB50A740();
  }

  else
  {
    sub_1DB50BD10();
  }

  return sub_1DB50BD30();
}

uint64_t _s7JetCore22URLJetPackAssetRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1DB509BF0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for URLJetPackAssetRequest();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (v6 == 1)
    {
      v8 = 0x6E4F65746F6D6572;
      v9 = 0xEA0000000000796CLL;
      if (!v7)
      {
LABEL_11:
        v10 = 0xE800000000000000;
        if (v8 != 0x647261646E617473)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v8 = 0x6C6E4F6C61636F6CLL;
      v9 = 0xE900000000000079;
      if (!v7)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v9 = 0xE800000000000000;
    v8 = 0x647261646E617473;
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  if (v7 == 1)
  {
    v10 = 0xEA0000000000796CLL;
    if (v8 != 0x6E4F65746F6D6572)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = 0xE900000000000079;
    if (v8 != 0x6C6E4F6C61636F6CLL)
    {
      goto LABEL_16;
    }
  }

LABEL_14:
  if (v9 == v10)
  {

    goto LABEL_17;
  }

LABEL_16:
  v11 = sub_1DB50BA30();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v12 = *(v4 + 24);
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  result = (v14 | v16) == 0;
  if (v14)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    if (*v13 == *v15 && v14 == v16)
    {
      return 1;
    }

    else
    {

      return sub_1DB50BA30();
    }
  }

  return result;
}

unint64_t sub_1DB4151BC()
{
  result = qword_1EE30CE88[0];
  if (!qword_1EE30CE88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30CE88);
  }

  return result;
}

unint64_t sub_1DB415210()
{
  result = qword_1ECC45788;
  if (!qword_1ECC45788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45788);
  }

  return result;
}

unint64_t sub_1DB415264()
{
  result = qword_1EE30DCE0;
  if (!qword_1EE30DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DCE0);
  }

  return result;
}

uint64_t sub_1DB4152B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLJetPackAssetRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB41531C(uint64_t a1)
{
  v2 = type metadata accessor for URLJetPackAssetRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB415378(uint64_t a1)
{
  result = sub_1DB415418(&qword_1EE30CE70, type metadata accessor for URLJetPackAssetRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DB415418(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DB415488()
{
  sub_1DB509CA0();
  if (v0 <= 0x3F)
  {
    sub_1DB377828();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1DB415528()
{
  result = qword_1ECC45798;
  if (!qword_1ECC45798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45798);
  }

  return result;
}

unint64_t sub_1DB415580()
{
  result = qword_1EE30CE78;
  if (!qword_1EE30CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CE78);
  }

  return result;
}

unint64_t sub_1DB4155D8()
{
  result = qword_1EE30CE80;
  if (!qword_1EE30CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CE80);
  }

  return result;
}

uint64_t sub_1DB41562C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x50656372756F735FLL && a2 == 0xED00007963696C6FLL || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496567617375 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB50BA30();

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

uint64_t SilverBulletJetPackAssetRequest.Environment.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SilverBulletJetPackAssetRequest.Environment.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void __swiftcall SilverBulletJetPackAssetRequest.init(environment:path:sourcePolicy:)(JetCore::SilverBulletJetPackAssetRequest *__return_ptr retstr, JetCore::SilverBulletJetPackAssetRequest::Environment environment, Swift::String path, JetCore::JetPackAssetRequestSourcePolicy sourcePolicy)
{
  v4 = *(environment.rawValue._countAndFlagsBits + 8);
  v5 = *path._object;
  retstr->environment.rawValue._countAndFlagsBits = *environment.rawValue._countAndFlagsBits;
  retstr->environment.rawValue._object = v4;
  retstr->path._countAndFlagsBits = environment.rawValue._object;
  retstr->path._object = path._countAndFlagsBits;
  retstr->_sourcePolicy = v5;
}

uint64_t SilverBulletJetPackAssetRequest._cacheKey.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x1E1285C70](45, 0xE100000000000000);
  MEMORY[0x1E1285C70](v1, v2);
  return v4;
}

uint64_t SilverBulletJetPackAssetRequest.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1DB50A740();
  sub_1DB50A740();
  sub_1DB50A740();
}

uint64_t SilverBulletJetPackAssetRequest.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1DB50BCF0();
  sub_1DB50A740();
  sub_1DB50A740();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB415A0C()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x1E1285C70](45, 0xE100000000000000);
  MEMORY[0x1E1285C70](v1, v2);
  return v4;
}

uint64_t sub_1DB415A7C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1DB50A740();
  sub_1DB50A740();
  sub_1DB50A740();
}

uint64_t sub_1DB415B40()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1DB50BCF0();
  sub_1DB50A740();
  sub_1DB50A740();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t _s7JetCore012SilverBulletA16PackAssetRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_1DB50BA30()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_1DB50BA30()))
  {
    v10 = 0x6E4F65746F6D6572;
    v11 = 0xEA0000000000796CLL;
    if (v4 != 1)
    {
      v10 = 0x6C6E4F6C61636F6CLL;
      v11 = 0xE900000000000079;
    }

    if (v4)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x647261646E617473;
    }

    if (v4)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0xE800000000000000;
    }

    v14 = 0x6E4F65746F6D6572;
    v15 = 0xEA0000000000796CLL;
    if (v7 != 1)
    {
      v14 = 0x6C6E4F6C61636F6CLL;
      v15 = 0xE900000000000079;
    }

    if (v7)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0x647261646E617473;
    }

    if (v7)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0xE800000000000000;
    }

    if (v12 == v16 && v13 == v17)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_1DB50BA30();
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

unint64_t sub_1DB415D8C()
{
  result = qword_1ECC457A0;
  if (!qword_1ECC457A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC457A0);
  }

  return result;
}

unint64_t sub_1DB415DE0(uint64_t a1)
{
  result = sub_1DB415E08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB415E08()
{
  result = qword_1ECC457A8;
  if (!qword_1ECC457A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC457A8);
  }

  return result;
}

unint64_t sub_1DB415E60()
{
  result = qword_1ECC457B0;
  if (!qword_1ECC457B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC457B0);
  }

  return result;
}

uint64_t sub_1DB415EB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1DB415EFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB415F60()
{
  if (qword_1EE30E8D0 != -1)
  {
    swift_once();
  }

  result = sub_1DB376278(0xD000000000000012, 0x80000001DB52DB50);
  byte_1EE30E6E0 = (result == 2) | result & 1;
  return result;
}

uint64_t Bag.FetchConfiguration.init(profile:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  *(a2 + 24) = *(a1 + 3);
  *(a2 + 32) = 0;
  *a2 = v3;
  *(a2 + 16) = v4;
  *(a2 + 40) = 0;
  if (qword_1EE30EDF0 != -1)
  {
    swift_once();
  }

  v5 = sub_1DB50A030();
  v6 = __swift_project_value_buffer(v5, qword_1EE312E00);
  Configuration = type metadata accessor for Bag.FetchConfiguration();
  v8 = *(*(v5 - 8) + 16);
  v9 = a2 + *(Configuration + 28);

  return v8(v9, v6, v5);
}

uint64_t Bag.FetchConfiguration.profile.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 Bag.FetchConfiguration.profile.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = v1->n128_u64[1];
  v5 = v1[1].n128_u64[1];

  result = v7;
  *v1 = v7;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t Bag.FetchConfiguration.withProfile(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  sub_1DB419B38(v2, a2);
  v8 = a2[1];
  v9 = a2[3];

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v6;
  return result;
}

void *Bag.FetchConfiguration.process.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void Bag.FetchConfiguration.withProcess(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB419B38(v2, a2);
  v5 = *(a2 + 32);
  v6 = a1;

  *(a2 + 32) = a1;
}

uint64_t Bag.FetchConfiguration.withWantsAutomaticUpdates(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1DB419B38(v2, a2);
  *(a2 + 40) = a1;
  return result;
}

uint64_t Bag.FetchConfiguration.bagServicePolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Bag.FetchConfiguration() + 28);
  v4 = sub_1DB50A030();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Bag.FetchConfiguration.bagServicePolicy.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Bag.FetchConfiguration() + 28);
  v4 = sub_1DB50A030();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Bag.FetchConfiguration.withBagServicePolicy(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB419B38(v2, a2);
  v5 = *(type metadata accessor for Bag.FetchConfiguration() + 28);
  v6 = sub_1DB50A030();
  v7 = *(*(v6 - 8) + 24);

  return v7(a2 + v5, a1, v6);
}

uint64_t static Bag.fetchBag(using:)(uint64_t a1, uint64_t a2)
{
  v2[38] = a1;
  v2[39] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC457B8, &qword_1DB51BA18);
  v2[40] = v3;
  v4 = *(v3 - 8);
  v2[41] = v4;
  v5 = *(v4 + 64) + 15;
  v2[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4165BC, 0, 0);
}

uint64_t sub_1DB4165BC()
{
  if (qword_1EE30E6D0 != -1)
  {
    swift_once();
  }

  v1 = byte_1EE30E6E0;
  *(v0 + 217) = byte_1EE30E6E0;
  v2 = *(v0 + 312);
  if (v1 == 1)
  {
    v3 = sub_1DB419F44(v2);
  }

  else
  {
    v3 = sub_1DB41A510(v2);
  }

  *(v0 + 344) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1DB416674, 0, 0);
}

uint64_t sub_1DB416674()
{
  v1 = v0 + 2;
  v2 = v0[43];
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_1DB416740;
  v0[18] = swift_continuation_init();
  v3 = (v0 + 18);
  *(v3 + 72) = 1;
  sub_1DB309644(v3);
  sub_1DB30623C(v3, &qword_1ECC428D0, &qword_1DB50F350);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB416740()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 352) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB416AA8;
  }

  else
  {
    *(v1 + 360) = *(v1 + 288);
    v4 = sub_1DB416864;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB416864()
{
  if ((*(v0 + 217) & 1) != 0 || *(*(v0 + 312) + 40) == 1)
  {
    v1 = *(v0 + 360);
    v2 = *(v0 + 344);
    v3 = *(v0 + 304);

    *v3 = v1;
    v4 = *(v0 + 336);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v11 = *(v0 + 360);
    v8 = *(v0 + 328);
    v7 = *(v0 + 336);
    v9 = *(v0 + 320);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 296;
    *(v0 + 88) = sub_1DB416B14;
    swift_continuation_init();
    *(v0 + 280) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
    sub_1DB336FD4(0, &qword_1ECC46EC0, 0x1E698CB30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    sub_1DB50AAE0();
    (*(v8 + 32))(boxed_opaque_existential_0, v7, v9);
    *(v0 + 224) = MEMORY[0x1E69E9820];
    *(v0 + 232) = 1107296256;
    *(v0 + 240) = sub_1DB416D30;
    *(v0 + 248) = &block_descriptor_13;
    [v11 createSnapshotWithCompletion_];
    (*(v8 + 8))(boxed_opaque_existential_0, v9);

    return MEMORY[0x1EEE6DEC8](v0 + 80);
  }
}

uint64_t sub_1DB416AA8()
{
  v1 = v0[43];

  v2 = v0[44];
  v3 = v0[42];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB416B14()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 368) = v2;
  if (v2)
  {
    v3 = sub_1DB416CA8;
  }

  else
  {
    v3 = sub_1DB416C24;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB416C24()
{
  v1 = v0[45];
  v2 = v0[43];
  v3 = v0[38];

  swift_unknownObjectRelease();
  *v3 = v0[37];
  v4 = v0[42];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB416CA8()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[43];
  swift_willThrow();

  swift_unknownObjectRelease();
  v4 = v0[46];
  v5 = v0[42];

  v6 = v0[1];

  return v6();
}

void sub_1DB416D30(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC457B8, &qword_1DB51BA18);
    sub_1DB50AAF0();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC457B8, &qword_1DB51BA18);
    sub_1DB50AB00();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DB416DE0(void (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  v7 = a5[1];
  v8 = a5[2];
  v9 = a5[3];
  v10 = a5[4];
  v11 = sub_1DB50A620();
  v12 = sub_1DB50A620();
  v13 = [objc_opt_self() bagForProfile:v11 profileVersion:v12 processInfo:v10];

  v14 = v13;
  a1(&v14);
}

uint64_t sub_1DB416EA0(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = *(*(sub_1DB509F90() - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v4 = sub_1DB50A040();
  v2[17] = v4;
  v5 = *(v4 - 8);
  v2[18] = v5;
  v6 = *(v5 + 64) + 15;
  v2[19] = swift_task_alloc();
  v7 = sub_1DB50A070();
  v2[20] = v7;
  v8 = *(v7 - 8);
  v2[21] = v8;
  v9 = *(v8 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB417000, 0, 0);
}

uint64_t sub_1DB417000()
{
  v1 = *(v0[15] + 32);
  v0[25] = v1;
  v2 = v0[23];
  if (v1)
  {
    v3 = v1;
    sub_1DB50A050();
  }

  else
  {
    v4 = v0[23];
    sub_1DB50A060();
  }

  v5 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v10 = v0[15];
  v9 = v0[16];
  (*(v7 + 32))(v5, v0[23], v8);
  v0[26] = *v10;
  v0[27] = v10[1];
  v0[28] = v10[2];
  v0[29] = v10[3];

  sub_1DB509F80();
  (*(v7 + 16))(v6, v5, v8);
  sub_1DB509FB0();
  v11 = v0[15];
  v12 = *(type metadata accessor for Bag.FetchConfiguration() + 28);
  v13 = *(MEMORY[0x1E698CBF0] + 4);
  v14 = swift_task_alloc();
  v0[30] = v14;
  *v14 = v0;
  v14[1] = sub_1DB417250;
  v15 = v0[19];

  return MEMORY[0x1EEDEE0A8](v0 + 2, v11 + v12);
}

uint64_t sub_1DB417250()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1DB4175A4;
  }

  else
  {
    v3 = sub_1DB417364;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB417364()
{
  v1 = *(v0 + 200);
  sub_1DB30BE90(v0 + 16, v0 + 56);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  if (v1)
  {
    v4 = *(v0 + 200);
    v5 = *(v0 + 216);

    v25 = v4;
    v22 = v4;
  }

  else
  {
    v6 = objc_opt_self();

    v22 = [v6 currentProcess];
    v25 = 0;
    v2 = *(v0 + 232);
    v3 = *(v0 + 216);
  }

  v7 = *(v0 + 224);
  v8 = *(v0 + 208);
  v9 = *(v0 + 192);
  v10 = *(v0 + 168);
  v26 = *(v0 + 184);
  v27 = *(v0 + 176);
  v11 = *(v0 + 144);
  v20 = *(v0 + 136);
  v21 = *(v0 + 152);
  v28 = *(v0 + 128);
  v23 = *(v0 + 112);
  v24 = *(v0 + 160);
  v12 = type metadata accessor for AMSKitAMSBag();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC7JetCore12AMSKitAMSBag____lazy_storage___amsBag] = 0;
  sub_1DB30BE90(v0 + 56, &v13[OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag]);
  v14 = &v13[OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_profile];
  *v14 = v8;
  *(v14 + 1) = v3;
  v15 = &v13[OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_profileVersion];
  *v15 = v7;
  *(v15 + 1) = v2;
  *&v13[OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_processInfo] = v22;
  *(v0 + 96) = v13;
  *(v0 + 104) = v12;
  v16 = v25;
  v17 = objc_msgSendSuper2((v0 + 96), sel_init);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v11 + 8))(v21, v20);
  (*(v10 + 8))(v9, v24);
  *v23 = v17;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1DB4175A4()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[21];
  (*(v0[18] + 8))(v0[19], v0[17]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[31];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v8 = v0[19];
  v9 = v0[16];

  v10 = v0[1];

  return v10();
}

uint64_t static Bag.fetchBag(forProfile:)(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 3);
  v4 = *a1;
  v5 = v1;
  v6 = v2;
  return static Bag.fetchBag(forProfile:as:wantsAutomaticUpdates:)(&v4, 0, 0);
}

uint64_t static Bag.fetchBag(forProfile:as:)(__int128 *a1, void *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v5 = *a1;
  v6 = v2;
  v7 = v3;
  return static Bag.fetchBag(forProfile:as:wantsAutomaticUpdates:)(&v5, a2, 0);
}

uint64_t static Bag.fetchBag(forProfile:as:wantsAutomaticUpdates:)(uint64_t *a1, void *a2, int a3)
{
  v32 = a3;
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v31 - v6;
  Configuration = type metadata accessor for Bag.FetchConfiguration();
  v31 = *(Configuration - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](Configuration);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v16 = a1[3];
  if (qword_1EE30EDF0 != -1)
  {
    swift_once();
  }

  v17 = sub_1DB50A030();
  v18 = __swift_project_value_buffer(v17, qword_1EE312E00);
  *(v9 + 3) = v16;
  *(v9 + 4) = 0;
  *v9 = v13;
  *(v9 + 1) = v14;
  *(v9 + 2) = v15;
  v9[40] = 0;
  v19 = *(v17 - 8);
  (*(v19 + 16))(&v9[*(Configuration + 28)], v18, v17);
  v20 = v33;
  *(v9 + 4) = v33;
  sub_1DB419B38(v9, v12);
  v12[40] = v32 & 1;
  v21 = v20;

  sub_1DB41AB58(v9);
  (*(v19 + 24))(&v12[*(Configuration + 28)], v18, v17);
  sub_1DB419B38(v12, v9);
  v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v23 = swift_allocObject();
  sub_1DB41ABB4(v9, v23 + v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v24 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = MEMORY[0x1E69E7CC0];
  *(v24 + 16) = v25;
  *(v24 + 24) = v26;
  *(v24 + 32) = 0;
  v27 = sub_1DB50ABA0();
  v28 = v34;
  (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = &unk_1DB51BA28;
  v29[5] = v23;
  v29[6] = v24;

  sub_1DB419B9C(0, 0, v28, &unk_1DB51BA48, v29);

  sub_1DB41AB58(v12);
  return v24;
}

uint64_t static Bag.fetchBag(forProfile:as:usingPolicy:)(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33 - v8;
  Configuration = type metadata accessor for Bag.FetchConfiguration();
  v11 = *(Configuration - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](Configuration);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v18 = *a1;
  v17 = a1[1];
  v19 = a1[2];
  *(v13 + 3) = a1[3];
  *(v13 + 4) = 0;
  *v13 = v18;
  *(v13 + 1) = v17;
  *(v13 + 2) = v19;
  v13[40] = 0;
  v20 = qword_1EE30EDF0;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_1DB50A030();
  v22 = __swift_project_value_buffer(v21, qword_1EE312E00);
  v23 = *(v21 - 8);
  (*(v23 + 16))(&v13[*(Configuration + 28)], v22, v21);
  *(v13 + 4) = a2;
  sub_1DB419B38(v13, v16);
  v16[40] = 0;
  v24 = a2;
  sub_1DB41AB58(v13);
  (*(v23 + 24))(&v16[*(Configuration + 28)], a3, v21);
  sub_1DB419B38(v16, v13);
  v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v26 = swift_allocObject();
  sub_1DB41ABB4(v13, v26 + v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v27 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = MEMORY[0x1E69E7CC0];
  *(v27 + 16) = v28;
  *(v27 + 24) = v29;
  *(v27 + 32) = 0;
  v30 = sub_1DB50ABA0();
  (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = &unk_1DB51BA50;
  v31[5] = v26;
  v31[6] = v27;

  sub_1DB419B9C(0, 0, v9, &unk_1DB51BA58, v31);

  sub_1DB41AB58(v16);
  return v27;
}

uint64_t static Bag.fetchBag(forProfile:as:wantsAutomaticUpdates:usingPolicy:)(uint64_t *a1, void *a2, char a3, uint64_t a4)
{
  v35 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v34 - v9;
  Configuration = type metadata accessor for Bag.FetchConfiguration();
  v12 = *(Configuration - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](Configuration);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v19 = *a1;
  v18 = a1[1];
  v20 = a1[2];
  *(v14 + 3) = a1[3];
  *(v14 + 4) = 0;
  *v14 = v19;
  *(v14 + 1) = v18;
  *(v14 + 2) = v20;
  v14[40] = 0;
  v21 = qword_1EE30EDF0;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_1DB50A030();
  v23 = __swift_project_value_buffer(v22, qword_1EE312E00);
  v24 = *(v22 - 8);
  (*(v24 + 16))(&v14[*(Configuration + 28)], v23, v22);
  *(v14 + 4) = a2;
  sub_1DB419B38(v14, v17);
  v17[40] = a3 & 1;
  v25 = a2;
  sub_1DB41AB58(v14);
  (*(v24 + 24))(&v17[*(Configuration + 28)], v35, v22);
  sub_1DB419B38(v17, v14);
  v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v27 = swift_allocObject();
  sub_1DB41ABB4(v14, v27 + v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v28 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v30 = MEMORY[0x1E69E7CC0];
  *(v28 + 16) = v29;
  *(v28 + 24) = v30;
  *(v28 + 32) = 0;
  v31 = sub_1DB50ABA0();
  (*(*(v31 - 8) + 56))(v10, 1, 1, v31);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = &unk_1DB51BA60;
  v32[5] = v27;
  v32[6] = v28;

  sub_1DB419B9C(0, 0, v10, &unk_1DB51BA68, v32);

  sub_1DB41AB58(v17);
  return v28;
}

uint64_t static Bag.fetchBag(forProfile:wantsAutomaticUpdates:)(__int128 *a1, int a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v5 = *a1;
  v6 = v2;
  v7 = v3;
  return static Bag.fetchBag(forProfile:as:wantsAutomaticUpdates:)(&v5, 0, a2);
}

uint64_t sub_1DB4181F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB306AF4;

  return static Bag.fetchBag(using:)(a1, a2);
}

uint64_t Bag.withLatestChanges.getter()
{
  v1 = *v0;
  v22[5] = &unk_1F5709C30;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (!v2)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v7 = [v1 profile];
      v8 = sub_1DB50A650();
      v10 = v9;

      v11 = [v1 profileVersion];
      v12 = sub_1DB50A650();
      v14 = v13;

      v17 = v8;
      v18 = v10;
      v19 = v12;
      v20 = v14;
      v3 = static Bag.fetchBag(forProfile:as:wantsAutomaticUpdates:)(&v17, 0, 0);

      return v3;
    }

LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
    v3 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v3 + 16) = v15;
    *(v3 + 24) = v1;
    *(v3 + 32) = 1;
    swift_unknownObjectRetain();
    return v3;
  }

  if (![v2 replacingSnapshotIfNeeded])
  {
    goto LABEL_6;
  }

  swift_getObjectType();
  sub_1DB47CB24();
  v22[3] = &type metadata for SyncTaskScheduler;
  v22[4] = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 32) = 0;
  v6 = swift_allocObject();
  v6[2] = sub_1DB41B56C;
  v6[3] = 0;
  v6[4] = v3;
  v17 = sub_1DB41AF88;
  v18 = v6;
  v19 = sub_1DB41AF94;
  v20 = v3;
  sub_1DB30BE90(v22, v21);
  v21[40] = 0;
  swift_retain_n();

  sub_1DB309644(&v17);
  swift_unknownObjectRelease();

  sub_1DB30623C(&v17, &qword_1ECC428D0, &qword_1DB50F350);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v3;
}

uint64_t Bag.snapshot.getter()
{
  v1 = *v0;
  swift_getObjectType();
  sub_1DB47CB24();
  v9[3] = &type metadata for SyncTaskScheduler;
  v9[4] = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v5 = swift_allocObject();
  v5[2] = sub_1DB41B56C;
  v5[3] = 0;
  v5[4] = v2;
  v7[0] = sub_1DB41B568;
  v7[1] = v5;
  v7[2] = sub_1DB41B584;
  v7[3] = v2;
  sub_1DB30BE90(v9, v8);
  v8[40] = 0;
  swift_retain_n();

  sub_1DB309644(v7);

  sub_1DB30623C(v7, &qword_1ECC428D0, &qword_1DB50F350);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v2;
}

uint64_t Bag.withLatestChanges()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 176) = a1;
  *(v2 + 184) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DB4186E8, 0, 0);
}

uint64_t sub_1DB4186E8()
{
  v0[20] = v0[23];
  v0[24] = Bag.withLatestChanges.getter();

  return MEMORY[0x1EEE6DFA0](sub_1DB41875C, 0, 0);
}

uint64_t sub_1DB41875C()
{
  v1 = v0 + 2;
  v2 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1DB418828;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1DB309848(v3);
  sub_1DB30623C(v3, &qword_1ECC428C0, &unk_1DB50F6F0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB418828()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB307408;
  }

  else
  {
    v5 = v1[24];
    v6 = v1[22];

    *v6 = v1[21];
    v4 = sub_1DB2FEB3C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t Bag.snapshot()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 176) = a1;
  *(v2 + 184) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DB41897C, 0, 0);
}

uint64_t sub_1DB41897C()
{
  v0[20] = v0[23];
  v0[24] = Bag.snapshot.getter();

  return MEMORY[0x1EEE6DFA0](sub_1DB4189F0, 0, 0);
}

uint64_t sub_1DB4189F0()
{
  v1 = v0 + 2;
  v2 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1DB418ABC;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1DB309848(v3);
  sub_1DB30623C(v3, &qword_1ECC428C0, &unk_1DB50F6F0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB418ABC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB41B564;
  }

  else
  {
    v5 = v1[24];
    v6 = v1[22];

    *v6 = v1[21];
    v4 = sub_1DB3F253C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB418BEC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 32) = v8;
  *v8 = v6;
  v8[1] = sub_1DB418CE0;

  return v10(v6 + 16);
}

uint64_t sub_1DB418CE0()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1DB418E60;
  }

  else
  {
    v3 = sub_1DB418DF4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB418DF4()
{
  v1 = v0[3];
  sub_1DB3F8328(v0[2]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB418E60()
{
  v1 = v0[5];
  v2 = v0[3];
  sub_1DB3DCBD0(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB418ED0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 40) = v8;
  *v8 = v6;
  v8[1] = sub_1DB418FC4;

  return v10(v6 + 16);
}

uint64_t sub_1DB418FC4()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1DB41914C;
  }

  else
  {
    v3 = sub_1DB4190D8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4190D8()
{
  v1 = v0[4];
  sub_1DB3F85C8(v0[2], v0[3]);
  v2 = v0[2];
  v3 = v0[3];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB41914C()
{
  v1 = v0[6];
  v2 = v0[4];
  sub_1DB3DCE84(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB4191BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 32) = v8;
  *v8 = v6;
  v8[1] = sub_1DB4192B0;

  return v10(v6 + 16);
}

uint64_t sub_1DB4192B0()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1DB419440;
  }

  else
  {
    v3 = sub_1DB4193C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4193C4()
{
  v1 = v0[2];
  v2 = v0[3];
  swift_getObjectType();
  sub_1DB4B5F74(v1, v2);
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB419440()
{
  v1 = v0[5];
  v2 = v0[3];
  sub_1DB3DDB60(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB4194B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 32) = v8;
  *v8 = v6;
  v8[1] = sub_1DB4195A4;

  return v10(v6 + 16);
}

uint64_t sub_1DB4195A4()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1DB419720;
  }

  else
  {
    v3 = sub_1DB4196B8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4196B8()
{
  v1 = v0[3];
  sub_1DB3F9794(v0[2]);
  v2 = v0[2];
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB419720()
{
  v1 = v0[5];
  v2 = v0[3];
  sub_1DB3DDDFC(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB419790(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_1DB419884;

  return v10(v6 + 40);
}

uint64_t sub_1DB419884()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_1DB4199FC;
  }

  else
  {
    v3 = sub_1DB419998;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB419998()
{
  v1 = *(v0 + 16);
  sub_1DB3F8B6C(*(v0 + 40));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB4199FC()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_1DB3DD13C(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB419A6C(void (*a1)(void (*)(uint64_t *a1), uint64_t, void (*)(void *), uint64_t), uint64_t a2, uint64_t a3)
{
  swift_retain_n();
  a1(sub_1DB41B51C, a3, sub_1DB41B560, a3);
}

uint64_t type metadata accessor for Bag.FetchConfiguration()
{
  result = qword_1EE30E6C0;
  if (!qword_1EE30E6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB419B38(uint64_t a1, uint64_t a2)
{
  Configuration = type metadata accessor for Bag.FetchConfiguration();
  (*(*(Configuration - 8) + 16))(a2, a1, Configuration);
  return a2;
}

uint64_t sub_1DB419B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1DB30C4B8(a3, v25 - v11, &unk_1ECC46EB0, &qword_1DB50F750);
  v13 = sub_1DB50ABA0();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1DB30623C(v12, &unk_1ECC46EB0, &qword_1DB50F750);
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

  sub_1DB50AB90();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1DB50AAD0();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1DB50A6F0() + 32;
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

    sub_1DB30623C(a3, &unk_1ECC46EB0, &qword_1DB50F750);

    return v23;
  }

LABEL_8:
  sub_1DB30623C(a3, &unk_1ECC46EB0, &qword_1DB50F750);
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

uint64_t sub_1DB419E98(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = *a1;
  a2(&v3, &v4);
  sub_1DB3F9794(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DB419F44(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v36 - v4;
  Configuration = type metadata accessor for Bag.FetchConfiguration();
  v7 = *(Configuration - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](Configuration - 8);
  if (qword_1EE30E410 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v9 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v10 = swift_allocObject();
  v38 = xmmword_1DB50EE90;
  *(v10 + 16) = xmmword_1DB50EE90;
  v44 = sub_1DB301BC0(0, 50, 0, MEMORY[0x1E69E7CC0]);
  v11._object = 0x80000001DB52DB20;
  v11._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  v12 = *a1;
  v13 = a1[1];
  v43[3] = MEMORY[0x1E69E6158];
  v43[0] = v12;
  v43[1] = v13;
  sub_1DB30C4B8(v43, v39, &qword_1ECC426B0, &qword_1DB50EEB0);
  v40 = 0u;
  v41 = 0u;

  sub_1DB301D4C(v39, &v40);
  v42 = 0;
  v14 = v44;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1DB301BC0(0, *(v14 + 2) + 1, 1, v14);
    v44 = v14;
  }

  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1DB301BC0((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = &v14[40 * v16];
  v18 = v40;
  v19 = v41;
  v17[64] = v42;
  *(v17 + 2) = v18;
  *(v17 + 3) = v19;
  v44 = v14;
  sub_1DB30623C(v43, &qword_1ECC426B0, &qword_1DB50EEB0);
  v20._countAndFlagsBits = 0x5620676E69737520;
  v20._object = 0xE900000000000033;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  *(v10 + 32) = v44;
  v21 = sub_1DB50AF40();
  if (os_log_type_enabled(v9, v21))
  {
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v22 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v22[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v22 + 5);
    v37 = v7;
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v24 = swift_allocObject();
    *(v24 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v40 = v10;
    *(&v40 + 1) = sub_1DB31485C;
    *&v41 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
    sub_1DB314864();
    v25 = sub_1DB50A5E0();
    v27 = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
    v28 = swift_allocObject();
    *(v28 + 16) = v38;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = sub_1DB31494C();
    *(v28 + 32) = v25;
    *(v28 + 40) = v27;
    sub_1DB50A1E0();

    v7 = v37;
  }

  else
  {
  }

  sub_1DB419B38(a1, &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v30 = swift_allocObject();
  sub_1DB41ABB4(&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457E0, &qword_1DB51BAE8);
  v31 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v31 + 16) = v32;
  *(v31 + 24) = MEMORY[0x1E69E7CC0];
  *(v31 + 32) = 0;
  v33 = sub_1DB50ABA0();
  (*(*(v33 - 8) + 56))(v5, 1, 1, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = &unk_1DB51BAE0;
  v34[5] = v30;
  v34[6] = v31;

  sub_1DB419B9C(0, 0, v5, &unk_1DB51BAF8, v34);

  return v31;
}

uint64_t sub_1DB41A510(void *a1)
{
  Configuration = type metadata accessor for Bag.FetchConfiguration();
  v41 = *(Configuration - 8);
  v3 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](Configuration - 8);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DB50A410();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE30E410 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v9 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v10 = swift_allocObject();
  v40 = xmmword_1DB50EE90;
  *(v10 + 16) = xmmword_1DB50EE90;
  v48 = sub_1DB301BC0(0, 50, 0, MEMORY[0x1E69E7CC0]);
  v11._object = 0x80000001DB52DB20;
  v11._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  v12 = *a1;
  v13 = a1[1];
  v47[3] = MEMORY[0x1E69E6158];
  v47[0] = v12;
  v47[1] = v13;
  sub_1DB30C4B8(v47, v43, &qword_1ECC426B0, &qword_1DB50EEB0);
  v44 = 0u;
  v45 = 0u;

  sub_1DB301D4C(v43, &v44);
  v46 = 0;
  v14 = v48;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1DB301BC0(0, *(v14 + 2) + 1, 1, v14);
    v48 = v14;
  }

  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1DB301BC0((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = &v14[40 * v16];
  v18 = v44;
  v19 = v45;
  v17[64] = v46;
  *(v17 + 2) = v18;
  *(v17 + 3) = v19;
  v48 = v14;
  sub_1DB30623C(v47, &qword_1ECC426B0, &qword_1DB50EEB0);
  v20._countAndFlagsBits = 0x5620676E69737520;
  v20._object = 0xE900000000000032;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  *(v10 + 32) = v48;
  v21 = sub_1DB50AF40();
  if (os_log_type_enabled(v9, v21))
  {
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v22 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v22[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v22 + 5);
    v39 = a1;
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v24 = swift_allocObject();
    *(v24 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v44 = v10;
    *(&v44 + 1) = sub_1DB314CB0;
    *&v45 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
    sub_1DB314864();
    v25 = sub_1DB50A5E0();
    v27 = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
    v28 = swift_allocObject();
    *(v28 + 16) = v40;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = sub_1DB31494C();
    *(v28 + 32) = v25;
    *(v28 + 40) = v27;
    sub_1DB50A1E0();

    a1 = v39;
  }

  else
  {
  }

  sub_1DB336FD4(0, &qword_1EE30E320, 0x1E69E9610);
  (*(v5 + 104))(v8, *MEMORY[0x1E69E7F98], v4);
  v29 = sub_1DB50AFE0();
  (*(v5 + 8))(v8, v4);
  v30 = a1;
  v31 = v42;
  sub_1DB419B38(v30, v42);
  v32 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v33 = swift_allocObject();
  sub_1DB41ABB4(v31, v33 + v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457E0, &qword_1DB51BAE8);
  v34 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v34 + 16) = v35;
  *(v34 + 24) = MEMORY[0x1E69E7CC0];
  *(v34 + 32) = 0;
  v36 = swift_allocObject();
  v36[2] = sub_1DB41B478;
  v36[3] = v33;
  v36[4] = v34;

  OS_dispatch_queue.schedule(task:)(sub_1DB41B510, v36);

  return v34;
}

uint64_t sub_1DB41AB58(uint64_t a1)
{
  Configuration = type metadata accessor for Bag.FetchConfiguration();
  (*(*(Configuration - 8) + 8))(a1, Configuration);
  return a1;
}

uint64_t sub_1DB41ABB4(uint64_t a1, uint64_t a2)
{
  Configuration = type metadata accessor for Bag.FetchConfiguration();
  (*(*(Configuration - 8) + 32))(a2, a1, Configuration);
  return a2;
}

uint64_t sub_1DB41AC18(uint64_t a1)
{
  v4 = *(type metadata accessor for Bag.FetchConfiguration() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DB30C7A0;

  return sub_1DB4181F4(a1, v1 + v5);
}

uint64_t sub_1DB41ACF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DB30C7A0;

  return sub_1DB4194B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DB41ADD0(uint64_t a1)
{
  v4 = *(type metadata accessor for Bag.FetchConfiguration() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DB306AF4;

  return sub_1DB4181F4(a1, v1 + v5);
}

uint64_t sub_1DB41AEAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DB306AF4;

  return sub_1DB4194B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DB41AF88(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1DB419E98(a1, *(v1 + 16));
}

void sub_1DB41AFC4()
{
  sub_1DB41B060();
  if (v0 <= 0x3F)
  {
    sub_1DB50A030();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DB41B060()
{
  if (!qword_1EE30E340)
  {
    sub_1DB336FD4(255, &qword_1EE30E348, 0x1E698CAC8);
    v0 = sub_1DB50B120();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE30E340);
    }
  }
}

uint64_t sub_1DB41B0C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DB30C7A0;

  return sub_1DB38ABAC(a1, v5);
}

uint64_t sub_1DB41B180(uint64_t a1)
{
  v4 = *(type metadata accessor for Bag.FetchConfiguration() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DB30C7A0;

  return sub_1DB416EA0(a1, v1 + v5);
}

uint64_t objectdestroy_4Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB41B2A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DB30C7A0;

  return sub_1DB4191BC(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for Bag.FetchConfiguration() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = v1[9];
  v8 = sub_1DB50A030();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1DB41B478(void (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for Bag.FetchConfiguration() - 8);
  v10 = (v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80)));

  sub_1DB416DE0(a1, a2, a3, a4, v10);
}

void sub_1DB41B51C(uint64_t *a1)
{
  v2 = *a1;
  swift_getObjectType();

  sub_1DB4B5F74(v2, v1);
}

uint64_t sub_1DB41B588()
{
  v7[3] = &type metadata for SyncTaskScheduler;
  v7[4] = &protocol witness table for SyncTaskScheduler;
  v2 = sub_1DB4241FC;
  v3 = v0;
  v4 = sub_1DB424204;
  v5 = v0;
  sub_1DB30BE90(v7, v6);
  v6[40] = 0;
  swift_retain_n();
  sub_1DB309C44(&v2);

  sub_1DB30623C(&v2, &qword_1ECC42870, &unk_1DB518F90);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_1DB41B644()
{
  v7[3] = &type metadata for SyncTaskScheduler;
  v7[4] = &protocol witness table for SyncTaskScheduler;
  v2 = sub_1DB4241FC;
  v3 = v0;
  v4 = sub_1DB4245B4;
  v5 = v0;
  sub_1DB30BE90(v7, v6);
  v6[40] = 0;
  swift_retain_n();
  sub_1DB309A4C(&v2);

  sub_1DB30623C(&v2, &qword_1ECC428A0, &unk_1DB50F6E0);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_1DB41B700()
{
  v0 = sub_1DB50A3A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E6977AC8], v0, v3);
  sub_1DB50A3D0();
  return (*(v1 + 8))(v5, v0);
}

unint64_t sub_1DB41B7EC(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD00000000000004ELL, 0x80000001DB52DF40);
    v2 = sub_1DB50B8F0();
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000051, 0x80000001DB52DEE0);
    swift_getErrorValue();
    v2 = sub_1DB50BC80();
LABEL_5:
    MEMORY[0x1E1285C70](v2);

    return 0;
  }

  if (a1)
  {
    return 0xD000000000000048;
  }

  else
  {
    return 0xD000000000000066;
  }
}

void URLJetPackAssetFetcher.init(bag:urlSessionConfiguration:requestEncoder:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for URLJetPackAssetFetcher();
  v9 = *(v8 + 24);
  v10 = sub_1DB509CA0();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v11 + 16) = v12;
  *(v11 + 24) = a1;
  *(v11 + 32) = 1;

  *&a4[*(v8 + 28)] = v11;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = a2;
}

uint64_t URLJetPackAssetFetcher.init(bag:urlSessionConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for URLJetPackAssetFetcher();
  v7 = *(v6 + 24);
  v8 = sub_1DB509CA0();
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v9 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v9 + 16) = result;
  *(v9 + 24) = a1;
  *(v9 + 32) = 1;
  *&a3[*(v6 + 28)] = v9;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = a2;
  return result;
}

uint64_t type metadata accessor for URLJetPackAssetFetcher()
{
  result = qword_1EE30CF18;
  if (!qword_1EE30CF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t URLJetPackAssetFetcher.init(bagPromise:urlSessionConfiguration:downloadsBaseURL:urlSessionFactoryProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = type metadata accessor for URLJetPackAssetFetcher();
  *(a6 + *(v12 + 28)) = a1;
  *a6 = a2;
  a6[1] = a4;
  a6[2] = a5;
  return sub_1DB30C06C(a3, a6 + *(v12 + 24), &unk_1ECC42B20, &unk_1DB50F6A0);
}

uint64_t URLJetPackAssetFetcher._fetch(_:candidate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB41BC0C, 0, 0);
}

uint64_t sub_1DB41BC0C()
{
  v0[5] = &type metadata for SystemDateProvider;
  v0[6] = &protocol witness table for SystemDateProvider;
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1DB41BCBC;
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];

  return sub_1DB41BE7C(v4, v5, v2, (v0 + 2));
}

uint64_t sub_1DB41BCBC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB41BE14, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v4 + 16));
    v7 = *(v6 + 8);

    return v7(a1 & 1);
  }
}

uint64_t sub_1DB41BE14()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v2 = v0[12];

  return v1(0);
}

uint64_t sub_1DB41BE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[182] = v4;
  v5[181] = a4;
  v5[180] = a3;
  v5[179] = a2;
  v5[178] = a1;
  v6 = type metadata accessor for JetPackAsset.Metadata(0);
  v5[183] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[184] = swift_task_alloc();
  v8 = sub_1DB509DD0();
  v5[185] = v8;
  v9 = *(v8 - 8);
  v5[186] = v9;
  v10 = *(v9 + 64) + 15;
  v5[187] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45380, &qword_1DB51BBA0);
  v5[188] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[189] = swift_task_alloc();
  v5[190] = swift_task_alloc();
  v13 = type metadata accessor for URLJetPackAssetFetcher();
  v5[191] = v13;
  v14 = *(v13 - 8);
  v5[192] = v14;
  v5[193] = *(v14 + 64);
  v5[194] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BB0, &unk_1DB50F6C0);
  v5[195] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v5[196] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0) - 8) + 64) + 15;
  v5[197] = swift_task_alloc();
  v5[198] = swift_task_alloc();
  v5[199] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0) - 8) + 64) + 15;
  v5[200] = swift_task_alloc();
  v5[201] = swift_task_alloc();
  v19 = type metadata accessor for JetPackAsset(0);
  v5[202] = v19;
  v20 = *(v19 - 8);
  v5[203] = v20;
  v21 = *(v20 + 64) + 15;
  v5[204] = swift_task_alloc();
  v5[205] = swift_task_alloc();
  v22 = sub_1DB509CA0();
  v5[206] = v22;
  v23 = *(v22 - 8);
  v5[207] = v23;
  v5[208] = *(v23 + 64);
  v5[209] = swift_task_alloc();
  v5[210] = swift_task_alloc();
  v5[211] = swift_task_alloc();
  v24 = sub_1DB509860();
  v5[212] = v24;
  v25 = *(v24 - 8);
  v5[213] = v25;
  v26 = *(v25 + 64) + 15;
  v5[214] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB41C238, 0, 0);
}

uint64_t sub_1DB41C238()
{
  v1 = *(v0 + 1432);
  if (sub_1DB509B50())
  {
    v2 = (v0 + 920);
    v3 = *(v0 + 1432);
    v4 = sub_1DB509C40();
    v6 = v5;
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v57 = *(v0 + 632);
    v59 = *(v0 + 624);
    __swift_project_boxed_opaque_existential_1((v0 + 600), v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DB50EE90;
    v72 = sub_1DB301BC0(0, 38, 0, MEMORY[0x1E69E7CC0]);
    v8._object = 0x80000001DB52DD20;
    v8._countAndFlagsBits = 0xD000000000000025;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    *(v0 + 1328) = MEMORY[0x1E69E6158];
    *(v0 + 1304) = v4;
    *(v0 + 1312) = v6;
    sub_1DB30C4B8(v0 + 1304, v0 + 1368, &qword_1ECC426B0, &qword_1DB50EEB0);
    *v2 = 0u;
    *(v0 + 936) = 0u;

    sub_1DB301D4C(v0 + 1368, v0 + 920);
    *(v0 + 952) = 2;
    v9 = v72;
    v69 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DB301BC0(0, *(v72 + 2) + 1, 1, v72);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    v67 = v6;
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1DB301BC0((v10 > 1), v11 + 1, 1, v9);
    }

    v61 = *(v0 + 1616);
    v12 = *(v0 + 1472);
    v13 = *(v0 + 1464);
    v14 = *(v0 + 1448);
    v63 = *(v0 + 1432);
    v65 = *(v0 + 1648);
    v15 = *(v0 + 1424);
    *(v9 + 2) = v11 + 1;
    v16 = &v9[40 * v11];
    v17 = *v2;
    v18 = *(v0 + 936);
    v16[64] = *(v0 + 952);
    *(v16 + 2) = v17;
    *(v16 + 3) = v18;
    *&v71 = v9;
    sub_1DB30623C(v0 + 1304, &qword_1ECC426B0, &qword_1DB50EEB0);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    *(v7 + 32) = v9;
    Logger.info(_:)(v7, v59, v57);

    __swift_destroy_boxed_opaque_existential_0((v0 + 600));
    v20 = v14[3];
    v21 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v20);
    v22 = v12 + v13[6];
    (*(v21 + 8))(v20, v21);
    v23 = [objc_opt_self() processInfo];
    [v23 operatingSystemVersion];

    v24 = JEGestaltGetBuildVersion();
    v25 = sub_1DB50A650();
    v27 = v26;

    *v12 = 0u;
    v12[1] = 0u;
    v28 = v12 + v13[7];
    *v28 = v71;
    *(v28 + 2) = v73;
    v28[24] = 0;
    v29 = (v12 + v13[8]);
    *v29 = v25;
    v29[1] = v27;
    v30 = (v12 + v13[9]);
    *v30 = 0;
    v30[1] = 0;
    *(v12 + v13[10]) = 2;
    v31 = v12 + v13[11];
    *v31 = 0x40AC200000000000;
    v31[8] = 0;
    *(v31 + 2) = 0;
    v31[24] = 1;
    *(v31 + 4) = 0x4143C68000000000;
    *(v31 + 20) = 0;
    v15[3] = &type metadata for JetPackFileStreamSource;
    v15[4] = &protocol witness table for JetPackFileStreamSource;
    v32 = swift_allocObject();
    *v15 = v32;
    v32[2] = v69;
    v32[3] = v67;
    v32[4] = 0;
    v32[5] = 0;
    sub_1DB423A58(v12, v15 + v61[5], type metadata accessor for JetPackAsset.Metadata);
    sub_1DB42420C(&qword_1EE30E288, MEMORY[0x1E6968FB0]);
    v33 = sub_1DB50B8F0();
    v35 = v34;
    sub_1DB423EBC(v12, type metadata accessor for JetPackAsset.Metadata);
    v36 = v15 + v61[6];
    *v36 = 0;
    v36[4] = 1;
    v37 = (v15 + v61[7]);
    *v37 = v33;
    v37[1] = v35;
    *(v15 + v61[8]) = 0;
    *(v15 + v61[9]) = 0;
    *(v15 + v61[10]) = 0;
    v38 = (v15 + v61[11]);
    *v38 = 0;
    v38[1] = 0;
    v39 = *(v0 + 1712);
    v40 = *(v0 + 1688);
    v41 = *(v0 + 1680);
    v42 = *(v0 + 1672);
    v43 = *(v0 + 1640);
    v44 = *(v0 + 1632);
    v45 = *(v0 + 1608);
    v46 = *(v0 + 1600);
    v47 = *(v0 + 1592);
    v48 = *(v0 + 1584);
    v58 = *(v0 + 1576);
    v60 = *(v0 + 1568);
    v62 = *(v0 + 1552);
    v64 = *(v0 + 1520);
    v66 = *(v0 + 1512);
    v68 = *(v0 + 1496);
    v70 = *(v0 + 1472);

    v49 = *(v0 + 8);

    return v49(0);
  }

  else
  {
    v51 = *(v0 + 1456);
    v52 = *v51;
    [*v51 set:objc_msgSend(*v51 timingDataOptions:sel__timingDataOptions) | 0x45];
    v53 = *(v51 + 8);
    if (v53)
    {
      v54 = *(*(v0 + 1456) + 16);

      v55 = v53(v52);
      sub_1DB365724(v53);
    }

    else
    {
      v55 = [objc_opt_self() sessionWithConfiguration_];
    }

    *(v0 + 1720) = v55;
    type metadata accessor for BaseObjectGraph();
    *(v0 + 1728) = static BaseObjectGraph.current.getter();
    v56 = swift_task_alloc();
    *(v0 + 1736) = v56;
    *v56 = v0;
    v56[1] = sub_1DB41C918;

    return sub_1DB43E550();
  }
}

uint64_t sub_1DB41C918(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1736);
  v8 = *v2;
  v3[218] = a1;
  v3[219] = v1;

  if (v1)
  {
    v5 = sub_1DB41FFC4;
  }

  else
  {
    v6 = v3[216];

    v5 = sub_1DB41CA38;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB41CA38()
{
  v1 = *(v0 + 1744);
  if (v1)
  {
    v2 = *(v0 + 1744);

    sub_1DB3AC958();
    sub_1DB50A3E0();
    v3 = v1[2];
    v4 = sub_1DB50A3B0();
    v5 = v1[6];

    os_unfair_lock_lock((v5 + 20));
    v6 = *(v5 + 16);
    os_unfair_lock_unlock((v5 + 20));

    if (v6 == 1)
    {
      v7 = v1[3];

      sub_1DB50A390();
    }

    v8 = v1[4];
    sub_1DB38371C(v4);
  }

  else
  {
    sub_1DB50A3E0();
    v4 = sub_1DB50A3B0();
  }

  *(v0 + 1760) = v4;
  sub_1DB50A3C0();
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 1656);
  v10 = *(v0 + 1648);
  v11 = *(v0 + 1432);
  *(v0 + 1768) = qword_1EE30C918;
  sub_1DB50BEB0();
  v103 = *(v0 + 832);
  v105 = *(v0 + 824);
  __swift_project_boxed_opaque_existential_1((v0 + 800), v105);
  *(v0 + 1776) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DB50EE90;
  v110 = sub_1DB301BC0(0, 34, 0, MEMORY[0x1E69E7CC0]);
  v13._countAndFlagsBits = 0xD000000000000021;
  v13._object = 0x80000001DB52DB70;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v0 + 1360) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1336));
  v15 = *(v9 + 16);
  *(v0 + 1784) = v15;
  *(v0 + 1792) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v107 = v15;
  v15(boxed_opaque_existential_0, v11, v10);
  sub_1DB30C4B8(v0 + 1336, v0 + 1272, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 960) = 0u;
  *(v0 + 976) = 0u;
  sub_1DB301D4C(v0 + 1272, v0 + 960);
  *(v0 + 992) = 0;
  v16 = v110;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1DB301BC0(0, *(v110 + 2) + 1, 1, v110);
  }

  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1DB301BC0((v17 > 1), v18 + 1, 1, v16);
  }

  v19 = *(v0 + 1712);
  v20 = *(v0 + 1688);
  v21 = *(v0 + 1648);
  v22 = *(v0 + 1624);
  v98 = *(v0 + 1608);
  v100 = *(v0 + 1616);
  v97 = *(v0 + 1440);
  v23 = *(v0 + 1432);
  *(v16 + 2) = v18 + 1;
  v24 = &v16[40 * v18];
  v25 = *(v0 + 960);
  v26 = *(v0 + 976);
  v24[64] = *(v0 + 992);
  *(v24 + 2) = v25;
  *(v24 + 3) = v26;
  sub_1DB30623C(v0 + 1336, &qword_1ECC426B0, &qword_1DB50EEB0);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  *(v12 + 32) = v16;
  Logger.info(_:)(v12, v105, v103);

  __swift_destroy_boxed_opaque_existential_0((v0 + 800));
  v107(v20, v23, v21);
  sub_1DB509820();
  sub_1DB5097D0();
  sub_1DB509850();
  sub_1DB30C4B8(v97, v98, &qword_1ECC46F20, qword_1DB5105D0);
  v28 = *(v22 + 48);
  *(v0 + 1800) = v28;
  *(v0 + 1808) = (v22 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v28(v98, 1, v100) == 1)
  {
    sub_1DB30623C(*(v0 + 1608), &qword_1ECC46F20, qword_1DB5105D0);
  }

  else
  {
    v29 = *(v0 + 1640);
    v30 = *(v0 + 1616);
    sub_1DB423AC0(*(v0 + 1608), v29, type metadata accessor for JetPackAsset);
    v31 = (v29 + *(v30 + 20));
    if (v31[3])
    {
      v32 = *(v0 + 1712);
      v33 = v31[2];
      sub_1DB509850();
    }

    if (v31[1])
    {
      v34 = *(v0 + 1712);
      v35 = *v31;
      sub_1DB509850();
    }

    sub_1DB423EBC(*(v0 + 1640), type metadata accessor for JetPackAsset);
  }

  v36 = *(v0 + 1656);
  v37 = *(v0 + 1648);
  v38 = *(v0 + 1592);
  sub_1DB30C4B8(*(v0 + 1456) + *(*(v0 + 1528) + 24), v38, &unk_1ECC42B20, &unk_1DB50F6A0);
  v39 = *(v36 + 48);
  *(v0 + 1816) = v39;
  *(v0 + 1824) = (v36 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v40 = v39(v38, 1, v37);
  v41 = *(v0 + 1720);
  v42 = *(v0 + 1712);
  if (v40 == 1)
  {
    v43 = *(v0 + 1552);
    v44 = *(v0 + 1536);
    v108 = *(v0 + 1544);
    v109 = *(v0 + 1456);
    sub_1DB30623C(*(v0 + 1592), &unk_1ECC42B20, &unk_1DB50F6A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC457F8, &qword_1DB51BBA8);
    v45 = swift_allocObject();
    *(v0 + 1872) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v45 + 16) = v46;
    *(v45 + 24) = MEMORY[0x1E69E7CC0];
    *(v45 + 32) = 0;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    v47 = sub_1DB5097F0();
    *(v0 + 496) = sub_1DB42391C;
    *(v0 + 504) = v45;
    *(v0 + 464) = MEMORY[0x1E69E9820];
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_1DB421490;
    *(v0 + 488) = &block_descriptor_14;
    v48 = _Block_copy((v0 + 464));
    v49 = *(v0 + 504);

    v50 = [v41 dataTaskWithRequest:v47 completionHandler:v48];
    *(v0 + 1880) = v50;
    _Block_release(v48);

    v51 = v50;
    sub_1DB50AF50();

    [v51 resume];
    sub_1DB41B644();
    sub_1DB423A58(v109, v43, type metadata accessor for URLJetPackAssetFetcher);
    v52 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v53 = (v108 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    v104 = v43;
    sub_1DB423AC0(v43, v55 + v52, type metadata accessor for URLJetPackAssetFetcher);
    *(v55 + v53) = v51;
    *(v55 + v54) = v41;
    sub_1DB423A58(v109, v43, type metadata accessor for URLJetPackAssetFetcher);
    v56 = swift_allocObject();
    sub_1DB423AC0(v104, v56 + v52, type metadata accessor for URLJetPackAssetFetcher);
    *(v56 + v53) = v51;
    *(v56 + v54) = v41;
    v57 = sub_1DB336FD4(0, &qword_1EE30E320, 0x1E69E9610);
    v58 = v41;
    v59 = v51;
    v60 = v58;
    v61 = v59;
    v62 = sub_1DB50AFB0();
    *(v0 + 704) = v57;
    *(v0 + 712) = &protocol witness table for OS_dispatch_queue;
    *(v0 + 680) = v62;
    *(v0 + 144) = sub_1DB42393C;
    *(v0 + 152) = v55;
    *(v0 + 160) = sub_1DB4239E4;
    *(v0 + 168) = v56;
    sub_1DB30BE90(v0 + 680, v0 + 176);
    *(v0 + 216) = 0;

    sub_1DB309A4C(v0 + 144);

    sub_1DB30623C(v0 + 144, &qword_1ECC428A0, &unk_1DB50F6E0);
    __swift_destroy_boxed_opaque_existential_0((v0 + 680));
    v63 = sub_1DB41EC6C;
  }

  else
  {
    v64 = *(v0 + 1688);
    v65 = *(v0 + 1680);
    v96 = *(v0 + 1664);
    v66 = *(v0 + 1656);
    v67 = *(v0 + 1648);
    v68 = *(v0 + 1592);
    v69 = *(v0 + 1568);
    v70 = *(v0 + 1560);
    v101 = *(v0 + 1544);
    v102 = *(v0 + 1552);
    v99 = *(v0 + 1536);
    v106 = *(v0 + 1456);
    v71 = *(v66 + 32);
    v66 += 32;
    *(v0 + 1832) = v71;
    *(v0 + 1840) = v66 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v71(v65, v68, v67);
    *v69 = MEMORY[0x1E69E7CC0];
    swift_storeEnumTagMultiPayload();
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45808, &qword_1DB51BBB0);
    v73 = *(v72 + 48);
    v74 = *(v72 + 52);
    v75 = swift_allocObject();
    *(v0 + 1848) = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v76 = swift_allocObject();
    *(v76 + 16) = 0;
    v75[2] = v76;
    sub_1DB30C06C(v69, v75 + *(*v75 + 96), &unk_1ECC42BB0, &unk_1DB50F6C0);
    v77 = sub_1DB5097F0();
    v107(v64, v65, v67);
    v78 = (*(v66 + 48) + 24) & ~*(v66 + 48);
    v79 = swift_allocObject();
    *(v79 + 16) = v75;
    v71(v79 + v78, v64, v67);
    *(v0 + 544) = sub_1DB423B28;
    *(v0 + 552) = v79;
    *(v0 + 512) = MEMORY[0x1E69E9820];
    *(v0 + 520) = 1107296256;
    *(v0 + 528) = sub_1DB420FC4;
    *(v0 + 536) = &block_descriptor_16_1;
    v80 = _Block_copy((v0 + 512));
    v81 = *(v0 + 552);

    v82 = [v41 downloadTaskWithRequest:v77 completionHandler:v80];
    *(v0 + 1856) = v82;
    _Block_release(v80);

    v83 = v82;

    sub_1DB50AF50();

    [v83 resume];
    sub_1DB41B588();
    sub_1DB423A58(v106, v102, type metadata accessor for URLJetPackAssetFetcher);
    v84 = (*(v99 + 80) + 16) & ~*(v99 + 80);
    v85 = (v101 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
    v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
    v87 = swift_allocObject();
    sub_1DB423AC0(v102, v87 + v84, type metadata accessor for URLJetPackAssetFetcher);
    *(v87 + v85) = v83;
    *(v87 + v86) = v41;
    sub_1DB423A58(v106, v102, type metadata accessor for URLJetPackAssetFetcher);
    v88 = swift_allocObject();
    sub_1DB423AC0(v102, v88 + v84, type metadata accessor for URLJetPackAssetFetcher);
    *(v88 + v85) = v83;
    *(v88 + v86) = v41;
    v89 = sub_1DB336FD4(0, &qword_1EE30E320, 0x1E69E9610);
    v90 = v83;
    v91 = v41;
    v92 = v90;
    v93 = v91;
    v94 = sub_1DB50AFB0();
    *(v0 + 864) = v89;
    *(v0 + 872) = &protocol witness table for OS_dispatch_queue;
    *(v0 + 840) = v94;
    *(v0 + 384) = sub_1DB423BB4;
    *(v0 + 392) = v87;
    *(v0 + 400) = sub_1DB423DE8;
    *(v0 + 408) = v88;
    sub_1DB30BE90(v0 + 840, v0 + 416);
    *(v0 + 456) = 0;

    sub_1DB309C44(v0 + 384);

    sub_1DB30623C(v0 + 384, &qword_1ECC42870, &unk_1DB518F90);
    __swift_destroy_boxed_opaque_existential_0((v0 + 840));
    v63 = sub_1DB41D700;
  }

  return MEMORY[0x1EEE6DFA0](v63, 0, 0);
}

uint64_t sub_1DB41D700()
{
  v1 = v0 + 10;
  v2 = v0[231];
  v3 = v0[189];
  v0[10] = v0;
  v0[15] = v3;
  v0[11] = sub_1DB41D7CC;
  v0[28] = swift_continuation_init();
  v4 = (v0 + 28);
  *(v4 + 72) = 1;
  sub_1DB309C44(v4);
  sub_1DB30623C(v4, &qword_1ECC42870, &unk_1DB518F90);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB41D7CC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 1864) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB41EA8C;
  }

  else
  {
    sub_1DB30C06C(*(v1 + 1512), *(v1 + 1520), &unk_1ECC45380, &qword_1DB51BBA0);
    v4 = sub_1DB41D904;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB41D904()
{
  v229 = v0;
  v1 = *(v0 + 1824);
  v2 = *(v0 + 1816);
  v3 = *(v0 + 1648);
  v4 = *(v0 + 1584);
  v5 = *(v0 + 1576);
  v6 = *(v0 + 1520);
  v220 = *(v6 + *(*(v0 + 1504) + 48));
  sub_1DB30C06C(v6, v4, &unk_1ECC42B20, &unk_1DB50F6A0);
  sub_1DB30C4B8(v4, v5, &unk_1ECC42B20, &unk_1DB50F6A0);
  v7 = v2(v5, 1, v3);
  v8 = *(v0 + 1856);
  v9 = *(v0 + 1848);
  v10 = *(v0 + 1680);
  if (v7 == 1)
  {
    v214 = *(v0 + 1792);
    v207 = *(v0 + 1784);
    v11 = *(v0 + 1656);
    v12 = *(v0 + 1648);
    v13 = *(v0 + 1584);
    v14 = *(v0 + 1432);
    sub_1DB30623C(*(v0 + 1576), &unk_1ECC42B20, &unk_1DB50F6A0);
    sub_1DB42420C(&qword_1EE30E288, MEMORY[0x1E6968FB0]);
    v15 = sub_1DB50B8F0();
    v17 = v16;

    sub_1DB30623C(v13, &unk_1ECC42B20, &unk_1DB50F6A0);
    (*(v11 + 8))(v10, v12);
    v18 = type metadata accessor for JetPackDataStreamSource();
    *(v0 + 664) = v18;
    *(v0 + 672) = &protocol witness table for JetPackDataStreamSource;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 640));
    v20 = *(v18 + 24);
    v207(boxed_opaque_existential_0 + v20, v14, v12);
    (*(v11 + 56))(boxed_opaque_existential_0 + v20, 0, 1, v12);
    *boxed_opaque_existential_0 = xmmword_1DB51BB20;
    boxed_opaque_existential_0[2] = v15;
    boxed_opaque_existential_0[3] = v17;
  }

  else
  {
    v21 = *(v0 + 1840);
    v22 = *(v0 + 1672);
    v23 = *(v0 + 1656);
    v24 = *(v0 + 1648);
    v25 = *(v0 + 1584);
    v26 = *(v0 + 1432);
    (*(v0 + 1832))(v22, *(v0 + 1576), v24);
    v215 = sub_1DB509C30();
    v208 = v27;
    sub_1DB42420C(&qword_1EE30E288, MEMORY[0x1E6968FB0]);
    v28 = sub_1DB50B8F0();
    v30 = v29;

    v31 = *(v23 + 8);
    v31(v22, v24);
    sub_1DB30623C(v25, &unk_1ECC42B20, &unk_1DB50F6A0);
    v31(v10, v24);
    *(v0 + 664) = &type metadata for JetPackFileStreamSource;
    *(v0 + 672) = &protocol witness table for JetPackFileStreamSource;
    v32 = swift_allocObject();
    *(v0 + 640) = v32;
    v32[2] = v215;
    v32[3] = v208;
    v32[4] = v28;
    v32[5] = v30;
  }

  v33 = [v220 statusCode];
  if (v33 == 304)
  {
    v201 = *(v0 + 1808);
    v209 = 304;
    v34 = *(v0 + 1776);
    v35 = *(v0 + 1768);
    v188 = *(v0 + 1616);
    v194 = *(v0 + 1800);
    v36 = *(v0 + 1600);
    v37 = *(v0 + 1440);
    sub_1DB50BEB0();
    v38 = *(v0 + 904);
    v39 = *(v0 + 912);
    __swift_project_boxed_opaque_existential_1((v0 + 880), v38);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DB50EE90;
    *(v0 + 1168) = MEMORY[0x1E69E6158];
    *(v0 + 1144) = 0xD00000000000002ALL;
    *(v0 + 1152) = 0x80000001DB52DC60;
    *(v41 + 48) = 0u;
    *(v41 + 32) = 0u;
    sub_1DB301D4C(v0 + 1144, v41 + 32);
    *(v41 + 64) = 0;
    *(v40 + 32) = v41;
    Logger.info(_:)(v40, v38, v39);

    __swift_destroy_boxed_opaque_existential_0((v0 + 880));
    sub_1DB30C4B8(v37, v36, &qword_1ECC46F20, qword_1DB5105D0);
    if (v194(v36, 1, v188) == 1)
    {
      v42 = *(v0 + 1776);
      v43 = *(v0 + 1768);
      v44 = *(v0 + 1760);
      v45 = *(v0 + 1720);
      v210 = *(v0 + 1712);
      v46 = *(v0 + 1704);
      v195 = *(v0 + 1744);
      v202 = *(v0 + 1696);
      sub_1DB30623C(*(v0 + 1600), &qword_1ECC46F20, qword_1DB5105D0);
      sub_1DB50BEB0();
      v47 = *(v0 + 584);
      v48 = *(v0 + 592);
      __swift_project_boxed_opaque_existential_1((v0 + 560), v47);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1DB50EE90;
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1DB50EE90;
      *(v0 + 1136) = MEMORY[0x1E69E6158];
      *(v0 + 1112) = 0xD000000000000033;
      *(v0 + 1120) = 0x80000001DB52DC90;
      *(v50 + 48) = 0u;
      *(v50 + 32) = 0u;
      sub_1DB301D4C(v0 + 1112, v50 + 32);
      *(v50 + 64) = 0;
      *(v49 + 32) = v50;
      Logger.error(_:)(v49, v47, v48);

      __swift_destroy_boxed_opaque_existential_0((v0 + 560));
      sub_1DB423A04();
      swift_allocError();
      *v51 = 0;
      *(v51 + 8) = 2;
      swift_willThrow();

      (*(v46 + 8))(v210, v202);
LABEL_16:
      __swift_destroy_boxed_opaque_existential_0((v0 + 640));
      v74 = *(v0 + 1712);
      v75 = *(v0 + 1688);
      v76 = *(v0 + 1680);
      v77 = *(v0 + 1672);
      v78 = *(v0 + 1640);
      v79 = *(v0 + 1632);
      v80 = *(v0 + 1608);
      v81 = *(v0 + 1600);
      v82 = *(v0 + 1592);
      v83 = *(v0 + 1584);
      v179 = *(v0 + 1576);
      v184 = *(v0 + 1568);
      v191 = *(v0 + 1552);
      v198 = *(v0 + 1520);
      v203 = *(v0 + 1512);
      v212 = *(v0 + 1496);
      v221 = *(v0 + 1472);

      v84 = *(v0 + 8);
      v85 = 0;
      goto LABEL_37;
    }

    v177 = *(v0 + 1760);
    v180 = *(v0 + 1744);
    v175 = *(v0 + 1720);
    v86 = *(v0 + 1704);
    v185 = *(v0 + 1696);
    v192 = *(v0 + 1712);
    v87 = *(v0 + 1632);
    v88 = *(v0 + 1616);
    v89 = *(v0 + 1496);
    v90 = *(v0 + 1488);
    v199 = *(v0 + 1464);
    v204 = *(v0 + 1480);
    v91 = *(v0 + 1448);
    v217 = *(v0 + 1424);
    sub_1DB423AC0(*(v0 + 1600), v87, type metadata accessor for JetPackAsset);
    v92 = v91[3];
    v93 = v91[4];
    __swift_project_boxed_opaque_existential_1(v91, v92);
    (*(v93 + 8))(v92, v93);

    (*(v86 + 8))(v192, v185);
    __swift_destroy_boxed_opaque_existential_0((v0 + 640));
    (*(v90 + 40))(v87 + *(v88 + 20) + *(v199 + 24), v89, v204);
    *(v87 + *(v88 + 36)) = 1;
    sub_1DB423AC0(v87, v217, type metadata accessor for JetPackAsset);
  }

  else
  {
    v52 = v33;
    if ([v220 statusCode] < 200 || objc_msgSend(v220, sel_statusCode) > 299)
    {
      v57 = *(v0 + 1776);
      v58 = *(v0 + 1768);
      sub_1DB50BEB0();
      v211 = *(v0 + 752);
      v216 = *(v0 + 744);
      __swift_project_boxed_opaque_existential_1((v0 + 720), v216);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_1DB50EE90;
      *&v223 = sub_1DB301BC0(0, 36, 0, MEMORY[0x1E69E7CC0]);
      v60._countAndFlagsBits = 0xD000000000000023;
      v60._object = 0x80000001DB52DBD0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v60);
      v61 = [v220 statusCode];
      *(v0 + 1264) = MEMORY[0x1E69E6530];
      *(v0 + 1240) = v61;
      sub_1DB30C4B8(v0 + 1240, v0 + 1208, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 1000) = 0u;
      *(v0 + 1016) = 0u;
      sub_1DB301D4C(v0 + 1208, v0 + 1000);
      *(v0 + 1032) = 0;
      v62 = v223;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_1DB301BC0(0, *(v223 + 16) + 1, 1, v223);
      }

      v64 = *(v62 + 2);
      v63 = *(v62 + 3);
      if (v64 >= v63 >> 1)
      {
        v62 = sub_1DB301BC0((v63 > 1), v64 + 1, 1, v62);
      }

      v65 = *(v0 + 1760);
      v66 = *(v0 + 1720);
      v197 = *(v0 + 1712);
      v67 = *(v0 + 1704);
      v183 = *(v0 + 1744);
      v190 = *(v0 + 1696);
      *(v62 + 2) = v64 + 1;
      v68 = &v62[40 * v64];
      v69 = *(v0 + 1000);
      v70 = *(v0 + 1016);
      v68[64] = *(v0 + 1032);
      *(v68 + 2) = v69;
      *(v68 + 3) = v70;
      *&v223 = v62;
      sub_1DB30623C(v0 + 1240, &qword_1ECC426B0, &qword_1DB50EEB0);
      v71._countAndFlagsBits = 0;
      v71._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v71);
      *(v59 + 32) = v62;
      Logger.error(_:)(v59, v216, v211);

      __swift_destroy_boxed_opaque_existential_0((v0 + 720));
      v72 = [v220 statusCode];
      sub_1DB423A04();
      swift_allocError();
      *v73 = v72;
      *(v73 + 8) = 0;
      swift_willThrow();

      (*(v67 + 8))(v197, v190);
      goto LABEL_16;
    }

    v209 = v52;
    v53 = sub_1DB50A620();
    v54 = [v220 valueForHTTPHeaderField_];

    if (v54)
    {
      v55 = sub_1DB50A650();
      v189 = v56;
      v196 = v55;
    }

    else
    {
      v189 = 0;
      v196 = 0;
    }

    v94 = sub_1DB50A620();
    v95 = [v220 valueForHTTPHeaderField_];

    if (v95)
    {
      v96 = sub_1DB50A650();
      v181 = v97;
      v186 = v96;
    }

    else
    {
      v181 = 0;
      v186 = 0;
    }

    v98 = sub_1DB50A620();
    v99 = [v220 valueForHTTPHeaderField_];

    if (v99)
    {
      v100 = sub_1DB50A650();
      v102 = v101;
    }

    else
    {
      v100 = 0;
      v102 = 0;
    }

    v103 = sub_1DB50A620();
    v104 = [v220 valueForHTTPHeaderField_];

    if (v104)
    {
      v105 = sub_1DB50A650();
      v176 = v106;
      v178 = v105;
    }

    else
    {
      v176 = 0;
      v178 = 0;
    }

    v107 = (v0 + 1040);
    v108 = *(v0 + 1776);
    v109 = *(v0 + 1768);
    sub_1DB50BEB0();
    v164 = *(v0 + 792);
    v165 = *(v0 + 784);
    __swift_project_boxed_opaque_existential_1((v0 + 760), v165);
    v163 = swift_allocObject();
    *(v163 + 16) = xmmword_1DB50EE90;
    *&v223 = sub_1DB301BC0(0, 24, 0, MEMORY[0x1E69E7CC0]);
    v110._countAndFlagsBits = 0xD000000000000017;
    v110._object = 0x80000001DB52DC40;
    LogMessage.StringInterpolation.appendLiteral(_:)(v110);
    if (v102)
    {
      v111 = MEMORY[0x1E69E6158];
      v112 = v102;
      v113 = v100;
    }

    else
    {
      v112 = 0;
      v113 = 0;
      v111 = 0;
      *(v0 + 1096) = 0;
    }

    *(v0 + 1080) = v113;
    *(v0 + 1088) = v112;
    *(v0 + 1104) = v111;
    sub_1DB30C4B8(v0 + 1080, v0 + 1176, &qword_1ECC426B0, &qword_1DB50EEB0);
    *v107 = 0u;
    *(v0 + 1056) = 0u;

    sub_1DB301D4C(v0 + 1176, v0 + 1040);
    *(v0 + 1072) = 0;
    v114 = v223;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = sub_1DB301BC0(0, *(v223 + 16) + 1, 1, v223);
    }

    v116 = *(v114 + 2);
    v115 = *(v114 + 3);
    v218 = v100;
    v205 = v102;
    if (v116 >= v115 >> 1)
    {
      v114 = sub_1DB301BC0((v115 > 1), v116 + 1, 1, v114);
    }

    v170 = *(v0 + 1760);
    v171 = *(v0 + 1744);
    v172 = *(v0 + 1704);
    v173 = *(v0 + 1696);
    v174 = *(v0 + 1712);
    v168 = *(v0 + 1648);
    v169 = *(v0 + 1720);
    v117 = *(v0 + 1616);
    v118 = *(v0 + 1472);
    v119 = *(v0 + 1464);
    v120 = *(v0 + 1448);
    v167 = *(v0 + 1432);
    v121 = *(v0 + 1424);
    *(v114 + 2) = v116 + 1;
    v122 = &v114[40 * v116];
    v123 = *v107;
    v124 = *(v0 + 1056);
    v122[64] = *(v0 + 1072);
    *(v122 + 2) = v123;
    *(v122 + 3) = v124;
    *&v223 = v114;
    sub_1DB30623C(v0 + 1080, &qword_1ECC426B0, &qword_1DB50EEB0);
    v125._countAndFlagsBits = 0;
    v125._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v125);
    *(v163 + 32) = v114;
    Logger.info(_:)(v163, v165, v164);

    __swift_destroy_boxed_opaque_existential_0((v0 + 760));
    v126 = v120[3];
    v127 = v120[4];
    __swift_project_boxed_opaque_existential_1(v120, v126);
    v128 = v118 + v119[6];
    (*(v127 + 8))(v126, v127);
    v129 = [objc_opt_self() processInfo];
    [v129 operatingSystemVersion];
    v166 = v223;
    v130 = v224;

    v131 = JEGestaltGetBuildVersion();
    v132 = sub_1DB50A650();
    v134 = v133;

    sub_1DB4219E0(v220, &v223);
    v135 = v223;
    v136 = BYTE8(v223);
    v137 = v224;
    v138 = v225;
    v139 = v226;
    v140 = v227;
    v141 = v228;
    *v118 = v196;
    v118[1] = v189;
    v118[2] = v186;
    v118[3] = v181;
    v142 = v118 + v119[7];
    *v142 = v166;
    *(v142 + 2) = v130;
    v142[24] = 0;
    v143 = (v118 + v119[8]);
    *v143 = v132;
    v143[1] = v134;
    v144 = (v118 + v119[9]);
    *v144 = v178;
    v144[1] = v176;
    *(v118 + v119[10]) = 2;
    v145 = v118 + v119[11];
    *v145 = v135;
    v145[8] = v136;
    *(v145 + 2) = v137;
    v145[24] = v138;
    *(v145 + 4) = v139;
    v145[40] = v140;
    v145[41] = v141;
    sub_1DB30BE90(v0 + 640, v121);
    sub_1DB423A58(v118, v121 + v117[5], type metadata accessor for JetPackAsset.Metadata);
    sub_1DB42420C(&qword_1EE30E288, MEMORY[0x1E6968FB0]);
    v146 = sub_1DB50B8F0();
    v148 = v147;

    sub_1DB423EBC(v118, type metadata accessor for JetPackAsset.Metadata);
    (*(v172 + 8))(v174, v173);
    __swift_destroy_boxed_opaque_existential_0((v0 + 640));
    v149 = v121 + v117[6];
    *v149 = 0;
    *(v149 + 4) = 1;
    v150 = (v121 + v117[7]);
    *v150 = v146;
    v150[1] = v148;
    *(v121 + v117[8]) = 0;
    *(v121 + v117[9]) = 0;
    *(v121 + v117[10]) = 0;
    v151 = (v121 + v117[11]);
    *v151 = v218;
    v151[1] = v205;
  }

  v152 = *(v0 + 1712);
  v222 = v209 == 304;
  v153 = *(v0 + 1688);
  v154 = *(v0 + 1680);
  v155 = *(v0 + 1672);
  v156 = *(v0 + 1640);
  v157 = *(v0 + 1632);
  v158 = *(v0 + 1608);
  v159 = *(v0 + 1600);
  v160 = *(v0 + 1592);
  v161 = *(v0 + 1584);
  v182 = *(v0 + 1576);
  v187 = *(v0 + 1568);
  v193 = *(v0 + 1552);
  v200 = *(v0 + 1520);
  v206 = *(v0 + 1512);
  v213 = *(v0 + 1496);
  v219 = *(v0 + 1472);

  v84 = *(v0 + 8);
  v85 = v222;
LABEL_37:

  return v84(v85);
}

uint64_t sub_1DB41EA8C()
{
  v1 = *(v0 + 1848);
  v2 = *(v0 + 1760);
  v3 = *(v0 + 1744);
  v4 = *(v0 + 1720);
  v29 = *(v0 + 1712);
  v5 = *(v0 + 1704);
  v6 = *(v0 + 1696);
  v7 = *(v0 + 1680);
  v8 = *(v0 + 1656);
  v9 = *(v0 + 1648);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v29, v6);
  v30 = *(v0 + 1864);
  v10 = *(v0 + 1712);
  v11 = *(v0 + 1688);
  v12 = *(v0 + 1680);
  v13 = *(v0 + 1672);
  v14 = *(v0 + 1640);
  v15 = *(v0 + 1632);
  v16 = *(v0 + 1608);
  v17 = *(v0 + 1600);
  v18 = *(v0 + 1592);
  v19 = *(v0 + 1584);
  v22 = *(v0 + 1576);
  v23 = *(v0 + 1568);
  v24 = *(v0 + 1552);
  v25 = *(v0 + 1520);
  v26 = *(v0 + 1512);
  v27 = *(v0 + 1496);
  v28 = *(v0 + 1472);

  v20 = *(v0 + 8);

  return v20(0);
}

uint64_t sub_1DB41EC6C()
{
  v1 = *(v0 + 1872);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 1400;
  *(v0 + 24) = sub_1DB41ED38;
  *(v0 + 304) = swift_continuation_init();
  *(v0 + 376) = 1;
  sub_1DB309A4C(v0 + 304);
  sub_1DB30623C(v0 + 304, &qword_1ECC428A0, &unk_1DB50F6E0);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1DB41ED38()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 1888) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB41FE0C;
  }

  else
  {
    *(v1 + 1896) = *(v1 + 1400);
    *(v1 + 1912) = *(v1 + 1416);
    v4 = sub_1DB41EE6C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB41EE6C()
{
  v208 = v0;
  v198 = *(v0 + 1904);
  v193 = *(v0 + 1896);
  v1 = *(v0 + 1880);
  v2 = *(v0 + 1872);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1784);
  v5 = *(v0 + 1656);
  v6 = *(v0 + 1648);
  v7 = *(v0 + 1432);
  sub_1DB42420C(&qword_1EE30E288, MEMORY[0x1E6968FB0]);
  v8 = sub_1DB50B8F0();
  v10 = v9;

  v11 = type metadata accessor for JetPackDataStreamSource();
  *(v0 + 664) = v11;
  *(v0 + 672) = &protocol witness table for JetPackDataStreamSource;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 640));
  v13 = *(v11 + 24);
  v4(boxed_opaque_existential_0 + v13, v7, v6);
  (*(v5 + 56))(boxed_opaque_existential_0 + v13, 0, 1, v6);
  *boxed_opaque_existential_0 = v193;
  boxed_opaque_existential_0[1] = v198;
  boxed_opaque_existential_0[2] = v8;
  boxed_opaque_existential_0[3] = v10;
  v14 = *(v0 + 1912);
  v15 = [v14 statusCode];
  v199 = v14;
  if (v15 == 304)
  {
    v183 = 304;
    v187 = *(v0 + 1808);
    v16 = *(v0 + 1776);
    v17 = *(v0 + 1768);
    v171 = *(v0 + 1616);
    v177 = *(v0 + 1800);
    v18 = *(v0 + 1600);
    v19 = *(v0 + 1440);
    sub_1DB50BEB0();
    v20 = *(v0 + 904);
    v21 = *(v0 + 912);
    __swift_project_boxed_opaque_existential_1((v0 + 880), v20);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DB50EE90;
    *(v0 + 1168) = MEMORY[0x1E69E6158];
    *(v0 + 1144) = 0xD00000000000002ALL;
    *(v0 + 1152) = 0x80000001DB52DC60;
    *(v23 + 48) = 0u;
    *(v23 + 32) = 0u;
    sub_1DB301D4C(v0 + 1144, v23 + 32);
    *(v23 + 64) = 0;
    *(v22 + 32) = v23;
    Logger.info(_:)(v22, v20, v21);

    __swift_destroy_boxed_opaque_existential_0((v0 + 880));
    sub_1DB30C4B8(v19, v18, &qword_1ECC46F20, qword_1DB5105D0);
    if (v177(v18, 1, v171) == 1)
    {
      v24 = *(v0 + 1776);
      v25 = *(v0 + 1768);
      v26 = *(v0 + 1760);
      v178 = *(v0 + 1744);
      v27 = *(v0 + 1720);
      v188 = *(v0 + 1712);
      v28 = *(v0 + 1704);
      v184 = *(v0 + 1696);
      sub_1DB30623C(*(v0 + 1600), &qword_1ECC46F20, qword_1DB5105D0);
      sub_1DB50BEB0();
      v29 = *(v0 + 584);
      v30 = *(v0 + 592);
      __swift_project_boxed_opaque_existential_1((v0 + 560), v29);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1DB50EE90;
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1DB50EE90;
      *(v0 + 1136) = MEMORY[0x1E69E6158];
      *(v0 + 1112) = 0xD000000000000033;
      *(v0 + 1120) = 0x80000001DB52DC90;
      *(v32 + 48) = 0u;
      *(v32 + 32) = 0u;
      sub_1DB301D4C(v0 + 1112, v32 + 32);
      *(v32 + 64) = 0;
      *(v31 + 32) = v32;
      Logger.error(_:)(v31, v29, v30);

      __swift_destroy_boxed_opaque_existential_0((v0 + 560));
      sub_1DB423A04();
      swift_allocError();
      *v33 = 0;
      *(v33 + 8) = 2;
      swift_willThrow();

      (*(v28 + 8))(v188, v184);
LABEL_13:
      __swift_destroy_boxed_opaque_existential_0((v0 + 640));
      v56 = *(v0 + 1712);
      v57 = *(v0 + 1688);
      v58 = *(v0 + 1680);
      v59 = *(v0 + 1672);
      v60 = *(v0 + 1640);
      v61 = *(v0 + 1632);
      v62 = *(v0 + 1608);
      v63 = *(v0 + 1600);
      v64 = *(v0 + 1592);
      v65 = *(v0 + 1584);
      v162 = *(v0 + 1576);
      v168 = *(v0 + 1568);
      v174 = *(v0 + 1552);
      v180 = *(v0 + 1520);
      v185 = *(v0 + 1512);
      v190 = *(v0 + 1496);
      v200 = *(v0 + 1472);

      v66 = *(v0 + 8);
      v67 = 0;
      goto LABEL_34;
    }

    v160 = *(v0 + 1760);
    v163 = *(v0 + 1744);
    v158 = *(v0 + 1720);
    v68 = *(v0 + 1704);
    v169 = *(v0 + 1696);
    v175 = *(v0 + 1712);
    v69 = *(v0 + 1632);
    v70 = *(v0 + 1616);
    v71 = *(v0 + 1496);
    v72 = *(v0 + 1488);
    v191 = *(v0 + 1480);
    v181 = *(v0 + 1464);
    v73 = *(v0 + 1448);
    v195 = *(v0 + 1424);
    sub_1DB423AC0(*(v0 + 1600), v69, type metadata accessor for JetPackAsset);
    v74 = v73[3];
    v75 = v73[4];
    __swift_project_boxed_opaque_existential_1(v73, v74);
    (*(v75 + 8))(v74, v75);

    (*(v68 + 8))(v175, v169);
    __swift_destroy_boxed_opaque_existential_0((v0 + 640));
    (*(v72 + 40))(v69 + *(v70 + 20) + *(v181 + 24), v71, v191);
    *(v69 + *(v70 + 36)) = 1;
    sub_1DB423AC0(v69, v195, type metadata accessor for JetPackAsset);
  }

  else
  {
    v34 = v15;
    if ([v14 statusCode] < 200 || objc_msgSend(v14, sel_statusCode) > 299)
    {
      v39 = *(v0 + 1776);
      v40 = *(v0 + 1768);
      sub_1DB50BEB0();
      v189 = *(v0 + 752);
      v194 = *(v0 + 744);
      __swift_project_boxed_opaque_existential_1((v0 + 720), v194);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1DB50EE90;
      *&v202 = sub_1DB301BC0(0, 36, 0, MEMORY[0x1E69E7CC0]);
      v42._countAndFlagsBits = 0xD000000000000023;
      v42._object = 0x80000001DB52DBD0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      v43 = [v14 statusCode];
      *(v0 + 1264) = MEMORY[0x1E69E6530];
      *(v0 + 1240) = v43;
      sub_1DB30C4B8(v0 + 1240, v0 + 1208, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 1000) = 0u;
      *(v0 + 1016) = 0u;
      sub_1DB301D4C(v0 + 1208, v0 + 1000);
      *(v0 + 1032) = 0;
      v44 = v202;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_1DB301BC0(0, *(v202 + 16) + 1, 1, v202);
      }

      v46 = *(v44 + 2);
      v45 = *(v44 + 3);
      if (v46 >= v45 >> 1)
      {
        v44 = sub_1DB301BC0((v45 > 1), v46 + 1, 1, v44);
      }

      v47 = *(v0 + 1760);
      v48 = *(v0 + 1720);
      v179 = *(v0 + 1712);
      v49 = *(v0 + 1704);
      v167 = *(v0 + 1744);
      v173 = *(v0 + 1696);
      *(v44 + 2) = v46 + 1;
      v50 = &v44[40 * v46];
      v51 = *(v0 + 1000);
      v52 = *(v0 + 1016);
      v50[64] = *(v0 + 1032);
      *(v50 + 2) = v51;
      *(v50 + 3) = v52;
      *&v202 = v44;
      sub_1DB30623C(v0 + 1240, &qword_1ECC426B0, &qword_1DB50EEB0);
      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v53);
      *(v41 + 32) = v44;
      Logger.error(_:)(v41, v194, v189);

      __swift_destroy_boxed_opaque_existential_0((v0 + 720));
      v54 = [v199 statusCode];
      sub_1DB423A04();
      swift_allocError();
      *v55 = v54;
      *(v55 + 8) = 0;
      swift_willThrow();

      (*(v49 + 8))(v179, v173);
      goto LABEL_13;
    }

    v183 = v34;
    v35 = sub_1DB50A620();
    v36 = [v14 valueForHTTPHeaderField_];

    if (v36)
    {
      v37 = sub_1DB50A650();
      v166 = v38;
      v172 = v37;
    }

    else
    {
      v166 = 0;
      v172 = 0;
    }

    v76 = sub_1DB50A620();
    v77 = [v14 valueForHTTPHeaderField_];

    if (v77)
    {
      v78 = sub_1DB50A650();
      v161 = v79;
      v164 = v78;
    }

    else
    {
      v161 = 0;
      v164 = 0;
    }

    v80 = sub_1DB50A620();
    v81 = [v14 valueForHTTPHeaderField_];

    if (v81)
    {
      v82 = sub_1DB50A650();
      v84 = v83;
    }

    else
    {
      v82 = 0;
      v84 = 0;
    }

    v85 = sub_1DB50A620();
    v86 = [v14 valueForHTTPHeaderField_];

    if (v86)
    {
      v87 = sub_1DB50A650();
      v157 = v88;
      v159 = v87;
    }

    else
    {
      v157 = 0;
      v159 = 0;
    }

    v89 = (v0 + 1040);
    v90 = *(v0 + 1776);
    v91 = *(v0 + 1768);
    sub_1DB50BEB0();
    v148 = *(v0 + 792);
    v149 = *(v0 + 784);
    __swift_project_boxed_opaque_existential_1((v0 + 760), v149);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_1DB50EE90;
    *&v202 = sub_1DB301BC0(0, 24, 0, MEMORY[0x1E69E7CC0]);
    v93._countAndFlagsBits = 0xD000000000000017;
    v93._object = 0x80000001DB52DC40;
    LogMessage.StringInterpolation.appendLiteral(_:)(v93);
    if (v84)
    {
      v94 = MEMORY[0x1E69E6158];
      v95 = v84;
      v96 = v82;
    }

    else
    {
      v95 = 0;
      v96 = 0;
      v94 = 0;
      *(v0 + 1096) = 0;
    }

    *(v0 + 1080) = v96;
    *(v0 + 1088) = v95;
    *(v0 + 1104) = v94;
    sub_1DB30C4B8(v0 + 1080, v0 + 1176, &qword_1ECC426B0, &qword_1DB50EEB0);
    *v89 = 0u;
    *(v0 + 1056) = 0u;

    sub_1DB301D4C(v0 + 1176, v0 + 1040);
    *(v0 + 1072) = 0;
    v97 = v202;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v97 = sub_1DB301BC0(0, *(v202 + 16) + 1, 1, v202);
    }

    v99 = *(v97 + 2);
    v98 = *(v97 + 3);
    v196 = v82;
    if (v99 >= v98 >> 1)
    {
      v97 = sub_1DB301BC0((v98 > 1), v99 + 1, 1, v97);
    }

    v152 = *(v0 + 1760);
    v153 = *(v0 + 1744);
    v151 = *(v0 + 1720);
    v154 = *(v0 + 1704);
    v155 = *(v0 + 1696);
    v156 = *(v0 + 1712);
    v145 = *(v0 + 1616);
    v100 = *(v0 + 1472);
    v101 = *(v0 + 1464);
    v102 = *(v0 + 1448);
    v146 = *(v0 + 1432);
    v147 = *(v0 + 1648);
    v103 = *(v0 + 1424);
    *(v97 + 2) = v99 + 1;
    v104 = &v97[40 * v99];
    v105 = *v89;
    v106 = *(v0 + 1056);
    v104[64] = *(v0 + 1072);
    *(v104 + 2) = v105;
    *(v104 + 3) = v106;
    *&v202 = v97;
    sub_1DB30623C(v0 + 1080, &qword_1ECC426B0, &qword_1DB50EEB0);
    v107._countAndFlagsBits = 0;
    v107._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v107);
    *(v92 + 32) = v97;
    Logger.info(_:)(v92, v149, v148);

    __swift_destroy_boxed_opaque_existential_0((v0 + 760));
    v108 = v102[3];
    v109 = v102[4];
    __swift_project_boxed_opaque_existential_1(v102, v108);
    v110 = v100 + v101[6];
    (*(v109 + 8))(v108, v109);
    v111 = [objc_opt_self() processInfo];
    [v111 operatingSystemVersion];
    v150 = v202;
    v112 = v203;

    v113 = JEGestaltGetBuildVersion();
    v114 = sub_1DB50A650();
    v116 = v115;

    sub_1DB4219E0(v199, &v202);
    v117 = v202;
    v118 = BYTE8(v202);
    v119 = v203;
    v120 = v204;
    v121 = v205;
    v122 = v206;
    v123 = v207;
    *v100 = v172;
    v100[1] = v166;
    v100[2] = v164;
    v100[3] = v161;
    v124 = v100 + v101[7];
    *v124 = v150;
    *(v124 + 2) = v112;
    v124[24] = 0;
    v125 = (v100 + v101[8]);
    *v125 = v114;
    v125[1] = v116;
    v126 = (v100 + v101[9]);
    *v126 = v159;
    v126[1] = v157;
    *(v100 + v101[10]) = 2;
    v127 = v100 + v101[11];
    *v127 = v117;
    v127[8] = v118;
    *(v127 + 2) = v119;
    v127[24] = v120;
    *(v127 + 4) = v121;
    v127[40] = v122;
    v127[41] = v123;
    sub_1DB30BE90(v0 + 640, v103);
    sub_1DB423A58(v100, v103 + v145[5], type metadata accessor for JetPackAsset.Metadata);
    v128 = sub_1DB50B8F0();
    v130 = v129;

    sub_1DB423EBC(v100, type metadata accessor for JetPackAsset.Metadata);
    (*(v154 + 8))(v156, v155);
    __swift_destroy_boxed_opaque_existential_0((v0 + 640));
    v131 = v103 + v145[6];
    *v131 = 0;
    *(v131 + 4) = 1;
    v132 = (v103 + v145[7]);
    *v132 = v128;
    v132[1] = v130;
    *(v103 + v145[8]) = 0;
    *(v103 + v145[9]) = 0;
    *(v103 + v145[10]) = 0;
    v133 = (v103 + v145[11]);
    *v133 = v196;
    v133[1] = v84;
  }

  v134 = *(v0 + 1712);
  v201 = v183 == 304;
  v135 = *(v0 + 1688);
  v136 = *(v0 + 1680);
  v137 = *(v0 + 1672);
  v138 = *(v0 + 1640);
  v139 = *(v0 + 1632);
  v140 = *(v0 + 1608);
  v141 = *(v0 + 1600);
  v142 = *(v0 + 1592);
  v143 = *(v0 + 1584);
  v165 = *(v0 + 1576);
  v170 = *(v0 + 1568);
  v176 = *(v0 + 1552);
  v182 = *(v0 + 1520);
  v186 = *(v0 + 1512);
  v192 = *(v0 + 1496);
  v197 = *(v0 + 1472);

  v66 = *(v0 + 8);
  v67 = v201;
LABEL_34:

  return v66(v67);
}

uint64_t sub_1DB41FE0C()
{
  v1 = *(v0 + 1880);
  v2 = *(v0 + 1872);
  v3 = *(v0 + 1760);
  v4 = *(v0 + 1744);
  v5 = *(v0 + 1712);
  v6 = *(v0 + 1704);
  v7 = *(v0 + 1696);

  (*(v6 + 8))(v5, v7);
  v27 = *(v0 + 1888);
  v8 = *(v0 + 1712);
  v9 = *(v0 + 1688);
  v10 = *(v0 + 1680);
  v11 = *(v0 + 1672);
  v12 = *(v0 + 1640);
  v13 = *(v0 + 1632);
  v14 = *(v0 + 1608);
  v15 = *(v0 + 1600);
  v16 = *(v0 + 1592);
  v17 = *(v0 + 1584);
  v20 = *(v0 + 1576);
  v21 = *(v0 + 1568);
  v22 = *(v0 + 1552);
  v23 = *(v0 + 1520);
  v24 = *(v0 + 1512);
  v25 = *(v0 + 1496);
  v26 = *(v0 + 1472);

  v18 = *(v0 + 8);

  return v18(0);
}

uint64_t sub_1DB41FFC4()
{
  v1 = *(v0 + 1728);

  v21 = *(v0 + 1752);
  v2 = *(v0 + 1712);
  v3 = *(v0 + 1688);
  v4 = *(v0 + 1680);
  v5 = *(v0 + 1672);
  v6 = *(v0 + 1640);
  v7 = *(v0 + 1632);
  v8 = *(v0 + 1608);
  v9 = *(v0 + 1600);
  v10 = *(v0 + 1592);
  v11 = *(v0 + 1584);
  v14 = *(v0 + 1576);
  v15 = *(v0 + 1568);
  v16 = *(v0 + 1552);
  v17 = *(v0 + 1520);
  v18 = *(v0 + 1512);
  v19 = *(v0 + 1496);
  v20 = *(v0 + 1472);

  v12 = *(v0 + 8);

  return v12(0);
}

void sub_1DB420180(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v123 = a5;
  v125 = a4;
  v136 = *MEMORY[0x1E69E9840];
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45380, &qword_1DB51BBA0);
  v8 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118);
  v119 = v113 - v9;
  *&v122 = sub_1DB509B70();
  v121 = *(v122 - 8);
  v10 = v121[8];
  MEMORY[0x1EEE9AC00](v122);
  v12 = v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DB509E00();
  v120 = *(v13 - 8);
  v14 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v117 = v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v113 - v21;
  v23 = sub_1DB509CA0();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v124 = v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v113 - v27;
  v29 = a1;
  v31 = v30;
  v33 = v32;
  sub_1DB30C4B8(v29, v22, &unk_1ECC42B20, &unk_1DB50F6A0);
  if ((*(v31 + 48))(v22, 1, v33) == 1)
  {
    sub_1DB30623C(v22, &unk_1ECC42B20, &unk_1DB50F6A0);
    if (a3)
    {
LABEL_3:
      v34 = a3;
LABEL_27:
      v97 = a3;
      sub_1DB3DE0F8(v34);
      v98 = v34;
LABEL_28:

      goto LABEL_29;
    }

LABEL_26:
    sub_1DB423A04();
    v34 = swift_allocError();
    *v96 = 1;
    *(v96 + 8) = 2;
    goto LABEL_27;
  }

  (*(v31 + 32))(v28, v22, v33);
  v35 = v28;
  if (!a2 || (objc_opt_self(), (v36 = swift_dynamicCastObjCClass()) == 0))
  {
    (*(v31 + 8))(v28, v33);
    if (a3)
    {
      goto LABEL_3;
    }

    goto LABEL_26;
  }

  v114 = v36;
  v115 = v31;
  v37 = a2;
  sub_1DB509DF0();
  v38 = sub_1DB509DE0();
  v116 = v35;
  v40 = v39;
  (*(v120 + 8))(v16, v13);
  *&v133 = 0x6B63617074656A2ELL;
  *(&v133 + 1) = 0xE800000000000000;
  *&v128 = v38;
  *(&v128 + 1) = v40;
  v41 = v116;
  *&v128 = sub_1DB50A860();
  *(&v128 + 1) = v42;
  sub_1DB50A770();
  v133 = v128;
  v43 = v121;
  v44 = v122;
  (v121[13])(v12, *MEMORY[0x1E6968F70], v122);
  sub_1DB301E30();
  v45 = v124;
  sub_1DB509C80();
  (v43[1])(v12, v44);

  v46 = objc_opt_self();
  v47 = [v46 defaultManager];
  sub_1DB509C30();
  v48 = sub_1DB50A620();

  *&v133 = 0;
  v49 = [v47 attributesOfItemAtPath:v48 error:&v133];

  v50 = v133;
  if (!v49)
  {
    v106 = v115;
LABEL_33:
    v107 = v50;
    v108 = sub_1DB509B20();

    swift_willThrow();
    sub_1DB423A04();
    v109 = swift_allocError();
    *v110 = v108;
    *(v110 + 8) = 1;
    v111 = v108;
    sub_1DB3DE0F8(v109);

    v112 = *(v106 + 8);
    v112(v45, v33);
    v112(v41, v33);
    v98 = v109;
    goto LABEL_28;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_1DB42420C(&qword_1EE30C808, type metadata accessor for FileAttributeKey);
  v51 = sub_1DB50A4B0();
  v52 = v50;

  if (!*(v51 + 16) || (v53 = sub_1DB314CB4(*MEMORY[0x1E696A3B8]), (v54 & 1) == 0))
  {

LABEL_31:
    v100 = v115;
    v101 = v117;
    (*(v115 + 56))(v117, 1, 1, v33);
    v102 = *(v118 + 48);
    v103 = v119;
    sub_1DB30C06C(v101, v119, &unk_1ECC42B20, &unk_1DB50F6A0);
    *(v103 + v102) = v114;
    v104 = v37;
    sub_1DB3F9A78(v103);

    sub_1DB30623C(v103, &unk_1ECC45380, &qword_1DB51BBA0);
    v105 = *(v100 + 8);
    v105(v45, v33);
    v105(v116, v33);
    goto LABEL_29;
  }

  sub_1DB300B14(*(v51 + 56) + 32 * v53, &v133);

  if ((swift_dynamicCast() & 1) == 0 || !v128 || [v114 statusCode] < 200 || objc_msgSend(v114, sel_statusCode) > 299)
  {
    goto LABEL_31;
  }

  v121 = v37;
  v123 = v33;
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v55 = v134;
  v56 = v135;
  __swift_project_boxed_opaque_existential_1(&v133, v134);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v57 = swift_allocObject();
  v122 = xmmword_1DB50EE90;
  *(v57 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v58 = swift_allocObject();
  *(v58 + 16) = v122;
  *(&v129 + 1) = MEMORY[0x1E69E6158];
  *&v128 = 0xD00000000000003ELL;
  *(&v128 + 1) = 0x80000001DB52DE00;
  *(v58 + 48) = 0u;
  *(v58 + 32) = 0u;
  sub_1DB301D4C(&v128, v58 + 32);
  *(v58 + 64) = 0;
  *(v57 + 32) = v58;
  Logger.info(_:)(v57, v55, v56);

  __swift_destroy_boxed_opaque_existential_0(&v133);
  sub_1DB50BEB0();
  v59 = v134;
  v120 = v135;
  v113[1] = __swift_project_boxed_opaque_existential_1(&v133, v134);
  v60 = swift_allocObject();
  *(v60 + 16) = v122;
  v126 = sub_1DB301BC0(0, 15, 0, MEMORY[0x1E69E7CC0]);
  v61._countAndFlagsBits = 0x203A6D6F7266;
  v61._object = 0xE600000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v61);
  v62 = v123;
  v132 = v123;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v131);
  v64 = v115 + 16;
  v65 = *(v115 + 16);
  v66 = v116;
  v65(boxed_opaque_existential_0, v116, v62);
  sub_1DB30C4B8(v131, v127, &qword_1ECC426B0, &qword_1DB50EEB0);
  v128 = 0u;
  v129 = 0u;
  sub_1DB301D4C(v127, &v128);
  v130 = 0;
  v67 = v126;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v67 = sub_1DB301BC0(0, *(v67 + 2) + 1, 1, v67);
  }

  v69 = *(v67 + 2);
  v68 = *(v67 + 3);
  if (v69 >= v68 >> 1)
  {
    v67 = sub_1DB301BC0((v68 > 1), v69 + 1, 1, v67);
  }

  *(v67 + 2) = v69 + 1;
  v70 = &v67[40 * v69];
  v71 = v128;
  v72 = v129;
  v70[64] = v130;
  *(v70 + 2) = v71;
  *(v70 + 3) = v72;
  v126 = v67;
  sub_1DB30623C(v131, &qword_1ECC426B0, &qword_1DB50EEB0);
  v73._countAndFlagsBits = 0x203A6F74202C20;
  v73._object = 0xE700000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v73);
  v74 = v123;
  v132 = v123;
  v75 = __swift_allocate_boxed_opaque_existential_0(v131);
  v65(v75, v124, v74);
  sub_1DB30C4B8(v131, v127, &qword_1ECC426B0, &qword_1DB50EEB0);
  v128 = 0u;
  v129 = 0u;
  sub_1DB301D4C(v127, &v128);
  v130 = 0;
  v76 = v126;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v76 = sub_1DB301BC0(0, *(v76 + 2) + 1, 1, v76);
  }

  v78 = *(v76 + 2);
  v77 = *(v76 + 3);
  *&v122 = v64;
  v113[0] = v65;
  if (v78 >= v77 >> 1)
  {
    v76 = sub_1DB301BC0((v77 > 1), v78 + 1, 1, v76);
  }

  *(v76 + 2) = v78 + 1;
  v79 = &v76[40 * v78];
  v80 = v128;
  v81 = v129;
  v79[64] = v130;
  *(v79 + 2) = v80;
  *(v79 + 3) = v81;
  v126 = v76;
  sub_1DB30623C(v131, &qword_1ECC426B0, &qword_1DB50EEB0);
  v82._countAndFlagsBits = 0;
  v82._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v82);
  *(v60 + 32) = v126;
  Logger.info(_:)(v60, v59, v120);

  __swift_destroy_boxed_opaque_existential_0(&v133);
  v83 = [v46 defaultManager];
  v84 = sub_1DB509BC0();
  v45 = v124;
  v85 = sub_1DB509BC0();
  *&v133 = 0;
  v86 = v66;
  v87 = [v83 moveItemAtURL:v84 toURL:v85 error:&v133];

  v50 = v133;
  if (!v87)
  {
    v33 = v123;
    v106 = v115;
    v41 = v66;
    v37 = v121;
    goto LABEL_33;
  }

  v88 = v117;
  v89 = v123;
  (v113[0])(v117, v45, v123);
  v90 = v115;
  (*(v115 + 56))(v88, 0, 1, v89);
  v91 = *(v118 + 48);
  v92 = v119;
  sub_1DB30C06C(v88, v119, &unk_1ECC42B20, &unk_1DB50F6A0);
  *(v92 + v91) = v114;
  v93 = v121;
  v94 = v50;
  sub_1DB3F9A78(v92);

  sub_1DB30623C(v92, &unk_1ECC45380, &qword_1DB51BBA0);
  v95 = *(v90 + 8);
  v95(v45, v89);
  v95(v86, v89);
LABEL_29:
  v99 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DB420FC4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (a2)
  {
    sub_1DB509C20();
    v14 = sub_1DB509CA0();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v15 = sub_1DB509CA0();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  v16 = a3;
  v17 = a4;
  v13(v11, a3, a4);

  return sub_1DB30623C(v11, &unk_1ECC42B20, &unk_1DB50F6A0);
}

uint64_t sub_1DB421138(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for URLJetPackAssetFetcher();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v24 - v13;
  sub_1DB50AB80();
  v15 = sub_1DB50ABA0();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  sub_1DB423A58(a2, v10, type metadata accessor for URLJetPackAssetFetcher);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  sub_1DB423AC0(v10, v20 + v16, type metadata accessor for URLJetPackAssetFetcher);
  *(v20 + v17) = a3;
  *(v20 + v18) = a4;
  *(v20 + v19) = 0;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = xmmword_1DB51BB30;
  v21 = a3;
  v22 = a4;
  sub_1DB388F14(0, 0, v14, &unk_1DB51BBD0, v20);
}

void sub_1DB421360(uint64_t a1, unint64_t a2, void *a3, id a4)
{
  v5 = a2 >> 60 == 15 || a3 == 0;
  if (v5 || (objc_opt_self(), (v9 = swift_dynamicCastObjCClass()) == 0))
  {
    if (a4)
    {
      v12 = a4;
    }

    else
    {
      sub_1DB423A04();
      v12 = swift_allocError();
      *v13 = 1;
      *(v13 + 8) = 2;
    }

    v14 = a4;
    sub_1DB3DE4B8(v12);
    v11 = v12;
  }

  else
  {
    v15 = v9;
    sub_1DB3483BC(a1, a2);
    v10 = a3;
    sub_1DB3F9F48(a1, a2, v15);
    sub_1DB30C158(a1, a2);
    v11 = v15;
  }
}

uint64_t sub_1DB421490(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_1DB509CE0();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_1DB32E340(v6, v11);
}

uint64_t sub_1DB421558(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v28 = a3;
  v29 = a4;
  v6 = type metadata accessor for URLJetPackAssetFetcher();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v28 - v12;
  v14 = *a1;
  v15 = a1[1];
  sub_1DB30C1AC(v14, v15);
  sub_1DB30C1AC(v14, v15);
  sub_1DB50AB80();
  v16 = sub_1DB50ABA0();
  (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
  sub_1DB423A58(a2, v9, type metadata accessor for URLJetPackAssetFetcher);
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_1DB423AC0(v9, v21 + v17, type metadata accessor for URLJetPackAssetFetcher);
  v22 = v28;
  v23 = v29;
  *(v21 + v18) = v28;
  *(v21 + v19) = v23;
  *(v21 + v20) = 0;
  v24 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v24 = v14;
  v24[1] = v15;
  v25 = v22;
  v26 = v23;
  sub_1DB388F14(0, 0, v13, &unk_1DB51BBE0, v21);
  sub_1DB30C158(v14, v15);
}

uint64_t sub_1DB4217B4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28 = a1;
  v29 = a6;
  v9 = type metadata accessor for URLJetPackAssetFetcher();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v28 - v15;
  sub_1DB50AB80();
  v17 = sub_1DB50ABA0();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  sub_1DB423A58(a2, v12, type metadata accessor for URLJetPackAssetFetcher);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_1DB423AC0(v12, v22 + v18, type metadata accessor for URLJetPackAssetFetcher);
  *(v22 + v19) = a3;
  *(v22 + v20) = a4;
  v23 = v28;
  *(v22 + v21) = v28;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = xmmword_1DB51BB30;
  v24 = a3;
  v25 = a4;
  v26 = v23;
  sub_1DB388F14(0, 0, v16, v29, v22);
}

uint64_t sub_1DB4219E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DB50A6B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE30C7C0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  if (v28 == 1)
  {
    if (qword_1EE30C7C8 != -1)
    {
      swift_once();
    }

    if (byte_1EE30C7D0 != 1)
    {
LABEL_15:
      v13 = sub_1DB50A620();
      v12 = [a1 valueForHTTPHeaderField_];

      if (!v12)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v9 = sub_1DB3ADB68(&unk_1F56F0628);
    sub_1DB424254(&unk_1F56F0648);
    if (qword_1EE30C7A8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    if (!v29)
    {

      goto LABEL_15;
    }

    v10 = sub_1DB33114C(v28, v29, v9);

    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v11 = sub_1DB50A620();
  v12 = [a1 valueForHTTPHeaderField_];

  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_16:
  sub_1DB50A650();

  sub_1DB50A690();
  v14 = sub_1DB50A660();
  v16 = v15;
  (*(v5 + 8))(v8, v4);
  if (v16 >> 60 != 15)
  {
    v17 = sub_1DB509890();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_1DB509880();
    sub_1DB4242A8();
    sub_1DB509870();

    sub_1DB32E340(v14, v16);
  }

LABEL_19:
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v20 = v30;
  v21 = v31;
  __swift_project_boxed_opaque_existential_1(&v28, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v22 = swift_allocObject();
  v26 = xmmword_1DB50EE90;
  *(v22 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v23 = swift_allocObject();
  *(v23 + 16) = v26;
  v27[3] = MEMORY[0x1E69E6158];
  v27[0] = 0xD000000000000022;
  v27[1] = 0x80000001DB52DE60;
  *(v23 + 48) = 0u;
  *(v23 + 32) = 0u;
  sub_1DB301D4C(v27, v23 + 32);
  *(v23 + 64) = 0;
  *(v22 + 32) = v23;
  Logger.info(_:)(v22, v20, v21);

  result = __swift_destroy_boxed_opaque_existential_0(&v28);
  *a2 = 0x40AC200000000000;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0x4143C68000000000;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1DB4221E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[57] = a8;
  v8[58] = v10;
  v8[55] = a6;
  v8[56] = a7;
  v8[53] = a4;
  v8[54] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DB422214, 0, 0);
}

uint64_t sub_1DB422214()
{
  v1 = *(v0 + 424);
  *(v0 + 472) = *(v1 + *(type metadata accessor for URLJetPackAssetFetcher() + 28));

  return MEMORY[0x1EEE6DFA0](sub_1DB42228C, 0, 0);
}

uint64_t sub_1DB42228C()
{
  v1 = v0 + 2;
  v2 = v0[59];
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_1DB422358;
  v0[26] = swift_continuation_init();
  v3 = (v0 + 26);
  *(v3 + 72) = 1;
  sub_1DB309848(v3);
  sub_1DB30623C(v3, &qword_1ECC428C0, &unk_1DB50F6F0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB422358()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 480) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB422640;
  }

  else
  {
    *(v1 + 488) = *(v1 + 288);
    v4 = sub_1DB42247C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB42247C()
{
  v1 = v0[61];
  v2 = v0[55];
  v3 = v0[56];
  v4 = v0[54];
  v5 = [v4 _incompleteTaskMetrics];
  v6 = [objc_allocWithZone(MEMORY[0x1E698CA28]) initWithTask:v4 metrics:v5];
  v0[62] = v6;

  [v6 setBag_];
  [v6 setSession_];
  if (v3)
  {
    v7 = v0[56];
    v8 = sub_1DB509B10();
  }

  else
  {
    v8 = 0;
  }

  v9 = v0[58];
  [v6 setError_];

  v10 = [objc_opt_self() currentProcess];
  [v6 setProcessInfo_];

  if (v9 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v12 = v0[57];
    v13 = v0[58];
    v11 = sub_1DB509CD0();
  }

  [v6 setResponseBody_];

  v14 = objc_opt_self();
  v0[63] = v14;
  v0[64] = sub_1DB4DCBB4([v14 shouldCollectMetricsPromiseForContext_]);

  return MEMORY[0x1EEE6DFA0](sub_1DB4228E0, 0, 0);
}

uint64_t sub_1DB422640()
{
  v1 = *(v0 + 480);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  __swift_project_boxed_opaque_existential_1((v0 + 208), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v18 = sub_1DB301BC0(0, 65, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001DB52DD50;
  v5._countAndFlagsBits = 0xD000000000000040;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  swift_getErrorValue();
  v6 = *(v0 + 392);
  v7 = *(v0 + 400);
  *(v0 + 352) = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 328));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, v6, v7);
  sub_1DB30C4B8(v0 + 328, v0 + 360, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  sub_1DB301D4C(v0 + 360, v0 + 288);
  *(v0 + 320) = 0;
  v9 = v18;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1DB301BC0(0, *(v18 + 2) + 1, 1, v18);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1DB301BC0((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[40 * v11];
  v13 = *(v0 + 288);
  v14 = *(v0 + 304);
  v12[64] = *(v0 + 320);
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  sub_1DB30623C(v0 + 328, &qword_1ECC426B0, &qword_1DB50EEB0);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v4 + 32) = v9;
  Logger.error(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1DB4228E0()
{
  v1 = v0 + 10;
  v2 = v0[64];
  v0[10] = v0;
  v0[15] = v0 + 36;
  v0[11] = sub_1DB4229AC;
  v0[26] = swift_continuation_init();
  v3 = (v0 + 26);
  *(v3 + 72) = 1;
  sub_1DB30A2E4(v3);
  sub_1DB30623C(v3, &qword_1ECC42890, &unk_1DB518FA0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB4229AC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 520) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB422BB8;
  }

  else
  {
    v5 = v1[64];

    v1[66] = v1[36];
    v4 = sub_1DB422AD8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB422AD8()
{
  v1 = *(v0 + 528);
  v2 = [v1 BOOLValue];

  if (v2)
  {
    *(v0 + 536) = sub_1DB4DCD64([*(v0 + 504) loadURLEventPromiseWithContext_]);

    return MEMORY[0x1EEE6DFA0](sub_1DB422E70, 0, 0);
  }

  else
  {
    v3 = *(v0 + 488);

    swift_unknownObjectRelease();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1DB422BB8()
{
  v1 = *(v0 + 512);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);

  swift_unknownObjectRelease();

  v4 = *(v0 + 520);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  __swift_project_boxed_opaque_existential_1((v0 + 208), v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB50EE90;
  v21 = sub_1DB301BC0(0, 65, 0, MEMORY[0x1E69E7CC0]);
  v8._object = 0x80000001DB52DD50;
  v8._countAndFlagsBits = 0xD000000000000040;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  swift_getErrorValue();
  v9 = *(v0 + 392);
  v10 = *(v0 + 400);
  *(v0 + 352) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 328));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, v9, v10);
  sub_1DB30C4B8(v0 + 328, v0 + 360, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  sub_1DB301D4C(v0 + 360, v0 + 288);
  *(v0 + 320) = 0;
  v12 = v21;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1DB301BC0(0, *(v21 + 2) + 1, 1, v21);
  }

  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1DB301BC0((v13 > 1), v14 + 1, 1, v12);
  }

  *(v12 + 2) = v14 + 1;
  v15 = &v12[40 * v14];
  v16 = *(v0 + 288);
  v17 = *(v0 + 304);
  v15[64] = *(v0 + 320);
  *(v15 + 2) = v16;
  *(v15 + 3) = v17;
  sub_1DB30623C(v0 + 328, &qword_1ECC426B0, &qword_1DB50EEB0);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  *(v7 + 32) = v12;
  Logger.error(_:)(v7, v5, v6);

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1DB422E70()
{
  v1 = v0 + 18;
  v2 = v0[67];
  v0[18] = v0;
  v0[23] = v0 + 36;
  v0[19] = sub_1DB422F3C;
  v0[26] = swift_continuation_init();
  v3 = (v0 + 26);
  *(v3 + 72) = 1;
  sub_1DB30A130(v3);
  sub_1DB30623C(v3, &qword_1ECC42880, &unk_1DB50F6D0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB422F3C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 176);
  *(*v0 + 544) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB423068;
  }

  else
  {
    v5 = v1[67];

    v1[69] = v1[36];
    v4 = sub_1DB423320;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB423068()
{
  v1 = *(v0 + 536);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);

  swift_unknownObjectRelease();

  v4 = *(v0 + 544);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  __swift_project_boxed_opaque_existential_1((v0 + 208), v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB50EE90;
  v21 = sub_1DB301BC0(0, 65, 0, MEMORY[0x1E69E7CC0]);
  v8._object = 0x80000001DB52DD50;
  v8._countAndFlagsBits = 0xD000000000000040;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  swift_getErrorValue();
  v9 = *(v0 + 392);
  v10 = *(v0 + 400);
  *(v0 + 352) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 328));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, v9, v10);
  sub_1DB30C4B8(v0 + 328, v0 + 360, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  sub_1DB301D4C(v0 + 360, v0 + 288);
  *(v0 + 320) = 0;
  v12 = v21;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1DB301BC0(0, *(v21 + 2) + 1, 1, v21);
  }

  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1DB301BC0((v13 > 1), v14 + 1, 1, v12);
  }

  *(v12 + 2) = v14 + 1;
  v15 = &v12[40 * v14];
  v16 = *(v0 + 288);
  v17 = *(v0 + 304);
  v15[64] = *(v0 + 320);
  *(v15 + 2) = v16;
  *(v15 + 3) = v17;
  sub_1DB30623C(v0 + 328, &qword_1ECC426B0, &qword_1DB50EEB0);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  *(v7 + 32) = v12;
  Logger.error(_:)(v7, v5, v6);

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1DB423320()
{
  [*(v0 + 552) setPreventSampling_];
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 552);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  sub_1DB50BEB0();
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  __swift_project_boxed_opaque_existential_1((v0 + 208), v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB50EE90;
  *(v0 + 312) = MEMORY[0x1E69E6158];
  *(v0 + 288) = 0xD000000000000052;
  *(v0 + 296) = 0x80000001DB52DDA0;
  *(v7 + 48) = 0u;
  *(v7 + 32) = 0u;
  sub_1DB301D4C(v0 + 288, v7 + 32);
  *(v7 + 64) = 0;
  *(v6 + 32) = v7;
  Logger.info(_:)(v6, v4, v5);

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  v8 = [objc_opt_self() internalInstanceUsingBag_];
  swift_unknownObjectRelease();
  [v8 enqueueEvent_];

  swift_unknownObjectRelease();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DB423550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB423574, 0, 0);
}

uint64_t sub_1DB423574()
{
  v0[5] = &type metadata for SystemDateProvider;
  v0[6] = &protocol witness table for SystemDateProvider;
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1DB423624;
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];

  return sub_1DB41BE7C(v4, v5, v2, (v0 + 2));
}

uint64_t sub_1DB423624(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB4245AC, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v4 + 16));
    v7 = *(v6 + 8);

    return v7(a1 & 1);
  }
}

void sub_1DB4237A4()
{
  sub_1DB336FD4(319, &qword_1EE30C7D8, 0x1E696AF80);
  if (v0 <= 0x3F)
  {
    sub_1DB423868();
    if (v1 <= 0x3F)
    {
      sub_1DB377878();
      if (v2 <= 0x3F)
      {
        sub_1DB4238CC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DB423868()
{
  if (!qword_1EE30C768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC470E0, &unk_1DB50F160);
    v0 = sub_1DB50B120();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE30C768);
    }
  }
}

void sub_1DB4238CC()
{
  if (!qword_1EE30C968[0])
  {
    v0 = type metadata accessor for Promise();
    if (!v1)
    {
      atomic_store(v0, qword_1EE30C968);
    }
  }
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DB42393C(uint64_t *a1)
{
  v3 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DB421558(a1, v1 + v4, v6, v7);
}

unint64_t sub_1DB423A04()
{
  result = qword_1ECC45800;
  if (!qword_1ECC45800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45800);
  }

  return result;
}

uint64_t sub_1DB423A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB423AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1DB423B28(uint64_t a1, void *a2, void *a3)
{
  v7 = *(sub_1DB509CA0() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  sub_1DB420180(a1, a2, a3, v8, v9);
}

uint64_t sub_1DB423BB4(uint64_t a1)
{
  v3 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DB421138(a1, v1 + v4, v6, v7);
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for URLJetPackAssetFetcher();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  if (*(v0 + v3 + 8))
  {
    v6 = *(v5 + 16);
  }

  v7 = *(v1 + 24);
  v8 = sub_1DB509CA0();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v5 + *(v1 + 28));

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v2 | 7);
}

uint64_t sub_1DB423E08(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1DB4217B4(a1, v3 + v8, *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), a2, a3);
}

uint64_t sub_1DB423EBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DB423F1C(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + v8);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = (v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = *v14;
  v15 = v14[1];
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1DB30C7A0;

  return sub_1DB4221E4(a1, v12, v13, v1 + v5, v9, v10, v11, v16);
}

uint64_t sub_1DB42408C(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + v8);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = (v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = *v14;
  v15 = v14[1];
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1DB306AF4;

  return sub_1DB4221E4(a1, v12, v13, v1 + v5, v9, v10, v11, v16);
}

uint64_t sub_1DB42420C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DB4242A8()
{
  result = qword_1EE30DBE8;
  if (!qword_1EE30DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DBE8);
  }

  return result;
}

uint64_t objectdestroy_28Tm()
{
  v1 = type metadata accessor for URLJetPackAssetFetcher();
  v16 = *(*(v1 - 8) + 80);
  v2 = (v16 + 32) & ~v16;
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  if (*(v0 + v2 + 8))
  {
    v8 = *(v7 + 16);
  }

  v9 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 24);
  v11 = sub_1DB509CA0();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v13 = *(v7 + *(v1 + 28));

  v14 = *(v0 + v9 + 8);
  if (v14 >> 60 != 15)
  {
    sub_1DB30C158(*(v0 + v9), v14);
  }

  return MEMORY[0x1EEE6BDD0](v0, v9 + 16, v16 | 7);
}

uint64_t get_enum_tag_for_layout_string_7JetCore27URLJetPackAssetFetcherErrorO(uint64_t a1)
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

uint64_t sub_1DB4244F0(uint64_t a1, unsigned int a2)
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

uint64_t sub_1DB424538(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DB42457C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1DB4245B8()
{
  result = sub_1DB50A620();
  qword_1ECC67970 = result;
  return result;
}

uint64_t sub_1DB4245F0()
{
  result = sub_1DB50A620();
  qword_1ECC67978 = result;
  return result;
}

uint64_t SilverBulletJetPackAssetFetcher.init(bag:urlSessionConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a3 + *(type metadata accessor for SilverBulletJetPackAssetFetcher() + 20);
  v7 = type metadata accessor for URLJetPackAssetFetcher();
  v8 = *(v7 + 24);
  v9 = sub_1DB509CA0();
  (*(*(v9 - 8) + 56))(&v6[v8], 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v10 + 16) = v11;
  *(v10 + 24) = a1;
  *(v10 + 32) = 1;
  *&v6[*(v7 + 28)] = v10;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = a2;
  *a3 = a1;

  return swift_unknownObjectRetain();
}

uint64_t SilverBulletJetPackAssetFetcher.init(bag:urlAssetFetcher:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for SilverBulletJetPackAssetFetcher() + 20);

  return sub_1DB4247DC(a2, v4);
}

uint64_t type metadata accessor for SilverBulletJetPackAssetFetcher()
{
  result = qword_1ECC45818;
  if (!qword_1ECC45818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB4247DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLJetPackAssetFetcher();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SilverBulletJetPackAssetFetcher._fetch(_:candidate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = v3;
  *(v4 + 96) = a1;
  v6 = type metadata accessor for URLJetPackAssetRequest();
  *(v4 + 120) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  v8 = sub_1DB509CA0();
  *(v4 + 136) = v8;
  v9 = *(v8 - 8);
  *(v4 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  *(v4 + 152) = v11;
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  *(v4 + 56) = *a2;
  *(v4 + 89) = v14;
  *(v4 + 72) = v12;
  *(v4 + 80) = v13;
  *(v4 + 88) = v14;
  v15 = swift_task_alloc();
  *(v4 + 160) = v15;
  *v15 = v4;
  v15[1] = sub_1DB42499C;

  return sub_1DB424EA4(v11, (v4 + 56));
}

uint64_t sub_1DB42499C()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1DB424E30;
  }

  else
  {
    v3 = sub_1DB424AB0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB424AB0()
{
  v1 = *(v0 + 89);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  (*(*(v0 + 144) + 16))(v2, *(v0 + 152), *(v0 + 136));
  *(v2 + *(v4 + 20)) = v1;
  v5 = (v2 + *(v4 + 24));
  v6 = type metadata accessor for SilverBulletJetPackAssetFetcher();
  *v5 = 0;
  v5[1] = 0;
  v7 = *(v6 + 20);
  *(v0 + 40) = &type metadata for SystemDateProvider;
  *(v0 + 48) = &protocol witness table for SystemDateProvider;
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_1DB424BB0;
  v9 = *(v0 + 128);
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);

  return sub_1DB41BE7C(v10, v9, v11, v0 + 16);
}

uint64_t sub_1DB424BB0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v7 = sub_1DB424D84;
  }

  else
  {
    *(v4 + 90) = a1 & 1;
    __swift_destroy_boxed_opaque_existential_0((v4 + 16));
    v7 = sub_1DB424CE4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DB424CE4()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  sub_1DB41531C(*(v0 + 128));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);
  v5 = *(v0 + 90);

  return v4(v5);
}

uint64_t sub_1DB424D84()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_1DB41531C(v4);
  (*(v2 + 8))(v1, v3);
  v5 = v0[23];
  v6 = v0[19];
  v7 = v0[16];

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_1DB424E30()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[16];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_1DB424EA4(uint64_t a1, uint64_t *a2)
{
  *(v3 + 216) = a1;
  *(v3 + 224) = v2;
  v5 = sub_1DB509B70();
  *(v3 + 232) = v5;
  v6 = *(v5 - 8);
  *(v3 + 240) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0) - 8) + 64) + 15;
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  v9 = sub_1DB509CA0();
  *(v3 + 272) = v9;
  v10 = *(v9 - 8);
  *(v3 + 280) = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *a2;
  *(v3 + 288) = v12;
  *(v3 + 296) = v13;
  *(v3 + 304) = *(a2 + 1);
  *(v3 + 320) = a2[3];

  return MEMORY[0x1EEE6DFA0](sub_1DB42501C, 0, 0);
}

uint64_t sub_1DB42501C()
{
  v1 = **(v0 + 224);
  if (qword_1ECC42120 != -1)
  {
    v4 = **(v0 + 224);
    swift_once();
    v1 = v4;
  }

  v2 = [v1 URLForKey_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45828, &unk_1DB522590);
  inited = swift_initStackObject();
  inited[2] = v2;
  inited[3] = sub_1DB3C8D2C;
  inited[4] = 0;
  *(v0 + 328) = sub_1DB4DC988();

  return MEMORY[0x1EEE6DFA0](sub_1DB425124, 0, 0);
}

uint64_t sub_1DB425124()
{
  v1 = v0 + 2;
  v2 = v0[41];
  v3 = v0[32];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1DB4251F0;
  v0[10] = swift_continuation_init();
  v4 = (v0 + 10);
  *(v4 + 72) = 1;
  sub_1DB30A498(v4);
  sub_1DB30623C(v4, &unk_1ECC42B30, &qword_1DB50F1E0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB4251F0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 336) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB4254D4;
  }

  else
  {
    v5 = v1[41];
    v6 = v1[32];
    v7 = v1[33];

    sub_1DB34BBCC(v6, v7);
    v4 = sub_1DB425324;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB425324()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1DB30623C(v3, &unk_1ECC42B20, &unk_1DB50F6A0);
    sub_1DB42610C();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    v5 = v0[36];
    v7 = v0[32];
    v6 = v0[33];
    v8 = v0[31];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v12 = v0[37];
    v11 = v0[38];
    (*(v2 + 32))(v0[36], v3, v1);
    v0[25] = v12;
    v0[26] = v11;

    v13 = swift_task_alloc();
    v0[43] = v13;
    *v13 = v0;
    v13[1] = sub_1DB425568;
    v14 = v0[28];

    return sub_1DB425934(v0 + 25);
  }
}

uint64_t sub_1DB4254D4()
{
  v1 = v0[41];

  v2 = v0[42];
  v3 = v0[36];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[31];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DB425568(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 344);
  v8 = *v3;
  *(*v3 + 352) = v2;

  if (v2)
  {
    v9 = v6[26];

    v10 = sub_1DB425838;
  }

  else
  {
    v6[45] = a2;
    v6[46] = a1;
    v11 = v6[26];

    v10 = sub_1DB4256AC;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1DB4256AC()
{
  v1 = v0[45];
  v2 = v0[39];
  v3 = v0[40];
  v5 = v0[35];
  v4 = v0[36];
  v14 = v0[34];
  v15 = v0[33];
  v6 = v0[31];
  v16 = v0[32];
  v8 = v0[29];
  v7 = v0[30];
  v12 = v0[46];
  v13 = v0[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB50F8D0;
  *(v9 + 32) = v12;
  *(v9 + 40) = v1;
  *(v9 + 48) = v2;
  *(v9 + 56) = v3;
  (*(v7 + 104))(v6, *MEMORY[0x1E6968F70], v8);
  sub_1DB301E30();

  sub_1DB509C70();

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v4, v14);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DB425838()
{
  (*(v0[35] + 8))(v0[36], v0[34]);
  v1 = v0[44];
  v2 = v0[36];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];

  v6 = v0[1];

  return v6();
}

unint64_t sub_1DB4258E0()
{
  result = qword_1ECC45810;
  if (!qword_1ECC45810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45810);
  }

  return result;
}

uint64_t sub_1DB425934(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[38] = v1;
  v2[39] = v3;
  v2[40] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1DB42595C, 0, 0);
}

uint64_t sub_1DB42595C()
{
  v1 = **(v0 + 304);
  if (qword_1ECC42118 != -1)
  {
    v4 = **(v0 + 304);
    swift_once();
    v1 = v4;
  }

  v2 = [v1 dictionaryForKey_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46780, &qword_1DB5142C0);
  inited = swift_initStackObject();
  inited[2] = v2;
  inited[3] = sub_1DB3C8F68;
  inited[4] = 0;
  *(v0 + 328) = sub_1DB4DC7EC();

  return MEMORY[0x1EEE6DFA0](sub_1DB425A64, 0, 0);
}

uint64_t sub_1DB425A64()
{
  v1 = v0 + 2;
  v2 = v0[41];
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_1DB425B30;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1DB308440(v3);
  sub_1DB30623C(v3, &qword_1ECC42840, &qword_1DB5142D0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB425B30()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 336) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB425E4C;
  }

  else
  {
    v5 = v1[41];

    v1[43] = v1[36];
    v4 = sub_1DB425C5C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB425C5C()
{
  v1 = *(v0 + 344);
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = *(v0 + 320);
  *(v0 + 272) = *(v0 + 312);
  *(v0 + 280) = v2;

  sub_1DB50B2B0();
  if (!*(v1 + 16) || (v3 = sub_1DB30EDA8(v0 + 200), (v4 & 1) == 0))
  {

    sub_1DB314BE8(v0 + 200);
LABEL_12:
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    goto LABEL_13;
  }

  sub_1DB300B14(*(v1 + 56) + 32 * v3, v0 + 240);
  sub_1DB314BE8(v0 + 200);

  if (!*(v0 + 264))
  {
LABEL_13:
    sub_1DB30623C(v0 + 240, &qword_1ECC426B0, &qword_1DB50EEB0);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44388, &unk_1DB51BD70);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 296);
    if (*(v5 + 16))
    {
      v6 = sub_1DB306160(0x65756C6176, 0xE500000000000000);
      if (v7)
      {
        v8 = (*(v5 + 56) + 16 * v6);
        v9 = *v8;
        v10 = v8[1];

        v11 = *(v0 + 8);

        return v11(v9, v10);
      }
    }
  }

LABEL_14:
  sub_1DB42610C();
  swift_allocError();
  *v13 = 1;
  swift_willThrow();
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1DB425E4C()
{
  v1 = v0[41];

  v2 = v0[42];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB425EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DB425F60;

  return SilverBulletJetPackAssetFetcher._fetch(_:candidate:)(a1, a2, a3);
}

uint64_t sub_1DB425F60(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_1DB426090()
{
  result = type metadata accessor for URLJetPackAssetFetcher();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DB42610C()
{
  result = qword_1ECC45830;
  if (!qword_1ECC45830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45830);
  }

  return result;
}

unint64_t sub_1DB426174()
{
  result = qword_1ECC45838;
  if (!qword_1ECC45838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45838);
  }

  return result;
}

void sub_1DB4261C8(void (*a1)(uint64_t))
{
  v3 = v1;
  v5 = *(v1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_keepAlive);
  v6 = qword_1EE30E190;

  if (v6 != -1)
  {
    v7 = swift_once();
  }

  if (byte_1EE30E198)
  {
    sub_1DB426738(v3, a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    os_unfair_lock_lock((v5 + 40));
    sub_1DB348178((v5 + 16));
    if (v2)
    {
      os_unfair_lock_unlock((v5 + 40));
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v5 + 40));
      sub_1DB426738(v3, a1);
      os_unfair_lock_lock((v5 + 40));
      v8 = *(v5 + 16);
      if (v8)
      {
        v9 = *(v5 + 24);
        v16 = *(v5 + 16);
        v10 = v8;
        v11 = v9;

        v12 = ProcessAssertion.invalidate()();

        if (v12)
        {
          v13 = *(v5 + 16);
          v14 = *(v5 + 24);
          v15 = *(v5 + 32);
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
          *(v5 + 32) = 0;
          sub_1DB3481B0(v13, v14);
        }
      }

      os_unfair_lock_unlock((v5 + 40));
    }
  }
}

void sub_1DB426398(void (*a1)(uint64_t))
{
  v3 = v1;
  v5 = *(v1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_keepAlive);
  v6 = qword_1EE30E190;

  if (v6 != -1)
  {
    v7 = swift_once();
  }

  if (byte_1EE30E198)
  {
    sub_1DB42684C(v3, a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    os_unfair_lock_lock((v5 + 40));
    sub_1DB349364((v5 + 16));
    if (v2)
    {
      os_unfair_lock_unlock((v5 + 40));
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v5 + 40));
      sub_1DB42684C(v3, a1);
      os_unfair_lock_lock((v5 + 40));
      v8 = *(v5 + 16);
      if (v8)
      {
        v9 = *(v5 + 24);
        v16 = *(v5 + 16);
        v10 = v8;
        v11 = v9;

        v12 = ProcessAssertion.invalidate()();

        if (v12)
        {
          v13 = *(v5 + 16);
          v14 = *(v5 + 24);
          v15 = *(v5 + 32);
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
          *(v5 + 32) = 0;
          sub_1DB3481B0(v13, v14);
        }
      }

      os_unfair_lock_unlock((v5 + 40));
    }
  }
}

void sub_1DB426568(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  v3 = v1;
  v5 = *(v1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_keepAlive);
  v6 = qword_1EE30E190;

  if (v6 != -1)
  {
    v7 = swift_once();
  }

  if (byte_1EE30E198)
  {
    sub_1DB426960(v3, a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    os_unfair_lock_lock((v5 + 40));
    sub_1DB349364((v5 + 16));
    if (v2)
    {
      os_unfair_lock_unlock((v5 + 40));
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v5 + 40));
      sub_1DB426960(v3, a1);
      os_unfair_lock_lock((v5 + 40));
      v8 = *(v5 + 16);
      if (v8)
      {
        v9 = *(v5 + 24);
        v16 = *(v5 + 16);
        v10 = v8;
        v11 = v9;

        v12 = ProcessAssertion.invalidate()();

        if (v12)
        {
          v13 = *(v5 + 16);
          v14 = *(v5 + 24);
          v15 = *(v5 + 32);
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
          *(v5 + 32) = 0;
          sub_1DB3481B0(v13, v14);
        }
      }

      os_unfair_lock_unlock((v5 + 40));
    }
  }
}

void sub_1DB426738(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v4 + 24));
  sub_1DB348194((v4 + 16), &v5);
  os_unfair_lock_unlock((v4 + 24));
  if (!v2)
  {
    a2(v5);
    os_unfair_lock_lock((v4 + 24));
    sub_1DB349330((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }
}

void sub_1DB42684C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v4 + 24));
  sub_1DB349348((v4 + 16), &v5);
  os_unfair_lock_unlock((v4 + 24));
  if (!v2)
  {
    a2(v5);
    os_unfair_lock_lock((v4 + 24));
    sub_1DB349330((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }
}

void sub_1DB426960(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  v4 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v4 + 24));
  sub_1DB349348((v4 + 16), &v5);
  os_unfair_lock_unlock((v4 + 24));
  if (!v2)
  {
    a2(&v6, v5);
    os_unfair_lock_lock((v4 + 24));
    sub_1DB349330((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }
}

uint64_t AssetPushSubscriptionSQLiteStore.init(database:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[4] = &type metadata for SystemDateProvider;
  a2[5] = &protocol witness table for SystemDateProvider;
  return result;
}

void sub_1DB426A9C()
{
  qword_1ECC45840 = 0xD0000000000001FALL;
  *algn_1ECC45848 = 0x80000001DB52E930;
  qword_1ECC45850 = MEMORY[0x1E69E7CC0];
}

void AssetPushSubscriptionSQLiteStore.create(record:)(__int128 *a1)
{
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = *(a1 + 144);
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v3 = *a1;
  v4 = a1[1];
  v2 = *v1;
  sub_1DB426398(sub_1DB4271B4);
}

uint64_t sub_1DB426B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v55 = 0;
  v56 = 0xE000000000000000;
  MEMORY[0x1E1285C10](102);
  MEMORY[0x1E1285C70](0xD000000000000053, 0x80000001DB52E7B0);
  v63 = *(a2 + 8);
  if (*(&v63 + 1))
  {
    v7 = &off_1F5700098;
    v8 = MEMORY[0x1E69E6158];
    v9 = v63;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v57 = 0;
  }

  v55 = v9;
  v56 = *(&v63 + 1);
  v58 = v8;
  v59 = v7;
  sub_1DB30C4B8(&v55, &v52, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v63, v51, &unk_1ECC46C00, &qword_1DB516350);
  v10 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB302D80((v11 > 1), v12 + 1, 1, v10);
  }

  v10[2] = v12 + 1;
  v13 = &v10[5 * v12];
  v14 = v52;
  v15 = v53;
  v13[8] = v54;
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v55, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](8236, 0xE200000000000000);
  v62 = *(a2 + 24);
  if (*(&v62 + 1))
  {
    v16 = &off_1F5700098;
    v17 = MEMORY[0x1E69E6158];
    v18 = v62;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v57 = 0;
  }

  v55 = v18;
  v56 = *(&v62 + 1);
  v58 = v17;
  v59 = v16;
  sub_1DB30C4B8(&v55, &v52, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v62, v51, &unk_1ECC46C00, &qword_1DB516350);
  v20 = v10[2];
  v19 = v10[3];
  if (v20 >= v19 >> 1)
  {
    v10 = sub_1DB302D80((v19 > 1), v20 + 1, 1, v10);
  }

  v10[2] = v20 + 1;
  v21 = &v10[5 * v20];
  v22 = v52;
  v23 = v53;
  v21[8] = v54;
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v55, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](8236, 0xE200000000000000);
  v61 = *(a2 + 40);
  if (*(&v61 + 1))
  {
    v24 = &off_1F5700098;
    v25 = MEMORY[0x1E69E6158];
    v26 = v61;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v57 = 0;
  }

  v55 = v26;
  v56 = *(&v61 + 1);
  v58 = v25;
  v59 = v24;
  sub_1DB30C4B8(&v55, &v52, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v61, v51, &unk_1ECC46C00, &qword_1DB516350);
  v28 = v10[2];
  v27 = v10[3];
  if (v28 >= v27 >> 1)
  {
    v10 = sub_1DB302D80((v27 > 1), v28 + 1, 1, v10);
  }

  v10[2] = v28 + 1;
  v29 = &v10[5 * v28];
  v30 = v52;
  v31 = v53;
  v29[8] = v54;
  *(v29 + 2) = v30;
  *(v29 + 3) = v31;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v55, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](8236, 0xE200000000000000);
  v60 = *(a2 + 56);
  if (*(&v60 + 1))
  {
    v32 = &off_1F5700098;
    v33 = MEMORY[0x1E69E6158];
    v34 = v60;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    v32 = 0;
    v57 = 0;
  }

  v55 = v34;
  v56 = *(&v60 + 1);
  v58 = v33;
  v59 = v32;
  sub_1DB30C4B8(&v55, &v52, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v60, v51, &unk_1ECC46C00, &qword_1DB516350);
  v36 = v10[2];
  v35 = v10[3];
  if (v36 >= v35 >> 1)
  {
    v10 = sub_1DB302D80((v35 > 1), v36 + 1, 1, v10);
  }

  v10[2] = v36 + 1;
  v37 = &v10[5 * v36];
  v38 = v52;
  v39 = v53;
  v37[8] = v54;
  *(v37 + 2) = v38;
  *(v37 + 3) = v39;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v55, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0x4E52555445522029, 0xED00002A20474E49);
  v55 = 0;

  sub_1DB4ABE94(0, 0xE000000000000000, a1, &v55, &v52);
  if (v3)
  {

LABEL_31:

    v50 = *MEMORY[0x1E69E9840];
    return result;
  }

  v41 = v55;
  if (v55)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v41;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v10);

    v44 = *(inited + 16);
    v45 = sqlite3_step(v44);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (sub_1DB331244(v45, qword_1EE312D90) && (v46 = sub_1DB3AD5F0(&unk_1F56F0658), v47 = sub_1DB331244(v45, v46), , v47))
    {
      sub_1DB4271D0(inited, a3);
      swift_setDeallocating();
      v43 = *(inited + 16);
    }

    else
    {
      sub_1DB388320();
      swift_allocError();
      *v48 = v45;
      *(v48 + 8) = 0;
      *(v48 + 16) = 0;
      swift_willThrow();
      swift_setDeallocating();
      v43 = v44;
    }

    sqlite3_finalize(v43);
    v49 = *(inited + 24);
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

sqlite3_int64 sub_1DB4271D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DB4AE7B8();
  if (!*(v4 + 16))
  {
    v67 = 0;
    v68 = 0;
    v72 = 0;
    v69 = 0;
    v70 = 0;
    v65 = 0;
    v66 = 0;
    v71 = 1;
    goto LABEL_22;
  }

  v5 = sub_1DB306160(25705, 0xE200000000000000);
  if (v6)
  {
    v7 = *(*(v4 + 56) + 4 * v5);
    if (sqlite3_column_type(*(a1 + 16), v7) != 5)
    {
      v72 = sqlite3_column_int(*(a1 + 16), v7);
      v71 = 0;
      if (*(v4 + 16))
      {
        goto LABEL_5;
      }

LABEL_20:
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      goto LABEL_21;
    }
  }

  v72 = 0;
  v71 = 1;
  if (!*(v4 + 16))
  {
    goto LABEL_20;
  }

LABEL_5:
  v8 = sub_1DB306160(0x72755F7465737361, 0xE90000000000006CLL);
  if ((v9 & 1) != 0 && sqlite3_column_text(*(a1 + 16), *(*(v4 + 56) + 4 * v8)))
  {
    v10 = sub_1DB50A7A0();
    v69 = v11;
    v70 = v10;
    if (!*(v4 + 16))
    {
LABEL_8:
      v67 = 0;
      v68 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v69 = 0;
    v70 = 0;
    if (!*(v4 + 16))
    {
      goto LABEL_8;
    }
  }

  v12 = sub_1DB306160(0x5F6C656E6E616863, 0xEA00000000006469);
  if ((v13 & 1) != 0 && sqlite3_column_text(*(a1 + 16), *(*(v4 + 56) + 4 * v12)))
  {
    v67 = sub_1DB50A7A0();
    v68 = v14;
    if (!*(v4 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v67 = 0;
    v68 = 0;
    if (!*(v4 + 16))
    {
      goto LABEL_21;
    }
  }

  v15 = sub_1DB306160(0x695F656C646E7562, 0xE900000000000064);
  if ((v16 & 1) != 0 && sqlite3_column_text(*(a1 + 16), *(*(v4 + 56) + 4 * v15)))
  {
    v17 = sub_1DB50A7A0();
    v65 = v18;
    v66 = v17;
    goto LABEL_22;
  }

LABEL_21:
  v65 = 0;
  v66 = 0;
LABEL_22:
  if (!*(v4 + 16))
  {
    v62 = 0;
    v63 = 0;
    v64 = 0;
    goto LABEL_35;
  }

  v19 = sub_1DB306160(0x64695F6567617375, 0xE800000000000000);
  if ((v20 & 1) != 0 && sqlite3_column_text(*(a1 + 16), *(*(v4 + 56) + 4 * v19)))
  {
    v21 = sub_1DB50A7A0();
    v63 = v22;
    v64 = v21;
    if (!*(v4 + 16))
    {
LABEL_26:
      v62 = 0;
LABEL_35:
      v26 = 0;
      v60 = 0;
      v61 = 1;
      v27 = 1;
      goto LABEL_36;
    }
  }

  else
  {
    v63 = 0;
    v64 = 0;
    if (!*(v4 + 16))
    {
      goto LABEL_26;
    }
  }

  v23 = sub_1DB306160(0x656C756465686373, 0xED00006D6F72665FLL);
  if ((v24 & 1) == 0 || (v25 = *(*(v4 + 56) + 4 * v23), sqlite3_column_type(*(a1 + 16), v25) == 5))
  {
    v26 = 0;
    v27 = 1;
    if (*(v4 + 16))
    {
      goto LABEL_31;
    }

LABEL_56:
    v62 = 0;
    v60 = 0;
    v61 = 1;
LABEL_36:
    v59 = 1;
    if (*(v4 + 16))
    {
      goto LABEL_37;
    }

LABEL_66:
    v46 = 0;
    v37 = 0;
    v42 = 0;
    v47 = 1;
    v38 = 1;
LABEL_73:

    result = 0;
    v57 = 1;
    goto LABEL_74;
  }

  v26 = sqlite3_column_int64(*(a1 + 16), v25);
  v27 = 0;
  if (!*(v4 + 16))
  {
    goto LABEL_56;
  }

LABEL_31:
  v28 = sub_1DB306160(0x656C756465686373, 0xEB000000006F745FLL);
  if (v29)
  {
    v30 = v27;
    v31 = v26;
    v32 = *(*(v4 + 56) + 4 * v28);
    if (sqlite3_column_type(*(a1 + 16), v32) == 5)
    {
      v62 = 0;
      v61 = 1;
    }

    else
    {
      v62 = sqlite3_column_int64(*(a1 + 16), v32);
      v61 = 0;
    }

    v26 = v31;
    v27 = v30;
    if (!*(v4 + 16))
    {
      goto LABEL_65;
    }
  }

  else
  {
    v62 = 0;
    v61 = 1;
    if (!*(v4 + 16))
    {
      goto LABEL_65;
    }
  }

  v48 = sub_1DB306160(0x797469726F697270, 0xE800000000000000);
  if (v49)
  {
    v50 = v27;
    v51 = v26;
    v52 = *(*(v4 + 56) + 4 * v48);
    if (sqlite3_column_type(*(a1 + 16), v52) == 5)
    {
      v59 = 1;
      v60 = 0;
    }

    else
    {
      v59 = 0;
      v60 = sqlite3_column_int(*(a1 + 16), v52);
    }

    v26 = v51;
    v27 = v50;
    if (!*(v4 + 16))
    {
      goto LABEL_66;
    }

    goto LABEL_37;
  }

LABEL_65:
  v59 = 1;
  v60 = 0;
  if (!*(v4 + 16))
  {
    goto LABEL_66;
  }

LABEL_37:
  v58 = v27;
  v33 = sub_1DB306160(0xD000000000000010, 0x80000001DB52E270);
  v34 = v26;
  if (v35)
  {
    v36 = *(*(v4 + 56) + 4 * v33);
    if (sqlite3_column_type(*(a1 + 16), v36) == 5)
    {
      v37 = 0;
      v38 = 1;
    }

    else
    {
      v37 = sqlite3_column_int64(*(a1 + 16), v36);
      v38 = 0;
    }

    v26 = v34;
    if (!*(v4 + 16))
    {
      goto LABEL_50;
    }
  }

  else
  {
    v37 = 0;
    v38 = 1;
    if (!*(v4 + 16))
    {
LABEL_50:
      v46 = 0;
      v42 = 0;
      v47 = 1;
LABEL_72:
      v27 = v58;
      goto LABEL_73;
    }
  }

  v39 = sub_1DB306160(0x676E69646E6570, 0xE700000000000000);
  if (v40)
  {
    v41 = *(*(v4 + 56) + 4 * v39);
    v42 = sqlite3_column_type(*(a1 + 16), v41) != 5 && sqlite3_column_int(*(a1 + 16), v41) == 1;
    v26 = v34;
    if (!*(v4 + 16))
    {
      goto LABEL_59;
    }
  }

  else
  {
    v42 = 0;
    if (!*(v4 + 16))
    {
LABEL_59:
      v46 = 0;
      v47 = 1;
      goto LABEL_72;
    }
  }

  v43 = sub_1DB306160(0xD000000000000011, 0x80000001DB52E290);
  if (v44)
  {
    v45 = *(*(v4 + 56) + 4 * v43);
    if (sqlite3_column_type(*(a1 + 16), v45) == 5)
    {
      v46 = 0;
      v47 = 1;
    }

    else
    {
      v46 = sqlite3_column_int(*(a1 + 16), v45);
      v47 = 0;
    }

    v26 = v34;
    if (!*(v4 + 16))
    {
      goto LABEL_72;
    }
  }

  else
  {
    v46 = 0;
    v47 = 1;
    if (!*(v4 + 16))
    {
      goto LABEL_72;
    }
  }

  v53 = sub_1DB306160(0x6465696669646F6DLL, 0xEB0000000074615FLL);
  if (v54)
  {
    v55 = *(*(v4 + 56) + 4 * v53);

    if (sqlite3_column_type(*(a1 + 16), v55) == 5)
    {
      result = 0;
      v57 = 1;
    }

    else
    {
      result = sqlite3_column_int64(*(a1 + 16), v55);
      v57 = 0;
    }

    v26 = v34;
  }

  else
  {

    result = 0;
    v57 = 1;
  }

  v27 = v58;
LABEL_74:
  *a2 = v72;
  *(a2 + 4) = v71;
  *(a2 + 8) = v70;
  *(a2 + 16) = v69;
  *(a2 + 24) = v67;
  *(a2 + 32) = v68;
  *(a2 + 40) = v66;
  *(a2 + 48) = v65;
  *(a2 + 56) = v64;
  *(a2 + 64) = v63;
  *(a2 + 72) = v26;
  *(a2 + 80) = v27;
  *(a2 + 88) = v62;
  *(a2 + 96) = v61;
  *(a2 + 100) = v60;
  *(a2 + 104) = v59;
  *(a2 + 112) = v37;
  *(a2 + 120) = v38;
  *(a2 + 121) = v42;
  *(a2 + 124) = v46;
  *(a2 + 128) = v47;
  *(a2 + 136) = result;
  *(a2 + 144) = v57;
  return result;
}

uint64_t sub_1DB427878(uint64_t a1, unsigned int a2)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v23[1] = 0xE000000000000000;
  MEMORY[0x1E1285C10](41);
  MEMORY[0x1E1285C70](0xD000000000000029, 0x80000001DB52E780);
  v23[3] = MEMORY[0x1E69E72F0];
  v23[4] = &off_1F57000B8;
  v23[0] = a2;
  sub_1DB30C4B8(v23, v21, &qword_1ECC42798, &qword_1DB50F210);
  v5 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1DB302D80((v6 > 1), v7 + 1, 1, v5);
  }

  v5[2] = v7 + 1;
  v8 = &v5[5 * v7];
  v9 = v21[0];
  v10 = v21[1];
  v8[8] = v22;
  *(v8 + 2) = v9;
  *(v8 + 3) = v10;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(v23, &qword_1ECC42798, &qword_1DB50F210);
  v23[0] = 0;

  sub_1DB4ABE94(0, 0xE000000000000000, a1, v23, v21);

  if (v2)
  {
    goto LABEL_11;
  }

  v12 = v23[0];
  if (v23[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v12;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v5);

    v14 = *(inited + 16);
    v15 = sqlite3_step(v14);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (!sub_1DB331244(v15, qword_1EE312D90) || (v16 = sub_1DB3AD5F0(&unk_1F56F04D0), v17 = sub_1DB331244(v15, v16), , !v17))
    {
      sub_1DB388320();
      swift_allocError();
      *v18 = v15;
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      swift_willThrow();
    }

    swift_setDeallocating();
    sqlite3_finalize(v14);
    v19 = *(inited + 24);
LABEL_11:

    v20 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB427B98@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v27[0] = 0;

  result = sub_1DB4ABE94(0xD000000000000039, 0x80000001DB52E740, a1, v27, v25);
  if (v2)
  {
LABEL_14:
    v23 = *MEMORY[0x1E69E9840];
    return result;
  }

  v6 = v27[0];
  if (v27[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v6;
    *(inited + 24) = 0;
    sub_1DB4B03C0(MEMORY[0x1E69E7CC0]);
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = *(inited + 16);
      v10 = sqlite3_step(v9);
      if (qword_1EE30C820 != -1)
      {
        swift_once();
      }

      if (!sub_1DB331244(v10, qword_1EE312D90))
      {
        sub_1DB388320();
        swift_allocError();
        *v21 = v10;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        swift_willThrow();
        swift_setDeallocating();
        sqlite3_finalize(v9);
        v22 = *(inited + 24);

        goto LABEL_14;
      }

      if (v10 != 100)
      {
        break;
      }

      sub_1DB4271D0(inited, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1DB303BE0(0, *(v8 + 2) + 1, 1, v8);
      }

      v12 = *(v8 + 2);
      v11 = *(v8 + 3);
      if (v12 >= v11 >> 1)
      {
        v8 = sub_1DB303BE0((v11 > 1), v12 + 1, 1, v8);
      }

      *(v8 + 2) = v12 + 1;
      v13 = &v8[152 * v12];
      v14 = v25[1];
      *(v13 + 2) = v25[0];
      *(v13 + 3) = v14;
      v15 = v25[2];
      v16 = v25[3];
      v17 = v25[5];
      *(v13 + 6) = v25[4];
      *(v13 + 7) = v17;
      *(v13 + 4) = v15;
      *(v13 + 5) = v16;
      v18 = v25[6];
      v19 = v25[7];
      v20 = v25[8];
      v13[176] = v26;
      *(v13 + 9) = v19;
      *(v13 + 10) = v20;
      *(v13 + 8) = v18;
    }

    swift_setDeallocating();
    sqlite3_finalize(v9);
    v24 = *(inited + 24);

    *a2 = v8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB427E80@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v27[0] = 0;

  result = sub_1DB4ABE94(0xD00000000000004BLL, 0x80000001DB52E6F0, a1, v27, v25);
  if (v2)
  {
LABEL_14:
    v23 = *MEMORY[0x1E69E9840];
    return result;
  }

  v6 = v27[0];
  if (v27[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v6;
    *(inited + 24) = 0;
    sub_1DB4B03C0(MEMORY[0x1E69E7CC0]);
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = *(inited + 16);
      v10 = sqlite3_step(v9);
      if (qword_1EE30C820 != -1)
      {
        swift_once();
      }

      if (!sub_1DB331244(v10, qword_1EE312D90))
      {
        sub_1DB388320();
        swift_allocError();
        *v21 = v10;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        swift_willThrow();
        swift_setDeallocating();
        sqlite3_finalize(v9);
        v22 = *(inited + 24);

        goto LABEL_14;
      }

      if (v10 != 100)
      {
        break;
      }

      sub_1DB4271D0(inited, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1DB303BE0(0, *(v8 + 2) + 1, 1, v8);
      }

      v12 = *(v8 + 2);
      v11 = *(v8 + 3);
      if (v12 >= v11 >> 1)
      {
        v8 = sub_1DB303BE0((v11 > 1), v12 + 1, 1, v8);
      }

      *(v8 + 2) = v12 + 1;
      v13 = &v8[152 * v12];
      v14 = v25[1];
      *(v13 + 2) = v25[0];
      *(v13 + 3) = v14;
      v15 = v25[2];
      v16 = v25[3];
      v17 = v25[5];
      *(v13 + 6) = v25[4];
      *(v13 + 7) = v17;
      *(v13 + 4) = v15;
      *(v13 + 5) = v16;
      v18 = v25[6];
      v19 = v25[7];
      v20 = v25[8];
      v13[176] = v26;
      *(v13 + 9) = v19;
      *(v13 + 10) = v20;
      *(v13 + 8) = v18;
    }

    swift_setDeallocating();
    sqlite3_finalize(v9);
    v24 = *(inited + 24);

    *a2 = v8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB428168@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v27[0] = 0;

  result = sub_1DB4ABE94(0xD000000000000065, 0x80000001DB52E680, a1, v27, v25);
  if (v2)
  {
LABEL_14:
    v23 = *MEMORY[0x1E69E9840];
    return result;
  }

  v6 = v27[0];
  if (v27[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v6;
    *(inited + 24) = 0;
    sub_1DB4B03C0(MEMORY[0x1E69E7CC0]);
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = *(inited + 16);
      v10 = sqlite3_step(v9);
      if (qword_1EE30C820 != -1)
      {
        swift_once();
      }

      if (!sub_1DB331244(v10, qword_1EE312D90))
      {
        sub_1DB388320();
        swift_allocError();
        *v21 = v10;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        swift_willThrow();
        swift_setDeallocating();
        sqlite3_finalize(v9);
        v22 = *(inited + 24);

        goto LABEL_14;
      }

      if (v10 != 100)
      {
        break;
      }

      sub_1DB4271D0(inited, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1DB303BE0(0, *(v8 + 2) + 1, 1, v8);
      }

      v12 = *(v8 + 2);
      v11 = *(v8 + 3);
      if (v12 >= v11 >> 1)
      {
        v8 = sub_1DB303BE0((v11 > 1), v12 + 1, 1, v8);
      }

      *(v8 + 2) = v12 + 1;
      v13 = &v8[152 * v12];
      v14 = v25[1];
      *(v13 + 2) = v25[0];
      *(v13 + 3) = v14;
      v15 = v25[2];
      v16 = v25[3];
      v17 = v25[5];
      *(v13 + 6) = v25[4];
      *(v13 + 7) = v17;
      *(v13 + 4) = v15;
      *(v13 + 5) = v16;
      v18 = v25[6];
      v19 = v25[7];
      v20 = v25[8];
      v13[176] = v26;
      *(v13 + 9) = v19;
      *(v13 + 10) = v20;
      *(v13 + 8) = v18;
    }

    swift_setDeallocating();
    sqlite3_finalize(v9);
    v24 = *(inited + 24);

    *a2 = v8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1DB428450(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v51 = *MEMORY[0x1E69E9840];
  *(&v39 + 1) = 0xE000000000000000;
  MEMORY[0x1E1285C10](43);
  v49 = 0;
  v50 = 0xE000000000000000;
  MEMORY[0x1E1285C70](0xD00000000000002BLL, 0x80000001DB52E650);
  *(&v40 + 1) = MEMORY[0x1E69E72F0];
  *&v41 = &off_1F57000B8;
  *&v39 = a2;
  sub_1DB30C4B8(&v39, &v29, &qword_1ECC42798, &qword_1DB50F210);
  v8 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB302D80((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  v11 = &v8[5 * v10];
  v12 = v29;
  v13 = v30;
  v11[8] = v31;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v39, &qword_1ECC42798, &qword_1DB50F210);
  v15 = v49;
  v14 = v50;
  v49 = 0;

  sub_1DB4ABE94(v15, v14, a1, &v49, &v39);

  if (v4)
  {
    goto LABEL_11;
  }

  v16 = v49;
  if (v49)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v16;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v8);

    v18 = *(inited + 16);
    v19 = sqlite3_step(v18);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (sub_1DB331244(v19, qword_1EE312D90))
    {
      if (v19 == 100)
      {
        sub_1DB4271D0(inited, &v29);
        swift_setDeallocating();
        sqlite3_finalize(*(inited + 16));
        v20 = *(inited + 24);

        v45 = v35;
        v46 = v36;
        v47 = v37;
        v48 = v38;
        v41 = v31;
        v42 = v32;
        v43 = v33;
        v44 = v34;
        v39 = v29;
        v40 = v30;
        nullsub_8(&v39);
      }

      else
      {
        swift_setDeallocating();
        sqlite3_finalize(v18);
        v24 = *(inited + 24);

        sub_1DB42CFA8(&v39);
      }

      v25 = v46;
      *(a3 + 96) = v45;
      *(a3 + 112) = v25;
      *(a3 + 128) = v47;
      *(a3 + 144) = v48;
      v26 = v42;
      *(a3 + 32) = v41;
      *(a3 + 48) = v26;
      v27 = v44;
      *(a3 + 64) = v43;
      *(a3 + 80) = v27;
      v28 = v40;
      *a3 = v39;
      *(a3 + 16) = v28;
      goto LABEL_12;
    }

    sub_1DB388320();
    swift_allocError();
    *v21 = v19;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    swift_willThrow();
    swift_setDeallocating();
    sqlite3_finalize(v18);
    v22 = *(inited + 24);
LABEL_11:

LABEL_12:
    v23 = *MEMORY[0x1E69E9840];
    return;
  }

  __break(1u);
}

void sub_1DB428834(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E1285C10](92);
  v61 = 0;
  v62 = 0xE000000000000000;
  MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52E5F0);
  v11 = MEMORY[0x1E69E6158];
  *(&v52 + 1) = MEMORY[0x1E69E6158];
  *&v53 = &off_1F5700098;
  *&v51 = a2;
  *(&v51 + 1) = a3;
  sub_1DB30C4B8(&v51, &v41, &qword_1ECC42798, &qword_1DB50F210);

  v12 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1DB302D80((v13 > 1), v14 + 1, 1, v12);
  }

  v12[2] = v14 + 1;
  v15 = &v12[5 * v14];
  v16 = v41;
  v17 = v42;
  v15[8] = v43;
  *(v15 + 2) = v16;
  *(v15 + 3) = v17;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v51, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52E570);
  *(&v52 + 1) = v11;
  *&v53 = &off_1F5700098;
  *&v51 = a4;
  *(&v51 + 1) = a5;
  sub_1DB30C4B8(&v51, &v41, &qword_1ECC42798, &qword_1DB50F210);
  v18 = v12[2];
  v19 = v12[3];

  if (v18 >= v19 >> 1)
  {
    v12 = sub_1DB302D80((v19 > 1), v18 + 1, 1, v12);
  }

  v12[2] = v18 + 1;
  v20 = &v12[5 * v18];
  v21 = v41;
  v22 = v42;
  v20[8] = v43;
  *(v20 + 2) = v21;
  *(v20 + 3) = v22;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v51, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD00000000000001ALL, 0x80000001DB52E630);
  v24 = v61;
  v23 = v62;
  v61 = 0;

  sub_1DB4ABE94(v24, v23, a1, &v61, &v51);
  if (v40)
  {

    goto LABEL_15;
  }

  v25 = v61;
  if (v61)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v25;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v12);

    v27 = *(inited + 16);
    v28 = sqlite3_step(v27);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    v29 = qword_1EE312D90;
    if (sub_1DB331244(v28, qword_1EE312D90) && sub_1DB331244(v28, v29))
    {
      if (v28 == 100)
      {
        sub_1DB4271D0(inited, &v41);
        swift_setDeallocating();
        sqlite3_finalize(*(inited + 16));
        v30 = *(inited + 24);

        v57 = v47;
        v58 = v48;
        v59 = v49;
        v60 = v50;
        v53 = v43;
        v54 = v44;
        v55 = v45;
        v56 = v46;
        v51 = v41;
        v52 = v42;
        nullsub_8(&v51);
      }

      else
      {
        swift_setDeallocating();
        sqlite3_finalize(v27);
        v34 = *(inited + 24);

        sub_1DB42CFA8(&v51);
      }

      v35 = v58;
      *(a6 + 96) = v57;
      *(a6 + 112) = v35;
      *(a6 + 128) = v59;
      *(a6 + 144) = v60;
      v36 = v54;
      *(a6 + 32) = v53;
      *(a6 + 48) = v36;
      v37 = v56;
      *(a6 + 64) = v55;
      *(a6 + 80) = v37;
      v38 = v52;
      *a6 = v51;
      *(a6 + 16) = v38;
      goto LABEL_16;
    }

    sub_1DB388320();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    swift_willThrow();
    swift_setDeallocating();
    sqlite3_finalize(v27);
    v32 = *(inited + 24);
LABEL_15:

LABEL_16:
    v33 = *MEMORY[0x1E69E9840];
    return;
  }

  __break(1u);
}

uint64_t sub_1DB428D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  *&v37 = 0;
  *(&v37 + 1) = 0xE000000000000000;
  MEMORY[0x1E1285C10](63);
  v36 = v37;
  MEMORY[0x1E1285C70](0xD000000000000033, 0x80000001DB52E5B0);
  *(&v38 + 1) = MEMORY[0x1E69E6158];
  *&v39 = &off_1F5700098;
  *&v37 = a2;
  *(&v37 + 1) = a3;
  sub_1DB30C4B8(&v37, v47, &qword_1ECC42798, &qword_1DB50F210);

  v9 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1DB302D80((v10 > 1), v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  v12 = &v9[5 * v11];
  v13 = v47[0];
  v14 = v47[1];
  v12[8] = v48;
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v37, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0x4220524544524F20, 0xEC00000064692059);
  *&v47[0] = 0;

  sub_1DB4ABE94(v36, *(&v36 + 1), a1, v47, &v37);

  if (v4)
  {
LABEL_16:

LABEL_17:
    v33 = *MEMORY[0x1E69E9840];
    return result;
  }

  v16 = *&v47[0];
  if (*&v47[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v16;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v9);
    v35 = a4;

    v18 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v19 = *(inited + 16);
      v20 = sqlite3_step(v19);
      if (qword_1EE30C820 != -1)
      {
        swift_once();
      }

      if (!sub_1DB331244(v20, qword_1EE312D90))
      {
        sub_1DB388320();
        swift_allocError();
        *v31 = v20;
        *(v31 + 8) = 0;
        *(v31 + 16) = 0;
        swift_willThrow();
        swift_setDeallocating();
        sqlite3_finalize(v19);
        v32 = *(inited + 24);

        goto LABEL_16;
      }

      if (v20 != 100)
      {
        break;
      }

      sub_1DB4271D0(inited, &v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1DB303BE0(0, *(v18 + 2) + 1, 1, v18);
      }

      v22 = *(v18 + 2);
      v21 = *(v18 + 3);
      if (v22 >= v21 >> 1)
      {
        v18 = sub_1DB303BE0((v21 > 1), v22 + 1, 1, v18);
      }

      *(v18 + 2) = v22 + 1;
      v23 = &v18[152 * v22];
      v24 = v38;
      *(v23 + 2) = v37;
      *(v23 + 3) = v24;
      v25 = v39;
      v26 = v40;
      v27 = v42;
      *(v23 + 6) = v41;
      *(v23 + 7) = v27;
      *(v23 + 4) = v25;
      *(v23 + 5) = v26;
      v28 = v43;
      v29 = v44;
      v30 = v45;
      v23[176] = v46;
      *(v23 + 9) = v29;
      *(v23 + 10) = v30;
      *(v23 + 8) = v28;
    }

    swift_setDeallocating();
    sqlite3_finalize(v19);
    v34 = *(inited + 24);

    *v35 = v18;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t AssetPushSubscriptionSQLiteStore.has(matching:)(uint64_t a1)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v11[8] = *(a1 + 128);
  v12 = *(a1 + 144);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *v1;
  sub_1DB348C18(v11, v10);
  sub_1DB348870(v6, v11);
  v8 = v7;
  sub_1DB348C74(v11);
  return v8 & 1;
}

uint64_t sub_1DB4291C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v57 = 0;
  v58 = 0xE000000000000000;
  MEMORY[0x1E1285C10](108);
  MEMORY[0x1E1285C70](0xD000000000000039, 0x80000001DB52E510);
  v65 = *(a2 + 8);
  if (*(&v65 + 1))
  {
    v7 = &off_1F5700098;
    v8 = MEMORY[0x1E69E6158];
    v9 = v65;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v59 = 0;
  }

  v57 = v9;
  v58 = *(&v65 + 1);
  v60 = v8;
  v61 = v7;
  sub_1DB30C4B8(&v57, &v54, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v65, v53, &unk_1ECC46C00, &qword_1DB516350);
  v10 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB302D80((v11 > 1), v12 + 1, 1, v10);
  }

  v10[2] = v12 + 1;
  v13 = &v10[5 * v12];
  v14 = v54;
  v15 = v55;
  v13[8] = v56;
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v57, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52E550);
  v64 = *(a2 + 40);
  if (*(&v64 + 1))
  {
    v16 = &off_1F5700098;
    v17 = MEMORY[0x1E69E6158];
    v18 = v64;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v59 = 0;
  }

  v57 = v18;
  v58 = *(&v64 + 1);
  v60 = v17;
  v61 = v16;
  sub_1DB30C4B8(&v57, &v54, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v64, v53, &unk_1ECC46C00, &qword_1DB516350);
  v20 = v10[2];
  v19 = v10[3];
  if (v20 >= v19 >> 1)
  {
    v10 = sub_1DB302D80((v19 > 1), v20 + 1, 1, v10);
  }

  v10[2] = v20 + 1;
  v21 = &v10[5 * v20];
  v22 = v54;
  v23 = v55;
  v21[8] = v56;
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v57, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52E570);
  v63 = *(a2 + 56);
  if (*(&v63 + 1))
  {
    v24 = &off_1F5700098;
    v25 = MEMORY[0x1E69E6158];
    v26 = v63;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v59 = 0;
  }

  v57 = v26;
  v58 = *(&v63 + 1);
  v60 = v25;
  v61 = v24;
  sub_1DB30C4B8(&v57, &v54, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v63, v53, &unk_1ECC46C00, &qword_1DB516350);
  v28 = v10[2];
  v27 = v10[3];
  if (v28 >= v27 >> 1)
  {
    v10 = sub_1DB302D80((v27 > 1), v28 + 1, 1, v10);
  }

  v10[2] = v28 + 1;
  v29 = &v10[5 * v28];
  v30 = v54;
  v31 = v55;
  v29[8] = v56;
  *(v29 + 2) = v30;
  *(v29 + 3) = v31;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v57, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000012, 0x80000001DB52E590);
  v62 = *(a2 + 24);
  if (*(&v62 + 1))
  {
    v32 = &off_1F5700098;
    v33 = MEMORY[0x1E69E6158];
    v34 = v62;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    v32 = 0;
    v59 = 0;
  }

  v57 = v34;
  v58 = *(&v62 + 1);
  v60 = v33;
  v61 = v32;
  sub_1DB30C4B8(&v57, &v54, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v62, v53, &unk_1ECC46C00, &qword_1DB516350);
  v36 = v10[2];
  v35 = v10[3];
  if (v36 >= v35 >> 1)
  {
    v10 = sub_1DB302D80((v35 > 1), v36 + 1, 1, v10);
  }

  v10[2] = v36 + 1;
  v37 = &v10[5 * v36];
  v38 = v54;
  v39 = v55;
  v37[8] = v56;
  *(v37 + 2) = v38;
  *(v37 + 3) = v39;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v57, &qword_1ECC42798, &qword_1DB50F210);
  v57 = 0;

  sub_1DB4ABE94(0, 0xE000000000000000, a1, &v57, &v54);
  if (v3)
  {

    goto LABEL_31;
  }

  v41 = v57;
  if (v57)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v41;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v10);

    v43 = *(inited + 16);
    v44 = sqlite3_step(v43);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (sub_1DB331244(v44, qword_1EE312D90))
    {
      v45 = sub_1DB3AD5F0(&unk_1F56F04F8);
      v46 = sub_1DB331244(v44, v45);

      if (v46)
      {
        if (sqlite3_column_type(v43, 0) == 5)
        {
          swift_setDeallocating();
          sqlite3_finalize(v43);
          v47 = *(inited + 24);
        }

        else
        {
          v51 = sqlite3_column_int(v43, 0);
          swift_setDeallocating();
          sqlite3_finalize(v43);
          v52 = *(inited + 24);

          if (v51 == 1)
          {
            *a3 = 1;
            goto LABEL_32;
          }
        }

        *a3 = 0;
        goto LABEL_32;
      }
    }

    sub_1DB388320();
    swift_allocError();
    *v48 = v44;
    *(v48 + 8) = 0;
    *(v48 + 16) = 0;
    swift_willThrow();
    swift_setDeallocating();
    sqlite3_finalize(v43);
    v49 = *(inited + 24);
LABEL_31:

LABEL_32:
    v50 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4298DC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, _UNKNOWN **a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v84 = a6;
  v83 = a5;
  v85 = a1;
  v96 = *MEMORY[0x1E69E9840];
  v15 = sub_1DB509DD0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2[4];
  v21 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2 + 1, v20);
  (*(v21 + 8))(v20, v21);
  sub_1DB509D90();
  v23 = v22;
  v24 = *&v22;
  v26 = *(v16 + 8);
  v25 = (v16 + 8);
  v26(v19, v15);
  v27 = v24 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_49;
  }

  v27 = 0xC3E0000000000001;
  if (v23 <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v27 = 0x43E0000000000000;
  if (v23 >= 9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v27 = 0xC3E0000000000001;
  if (a8 <= -9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v27 = 0x43E0000000000000;
  if (a8 >= 9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v15 = v23;
  v27 = a8;
  v19 = v23 + a8;
  if (__OFADD__(v23, a8))
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v27 = (*&a9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&a8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_54;
  }

  v27 = 0xC3E0000000000001;
  if (a9 <= -9.22337204e18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v27 = 0x43E0000000000000;
  if (a9 >= 9.22337204e18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v27 = a9;
  v21 = v15 + a9;
  if (__OFADD__(v15, a9))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v27 = 0xFFFFFFFF80000000;
  if (a3 < 0xFFFFFFFF80000000)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v27 = 0x7FFFFFFFLL;
  if (a3 > 0x7FFFFFFF)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v24 = a4;
  sub_1DB509D90();
  a9 = v28;
  v27 = *&v28 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v27 = 0xC3E0000000000001;
  if (v28 <= -9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v27 = 0x43E0000000000000;
  if (v28 < 9.22337204e18)
  {
    v82 = a7;
    v25 = &v93;
    v89 = 0;
    v90 = 0xE000000000000000;
    MEMORY[0x1E1285C10](179);
    v87 = v89;
    v88 = v90;
    MEMORY[0x1E1285C70](0xD000000000000051, 0x80000001DB52E450);
    a7 = &off_1F57000C8;
    v91 = MEMORY[0x1E69E7360];
    v92 = &off_1F57000C8;
    v89 = v23 + a8;
    sub_1DB30C4B8(&v89, &v93, &qword_1ECC42798, &qword_1DB50F210);
    a4 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v19 = a4[2];
    v27 = a4[3];
    v24 = v19 + 1;
    if (v19 < v27 >> 1)
    {
      goto LABEL_18;
    }

    goto LABEL_63;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  a4 = sub_1DB302D80((v27 > 1), v24, 1, a4);
LABEL_18:
  a4[2] = v24;
  v29 = &a4[5 * v19];
  v30 = v93;
  v31 = v25[1];
  v29[8] = v95;
  *(v29 + 2) = v30;
  *(v29 + 3) = v31;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v89, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52E4B0);
  v92 = a7;
  v91 = MEMORY[0x1E69E7360];
  v89 = v21;
  sub_1DB30C4B8(&v89, &v93, &qword_1ECC42798, &qword_1DB50F210);
  v33 = a4[2];
  v32 = a4[3];
  if (v33 >= v32 >> 1)
  {
    a4 = sub_1DB302D80((v32 > 1), v33 + 1, 1, a4);
  }

  a4[2] = v33 + 1;
  v34 = &a4[5 * v33];
  v35 = v93;
  v36 = v25[1];
  v34[8] = v95;
  *(v34 + 2) = v35;
  *(v34 + 3) = v36;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v89, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0x69726F697270202CLL, 0xED0000203D207974);
  v91 = MEMORY[0x1E69E72F0];
  v92 = &off_1F57000B8;
  LODWORD(v89) = a3;
  sub_1DB30C4B8(&v89, &v93, &qword_1ECC42798, &qword_1DB50F210);
  v38 = a4[2];
  v37 = a4[3];
  if (v38 >= v37 >> 1)
  {
    a4 = sub_1DB302D80((v37 > 1), v38 + 1, 1, a4);
  }

  v39 = MEMORY[0x1E69E7360];
  a4[2] = v38 + 1;
  v40 = &a4[5 * v38];
  v41 = v93;
  v42 = v94;
  v40[8] = v95;
  *(v40 + 2) = v41;
  *(v40 + 3) = v42;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v89, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52E4D0);
  v91 = v39;
  v92 = a7;
  v89 = a9;
  sub_1DB30C4B8(&v89, &v93, &qword_1ECC42798, &qword_1DB50F210);
  v44 = a4[2];
  v43 = a4[3];
  if (v44 >= v43 >> 1)
  {
    a4 = sub_1DB302D80((v43 > 1), v44 + 1, 1, a4);
  }

  v45 = v83;
  a4[2] = v44 + 1;
  v46 = &a4[5 * v44];
  v47 = v93;
  v48 = v94;
  v46[8] = v95;
  *(v46 + 2) = v47;
  *(v46 + 3) = v48;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v89, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52E4F0);
  v91 = v39;
  v92 = a7;
  v89 = v15;
  sub_1DB30C4B8(&v89, &v93, &qword_1ECC42798, &qword_1DB50F210);
  v50 = a4[2];
  v49 = a4[3];
  if (v50 >= v49 >> 1)
  {
    a4 = sub_1DB302D80((v49 > 1), v50 + 1, 1, a4);
  }

  v51 = v85;
  v52 = v84;
  a4[2] = v50 + 1;
  v53 = &a4[5 * v50];
  v54 = v93;
  v55 = v94;
  v53[8] = v95;
  *(v53 + 2) = v54;
  *(v53 + 3) = v55;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v89, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000014, 0x80000001DB52E430);
  v91 = MEMORY[0x1E69E6158];
  v92 = &off_1F5700098;
  v89 = v45;
  v90 = v52;
  sub_1DB30C4B8(&v89, &v93, &qword_1ECC42798, &qword_1DB50F210);
  v56 = a4[2];
  v57 = a4[3];

  if (v56 >= v57 >> 1)
  {
    a4 = sub_1DB302D80((v57 > 1), v56 + 1, 1, a4);
  }

  v58 = v86;
  a4[2] = v56 + 1;
  v59 = &a4[5 * v56];
  v60 = v93;
  v61 = v94;
  v59[8] = v95;
  *(v59 + 2) = v60;
  *(v59 + 3) = v61;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v89, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0x494E525554455220, 0xEC0000002A20474ELL);
  v62 = v87;
  v63 = v88;
  *&v93 = 0;

  sub_1DB4ABE94(v62, v63, v51, &v93, &v89);
  if (v58)
  {

LABEL_45:

LABEL_46:
    v79 = *MEMORY[0x1E69E9840];
    return result;
  }

  v65 = v93;
  if (v93)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v65;
    *(inited + 24) = 0;
    sub_1DB4B03C0(a4);

    for (i = 0; ; ++i)
    {
      v68 = *(inited + 16);
      v69 = sqlite3_step(v68);
      if (qword_1EE30C820 != -1)
      {
        swift_once();
      }

      v70 = qword_1EE312D90;
      if (!*(qword_1EE312D90 + 16) || (v71 = *(qword_1EE312D90 + 40), sub_1DB50BCF0(), sub_1DB50BD20(), v72 = sub_1DB50BD30(), v73 = -1 << *(v70 + 32), v74 = v72 & ~v73, ((*(v70 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0))
      {
LABEL_44:
        sub_1DB388320();
        swift_allocError();
        *v77 = v69;
        *(v77 + 8) = 0;
        *(v77 + 16) = 0;
        swift_willThrow();
        swift_setDeallocating();
        sqlite3_finalize(v68);
        v78 = *(inited + 24);
        goto LABEL_45;
      }

      v75 = ~v73;
      while (*(*(v70 + 48) + 4 * v74) != v69)
      {
        v74 = (v74 + 1) & v75;
        if (((*(v70 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      if (v69 != 100)
      {
        break;
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
      }
    }

    swift_setDeallocating();
    sqlite3_finalize(v68);
    v80 = *(inited + 24);

    *v82 = i;
    goto LABEL_46;
  }

  __break(1u);
  return result;
}