uint64_t *sub_25BAF73CC()
{
  if (qword_27FBB3378 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  return &qword_27FBB3840;
}

uint64_t static RuntimeConfiguration.mpsGraphCacheSize.modify()
{
  if (qword_27FBB3378 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  OUTLINED_FUNCTION_2_1();
  return OUTLINED_FUNCTION_7_3();
}

uint64_t sub_25BAF74BC()
{
  result = sub_25BAF74DC();
  qword_28154E1F8 = result;
  return result;
}

uint64_t sub_25BAF74DC()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_25BCB610C();
  v3 = sub_25BB3ED18(0xD00000000000001ELL, 0x800000025BCD9150, v2);
  v5 = v4;

  if (!v5)
  {
    return 100;
  }

  v7 = HIBYTE(v5) & 0xF;
  v8 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v9 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    return 100;
  }

  if ((v5 & 0x1000000000000000) == 0)
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      v31[0] = v3;
      v31[1] = v5 & 0xFFFFFFFFFFFFFFLL;
      if (v3 == 43)
      {
        if (v7)
        {
          if (--v7)
          {
            v11 = 0;
            v21 = v31 + 1;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                break;
              }

              v23 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                break;
              }

              v11 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                break;
              }

              ++v21;
              if (!--v7)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (v3 != 45)
      {
        if (v7)
        {
          v11 = 0;
          v26 = v31;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            v28 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              break;
            }

            v11 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              break;
            }

            ++v26;
            if (!--v7)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      if (v7)
      {
        if (--v7)
        {
          v11 = 0;
          v15 = v31 + 1;
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              break;
            }

            v17 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              break;
            }

            v11 = v17 - v16;
            if (__OFSUB__(v17, v16))
            {
              break;
            }

            ++v15;
            if (!--v7)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        result = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_25BCB71FC();
      }

      v10 = *result;
      if (v10 == 43)
      {
        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v11 = 0;
            if (result)
            {
              v18 = (result + 1);
              while (1)
              {
                v19 = *v18 - 48;
                if (v19 > 9)
                {
                  goto LABEL_62;
                }

                v20 = 10 * v11;
                if ((v11 * 10) >> 64 != (10 * v11) >> 63)
                {
                  goto LABEL_62;
                }

                v11 = v20 + v19;
                if (__OFADD__(v20, v19))
                {
                  goto LABEL_62;
                }

                ++v18;
                if (!--v7)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_54;
          }

          goto LABEL_62;
        }

        goto LABEL_73;
      }

      if (v10 != 45)
      {
        if (v8)
        {
          v11 = 0;
          if (result)
          {
            while (1)
            {
              v24 = *result - 48;
              if (v24 > 9)
              {
                goto LABEL_62;
              }

              v25 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_62;
              }

              v11 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                goto LABEL_62;
              }

              ++result;
              if (!--v8)
              {
                goto LABEL_54;
              }
            }
          }

          goto LABEL_54;
        }

LABEL_62:
        v11 = 0;
        LOBYTE(v7) = 1;
        goto LABEL_63;
      }

      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v11 = 0;
          if (result)
          {
            v12 = (result + 1);
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                goto LABEL_62;
              }

              v14 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_62;
              }

              v11 = v14 - v13;
              if (__OFSUB__(v14, v13))
              {
                goto LABEL_62;
              }

              ++v12;
              if (!--v7)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_54:
          LOBYTE(v7) = 0;
LABEL_63:
          v32 = v7;
          v29 = v7;
          goto LABEL_64;
        }

        goto LABEL_62;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v11 = sub_25BAF7BF8(v3, v5, 10);
  v29 = v30;
LABEL_64:

  if (v29)
  {
    return 100;
  }

  else
  {
    return v11;
  }
}

uint64_t *sub_25BAF786C()
{
  if (qword_28154E1F0 != -1)
  {
    OUTLINED_FUNCTION_4_7();
  }

  return &qword_28154E1F8;
}

uint64_t sub_25BAF78D0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_4();
  return *a2;
}

uint64_t sub_25BAF793C(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  result = OUTLINED_FUNCTION_8_4();
  *a3 = a1;
  return result;
}

uint64_t static RuntimeConfiguration.espressoNetworkCacheSize.modify()
{
  if (qword_28154E1F0 != -1)
  {
    OUTLINED_FUNCTION_4_7();
  }

  OUTLINED_FUNCTION_2_1();
  return OUTLINED_FUNCTION_7_3();
}

uint64_t sub_25BAF79F0@<X0>(void (*a1)(void)@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  a1();
  result = OUTLINED_FUNCTION_1_4();
  *a3 = *a2;
  return result;
}

uint64_t sub_25BAF7A30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void *a6)
{
  v7 = *a1;
  a5();
  result = OUTLINED_FUNCTION_8_4();
  *a6 = v7;
  return result;
}

