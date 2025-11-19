uint64_t sub_10001EADC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10001EB04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unsigned __int8 *sub_10001EB1C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_10002E97C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10001F62C();
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
      result = sub_10002EBFC();
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

unsigned __int8 *sub_10001F0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_10002E97C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10001F62C();
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
      result = sub_10002EBFC();
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

uint64_t sub_10001F62C()
{
  v0 = sub_10002E98C();
  v4 = sub_10001F6AC(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10001F6AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_10002E8EC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_10002EB8C();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100019C90(v9, 0);
  v12 = sub_10001F804(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_10002E8EC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_10002EBFC();
LABEL_4:

  return sub_10002E8EC();
}

unint64_t sub_10001F804(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_10001FA24(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_10002E94C();
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
          result = sub_10002EBFC();
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

    result = sub_10001FA24(v12, a6, a7);
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

    result = sub_10002E92C();
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

uint64_t sub_10001FA24(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_10002E95C();
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
    v5 = sub_10002E93C();
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

unint64_t sub_10001FAA0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10002EDCC();
  sub_10002E8FC();
  v6 = sub_10002EDEC();

  return sub_10001FB88(a1, a2, v6);
}

uint64_t sub_10001FB18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C0EC(&qword_100043260, &qword_100034B60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001FB88(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10002ED5C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

BOOL sub_10001FC40(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_10002EBBC();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

_OWORD *sub_10001FD38(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_BYTE *sub_10001FD48@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10001FDC8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10001FDE0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t *sub_10001FE28(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t *sub_10001FE8C(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

uint64_t sub_10001FEDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001FF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v42 = a3;
  v4 = sub_10000C0EC(&qword_1000432C8, &qword_100034C18);
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  __chkstk_darwin(v4);
  v38 = &v32 - v6;
  v37 = sub_10002E74C();
  v35 = *(v37 - 8);
  v7 = *(v35 + 64);
  __chkstk_darwin(v37);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10002DEBC();
  v36 = *(v33 - 8);
  v10 = *(v36 + 64);
  __chkstk_darwin(v33);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002E71C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002EA6C();
  sub_10001FDE0(0, &qword_100042EB0, OS_os_log_ptr);
  v19 = sub_10002EB4C();
  v20 = *(v14 + 16);
  v39 = a1;
  v20(v17, a1, v13);
  v34 = v18;
  if (os_log_type_enabled(v19, v18))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32 = v4;
    v23 = v22;
    v43 = v22;
    *v21 = 136446210;
    sub_10002E70C();
    sub_10002E73C();
    (*(v35 + 8))(v9, v37);
    sub_10002A20C(&qword_1000432D8, &type metadata accessor for URL);
    v24 = v33;
    v25 = sub_10002ED4C();
    v27 = v26;
    (*(v36 + 8))(v12, v24);
    (*(v14 + 8))(v17, v13);
    v28 = sub_100019850(v25, v27, &v43);

    *(v21 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v19, v34, "BlastDoor processing thumbnail for video: %{public}s)", v21, 0xCu);
    sub_1000121A8(v23);
    v4 = v32;
  }

  else
  {

    v29 = (*(v14 + 8))(v17, v13);
  }

  __chkstk_darwin(v29);
  v30 = v41;
  *(&v32 - 2) = v39;
  *(&v32 - 1) = v30;
  sub_10000C0EC(&qword_1000432D0, &qword_100034C20);
  (*(v40 + 104))(v38, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v4);
  return sub_10002E9FC();
}

uint64_t sub_100020440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v30 = a3;
  v31 = a1;
  v32 = sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
  v3 = *(v32 - 8);
  v28 = *(v3 + 64);
  __chkstk_darwin(v32);
  v27 = &v23 - v4;
  v5 = sub_10002E2FC();
  v25 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v26 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002E71C();
  v24 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C0EC(&qword_1000432E8, &qword_100034C30);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - v14;
  v16 = sub_10002E9CC();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v11, v29, v8);
  (*(v6 + 16))(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v5);
  v17 = v27;
  (*(v3 + 16))(v27, v31, v32);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = (v10 + *(v6 + 80) + v18) & ~*(v6 + 80);
  v20 = (v7 + *(v3 + 80) + v19) & ~*(v3 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v9 + 32))(v21 + v18, v11, v24);
  (*(v6 + 32))(v21 + v19, v26, v25);
  (*(v3 + 32))(v21 + v20, v17, v32);
  sub_100028C98(0, 0, v15, &unk_100034C40, v21);
}

uint64_t sub_1000207CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v6[8] = *(v8 + 64);
  v6[9] = swift_task_alloc();
  v9 = sub_10002E2FC();
  v6[10] = v9;
  v10 = *(v9 - 8);
  v6[11] = v10;
  v6[12] = *(v10 + 64);
  v6[13] = swift_task_alloc();
  v11 = sub_10002E74C();
  v6[14] = v11;
  v12 = *(v11 - 8);
  v6[15] = v12;
  v13 = *(v12 + 64) + 15;
  v6[16] = swift_task_alloc();
  v14 = sub_10002DEBC();
  v6[17] = v14;
  v15 = *(v14 - 8);
  v6[18] = v15;
  v16 = *(v15 + 64) + 15;
  v6[19] = swift_task_alloc();
  v17 = sub_10002E71C();
  v6[20] = v17;
  v18 = *(v17 - 8);
  v6[21] = v18;
  v6[22] = *(v18 + 64);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();

  return _swift_task_switch(sub_100020A30, 0, 0);
}

uint64_t sub_100020A30()
{
  v54 = v0;
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[3];
  v5 = sub_10002EA6C();
  v0[25] = sub_10001FDE0(0, &qword_100042EB0, OS_os_log_ptr);
  v6 = sub_10002EB4C();
  v52 = *(v2 + 16);
  (v52)(v1, v4, v3);
  v7 = os_log_type_enabled(v6, v5);
  v8 = v0[24];
  v9 = v0[20];
  v10 = v0[21];
  if (v7)
  {
    v12 = v0[18];
    v11 = v0[19];
    v13 = v0[16];
    v46 = v0[17];
    v50 = v5;
    v14 = v0[15];
    v43 = v0[14];
    v15 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v53 = v48;
    *v15 = 136446210;
    v44 = v9;
    sub_10002E70C();
    sub_10002E73C();
    (*(v14 + 8))(v13, v43);
    sub_10002A20C(&qword_1000432D8, &type metadata accessor for URL);
    v16 = sub_10002ED4C();
    v18 = v17;
    (*(v12 + 8))(v11, v46);
    (*(v10 + 8))(v8, v44);
    v19 = sub_100019850(v16, v18, &v53);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v6, v50, "Task running for video: %{public}s)", v15, 0xCu);
    sub_1000121A8(v48);
  }

  else
  {

    (*(v10 + 8))(v8, v9);
  }

  v20 = v0[20];
  v21 = v0[21];
  v45 = v20;
  v47 = v0[23];
  v22 = v0[13];
  v41 = v0[22];
  v42 = v0[12];
  v24 = v0[10];
  v23 = v0[11];
  v25 = v0[9];
  v49 = v22;
  v51 = v25;
  v26 = v0[6];
  v27 = v0[7];
  v29 = v0[4];
  v28 = v0[5];
  v30 = v0[3];
  v52();
  v31 = v22;
  v32 = v24;
  (*(v23 + 16))(v31, v29, v24);
  (*(v27 + 16))(v25, v28, v26);
  v33 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v34 = (v41 + *(v23 + 80) + v33) & ~*(v23 + 80);
  v35 = (v42 + *(v27 + 80) + v34) & ~*(v27 + 80);
  v36 = swift_allocObject();
  v0[26] = v36;
  (*(v21 + 32))(v36 + v33, v47, v45);
  (*(v23 + 32))(v36 + v34, v49, v32);
  (*(v27 + 32))(v36 + v35, v51, v26);
  v37 = async function pointer to File.withResource<A>(_:)[1];
  v38 = swift_task_alloc();
  v0[27] = v38;
  *v38 = v0;
  v38[1] = sub_100020E3C;
  v39 = v0[3];

  return File.withResource<A>(_:)();
}

uint64_t sub_100020E3C()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_100021000;
  }

  else
  {
    v5 = *(v2 + 208);

    v4 = sub_100020F58;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100020F58()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100021000()
{
  v2 = v0[25];
  v1 = v0[26];

  v3 = sub_10002EA7C();
  v4 = sub_10002EB4C();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v0[28];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v3, "Caught error: %@", v6, 0xCu);
    sub_10000E76C(v7, &qword_1000432F0, &qword_100034C70);
  }

  v9 = v0[28];
  v11 = v0[5];
  v10 = v0[6];

  v0[2] = v9;
  sub_10002E9EC();
  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[19];
  v15 = v0[16];
  v16 = v0[13];
  v17 = v0[9];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10002118C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[67] = a4;
  v4[66] = a3;
  v4[65] = a2;
  v5 = *(*(sub_10000C0EC(&qword_1000432D0, &qword_100034C20) - 8) + 64) + 15;
  v4[68] = swift_task_alloc();
  v6 = sub_10000C0EC(&qword_1000432F8, &qword_100034C78);
  v4[69] = v6;
  v7 = *(v6 - 8);
  v4[70] = v7;
  v8 = *(v7 + 64) + 15;
  v4[71] = swift_task_alloc();
  v9 = sub_10002E3BC();
  v4[72] = v9;
  v10 = *(v9 - 8);
  v4[73] = v10;
  v11 = *(v10 + 64) + 15;
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v12 = sub_10002E2DC();
  v4[76] = v12;
  v13 = *(v12 - 8);
  v4[77] = v13;
  v14 = *(v13 + 64) + 15;
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v15 = sub_10002E2BC();
  v4[80] = v15;
  v16 = *(v15 - 8);
  v4[81] = v16;
  v17 = *(v16 + 64) + 15;
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v18 = *(*(sub_10000C0EC(&qword_100043300, &qword_100034C80) - 8) + 64) + 15;
  v4[84] = swift_task_alloc();
  v19 = sub_10002E78C();
  v4[85] = v19;
  v20 = *(v19 - 8);
  v4[86] = v20;
  v21 = *(v20 + 64) + 15;
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v22 = sub_10002EA4C();
  v4[89] = v22;
  v23 = *(v22 - 8);
  v4[90] = v23;
  v24 = *(v23 + 64) + 15;
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v25 = sub_10002E37C();
  v4[93] = v25;
  v26 = *(v25 - 8);
  v4[94] = v26;
  v27 = *(v26 + 64) + 15;
  v4[95] = swift_task_alloc();
  v4[96] = swift_task_alloc();
  v4[97] = swift_task_alloc();
  v28 = sub_10002E39C();
  v4[98] = v28;
  v29 = *(v28 - 8);
  v4[99] = v29;
  v30 = *(v29 + 64) + 15;
  v4[100] = swift_task_alloc();
  v31 = sub_10002E30C();
  v4[101] = v31;
  v32 = *(v31 - 8);
  v4[102] = v32;
  v33 = *(v32 + 64) + 15;
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v4[106] = swift_task_alloc();
  v4[107] = swift_task_alloc();
  v34 = sub_10002DEBC();
  v4[108] = v34;
  v35 = *(v34 - 8);
  v4[109] = v35;
  v36 = *(v35 + 64) + 15;
  v4[110] = swift_task_alloc();
  v37 = sub_10002E74C();
  v4[111] = v37;
  v38 = *(v37 - 8);
  v4[112] = v38;
  v39 = *(v38 + 64) + 15;
  v4[113] = swift_task_alloc();

  return _swift_task_switch(sub_100021718, 0, 0);
}

uint64_t sub_100021718()
{
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[110];
  v5 = v0[109];
  v6 = v0[108];
  v7 = v0[65];
  sub_10002E70C();
  sub_10002E73C();
  (*(v2 + 8))(v1, v3);
  v0[114] = sub_10000C0EC(&qword_100043308, &qword_100034C88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100033FF0;
  *(inited + 32) = sub_10002E87C();
  *(inited + 40) = v9;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  sub_10002A0C4(inited);
  swift_setDeallocating();
  sub_10000E76C(inited + 32, &qword_100043310, &qword_100034C90);
  v10 = objc_allocWithZone(AVURLAsset);
  sub_10002DE9C(v11);
  v13 = v12;
  isa = sub_10002E82C().super.isa;

  v15 = [v10 initWithURL:v13 options:isa];
  v0[115] = v15;

  (*(v5 + 8))(v4, v6);
  v0[2] = v0;
  v0[7] = v0 + 60;
  v0[3] = sub_1000219F4;
  v16 = swift_continuation_init();
  v0[27] = sub_10000C0EC(&qword_100043318, &qword_100034C98);
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_100028BA8;
  v0[23] = &unk_10003E740;
  v0[24] = v16;
  [v15 loadTracksWithMediaType:AVMediaTypeVideo completionHandler:v0 + 20];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000219F4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 928) = v3;
  if (v3)
  {
    v4 = *(v1 + 920);

    v5 = sub_100026E40;
  }

  else
  {
    v5 = sub_100021B3C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100021B3C()
{
  v1 = *(v0 + 480);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 936) = v2;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v46 = *(v0 + 920);

    sub_10002E7DC();
    sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();

    goto LABEL_25;
  }

  if (v1 < 0)
  {
    v44 = *(v0 + 480);
  }

  v45 = sub_10002EC0C();
  v2 = sub_10002EC0C();
  *(v0 + 936) = v45;
  if (!v2)
  {
    goto LABEL_24;
  }

LABEL_3:
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_29;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v5 = sub_10002EBDC();
    goto LABEL_8;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
  }

  if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

  v5 = *(v1 + 8 * v4 + 32);
LABEL_8:
  v6 = v5;
  *(v0 + 944) = v5;
  v7 = *(v0 + 856);
  v8 = *(v0 + 816);
  v9 = *(v0 + 808);
  v10 = *(v0 + 528);

  v11 = v6;
  sub_10002E2EC();
  v12 = *(v8 + 88);
  *(v0 + 952) = v12;
  *(v0 + 960) = (v8 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v13 = v12(v7, v9);
  *(v0 + 1540) = v13;
  v14 = enum case for VideoPreview.FrameConstraints.singleFrame(_:);
  *(v0 + 1544) = enum case for VideoPreview.FrameConstraints.singleFrame(_:);
  if (v13 == v14)
  {
    v15 = *(v0 + 856);
    v16 = *(v0 + 808);
    v17 = *(v0 + 800);
    v18 = *(v0 + 792);
    v19 = *(v0 + 784);
    v20 = *(*(v0 + 816) + 96);
    *(v0 + 968) = v20;
    v20(v15, v16);
    (*(v18 + 32))(v17, v15, v19);
    sub_10000C0EC(&qword_100043350, &qword_100034CC0);
    v21 = sub_10002DF2C();
    *(v0 + 976) = v21;
    v22 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
    v23 = swift_task_alloc();
    *(v0 + 984) = v23;
    *v23 = v0;
    v23[1] = sub_100022350;

    return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 448, v21, 0, 0);
  }

  if (v13 == enum case for VideoPreview.FrameConstraints.multiFrame(_:))
  {
    v24 = *(v0 + 856);
    v25 = *(v0 + 776);
    v26 = *(v0 + 752);
    v27 = *(v0 + 744);
    v28 = *(*(v0 + 816) + 96);
    v28(v24, *(v0 + 808));
    (*(v26 + 32))(v25, v24, v27);
    if (sub_10002E34C() >= 1)
    {
      v29 = *(v0 + 776);
      if (sub_10002E35C() >= 1)
      {
        v30 = *(v0 + 776);
        v31 = *(v0 + 752);
        v32 = *(v0 + 744);
        v33 = sub_10002E34C();
        v34 = sub_10002E35C();
        v35 = sub_10002E31C();
        (*(v31 + 8))(v30, v32);
        *(v0 + 1064) = v34;
        *(v0 + 1056) = v33;
        *(v0 + 1048) = v35;
        *(v0 + 1040) = v28;
        v36 = async function pointer to AVAssetTrack.info.getter[1];
        v37 = swift_task_alloc();
        *(v0 + 1072) = v37;
        *v37 = v0;
        v37[1] = sub_100022A28;
        v38 = *(v0 + 944);
        v39 = *(v0 + 736);

        return AVAssetTrack.info.getter(v39);
      }
    }

    v40 = *(v0 + 920);
    v41 = *(v0 + 776);
    v42 = *(v0 + 752);
    v43 = *(v0 + 744);

    sub_10002E7DC();
    sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();
  }

  else
  {
    v40 = *(v0 + 920);
    v41 = *(v0 + 856);
    v42 = *(v0 + 816);
    v43 = *(v0 + 808);

    sub_10002E7DC();
    sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();
  }

  (*(v42 + 8))(v41, v43);
LABEL_25:
  v47 = *(v0 + 904);
  v48 = *(v0 + 880);
  v49 = *(v0 + 856);
  v50 = *(v0 + 848);
  v51 = *(v0 + 840);
  v52 = *(v0 + 832);
  v53 = *(v0 + 824);
  v54 = *(v0 + 800);
  v55 = *(v0 + 776);
  v56 = *(v0 + 768);
  v59 = *(v0 + 760);
  v60 = *(v0 + 736);
  v61 = *(v0 + 728);
  v62 = *(v0 + 704);
  v63 = *(v0 + 696);
  v64 = *(v0 + 672);
  v65 = *(v0 + 664);
  v66 = *(v0 + 656);
  v67 = *(v0 + 632);
  v68 = *(v0 + 624);
  v69 = *(v0 + 600);
  v70 = *(v0 + 592);
  v71 = *(v0 + 568);
  v72 = *(v0 + 544);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_100022350()
{
  v2 = *v1;
  v3 = *(*v1 + 984);
  v4 = *v1;
  v2[124] = v0;

  v5 = v2[122];
  if (v0)
  {
    v6 = v2[115];

    v7 = sub_100027038;
  }

  else
  {

    v7 = sub_1000224D0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000224D0()
{
  *(v0 + 1000) = *(v0 + 448);
  sub_10000C0EC(&qword_100043358, &qword_100034CC8);
  v1 = sub_10002DF4C();
  *(v0 + 1016) = v1;
  v2 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
  v3 = swift_task_alloc();
  *(v0 + 1024) = v3;
  *v3 = v0;
  v3[1] = sub_1000225DC;
  v4 = *(v0 + 944);

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 224, v1, 0, 0);
}

uint64_t sub_1000225DC()
{
  v2 = *v1;
  v3 = *(*v1 + 1024);
  v4 = *v1;
  v2[129] = v0;

  v5 = v2[127];
  if (v0)
  {
    v6 = v2[115];

    v7 = sub_100027258;
  }

  else
  {

    v7 = sub_10002275C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100022A28()
{
  v2 = *v1;
  v3 = *(*v1 + 1072);
  v7 = *v1;
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v4 = *(v2 + 920);

    v5 = sub_100027478;
  }

  else
  {
    v5 = sub_100022B84;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100022B84()
{
  v1 = sub_10002EA6C();
  v0[136] = sub_10001FDE0(0, &qword_100042EB0, OS_os_log_ptr);
  v2 = sub_10002EB2C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v0[133];
    v4 = v0[132];
    v5 = swift_slowAlloc();
    *v5 = 134218240;
    *(v5 + 4) = v4;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v2, v1, "thumbnailFitPxSize: %f x %f", v5, 0x16u);
  }

  v6 = async function pointer to AVAsset.isAutoLoop.getter[1];
  v7 = swift_task_alloc();
  v0[137] = v7;
  *v7 = v0;
  v7[1] = sub_100022CFC;
  v8 = v0[115];

  return AVAsset.isAutoLoop.getter();
}

uint64_t sub_100022CFC(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1096);
  v8 = *v2;
  *(v3 + 1564) = a1;
  *(v3 + 1104) = v1;

  if (v1)
  {
    v5 = *(v3 + 920);

    v6 = sub_100027670;
  }

  else
  {
    v6 = sub_100022E54;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100022E54()
{
  v1 = *(v0 + 920);

  v2 = objc_allocWithZone(AVAssetReader);
  *(v0 + 488) = 0;
  v3 = [v2 initWithAsset:v1 error:v0 + 488];
  *(v0 + 1112) = v3;
  v4 = *(v0 + 488);
  v5 = *(v0 + 920);
  if (!v3)
  {
    v45 = *(v0 + 944);
    v46 = *(v0 + 736);
    v47 = *(v0 + 720);
    v48 = *(v0 + 712);
    v49 = v4;
    sub_10002DE8C();

    swift_willThrow();
    (*(v47 + 8))(v46, v48);

LABEL_33:
    v109 = *(v0 + 904);
    v110 = *(v0 + 880);
    v111 = *(v0 + 856);
    v112 = *(v0 + 848);
    v113 = *(v0 + 840);
    v114 = *(v0 + 832);
    v115 = *(v0 + 824);
    v116 = *(v0 + 800);
    v117 = *(v0 + 776);
    v118 = *(v0 + 768);
    v196 = *(v0 + 760);
    v200 = *(v0 + 736);
    v204 = *(v0 + 728);
    v208 = *(v0 + 704);
    v212 = *(v0 + 696);
    v216 = *(v0 + 672);
    v220 = *(v0 + 664);
    v224 = *(v0 + 656);
    v228 = *(v0 + 632);
    v232 = *(v0 + 624);
    v236 = *(v0 + 600);
    v241 = *(v0 + 592);
    v246 = *(v0 + 568);
    v255 = *(v0 + 544);

    v101 = *(v0 + 8);
    goto LABEL_34;
  }

  v6 = *(v0 + 1056);
  v7 = *(v0 + 912);
  v8 = v4;

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100034B50;
  *(v9 + 32) = sub_10002E87C();
  *(v9 + 40) = v10;
  *(v9 + 72) = sub_10000C0EC(&qword_100043320, &qword_100034CA0);
  *(v9 + 48) = &off_10003DE08;
  *(v9 + 80) = sub_10002E87C();
  *(v9 + 88) = v11;
  if ((v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v12 = *(v0 + 1056);
  if (v12 <= -9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v13 = *(v0 + 1064);
  *(v9 + 120) = &type metadata for Int;
  *(v9 + 96) = v12;
  *(v9 + 128) = sub_10002E87C();
  *(v9 + 136) = v14;
  if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v15 = *(v0 + 1064);
  if (v15 <= -9.22337204e18)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  if (v15 >= 9.22337204e18)
  {
    goto LABEL_69;
  }

  v16 = *(v0 + 960);
  v17 = *(v0 + 952);
  v18 = *(v0 + 848);
  v19 = *(v0 + 808);
  v20 = *(v0 + 528);
  *(v9 + 168) = &type metadata for Int;
  *(v9 + 144) = v15;
  v21 = sub_10002A0C4(v9);
  swift_setDeallocating();
  sub_10000C0EC(&qword_100043310, &qword_100034C90);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10002E2EC();
  v22 = v17(v18, v19);
  v23 = enum case for VideoPreview.FrameConstraints.multiFrame(_:);
  *(v0 + 1548) = enum case for VideoPreview.FrameConstraints.multiFrame(_:);
  if (v22 == v23)
  {
    v24 = *(v0 + 848);
    v25 = *(v0 + 768);
    v26 = v0 + 752;
    v27 = *(v0 + 752);
    v28 = (v0 + 744);
    v29 = *(v0 + 744);
    v30 = *(v0 + 816) + 96;
    (*(v0 + 1040))(v24, *(v0 + 808));
    (*(v27 + 32))(v25, v24, v29);
    if (sub_10002E32C() >= 1)
    {
      v31 = *(v0 + 768);
      v32 = sub_10002E87C();
      v34 = v33;
      v35 = sub_10002E32C();
      *(v0 + 408) = &type metadata for Int;
      *(v0 + 384) = v35;
      sub_10001FD38((v0 + 384), (v0 + 416));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100029D64((v0 + 416), v32, v34, isUniquelyReferenced_nonNull_native);
    }

    v37 = (v0 + 768);
    *(v0 + 1120) = v21;
    v38 = *(v0 + 768);
    if (sub_10002E31C() >= 1)
    {
      v39 = *v37;
      if (sub_10002E33C())
      {
        sub_10000C0EC(&qword_100043340, &qword_100034CB8);
        v40 = sub_10002DF6C();
        *(v0 + 1128) = v40;
        v41 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
        v42 = swift_task_alloc();
        *(v0 + 1136) = v42;
        *v42 = v0;
        v42[1] = sub_100024368;
        v43 = *(v0 + 920);
        v44 = v0 + 1464;
LABEL_23:

        return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v44, v40, 0, 0);
      }
    }
  }

  else
  {
    v37 = (v0 + 848);
    v28 = (v0 + 808);
    v26 = v0 + 816;
  }

  (*(*v26 + 8))(*v37, *v28);
  *(v0 + 1152) = v21;
  v252 = *(v0 + 1548);
  v50 = *(v0 + 960);
  v51 = *(v0 + 952);
  v52 = *(v0 + 944);
  v53 = *(v0 + 840);
  v54 = *(v0 + 808);
  v55 = *(v0 + 528);
  v56 = objc_allocWithZone(AVAssetReaderTrackOutput);
  v57 = v52;
  isa = sub_10002E82C().super.isa;
  v59 = [v56 initWithTrack:v57 outputSettings:isa];
  *(v0 + 1160) = v59;

  sub_10002E2EC();
  if (v51(v53, v54) == v252)
  {
    v60 = *(v0 + 840);
    v61 = *(v0 + 760);
    v62 = *(v0 + 752);
    v63 = *(v0 + 744);
    v64 = *(v0 + 816) + 96;
    (*(v0 + 1040))(v60, *(v0 + 808));
    (*(v62 + 32))(v61, v60, v63);
    [v59 setAppliesPreferredTrackTransform:sub_10002E36C() & 1];
    if (sub_10002E32C() == 1)
    {
      [v59 setLimitsImageQueueCapacityToOneFrame:1];
    }

    (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));
  }

  else
  {
    (*(*(v0 + 816) + 8))(*(v0 + 840), *(v0 + 808));
    [v59 setAppliesPreferredTrackTransform:1];
  }

  v65 = *(v0 + 1112);
  v66 = *(v0 + 1544);
  v67 = *(v0 + 960);
  v68 = *(v0 + 952);
  v69 = *(v0 + 832);
  v70 = *(v0 + 816);
  v71 = *(v0 + 808);
  v72 = *(v0 + 528);
  [v59 setAlwaysCopiesSampleData:0];
  [v65 addOutput:v59];
  sub_10002E2EC();
  LODWORD(v72) = v68(v69, v71);
  (*(v70 + 8))(v69, v71);
  if (v72 == v66)
  {
    sub_10000C0EC(&qword_100043330, &qword_100034CA8);
    v40 = sub_10002DF3C();
    *(v0 + 1168) = v40;
    v73 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
    v74 = swift_task_alloc();
    *(v0 + 1176) = v74;
    *v74 = v0;
    v74[1] = sub_100025870;
    v75 = *(v0 + 944);
    v44 = v0 + 1536;
    goto LABEL_23;
  }

  v76 = *(v0 + 1160);
  [*(v0 + 1112) startReading];
  v77 = [v76 copyNextSampleBuffer];
  if (!v77)
  {
    v102 = *(v0 + 1160);
    v103 = *(v0 + 1152);
    v104 = *(v0 + 1112);
    v105 = *(v0 + 944);
    v106 = *(v0 + 920);
    v254 = *(v0 + 736);
    v107 = *(v0 + 720);
    v108 = *(v0 + 712);

    sub_10002E7DC();
    sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();

    (*(v107 + 8))(v254, v108);
    goto LABEL_33;
  }

  v78 = *(v0 + 1048);
  v79 = *(v0 + 1544);
  v80 = *(v0 + 1540);
  v81 = v77;
  v82 = v81;
  if (v80 != v79 && !v78)
  {
LABEL_29:
    v83 = *(v0 + 1160);
    v84 = *(v0 + 1152);
    v85 = *(v0 + 1112);
    v86 = *(v0 + 944);
    v87 = *(v0 + 920);
    v88 = *(v0 + 736);
    v89 = *(v0 + 720);
    v90 = *(v0 + 712);

    (*(v89 + 8))(v88, v90);
LABEL_30:

    goto LABEL_31;
  }

  v119 = 0;
  v120 = *(v0 + 688);
  v188 = (v120 + 16);
  v189 = (*(v0 + 720) + 16);
  v121 = *(v0 + 648);
  v122 = *(v0 + 616);
  v123 = *(v0 + 584);
  v186 = (v122 + 16);
  v187 = (v121 + 16);
  v190 = (*(v0 + 816) + 8);
  v180 = (v123 + 16);
  v181 = (*(v0 + 560) + 8);
  v182 = (v123 + 8);
  v183 = (v122 + 8);
  v184 = (v121 + 8);
  v185 = (v120 + 8);
  if (CMSampleBufferGetNumSamples(v81))
  {
    goto LABEL_39;
  }

  do
  {
LABEL_38:
  }

  while (!CMSampleBufferGetNumSamples(v82));
  while (1)
  {
LABEL_39:

    v124 = sub_10002EABC();
    if (!v124)
    {
      v160 = *(v0 + 1160);
      v161 = *(v0 + 1152);
      v162 = *(v0 + 1112);
      v163 = *(v0 + 944);
      v164 = *(v0 + 920);
      v165 = *(v0 + 720);
      v250 = *(v0 + 712);
      v258 = *(v0 + 736);

      sub_10002E7DC();
      sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion);
      swift_allocError();
      sub_10002E7CC();
      swift_willThrow();

      (*(v165 + 8))(v258, v250);
      goto LABEL_33;
    }

    v125 = v124;
    v126 = *(v0 + 1088);
    v127 = sub_10002EA6C();
    v128 = sub_10002EB4C();
    if (os_log_type_enabled(v128, v127))
    {
      v129 = swift_slowAlloc();
      *v129 = 134217984;
      *(v129 + 4) = v119;
      _os_log_impl(&_mh_execute_header, v128, v127, "BlastDoor processing thumbnail %ld", v129, 0xCu);
    }

    v225 = *(v0 + 1564);
    v247 = *(v0 + 1544);
    v237 = *(v0 + 952);
    v242 = *(v0 + 960);
    v221 = *(v0 + 936);
    v229 = *(v0 + 824);
    v233 = *(v0 + 808);
    v130 = *(v0 + 736);
    v256 = v119;
    v131 = *(v0 + 728);
    v132 = *(v0 + 712);
    v133 = *(v0 + 704);
    v193 = *(v0 + 696);
    v194 = *(v0 + 680);
    v134 = *(v0 + 672);
    v135 = *(v0 + 664);
    v197 = *(v0 + 656);
    v201 = *(v0 + 640);
    v192 = *(v0 + 632);
    v205 = *(v0 + 624);
    v209 = *(v0 + 608);
    v213 = *(v0 + 600);
    v217 = *(v0 + 528);

    sub_10002EACC();
    sub_10002EB0C();
    type metadata accessor for CVBuffer(0);
    v136 = sub_10002E75C();
    (*(*(v136 - 8) + 56))(v134, 1, 1, v136);
    v137 = v125;
    sub_10002E76C();
    v138 = *v189;
    (*v189)(v131, v130, v132);
    sub_10002E2AC();
    v138(v131, v130, v132);
    sub_10002E2CC();
    (*v188)(v193, v133, v194);
    (*v187)(v197, v135, v201);
    (*v186)(v205, v192, v209);
    sub_10002E3AC();
    sub_10002E2EC();
    v139 = v237(v229, v233);
    v140 = *(v0 + 1160);
    v191 = v137;
    if (v139 == v247)
    {
      break;
    }

    (*v190)(*(v0 + 824), *(v0 + 808));
    v141 = [v140 copyNextSampleBuffer];
    v142 = v256 + 1;
    if (__OFADD__(v256, 1))
    {
      __break(1u);
      goto LABEL_64;
    }

    v143 = v141;
    v257 = v256 + 1;
    if (v141)
    {
      v144 = *(v0 + 1540) != *(v0 + 1544) && v142 == *(v0 + 1048);
      v145 = v144;
    }

    else
    {
      v145 = 1;
    }

    v146 = *(v0 + 568);
    v248 = *(v0 + 552);
    v147 = *(v0 + 544);
    v148 = *(v0 + 536);
    (*v180)(*(v0 + 592), *(v0 + 600), *(v0 + 576));
    sub_10002A20C(&qword_100043328, &type metadata accessor for VideoPreview);
    sub_10002E55C();
    sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
    sub_10002E9DC();
    (*v181)(v146, v248);
    v149 = *(v0 + 704);
    v243 = *(v0 + 664);
    v249 = *(v0 + 680);
    v238 = *(v0 + 640);
    v150 = *(v0 + 632);
    v151 = *(v0 + 608);
    v152 = *(v0 + 600);
    v153 = *(v0 + 576);
    if (v145)
    {
      v154 = *(v0 + 704);
      v155 = *(v0 + 536);
      *(v0 + 496) = 0;
      sub_10002E9EC();

      (*v182)(v152, v153);
      (*v183)(v150, v151);
      (*v184)(v243, v238);
      (*v185)(v154, v249);
    }

    else
    {

      (*v182)(v152, v153);
      (*v183)(v150, v151);
      (*v184)(v243, v238);
      (*v185)(v149, v249);
    }

    if (!v143)
    {
      v174 = *(v0 + 1160);
      v175 = *(v0 + 1152);
      v176 = *(v0 + 1112);
      v177 = *(v0 + 944);
      v178 = *(v0 + 920);
      (*(*(v0 + 720) + 8))(*(v0 + 736), *(v0 + 712));

      goto LABEL_30;
    }

    v156 = *(v0 + 1048);
    v157 = *(v0 + 1544);
    v158 = *(v0 + 1540);
    v159 = v143;
    v82 = v159;
    v144 = v158 == v157;
    v119 = v257;
    if (!v144 && v257 == v156)
    {
      goto LABEL_29;
    }

    if (!CMSampleBufferGetNumSamples(v159))
    {
      goto LABEL_38;
    }
  }

  v166 = *(v0 + 1152);
  v206 = *(v0 + 1112);
  v210 = *(v0 + 944);
  v222 = *(v0 + 920);
  v167 = *(v0 + 824);
  v168 = *(v0 + 808);
  v251 = *(v0 + 712);
  v259 = *(v0 + 736);
  v239 = *(v0 + 704);
  v244 = *(v0 + 720);
  v230 = *(v0 + 664);
  v234 = *(v0 + 680);
  v226 = *(v0 + 640);
  v214 = *(v0 + 608);
  v218 = *(v0 + 632);
  v169 = *(v0 + 600);
  v170 = *(v0 + 592);
  v171 = *(v0 + 576);
  v198 = *(v0 + 568);
  v202 = *(v0 + 552);
  v172 = *(v0 + 544);
  v173 = *(v0 + 536);

  (*v190)(v167, v168);
  (*v180)(v170, v169, v171);
  sub_10002A20C(&qword_100043328, &type metadata accessor for VideoPreview);
  sub_10002E55C();
  sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
  sub_10002E9DC();
  (*v181)(v198, v202);
  *(v0 + 504) = 0;
  sub_10002E9EC();

  (*v182)(v169, v171);
  (*v183)(v218, v214);
  (*v184)(v230, v226);
  (*v185)(v239, v234);
  (*(v244 + 8))(v259, v251);
LABEL_31:
  v91 = *(v0 + 904);
  v92 = *(v0 + 880);
  v93 = *(v0 + 856);
  v94 = *(v0 + 848);
  v95 = *(v0 + 840);
  v96 = *(v0 + 832);
  v97 = *(v0 + 824);
  v98 = *(v0 + 800);
  v99 = *(v0 + 776);
  v100 = *(v0 + 768);
  v195 = *(v0 + 760);
  v199 = *(v0 + 736);
  v203 = *(v0 + 728);
  v207 = *(v0 + 704);
  v211 = *(v0 + 696);
  v215 = *(v0 + 672);
  v219 = *(v0 + 664);
  v223 = *(v0 + 656);
  v227 = *(v0 + 632);
  v231 = *(v0 + 624);
  v235 = *(v0 + 600);
  v240 = *(v0 + 592);
  v245 = *(v0 + 568);
  v253 = *(v0 + 544);

  v101 = *(v0 + 8);
LABEL_34:

  return v101();
}

uint64_t sub_100024368()
{
  v2 = *v1;
  v3 = *(*v1 + 1136);
  v4 = *v1;
  v2[143] = v0;

  v5 = v2[141];
  if (v0)
  {
    v6 = v2[140];

    v7 = sub_100027890;
  }

  else
  {

    v7 = sub_1000244E4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000244E4()
{
  v245 = v0;
  v1 = *(v0 + 768);
  v2 = *(v0 + 1480);
  v3 = *(v0 + 1472);
  *(v0 + 1488) = *(v0 + 1464);
  *(v0 + 1496) = v3;
  *(v0 + 1504) = v2;
  Seconds = CMTimeGetSeconds((v0 + 1488));
  v5 = sub_10002E31C();
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
LABEL_54:
    __break(1u);
  }

  v6 = Seconds / ((v5 - 1) + 0.1);
  if (v6 <= 0.0)
  {
    (*(*(v0 + 752) + 8))(*(v0 + 768), *(v0 + 744));
    value = *(v0 + 1120);
  }

  else
  {
    v7 = *(v0 + 752);
    CMTimeMakeWithSeconds(&v242, v6, 1000);
    epoch = v242.epoch;
    v9 = *&v242.timescale;
    *(v0 + 1512) = v242.value;
    *(v0 + 1520) = v9;
    *(v0 + 1528) = epoch;
    v10 = CMTimeCopyAsDictionary((v0 + 1512), kCFAllocatorDefault);
    v11 = (v7 + 8);
    v12 = *(v0 + 1120);
    if (!v10)
    {
      v75 = *(v0 + 1112);
      v76 = *(v0 + 944);
      v77 = *(v0 + 920);
      v214 = *(v0 + 744);
      v220 = *(v0 + 768);
      v78 = *(v0 + 720);
      v226 = *(v0 + 712);
      v235 = *(v0 + 736);

      sub_10002E7DC();
      sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion);
      swift_allocError();
      sub_10002E7CC();
      swift_willThrow();

      (*v11)(v220, v214);
      (*(v78 + 8))(v235, v226);
      goto LABEL_23;
    }

    v13 = v10;
    v14 = *(v0 + 768);
    v15 = *(v0 + 744);
    v16 = sub_10002E87C();
    v18 = v17;
    *(v0 + 344) = sub_10001FDE0(0, &qword_100043348, NSDictionary_ptr);
    *(v0 + 320) = v13;
    sub_10001FD38((v0 + 320), (v0 + 352));
    v19 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v242.value = v12;
    sub_100029D64((v0 + 352), v16, v18, isUniquelyReferenced_nonNull_native);

    (*v11)(v14, v15);
    value = v242.value;
  }

  *(v0 + 1152) = value;
  v233 = *(v0 + 1548);
  v22 = *(v0 + 960);
  v23 = *(v0 + 952);
  v24 = *(v0 + 944);
  v25 = *(v0 + 840);
  v26 = *(v0 + 808);
  v27 = *(v0 + 528);
  v28 = objc_allocWithZone(AVAssetReaderTrackOutput);
  v29 = v24;
  isa = sub_10002E82C().super.isa;
  v31 = [v28 initWithTrack:v29 outputSettings:isa];
  *(v0 + 1160) = v31;

  sub_10002E2EC();
  if (v23(v25, v26) == v233)
  {
    v32 = *(v0 + 840);
    v33 = *(v0 + 760);
    v34 = *(v0 + 752);
    v35 = *(v0 + 744);
    v36 = *(v0 + 816) + 96;
    (*(v0 + 1040))(v32, *(v0 + 808));
    (*(v34 + 32))(v33, v32, v35);
    [v31 setAppliesPreferredTrackTransform:sub_10002E36C() & 1];
    if (sub_10002E32C() == 1)
    {
      [v31 setLimitsImageQueueCapacityToOneFrame:1];
    }

    (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));
  }

  else
  {
    (*(*(v0 + 816) + 8))(*(v0 + 840), *(v0 + 808));
    [v31 setAppliesPreferredTrackTransform:1];
  }

  v37 = *(v0 + 1112);
  v38 = *(v0 + 1544);
  v39 = *(v0 + 960);
  v40 = *(v0 + 952);
  v41 = *(v0 + 832);
  v42 = *(v0 + 816);
  v43 = *(v0 + 808);
  v44 = *(v0 + 528);
  [v31 setAlwaysCopiesSampleData:0];
  [v37 addOutput:v31];
  sub_10002E2EC();
  LODWORD(v44) = v40(v41, v43);
  (*(v42 + 8))(v41, v43);
  if (v44 == v38)
  {
    sub_10000C0EC(&qword_100043330, &qword_100034CA8);
    v45 = sub_10002DF3C();
    *(v0 + 1168) = v45;
    v46 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
    v47 = swift_task_alloc();
    *(v0 + 1176) = v47;
    *v47 = v0;
    v47[1] = sub_100025870;
    v48 = *(v0 + 944);

    return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 1536, v45, 0, 0);
  }

  v49 = *(v0 + 1160);
  [*(v0 + 1112) startReading];
  v50 = [v49 copyNextSampleBuffer];
  if (v50)
  {
    v51 = *(v0 + 1048);
    v52 = *(v0 + 1544);
    v53 = *(v0 + 1540);
    v54 = v50;
    v55 = v54;
    if (v53 == v52 || v51)
    {
      v96 = 0;
      v97 = *(v0 + 688);
      v166 = (v97 + 16);
      v167 = (*(v0 + 720) + 16);
      v98 = *(v0 + 648);
      v99 = *(v0 + 616);
      v100 = *(v0 + 584);
      v164 = (v99 + 16);
      v165 = (v98 + 16);
      v168 = (*(v0 + 816) + 8);
      v158 = (v100 + 16);
      v159 = (*(v0 + 560) + 8);
      v160 = (v100 + 8);
      v161 = (v99 + 8);
      v162 = (v98 + 8);
      v163 = (v97 + 8);
      if (CMSampleBufferGetNumSamples(v54))
      {
        goto LABEL_29;
      }

      do
      {
LABEL_28:
      }

      while (!CMSampleBufferGetNumSamples(v55));
      while (1)
      {
LABEL_29:

        v101 = sub_10002EABC();
        if (!v101)
        {
          v138 = *(v0 + 1160);
          v139 = *(v0 + 1152);
          v140 = *(v0 + 1112);
          v141 = *(v0 + 944);
          v142 = *(v0 + 920);
          v143 = *(v0 + 720);
          v231 = *(v0 + 712);
          v240 = *(v0 + 736);

          sub_10002E7DC();
          sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion);
          swift_allocError();
          sub_10002E7CC();
          swift_willThrow();

          (*(v143 + 8))(v240, v231);
          goto LABEL_23;
        }

        v102 = v101;
        v103 = *(v0 + 1088);
        v104 = sub_10002EA6C();
        v105 = sub_10002EB4C();
        if (os_log_type_enabled(v105, v104))
        {
          v106 = swift_slowAlloc();
          *v106 = 134217984;
          *(v106 + 4) = v96;
          _os_log_impl(&_mh_execute_header, v105, v104, "BlastDoor processing thumbnail %ld", v106, 0xCu);
        }

        v203 = *(v0 + 1564);
        v228 = *(v0 + 1544);
        v216 = *(v0 + 952);
        v222 = *(v0 + 960);
        v199 = *(v0 + 936);
        v207 = *(v0 + 824);
        v211 = *(v0 + 808);
        v107 = *(v0 + 736);
        v238 = v96;
        v108 = *(v0 + 728);
        v109 = *(v0 + 712);
        v110 = *(v0 + 704);
        v171 = *(v0 + 696);
        v172 = *(v0 + 680);
        v111 = *(v0 + 672);
        v112 = *(v0 + 664);
        v175 = *(v0 + 656);
        v179 = *(v0 + 640);
        v170 = *(v0 + 632);
        v183 = *(v0 + 624);
        v187 = *(v0 + 608);
        v191 = *(v0 + 600);
        v195 = *(v0 + 528);

        sub_10002EACC();
        sub_10002EB0C();
        type metadata accessor for CVBuffer(0);
        v243 = v113;
        v244 = &protocol witness table for CVBufferRef;
        v242.value = v102;
        v114 = sub_10002E75C();
        (*(*(v114 - 8) + 56))(v111, 1, 1, v114);
        v115 = v102;
        sub_10002E76C();
        v116 = *v167;
        (*v167)(v108, v107, v109);
        sub_10002E2AC();
        v116(v108, v107, v109);
        sub_10002E2CC();
        (*v166)(v171, v110, v172);
        (*v165)(v175, v112, v179);
        (*v164)(v183, v170, v187);
        sub_10002E3AC();
        sub_10002E2EC();
        v117 = v216(v207, v211);
        v118 = *(v0 + 1160);
        v169 = v115;
        if (v117 == v228)
        {
          v144 = *(v0 + 1152);
          v184 = *(v0 + 1112);
          v188 = *(v0 + 944);
          v200 = *(v0 + 920);
          v145 = *(v0 + 824);
          v146 = *(v0 + 808);
          v232 = *(v0 + 712);
          v241 = *(v0 + 736);
          v218 = *(v0 + 704);
          v224 = *(v0 + 720);
          v208 = *(v0 + 664);
          v212 = *(v0 + 680);
          v204 = *(v0 + 640);
          v192 = *(v0 + 608);
          v196 = *(v0 + 632);
          v147 = *(v0 + 600);
          v148 = *(v0 + 592);
          v149 = *(v0 + 576);
          v176 = *(v0 + 568);
          v180 = *(v0 + 552);
          v150 = *(v0 + 544);
          v151 = *(v0 + 536);

          (*v168)(v145, v146);
          (*v158)(v148, v147, v149);
          sub_10002A20C(&qword_100043328, &type metadata accessor for VideoPreview);
          sub_10002E55C();
          sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
          sub_10002E9DC();
          (*v159)(v176, v180);
          *(v0 + 504) = 0;
          sub_10002E9EC();

          (*v160)(v147, v149);
          (*v161)(v196, v192);
          (*v162)(v208, v204);
          (*v163)(v218, v212);
          (*(v224 + 8))(v241, v232);
          goto LABEL_20;
        }

        (*v168)(*(v0 + 824), *(v0 + 808));
        v119 = [v118 copyNextSampleBuffer];
        v120 = v238 + 1;
        if (__OFADD__(v238, 1))
        {
          goto LABEL_54;
        }

        v121 = v119;
        v239 = v238 + 1;
        if (v119)
        {
          v122 = *(v0 + 1540) != *(v0 + 1544) && v120 == *(v0 + 1048);
          v123 = v122;
        }

        else
        {
          v123 = 1;
        }

        v124 = *(v0 + 568);
        v229 = *(v0 + 552);
        v125 = *(v0 + 544);
        v126 = *(v0 + 536);
        (*v158)(*(v0 + 592), *(v0 + 600), *(v0 + 576));
        sub_10002A20C(&qword_100043328, &type metadata accessor for VideoPreview);
        sub_10002E55C();
        sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
        sub_10002E9DC();
        (*v159)(v124, v229);
        v127 = *(v0 + 704);
        v223 = *(v0 + 664);
        v230 = *(v0 + 680);
        v217 = *(v0 + 640);
        v128 = *(v0 + 632);
        v129 = *(v0 + 608);
        v130 = *(v0 + 600);
        v131 = *(v0 + 576);
        if (v123)
        {
          v132 = *(v0 + 704);
          v133 = *(v0 + 536);
          *(v0 + 496) = 0;
          sub_10002E9EC();

          (*v160)(v130, v131);
          (*v161)(v128, v129);
          (*v162)(v223, v217);
          (*v163)(v132, v230);
        }

        else
        {

          (*v160)(v130, v131);
          (*v161)(v128, v129);
          (*v162)(v223, v217);
          (*v163)(v127, v230);
        }

        if (!v121)
        {
          break;
        }

        v134 = *(v0 + 1048);
        v135 = *(v0 + 1544);
        v136 = *(v0 + 1540);
        v137 = v121;
        v55 = v137;
        v122 = v136 == v135;
        v96 = v239;
        if (!v122 && v239 == v134)
        {
          goto LABEL_18;
        }

        if (!CMSampleBufferGetNumSamples(v137))
        {
          goto LABEL_28;
        }
      }

      v152 = *(v0 + 1160);
      v153 = *(v0 + 1152);
      v154 = *(v0 + 1112);
      v155 = *(v0 + 944);
      v156 = *(v0 + 920);
      (*(*(v0 + 720) + 8))(*(v0 + 736), *(v0 + 712));
    }

    else
    {
LABEL_18:
      v56 = *(v0 + 1160);
      v57 = *(v0 + 1152);
      v58 = *(v0 + 1112);
      v59 = *(v0 + 944);
      v60 = *(v0 + 920);
      v61 = *(v0 + 736);
      v62 = *(v0 + 720);
      v63 = *(v0 + 712);

      (*(v62 + 8))(v61, v63);
    }

LABEL_20:
    v64 = *(v0 + 904);
    v65 = *(v0 + 880);
    v66 = *(v0 + 856);
    v67 = *(v0 + 848);
    v68 = *(v0 + 840);
    v69 = *(v0 + 832);
    v70 = *(v0 + 824);
    v71 = *(v0 + 800);
    v72 = *(v0 + 776);
    v73 = *(v0 + 768);
    v173 = *(v0 + 760);
    v177 = *(v0 + 736);
    v181 = *(v0 + 728);
    v185 = *(v0 + 704);
    v189 = *(v0 + 696);
    v193 = *(v0 + 672);
    v197 = *(v0 + 664);
    v201 = *(v0 + 656);
    v205 = *(v0 + 632);
    v209 = *(v0 + 624);
    v213 = *(v0 + 600);
    v219 = *(v0 + 592);
    v225 = *(v0 + 568);
    v234 = *(v0 + 544);

    v74 = *(v0 + 8);
    goto LABEL_24;
  }

  v79 = *(v0 + 1160);
  v80 = *(v0 + 1152);
  v81 = *(v0 + 1112);
  v82 = *(v0 + 944);
  v83 = *(v0 + 920);
  v236 = *(v0 + 736);
  v84 = *(v0 + 720);
  v85 = *(v0 + 712);

  sub_10002E7DC();
  sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion);
  swift_allocError();
  sub_10002E7CC();
  swift_willThrow();

  (*(v84 + 8))(v236, v85);
LABEL_23:
  v86 = *(v0 + 904);
  v87 = *(v0 + 880);
  v88 = *(v0 + 856);
  v89 = *(v0 + 848);
  v90 = *(v0 + 840);
  v91 = *(v0 + 832);
  v92 = *(v0 + 824);
  v93 = *(v0 + 800);
  v94 = *(v0 + 776);
  v95 = *(v0 + 768);
  v174 = *(v0 + 760);
  v178 = *(v0 + 736);
  v182 = *(v0 + 728);
  v186 = *(v0 + 704);
  v190 = *(v0 + 696);
  v194 = *(v0 + 672);
  v198 = *(v0 + 664);
  v202 = *(v0 + 656);
  v206 = *(v0 + 632);
  v210 = *(v0 + 624);
  v215 = *(v0 + 600);
  v221 = *(v0 + 592);
  v227 = *(v0 + 568);
  v237 = *(v0 + 544);

  v74 = *(v0 + 8);
LABEL_24:

  return v74();
}

