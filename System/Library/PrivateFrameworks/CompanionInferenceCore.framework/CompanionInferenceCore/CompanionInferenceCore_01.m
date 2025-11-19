uint64_t sub_243CF4C3C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA018, &unk_243D10E10);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_243D076E0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_243CF4D3C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9D50, &qword_243D0FF88);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_243CF4DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_243CF60CC();

  result = sub_243D0EEAC();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_243CF5330();
    v43 = v42;

    v9 = v43;
    if ((v43 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_243D0F1EC();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v25 = v10 - 1;
        if (v10 != 1)
        {
          v26 = a5 + 48;
          v27 = a5 + 55;
          v28 = a5 + 87;
          if (a5 > 10)
          {
            v26 = 58;
          }

          else
          {
            v28 = 97;
            v27 = 65;
          }

          if (result)
          {
            v16 = 0;
            v29 = result + 1;
            v18 = 1;
            do
            {
              v30 = *v29;
              if (v30 < 0x30 || v30 >= v26)
              {
                if (v30 < 0x41 || v30 >= v27)
                {
                  v21 = 0;
                  if (v30 < 0x61 || v30 >= v28)
                  {
                    goto LABEL_129;
                  }

                  v31 = -87;
                }

                else
                {
                  v31 = -55;
                }
              }

              else
              {
                v31 = -48;
              }

              v32 = v16 * a5;
              if ((v32 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v33 = v30 + v31;
              v24 = __CFADD__(v32, v33);
              v16 = v32 + v33;
              if (v24)
              {
                goto LABEL_128;
              }

              ++v29;
              --v25;
            }

            while (v25);
LABEL_47:
            v18 = 0;
            v21 = v16;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v21 = 0;
        v18 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v34 = a5 + 48;
        v35 = a5 + 55;
        v36 = a5 + 87;
        if (a5 > 10)
        {
          v34 = 58;
        }

        else
        {
          v36 = 97;
          v35 = 65;
        }

        if (result)
        {
          v37 = 0;
          v18 = 1;
          do
          {
            v38 = *result;
            if (v38 < 0x30 || v38 >= v34)
            {
              if (v38 < 0x41 || v38 >= v35)
              {
                v21 = 0;
                if (v38 < 0x61 || v38 >= v36)
                {
                  goto LABEL_129;
                }

                v39 = -87;
              }

              else
              {
                v39 = -55;
              }
            }

            else
            {
              v39 = -48;
            }

            v40 = v37 * a5;
            if ((v40 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v41 = v38 + v39;
            v24 = __CFADD__(v40, v41);
            v37 = v40 + v41;
            if (v24)
            {
              goto LABEL_128;
            }

            ++result;
            --v10;
          }

          while (v10);
          v18 = 0;
          v21 = v37;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          v18 = 1;
          while (1)
          {
            v19 = *v17;
            if (v19 < 0x30 || v19 >= v13)
            {
              if (v19 < 0x41 || v19 >= v14)
              {
                v21 = 0;
                if (v19 < 0x61 || v19 >= v15)
                {
                  goto LABEL_129;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v22 = v16 * a5;
            if ((v22 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v23 = v19 + v20;
            v24 = v22 >= v23;
            v16 = v22 - v23;
            if (!v24)
            {
              goto LABEL_128;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v21 = 0;
        v18 = 0;
LABEL_129:

        LOBYTE(v72) = v18;
        return (v21 | (v18 << 32));
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

  v44 = HIBYTE(v9) & 0xF;
  v72 = v8;
  v73 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v44)
      {
        v46 = 0;
        v64 = a5 + 48;
        v65 = a5 + 55;
        v66 = a5 + 87;
        if (a5 > 10)
        {
          v64 = 58;
        }

        else
        {
          v66 = 97;
          v65 = 65;
        }

        v67 = &v72;
        v18 = 1;
        while (1)
        {
          v68 = *v67;
          if (v68 < 0x30 || v68 >= v64)
          {
            if (v68 < 0x41 || v68 >= v65)
            {
              v21 = 0;
              if (v68 < 0x61 || v68 >= v66)
              {
                goto LABEL_129;
              }

              v69 = -87;
            }

            else
            {
              v69 = -55;
            }
          }

          else
          {
            v69 = -48;
          }

          v70 = v46 * a5;
          if ((v70 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v71 = v68 + v69;
          v24 = __CFADD__(v70, v71);
          v46 = v70 + v71;
          if (v24)
          {
            goto LABEL_128;
          }

          v67 = (v67 + 1);
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v44)
    {
      v45 = v44 - 1;
      if (v45)
      {
        v46 = 0;
        v47 = a5 + 48;
        v48 = a5 + 55;
        v49 = a5 + 87;
        if (a5 > 10)
        {
          v47 = 58;
        }

        else
        {
          v49 = 97;
          v48 = 65;
        }

        v50 = &v72 + 1;
        v18 = 1;
        while (1)
        {
          v51 = *v50;
          if (v51 < 0x30 || v51 >= v47)
          {
            if (v51 < 0x41 || v51 >= v48)
            {
              v21 = 0;
              if (v51 < 0x61 || v51 >= v49)
              {
                goto LABEL_129;
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

          v53 = v46 * a5;
          if ((v53 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v54 = v51 + v52;
          v24 = v53 >= v54;
          v46 = v53 - v54;
          if (!v24)
          {
            goto LABEL_128;
          }

          ++v50;
          if (!--v45)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v44)
  {
    v55 = v44 - 1;
    if (v55)
    {
      v46 = 0;
      v56 = a5 + 48;
      v57 = a5 + 55;
      v58 = a5 + 87;
      if (a5 > 10)
      {
        v56 = 58;
      }

      else
      {
        v58 = 97;
        v57 = 65;
      }

      v59 = &v72 + 1;
      v18 = 1;
      do
      {
        v60 = *v59;
        if (v60 < 0x30 || v60 >= v56)
        {
          if (v60 < 0x41 || v60 >= v57)
          {
            v21 = 0;
            if (v60 < 0x61 || v60 >= v58)
            {
              goto LABEL_129;
            }

            v61 = -87;
          }

          else
          {
            v61 = -55;
          }
        }

        else
        {
          v61 = -48;
        }

        v62 = v46 * a5;
        if ((v62 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v63 = v60 + v61;
        v24 = __CFADD__(v62, v63);
        v46 = v62 + v63;
        if (v24)
        {
          goto LABEL_128;
        }

        ++v59;
        --v55;
      }

      while (v55);
LABEL_127:
      v18 = 0;
      v21 = v46;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_243CF5330()
{
  v0 = sub_243CF539C();
  v4 = sub_243CF53D0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_243CF53D0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_243D0EDEC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_243D0F18C();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_243CF4D3C(v9, 0);
  v12 = sub_243CF5530(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_243D0EDEC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_243D0F1EC();
LABEL_4:

  return sub_243D0EDEC();
}

unint64_t sub_243CF5530(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_243CF5740(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_243D0EE7C();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_243D0F1EC();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_243CF5740(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_243D0EE4C();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_243CF5740(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_243D0EE8C();
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
    v5 = MEMORY[0x245D4EC00](15, a1 >> 16);
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

uint64_t sub_243CF57BC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v14 = 0;
    return v14 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_243D0F1EC();
  }

  result = sub_243CF5894(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v16 = BYTE4(result) & 1;
    v14 = result | ((BYTE4(result) & 1) << 32);
    return v14 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

uint64_t sub_243CF5894(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_243CF5740(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_105;
    }

    result = sub_243D0EE6C();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_243CF5740(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_243CF5740(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_101;
  }

  if (v23 < a4 >> 16)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  result = sub_243D0EE6C();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_100;
  }

  if (v24 < v18)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v40 = a7 + 55;
        }

        else
        {
          v39 = 97;
          v40 = 65;
        }

        if (a7 <= 10)
        {
          v41 = a7 + 48;
        }

        else
        {
          v41 = 58;
        }

        if (v25)
        {
          v30 = 0;
          v42 = v25 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v35 = 0;
                v36 = 1;
                if (v44 < 0x61 || v44 >= v39)
                {
                  return v35 | (v36 << 32);
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v30 * a7;
            if ((v46 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_97;
            }

            v47 = v44 + v45;
            v30 = v46 + v47;
            if (__CFADD__(v46, v47))
            {
              goto LABEL_97;
            }

            ++v42;
            --v43;
          }

          while (v43);
LABEL_95:
          v36 = 0;
          v35 = v30;
          return v35 | (v36 << 32);
        }

        goto LABEL_96;
      }

      goto LABEL_97;
    }

    goto LABEL_104;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v48 = a7 + 87;
      if (a7 > 10)
      {
        v49 = a7 + 55;
      }

      else
      {
        v48 = 97;
        v49 = 65;
      }

      if (a7 <= 10)
      {
        v50 = a7 + 48;
      }

      else
      {
        v50 = 58;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v51 = *v25;
          if (v51 < 0x30 || v51 >= v50)
          {
            if (v51 < 0x41 || v51 >= v49)
            {
              v35 = 0;
              v36 = 1;
              if (v51 < 0x61 || v51 >= v48)
              {
                return v35 | (v36 << 32);
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

          v53 = v30 * a7;
          if ((v53 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_97;
          }

          v54 = v51 + v52;
          v30 = v53 + v54;
          if (__CFADD__(v53, v54))
          {
            goto LABEL_97;
          }

          ++v25;
          if (!--result)
          {
            goto LABEL_95;
          }
        }
      }

      goto LABEL_96;
    }

LABEL_97:
    v35 = 0;
    v36 = 1;
    return v35 | (v36 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 87;
      if (a7 > 10)
      {
        v28 = a7 + 55;
      }

      else
      {
        v27 = 97;
        v28 = 65;
      }

      if (a7 <= 10)
      {
        v29 = a7 + 48;
      }

      else
      {
        v29 = 58;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v29)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              v36 = 1;
              if (v33 < 0x61 || v33 >= v27)
              {
                return v35 | (v36 << 32);
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

          v37 = v30 * a7;
          if ((v37 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_97;
          }

          v38 = v33 + v34;
          v30 = v37 - v38;
          if (v37 < v38)
          {
            goto LABEL_97;
          }

          ++v31;
          if (!--v32)
          {
            goto LABEL_95;
          }
        }
      }

LABEL_96:
      v35 = 0;
      v36 = 0;
      return v35 | (v36 << 32);
    }

    goto LABEL_97;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

unint64_t sub_243CF5D14()
{
  result = qword_27EDA9FE0;
  if (!qword_27EDA9FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA9FE0);
  }

  return result;
}

unint64_t sub_243CF5D6C()
{
  result = qword_27EDA9FF0;
  if (!qword_27EDA9FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA9FF0);
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Version(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Version(uint64_t result, int a2, int a3)
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

  *(result + 12) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Version.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Version.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x243CF5F84);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_243CF5FC8()
{
  result = qword_27EDA9FF8;
  if (!qword_27EDA9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA9FF8);
  }

  return result;
}

unint64_t sub_243CF6020()
{
  result = qword_27EDAA000;
  if (!qword_27EDAA000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA000);
  }

  return result;
}

unint64_t sub_243CF6078()
{
  result = qword_27EDAA008;
  if (!qword_27EDAA008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA008);
  }

  return result;
}

unint64_t sub_243CF60CC()
{
  result = qword_27EDAA010;
  if (!qword_27EDAA010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA010);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1)
{

  return MEMORY[0x2821FDA60](a1, v1);
}

uint64_t OUTLINED_FUNCTION_4_4(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FDBA0](a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return sub_243D0F2FC();
}

NSObject *sub_243CF61C0(char a1, double a2)
{
  result = nw_parameters_create_application_service_quic();
  if (result)
  {
    v5 = result;
    nw_parameters_set_prohibit_expensive(result, 1);
    nw_parameters_set_prohibit_constrained(v5, 1);
    nw_parameters_set_include_peer_to_peer(v5, 1);
    swift_unknownObjectRetain();
    nw_parameters_set_attach_protocol_listener();
    empty = xpc_array_create_empty();
    v7 = sub_243D0EC1C();
    xpc_array_set_string(empty, v7, "com.apple.networkrelay");
    v8 = xpc_array_create_empty();
    v9 = sub_243D0EC1C();
    if (a1)
    {
      xpc_array_set_string(v8, v9, "ASListener");
      nw_parameters_set_local_only(v5, 0);
    }

    else
    {
      xpc_array_set_string(v8, v9, "ASResolver");
    }

    nw_parameters_set_preferred_netagent_classes();
    swift_unknownObjectRelease();
    nw_parameters_set_multipath_service(v5, nw_multipath_service_disabled);
    v10 = nw_parameters_copy_default_protocol_stack(v5);
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_243CF64DC;
    *(v12 + 24) = v11;
    v15[4] = sub_243CF64F0;
    v15[5] = v12;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_243CF6518;
    v15[3] = &block_descriptor;
    v13 = _Block_copy(v15);

    nw_protocol_stack_iterate_application_protocols(v10, v13);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_243CF640C(NSObject *a1, double a2)
{
  if (!nw_protocol_options_is_quic(a1))
  {
    return;
  }

  v4 = a2 * 1000.0;
  v5 = COERCE__INT64(fabs(a2 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL;
  if (a2 * 1000.0 < 4294967300.0)
  {
    if (v5)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  else
  {
    v4 = 4294967290.0;
  }

  if (v4 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 >= 4294967300.0)
  {
LABEL_13:
    __break(1u);
    return;
  }

  nw_quic_set_idle_timeout(a1, v4);
}

uint64_t sub_243CF64F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_243CF6518(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243CF658C()
{
  v1 = sub_243D0E75C();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v2);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v19 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  sub_243D0E74C();
  v15 = OBJC_IVAR____TtC22CompanionInferenceCore10Connection_lastTimeUsed;
  swift_beginAccess();
  (*(v4 + 16))(v9, v0 + v15, v1);
  sub_243D0E73C();
  v16 = *(v4 + 8);
  v16(v9, v1);
  sub_243CFB530(&qword_27EDAA108, MEMORY[0x277CC9578]);
  v17 = sub_243D0ED4C();
  v16(v12, v1);
  v16(v14, v1);
  return v17 & 1;
}

uint64_t sub_243CF6760(uint64_t a1, uint64_t a2)
{
  sub_243D0E74C();
  *(v2 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_keepAliveInterval) = 10;
  *(v2 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_isCanceled) = 0;
  v5 = (v2 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_didCancel);
  *v6 = 0;
  v6[1] = 0;
  *(v2 + 16) = a1;
  *(v2 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_queue) = a2;
  return v2;
}

uint64_t sub_243CF67EC()
{
  v1 = sub_243D0E75C();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 16);
  v10 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_243CFB144;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243CF6EC0;
  aBlock[3] = &block_descriptor_31;
  v11 = _Block_copy(aBlock);

  nw_connection_set_state_changed_handler(v9, v11);
  _Block_release(v11);
  nw_connection_set_queue(v9, *(v0 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_queue));
  v12 = nw_protocol_copy_quic_definition();
  v13 = nw_connection_copy_protocol_metadata(v9, v12);
  swift_unknownObjectRelease();
  if (v13)
  {
    if (MEMORY[0x245D4F470](v13))
    {
      nw_quic_set_keepalive();
    }

    swift_unknownObjectRelease();
  }

  nw_connection_start(v9);
  sub_243D0E74C();
  v14 = OBJC_IVAR____TtC22CompanionInferenceCore10Connection_lastTimeUsed;
  swift_beginAccess();
  (*(v4 + 40))(v0 + v14, v8, v1);
  return swift_endAccess();
}

uint64_t sub_243CF69E4(int a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    if (qword_27EDA9980 != -1)
    {
      swift_once();
    }

    v6 = sub_243D0EC0C();
    __swift_project_value_buffer(v6, qword_27EDAA638);
    swift_unknownObjectRetain();

    v7 = sub_243D0EBEC();
    v8 = sub_243D0F0FC();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v9 = 136315650;
      nw_connection_state_to_string();
      v10 = sub_243D0EE2C();
      v12 = sub_243CE0A08(v10, v11, &v24);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2080;
      v13 = [*(v5 + 16) description];
      v14 = sub_243D0ED7C();
      v16 = v15;

      v17 = sub_243CE0A08(v14, v16, &v24);

      *(v9 + 14) = v17;
      *(v9 + 22) = 2080;
      if (a2)
      {
        v18 = [a2 description];
        v19 = sub_243D0ED7C();
        v21 = v20;
      }

      else
      {
        v21 = 0xE400000000000000;
        v19 = 1280070990;
      }

      v22 = sub_243CE0A08(v19, v21, &v24);

      *(v9 + 24) = v22;
      _os_log_impl(&dword_243CDB000, v7, v8, "Connection state update: %s - %s - error: %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245D4F8C0](v23, -1, -1);
      MEMORY[0x245D4F8C0](v9, -1, -1);
    }

    if ((a1 - 4) >= 2)
    {
      if (a1 == 3)
      {
        sub_243CF6C84();
      }

      if (!a2)
      {
      }
    }

    sub_243CF6F30();
  }

  return result;
}

uint64_t sub_243CF6C84()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA4D0, &qword_243D127C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  if (qword_27EDA9980 != -1)
  {
    swift_once();
  }

  v6 = sub_243D0EC0C();
  __swift_project_value_buffer(v6, qword_27EDAA638);

  v7 = sub_243D0EBEC();
  v8 = sub_243D0F0FC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v17 = *(v1 + 16);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0C0, &qword_243D10F38);
    v11 = sub_243D0EDCC();
    v13 = sub_243CE0A08(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_243CDB000, v7, v8, "Receiving network message on [%s]", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x245D4F8C0](v10, -1, -1);
    MEMORY[0x245D4F8C0](v9, -1, -1);
  }

  v14 = sub_243D0EF8C();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v1;

  sub_243CEE6DC(0, 0, v5, &unk_243D10F58, v15);
}

uint64_t sub_243CF6EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_243CF6F30()
{
  v2 = v0;
  v3 = sub_243D0E75C();
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v4);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC22CompanionInferenceCore10Connection_isCanceled;
  if ((*(v0 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_isCanceled) & 1) == 0)
  {
    if (qword_27EDA9980 != -1)
    {
      OUTLINED_FUNCTION_12_2();
    }

    v13 = sub_243D0EC0C();
    __swift_project_value_buffer(v13, qword_27EDAA638);
    OUTLINED_FUNCTION_28_1();

    v14 = sub_243D0EBEC();
    sub_243D0F0FC();
    OUTLINED_FUNCTION_27_2();

    if (OUTLINED_FUNCTION_31_1())
    {
      v15 = OUTLINED_FUNCTION_44_0();
      v28 = v3;
      v16 = v15;
      v17 = swift_slowAlloc();
      v30 = v17;
      *v16 = 136315138;
      v29 = *(v2 + 16);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0C0, &qword_243D10F38);
      v18 = sub_243D0EDCC();
      v20 = sub_243CE0A08(v18, v19, &v30);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_243CDB000, v14, v1, "Destroying connection %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      OUTLINED_FUNCTION_17_1();
      v21 = v16;
      v3 = v28;
      MEMORY[0x245D4F8C0](v21, -1, -1);
    }

    nw_connection_cancel(*(v2 + 16));
    sub_243D0E72C();
    v22 = OBJC_IVAR____TtC22CompanionInferenceCore10Connection_lastTimeUsed;
    swift_beginAccess();
    (*(v6 + 40))(v2 + v22, v11, v3);
    result = swift_endAccess();
    *(v2 + v12) = 1;
    v23 = v2 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_didCancel;
    v24 = *(v2 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_didCancel);
    if (v24)
    {
      v25 = *(v23 + 8);

      v24(v26);
      return sub_243CFB0FC(v24);
    }
  }

  return result;
}

uint64_t sub_243CF7194()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC22CompanionInferenceCore10Connection_lastTimeUsed;
  v3 = sub_243D0E75C();
  OUTLINED_FUNCTION_16_1(v3);
  (*(v4 + 8))(v0 + v2);

  v5 = *(v0 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived + 8);
  sub_243CFB0FC(*(v0 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived));
  v6 = *(v0 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_didCancel + 8);
  sub_243CFB0FC(*(v0 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_didCancel));
  return v0;
}

uint64_t sub_243CF7228()
{
  sub_243CF7194();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for Connection()
{
  result = qword_27EDAA0A8;
  if (!qword_27EDAA0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243CF72D4()
{
  result = sub_243D0E75C();
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

uint64_t sub_243CF73A0(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived);
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_243CFB0FC(v4);
}

uint64_t sub_243CF73C4()
{
  OUTLINED_FUNCTION_13();
  v1[3] = v2;
  v1[4] = v0;
  v3 = *(*(type metadata accessor for NetworkMessage() - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  OUTLINED_FUNCTION_20();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_243CF744C()
{
  v33 = v0;
  v1 = v0[3];
  v2 = sub_243D0D78C();
  v0[6] = v2;
  v0[7] = v3;
  v4 = v2;
  v5 = v3;
  if (qword_27EDA9980 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  v9 = sub_243D0EC0C();
  __swift_project_value_buffer(v9, qword_27EDAA638);
  OUTLINED_FUNCTION_5_1();
  sub_243CFB2F8(v8, v6, v10);

  v11 = sub_243D0EBEC();
  LOBYTE(v8) = sub_243D0F0FC();

  v12 = os_log_type_enabled(v11, v8);
  v13 = v0[5];
  if (v12)
  {
    v31 = v0[4];
    v14 = OUTLINED_FUNCTION_32_1();
    v32[0] = swift_slowAlloc();
    *v14 = 136315394;
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);

    OUTLINED_FUNCTION_0_8();
    sub_243CFB2A4(v13, v17);
    v18 = sub_243CE0A08(v15, v16, v32);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v0[2] = *(v31 + 16);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0C0, &qword_243D10F38);
    v19 = sub_243D0EDCC();
    v21 = sub_243CE0A08(v19, v20, v32);

    *(v14 + 14) = v21;
    OUTLINED_FUNCTION_21_0();
    _os_log_impl(v22, v23, v24, v25, v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_12_3();
  }

  else
  {

    OUTLINED_FUNCTION_0_8();
    sub_243CFB2A4(v13, v27);
  }

  v28 = swift_task_alloc();
  v0[8] = v28;
  *v28 = v0;
  v28[1] = sub_243CF7704;
  v29 = v0[4];

  return sub_243CF78D0(v4, v5);
}

uint64_t sub_243CF7704()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  v3 = *(v2 + 64);
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_20();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_243CF7804()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[5];
  sub_243CE148C(v0[6], v0[7]);

  OUTLINED_FUNCTION_9();

  return v2();
}

uint64_t sub_243CF786C()
{
  OUTLINED_FUNCTION_13();
  sub_243CE148C(v0[6], v0[7]);
  v1 = v0[9];
  v2 = v0[5];

  OUTLINED_FUNCTION_9();

  return v3();
}

uint64_t sub_243CF78D0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  OUTLINED_FUNCTION_20();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_243CF7900()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = *(v1 + 16);
  id = nw_connection_get_id();
  v6 = swift_task_alloc();
  v0[5] = v6;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = id;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_243CF7A04;
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822008A0](v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_243CF7A04()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v9 = *(v3 + 40);
  }

  OUTLINED_FUNCTION_20();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_243CF7B28()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_9();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_243CF7B84(uint64_t a1, uint64_t a2, unint64_t a3)
{
  switch(a3 >> 62)
  {
    case 1uLL:
      if (a2 >> 32 < a2)
      {
        __break(1u);
        JUMPOUT(0x243CF7C90);
      }

      v4 = a2;
      v5 = a2 >> 32;
      return sub_243CFAF34(v4, v5, sub_243CFAF14);
    case 2uLL:
      v4 = *(a2 + 16);
      v5 = *(a2 + 24);
      return sub_243CFAF34(v4, v5, sub_243CFAF14);
    case 3uLL:
      v7 = 0;
      v9 = 0;
      v8 = 0;
      v3 = &v7;
      return sub_243CFAF14(&v7, v3);
    default:
      v7 = a2;
      v8 = a3;
      v9 = WORD2(a3);
      v3 = (&v7 + BYTE6(a3));
      return sub_243CFAF14(&v7, v3);
  }
}

uint64_t sub_243CF7CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v29 = a3;
  v30 = a4;
  v6 = sub_243D0E75C();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0C8, &unk_243D10F40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v31 = sub_243D0ED0C();
  v14 = *(v31 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v31);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243D0ECEC();
  v27 = *(a3 + 16);
  v18 = sub_243D0ECCC();
  v19 = *MEMORY[0x277CD9218];
  (*(v10 + 16))(v13, v28, v9);
  v20 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v30;
  (*(v10 + 32))(v21 + v20, v13, v9);
  aBlock[4] = sub_243CFB064;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243CF8308;
  aBlock[3] = &block_descriptor_0;
  v22 = _Block_copy(aBlock);

  nw_connection_send(v27, v18, v19, 1, v22);
  _Block_release(v22);

  v23 = v32;
  sub_243D0E74C();
  (*(v14 + 8))(v17, v31);
  v24 = OBJC_IVAR____TtC22CompanionInferenceCore10Connection_lastTimeUsed;
  v25 = v29;
  swift_beginAccess();
  (*(v33 + 40))(v25 + v24, v23, v34);
  return swift_endAccess();
}

uint64_t sub_243CF8000(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = qword_27EDA9980;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_243D0EC0C();
    __swift_project_value_buffer(v5, qword_27EDAA638);
    swift_unknownObjectRetain();
    v6 = sub_243D0EBEC();
    v7 = sub_243D0F0FC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v26 = v9;
      *v8 = 134218242;
      *(v8 + 4) = a2;
      *(v8 + 12) = 2080;
      v10 = [a1 description];
      v11 = sub_243D0ED7C();
      v13 = v12;

      v14 = sub_243CE0A08(v11, v13, &v26);

      *(v8 + 14) = v14;
      _os_log_impl(&dword_243CDB000, v6, v7, "[%llu Failed to send with error %s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x245D4F8C0](v9, -1, -1);
      MEMORY[0x245D4F8C0](v8, -1, -1);
    }

    v15 = [a1 description];
    v16 = sub_243D0ED7C();
    v18 = v17;

    sub_243CE9F0C();
    v19 = swift_allocError();
    *v20 = v16;
    *(v20 + 8) = v18;
    *(v20 + 16) = 0;
    v26 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0C8, &unk_243D10F40);
    sub_243D0EEEC();
    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27EDA9980 != -1)
    {
      swift_once();
    }

    v22 = sub_243D0EC0C();
    __swift_project_value_buffer(v22, qword_27EDAA638);
    v23 = sub_243D0EBEC();
    v24 = sub_243D0F0FC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = a2;
      _os_log_impl(&dword_243CDB000, v23, v24, "************ Data sent on [%llu]", v25, 0xCu);
      MEMORY[0x245D4F8C0](v25, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0C8, &unk_243D10F40);
    return sub_243D0EEFC();
  }
}

uint64_t sub_243CF8308(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_243CF8368(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = v4;
  *(v5 + 80) = a3;
  *(v5 + 84) = a4;
  *(v5 + 32) = a1;
  return MEMORY[0x2822009F8](sub_243CF8390, 0, 0);
}

uint64_t sub_243CF8390()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = v0[10];
  v4[2] = v1;
  v4[3] = v5;
  v4[4] = v3;
  v4[5] = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_243CF8490;
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822008A0](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_243CF8490()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  OUTLINED_FUNCTION_20();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_243CF85AC()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_9();
  v3 = *(v0 + 72);

  return v2();
}

void sub_243CF8608(uint64_t a1, uint64_t a2, uint32_t a3, uint32_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0E8, &unk_243D10F90);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v20 = *(a2 + 16);
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v12 + 16))(v15, a1, v11);
  v17 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v16;
  *(v18 + 3) = a5;
  *(v18 + 4) = a6;
  (*(v12 + 32))(&v18[v17], v15, v11);
  *&v18[(v13 + v17 + 3) & 0xFFFFFFFFFFFFFFFCLL] = a4;
  aBlock[4] = sub_243CFB458;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243CF8F7C;
  aBlock[3] = &block_descriptor_54;
  v19 = _Block_copy(aBlock);

  nw_connection_receive(v20, v21, a4, v19);
  _Block_release(v19);
}

uint64_t sub_243CF8820(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, int a9)
{
  v76 = a8;
  v15 = sub_243D0ED0C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    v72 = a3;
    v74 = a6;
    if (qword_27EDA9980 != -1)
    {
      swift_once();
    }

    v21 = sub_243D0EC0C();
    v22 = __swift_project_value_buffer(v21, qword_27EDAA638);
    swift_unknownObjectRetain();

    v23 = a1;
    swift_unknownObjectRetain();
    v73 = v22;
    v24 = sub_243D0EBEC();
    v25 = sub_243D0F0FC();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v26 = os_log_type_enabled(v24, v25);
    v75 = v20;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v71 = v18;
      v28 = v27;
      v68 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v77[0] = v70;
      *v28 = 136316418;
      *(v28 + 4) = sub_243CE0A08(v74, a7, v77);
      *(v28 + 12) = 2080;
      v78 = *(v20 + 16);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0C0, &qword_243D10F38);
      v29 = sub_243D0EDCC();
      v69 = v25;
      v31 = sub_243CE0A08(v29, v30, v77);

      *(v28 + 14) = v31;
      *(v28 + 22) = 2112;
      *(v28 + 24) = v23;
      v32 = v68;
      *v68 = a1;
      *(v28 + 32) = 2080;
      v78 = a2;
      v33 = v23;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0F8, qword_243D10FB0);
      v34 = sub_243D0EDCC();
      v36 = sub_243CE0A08(v34, v35, v77);

      *(v28 + 34) = v36;
      *(v28 + 42) = 1024;
      *(v28 + 44) = v72 & 1;
      *(v28 + 48) = 2080;
      v78 = a4;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0F0, &unk_243D10FA0);
      v37 = sub_243D0EDCC();
      v39 = sub_243CE0A08(v37, v38, v77);

      *(v28 + 50) = v39;
      _os_log_impl(&dword_243CDB000, v24, v69, "Receiving %s on: %s; Parameters: content: %@, context: %s, isComplete: %{BOOL}d, error: %s", v28, 0x3Au);
      sub_243CFB23C(v32);
      MEMORY[0x245D4F8C0](v32, -1, -1);
      v40 = v70;
      swift_arrayDestroy();
      MEMORY[0x245D4F8C0](v40, -1, -1);
      v41 = v28;
      v18 = v71;
      MEMORY[0x245D4F8C0](v41, -1, -1);
    }

    if (a1)
    {
      sub_243D0ECDC();
      v42 = v23;
      v43 = sub_243CE4648(v18);
      v45 = v44;

      v46 = v75;

      v47 = sub_243D0EBEC();
      v48 = sub_243D0F0FC();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v77[0] = v50;
        *v49 = 136315906;
        *(v49 + 4) = sub_243CE0A08(v74, a7, v77);
        *(v49 + 12) = 1024;
        *(v49 + 14) = a9;
        *(v49 + 18) = 2048;
        v51 = 0;
        switch(v45 >> 62)
        {
          case 1uLL:
            LODWORD(v51) = HIDWORD(v43) - v43;
            if (__OFSUB__(HIDWORD(v43), v43))
            {
              __break(1u);
LABEL_20:
              __break(1u);
              JUMPOUT(0x243CF8F6CLL);
            }

            v51 = v51;
LABEL_16:
            *(v49 + 20) = v51;
            *(v49 + 28) = 2080;
            v78 = *(v46 + 16);
            swift_unknownObjectRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0C0, &qword_243D10F38);
            v64 = sub_243D0EDCC();
            v66 = sub_243CE0A08(v64, v65, v77);

            *(v49 + 30) = v66;
            _os_log_impl(&dword_243CDB000, v47, v48, "Received %s. Expected %u; got %ld on %s;", v49, 0x26u);
            swift_arrayDestroy();
            MEMORY[0x245D4F8C0](v50, -1, -1);
            MEMORY[0x245D4F8C0](v49, -1, -1);
            break;
          case 2uLL:
            v62 = *(v43 + 16);
            v61 = *(v43 + 24);
            v63 = __OFSUB__(v61, v62);
            v51 = v61 - v62;
            if (!v63)
            {
              goto LABEL_16;
            }

            goto LABEL_20;
          case 3uLL:
            goto LABEL_16;
          default:
            v51 = BYTE6(v45);
            goto LABEL_16;
        }
      }

      v77[0] = v43;
      v77[1] = v45;
      sub_243CE1434(v43, v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0E8, &unk_243D10F90);
      sub_243D0EEFC();

      return sub_243CE148C(v43, v45);
    }

    else
    {

      swift_unknownObjectRetain();
      v52 = sub_243D0EBEC();
      v53 = sub_243D0F0EC();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v77[0] = v55;
        *v54 = 136315394;
        *(v54 + 4) = sub_243CE0A08(v74, a7, v77);
        *(v54 + 12) = 2080;
        v78 = a4;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0F0, &unk_243D10FA0);
        v56 = sub_243D0EDCC();
        v58 = sub_243CE0A08(v56, v57, v77);

        *(v54 + 14) = v58;
        _os_log_impl(&dword_243CDB000, v52, v53, "Received nil as content when receiving %s, error: %s", v54, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D4F8C0](v55, -1, -1);
        MEMORY[0x245D4F8C0](v54, -1, -1);
      }

      sub_243CE9F0C();
      v59 = swift_allocError();
      *v60 = xmmword_243D108B0;
      *(v60 + 16) = 2;
      v77[0] = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0E8, &unk_243D10F90);
      sub_243D0EEEC();
    }
  }

  return result;
}

void sub_243CF8F7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v11 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10(a2, a3, a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_243CF902C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for NetworkMessage();
  v4[3] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v7 = *(*(type metadata accessor for NetworkProto.Header(0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = type metadata accessor for HeaderPreamble();
  v4[6] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v10 = swift_task_alloc();
  v4[7] = v10;
  v11 = swift_task_alloc();
  v4[8] = v11;
  *v11 = v4;
  v11[1] = sub_243CF9158;

  return sub_243CF9CC0(v10);
}

uint64_t sub_243CF9158()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_20();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3[7] + *(v3[6] + 20));
    v13 = swift_task_alloc();
    v3[10] = v13;
    *v13 = v7;
    v13[1] = sub_243CF92CC;
    v14 = v3[5];
    v15 = v3[2];

    return sub_243CF9F20(v14, v12);
  }
}

uint64_t sub_243CF92CC()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_20();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[12] = v12;
    *v12 = v7;
    v12[1] = sub_243CF9424;
    v13 = v3[2];
    v14 = v3[5];

    return sub_243CFA290(v14);
  }
}

uint64_t sub_243CF9424()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_15();
  v7 = v6;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  v10 = *(v9 + 96);
  v11 = *v1;
  OUTLINED_FUNCTION_3();
  *v12 = v11;
  v7[13] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  else
  {
    v17 = v7[4];
    v18 = v7[3];
    sub_243CFB2F8(v7[5], v17, type metadata accessor for NetworkProto.Header);
    v19 = (v17 + *(v18 + 20));
    *v19 = v5;
    v19[1] = v3;
    v20 = swift_task_alloc();
    v7[14] = v20;
    *v20 = v11;
    v20[1] = sub_243CF95C0;
    v21 = v7[4];
    v22 = v7[2];
    OUTLINED_FUNCTION_35_1();

    return sub_243CFA46C();
  }
}

uint64_t sub_243CF95C0()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  v3 = *(v2 + 112);
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_20();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_243CF96C0()
{
  OUTLINED_FUNCTION_22();
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  sub_243CF6C84();
  OUTLINED_FUNCTION_0_8();
  sub_243CFB2A4(v3, v5);
  OUTLINED_FUNCTION_6_2();
  sub_243CFB2A4(v2, v6);
  OUTLINED_FUNCTION_2_8();
  sub_243CFB2A4(v1, v7);
  OUTLINED_FUNCTION_30_1();

  OUTLINED_FUNCTION_9();

  return v8();
}

uint64_t sub_243CF9CC0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_243CF9D70;

  return sub_243CF8368(0x656C626D61657270, 0xE800000000000000, 20, 20);
}

uint64_t sub_243CF9D70()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_15();
  v7 = v6;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  OUTLINED_FUNCTION_3();
  *v12 = v11;
  v7[4] = v0;

  if (v0)
  {
    v13 = *(v11 + 8);
    OUTLINED_FUNCTION_35_1();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v7[5] = v3;
    v7[6] = v5;
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v23, v24, v25);
  }
}

uint64_t sub_243CF9EA8()
{
  OUTLINED_FUNCTION_22();
  v1 = v0[4];
  sub_243CFCCC4(v0[6], v0[5], v0[2]);
  OUTLINED_FUNCTION_9();

  return v2();
}

uint64_t sub_243CF9F20(uint64_t a1, int a2)
{
  v2[4] = a1;
  v4 = *(*(sub_243D0E9DC() - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_243CF9FFC;

  return sub_243CF8368(0x726564616568, 0xE600000000000000, a2, a2);
}

uint64_t sub_243CF9FFC()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  *v4 = *v1;
  v3[7] = v8;
  v3[8] = v9;
  v3[9] = v0;

  if (v0)
  {
    v10 = v3[5];

    v11 = *(v7 + 8);

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_20();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_243CFA13C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  type metadata accessor for NetworkProto.Header(0);
  v0[2] = v3;
  v0[3] = v1;
  sub_243CE1434(v3, v1);
  sub_243D0E9CC();
  sub_243CFB530(&qword_27EDAA100, type metadata accessor for NetworkProto.Header);
  sub_243D0EACC();
  v6 = v0[7];
  v7 = v0[8];
  if (v2)
  {
    sub_243CE148C(v6, v7);
    v8 = v0[5];
  }

  else
  {
    v10 = v0[5];
    sub_243CE148C(v6, v7);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_243CFA290(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_243CFA2B0, 0, 0);
}

uint64_t sub_243CFA2B0()
{
  OUTLINED_FUNCTION_22();
  v1 = *(v0[2] + 92);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_243CFA36C;
  v3 = v0[3];

  return sub_243CF8368(0xD000000000000017, 0x8000000243D131B0, v1, v1);
}

uint64_t sub_243CFA36C()
{
  OUTLINED_FUNCTION_22();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_15();
  v7 = *(v6 + 32);
  v8 = *v1;
  OUTLINED_FUNCTION_3();
  *v9 = v8;

  v12 = *(v8 + 8);
  if (!v0)
  {
    v10 = v5;
    v11 = v3;
  }

  return v12(v10, v11);
}

uint64_t sub_243CFA46C()
{
  OUTLINED_FUNCTION_13();
  v1[17] = v2;
  v1[18] = v0;
  v3 = *(*(type metadata accessor for NetworkMessage() - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  OUTLINED_FUNCTION_20();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_243CFA500()
{
  v76 = v0;
  v1 = v0[17];
  v2 = *(v1 + 80);
  if (*(v1 + 88) == 1)
  {
    if (v2 >= 2)
    {
      if (v2 == 2)
      {
        if (qword_27EDA9980 != -1)
        {
          OUTLINED_FUNCTION_12_2();
          v1 = v0[17];
        }

        v24 = v0[19];
        v25 = sub_243D0EC0C();
        __swift_project_value_buffer(v25, qword_27EDAA638);
        OUTLINED_FUNCTION_5_1();
        sub_243CFB2F8(v1, v24, v26);
        v27 = sub_243D0EBEC();
        v28 = sub_243D0F0DC();
        v29 = OUTLINED_FUNCTION_37_0(v28);
        v30 = v0[19];
        if (v29)
        {
          v31 = OUTLINED_FUNCTION_44_0();
          swift_slowAlloc();
          OUTLINED_FUNCTION_26_2();
          *v31 = 136315138;
          v32 = *v30;
          v33 = v30[1];

          OUTLINED_FUNCTION_0_8();
          sub_243CFB2A4(v30, v34);
          v35 = sub_243CE0A08(v32, v33, v75);

          *(v31 + 4) = v35;
          OUTLINED_FUNCTION_21_0();
          _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
          OUTLINED_FUNCTION_8_2();
          OUTLINED_FUNCTION_12_3();
        }

        else
        {

          OUTLINED_FUNCTION_0_8();
          sub_243CFB2A4(v30, v58);
        }

        v59 = v0[18];
        v60 = v59 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived;
        v61 = *(v59 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived);
        v0[27] = v61;
        if (v61)
        {
          v0[28] = *(v60 + 8);
          v0[5] = type metadata accessor for Connection();
          v0[6] = &off_2856F1318;
          v0[2] = v59;
          v6 = v0 + 2;

          sub_243CFB360(v61);
          OUTLINED_FUNCTION_3_4();
          v74 = v62;
          v63 = *(v61 + 4);
          v9 = swift_task_alloc();
          v0[29] = v9;
          *v9 = v0;
          v10 = sub_243CFADB0;
          goto LABEL_25;
        }
      }

      else
      {
        if (qword_27EDA9980 != -1)
        {
          OUTLINED_FUNCTION_12_2();
          v1 = v0[17];
        }

        v41 = v0[20];
        v42 = sub_243D0EC0C();
        __swift_project_value_buffer(v42, qword_27EDAA638);
        OUTLINED_FUNCTION_5_1();
        sub_243CFB2F8(v1, v41, v43);
        v44 = sub_243D0EBEC();
        v45 = sub_243D0F0DC();
        v46 = OUTLINED_FUNCTION_37_0(v45);
        v47 = v0[20];
        if (v46)
        {
          v48 = OUTLINED_FUNCTION_44_0();
          swift_slowAlloc();
          OUTLINED_FUNCTION_26_2();
          *v48 = 136315138;
          v49 = *v47;
          v50 = v47[1];

          OUTLINED_FUNCTION_0_8();
          sub_243CFB2A4(v47, v51);
          v52 = sub_243CE0A08(v49, v50, v75);

          *(v48 + 4) = v52;
          OUTLINED_FUNCTION_21_0();
          _os_log_impl(v53, v54, v55, v56, v57, 0xCu);
          OUTLINED_FUNCTION_8_2();
          OUTLINED_FUNCTION_12_3();
        }

        else
        {

          OUTLINED_FUNCTION_0_8();
          sub_243CFB2A4(v47, v64);
        }

        v65 = v0[18];
        v66 = v65 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived;
        v67 = *(v65 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived);
        v0[24] = v67;
        if (v67)
        {
          v0[25] = *(v66 + 8);
          v0[10] = type metadata accessor for Connection();
          v0[11] = &off_2856F1318;
          v0[7] = v65;
          v6 = v0 + 7;

          sub_243CFB360(v67);
          OUTLINED_FUNCTION_3_4();
          v74 = v68;
          v69 = *(v67 + 4);
          v9 = swift_task_alloc();
          v0[26] = v9;
          *v9 = v0;
          v10 = sub_243CFAC58;
          goto LABEL_25;
        }
      }
    }

    else
    {
      v3 = v0[18];
      v4 = v3 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived;
      v5 = *(v3 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived);
      v0[21] = v5;
      if (v5)
      {
        v0[22] = *(v4 + 8);
        v0[15] = type metadata accessor for Connection();
        v0[16] = &off_2856F1318;
        v0[12] = v3;
        v6 = v0 + 12;
        sub_243CFB360(v5);

        OUTLINED_FUNCTION_3_4();
        v74 = v7;
        v8 = *(v5 + 4);
        v9 = swift_task_alloc();
        v0[23] = v9;
        *v9 = v0;
        v10 = sub_243CFAB00;
LABEL_25:
        v9[1] = v10;
        v70 = v0[17];

        return v74(v70, v6);
      }
    }

    v73 = v0[19];
    v72 = v0[20];

    OUTLINED_FUNCTION_9();
  }

  else
  {
    if (qword_27EDA9980 != -1)
    {
      OUTLINED_FUNCTION_12_2();
    }

    v11 = sub_243D0EC0C();
    __swift_project_value_buffer(v11, qword_27EDAA638);
    v12 = sub_243D0EBEC();
    v13 = sub_243D0F0DC();
    if (OUTLINED_FUNCTION_37_0(v13))
    {
      v14 = OUTLINED_FUNCTION_44_0();
      *v14 = 134217984;
      *(v14 + 4) = v2;
      OUTLINED_FUNCTION_21_0();
      _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
      OUTLINED_FUNCTION_12_3();
    }

    v21 = v0[19];
    v20 = v0[20];

    sub_243CE9F0C();
    swift_allocError();
    *v22 = xmmword_243D10E90;
    *(v22 + 16) = 2;
    swift_willThrow();

    OUTLINED_FUNCTION_9();
  }

  return v23();
}

uint64_t sub_243CFAB00()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  v4 = v1[23];
  v5 = v1[22];
  v6 = v1[21];
  *v3 = *v0;

  sub_243CFB0FC(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 12);
  v7 = v1[20];
  v8 = v1[19];

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_35_1();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_243CFAC58()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  v4 = v1[26];
  v5 = v1[25];
  v6 = v1[24];
  *v3 = *v0;

  sub_243CFB0FC(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 7);
  v7 = v1[20];
  v8 = v1[19];

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_35_1();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_243CFADB0()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  v4 = v1[29];
  v5 = v1[28];
  v6 = v1[27];
  *v3 = *v0;

  sub_243CFB0FC(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
  v7 = v1[20];
  v8 = v1[19];

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_35_1();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_243CFAF08(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_243CF7B84(a1, v1[2], v1[3]);
}

uint64_t sub_243CFAF34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_243D0E64C();
  v7 = result;
  if (result)
  {
    result = sub_243D0E66C();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_243D0E65C();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

uint64_t sub_243CFAFDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0C8, &unk_243D10F40);
  OUTLINED_FUNCTION_16_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_243CFB064(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0C8, &unk_243D10F40) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_243CF8000(a1, v4);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243CFB0FC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243CFB10C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243CFB14C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_243CFB18C()
{
  OUTLINED_FUNCTION_22();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_243CE06A0;

  return sub_243CF902C(v3, v4, v5, v6);
}

uint64_t sub_243CFB23C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0E0, &qword_243D10B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243CFB2A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_16_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_243CFB2F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_243CFB360(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243CFB380()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0E8, &unk_243D10F90);
  OUTLINED_FUNCTION_2(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = *(v0 + 16);

  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 4, v4 | 7);
}

uint64_t sub_243CFB458(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0E8, &unk_243D10F90) - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  return sub_243CF8820(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), *(v4 + 32), v4 + v10, *(v4 + ((*(v9 + 64) + v10 + 3) & 0xFFFFFFFFFFFFFFFCLL)));
}

uint64_t sub_243CFB530(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_8_2()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x245D4F8C0);
}

uint64_t OUTLINED_FUNCTION_10_1@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_243CE0A08(0xD000000000000017, (a1 - 32) | 0x8000000000000000, va);
}

void OUTLINED_FUNCTION_12_3()
{

  JUMPOUT(0x245D4F8C0);
}

void OUTLINED_FUNCTION_14_2(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2112;

  JUMPOUT(0x245D4F760);
}

void OUTLINED_FUNCTION_15_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_17_1()
{

  JUMPOUT(0x245D4F8C0);
}

uint64_t OUTLINED_FUNCTION_18_2()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_30_1()
{
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
}

BOOL OUTLINED_FUNCTION_31_1()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_33_2(uint64_t result)
{
  *(v1 + 14) = result;
  *v2 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_243CFB854(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 32))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 12);
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243CFB890(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_243CFB8E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_243D0EDBC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_243D0E5EC();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_243D0E5DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA118, &unk_243D11090);
  sub_243CFCA4C(&qword_27EDAA120, sub_243CFC950);
  sub_243D0E5CC();
  if (v1)
  {
    v8 = OUTLINED_FUNCTION_4_5();
    sub_243CE148C(v8, v9);
  }

  if (!*(v47 + 16))
  {
    goto LABEL_17;
  }

  v11 = sub_243CF2010(0x6E6F6973726576, 0xE700000000000000);
  if ((v12 & 1) == 0 || !*(v47 + 16))
  {
    goto LABEL_17;
  }

  v49 = a1;
  v13 = (*(v47 + 56) + 16 * v11);
  v14 = *v13;
  v15 = v13[1];
  sub_243CE1434(*v13, v15);
  v16 = sub_243CF2010(0xD000000000000014, 0x8000000243D132E0);
  if ((v17 & 1) == 0)
  {
    v34 = v14;
LABEL_15:
    v35 = v15;
    goto LABEL_16;
  }

  v46 = v15;
  if (!*(v47 + 16))
  {
    v34 = v14;
    v35 = v15;
LABEL_16:
    sub_243CE148C(v34, v35);
LABEL_17:

    sub_243CFC8FC();
    swift_allocError();
    *v36 = 0xD000000000000031;
    v36[1] = 0x8000000243D132A0;
    swift_willThrow();
    v32 = OUTLINED_FUNCTION_4_5();
    return sub_243CE148C(v32, v33);
  }

  v18 = (*(v47 + 56) + 16 * v16);
  v19 = *v18;
  v15 = v18[1];
  sub_243CE1434(*v18, v15);
  v20 = OUTLINED_FUNCTION_2_9();
  v22 = sub_243CF2010(v20, v21);
  if ((v23 & 1) == 0)
  {
    sub_243CE148C(v14, v46);
    v34 = v19;
    goto LABEL_15;
  }

  v44 = v15;
  v45 = v19;
  v24 = (*(v47 + 56) + 16 * v22);
  v26 = *v24;
  v25 = v24[1];
  sub_243CE1434(*v24, v25);

  sub_243D0EDAC();
  sub_243D0ED9C();
  if (!v27 || (v28 = sub_243D0B1A0(), v28 == 2))
  {
    sub_243CFC8FC();
    swift_allocError();
    *v29 = 0xD000000000000037;
    v29[1] = 0x8000000243D13300;
    swift_willThrow();
    v30 = OUTLINED_FUNCTION_4_5();
    sub_243CE148C(v30, v31);
    sub_243CE148C(v26, v25);
    sub_243CE148C(v45, v44);
    v32 = v14;
    v33 = v46;
    return sub_243CE148C(v32, v33);
  }

  v37 = v28;
  v43 = v26;
  if (v28)
  {
    v38 = v46;
    if (qword_27EDA99F0 != -1)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v38 = v46;
    if (qword_27EDA99E8 != -1)
    {
LABEL_24:
      swift_once();
    }
  }

  v39 = *(v5 + 48);
  v40 = *(v5 + 52);
  swift_allocObject();
  sub_243D0E5DC();
  sub_243CFC9A4();
  sub_243D0E5CC();
  sub_243CE148C(v14, v38);
  sub_243CE148C(v43, v25);
  v41 = OUTLINED_FUNCTION_4_5();
  sub_243CE148C(v41, v42);

  *v49 = v47;
  *(v49 + 8) = v48;
  *(v49 + 12) = v37 & 1;
  *(v49 + 16) = v45;
  *(v49 + 24) = v44;
  return result;
}

uint64_t sub_243CFBD4C(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 164) = *v1;
  *(v2 + 172) = *(v1 + 8);
  *(v2 + 176) = *(v1 + 12);
  *(v2 + 104) = *(v1 + 16);
  return MEMORY[0x2822009F8](sub_243CFBD8C, 0, 0);
}

uint64_t sub_243CFBD8C()
{
  if (*(v0 + 176))
  {
    if (qword_27EDA99F0 != -1)
    {
      OUTLINED_FUNCTION_0_9();
      swift_once();
    }

    v1 = &qword_27EDAA7B0;
  }

  else
  {
    if (qword_27EDA99E8 != -1)
    {
      OUTLINED_FUNCTION_1_6();
      swift_once();
    }

    v1 = &qword_27EDAA788;
  }

  v2 = *(v0 + 172);
  v3 = *(v0 + 164);
  sub_243CE1C20(v1, v0 + 16);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  *(v0 + 152) = v3;
  *(v0 + 160) = v2;
  v6 = *(v5 + 32);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = sub_243CFBF44;

  return v10(v0 + 152, v4, v5);
}

uint64_t sub_243CFBF44(char a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_10();
  *v5 = v4;
  v7 = *(v6 + 120);
  v8 = *v2;
  OUTLINED_FUNCTION_10();
  *v9 = v8;
  *(v4 + 128) = v1;

  if (v1)
  {
    v10 = sub_243CFC3F0;
  }

  else
  {
    *(v4 + 177) = a1 & 1;
    v10 = sub_243CFC068;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_243CFC068()
{
  v1 = *(v0 + 177);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (v1 == 1)
  {
    if (*(v0 + 176))
    {
      if (qword_27EDA99F0 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v2 = &qword_27EDAA7B0;
    }

    else
    {
      if (qword_27EDA99E8 != -1)
      {
        OUTLINED_FUNCTION_1_6();
        swift_once();
      }

      v2 = &qword_27EDAA788;
    }

    sub_243CE1C20(v2, v0 + 56);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v6);
    v8 = *(v7 + 16);
    v14 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    *(v0 + 136) = v10;
    *v10 = v0;
    v10[1] = sub_243CFC28C;
    v11 = *(v0 + 104);
    v12 = *(v0 + 112);
    v13 = *(v0 + 96);

    return v14(v13, v11, v12, v6, v7);
  }

  else
  {
    sub_243CFC8FC();
    swift_allocError();
    *v3 = 0xD000000000000035;
    v3[1] = 0x8000000243D13260;
    swift_willThrow();
    OUTLINED_FUNCTION_9();

    return v4();
  }
}

uint64_t sub_243CFC28C()
{
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  OUTLINED_FUNCTION_10();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_10();
  *v8 = v7;
  *(v9 + 144) = v0;

  if (v0)
  {
    v10 = sub_243CFC44C;
  }

  else
  {
    v10 = sub_243CFC394;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_243CFC394()
{
  OUTLINED_FUNCTION_13();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  OUTLINED_FUNCTION_9();

  return v1();
}

uint64_t sub_243CFC3F0()
{
  OUTLINED_FUNCTION_13();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_9();

  return v2();
}

uint64_t sub_243CFC44C()
{
  OUTLINED_FUNCTION_13();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 144);
  OUTLINED_FUNCTION_9();

  return v2();
}

uint64_t sub_243CFC4A8()
{
  v2 = sub_243D0EDBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = *(v0 + 8);
  LOBYTE(v5) = *(v0 + 12);
  v9 = *(v0 + 16);
  v35 = *(v0 + 24);
  v36 = v9;
  if (v5)
  {
    if (qword_27EDA99F0 != -1)
    {
      OUTLINED_FUNCTION_0_9();
      swift_once();
    }

    v10 = &qword_27EDAA7B0;
  }

  else
  {
    if (qword_27EDA99E8 != -1)
    {
      OUTLINED_FUNCTION_1_6();
      swift_once();
    }

    v10 = &qword_27EDAA788;
  }

  sub_243CE1C20(v10, v40);
  v11 = sub_243D0ED1C();
  v12 = sub_243D0E61C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_243D0E60C();
  v37 = v7;
  LODWORD(v38) = v8;
  sub_243CFC9F8();
  v16 = sub_243D0E5FC();
  v18 = v17;

  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  else
  {
    swift_isUniquelyReferenced_nonNull_native();
    v37 = v11;
    sub_243CF2558(v16, v18, 0x6E6F6973726576, 0xE700000000000000);
    v39 = v37;
    v19 = v41;
    v20 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    (*(v20 + 8))(v19, v20);
    sub_243D0EDAC();
    v21 = sub_243D0ED8C();
    v23 = v22;

    (*(v3 + 8))(v6, v2);
    if (v23 >> 60 == 15)
    {
      v24 = OUTLINED_FUNCTION_2_9();
      sub_243CF213C(v24, v25, v26);
      sub_243CE8DC8(v37, v38);
      v27 = v39;
    }

    else
    {
      v28 = v39;
      swift_isUniquelyReferenced_nonNull_native();
      v37 = v28;
      sub_243CF2558(v21, v23, 0x7A696C6169726573, 0xEE00657079547265);
      v27 = v37;
    }

    v30 = v35;
    v29 = v36;
    sub_243CE1434(v36, v35);
    swift_isUniquelyReferenced_nonNull_native();
    v37 = v27;
    sub_243CF2558(v29, v30, 0xD000000000000014, 0x8000000243D132E0);
    v31 = v37;
    v32 = *(v12 + 48);
    v33 = *(v12 + 52);
    swift_allocObject();
    sub_243D0E60C();
    v37 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA118, &unk_243D11090);
    sub_243CFCA4C(&qword_27EDAA140, sub_243CFCAD0);
    v15 = sub_243D0E5FC();

    __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  return v15;
}

unint64_t sub_243CFC8FC()
{
  result = qword_27EDAA110;
  if (!qword_27EDAA110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA110);
  }

  return result;
}

unint64_t sub_243CFC950()
{
  result = qword_27EDAA128;
  if (!qword_27EDAA128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA128);
  }

  return result;
}

unint64_t sub_243CFC9A4()
{
  result = qword_27EDAA130;
  if (!qword_27EDAA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA130);
  }

  return result;
}

unint64_t sub_243CFC9F8()
{
  result = qword_27EDAA138;
  if (!qword_27EDAA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA138);
  }

  return result;
}

uint64_t sub_243CFCA4C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAA118, &unk_243D11090);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243CFCAD0()
{
  result = qword_27EDAA148;
  if (!qword_27EDAA148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA148);
  }

  return result;
}

uint64_t sub_243CFCB7C(uint64_t a1, unint64_t a2, void *a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = v8;
      goto LABEL_7;
    case 2uLL:
      v5 = *(a1 + 24);
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v7 = v5;
LABEL_7:
      result = sub_243CFF4B8(a1, v7, v6, a3);
      break;
    case 3uLL:
      memset(v10, 0, 14);
      result = *(v10 + *a3);
      break;
    default:
      v10[0] = a1;
      LOWORD(v10[1]) = a2;
      BYTE2(v10[1]) = BYTE2(a2);
      BYTE3(v10[1]) = BYTE3(a2);
      BYTE4(v10[1]) = BYTE4(a2);
      BYTE5(v10[1]) = BYTE5(a2);
      result = *(v10 + *a3);
      break;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_243CFCCC4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_243D0E7BC();
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OUTLINED_FUNCTION_4_5();
  if (MEMORY[0x245D4E4B0](v15) != 20)
  {
    sub_243CE9F0C();
    v16 = swift_allocError();
    OUTLINED_FUNCTION_14_3(v16, v17);
    v18 = OUTLINED_FUNCTION_4_5();
    return sub_243CE148C(v18, v19);
  }

  v38 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v36 = v3;
      if (a1 > a1 >> 32)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v22 = sub_243D0E64C();
      if (!v22)
      {
        goto LABEL_16;
      }

      v24 = sub_243D0E66C();
      if (__OFSUB__(a1, v24))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v22 += a1 - v24;
LABEL_16:
      sub_243D0E65C();
      if (!v22)
      {
LABEL_26:
        __break(1u);
        JUMPOUT(0x243CFD01CLL);
      }

LABEL_17:
      (*(v10 + 16))(v14, v22, v7);
LABEL_18:
      if (qword_27EDA99A0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v7, qword_27EDAA6B0);
      if (sub_243D0E78C())
      {
        v38 = 16;
        v25 = OUTLINED_FUNCTION_4_5();
        v28 = sub_243CFCB7C(v25, v26, v27);
        v29 = OUTLINED_FUNCTION_4_5();
        sub_243CE148C(v29, v30);
        (*(v10 + 32))(a3, v14, v7);
        result = type metadata accessor for HeaderPreamble();
        *(a3 + *(result + 20)) = v28;
      }

      else
      {
        sub_243CE9F0C();
        v31 = swift_allocError();
        OUTLINED_FUNCTION_14_3(v31, v32);
        v33 = OUTLINED_FUNCTION_4_5();
        sub_243CE148C(v33, v34);
        return (*(v10 + 8))(v14, v7);
      }

      return result;
    case 2uLL:
      v36 = v3;
      v21 = *(a1 + 16);
      v22 = sub_243D0E64C();
      if (!v22)
      {
        goto LABEL_8;
      }

      v23 = sub_243D0E66C();
      if (__OFSUB__(v21, v23))
      {
        goto LABEL_24;
      }

      v22 += v21 - v23;
LABEL_8:
      sub_243D0E65C();
      if (v22)
      {
        goto LABEL_17;
      }

      __break(1u);
LABEL_10:
      memset(v37, 0, 14);
LABEL_11:
      (*(v10 + 16))(v14, v37, v7);
      goto LABEL_18;
    case 3uLL:
      goto LABEL_10;
    default:
      v37[0] = a1;
      LOWORD(v37[1]) = a2;
      BYTE2(v37[1]) = BYTE2(a2);
      BYTE3(v37[1]) = BYTE3(a2);
      BYTE4(v37[1]) = BYTE4(a2);
      BYTE5(v37[1]) = BYTE5(a2);
      goto LABEL_11;
  }
}

uint64_t sub_243CFD02C(uint64_t a1)
{
  v2 = sub_243D0EF8C();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  (*(v5 + 16))(&v25 - v11, a1, v2);
  sub_243D0EF2C();
  sub_243CFF40C();
  v12 = OUTLINED_FUNCTION_3_5();
  v13 = *(v5 + 8);
  v13(v10, v2);
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_10_2();
    (v13)(v14);
    v15 = OUTLINED_FUNCTION_38();
    (v13)(v15);
    return 1;
  }

  else
  {
    sub_243D0EF6C();
    OUTLINED_FUNCTION_3_5();
    v17 = OUTLINED_FUNCTION_6_3();
    (v13)(v17);
    sub_243D0EF3C();
    OUTLINED_FUNCTION_3_5();
    v18 = OUTLINED_FUNCTION_6_3();
    (v13)(v18);
    sub_243D0EF1C();
    OUTLINED_FUNCTION_3_5();
    v19 = OUTLINED_FUNCTION_6_3();
    (v13)(v19);
    sub_243D0EF3C();
    OUTLINED_FUNCTION_3_5();
    v20 = OUTLINED_FUNCTION_6_3();
    (v13)(v20);
    sub_243D0EF2C();
    OUTLINED_FUNCTION_3_5();
    v21 = OUTLINED_FUNCTION_6_3();
    (v13)(v21);
    sub_243D0EF6C();
    v22 = OUTLINED_FUNCTION_3_5();
    v23 = OUTLINED_FUNCTION_10_2();
    (v13)(v23);
    v13(v10, v2);
    v24 = OUTLINED_FUNCTION_38();
    (v13)(v24);
    if (v22)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_243CFD334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v26 = *(a1 + 8);

  *a1 = a2;
  *(a1 + 8) = a3;
  v27 = *(a1 + 24);

  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  v28 = *(a1 + 40);

  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  v29 = *(a1 + 56);

  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  *(a1 + 64) = a10;
  *(a1 + 72) = a11 & 1;
  *(a1 + 80) = a12;
  *(a1 + 88) = a13 & 1;
  *(a1 + 92) = a14;
  v30 = *(a1 + 104);

  *(a1 + 96) = a15;
  *(a1 + 104) = a16;
  v31 = *(a1 + 120);

  *(a1 + 112) = a17;
  *(a1 + 120) = a18;
  v32 = (a1 + *(type metadata accessor for NetworkProto.Header(0) + 56));
  v33 = v32[1];
  if (a20)
  {
  }

  *v32 = a19;
  v32[1] = a20;
  return result;
}

uint64_t sub_243CFD4F0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_243D0EF6C();
  }

  switch(a1)
  {
    case 1:
    case 4:
      result = sub_243D0EF2C();
      break;
    case 3:
    case 5:
      result = sub_243D0EF3C();
      break;
    case 6:
      result = sub_243D0EF1C();
      break;
    default:
      return sub_243D0EF6C();
  }

  return result;
}

uint64_t sub_243CFD550(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        JUMPOUT(0x245D4E480);
      }

      return 0;
    }

    switch(a1)
    {
      case 1:
        if (a6 != 2 || a4 != 1)
        {
          return 0;
        }

        break;
      case 2:
        if (a6 != 2 || a4 != 2)
        {
          return 0;
        }

        break;
      case 3:
        if (a6 != 2 || a4 != 3)
        {
          return 0;
        }

        break;
      case 4:
        if (a6 != 2 || a4 != 4)
        {
          return 0;
        }

        break;
      case 5:
        if (a6 != 2 || a4 != 5)
        {
          return 0;
        }

        break;
      default:
        return a6 == 2 && !(a5 | a4);
    }

    if (a5)
    {
      return 0;
    }
  }

  else
  {
    if (a6)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {
      return sub_243D0F31C();
    }
  }

  return 1;
}