uint64_t sub_25BAF7B44(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_25BAC27B0(a2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
  return swift_dynamicCast();
}

unsigned __int8 *sub_25BAF7BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_25BCB617C();
  result = sub_25BCB653C();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_25BAF8180();
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25BCB71FC();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
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

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
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

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_25BAF8180()
{
  v0 = sub_25BAF81EC();
  v4 = sub_25BAF8220(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_25BAF8220(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_25BCB63FC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_25BCB6ECC();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_25BB72890();
  v12 = sub_25BAF8380(v15, (v11 + 4), v10, a1, a2, a3, a4);
  sub_25BCB617C();

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_25BCB63FC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_25BCB71FC();
LABEL_4:

  return sub_25BCB63FC();
}

unint64_t sub_25BAF8380(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_25BAF8590(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25BCB64CC();
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
          result = sub_25BCB71FC();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_25BAF8590(v12, a6, a7);
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

    result = sub_25BCB64AC();
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

uint64_t sub_25BAF8590(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25BCB64DC();
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
    v5 = MEMORY[0x25F876CE0](15, a1 >> 16);
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

uint64_t Function.callAsFunction(_:parameters:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v11 = sub_25BCB614C();
  v10 = *(v3 + 1);
  Function.callAsFunction(_:parameters:states:)(a1, a2, &v11, a3);
}

uint64_t Function.callAsFunction(_:parameters:states:)(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t a4)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  v200 = v4[3];
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&v217);

  v12 = v221;

  sub_25BAA4AF4(&v217);
  v202 = v9;
  v203 = a3;
  if (!v12)
  {
LABEL_26:
    (*(*v11 + 88))(a1);
    v56 = sub_25BAF9C80();

    OUTLINED_FUNCTION_32_1();
    v60 = sub_25BAFA670(v56, v57, v58, v59);
    v206 = *a3;
    v61 = *(v9 + 16);
    v62 = *(a4 + 16);
    v63 = *(a4 + 24);
    _s9IOMappingVMa();
    sub_25BCB617C();
    v223 = sub_25BCB674C();
    v19 = MEMORY[0x277D84F90];
    v64 = MEMORY[0x277D84F90];
    v208 = v60;
    while (1)
    {
      OUTLINED_FUNCTION_91();
      v65 = sub_25BCB681C();
      v66 = v223;
      if (v223 == v65)
      {

        v217 = 0uLL;
        Array<A>.resolve(descriptor:)(&v217, v19);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
        *(&v217 + 1) = sub_25BCB614C();
        v102 = sub_25BAD8178(v64);

        *&v217 = v102;
        sub_25BAD8324(v103);

        v104 = OUTLINED_FUNCTION_92();
        v106 = sub_25BC4EBCC(v104, v105, a3);

        sub_25BAFA724(v106);

        v107 = sub_25BAFA940();

        (*(*v200 + 96))(v107);
      }

      OUTLINED_FUNCTION_91();
      v67 = sub_25BCB67FC();
      sub_25BCB677C();
      if ((v67 & 1) == 0)
      {
        break;
      }

      v68 = (v61 + 32 + 48 * v66);
      v69 = *v68;
      v70 = v68[1];
      v26 = v68[2];
      v71 = v68[3];
      v5 = v68[4];
      sub_25BCB617C();
      sub_25BCB617C();
      sub_25BCB68AC();
      switch(v69)
      {
        case 1:
          v79 = a2;
          if (*(a2 + 16))
          {
            OUTLINED_FUNCTION_0_6();
            v85 = OUTLINED_FUNCTION_99();
            v83 = sub_25BA92684(v85, v86, v87);
            if (v88)
            {
              goto LABEL_38;
            }
          }

          *&v217 = v70;
          goto LABEL_131;
        case 2:
          v79 = v206;
          if (!*(v206 + 16) || (OUTLINED_FUNCTION_0_6(), v80 = OUTLINED_FUNCTION_99(), v83 = sub_25BA92684(v80, v81, v82), (v84 & 1) == 0))
          {
            *&v217 = v70;
LABEL_129:
            *(&v217 + 1) = v26;
            v218 = 0x6574617473;
            v219 = 0xE500000000000000;
            v222 = 21;
            OUTLINED_FUNCTION_28_2();
            goto LABEL_132;
          }

LABEL_38:
          v89 = v83;

          v78 = *(*(v79 + 56) + 8 * v89);
LABEL_39:
          v90 = *(v78 + 16);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v96 = *(v64 + 16);
            OUTLINED_FUNCTION_45();
            sub_25BAD80BC();
            v64 = v97;
          }

          v92 = *(v64 + 16);
          v91 = *(v64 + 24);
          if (v92 >= v91 >> 1)
          {
            OUTLINED_FUNCTION_81(v91);
            sub_25BAD80BC();
            v64 = v98;
          }

          *(v64 + 16) = v92 + 1;
          v93 = (v64 + 24 * v92);
          v93[4] = v71;
          v93[5] = v5;
          v93[6] = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v99 = *(v19 + 16);
            OUTLINED_FUNCTION_45();
            sub_25BAA1B64();
            v19 = v100;
          }

          v60 = v208;
          v95 = *(v19 + 16);
          v94 = *(v19 + 24);
          if (v95 >= v94 >> 1)
          {
            OUTLINED_FUNCTION_81(v94);
            sub_25BAA1B64();
            v19 = v101;
          }

          *(v19 + 16) = v95 + 1;
          *(v19 + 8 * v95 + 32) = v78;
          break;
        case 3:
          OUTLINED_FUNCTION_85();
          OUTLINED_FUNCTION_114();
          OUTLINED_FUNCTION_72();
          v193 = OUTLINED_FUNCTION_97();
LABEL_124:
          v194 = v26;
LABEL_126:
          MEMORY[0x25F876C90](v193, v194);
          MEMORY[0x25F876C90](96, 0xE100000000000000);
          OUTLINED_FUNCTION_114();
          BYTE4(v221) = 9;
          OUTLINED_FUNCTION_28_2();
          sub_25BA97890();
        default:
          if (!*(v60 + 16) || (OUTLINED_FUNCTION_0_6(), v72 = OUTLINED_FUNCTION_99(), v75 = sub_25BA92684(v72, v73, v74), (v76 & 1) == 0))
          {
            *&v217 = v70;
            goto LABEL_131;
          }

          v77 = v75;

          v78 = *(*(v60 + 56) + 8 * v77);
          goto LABEL_39;
      }
    }

    sub_25BCB717C();
    __break(1u);
LABEL_69:
    OUTLINED_FUNCTION_92();
    sub_25BCB717C();
    __break(1u);
    goto LABEL_70;
  }

  if ((*(v12 + 24) & 1) == 0 || !v10)
  {

    goto LABEL_26;
  }

  v201 = v10;
  v204 = v12;
  v199 = v11;
  (*(*v11 + 88))(a1);
  v13 = sub_25BAF9C80();

  OUTLINED_FUNCTION_32_1();
  v206 = sub_25BAFA670(v13, v14, v15, v16);
  v17 = *a3;
  v18 = *(v9 + 16);
  v197 = *(a4 + 24);
  v198 = *(a4 + 16);
  _s9IOMappingVMa();
  sub_25BCB617C();
  v223 = sub_25BCB674C();
  v5 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v212 = v17;
  while (1)
  {
    OUTLINED_FUNCTION_110();
    v20 = sub_25BCB681C();
    v21 = v223;
    if (v223 == v20)
    {
      break;
    }

    OUTLINED_FUNCTION_110();
    v22 = sub_25BCB67FC();
    sub_25BCB677C();
    if ((v22 & 1) == 0)
    {
      goto LABEL_69;
    }

    v23 = (v18 + 32 + 48 * v21);
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[2];
    v28 = v23[3];
    v27 = v23[4];
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB68AC();
    switch(v24)
    {
      case 1:
        v17 = a2;
        if (*(a2 + 16))
        {
          OUTLINED_FUNCTION_0_6();
          v38 = OUTLINED_FUNCTION_112();
          v32 = sub_25BA92684(v38, v39, v40);
          if (v41)
          {
            goto LABEL_16;
          }
        }

        *&v217 = v25;
        goto LABEL_131;
      case 2:
        if (*(v17 + 16))
        {
          OUTLINED_FUNCTION_0_6();
          v34 = OUTLINED_FUNCTION_112();
          v32 = sub_25BA92684(v34, v35, v36);
          if (v37)
          {
            goto LABEL_16;
          }
        }

        *&v217 = v25;
        goto LABEL_129;
      case 3:
        OUTLINED_FUNCTION_85();
        OUTLINED_FUNCTION_114();
        OUTLINED_FUNCTION_72();
        v193 = v25;
        goto LABEL_124;
      default:
        v17 = v206;
        if (!*(v206 + 16) || (OUTLINED_FUNCTION_0_6(), v29 = OUTLINED_FUNCTION_112(), v32 = sub_25BA92684(v29, v30, v31), (v33 & 1) == 0))
        {
          *&v217 = v25;
LABEL_131:
          OUTLINED_FUNCTION_59();
          OUTLINED_FUNCTION_28_2();
LABEL_132:
          sub_25BADDD28();
        }

LABEL_16:
        v42 = v32;

        v43 = *(*(v17 + 56) + 8 * v42);
        v44 = *(v43 + 16);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = *(v19 + 16);
          OUTLINED_FUNCTION_45();
          sub_25BAD80BC();
          v19 = v51;
        }

        v46 = *(v19 + 16);
        v45 = *(v19 + 24);
        if (v46 >= v45 >> 1)
        {
          OUTLINED_FUNCTION_81(v45);
          sub_25BAD80BC();
          v19 = v52;
        }

        *(v19 + 16) = v46 + 1;
        v47 = (v19 + 24 * v46);
        v47[4] = v28;
        v47[5] = v27;
        v47[6] = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = *(v5 + 16);
          OUTLINED_FUNCTION_45();
          sub_25BAA1B64();
          v5 = v54;
        }

        v49 = *(v5 + 16);
        v48 = *(v5 + 24);
        if (v49 >= v48 >> 1)
        {
          OUTLINED_FUNCTION_81(v48);
          sub_25BAA1B64();
          v5 = v55;
        }

        *(v5 + 16) = v49 + 1;
        *(v5 + 8 * v49 + 32) = v43;
        v17 = v212;
        break;
    }
  }

  v217 = 0uLL;
  Array<A>.resolve(descriptor:)(&v217, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v108 = MEMORY[0x277D84F90];
  *(&v217 + 1) = sub_25BCB614C();
  v109 = sub_25BAD8178(v19);

  *&v217 = v109;
  sub_25BAD8324(v110);
  v195 = *(&v217 + 1);
  v111 = v217;
  v5 = sub_25BC4EBCC(v217, *(&v217 + 1), v203);
  v112 = *(v111 + 16);
  v196 = v111;
  if (v112)
  {
    *&v217 = v108;
    sub_25BCB727C();
    v113 = (v111 + 48);
    v114 = a2;
    v19 = v201;
    do
    {
      v115 = *v113;
      v113 += 3;

      sub_25BCB723C();
      v116 = *(v217 + 16);
      OUTLINED_FUNCTION_97();
      sub_25BCB728C();
      OUTLINED_FUNCTION_97();
      sub_25BCB729C();
      sub_25BCB725C();
      --v112;
    }

    while (v112);
    v108 = v217;
  }

  else
  {
    v114 = a2;
    v19 = v201;
  }

  v117 = *(v5 + 16);
  if (v117)
  {
    *&v217 = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v118 = (v5 + 48);
    do
    {
      v119 = *v118;
      v118 += 3;

      sub_25BCB723C();
      v120 = *(v217 + 16);
      OUTLINED_FUNCTION_97();
      sub_25BCB728C();
      OUTLINED_FUNCTION_97();
      sub_25BCB729C();
      sub_25BCB725C();
      --v117;
    }

    while (v117);
  }

  v121 = *(v206 + 16);
  v122 = *(v114 + 16);
  v123 = v121 + v122;
  if (__OFADD__(v121, v122))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v123 < 0)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_25BB0048C(0, v108);
  v124 = OUTLINED_FUNCTION_99();
  sub_25BB0048C(v124, v125);
  if ((v108 & 0xC000000000000001) != 0 && v123)
  {
    type metadata accessor for TensorRepresentation();
    sub_25BCB617C();
    v126 = 0;
    do
    {
      v127 = v126 + 1;
      sub_25BCB716C();
      v126 = v127;
    }

    while (v123 != v127);
  }

  else
  {
    sub_25BCB617C();
  }

  if (!(v108 >> 62))
  {
    v128 = 0;
    v129 = v108 & 0xFFFFFFFFFFFFFF8;
    v130 = (v108 & 0xFFFFFFFFFFFFFF8) + 32;
    v131 = (2 * v123) | 1;
    if ((v131 & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_73;
  }

LABEL_72:

  v129 = sub_25BCB756C();
  v130 = v132;
  v128 = v133;
  v131 = v134;
  if ((v134 & 1) == 0)
  {
    goto LABEL_67;
  }

LABEL_73:
  sub_25BCB78DC();
  swift_unknownObjectRetain_n();
  v135 = swift_dynamicCastClass();
  if (!v135)
  {
    swift_unknownObjectRelease();
    v135 = MEMORY[0x277D84F90];
  }

  v136 = *(v135 + 16);

  if (__OFSUB__(v131 >> 1, v128))
  {
LABEL_117:
    __break(1u);
  }

  else if (v136 == (v131 >> 1) - v128)
  {
    v137 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v137)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  swift_unknownObjectRelease();
LABEL_67:
  sub_25BAFF8B8(v129, v130, v128, v131);
LABEL_78:
  swift_unknownObjectRelease();
LABEL_79:
  v205 = v5;
  v131 = *v203;
  v138 = *(v19 + 16);
  sub_25BCB617C();
  v223 = sub_25BCB674C();
  v19 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
  v209 = v131;
  while (1)
  {
    v139 = sub_25BCB681C();
    v128 = v223;
    if (v223 == v139)
    {
      break;
    }

    v129 = sub_25BCB67FC();
    sub_25BCB677C();
    if ((v129 & 1) == 0)
    {
      OUTLINED_FUNCTION_112();
      sub_25BCB717C();
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v140 = (v138 + 32 + 48 * v128);
    v141 = *v140;
    v142 = v140[1];
    v130 = v140[2];
    v144 = v140[3];
    v143 = v140[4];
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB68AC();
    switch(v141)
    {
      case 1:
        v145 = a2;
        goto LABEL_88;
      case 2:
        if (!*(v131 + 16))
        {
          goto LABEL_100;
        }

        OUTLINED_FUNCTION_0_6();
        v146 = OUTLINED_FUNCTION_92();
        v149 = sub_25BA92684(v146, v147, v148);
        v151 = v150;

        if (v151)
        {
          v152 = *(v131 + 56);
          goto LABEL_91;
        }

        break;
      case 3:
        OUTLINED_FUNCTION_85();
        OUTLINED_FUNCTION_114();
        OUTLINED_FUNCTION_72();
        v193 = OUTLINED_FUNCTION_92();
        goto LABEL_126;
      default:
        v145 = v206;
LABEL_88:
        if (*(v145 + 16))
        {
          OUTLINED_FUNCTION_0_6();
          v153 = OUTLINED_FUNCTION_92();
          v149 = sub_25BA92684(v153, v154, v155);
          v157 = v156;

          if (v157)
          {
            v152 = *(v145 + 56);
LABEL_91:
            v158 = *(v152 + 8 * v149);
            v159 = *(v158 + 16);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v164 = *(v5 + 16);
              OUTLINED_FUNCTION_45();
              sub_25BAD80BC();
              v5 = v165;
            }

            v161 = *(v5 + 16);
            v160 = *(v5 + 24);
            if (v161 >= v160 >> 1)
            {
              OUTLINED_FUNCTION_81(v160);
              sub_25BAD80BC();
              v5 = v166;
            }

            *(v5 + 16) = v161 + 1;
            v162 = (v5 + 24 * v161);
            v162[4] = v144;
            v162[5] = v143;
            v162[6] = v159;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v167 = *(v19 + 16);
              OUTLINED_FUNCTION_45();
              sub_25BAA1B64();
              v19 = v168;
            }

            v131 = v209;
            v130 = *(v19 + 16);
            v163 = *(v19 + 24);
            if (v130 >= v163 >> 1)
            {
              OUTLINED_FUNCTION_81(v163);
              sub_25BAA1B64();
              v19 = v169;
            }

            *(v19 + 16) = v130 + 1;
            *(v19 + 8 * v130 + 32) = v158;
          }

          else
          {

            v131 = v209;
          }
        }

        else
        {
LABEL_100:
        }

        break;
    }
  }

  v170 = _s9OperationCMa();
  v217 = 0uLL;
  Array<A>.resolve(descriptor:)(&v217, v19);

  v171 = MEMORY[0x277D84F90];
  *(&v217 + 1) = sub_25BCB614C();
  v172 = sub_25BAD8178(v5);

  *&v217 = v172;
  sub_25BAD8324(v173);

  v210 = v217;
  v213 = *(v201 + 16);
  v174 = swift_allocObject();
  *(v174 + 16) = v198;
  *(v174 + 24) = v197;
  *(v174 + 32) = v202;
  *(v174 + 40) = v201;
  *(v174 + 48) = v199;
  *(v174 + 56) = v200;
  *(v174 + 64) = v213;
  *(v174 + 80) = v210;
  *(v174 + 96) = v196;
  *(v174 + 104) = v195;
  LOBYTE(v217) = 0;
  v223 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/ComputeFunction/ComputeFunction+Types.swift";
  v224 = 119;
  v225 = 2;
  v226 = xmmword_25BCBB810;
  v227 = "init(inputs:differentiableInputs:outputs:creationSite:backward:)";
  v228 = 64;
  v229 = 2;
  v230 = 0;
  sub_25BCB617C();
  sub_25BCB617C();

  v203 = v170;
  v206 = sub_25BC4F338();
  v175 = v205;
  v131 = *(v205 + 16);
  if (v131)
  {
    v216 = v171;
    sub_25BB006B4(0, v131, 0);
    v176 = 0;
    v130 = 0;
    v201 = v131;
    v202 = *(v205 + 16);
    v128 = v205 + 48;
    v129 = v216;
    while (v202 != v176)
    {
      if (v176 >= *(v175 + 16))
      {
        goto LABEL_116;
      }

      v177 = *(v128 - 8);
      a2 = *(v128 - 16);
      v178 = *v128;
      sub_25BAA486C(*v128 + 168, v215, &qword_27FBB6730, &qword_25BCBC4B0);
      v211 = v177;
      sub_25BCB617C();

      v214 = v129;
      sub_25BAA49B8();
      sub_25BAA4A5C(&v217);

      v179 = v220;

      sub_25BAA4AF4(&v217);
      type metadata accessor for TensorRepresentation();
      v180 = swift_allocObject();

      WitnessTable = swift_getWitnessTable();
      LOBYTE(v217) = 1;
      sub_25BC5FB58(v206, v176, v215, 0x100000000, v204, v179, v180, v170, WitnessTable);
      v5 = v182;

      v183 = sub_25BA928B4();
      [v183 lock];

      sub_25BA92920(v178, 0, 0, &v217);
      [*(v178 + 224) unlock];

      v184 = v217;

      swift_unknownObjectRetain();
      v185 = sub_25BA928B4();
      [v185 lock];

      sub_25BC5F7F0(v5, v184, *(&v184 + 1));
      [*(v5 + 224) unlock];
      swift_unknownObjectRelease_n();

      type metadata accessor for TensorHandle();
      v186 = swift_allocObject();
      *(v186 + 16) = v5;

      sub_25BAA6EB0();
      v129 = v214;

      v216 = v214;
      v188 = *(v214 + 16);
      v187 = *(v214 + 24);
      v19 = v188 + 1;
      if (v188 >= v187 >> 1)
      {
        v190 = OUTLINED_FUNCTION_81(v187);
        sub_25BB006B4(v190, v188 + 1, 1);
        v129 = v216;
      }

      *(v129 + 16) = v19;
      v189 = (v129 + 24 * v188);
      v189[4] = a2;
      v189[5] = v211;
      v189[6] = v186;
      ++v176;
      v128 += 24;
      v131 = v201;
      v175 = v205;
      if (v201 == v176)
      {

        goto LABEL_112;
      }
    }

    goto LABEL_115;
  }

  v129 = MEMORY[0x277D84F90];
LABEL_112:
  v191 = sub_25BAF9928(v129);

  sub_25BC4F3A4(v191);
}

uint64_t sub_25BAF99E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_25BCB6A6C();
      sub_25BCB723C();
      v6 = *(v7 + 16);
      OUTLINED_FUNCTION_94();
      sub_25BCB728C();
      OUTLINED_FUNCTION_94();
      sub_25BCB729C();
      sub_25BCB725C();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_25BAF9B54(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v22 = MEMORY[0x277D84F90];
    v4 = OUTLINED_FUNCTION_18_3();
    sub_25BB00674(v4, v5, v6);
    v7 = (a1 + 56);
    v2 = v22;
    do
    {
      v8 = *(v7 - 1);
      v17 = *(v7 - 3);
      v18 = *(v7 - 2);
      v19 = *v7;
      sub_25BCB617C();
      sub_25BCB617C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38E8, &qword_25BCBB890);
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_56_1();
      OUTLINED_FUNCTION_24_2();
      if (v10)
      {
        OUTLINED_FUNCTION_19_2();
        sub_25BB00674(v12, v13, v14);
        v9 = v16;
      }

      *(v22 + 16) = v8;
      v11 = v22 + 32 * a1;
      *(v11 + 32) = v20;
      v7 += 32;
      *(v11 + 40) = v9;
      *(v11 + 56) = v21;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_25BAF9D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90_0();
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = OUTLINED_FUNCTION_14_4();
    sub_25BB007F0(v25, v26, v27);
    v28 = (v22 + 56);
    do
    {
      v37 = *(v28 - 6);
      v38 = *(v28 - 2);
      v39 = *(v28 - 1);
      v36 = *v28;
      sub_25BCB617C();
      swift_unknownObjectRetain();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E10, &qword_25BCBBD78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E50, &qword_25BCBBDB0);
      OUTLINED_FUNCTION_56_1();
      OUTLINED_FUNCTION_49_1();
      if (v31)
      {
        OUTLINED_FUNCTION_19_2();
        sub_25BB007F0(v33, v34, v35);
        v30 = v36;
      }

      *(a22 + 16) = v29;
      v32 = a22 + 40 * v22;
      *(v32 + 32) = a17;
      *(v32 + 40) = a18;
      *(v32 + 48) = v30;
      *(v32 + 64) = a21;
      v28 = (v28 + 40);
      --v24;
    }

    while (v24);
  }

  OUTLINED_FUNCTION_89_0();
}

