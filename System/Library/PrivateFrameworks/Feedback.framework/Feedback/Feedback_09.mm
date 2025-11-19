void *sub_1B8C022E4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6688, &qword_1B8C294C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1B8C02358()
{
  result = qword_1EBAA63C0;
  if (!qword_1EBAA63C0)
  {
    sub_1B8C23498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA63C0);
  }

  return result;
}

unint64_t sub_1B8C023B0()
{
  result = qword_1EBAA8840;
  if (!qword_1EBAA8840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBAA8840);
  }

  return result;
}

unsigned __int8 *sub_1B8C023FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1B8C25278();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B8C02F0C();
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
      result = sub_1B8C25838();
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

unsigned __int8 *sub_1B8C02988(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1B8C25278();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B8C02F0C();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
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
      result = sub_1B8C25838();
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
                    goto LABEL_129;
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
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
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
                  goto LABEL_129;
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
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
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
                goto LABEL_129;
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

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
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
                goto LABEL_129;
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

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
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
              goto LABEL_129;
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

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1B8C02F0C()
{
  v0 = sub_1B8C25288();
  v4 = sub_1B8C02F8C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1B8C02F8C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B8C251A8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1B8C25628();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1B8C022E4(v9, 0);
  v12 = sub_1B8C030E4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1B8C251A8();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1B8C25838();
LABEL_4:

  return sub_1B8C251A8();
}

unint64_t sub_1B8C030E4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1B8C03304(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B8C25238();
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
          result = sub_1B8C25838();
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

    result = sub_1B8C03304(v12, a6, a7);
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

    result = sub_1B8C25218();
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

uint64_t sub_1B8C03304(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B8C25248();
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
    v5 = MEMORY[0x1B8CC9EF0](15, a1 >> 16);
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

unint64_t sub_1B8C03380()
{
  result = qword_1EBAA8A50;
  if (!qword_1EBAA8A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7478, &qword_1B8C2BC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A50);
  }

  return result;
}

uint64_t sub_1B8C033E4()
{
  v1 = type metadata accessor for AnalyticsEvent();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1B8C257E8();

  v11 = 0x636974796C616E41;
  v12 = 0xEF2E746E65764573;
  sub_1B8C03F40(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v9 = sub_1B8C237B8();
      (*(*(v9 - 8) + 8))(v4, v9);
      v6 = 0xEB00000000646574;
      v7 = 0x6164696C61766E69;
    }

    else
    {
      v6 = 0xE800000000000000;
      v7 = 0x70752D6C6576656CLL;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v6 = 0x80000001B8C36AA0;
    v8 = sub_1B8C237B8();
    (*(*(v8 - 8) + 8))(v4, v8);
    v7 = 0xD000000000000012;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v6 = 0xEA00000000006572;
    v7 = 0x6F63732D77656976;
  }

  else
  {
    v6 = 0xE600000000000000;
    v7 = 0x68636E75616CLL;
  }

  MEMORY[0x1B8CC9EB0](v7, v6);

  return v11;
}

unint64_t sub_1B8C035D8()
{
  v1 = 0xD000000000000012;
  v2 = type metadata accessor for AnalyticsEvent();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1B8C257E8();

  v11 = 0xD000000000000025;
  v12 = 0x80000001B8C36A70;
  sub_1B8C03F40(v0, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v9 = sub_1B8C237B8();
      (*(*(v9 - 8) + 8))(v5, v9);
      v7 = 0xEB00000000646574;
      v1 = 0x6164696C61766E69;
    }

    else
    {
      v7 = 0xE800000000000000;
      v1 = 0x70752D6C6576656CLL;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v7 = 0x80000001B8C36AA0;
    v8 = sub_1B8C237B8();
    (*(*(v8 - 8) + 8))(v5, v8);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v7 = 0xEA00000000006572;
    v1 = 0x6F63732D77656976;
  }

  else
  {
    v7 = 0xE600000000000000;
    v1 = 0x68636E75616CLL;
  }

  MEMORY[0x1B8CC9EB0](v1, v7);

  return v11;
}

unint64_t sub_1B8C037CC()
{
  v1 = v0;
  v2 = sub_1B8C237B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for AnalyticsEvent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B8C03F40(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v13 = *v10;
      v14 = v10[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA86B0, &qword_1B8C2F6A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B8C27920;
      *(inited + 32) = 0x6C6576656CLL;
      *(inited + 40) = 0xE500000000000000;
      sub_1B8B46130(0, &qword_1EBAA88A0, 0x1E696AD98);
      *(inited + 48) = sub_1B8C255C8();
      *(inited + 56) = 0x65726F6373;
      *(inited + 64) = 0xE500000000000000;
      *(inited + 72) = sub_1B8C255C8();
      v16 = sub_1B8B5FA0C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA86B8, &unk_1B8C2F6A8);
      swift_arrayDestroy();
      return v16;
    }
  }

  else if (EnumCaseMultiPayload != 2)
  {
    return sub_1B8B5FA0C(MEMORY[0x1E69E7CC0]);
  }

  (*(v3 + 32))(v6, v10, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA86B0, &qword_1B8C2F6A0);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1B8C27920;
  strcpy((v17 + 32), "feature_domain");
  *(v17 + 47) = -18;
  sub_1B8C23798();
  v18 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v19 = sub_1B8C250F8();

  v20 = [v18 initWithString_];

  *(v17 + 48) = v20;
  *(v17 + 56) = 0xD000000000000011;
  *(v17 + 64) = 0x80000001B8C36A50;
  *(v17 + 72) = sub_1B8C23788();
  v21 = sub_1B8B5FA0C(v17);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA86B8, &unk_1B8C2F6A8);
  swift_arrayDestroy();
  (*(v3 + 8))(v6, v2);
  return v21;
}

void sub_1B8C03B68()
{
  v1 = type metadata accessor for AnalyticsEvent();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v28 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v28 - v9;
  sub_1B8C035D8();
  v11 = sub_1B8C250F8();

  sub_1B8C03F40(v0, v10);
  v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v13 = swift_allocObject();
  sub_1B8C03FA4(v10, v13 + v12);
  aBlock[4] = sub_1B8C04008;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8C04064;
  aBlock[3] = &block_descriptor_10;
  v14 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v14);

  if (qword_1EBAA5980 != -1)
  {
    swift_once();
  }

  v15 = sub_1B8C23C38();
  __swift_project_value_buffer(v15, qword_1EBAB3A48);
  sub_1B8C03F40(v0, v8);
  sub_1B8C03F40(v0, v5);
  v16 = sub_1B8C23C18();
  v17 = sub_1B8C25468();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315394;
    v20 = sub_1B8C035D8();
    v22 = v21;
    sub_1B8B50964(v8);
    v23 = sub_1B8B5DD48(v20, v22, aBlock);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v28[1] = sub_1B8C037CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA86A8, &qword_1B8C2F698);
    v24 = sub_1B8C25178();
    v26 = v25;
    sub_1B8B50964(v5);
    v27 = sub_1B8B5DD48(v24, v26, aBlock);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_1B8B22000, v16, v17, "%s - %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v19, -1, -1);
    MEMORY[0x1B8CCB0E0](v18, -1, -1);
  }

  else
  {

    sub_1B8B50964(v5);
    sub_1B8B50964(v8);
  }
}

uint64_t type metadata accessor for AnalyticsEvent()
{
  result = qword_1EBAA86C0;
  if (!qword_1EBAA86C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8C03F40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8C03FA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B8C04008()
{
  v1 = *(type metadata accessor for AnalyticsEvent() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1B8C037CC();
}

id sub_1B8C04064(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
    v5 = sub_1B8C25088();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B8C0411C()
{
  sub_1B8C04190();
  if (v0 <= 0x3F)
  {
    sub_1B8C041F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B8C04190()
{
  if (!qword_1EBAA86D0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBAA86D0);
    }
  }
}

void sub_1B8C041F0()
{
  if (!qword_1EBAA86D8)
  {
    v0 = sub_1B8C237B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAA86D8);
    }
  }
}

uint64_t sub_1B8C04238(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
  if (sub_1B8C255E8())
  {
    if (v4)
    {
      if (v7 && (v3 == v5 && v4 == v7 || (sub_1B8C25A08() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v7)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_1B8C042E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1B8C061C8(v7, v9);
}

uint64_t sub_1B8C04344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1B8C237E8();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v7 = sub_1B8C23938();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v9 = *(v8 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v11 = sub_1B8C238B8();
  v3[20] = v11;
  v12 = *(v11 - 8);
  v3[21] = v12;
  v13 = *(v12 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v14 = sub_1B8C237B8();
  v3[25] = v14;
  v15 = *(v14 - 8);
  v3[26] = v15;
  v16 = *(v15 + 64) + 15;
  v3[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8C045CC, 0, 0);
}

uint64_t sub_1B8C045CC()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[3];
  v5 = v0[4];
  sub_1B8C237C8();
  LOBYTE(v4) = sub_1B8B4E0BC(v1, v5);
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    sub_1B8C063CC();
    swift_allocError();
    *v11 = 0;
    goto LABEL_5;
  }

  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[19];
  v9 = v0[3];
  sub_1B8C23918();
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    sub_1B8B48A20(v0[19]);
    sub_1B8C063CC();
    swift_allocError();
    *v10 = 1;
LABEL_5:
    swift_willThrow();
LABEL_6:
    v12 = v0[27];
    v14 = v0[23];
    v13 = v0[24];
    v15 = v0[22];
    v17 = v0[18];
    v16 = v0[19];
    v18 = v0[17];
    v20 = v0[13];
    v19 = v0[14];
    v21 = v0[12];
    v175 = v0[11];
    v179 = v0[10];
    v181 = v0[9];
    v183 = v0[8];
    v186 = v0[7];

    v22 = v0[1];
    goto LABEL_7;
  }

  v24 = v0[18];
  v25 = v0[15];
  v26 = v0[16];
  v27 = *(v0[21] + 32);
  v27(v0[24], v0[19], v0[20]);
  sub_1B8C23878();
  v28 = *(v26 + 88);
  if (v28(v24, v25) != *MEMORY[0x1E699C5F0])
  {
    v60 = v0[24];
    v62 = v0[20];
    v61 = v0[21];
    (*(v0[16] + 8))(v0[18], v0[15]);
    sub_1B8C063CC();
    swift_allocError();
    *v63 = 3;
    swift_willThrow();
    (*(v61 + 8))(v60, v62);
    goto LABEL_6;
  }

  v29 = v0[18];
  v190 = *(v0[16] + 96);
  v190(v29, v0[15]);
  v30 = *v29;
  v31 = v29[1];
  v32 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v33 = sub_1B8C234A8();
  v34 = [v32 initWithData_];

  if (!v34)
  {
    v64 = v0[24];
    v65 = v30;
    v67 = v0[20];
    v66 = v0[21];
    sub_1B8C063CC();
    swift_allocError();
    *v68 = 6;
    swift_willThrow();
    sub_1B8B4645C(v65, v31);
    (*(v66 + 8))(v64, v67);
    goto LABEL_6;
  }

  v182 = v34;
  v184 = v30;
  v35 = v0[3];
  v36 = sub_1B8C23768();
  if (!*(v36 + 16))
  {
    v69 = v0[24];
    v71 = v0[20];
    v70 = v0[21];

    sub_1B8C063CC();
    swift_allocError();
    *v72 = 2;
    swift_willThrow();
    sub_1B8B4645C(v184, v31);

    (*(v70 + 8))(v69, v71);
    goto LABEL_6;
  }

  v38 = v0[22];
  v37 = v0[23];
  v39 = v0[20];
  v176 = v0[17];
  v180 = v31;
  v187 = v0[15];
  (*(v0[21] + 16))(v38, v36 + ((*(v0[21] + 80) + 32) & ~*(v0[21] + 80)), v39);

  v27(v37, v38, v39);
  sub_1B8C23878();
  if (v28(v176, v187) != *MEMORY[0x1E699C588])
  {
    v74 = v0[23];
    v73 = v0[24];
    v76 = v0[20];
    v75 = v0[21];
    (*(v0[16] + 8))(v0[17], v0[15]);
    sub_1B8C063CC();
    swift_allocError();
    *v77 = 4;
    swift_willThrow();
    sub_1B8B4645C(v184, v31);

    v78 = *(v75 + 8);
    v78(v74, v76);
    v79 = v73;
LABEL_52:
    v78(v79, v76);
    goto LABEL_6;
  }

  v40 = v0[17];
  v41 = v0[14];
  v42 = v0[13];
  v44 = v0[5];
  v43 = v0[6];
  v190(v40, v0[15]);
  v45 = v43[4];
  v45(v41, v40, v44);
  v177 = v43[2];
  v177(v42, v41, v44);
  v173 = v43[11];
  v46 = v0;
  v188 = v0;
  if (v173(v42, v44) != *MEMORY[0x1E699C3B0])
  {
    v93 = v0[23];
    v92 = v0[24];
    v76 = v0[20];
    v94 = v0[21];
    v95 = v0[14];
    v96 = v0[5];
    v97 = *(v0[6] + 8);
    v97(v0[13], v96);
    sub_1B8C063CC();
    swift_allocError();
    *v98 = 5;
    swift_willThrow();
    sub_1B8B4645C(v184, v180);

    v97(v95, v96);
    v78 = *(v94 + 8);
    v78(v93, v76);
    v79 = v92;
    goto LABEL_52;
  }

  v47 = v0[13];
  v164 = *(v0[6] + 96);
  v164(v47, v0[5]);
  v48 = *v47;
  if (!*(*v47 + 16))
  {
    goto LABEL_50;
  }

  v49 = *v47;
  v50 = sub_1B8B5E2DC(0x74706D6F7270, 0xE600000000000000);
  if ((v51 & 1) == 0)
  {
    goto LABEL_50;
  }

  v52 = v46[12];
  v53 = v46[5];
  v170 = *(v46[6] + 72);
  v177(v52, *(v48 + 56) + v170 * v50, v53);
  v54 = v173(v52, v53);
  v55 = v46[12];
  if (v54 != *MEMORY[0x1E699C3C0])
  {
    v100 = v46[5];
    v99 = v46[6];

    (*(v99 + 8))(v55, v100);
LABEL_51:
    v125 = v46[23];
    v124 = v46[24];
    v76 = v46[20];
    v126 = v46[21];
    v127 = v188[14];
    v128 = v188[6];
    v129 = v188[5];
    sub_1B8C063CC();
    swift_allocError();
    *v130 = 5;
    swift_willThrow();
    sub_1B8B4645C(v184, v180);

    v0 = v188;
    (*(v128 + 8))(v127, v129);
    v78 = *(v126 + 8);
    v78(v125, v76);
    v79 = v124;
    goto LABEL_52;
  }

  v154 = v54;
  v164(v55, v46[5]);
  v56 = *(*v55 + 16);
  v160 = v45;
  if (v56)
  {
    v157 = v46[9];
    v57 = v46[6];
    v58 = *v55 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
    v167 = *MEMORY[0x1E699C3D0];
    v59 = (v57 + 8);
    v172 = MEMORY[0x1E69E7CC0];
    do
    {
      v80 = v46[11];
      v81 = v188[9];
      v82 = v188[5];
      v177(v80, v58, v82);
      v45(v81, v80, v82);
      v83 = v81;
      v46 = v188;
      v84 = v173(v83, v82);
      v85 = v188[9];
      v86 = v188[5];
      if (v84 == v167)
      {
        v164(v188[9], v86);
        v87 = *v85;
        v88 = *(v157 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v172 = sub_1B8B5D1AC(0, *(v172 + 2) + 1, 1, v172);
        }

        v90 = *(v172 + 2);
        v89 = *(v172 + 3);
        if (v90 >= v89 >> 1)
        {
          v172 = sub_1B8B5D1AC((v89 > 1), v90 + 1, 1, v172);
        }

        *(v172 + 2) = v90 + 1;
        v91 = &v172[16 * v90];
        *(v91 + 4) = v87;
        *(v91 + 5) = v88;
        v45 = v160;
      }

      else
      {
        (*v59)(v188[9], v86);
      }

      v58 += v170;
      --v56;
    }

    while (v56);
  }

  else
  {

    v172 = MEMORY[0x1E69E7CC0];
  }

  if (!*(v48 + 16) || (v101 = sub_1B8B5E2DC(0x73746365666665, 0xE700000000000000), (v102 & 1) == 0))
  {

LABEL_50:

    goto LABEL_51;
  }

  v103 = v46[10];
  v104 = v46[5];
  v177(v103, *(v48 + 56) + v101 * v170, v104);
  v105 = v173(v103, v104);
  v106 = v46[10];
  if (v105 != v154)
  {
    v132 = v46[5];
    v131 = v46[6];

    (*(v131 + 8))(v106, v132);
    goto LABEL_51;
  }

  v153 = v48;
  v164(v106, v46[5]);
  v107 = *(*v106 + 16);
  if (v107)
  {
    v108 = v46[6];
    v158 = v46[7];
    v109 = *v106 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v168 = *MEMORY[0x1E699C3D0];
    v155 = (v108 + 8);
    v110 = MEMORY[0x1E69E7CC0];
    do
    {
      v112 = v46;
      v113 = v46[8];
      v114 = v112[7];
      v115 = v112[5];
      v177(v113, v109, v115);
      v45(v114, v113, v115);
      v116 = v173(v114, v115);
      v117 = v112[7];
      v118 = v112[5];
      if (v116 == v168)
      {
        v164(v112[7], v118);
        v119 = *v117;
        v120 = *(v158 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_1B8B5D1AC(0, *(v110 + 2) + 1, 1, v110);
        }

        v111 = v184;
        v122 = *(v110 + 2);
        v121 = *(v110 + 3);
        if (v122 >= v121 >> 1)
        {
          v110 = sub_1B8B5D1AC((v121 > 1), v122 + 1, 1, v110);
        }

        *(v110 + 2) = v122 + 1;
        v123 = &v110[16 * v122];
        *(v123 + 4) = v119;
        *(v123 + 5) = v120;
        v45 = v160;
      }

      else
      {
        (*v155)(v112[7], v118);
        v111 = v184;
      }

      v109 += v170;
      --v107;
      v46 = v188;
    }

    while (v107);
  }

  else
  {

    v110 = MEMORY[0x1E69E7CC0];
    v111 = v184;
  }

  v159 = v46[24];
  v161 = v46[27];
  v156 = v46[23];
  v133 = v46[21];
  v134 = v46[20];
  v162 = v46[22];
  v163 = v46[19];
  v165 = v46[18];
  v166 = v46[17];
  v151 = v46[14];
  v169 = v46[13];
  v171 = v46[12];
  v174 = v46[11];
  v178 = v46[10];
  v185 = v46[9];
  v189 = v46[8];
  v191 = v46[7];
  v135 = v46;
  v138 = v46 + 5;
  v137 = v46[5];
  v136 = v138[1];
  v139 = v135[2];
  v140 = v135[3];
  v152 = sub_1B8C05C08();
  v141 = sub_1B8C053B8(v140, v153);
  v149 = v142;
  v150 = v141;
  v148 = v143;
  v144 = sub_1B8C059F8(v153);
  v147 = v145;
  sub_1B8B4645C(v111, v180);

  (*(v136 + 8))(v151, v137);
  v146 = *(v133 + 8);
  v146(v156, v134);
  v146(v159, v134);
  *v139 = v182;
  *(v139 + 8) = v152;
  *(v139 + 16) = v150;
  *(v139 + 24) = v149;
  *(v139 + 32) = v148;
  *(v139 + 40) = v172;
  *(v139 + 48) = v110;
  *(v139 + 56) = v144;
  *(v139 + 64) = v147;
  *(v139 + 72) = 1;

  v22 = v135[1];
LABEL_7:

  return v22();
}

id sub_1B8C053B8(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v2 = sub_1B8C237E8();
  v43 = *(v2 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1B8C23938();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1B8C238B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(sub_1B8C23768() + 16);

  if (v16 < 2)
  {
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v17 = sub_1B8C23C38();
    __swift_project_value_buffer(v17, qword_1EBAB3A30);
    v18 = sub_1B8C23C18();
    v19 = sub_1B8C25468();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1B8B22000, v18, v19, "extra content does not have at least 2 entries", v20, 2u);
      MEMORY[0x1B8CCB0E0](v20, -1, -1);
    }

    return 0;
  }

  v21 = sub_1B8C23768();
  if (*(v21 + 16) < 2uLL)
  {
    __break(1u);
LABEL_28:
    swift_once();
LABEL_15:
    v36 = sub_1B8C23C38();
    __swift_project_value_buffer(v36, qword_1EBAB3A30);
    v37 = sub_1B8C23C18();
    v38 = sub_1B8C25468();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1B8B22000, v37, v38, "Failed to load person image data", v39, 2u);
      MEMORY[0x1B8CCB0E0](v39, -1, -1);
    }

    goto LABEL_24;
  }

  (*(v12 + 16))(v15, v21 + *(v12 + 72) + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);

  sub_1B8C23878();
  if ((*(v7 + 88))(v10, v6) != *MEMORY[0x1E699C5F0])
  {
    (*(v7 + 8))(v10, v6);
    if (qword_1EBAA5978 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  (*(v7 + 96))(v10, v6);
  v23 = *v10;
  v22 = v10[1];
  v24 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v25 = sub_1B8C234A8();
  v26 = [v24 initWithData_];

  if (!v26)
  {
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v40 = sub_1B8C23C38();
    __swift_project_value_buffer(v40, qword_1EBAB3A30);
    v37 = sub_1B8C23C18();
    v41 = sub_1B8C25468();
    if (os_log_type_enabled(v37, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1B8B22000, v37, v41, "Failed to load person image", v42, 2u);
      MEMORY[0x1B8CCB0E0](v42, -1, -1);
    }

    sub_1B8B4645C(v23, v22);
LABEL_24:

    (*(v12 + 8))(v15, v11);
    return 0;
  }

  v27 = v26;
  v28 = v44;
  if (*(v44 + 16) && (v29 = sub_1B8B5E2DC(0x614E6E6F73726570, 0xEA0000000000656DLL), (v30 & 1) != 0))
  {
    v31 = *(v28 + 56);
    v32 = v43;
    (*(v43 + 16))(v5, v31 + *(v43 + 72) * v29, v2);
    sub_1B8B4645C(v23, v22);
    (*(v12 + 8))(v15, v11);
    if ((*(v32 + 88))(v5, v2) == *MEMORY[0x1E699C3D0])
    {
      (*(v32 + 96))(v5, v2);
      v33 = *v5;
      v34 = v5[1];
      return v27;
    }

    (*(v32 + 8))(v5, v2);
  }

  else
  {
    (*(v12 + 8))(v15, v11);
    sub_1B8B4645C(v23, v22);
  }

  return v27;
}

uint64_t sub_1B8C059F8(uint64_t a1)
{
  v2 = sub_1B8C237E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 16))
  {
    v7 = sub_1B8B5E2DC(0x656C797473, 0xE500000000000000);
    if (v8)
    {
      (*(v3 + 16))(v6, *(a1 + 56) + *(v3 + 72) * v7, v2);
      if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E699C3D0])
      {
        (*(v3 + 96))(v6, v2);
        result = *v6;
        v10 = v6[1];
        return result;
      }

      (*(v3 + 8))(v6, v2);
    }
  }

  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v11 = sub_1B8C23C38();
  __swift_project_value_buffer(v11, qword_1EBAB3A30);
  v12 = sub_1B8C23C18();
  v13 = sub_1B8C25468();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1B8B22000, v12, v13, "Failed to load style", v14, 2u);
    MEMORY[0x1B8CCB0E0](v14, -1, -1);
  }

  return 0;
}