uint64_t sub_243CFD664(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245;
  if (v4 || (sub_243D0F31C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D726F666C616DLL && a2 == 0xED00006174614464;
    if (v6 || (sub_243D0F31C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E65746E6F436F6ELL && a2 == 0xE900000000000074;
      if (v7 || (sub_243D0F31C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74756F656D6974 && a2 == 0xE700000000000000;
        if (v8 || (sub_243D0F31C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x63656E6E6F436F6ELL && a2 == 0xEC0000006E6F6974;
          if (v9 || (sub_243D0F31C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x8000000243D13370 == a2;
            if (v10 || (sub_243D0F31C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E676F6365726E75 && a2 == 0xEC00000064657A69;
              if (v11 || (sub_243D0F31C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000017 && 0x8000000243D13390 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_243D0F31C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_243CFD910(char a1)
{
  result = 0x6C616E7265746E69;
  switch(a1)
  {
    case 1:
      result = 0x656D726F666C616DLL;
      break;
    case 2:
      result = 0x6E65746E6F436F6ELL;
      break;
    case 3:
      result = 0x74756F656D6974;
      break;
    case 4:
      result = 0x63656E6E6F436F6ELL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x6E676F6365726E75;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_243CFDA4C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v101 = a4;
  v100 = a3;
  v102 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA200, &qword_243D112F8);
  v6 = OUTLINED_FUNCTION_2(v5);
  v95 = v7;
  v96 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8_3();
  v94 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA208, &qword_243D11300);
  v13 = OUTLINED_FUNCTION_2(v12);
  v98 = v14;
  v99 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8_3();
  v97 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA210, &qword_243D11308);
  v20 = OUTLINED_FUNCTION_2(v19);
  v92 = v21;
  v93 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8_3();
  v91 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA218, &qword_243D11310);
  v27 = OUTLINED_FUNCTION_2(v26);
  v89 = v28;
  v90 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8_3();
  v88 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA220, &qword_243D11318);
  v34 = OUTLINED_FUNCTION_2(v33);
  v86 = v35;
  v87 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_8_3();
  v85 = v39;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA228, &qword_243D11320);
  OUTLINED_FUNCTION_2(v84);
  v83 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8_3();
  v82 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA230, &qword_243D11328);
  OUTLINED_FUNCTION_2(v45);
  v81[1] = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v49);
  v51 = v81 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA238, &qword_243D11330);
  OUTLINED_FUNCTION_2(v52);
  v54 = v53;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v57);
  v59 = v81 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA240, &qword_243D11338);
  v103 = OUTLINED_FUNCTION_2(v60);
  v104 = v61;
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v64);
  v65 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v65);
  sub_243CFF72C();
  sub_243D0F41C();
  if (!v101)
  {
    LOBYTE(v105) = 0;
    sub_243CFF9CC();
    OUTLINED_FUNCTION_12_4();
    sub_243D0F2CC();
    (*(v54 + 8))(v59, v52);
    goto LABEL_5;
  }

  if (v101 == 1)
  {
    LOBYTE(v105) = 6;
    sub_243CFF7D4();
    v66 = v97;
    OUTLINED_FUNCTION_12_4();
    v105 = v102;
    v106 = v100;
    sub_243CFCAD0();
    v67 = v99;
    sub_243D0F2DC();
    (*(v98 + 8))(v66, v67);
LABEL_5:
    v68 = OUTLINED_FUNCTION_13_1();
    return v69(v68, v65);
  }

  switch(v102)
  {
    case 1:
      LOBYTE(v105) = 2;
      sub_243CFF924();
      v78 = v82;
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_5_2(&v108);
      v80 = v78;
      v76 = v84;
      goto LABEL_14;
    case 2:
      LOBYTE(v105) = 3;
      sub_243CFF8D0();
      v75 = v85;
      OUTLINED_FUNCTION_2_10();
      v77 = v86;
      v76 = v87;
      goto LABEL_13;
    case 3:
      LOBYTE(v105) = 4;
      sub_243CFF87C();
      v75 = v88;
      OUTLINED_FUNCTION_2_10();
      v77 = v89;
      v76 = v90;
      goto LABEL_13;
    case 4:
      LOBYTE(v105) = 5;
      sub_243CFF828();
      v75 = v91;
      OUTLINED_FUNCTION_2_10();
      v77 = v92;
      v76 = v93;
      goto LABEL_13;
    case 5:
      LOBYTE(v105) = 7;
      sub_243CFF780();
      v75 = v94;
      OUTLINED_FUNCTION_2_10();
      v77 = v95;
      v76 = v96;
LABEL_13:
      v79 = *(v77 + 8);
      v80 = v75;
LABEL_14:
      v79(v80, v76);
      v72 = OUTLINED_FUNCTION_13_1();
      v74 = v51;
      break;
    default:
      LOBYTE(v105) = 1;
      sub_243CFF978();
      OUTLINED_FUNCTION_12_4();
      OUTLINED_FUNCTION_5_2(&v107);
      v71(v51, v45);
      v72 = OUTLINED_FUNCTION_13_1();
      v74 = v65;
      break;
  }

  return v73(v72, v74);
}

uint64_t sub_243CFE170(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA170, &qword_243D112A8);
  v138 = OUTLINED_FUNCTION_2(v2);
  v139 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_3();
  v137 = v7;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA178, &qword_243D112B0);
  OUTLINED_FUNCTION_2(v133);
  v123 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_3();
  v142 = v12;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA180, &qword_243D112B8);
  OUTLINED_FUNCTION_2(v132);
  v134 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_3();
  v141 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA188, &qword_243D112C0);
  v130 = OUTLINED_FUNCTION_2(v18);
  v131 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8_3();
  v140 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA190, &qword_243D112C8);
  v25 = OUTLINED_FUNCTION_2(v24);
  v128 = v26;
  v129 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8_3();
  v136 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA198, &qword_243D112D0);
  v32 = OUTLINED_FUNCTION_2(v31);
  v126 = v33;
  v127 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8_3();
  v135 = v37;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA1A0, &qword_243D112D8);
  OUTLINED_FUNCTION_2(v125);
  v124 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v41);
  v43 = &v115 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA1A8, &qword_243D112E0);
  OUTLINED_FUNCTION_2(v44);
  v122 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v48);
  v50 = &v115 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA1B0, &unk_243D112E8);
  OUTLINED_FUNCTION_2(v51);
  v53 = v52;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v56);
  v58 = &v115 - v57;
  v60 = a1[3];
  v59 = a1[4];
  v143 = a1;
  v61 = __swift_project_boxed_opaque_existential_1(a1, v60);
  sub_243CFF72C();
  v62 = v145;
  sub_243D0F40C();
  if (v62)
  {
    goto LABEL_8;
  }

  v119 = v43;
  v120 = v50;
  v118 = v44;
  v64 = v140;
  v63 = v141;
  v65 = v142;
  v121 = v53;
  v145 = v58;
  v66 = sub_243D0F2AC();
  sub_243CE6DE0(v66, 0);
  if (v68 == v69 >> 1)
  {
    goto LABEL_7;
  }

  v117 = 0;
  if (v68 >= (v69 >> 1))
  {
    __break(1u);
    JUMPOUT(0x243CFEC58);
  }

  v116 = *(v67 + v68);
  sub_243CE74D0(v68 + 1);
  v71 = v70;
  v73 = v72;
  swift_unknownObjectRelease();
  v74 = v139;
  if (v71 != v73 >> 1)
  {
LABEL_7:
    v79 = sub_243D0F1DC();
    swift_allocError();
    v81 = v80;
    v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9DF8, &qword_243D10230) + 48);
    *v81 = &type metadata for NetworkSyncError;
    v61 = v145;
    sub_243D0F26C();
    sub_243D0F1CC();
    (*(*(v79 - 8) + 104))(v81, *MEMORY[0x277D84160], v79);
    swift_willThrow();
    swift_unknownObjectRelease();
    v83 = OUTLINED_FUNCTION_1_7();
    v84(v83);