uint64_t sub_25BAF9F20(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_25BCB696C();
      sub_25BCB723C();
      v6 = *(v7 + 16);
      OUTLINED_FUNCTION_94();
      sub_25BCB728C();
      OUTLINED_FUNCTION_94();
      sub_25BCB729C();
      sub_25BCB725C();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_25BAF9FC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_18_3();
    sub_25BB00B58();
    v4 = (a1 + 32);
    v2 = v13;
    do
    {
      v11 = *v4;
      v5 = OUTLINED_FUNCTION_110();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_86_1();
      v7 = v12;
      v8 = *(v13 + 16);
      if (v8 >= *(v13 + 24) >> 1)
      {
        OUTLINED_FUNCTION_19_2();
        sub_25BB00B58();
        v7 = v10;
      }

      *(v13 + 16) = v8 + 1;
      *(v13 + 16 * v8 + 32) = v7;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_25BAFA0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  OUTLINED_FUNCTION_90_0();
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = OUTLINED_FUNCTION_14_4();
    sub_25BB00C64(v23, v24, v25);
    do
    {
      v26 = *(v20 + 48);
      v27 = *(v20 + 56);
      v28 = *(v20 + 64);
      v35 = *(v20 + 32);
      v36 = *(v20 + 40);
      sub_25BCB617C();
      sub_25BB060F0(v26, v27, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3980, &qword_25BCBB920);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3988, &qword_25BCBB928);
      OUTLINED_FUNCTION_56_1();
      OUTLINED_FUNCTION_49_1();
      if (v30)
      {
        OUTLINED_FUNCTION_19_2();
        sub_25BB00C64(v32, v33, v34);
        v29 = a9;
      }

      OUTLINED_FUNCTION_95(v29);
      *(v31 + 64) = a20;
      --v22;
    }

    while (v22);
  }

  OUTLINED_FUNCTION_89_0();
}

void sub_25BAFA1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_80();
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v18;
    v33 = MEMORY[0x277D84F90];
    v21 = OUTLINED_FUNCTION_18_3();
    sub_25BB00830(v21, v22, v23);
    v24 = (v20 + 56);
    do
    {
      v29 = *(v24 - 3);
      v30 = *(v24 - 2);
      v31 = *(v24 - 1);
      v32 = *v24;
      sub_25BCB617C();
      sub_25BCB617C();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B0, &qword_25BCBB948);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3978, &qword_25BCBB918);
      OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_49_1();
      if (v27)
      {
        sub_25BB00830(v26 > 1, v25, 1);
      }

      *(v33 + 16) = v25;
      v28 = (v33 + 32 * v17);
      v28[4] = a14;
      v28[5] = a15;
      v28[6] = a16;
      v28[7] = a17;
      v24 += 4;
      --v19;
    }

    while (v19);
  }

  OUTLINED_FUNCTION_79();
}

void sub_25BAFA2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_90_0();
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = OUTLINED_FUNCTION_14_4();
    sub_25BB00D58(v23, v24, v25);
    do
    {
      v26 = v20[6];
      v27 = v20[7];
      v28 = v20[8];
      v35 = v20[4];
      v36 = v20[5];
      sub_25BCB617C();
      sub_25BB06178(v26, v27, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EE8, &qword_25BCBBE30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E80, &qword_25BCBBDD8);
      OUTLINED_FUNCTION_56_1();
      OUTLINED_FUNCTION_49_1();
      if (v30)
      {
        OUTLINED_FUNCTION_19_2();
        sub_25BB00D58(v32, v33, v34);
        v29 = a9;
      }

      OUTLINED_FUNCTION_95(v29);
      *(v31 + 64) = a20;
      --v22;
    }

    while (v22);
  }

  OUTLINED_FUNCTION_89_0();
}