id sub_1B8C05C08()
{
  v0 = sub_1B8C23938();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v28 - v7;
  v9 = sub_1B8C238B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C238F8();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B8B48A20(v8);
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v14 = sub_1B8C23C38();
    __swift_project_value_buffer(v14, qword_1EBAB3A30);
    v15 = sub_1B8C23C18();
    v16 = sub_1B8C25468();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1B8B22000, v15, v16, "Failed to load original content", v17, 2u);
      MEMORY[0x1B8CCB0E0](v17, -1, -1);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    sub_1B8C23878();
    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x1E699C5F0])
    {
      (*(v1 + 96))(v4, v0);
      v18 = *v4;
      v19 = v4[1];
      v20 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      v21 = sub_1B8C234A8();
      v22 = [v20 initWithData_];

      sub_1B8B4645C(v18, v19);
      (*(v10 + 8))(v13, v9);
      return v22;
    }

    (*(v1 + 8))(v4, v0);
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v24 = sub_1B8C23C38();
    __swift_project_value_buffer(v24, qword_1EBAB3A30);
    v25 = sub_1B8C23C18();
    v26 = sub_1B8C25468();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1B8B22000, v25, v26, "Failed to load original content image", v27, 2u);
      MEMORY[0x1B8CCB0E0](v27, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
  }

  return 0;
}

uint64_t sub_1B8C06038()
{
  v1 = sub_1B8C237B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1B8C237C8();
  v7 = sub_1B8B4E0BC(v5, v6);
  (*(v2 + 8))(v5, v1);
  return v7 & 1;
}

uint64_t sub_1B8C06120(uint64_t a1, uint64_t a2)
{
  *(v3 + 96) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  *v6 = v3;
  v6[1] = sub_1B8B47300;

  return sub_1B8C04344(v3 + 16, a2, v5);
}

BOOL sub_1B8C061C8(uint64_t *a1, uint64_t *a2)
{
  sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
  v4 = *a1;
  v5 = *a2;
  if ((sub_1B8C255E8() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  v7 = a2[1];
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    sub_1B8B46130(0, &qword_1EBAA6220, 0x1E69DCAB8);
    v8 = v7;
    v9 = v6;
    v10 = sub_1B8C255E8();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v11 = a2[2];
  if (!a1[2])
  {
    if (v11)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (!v11)
  {
    return 0;
  }

  v13 = a1[3];
  v12 = a1[4];
  v15 = a2[3];
  v14 = a2[4];

  v16 = v11;
  if ((sub_1B8C255E8() & 1) == 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  if (!v12)
  {
    if (!v14)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (!v14)
  {
LABEL_19:

    return 0;
  }

  if (v13 != v15 || v12 != v14)
  {
    v17 = sub_1B8C25A08();

    if ((v17 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_22;
  }

LABEL_20:

LABEL_22:
  if (sub_1B8B44024(a1[5], a2[5]) & 1) != 0 && (sub_1B8B44024(a1[6], a2[6]))
  {
    v18 = a1[8];
    v19 = a2[8];
    if (v18)
    {
      return v19 && (a1[7] == a2[7] && v18 == v19 || (sub_1B8C25A08() & 1) != 0);
    }

    if (!v19)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1B8C063CC()
{
  result = qword_1EBAA86E0;
  if (!qword_1EBAA86E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA86E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImagePlaygroundDonationDecoder.Err(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImagePlaygroundDonationDecoder.Err(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B8C06570(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B8C065B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B8C0660C()
{
  result = qword_1EBAA86E8;
  if (!qword_1EBAA86E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA86E8);
  }

  return result;
}

uint64_t FBKInlineConcern.feedbackController.getter()
{
  v3[1] = *v0;
  v4 = *(v0 + 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](v3, v1);
  return v3[0];
}

uint64_t FBKInlineConcern.feedbackController.setter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  return sub_1B8C24E48();
}

void (*FBKInlineConcern.feedbackController.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v4[8] = *v1;
  v4[9] = v6;
  v7 = v1[2];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v8 = v7;
  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00]();
  return sub_1B8B833D4;
}

uint64_t FBKInlineConcern.$feedbackController.getter()
{
  v3 = *v0;
  v4 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  sub_1B8C24E68();
  return v2;
}

uint64_t type metadata accessor for FBKInlineConcern()
{
  result = qword_1EBAA86F0;
  if (!qword_1EBAA86F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8C06888()
{
  v0 = *(type metadata accessor for FBKInlineConcern() + 20);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  return MEMORY[0x1B8CC9B00](v1);
}

uint64_t sub_1B8C068E0(uint64_t a1)
{
  v2 = sub_1B8C23738();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2);
  LODWORD(a1) = *(type metadata accessor for FBKInlineConcern() + 20);
  v10(v7, v9, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  sub_1B8C24E48();
  return (*(v3 + 8))(v9, v2);
}

uint64_t FBKInlineConcern.subject.setter(uint64_t a1)
{
  v2 = sub_1B8C23738();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for FBKInlineConcern() + 20);
  (*(v3 + 16))(v6, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  sub_1B8C24E48();
  return (*(v3 + 8))(a1, v2);
}

void (*FBKInlineConcern.subject.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_1B8C23738();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[3] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  v5[4] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v10 - 8) + 64));
  }

  v12 = v11;
  v5[5] = v11;
  v13 = type metadata accessor for FBKInlineConcern();
  sub_1B8B83A68(v1 + *(v13 + 20), v12);
  MEMORY[0x1B8CC9B00](v10);
  return sub_1B8B83990;
}

uint64_t sub_1B8C06CD8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FBKInlineConcern() + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  return a1(v3);
}

uint64_t FBKInlineConcern.disabled.getter()
{
  v1 = (v0 + *(type metadata accessor for FBKInlineConcern() + 24));
  v2 = *v1;
  v3 = v1[1];
  LOBYTE(v1) = *(v1 + 16);
  v7 = v2;
  v8 = v3;
  v9 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  MEMORY[0x1B8CC9B00](&v6, v4);
  return v6;
}

void *sub_1B8C06D9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FBKInlineConcern() + 24));
  v4 = *v3;
  v5 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  result = MEMORY[0x1B8CC9B00](&v8, v6);
  *a2 = v8;
  return result;
}

uint64_t sub_1B8C06E18(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for FBKInlineConcern() + 24));
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  return sub_1B8C24E48();
}

uint64_t FBKInlineConcern.disabled.setter()
{
  v1 = (v0 + *(type metadata accessor for FBKInlineConcern() + 24));
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  return sub_1B8C24E48();
}

void (*FBKInlineConcern.disabled.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for FBKInlineConcern() + 24));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 48) = *v5;
  *(v4 + 56) = v7;
  LOBYTE(v5) = *(v5 + 16);
  *(v4 + 19) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  MEMORY[0x1B8CC9B00]();
  return sub_1B8B83E40;
}

uint64_t FBKInlineConcern.$disabled.getter()
{
  v1 = (v0 + *(type metadata accessor for FBKInlineConcern() + 24));
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  sub_1B8C24E68();
  return v3;
}

uint64_t sub_1B8C0702C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FBKInlineConcern() + 28));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B8B84788;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_1B8B247D4(v4);
}

uint64_t sub_1B8C070C0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B8B84780;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for FBKInlineConcern() + 28));
  v8 = *v7;
  v9 = v7[1];
  sub_1B8B247D4(v3);
  result = sub_1B8B30A44(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t FBKInlineConcern.onFormComplete.getter()
{
  v1 = (v0 + *(type metadata accessor for FBKInlineConcern() + 28));
  v2 = *v1;
  v3 = v1[1];
  sub_1B8B247D4(*v1);
  return v2;
}

uint64_t FBKInlineConcern.onFormComplete.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FBKInlineConcern() + 28));
  v6 = v5[1];
  result = sub_1B8B30A44(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FBKInlineConcern.init(feedbackController:subject:disabled:onFormComplete:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v17 = type metadata accessor for FBKInlineConcern();
  v18 = (a9 + v17[7]);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  result = sub_1B8B841EC(a4, a9 + v17[5]);
  v20 = a9 + v17[6];
  *v20 = a5;
  *(v20 + 1) = a6;
  v20[16] = a7;
  *v18 = a8;
  v18[1] = a10;
  return result;
}

double FBKInlineConcern.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - v6;
  v8 = sub_1B8C236E8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x1E699C1D8], v8);
  v13 = type metadata accessor for FBKInlineConcern();
  v14 = v1 + v13[5];
  sub_1B8C24E68();
  v15 = (v2 + v13[7]);
  v16 = *v15;
  v34 = v15[1];
  v35 = v16;
  *&v40[0] = *v2;
  *(v40 + 8) = *(v2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  sub_1B8C24E68();
  v37 = v38;
  v36 = v39;
  v17 = (v2 + v13[6]);
  v18 = *v17;
  v19 = v17[1];
  LOBYTE(v17) = *(v17 + 16);
  *&v40[0] = v18;
  *(&v40[0] + 1) = v19;
  LOBYTE(v40[1]) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  sub_1B8C24E68();
  v32 = v39;
  v33 = v38;
  v31 = BYTE8(v39);
  v20 = type metadata accessor for FBKInlineViewButton();
  v21 = v20[6];
  v30 = v20[7];
  v22 = (a1 + v21);
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA71A0, &qword_1B8C2C220);
  sub_1B8C24D58();
  v23 = *&v40[0];
  (*(v9 + 16))(a1, v12, v8);
  sub_1B8B83A68(v7, a1 + v20[5]);
  v25 = v34;
  v24 = v35;
  *v22 = v35;
  v22[1] = v25;
  v38 = 0;
  sub_1B8B247D4(v24);
  sub_1B8C24D58();
  sub_1B8B83AD8(v7);
  (*(v9 + 8))(v12, v8);

  *(a1 + v30) = v40[0];
  v26 = a1 + v20[8];
  *v26 = v37;
  result = *&v36;
  *(v26 + 8) = v36;
  v28 = a1 + v20[9];
  v29 = v32;
  *v28 = v33;
  *(v28 + 8) = v29;
  *(v28 + 16) = v31;
  return result;
}

uint64_t sub_1B8C07640(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6C6C69662ELL;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = 0xE000000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (!a2)
  {
    v6 = 0x7568742E646E6168;
LABEL_12:
    v8 = v6;
    goto LABEL_13;
  }

  if (a2 != 1)
  {
    v6 = 0x656C637269632E78;
    goto LABEL_12;
  }

  v5 = v3;
  sub_1B8C257E8();

  v8 = 0x7568742E646E6168;
  v3 = v5;
LABEL_13:
  MEMORY[0x1B8CC9EB0](v3, v4);

  return v8;
}

uint64_t sub_1B8C07740()
{
  v1 = 0x6F4473626D756874;
  if (*v0 != 1)
  {
    v1 = 1885956979;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x705573626D756874;
  }
}

unint64_t sub_1B8C0779C()
{
  result = qword_1EBAA8700;
  if (!qword_1EBAA8700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8700);
  }

  return result;
}

uint64_t sub_1B8C077F0()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1B8C09CF8(&qword_1EBAA6F30, type metadata accessor for AppInfoController);
  sub_1B8C23588();

  v1 = *(v0 + 16);
  sub_1B8C09614(v1, *(v3 + 24), *(v3 + 32));
  return v1;
}

uint64_t sub_1B8C078B0()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1B8C09CF8(&qword_1EBAA6F30, type metadata accessor for AppInfoController);
  sub_1B8C23588();

  v2 = *(v0 + 40);
  v1 = *(v4 + 48);

  return v2;
}

uint64_t sub_1B8C07960(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B8C25A08() & 1) == 0)
  {
    return 0;
  }

  sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
  return sub_1B8C255E8() & 1;
}

void sub_1B8C079E4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8C09CF8(&qword_1EBAA6F30, type metadata accessor for AppInfoController);
  sub_1B8C23588();

  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  sub_1B8C09614(v4, v5, v6);
}