LABEL_8:
    v78 = v143;
    goto LABEL_9;
  }

  switch(v116)
  {
    case 1:
      LOBYTE(v144) = 1;
      sub_243CFF978();
      v99 = v119;
      OUTLINED_FUNCTION_9_3();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5_2(&v149);
      v100(v99, v125);
      v101 = OUTLINED_FUNCTION_1_7();
      v102(v101);
      v61 = 0;
      goto LABEL_16;
    case 2:
      LOBYTE(v144) = 2;
      sub_243CFF924();
      v88 = v135;
      OUTLINED_FUNCTION_9_3();
      swift_unknownObjectRelease();
      (*(v126 + 8))(v88, v127);
      v89 = OUTLINED_FUNCTION_1_7();
      v90(v89);
      OUTLINED_FUNCTION_15_1();
      v61 = 1;
      goto LABEL_16;
    case 3:
      LOBYTE(v144) = 3;
      sub_243CFF8D0();
      v91 = v136;
      OUTLINED_FUNCTION_9_3();
      swift_unknownObjectRelease();
      (*(v128 + 8))(v91, v129);
      v92 = OUTLINED_FUNCTION_1_7();
      v93(v92);
      v61 = 2;
      goto LABEL_16;
    case 4:
      LOBYTE(v144) = 4;
      sub_243CFF87C();
      OUTLINED_FUNCTION_9_3();
      swift_unknownObjectRelease();
      (*(v131 + 8))(v64, v130);
      v86 = OUTLINED_FUNCTION_1_7();
      v87(v86);
      OUTLINED_FUNCTION_15_1();
      v61 = 3;
      goto LABEL_16;
    case 5:
      LOBYTE(v144) = 5;
      sub_243CFF828();
      OUTLINED_FUNCTION_9_3();
      swift_unknownObjectRelease();
      (*(v134 + 8))(v63, v132);
      v103 = OUTLINED_FUNCTION_1_7();
      v104(v103);
      OUTLINED_FUNCTION_15_1();
      v61 = 4;
      goto LABEL_16;
    case 6:
      LOBYTE(v144) = 6;
      sub_243CFF7D4();
      v105 = v65;
      OUTLINED_FUNCTION_9_3();
      sub_243CFC950();
      v106 = v133;
      sub_243D0F28C();
      v78 = v143;
      v107 = v121;
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5_2(&v148);
      v111(v105, v106);
      v112 = *(v107 + 8);
      v113 = OUTLINED_FUNCTION_16_2();
      v114(v113);
      v61 = v144;
      break;
    case 7:
      LOBYTE(v144) = 7;
      sub_243CFF780();
      OUTLINED_FUNCTION_9_3();
      swift_unknownObjectRelease();
      v94 = *(v74 + 8);
      v95 = OUTLINED_FUNCTION_4_5();
      v96(v95);
      v97 = OUTLINED_FUNCTION_1_7();
      v98(v97);
      OUTLINED_FUNCTION_15_1();
      v61 = 5;
LABEL_16:
      v78 = v143;
      break;
    default:
      LOBYTE(v144) = 0;
      sub_243CFF9CC();
      v75 = v120;
      OUTLINED_FUNCTION_9_3();
      v76 = v118;
      v77 = sub_243D0F27C();
      v78 = v143;
      v61 = v77;
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5_2(&v147);
      v108(v75, v76);
      OUTLINED_FUNCTION_5_2(&v146);
      v109 = OUTLINED_FUNCTION_16_2();
      v110(v109);
      break;
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v78);
  return v61;
}