uint64_t sub_25BAFA3E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v19 = MEMORY[0x277D84F90];
    v4 = OUTLINED_FUNCTION_18_3();
    sub_25BB00DC4(v4, v5, v6);
    v2 = v19;
    v7 = (a1 + 48);
    do
    {
      v13 = *(v7 - 2);
      v14 = *(v7 - 1);
      v15 = *v7;
      sub_25BCB617C();
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E88, &qword_25BCBBDE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E90, &qword_25BCBBDE8);
      OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_49_1();
      if (v10)
      {
        sub_25BB00DC4(v9 > 1, v8, 1);
      }

      v7 += 12;
      *(v19 + 16) = v8;
      v11 = v19 + 24 * a1;
      *(v11 + 32) = v16;
      *(v11 + 40) = v17;
      *(v11 + 48) = v18;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_25BAFA508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_90_0();
  a30 = v32;
  a31 = v33;
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = OUTLINED_FUNCTION_14_4();
    sub_25BB00E28(v36, v37, v38);
    v39 = a19;
    v40 = v31 + 32;
    do
    {
      sub_25BAA486C(v40, &a10, &qword_27FBB3DC0, &qword_25BCBBD30);
      v41 = OUTLINED_FUNCTION_110();
      __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3868, &qword_25BCBE9A0);
      swift_dynamicCast();
      a19 = v39;
      v44 = *(v39 + 16);
      v43 = *(v39 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_25BB00E28(v43 > 1, v44 + 1, 1);
        v39 = a19;
      }

      *(v39 + 16) = v44 + 1;
      v45 = (v39 + 48 * v44);
      v46 = a16;
      v47 = a18;
      v45[3] = a17;
      v45[4] = v47;
      v45[2] = v46;
      v40 += 48;
      --v35;
    }

    while (v35);
  }

  OUTLINED_FUNCTION_89_0();
}

uint64_t sub_25BAFA670(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_25BCB75BC();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;
  v6 = sub_25BCB617C();
  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_25BAFA724(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v8 = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v4 += 3;

      sub_25BCB723C();
      v6 = *(v8 + 16);
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      --v1;
    }

    while (v1);
    v2 = v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3FA0, &qword_25BCBBEC0);
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t sub_25BAFA7F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_18_3();
    sub_25BB00520();
    v2 = v10;
    v4 = (a1 + 56);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_25BCB617C();
      v7 = *(v10 + 16);
      if (v7 >= *(v10 + 24) >> 1)
      {
        sub_25BB00520();
      }

      v4 += 32;
      *(v10 + 16) = v7 + 1;
      v8 = v10 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v6;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3968, &qword_25BCBB908);
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

void sub_25BAFA8E0(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for TensorHandle();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_25BAA6EB0();
  *a2 = v4;
}

uint64_t sub_25BAFA940()
{
  result = sub_25BCB73AC();
  if (v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
    swift_dynamicCast();
    result = swift_willThrowTypedImpl();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BAFA9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!a4 || !a7)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = MEMORY[0x277D84F90];
  if (a8 && a9)
  {
    v53 = a11;
    v54 = a12;
    v51 = a10;
    v17 = *(a1 + 16);
    v18 = _s9IOMappingVMa();

    v52 = v18;
    sub_25BCB68EC();
    v19 = sub_25BCB700C();
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x25F876DF0](v58, v19, WitnessTable);
    v21 = swift_unknownObjectRelease();
    v49 = &v48;
    v48 = v58[0];
    v56 = v58[0];
    v57 = v58[1];
    v22 = MEMORY[0x28223BE20](v21);
    v44 = a13;
    v45 = a14;
    v50 = a14;
    v46 = a1;
    MEMORY[0x28223BE20](v22);
    v42[2] = a13;
    v42[3] = a14;
    v43[0] = sub_25BB061B4;
    v43[1] = v23;
    v24 = sub_25BCB754C();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38E0, &qword_25BCBB888);
    v55 = swift_getWitnessTable();
    v26 = swift_getWitnessTable();
    v28 = sub_25BAB2B20(sub_25BB061C0, v42, v24, v25, MEMORY[0x277D84A98], v26, MEMORY[0x277D84AC0], v27);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    *(&v58[0] + 1) = sub_25BCB614C();
    v29 = sub_25BAD8178(v28);

    *&v58[0] = v29;
    sub_25BAD8324(v30);
    v31 = sub_25BAFAE1C(*&v58[0]);
    v33 = v32;

    v34 = sub_25BC4F2EC(v31, v33);
    v36 = v35;

    *&v58[0] = a8;
    MEMORY[0x28223BE20](v37);
    v43[2] = a13;
    v43[3] = v50;
    v44 = v53;
    v45 = v54;
    v46 = v34;
    v47 = v36;
    v38 = sub_25BCB68CC();
    v39 = swift_getWitnessTable();
    v15 = sub_25BAB2B20(sub_25BB0622C, v43, v38, &type metadata for InputGradient, MEMORY[0x277D84A98], v39, MEMORY[0x277D84AC0], v40);
  }

  return v15;
}

unint64_t sub_25BAFADB0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > result)
  {
    v3 = *(a2 + 24);
    v4 = *(a2 + 32);
    v5 = *(*(a3 + 24 * result + 32) + 16);
    sub_25BCB617C();

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BAFAE1C(uint64_t a1)
{
  sub_25BCB617C();
  v1 = sub_25BCB617C();
  sub_25BC030C0(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v4 = sub_25BCB614C();
  sub_25BAD8324(v4);
  return a1;
}

void sub_25BAFAEA4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v4 = *(a1 + 40);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 >= *(a2 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(a2 + 24 * v4 + 48);
  type metadata accessor for TensorHandle();
  *(swift_initStackObject() + 16) = v7;
  swift_retain_n();
  sub_25BAA6EB0();
  if (v4 < *(a3 + 16))
  {
    v8 = *(a3 + 24 * v4 + 48);
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    swift_retain_n();
    sub_25BAA6EB0();
    *a4 = v9;

    v10 = sub_25BAC42B0();
    v12 = v11;

    swift_setDeallocating();
    sub_25BA9B528();
    swift_deallocClassInstance();
    a4[1] = v10;
    a4[2] = v12;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_25BAFAFE8()
{
  v0 = sub_25BCB636C();
  v2 = v1;
  if (v0 == sub_25BCB636C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_44();
  }

  return v5 & 1;
}

uint64_t sub_25BAFB060()
{
  OUTLINED_FUNCTION_106();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25BCB789C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_25BAFB0DC()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_104();
  switch(v2)
  {
    case 1:
      v0 = 0xE500000000000000;
      OUTLINED_FUNCTION_63();
      break;
    case 2:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_46();
      break;
    case 3:
      v0 = 0xEE00736578416465;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_119();
  switch(v5)
  {
    case 1:
      v1 = 0xE500000000000000;
      OUTLINED_FUNCTION_76();
      break;
    case 2:
      v1 = 0xE700000000000000;
      OUTLINED_FUNCTION_48_0();
      break;
    case 3:
      v4 = 0x7A696C616D726F6ELL;
      v1 = 0xEE00736578416465;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_44();
  }

  return v7 & 1;
}

uint64_t sub_25BAFB1F0()
{
  v0 = 0xEA0000000000746ELL;
  OUTLINED_FUNCTION_118();
  v4 = v3;
  v5 = v2;
  v6 = 0xEA0000000000746ELL;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x74657366666FLL;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v5 = OUTLINED_FUNCTION_63();
      break;
    case 3:
      v6 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_46();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0xE600000000000000;
      OUTLINED_FUNCTION_65();
      break;
    case 2:
      v0 = 0xE500000000000000;
      OUTLINED_FUNCTION_76();
      break;
    case 3:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_48_0();
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_88_0();
  }

  return v8 & 1;
}

uint64_t sub_25BAFB2EC()
{
  OUTLINED_FUNCTION_116();
  v2 = 0xE800000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v2 = 0xE600000000000000;
      v5 = 0x74657366666FLL;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v5 = OUTLINED_FUNCTION_63();
      break;
    case 3:
      v2 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_46();
      break;
    case 4:
      v6 = OUTLINED_FUNCTION_74();
      v5 = OUTLINED_FUNCTION_115(v6);
      break;
    case 5:
      v7 = OUTLINED_FUNCTION_74();
      v5 = OUTLINED_FUNCTION_98_0(v7);
      break;
    case 6:
      v5 = OUTLINED_FUNCTION_26_3();
      break;
    default:
      break;
  }

  v8 = 0xE800000000000000;
  switch(v0)
  {
    case 1:
      v8 = 0xE600000000000000;
      OUTLINED_FUNCTION_65();
      break;
    case 2:
      v8 = 0xE500000000000000;
      OUTLINED_FUNCTION_76();
      break;
    case 3:
      v8 = 0xE700000000000000;
      OUTLINED_FUNCTION_48_0();
      break;
    case 4:
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_113_0();
      break;
    case 5:
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_96();
      break;
    case 6:
      OUTLINED_FUNCTION_25_1();
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_44();
  }

  return v10 & 1;
}

uint64_t sub_25BAFB420(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000079;
  v3 = 0x617267746867696CLL;
  v4 = a1;
  v5 = 0x617267746867696CLL;
  v6 = 0xE900000000000079;
  switch(v4)
  {
    case 1:
      v5 = 0x756C62746867696CLL;
      v7 = 12645;
      goto LABEL_5;
    case 2:
      v5 = 0x657267746867696CLL;
      v7 = 28261;
LABEL_5:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x6B63616C62;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v5 = 0x6574696877;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x756C62746867696CLL;
      v8 = 12645;
      goto LABEL_11;
    case 2:
      v3 = 0x657267746867696CLL;
      v8 = 28261;
LABEL_11:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x6B63616C62;
      break;
    case 4:
      v2 = 0xE500000000000000;
      v3 = 0x6574696877;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_88_0();
  }

  return v10 & 1;
}

uint64_t sub_25BAFB590(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000797469;
  v3 = 0x6C696261626F7270;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x676E696E7261656CLL;
    }

    else
    {
      v5 = 0x6574617473;
    }

    if (v4 == 1)
    {
      v6 = 0xED00006573616850;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0x6C696261626F7270;
    v6 = 0xEB00000000797469;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x676E696E7261656CLL;
    }

    else
    {
      v3 = 0x6574617473;
    }

    if (a2 == 1)
    {
      v2 = 0xED00006573616850;
    }

    else
    {
      v2 = 0xE500000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_88_0();
  }

  return v8 & 1;
}

uint64_t sub_25BAFB694()
{
  OUTLINED_FUNCTION_104();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 2:
      v0 = 0x800000025BCD8DF0;
      break;
    case 3:
      OUTLINED_FUNCTION_26_3();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_119();
  switch(v6)
  {
    case 1:
      v1 = 0xE400000000000000;
      v4 = 1684366707;
      break;
    case 2:
      v4 = 0xD000000000000018;
      v1 = (v5 - 32) | 0x8000000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_25_1();
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44();
  }

  return v8 & 1;
}

uint64_t sub_25BAFB798(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1935763810;
  }

  else
  {
    v3 = 0x746867696577;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1935763810;
  }

  else
  {
    v5 = 0x746867696577;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44();
  }

  return v8 & 1;
}

uint64_t sub_25BAFB820()
{
  OUTLINED_FUNCTION_106();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25BCB789C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_25BAFB894(char a1)
{
  if (a1)
  {
    v1 = 0xE200000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  OUTLINED_FUNCTION_106();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44();
  }

  return v8 & 1;
}

uint64_t sub_25BAFB910(unsigned __int8 a1, char a2)
{
  v2 = 0x6C61757165;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6C61757165;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x72657461657267;
      break;
    case 2:
      v5 = 0x4572657461657267;
      v3 = 0xEC0000006C617571;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1936942444;
      break;
    case 4:
      v5 = 0x617571457373656CLL;
      v3 = 0xE90000000000006CLL;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = 0x6C61757145746F6ELL;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x72657461657267;
      break;
    case 2:
      v2 = 0x4572657461657267;
      v6 = 0xEC0000006C617571;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1936942444;
      break;
    case 4:
      v2 = 0x617571457373656CLL;
      v6 = 0xE90000000000006CLL;
      break;
    case 5:
      v6 = 0xE800000000000000;
      v2 = 0x6C61757145746F6ELL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44();
  }

  return v8 & 1;
}

uint64_t sub_25BAFBAB4(unsigned __int8 a1, char a2)
{
  v2 = 6579297;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 6579297;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x7463617274627573;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x796C7069746C756DLL;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x6E6F697369766964;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x7265776F70;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v6 = 1769496941;
      goto LABEL_9;
    case 6:
      v3 = 0xE700000000000000;
      v6 = 1768843629;
LABEL_9:
      v5 = v6 | 0x6D756D00000000;
      break;
    case 7:
      v3 = 0xE600000000000000;
      v5 = 0x6F6C75646F6DLL;
      break;
    default:
      break;
  }

  v7 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE800000000000000;
      v2 = 0x7463617274627573;
      break;
    case 2:
      v7 = 0xE800000000000000;
      v2 = 0x796C7069746C756DLL;
      break;
    case 3:
      v7 = 0xE800000000000000;
      v2 = 0x6E6F697369766964;
      break;
    case 4:
      v7 = 0xE500000000000000;
      v2 = 0x7265776F70;
      break;
    case 5:
      v7 = 0xE700000000000000;
      v8 = 1769496941;
      goto LABEL_18;
    case 6:
      v7 = 0xE700000000000000;
      v8 = 1768843629;
LABEL_18:
      v2 = v8 | 0x6D756D00000000;
      break;
    case 7:
      v7 = 0xE600000000000000;
      v2 = 0x6F6C75646F6DLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_44();
  }

  return v10 & 1;
}