void sub_1B8C07A98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  sub_1B8C09614(*a1, v3, v4);
  sub_1B8C07AE8(v2, v3, v4);
}

void sub_1B8C07AE8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  if (!v8)
  {
    if (!a2)
    {
      v15 = 0;
      goto LABEL_13;
    }

LABEL_11:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8C09CF8(&qword_1EBAA6F30, type metadata accessor for AppInfoController);
    sub_1B8C23578();
    sub_1B8C09658(a1, a2, a3);

    return;
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  if (v7 != a1 || v8 != a2)
  {
    v11 = v3[2];
    v12 = v3[3];
    if ((sub_1B8C25A08() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);

  v13 = v9;
  v14 = sub_1B8C255E8();
  sub_1B8C09658(v7, v8, v9);
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = v3[2];
  v15 = v3[3];
  v9 = v3[4];
LABEL_13:
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;

  sub_1B8C09658(v7, v15, v9);
}

uint64_t sub_1B8C07CEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8C09CF8(&qword_1EBAA6F30, type metadata accessor for AppInfoController);
  sub_1B8C23588();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_1B8C07D98(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40) == a1 && *(v2 + 48) == a2;
  if (v5 || (v6 = *(v2 + 48), (sub_1B8C25A08() & 1) != 0))
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8C09CF8(&qword_1EBAA6F30, type metadata accessor for AppInfoController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8C07EF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7C68, &qword_1B8C2D578);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_1B8C08040(sub_1B8BBDC18, v8);
}

void sub_1B8C08040(void (*a1)(void), uint64_t a2)
{
  v75 = a2;
  v79 = a1;
  v68 = *v2;
  v3 = sub_1B8C24FD8();
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1B8C25008();
  v70 = *(v72 - 8);
  v6 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1B8C24FE8();
  v66 = *(v67 - 8);
  v8 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B8C23388();
  v76 = *(v10 - 8);
  v77 = v10;
  v11 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = [objc_opt_self() enumeratorWithOptions_];
  sub_1B8C25418();
  v80 = OBJC_IVAR____TtC8Feedback17AppInfoController___observationRegistrar;
  sub_1B8C23378();
  if (!v84)
  {
LABEL_21:
    (*(v76 + 8))(v13, v77);
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v54 = sub_1B8C23C38();
    __swift_project_value_buffer(v54, qword_1EBAB3A30);
    v55 = v81;

    v56 = sub_1B8C23C18();
    v57 = sub_1B8C25478();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&aBlock = v59;
      *v58 = 136315138;
      swift_getKeyPath();
      *&v88[0] = v55;
      sub_1B8C09CF8(&qword_1EBAA6F30, type metadata accessor for AppInfoController);
      sub_1B8C23588();

      v60 = v55[5];
      v61 = v55[6];

      v62 = sub_1B8B5DD48(v60, v61, &aBlock);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_1B8B22000, v56, v57, "Failed to find app record for bundleID: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x1B8CCB0E0](v59, -1, -1);
      MEMORY[0x1B8CCB0E0](v58, -1, -1);
    }

    v63 = v78;
    if (v79)
    {
      v79();
    }

    return;
  }

  v14 = v81;
  while (1)
  {
    sub_1B8B5FE40(&aBlock, v88);
    sub_1B8B46130(0, &qword_1EBAA8720, 0x1E69635F8);
    if (!swift_dynamicCast())
    {
      goto LABEL_5;
    }

    v16 = v87;
    v17 = [v87 bundleIdentifier];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1B8C25128();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    swift_getKeyPath();
    *&v88[0] = v14;
    sub_1B8C09CF8(&qword_1EBAA6F30, type metadata accessor for AppInfoController);
    sub_1B8C23588();

    if (v21)
    {
      break;
    }

LABEL_4:

LABEL_5:
    sub_1B8C23378();
    if (!v84)
    {
      goto LABEL_21;
    }
  }

  if (v19 != v14[5] || v21 != v14[6])
  {
    v15 = sub_1B8C25A08();

    if (v15)
    {
      goto LABEL_14;
    }

    goto LABEL_4;
  }

LABEL_14:
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v22 = sub_1B8C23C38();
  v23 = __swift_project_value_buffer(v22, qword_1EBAB3A30);
  v24 = v81;

  v25 = sub_1B8C23C18();
  v26 = sub_1B8C25468();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v64 = v23;
    v29 = v28;
    *&v88[0] = v28;
    *v27 = 136315138;
    swift_getKeyPath();
    v87 = v24;
    sub_1B8C23588();

    v30 = v24[5];
    v31 = v24[6];

    v32 = sub_1B8B5DD48(v30, v31, v88);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_1B8B22000, v25, v26, "Found app record for bundleID: %s, will break early", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B8CCB0E0](v29, -1, -1);
    MEMORY[0x1B8CCB0E0](v27, -1, -1);
  }

  (*(v76 + 8))(v13, v77);

  v33 = v16;
  v34 = sub_1B8C23C18();
  v35 = sub_1B8C25468();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&aBlock = v37;
    *v36 = 136315138;
    swift_getKeyPath();
    *&v88[0] = v24;
    sub_1B8C23588();

    v38 = v24[5];
    v39 = v24[6];

    v40 = sub_1B8B5DD48(v38, v39, &aBlock);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_1B8B22000, v34, v35, "Found app record for bundleID: %s, will prepare image", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x1B8CCB0E0](v37, -1, -1);
    MEMORY[0x1B8CCB0E0](v36, -1, -1);
  }

  v41 = v24;
  v42 = v79;
  v44 = v73;
  v43 = v74;
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v45 = v66;
  v46 = v65;
  v47 = v67;
  (*(v66 + 104))(v65, *MEMORY[0x1E69E7F88], v67);
  v48 = sub_1B8C25568();
  (*(v45 + 8))(v46, v47);
  v49 = swift_allocObject();
  v49[2] = v41;
  v49[3] = v42;
  v49[4] = v75;
  v49[5] = v33;
  v49[6] = v68;
  v85 = sub_1B8C09734;
  v86 = v49;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v83 = sub_1B8B8B9F4;
  v84 = &block_descriptor_11;
  v50 = _Block_copy(&aBlock);

  v51 = v33;
  sub_1B8B247D4(v42);
  v52 = v69;
  sub_1B8C24FF8();
  *&v88[0] = MEMORY[0x1E69E7CC0];
  sub_1B8C09CF8(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  v53 = v71;
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v52, v53, v50);
  _Block_release(v50);

  (*(v44 + 8))(v53, v43);
  (*(v70 + 8))(v52, v72);
}

void sub_1B8C08B14(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  v8 = sub_1B8C24FD8();
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1B8C25008();
  v43 = *(v45 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  aBlock[0] = a1;
  sub_1B8C09CF8(&qword_1EBAA6F30, type metadata accessor for AppInfoController);
  sub_1B8C23588();

  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = objc_allocWithZone(MEMORY[0x1E69A8A00]);

  v17 = sub_1B8C250F8();

  v18 = [v16 initWithBundleIdentifier_];

  v19 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:24.0 scale:{24.0, 2.0}];
  v20 = [v18 prepareImageForDescriptor_];

  if (v20)
  {
    v41 = v18;
    v42 = v8;
    v21 = a2;
    v22 = a3;
    v23 = [v20 CGImage];
    if (v23)
    {
      v24 = v23;
      v25 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

      v26 = [a4 localizedName];
      v27 = sub_1B8C25128();
      v29 = v28;

      sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
      v30 = v25;
      v31 = sub_1B8C25538();
      v32 = swift_allocObject();
      v32[2] = a1;
      v32[3] = v27;
      v32[4] = v29;
      v32[5] = v30;
      v32[6] = v21;
      v32[7] = v22;
      aBlock[4] = sub_1B8C0975C;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B8B8B9F4;
      aBlock[3] = &block_descriptor_15_0;
      v33 = _Block_copy(aBlock);
      v34 = v30;

      sub_1B8B247D4(v21);

      sub_1B8C24FF8();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1B8C09CF8(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
      sub_1B8B62264();
      v35 = v44;
      v36 = v42;
      sub_1B8C256D8();
      MEMORY[0x1B8CCA210](0, v13, v35, v33);
      _Block_release(v33);

      (*(v46 + 8))(v35, v36);
      (*(v43 + 8))(v13, v45);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v37 = sub_1B8C23C38();
    __swift_project_value_buffer(v37, qword_1EBAB3A30);
    v38 = sub_1B8C23C18();
    v39 = sub_1B8C25478();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1B8B22000, v38, v39, "Failed to prepare image for app record", v40, 2u);
      MEMORY[0x1B8CCB0E0](v40, -1, -1);
    }

    if (a2)
    {
      a2();
    }
  }
}

void sub_1B8C0909C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void))
{
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v9 = sub_1B8C23C38();
  __swift_project_value_buffer(v9, qword_1EBAB3A30);
  v10 = sub_1B8C23C18();
  v11 = sub_1B8C25468();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B8B22000, v10, v11, "Successfully built app info", v12, 2u);
    MEMORY[0x1B8CCB0E0](v12, -1, -1);
  }

  v13 = a4;
  sub_1B8C07AE8(a2, a3, a4);
  if (a5)
  {
    a5();
  }
}

uint64_t sub_1B8C091D4()
{
  sub_1B8C09658(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 48);

  v2 = OBJC_IVAR____TtC8Feedback17AppInfoController___observationRegistrar;
  v3 = sub_1B8C235C8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppInfoController()
{
  result = qword_1EBAA8710;
  if (!qword_1EBAA8710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8C092D8()
{
  result = sub_1B8C235C8();
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

uint64_t sub_1B8C09398(void *a1, void *a2)
{
  swift_getKeyPath();
  sub_1B8C09CF8(&qword_1EBAA6F30, type metadata accessor for AppInfoController);
  sub_1B8C23588();

  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  swift_getKeyPath();
  sub_1B8C09614(v5, v4, v6);
  sub_1B8C23588();

  v7 = a2[3];
  if (v4)
  {
    if (!v7 || ((v8 = a2[4], v5 != a2[2]) || v4 != v7) && (v9 = a2[3], (sub_1B8C25A08() & 1) == 0))
    {
      sub_1B8C09658(v5, v4, v6);
      v14 = 0;
      return v14 & 1;
    }

    sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);

    v10 = v8;
    v11 = sub_1B8C255E8();

    sub_1B8C09658(v5, v4, v6);
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  if (v7)
  {
    goto LABEL_11;
  }

LABEL_7:
  swift_getKeyPath();
  sub_1B8C23588();

  v13 = a1[5];
  v12 = a1[6];
  swift_getKeyPath();

  sub_1B8C23588();

  if (v13 == a2[5] && v12 == a2[6])
  {

    v14 = 1;
  }

  else
  {
    v14 = sub_1B8C25A08();
  }

  return v14 & 1;
}

void sub_1B8C09614(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v3 = a3;
  }
}

void sub_1B8C09658(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1B8C0969C()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 48);
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
}

void sub_1B8C096DC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  sub_1B8C09614(v1, v3, v4);
  sub_1B8C09658(v5, v6, v7);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B8C0976C(void *a1)
{
  v2 = 0xD000000000000021;
  v3 = sub_1B8C237B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - v9;
  sub_1B8C237C8();
  v11 = (*(v4 + 88))(v10, v3);
  if (v11 == *MEMORY[0x1E699C2E0] || v11 == *MEMORY[0x1E699C2B0])
  {
    v13 = "com.apple.MobileSMS";
    v2 = 0xD000000000000014;
LABEL_9:
    v14 = v13 | 0x8000000000000000;
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v15 = sub_1B8C23C38();
    __swift_project_value_buffer(v15, qword_1EBAB3A30);

    v16 = a1;
    v17 = sub_1B8C23C18();
    v18 = sub_1B8C25468();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v40 = v2;
      v20 = v19;
      v21 = swift_slowAlloc();
      v41 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_1B8B5DD48(v40, v14, &v41);
      *(v20 + 12) = 2082;
      sub_1B8C237C8();
      sub_1B8C09CF8(&qword_1EBAA6278, MEMORY[0x1E699C390]);
      v22 = sub_1B8C259E8();
      v24 = v23;
      (*(v4 + 8))(v8, v3);
      v25 = sub_1B8B5DD48(v22, v24, &v41);

      *(v20 + 14) = v25;
      _os_log_impl(&dword_1B8B22000, v17, v18, "Will use bundleID override for AppInfoController: %{public}s for feature domain: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CCB0E0](v21, -1, -1);
      v26 = v20;
      v2 = v40;
      MEMORY[0x1B8CCB0E0](v26, -1, -1);
    }

    return v2;
  }

  if (v11 == *MEMORY[0x1E699C308])
  {
    v13 = "For(interaction:)";
    v2 = 0xD000000000000013;
    goto LABEL_9;
  }

  (*(v4 + 8))(v10, v3);
  v28 = sub_1B8C23948();
  if (v29)
  {
    if (v28 == 0xD000000000000033 && v29 == 0x80000001B8C36B00)
    {

LABEL_20:
      if (qword_1EBAA5978 != -1)
      {
        swift_once();
      }

      v31 = sub_1B8C23C38();
      __swift_project_value_buffer(v31, qword_1EBAB3A30);
      v32 = sub_1B8C23C18();
      v33 = sub_1B8C25468();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v41 = v35;
        *v34 = 136446210;
        *(v34 + 4) = sub_1B8B5DD48(0xD000000000000021, 0x80000001B8C36B70, &v41);
        _os_log_impl(&dword_1B8B22000, v32, v33, "%{public}s - BundleID is GP extension, will override for GP app", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x1B8CCB0E0](v35, -1, -1);
        MEMORY[0x1B8CCB0E0](v34, -1, -1);
      }

      return v2;
    }

    v30 = sub_1B8C25A08();

    if (v30)
    {
      goto LABEL_20;
    }
  }

  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v36 = sub_1B8C23C38();
  __swift_project_value_buffer(v36, qword_1EBAB3A30);
  v37 = sub_1B8C23C18();
  v38 = sub_1B8C25468();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1B8B22000, v37, v38, "Will use bundleID provided for AppInfoController", v39, 2u);
    MEMORY[0x1B8CCB0E0](v39, -1, -1);
  }

  return 0;
}

uint64_t sub_1B8C09CF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8C09D74@<X0>(uint64_t a1@<X8>)
{
  sub_1B8C23DE8();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8728, &qword_1B8C2FC08) + 36));
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6788, &qword_1B8C2FC10) + 28);
  v4 = *MEMORY[0x1E697DC10];
  v5 = sub_1B8C23D88();
  (*(*(v5 - 8) + 104))(v2 + v3, v4, v5);
  result = swift_getKeyPath();
  *v2 = result;
  return result;
}

unint64_t sub_1B8C09E2C()
{
  result = qword_1EBAA8730;
  if (!qword_1EBAA8730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8728, &qword_1B8C2FC08);
    sub_1B8B34CFC(&qword_1EBAA7660, &qword_1EBAA6540, &qword_1B8C2C1B0);
    sub_1B8B34CFC(&qword_1EBAA67B0, &qword_1EBAA6788, &qword_1B8C2FC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8730);
  }

  return result;
}

uint64_t sub_1B8C09F10(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = 0xE600000000000000;
      v2 = 0x726564696C53;
    }

    else
    {
      v4 = 0xEA0000000000646CLL;
      v5 = 0x6569462074786554;
      v6 = 0xE900000000000065;
      v7 = 0x6D69542F65746144;
      v8 = 0xE400000000000000;
      v9 = 1701669204;
      if (a1 != 4)
      {
        v9 = 0x656C67676F54;
        v8 = 0xE600000000000000;
      }

      if (a1 != 3)
      {
        v7 = v9;
        v6 = v8;
      }

      v10 = 0x6572412074786554;
      v11 = 0xE900000000000061;
      if (a1 != 1)
      {
        v10 = 1702125892;
        v11 = 0xE400000000000000;
      }

      if (a1)
      {
        v5 = v10;
        v4 = v11;
      }

      v12 = a1 <= 2;
      if (a1 <= 2)
      {
        v2 = v5;
      }

      else
      {
        v2 = v7;
      }

      if (v12)
      {
        v3 = v4;
      }

      else
      {
        v3 = v6;
      }
    }
  }

  else
  {
    if (a2)
    {
      v2 = 0x656C7069746C754DLL;
    }

    else
    {
      v2 = 0xD00000000000001DLL;
    }

    if (a2)
    {
      v3 = 0xEF6563696F684320;
    }

    else
    {
      v3 = 0x80000001B8C36EC0;
    }
  }

  MEMORY[0x1B8CC9EB0](v2, v3);
}

Feedback::FBKFeedbackForm::AuthenticationMethod_optional __swiftcall FBKFeedbackForm.AuthenticationMethod.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t FBKFeedbackForm.Question.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 0x657275746165663ALL;
        goto LABEL_15;
      case 4:
        v3 = 0x6165665F6275733ALL;
        goto LABEL_15;
      case 5:
        v3 = 0xD000000000000012;
        goto LABEL_15;
    }

LABEL_12:
    v3 = *v0;
    goto LABEL_15;
  }

  if (!v2)
  {
    v3 = 0x656C7469743ALL;
    goto LABEL_15;
  }

  if (v2 == 1)
  {
    v3 = 0x616572613ALL;
    goto LABEL_15;
  }

  if (v2 != 2)
  {
    goto LABEL_12;
  }

  v3 = 0x706972637365643ALL;
LABEL_15:
  sub_1B8B5FB10(v1, v2);
  return v3;
}