uint64_t sub_243CFEC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_243CFD664(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_243CFECA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243CFD908();
  *a1 = result;
  return result;
}

uint64_t sub_243CFECD0(uint64_t a1)
{
  v2 = sub_243CFF72C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243CFED0C(uint64_t a1)
{
  v2 = sub_243CFF72C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243CFED48(uint64_t a1)
{
  v2 = sub_243CFF828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243CFED84(uint64_t a1)
{
  v2 = sub_243CFF828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243CFEDDC(uint64_t a1)
{
  v2 = sub_243CFF9CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243CFEE18(uint64_t a1)
{
  v2 = sub_243CFF9CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243CFEE54(uint64_t a1)
{
  v2 = sub_243CFF978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243CFEE90(uint64_t a1)
{
  v2 = sub_243CFF978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243CFEECC(uint64_t a1)
{
  v2 = sub_243CFF87C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243CFEF08(uint64_t a1)
{
  v2 = sub_243CFF87C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243CFEF44(uint64_t a1)
{
  v2 = sub_243CFF924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243CFEF80(uint64_t a1)
{
  v2 = sub_243CFF924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243CFEFBC(uint64_t a1)
{
  v2 = sub_243CFF8D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243CFEFF8(uint64_t a1)
{
  v2 = sub_243CFF8D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243CFF034(uint64_t a1)
{
  v2 = sub_243CFF7D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243CFF070(uint64_t a1)
{
  v2 = sub_243CFF7D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243CFF0AC(uint64_t a1)
{
  v2 = sub_243CFF780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243CFF0E8(uint64_t a1)
{
  v2 = sub_243CFF780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243CFF124@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_243CFE170(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_243CFF190()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA150, &unk_243D110A0) - 8) + 64);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - v2;
  v4 = sub_243D0E7BC();
  __swift_allocate_value_buffer(v4, qword_27EDAA6B0);
  v5 = __swift_project_value_buffer(v4, qword_27EDAA6B0);
  sub_243D0E76C();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_243CFF29C()
{
  v27 = *MEMORY[0x277D85DE8];
  v16 = sub_243D0E79C();
  v17 = v1;
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v24 = v8;
  v15 = *(v0 + *(type metadata accessor for HeaderPreamble() + 20));
  v25 = MEMORY[0x245D4E490](&v16, 16);
  v26 = v9;
  v10 = MEMORY[0x245D4E490](&v15, 4);
  v12 = v11;
  sub_243D0E71C();
  sub_243CE148C(v10, v12);
  result = v25;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t type metadata accessor for HeaderPreamble()
{
  result = qword_27EDAA160;
  if (!qword_27EDAA160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_243CFF40C()
{
  result = qword_27EDAA158;
  if (!qword_27EDAA158)
  {
    sub_243D0EF8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA158);
  }

  return result;
}

BOOL sub_243CFF464(uint64_t a1, uint64_t a2)
{
  if ((sub_243D0E78C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HeaderPreamble();
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_243CFF4B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_243D0E64C();
  if (v6)
  {
    v7 = v6;
    result = sub_243D0E66C();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v9 = a1 - result + v7;
  }

  else
  {
    v9 = 0;
  }

  result = sub_243D0E65C();
  if (v9)
  {
    return *(v9 + *a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_243CFF548(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D0E7BC();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_243CFF5A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D0E7BC();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_243CFF5F0()
{
  result = sub_243D0E7BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22CompanionInferenceCore16NetworkSyncErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_243CFF680(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243CFF6C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_243CFF704(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_243CFF72C()
{
  result = qword_27EDAA1B8;
  if (!qword_27EDAA1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA1B8);
  }

  return result;
}

unint64_t sub_243CFF780()
{
  result = qword_27EDAA1C0;
  if (!qword_27EDAA1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA1C0);
  }

  return result;
}

unint64_t sub_243CFF7D4()
{
  result = qword_27EDAA1C8;
  if (!qword_27EDAA1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA1C8);
  }

  return result;
}

unint64_t sub_243CFF828()
{
  result = qword_27EDAA1D0;
  if (!qword_27EDAA1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA1D0);
  }

  return result;
}

unint64_t sub_243CFF87C()
{
  result = qword_27EDAA1D8;
  if (!qword_27EDAA1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA1D8);
  }

  return result;
}

unint64_t sub_243CFF8D0()
{
  result = qword_27EDAA1E0;
  if (!qword_27EDAA1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA1E0);
  }

  return result;
}

unint64_t sub_243CFF924()
{
  result = qword_27EDAA1E8;
  if (!qword_27EDAA1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA1E8);
  }

  return result;
}

unint64_t sub_243CFF978()
{
  result = qword_27EDAA1F0;
  if (!qword_27EDAA1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA1F0);
  }

  return result;
}

unint64_t sub_243CFF9CC()
{
  result = qword_27EDAA1F8;
  if (!qword_27EDAA1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA1F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkSyncError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NetworkSyncError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x243CFFB74);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_243CFFC14(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x243CFFCB0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_243CFFCFC()
{
  result = qword_27EDAA248;
  if (!qword_27EDAA248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA248);
  }

  return result;
}

unint64_t sub_243CFFD54()
{
  result = qword_27EDAA250;
  if (!qword_27EDAA250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA250);
  }

  return result;
}

unint64_t sub_243CFFDAC()
{
  result = qword_27EDAA258;
  if (!qword_27EDAA258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA258);
  }

  return result;
}

unint64_t sub_243CFFE04()
{
  result = qword_27EDAA260;
  if (!qword_27EDAA260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA260);
  }

  return result;
}

unint64_t sub_243CFFE5C()
{
  result = qword_27EDAA268;
  if (!qword_27EDAA268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA268);
  }

  return result;
}

unint64_t sub_243CFFEB4()
{
  result = qword_27EDAA270;
  if (!qword_27EDAA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA270);
  }

  return result;
}

unint64_t sub_243CFFF0C()
{
  result = qword_27EDAA278;
  if (!qword_27EDAA278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA278);
  }

  return result;
}

unint64_t sub_243CFFF64()
{
  result = qword_27EDAA280;
  if (!qword_27EDAA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA280);
  }

  return result;
}

unint64_t sub_243CFFFBC()
{
  result = qword_27EDAA288;
  if (!qword_27EDAA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA288);
  }

  return result;
}

unint64_t sub_243D00014()
{
  result = qword_27EDAA290;
  if (!qword_27EDAA290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA290);
  }

  return result;
}

unint64_t sub_243D0006C()
{
  result = qword_27EDAA298;
  if (!qword_27EDAA298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA298);
  }

  return result;
}

unint64_t sub_243D000C4()
{
  result = qword_27EDAA2A0;
  if (!qword_27EDAA2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA2A0);
  }

  return result;
}

unint64_t sub_243D0011C()
{
  result = qword_27EDAA2A8;
  if (!qword_27EDAA2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA2A8);
  }

  return result;
}

unint64_t sub_243D00174()
{
  result = qword_27EDAA2B0;
  if (!qword_27EDAA2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA2B0);
  }

  return result;
}

unint64_t sub_243D001CC()
{
  result = qword_27EDAA2B8;
  if (!qword_27EDAA2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA2B8);
  }

  return result;
}

unint64_t sub_243D00224()
{
  result = qword_27EDAA2C0;
  if (!qword_27EDAA2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA2C0);
  }

  return result;
}

unint64_t sub_243D0027C()
{
  result = qword_27EDAA2C8;
  if (!qword_27EDAA2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA2C8);
  }

  return result;
}

unint64_t sub_243D002D4()
{
  result = qword_27EDAA2D0;
  if (!qword_27EDAA2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA2D0);
  }

  return result;
}

unint64_t sub_243D0032C()
{
  result = qword_27EDAA2D8;
  if (!qword_27EDAA2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA2D8);
  }

  return result;
}

unint64_t sub_243D00384()
{
  result = qword_27EDAA2E0;
  if (!qword_27EDAA2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA2E0);
  }

  return result;
}

unint64_t sub_243D003DC()
{
  result = qword_27EDAA2E8;
  if (!qword_27EDAA2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA2E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_10()
{
  v2 = *(v0 - 120);

  return sub_243D0F2BC();
}

uint64_t OUTLINED_FUNCTION_3_5()
{

  return sub_243D0ED5C();
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return sub_243D0F25C();
}

uint64_t OUTLINED_FUNCTION_12_4()
{
  v2 = *(v0 - 120);

  return sub_243D0F2BC();
}

uint64_t OUTLINED_FUNCTION_14_3(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;

  return swift_willThrow();
}

uint64_t sub_243D00578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_243D0E9BC();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9F08, &qword_243D10990);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_243D00670(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_243D0E9BC();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9F08, &qword_243D10990);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_243D0076C()
{
  sub_243D0E9BC();
  if (v0 <= 0x3F)
  {
    sub_243D00808();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_243D00808()
{
  if (!qword_27EDAA300)
  {
    type metadata accessor for Inference.Configuration(255);
    v0 = sub_243D0F17C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDAA300);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Inference.RequestType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Inference.RequestType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

uint64_t sub_243D008E4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243D00900(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_243D00944(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D0E9BC();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_243D009A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D0E9BC();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_243D00A0C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243D00A44()
{
  result = sub_243D0E9BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_243D00AC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_243D0E9BC();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_243D00B60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_243D0E9BC();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_243D00BE0()
{
  result = sub_243D0E9BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_243D00C64(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_243D00CC8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6E65476E656B6F74;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = 0x8000000243D12B40;
  }

  else
  {
    v4 = 0xEF6E6F6974617265;
  }

  if (a2)
  {
    v5 = 0x6E65476E656B6F74;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (a2)
  {
    v6 = 0xEF6E6F6974617265;
  }

  else
  {
    v6 = 0x8000000243D12B40;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_243D0F31C();
  }

  return v8 & 1;
}

BOOL sub_243D00D84(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a1 != 0;
  if ((a2 & 1) == 0)
  {
    v4 = a1;
  }

  v5 = a3 != 0;
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  return v4 == v5;
}

BOOL sub_243D00DC4(_BOOL8 result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_243D00DE8(uint64_t a1@<X8>)
{
  sub_243D00DB0();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_243D00E38(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_243D00DB0();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

BOOL sub_243D00E70@<W0>(_BOOL8 *a1@<X8>)
{
  result = sub_243D00DC4(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_243D00EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D030F0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_243D00F24()
{
  result = qword_27EDAA328;
  if (!qword_27EDAA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA328);
  }

  return result;
}

unint64_t sub_243D00F7C()
{
  result = qword_27EDAA330;
  if (!qword_27EDAA330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAA338, qword_243D11C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA330);
  }

  return result;
}

unint64_t sub_243D00FE4()
{
  result = qword_27EDAA340;
  if (!qword_27EDAA340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA340);
  }

  return result;
}

unint64_t sub_243D0103C()
{
  result = qword_27EDAA348;
  if (!qword_27EDAA348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA348);
  }

  return result;
}

uint64_t sub_243D01090@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Inference.Configuration(0) + 28);
  return sub_243D0E9AC();
}

uint64_t sub_243D010D4@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_243D100E0;
  v2 = type metadata accessor for Inference.Request(0);
  v3 = a1 + *(v2 + 24);
  sub_243D0E9AC();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for Inference.Configuration(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t sub_243D01154()
{
  v0 = sub_243D0EB9C();
  __swift_allocate_value_buffer(v0, qword_27EDAA6C8);
  __swift_project_value_buffer(v0, qword_27EDAA6C8);
  return sub_243D0EB8C();
}

uint64_t sub_243D011A0()
{
  do
  {
    result = sub_243D0EA3C();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_243D011FC()
{
  sub_243D0E9BC();
  OUTLINED_FUNCTION_0_10();
  sub_243D02DD8(v0, v1);
  return sub_243D0ED5C() & 1;
}

uint64_t sub_243D01294@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_243D0E9BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_243D012FC(uint64_t a1)
{
  v3 = sub_243D0E9BC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_243D013B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D02DD8(&qword_27EDAA3B0, type metadata accessor for Inference);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_243D01454(uint64_t a1)
{
  v2 = sub_243D02DD8(&qword_27EDAA380, type metadata accessor for Inference);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_243D0151C()
{
  sub_243D02DD8(&qword_27EDAA380, type metadata accessor for Inference);

  return sub_243D0EAFC();
}

uint64_t sub_243D0159C()
{
  v0 = sub_243D0EB9C();
  __swift_allocate_value_buffer(v0, qword_27EDAA6E0);
  __swift_project_value_buffer(v0, qword_27EDAA6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C0, &qword_243D12118);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C8, &qword_243D12120) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_243D11B30;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "oneShot";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_243D0EB6C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "stream";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_243D0EB7C();
}

uint64_t sub_243D01788()
{
  v0 = sub_243D0EB9C();
  __swift_allocate_value_buffer(v0, qword_27EDAA6F8);
  __swift_project_value_buffer(v0, qword_27EDAA6F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C0, &qword_243D12118);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C8, &qword_243D12120) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_243D11B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "assetBundleIdentifier";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_243D0EB6C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "useCaseIdentifier";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "requestLoggingIdentifier";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  return sub_243D0EB7C();
}

uint64_t sub_243D01990()
{
  OUTLINED_FUNCTION_6_4();
  while (1)
  {
    result = sub_243D0EA3C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_243D0EA7C();
    }
  }

  return result;
}

uint64_t sub_243D01A08()
{
  OUTLINED_FUNCTION_4_6();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_2_11();
  if (!v5 || (OUTLINED_FUNCTION_1_8(), result = sub_243D0EB3C(), !v1))
  {
    v7 = v2[2];
    v8 = v2[3];
    OUTLINED_FUNCTION_2_11();
    if (!v9 || (OUTLINED_FUNCTION_1_8(), result = sub_243D0EB3C(), !v1))
    {
      v10 = v2[4];
      v11 = v2[5];
      OUTLINED_FUNCTION_2_11();
      if (!v12 || (OUTLINED_FUNCTION_1_8(), result = sub_243D0EB3C(), !v1))
      {
        v13 = *(type metadata accessor for Inference.Configuration(0) + 28);
        return OUTLINED_FUNCTION_5_3();
      }
    }
  }

  return result;
}

uint64_t sub_243D01AB0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_243D0F31C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_243D0F31C() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (sub_243D0F31C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Inference.Configuration(0) + 28);
  sub_243D0E9BC();
  OUTLINED_FUNCTION_0_10();
  sub_243D02DD8(v8, v9);
  return sub_243D0ED5C() & 1;
}

uint64_t sub_243D01BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_243D0E9BC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_243D01C38(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_243D0E9BC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_243D01CAC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_243D01D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D02DD8(&qword_27EDAA3D0, type metadata accessor for Inference.Configuration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_243D01DA8(uint64_t a1)
{
  v2 = sub_243D02DD8(&qword_27EDA9F58, type metadata accessor for Inference.Configuration);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_243D01E70()
{
  sub_243D02DD8(&qword_27EDA9F58, type metadata accessor for Inference.Configuration);

  return sub_243D0EAFC();
}

uint64_t sub_243D01EF4()
{
  v0 = sub_243D0EB9C();
  __swift_allocate_value_buffer(v0, qword_27EDAA710);
  __swift_project_value_buffer(v0, qword_27EDAA710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C0, &qword_243D12118);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C8, &qword_243D12120) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_243D11B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_243D0EB6C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "configuration";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "Data";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_243D0EB7C();
}

uint64_t sub_243D020FC()
{
  OUTLINED_FUNCTION_6_4();
  while (1)
  {
    result = sub_243D0EA3C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_243D0EA5C();
        break;
      case 2:
        OUTLINED_FUNCTION_7_3();
        sub_243D021EC();
        break;
      case 1:
        OUTLINED_FUNCTION_7_3();
        sub_243D02184();
        break;
    }
  }

  return result;
}

uint64_t sub_243D021EC()
{
  v0 = *(type metadata accessor for Inference.Request(0) + 28);
  type metadata accessor for Inference.Configuration(0);
  sub_243D02DD8(&qword_27EDA9F58, type metadata accessor for Inference.Configuration);
  return sub_243D0EA9C();
}

uint64_t sub_243D022A0()
{
  OUTLINED_FUNCTION_4_6();
  if (!*v1 || (v7 = *v1, v8 = *(v2 + 8), sub_243D030F0(), result = sub_243D0EB1C(), !v0))
  {
    result = sub_243D0237C(v2);
    if (!v0)
    {
      if (!sub_243D00C64(*(v2 + 16), *(v2 + 24)))
      {
        v4 = *(v2 + 16);
        v5 = *(v2 + 24);
        OUTLINED_FUNCTION_1_8();
        sub_243D0EB2C();
      }

      v6 = *(type metadata accessor for Inference.Request(0) + 24);
      return OUTLINED_FUNCTION_5_3();
    }
  }

  return result;
}

uint64_t sub_243D0237C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9F08, &qword_243D10990);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Inference.Configuration(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Inference.Request(0);
  sub_243CEDB0C(a1 + *(v10 + 28), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_243CF3770(v5, &qword_27EDA9F08, &qword_243D10990);
  }

  sub_243D03144(v5, v9);
  sub_243D02DD8(&qword_27EDA9F58, type metadata accessor for Inference.Configuration);
  sub_243D0EB5C();
  return sub_243D031A8(v9);
}

uint64_t sub_243D0251C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Inference.Configuration(0);
  v5 = OUTLINED_FUNCTION_6_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9F08, &qword_243D10990);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v40 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3D8, &qword_243D12128);
  v15 = OUTLINED_FUNCTION_6_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v20 = *a1;
  v21 = *a2;
  if (*(a1 + 8))
  {
    v20 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v21)
    {
      if (v20 != 1)
      {
        goto LABEL_40;
      }
    }

    else if (v20)
    {
LABEL_40:
      v28 = 0;
      return v28 & 1;
    }
  }

  else if (v20 != v21)
  {
    goto LABEL_40;
  }

  v22 = type metadata accessor for Inference.Request(0);
  v23 = *(v22 + 28);
  v24 = *(v14 + 48);
  sub_243CEDB0C(a1 + v23, v19);
  sub_243CEDB0C(a2 + v23, &v19[v24]);
  OUTLINED_FUNCTION_8_4(v19);
  if (v29)
  {
    OUTLINED_FUNCTION_8_4(&v19[v24]);
    if (v29)
    {
      sub_243CF3770(v19, &qword_27EDA9F08, &qword_243D10990);
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  sub_243CEDB0C(v19, v13);
  OUTLINED_FUNCTION_8_4(&v19[v24]);
  if (v29)
  {
    sub_243D031A8(v13);
LABEL_20:
    v30 = &qword_27EDAA3D8;
    v31 = &qword_243D12128;
LABEL_39:
    sub_243CF3770(v19, v30, v31);
    goto LABEL_40;
  }

  sub_243D03144(&v19[v24], v9);
  v32 = *v13 == *v9 && v13[1] == v9[1];
  if (!v32 && (sub_243D0F31C() & 1) == 0 || (v13[2] == v9[2] ? (v33 = v13[3] == v9[3]) : (v33 = 0), !v33 && (sub_243D0F31C() & 1) == 0 || (v13[4] == v9[4] ? (v34 = v13[5] == v9[5]) : (v34 = 0), !v34 && (sub_243D0F31C() & 1) == 0)))
  {
    sub_243D031A8(v9);
    sub_243D031A8(v13);
    v30 = &qword_27EDA9F08;
    v31 = &qword_243D10990;
    goto LABEL_39;
  }

  v35 = *(v4 + 28);
  sub_243D0E9BC();
  OUTLINED_FUNCTION_0_10();
  sub_243D02DD8(v36, v37);
  v38 = sub_243D0ED5C();
  sub_243D031A8(v9);
  sub_243D031A8(v13);
  sub_243CF3770(v19, &qword_27EDA9F08, &qword_243D10990);
  if ((v38 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_15:
  if ((MEMORY[0x245D4E480](a1[2], a1[3], a2[2], a2[3]) & 1) == 0)
  {
    goto LABEL_40;
  }

  v25 = *(v22 + 24);
  sub_243D0E9BC();
  OUTLINED_FUNCTION_0_10();
  sub_243D02DD8(v26, v27);
  v28 = sub_243D0ED5C();
  return v28 & 1;
}

uint64_t sub_243D0288C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_243D0F3CC();
  a1(0);
  sub_243D02DD8(a2, a3);
  sub_243D0ED3C();
  return sub_243D0F3FC();
}

uint64_t sub_243D02934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_243D0E9BC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_243D029A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_243D0E9BC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_243D02A1C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_243D02A70(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D02DD8(&qword_27EDAA3A0, type metadata accessor for Inference.Request);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_243D02B10@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_243D0EB9C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_243D02BAC(uint64_t a1)
{
  v2 = sub_243D02DD8(&qword_27EDA9D38, type metadata accessor for Inference.Request);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_243D02C74()
{
  sub_243D02DD8(&qword_27EDA9D38, type metadata accessor for Inference.Request);

  return sub_243D0EAFC();
}

uint64_t sub_243D02CF0()
{
  sub_243D0F3CC();
  sub_243D0ED3C();
  return sub_243D0F3FC();
}

uint64_t sub_243D02DD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_243D030F0()
{
  result = qword_27EDAA3A8;
  if (!qword_27EDAA3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA3A8);
  }

  return result;
}

uint64_t sub_243D03144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Inference.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243D031A8(uint64_t a1)
{
  v2 = type metadata accessor for Inference.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return sub_243D0E99C();
}

uint64_t sub_243D032F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_243D0E9BC();
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_243D0338C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_243D0E9BC();
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_243D0342C()
{
  sub_243D0E9BC();
  if (v0 <= 0x3F)
  {
    sub_243D034F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_243D034F0()
{
  if (!qword_27EDAA3F0)
  {
    v0 = sub_243D0F17C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDAA3F0);
    }
  }
}

uint64_t _s22CompanionInferenceCore12NetworkProtoV6HeaderV8PriorityOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_6_5(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243D03558(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_6_5(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243D035AC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_243D0F3CC();
  a3(v4);
  OUTLINED_FUNCTION_8_5();
  return sub_243D0F3FC();
}

uint64_t sub_243D03610()
{
  sub_243D0EDFC();
}

uint64_t sub_243D036AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_243D0F3CC();
  a4(v5);
  OUTLINED_FUNCTION_8_5();
  return sub_243D0F3FC();
}

uint64_t sub_243D03700()
{
  sub_243D0F3CC();
  sub_243D0EDFC();

  return sub_243D0F3FC();
}

uint64_t sub_243D03818(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D05684();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_243D038C0()
{
  result = qword_27EDAA3F8;
  if (!qword_27EDAA3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA3F8);
  }

  return result;
}

unint64_t sub_243D03948()
{
  result = qword_27EDAA410;
  if (!qword_27EDAA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA410);
  }

  return result;
}

unint64_t sub_243D039A0()
{
  result = qword_27EDAA418;
  if (!qword_27EDAA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA418);
  }

  return result;
}

uint64_t sub_243D03AA8@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_243D03B14(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D056D8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_243D03BA0()
{
  result = qword_27EDAA420;
  if (!qword_27EDAA420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA420);
  }

  return result;
}

uint64_t sub_243D03C24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_243D03C7C()
{
  result = qword_27EDAA438;
  if (!qword_27EDAA438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA438);
  }

  return result;
}

unint64_t sub_243D03CD4()
{
  result = qword_27EDAA440;
  if (!qword_27EDAA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA440);
  }

  return result;
}

uint64_t sub_243D03D28@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0xE000000000000000;
  v2 = type metadata accessor for NetworkProto.Header(0);
  v3 = a1 + *(v2 + 52);
  result = sub_243D0E9AC();
  v5 = (a1 + *(v2 + 56));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_243D03DA0()
{
  v0 = sub_243D0EB9C();
  __swift_allocate_value_buffer(v0, qword_27EDAA728);
  __swift_project_value_buffer(v0, qword_27EDAA728);
  return sub_243D0EB8C();
}

uint64_t sub_243D03DEC()
{
  sub_243D0E9BC();
  OUTLINED_FUNCTION_2_12();
  sub_243D0546C(v0, v1);
  return sub_243D0ED5C() & 1;
}

uint64_t sub_243D03E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D0546C(&qword_27EDAA480, type metadata accessor for NetworkProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_243D03F24(uint64_t a1)
{
  v2 = sub_243D0546C(&qword_27EDAA468, type metadata accessor for NetworkProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_243D03FEC()
{
  sub_243D0546C(&qword_27EDAA468, type metadata accessor for NetworkProto);

  return sub_243D0EAFC();
}

uint64_t sub_243D0406C()
{
  v0 = sub_243D0EB9C();
  __swift_allocate_value_buffer(v0, qword_27EDAA740);
  __swift_project_value_buffer(v0, qword_27EDAA740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C0, &qword_243D12118);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C8, &qword_243D12120) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_243D12130;
  v4 = v27 + v3;
  v5 = v27 + v3 + v1[14];
  *(v27 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_243D0EB6C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "messageID";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "senderID";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "receiverID";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "priority";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "type";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "contentLength";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "currentVersion";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "minCompatibleVersion";
  *(v23 + 1) = 20;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "responseToId";
  *(v25 + 1) = 12;
  v25[16] = 2;
  v8();
  return sub_243D0EB7C();
}

uint64_t sub_243D04420()
{
  while (1)
  {
    result = sub_243D0EA3C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 8:
      case 9:
        sub_243D0EA7C();
        break;
      case 5:
        OUTLINED_FUNCTION_7_3();
        sub_243D04540();
        break;
      case 6:
        OUTLINED_FUNCTION_7_3();
        sub_243D045A8();
        break;
      case 7:
        sub_243D0EA8C();
        break;
      case 10:
        OUTLINED_FUNCTION_7_3();
        sub_243D04610();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_243D04674()
{
  v2 = v1;
  v3 = *v0;
  v4 = *(v0 + 8);
  OUTLINED_FUNCTION_2_11();
  if (!v5 || (result = OUTLINED_FUNCTION_1_9(), (v2 = v1) == 0))
  {
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);
    OUTLINED_FUNCTION_2_11();
    if (!v9 || (result = OUTLINED_FUNCTION_1_9(), (v2 = v1) == 0))
    {
      v10 = *(v0 + 32);
      v11 = *(v0 + 40);
      OUTLINED_FUNCTION_2_11();
      if (!v12 || (result = OUTLINED_FUNCTION_1_9(), (v2 = v1) == 0))
      {
        v13 = *(v0 + 48);
        v14 = *(v0 + 56);
        OUTLINED_FUNCTION_2_11();
        if (!v15 || (result = OUTLINED_FUNCTION_1_9(), (v2 = v1) == 0))
        {
          if (!*(v0 + 64) || (v23 = *(v0 + 64), v25 = *(v0 + 72), sub_243D05684(), result = OUTLINED_FUNCTION_9_4(), (v2 = v1) == 0))
          {
            if (!*(v0 + 80) || (v24 = *(v0 + 80), v26 = *(v0 + 88), sub_243D056D8(), result = OUTLINED_FUNCTION_9_4(), (v2 = v1) == 0))
            {
              if (!*(v0 + 92) || (v1 = v2, result = sub_243D0EB4C(), !v2))
              {
                v16 = *(v0 + 96);
                v17 = *(v0 + 104);
                OUTLINED_FUNCTION_2_11();
                if (!v18 || (result = OUTLINED_FUNCTION_1_9(), (v2 = v1) == 0))
                {
                  v19 = *(v0 + 112);
                  v20 = *(v0 + 120);
                  OUTLINED_FUNCTION_2_11();
                  if (!v21 || (result = OUTLINED_FUNCTION_1_9(), (v2 = v1) == 0))
                  {
                    result = sub_243D04848(v0);
                    if (!v2)
                    {
                      v22 = v0 + *(type metadata accessor for NetworkProto.Header(0) + 52);
                      return sub_243D0E99C();
                    }
                  }
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

uint64_t sub_243D04848(uint64_t a1)
{
  result = type metadata accessor for NetworkProto.Header(0);
  v3 = (a1 + *(result + 56));
  if (v3[1])
  {
    v4 = *v3;
    return sub_243D0EB3C();
  }

  return result;
}

uint64_t sub_243D048C0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (sub_243D0F31C() & 1) != 0)
  {
    v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (v5 || (sub_243D0F31C() & 1) != 0)
    {
      v6 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
      if (v6 || (sub_243D0F31C() & 1) != 0)
      {
        v7 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
        if (v7 || (sub_243D0F31C() & 1) != 0)
        {
          v8 = *(a2 + 72);
          if (sub_243D03210(*(a1 + 64), *(a1 + 72), *(a2 + 64)))
          {
            v9 = *(a2 + 88);
            if (sub_243D03210(*(a1 + 80), *(a1 + 88), *(a2 + 80)) && *(a1 + 92) == *(a2 + 92))
            {
              v10 = *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104);
              if (v10 || (sub_243D0F31C() & 1) != 0)
              {
                v11 = *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120);
                if (v11 || (sub_243D0F31C() & 1) != 0)
                {
                  v12 = type metadata accessor for NetworkProto.Header(0);
                  v13 = *(v12 + 56);
                  v14 = (a1 + v13);
                  v15 = *(a1 + v13 + 8);
                  v16 = (a2 + v13);
                  v17 = v16[1];
                  if (v15)
                  {
                    if (v17)
                    {
                      v18 = *v14 == *v16 && v15 == v17;
                      if (v18 || (sub_243D0F31C() & 1) != 0)
                      {
                        goto LABEL_41;
                      }
                    }
                  }

                  else if (!v17)
                  {
LABEL_41:
                    v19 = *(v12 + 52);
                    sub_243D0E9BC();
                    OUTLINED_FUNCTION_2_12();
                    sub_243D0546C(v20, v21);
                    return sub_243D0ED5C() & 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_243D04A94(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_243D0F3CC();
  a1(0);
  sub_243D0546C(a2, a3);
  sub_243D0ED3C();
  return sub_243D0F3FC();
}

uint64_t sub_243D04B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_243D0E9BC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_243D04BB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_243D0E9BC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_243D04C24(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t sub_243D04C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D0546C(&qword_27EDAA488, type metadata accessor for NetworkProto.Header);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_243D04D18(uint64_t a1)
{
  v2 = sub_243D0546C(&qword_27EDAA100, type metadata accessor for NetworkProto.Header);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_243D04DE0()
{
  sub_243D0546C(&qword_27EDAA100, type metadata accessor for NetworkProto.Header);

  return sub_243D0EAFC();
}

uint64_t sub_243D04E60()
{
  v0 = sub_243D0EB9C();
  __swift_allocate_value_buffer(v0, qword_27EDAA758);
  __swift_project_value_buffer(v0, qword_27EDAA758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C0, &qword_243D12118);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C8, &qword_243D12120) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_243D12140;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "defaultPriority";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_243D0EB6C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "high";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "medium";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "low";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "userInitiated";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "utility";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "background";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v9();
  return sub_243D0EB7C();
}

uint64_t sub_243D05178()
{
  v0 = sub_243D0EB9C();
  __swift_allocate_value_buffer(v0, qword_27EDAA770);
  __swift_project_value_buffer(v0, qword_27EDAA770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C0, &qword_243D12118);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C8, &qword_243D12120) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_243D12150;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "defaultType";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_243D0EB6C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "streamFinal";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "failure";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "keepAlive";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_243D0EB7C();
}

uint64_t sub_243D0546C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_243D05684()
{
  result = qword_27EDAA490;
  if (!qword_27EDAA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA490);
  }

  return result;
}

unint64_t sub_243D056D8()
{
  result = qword_27EDAA498;
  if (!qword_27EDAA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA498);
  }

  return result;
}

uint64_t sub_243D05740(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D0E9BC();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_243D0579C(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D0E9BC();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t OUTLINED_FUNCTION_1_9()
{

  return sub_243D0EB3C();
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t result, __int16 a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  *(v2 + 9) = HIBYTE(a2) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_5()
{

  return sub_243D0ED3C();
}

uint64_t OUTLINED_FUNCTION_9_4()
{

  return sub_243D0EB1C();
}

uint64_t sub_243D058A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 112);
  if (!*(v7 + 16))
  {
    goto LABEL_5;
  }

  v8 = sub_243CF2010(a1, a2);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9D48, &unk_243D0FF60);
    v13 = a3;
    v14 = 1;
    return __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
  }

  v10 = v8;
  v11 = *(v7 + 56);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9D48, &unk_243D0FF60);
  (*(*(v12 - 8) + 16))(a3, v11 + *(*(v12 - 8) + 72) * v10, v12);

  v13 = a3;
  v14 = 0;
  v15 = v12;
  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
}

uint64_t sub_243D059C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_243CF2010(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

double sub_243D05A14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_243CF2010(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 40 * v6;

    sub_243CE1C20(v8, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_243D05A80()
{
  swift_beginAccess();
  v1 = *(v0 + 112);

  v3 = sub_243D05AE4(v2);

  return v3;
}

uint64_t sub_243D05AE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x277D84F90];
  sub_243D0770C(0, v1, 0);
  v2 = v30;
  result = sub_243D07924(a1);
  v7 = result;
  v8 = 0;
  v9 = a1 + 64;
  v26 = v1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_24;
      }

      v27 = v6;
      v28 = v8;
      v29 = v5;
      v11 = (*(a1 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v15 = *(v30 + 16);
      v14 = *(v30 + 24);

      if (v15 >= v14 >> 1)
      {
        result = sub_243D0770C((v14 > 1), v15 + 1, 1);
      }

      *(v30 + 16) = v15 + 1;
      v16 = v30 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      v17 = 1 << *(a1 + 32);
      if (v7 >= v17)
      {
        goto LABEL_25;
      }

      v9 = a1 + 64;
      v18 = *(a1 + 64 + 8 * v10);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v29)
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v20 = v26;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v20 = v26;
        v23 = (a1 + 72 + 8 * v10);
        while (v22 < (v17 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_243D0AE38(v7, v29, v27 & 1);
            v17 = __clz(__rbit64(v24)) + v21;
            goto LABEL_18;
          }
        }

        result = sub_243D0AE38(v7, v29, v27 & 1);
      }

LABEL_18:
      v8 = v28 + 1;
      if (v28 + 1 == v20)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(a1 + 36);
      v7 = v17;
      if (v17 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_243D05D1C(uint64_t a1, uint64_t a2)
{
  *(*(v2 + 72) + OBJC_IVAR____TtC22CompanionInferenceCore20MessagingCoordinator_messageProcessor + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_243D05D70()
{
  v1 = v0;
  if (qword_27EDA9980 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  v2 = sub_243D0EC0C();
  __swift_project_value_buffer(v2, qword_27EDAA638);

  v3 = sub_243D0EBEC();
  sub_243D0F0FC();
  OUTLINED_FUNCTION_29_2();

  if (OUTLINED_FUNCTION_35_2())
  {
    v4 = OUTLINED_FUNCTION_44_0();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136315138;
    type metadata accessor for NetworkServer();

    v6 = sub_243D0EDCC();
    v8 = sub_243CE0A08(v6, v7, &v21);

    *(v4 + 4) = v8;
    OUTLINED_FUNCTION_30_2();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_24();
  }

  sub_243D05F80();
  v14 = *(**(v1 + 96) + 96);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9DA0, &qword_243D101F0);
  sub_243D0EFCC();

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  v15 = *(v1 + 56);
  swift_unknownObjectRelease();
  v16 = *(v1 + 64);

  v17 = *(v1 + 72);

  v18 = *(v1 + 88);

  v19 = *(v1 + 96);

  return v1;
}

uint64_t sub_243D05F28()
{
  sub_243D05D70();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_243D05F80()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = swift_unknownObjectRetain();
    nw_listener_set_state_changed_handler(v3, 0);
    nw_listener_set_new_connection_handler(v1, 0);
    nw_listener_cancel(v1);
    swift_unknownObjectRelease();
    v4 = *(v0 + 56);
    *(v0 + 56) = 0;
    swift_unknownObjectRelease();
  }

  return sub_243D05FEC();
}

uint64_t sub_243D05FEC()
{
  v1 = v0;
  if (qword_27EDA9980 != -1)
  {
LABEL_16:
    OUTLINED_FUNCTION_12_2();
  }

  v2 = sub_243D0EC0C();
  __swift_project_value_buffer(v2, qword_27EDAA638);
  v3 = sub_243D0EBEC();
  v4 = sub_243D0F0FC();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_30_2();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_24();
  }

  OUTLINED_FUNCTION_45_0();
  v10 = *(v1 + 64);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = *(v1 + 64);

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      sub_243CE1C20(*(v10 + 56) + 40 * (v18 | (v17 << 6)), v21);
      v19 = *__swift_project_boxed_opaque_existential_1(v21, v21[3]);
      sub_243CF6F30();
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      if (!v13)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v17 >= v14)
    {
      break;
    }

    v13 = *(v10 + 64 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_12;
    }
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAA510, &qword_243D12808);
  sub_243D0ED2C();
  return swift_endAccess();
}

id sub_243D061D0()
{
  v1 = sub_243CF61C0(1, 60.0);
  v2 = nw_listener_create(v1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_243D0ED6C();
    v5 = [v4 UTF8String];
    result = v4;
    if (v5)
    {
      application_service = nw_advertise_descriptor_create_application_service(v5);
      nw_listener_set_advertise_descriptor(v3, application_service);
      v8 = *(v0 + 56);
      *(v0 + 56) = v3;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v9 = *(v0 + 104);
      v10 = swift_allocObject();
      swift_weakInit();
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      *(v11 + 24) = v9;
      v27 = sub_243D07904;
      v28 = v11;
      v23 = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_243CF8308;
      v26 = &block_descriptor_1;
      v12 = _Block_copy(&v23);
      v13 = v9;

      nw_listener_set_new_connection_handler(v3, v12);
      _Block_release(v12);
      v27 = sub_243D06F84;
      v28 = 0;
      v23 = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_243D07234;
      v26 = &block_descriptor_20;
      v14 = _Block_copy(&v23);
      nw_listener_set_state_changed_handler(v3, v14);
      _Block_release(v14);
      nw_listener_set_queue(v3, v13);
      nw_listener_start(v3);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27EDA9980 != -1)
    {
      OUTLINED_FUNCTION_12_2();
    }

    v15 = sub_243D0EC0C();
    __swift_project_value_buffer(v15, qword_27EDAA638);
    v16 = sub_243D0EBEC();
    v17 = sub_243D0F0FC();
    if (os_log_type_enabled(v16, v17))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_30_2();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      OUTLINED_FUNCTION_24();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_243D064C4(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_27EDA9980 != -1)
    {
      swift_once();
    }

    v7 = sub_243D0EC0C();
    __swift_project_value_buffer(v7, qword_27EDAA638);
    swift_unknownObjectRetain();
    v8 = sub_243D0EBEC();
    v9 = sub_243D0F0FC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v27[0] = v11;
      *v10 = 136315138;
      v12 = [a1 description];
      v13 = sub_243D0ED7C();
      v15 = v14;

      v16 = sub_243CE0A08(v13, v15, v27);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_243CDB000, v8, v9, "New connection=%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x245D4F8C0](v11, -1, -1);
      MEMORY[0x245D4F8C0](v10, -1, -1);
    }

    v17 = type metadata accessor for Connection();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    swift_unknownObjectRetain();
    v20 = sub_243CF6760(a1, a3);
    v28 = v17;
    v29 = &off_2856F1318;
    v27[0] = v20;
    v21 = __swift_project_boxed_opaque_existential_1(v27, v17);
    sub_243D0A7F0(*v21, v6);
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = (*__swift_mutable_project_boxed_opaque_existential_1(v27, v28) + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived);
    v24 = *v23;
    v25 = v23[1];
    *v23 = &unk_243D127B8;
    v23[1] = v22;

    sub_243CFB580(v24);

    v26 = *__swift_project_boxed_opaque_existential_1(v27, v28);
    sub_243CF67EC();

    return __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  return result;
}

uint64_t sub_243D06774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = *(type metadata accessor for NetworkMessage() - 8);
  v3[13] = v4;
  v3[14] = *(v4 + 64);
  v3[15] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA4D0, &qword_243D127C0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v6 = sub_243D0EF8C();
  v3[17] = v6;
  v7 = *(v6 - 8);
  v3[18] = v7;
  v8 = *(v7 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243D068DC, 0, 0);
}

uint64_t sub_243D068DC()
{
  v52 = v0;
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_45_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 80);
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    v7 = *(Strong + 96);

    v50 = v5;
    sub_243D075AC(v5, v6, 0);
    sub_243CFD4F0(*(v4 + 64), *(v4 + 72));
    if (qword_27EDA9980 != -1)
    {
      OUTLINED_FUNCTION_12_2();
    }

    v9 = *(v0 + 152);
    v8 = *(v0 + 160);
    v10 = *(v0 + 136);
    v11 = *(v0 + 144);
    v12 = sub_243D0EC0C();
    __swift_project_value_buffer(v12, qword_27EDAA638);
    v49 = *(v11 + 16);
    v49(v9, v8, v10);

    v13 = sub_243D0EBEC();
    v14 = sub_243D0F0FC();

    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 144);
    v16 = *(v0 + 152);
    v18 = *(v0 + 136);
    v47 = v6;
    if (v15)
    {
      v19 = OUTLINED_FUNCTION_32_1();
      v51 = swift_slowAlloc();
      *v19 = 136315394;
      *(v19 + 4) = sub_243CE0A08(v50, v6, &v51);
      *(v19 + 12) = 2080;
      sub_243D0AE98(&qword_27EDAA4D8, MEMORY[0x277D85720]);
      v20 = sub_243D0F2FC();
      v22 = v21;
      v23 = OUTLINED_FUNCTION_27_3();
      v24(v23);
      v25 = sub_243CE0A08(v20, v22, &v51);

      *(v19 + 14) = v25;
      _os_log_impl(&dword_243CDB000, v13, v14, "NetworkMessage [%s] will be processed with %s", v19, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_24();
    }

    else
    {

      v26 = OUTLINED_FUNCTION_27_3();
      v27(v26);
    }

    v46 = *(v0 + 160);
    v29 = *(v0 + 128);
    v28 = *(v0 + 136);
    v30 = *(v0 + 112);
    v31 = *(v0 + 120);
    v32 = *(v0 + 104);
    v34 = *(v0 + 80);
    v33 = *(v0 + 88);
    (v49)(v29);
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
    v35 = swift_allocObject();
    swift_weakInit();
    sub_243D0A9F0(v34, v31);
    sub_243CE1C20(v33, v0 + 16);
    v36 = (*(v32 + 80) + 40) & ~*(v32 + 80);
    v37 = (v30 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = v35;
    sub_243D0ABC4(v31, v38 + v36);
    sub_243CE1C08((v0 + 16), v38 + v37);
    v39 = (v38 + ((v37 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v39 = v50;
    v39[1] = v47;
    sub_243CEE6DC(0, 0, v29, &unk_243D127D0, v38);

    v48(v46, v28);
  }

  v41 = *(v0 + 152);
  v40 = *(v0 + 160);
  v43 = *(v0 + 120);
  v42 = *(v0 + 128);

  OUTLINED_FUNCTION_9();

  return v44();
}

uint64_t sub_243D06CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return MEMORY[0x2822009F8](sub_243D06CF0, 0, 0);
}

uint64_t sub_243D06CF0()
{
  OUTLINED_FUNCTION_22();
  v1 = v0[5];
  OUTLINED_FUNCTION_45_0();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = v0[7];
    v0[11] = *(Strong + 72);
    v4 = *__swift_project_boxed_opaque_existential_1(v3, v3[3]);

    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_243D06E18;
    OUTLINED_FUNCTION_29_1(v0[6]);

    return sub_243D0A09C();
  }

  else
  {
    OUTLINED_FUNCTION_9();

    return v7();
  }
}

uint64_t sub_243D06E18()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_243D06F18()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0[10] + 96);
  sub_243D075AC(v0[8], v0[9], 1);

  OUTLINED_FUNCTION_9();

  return v2();
}

void sub_243D06F84(int a1, void *a2)
{
  v3 = 0xE700000000000000;
  v4 = 0x676E6974696177;
  switch(a1)
  {
    case 0:
      v4 = 0x64696C61766E69;
      break;
    case 1:
      break;
    case 2:
      v3 = 0xE500000000000000;
      v4 = 0x7964616572;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v4 = 0x64656C696166;
      break;
    case 4:
      v3 = 0xE900000000000064;
      v4 = 0x656C6C65636E6163;
      break;
    default:
      v4 = 0x6E776F6E6B6E75;
      break;
  }

  if (qword_27EDA9980 != -1)
  {
    swift_once();
  }

  v5 = sub_243D0EC0C();
  __swift_project_value_buffer(v5, qword_27EDAA638);
  swift_unknownObjectRetain();

  oslog = sub_243D0EBEC();
  v6 = sub_243D0F0FC();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315394;
    v9 = sub_243CE0A08(v4, v3, &v16);

    *(v7 + 4) = v9;
    *(v7 + 12) = 2080;
    if (a2)
    {
      v10 = [a2 description];
      v11 = sub_243D0ED7C();
      v13 = v12;
    }

    else
    {
      v13 = 0xE400000000000000;
      v11 = 1280070990;
    }

    v14 = sub_243CE0A08(v11, v13, &v16);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_243CDB000, oslog, v6, "Listener event handler, state=%s, error=%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D4F8C0](v8, -1, -1);
    MEMORY[0x245D4F8C0](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_243D07234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_243D072A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAA4B0, &unk_243D127A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  OUTLINED_FUNCTION_45_0();
  v12 = *(v3 + 64);

  sub_243D074DC(v13, &v17);

  if (v18)
  {
    sub_243CE1C08(&v17, v19);
    v14 = *(v3 + 72);
    sub_243CEEDC8(a1, a2, v19, a3);
    return __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  else
  {
    sub_243D0AE44(&v17, &qword_27EDA9EE0, &qword_243D10920);
    (*(v8 + 104))(v11, *MEMORY[0x277D858A0], v7);
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAA4C0, &qword_243D0FE50);
    a3[4] = sub_243CE16D0();
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_243D0F0CC();
  }
}

uint64_t sub_243D07460()
{
  sub_243CE9F0C();
  swift_allocError();
  *v0 = xmmword_243D12710;
  *(v0 + 16) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9D48, &unk_243D0FF60);
  return sub_243D0F09C();
}

uint64_t sub_243D074DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_243D07924(a1);
  if (v6)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {

    return sub_243D07834(result, v5, a1, a2);
  }

  return result;
}

uint64_t sub_243D075AC(uint64_t a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAA500, &unk_243D127F8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = *(*v3 + 96);
  v14[1] = a1;
  v14[2] = a2;
  v15 = a3 & 1;
  sub_243CE4454();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9DA0, &qword_243D101F0);
  sub_243D0EFBC();
  return (*(v8 + 8))(v11, v7);
}

char *sub_243D076E0(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[32 * a2] <= __dst)
  {
    return memmove(__dst, __src, 32 * a2);
  }

  return __src;
}

char *sub_243D0770C(char *a1, int64_t a2, char a3)
{
  result = sub_243D0772C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243D0772C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9F50, &unk_243D109F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_243D07834@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_243CE1C20(*(a3 + 56) + 40 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_243D0788C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243D078C4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243D07924(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_243D0F1AC();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_243D07964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v5 = *(*(type metadata accessor for NetworkMessage() - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[5] = type metadata accessor for Connection();
  v3[6] = &off_2856F1318;
  v3[2] = a2;

  return MEMORY[0x2822009F8](sub_243D07A1C, 0, 0);
}

uint64_t sub_243D07A1C()
{
  OUTLINED_FUNCTION_38_1();
  v41 = v1;
  OUTLINED_FUNCTION_31();
  v2 = sub_243CE5C98(*(v0 + 56));
  *(v0 + 104) = v2;
  if (v2)
  {
    v3 = *(v0 + 72);
    OUTLINED_FUNCTION_26_3();
    v4 = *(v0 + 8);
    v5 = *(v0 + 104);

    return v4(v5);
  }

  else
  {
    if (qword_27EDA9980 != -1)
    {
      OUTLINED_FUNCTION_12_2();
    }

    v7 = *(v0 + 72);
    v8 = *(v0 + 56);
    v9 = sub_243D0EC0C();
    *(v0 + 80) = __swift_project_value_buffer(v9, qword_27EDAA638);
    sub_243D0A9F0(v8, v7);
    v10 = sub_243D0EBEC();
    v11 = sub_243D0F0FC();
    v12 = OUTLINED_FUNCTION_37_0(v11);
    v13 = *(v0 + 72);
    if (v12)
    {
      v14 = OUTLINED_FUNCTION_44_0();
      v15 = swift_slowAlloc();
      *v14 = 136315138;
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);

      v18 = sub_243CF3654(v13);
      v26 = OUTLINED_FUNCTION_36_2(v18, v19, v20, v21, v22, v23, v24, v25, v15);

      *(v14 + 4) = v26;
      OUTLINED_FUNCTION_9_5();
      _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      OUTLINED_FUNCTION_14_4();
      OUTLINED_FUNCTION_12_3();
    }

    else
    {

      sub_243CF3654(v13);
    }

    v32 = *(v0 + 56);
    v34 = v32[4];
    v33 = v32[5];
    v35 = v32[2];
    v36 = v32[3];
    swift_task_alloc();
    OUTLINED_FUNCTION_33_0();
    *(v0 + 88) = v37;
    *v37 = v38;
    v37[1] = sub_243D07C28;
    v39 = *(v0 + 64);
    OUTLINED_FUNCTION_3_6();
    OUTLINED_FUNCTION_24_3();

    return sub_243CEF8DC();
  }
}

uint64_t sub_243D07C28()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_10();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_20();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 72);
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));

    v13 = *(v7 + 8);
    v14 = *(v3 + 104);

    return v13(v14);
  }
}

uint64_t sub_243D07D5C()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v1 = *(v0 + 80);
  MEMORY[0x245D4F760](*(v0 + 96));
  v2 = sub_243D0EBEC();
  sub_243D0F0FC();

  v3 = OUTLINED_FUNCTION_35_2();
  v4 = *(v0 + 96);
  if (v3)
  {
    OUTLINED_FUNCTION_44_0();
    v5 = OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_39_2(5.7779e-34);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_31_2(v6);
    OUTLINED_FUNCTION_8_6(&dword_243CDB000, v7, v8, "Unable to check and send compatibility of network message: %@");
    sub_243D0AE44(v5, &qword_27EDAA0E0, &qword_243D10B10);
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_28_0();
  }

  else
  {
  }

  v9 = *(v0 + 72);
  OUTLINED_FUNCTION_26_3();
  v10 = *(v0 + 8);
  v11 = *(v0 + 104);
  OUTLINED_FUNCTION_35_1();

  return v14(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_243D07E68(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAA4E0, &qword_243D0FF80);
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for NetworkMessage();
  v2[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9F90, &qword_243D10B30) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9D48, &unk_243D0FF60);
  v2[19] = v9;
  v10 = *(v9 - 8);
  v2[20] = v10;
  v11 = *(v10 + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243D0801C, 0, 0);
}

uint64_t sub_243D0801C()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v1 = v0[9];
  v2 = (v1 + *(type metadata accessor for NetworkProto.Header(0) + 56));
  v0[22] = *v2;
  v3 = v2[1];
  v0[23] = v3;
  if (v3)
  {
    v0[24] = *(v0[10] + 16);

    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_15_2();

    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_35_1();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }
}

uint64_t sub_243D08118()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[24];
  sub_243D058A8(v0[22], v0[23], v0[18]);
  v2 = OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_243D0817C()
{
  OUTLINED_FUNCTION_43_1();
  v47 = v0;
  v2 = v0[18];
  v1 = v0[19];
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v3 = v0[24];
    sub_243D0AE44(v2, &qword_27EDA9F90, &qword_243D10B30);
  }

  else
  {
    v4 = v0[9];
    (*(v0[20] + 32))(v0[21], v2, v1);
    if (!sub_243D0D778())
    {
      if (qword_27EDA9980 != -1)
      {
        OUTLINED_FUNCTION_12_2();
      }

      v10 = v0[23];
      v11 = v0[15];
      v12 = v0[9];
      v13 = sub_243D0EC0C();
      __swift_project_value_buffer(v13, qword_27EDAA638);
      sub_243D0A9F0(v12, v11);

      v14 = sub_243D0EBEC();
      LOBYTE(v12) = sub_243D0F0FC();

      v15 = os_log_type_enabled(v14, v12);
      v16 = v0[23];
      if (v15)
      {
        v17 = v0[22];
        v19 = v0[14];
        v18 = v0[15];
        OUTLINED_FUNCTION_32_1();
        v46 = OUTLINED_FUNCTION_34_1();
        *v10 = 136315394;
        v20 = sub_243CE0A08(v17, v16, &v46);

        *(v10 + 4) = v20;
        *(v10 + 12) = 2080;
        v21 = (v18 + *(v19 + 20));
        v22 = *v21;
        v23 = v21[1];
        v24 = sub_243D0E6CC();
        v26 = v25;
        sub_243CF3654(v18);
        v27 = sub_243CE0A08(v24, v26, &v46);

        *(v10 + 14) = v27;
        OUTLINED_FUNCTION_9_5();
        _os_log_impl(v28, v29, v30, v31, v32, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_28_0();
        OUTLINED_FUNCTION_12_3();
      }

      else
      {
        v33 = v0[15];

        sub_243CF3654(v33);
      }

      v35 = v0[20];
      v34 = v0[21];
      v36 = v0[19];
      v37 = v0[13];
      v38 = v0[11];
      v39 = v0[12];
      v40 = (v0[9] + *(v0[14] + 20));
      v41 = *v40;
      v42 = v40[1];
      v0[5] = *v40;
      v0[6] = v42;
      sub_243CE1434(v41, v42);
      sub_243D0F08C();
      (*(v39 + 8))(v37, v38);
      (*(v35 + 8))(v34, v36);
      OUTLINED_FUNCTION_15_2();

      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_6_0();

      __asm { BRAA            X1, X16 }
    }

    v5 = v0[24];
    __swift_storeEnumTagSinglePayload(v0[17], 1, 1, v0[19]);
  }

  OUTLINED_FUNCTION_6_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_243D084B0()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 192);
  *(v0 + 200) = sub_243D05A80();
  v2 = OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_243D08510()
{
  OUTLINED_FUNCTION_31();
  v28 = v0;
  if (qword_27EDA9980 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  v1 = v0[25];
  v2 = v0[23];
  v3 = sub_243D0EC0C();
  __swift_project_value_buffer(v3, qword_27EDAA638);

  v4 = sub_243D0EBEC();
  v5 = sub_243D0F0EC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[25];
  v8 = v0[23];
  if (v6)
  {
    v9 = v0[22];
    OUTLINED_FUNCTION_32_1();
    v27 = OUTLINED_FUNCTION_34_1();
    *v1 = 136315394;
    v10 = sub_243CE0A08(v9, v8, &v27);

    *(v1 + 4) = v10;
    *(v1 + 12) = 2080;
    MEMORY[0x245D4EC70](v7, MEMORY[0x277D837D0]);

    v19 = OUTLINED_FUNCTION_36_2(v11, v12, v13, v14, v15, v16, v17, v18, v27);

    *(v1 + 14) = v19;
    OUTLINED_FUNCTION_9_5();
    _os_log_impl(v20, v21, v22, v23, v24, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_9();

  return v25();
}

uint64_t sub_243D08700()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  v5 = v0[16];
  v4 = v0[17];
  sub_243D0AD74(v4, v5);
  sub_243CEE9BC(v5);
  sub_243D0AE44(v4, &qword_27EDA9F90, &qword_243D10B30);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_243D0879C()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v1 = *(v0 + 72);
  if (*(v1 + 80) == 2)
  {
    v2 = (v1 + *(*(v0 + 112) + 20));
    v3 = *v2;
    v4 = v2[1];
    v5 = sub_243D0E5EC();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_243D0E5DC();
    sub_243D0ADE4();
    sub_243D0E5CC();

    v11 = *(v0 + 16);
    v12 = *(v0 + 24);
    LOBYTE(v2) = *(v0 + 32);
    sub_243CE9F0C();
    v13 = swift_allocError();
    *v14 = v11;
    *(v14 + 8) = v12;
    *(v14 + 16) = v2;
    v16 = *(v0 + 160);
    v15 = *(v0 + 168);
    v17 = *(v0 + 152);
    *(v0 + 64) = v13;
    sub_243D0F09C();
    (*(v16 + 8))(v15, v17);
  }

  else
  {
    *(v0 + 56) = 0;
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 152);
    sub_243D0F09C();
    (*(v9 + 8))(v8, v10);
  }

  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_35_1();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_243D08978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a1;
  v3[25] = a3;
  v5 = *(*(sub_243D0EF8C() - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v6 = sub_243D0E7BC();
  v3[27] = v6;
  v7 = *(v6 - 8);
  v3[28] = v7;
  v8 = *(v7 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v9 = type metadata accessor for NetworkMessage();
  v3[31] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[5] = type metadata accessor for Connection();
  v3[6] = &off_2856F1318;
  v3[2] = a2;

  return MEMORY[0x2822009F8](sub_243D08AE0, 0, 0);
}

uint64_t sub_243D08AE0()
{
  OUTLINED_FUNCTION_43_1();
  v50 = v0;
  if (qword_27EDA9980 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[24];
  v4 = sub_243D0EC0C();
  v0[35] = __swift_project_value_buffer(v4, qword_27EDAA638);
  sub_243D0A9F0(v3, v1);
  sub_243D0A9F0(v3, v2);
  v5 = sub_243D0EBEC();
  v6 = sub_243D0F0FC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[33];
  v9 = v0[34];
  if (v7)
  {
    OUTLINED_FUNCTION_32_1();
    v49 = OUTLINED_FUNCTION_34_1();
    *v2 = 136315394;
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);

    sub_243CF3654(v9);
    v12 = sub_243CE0A08(v10, v11, &v49);

    *(v2 + 4) = v12;
    *(v2 + 12) = 2080;
    v13 = (v8 + *(type metadata accessor for NetworkProto.Header(0) + 56));
    if (v13[1])
    {
      v14 = *v13;
      v15 = v13[1];
    }

    v16 = v0[33];

    v17 = sub_243CF3654(v16);
    v25 = OUTLINED_FUNCTION_36_2(v17, v18, v19, v20, v21, v22, v23, v24, v49);

    *(v2 + 14) = v25;
    _os_log_impl(&dword_243CDB000, v5, v6, "Processing incoming message: [%s,%s]", v2, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_12_3();
  }

  else
  {

    sub_243CF3654(v9);
    sub_243CF3654(v8);
  }

  v26 = v0[25];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[36] = Strong;
  if (Strong)
  {
    v28 = (v0[24] + *(v0[31] + 20));
    v29 = *v28;
    v30 = v28[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_33_0();
    v0[37] = v31;
    *v31 = v32;
    v31[1] = sub_243D08E40;

    return sub_243CE2384();
  }

  else
  {
    v34 = sub_243D0EBEC();
    v35 = sub_243D0F0FC();
    if (OUTLINED_FUNCTION_37_0(v35))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_9_5();
      _os_log_impl(v36, v37, v38, v39, v40, 2u);
      OUTLINED_FUNCTION_12_3();
    }

    v41 = v0[24];

    v43 = v41[4];
    v42 = v41[5];
    v44 = v41[2];
    v45 = v41[3];
    swift_task_alloc();
    OUTLINED_FUNCTION_33_0();
    v0[48] = v46;
    *v46 = v47;
    v46[1] = sub_243D09E14;
    v48 = v0[25];
    v52 = -1;
    OUTLINED_FUNCTION_3_6();

    return sub_243CEF8DC();
  }
}

uint64_t sub_243D08E40()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  v2 = *(v1 + 296);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_243D08F24()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v1 = v0[15];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_243D0F06C();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v0[38] = OBJC_IVAR____TtC22CompanionInferenceCore20MessagingCoordinator_senderId;
  v6 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v7 = *(MEMORY[0x277D856D8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_0();
  v0[39] = v8;
  *v8 = v9;
  OUTLINED_FUNCTION_5_5(v8);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x282200310](v10, v11, v12, v13, v14, v15);
}

uint64_t sub_243D090B0()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 320) = v0;

  OUTLINED_FUNCTION_20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_243D091AC()
{
  v1 = *(v0 + 168);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 192);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v4 = v2[4];
    v3 = v2[5];
    v5 = v2[2];
    v6 = v2[3];
    swift_task_alloc();
    OUTLINED_FUNCTION_33_0();
    *(v0 + 344) = v7;
    *v7 = v8;
    v7[1] = sub_243D097D8;
    v9 = *(v0 + 200);
    OUTLINED_FUNCTION_3_6();

    return sub_243CEF8DC();
  }

  v54 = *(v0 + 160);
  v11 = *(v0 + 304);
  v13 = *(v0 + 232);
  v12 = *(v0 + 240);
  v14 = *(v0 + 216);
  v15 = *(v0 + 224);
  v17 = *(v0 + 200);
  v16 = *(v0 + 208);
  v18 = *(v0 + 192);
  sub_243D0E7AC();
  v52 = sub_243D0E77C();
  v53 = v19;
  v20 = *(v15 + 8);
  v20(v12, v14);
  v21 = sub_243D0E77C();
  v23 = v22;
  v50 = v18[4];
  v51 = v21;
  v49 = v18[5];
  v24 = v18[2];
  v25 = v18[3];
  sub_243D0F05C();
  v48 = sub_243CFD02C(v16);
  v56 = v26;
  sub_243D0E7AC();
  v47 = sub_243D0E77C();
  v28 = v27;
  v20(v13, v14);
  v29 = MEMORY[0x245D4E4B0](v54, v1);
  if ((v29 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  LODWORD(v13) = v29;
  if (HIDWORD(v29))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v46 = v24;
  if (qword_27EDA9988 != -1)
  {
LABEL_15:
    swift_once();
  }

  v45 = v25;
  v30 = dword_27EDAA658;
  *(v0 + 400) = qword_27EDAA650;
  *(v0 + 408) = v30;
  v31 = Version.description.getter();
  v44 = v32;
  if (qword_27EDA9990 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 256);
  v42 = *(v0 + 320);
  v43 = *(v0 + 248);
  v33 = dword_27EDAA668;
  *(v0 + 412) = qword_27EDAA660;
  *(v0 + 420) = v33;
  v34 = Version.description.getter();
  v36 = v35;
  type metadata accessor for NetworkProto.Header(0);
  v37 = swift_task_alloc();
  *(v37 + 16) = v47;
  *(v37 + 24) = v28;
  *(v37 + 32) = v52;
  *(v37 + 40) = v53;
  *(v37 + 48) = v51;
  *(v37 + 56) = v23;
  *(v37 + 64) = v50;
  *(v37 + 72) = v49;
  *(v37 + 80) = v48;
  *(v37 + 88) = v56 & 1;
  *(v37 + 96) = 0;
  *(v37 + 104) = 1;
  *(v37 + 108) = v13;
  *(v37 + 112) = v31;
  *(v37 + 120) = v44;
  *(v37 + 128) = v34;
  *(v37 + 136) = v36;
  *(v37 + 144) = v46;
  *(v37 + 152) = v45;
  sub_243D0AE98(&qword_27EDAA100, type metadata accessor for NetworkProto.Header);
  sub_243D0EB0C();

  v38 = (v41 + *(v43 + 20));
  *v38 = v54;
  v38[1] = v1;
  v39 = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v40 = swift_task_alloc();
  *(v0 + 328) = v40;
  *v40 = v0;
  v40[1] = sub_243D096DC;
  OUTLINED_FUNCTION_29_1(*(v0 + 256));

  return sub_243CF73C4();
}