uint64_t sub_25BAFBC90(char a1, char a2)
{
  v3 = sub_25BABE12C(a1);
  v5 = v4;
  if (v3 == sub_25BABE12C(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44();
  }

  return v8 & 1;
}

uint64_t sub_25BAFBD08(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE200000000000000;
  }

  OUTLINED_FUNCTION_106();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44();
  }

  return v8 & 1;
}

uint64_t sub_25BAFBD88(unsigned __int8 a1, char a2)
{
  v2 = 6581857;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 29295;
    }

    else
    {
      v4 = 7499640;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 6581857;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 29295;
    }

    else
    {
      v2 = 7499640;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44();
  }

  return v8 & 1;
}

uint64_t sub_25BAFBE4C(unsigned __int8 a1, char a2)
{
  v2 = 6713957;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x64696F6D676973;
    }

    else
    {
      v4 = 0x4C6552796B61656CLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE900000000000055;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 6713957;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x64696F6D676973;
    }

    else
    {
      v2 = 0x4C6552796B61656CLL;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000055;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44();
  }

  return v8 & 1;
}

uint64_t sub_25BAFBF40(unsigned __int8 a1, char a2)
{
  v2 = 0x6D756D6978616DLL;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6D756D6978616DLL;
  switch(v4)
  {
    case 1:
      v5 = 0x6D756D696E696DLL;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1851876717;
      break;
    case 3:
      v5 = 0x746375646F7270;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v5 = 7173491;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6D756D696E696DLL;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1851876717;
      break;
    case 3:
      v2 = 0x746375646F7270;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v2 = 7173491;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44();
  }

  return v8 & 1;
}

uint64_t sub_25BAFC080()
{
  OUTLINED_FUNCTION_104();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 3:
      v0 = 0xE700000000000000;
      break;
    case 4:
      v0 = 0xE800000000000000;
      break;
    case 5:
      v0 = 0xEA0000000000746ELL;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_119();
  switch(v5)
  {
    case 1:
      v1 = 0xE400000000000000;
      v4 = 1935763810;
      break;
    case 2:
      v4 = 0x656469727473;
      break;
    case 3:
      v1 = 0xE700000000000000;
      v4 = 0x676E6964646170;
      break;
    case 4:
      v1 = 0xE800000000000000;
      v4 = 0x6E6F6974616C6964;
      break;
    case 5:
      OUTLINED_FUNCTION_118();
      v1 = 0xEA0000000000746ELL;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_44();
  }

  return v7 & 1;
}

BOOL sub_25BAFC1F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 12;
  switch(a1 >> 6)
  {
    case 1:
      v2 = (a1 & 0x3F) + 4;
      break;
    case 2:
      v2 = (a1 & 0x3F) + 8;
      break;
    case 3:
      break;
    default:
      v2 = a1;
      break;
  }

  v3 = 12;
  switch(a2 >> 6)
  {
    case 1:
      v3 = (a2 & 0x3F) + 4;
      break;
    case 2:
      v3 = (a2 & 0x3F) + 8;
      break;
    case 3:
      return v2 == v3;
    default:
      v3 = a2;
      break;
  }

  return v2 == v3;
}

uint64_t sub_25BAFC28C(char a1, char a2)
{
  if (qword_25BCBBEC8[a1] == qword_25BCBBEC8[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25BCB789C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_25BAFC2F4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x65756C6176;
  }

  else
  {
    v3 = 1702521203;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x65756C6176;
  }

  else
  {
    v5 = 1702521203;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44();
  }

  return v8 & 1;
}

uint64_t sub_25BAFC37C(unsigned __int8 a1, char a2)
{
  v2 = 0xEA0000000000657ALL;
  v3 = 0x69536C656E72656BLL;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x656469727473;
    }

    else
    {
      v5 = 0x676E6964646170;
    }

    if (v4 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0x69536C656E72656BLL;
    v6 = 0xEA0000000000657ALL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x656469727473;
    }

    else
    {
      v3 = 0x676E6964646170;
    }

    if (a2 == 1)
    {
      v2 = 0xE600000000000000;
    }

    else
    {
      v2 = 0xE700000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_88_0();
  }

  return v8 & 1;
}

uint64_t sub_25BAFC468()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_104();
  switch(v2)
  {
    case 1:
      v0 = 0xE500000000000000;
      OUTLINED_FUNCTION_63();
      break;
    case 2:
      v3 = OUTLINED_FUNCTION_74();
      OUTLINED_FUNCTION_115(v3);
      break;
    case 3:
      v4 = OUTLINED_FUNCTION_74();
      OUTLINED_FUNCTION_98_0(v4);
      break;
    case 4:
      v0 = 0xE800000000000000;
      break;
    case 5:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_46();
      break;
    case 6:
      OUTLINED_FUNCTION_26_3();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_119();
  switch(v7)
  {
    case 1:
      v1 = 0xE500000000000000;
      OUTLINED_FUNCTION_76();
      break;
    case 2:
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_113_0();
      break;
    case 3:
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_96();
      break;
    case 4:
      v1 = 0xE800000000000000;
      OUTLINED_FUNCTION_116();
      break;
    case 5:
      v1 = 0xE700000000000000;
      OUTLINED_FUNCTION_48_0();
      break;
    case 6:
      OUTLINED_FUNCTION_25_1();
      break;
    default:
      break;
  }

  if (v5 == v6 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_44();
  }

  return v9 & 1;
}

uint64_t sub_25BAFC598(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x64656C6C6966;
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
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x64656C6C6966;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44();
  }

  return v8 & 1;
}

uint64_t sub_25BAFC618(unsigned __int8 a1, char a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701736302;
  switch(v4)
  {
    case 1:
      v5 = 1818326639;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x657261757173;
      break;
    case 3:
      v3 = 0xE300000000000000;
      v5 = 7892834;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x656C63726963;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x6E6F67796C6F70;
      break;
    case 6:
      v3 = 0xE700000000000000;
      v5 = 0x657370696C6C65;
      break;
    case 7:
      v3 = 0xE800000000000000;
      v5 = 0x656C676E61697274;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 1818326639;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x657261757173;
      break;
    case 3:
      v6 = 0xE300000000000000;
      v2 = 7892834;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x656C63726963;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v2 = 0x6E6F67796C6F70;
      break;
    case 6:
      v6 = 0xE700000000000000;
      v2 = 0x657370696C6C65;
      break;
    case 7:
      v6 = 0xE800000000000000;
      v2 = 0x656C676E61697274;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44();
  }

  return v8 & 1;
}

uint64_t sub_25BAFC990()
{
  OUTLINED_FUNCTION_120();
  v39 = v1;
  v2 = v0;
  v3 = *v0;
  v4 = 0;
  v35 = sub_25BCB617C();
  v5 = (v35 + 48);
  while (1)
  {
    v6 = *(v35 + 16);
    if (v4 == v6)
    {
      break;
    }

    if (v4 >= v6)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      result = sub_25BCB795C();
      __break(1u);
      return result;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    v9 = *(v5 - 2);
    sub_25BCB617C();
    sub_25BCB617C();
    if (!v8)
    {
      break;
    }

    v36 = v5;
    v10 = v2[1];
    v11 = *(v10 + 16);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    if (v11 && (OUTLINED_FUNCTION_0_6(), v13 = sub_25BA92684(v9, v8, v12), (v14 & 1) != 0))
    {
      v15 = *(*(v10 + 56) + 8 * v13);
      sub_25BCB617C();
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v37 = v4;
    sub_25BA95FB0(v4);
    v16 = v2[1];
    swift_isUniquelyReferenced_nonNull_native();
    v17 = v2;
    v38 = v2[1];
    OUTLINED_FUNCTION_0_6();
    sub_25BA92684(v9, v8, v18);
    OUTLINED_FUNCTION_41_0();
    if (__OFADD__(v21, v22))
    {
      goto LABEL_22;
    }

    v23 = v19;
    v24 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3878, &qword_25BCBB838);
    if (sub_25BCB745C())
    {
      OUTLINED_FUNCTION_0_6();
      v26 = sub_25BA92684(v9, v8, v25);
      if ((v24 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }

      v23 = v26;
    }

    if (v24)
    {
      v28 = v38[7];
      v29 = *(v28 + 8 * v23);
      *(v28 + 8 * v23) = v15;
    }

    else
    {
      OUTLINED_FUNCTION_40_1(&v38[v23 >> 6]);
      v30 = (v38[6] + 16 * v23);
      *v30 = v9;
      v30[1] = v8;
      *(v38[7] + 8 * v23) = v15;
      v31 = v38[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_23;
      }

      v38[2] = v33;
    }

    v2 = v17;
    v17[1] = v38;

    v5 = v36 + 4;
    v4 = v37 + 1;
  }
}

uint64_t sub_25BAFCF80(uint64_t a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  sub_25BCB70FC();
  return 0;
}

void sub_25BAFCFC8()
{
  v2 = OUTLINED_FUNCTION_124_0();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_62();
    sub_25BA97A8C();
    *v1 = v4;
  }
}