uint64_t FBKFeedbackForm.Question.hash(into:)()
{
  v1 = v0[1];
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        v2 = 3;
        return MEMORY[0x1B8CCA790](v2);
      case 4:
        v2 = 4;
        return MEMORY[0x1B8CCA790](v2);
      case 5:
        v2 = 5;
        return MEMORY[0x1B8CCA790](v2);
    }
  }

  else
  {
    switch(v1)
    {
      case 0:
        v2 = 0;
        return MEMORY[0x1B8CCA790](v2);
      case 1:
        v2 = 1;
        return MEMORY[0x1B8CCA790](v2);
      case 2:
        v2 = 2;
        return MEMORY[0x1B8CCA790](v2);
    }
  }

  v3 = *v0;
  MEMORY[0x1B8CCA790](6);

  return sub_1B8C251B8();
}

uint64_t FBKFeedbackForm.Question.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B8C25AB8();
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 3;
        goto LABEL_15;
      case 4:
        v3 = 4;
        goto LABEL_15;
      case 5:
        v3 = 5;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        goto LABEL_15;
      case 1:
        v3 = 1;
        goto LABEL_15;
      case 2:
        v3 = 2;
LABEL_15:
        MEMORY[0x1B8CCA790](v3);
        return sub_1B8C25AF8();
    }
  }

  MEMORY[0x1B8CCA790](6);
  sub_1B8C251B8();
  return sub_1B8C25AF8();
}

uint64_t sub_1B8C0A3A4()
{
  v1 = v0[1];
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        v2 = 3;
        return MEMORY[0x1B8CCA790](v2);
      case 4:
        v2 = 4;
        return MEMORY[0x1B8CCA790](v2);
      case 5:
        v2 = 5;
        return MEMORY[0x1B8CCA790](v2);
    }
  }

  else
  {
    switch(v1)
    {
      case 0:
        v2 = 0;
        return MEMORY[0x1B8CCA790](v2);
      case 1:
        v2 = 1;
        return MEMORY[0x1B8CCA790](v2);
      case 2:
        v2 = 2;
        return MEMORY[0x1B8CCA790](v2);
    }
  }

  v3 = *v0;
  MEMORY[0x1B8CCA790](6);

  return sub_1B8C251B8();
}

uint64_t sub_1B8C0A474()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B8C25AB8();
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 3;
        goto LABEL_15;
      case 4:
        v3 = 4;
        goto LABEL_15;
      case 5:
        v3 = 5;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        goto LABEL_15;
      case 1:
        v3 = 1;
        goto LABEL_15;
      case 2:
        v3 = 2;
LABEL_15:
        MEMORY[0x1B8CCA790](v3);
        return sub_1B8C25AF8();
    }
  }

  MEMORY[0x1B8CCA790](6);
  sub_1B8C251B8();
  return sub_1B8C25AF8();
}

unint64_t sub_1B8C0A550()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 0x657275746165663ALL;
        goto LABEL_15;
      case 4:
        v3 = 0x6165665F6275733ALL;
        goto LABEL_15;
      case 5:
        v3 = 0xD000000000000012;
        goto LABEL_15;
    }

LABEL_12:
    v3 = *v0;
    goto LABEL_15;
  }

  if (!v2)
  {
    v3 = 0x656C7469743ALL;
    goto LABEL_15;
  }

  if (v2 == 1)
  {
    v3 = 0x616572613ALL;
    goto LABEL_15;
  }

  if (v2 != 2)
  {
    goto LABEL_12;
  }

  v3 = 0x706972637365643ALL;
LABEL_15:
  sub_1B8B5FB10(v1, v2);
  return v3;
}

uint64_t sub_1B8C0A664(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1B8C0A6D0()
{
  v1 = (v0 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1B8C0A734@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1B8C0A788(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1B8C0A838(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
}

uint64_t sub_1B8C0A8A8(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1B8C0A8EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*sub_1B8C0A9C4(uint64_t a1))()
{
  v2 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__hideAttachmentButton;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1B8C187F8;
}

uint64_t (*sub_1B8C0AA18(uint64_t a1))()
{
  v2 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__disableAccountSwitching;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1B8C187F8;
}

uint64_t (*sub_1B8C0AA6C(uint64_t a1))()
{
  v2 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showInlineUserInfo;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1B8C187F8;
}

uint64_t (*sub_1B8C0AAC0(uint64_t a1))()
{
  v2 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showUserSwitcherLast;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1B8C187F8;
}

uint64_t (*sub_1B8C0AB14(uint64_t a1))()
{
  v2 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__alternateImagePreviewEnabled;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1B8C187F8;
}

uint64_t (*sub_1B8C0AB68(uint64_t a1))()
{
  v2 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__useInlineChoices;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1B8C187F8;
}

uint64_t sub_1B8C0AB9C()
{
  result = *(v0 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__maxInlineChoices);
  v2 = *(v0 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__maxInlineChoices + 8);
  return result;
}

uint64_t sub_1B8C0ABB4(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__maxInlineChoices;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t (*sub_1B8C0ABD0(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__maxInlineChoices;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  v3 = (v1 + v2);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a1 = v4;
  *(a1 + 8) = v3;
  return sub_1B8C0AC10;
}

uint64_t sub_1B8C0AC10(uint64_t result)
{
  v1 = *(result + 16) + *(result + 24);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void (*sub_1B8C0AC4C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__onBoardingKitIdentifier;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_1B8C0ACEC;
}

void sub_1B8C0ACEC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = (*(*a1 + 40) + *(*a1 + 48));
  v6 = v5[1];
  *v5 = v3;
  v5[1] = v4;
  if (a2)
  {

    v7 = v2[4];
  }

  free(v2);
}

uint64_t sub_1B8C0ADC8()
{
  v1 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_autoGathersDiagnosticExtensions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B8C0AE0C(char a1)
{
  v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_autoGathersDiagnosticExtensions;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B8C0AEBC()
{
  v1 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_allowsAttachmentDragAndDrop;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B8C0AF00(char a1)
{
  v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_allowsAttachmentDragAndDrop;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_1B8C0AFB0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v48 = a2;
  v7 = sub_1B8C23498();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v47 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  if (qword_1EBAA5970 != -1)
  {
    swift_once();
  }

  v14 = sub_1B8C23C38();
  __swift_project_value_buffer(v14, qword_1EBAB3A18);
  v45 = *(v8 + 16);
  v45(v13, a1, v7);

  v15 = sub_1B8C23C18();
  v16 = sub_1B8C25498();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v44 = v3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v46 = v7;
    v20 = v19;
    v49[0] = v19;
    *v18 = 136446723;
    *(v18 + 4) = sub_1B8B5DD48(0xD000000000000028, 0x80000001B8C36BE0, v49);
    *(v18 + 12) = 2082;
    v21 = sub_1B8C233D8();
    v43 = a1;
    v23 = v22;
    (*(v8 + 8))(v13, v46);
    v24 = sub_1B8B5DD48(v21, v23, v49);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2081;
    if (a3)
    {
      v25 = v48;
    }

    else
    {
      v25 = 0;
    }

    if (a3)
    {
      v26 = a3;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    v27 = sub_1B8B5DD48(v25, v26, v49);
    a1 = v43;

    *(v18 + 24) = v27;
    _os_log_impl(&dword_1B8B22000, v15, v16, "%{public}s [%{public}s] [%{private}s]", v18, 0x20u);
    swift_arrayDestroy();
    v28 = v20;
    v7 = v46;
    MEMORY[0x1B8CCB0E0](v28, -1, -1);
    v29 = v18;
    v4 = v44;
    MEMORY[0x1B8CCB0E0](v29, -1, -1);

    if (a3)
    {
      goto LABEL_11;
    }
  }

  else
  {

    (*(v8 + 8))(v13, v7);
    if (a3)
    {
LABEL_11:
      v30 = objc_allocWithZone(MEMORY[0x1E699C128]);
      v31 = sub_1B8C250F8();
      v32 = sub_1B8C233E8();
      v33 = [v30 initWithDescription:v31 URL:v32];

      v34 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachmentDescriptors;
      swift_beginAccess();
      v35 = v33;
      MEMORY[0x1B8CC9F70]();
      if (*((*(v4 + v34) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v34) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v41 = *((*(v4 + v34) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1B8C252E8();
      }

      sub_1B8C25308();
      swift_endAccess();

      return;
    }
  }

  v45(v47, a1, v7);
  v36 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments;
  swift_beginAccess();
  v37 = *(v4 + v36);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v36) = v37;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v37 = sub_1B8B5D3EC(0, v37[2] + 1, 1, v37);
    *(v4 + v36) = v37;
  }

  v40 = v37[2];
  v39 = v37[3];
  if (v40 >= v39 >> 1)
  {
    v37 = sub_1B8B5D3EC(v39 > 1, v40 + 1, 1, v37);
  }

  v37[2] = v40 + 1;
  (*(v8 + 32))(v37 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v40, v47, v7);
  *(v4 + v36) = v37;
}

void sub_1B8C0B47C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_1EBAA5970 != -1)
  {
    swift_once();
  }

  v10 = sub_1B8C23C38();
  __swift_project_value_buffer(v10, qword_1EBAB3A18);

  v11 = sub_1B8C23C18();
  v12 = sub_1B8C25498();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136446723;
    *(v13 + 4) = sub_1B8B5DD48(0xD00000000000004BLL, 0x80000001B8C36C10, v22);
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_1B8B5DD48(a3, a4, v22);
    *(v13 + 22) = 2081;
    *(v13 + 24) = sub_1B8B5DD48(a1, a2, v22);
    _os_log_impl(&dword_1B8B22000, v11, v12, "%{public}s [%{public}s] [%{private}s]", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v14, -1, -1);
    MEMORY[0x1B8CCB0E0](v13, -1, -1);
  }

  v15 = objc_allocWithZone(MEMORY[0x1E699C128]);
  v16 = sub_1B8C250F8();
  v17 = sub_1B8C250F8();
  v18 = [v15 initWithDescription:v16 diagnosticExtensionIdentifier:v17];

  v19 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachmentDescriptors;
  swift_beginAccess();
  v20 = v18;
  MEMORY[0x1B8CC9F70]();
  if (*((*(v5 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v21 = *((*(v5 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1B8C252E8();
  }

  sub_1B8C25308();
  swift_endAccess();
}

void sub_1B8C0B794(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttributedLegalString;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1B8C0B7F4()
{
  v1 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttributedLegalString;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B8C0B840(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttributedLegalString;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*sub_1B8C0B918(uint64_t a1))()
{
  v2 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__enableTwoColumnCheckboxes;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1B8C187F8;
}

uint64_t sub_1B8C0B94C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon);
  v2 = *(v0 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon + 8);

  return v1;
}

uint64_t sub_1B8C0B988(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon);
  v4 = *(v2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon + 8);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t (*sub_1B8C0B9A4(void *a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon;
  a1[2] = v1;
  a1[3] = v3;
  v4 = (v1 + v3);
  v5 = v4[1];
  *a1 = *v4;
  a1[1] = v5;

  return sub_1B8C0BA00;
}

uint64_t sub_1B8C0BA00(uint64_t a1)
{
  v1 = *(a1 + 16) + *(a1 + 24);
  v2 = *(v1 + 8);
  *v1 = *a1;
}

uint64_t sub_1B8C0BA1C()
{
  v1 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_alwaysDeletesDrafts;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B8C0BA60(char a1)
{
  v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_alwaysDeletesDrafts;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B8C0BB10()
{
  v1 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_launchedInBatchMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_1B8C0BB74(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__displayTitle;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1B8C0BBA8;
}

id FBKFeedbackForm.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod] = 2;
  v5 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachmentDescriptors] = MEMORY[0x1E69E7CC0];
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__hideAttachmentButton] = 0;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__disableAccountSwitching] = 0;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showInlineUserInfo] = 0;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showUserSwitcherLast] = 0;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__alternateImagePreviewEnabled] = 0;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__useInlineChoices] = 0;
  v6 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__maxInlineChoices];
  *v6 = 10;
  v6[8] = 0;
  v7 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__onBoardingKitIdentifier];
  *v7 = 0;
  v7[1] = 0;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formResponses] = 0;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_autoGathersDiagnosticExtensions] = 1;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_allowsAttachmentDragAndDrop] = 1;
  v8 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttachmentLegalText];
  *v8 = 0;
  v8[1] = 0;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttributedLegalString] = 0;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__enableTwoColumnCheckboxes] = 0;
  v9 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon];
  *v9 = 0;
  v9[1] = 0;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_alwaysDeletesDrafts] = 0;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__displayTitle] = 0;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_sandboxExtensionAttachments] = v5;
  v10 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId];
  *v10 = 0;
  v10[8] = 1;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_plugFormIds] = 0;
  v11 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment];
  *v11 = 0;
  v11[2] = 1;
  v12 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_host];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_appToken];
  *v13 = 0;
  v13[1] = 0;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers] = sub_1B8B5F5B0(v5);
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments] = v5;
  v14 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
  *v14 = a1;
  v14[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8828, &unk_1B8C2FC50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8C27920;
  *(inited + 32) = sub_1B8C23998();
  *(inited + 40) = v16;
  *(inited + 48) = sub_1B8C23988();
  *(inited + 56) = v17;
  v18 = [objc_opt_self() mainBundle];
  v19 = [v18 bundleIdentifier];

  if (v19)
  {
    v21 = sub_1B8C25128();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v29[0] = v21;
  v29[1] = v23;
  MEMORY[0x1EEE9AC00](v20);
  v27[2] = v29;
  v24 = sub_1B8C146D8(sub_1B8C14A04, v27, inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA8830, &unk_1B8C2B630);
  swift_arrayDestroy();

  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_launchedInBatchMode] = v24 & 1;
  v25 = type metadata accessor for FBKFeedbackForm();
  v28.receiver = v2;
  v28.super_class = v25;
  return objc_msgSendSuper2(&v28, sel_init);
}

uint64_t sub_1B8C0BEEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = a1[1];
  v9 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  swift_beginAccess();
  v10 = *(v3 + v9);
  if (!*(v10 + 16))
  {
    goto LABEL_9;
  }

  v11 = sub_1B8B5E354(v7, v8);
  if ((v12 & 1) == 0)
  {

LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B8C2A740;
    *(v13 + 32) = a2;
    *(v13 + 40) = a3;
    swift_beginAccess();

    goto LABEL_10;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1B8B5D1AC(0, *(v13 + 16) + 1, 1, v13);
  }

  v15 = *(v13 + 16);
  v14 = *(v13 + 24);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1B8B5D1AC((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 16) = v15 + 1;
  v16 = v13 + 16 * v15;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  swift_beginAccess();
LABEL_10:
  sub_1B8B5FB10(v7, v8);
  v17 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v4 + v9);
  *(v4 + v9) = 0x8000000000000000;
  sub_1B8B5F0C4(v13, v7, v8, isUniquelyReferenced_nonNull_native);
  sub_1B8B5E4C4(v7, v8);
  *(v4 + v9) = v20;
  return swift_endAccess();
}