uint64_t sub_100025870()
{
  v2 = *v1;
  v3 = *(*v1 + 1176);
  v4 = *v1;
  v2[148] = v0;

  v5 = v2[146];
  if (v0)
  {
    v6 = v2[144];

    v7 = sub_100027ADC;
  }

  else
  {

    v7 = sub_1000259EC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000259EC()
{
  v1 = ceilf(*(v0 + 1536));
  *(v0 + 1552) = v1;
  if ((LODWORD(v1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -2147500000.0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (v1 >= 2147500000.0)
  {
    goto LABEL_9;
  }

  *(v0 + 1192) = kCMTimeZero.value;
  *(v0 + 1556) = *&kCMTimeZero.timescale;
  *(v0 + 1200) = kCMTimeZero.epoch;
  sub_10000C0EC(&qword_100043338, &qword_100034CB0);
  v2 = sub_10002DF5C();
  *(v0 + 1208) = v2;
  v3 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
  v4 = swift_task_alloc();
  *(v0 + 1216) = v4;
  *v4 = v0;
  v4[1] = sub_100025B5C;
  v5 = *(v0 + 944);

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 512, v2, 0, 0);
}

uint64_t sub_100025B5C()
{
  v2 = *v1;
  v3 = *(*v1 + 1216);
  v4 = *v1;

  v5 = *(v2 + 1208);
  if (v0)
  {

    v6 = sub_100027D0C;
  }

  else
  {

    v6 = sub_100025CD0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100025CD0()
{
  v230 = v0;
  v1 = *(v0 + 512);
  if (v1 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10002EC0C())
  {
    v3 = v0 + 1384;
    if (!i)
    {
      break;
    }

    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    p_weak_ivar_lyt = &MBDSMSToSuper_AUDIO_Frame__metaData.weak_ivar_lyt;
    v202 = i;
    while (1)
    {
      if (v5)
      {
        v7 = sub_10002EBDC();
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v7 = *(v1 + 32 + 8 * v4);
      }

      v8 = v7;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      if (([v7 p_weak_ivar_lyt[376]] & 1) == 0)
      {
        v10 = *(v0 + 944);
        [v8 timeMapping];
        v11 = v223;
        v12 = *(&v222 + 1);
        *(v0 + 1416) = v222;
        *(v0 + 1424) = v12;
        *(v0 + 1432) = v11;
        v13 = [v10 makeSampleCursorWithPresentationTimeStamp:v0 + 1416];
        if (v13)
        {
          v14 = v13;
          do
          {
            if (([v14 currentSampleDependencyInfo] & 0x1000000) == 0)
            {
              break;
            }

            if ([v14 stepInPresentationOrderByCount:1] != 1)
            {
              break;
            }

            [v14 presentationTimeStamp];
            [v8 timeMapping];
            v15 = v223;
            *(v0 + 1224) = v222;
            *(v0 + 1240) = v15;
            *(v0 + 1256) = v224;
            sub_10002EA3C();
          }

          while ((sub_10002EAEC() & 1) == 0);
          if (([v14 currentSampleDependencyInfo] & 0x1000000) == 0)
          {

            [v14 presentationTimeStamp];
            v109 = v222;
            v110 = v223;
            v111 = *(&v222 + 1);
            [v8 timeMapping];
            v112 = v222;
            v114 = *(&v223 + 1);
            v113 = v223;
            v115 = *(&v224 + 1);
            v116 = v224;
            v117 = *(&v222 + 1);
            [v8 timeMapping];
            v118 = v225;
            v119 = v229;
            v120 = v228;
            v121 = v227;
            v122 = v226;
            *(v0 + 1440) = v109;
            *(v0 + 1448) = v111;
            *(v0 + 1456) = v110;
            *(v0 + 1320) = v112;
            *(v0 + 1328) = v117;
            *(v0 + 1336) = __PAIR128__(v114, v113);
            *(v0 + 1352) = v116;
            *(v0 + 1360) = v115;
            *(v0 + 1368) = v118;
            *(v0 + 1376) = v122;
            v3 = v0 + 1384;
            *(v0 + 1384) = v121;
            *(v0 + 1400) = v120;
            *(v0 + 1408) = v119;
            CMTimeMapTimeFromRangeToRange(&v222, (v0 + 1440), (v0 + 1320), (v0 + 1368));
            v17 = *(&v222 + 1);
            v18 = v222;
            v16 = v223;

            goto LABEL_22;
          }

          i = v202;
          v5 = v1 & 0xC000000000000001;
          p_weak_ivar_lyt = (&MBDSMSToSuper_AUDIO_Frame__metaData + 56);
        }
      }

      if (v4 == i)
      {

        v16 = *(v0 + 1200);
        v3 = v0 + 1384;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  v16 = *(v0 + 1200);
LABEL_21:
  v17 = *(v3 + 172);
  v18 = *(v0 + 1192);
LABEL_22:
  v19 = *(v0 + 1112);
  v20 = sub_10002EAFC(1, *(v0 + 1552));
  *(v0 + 1272) = v18;
  *(v0 + 1280) = v17;
  *(v0 + 1288) = v16;
  *(v0 + 1296) = v20;
  *(v0 + 1304) = v21;
  *(v0 + 1308) = v22;
  *(v0 + 1312) = v23;
  [v19 setTimeRange:v0 + 1272];
  v24 = *(v0 + 1160);
  [*(v0 + 1112) startReading];
  v25 = [v24 copyNextSampleBuffer];
  if (v25)
  {
    v26 = *(v0 + 1048);
    v27 = *(v0 + 1544);
    v28 = *(v0 + 1540);
    v29 = v25;
    v30 = v29;
    if (v28 == v27 || v26)
    {
      v68 = 0;
      v69 = *(v0 + 688);
      v150 = (v69 + 16);
      v151 = (*(v0 + 720) + 16);
      v70 = *(v0 + 648);
      v71 = *(v0 + 616);
      v72 = *(v0 + 584);
      v148 = (v71 + 16);
      v149 = (v70 + 16);
      v152 = (*(v0 + 816) + 8);
      v142 = (v72 + 16);
      v143 = (*(v0 + 560) + 8);
      v144 = (v72 + 8);
      v145 = (v71 + 8);
      v146 = (v70 + 8);
      v147 = (v69 + 8);
      if (CMSampleBufferGetNumSamples(v29))
      {
        goto LABEL_35;
      }

      do
      {
LABEL_34:
      }

      while (!CMSampleBufferGetNumSamples(v30));
      while (1)
      {
LABEL_35:

        v73 = sub_10002EABC();
        if (!v73)
        {
          v123 = *(v0 + 1160);
          v124 = *(v0 + 1152);
          v125 = *(v0 + 1112);
          v126 = *(v0 + 944);
          v127 = *(v0 + 920);
          v128 = *(v0 + 720);
          v213 = *(v0 + 712);
          v220 = *(v0 + 736);

          sub_10002E7DC();
          sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion);
          swift_allocError();
          sub_10002E7CC();
          swift_willThrow();

          (*(v128 + 8))(v220, v213);
          goto LABEL_29;
        }

        v74 = v73;
        v75 = *(v0 + 1088);
        v76 = sub_10002EA6C();
        v77 = sub_10002EB4C();
        if (os_log_type_enabled(v77, v76))
        {
          v78 = swift_slowAlloc();
          *v78 = 134217984;
          *(v78 + 4) = v68;
          _os_log_impl(&_mh_execute_header, v77, v76, "BlastDoor processing thumbnail %ld", v78, 0xCu);
        }

        v187 = *(v3 + 180);
        v210 = *(v0 + 1544);
        v205 = *(v0 + 960);
        v183 = *(v0 + 936);
        v191 = *(v0 + 824);
        v195 = *(v0 + 808);
        v199 = *(v0 + 952);
        v218 = v68;
        v79 = *(v0 + 736);
        v80 = *(v0 + 728);
        v81 = *(v0 + 712);
        v82 = *(v0 + 704);
        v155 = *(v0 + 696);
        v156 = *(v0 + 680);
        v83 = *(v0 + 672);
        v84 = *(v0 + 664);
        v159 = *(v0 + 656);
        v163 = *(v0 + 640);
        v154 = *(v0 + 632);
        v167 = *(v0 + 624);
        v171 = *(v0 + 608);
        v175 = *(v0 + 600);
        v179 = *(v0 + 528);

        sub_10002EACC();
        sub_10002EB0C();
        type metadata accessor for CVBuffer(0);
        *(&v223 + 1) = v85;
        *&v224 = &protocol witness table for CVBufferRef;
        *&v222 = v74;
        v86 = sub_10002E75C();
        (*(*(v86 - 8) + 56))(v83, 1, 1, v86);
        v87 = v74;
        sub_10002E76C();
        v88 = *v151;
        (*v151)(v80, v79, v81);
        sub_10002E2AC();
        v88(v80, v79, v81);
        sub_10002E2CC();
        (*v150)(v155, v82, v156);
        (*v149)(v159, v84, v163);
        (*v148)(v167, v154, v171);
        sub_10002E3AC();
        sub_10002E2EC();
        v89 = v199(v191, v195);
        v1 = *(v0 + 1160);
        v153 = v87;
        if (v89 == v210)
        {
          v129 = *(v0 + 1152);
          v168 = *(v0 + 1112);
          v172 = *(v0 + 944);
          v184 = *(v0 + 920);
          v130 = *(v0 + 824);
          v131 = *(v0 + 808);
          v207 = *(v0 + 720);
          v214 = *(v0 + 712);
          v221 = *(v0 + 736);
          v196 = *(v0 + 680);
          v201 = *(v0 + 704);
          v188 = *(v0 + 640);
          v192 = *(v0 + 664);
          v176 = *(v0 + 608);
          v180 = *(v0 + 632);
          v132 = *(v0 + 600);
          v133 = *(v0 + 592);
          v134 = *(v0 + 576);
          v160 = *(v0 + 568);
          v164 = *(v0 + 552);
          v135 = *(v0 + 544);
          v136 = *(v0 + 536);

          (*v152)(v130, v131);
          (*v142)(v133, v132, v134);
          sub_10002A20C(&qword_100043328, &type metadata accessor for VideoPreview);
          sub_10002E55C();
          sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
          sub_10002E9DC();
          (*v143)(v160, v164);
          *(v0 + 504) = 0;
          sub_10002E9EC();

          (*v144)(v132, v134);
          (*v145)(v180, v176);
          (*v146)(v192, v188);
          (*v147)(v201, v196);
          (*(v207 + 8))(v221, v214);
          goto LABEL_27;
        }

        (*v152)(*(v0 + 824), *(v0 + 808));
        v90 = [v1 copyNextSampleBuffer];
        v91 = v218 + 1;
        if (__OFADD__(v218, 1))
        {
          goto LABEL_62;
        }

        v92 = v90;
        v219 = v218 + 1;
        if (v90)
        {
          v93 = *(v0 + 1540) != *(v0 + 1544) && v91 == *(v0 + 1048);
          v94 = v93;
        }

        else
        {
          v94 = 1;
        }

        v95 = *(v0 + 568);
        v211 = *(v0 + 552);
        v96 = *(v0 + 544);
        v97 = *(v0 + 536);
        (*v142)(*(v0 + 592), *(v0 + 600), *(v0 + 576));
        sub_10002A20C(&qword_100043328, &type metadata accessor for VideoPreview);
        sub_10002E55C();
        sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
        sub_10002E9DC();
        (*v143)(v95, v211);
        v98 = *(v0 + 704);
        v206 = *(v0 + 664);
        v212 = *(v0 + 680);
        v200 = *(v0 + 640);
        v99 = *(v0 + 632);
        v100 = *(v0 + 608);
        v101 = *(v0 + 600);
        v102 = *(v0 + 576);
        if (v94)
        {
          v103 = *(v0 + 704);
          v104 = *(v0 + 536);
          *(v0 + 496) = 0;
          sub_10002E9EC();

          (*v144)(v101, v102);
          (*v145)(v99, v100);
          (*v146)(v206, v200);
          (*v147)(v103, v212);
        }

        else
        {

          (*v144)(v101, v102);
          (*v145)(v99, v100);
          (*v146)(v206, v200);
          (*v147)(v98, v212);
        }

        v68 = v219;
        if (!v92)
        {
          break;
        }

        v105 = *(v0 + 1048);
        v106 = *(v0 + 1544);
        v107 = *(v0 + 1540);
        v108 = v92;
        v30 = v108;
        v93 = v107 == v106;
        v3 = v0 + 1384;
        if (!v93 && v219 == v105)
        {
          goto LABEL_25;
        }

        if (!CMSampleBufferGetNumSamples(v108))
        {
          goto LABEL_34;
        }
      }

      v137 = *(v0 + 1160);
      v138 = *(v0 + 1152);
      v139 = *(v0 + 1112);
      v140 = *(v0 + 944);
      v141 = *(v0 + 920);
      (*(*(v0 + 720) + 8))(*(v0 + 736), *(v0 + 712));
    }

    else
    {
LABEL_25:
      v31 = *(v0 + 1160);
      v32 = *(v0 + 1152);
      v33 = *(v0 + 1112);
      v34 = *(v0 + 944);
      v35 = *(v0 + 920);
      v36 = *(v0 + 736);
      v37 = *(v0 + 720);
      v38 = *(v0 + 712);

      (*(v37 + 8))(v36, v38);
    }

LABEL_27:
    v39 = *(v0 + 904);
    v40 = *(v0 + 880);
    v41 = *(v0 + 856);
    v42 = *(v0 + 848);
    v43 = *(v0 + 840);
    v44 = *(v0 + 832);
    v45 = *(v0 + 824);
    v46 = *(v0 + 800);
    v47 = *(v0 + 776);
    v48 = *(v0 + 768);
    v157 = *(v0 + 760);
    v161 = *(v0 + 736);
    v165 = *(v0 + 728);
    v169 = *(v0 + 704);
    v173 = *(v0 + 696);
    v177 = *(v0 + 672);
    v181 = *(v0 + 664);
    v185 = *(v0 + 656);
    v189 = *(v0 + 632);
    v193 = *(v0 + 624);
    v197 = *(v0 + 600);
    v203 = *(v0 + 592);
    v208 = *(v0 + 568);
    v215 = *(v0 + 544);

    v49 = *(v0 + 8);
  }

  else
  {
    v50 = *(v0 + 1160);
    v51 = *(v0 + 1152);
    v52 = *(v0 + 1112);
    v53 = *(v0 + 944);
    v54 = *(v0 + 920);
    v216 = *(v0 + 736);
    v55 = *(v0 + 720);
    v56 = *(v0 + 712);

    sub_10002E7DC();
    sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();

    (*(v55 + 8))(v216, v56);
LABEL_29:
    v57 = *(v0 + 904);
    v58 = *(v0 + 880);
    v59 = *(v0 + 856);
    v60 = *(v0 + 848);
    v61 = *(v0 + 840);
    v62 = *(v0 + 832);
    v63 = *(v0 + 824);
    v64 = *(v0 + 800);
    v65 = *(v0 + 776);
    v66 = *(v0 + 768);
    v158 = *(v0 + 760);
    v162 = *(v0 + 736);
    v166 = *(v0 + 728);
    v170 = *(v0 + 704);
    v174 = *(v0 + 696);
    v178 = *(v0 + 672);
    v182 = *(v0 + 664);
    v186 = *(v0 + 656);
    v190 = *(v0 + 632);
    v194 = *(v0 + 624);
    v198 = *(v0 + 600);
    v204 = *(v0 + 592);
    v209 = *(v0 + 568);
    v217 = *(v0 + 544);

    v49 = *(v0 + 8);
  }

  return v49();
}

uint64_t sub_100026E40()
{
  v1 = v0[116];
  v2 = v0[115];
  swift_willThrow();

  v3 = v0[113];
  v4 = v0[110];
  v5 = v0[107];
  v6 = v0[106];
  v7 = v0[105];
  v8 = v0[104];
  v9 = v0[103];
  v10 = v0[100];
  v11 = v0[97];
  v12 = v0[96];
  v15 = v0[116];
  v16 = v0[95];
  v17 = v0[92];
  v18 = v0[91];
  v19 = v0[88];
  v20 = v0[87];
  v21 = v0[84];
  v22 = v0[83];
  v23 = v0[82];
  v24 = v0[79];
  v25 = v0[78];
  v26 = v0[75];
  v27 = v0[74];
  v28 = v0[71];
  v29 = v0[68];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100027038()
{
  v1 = v0[118];
  v2 = v0[115];
  v3 = v0[100];
  v4 = v0[99];
  v5 = v0[98];

  (*(v4 + 8))(v3, v5);
  v6 = v0[113];
  v7 = v0[110];
  v8 = v0[107];
  v9 = v0[106];
  v10 = v0[105];
  v11 = v0[104];
  v12 = v0[103];
  v13 = v0[100];
  v14 = v0[97];
  v15 = v0[96];
  v18 = v0[124];
  v19 = v0[95];
  v20 = v0[92];
  v21 = v0[91];
  v22 = v0[88];
  v23 = v0[87];
  v24 = v0[84];
  v25 = v0[83];
  v26 = v0[82];
  v27 = v0[79];
  v28 = v0[78];
  v29 = v0[75];
  v30 = v0[74];
  v31 = v0[71];
  v32 = v0[68];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100027258()
{
  v1 = v0[118];
  v2 = v0[115];
  v3 = v0[100];
  v4 = v0[99];
  v5 = v0[98];

  (*(v4 + 8))(v3, v5);
  v6 = v0[113];
  v7 = v0[110];
  v8 = v0[107];
  v9 = v0[106];
  v10 = v0[105];
  v11 = v0[104];
  v12 = v0[103];
  v13 = v0[100];
  v14 = v0[97];
  v15 = v0[96];
  v18 = v0[129];
  v19 = v0[95];
  v20 = v0[92];
  v21 = v0[91];
  v22 = v0[88];
  v23 = v0[87];
  v24 = v0[84];
  v25 = v0[83];
  v26 = v0[82];
  v27 = v0[79];
  v28 = v0[78];
  v29 = v0[75];
  v30 = v0[74];
  v31 = v0[71];
  v32 = v0[68];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100027478()
{
  v1 = *(v0 + 920);

  v2 = *(v0 + 904);
  v3 = *(v0 + 880);
  v4 = *(v0 + 856);
  v5 = *(v0 + 848);
  v6 = *(v0 + 840);
  v7 = *(v0 + 832);
  v8 = *(v0 + 824);
  v9 = *(v0 + 800);
  v10 = *(v0 + 776);
  v11 = *(v0 + 768);
  v14 = *(v0 + 1080);
  v15 = *(v0 + 760);
  v16 = *(v0 + 736);
  v17 = *(v0 + 728);
  v18 = *(v0 + 704);
  v19 = *(v0 + 696);
  v20 = *(v0 + 672);
  v21 = *(v0 + 664);
  v22 = *(v0 + 656);
  v23 = *(v0 + 632);
  v24 = *(v0 + 624);
  v25 = *(v0 + 600);
  v26 = *(v0 + 592);
  v27 = *(v0 + 568);
  v28 = *(v0 + 544);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100027670()
{
  v1 = v0[118];
  v2 = v0[115];
  v3 = v0[92];
  v4 = v0[90];
  v5 = v0[89];

  (*(v4 + 8))(v3, v5);
  v6 = v0[113];
  v7 = v0[110];
  v8 = v0[107];
  v9 = v0[106];
  v10 = v0[105];
  v11 = v0[104];
  v12 = v0[103];
  v13 = v0[100];
  v14 = v0[97];
  v15 = v0[96];
  v18 = v0[138];
  v19 = v0[95];
  v20 = v0[92];
  v21 = v0[91];
  v22 = v0[88];
  v23 = v0[87];
  v24 = v0[84];
  v25 = v0[83];
  v26 = v0[82];
  v27 = v0[79];
  v28 = v0[78];
  v29 = v0[75];
  v30 = v0[74];
  v31 = v0[71];
  v32 = v0[68];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100027890()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 920);
  v3 = *(v0 + 768);
  v4 = *(v0 + 752);
  v5 = *(v0 + 744);
  v6 = *(v0 + 736);
  v7 = *(v0 + 720);
  v8 = *(v0 + 712);

  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v6, v8);
  v9 = *(v0 + 904);
  v10 = *(v0 + 880);
  v11 = *(v0 + 856);
  v12 = *(v0 + 848);
  v13 = *(v0 + 840);
  v14 = *(v0 + 832);
  v15 = *(v0 + 824);
  v16 = *(v0 + 800);
  v17 = *(v0 + 776);
  v18 = *(v0 + 768);
  v21 = *(v0 + 1144);
  v22 = *(v0 + 760);
  v23 = *(v0 + 736);
  v24 = *(v0 + 728);
  v25 = *(v0 + 704);
  v26 = *(v0 + 696);
  v27 = *(v0 + 672);
  v28 = *(v0 + 664);
  v29 = *(v0 + 656);
  v30 = *(v0 + 632);
  v31 = *(v0 + 624);
  v32 = *(v0 + 600);
  v33 = *(v0 + 592);
  v34 = *(v0 + 568);
  v35 = *(v0 + 544);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100027ADC()
{
  v1 = *(v0 + 1160);
  v2 = *(v0 + 944);
  v3 = *(v0 + 920);
  v4 = *(v0 + 736);
  v5 = *(v0 + 720);
  v6 = *(v0 + 712);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 904);
  v8 = *(v0 + 880);
  v9 = *(v0 + 856);
  v10 = *(v0 + 848);
  v11 = *(v0 + 840);
  v12 = *(v0 + 832);
  v13 = *(v0 + 824);
  v14 = *(v0 + 800);
  v15 = *(v0 + 776);
  v16 = *(v0 + 768);
  v19 = *(v0 + 1184);
  v20 = *(v0 + 760);
  v21 = *(v0 + 736);
  v22 = *(v0 + 728);
  v23 = *(v0 + 704);
  v24 = *(v0 + 696);
  v25 = *(v0 + 672);
  v26 = *(v0 + 664);
  v27 = *(v0 + 656);
  v28 = *(v0 + 632);
  v29 = *(v0 + 624);
  v30 = *(v0 + 600);
  v31 = *(v0 + 592);
  v32 = *(v0 + 568);
  v33 = *(v0 + 544);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100027D0C()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 1556);
  v5 = sub_10002EAFC(1, *(v0 + 1552));
  *(v0 + 1272) = v2;
  *(v0 + 1280) = v4;
  *(v0 + 1288) = v1;
  *(v0 + 1296) = v5;
  *(v0 + 1304) = v6;
  *(v0 + 1308) = v7;
  *(v0 + 1312) = v8;
  [v3 setTimeRange:v0 + 1272];
  v9 = *(v0 + 1160);
  [*(v0 + 1112) startReading];
  v10 = [v9 copyNextSampleBuffer];
  if (v10)
  {
    v11 = *(v0 + 1048);
    v12 = *(v0 + 1544);
    v13 = *(v0 + 1540);
    v14 = v10;
    v15 = v14;
    if (v13 == v12 || v11)
    {
      v53 = 0;
      v54 = *(v0 + 688);
      v121 = (v54 + 16);
      v122 = (*(v0 + 720) + 16);
      v55 = *(v0 + 648);
      v56 = *(v0 + 616);
      v57 = *(v0 + 584);
      v119 = (v56 + 16);
      v120 = (v55 + 16);
      v123 = (*(v0 + 816) + 8);
      v113 = (v57 + 16);
      v114 = (*(v0 + 560) + 8);
      v115 = (v57 + 8);
      v116 = (v56 + 8);
      v117 = (v55 + 8);
      v118 = (v54 + 8);
      if (CMSampleBufferGetNumSamples(v14))
      {
        goto LABEL_14;
      }

      do
      {
LABEL_13:
      }

      while (!CMSampleBufferGetNumSamples(v15));
      while (1)
      {
LABEL_14:

        v58 = sub_10002EABC();
        if (!v58)
        {
          v94 = *(v0 + 1160);
          v95 = *(v0 + 1152);
          v96 = *(v0 + 1112);
          v97 = *(v0 + 944);
          v98 = *(v0 + 920);
          v99 = *(v0 + 720);
          v183 = *(v0 + 712);
          v190 = *(v0 + 736);

          sub_10002E7DC();
          sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion);
          swift_allocError();
          sub_10002E7CC();
          swift_willThrow();

          (*(v99 + 8))(v190, v183);
          goto LABEL_8;
        }

        v59 = v58;
        v60 = *(v0 + 1088);
        v61 = sub_10002EA6C();
        v62 = sub_10002EB4C();
        if (os_log_type_enabled(v62, v61))
        {
          v63 = swift_slowAlloc();
          *v63 = 134217984;
          *(v63 + 4) = v53;
          _os_log_impl(&_mh_execute_header, v62, v61, "BlastDoor processing thumbnail %ld", v63, 0xCu);
        }

        v158 = *(v0 + 1564);
        v180 = *(v0 + 1544);
        v170 = *(v0 + 952);
        v175 = *(v0 + 960);
        v154 = *(v0 + 936);
        v162 = *(v0 + 824);
        v166 = *(v0 + 808);
        v64 = *(v0 + 736);
        v188 = v53;
        v65 = *(v0 + 728);
        v66 = *(v0 + 712);
        v67 = *(v0 + 704);
        v126 = *(v0 + 696);
        v127 = *(v0 + 680);
        v68 = *(v0 + 672);
        v69 = *(v0 + 664);
        v130 = *(v0 + 656);
        v134 = *(v0 + 640);
        v125 = *(v0 + 632);
        v138 = *(v0 + 624);
        v142 = *(v0 + 608);
        v146 = *(v0 + 600);
        v150 = *(v0 + 528);

        sub_10002EACC();
        sub_10002EB0C();
        type metadata accessor for CVBuffer(0);
        v70 = sub_10002E75C();
        (*(*(v70 - 8) + 56))(v68, 1, 1, v70);
        v71 = v59;
        sub_10002E76C();
        v72 = *v122;
        (*v122)(v65, v64, v66);
        sub_10002E2AC();
        v72(v65, v64, v66);
        sub_10002E2CC();
        (*v121)(v126, v67, v127);
        (*v120)(v130, v69, v134);
        (*v119)(v138, v125, v142);
        sub_10002E3AC();
        sub_10002E2EC();
        v73 = v170(v162, v166);
        v74 = *(v0 + 1160);
        v124 = v71;
        if (v73 == v180)
        {
          v100 = *(v0 + 1152);
          v139 = *(v0 + 1112);
          v143 = *(v0 + 944);
          v155 = *(v0 + 920);
          v101 = *(v0 + 824);
          v102 = *(v0 + 808);
          v184 = *(v0 + 712);
          v191 = *(v0 + 736);
          v172 = *(v0 + 704);
          v177 = *(v0 + 720);
          v163 = *(v0 + 664);
          v167 = *(v0 + 680);
          v159 = *(v0 + 640);
          v147 = *(v0 + 608);
          v151 = *(v0 + 632);
          v103 = *(v0 + 600);
          v104 = *(v0 + 592);
          v105 = *(v0 + 576);
          v131 = *(v0 + 568);
          v135 = *(v0 + 552);
          v106 = *(v0 + 544);
          v107 = *(v0 + 536);

          (*v123)(v101, v102);
          (*v113)(v104, v103, v105);
          sub_10002A20C(&qword_100043328, &type metadata accessor for VideoPreview);
          sub_10002E55C();
          sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
          sub_10002E9DC();
          (*v114)(v131, v135);
          *(v0 + 504) = 0;
          sub_10002E9EC();

          (*v115)(v103, v105);
          (*v116)(v151, v147);
          (*v117)(v163, v159);
          (*v118)(v172, v167);
          (*(v177 + 8))(v191, v184);
          goto LABEL_6;
        }

        (*v123)(*(v0 + 824), *(v0 + 808));
        v75 = [v74 copyNextSampleBuffer];
        v76 = v188 + 1;
        if (__OFADD__(v188, 1))
        {
          __break(1u);
        }

        v77 = v75;
        v189 = v188 + 1;
        if (v75)
        {
          v78 = *(v0 + 1540) != *(v0 + 1544) && v76 == *(v0 + 1048);
          v79 = v78;
        }

        else
        {
          v79 = 1;
        }

        v80 = *(v0 + 568);
        v181 = *(v0 + 552);
        v81 = *(v0 + 544);
        v82 = *(v0 + 536);
        (*v113)(*(v0 + 592), *(v0 + 600), *(v0 + 576));
        sub_10002A20C(&qword_100043328, &type metadata accessor for VideoPreview);
        sub_10002E55C();
        sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
        sub_10002E9DC();
        (*v114)(v80, v181);
        v83 = *(v0 + 704);
        v176 = *(v0 + 664);
        v182 = *(v0 + 680);
        v171 = *(v0 + 640);
        v84 = *(v0 + 632);
        v85 = *(v0 + 608);
        v86 = *(v0 + 600);
        v87 = *(v0 + 576);
        if (v79)
        {
          v88 = *(v0 + 704);
          v89 = *(v0 + 536);
          *(v0 + 496) = 0;
          sub_10002E9EC();

          (*v115)(v86, v87);
          (*v116)(v84, v85);
          (*v117)(v176, v171);
          (*v118)(v88, v182);
        }

        else
        {

          (*v115)(v86, v87);
          (*v116)(v84, v85);
          (*v117)(v176, v171);
          (*v118)(v83, v182);
        }

        if (!v77)
        {
          break;
        }

        v90 = *(v0 + 1048);
        v91 = *(v0 + 1544);
        v92 = *(v0 + 1540);
        v93 = v77;
        v15 = v93;
        v78 = v92 == v91;
        v53 = v189;
        if (!v78 && v189 == v90)
        {
          goto LABEL_4;
        }

        if (!CMSampleBufferGetNumSamples(v93))
        {
          goto LABEL_13;
        }
      }

      v108 = *(v0 + 1160);
      v109 = *(v0 + 1152);
      v110 = *(v0 + 1112);
      v111 = *(v0 + 944);
      v112 = *(v0 + 920);
      (*(*(v0 + 720) + 8))(*(v0 + 736), *(v0 + 712));
    }

    else
    {
LABEL_4:
      v16 = *(v0 + 1160);
      v17 = *(v0 + 1152);
      v18 = *(v0 + 1112);
      v19 = *(v0 + 944);
      v20 = *(v0 + 920);
      v21 = *(v0 + 736);
      v22 = *(v0 + 720);
      v23 = *(v0 + 712);

      (*(v22 + 8))(v21, v23);
    }

LABEL_6:
    v24 = *(v0 + 904);
    v25 = *(v0 + 880);
    v26 = *(v0 + 856);
    v27 = *(v0 + 848);
    v28 = *(v0 + 840);
    v29 = *(v0 + 832);
    v30 = *(v0 + 824);
    v31 = *(v0 + 800);
    v32 = *(v0 + 776);
    v33 = *(v0 + 768);
    v128 = *(v0 + 760);
    v132 = *(v0 + 736);
    v136 = *(v0 + 728);
    v140 = *(v0 + 704);
    v144 = *(v0 + 696);
    v148 = *(v0 + 672);
    v152 = *(v0 + 664);
    v156 = *(v0 + 656);
    v160 = *(v0 + 632);
    v164 = *(v0 + 624);
    v168 = *(v0 + 600);
    v173 = *(v0 + 592);
    v178 = *(v0 + 568);
    v185 = *(v0 + 544);

    v34 = *(v0 + 8);
  }

  else
  {
    v35 = *(v0 + 1160);
    v36 = *(v0 + 1152);
    v37 = *(v0 + 1112);
    v38 = *(v0 + 944);
    v39 = *(v0 + 920);
    v186 = *(v0 + 736);
    v40 = *(v0 + 720);
    v41 = *(v0 + 712);

    sub_10002E7DC();
    sub_10002A20C(&qword_100042EA8, &type metadata accessor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();

    (*(v40 + 8))(v186, v41);
LABEL_8:
    v42 = *(v0 + 904);
    v43 = *(v0 + 880);
    v44 = *(v0 + 856);
    v45 = *(v0 + 848);
    v46 = *(v0 + 840);
    v47 = *(v0 + 832);
    v48 = *(v0 + 824);
    v49 = *(v0 + 800);
    v50 = *(v0 + 776);
    v51 = *(v0 + 768);
    v129 = *(v0 + 760);
    v133 = *(v0 + 736);
    v137 = *(v0 + 728);
    v141 = *(v0 + 704);
    v145 = *(v0 + 696);
    v149 = *(v0 + 672);
    v153 = *(v0 + 664);
    v157 = *(v0 + 656);
    v161 = *(v0 + 632);
    v165 = *(v0 + 624);
    v169 = *(v0 + 600);
    v174 = *(v0 + 592);
    v179 = *(v0 + 568);
    v187 = *(v0 + 544);

    v34 = *(v0 + 8);
  }

  return v34();
}

uint64_t sub_100028BA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000106D4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10000C0EC(&qword_100042EC0, &qword_100034A10);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10001FDE0(0, &qword_100043368, AVAssetTrack_ptr);
    **(*(v4 + 64) + 40) = sub_10002E99C();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_100028C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000C0EC(&qword_1000432E8, &qword_100034C30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000E7CC(a3, v27 - v11, &qword_1000432E8, &qword_100034C30);
  v13 = sub_10002E9CC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000E76C(v12, &qword_1000432E8, &qword_100034C30);
  }

  else
  {
    sub_10002E9BC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10002E9AC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10002E8CC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000E76C(a3, &qword_1000432E8, &qword_100034C30);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000E76C(a3, &qword_1000432E8, &qword_100034C30);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100028F9C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100029094;

  return v7(a1);
}

uint64_t sub_100029094()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100029194()
{
  v18 = sub_10002E71C();
  v1 = *(v18 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v17 = sub_10002E2FC();
  v5 = *(v17 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v16 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  v14 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v3, v18);
  (*(v5 + 8))(v0 + v7, v17);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v16, v13 | 7);
}

uint64_t sub_10002937C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10002E71C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10002E2FC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_10000C0EC(&qword_1000432E0, &qword_100034C28) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10002953C;

  return sub_1000207CC(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_10002953C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100029630()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100029668(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002A258;

  return sub_100028F9C(a1, v5);
}

uint64_t sub_100029720()
{
  v17 = sub_10002E71C();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_10002E2FC();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_10000C0EC(&qword_1000432E0, &qword_100034C28);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v15, v13 | 7);
}

uint64_t sub_100029900(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10002E71C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10002E2FC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_10000C0EC(&qword_1000432E0, &qword_100034C28) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002953C;

  return sub_10002118C(a1, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_100029AAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C0EC(&qword_100043360, &unk_100034CD0);
  v36 = a2;
  result = sub_10002EC2C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_10001FD38(v25, v37);
      }

      else
      {
        sub_100019DF8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_10002EDCC();
      sub_10002E8FC();
      result = sub_10002EDEC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_10001FD38(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_100029D64(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001FAA0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100029F20();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100029AAC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10001FAA0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_10002ED7C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_1000121A8(v23);

    return sub_10001FD38(a1, v23);
  }

  else
  {
    sub_100029EB4(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_100029EB4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10001FD38(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_100029F20()
{
  v1 = v0;
  sub_10000C0EC(&qword_100043360, &unk_100034CD0);
  v2 = *v0;
  v3 = sub_10002EC1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100019DF8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10001FD38(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_10002A0C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C0EC(&qword_100043360, &unk_100034CD0);
    v3 = sub_10002EC3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E7CC(v4, &v13, &qword_100043310, &qword_100034C90);
      v5 = v13;
      v6 = v14;
      result = sub_10001FAA0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001FD38(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10002A20C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10002A25C(uint64_t a1@<X8>)
{
  v4 = sub_10000C0EC(&qword_100042EA0, &qword_100034CE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v100 - v10;
  __chkstk_darwin(v9);
  v117 = v100 - v12;
  v116 = sub_10002E41C();
  v119 = *(v116 - 8);
  v13 = *(v119 + 64);
  __chkstk_darwin(v116);
  v118 = v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10002E63C();
  v122 = *(v120 - 8);
  v15 = *(v122 + 64);
  __chkstk_darwin(v120);
  v126 = v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_10002E50C();
  v125 = *(v123 - 8);
  v17 = *(v125 + 64);
  __chkstk_darwin(v123);
  v128 = v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_10002E52C();
  v19 = *(v127 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v127);
  v121 = v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000C0EC(&qword_100043370, &qword_100034CE8);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v24 = sub_10000C0EC(&qword_100043378, &qword_100034CF0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v26 = sub_10002E8AC();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v28 = v1[6];
  v29 = v1[7];
  if (v29 >> 60 == 15)
  {
    sub_10002E54C();
    if (!v2)
    {
      v30 = enum case for SMSCTPart.Content.attachment(_:);
      v31 = sub_10002E7FC();
      (*(*(v31 - 8) + 104))(a1, v30, v31);
    }

    return;
  }

  v114 = v19;
  v115 = a1;
  v124 = v28;
  v129 = v29;
  v32 = v1[1];
  if (!v32)
  {
    goto LABEL_32;
  }

  v33 = *v1;
  if (*v1 == 0x616C702F74786574 && v32 == 0xEA00000000006E69 || (v34 = *v1, v35 = v1[1], (sub_10002ED5C() & 1) != 0))
  {
    v36 = v124;
    v37 = v129;
    sub_10000F7EC(v124, v129);
    sub_10002E89C();
    sub_10002E88C();
    v38 = v115;
    sub_10002E43C();
    if (v2)
    {
      v39 = v36;
    }

    else
    {
      v40 = v36;
      v41 = enum case for SMSCTPart.Content.plain(_:);
      v42 = sub_10002E7FC();
      (*(*(v42 - 8) + 104))(v38, v41, v42);
      v39 = v40;
    }

    v43 = v37;
    goto LABEL_36;
  }

  if (v33 == 0xD000000000000018 && 0x80000001000339B0 == v32 || (sub_10002ED5C() & 1) != 0)
  {
    v44 = v124;
    v45 = v129;
    sub_1000196A8(v124, v129);
    sub_10000F7EC(v44, v45);
    sub_10002E15C();
    if (v2)
    {
LABEL_16:
      v39 = v44;
LABEL_17:
      v43 = v45;
LABEL_36:
      sub_10000F894(v39, v43);
      return;
    }

    v46 = v115;
    sub_10002E67C();
    sub_10000F894(v44, v45);
    v47 = &enum case for SMSCTPart.Content.attributedChipList(_:);
LABEL_19:
    v48 = *v47;
    v49 = sub_10002E7FC();
    (*(*(v49 - 8) + 104))(v46, v48, v49);
    return;
  }

  if (v33 == 0xD000000000000019 && 0x8000000100033990 == v32 || (sub_10002ED5C() & 1) != 0)
  {
    v44 = v124;
    v45 = v129;
    sub_1000196A8(v124, v129);
    sub_10000F7EC(v44, v45);
    sub_10002E24C();
    if (v2)
    {
      goto LABEL_16;
    }

    v46 = v115;
    sub_10002E69C();
    sub_10000F894(v44, v45);
    v47 = &enum case for SMSCTPart.Content.attributedRichCards(_:);
    goto LABEL_19;
  }

  if ((v33 != 0xD000000000000010 || 0x80000001000338D0 != v32) && (sub_10002ED5C() & 1) == 0)
  {
LABEL_32:
    v60 = v1[8];
    v61 = v1[9];
    v62 = v124;
    v59 = v129;
    sub_1000196A8(v124, v129);
    sub_1000196A8(v62, v59);

    v63 = v115;
    sub_10002E54C();
    if (!v2)
    {
      v64 = enum case for SMSCTPart.Content.attachment(_:);
      v65 = sub_10002E7FC();
      (*(*(v65 - 8) + 104))(v63, v64, v65);
    }

    v39 = v62;
    goto LABEL_35;
  }

  v50 = v124;
  v51 = v129;
  sub_10000F7EC(v124, v129);
  sub_10002E89C();
  sub_10002E88C();
  if (!v52)
  {
    (*(v114 + 56))(v8, 1, 1, v127);
    v46 = v115;
    sub_10002E3FC();
    sub_10000F894(v50, v51);
    if (v2)
    {
      return;
    }

    goto LABEL_74;
  }

  v53 = [objc_opt_self() sharedInstance];
  v54 = objc_allocWithZone(MBDSMSToSuperParserContext);
  v55 = sub_10002E84C();

  v56 = [v54 initWithContent:v55];

  if (![v53 parseContext:v56])
  {
    (*(v114 + 56))(v11, 1, 1, v127);
    v46 = v115;
    sub_10002E3FC();
    v45 = v129;
    if (v2)
    {

      v39 = v124;
      goto LABEL_17;
    }

    sub_10000F894(v124, v129);

    goto LABEL_74;
  }

  v57 = [v56 body];
  v58 = v121;
  _AttributedString.init(fromNSAttributedString:)(v57, v121);
  v59 = v129;
  if (v2)
  {

    v39 = v124;
LABEL_35:
    v43 = v59;
    goto LABEL_36;
  }

  v106 = v53;
  v105 = v56;
  v66 = [v56 orderedParts];
  v67 = sub_10002E99C();

  v68 = *(v67 + 16);
  if (!v68)
  {
    v108 = &_swiftEmptyArrayStorage;
    v97 = v124;
    v71 = v127;
LABEL_76:

    v98 = v114;
    v99 = v117;
    (*(v114 + 16))(v117, v58, v71);
    (*(v98 + 56))(v99, 0, 1, v71);
    v46 = v115;
    sub_10002E3FC();
    (*(v98 + 8))(v58, v71);
    sub_10000F894(v97, v59);

LABEL_74:
    v47 = &enum case for SMSCTPart.Content.smil(_:);
    goto LABEL_19;
  }

  v69 = 0;
  v70 = v67 + 32;
  v110 = v125 + 32;
  v109 = v122 + 32;
  v100[1] = v119 + 32;
  v108 = &_swiftEmptyArrayStorage;
  v71 = v127;
  v104 = v67;
  v102 = v68;
  v101 = v67 + 32;
  while (1)
  {
    if (v69 >= *(v67 + 16))
    {
      goto LABEL_83;
    }

    v103 = v69;
    sub_100019DF8(v70 + 32 * v69, v130);
    sub_10001FDE0(0, &qword_100043380, off_10003CC90);
    if (!swift_dynamicCast())
    {

      sub_10002E7DC();
      sub_10000EFF0();
      swift_allocError();
      sub_10002E7CC();
      swift_willThrow();

      sub_10000F894(v124, v59);
      (*(v114 + 8))(v58, v71);
      return;
    }

    v107 = v131;
    v72 = [v131 textParts];
    v73 = sub_10002E99C();

    v112 = *(v73 + 16);
    if (v112)
    {
      break;
    }

    v76 = &_swiftEmptyArrayStorage;
LABEL_57:
    v112 = v76;

    v83 = [v107 attachmentParts];
    v84 = sub_10002E99C();

    v113 = *(v84 + 16);
    if (v113)
    {
      v85 = 0;
      v86 = v84 + 32;
      v87 = &_swiftEmptyArrayStorage;
      while (v85 < *(v84 + 16))
      {
        sub_100019DF8(v86, v130);
        sub_10001FDE0(0, &qword_100043390, off_10003CC88);
        if (!swift_dynamicCast())
        {

          sub_10002E7DC();
          sub_10000EFF0();
          swift_allocError();
          goto LABEL_79;
        }

        v88 = v131;
        v89 = [v131 contentLocation];
        sub_10002E87C();

        sub_10002E62C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = sub_10002C67C(0, v87[2] + 1, 1, v87, &qword_1000433A0, &qword_100034D00, &type metadata accessor for SMSParserAttachmentPart);
        }

        v91 = v87[2];
        v90 = v87[3];
        if (v91 >= v90 >> 1)
        {
          v87 = sub_10002C67C(v90 > 1, v91 + 1, 1, v87, &qword_1000433A0, &qword_100034D00, &type metadata accessor for SMSParserAttachmentPart);
        }

        ++v85;

        v87[2] = v91 + 1;
        (*(v122 + 32))(v87 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v91, v126, v120);
        v86 += 32;
        if (v113 == v85)
        {
          goto LABEL_66;
        }
      }

LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }

LABEL_66:

    sub_10002E40C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v108 = sub_10002C67C(0, v108[2] + 1, 1, v108, &qword_100043398, &qword_100034CF8, &type metadata accessor for SMSParserPart);
    }

    v93 = v108[2];
    v92 = v108[3];
    if (v93 >= v92 >> 1)
    {
      v108 = sub_10002C67C(v92 > 1, v93 + 1, 1, v108, &qword_100043398, &qword_100034CF8, &type metadata accessor for SMSParserPart);
    }

    v94 = v103 + 1;

    v95 = v108;
    v108[2] = v93 + 1;
    (*(v119 + 32))(v95 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v93, v118, v116);
    v69 = v94;
    v96 = v94 == v102;
    v59 = v129;
    v97 = v124;
    v71 = v127;
    v58 = v121;
    v67 = v104;
    v70 = v101;
    if (v96)
    {
      goto LABEL_76;
    }
  }

  v74 = 0;
  v75 = v73 + 32;
  v76 = &_swiftEmptyArrayStorage;
  v111 = v73;
  while (1)
  {
    if (v74 >= *(v73 + 16))
    {
      __break(1u);
      goto LABEL_82;
    }

    v113 = v75;
    sub_100019DF8(v75, v130);
    sub_10001FDE0(0, &qword_100043388, &off_10003CC98);
    if (!swift_dynamicCast())
    {
      break;
    }

    v77 = v131;
    v78 = [v131 contentLocation];
    sub_10002E87C();

    v79 = [v77 text];
    sub_10002E87C();

    sub_10002E4FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v76 = sub_10002C67C(0, v76[2] + 1, 1, v76, &qword_1000433A8, &qword_100034D08, &type metadata accessor for SMSParserTextPart);
    }

    v73 = v111;
    v80 = v113;
    v82 = v76[2];
    v81 = v76[3];
    if (v82 >= v81 >> 1)
    {
      v76 = sub_10002C67C(v81 > 1, v82 + 1, 1, v76, &qword_1000433A8, &qword_100034D08, &type metadata accessor for SMSParserTextPart);
    }

    v74 = (v74 + 1);

    v76[2] = v82 + 1;
    (*(v125 + 32))(v76 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v82, v128, v123);
    v75 = v80 + 32;
    if (v112 == v74)
    {
      goto LABEL_57;
    }
  }

  sub_10002E7DC();
  sub_10000EFF0();
  swift_allocError();
LABEL_79:
  sub_10002E7CC();
  swift_willThrow();

  sub_10000F894(v124, v129);
  (*(v114 + 8))(v121, v127);
}

uint64_t sub_10002B794()
{
  v1 = sub_10000C0EC(&qword_100042E40, &unk_100034D10);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v40 = &v37 - v6;
  v7 = sub_10000C0EC(&qword_100042E48, &unk_100033F80);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v37 - v9;
  v11 = sub_10000C0EC(&qword_100042E50, &qword_100034D20);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v41 = &v37 - v14;
  v15 = sub_10000C0EC(&qword_100042E58, &qword_100033F90);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v37 - v21;
  sub_10000C0EC(&qword_100042E80, &qword_100033FB0);
  sub_10002DF8C();
  v23 = *(v0 + 24);
  if (!v23)
  {
    (*(v16 + 8))(v22, v15);
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_8:
    v29 = &qword_100042E48;
    v30 = &unk_100033F80;
    v31 = v10;
    goto LABEL_9;
  }

  v42 = v12;
  v43 = v11;
  v39 = v5;
  v24 = *(v0 + 16);
  if ((v23 & 0x2000000000000000) == 0)
  {
    v25 = *(v0 + 16);
  }

  sub_10002E98C();
  sub_10000E6C0();
  sub_10002DF7C();
  sub_10002DF9C();
  v26 = *(v16 + 8);
  v26(v20, v15);

  v28 = v42;
  v27 = v43;
  if ((*(v42 + 48))(v10, 1, v43) == 1)
  {
    v26(v22, v15);
    goto LABEL_8;
  }

  (*(v28 + 32))(v41, v10, v27);
  swift_getKeyPath();
  sub_10002DFAC();

  sub_10002E8DC();

  v33 = v40;
  sub_10002DEFC();

  v34 = v39;
  sub_10000E7CC(v33, v39, &qword_100042E40, &unk_100034D10);
  v35 = sub_10002DF1C();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v34, 1, v35) != 1)
  {
    v38 = sub_10002DF0C();
    sub_10000E76C(v33, &qword_100042E40, &unk_100034D10);
    (*(v28 + 8))(v41, v43);
    v26(v22, v15);
    (*(v36 + 8))(v34, v35);
    return v38;
  }

  sub_10000E76C(v33, &qword_100042E40, &unk_100034D10);
  (*(v28 + 8))(v41, v43);
  v26(v22, v15);
  v31 = v34;
  v29 = &qword_100042E40;
  v30 = &unk_100034D10;
LABEL_9:
  sub_10000E76C(v31, v29, v30);
  return 0;
}

uint64_t sub_10002BD78(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x2D746E65746E6F63;
    }

    else
    {
      v3 = 1701869940;
    }

    if (v2)
    {
      v4 = 0xEA00000000006469;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000010;
    v4 = 0x8000000100033090;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 1635017060;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2 == 3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0x80000001000330B0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x2D746E65746E6F63;
    }

    else
    {
      v9 = 1701869940;
    }

    if (a2)
    {
      v8 = 0xEA00000000006469;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 1635017060;
    v6 = 0x80000001000330B0;
    if (a2 == 3)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x8000000100033090;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = sub_10002ED5C();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_10002BEFC(void *a1)
{
  v3 = v1;
  v5 = sub_10000C0EC(&qword_1000433D8, &unk_100034EA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8 - 8];
  v10 = a1[4];
  sub_1000106D4(a1, a1[3]);
  sub_10002CE94();
  sub_10002EE0C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v22) = 0;
  sub_10002ECDC();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v22) = 1;
    sub_10002ECDC();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v22) = 2;
    sub_10002ECDC();
    v22 = *(v3 + 3);
    v23 = v22;
    v21[23] = 3;
    sub_10000E7CC(&v23, v21, &qword_100042F20, &qword_100034150);
    sub_1000107DC();
    sub_10002ED1C();
    sub_10000F894(v22, *(&v22 + 1));
    v17 = v3[8];
    v18 = v3[9];
    LOBYTE(v22) = 4;
    sub_10002ECDC();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 sub_10002C14C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002CA90(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

Swift::Int sub_10002C1BC()
{
  v1 = *v0;
  sub_10002EDCC();
  sub_10002E8FC();

  return sub_10002EDEC();
}

uint64_t sub_10002C29C()
{
  *v0;
  *v0;
  *v0;
  sub_10002E8FC();
}

Swift::Int sub_10002C368()
{
  v1 = *v0;
  sub_10002EDCC();
  sub_10002E8FC();

  return sub_10002EDEC();
}

uint64_t sub_10002C444@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002D140(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10002C474(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0x8000000100033090;
  v6 = 0xD000000000000010;
  v7 = 0xE400000000000000;
  v8 = 1635017060;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001000330B0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x2D746E65746E6F63;
    v3 = 0xEA00000000006469;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_10002C510()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0xD000000000000010;
  v4 = 1635017060;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x2D746E65746E6F63;
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

uint64_t sub_10002C5A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002D140(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002C5DC(uint64_t a1)
{
  v2 = sub_10002CE94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002C618(uint64_t a1)
{
  v2 = sub_10002CE94();

  return CodingKey.debugDescription.getter(a1, v2);
}

size_t sub_10002C67C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C0EC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

void *sub_10002C858(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C0EC(&qword_1000433B8, &qword_100034D50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C0EC(&qword_1000433C0, &qword_100034D58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

__n128 sub_10002C9A0(uint64_t a1, uint64_t a2)
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

uint64_t sub_10002C9BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_10002CA18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10002CA90@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000C0EC(&qword_1000433C8, &qword_100034E98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = a1[4];
  sub_1000106D4(a1, a1[3]);
  sub_10002CE94();
  sub_10002EDFC();
  if (v2)
  {
    v43 = v2;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0xF000000000000000;
LABEL_4:
    sub_1000121A8(a1);
    v49 = v17;
    v50 = v16;
    v51 = v15;
    v52 = v14;
    v53 = v13;
    v54 = v12;
    v55 = v11;
    v56 = v18;
    v57 = 0;
    v58 = 0;
    return sub_10000E610(&v49);
  }

  LOBYTE(v49) = 0;
  v42 = sub_10002EC6C();
  v41 = v20;
  LOBYTE(v49) = 1;
  v21 = sub_10002EC6C();
  v38 = a2;
  v40 = v21;
  v39 = v22;
  LOBYTE(v49) = 2;
  v23 = sub_10002EC6C();
  v43 = 0;
  v13 = v23;
  v12 = v24;
  LOBYTE(v44) = 3;
  sub_100012260();
  v25 = v43;
  sub_10002ECAC();
  v43 = v25;
  if (v25)
  {
    (*(v6 + 8))(v9, v5);
    v11 = 0;
    v18 = 0xF000000000000000;
LABEL_9:
    v16 = v41;
    v17 = v42;
    v14 = v39;
    v15 = v40;
    goto LABEL_4;
  }

  v11 = v49;
  v18 = v50;
  sub_10000F894(0, 0xF000000000000000);
  v59 = 4;
  v26 = v43;
  v27 = sub_10002EC6C();
  v43 = v26;
  if (v26)
  {
    (*(v6 + 8))(v9, v5);
    goto LABEL_9;
  }

  v29 = v27;
  v30 = v9;
  v31 = v28;
  (*(v6 + 8))(v30, v5);
  v32 = v41;
  *&v44 = v42;
  *(&v44 + 1) = v41;
  v33 = v39;
  *&v45 = v40;
  *(&v45 + 1) = v39;
  *&v46 = v13;
  *(&v46 + 1) = v12;
  *&v47 = v11;
  *(&v47 + 1) = v18;
  *&v48 = v29;
  *(&v48 + 1) = v31;
  sub_10000E5B4(&v44, &v49);
  sub_1000121A8(a1);
  v49 = v42;
  v50 = v32;
  v51 = v40;
  v52 = v33;
  v53 = v13;
  v54 = v12;
  v55 = v11;
  v56 = v18;
  v57 = v29;
  v58 = v31;
  result = sub_10000E610(&v49);
  v34 = v47;
  v35 = v38;
  v38[2] = v46;
  v35[3] = v34;
  v35[4] = v48;
  v36 = v45;
  *v35 = v44;
  v35[1] = v36;
  return result;
}

unint64_t sub_10002CE94()
{
  result = qword_1000433D0;
  if (!qword_1000433D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000433D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SMSCTPartDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SMSCTPartDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002D03C()
{
  result = qword_1000433E0;
  if (!qword_1000433E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000433E0);
  }

  return result;
}

unint64_t sub_10002D094()
{
  result = qword_1000433E8;
  if (!qword_1000433E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000433E8);
  }

  return result;
}

unint64_t sub_10002D0EC()
{
  result = qword_1000433F0;
  if (!qword_1000433F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000433F0);
  }

  return result;
}

uint64_t sub_10002D140(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10003DE38;
  v6._object = a2;
  v4 = sub_10002EC5C(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002D1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v5 = sub_10002E74C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F74C();
  v10 = sub_10002EB6C();
  sub_10000C0EC(&qword_100042EB8, &unk_100034000);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100033FF0;
  sub_10002E70C();
  v12 = sub_10002E72C();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  v19[6] = v12;
  v19[7] = v14;
  v15 = sub_10002E6CC();
  v17 = v16;

  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_10000F798();
  *(v11 + 32) = v15;
  *(v11 + 40) = v17;
  sub_10002EA8C();
  sub_10002E03C();

  v19[4] = a1;
  v19[5] = a2;
  sub_10002E29C();
  return sub_10002E6DC();
}

uint64_t sub_10002D3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_10002E42C();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  __chkstk_darwin(v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C0EC(&qword_100043400, &unk_100035060);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v50 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v43 - v12;
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v16 = sub_10000C0EC(&qword_100043300, &qword_100034C80);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v43 - v18;
  v20 = sub_10002E78C();
  v59 = *(v20 - 8);
  v21 = *(v59 + 64);
  v22 = __chkstk_darwin(v20);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v43 - v25;
  if (sub_10002E6FC())
  {
    sub_10002EA6C();
    sub_10000F74C();
    v27 = sub_10002EB6C();
    sub_10002E04C();

    sub_10002E7DC();
    sub_10002DD44(&qword_100042EA8, &type metadata accessor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    return swift_willThrow();
  }

  else
  {
    v51 = v20;
    v29 = sub_10002E71C();
    v57 = v29;
    v58 = &protocol witness table for File;
    v30 = sub_10001FE28(v56);
    (*(*(v29 - 8) + 16))(v30, a1, v29);
    sub_10002E27C();
    v31 = sub_10002E75C();
    (*(*(v31 - 8) + 56))(v19, 1, 1, v31);
    sub_10002E76C();
    v32 = sub_10000F74C();
    v33 = sub_10002EB6C();
    sub_10002EA8C();
    sub_10002E03C();

    sub_10002E77C();
    sub_1000106D4(v56, v57);
    sub_10000C0EC(&qword_100043408, &unk_100035070);
    v34 = v52;
    sub_10002E3CC();
    if (v34)
    {
      (*(v59 + 8))(v26, v51);
      return sub_1000121A8(v56);
    }

    else
    {
      v43 = v32;
      v35 = v53;
      v36 = v55;
      if (v54 == 1)
      {
        v36 = 1;
        v35 = 0;
      }

      v52 = v35;
      if (v54 == 1)
      {
        v37 = 0;
      }

      else
      {
        v37 = v54;
      }

      v45 = v36;
      v46 = v37;
      sub_1000121A8(v56);
      v38 = sub_10002E29C();
      v44 = *(v38 - 8);
      v39 = *(v44 + 56);
      v39(v15, 1, 1, v38);
      (*(v59 + 16))(v24, v26, v51);
      (*(v48 + 104))(v6, enum case for StickerEffect.none(_:), v49);
      sub_10002E28C();
      sub_10002DBFC(v15);
      v39(v13, 0, 1, v38);
      v40 = v44;
      sub_10002DC64(v13, v15);
      v41 = v50;
      sub_10002DCD4(v15, v50);
      if ((*(v40 + 48))(v41, 1, v38) == 1)
      {
        sub_10002DBFC(v41);
        v42 = sub_10002EB6C();
        sub_10002EA8C();
        sub_10002E03C();

        sub_10002E7DC();
        sub_10002DD44(&qword_100042EA8, &type metadata accessor for Explosion);
        swift_allocError();
        sub_10002E7CC();
        swift_willThrow();
        sub_10002DBFC(v15);
        return (*(v59 + 8))(v26, v51);
      }

      else
      {
        sub_10002DBFC(v15);
        (*(v59 + 8))(v26, v51);
        return (*(v40 + 32))(v47, v41, v38);
      }
    }
  }
}

uint64_t sub_10002DB74@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10002EAAC();
  v4 = v3;
  result = sub_10002EA9C();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  return result;
}

uint64_t sub_10002DBFC(uint64_t a1)
{
  v2 = sub_10000C0EC(&qword_100043400, &unk_100035060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002DC64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C0EC(&qword_100043400, &unk_100035060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002DCD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C0EC(&qword_100043400, &unk_100035060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002DD44(unint64_t *a1, void (*a2)(uint64_t))
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