void sub_25BAFD048()
{
  v2 = OUTLINED_FUNCTION_124_0();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_62();
    sub_25BAB1E60();
    *v1 = v4;
  }
}

void sub_25BAFD118()
{
  OUTLINED_FUNCTION_47_1();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_36_1();
    sub_25BA97A8C();
    *v0 = v4;
  }
}

void sub_25BAFD1A8()
{
  OUTLINED_FUNCTION_47_1();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_33_1();
    sub_25BAB1E60();
    *v0 = v4;
  }
}

void sub_25BAFD258()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3850, &qword_25BCBB820);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC9480(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3858, &qword_25BCBE980);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFD334()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3948, &qword_25BCBB8E8);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3950, &qword_25BCBB8F0);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFD3E8()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3860, &qword_25BCBB828);
      v8 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_3_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BC5615C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3868, &qword_25BCBE9A0);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFD4A8()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39F0, &qword_25BCBB970);
      v8 = OUTLINED_FUNCTION_30_2();
      OUTLINED_FUNCTION_3_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC9924(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39F8, &qword_25BCBB978);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFD564()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3910, &qword_25BCBB8B0);
      v8 = OUTLINED_FUNCTION_30_2();
      OUTLINED_FUNCTION_3_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC9924(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3918, &qword_25BCBB8B8);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFD648()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38C0, &unk_25BCC8950);
      v8 = OUTLINED_FUNCTION_30_2();
      OUTLINED_FUNCTION_3_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC9924(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38C8, &unk_25BCCEC20);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFD704()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3998, &unk_25BCC5B70);
      v8 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_3_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BC56184(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_29_3();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFD7B8()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E00, &qword_25BCBBD68);
      v8 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_3_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAE3A78(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_29_3();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFD89C()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E38, &qword_25BCBBDA0);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E40, &qword_25BCC88E0);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFD950()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E08, &qword_25BCBBD70);
      v8 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_3_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BC5645C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E10, &qword_25BCBBD78);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFDA10()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E60, &qword_25BCBBDC0);
      v8 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_3_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BC561B0(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_29_3();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFDAC4()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DF0, &qword_25BCBBD58);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC9480(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DF8, &qword_25BCBBD60);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFDB78()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
      v8 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_4_8(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BC56450(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B0, &qword_25BCBB948);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_25BAFDC2C(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DD8, &qword_25BCBBD48);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_25BC561D4((a4 + 32), v8, (v10 + 32));
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

    memcpy((v10 + 32), (a4 + 32), v8 << 6);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_25BAFDD24()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F10, &qword_25BCBBE50);
      v8 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_4_8(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BC56450(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F18, &qword_25BCBBE58);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFDDD8()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E0, &qword_25BCBB968);
      v8 = OUTLINED_FUNCTION_30_2();
      OUTLINED_FUNCTION_3_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC9924(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E8, &qword_25BCCF2F0);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFDE94()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F68, &qword_25BCBBE90);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_3_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BC561F4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_29_3();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFDF7C()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3938, &qword_25BCBE490);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFE070()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3ED0, &qword_25BCBBE18);
      v8 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_4_8(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAE3A58(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_29_3();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFE118()
{
  OUTLINED_FUNCTION_37();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F70, &qword_25BCBBE98);
      v9 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_4_8(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_4();
        sub_25BC56450(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 32 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFE1C4()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3970, &qword_25BCBB910);
      v8 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_4_8(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BC56450(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3978, &qword_25BCBB918);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFE278()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38F8, &qword_25BCBB8A0);
      v8 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_4_8(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BC56450(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38F0, &qword_25BCBB898);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFE32C()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39A0, &qword_25BCBB938);
      v8 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_10_0(v8);
      OUTLINED_FUNCTION_9_1(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_4();
        sub_25BAB254C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39A8, &qword_25BCBB940);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFE3EC()
{
  OUTLINED_FUNCTION_37();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D0, &qword_25BCBB880);
      v9 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_3_5(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_4();
        sub_25BC56218(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 176 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFE4A8()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3958, &qword_25BCBB8F8);
      v8 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_4_8(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAE3A58(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3960, &qword_25BCBB900);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFE55C()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3898, &qword_25BCBB858);
      v8 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_4_8(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BC56450(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3880, &qword_25BCBB840);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFE660()
{
  OUTLINED_FUNCTION_21_0();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_20(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_87(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_77();
      _swift_stdlib_malloc_size(v16);
      OUTLINED_FUNCTION_39_2();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_23_1();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    v19 = OUTLINED_FUNCTION_78();
    memcpy(v19, v20, v21);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFE71C()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F50, &qword_25BCBBE78);
      v8 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_4_8(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAE3A58(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F58, &qword_25BCBBE80);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFE7D0()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F60, &qword_25BCBBE88);
      v8 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_3_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BC56420(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_29_3();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFE884()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EF8, &qword_25BCBBE40);
      v8 = OUTLINED_FUNCTION_30_2();
      OUTLINED_FUNCTION_3_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC9924(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F00, &qword_25BCCF340);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFE980(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  if (a3)
  {
    OUTLINED_FUNCTION_6_10();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_31_0();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    a7(a4 + v17, v14, v15 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_25BAFEA74()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EF0, &qword_25BCBBE38);
      v8 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_3_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BC5645C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EE8, &qword_25BCBBE30);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFEB34()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E98, &qword_25BCBBDF0);
      v8 = OUTLINED_FUNCTION_30_2();
      OUTLINED_FUNCTION_3_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BC56454(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E88, &qword_25BCBBDE0);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFEC18()
{
  OUTLINED_FUNCTION_21_0();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_20(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_87(v10, v11, v12, v13, v14, v15);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v3;
      v16[3] = 2 * v17 - 64;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_23_1();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    v19 = OUTLINED_FUNCTION_78();
    memcpy(v19, v20, v3);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFECFC()
{
  OUTLINED_FUNCTION_21_0();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_20(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_87(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_2_2(v16);
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_23_1();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    v19 = OUTLINED_FUNCTION_78();
    memcpy(v19, v20, v21);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAFEDAC()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DB8, &qword_25BCBF750);
      v8 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_3_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BC5615C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DC0, &qword_25BCBBD30);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_25BAFEE6C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_25BCB6DEC();

  return sub_25BAFF0DC(a1, v5);
}

unint64_t sub_25BAFEEB0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_25BCB79BC();
  return sub_25BAFF78C(a1, v4);
}

unint64_t sub_25BAFEEEC(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_100();
  MEMORY[0x25F878200](v3);
  v6 = OUTLINED_FUNCTION_94();
  MEMORY[0x25F878200](v6);
  sub_25BCB79EC();
  v7 = sub_25BCB7A3C();

  return sub_25BAFF19C(v3, a2, a3, v7);
}

unint64_t sub_25BAFEF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_100();
  MEMORY[0x25F878200](v3);
  MEMORY[0x25F878200](a3);
  v6 = sub_25BCB7A3C();

  return sub_25BAFF228(v3, a2, a3, v6);
}

unint64_t sub_25BAFEFFC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25BCB741C();
  v5 = sub_25BCB623C();

  return sub_25BAFF2A4(a1, v5);
}

unint64_t sub_25BAFF060(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_100();
  sub_25BBA31D0(v11, v3, a2, a3);
  sub_25BCB7A3C();
  OUTLINED_FUNCTION_109();

  return sub_25BAFF428(v6, v7, v8, v9);
}

unint64_t sub_25BAFF0DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_25BB0607C();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_25BCB6DFC();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_25BAFF19C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v4 + 48) + 24 * result;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v14 = v10 != a1 || v11 != a2;
      if (((v14 | (v12 ^ a3)) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25BAFF228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = (*(v4 + 48) + 24 * result);
      v10 = *v9;
      v11 = v9[2];
      if (v10 == a1 && v11 == a3)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25BAFF2A4(uint64_t a1, uint64_t a2)
{
  v13[1] = a1;
  v4 = sub_25BCB741C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2;
  v15 = v2 + 64;
  v9 = ~(-1 << *(v2 + 32));
  for (i = a2 & v9; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    (*(v5 + 16))(v8, *(v14 + 48) + *(v5 + 72) * i, v4);
    v11 = sub_25BCB630C();
    (*(v5 + 8))(v8, v4);
    if (v11)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_25BAFF428(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = a2 & 0xC000000000000000;
    v43 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v42 = a2 >> 62;
    v41 = ~v6;
    v40 = a2 & 0xC000000000000000;
    do
    {
      v10 = (*(v4 + 48) + 24 * v7);
      v11 = *v10;
      v12 = v10[1];
      if (v12 >> 62)
      {
        v13 = v10[2];
        if (v12 >> 62 == 1)
        {
          if (v9 == 0x4000000000000000)
          {
            ObjectType = swift_getObjectType();
            v15 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            swift_unknownObjectRetain();
            v16 = v15(ObjectType, v12 & 0x3FFFFFFFFFFFFFFFLL);
            v18 = v17;
            v20 = v19;
            v21 = swift_getObjectType();
            if (v16 != (*(v43 + 16))(v21))
            {
              goto LABEL_25;
            }

            if (v18 == v22 && v20 == v23)
            {
              sub_25BB060C0(v11, v12);

              return v7;
            }

            v25 = sub_25BCB789C();
            sub_25BB060C0(v11, v12);

            v8 = v41;
            v5 = v4 + 64;
            v9 = v40;
            if (v25)
            {
              return v7;
            }
          }
        }

        else if (v9 == 0x8000000000000000)
        {
          v27 = swift_getObjectType();
          v28 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          swift_unknownObjectRetain();
          LODWORD(v27) = v28(v27, v12 & 0x3FFFFFFFFFFFFFFFLL);
          v30 = v29;
          v32 = v31;
          v33 = swift_getObjectType();
          if (v27 != (*(v43 + 16))(v33))
          {
LABEL_25:
            sub_25BB060C0(v11, v12);

            v8 = v41;
            v5 = v4 + 64;
            v9 = v40;
            goto LABEL_26;
          }

          if (v30 == v34 && v32 == v35)
          {
            sub_25BB060C0(v11, v12);

            v9 = v40;
            v8 = v41;
            v5 = v4 + 64;
            if (v13 == a3)
            {
              return v7;
            }
          }

          else
          {
            v37 = sub_25BCB789C();
            sub_25BB060C0(v11, v12);

            v8 = v41;
            v5 = v4 + 64;
            v9 = v40;
            if ((v37 & 1) != 0 && v13 == a3)
            {
              return v7;
            }
          }
        }
      }

      else if (!v42)
      {
        v26 = sub_25BAC4018();
        if (v26 == sub_25BAC4018())
        {
          return v7;
        }
      }

LABEL_26:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_25BAFF78C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void *sub_25BAFF7EC(uint64_t a1)
{
  v1 = *(*a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_25BABD89C(*(*a1 + 16), 0);
  sub_25BCB617C();
  v3 = sub_25BABD918(&v5, v2 + 4, v1);

  if (v3 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v2;
}

void sub_25BAFF8B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for TensorRepresentation();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_25BAFFA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_71();
  a25 = v26;
  a26 = v31;
  v32 = *(v27 + 16);
  if (v32)
  {
    v33 = v30;
    v34 = v29;
    v35 = v27;
    v36 = v28(*(v27 + 16), 0);
    v37 = v34(&a10, v36 + 32, v32, v35);
    v38 = a10;
    v39 = a11;
    v40 = a12;
    v41 = a13;
    v42 = a14;
    sub_25BCB617C();
    v33(v38, v39, v40, v41, v42);
    if (v37 != v32)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_64();
}

void sub_25BAFFAD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
      v7 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_2_2(v7);
      v7[2] = v5;
      v7[3] = v8;
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_25BAFFB88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
      v8 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_10_0(v8);
      OUTLINED_FUNCTION_39_2();
      *(v4 + 16) = v6;
      *(v4 + 24) = v9;
    }

    if (v5 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_25BAFFC44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *(a1 + 16);
  v4 = sub_25BB720F0();
  sub_25BCB617C();
  v5 = sub_25BCA5444(&v7, (v4 + 32), v1, a1);

  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

void sub_25BAFFCCC(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_25BCB795C();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 1);
    v6 = *i;
    v8 = *(i - 2);
    sub_25BCB617C();

    if (!v7)
    {
      goto LABEL_17;
    }

    v9 = *a3;
    v11 = sub_25BA92684(v8, v7, sub_25BA92750);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB66F0, &unk_25BCCBEE0);
      sub_25BCB746C();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    *(v19[7] + 8 * v11) = v6;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_21;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_25BBB92D4(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_25BA92684(v8, v7, sub_25BA92750);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_22;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD00000000000001BLL, 0x800000025BCD9300);
  sub_25BCB73CC();
  MEMORY[0x25F876C90](39, 0xE100000000000000);
  sub_25BCB74CC();
  __break(1u);
}

void sub_25BAFFFDC(uint64_t a1, char a2, uint64_t *a3)
{
  v52 = a3;
  v6 = sub_25BCB5CDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v51 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EB8, &qword_25BCBBE08);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v49 = (v42 - v14);
  v48 = *(a1 + 16);
  if (!v48)
  {
LABEL_13:

    return;
  }

  v42[1] = v3;
  v43 = a1;
  v15 = 0;
  v47 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v16 = *(v12 + 48);
  v45 = v7;
  v46 = v16;
  v50 = (v7 + 32);
  v44 = v6;
  while (1)
  {
    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_25BCB795C();
      __break(1u);
      goto LABEL_22;
    }

    v17 = v13;
    v18 = v49;
    sub_25BAA486C(v47 + *(v13 + 72) * v15, v49, &qword_27FBB3EB8, &qword_25BCBBE08);
    v20 = v18[1];
    v55 = *v18;
    v19 = v55;
    v56 = v20;
    v21 = *v50;
    (*v50)(v51, v18 + v46, v6);
    v22 = *v52;
    v24 = sub_25BA92684(v19, v20, sub_25BA92750);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      break;
    }

    if (a2)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC0, &qword_25BCBBE10);
      sub_25BCB746C();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v33 = v51;
    v34 = *v52;
    *(*v52 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v35 = (v34[6] + 16 * v24);
    *v35 = v19;
    v35[1] = v20;
    v36 = v34[7] + *(v45 + 72) * v24;
    v6 = v44;
    v21(v36, v33, v44);
    v37 = v34[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_20;
    }

    ++v15;
    v34[2] = v39;
    a2 = 1;
    a1 = v43;
    v13 = v17;
    if (v48 == v15)
    {
      goto LABEL_13;
    }
  }

  v29 = v52;
  sub_25BBB9508(v27, a2 & 1);
  v30 = *v29;
  v31 = sub_25BA92684(v19, v20, sub_25BA92750);
  if ((v28 & 1) != (v32 & 1))
  {
    goto LABEL_21;
  }

  v24 = v31;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v40 = swift_allocError();
  swift_willThrow();
  v57 = v40;
  v41 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v45 + 8))(v51, v44);

    return;
  }

LABEL_22:
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD00000000000001BLL, 0x800000025BCD9300);
  sub_25BCB73CC();
  MEMORY[0x25F876C90](39, 0xE100000000000000);
  sub_25BCB74CC();
  __break(1u);
}

uint64_t sub_25BB0048C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_25BCB749C();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_25BB004E4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_83();
  sub_25BAD4CF4();
  *v0 = v2;
}

void sub_25BB00520()
{
  v1 = *v0;
  sub_25BAD4CF4();
  *v0 = v2;
}

void sub_25BB0056C()
{
  v1 = *v0;
  sub_25BAA2138();
  *v0 = v2;
}

uint64_t sub_25BB005B0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_25BB013B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25BB005D0(void *a1, int64_t a2, char a3)
{
  result = sub_25BB014C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_25BB005F0()
{
  v1 = *v0;
  sub_25BB03CF4();
  *v0 = v2;
}

void *sub_25BB00634(void *a1, int64_t a2, char a3)
{
  result = sub_25BB0169C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25BB00654(void *a1, int64_t a2, char a3)
{
  result = sub_25BB017B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25BB00674(uint64_t a1, int64_t a2, char a3)
{
  result = sub_25BB018CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25BB00694(uint64_t a1, int64_t a2, char a3)
{
  result = sub_25BB019DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25BB006B4(void *a1, int64_t a2, char a3)
{
  result = sub_25BB01B14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_25BB006D4()
{
  v1 = *v0;
  sub_25BB034D4();
  *v0 = v2;
}

uint64_t sub_25BB00718(uint64_t a1, int64_t a2, char a3)
{
  result = sub_25BB01C2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_25BB00738()
{
  v1 = *v0;
  sub_25BB03EC8();
  *v0 = v2;
}

void *sub_25BB00784(void *a1, int64_t a2, char a3)
{
  result = sub_25BB01DF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_25BB007A4()
{
  v1 = *v0;
  sub_25BB03EC8();
  *v0 = v2;
}

void *sub_25BB007F0(void *a1, int64_t a2, char a3)
{
  result = sub_25BB01FBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25BB00810(uint64_t a1, int64_t a2, char a3)
{
  result = sub_25BB020D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25BB00830(uint64_t a1, int64_t a2, char a3)
{
  result = sub_25BB021E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25BB00850(void *a1, int64_t a2, char a3)
{
  result = sub_25BB022F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_25BB00870()
{
  v1 = *v0;
  sub_25BB034D4();
  *v0 = v2;
}

void sub_25BB008B4()
{
  v1 = *v0;
  sub_25BB0240C();
  *v0 = v2;
}

void sub_25BB008D4()
{
  v1 = *v0;
  sub_25BB024C0();
  *v0 = v2;
}

void sub_25BB008F4()
{
  v1 = *v0;
  sub_25BB02574();
  *v0 = v2;
}

void sub_25BB00914()
{
  v1 = *v0;
  sub_25BB02628();
  *v0 = v2;
}

void sub_25BB00934()
{
  v1 = *v0;
  sub_25BB026DC();
  *v0 = v2;
}

void sub_25BB00954()
{
  v1 = *v0;
  sub_25BB02790();
  *v0 = v2;
}

void sub_25BB00974()
{
  v1 = *v0;
  sub_25BB02844();
  *v0 = v2;
}

void sub_25BB00994()
{
  v1 = *v0;
  sub_25BB028F8();
  *v0 = v2;
}

void sub_25BB009B4()
{
  v1 = *v0;
  sub_25BB029AC();
  *v0 = v2;
}

void sub_25BB009D4()
{
  v1 = *v0;
  sub_25BB02A60();
  *v0 = v2;
}

void sub_25BB009F4()
{
  v1 = *v0;
  sub_25BB02B14();
  *v0 = v2;
}

void sub_25BB00A14()
{
  v1 = *v0;
  sub_25BB02BC8();
  *v0 = v2;
}

void sub_25BB00A34()
{
  v1 = *v0;
  sub_25BB02C7C();
  *v0 = v2;
}

void sub_25BB00A54()
{
  v1 = *v0;
  sub_25BB02D30();
  *v0 = v2;
}

void sub_25BB00A74()
{
  v1 = *v0;
  sub_25BB02DE4();
  *v0 = v2;
}

void sub_25BB00A94()
{
  v1 = *v0;
  sub_25BB02E98();
  *v0 = v2;
}

uint64_t sub_25BB00AB4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_25BB02F4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25BB00AD4(size_t a1, int64_t a2, char a3)
{
  result = sub_25BB03050(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25BB00AF4(size_t a1, int64_t a2, char a3)
{
  result = sub_25BB0321C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_25BB00B14()
{
  v1 = *v0;
  sub_25BB034D4();
  *v0 = v2;
}

void sub_25BB00B58()
{
  v1 = *v0;
  sub_25BB034D4();
  *v0 = v2;
}

uint64_t sub_25BB00B9C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_25BB033D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_25BB00BBC()
{
  v1 = *v0;
  sub_25BB034D4();
  *v0 = v2;
}

uint64_t sub_25BB00C00(uint64_t a1, int64_t a2, char a3)
{
  result = sub_25BB03584(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_25BB00C20()
{
  v1 = *v0;
  sub_25BB03CF4();
  *v0 = v2;
}

uint64_t sub_25BB00C64(uint64_t a1, int64_t a2, char a3)
{
  result = sub_25BB03ACC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_25BB00C84()
{
  v1 = *v0;
  sub_25BB03EC8();
  *v0 = v2;
}

void sub_25BB00CD0()
{
  v1 = *v0;
  sub_25BB03CF4();
  *v0 = v2;
}

void sub_25BB00D14()
{
  v1 = *v0;
  sub_25BB0408C();
  *v0 = v2;
}

void *sub_25BB00D58(void *a1, int64_t a2, char a3)
{
  result = sub_25BB03DB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_25BB00D78()
{
  v1 = *v0;
  sub_25BB03EC8();
  *v0 = v2;
}

uint64_t sub_25BB00DC4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_25BB03F74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_25BB00DE4()
{
  v1 = *v0;
  sub_25BB0408C();
  *v0 = v2;
}

uint64_t sub_25BB00E28(uint64_t a1, int64_t a2, char a3)
{
  result = sub_25BB04148(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_25BB00E48()
{
  v1 = *v0;
  sub_25BB04260();
  *v0 = v2;
}

void sub_25BB00E68()
{
  v1 = *v0;
  sub_25BB04314();
  *v0 = v2;
}

void sub_25BB00E88()
{
  v1 = *v0;
  sub_25BB043C8();
  *v0 = v2;
}

void sub_25BB00EA8()
{
  v1 = *v0;
  sub_25BB0447C();
  *v0 = v2;
}

void sub_25BB00EC8()
{
  v1 = *v0;
  sub_25BB04530();
  *v0 = v2;
}

void sub_25BB00EE8()
{
  v1 = *v0;
  sub_25BB045E4();
  *v0 = v2;
}

void sub_25BB00F08()
{
  v1 = *v0;
  sub_25BB04698();
  *v0 = v2;
}

void sub_25BB00F28()
{
  v1 = *v0;
  sub_25BB0474C();
  *v0 = v2;
}

void sub_25BB00F48()
{
  v1 = *v0;
  sub_25BB04800();
  *v0 = v2;
}

void sub_25BB00F68()
{
  v1 = *v0;
  sub_25BB048B4();
  *v0 = v2;
}

void sub_25BB00F88()
{
  v1 = *v0;
  sub_25BB04968();
  *v0 = v2;
}

void sub_25BB00FA8()
{
  v1 = *v0;
  sub_25BB04A1C();
  *v0 = v2;
}

void sub_25BB00FC8()
{
  v1 = *v0;
  sub_25BB04AD0();
  *v0 = v2;
}

void sub_25BB00FE8()
{
  v1 = *v0;
  sub_25BB04B84();
  *v0 = v2;
}

void sub_25BB01008()
{
  v1 = *v0;
  sub_25BB04C38();
  *v0 = v2;
}

void sub_25BB01028()
{
  v1 = *v0;
  sub_25BB04CEC();
  *v0 = v2;
}

void sub_25BB01048()
{
  v1 = *v0;
  sub_25BB04DA0();
  *v0 = v2;
}

void sub_25BB01068()
{
  v1 = *v0;
  sub_25BB04E54();
  *v0 = v2;
}

void sub_25BB01088()
{
  v1 = *v0;
  sub_25BB04F08();
  *v0 = v2;
}

void sub_25BB010A8()
{
  v1 = *v0;
  sub_25BB04FBC();
  *v0 = v2;
}

void sub_25BB010C8()
{
  v1 = *v0;
  sub_25BB05070();
  *v0 = v2;
}

void sub_25BB010E8()
{
  v1 = *v0;
  sub_25BB05124();
  *v0 = v2;
}

void sub_25BB01108()
{
  v1 = *v0;
  sub_25BB051D8();
  *v0 = v2;
}

void sub_25BB01128()
{
  v1 = *v0;
  sub_25BB0528C();
  *v0 = v2;
}

void sub_25BB01148()
{
  v1 = *v0;
  sub_25BB05340();
  *v0 = v2;
}

void sub_25BB01168()
{
  v1 = *v0;
  sub_25BB053F4();
  *v0 = v2;
}

void sub_25BB01188()
{
  v1 = *v0;
  sub_25BB054A8();
  *v0 = v2;
}

void sub_25BB011A8()
{
  v1 = *v0;
  sub_25BB0555C();
  *v0 = v2;
}

void sub_25BB011C8()
{
  v1 = *v0;
  sub_25BB05610();
  *v0 = v2;
}

void sub_25BB011E8()
{
  v1 = *v0;
  sub_25BB056C4();
  *v0 = v2;
}

void sub_25BB01208()
{
  v1 = *v0;
  sub_25BB05778();
  *v0 = v2;
}

void sub_25BB01228()
{
  v1 = *v0;
  sub_25BB0582C();
  *v0 = v2;
}

void sub_25BB01248()
{
  v1 = *v0;
  sub_25BB058E0();
  *v0 = v2;
}

void sub_25BB01268()
{
  v1 = *v0;
  sub_25BB05994();
  *v0 = v2;
}

void sub_25BB01288()
{
  v1 = *v0;
  sub_25BB05A48();
  *v0 = v2;
}

void sub_25BB012A8()
{
  v1 = *v0;
  sub_25BB05AFC();
  *v0 = v2;
}

void sub_25BB012C8()
{
  v1 = *v0;
  sub_25BB05BB0();
  *v0 = v2;
}

void sub_25BB012E8()
{
  v1 = *v0;
  sub_25BB05C64();
  *v0 = v2;
}

void sub_25BB01308()
{
  v1 = *v0;
  sub_25BB05D18();
  *v0 = v2;
}

void sub_25BB01328()
{
  v1 = *v0;
  sub_25BB05DCC();
  *v0 = v2;
}

void sub_25BB01348()
{
  v1 = *v0;
  sub_25BB05E80();
  *v0 = v2;
}

void sub_25BB01368()
{
  v1 = *v0;
  sub_25BB05F34();
  *v0 = v2;
}

uint64_t sub_25BB013B8(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3958, &qword_25BCBB8F8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_25BAE3A58((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3960, &qword_25BCBB900);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_25BB014C8(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E0, &qword_25BCBB968);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_25BAC9924(a4 + 32);
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E8, &qword_25BCCF2F0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_25BB015E0()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38C0, &unk_25BCC8950);
      v8 = OUTLINED_FUNCTION_30_2();
      OUTLINED_FUNCTION_3_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC9924(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38C8, &unk_25BCCEC20);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_25BB0169C(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3928, &qword_25BCBB8C8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_25BAC9924(a4 + 32);
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3920, &qword_25BCBB8C0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_25BB017B4(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3910, &qword_25BCBB8B0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_25BAC9924(a4 + 32);
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3918, &qword_25BCBB8B8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB018CC(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38F8, &qword_25BCBB8A0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_25BC56450((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38F0, &qword_25BCBB898);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB019DC(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_25BC56450((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38E8, &qword_25BCBB890);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_25BB01B14(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39F0, &qword_25BCBB970);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_25BAC9924(a4 + 32);
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39F8, &qword_25BCBB978);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB01C2C(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E58, &qword_25BCBBDB8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 56);
      if (v5)
      {
LABEL_13:
        sub_25BAD5810((a4 + 32), v8, (v10 + 32));
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

void sub_25BB01D34()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DE0, &unk_25BCC2B00);
      v8 = OUTLINED_FUNCTION_30_2();
      OUTLINED_FUNCTION_3_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC9924(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DE8, &qword_25BCBBD50);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_25BB01DF0(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E08, &qword_25BCBBD70);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_25BC5645C(a4 + 32, v8, v10 + 4);
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E10, &qword_25BCBBD78);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_25BB01F08()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50E0, &qword_25BCBBD88);
      v8 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_4_8(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAE3A58(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E20, &unk_25BCCEC00);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_25BB01FBC(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E48, &qword_25BCBBDA8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_25BC5645C(a4 + 32, v8, v10 + 4);
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E50, &qword_25BCBBDB0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB020D4(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_25BC56450((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B0, &qword_25BCBB948);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB021E4(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3970, &qword_25BCBB910);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_25BC56450((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3978, &qword_25BCBB918);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_25BB022F4(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_25BAC9924(a4 + 32);
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38E0, &qword_25BCBB888);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_25BB0240C()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C28, &qword_25BCBBBA8);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C30, &qword_25BCBBBB0);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB024C0()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C10, &qword_25BCBBB90);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C18, &qword_25BCBBB98);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB02574()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A10, &qword_25BCBB990);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A18, &qword_25BCBB998);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB02628()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D58, &qword_25BCBBCD8);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D60, &qword_25BCBBCE0);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB026DC()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D48, &qword_25BCBBCC8);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D50, &qword_25BCBBCD0);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB02790()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A60, &qword_25BCBB9E0);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A68, &qword_25BCBB9E8);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB02844()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B50, &qword_25BCBBAD0);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B58, &qword_25BCBBAD8);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB028F8()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CB8, &qword_25BCBBC38);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CC0, &qword_25BCBBC40);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB029AC()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AD0, &qword_25BCBBA50);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AD8, &qword_25BCBBA58);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB02A60()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AB0, &qword_25BCBBA30);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AB8, &qword_25BCBBA38);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB02B14()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D78, &qword_25BCBBCF8);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D80, &qword_25BCBBD00);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB02BC8()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D68, &qword_25BCBBCE8);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D70, &qword_25BCBBCF0);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB02C7C()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A30, &qword_25BCBB9B0);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A38, &qword_25BCBB9B8);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB02D30()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A50, &qword_25BCBB9D0);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A58, &qword_25BCBB9D8);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB02DE4()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A00, &qword_25BCBB980);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A08, &qword_25BCBB988);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB02E98()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A20, &qword_25BCBB9A0);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A28, &qword_25BCBB9A8);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_25BB02F4C(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D0, &qword_25BCBB880);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 176);
      if (v5)
      {
LABEL_13:
        sub_25BC56218((a4 + 32), v8, (v10 + 32));
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

    memcpy((v10 + 32), (a4 + 32), 176 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_25BB03050(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3ED8, &qword_25BCBBE20);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EB8, &qword_25BCBBE08) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EB8, &qword_25BCBBE08) - 8) + 80);
  if (v5)
  {
    sub_25BC56240();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_25BB0321C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EA8, &qword_25BCC2B10);
  v10 = *(sub_25BCB5BCC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25BCB5BCC() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_25BC56324(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_25BB033D0(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39D8, &qword_25BCBB960);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_25BAC9928((a4 + 32), v8, (v10 + 32));
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

    memcpy((v10 + 32), (a4 + 32), 24 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_25BB034D4()
{
  OUTLINED_FUNCTION_21_0();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_20(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_87(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_2_2(v16);
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_23_1();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    v19 = OUTLINED_FUNCTION_78();
    memcpy(v19, v20, v21);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_25BB03584(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F70, &qword_25BCBBE98);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_25BC56450((a4 + 32), v8, (v10 + 32));
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

    memcpy((v10 + 32), (a4 + 32), 32 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}