uint64_t sub_1B8C0C0D0()
{
  v1 = (v0 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1B8C0C11C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1B8C0C1E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_plugFormIds;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B8C0C2A0()
{
  v1 = (v0 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment);
  swift_beginAccess();
  return *v1 | (*(v1 + 2) << 16);
}

uint64_t sub_1B8C0C2F0(int a1)
{
  v3 = v1 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment;
  result = swift_beginAccess();
  *v3 = a1;
  *(v3 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t sub_1B8C0C41C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_1B8C0C490(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_1B8C0C4F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

char *FBKFeedbackForm.__allocating_init(formId:plugFormIds:environment:host:appToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = objc_allocWithZone(type metadata accessor for FBKFeedbackForm());
  v15 = FBKFeedbackForm.init(identifier:)(0, 0xE000000000000000);
  sub_1B8B46130(0, &qword_1EBAA8840, 0x1E699C158);
  v16 = v15;
  v17 = sub_1B8C25578();

  v18 = &v16[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment];
  swift_beginAccess();
  *v18 = v17;
  v18[2] = BYTE2(v17) & 1;
  v19 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_plugFormIds;
  swift_beginAccess();
  v20 = *&v16[v19];
  *&v16[v19] = a2;

  v21 = &v16[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId];
  swift_beginAccess();
  *v21 = a1;
  v21[8] = 0;
  v22 = &v16[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_host];
  swift_beginAccess();
  v23 = *(v22 + 1);
  *v22 = a5;
  *(v22 + 1) = a6;

  v24 = &v16[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_appToken];
  swift_beginAccess();
  v25 = *(v24 + 1);
  *v24 = a7;
  *(v24 + 1) = a8;

  return v16;
}

uint64_t sub_1B8C0C758(void *a1)
{
  v4 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v138 = v1;
  v139 = v5;

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC8];
  if (v9)
  {
    while (1)
    {
      v13 = v11;
LABEL_8:
      v14 = __clz(__rbit64(v9)) | (v13 << 6);
      v15 = (*(v139 + 48) + 16 * v14);
      v2 = *v15;
      v16 = v15[1];
      if (v16 > 2)
      {
        if (v16 == 3)
        {
          v17 = 0x657275746165663ALL;
          v19 = 0xEF6E69616D6F645FLL;
          goto LABEL_23;
        }

        if (v16 != 4)
        {
          if (v16 == 5)
          {
            v17 = 0xD000000000000012;
            v19 = 0x80000001B8C33DC0;
            goto LABEL_23;
          }

LABEL_19:
          v17 = *v15;
          v19 = v15[1];
          goto LABEL_23;
        }

        v17 = 0x6165665F6275733ALL;
        v18 = 1701999988;
      }

      else
      {
        if (!v16)
        {
          v19 = 0xE600000000000000;
          v17 = 0x656C7469743ALL;
          goto LABEL_23;
        }

        if (v16 == 1)
        {
          v19 = 0xE500000000000000;
          v17 = 0x616572613ALL;
          goto LABEL_23;
        }

        if (v16 != 2)
        {
          goto LABEL_19;
        }

        v17 = 0x706972637365643ALL;
        v18 = 1852795252;
      }

      v19 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_23:
      v20 = *(*(v139 + 56) + 8 * v14);

      sub_1B8B5FB10(v2, v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v141 = v12;
      v21 = sub_1B8B5E2DC(v17, v19);
      v23 = v12[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_70;
      }

      v2 = v22;
      if (v12[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = v21;
          sub_1B8B94684();
          v21 = isUniquelyReferenced_nonNull_native;
        }
      }

      else
      {
        sub_1B8B93390(v26, isUniquelyReferenced_nonNull_native);
        v21 = sub_1B8B5E2DC(v17, v19);
        if ((v2 & 1) != (v27 & 1))
        {
          result = sub_1B8C25A58();
          __break(1u);
          return result;
        }
      }

      v9 &= v9 - 1;
      if (v2)
      {
        v28 = v21;

        v12 = v141;
        v29 = v141[7];
        v30 = *(v29 + 8 * v28);
        *(v29 + 8 * v28) = v20;

        v11 = v13;
        if (!v9)
        {
          break;
        }
      }

      else
      {
        v12 = v141;
        v141[(v21 >> 6) + 8] |= 1 << v21;
        v31 = (v12[6] + 16 * v21);
        *v31 = v17;
        v31[1] = v19;
        *(v12[7] + 8 * v21) = v20;
        v32 = v12[2];
        v25 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v25)
        {
          goto LABEL_71;
        }

        v12[2] = v33;
        v11 = v13;
        if (!v9)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7478, &qword_1B8C2BC80);
      v34 = sub_1B8C25088();

      v35 = sub_1B8C250F8();
      v2 = &off_1E7EB6000;
      v9 = a1;
      [a1 encodeObject:v34 forKey:v35];

      isUniquelyReferenced_nonNull_native = v138;
      v36 = (v138 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier);
      swift_beginAccess();
      v38 = *v36;
      v37 = v36[1];

      v39 = sub_1B8C250F8();

      v40 = sub_1B8C250F8();
      [a1 encodeObject:v39 forKey:v40];

      v41 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
      swift_beginAccess();
      v42 = *(v138 + v41);
      v43 = sub_1B8C250F8();
      [a1 encodeInteger:v42 forKey:v43];

      v44 = *(v138 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_sandboxExtensionAttachments);
      type metadata accessor for SandboxExtensionURL();

      v45 = sub_1B8C252B8();

      v46 = sub_1B8C250F8();
      [a1 encodeObject:v45 forKey:v46];

      v47 = (v138 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttachmentLegalText);
      swift_beginAccess();
      if (v47[1])
      {
        v48 = *v47;

        v49 = sub_1B8C250F8();
      }

      else
      {
        v49 = 0;
      }

      v50 = sub_1B8C250F8();
      [a1 encodeObject:v49 forKey:v50];
      swift_unknownObjectRelease();

      v51 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttributedLegalString;
      swift_beginAccess();
      v52 = *(v138 + v51);
      v53 = sub_1B8C250F8();
      [a1 encodeObject:v52 forKey:v53];

      v54 = *(v138 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__displayTitle);
      v55 = sub_1B8C250F8();
      [a1 encodeBool:v54 forKey:v55];

      if (*(v138 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon + 8))
      {
        v56 = *(v138 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon);
        v57 = *(v138 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon + 8);

        v58 = sub_1B8C250F8();
      }

      else
      {
        v58 = 0;
      }

      v59 = sub_1B8C250F8();
      [a1 encodeObject:v58 forKey:v59];
      swift_unknownObjectRelease();

      v60 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachmentDescriptors;
      swift_beginAccess();
      v61 = *(v138 + v60);
      sub_1B8B46130(0, &qword_1EBAA8850, 0x1E699C128);

      v62 = sub_1B8C252B8();

      v63 = sub_1B8C250F8();
      [a1 encodeObject:v62 forKey:v63];

      v64 = *(v138 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__hideAttachmentButton);
      v65 = sub_1B8C250F8();
      [a1 encodeBool:v64 forKey:v65];

      v66 = *(v138 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__disableAccountSwitching);
      v67 = sub_1B8C250F8();
      [a1 encodeBool:v66 forKey:v67];

      v68 = *(v138 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__alternateImagePreviewEnabled);
      v69 = sub_1B8C250F8();
      [a1 encodeBool:v68 forKey:v69];

      v70 = *(v138 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showInlineUserInfo);
      v71 = sub_1B8C250F8();
      [a1 encodeBool:v70 forKey:v71];

      v72 = *(v138 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showUserSwitcherLast);
      v73 = sub_1B8C250F8();
      [a1 encodeBool:v72 forKey:v73];

      v74 = *(v138 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__useInlineChoices);
      v75 = sub_1B8C250F8();
      [a1 encodeBool:v74 forKey:v75];

      v76 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_alwaysDeletesDrafts;
      swift_beginAccess();
      v77 = *(v138 + v76);
      v78 = sub_1B8C250F8();
      [a1 encodeBool:v77 forKey:v78];

      v79 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_launchedInBatchMode;
      swift_beginAccess();
      v80 = *(v138 + v79);
      v81 = sub_1B8C250F8();
      [a1 encodeBool:v80 forKey:v81];

      v82 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_autoGathersDiagnosticExtensions;
      swift_beginAccess();
      v83 = *(v138 + v82);
      v84 = sub_1B8C250F8();
      [a1 encodeBool:v83 forKey:v84];

      v85 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_allowsAttachmentDragAndDrop;
      swift_beginAccess();
      v86 = *(v138 + v85);
      v87 = sub_1B8C250F8();
      [a1 encodeBool:v86 forKey:v87];

      v88 = (v138 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__onBoardingKitIdentifier);
      swift_beginAccess();
      if (v88[1])
      {
        v89 = *v88;

        v90 = sub_1B8C250F8();

        v91 = sub_1B8C250F8();
        [a1 encodeObject:v90 forKey:v91];
      }

      if ((*(v138 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__maxInlineChoices + 8) & 1) == 0)
      {
        v92 = *(v138 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__maxInlineChoices);
        v93 = sub_1B8C250F8();
        [a1 encodeInteger:v92 forKey:v93];
      }

      v94 = sub_1B8C231E8();
      v95 = *(v94 + 48);
      v96 = *(v94 + 52);
      swift_allocObject();
      sub_1B8C231D8();
      v97 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formResponses;
      swift_beginAccess();
      if (*(v138 + v97))
      {
        v140 = *(v138 + v97);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8858, &unk_1B8C2FC60);
        sub_1B8C14A48();
        v113 = sub_1B8C231C8();
        v115 = v114;

        v116 = sub_1B8C234A8();
        v117 = sub_1B8C250F8();
        [a1 encodeObject:v116 forKey:v117];

        sub_1B8B4645C(v113, v115);
        goto LABEL_55;
      }

      if (qword_1EBAA5970 != -1)
      {
        swift_once();
      }

      v110 = sub_1B8C23C38();
      __swift_project_value_buffer(v110, qword_1EBAB3A18);
      v100 = sub_1B8C23C18();
      v111 = sub_1B8C25468();
      if (os_log_type_enabled(v100, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 0;
        _os_log_impl(&dword_1B8B22000, v100, v111, "No FBKFeedbackForm.FormResponses", v112, 2u);
        MEMORY[0x1B8CCB0E0](v112, -1, -1);
      }

      goto LABEL_54;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  swift_once();
  v98 = sub_1B8C23C38();
  __swift_project_value_buffer(v98, qword_1EBAB3A18);
  v99 = v13;
  v100 = sub_1B8C23C18();
  v101 = sub_1B8C25478();

  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v103 = v2;
    v104 = swift_slowAlloc();
    v140 = v104;
    *v102 = 136446210;
    v105 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
    v106 = sub_1B8C25178();
    v108 = sub_1B8B5DD48(v106, v107, &v140);

    *(v102 + 4) = v108;
    isUniquelyReferenced_nonNull_native = v138;
    _os_log_impl(&dword_1B8B22000, v100, v101, "Failed to JSON encode FormResponses in FBKFeedbackForm: %{public}s", v102, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v104);
    v109 = v104;
    v2 = v103;
    MEMORY[0x1B8CCB0E0](v109, -1, -1);
    MEMORY[0x1B8CCB0E0](v102, -1, -1);

    goto LABEL_55;
  }

LABEL_54:
LABEL_55:
  if (MEMORY[0x1B8CCA870]())
  {
    v118 = isUniquelyReferenced_nonNull_native + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId;
    swift_beginAccess();
    if ((*(v118 + 8) & 1) == 0)
    {
      v119 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      v120 = sub_1B8C250F8();
      [v9 *(v2 + 2952)];
    }

    v121 = (isUniquelyReferenced_nonNull_native + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment);
    swift_beginAccess();
    if ((v121[1] & 1) == 0)
    {
      v122 = MEMORY[0x1B8CCA890](*v121);
      if (!v122)
      {
        sub_1B8C25128();
        v122 = sub_1B8C250F8();
      }

      v123 = sub_1B8C250F8();
      [v9 *(v2 + 2952)];
    }

    v124 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_plugFormIds;
    swift_beginAccess();
    if (*(isUniquelyReferenced_nonNull_native + v124))
    {
      v125 = *(isUniquelyReferenced_nonNull_native + v124);

      v126 = sub_1B8C252B8();

      v127 = sub_1B8C250F8();
      [v9 *(v2 + 2952)];
    }

    v128 = (isUniquelyReferenced_nonNull_native + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_host);
    swift_beginAccess();
    if (v128[1])
    {
      v129 = *v128;

      v130 = sub_1B8C250F8();

      v131 = sub_1B8C250F8();
      [v9 *(v2 + 2952)];
    }

    v132 = (isUniquelyReferenced_nonNull_native + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_appToken);
    swift_beginAccess();
    if (v132[1])
    {
      v133 = *v132;

      v134 = sub_1B8C250F8();

      v135 = sub_1B8C250F8();
      [v9 *(v2 + 2952)];
    }
  }
}

uint64_t FBKFeedbackForm.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod] = 2;
  v5 = MEMORY[0x1E69E7CC0];
  v196 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachmentDescriptors;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachmentDescriptors] = MEMORY[0x1E69E7CC0];
  v204 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__hideAttachmentButton;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__hideAttachmentButton] = 0;
  v205 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__disableAccountSwitching;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__disableAccountSwitching] = 0;
  v213 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showInlineUserInfo;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showInlineUserInfo] = 0;
  v217 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showUserSwitcherLast;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showUserSwitcherLast] = 0;
  v207 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__alternateImagePreviewEnabled;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__alternateImagePreviewEnabled] = 0;
  v209 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__useInlineChoices;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__useInlineChoices] = 0;
  v6 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__maxInlineChoices];
  *v6 = 10;
  v211 = v6;
  v6[8] = 0;
  v7 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__onBoardingKitIdentifier];
  *v7 = 0;
  v7[1] = 0;
  v223 = v7;
  v192 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formResponses;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formResponses] = 0;
  v219 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_autoGathersDiagnosticExtensions;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_autoGathersDiagnosticExtensions] = 1;
  v221 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_allowsAttachmentDragAndDrop;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_allowsAttachmentDragAndDrop] = 1;
  v8 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttachmentLegalText];
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttributedLegalString;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttributedLegalString] = 0;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__enableTwoColumnCheckboxes] = 0;
  v10 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon];
  *v10 = 0;
  v10[1] = 0;
  v215 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_alwaysDeletesDrafts;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_alwaysDeletesDrafts] = 0;
  v202 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__displayTitle;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__displayTitle] = 0;
  v11 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_sandboxExtensionAttachments;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_sandboxExtensionAttachments] = v5;
  v12 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId];
  *v12 = 0;
  v194 = v12;
  v12[8] = 1;
  v191 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_plugFormIds;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_plugFormIds] = 0;
  v13 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment];
  *v13 = 0;
  v193 = v13;
  v13[2] = 1;
  v14 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_host];
  *v14 = 0;
  v14[1] = 0;
  v199 = v14;
  v15 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_appToken];
  *v15 = 0;
  v15[1] = 0;
  v198 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA7DE0, &unk_1B8C2FC70);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B8C293F0;
  *(v16 + 32) = sub_1B8B46130(0, &unk_1EBAA8870, 0x1E695DF20);
  v226 = sub_1B8B46130(0, &qword_1EBAA72F0, 0x1E695DEC8);
  *(v16 + 40) = v226;
  *(v16 + 48) = sub_1B8B46130(0, &qword_1EBAA72A0, 0x1E696AEC0);
  sub_1B8C255B8();

  if (!v235)
  {
    goto LABEL_174;
  }

  sub_1B8B5FE40(&v234, &v236);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA86A0, &qword_1B8C2F690);
  swift_dynamicCast();
  v201 = v233;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers] = MEMORY[0x1E69E7CC8];
  v17 = sub_1B8C255A8();
  if (!v17)
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v18 = v17;
  v19 = sub_1B8C25128();
  v21 = v20;

  v22 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
  *v22 = v19;
  v22[1] = v21;
  v23 = sub_1B8C250F8();
  v24 = [a1 decodeIntegerForKey_];

  if (v24 >= 3)
  {
    LOBYTE(v24) = 1;
  }

  swift_beginAccess();
  v2[v4] = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B8C27920;
  *(v25 + 32) = v226;
  *(v25 + 40) = type metadata accessor for SandboxExtensionURL();
  sub_1B8C255B8();

  if (!v235)
  {
LABEL_176:
    __break(1u);
LABEL_177:
    result = sub_1B8C25A58();
    __break(1u);
    return result;
  }

  v26 = a1;
  sub_1B8B5FE40(&v234, &v236);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8880, &unk_1B8C2FC80);
  swift_dynamicCast();
  v27 = *&v2[v11];
  *&v2[v11] = v232;

  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments] = MEMORY[0x1E69E7CC0];
  v28 = sub_1B8C255A8();
  if (v28)
  {
    v29 = v28;
    v30 = sub_1B8C25128();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  swift_beginAccess();
  v33 = v8[1];
  *v8 = v30;
  v8[1] = v32;

  sub_1B8B46130(0, &unk_1EBAA8888, 0x1E696AAB0);
  v34 = sub_1B8C255A8();
  swift_beginAccess();
  v35 = *&v2[v9];
  *&v2[v9] = v34;

  v36 = sub_1B8C255A8();
  if (v36)
  {
    v37 = v36;
    v38 = sub_1B8C25128();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  v41 = v10[1];
  *v10 = v38;
  v10[1] = v40;

  v42 = sub_1B8C250F8();
  v43 = &selRef_addChildViewController_;
  v44 = [v26 decodeBoolForKey_];

  v2[v202] = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1B8C27920;
  *(v45 + 32) = v226;
  *(v45 + 40) = sub_1B8B46130(0, &qword_1EBAA8850, 0x1E699C128);
  sub_1B8C255B8();

  v46 = 0x1EBAA5000uLL;
  if (!v237)
  {
    sub_1B8BC0224(&v236);
LABEL_16:
    if (qword_1EBAA5970 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA88C0, &qword_1B8C2FC98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v47 = *&v2[v196];
  *&v2[v196] = v231;

  while (1)
  {
    v52 = sub_1B8C250F8();
    v53 = [v26 *(v43 + 632)];

    v2[v204] = v53;
    v54 = sub_1B8C250F8();
    v55 = [v26 *(v43 + 632)];

    v2[v205] = v55;
    v56 = sub_1B8C250F8();
    v57 = [v26 *(v43 + 632)];

    v2[v207] = v57;
    v58 = sub_1B8C250F8();
    v59 = [v26 *(v43 + 632)];

    v2[v209] = v59;
    v60 = sub_1B8C250F8();
    v61 = [v26 decodeIntegerForKey_];

    *v211 = v61;
    v211[8] = 0;
    v62 = sub_1B8C250F8();
    LOBYTE(v61) = [v26 *(v43 + 632)];

    v2[v213] = v61;
    v63 = sub_1B8C250F8();
    LOBYTE(v61) = [v26 *(v43 + 632)];

    v2[v217] = v61;
    v64 = sub_1B8C250F8();
    LOBYTE(v61) = [v26 *(v43 + 632)];

    swift_beginAccess();
    v2[v215] = v61;
    v65 = sub_1B8C250F8();
    LOBYTE(v61) = [v26 *(v43 + 632)];

    v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_launchedInBatchMode] = v61;
    v66 = sub_1B8C250F8();
    LOBYTE(v61) = [v26 *(v43 + 632)];

    swift_beginAccess();
    v2[v219] = v61;
    v67 = sub_1B8C250F8();
    LOBYTE(v61) = [v26 *(v43 + 632)];

    swift_beginAccess();
    v2[v221] = v61;
    v68 = sub_1B8C255A8();
    if (v68)
    {
      v69 = v68;
      v70 = sub_1B8C25128();
      v72 = v71;
    }

    else
    {
      v70 = 0;
      v72 = 0;
    }

    swift_beginAccess();
    v73 = v223[1];
    *v223 = v70;
    v223[1] = v72;

    sub_1B8B46130(0, &qword_1EBAA8898, 0x1E695DEF0);
    v203 = v26;
    v197 = sub_1B8C255A8();
    if (v197)
    {
      v74 = sub_1B8C234B8();
      v76 = v75;
      v77 = sub_1B8C231B8();
      v78 = *(v77 + 48);
      v79 = *(v77 + 52);
      swift_allocObject();
      sub_1B8C231A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8858, &unk_1B8C2FC60);
      sub_1B8C14B20();
      sub_1B8C23198();
      sub_1B8B4645C(v74, v76);

      v84 = v236;
      swift_beginAccess();
      v85 = *&v2[v192];
      *&v2[v192] = v84;

      if (!MEMORY[0x1B8CCA870](v86))
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (*(v46 + 2416) != -1)
      {
        swift_once();
      }

      v80 = sub_1B8C23C38();
      __swift_project_value_buffer(v80, qword_1EBAB3A18);
      v81 = sub_1B8C23C18();
      v82 = sub_1B8C25468();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_1B8B22000, v81, v82, "No formResponsesJSONData", v83, 2u);
        MEMORY[0x1B8CCB0E0](v83, -1, -1);
      }

      if (!MEMORY[0x1B8CCA870]())
      {
        goto LABEL_64;
      }
    }

    v88 = sub_1B8C255A8();
    if (v88)
    {
      v89 = v88;
      sub_1B8C25128();

      sub_1B8B46130(0, &qword_1EBAA8840, 0x1E699C158);
      LODWORD(v89) = sub_1B8C25578();

      swift_beginAccess();
      *v193 = v89;
      v193[2] = BYTE2(v89) & 1;
    }

    v90 = sub_1B8C255A8();
    if (v90)
    {
      v91 = v90;
      v92 = sub_1B8C25128();
      v94 = v93;
    }

    else
    {
      v92 = 0;
      v94 = 0;
    }

    swift_beginAccess();
    v95 = v199[1];
    *v199 = v92;
    v199[1] = v94;

    v96 = sub_1B8B46130(0, &qword_1EBAA88A0, 0x1E696AD98);
    v97 = sub_1B8C255A8();
    if (v97)
    {
      v98 = v97;
      v99 = [v97 unsignedIntegerValue];

      swift_beginAccess();
      *v194 = v99;
      v194[8] = 0;
    }

    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_1B8C27920;
    *(v100 + 32) = v226;
    *(v100 + 40) = v96;
    sub_1B8C255B8();

    if (!v237)
    {
      sub_1B8BC0224(&v236);
      goto LABEL_60;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA88A8, &qword_1B8C2FC90);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_60;
    }

    if (v229 >> 62)
    {
      break;
    }

    v26 = *((v229 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_58;
    }

LABEL_43:
    *&v236 = MEMORY[0x1E69E7CC0];
    sub_1B8C1408C(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      goto LABEL_173;
    }

    v101 = 0;
    v102 = v236;
    while (1)
    {
      v103 = (v229 & 0xC000000000000001) != 0 ? MEMORY[0x1B8CCA4C0](v101) : *(v229 + 8 * v101 + 32);
      v104 = v103;
      v43 = [v103 integerValue];

      if ((v43 & 0x8000000000000000) != 0)
      {
        break;
      }

      *&v236 = v102;
      v106 = *(v102 + 16);
      v105 = *(v102 + 24);
      v46 = v106 + 1;
      if (v106 >= v105 >> 1)
      {
        sub_1B8C1408C((v105 > 1), v106 + 1, 1);
        v102 = v236;
      }

      ++v101;
      *(v102 + 16) = v46;
      *(v102 + 8 * v106 + 32) = v43;
      if (v26 == v101)
      {

        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_56:
    swift_once();
LABEL_17:
    v48 = sub_1B8C23C38();
    __swift_project_value_buffer(v48, qword_1EBAB3A18);
    v49 = sub_1B8C23C18();
    v50 = sub_1B8C25478();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1B8B22000, v49, v50, "Failed to decode attachmentDescriptors", v51, 2u);
      MEMORY[0x1B8CCB0E0](v51, -1, -1);
    }
  }

  v26 = sub_1B8C258B8();
  if (v26)
  {
    goto LABEL_43;
  }

LABEL_58:

  v102 = MEMORY[0x1E69E7CC0];
LABEL_59:
  swift_beginAccess();
  v107 = *&v2[v191];
  *&v2[v191] = v102;

LABEL_60:
  v108 = sub_1B8C255A8();
  if (v108)
  {
    v109 = v108;
    v110 = sub_1B8C25128();
    v112 = v111;
  }

  else
  {
    v110 = 0;
    v112 = 0;
  }

  swift_beginAccess();
  v113 = v198[1];
  *v198 = v110;
  v198[1] = v112;

LABEL_64:
  v114 = v201;
  v230.receiver = v2;
  v230.super_class = type metadata accessor for FBKFeedbackForm();
  v115 = objc_msgSendSuper2(&v230, sel_init);
  v116 = v115;
  v117 = 1 << *(v201 + 32);
  v118 = -1;
  if (v117 < 64)
  {
    v118 = ~(-1 << v117);
  }

  v119 = v118 & *(v201 + 64);
  v120 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  v121 = (v117 + 63) >> 6;
  v195 = v115;
  v122 = 0;
  v200 = v121;
  v218 = v116;
LABEL_68:
  if (v119)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v123 = v122 + 1;
    if (__OFADD__(v122, 1))
    {
      goto LABEL_169;
    }

    if (v123 >= v121)
    {
      break;
    }

    v119 = *(v201 + 64 + 8 * v123);
    ++v122;
    if (v119)
    {
      v122 = v123;
LABEL_73:
      v124 = __clz(__rbit64(v119));
      v119 &= v119 - 1;
      v125 = v124 | (v122 << 6);
      v126 = *(*(v114 + 56) + 8 * v125);
      v228 = *(v126 + 16);
      if (!v228)
      {
        goto LABEL_68;
      }

      v206 = v122;
      v208 = v119;
      v127 = (*(v114 + 48) + 16 * v125);
      v129 = *v127;
      v128 = v127[1];

      swift_beginAccess();
      v130 = 0;
      v132 = v129 == 0x656C7469743ALL && v128 == 0xE600000000000000;
      v227 = v132;
      v134 = v129 == 0x616572613ALL && v128 == 0xE500000000000000;
      v220 = v134;
      v136 = v129 == 0x706972637365643ALL && v128 == 0xEC0000006E6F6974;
      v216 = v136;
      v138 = v129 == 0x657275746165663ALL && v128 == 0xEF6E69616D6F645FLL;
      v214 = v138;
      v140 = v129 == 0x6165665F6275733ALL && v128 == 0xEC00000065727574;
      v212 = v140;
      v222 = v129;
      v224 = v128;
      v142 = v129 == 0xD000000000000012 && 0x80000001B8C33DC0 == v128;
      v210 = v142;
      v143 = (v126 + 40);
      v225 = v126;
      while (2)
      {
        if (v130 >= *(v126 + 16))
        {
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
          goto LABEL_175;
        }

        v147 = *(v143 - 1);
        v146 = *v143;
        if (v227)
        {
          v148 = 0;
          v149 = 0;
        }

        else
        {
          v148 = v222;
          v150 = sub_1B8C25A08();
          if ((v150 | v220))
          {
            v148 = 0;
            v149 = ~v150 & 1;
          }

          else
          {
            v151 = sub_1B8C25A08();
            if (v151)
            {
              v149 = 1;
            }

            else
            {
              v149 = 2;
            }

            if ((v151 | v216) & 1) != 0 || ((v152 = sub_1B8C25A08(), (v152) ? (v149 = 2) : (v149 = 3), ((v152 | v214) & 1) != 0 || ((v153 = sub_1B8C25A08(), (v153) ? (v149 = 3) : (v149 = 4), ((v153 | v212) & 1) != 0 || ((v154 = sub_1B8C25A08(), (v154) ? (v149 = 4) : (v149 = 5), ((v154 | v210)))))
            {
              v148 = 0;
            }

            else if (sub_1B8C25A08())
            {
              v148 = 0;
              v149 = 5;
            }

            else
            {

              v149 = v224;
            }
          }
        }

        v155 = *&v116[v120];
        v156 = *(v155 + 16);

        if (v156)
        {

          v157 = sub_1B8B5E354(v148, v149);
          if (v158)
          {
            v159 = *(*(v155 + 56) + 8 * v157);

            v160 = v147;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v159 = sub_1B8B5D1AC(0, *(v159 + 16) + 1, 1, v159);
            }

            v162 = *(v159 + 16);
            v161 = *(v159 + 24);
            if (v162 >= v161 >> 1)
            {
              v159 = sub_1B8B5D1AC((v161 > 1), v162 + 1, 1, v159);
            }

            *(v159 + 16) = v162 + 1;
            v163 = v159 + 16 * v162;
            *(v163 + 32) = v160;
            *(v163 + 40) = v146;
            v116 = v218;
            swift_beginAccess();
            v164 = *&v218[v120];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v166 = *&v218[v120];
            *&v218[v120] = 0x8000000000000000;
            v167 = sub_1B8B5E354(v148, v149);
            v169 = v166[2];
            v170 = (v168 & 1) == 0;
            v171 = __OFADD__(v169, v170);
            v172 = v169 + v170;
            if (v171)
            {
              goto LABEL_171;
            }

            v173 = v168;
            if (v166[3] < v172)
            {
              sub_1B8B93050(v172, isUniquelyReferenced_nonNull_native);
              v167 = sub_1B8B5E354(v148, v149);
              if ((v173 & 1) != (v174 & 1))
              {
                goto LABEL_177;
              }

LABEL_156:
              if ((v173 & 1) == 0)
              {
                goto LABEL_157;
              }

LABEL_111:
              v144 = v166[7];
              v145 = *(v144 + 8 * v167);
              *(v144 + 8 * v167) = v159;

              sub_1B8B5E4C4(v148, v149);
LABEL_112:
              *&v116[v120] = v166;
              swift_endAccess();
              v126 = v225;
              ++v130;
              v143 += 2;
              if (v228 == v130)
              {

                v121 = v200;
                v114 = v201;
                v122 = v206;
                v119 = v208;
                goto LABEL_68;
              }

              continue;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_156;
            }

            v189 = v167;
            sub_1B8B94514();
            v167 = v189;
            if (v173)
            {
              goto LABEL_111;
            }

LABEL_157:
            v166[(v167 >> 6) + 8] |= 1 << v167;
            v186 = (v166[6] + 16 * v167);
            *v186 = v148;
            v186[1] = v149;
            *(v166[7] + 8 * v167) = v159;
            v187 = v166[2];
            v171 = __OFADD__(v187, 1);
            v185 = v187 + 1;
            if (v171)
            {
              goto LABEL_172;
            }

LABEL_158:
            v166[2] = v185;
            goto LABEL_112;
          }
        }

        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
      v159 = swift_allocObject();
      *(v159 + 16) = xmmword_1B8C2A740;
      *(v159 + 32) = v147;
      *(v159 + 40) = v146;
      swift_beginAccess();
      v175 = *&v116[v120];
      v176 = swift_isUniquelyReferenced_nonNull_native();
      v166 = *&v116[v120];
      *&v116[v120] = 0x8000000000000000;
      v167 = sub_1B8B5E354(v148, v149);
      v178 = v166[2];
      v179 = (v177 & 1) == 0;
      v171 = __OFADD__(v178, v179);
      v180 = v178 + v179;
      if (v171)
      {
        goto LABEL_168;
      }

      v181 = v177;
      if (v166[3] < v180)
      {
        sub_1B8B93050(v180, v176);
        v167 = sub_1B8B5E354(v148, v149);
        if ((v181 & 1) != (v182 & 1))
        {
          goto LABEL_177;
        }

        goto LABEL_151;
      }

      if (v176)
      {
LABEL_151:
        if (v181)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v188 = v167;
        sub_1B8B94514();
        v167 = v188;
        if (v181)
        {
          goto LABEL_111;
        }
      }

      v166[(v167 >> 6) + 8] |= 1 << v167;
      v183 = (v166[6] + 16 * v167);
      *v183 = v148;
      v183[1] = v149;
      *(v166[7] + 8 * v167) = v159;
      v184 = v166[2];
      v171 = __OFADD__(v184, 1);
      v185 = v184 + 1;
      if (v171)
      {
        goto LABEL_170;
      }

      goto LABEL_158;
    }
  }

  return v195;
}

id FBKFeedbackForm.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FBKFeedbackForm.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBKFeedbackForm();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B8C0F40C()
{
  if (*v0)
  {
    result = 0x696669746E656469;
  }

  else
  {
    result = 1954047348;
  }

  *v0;
  return result;
}

uint64_t sub_1B8C0F444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B8C25A08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8C25A08();

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

uint64_t sub_1B8C0F528(uint64_t a1)
{
  v2 = sub_1B8C14BF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8C0F564(uint64_t a1)
{
  v2 = sub_1B8C14BF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKFeedbackForm.FormResponse.Question.Kind.Choice.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA88C8, &qword_1B8C2FCA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8C14BF8();
  sub_1B8C25B18();
  v16 = 0;
  v12 = v14[3];
  sub_1B8C259A8();
  if (!v12)
  {
    v15 = 1;
    sub_1B8C259A8();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t FBKFeedbackForm.FormResponse.Question.Kind.Choice.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA88D8, &qword_1B8C2FCA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8C14BF8();
  sub_1B8C25B08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  v11 = sub_1B8C25948();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1B8C25948();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t FBKFeedbackForm.FormResponse.Question.Kind.description.getter()
{
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) == 2)
    {
      return 0x726564696C53;
    }

    else
    {
      v2 = 0x6569462074786554;
      v3 = *v0;
      v4 = 0x6D69542F65746144;
      v5 = 1701669204;
      if (*v0 != 4)
      {
        v5 = 0x656C67676F54;
      }

      if (v3 != 3)
      {
        v4 = v5;
      }

      v6 = 0x6572412074786554;
      if (v3 != 1)
      {
        v6 = 1702125892;
      }

      if (v3)
      {
        v2 = v6;
      }

      if (v3 <= 2)
      {
        return v2;
      }

      else
      {
        return v4;
      }
    }
  }

  else if (*(v0 + 8))
  {
    return 0x656C7069746C754DLL;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

unint64_t sub_1B8C0FA9C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6C65694674786574;
    v6 = 0xD00000000000001ALL;
    if (a1 != 2)
    {
      v6 = 0x656C7069746C756DLL;
    }

    if (a1)
    {
      v5 = 0x6165724174786574;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656D695465746164;
    v2 = 1701669236;
    if (a1 != 7)
    {
      v2 = 0x656C67676F74;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x726564696C73;
    if (a1 != 4)
    {
      v3 = 1702125924;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B8C0FBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B8C17F2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B8C0FBF0(uint64_t a1)
{
  v2 = sub_1B8C14C4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8C0FC2C(uint64_t a1)
{
  v2 = sub_1B8C14C4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8C0FC68(uint64_t a1)
{
  v2 = sub_1B8C14D9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8C0FCA4(uint64_t a1)
{
  v2 = sub_1B8C14D9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8C0FCE0(uint64_t a1)
{
  v2 = sub_1B8C14D48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8C0FD1C(uint64_t a1)
{
  v2 = sub_1B8C14D48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8C0FD70(uint64_t a1)
{
  v2 = sub_1B8C14F1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8C0FDAC(uint64_t a1)
{
  v2 = sub_1B8C14F1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8C0FDE8(uint64_t a1)
{
  v2 = sub_1B8C14F70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8C0FE24(uint64_t a1)
{
  v2 = sub_1B8C14F70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8C0FE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736563696F6863 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B8C25A08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B8C0FEE8(uint64_t a1)
{
  v2 = sub_1B8C14DF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8C0FF24(uint64_t a1)
{
  v2 = sub_1B8C14DF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8C0FF60(uint64_t a1)
{
  v2 = sub_1B8C14FC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8C0FF9C(uint64_t a1)
{
  v2 = sub_1B8C14FC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8C0FFD8(uint64_t a1)
{
  v2 = sub_1B8C15018();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8C10014(uint64_t a1)
{
  v2 = sub_1B8C15018();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8C10050(uint64_t a1)
{
  v2 = sub_1B8C14CF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8C1008C(uint64_t a1)
{
  v2 = sub_1B8C14CF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8C100C8(uint64_t a1)
{
  v2 = sub_1B8C14CA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8C10104(uint64_t a1)
{
  v2 = sub_1B8C14CA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKFeedbackForm.FormResponse.Question.Kind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA88E0, &qword_1B8C2FCB0);
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA88E8, &qword_1B8C2FCB8);
  v75 = *(v6 - 8);
  v76 = v6;
  v7 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA88F0, &qword_1B8C2FCC0);
  v72 = *(v9 - 8);
  v73 = v9;
  v10 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v63 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA88F8, &qword_1B8C2FCC8);
  v69 = *(v70 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8900, &qword_1B8C2FCD0);
  v86 = *(v14 - 8);
  v87 = v14;
  v15 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v63 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8908, &qword_1B8C2FCD8);
  v83 = *(v17 - 8);
  v84 = v17;
  v18 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v63 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8910, &qword_1B8C2FCE0);
  v80 = *(v20 - 8);
  v81 = v20;
  v21 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v63 - v22;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8918, &qword_1B8C2FCE8);
  v66 = *(v67 - 8);
  v24 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v63 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8920, &qword_1B8C2FCF0);
  v64 = *(v26 - 8);
  v27 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v63 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8928, &qword_1B8C2FCF8);
  v31 = *(v30 - 8);
  v89 = v30;
  v90 = v31;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v63 - v33;
  v35 = *v1;
  v36 = *(v1 + 8);
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8C14C4C();
  v88 = v34;
  sub_1B8C25B18();
  if (v36 <= 1)
  {
    if (!v36)
    {
      LOBYTE(v91) = 2;
      sub_1B8C14F70();
      v39 = v88;
      v38 = v89;
      sub_1B8C25988();
      v91 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8960, &qword_1B8C2FD00);
      sub_1B8C14E44();
      v40 = v81;
      sub_1B8C259C8();
      (*(v80 + 8))(v23, v40);
      return (*(v90 + 8))(v39, v38);
    }

    LOBYTE(v91) = 3;
    sub_1B8C14F1C();
    v42 = v82;
    v44 = v88;
    v43 = v89;
    sub_1B8C25988();
    v91 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8960, &qword_1B8C2FD00);
    sub_1B8C14E44();
    v45 = v84;
    sub_1B8C259C8();
    v46 = v83;
    goto LABEL_7;
  }

  if (v36 == 2)
  {
    LOBYTE(v91) = 4;
    sub_1B8C14DF0();
    v42 = v85;
    v44 = v88;
    v43 = v89;
    sub_1B8C25988();
    v91 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8960, &qword_1B8C2FD00);
    sub_1B8C14E44();
    v45 = v87;
    sub_1B8C259C8();
    v46 = v86;
LABEL_7:
    (*(v46 + 8))(v42, v45);
    v47 = *(v90 + 8);
    v48 = v44;
    return v47(v48, v43);
  }

  if (v35 > 2)
  {
    if (v35 != 3)
    {
      if (v35 == 4)
      {
        LOBYTE(v91) = 7;
        sub_1B8C14CF4();
        v55 = v74;
        v56 = v88;
        v43 = v89;
        sub_1B8C25988();
        v58 = v75;
        v57 = v76;
      }

      else
      {
        LOBYTE(v91) = 8;
        sub_1B8C14CA0();
        v55 = v77;
        v56 = v88;
        v43 = v89;
        sub_1B8C25988();
        v58 = v78;
        v57 = v79;
      }

      (*(v58 + 8))(v55, v57);
      v47 = *(v90 + 8);
      v48 = v56;
      return v47(v48, v43);
    }

    LOBYTE(v91) = 6;
    sub_1B8C14D48();
    v61 = v71;
    v51 = v88;
    v50 = v89;
    sub_1B8C25988();
    (*(v72 + 8))(v61, v73);
  }

  else
  {
    if (!v35)
    {
      LOBYTE(v91) = 0;
      sub_1B8C15018();
      v59 = v88;
      v60 = v89;
      sub_1B8C25988();
      (*(v64 + 8))(v29, v26);
      return (*(v90 + 8))(v59, v60);
    }

    if (v35 == 1)
    {
      LOBYTE(v91) = 1;
      sub_1B8C14FC4();
      v49 = v65;
      v51 = v88;
      v50 = v89;
      sub_1B8C25988();
      v52 = *(v66 + 8);
      v53 = v49;
      v54 = &v92;
    }

    else
    {
      LOBYTE(v91) = 5;
      sub_1B8C14D9C();
      v62 = v68;
      v51 = v88;
      v50 = v89;
      sub_1B8C25988();
      v52 = *(v69 + 8);
      v53 = v62;
      v54 = &v93;
    }

    v52(v53, *(v54 - 32));
  }

  return (*(v90 + 8))(v51, v50);
}

uint64_t FBKFeedbackForm.FormResponse.Question.Kind.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8998, &qword_1B8C2FD08);
  v106 = *(v3 - 8);
  v107 = v3;
  v4 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v110 = &v85 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89A0, &qword_1B8C2FD10);
  v104 = *(v6 - 8);
  v105 = v6;
  v7 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v109 = &v85 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89A8, &qword_1B8C2FD18);
  v102 = *(v9 - 8);
  v103 = v9;
  v10 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v108 = &v85 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89B0, &qword_1B8C2FD20);
  v98 = *(v12 - 8);
  v99 = v12;
  v13 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v114 = &v85 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89B8, &qword_1B8C2FD28);
  v100 = *(v15 - 8);
  v101 = v15;
  v16 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v113 = &v85 - v17;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89C0, &qword_1B8C2FD30);
  v96 = *(v97 - 8);
  v18 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v112 = &v85 - v19;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89C8, &qword_1B8C2FD38);
  v95 = *(v94 - 8);
  v20 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v111 = &v85 - v21;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89D0, &qword_1B8C2FD40);
  v92 = *(v93 - 8);
  v22 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v24 = &v85 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89D8, &qword_1B8C2FD48);
  v91 = *(v25 - 8);
  v26 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v85 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89E0, &qword_1B8C2FD50);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v85 - v32;
  v35 = a1[3];
  v34 = a1[4];
  v116 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1B8C14C4C();
  v36 = v117;
  sub_1B8C25B08();
  v117 = v36;
  if (v36)
  {
    goto LABEL_12;
  }

  v37 = v28;
  v86 = v25;
  v87 = v24;
  v38 = v111;
  v39 = v112;
  v41 = v113;
  v40 = v114;
  v88 = v30;
  v42 = v115;
  v90 = v29;
  v89 = v33;
  v43 = sub_1B8C25978();
  if (*(v43 + 16) != 1 || (v44 = *(v43 + 32), v44 == 9))
  {
    v51 = sub_1B8C25828();
    v52 = swift_allocError();
    v54 = v53;
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89E8, &qword_1B8C2FD58) + 48);
    *v54 = &type metadata for FBKFeedbackForm.FormResponse.Question.Kind;
    v56 = v90;
    v57 = v89;
    sub_1B8C25928();
    sub_1B8C25818();
    (*(*(v51 - 8) + 104))(v54, *MEMORY[0x1E69E6AF8], v51);
    v117 = v52;
    swift_willThrow();
    (*(v88 + 8))(v57, v56);
  }

  else
  {
    if (*(v43 + 32) > 3u)
    {
      v45 = v90;
      v46 = v89;
      if (*(v43 + 32) <= 5u)
      {
        v110 = v43;
        if (v44 == 4)
        {
          LOBYTE(v118) = 4;
          sub_1B8C14DF0();
          v69 = v117;
          sub_1B8C25918();
          v117 = v69;
          if (!v69)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8960, &qword_1B8C2FD00);
            sub_1B8C1506C();
            v70 = v101;
            v71 = v117;
            sub_1B8C25968();
            v117 = v71;
            if (!v71)
            {
              (*(v100 + 8))(v41, v70);
              (*(v88 + 8))(v46, v45);
              swift_unknownObjectRelease();
              v50 = v118;
              v49 = 2;
              goto LABEL_46;
            }

            (*(v100 + 8))(v41, v70);
          }
        }

        else
        {
          LOBYTE(v118) = 5;
          sub_1B8C14D9C();
          v81 = v117;
          sub_1B8C25918();
          v117 = v81;
          if (!v81)
          {
            (*(v98 + 8))(v40, v99);
            (*(v88 + 8))(v46, v45);
            swift_unknownObjectRelease();
            v49 = 3;
            v50 = 2;
            goto LABEL_46;
          }
        }
      }

      else if (v44 == 6)
      {
        LOBYTE(v118) = 6;
        sub_1B8C14D48();
        v72 = v108;
        v73 = v117;
        sub_1B8C25918();
        v117 = v73;
        if (!v73)
        {
          (*(v102 + 8))(v72, v103);
          (*(v88 + 8))(v46, v45);
          swift_unknownObjectRelease();
          v50 = 3;
          v49 = 3;
          goto LABEL_46;
        }
      }

      else if (v44 == 7)
      {
        LOBYTE(v118) = 7;
        sub_1B8C14CF4();
        v47 = v109;
        v48 = v117;
        sub_1B8C25918();
        v117 = v48;
        if (!v48)
        {
          (*(v104 + 8))(v47, v105);
          (*(v88 + 8))(v46, v45);
          swift_unknownObjectRelease();
          v49 = 3;
          v50 = 4;
LABEL_46:
          v58 = v116;
          *v42 = v50;
          *(v42 + 8) = v49;
          return __swift_destroy_boxed_opaque_existential_0(v58);
        }
      }

      else
      {
        LOBYTE(v118) = 8;
        sub_1B8C14CA0();
        v79 = v110;
        v80 = v117;
        sub_1B8C25918();
        v117 = v80;
        if (!v80)
        {
          (*(v106 + 8))(v79, v107);
          (*(v88 + 8))(v46, v45);
          swift_unknownObjectRelease();
          v49 = 3;
          v50 = 5;
          goto LABEL_46;
        }
      }

      (*(v88 + 8))(v46, v45);
      goto LABEL_11;
    }

    if (*(v43 + 32) <= 1u)
    {
      if (*(v43 + 32))
      {
        LOBYTE(v118) = 1;
        sub_1B8C14FC4();
        v74 = v87;
        v75 = v90;
        v76 = v89;
        v77 = v117;
        sub_1B8C25918();
        v117 = v77;
        if (!v77)
        {
          (*(v92 + 8))(v74, v93);
          (*(v88 + 8))(v76, v75);
          swift_unknownObjectRelease();
          v49 = 3;
          v50 = 1;
          goto LABEL_46;
        }

        (*(v88 + 8))(v76, v75);
      }

      else
      {
        LOBYTE(v118) = 0;
        sub_1B8C15018();
        v60 = v90;
        v61 = v89;
        v62 = v117;
        sub_1B8C25918();
        v117 = v62;
        if (!v62)
        {
          (*(v91 + 8))(v37, v86);
          (*(v88 + 8))(v61, v60);
          swift_unknownObjectRelease();
          v50 = 0;
          v49 = 3;
          goto LABEL_46;
        }

        (*(v88 + 8))(v61, v60);
      }

      goto LABEL_11;
    }

    v110 = v43;
    if (v44 == 2)
    {
      LOBYTE(v118) = 2;
      sub_1B8C14F70();
      v63 = v38;
      v64 = v90;
      v65 = v89;
      v66 = v117;
      sub_1B8C25918();
      v117 = v66;
      if (!v66)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8960, &qword_1B8C2FD00);
        sub_1B8C1506C();
        v67 = v94;
        v68 = v117;
        sub_1B8C25968();
        v117 = v68;
        if (!v68)
        {
          (*(v95 + 8))(v63, v67);
          (*(v88 + 8))(v65, v64);
          swift_unknownObjectRelease();
          v49 = 0;
          v50 = v118;
          goto LABEL_46;
        }

        (*(v95 + 8))(v63, v67);
      }
    }

    else
    {
      LOBYTE(v118) = 3;
      sub_1B8C14F1C();
      v64 = v90;
      v65 = v89;
      v78 = v117;
      sub_1B8C25918();
      v117 = v78;
      if (!v78)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8960, &qword_1B8C2FD00);
        sub_1B8C1506C();
        v82 = v97;
        v83 = v117;
        sub_1B8C25968();
        v84 = v88;
        v117 = v83;
        if (!v83)
        {
          (*(v96 + 8))(v39, v82);
          (*(v84 + 8))(v65, v64);
          swift_unknownObjectRelease();
          v50 = v118;
          v49 = 1;
          goto LABEL_46;
        }

        (*(v96 + 8))(v39, v82);
        (*(v84 + 8))(v65, v64);
        goto LABEL_11;
      }
    }

    (*(v88 + 8))(v65, v64);
  }

LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v58 = v116;
  return __swift_destroy_boxed_opaque_existential_0(v58);
}

uint64_t FBKFeedbackForm.FormResponse.Question.description.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  MEMORY[0x1B8CC9EB0](*v0, *(v0 + 8));
  MEMORY[0x1B8CC9EB0](2108704, 0xE300000000000000);
  sub_1B8C09F10(v1, v2);
  return 0;
}

uint64_t sub_1B8C11A94()
{
  v1 = 0x696669746E656469;
  v2 = 0x6E65646469487369;
  if (*v0 != 2)
  {
    v2 = 1684957547;
  }

  if (*v0)
  {
    v1 = 0x5479616C70736964;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B8C11B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B8C1821C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B8C11B54(uint64_t a1)
{
  v2 = sub_1B8C15144();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8C11B90(uint64_t a1)
{
  v2 = sub_1B8C15144();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKFeedbackForm.FormResponse.Question.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8A00, &qword_1B8C2FD60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v19 = v1[3];
  v20 = v10;
  v24 = *(v1 + 32);
  v18 = v1[5];
  v17 = *(v1 + 48);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8C15144();
  sub_1B8C25B18();
  v28 = 0;
  v12 = v21;
  sub_1B8C259A8();
  if (!v12)
  {
    v13 = v17;
    v14 = v18;
    v27 = 1;
    sub_1B8C259A8();
    v26 = 2;
    sub_1B8C259B8();
    v22 = v14;
    v23 = v13;
    v25 = 3;
    sub_1B8C15198(v14, v13);
    sub_1B8C151AC();
    sub_1B8C259C8();
    sub_1B8B9F914(v22, v23);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t FBKFeedbackForm.FormResponse.Question.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8A18, &qword_1B8C2FD68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8C15144();
  sub_1B8C25B08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v30 = 0;
  v11 = sub_1B8C25948();
  v23 = v12;
  v29 = 1;
  v21 = sub_1B8C25948();
  v22 = v13;
  v28 = 2;
  v26 = sub_1B8C25958();
  v27 = 3;
  sub_1B8C15200();
  sub_1B8C25968();
  v14 = v26 & 1;
  (*(v6 + 8))(v9, v5);
  v16 = v23;
  v15 = v24;
  v17 = v25;
  *a2 = v11;
  *(a2 + 8) = v16;
  v18 = v22;
  *(a2 + 16) = v21;
  *(a2 + 24) = v18;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v17;

  sub_1B8C15198(v15, v17);
  __swift_destroy_boxed_opaque_existential_0(a1);

  return sub_1B8B9F914(v15, v17);
}

uint64_t sub_1B8C1210C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8BE8, &qword_1B8C31248);
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8BF0, &qword_1B8C31250);
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8BF8, &qword_1B8C31258);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v15 = v1[1];
  v31 = *v1;
  v32 = v15;
  v16 = v1[2];
  v24 = v1[3];
  v25 = v16;
  v17 = *(v1 + 32);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8C18394();
  sub_1B8C25B18();
  if (v17)
  {
    LOBYTE(v33) = 1;
    sub_1B8C183E8();
    v19 = v28;
    sub_1B8C25988();
    v33 = v31;
    v34 = v32;
    v35 = v25;
    v36 = v24;
    sub_1B8C14EC8();
    v20 = v30;
    sub_1B8C259C8();
    (*(v29 + 8))(v19, v20);
  }

  else
  {
    LOBYTE(v33) = 0;
    sub_1B8C1843C();
    sub_1B8C25988();
    v21 = v27;
    sub_1B8C259A8();
    (*(v26 + 8))(v9, v21);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1B8C12424@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8C18, &qword_1B8C31260);
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8C20, &qword_1B8C31268);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35[-v9];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8C28, &unk_1B8C31270);
  v11 = *(v41 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v14 = &v35[-v13];
  v15 = a1[3];
  v16 = a1[4];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1B8C18394();
  v17 = v42;
  sub_1B8C25B08();
  if (!v17)
  {
    v18 = v40;
    v42 = v11;
    v19 = sub_1B8C25978();
    if (*(v19 + 16) == 1)
    {
      v37 = v14;
      v20 = v41;
      v36 = *(v19 + 32);
      if (v36)
      {
        LOBYTE(v43) = 1;
        sub_1B8C183E8();
        v21 = v20;
        v22 = v37;
        sub_1B8C25918();
        sub_1B8C150F0();
        sub_1B8C25968();
        (*(v18 + 8))(v6, v3);
        (*(v42 + 8))(v22, v21);
        swift_unknownObjectRelease();
        v28 = v43;
        v29 = v44;
        v30 = v45;
        v31 = v46;
      }

      else
      {
        LOBYTE(v43) = 0;
        sub_1B8C1843C();
        sub_1B8C25918();
        v28 = sub_1B8C25948();
        v29 = v33;
        (*(v39 + 8))(v10, v7);
        (*(v42 + 8))(v37, v20);
        swift_unknownObjectRelease();
        v30 = 0;
        v31 = 0;
      }

      v34 = v38;
      *v38 = v28;
      v34[1] = v29;
      v34[2] = v30;
      v34[3] = v31;
      *(v34 + 32) = v36;
    }

    else
    {
      v23 = sub_1B8C25828();
      swift_allocError();
      v25 = v24;
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89E8, &qword_1B8C2FD58) + 48);
      *v25 = &type metadata for FBKFeedbackForm.FormResponse.Answer.Value;
      v27 = v41;
      sub_1B8C25928();
      sub_1B8C25818();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v42 + 8))(v14, v27);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v47);
}

uint64_t sub_1B8C12948()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  MEMORY[0x1B8CC9EB0](*v0, *(v0 + 8));
  MEMORY[0x1B8CC9EB0](2108704, 0xE300000000000000);
  sub_1B8C09F10(v1, v2);
  return 0;
}

uint64_t sub_1B8C129F4(uint64_t a1)
{
  v2 = sub_1B8C183E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8C12A30(uint64_t a1)
{
  v2 = sub_1B8C183E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8C12A6C()
{
  if (*v0)
  {
    result = 0x6563696F6863;
  }

  else
  {
    result = 1954047348;
  }

  *v0;
  return result;
}

uint64_t sub_1B8C12A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B8C25A08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6563696F6863 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8C25A08();

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

uint64_t sub_1B8C12B74(uint64_t a1)
{
  v2 = sub_1B8C18394();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8C12BB0(uint64_t a1)
{
  v2 = sub_1B8C18394();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8C12BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B8C25A08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B8C12C6C(uint64_t a1)
{
  v2 = sub_1B8C1843C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8C12CA8(uint64_t a1)
{
  v2 = sub_1B8C1843C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKFeedbackForm.FormResponse.Answer.description.getter()
{
  if (*(v0 + 32))
  {
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    MEMORY[0x1B8CC9EB0](0x203A6563696F6863, 0xE800000000000000);
    sub_1B8C25898();
    return 0;
  }

  else
  {
    MEMORY[0x1B8CC9EB0](*v0, *(v0 + 8));
    return 0x203A74786574;
  }
}

uint64_t sub_1B8C12DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B8C25A08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B8C12E70(uint64_t a1)
{
  v2 = sub_1B8C15254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8C12EAC(uint64_t a1)
{
  v2 = sub_1B8C15254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKFeedbackForm.FormResponse.Answer.encode(to:)(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8A28, &qword_1B8C2FD70);
  v21 = *(v15 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v5 = &v14 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1B8BFD084(v6, v7, v8, v9, v10);
  sub_1B8C15254();
  sub_1B8C25B18();
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  sub_1B8C152A8();
  v12 = v15;
  sub_1B8C259C8();
  sub_1B8C152FC(v16, v17, v18, v19, v20);
  return (*(v21 + 8))(v5, v12);
}

uint64_t FBKFeedbackForm.FormResponse.Answer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8A40, &qword_1B8C2FD78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8C15254();
  sub_1B8C25B08();
  if (!v2)
  {
    sub_1B8C1534C();
    sub_1B8C25968();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v12;
    *(a2 + 32) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t FBKFeedbackForm.FormResponse.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[5];
  v4 = v0[7];
  v5 = *(v0 + 48);
  sub_1B8C257E8();

  MEMORY[0x1B8CC9EB0](v1, v2);
  MEMORY[0x1B8CC9EB0](2108704, 0xE300000000000000);
  sub_1B8C09F10(v3, v5);
  MEMORY[0x1B8CC9EB0](0, 0xE000000000000000);

  MEMORY[0x1B8CC9EB0](0x736E41203E2D205DLL, 0xED00005B20726577);
  v6 = *(v4 + 16);
  if (v6)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1B8C13FE8(0, v6, 0);
    v7 = (v4 + 64);
    do
    {
      v8 = *(v7 - 4);
      v9 = *(v7 - 3);
      v11 = *(v7 - 2);
      v10 = *(v7 - 1);
      if (*v7)
      {
        sub_1B8BFD084(v8, v9, v11, v10, 1);
        MEMORY[0x1B8CC9EB0](0x203A6563696F6863, 0xE800000000000000);
        sub_1B8C25898();
        sub_1B8C152FC(v8, v9, v11, v10, 1);
        v12 = 0;
        v13 = 0xE000000000000000;
      }

      else
      {
        sub_1B8BFD084(v8, v9, v11, v10, 0);
        MEMORY[0x1B8CC9EB0](v8, v9);
        sub_1B8C152FC(v8, v9, v11, v10, 0);
        v12 = 0x203A74786574;
        v13 = 0xE600000000000000;
      }

      v15 = *(v21 + 16);
      v14 = *(v21 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1B8C13FE8((v14 > 1), v15 + 1, 1);
      }

      *(v21 + 16) = v15 + 1;
      v16 = v21 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7478, &qword_1B8C2BC80);
  sub_1B8C03380();
  v17 = sub_1B8C250D8();
  v19 = v18;

  MEMORY[0x1B8CC9EB0](v17, v19);

  MEMORY[0x1B8CC9EB0](93, 0xE100000000000000);
  return 0x6E6F697473657551;
}

uint64_t sub_1B8C13518()
{
  if (*v0)
  {
    result = 0x73726577736E61;
  }

  else
  {
    result = 0x6E6F697473657571;
  }

  *v0;
  return result;
}

uint64_t sub_1B8C13554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697473657571 && a2 == 0xE800000000000000;
  if (v6 || (sub_1B8C25A08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73726577736E61 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8C25A08();

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

uint64_t sub_1B8C13630(uint64_t a1)
{
  v2 = sub_1B8C153A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8C1366C(uint64_t a1)
{
  v2 = sub_1B8C153A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKFeedbackForm.FormResponse.encode(to:)(void *a1)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8A58, &qword_1B8C2FD80);
  v22 = *(v20 - 8);
  v3 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v16 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[3];
  v18 = v1[2];
  v19 = v6;
  v30 = *(v1 + 32);
  v9 = v1[5];
  v17 = v1[7];
  v10 = a1[4];
  v11 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1B8C15198(v9, v11);
  sub_1B8C153A0();
  sub_1B8C25B18();
  v23 = v19;
  v24 = v7;
  v12 = v20;
  v25 = v18;
  v26 = v8;
  v27 = v30;
  v28 = v9;
  v29 = v11;
  v31 = 0;
  sub_1B8C153F4();
  v13 = v21;
  sub_1B8C259C8();
  v14 = v28;
  LOBYTE(a1) = v29;

  sub_1B8B9F914(v14, a1);
  if (!v13)
  {
    v23 = v17;
    v31 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8A70, &qword_1B8C2FD88);
    sub_1B8C15448();
    sub_1B8C259C8();
  }

  return (*(v22 + 8))(v5, v12);
}

uint64_t FBKFeedbackForm.FormResponse.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8A88, &qword_1B8C2FD90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8C153A0();
  sub_1B8C25B08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v27) = 0;
  sub_1B8C15520();
  sub_1B8C25968();
  v11 = v32;
  v23 = v31;
  v12 = v34;
  v22 = v33;
  v24 = v35;
  v25 = v36;
  v26 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8A70, &qword_1B8C2FD88);
  v39 = 1;
  sub_1B8C15574();
  sub_1B8C25968();
  (*(v6 + 8))(v9, v5);
  v21 = v40;
  v13 = v23;
  *&v27 = v23;
  *(&v27 + 1) = v11;
  v14 = v11;
  v15 = v22;
  *&v28 = v22;
  *(&v28 + 1) = v12;
  v16 = v12;
  LOBYTE(v29) = v24;
  v17 = v25;
  *(&v29 + 1) = v25;
  LOBYTE(v11) = v26;
  LOBYTE(v30) = v26;
  *(&v30 + 1) = v40;
  v18 = v28;
  *a2 = v27;
  a2[1] = v18;
  v19 = v30;
  a2[2] = v29;
  a2[3] = v19;
  sub_1B8B96144(&v27, &v31);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v31 = v13;
  v32 = v14;
  v33 = v15;
  v34 = v16;
  v35 = v24;
  v36 = v17;
  v37 = v11;
  v38 = v21;
  return sub_1B8B9F188(&v31);
}

uint64_t FBKFeedbackForm.serializedAndDeserializedCopy.getter()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v10];
  v2 = v10[0];
  if (v1)
  {
    v3 = sub_1B8C234B8();
    v5 = v4;

    sub_1B8B46130(0, &qword_1EBAA8AA8, 0x1E696ACD0);
    type metadata accessor for FBKFeedbackForm();
    v6 = sub_1B8C254D8();
    if (!v6)
    {
      __break(1u);
    }

    sub_1B8B4645C(v3, v5);
    v7 = *MEMORY[0x1E69E9840];
    return v6;
  }

  else
  {
    v9 = v2;
    sub_1B8C23368();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t FBKFeedbackForm.answersSummary.getter()
{
  v1 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + v1) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v23 = *(v0 + v1);

  v11 = 0;
  while (v8)
  {
LABEL_11:
    v18 = __clz(__rbit64(v8)) | (v11 << 6);
    v19 = (*(v23 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v23 + 56) + 8 * v18);
    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v12 = 0x657275746165663ALL;
        v13 = 0xEF6E69616D6F645FLL;
        goto LABEL_5;
      }

      if (v21 != 4)
      {
        if (v21 == 5)
        {
          v12 = 0xD000000000000012;
          v13 = 0x80000001B8C33DC0;
          goto LABEL_5;
        }

        goto LABEL_21;
      }

      v12 = 0x6165665F6275733ALL;
      v13 = 0xEC00000065727574;
    }

    else
    {
      if (!v21)
      {
        v13 = 0xE600000000000000;
        v12 = 0x656C7469743ALL;
        goto LABEL_5;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          v12 = 0x706972637365643ALL;
          v13 = 0xEC0000006E6F6974;
          goto LABEL_5;
        }

LABEL_21:
        v12 = *v19;
        v13 = v19[1];
        goto LABEL_5;
      }

      v13 = 0xE500000000000000;
      v12 = 0x616572613ALL;
    }

LABEL_5:
    v8 &= v8 - 1;
    sub_1B8B5FB10(v20, v21);
    sub_1B8B5FB10(v20, v21);

    MEMORY[0x1B8CC9EB0](v12, v13);

    sub_1B8B5E4C4(v20, v21);
    MEMORY[0x1B8CC9EB0](540945696, 0xE400000000000000);
    v14 = MEMORY[0x1B8CC9FA0](v22, MEMORY[0x1E69E6158]);
    v16 = v15;

    MEMORY[0x1B8CC9EB0](v14, v16);

    MEMORY[0x1B8CC9EB0](10, 0xE100000000000000);
  }

  while (1)
  {
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v17 >= v9)
    {

      return 0;
    }

    v8 = *(v4 + 8 * v17);
    ++v11;
    if (v8)
    {
      v11 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

char *sub_1B8C13FE8(char *a1, int64_t a2, char a3)
{
  result = sub_1B8C140AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B8C14008(size_t a1, int64_t a2, char a3)
{
  result = sub_1B8C142EC(a1, a2, a3, *v3, &qword_1EBAA8C40, &qword_1B8C29470, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

char *sub_1B8C1404C(char *a1, int64_t a2, char a3)
{
  result = sub_1B8C141B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8C1406C(char *a1, int64_t a2, char a3)
{
  result = sub_1B8C144C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8C1408C(char *a1, int64_t a2, char a3)
{
  result = sub_1B8C145D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8C140AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8C141B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA66B0, &qword_1B8C2C430);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1B8C142EC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1B8C144C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7DA0, &unk_1B8C31280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8C145D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA8C30, &qword_1B8C29458);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1B8C146D8(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

BOOL sub_1B8C14788(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1B8C25A08() & 1;
    }
  }

  return result;
}

uint64_t _s8Feedback15FBKFeedbackFormC8QuestionO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        if (v5 == 3)
        {
          sub_1B8B5E4C4(*a1, 3uLL);
          v6 = v4;
          v7 = 3;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 4:
        if (v5 == 4)
        {
          sub_1B8B5E4C4(*a1, 4uLL);
          v6 = v4;
          v7 = 4;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 5:
        if (v5 == 5)
        {
          sub_1B8B5E4C4(*a1, 5uLL);
          v6 = v4;
          v7 = 5;
          goto LABEL_24;
        }

LABEL_25:
        sub_1B8B5FB10(*a2, *(a2 + 8));
        sub_1B8B5FB10(v2, v3);
        sub_1B8B5E4C4(v2, v3);
        sub_1B8B5E4C4(v4, v5);
        return 0;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        if (!v5)
        {
          sub_1B8B5E4C4(*a1, 0);
          v6 = v4;
          v7 = 0;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 1:
        if (v5 == 1)
        {
          v8 = 1;
          sub_1B8B5E4C4(*a1, 1uLL);
          sub_1B8B5E4C4(v4, 1uLL);
          return v8;
        }

        goto LABEL_25;
      case 2:
        if (v5 == 2)
        {
          sub_1B8B5E4C4(*a1, 2uLL);
          v6 = v4;
          v7 = 2;
LABEL_24:
          sub_1B8B5E4C4(v6, v7);
          return 1;
        }

        goto LABEL_25;
    }
  }

  if (v5 < 6)
  {
    goto LABEL_25;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_1B8B5FB10(*a1, v3);
    sub_1B8B5FB10(v2, v3);
    sub_1B8B5E4C4(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_24;
  }

  v10 = *a1;
  v11 = sub_1B8C25A08();
  sub_1B8B5FB10(v4, v5);
  sub_1B8B5FB10(v2, v3);
  sub_1B8B5E4C4(v2, v3);
  sub_1B8B5E4C4(v4, v5);
  return v11 & 1;
}

unint64_t sub_1B8C14A48()
{
  result = qword_1EBAA8860;
  if (!qword_1EBAA8860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8858, &unk_1B8C2FC60);
    sub_1B8C14ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8860);
  }

  return result;
}

unint64_t sub_1B8C14ACC()
{
  result = qword_1EBAA8868;
  if (!qword_1EBAA8868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8868);
  }

  return result;
}

unint64_t sub_1B8C14B20()
{
  result = qword_1EBAA88B0;
  if (!qword_1EBAA88B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8858, &unk_1B8C2FC60);
    sub_1B8C14BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA88B0);
  }

  return result;
}

unint64_t sub_1B8C14BA4()
{
  result = qword_1EBAA88B8;
  if (!qword_1EBAA88B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA88B8);
  }

  return result;
}

unint64_t sub_1B8C14BF8()
{
  result = qword_1EBAA88D0;
  if (!qword_1EBAA88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA88D0);
  }

  return result;
}

unint64_t sub_1B8C14C4C()
{
  result = qword_1EBAA8930;
  if (!qword_1EBAA8930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8930);
  }

  return result;
}

unint64_t sub_1B8C14CA0()
{
  result = qword_1EBAA8938;
  if (!qword_1EBAA8938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8938);
  }

  return result;
}

unint64_t sub_1B8C14CF4()
{
  result = qword_1EBAA8940;
  if (!qword_1EBAA8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8940);
  }

  return result;
}

unint64_t sub_1B8C14D48()
{
  result = qword_1EBAA8948;
  if (!qword_1EBAA8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8948);
  }

  return result;
}

unint64_t sub_1B8C14D9C()
{
  result = qword_1EBAA8950;
  if (!qword_1EBAA8950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8950);
  }

  return result;
}

unint64_t sub_1B8C14DF0()
{
  result = qword_1EBAA8958;
  if (!qword_1EBAA8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8958);
  }

  return result;
}

unint64_t sub_1B8C14E44()
{
  result = qword_1EBAA8968;
  if (!qword_1EBAA8968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8960, &qword_1B8C2FD00);
    sub_1B8C14EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8968);
  }

  return result;
}

unint64_t sub_1B8C14EC8()
{
  result = qword_1EBAA8970;
  if (!qword_1EBAA8970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8970);
  }

  return result;
}

unint64_t sub_1B8C14F1C()
{
  result = qword_1EBAA8978;
  if (!qword_1EBAA8978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8978);
  }

  return result;
}

unint64_t sub_1B8C14F70()
{
  result = qword_1EBAA8980;
  if (!qword_1EBAA8980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8980);
  }

  return result;
}

unint64_t sub_1B8C14FC4()
{
  result = qword_1EBAA8988;
  if (!qword_1EBAA8988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8988);
  }

  return result;
}

unint64_t sub_1B8C15018()
{
  result = qword_1EBAA8990;
  if (!qword_1EBAA8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8990);
  }

  return result;
}

unint64_t sub_1B8C1506C()
{
  result = qword_1EBAA89F0;
  if (!qword_1EBAA89F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8960, &qword_1B8C2FD00);
    sub_1B8C150F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA89F0);
  }

  return result;
}

unint64_t sub_1B8C150F0()
{
  result = qword_1EBAA89F8;
  if (!qword_1EBAA89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA89F8);
  }

  return result;
}

unint64_t sub_1B8C15144()
{
  result = qword_1EBAA8A08;
  if (!qword_1EBAA8A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A08);
  }

  return result;
}

uint64_t sub_1B8C15198(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

unint64_t sub_1B8C151AC()
{
  result = qword_1EBAA8A10;
  if (!qword_1EBAA8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A10);
  }

  return result;
}

unint64_t sub_1B8C15200()
{
  result = qword_1EBAA8A20;
  if (!qword_1EBAA8A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A20);
  }

  return result;
}

unint64_t sub_1B8C15254()
{
  result = qword_1EBAA8A30;
  if (!qword_1EBAA8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A30);
  }

  return result;
}

unint64_t sub_1B8C152A8()
{
  result = qword_1EBAA8A38;
  if (!qword_1EBAA8A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A38);
  }

  return result;
}

uint64_t sub_1B8C152FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

unint64_t sub_1B8C1534C()
{
  result = qword_1EBAA8A48;
  if (!qword_1EBAA8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A48);
  }

  return result;
}

unint64_t sub_1B8C153A0()
{
  result = qword_1EBAA8A60;
  if (!qword_1EBAA8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A60);
  }

  return result;
}

unint64_t sub_1B8C153F4()
{
  result = qword_1EBAA8A68;
  if (!qword_1EBAA8A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A68);
  }

  return result;
}

unint64_t sub_1B8C15448()
{
  result = qword_1EBAA8A78;
  if (!qword_1EBAA8A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8A70, &qword_1B8C2FD88);
    sub_1B8C154CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A78);
  }

  return result;
}

unint64_t sub_1B8C154CC()
{
  result = qword_1EBAA8A80;
  if (!qword_1EBAA8A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A80);
  }

  return result;
}

unint64_t sub_1B8C15520()
{
  result = qword_1EBAA8A90;
  if (!qword_1EBAA8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A90);
  }

  return result;
}

unint64_t sub_1B8C15574()
{
  result = qword_1EBAA8A98;
  if (!qword_1EBAA8A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8A70, &qword_1B8C2FD88);
    sub_1B8C155F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A98);
  }

  return result;
}

unint64_t sub_1B8C155F8()
{
  result = qword_1EBAA8AA0;
  if (!qword_1EBAA8AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8AA0);
  }

  return result;
}

unint64_t sub_1B8C15650()
{
  result = qword_1EBAA8AB0;
  if (!qword_1EBAA8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8AB0);
  }

  return result;
}

unint64_t sub_1B8C156A8()
{
  result = qword_1EBAA8AB8;
  if (!qword_1EBAA8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8AB8);
  }

  return result;
}

uint64_t keypath_get_16Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t keypath_get_42Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_43Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_get_36Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t get_enum_tag_for_layout_string_8Feedback15FBKFeedbackFormC8QuestionO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B8C16C24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B8C16C7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8Feedback15FBKFeedbackFormC0C8ResponseV8QuestionV4KindO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}