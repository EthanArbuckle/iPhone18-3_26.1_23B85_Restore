unsigned __int8 *sub_10014A138@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = sub_100046184(&qword_10021ED80, &qword_1001A3A00);
  result = sub_10014FCA0(&qword_10021ED88, &qword_10021ED80, &qword_1001A3A00);
  *(a3 + 32) = result;
  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    LOBYTE(v29) = 1;
    goto LABEL_59;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v10 = *result;
      if (v10 == 43)
      {
        if (v8 >= 1)
        {
          v19 = v8 - 1;
          if (v8 != 1)
          {
            LODWORD(a1) = 0;
            if (result)
            {
              for (i = result + 1; ; ++i)
              {
                LOBYTE(v7) = v19 != 0;
                if (!v19)
                {
                  break;
                }

                v21 = *i - 48;
                if (v21 > 9)
                {
                  goto LABEL_53;
                }

                v22 = 10 * a1;
                if (v22 != v22)
                {
                  goto LABEL_53;
                }

                LODWORD(a1) = v22 + v21;
                if (__OFADD__(v22, v21))
                {
                  goto LABEL_53;
                }

                --v19;
              }

              goto LABEL_54;
            }

LABEL_69:
            LOBYTE(v7) = 0;
            goto LABEL_54;
          }

          goto LABEL_73;
        }

        goto LABEL_77;
      }

      if (v10 != 45)
      {
        LODWORD(a1) = 0;
        if (v8)
        {
          while (1)
          {
            LOBYTE(v7) = v8 != 0;
            if (!v8)
            {
              goto LABEL_54;
            }

            v27 = *result - 48;
            if (v27 > 9)
            {
              goto LABEL_53;
            }

            v28 = 10 * a1;
            if (v28 != v28)
            {
              goto LABEL_53;
            }

            LODWORD(a1) = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              goto LABEL_53;
            }

            ++result;
            --v8;
          }
        }

        goto LABEL_74;
      }

      if (v8 >= 1)
      {
        v11 = v8 - 1;
        if (v8 != 1)
        {
          LODWORD(a1) = 0;
          if (result)
          {
            for (j = result + 1; ; ++j)
            {
              LOBYTE(v7) = v11 != 0;
              if (!v11)
              {
                break;
              }

              v13 = *j - 48;
              if (v13 > 9)
              {
                goto LABEL_53;
              }

              v14 = 10 * a1;
              if (v14 != v14)
              {
                goto LABEL_53;
              }

              LODWORD(a1) = v14 - v13;
              if (__OFSUB__(v14, v13))
              {
                goto LABEL_53;
              }

              --v11;
            }

            goto LABEL_54;
          }

          goto LABEL_69;
        }

LABEL_73:
        LODWORD(a1) = 0;
LABEL_74:
        LOBYTE(v7) = 1;
        goto LABEL_54;
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v34[0] = a1;
    v34[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (!v7)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v23 = v7 - 1;
      if (v7 != 1)
      {
        LODWORD(a1) = 0;
        for (k = v34 + 1; ; ++k)
        {
          LOBYTE(v7) = v23 != 0;
          if (!v23)
          {
            break;
          }

          v25 = *k - 48;
          if (v25 > 9)
          {
            goto LABEL_53;
          }

          v26 = 10 * a1;
          if (v26 != v26)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            goto LABEL_53;
          }

          --v23;
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (a1 != 45)
      {
        LODWORD(a1) = 0;
        if (v7)
        {
          for (m = v34; ; ++m)
          {
            v31 = v7 != 0;
            if (!v7)
            {
              break;
            }

            v32 = *m - 48;
            if (v32 > 9 || (v33 = 10 * a1, v33 != v33) || (LODWORD(a1) = v33 + v32, __OFADD__(v33, v32)))
            {
              LODWORD(a1) = 0;
              goto LABEL_68;
            }

            --v7;
          }

          goto LABEL_68;
        }

LABEL_79:
        v31 = 1;
LABEL_68:
        v35 = v31;
        goto LABEL_55;
      }

      if (!v7)
      {
        goto LABEL_76;
      }

      v15 = v7 - 1;
      if (v7 != 1)
      {
        LODWORD(a1) = 0;
        for (n = v34 + 1; ; ++n)
        {
          LOBYTE(v7) = v15 != 0;
          if (!v15)
          {
            break;
          }

          v17 = *n - 48;
          if (v17 > 9)
          {
            goto LABEL_53;
          }

          v18 = 10 * a1;
          if (v18 != v18)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            goto LABEL_53;
          }

          --v15;
        }

        goto LABEL_54;
      }
    }

LABEL_53:
    LODWORD(a1) = 0;
LABEL_54:
    v35 = v7;
LABEL_55:
    LOBYTE(v29) = v35;
    goto LABEL_56;
  }

  a1 = sub_10014DCB8(a1, a2, 10);

  v29 = HIDWORD(a1) & 1;
LABEL_56:
  if (v29)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    LODWORD(v9) = a1;
  }

LABEL_59:
  *a3 = v9;
  *(a3 + 4) = v29 & 1;
  return result;
}

unsigned __int8 *sub_10014A4B0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = sub_100046184(&qword_10021EDB0, &qword_1001A3A18);
  result = sub_10014FCA0(&qword_10021EDB8, &qword_10021EDB0, &qword_1001A3A18);
  *(a3 + 32) = result;
  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    LOBYTE(v24) = 1;
    goto LABEL_59;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v10 = *result;
      if (v10 == 43)
      {
        if (v8 >= 1)
        {
          v17 = v8 - 1;
          if (v8 != 1)
          {
            LOBYTE(a1) = 0;
            if (result)
            {
              for (i = result + 1; ; ++i)
              {
                LOBYTE(v7) = v17 != 0;
                if (!v17)
                {
                  break;
                }

                v19 = *i - 48;
                if (v19 > 9)
                {
                  goto LABEL_53;
                }

                if (((10 * a1) & 0xF00) != 0)
                {
                  goto LABEL_53;
                }

                LODWORD(a1) = (10 * a1) + v19;
                if ((a1 >> 8))
                {
                  goto LABEL_53;
                }

                --v17;
              }

              goto LABEL_54;
            }

LABEL_69:
            LOBYTE(v7) = 0;
            goto LABEL_54;
          }

          goto LABEL_73;
        }

        goto LABEL_77;
      }

      if (v10 != 45)
      {
        LOBYTE(a1) = 0;
        if (v8)
        {
          while (1)
          {
            LOBYTE(v7) = v8 != 0;
            if (!v8)
            {
              goto LABEL_54;
            }

            v23 = *result - 48;
            if (v23 > 9)
            {
              goto LABEL_53;
            }

            if (((10 * a1) & 0xF00) != 0)
            {
              goto LABEL_53;
            }

            LODWORD(a1) = (10 * a1) + v23;
            if ((a1 >> 8))
            {
              goto LABEL_53;
            }

            ++result;
            --v8;
          }
        }

        goto LABEL_74;
      }

      if (v8 >= 1)
      {
        v11 = v8 - 1;
        if (v8 != 1)
        {
          LOBYTE(a1) = 0;
          if (result)
          {
            for (j = result + 1; ; ++j)
            {
              LOBYTE(v7) = v11 != 0;
              if (!v11)
              {
                break;
              }

              v13 = *j - 48;
              if (v13 > 9)
              {
                goto LABEL_53;
              }

              if (((10 * a1) & 0xF00) != 0)
              {
                goto LABEL_53;
              }

              LODWORD(a1) = (10 * a1) - v13;
              if ((a1 & 0xFFFFFF00) != 0)
              {
                goto LABEL_53;
              }

              --v11;
            }

            goto LABEL_54;
          }

          goto LABEL_69;
        }

LABEL_73:
        LOBYTE(a1) = 0;
LABEL_74:
        LOBYTE(v7) = 1;
        goto LABEL_54;
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v28[0] = a1;
    v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (!v7)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v20 = v7 - 1;
      if (v7 != 1)
      {
        LOBYTE(a1) = 0;
        for (k = v28 + 1; ; ++k)
        {
          LOBYTE(v7) = v20 != 0;
          if (!v20)
          {
            break;
          }

          v22 = *k - 48;
          if (v22 > 9)
          {
            goto LABEL_53;
          }

          if (((10 * a1) & 0xF00) != 0)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = (10 * a1) + v22;
          if ((a1 >> 8))
          {
            goto LABEL_53;
          }

          --v20;
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (a1 != 45)
      {
        LOBYTE(a1) = 0;
        if (v7)
        {
          for (m = v28; ; ++m)
          {
            v26 = v7 != 0;
            if (!v7)
            {
              break;
            }

            v27 = *m - 48;
            if (v27 > 9 || ((10 * a1) & 0xF00) != 0 || (LODWORD(a1) = (10 * a1) + v27, ((a1 >> 8) & 1) != 0))
            {
              LOBYTE(a1) = 0;
              goto LABEL_68;
            }

            --v7;
          }

          goto LABEL_68;
        }

LABEL_79:
        v26 = 1;
LABEL_68:
        v29 = v26;
        goto LABEL_55;
      }

      if (!v7)
      {
        goto LABEL_76;
      }

      v14 = v7 - 1;
      if (v7 != 1)
      {
        LOBYTE(a1) = 0;
        for (n = v28 + 1; ; ++n)
        {
          LOBYTE(v7) = v14 != 0;
          if (!v14)
          {
            break;
          }

          v16 = *n - 48;
          if (v16 > 9)
          {
            goto LABEL_53;
          }

          if (((10 * a1) & 0xF00) != 0)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = (10 * a1) - v16;
          if ((a1 & 0xFFFFFF00) != 0)
          {
            goto LABEL_53;
          }

          --v14;
        }

        goto LABEL_54;
      }
    }

LABEL_53:
    LOBYTE(a1) = 0;
LABEL_54:
    v29 = v7;
LABEL_55:
    LOBYTE(v24) = v29;
    goto LABEL_56;
  }

  LODWORD(a1) = sub_10014E6E0(a1, a2, 10);

  v24 = (a1 >> 8) & 1;
LABEL_56:
  if (v24)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    LOBYTE(v9) = a1;
  }

LABEL_59:
  *a3 = v9;
  *(a3 + 1) = v24 & 1;
  return result;
}

unsigned __int8 *sub_10014A8A0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = sub_100046184(&qword_10021ED90, &qword_1001A3A08);
  result = sub_10014FCA0(&qword_10021ED98, &qword_10021ED90, &qword_1001A3A08);
  *(a3 + 32) = result;
  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    LOBYTE(v24) = 1;
    goto LABEL_59;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v10 = *result;
      if (v10 == 43)
      {
        if (v8 >= 1)
        {
          v17 = v8 - 1;
          if (v8 != 1)
          {
            LOWORD(a1) = 0;
            if (result)
            {
              for (i = result + 1; ; ++i)
              {
                LOBYTE(v7) = v17 != 0;
                if (!v17)
                {
                  break;
                }

                v19 = *i - 48;
                if (v19 > 9)
                {
                  goto LABEL_53;
                }

                if (((10 * a1) & 0xF0000) != 0)
                {
                  goto LABEL_53;
                }

                LODWORD(a1) = (10 * a1) + v19;
                if ((a1 & 0x10000) != 0)
                {
                  goto LABEL_53;
                }

                --v17;
              }

              goto LABEL_54;
            }

LABEL_69:
            LOBYTE(v7) = 0;
            goto LABEL_54;
          }

          goto LABEL_73;
        }

        goto LABEL_77;
      }

      if (v10 != 45)
      {
        LOWORD(a1) = 0;
        if (v8)
        {
          while (1)
          {
            LOBYTE(v7) = v8 != 0;
            if (!v8)
            {
              goto LABEL_54;
            }

            v23 = *result - 48;
            if (v23 > 9)
            {
              goto LABEL_53;
            }

            if (((10 * a1) & 0xF0000) != 0)
            {
              goto LABEL_53;
            }

            LODWORD(a1) = (10 * a1) + v23;
            if ((a1 & 0x10000) != 0)
            {
              goto LABEL_53;
            }

            ++result;
            --v8;
          }
        }

        goto LABEL_74;
      }

      if (v8 >= 1)
      {
        v11 = v8 - 1;
        if (v8 != 1)
        {
          LOWORD(a1) = 0;
          if (result)
          {
            for (j = result + 1; ; ++j)
            {
              LOBYTE(v7) = v11 != 0;
              if (!v11)
              {
                break;
              }

              v13 = *j - 48;
              if (v13 > 9)
              {
                goto LABEL_53;
              }

              if (((10 * a1) & 0xF0000) != 0)
              {
                goto LABEL_53;
              }

              LODWORD(a1) = (10 * a1) - v13;
              if ((a1 & 0xFFFF0000) != 0)
              {
                goto LABEL_53;
              }

              --v11;
            }

            goto LABEL_54;
          }

          goto LABEL_69;
        }

LABEL_73:
        LOWORD(a1) = 0;
LABEL_74:
        LOBYTE(v7) = 1;
        goto LABEL_54;
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v28[0] = a1;
    v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (!v7)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v20 = v7 - 1;
      if (v7 != 1)
      {
        LOWORD(a1) = 0;
        for (k = v28 + 1; ; ++k)
        {
          LOBYTE(v7) = v20 != 0;
          if (!v20)
          {
            break;
          }

          v22 = *k - 48;
          if (v22 > 9)
          {
            goto LABEL_53;
          }

          if (((10 * a1) & 0xF0000) != 0)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = (10 * a1) + v22;
          if ((a1 & 0x10000) != 0)
          {
            goto LABEL_53;
          }

          --v20;
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (a1 != 45)
      {
        LOWORD(a1) = 0;
        if (v7)
        {
          for (m = v28; ; ++m)
          {
            v26 = v7 != 0;
            if (!v7)
            {
              break;
            }

            v27 = *m - 48;
            if (v27 > 9 || ((10 * a1) & 0xF0000) != 0 || (LODWORD(a1) = (10 * a1) + v27, (a1 & 0x10000) != 0))
            {
              LOWORD(a1) = 0;
              goto LABEL_68;
            }

            --v7;
          }

          goto LABEL_68;
        }

LABEL_79:
        v26 = 1;
LABEL_68:
        v29 = v26;
        goto LABEL_55;
      }

      if (!v7)
      {
        goto LABEL_76;
      }

      v14 = v7 - 1;
      if (v7 != 1)
      {
        LOWORD(a1) = 0;
        for (n = v28 + 1; ; ++n)
        {
          LOBYTE(v7) = v14 != 0;
          if (!v14)
          {
            break;
          }

          v16 = *n - 48;
          if (v16 > 9)
          {
            goto LABEL_53;
          }

          if (((10 * a1) & 0xF0000) != 0)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = (10 * a1) - v16;
          if ((a1 & 0xFFFF0000) != 0)
          {
            goto LABEL_53;
          }

          --v14;
        }

        goto LABEL_54;
      }
    }

LABEL_53:
    LOWORD(a1) = 0;
LABEL_54:
    v29 = v7;
LABEL_55:
    LOBYTE(v24) = v29;
    goto LABEL_56;
  }

  LODWORD(a1) = sub_10014ECAC(a1, a2, 10);

  v24 = WORD1(a1) & 1;
LABEL_56:
  if (v24)
  {
    LOWORD(v9) = 0;
  }

  else
  {
    LOWORD(v9) = a1;
  }

LABEL_59:
  *a3 = v9;
  *(a3 + 2) = v24 & 1;
  return result;
}

unsigned __int8 *sub_10014AC90@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = sub_100046184(&qword_10021ED70, &qword_1001A39F8);
  result = sub_10014FCA0(&qword_10021ED78, &qword_10021ED70, &qword_1001A39F8);
  *(a3 + 32) = result;
  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    LOBYTE(v29) = 1;
    goto LABEL_59;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v10 = *result;
      if (v10 == 43)
      {
        if (v8 >= 1)
        {
          v19 = v8 - 1;
          if (v8 != 1)
          {
            LODWORD(a1) = 0;
            if (result)
            {
              for (i = result + 1; ; ++i)
              {
                LOBYTE(v7) = v19 != 0;
                if (!v19)
                {
                  break;
                }

                v21 = *i - 48;
                if (v21 > 9)
                {
                  goto LABEL_53;
                }

                v22 = 10 * a1;
                if ((v22 & 0xFFFFFFFF00000000) != 0)
                {
                  goto LABEL_53;
                }

                LODWORD(a1) = v22 + v21;
                if (__CFADD__(v22, v21))
                {
                  goto LABEL_53;
                }

                --v19;
              }

              goto LABEL_54;
            }

LABEL_69:
            LOBYTE(v7) = 0;
            goto LABEL_54;
          }

          goto LABEL_73;
        }

        goto LABEL_77;
      }

      if (v10 != 45)
      {
        LODWORD(a1) = 0;
        if (v8)
        {
          while (1)
          {
            LOBYTE(v7) = v8 != 0;
            if (!v8)
            {
              goto LABEL_54;
            }

            v27 = *result - 48;
            if (v27 > 9)
            {
              goto LABEL_53;
            }

            v28 = 10 * a1;
            if ((v28 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_53;
            }

            LODWORD(a1) = v28 + v27;
            if (__CFADD__(v28, v27))
            {
              goto LABEL_53;
            }

            ++result;
            --v8;
          }
        }

        goto LABEL_74;
      }

      if (v8 >= 1)
      {
        v11 = v8 - 1;
        if (v8 != 1)
        {
          LODWORD(a1) = 0;
          if (result)
          {
            for (j = result + 1; ; ++j)
            {
              LOBYTE(v7) = v11 != 0;
              if (!v11)
              {
                break;
              }

              v13 = *j - 48;
              if (v13 > 9)
              {
                goto LABEL_53;
              }

              v14 = 10 * a1;
              if ((v14 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_53;
              }

              LODWORD(a1) = v14 - v13;
              if (v14 < v13)
              {
                goto LABEL_53;
              }

              --v11;
            }

            goto LABEL_54;
          }

          goto LABEL_69;
        }

LABEL_73:
        LODWORD(a1) = 0;
LABEL_74:
        LOBYTE(v7) = 1;
        goto LABEL_54;
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v34[0] = a1;
    v34[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (!v7)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v23 = v7 - 1;
      if (v7 != 1)
      {
        LODWORD(a1) = 0;
        for (k = v34 + 1; ; ++k)
        {
          LOBYTE(v7) = v23 != 0;
          if (!v23)
          {
            break;
          }

          v25 = *k - 48;
          if (v25 > 9)
          {
            goto LABEL_53;
          }

          v26 = 10 * a1;
          if ((v26 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = v26 + v25;
          if (__CFADD__(v26, v25))
          {
            goto LABEL_53;
          }

          --v23;
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (a1 != 45)
      {
        LODWORD(a1) = 0;
        if (v7)
        {
          for (m = v34; ; ++m)
          {
            v31 = v7 != 0;
            if (!v7)
            {
              break;
            }

            v32 = *m - 48;
            if (v32 > 9 || (v33 = 10 * a1, (v33 & 0xFFFFFFFF00000000) != 0) || (LODWORD(a1) = v33 + v32, __CFADD__(v33, v32)))
            {
              LODWORD(a1) = 0;
              goto LABEL_68;
            }

            --v7;
          }

          goto LABEL_68;
        }

LABEL_79:
        v31 = 1;
LABEL_68:
        v35 = v31;
        goto LABEL_55;
      }

      if (!v7)
      {
        goto LABEL_76;
      }

      v15 = v7 - 1;
      if (v7 != 1)
      {
        LODWORD(a1) = 0;
        for (n = v34 + 1; ; ++n)
        {
          LOBYTE(v7) = v15 != 0;
          if (!v15)
          {
            break;
          }

          v17 = *n - 48;
          if (v17 > 9)
          {
            goto LABEL_53;
          }

          v18 = 10 * a1;
          if ((v18 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = v18 - v17;
          if (v18 < v17)
          {
            goto LABEL_53;
          }

          --v15;
        }

        goto LABEL_54;
      }
    }

LABEL_53:
    LODWORD(a1) = 0;
LABEL_54:
    v35 = v7;
LABEL_55:
    LOBYTE(v29) = v35;
    goto LABEL_56;
  }

  a1 = sub_10014F278(a1, a2, 10);

  v29 = HIDWORD(a1) & 1;
LABEL_56:
  if (v29)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    LODWORD(v9) = a1;
  }

LABEL_59:
  *a3 = v9;
  *(a3 + 4) = v29 & 1;
  return result;
}

void sub_10014B020(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000CAB4(a1, a2, a3, a4);
  v7 = sub_10001AE5C(v6);
  sub_10001BEDC(v7);
  if (!v8)
  {
    v40 = 0;
LABEL_69:
    sub_10014FD74(v40);
    return;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {

    v41 = sub_10000CC98();
    sub_10014E22C(v41, v42, 10);
    v14 = v43;
    v39 = v44;

LABEL_66:
    if (v39)
    {
      v40 = 0;
    }

    else
    {
      v40 = v14;
    }

    goto LABEL_69;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v4 & 0x1000000000000000) != 0)
    {
      v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      sub_10000CC98();
      v9 = _StringObject.sharedUTF8.getter();
    }

    v10 = sub_100013628(v9);
    if (v13)
    {
      if (v11 >= 1)
      {
        if (v11 != 1)
        {
          v14 = 0;
          if (v10)
          {
            sub_100017CE0();
            while (1)
            {
              LOBYTE(v16) = v26 != 0;
              if (!v26)
              {
                goto LABEL_55;
              }

              sub_1000087CC();
              if (!v13 & v17)
              {
                goto LABEL_54;
              }

              sub_100006CFC();
              if (!v13)
              {
                goto LABEL_54;
              }

              v14 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                goto LABEL_54;
              }

              v26 = v27 - 1;
            }
          }

LABEL_70:
          LOBYTE(v16) = 0;
LABEL_55:
          v45 = v16;
LABEL_65:
          v39 = v45;
          goto LABEL_66;
        }

        goto LABEL_75;
      }

      goto LABEL_79;
    }

    if (v12 != 45)
    {
      v14 = 0;
      if (v11)
      {
        while (1)
        {
          LOBYTE(v16) = v11 != 0;
          if (!v11)
          {
            goto LABEL_55;
          }

          v34 = *v10 - 48;
          if (v34 > 9)
          {
            goto LABEL_54;
          }

          v35 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            goto LABEL_54;
          }

          v14 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            goto LABEL_54;
          }

          ++v10;
          --v11;
        }
      }

      goto LABEL_76;
    }

    if (v11 >= 1)
    {
      if (v11 != 1)
      {
        v14 = 0;
        if (v10)
        {
          sub_100017CE0();
          while (1)
          {
            LOBYTE(v16) = v15 != 0;
            if (!v15)
            {
              goto LABEL_55;
            }

            sub_1000087CC();
            if (!v13 & v17)
            {
              goto LABEL_54;
            }

            sub_100006CFC();
            if (!v13)
            {
              goto LABEL_54;
            }

            v14 = v20 - v19;
            if (__OFSUB__(v20, v19))
            {
              goto LABEL_54;
            }

            v15 = v18 - 1;
          }
        }

        goto LABEL_70;
      }

LABEL_75:
      v14 = 0;
LABEL_76:
      LOBYTE(v16) = 1;
      goto LABEL_55;
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  sub_10014FD94();
  if (!v13)
  {
    if (v21 == 45)
    {
      if (!v16)
      {
        goto LABEL_78;
      }

      v14 = 0;
      if (v16 != 1)
      {
        sub_100015BD4();
        while (1)
        {
          v23 = v22 != 0;
          if (!v22)
          {
            goto LABEL_64;
          }

          sub_1000087CC();
          if (!v13 & v17)
          {
            goto LABEL_63;
          }

          sub_100006CFC();
          if (!v13)
          {
            goto LABEL_63;
          }

          v14 = v25 - v24;
          if (__OFSUB__(v25, v24))
          {
            goto LABEL_63;
          }

          sub_10001909C();
        }
      }
    }

    else
    {
      v14 = 0;
      if (v16)
      {
        while (1)
        {
          v23 = v16 != 0;
          if (!v16)
          {
            goto LABEL_64;
          }

          sub_1000087CC();
          if (!v13 & v17 || (sub_100006CFC(), !v13) || (v14 = v38 + v37, __OFADD__(v38, v37)))
          {
LABEL_63:
            v14 = 0;
            goto LABEL_64;
          }

          v16 = v36 - 1;
        }
      }
    }

    v23 = 1;
LABEL_64:
    v45 = v23;
    goto LABEL_65;
  }

  if (v16)
  {
    v30 = v16 - 1;
    if (v16 == 1)
    {
LABEL_54:
      v14 = 0;
    }

    else
    {
      v14 = 0;
      while (1)
      {
        LOBYTE(v16) = v30 != 0;
        if (!v30)
        {
          break;
        }

        sub_1000087CC();
        if (!v13 & v17)
        {
          goto LABEL_54;
        }

        sub_100006CFC();
        if (!v13)
        {
          goto LABEL_54;
        }

        v14 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          goto LABEL_54;
        }

        v30 = v31 - 1;
      }
    }

    goto LABEL_55;
  }

LABEL_80:
  __break(1u);
}

void sub_10014B2E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000CAB4(a1, a2, a3, a4);
  v7 = sub_10001AE5C(v6);
  sub_10001BEDC(v7);
  if (!v8)
  {
    v36 = 0;
    goto LABEL_67;
  }

  if ((v5 & 0x1000000000000000) == 0)
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      sub_10014FD94();
      if (v13)
      {
        if (v19)
        {
          v4 = 0;
          if (v19 != 1)
          {
            sub_100015BD4();
            while (1)
            {
              v15 = v27 != 0;
              if (!v27)
              {
                goto LABEL_62;
              }

              sub_1000087CC();
              if (!v13 && v16 || (sub_100012F94(), !v13) || (sub_100005AE4(), v4 = v29 + v28, __CFADD__(v29, v28)))
              {
LABEL_61:
                v4 = 0;
                goto LABEL_62;
              }

              sub_10001909C();
            }
          }

          goto LABEL_75;
        }

        goto LABEL_79;
      }

      if (v20 != 45)
      {
        v4 = 0;
        if (v19)
        {
          while (1)
          {
            v15 = v19 != 0;
            if (!v19)
            {
              goto LABEL_62;
            }

            sub_1000087CC();
            if (!v13 && v16)
            {
              goto LABEL_61;
            }

            sub_100012F94();
            if (!v13)
            {
              goto LABEL_61;
            }

            sub_100005AE4();
            v4 = v34 + v33;
            if (__CFADD__(v34, v33))
            {
              goto LABEL_61;
            }

            v19 = v32 - 1;
          }
        }

        goto LABEL_75;
      }

      if (v19)
      {
        v4 = 0;
        if (v19 != 1)
        {
          sub_100015BD4();
          while (1)
          {
            v15 = v21 != 0;
            if (!v21)
            {
              goto LABEL_62;
            }

            sub_1000087CC();
            if (!v13 && v16)
            {
              goto LABEL_61;
            }

            sub_100012F94();
            if (!v13)
            {
              goto LABEL_61;
            }

            sub_100005AE4();
            v4 = v23 - v22;
            if (v23 < v22)
            {
              goto LABEL_61;
            }

            sub_10001909C();
          }
        }

        goto LABEL_75;
      }
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        sub_10000CC98();
        v9 = _StringObject.sharedUTF8.getter();
      }

      v10 = sub_100013628(v9);
      if (v13)
      {
        if (v11 >= 1)
        {
          if (v11 != 1)
          {
            v4 = 0;
            if (v10)
            {
              sub_100017CE0();
              while (1)
              {
                v15 = v24 != 0;
                if (!v24)
                {
                  goto LABEL_62;
                }

                sub_1000087CC();
                if (!v13 && v16)
                {
                  goto LABEL_61;
                }

                sub_100012F94();
                if (!v13)
                {
                  goto LABEL_61;
                }

                sub_100005AE4();
                v4 = v26 + v25;
                if (__CFADD__(v26, v25))
                {
                  goto LABEL_61;
                }

                sub_10001909C();
              }
            }

LABEL_70:
            v15 = 0;
LABEL_62:
            v41 = v15;
LABEL_63:
            v35 = v41;
            goto LABEL_64;
          }

          goto LABEL_74;
        }

        goto LABEL_78;
      }

      if (v12 != 45)
      {
        v4 = 0;
        if (v11)
        {
          while (1)
          {
            v30 = v11 != 0;
            if (!v11)
            {
              goto LABEL_69;
            }

            v31 = *v10 - 48;
            if (v31 > 9 || !is_mul_ok(v4, 0xAuLL) || (v16 = __CFADD__(10 * v4, v31), v4 = 10 * v4 + v31, v16))
            {
              v4 = 0;
              goto LABEL_69;
            }

            ++v10;
            --v11;
          }
        }

LABEL_80:
        v30 = 1;
LABEL_69:
        v41 = v30;
        goto LABEL_63;
      }

      if (v11 >= 1)
      {
        if (v11 != 1)
        {
          v4 = 0;
          if (v10)
          {
            sub_100017CE0();
            while (1)
            {
              v15 = v14 != 0;
              if (!v14)
              {
                goto LABEL_62;
              }

              sub_1000087CC();
              if (!v13 && v16)
              {
                goto LABEL_61;
              }

              sub_100012F94();
              if (!v13)
              {
                goto LABEL_61;
              }

              sub_100005AE4();
              v4 = v18 - v17;
              if (v18 < v17)
              {
                goto LABEL_61;
              }

              sub_10001909C();
            }
          }

          goto LABEL_70;
        }

LABEL_74:
        v4 = 0;
LABEL_75:
        v15 = 1;
        goto LABEL_62;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v37 = sub_10000CC98();
  sub_10014F7EC(v37, v38, 0xAuLL);
  v4 = v39;
  v35 = v40;

LABEL_64:
  if (v35)
  {
    v36 = 0;
  }

  else
  {
    v36 = v4;
  }

LABEL_67:
  sub_10014FD74(v36);
}

uint64_t sub_10014B5A8@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for Optional();
  v6 = *(a1 + 16);
  sub_100008204();
  a2[4] = swift_getWitnessTable();
  sub_1000205C4(a2);
  v4 = *(*(a1 + 24) + 16);

  return dispatch thunk of LosslessStringConvertible.init(_:)();
}

void sub_10014B658(_BYTE *a1@<X8>)
{
  sub_100148AE0();
  if (!v1)
  {
    *a1 = v3;
  }
}

void SQLiteInteger32.init(with:column:)()
{
  sub_100006A3C();
  sub_100006840(v5, v6, v7);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  sub_10000407C();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  sub_10000702C();
  v17 = sub_100154FFC();
  if (v0)
  {
    goto LABEL_19;
  }

  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    v18 = sqlite3_column_int(v17, v2);
    v19 = *(v4 + 24);
    if (v1 == &type metadata for Int32)
    {
      v23 = *(v19 + 8);
    }

    else
    {
      v36 = v18;
      sub_100007E48();
      dispatch thunk of static FixedWidthInteger.min.getter();
      v20 = *(v19 + 8);
      sub_100007E48();
      v21 = dispatch thunk of static BinaryInteger.isSigned.getter();
      sub_10000F6E8();
      v22 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v21)
      {
        if (v22 > 32)
        {
          goto LABEL_15;
        }

        sub_10000F6E8();
        v27 = dispatch thunk of BinaryInteger._lowWord.getter();
        v28 = sub_100011BA0();
        v29(v28);
        if (v36 < v27)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v22 > 31)
        {
          if (v36 < 0)
          {
            v32 = sub_100011BA0();
            v33(v32);
            goto LABEL_18;
          }

LABEL_15:
          sub_10014CB70();
          sub_1000056AC();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v30 = sub_10014FD3C();
          v31 = *(v9 + 8);
          v31(v15, v1);
          v31(v3, v1);
          if ((v30 & 1) == 0)
          {
            goto LABEL_16;
          }

LABEL_18:
          sub_10011DC44();
          v34 = sub_100004248();
          sub_10000DCD8(v34, v35);
          goto LABEL_19;
        }

        sub_10000F6E8();
        v24 = dispatch thunk of BinaryInteger._lowWord.getter();
        v25 = sub_100011BA0();
        v26(v25);
        if (v36 < v24)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_16:
    sub_10014CB70();
    sub_1000056AC();
    dispatch thunk of BinaryInteger.init<A>(_:)();
LABEL_19:

    sub_100007FD4();
    return;
  }

  __break(1u);
}

uint64_t sub_10014B948(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  result = sub_100154FFC();
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_bind_int(result, a2, a3);
      if (result)
      {
        v8 = result;
        sub_10011DC44();
        swift_allocError();
        *v9 = v8;
        *(v9 + 8) = 0xD000000000000012;
        *(v9 + 16) = 0x80000001001B3290;
        *(v9 + 24) = 0;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10014BA08(uint64_t *a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = *a1;
  result = sub_100154FFC();
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_bind_int(result, a2, a3);
      if (result)
      {
        v8 = result;
        sub_10011DC44();
        swift_allocError();
        *v9 = v8;
        *(v9 + 8) = 0xD000000000000012;
        *(v9 + 16) = 0x80000001001B3290;
        *(v9 + 24) = 0;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10014BAC8(uint64_t *a1, uint64_t a2, __int16 a3)
{
  v6 = *a1;
  result = sub_100154FFC();
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_bind_int(result, a2, a3);
      if (result)
      {
        v8 = result;
        sub_10011DC44();
        swift_allocError();
        *v9 = v8;
        *(v9 + 8) = 0xD000000000000012;
        *(v9 + 16) = 0x80000001001B3290;
        *(v9 + 24) = 0;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10014BB88(uint64_t *a1, uint64_t a2, unsigned __int16 a3)
{
  v6 = *a1;
  result = sub_100154FFC();
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_bind_int(result, a2, a3);
      if (result)
      {
        v8 = result;
        sub_10011DC44();
        swift_allocError();
        *v9 = v8;
        *(v9 + 8) = 0xD000000000000012;
        *(v9 + 16) = 0x80000001001B3290;
        *(v9 + 24) = 0;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10014BC48(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *a1;
  result = sub_100154FFC();
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_bind_int(result, a2, a3);
      if (result)
      {
        v8 = result;
        sub_10011DC44();
        swift_allocError();
        *v9 = v8;
        *(v9 + 8) = 0xD000000000000012;
        *(v9 + 16) = 0x80000001001B3290;
        *(v9 + 24) = 0;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10014BD08(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *a1;
  result = sub_100154FFC();
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      if ((a3 & 0x80000000) == 0)
      {
        result = sqlite3_bind_int(result, a2, a3);
        if (result)
        {
          v8 = result;
          sub_10011DC44();
          swift_allocError();
          *v9 = v8;
          *(v9 + 8) = 0xD000000000000012;
          *(v9 + 16) = 0x80000001001B3290;
          *(v9 + 24) = 0;
          return swift_willThrow();
        }

        return result;
      }

LABEL_10:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

void SQLiteInteger32.bind(to:at:)()
{
  sub_100006A3C();
  sub_100009A0C(v4, v5, v6, v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_10014FD60(AssociatedTypeWitness);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_10000F2E0();
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  sub_10000407C();
  __chkstk_darwin(v15);
  sub_10000702C();
  v16 = *v1;
  sub_100154FFC();
  if (v2)
  {
    goto LABEL_29;
  }

  sub_10000AF84();
  if (v18 != v19)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v17 > 0x7FFFFFFF)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v20 = sub_100008BDC();
  v21(v20);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    sub_10000465C();
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 32)
    {
      sub_10000AB34();
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        sub_10000465C();
        if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 32)
        {
LABEL_11:
          sub_10014CB70();
          sub_10001AC9C();
          sub_100007984();
          sub_10000DFFC();
          v23 = sub_100003E74();
          v24(v23);
          if (v0)
          {
            goto LABEL_32;
          }

          goto LABEL_17;
        }

        goto LABEL_16;
      }

      sub_10000AB34();
      dispatch thunk of static BinaryInteger.isSigned.getter();
      v22 = sub_10001BC8C();
      if (v16)
      {
        if (v22 > 32)
        {
          goto LABEL_11;
        }

        sub_100007780();
        sub_10014FDA8();
        sub_10001BD7C();
        sub_10000DFFC();
        v25 = sub_100003E74();
        v26(v25);
        if ((v0 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_32:
        __break(1u);
        return;
      }

      if (v22 < 32)
      {
LABEL_16:
        sub_10000465C();
        dispatch thunk of BinaryInteger._lowWord.getter();
      }
    }
  }

LABEL_17:
  sub_10000465C();
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 32)
  {
    goto LABEL_22;
  }

  while (1)
  {
    sub_10000AB34();
    v0 = dispatch thunk of static BinaryInteger.isSigned.getter();
    sub_10000465C();
    v27 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v0 & 1) == 0)
    {
      break;
    }

    if (v27 < 33)
    {
      goto LABEL_26;
    }

LABEL_20:
    sub_10014CB70();
    sub_100007984();
    sub_100007AD4();
    v28 = sub_100003E74();
    v29(v28);
    if (v0)
    {
      __break(1u);
LABEL_22:
      sub_10000465C();
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 32)
      {
        sub_10000AB34();
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_27;
  }

  if (v27 >= 32)
  {
    goto LABEL_20;
  }

LABEL_26:
  sub_10000465C();
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_27:
  sub_10000465C();
  dispatch thunk of BinaryInteger._lowWord.getter();
  v30 = sub_1000189F4();
  v31(v30);
  if (sqlite3_bind_int(v3, v34, v0))
  {
    sub_10011DC44();
    v32 = sub_100004248();
    sub_10000C8D8(v32, v33);
  }

LABEL_29:
  sub_100007FD4();
}

void sub_10014C138(_BYTE *a1@<X8>)
{
  sub_100148C5C();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_10014C19C(_WORD *a1@<X8>)
{
  sub_100148B6C();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_10014C1FC(_WORD *a1@<X8>)
{
  sub_100148CEC();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_10014C25C(_DWORD *a1@<X8>)
{
  sub_100148BF8();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_10014C2BC(_DWORD *a1@<X8>)
{
  sub_100148D7C();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_10014C31C(void *a1@<X8>)
{
  sub_100149960();
  if (!v1)
  {
    *a1 = v3;
  }
}

void SQLiteInteger64.init(with:column:)()
{
  sub_100006A3C();
  sub_100006840(v5, v6, v7);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  sub_10000407C();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  sub_10000702C();
  v17 = sub_100154FFC();
  if (v0)
  {
    goto LABEL_19;
  }

  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    v18 = sqlite3_column_int64(v17, v2);
    v19 = *(v4 + 24);
    if (v1 == &type metadata for Int64)
    {
      v23 = *(v19 + 8);
    }

    else
    {
      v36 = v18;
      sub_100007E48();
      dispatch thunk of static FixedWidthInteger.min.getter();
      v20 = *(v19 + 8);
      sub_100007E48();
      v21 = dispatch thunk of static BinaryInteger.isSigned.getter();
      sub_10000F6E8();
      v22 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v21)
      {
        if (v22 > 64)
        {
          goto LABEL_15;
        }

        sub_10000F6E8();
        v27 = dispatch thunk of BinaryInteger._lowWord.getter();
        v28 = sub_100011BA0();
        v29(v28);
        if (v36 < v27)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v22 > 63)
        {
          if (v36 < 0)
          {
            v32 = sub_100011BA0();
            v33(v32);
            goto LABEL_18;
          }

LABEL_15:
          sub_10014CBC4();
          sub_10001AC9C();
          sub_1000056AC();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v30 = sub_10014FD3C();
          v31 = *(v9 + 8);
          v31(v15, v1);
          v31(v3, v1);
          if ((v30 & 1) == 0)
          {
            goto LABEL_16;
          }

LABEL_18:
          sub_10011DC44();
          v34 = sub_100004248();
          sub_10000DCD8(v34, v35);
          goto LABEL_19;
        }

        sub_10000F6E8();
        v24 = dispatch thunk of BinaryInteger._lowWord.getter();
        v25 = sub_100011BA0();
        v26(v25);
        if (v36 < v24)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_16:
    sub_10014CBC4();
    sub_1000056AC();
    dispatch thunk of BinaryInteger.init<A>(_:)();
LABEL_19:

    sub_100007FD4();
    return;
  }

  __break(1u);
}

uint64_t sub_10014C5D4(uint64_t *a1, uint64_t a2, sqlite3_int64 a3)
{
  v6 = *a1;
  result = sub_100154FFC();
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_bind_int64(result, a2, a3);
      if (result)
      {
        sub_10011DC44();
        v8 = sub_100004248();
        return sub_10000BF38(v8, v9);
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10014C670(uint64_t *a1, uint64_t a2, sqlite3_int64 a3)
{
  v6 = *a1;
  result = sub_100154FFC();
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        result = sqlite3_bind_int64(result, a2, a3);
        if (result)
        {
          sub_10011DC44();
          v8 = sub_100004248();
          return sub_10000BF38(v8, v9);
        }

        return result;
      }

LABEL_10:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

void SQLiteInteger64.bind(to:at:)()
{
  sub_100006A3C();
  sub_100009A0C(v4, v5, v6, v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_10014FD60(AssociatedTypeWitness);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_10000F2E0();
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  sub_10000407C();
  __chkstk_darwin(v15);
  sub_10000702C();
  v16 = *v1;
  sub_100154FFC();
  if (v2)
  {
    goto LABEL_29;
  }

  sub_10000AF84();
  if (v18 != v19)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v17 > 0x7FFFFFFF)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v20 = sub_100008BDC();
  v21(v20);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    sub_10000465C();
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
    {
      sub_10000AB34();
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        sub_10000465C();
        if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
        {
LABEL_11:
          sub_10014CBC4();
          sub_10001AC9C();
          sub_100007984();
          sub_10000DFFC();
          v23 = sub_100003E74();
          v24(v23);
          if (v0)
          {
            goto LABEL_32;
          }

          goto LABEL_17;
        }

        goto LABEL_16;
      }

      sub_10000AB34();
      dispatch thunk of static BinaryInteger.isSigned.getter();
      v22 = sub_10001BC8C();
      if (v16)
      {
        if (v22 > 64)
        {
          goto LABEL_11;
        }

        sub_100007780();
        sub_10014FDA8();
        sub_10001BD7C();
        sub_10000DFFC();
        v25 = sub_100003E74();
        v26(v25);
        if ((v0 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_32:
        __break(1u);
        return;
      }

      if (v22 < 64)
      {
LABEL_16:
        sub_10000465C();
        dispatch thunk of BinaryInteger._lowWord.getter();
      }
    }
  }

LABEL_17:
  sub_10000465C();
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_22;
  }

  while (1)
  {
    sub_10000AB34();
    v0 = dispatch thunk of static BinaryInteger.isSigned.getter();
    sub_10000465C();
    v27 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v0 & 1) == 0)
    {
      break;
    }

    if (v27 < 65)
    {
      goto LABEL_26;
    }

LABEL_20:
    sub_10014CBC4();
    sub_10001AC9C();
    sub_100007984();
    sub_100007AD4();
    v28 = sub_100003E74();
    v29(v28);
    if (v0)
    {
      __break(1u);
LABEL_22:
      sub_10000465C();
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64)
      {
        sub_10000AB34();
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_27;
  }

  if (v27 >= 64)
  {
    goto LABEL_20;
  }

LABEL_26:
  sub_10000465C();
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_27:
  sub_10000465C();
  dispatch thunk of BinaryInteger._lowWord.getter();
  v30 = sub_1000189F4();
  v31(v30);
  if (sqlite3_bind_int64(v3, v34, v0))
  {
    sub_10011DC44();
    v32 = sub_100004248();
    sub_10000C8D8(v32, v33);
  }

LABEL_29:
  sub_100007FD4();
}

void sub_10014CA98(void *a1@<X8>)
{
  sub_100149938();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_10014CB70()
{
  result = qword_10021EDD8;
  if (!qword_10021EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EDD8);
  }

  return result;
}

unint64_t sub_10014CBC4()
{
  result = qword_10021EDE0;
  if (!qword_10021EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EDE0);
  }

  return result;
}

unint64_t sub_10014CC18(uint64_t a1)
{
  result = sub_10014CC40();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10014CC40()
{
  result = qword_10021EDE8;
  if (!qword_10021EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EDE8);
  }

  return result;
}

unint64_t sub_10014CC94(uint64_t a1)
{
  result = sub_10014CCBC();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10014CCBC()
{
  result = qword_10021EDF0;
  if (!qword_10021EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EDF0);
  }

  return result;
}

unint64_t sub_10014CD10(uint64_t a1)
{
  result = sub_10014CD38();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10014CD38()
{
  result = qword_10021EDF8;
  if (!qword_10021EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EDF8);
  }

  return result;
}

unint64_t sub_10014CD8C(uint64_t a1)
{
  result = sub_10014CDB4();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10014CDB4()
{
  result = qword_10021EE00;
  if (!qword_10021EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE00);
  }

  return result;
}

unint64_t sub_10014CE08(uint64_t a1)
{
  result = sub_10014CE30();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10014CE30()
{
  result = qword_10021EE08;
  if (!qword_10021EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE08);
  }

  return result;
}

unint64_t sub_10014CE84(uint64_t a1)
{
  result = sub_10014CEAC();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10014CEAC()
{
  result = qword_10021EE10;
  if (!qword_10021EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE10);
  }

  return result;
}

unint64_t sub_10014CF00(uint64_t a1)
{
  result = sub_10014CF28();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10014CF28()
{
  result = qword_10021EE18;
  if (!qword_10021EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE18);
  }

  return result;
}

unint64_t sub_10014CF7C(uint64_t a1)
{
  result = sub_10014CFA4();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10014CFA4()
{
  result = qword_10021EE20;
  if (!qword_10021EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE20);
  }

  return result;
}

unint64_t sub_10014CFF8(uint64_t a1)
{
  result = sub_10014D020();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10014D020()
{
  result = qword_10021EE28;
  if (!qword_10021EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE28);
  }

  return result;
}

unint64_t sub_10014D074(uint64_t a1)
{
  result = sub_10014D09C();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10014D09C()
{
  result = qword_10021EE30;
  if (!qword_10021EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE30);
  }

  return result;
}

unsigned __int8 *sub_10014D0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100107FD4();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
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
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v8 != 1)
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
            LOBYTE(v14) = 0;
            v25 = result + 1;
            v26 = a3;
            while (1)
            {
              v17 = v21 != 0;
              if (!v21)
              {
                goto LABEL_108;
              }

              v27 = *v25;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_107;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = (v14 * v26);
              if (v29 != v14 * v26)
              {
                goto LABEL_107;
              }

              v14 = v29 + (v27 + v28);
              if ((v29 + v27 + v28) != v14)
              {
                goto LABEL_107;
              }

              --v21;
              ++v25;
            }
          }

LABEL_65:
          LOBYTE(v14) = 0;
          v17 = 0;
LABEL_108:

          return (v14 | (v17 << 8));
        }

LABEL_127:
        LOBYTE(v14) = 0;
        v17 = 1;
        goto LABEL_108;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        LOBYTE(v30) = 0;
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

        v34 = a3;
        v17 = 1;
        do
        {
          v35 = *result;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v32)
            {
              LOBYTE(v14) = 0;
              if (v35 < 0x61 || v35 >= v33)
              {
                goto LABEL_108;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v37 = v30 * v34;
          v38 = (v30 * v34);
          if (v38 != v37)
          {
            goto LABEL_127;
          }

          v30 = v38 + (v35 + v36);
          if (v30 != v30)
          {
            goto LABEL_127;
          }

          ++result;
          --v8;
        }

        while (v8);
        v17 = 0;
        LOBYTE(v14) = v30;
        goto LABEL_108;
      }

      goto LABEL_127;
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
          LOBYTE(v14) = 0;
          v15 = result + 1;
          v16 = a3;
          while (1)
          {
            v17 = v10 != 0;
            if (!v10)
            {
              goto LABEL_108;
            }

            v18 = *v15;
            if (v18 < 0x30 || v18 >= v11)
            {
              if (v18 < 0x41 || v18 >= v12)
              {
                if (v18 < 0x61 || v18 >= v13)
                {
                  goto LABEL_107;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v20 = (v14 * v16);
            if (v20 != v14 * v16)
            {
              goto LABEL_107;
            }

            v14 = v20 - (v18 + v19);
            if ((v20 - (v18 + v19)) != v14)
            {
              goto LABEL_107;
            }

            --v10;
            ++v15;
          }
        }

        goto LABEL_65;
      }

      goto LABEL_127;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v6;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        LOBYTE(v60) = 0;
        v61 = a3 + 55;
        v62 = a3 + 87;
        v63 = a3 + 48;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v62 = 97;
          v61 = 65;
        }

        v64 = &v70;
        v65 = a3;
        v17 = 1;
        do
        {
          v66 = *v64;
          if (v66 < 0x30 || v66 >= v63)
          {
            if (v66 < 0x41 || v66 >= v61)
            {
              LOBYTE(v14) = 0;
              if (v66 < 0x61 || v66 >= v62)
              {
                goto LABEL_108;
              }

              v67 = -87;
            }

            else
            {
              v67 = -55;
            }
          }

          else
          {
            v67 = -48;
          }

          v68 = v60 * v65;
          v69 = (v60 * v65);
          if (v69 != v68)
          {
            goto LABEL_127;
          }

          v60 = v69 + (v66 + v67);
          if (v60 != v60)
          {
            goto LABEL_127;
          }

          v64 = (v64 + 1);
          --v41;
        }

        while (v41);
        v17 = 0;
        LOBYTE(v14) = v60;
        goto LABEL_108;
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        LOBYTE(v14) = 0;
        v43 = a3 + 48;
        v44 = a3 + 55;
        v45 = a3 + 87;
        if (a3 > 10)
        {
          v43 = 58;
        }

        else
        {
          v45 = 97;
          v44 = 65;
        }

        v46 = &v70 + 1;
        v47 = a3;
        while (1)
        {
          v17 = v42 != 0;
          if (!v42)
          {
            goto LABEL_108;
          }

          v48 = *v46;
          if (v48 < 0x30 || v48 >= v43)
          {
            if (v48 < 0x41 || v48 >= v44)
            {
              if (v48 < 0x61 || v48 >= v45)
              {
                goto LABEL_107;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = (v14 * v47);
          if (v50 != v14 * v47)
          {
            goto LABEL_107;
          }

          v14 = v50 - (v48 + v49);
          if ((v50 - (v48 + v49)) != v14)
          {
            goto LABEL_107;
          }

          --v42;
          ++v46;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v51 = v41 - 1;
    if (v51)
    {
      LOBYTE(v14) = 0;
      v52 = a3 + 48;
      v53 = a3 + 55;
      v54 = a3 + 87;
      if (a3 > 10)
      {
        v52 = 58;
      }

      else
      {
        v54 = 97;
        v53 = 65;
      }

      v55 = &v70 + 1;
      v56 = a3;
      while (1)
      {
        v17 = v51 != 0;
        if (!v51)
        {
          goto LABEL_108;
        }

        v57 = *v55;
        if (v57 < 0x30 || v57 >= v52)
        {
          if (v57 < 0x41 || v57 >= v53)
          {
            if (v57 < 0x61 || v57 >= v54)
            {
LABEL_107:
              LOBYTE(v14) = 0;
              goto LABEL_108;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = (v14 * v56);
        if (v59 != v14 * v56)
        {
          goto LABEL_107;
        }

        v14 = v59 + (v57 + v58);
        if ((v59 + v57 + v58) != v14)
        {
          goto LABEL_107;
        }

        --v51;
        ++v55;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10014D6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100107FD4();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
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
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v8 != 1)
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
            LOWORD(v14) = 0;
            v25 = result + 1;
            v26 = a3;
            while (1)
            {
              v17 = v21 != 0;
              if (!v21)
              {
                goto LABEL_108;
              }

              v27 = *v25;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_107;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = (v14 * v26);
              if (v29 != v14 * v26)
              {
                goto LABEL_107;
              }

              v14 = v29 + (v27 + v28);
              if ((v29 + (v27 + v28)) != v14)
              {
                goto LABEL_107;
              }

              --v21;
              ++v25;
            }
          }

LABEL_65:
          LOWORD(v14) = 0;
          v17 = 0;
LABEL_108:

          return (v14 | (v17 << 16));
        }

LABEL_127:
        LOWORD(v14) = 0;
        v17 = 1;
        goto LABEL_108;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        LOWORD(v30) = 0;
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

        v34 = a3;
        v17 = 1;
        do
        {
          v35 = *result;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v32)
            {
              LOWORD(v14) = 0;
              if (v35 < 0x61 || v35 >= v33)
              {
                goto LABEL_108;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v37 = v30 * v34;
          v38 = (v30 * v34);
          if (v38 != v37)
          {
            goto LABEL_127;
          }

          v30 = v38 + (v35 + v36);
          if (v30 != v30)
          {
            goto LABEL_127;
          }

          ++result;
          --v8;
        }

        while (v8);
        v17 = 0;
        LOWORD(v14) = v30;
        goto LABEL_108;
      }

      goto LABEL_127;
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
          LOWORD(v14) = 0;
          v15 = result + 1;
          v16 = a3;
          while (1)
          {
            v17 = v10 != 0;
            if (!v10)
            {
              goto LABEL_108;
            }

            v18 = *v15;
            if (v18 < 0x30 || v18 >= v11)
            {
              if (v18 < 0x41 || v18 >= v12)
              {
                if (v18 < 0x61 || v18 >= v13)
                {
                  goto LABEL_107;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v20 = (v14 * v16);
            if (v20 != v14 * v16)
            {
              goto LABEL_107;
            }

            v14 = v20 - (v18 + v19);
            if ((v20 - (v18 + v19)) != v14)
            {
              goto LABEL_107;
            }

            --v10;
            ++v15;
          }
        }

        goto LABEL_65;
      }

      goto LABEL_127;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v6;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        LOWORD(v60) = 0;
        v61 = a3 + 55;
        v62 = a3 + 87;
        v63 = a3 + 48;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v62 = 97;
          v61 = 65;
        }

        v64 = &v70;
        v65 = a3;
        v17 = 1;
        do
        {
          v66 = *v64;
          if (v66 < 0x30 || v66 >= v63)
          {
            if (v66 < 0x41 || v66 >= v61)
            {
              LOWORD(v14) = 0;
              if (v66 < 0x61 || v66 >= v62)
              {
                goto LABEL_108;
              }

              v67 = -87;
            }

            else
            {
              v67 = -55;
            }
          }

          else
          {
            v67 = -48;
          }

          v68 = v60 * v65;
          v69 = (v60 * v65);
          if (v69 != v68)
          {
            goto LABEL_127;
          }

          v60 = v69 + (v66 + v67);
          if (v60 != v60)
          {
            goto LABEL_127;
          }

          v64 = (v64 + 1);
          --v41;
        }

        while (v41);
        v17 = 0;
        LOWORD(v14) = v60;
        goto LABEL_108;
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        LOWORD(v14) = 0;
        v43 = a3 + 48;
        v44 = a3 + 55;
        v45 = a3 + 87;
        if (a3 > 10)
        {
          v43 = 58;
        }

        else
        {
          v45 = 97;
          v44 = 65;
        }

        v46 = &v70 + 1;
        v47 = a3;
        while (1)
        {
          v17 = v42 != 0;
          if (!v42)
          {
            goto LABEL_108;
          }

          v48 = *v46;
          if (v48 < 0x30 || v48 >= v43)
          {
            if (v48 < 0x41 || v48 >= v44)
            {
              if (v48 < 0x61 || v48 >= v45)
              {
                goto LABEL_107;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = (v14 * v47);
          if (v50 != v14 * v47)
          {
            goto LABEL_107;
          }

          v14 = v50 - (v48 + v49);
          if ((v50 - (v48 + v49)) != v14)
          {
            goto LABEL_107;
          }

          --v42;
          ++v46;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v51 = v41 - 1;
    if (v51)
    {
      LOWORD(v14) = 0;
      v52 = a3 + 48;
      v53 = a3 + 55;
      v54 = a3 + 87;
      if (a3 > 10)
      {
        v52 = 58;
      }

      else
      {
        v54 = 97;
        v53 = 65;
      }

      v55 = &v70 + 1;
      v56 = a3;
      while (1)
      {
        v17 = v51 != 0;
        if (!v51)
        {
          goto LABEL_108;
        }

        v57 = *v55;
        if (v57 < 0x30 || v57 >= v52)
        {
          if (v57 < 0x41 || v57 >= v53)
          {
            if (v57 < 0x61 || v57 >= v54)
            {
LABEL_107:
              LOWORD(v14) = 0;
              goto LABEL_108;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = (v14 * v56);
        if (v59 != v14 * v56)
        {
          goto LABEL_107;
        }

        v14 = v59 + (v57 + v58);
        if ((v59 + (v57 + v58)) != v14)
        {
          goto LABEL_107;
        }

        --v51;
        ++v55;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10014DCB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100107FD4();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
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
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v8 != 1)
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
            v14 = 0;
            for (i = result + 1; ; ++i)
            {
              v16 = v21 != 0;
              if (!v21)
              {
                break;
              }

              v26 = *i;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_107;
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

              v28 = v14 * a3;
              if (v28 != v28)
              {
                goto LABEL_107;
              }

              v29 = v26 + v27;
              v14 = v28 + v29;
              if (__OFADD__(v28, v29))
              {
                goto LABEL_107;
              }

              --v21;
            }

            goto LABEL_108;
          }

LABEL_65:
          v14 = 0;
          v16 = 0;
LABEL_108:

          LOBYTE(v69) = v16;
          return (v14 | (v16 << 32));
        }

LABEL_127:
        v14 = 0;
        v16 = 1;
        goto LABEL_108;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
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

        v16 = 1;
        do
        {
          v34 = *result;
          if (v34 < 0x30 || v34 >= v31)
          {
            if (v34 < 0x41 || v34 >= v32)
            {
              v14 = 0;
              if (v34 < 0x61 || v34 >= v33)
              {
                goto LABEL_108;
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

          v36 = v30 * a3;
          if (v36 != v36)
          {
            goto LABEL_127;
          }

          v37 = v34 + v35;
          v38 = __OFADD__(v36, v37);
          v30 = v36 + v37;
          if (v38)
          {
            goto LABEL_127;
          }

          ++result;
          --v8;
        }

        while (v8);
        v16 = 0;
        v14 = v30;
        goto LABEL_108;
      }

      goto LABEL_127;
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
          for (j = result + 1; ; ++j)
          {
            v16 = v10 != 0;
            if (!v10)
            {
              break;
            }

            v17 = *j;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_107;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v19 = v14 * a3;
            if (v19 != v19)
            {
              goto LABEL_107;
            }

            v20 = v17 + v18;
            v14 = v19 - v20;
            if (__OFSUB__(v19, v20))
            {
              goto LABEL_107;
            }

            --v10;
          }

          goto LABEL_108;
        }

        goto LABEL_65;
      }

      goto LABEL_127;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v60 = 0;
        v61 = a3 + 55;
        v62 = a3 + 87;
        v63 = a3 + 48;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v62 = 97;
          v61 = 65;
        }

        v64 = &v69;
        v16 = 1;
        do
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v63)
          {
            if (v65 < 0x41 || v65 >= v61)
            {
              v14 = 0;
              if (v65 < 0x61 || v65 >= v62)
              {
                goto LABEL_108;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v60 * a3;
          if (v67 != v67)
          {
            goto LABEL_127;
          }

          v68 = v65 + v66;
          v38 = __OFADD__(v67, v68);
          v60 = v67 + v68;
          if (v38)
          {
            goto LABEL_127;
          }

          v64 = (v64 + 1);
          --v41;
        }

        while (v41);
        v16 = 0;
        v14 = v60;
        goto LABEL_108;
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v14 = 0;
        v43 = a3 + 48;
        v44 = a3 + 55;
        v45 = a3 + 87;
        if (a3 > 10)
        {
          v43 = 58;
        }

        else
        {
          v45 = 97;
          v44 = 65;
        }

        for (k = &v69 + 1; ; ++k)
        {
          v16 = v42 != 0;
          if (!v42)
          {
            break;
          }

          v47 = *k;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_107;
              }

              v48 = -87;
            }

            else
            {
              v48 = -55;
            }
          }

          else
          {
            v48 = -48;
          }

          v49 = v14 * a3;
          if (v49 != v49)
          {
            goto LABEL_107;
          }

          v50 = v47 + v48;
          v14 = v49 - v50;
          if (__OFSUB__(v49, v50))
          {
            goto LABEL_107;
          }

          --v42;
        }

        goto LABEL_108;
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v51 = v41 - 1;
    if (v51)
    {
      v14 = 0;
      v52 = a3 + 48;
      v53 = a3 + 55;
      v54 = a3 + 87;
      if (a3 > 10)
      {
        v52 = 58;
      }

      else
      {
        v54 = 97;
        v53 = 65;
      }

      for (m = &v69 + 1; ; ++m)
      {
        v16 = v51 != 0;
        if (!v51)
        {
          break;
        }

        v56 = *m;
        if (v56 < 0x30 || v56 >= v52)
        {
          if (v56 < 0x41 || v56 >= v53)
          {
            if (v56 < 0x61 || v56 >= v54)
            {
LABEL_107:
              v14 = 0;
              goto LABEL_108;
            }

            v57 = -87;
          }

          else
          {
            v57 = -55;
          }
        }

        else
        {
          v57 = -48;
        }

        v58 = v14 * a3;
        if (v58 != v58)
        {
          goto LABEL_107;
        }

        v59 = v56 + v57;
        v14 = v58 + v59;
        if (__OFADD__(v58, v59))
        {
          goto LABEL_107;
        }

        --v51;
      }

      goto LABEL_108;
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
  return result;
}

void sub_10014E22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71[0] = a1;
  v71[1] = a2;

  v5 = String.init<A>(_:)();
  v6 = v4;
  if ((v4 & 0x1000000000000000) != 0)
  {
    sub_100005854();
    v5 = sub_100107FD4();
    v41 = v40;

    v6 = v41;
    if ((v41 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) != 0)
    {
      v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      sub_100005854();
      v7 = _StringObject.sharedUTF8.getter();
    }

    sub_100013628(v7);
    if (v27)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          sub_100006490();
          if (v19)
          {
            sub_10000FEC4();
            while (v20)
            {
              sub_10000EC80();
              if ((!v16 || v24 >= v23) && (v24 < 0x41 || v24 >= v22) && (v24 < 0x61 || v24 >= v21))
              {
                break;
              }

              sub_10000FFE4();
              if (v26 != v25 >> 63)
              {
                break;
              }

              sub_10002DF68();
              if (v29)
              {
                break;
              }

              sub_10000E278();
            }
          }
        }

        goto LABEL_91;
      }

      goto LABEL_119;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        sub_100006490();
        if (v28 ^ v29 | v27)
        {
          v33 = v36;
        }

        if (v28 ^ v29 | v27)
        {
          v34 = 65;
        }

        if (!(v28 ^ v29 | v27))
        {
          v35 = 58;
        }

        while (1)
        {
          v37 = *v30;
          if (v37 < 0x30 || v37 >= v35)
          {
            if (v37 < 0x41 || v37 >= v34)
            {
              if (v37 < 0x61 || v37 >= v33)
              {
                goto LABEL_91;
              }

              v38 = -87;
            }

            else
            {
              v38 = -55;
            }
          }

          else
          {
            v38 = -48;
          }

          v39 = v32 * a3;
          if ((v32 * a3) >> 64 == (v32 * a3) >> 63)
          {
            v32 = v39 + (v37 + v38);
            if (!__OFADD__(v39, (v37 + v38)))
            {
              ++v30;
              if (--v31)
              {
                continue;
              }
            }
          }

          goto LABEL_91;
        }
      }

      goto LABEL_91;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        sub_100006490();
        if (v10)
        {
          sub_10000FEC4();
          while (v11)
          {
            sub_10000EC80();
            if ((!v16 || v15 >= v14) && (v15 < 0x41 || v15 >= v13) && (v15 < 0x61 || v15 >= v12))
            {
              break;
            }

            sub_10000FFE4();
            if (v18 != v17 >> 63)
            {
              break;
            }

            sub_10014FD88();
            if (v29)
            {
              break;
            }

            sub_10000E278();
          }
        }
      }

LABEL_91:

      return;
    }

    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  sub_100023FB4();
  if (!v27)
  {
    if (v43 != 45)
    {
      if (v42)
      {
        sub_100012688();
        if (v59 ^ v60 | v58)
        {
          v63 = v66;
        }

        if (v59 ^ v60 | v58)
        {
          v64 = 65;
        }

        if (!(v59 ^ v60 | v58))
        {
          v65 = 58;
        }

        v67 = v71;
        while (1)
        {
          v68 = *v67;
          if (v68 < 0x30 || v68 >= v65)
          {
            if (v68 < 0x41 || v68 >= v64)
            {
              if (v68 < 0x61 || v68 >= v63)
              {
                goto LABEL_91;
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

          v70 = v62 * a3;
          if ((v62 * a3) >> 64 == (v62 * a3) >> 63)
          {
            v62 = v70 + (v68 + v69);
            if (!__OFADD__(v70, (v68 + v69)))
            {
              ++v67;
              if (--v61)
              {
                continue;
              }
            }
          }

          goto LABEL_91;
        }
      }

      goto LABEL_91;
    }

    if (v42)
    {
      if (v42 != 1)
      {
        sub_100006490();
        sub_100014CBC();
        while (v44)
        {
          sub_10000EC80();
          if ((!v16 || v48 >= v47) && (v48 < 0x41 || v48 >= v46) && (v48 < 0x61 || v48 >= v45))
          {
            break;
          }

          sub_10000FFE4();
          if (v50 != v49 >> 63)
          {
            break;
          }

          sub_10014FD88();
          if (v29)
          {
            break;
          }

          sub_10000E278();
        }
      }

      goto LABEL_91;
    }

    goto LABEL_118;
  }

  if (v42)
  {
    if (v42 != 1)
    {
      sub_100006490();
      sub_100014CBC();
      while (v51)
      {
        sub_10000EC80();
        if ((!v16 || v55 >= v54) && (v55 < 0x41 || v55 >= v53) && (v55 < 0x61 || v55 >= v52))
        {
          break;
        }

        sub_10000FFE4();
        if (v57 != v56 >> 63)
        {
          break;
        }

        sub_10002DF68();
        if (v29)
        {
          break;
        }

        sub_10000E278();
      }
    }

    goto LABEL_91;
  }

LABEL_120:
  __break(1u);
}

unsigned __int8 *sub_10014E6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a1;
  v59 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100107FD4();
    v34 = v33;

    v7 = v34;
    if ((v34 & 0x2000000000000000) == 0)
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
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v8 != 1)
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
            LOBYTE(v14) = 0;
            for (i = result + 1; ; ++i)
            {
              v16 = v19 != 0;
              if (!v19)
              {
                break;
              }

              v24 = *i;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_107;
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

              if (((v14 * a3) & 0xFF00) != 0)
              {
                goto LABEL_107;
              }

              v14 = (v14 * a3) + (v24 + v25);
              if ((v14 >> 8))
              {
                goto LABEL_107;
              }

              --v19;
            }

            goto LABEL_108;
          }

LABEL_65:
          LOBYTE(v14) = 0;
          v16 = 0;
LABEL_108:

          return (v14 | (v16 << 8));
        }

LABEL_127:
        LOBYTE(v14) = 0;
        v16 = 1;
        goto LABEL_108;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        LOBYTE(v26) = 0;
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

        v16 = 1;
        do
        {
          v30 = *result;
          if (v30 < 0x30 || v30 >= v27)
          {
            if (v30 < 0x41 || v30 >= v28)
            {
              LOBYTE(v14) = 0;
              if (v30 < 0x61 || v30 >= v29)
              {
                goto LABEL_108;
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

          v32 = v26 * a3;
          if ((v32 & 0xFF00) != 0)
          {
            goto LABEL_127;
          }

          v26 = v32 + (v30 + v31);
          if ((v26 >> 8))
          {
            goto LABEL_127;
          }

          ++result;
          --v8;
        }

        while (v8);
        v16 = 0;
        LOBYTE(v14) = v26;
        goto LABEL_108;
      }

      goto LABEL_127;
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
          LOBYTE(v14) = 0;
          for (j = result + 1; ; ++j)
          {
            v16 = v10 != 0;
            if (!v10)
            {
              break;
            }

            v17 = *j;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_107;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (((v14 * a3) & 0xFF00) != 0)
            {
              goto LABEL_107;
            }

            v14 = (v14 * a3) - (v17 + v18);
            if ((v14 & 0xFFFFFF00) != 0)
            {
              goto LABEL_107;
            }

            --v10;
          }

          goto LABEL_108;
        }

        goto LABEL_65;
      }

      goto LABEL_127;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v35 = HIBYTE(v7) & 0xF;
  v58 = v6;
  v59 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v35)
      {
        LOBYTE(v50) = 0;
        v51 = a3 + 55;
        v52 = a3 + 87;
        v53 = a3 + 48;
        if (a3 > 10)
        {
          v53 = 58;
        }

        else
        {
          v52 = 97;
          v51 = 65;
        }

        v54 = &v58;
        v16 = 1;
        do
        {
          v55 = *v54;
          if (v55 < 0x30 || v55 >= v53)
          {
            if (v55 < 0x41 || v55 >= v51)
            {
              LOBYTE(v14) = 0;
              if (v55 < 0x61 || v55 >= v52)
              {
                goto LABEL_108;
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

          v57 = v50 * a3;
          if ((v57 & 0xFF00) != 0)
          {
            goto LABEL_127;
          }

          v50 = v57 + (v55 + v56);
          if ((v50 >> 8))
          {
            goto LABEL_127;
          }

          v54 = (v54 + 1);
          --v35;
        }

        while (v35);
        v16 = 0;
        LOBYTE(v14) = v50;
        goto LABEL_108;
      }

      goto LABEL_127;
    }

    if (v35)
    {
      v36 = v35 - 1;
      if (v36)
      {
        LOBYTE(v14) = 0;
        v37 = a3 + 48;
        v38 = a3 + 55;
        v39 = a3 + 87;
        if (a3 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        for (k = &v58 + 1; ; ++k)
        {
          v16 = v36 != 0;
          if (!v36)
          {
            break;
          }

          v41 = *k;
          if (v41 < 0x30 || v41 >= v37)
          {
            if (v41 < 0x41 || v41 >= v38)
            {
              if (v41 < 0x61 || v41 >= v39)
              {
                goto LABEL_107;
              }

              v42 = -87;
            }

            else
            {
              v42 = -55;
            }
          }

          else
          {
            v42 = -48;
          }

          if (((v14 * a3) & 0xFF00) != 0)
          {
            goto LABEL_107;
          }

          v14 = (v14 * a3) - (v41 + v42);
          if ((v14 & 0xFFFFFF00) != 0)
          {
            goto LABEL_107;
          }

          --v36;
        }

        goto LABEL_108;
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v35)
  {
    v43 = v35 - 1;
    if (v43)
    {
      LOBYTE(v14) = 0;
      v44 = a3 + 48;
      v45 = a3 + 55;
      v46 = a3 + 87;
      if (a3 > 10)
      {
        v44 = 58;
      }

      else
      {
        v46 = 97;
        v45 = 65;
      }

      for (m = &v58 + 1; ; ++m)
      {
        v16 = v43 != 0;
        if (!v43)
        {
          break;
        }

        v48 = *m;
        if (v48 < 0x30 || v48 >= v44)
        {
          if (v48 < 0x41 || v48 >= v45)
          {
            if (v48 < 0x61 || v48 >= v46)
            {
LABEL_107:
              LOBYTE(v14) = 0;
              goto LABEL_108;
            }

            v49 = -87;
          }

          else
          {
            v49 = -55;
          }
        }

        else
        {
          v49 = -48;
        }

        if (((v14 * a3) & 0xFF00) != 0)
        {
          goto LABEL_107;
        }

        v14 = (v14 * a3) + (v48 + v49);
        if ((v14 >> 8))
        {
          goto LABEL_107;
        }

        --v43;
      }

      goto LABEL_108;
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10014ECAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a1;
  v59 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100107FD4();
    v34 = v33;

    v7 = v34;
    if ((v34 & 0x2000000000000000) == 0)
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
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v8 != 1)
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
            LOWORD(v14) = 0;
            for (i = result + 1; ; ++i)
            {
              v16 = v19 != 0;
              if (!v19)
              {
                break;
              }

              v24 = *i;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_107;
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

              if (((v14 * a3) & 0xFFFF0000) != 0)
              {
                goto LABEL_107;
              }

              v14 = (v14 * a3) + (v24 + v25);
              if ((v14 & 0x10000) != 0)
              {
                goto LABEL_107;
              }

              --v19;
            }

            goto LABEL_108;
          }

LABEL_65:
          LOWORD(v14) = 0;
          v16 = 0;
LABEL_108:

          return (v14 | (v16 << 16));
        }

LABEL_127:
        LOWORD(v14) = 0;
        v16 = 1;
        goto LABEL_108;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        LOWORD(v26) = 0;
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

        v16 = 1;
        do
        {
          v30 = *result;
          if (v30 < 0x30 || v30 >= v27)
          {
            if (v30 < 0x41 || v30 >= v28)
            {
              LOWORD(v14) = 0;
              if (v30 < 0x61 || v30 >= v29)
              {
                goto LABEL_108;
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

          v32 = v26 * a3;
          if ((v32 & 0xFFFF0000) != 0)
          {
            goto LABEL_127;
          }

          v26 = v32 + (v30 + v31);
          if ((v26 & 0x10000) != 0)
          {
            goto LABEL_127;
          }

          ++result;
          --v8;
        }

        while (v8);
        v16 = 0;
        LOWORD(v14) = v26;
        goto LABEL_108;
      }

      goto LABEL_127;
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
          LOWORD(v14) = 0;
          for (j = result + 1; ; ++j)
          {
            v16 = v10 != 0;
            if (!v10)
            {
              break;
            }

            v17 = *j;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_107;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (((v14 * a3) & 0xFFFF0000) != 0)
            {
              goto LABEL_107;
            }

            v14 = (v14 * a3) - (v17 + v18);
            if ((v14 & 0xFFFF0000) != 0)
            {
              goto LABEL_107;
            }

            --v10;
          }

          goto LABEL_108;
        }

        goto LABEL_65;
      }

      goto LABEL_127;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v35 = HIBYTE(v7) & 0xF;
  v58 = v6;
  v59 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v35)
      {
        LOWORD(v50) = 0;
        v51 = a3 + 55;
        v52 = a3 + 87;
        v53 = a3 + 48;
        if (a3 > 10)
        {
          v53 = 58;
        }

        else
        {
          v52 = 97;
          v51 = 65;
        }

        v54 = &v58;
        v16 = 1;
        do
        {
          v55 = *v54;
          if (v55 < 0x30 || v55 >= v53)
          {
            if (v55 < 0x41 || v55 >= v51)
            {
              LOWORD(v14) = 0;
              if (v55 < 0x61 || v55 >= v52)
              {
                goto LABEL_108;
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

          v57 = v50 * a3;
          if ((v57 & 0xFFFF0000) != 0)
          {
            goto LABEL_127;
          }

          v50 = v57 + (v55 + v56);
          if ((v50 & 0x10000) != 0)
          {
            goto LABEL_127;
          }

          v54 = (v54 + 1);
          --v35;
        }

        while (v35);
        v16 = 0;
        LOWORD(v14) = v50;
        goto LABEL_108;
      }

      goto LABEL_127;
    }

    if (v35)
    {
      v36 = v35 - 1;
      if (v36)
      {
        LOWORD(v14) = 0;
        v37 = a3 + 48;
        v38 = a3 + 55;
        v39 = a3 + 87;
        if (a3 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        for (k = &v58 + 1; ; ++k)
        {
          v16 = v36 != 0;
          if (!v36)
          {
            break;
          }

          v41 = *k;
          if (v41 < 0x30 || v41 >= v37)
          {
            if (v41 < 0x41 || v41 >= v38)
            {
              if (v41 < 0x61 || v41 >= v39)
              {
                goto LABEL_107;
              }

              v42 = -87;
            }

            else
            {
              v42 = -55;
            }
          }

          else
          {
            v42 = -48;
          }

          if (((v14 * a3) & 0xFFFF0000) != 0)
          {
            goto LABEL_107;
          }

          v14 = (v14 * a3) - (v41 + v42);
          if ((v14 & 0xFFFF0000) != 0)
          {
            goto LABEL_107;
          }

          --v36;
        }

        goto LABEL_108;
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v35)
  {
    v43 = v35 - 1;
    if (v43)
    {
      LOWORD(v14) = 0;
      v44 = a3 + 48;
      v45 = a3 + 55;
      v46 = a3 + 87;
      if (a3 > 10)
      {
        v44 = 58;
      }

      else
      {
        v46 = 97;
        v45 = 65;
      }

      for (m = &v58 + 1; ; ++m)
      {
        v16 = v43 != 0;
        if (!v43)
        {
          break;
        }

        v48 = *m;
        if (v48 < 0x30 || v48 >= v44)
        {
          if (v48 < 0x41 || v48 >= v45)
          {
            if (v48 < 0x61 || v48 >= v46)
            {
LABEL_107:
              LOWORD(v14) = 0;
              goto LABEL_108;
            }

            v49 = -87;
          }

          else
          {
            v49 = -55;
          }
        }

        else
        {
          v49 = -48;
        }

        if (((v14 * a3) & 0xFFFF0000) != 0)
        {
          goto LABEL_107;
        }

        v14 = (v14 * a3) + (v48 + v49);
        if ((v14 & 0x10000) != 0)
        {
          goto LABEL_107;
        }

        --v43;
      }

      goto LABEL_108;
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10014F278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100107FD4();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
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
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v8 != 1)
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
            v14 = 0;
            for (i = result + 1; ; ++i)
            {
              v16 = v21 != 0;
              if (!v21)
              {
                break;
              }

              v26 = *i;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_107;
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

              v28 = v14 * a3;
              if ((v28 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_107;
              }

              v29 = v26 + v27;
              v14 = v28 + v29;
              if (__CFADD__(v28, v29))
              {
                goto LABEL_107;
              }

              --v21;
            }

            goto LABEL_108;
          }

LABEL_65:
          v14 = 0;
          v16 = 0;
LABEL_108:

          LOBYTE(v69) = v16;
          return (v14 | (v16 << 32));
        }

LABEL_127:
        v14 = 0;
        v16 = 1;
        goto LABEL_108;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
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

        v16 = 1;
        do
        {
          v34 = *result;
          if (v34 < 0x30 || v34 >= v31)
          {
            if (v34 < 0x41 || v34 >= v32)
            {
              v14 = 0;
              if (v34 < 0x61 || v34 >= v33)
              {
                goto LABEL_108;
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

          v36 = v30 * a3;
          if ((v36 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_127;
          }

          v37 = v34 + v35;
          v38 = __CFADD__(v36, v37);
          v30 = v36 + v37;
          if (v38)
          {
            goto LABEL_127;
          }

          ++result;
          --v8;
        }

        while (v8);
        v16 = 0;
        v14 = v30;
        goto LABEL_108;
      }

      goto LABEL_127;
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
          for (j = result + 1; ; ++j)
          {
            v16 = v10 != 0;
            if (!v10)
            {
              break;
            }

            v17 = *j;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_107;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v19 = v14 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_107;
            }

            v20 = v17 + v18;
            v14 = v19 - v20;
            if (v19 < v20)
            {
              goto LABEL_107;
            }

            --v10;
          }

          goto LABEL_108;
        }

        goto LABEL_65;
      }

      goto LABEL_127;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v60 = 0;
        v61 = a3 + 55;
        v62 = a3 + 87;
        v63 = a3 + 48;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v62 = 97;
          v61 = 65;
        }

        v64 = &v69;
        v16 = 1;
        do
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v63)
          {
            if (v65 < 0x41 || v65 >= v61)
            {
              v14 = 0;
              if (v65 < 0x61 || v65 >= v62)
              {
                goto LABEL_108;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v60 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_127;
          }

          v68 = v65 + v66;
          v38 = __CFADD__(v67, v68);
          v60 = v67 + v68;
          if (v38)
          {
            goto LABEL_127;
          }

          v64 = (v64 + 1);
          --v41;
        }

        while (v41);
        v16 = 0;
        v14 = v60;
        goto LABEL_108;
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v14 = 0;
        v43 = a3 + 48;
        v44 = a3 + 55;
        v45 = a3 + 87;
        if (a3 > 10)
        {
          v43 = 58;
        }

        else
        {
          v45 = 97;
          v44 = 65;
        }

        for (k = &v69 + 1; ; ++k)
        {
          v16 = v42 != 0;
          if (!v42)
          {
            break;
          }

          v47 = *k;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_107;
              }

              v48 = -87;
            }

            else
            {
              v48 = -55;
            }
          }

          else
          {
            v48 = -48;
          }

          v49 = v14 * a3;
          if ((v49 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_107;
          }

          v50 = v47 + v48;
          v14 = v49 - v50;
          if (v49 < v50)
          {
            goto LABEL_107;
          }

          --v42;
        }

        goto LABEL_108;
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v51 = v41 - 1;
    if (v51)
    {
      v14 = 0;
      v52 = a3 + 48;
      v53 = a3 + 55;
      v54 = a3 + 87;
      if (a3 > 10)
      {
        v52 = 58;
      }

      else
      {
        v54 = 97;
        v53 = 65;
      }

      for (m = &v69 + 1; ; ++m)
      {
        v16 = v51 != 0;
        if (!v51)
        {
          break;
        }

        v56 = *m;
        if (v56 < 0x30 || v56 >= v52)
        {
          if (v56 < 0x41 || v56 >= v53)
          {
            if (v56 < 0x61 || v56 >= v54)
            {
LABEL_107:
              v14 = 0;
              goto LABEL_108;
            }

            v57 = -87;
          }

          else
          {
            v57 = -55;
          }
        }

        else
        {
          v57 = -48;
        }

        v58 = v14 * a3;
        if ((v58 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_107;
        }

        v59 = v56 + v57;
        v14 = v58 + v59;
        if (__CFADD__(v58, v59))
        {
          goto LABEL_107;
        }

        --v51;
      }

      goto LABEL_108;
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
  return result;
}

void sub_10014F7EC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v65[0] = a1;
  v65[1] = a2;

  v5 = String.init<A>(_:)();
  v6 = v4;
  if ((v4 & 0x1000000000000000) != 0)
  {
    sub_100005854();
    v5 = sub_100107FD4();
    v38 = v37;

    v6 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) != 0)
    {
      v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      sub_100005854();
      v7 = _StringObject.sharedUTF8.getter();
    }

    sub_100013628(v7);
    if (v23)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          sub_100006490();
          if (v17)
          {
            sub_10000FEC4();
            while (v18)
            {
              sub_10000EC80();
              if ((!v16 || v22 >= v21) && (v22 < 0x41 || v22 >= v20) && (v22 < 0x61 || v22 >= v19))
              {
                break;
              }

              sub_10000FF58();
              if (!v23)
              {
                break;
              }

              sub_10002DF68();
              if (v16)
              {
                break;
              }

              sub_10000E278();
            }
          }
        }

        goto LABEL_97;
      }

      goto LABEL_125;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        sub_100006490();
        if (v24 ^ v25 | v23)
        {
          v29 = v32;
        }

        if (v24 ^ v25 | v23)
        {
          v30 = 65;
        }

        if (!(v24 ^ v25 | v23))
        {
          v31 = 58;
        }

        while (1)
        {
          v33 = *v26;
          if (v33 < 0x30 || v33 >= v31)
          {
            if (v33 < 0x41 || v33 >= v30)
            {
              if (v33 < 0x61 || v33 >= v29)
              {
                goto LABEL_97;
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

          if (is_mul_ok(v28, a3))
          {
            v35 = v28 * a3;
            v36 = v33 + v34;
            v16 = __CFADD__(v35, v36);
            v28 = v35 + v36;
            if (!v16)
            {
              ++v26;
              if (--v27)
              {
                continue;
              }
            }
          }

          goto LABEL_97;
        }
      }

      goto LABEL_97;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        sub_100006490();
        if (v10)
        {
          sub_10000FEC4();
          while (v11)
          {
            sub_10000EC80();
            if ((!v16 || v15 >= v14) && (v15 < 0x41 || v15 >= v13) && (v15 < 0x61 || v15 >= v12))
            {
              break;
            }

            sub_10000FF58();
            if (!v23)
            {
              break;
            }

            sub_10014FD88();
            if (!v16)
            {
              break;
            }

            sub_10000E278();
          }
        }
      }

LABEL_97:

      return;
    }

    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  sub_100023FB4();
  if (!v23)
  {
    if (v40 != 45)
    {
      if (v39)
      {
        sub_100012688();
        if (v52 ^ v53 | v51)
        {
          v56 = v59;
        }

        if (v52 ^ v53 | v51)
        {
          v57 = 65;
        }

        if (!(v52 ^ v53 | v51))
        {
          v58 = 58;
        }

        v60 = v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v58)
          {
            if (v61 < 0x41 || v61 >= v57)
            {
              if (v61 < 0x61 || v61 >= v56)
              {
                goto LABEL_97;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          if (is_mul_ok(v55, a3))
          {
            v63 = v55 * a3;
            v64 = v61 + v62;
            v16 = __CFADD__(v63, v64);
            v55 = v63 + v64;
            if (!v16)
            {
              ++v60;
              if (--v54)
              {
                continue;
              }
            }
          }

          goto LABEL_97;
        }
      }

      goto LABEL_97;
    }

    if (v39)
    {
      if (v39 != 1)
      {
        sub_100006490();
        sub_100014CBC();
        while (v41)
        {
          sub_10000EC80();
          if ((!v16 || v45 >= v44) && (v45 < 0x41 || v45 >= v43) && (v45 < 0x61 || v45 >= v42))
          {
            break;
          }

          sub_10000FF58();
          if (!v23)
          {
            break;
          }

          sub_10014FD88();
          if (!v16)
          {
            break;
          }

          sub_10000E278();
        }
      }

      goto LABEL_97;
    }

    goto LABEL_124;
  }

  if (v39)
  {
    if (v39 != 1)
    {
      sub_100006490();
      sub_100014CBC();
      while (v46)
      {
        sub_10000EC80();
        if ((!v16 || v50 >= v49) && (v50 < 0x41 || v50 >= v48) && (v50 < 0x61 || v50 >= v47))
        {
          break;
        }

        sub_10000FF58();
        if (!v23)
        {
          break;
        }

        sub_10002DF68();
        if (v16)
        {
          break;
        }

        sub_10000E278();
      }
    }

    goto LABEL_97;
  }

LABEL_126:
  __break(1u);
}

uint64_t sub_10014FCA0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(a2, a3);
    sub_100008204();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10014FD3C()
{
  v2 = *(*(v0 + 32) + 8);

  return dispatch thunk of static Comparable.< infix(_:_:)();
}

uint64_t sub_10014FDA8()
{
  v2 = *(v0 - 128);

  return dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
}

uint64_t sub_10014FDC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_10014FE14(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 32);
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
}

uint64_t SQLiteBaseFunction.name.getter()
{
  sub_100004384();
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t SQLiteBaseFunction.__allocating_init()()
{
  v0 = swift_allocObject();
  SQLiteBaseFunction.init()();
  return v0;
}

uint64_t SQLiteBaseFunction.init()()
{
  swift_weakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  return v0;
}

uint64_t SQLiteBaseFunction.register(_:database:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    swift_beginAccess();
    v7 = v3[4];
    v3[3] = v6;
    v3[4] = a2;

    sub_1000037B0();
    v9 = (*(v8 + 152))();
    sub_1000037B0();
    v11 = (*(v10 + 160))();
    v12 = String.utf8CString.getter();

    function_v2 = sqlite3_create_function_v2(v4, (v12 + 32), v9, v11, v3, sub_1001502E0, 0, 0, sub_1001503F0);

    if (function_v2)
    {
      _StringGuts.grow(_:)(31);

      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 0xD00000000000001DLL;
      v15._object = 0x80000001001B32B0;
      SQLiteDatabase.logAndReturnSQLErrorMessage(_:)(v15);

      sub_10011DC44();
      v16 = swift_allocError();
      return sub_100003E8C(v16, v17);
    }
  }

  return result;
}

void sub_100150124(sqlite3_context *a1)
{
  if (a1)
  {
    if (sqlite3_user_data(a1))
    {

      v3 = __chkstk_darwin(v2);
      (*(*v4 + 176))(sub_100150A64, v3);
    }

    else
    {

      sqlite3_result_error(a1, "Cannot bind to function instance.", -1);
    }
  }
}

uint64_t sub_10015025C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = Array<A>.init(_:argc:)(a3, a4);
  if (!v4)
  {
    (*(*a1 + 168))(a2, result);
  }

  return result;
}

void sub_1001502E4(uint64_t a1)
{
  if (a1)
  {
  }

  else
  {
    if (qword_10021EA70 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000964C(v1, qword_100232DE0);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Missing function object", v3, 2u);
    }
  }
}

uint64_t SQLiteBaseFunction.unregister(database:)(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    sub_100004384();
    result = swift_beginAccess();
    if (*(v1 + 32))
    {
      v3 = *(v1 + 24);
      sub_1000037B0();
      v5 = *(v4 + 152);

      v7 = v5(v6);
      sub_1000037B0();
      v9 = (*(v8 + 160))();
      v10 = String.utf8CString.getter();

      function = sqlite3_create_function(v2, (v10 + 32), v7, v9, 0, j___sSo29_CPStartNetworkSearchFeedbackC7parsecdE12redactUnusedyyF, 0, 0);

      if (function)
      {
        _StringGuts.grow(_:)(34);

        v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v12);

        v13._countAndFlagsBits = 0xD000000000000020;
        v13._object = 0x80000001001B32D0;
        SQLiteDatabase.logAndReturnSQLErrorMessage(_:)(v13);

        sub_10011DC44();
        v14 = swift_allocError();
        return sub_100003E8C(v14, v15);
      }
    }
  }

  return result;
}

uint64_t SQLiteBaseFunction.deinit()
{
  v1 = v0;
  sub_100004384();
  swift_beginAccess();
  v2 = *(v0 + 32);
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = qword_10021EA70;

    if (v4 != -1)
    {
      sub_10000466C();
    }

    v5 = type metadata accessor for Logger();
    sub_10000964C(v5, qword_100232DE0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v6, v7))
    {

      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = sub_100009684(v3, v2, &v16);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Destroying %s function", v8, 0xCu);
    sub_100007378(v9);
    sub_1000036D4();
    goto LABEL_10;
  }

  if (qword_10021EA70 != -1)
  {
    sub_10000466C();
  }

  v11 = type metadata accessor for Logger();
  sub_10000964C(v11, qword_100232DE0);
  v6 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v6, v12, "Destroying unregistered function", v13, 2u);
LABEL_10:
    sub_1000036D4();
  }

LABEL_12:

  swift_weakDestroy();
  v14 = *(v1 + 32);

  return v1;
}

uint64_t SQLiteBaseFunction.__deallocating_deinit()
{
  SQLiteBaseFunction.deinit();

  return _swift_deallocClassInstance(v0, 40, 7);
}

Swift::Void __swiftcall SQLiteBaseFunction.receivedParameter(_:index:)(Swift::OpaquePointer _, Swift::Int index)
{
  v3 = v2;
  if (qword_10021EA70 != -1)
  {
    sub_10000466C();
  }

  v5 = type metadata accessor for Logger();
  sub_10000964C(v5, qword_100232DE0);

  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136315650;
    sub_100004384();
    swift_beginAccess();
    if (*(v3 + 32))
    {
      v8 = *(v3 + 24);
      v9 = *(v3 + 32);
    }

    else
    {
      v9 = 0xE90000000000003ELL;
      v8 = 0x6E776F6E6B6E753CLL;
    }

    v10 = sub_100009684(v8, v9, &v15);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2048;
    *(v7 + 14) = index;
    *(v7 + 22) = 2080;
    v11 = String.init<A>(describing:)();
    v13 = sub_100009684(v11, v12, &v15);

    *(v7 + 24) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v6, "Function %s received %ld parameter: %s", v7, 0x20u);
    swift_arrayDestroy();
    sub_1000036D4();
    sub_1000036D4();
  }

  else
  {
  }
}

uint64_t sub_100150A88(uint64_t a1, uint64_t a2, uint64_t a3, int a4, sqlite3_context *a5)
{
  if (String.count.getter())
  {

    v7._countAndFlagsBits = 8238;
    v7._object = 0xE200000000000000;
    String.append(_:)(v7);
  }

  swift_errorRetain();
  sub_100046184(&qword_100216900, &unk_10019AE20);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = sub_100006B0C();
  String.append(_:)(v9);

  v10 = String.utf8CString.getter();

  sqlite3_result_error(a5, (v10 + 32), a4);
}

uint64_t sub_100150BD0()
{
  result = sqlite3_threadsafe();
  if (result != 2)
  {
    sub_10011DC44();
    sub_100004248();
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;
    *v1 = 1;
    *(v1 + 24) = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t static SQLiteDatabase.openInMemoryConnection()()
{
  sub_100150BD0();
  if (!v0)
  {
    v19 = 0;
    v2 = sqlite3_open(":memory:", &v19);
    if (v2)
    {
      LODWORD(v1) = v2;
      if (qword_10021EA70 != -1)
      {
        sub_1000064A8();
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100006674(v3, qword_100232DE0);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 67109120;
        *(v6 + 4) = v1;
        _os_log_impl(&_mh_execute_header, v4, v5, "Error %d occurred while opening in-memory db connection", v6, 8u);
        sub_1000037A4();
      }

      v1 = v1;
      sub_10011DC44();
      sub_100004248();
      *v7 = v1;
      *(v7 + 8) = 0xD000000000000026;
      *(v7 + 16) = 0x80000001001B3390;
      *(v7 + 24) = 0;
LABEL_8:
      swift_willThrow();
      return v1;
    }

    v1 = v19;
    if (!v19)
    {
      if (qword_10021EA70 != -1)
      {
        sub_1000064A8();
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100006674(v14, qword_100232DE0);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v1 = swift_slowAlloc();
        *v1 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Failed to open in-memory db connection", v1, 2u);
        sub_1000037A4();
      }

      sub_10011DC44();
      v17 = sub_100004248();
      *v18 = 0xD000000000000026;
      v18[1] = 0x80000001001B3390;
      sub_10000E020(v17, v18);
      goto LABEL_8;
    }

    if (qword_10021EA70 != -1)
    {
      sub_1000064A8();
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006674(v9, qword_100232DE0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (sub_100007670(v11))
    {
      *swift_slowAlloc() = 0;
      sub_10000703C(&_mh_execute_header, v12, v13, "In-memory db connection opened");
      sub_1000037A4();
    }
  }

  return v1;
}

uint64_t static SQLiteDatabase.openConnection(_:readOnly:requiresAuthentication:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v56 - v14;
  __chkstk_darwin(v13);
  v17 = &v56 - v16;
  sub_100150BD0();
  if (!v3)
  {
    v59 = v8;
    v60 = v7;
    if (a3)
    {
      v18 = 3145728;
    }

    else
    {
      v18 = 0;
    }

    if (a2)
    {
      v19 = 65537;
    }

    else
    {
      v19 = 65542;
    }

    ppDb = 0;
    URL.path.getter();
    v20 = String.utf8CString.getter();

    a2 = sqlite3_open_v2((v20 + 32), &ppDb, v19 | v18, 0);

    if (a2)
    {
      if (qword_10021EA70 != -1)
      {
        sub_1000064A8();
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000964C(v21, qword_100232DE0);
      v23 = v59;
      v22 = v60;
      (*(v59 + 16))(v12, a1, v60);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        sub_1000083D0();
        v27 = swift_slowAlloc();
        v61 = v27;
        *v26 = 67109378;
        *(v26 + 4) = a2;
        *(v26 + 8) = 2080;
        v28 = URL.path.getter();
        v29 = v23;
        v31 = v30;
        (*(v29 + 8))(v12, v22);
        v32 = sub_100009684(v28, v31, &v61);

        *(v26 + 10) = v32;
        _os_log_impl(&_mh_execute_header, v24, v25, "Error %d occurred while opening db connection: %s", v26, 0x12u);
        sub_100007378(v27);
        sub_1000037A4();

        sub_1000037A4();
      }

      else
      {

        (*(v23 + 8))(v12, v22);
      }

      if (ppDb)
      {
        sub_1001515A4(ppDb);
      }

      sub_10011DC44();
      sub_100004248();
      *v42 = a2;
      *(v42 + 8) = 0xD00000000000001CLL;
      *(v42 + 16) = 0x80000001001B33C0;
      *(v42 + 24) = 0;
LABEL_22:
      swift_willThrow();
      return a2;
    }

    a2 = ppDb;
    if (!ppDb)
    {
      v45 = v59;
      v44 = v60;
      if (qword_10021EA70 != -1)
      {
        sub_1000064A8();
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_10000964C(v46, qword_100232DE0);
      (*(v45 + 16))(v15, a1, v44);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v48))
      {
        sub_10000F554();
        a2 = swift_slowAlloc();
        sub_1000083D0();
        v49 = swift_slowAlloc();
        v61 = v49;
        *a2 = 136315138;
        v50 = URL.path.getter();
        v52 = v51;
        (*(v45 + 8))(v15, v44);
        v53 = sub_100009684(v50, v52, &v61);

        *(a2 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v47, v48, "Failed to open db connection with no error: %s", a2, 0xCu);
        sub_100007378(v49);
        sub_1000037A4();

        sub_1000037A4();
      }

      else
      {

        (*(v45 + 8))(v15, v44);
      }

      sub_10011DC44();
      v54 = sub_100004248();
      *v55 = 0xD00000000000002ALL;
      v55[1] = 0x80000001001B33E0;
      sub_10000E020(v54, v55);
      goto LABEL_22;
    }

    v34 = v59;
    v33 = v60;
    if (qword_10021EA70 != -1)
    {
      sub_1000064A8();
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000964C(v35, qword_100232DE0);
    (*(v34 + 16))(v17, a1, v33);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      sub_10000F554();
      v38 = swift_slowAlloc();
      sub_1000083D0();
      v58 = swift_slowAlloc();
      v61 = v58;
      *v38 = 136315138;
      v57 = URL.path.getter();
      v40 = v39;
      (*(v34 + 8))(v17, v33);
      v41 = sub_100009684(v57, v40, &v61);

      *(v38 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v36, v37, "DB connection opened %s", v38, 0xCu);
      sub_100007378(v58);
      sub_1000037A4();

      sub_1000037A4();
    }

    else
    {

      (*(v34 + 8))(v17, v33);
    }
  }

  return a2;
}

void sub_1001515A4(sqlite3 *a1)
{
  v1 = sqlite3_close_v2(a1);
  if (v1)
  {
    v2 = v1;
    if (qword_10021EA70 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000964C(v3, qword_100232DE0);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67240192;
      *(v5 + 4) = v2;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Close db connection failed with code %{public}d", v5, 8u);
    }
  }
}

uint64_t SQLiteDatabase.__allocating_init()()
{
  sub_1000087DC();
  v0 = swift_allocObject();
  SQLiteDatabase.init()();
  return v0;
}

uint64_t SQLiteDatabase.init()()
{
  v2 = v0;
  *(v0 + 16) = 0;
  v3 = static SQLiteDatabase.openInMemoryConnection()();
  if (v1)
  {
  }

  else
  {
    *(v0 + 16) = v3;
    SQLiteDatabase.registerMathFunctions()(v3, v4, v5, v6, v7);

    if (qword_10021EA70 != -1)
    {
      sub_1000064A8();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006674(v8, qword_100232DE0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (sub_100007670(v10))
    {
      *swift_slowAlloc() = 0;
      sub_10000703C(&_mh_execute_header, v11, v12, "In-memory db connection opened");
      sub_1000037A4();
    }
  }

  return v2;
}

uint64_t SQLiteDatabase.__allocating_init(_:readOnly:requiresAuthentication:)(uint64_t a1, uint64_t a2, char a3)
{
  sub_1000087DC();
  v6 = swift_allocObject();
  SQLiteDatabase.init(_:readOnly:requiresAuthentication:)(a1, a2, a3);
  return v6;
}

uint64_t SQLiteDatabase.init(_:readOnly:requiresAuthentication:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = 0;
  v6 = static SQLiteDatabase.openConnection(_:readOnly:requiresAuthentication:)(a1, a2, a3);
  if (!v4)
  {
    *(v3 + 16) = v6;
    SQLiteDatabase.registerMathFunctions()(v6, v7, v8, v9, v10);
  }

  v11 = type metadata accessor for URL();
  sub_10000374C(v11);
  (*(v12 + 8))(a1);
  return v3;
}

uint64_t SQLiteDatabase.__allocating_init(connection:)(uint64_t a1)
{
  sub_1000087DC();
  v2 = swift_allocObject();
  SQLiteDatabase.init(connection:)(a1);
  return v2;
}

uint64_t SQLiteDatabase.init(connection:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  if (a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    if (qword_10021EA70 != -1)
    {
      sub_1000064A8();
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006674(v3, qword_100232DE0);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      sub_10000F554();
      v6 = swift_slowAlloc();
      sub_1000083D0();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136315138;
      type metadata accessor for SQLiteDatabase();

      v8 = String.init<A>(describing:)();
      v10 = sub_100009684(v8, v9, &v20);

      *(v6 + 4) = v10;
      sub_100007C74();
      _os_log_impl(v11, v12, v13, v14, v15, v16);
      sub_100007378(v7);
      sub_1000037A4();

      sub_1000037A4();
    }

    sub_10011DC44();
    v17 = sub_100004248();
    *v18 = 0xD00000000000002BLL;
    v18[1] = 0x80000001001B3410;
    sub_10000E020(v17, v18);
    swift_willThrow();
  }

  return v2;
}

uint64_t SQLiteDatabase.__deallocating_deinit()
{
  SQLiteDatabase.close()();
  v0 = sub_1000087DC();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t SQLiteDatabase.detachConnection()()
{
  result = *(v0 + 16);
  *(v0 + 16) = 0;
  return result;
}

Swift::Void __swiftcall SQLiteDatabase.close()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_1001515A4(v1);
    *(v0 + 16) = 0;
  }
}

uint64_t SQLiteDatabase.statement(with:verboseLog:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *(v4 + 16);
  if (v7)
  {
    ppStmt = 0;
    v11 = String.utf8CString.getter();
    v12 = sqlite3_prepare_v2(v7, (v11 + 32), -1, &ppStmt, 0);

    v13 = ppStmt;
    if (ppStmt && !v12)
    {
      type metadata accessor for SQLiteStatement.Context();
      swift_allocObject();
      *a4 = sub_100154F10(v5, v13);
      *(a4 + 8) = a1;
      *(a4 + 16) = a2;
      *(a4 + 24) = xmmword_1001A3DF0;
      *(a4 + 40) = a3 & 1;
    }

    _StringGuts.grow(_:)(46);

    sub_1000066DC();
    v23 = v16;
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 8236;
    v18._object = 0xE200000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = a1;
    v19._object = a2;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0xD000000000000028;
    v20._object = v23;
    v21 = SQLiteDatabase.logAndReturnSQLErrorMessage(_:)(v20);

    sub_10011DC44();
    sub_100004248();
    *v22 = v12;
    *(v22 + 8) = v21;
    *(v22 + 24) = 0;
  }

  else
  {
    sub_10011DC44();
    sub_100004248();
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *v15 = 0;
    *(v15 + 24) = 4;
  }

  return swift_willThrow();
}

uint64_t SQLiteDatabase.transaction(_:)(void (*a1)(uint64_t))
{
  result = SQLiteDatabase.statement(with:verboseLog:)(0xD000000000000012, 0x80000001001B3470, 0, &v8);
  if (!v1)
  {
    SQLiteStatement.execute()();
    if (v4)
    {

      v15 = v9;
      v5 = &v15;
    }

    else
    {

      v14 = v9;
      v6 = sub_100062E58(&v14);
      a1(v6);
      SQLiteDatabase.statement(with:verboseLog:)(0x3B54494D4D4F43, 0xE700000000000000, 0, &v10);
      SQLiteStatement.execute()();

      if (v7)
      {
        v13 = v11;
        v5 = &v13;
      }

      else
      {
        v12 = v11;
        v5 = &v12;
      }
    }

    return sub_100062E58(v5);
  }

  return result;
}

uint64_t SQLiteDatabase.registerMathFunctions()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  if (sub_1000056BC(*(v5 + 16), "power", 2, a4, a5, sub_10015288C))
  {
    sub_100005AF0();
    _StringGuts.grow(_:)(35);

    sub_1000066DC();
    v22 = v10;
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 0xD000000000000021;
    v12._object = v22;
    v13 = SQLiteDatabase.logAndReturnSQLErrorMessage(_:)(v12);
    countAndFlagsBits = v13._countAndFlagsBits;
    object = v13._object;

    v6 = v6;
  }

  else
  {
    if (!sub_1000056BC(*(v5 + 16), "exp", 1, v8, v9, sub_1001529A8))
    {

      return v7;
    }

    sub_100005AF0();
    _StringGuts.grow(_:)(33);

    sub_1000066DC();
    v23 = v16;
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 0xD00000000000001FLL;
    v18._object = v23;
    v19 = SQLiteDatabase.logAndReturnSQLErrorMessage(_:)(v18);
    countAndFlagsBits = v19._countAndFlagsBits;
    object = v19._object;

    v6 = 0;
  }

  sub_10011DC44();
  sub_100004248();
  *v20 = v6;
  *(v20 + 8) = countAndFlagsBits;
  *(v20 + 16) = object;
  *(v20 + 24) = 0;
  swift_willThrow();
  return v7;
}

void sub_10015271C(sqlite3_context *a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    return;
  }

  v4 = Array<A>.init(_:argc:)(a3, a2);
  v5 = v4;
  if (!*(v4 + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = *(v4 + 32);
  if (sqlite3_value_type(v6) != 2 && sqlite3_value_type(v6) != 1)
  {
    goto LABEL_11;
  }

  if (*(v5 + 16) < 2uLL)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v7 = *(v5 + 40);
  if (sqlite3_value_type(v7) != 2 && sqlite3_value_type(v7) != 1)
  {
LABEL_11:

    v11 = 0.0;
    goto LABEL_12;
  }

  v8 = sqlite3_value_double(*(v5 + 32));
  v9 = *(v5 + 40);

  v10 = sqlite3_value_double(v9);
  v11 = pow(v8, v10);
LABEL_12:

  sqlite3_result_double(a1, v11);
}

void sub_100152890(sqlite3_context *a1, int a2, uint64_t a3)
{
  if (a1)
  {
    v4 = Array<A>.init(_:argc:)(a3, a2);
    v5 = v4;
    if (*(v4 + 16))
    {
      v6 = *(v4 + 32);
      if (sqlite3_value_type(v6) == 2 || sqlite3_value_type(v6) == 1)
      {
        v7 = *(v5 + 32);

        v8 = sqlite3_value_double(v7);
        v9 = exp(v8);
      }

      else
      {

        v9 = 0.0;
      }

      sqlite3_result_double(a1, v9);
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_1001529D8()
{
  result = qword_10021EF48;
  if (!qword_10021EF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EF48);
  }

  return result;
}

uint64_t sub_100152A48(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v54 = a1;
  v55 = a2;
  sub_100003A6C();
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  sub_100004370();
  v56 = v16;
  v18 = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100003A6C();
  v58 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v22);
  v24 = &v43 - v23;
  v25 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v26);
  sub_100004370();
  v52 = v27;
  swift_getAssociatedTypeWitness();
  sub_100003A6C();
  v46 = v29;
  v47 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  v33 = &v43 - v32;
  v34 = dispatch thunk of Collection.count.getter();
  if (!v34)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v57 = v34;
  v61 = ContiguousArray.init()();
  v48 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v57);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v57 & 0x8000000000000000) == 0)
  {
    v43 = v12;
    v44 = a5;
    v36 = 0;
    v49 = (v58 + 16);
    v50 = v58 + 8;
    v51 = v8;
    while (!__OFADD__(v36, 1))
    {
      v58 = v36 + 1;
      v37 = dispatch thunk of Collection.subscript.read();
      (*v49)(v24);
      v37(v60, 0);
      v38 = v59;
      v54(v24, v56);
      if (v38)
      {
        v41 = sub_100003EB0();
        v42(v41);
        (*(v46 + 8))(v33, v47);

        return (*(v43 + 32))(v45, v56, v44);
      }

      v59 = 0;
      v39 = sub_100003EB0();
      v40(v39);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v36;
      if (v58 == v57)
      {
        (*(v46 + 8))(v33, v47);
        return v61;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SQLiteStatement.nextRowValue<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = SQLiteStatement.nextRow()();
  if (!v3)
  {
    if (result)
    {
      (*(a2 + 8))(result, a1, a2);
      v8 = a3;
      v9 = 0;
    }

    else
    {
      v8 = a3;
      v9 = 1;
    }

    return sub_1000051C0(v8, v9, 1, a1);
  }

  return result;
}

uint64_t SQLiteStatement.singleRowIfAny<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return sub_100153044(a1, a2);
}

{
  return sub_100153044(a1, a2);
}

uint64_t sub_100152EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(a4 + 8);

  result = v12(v13, a3, a4);
  if (!v4)
  {
    sub_1000051C0(v11, 0, 1, a3);
    return (*(v8 + 40))(v16, v11, v7);
  }

  return result;
}

uint64_t sub_100153044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000051C0(a2, 1, 1, a1);
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[2];

  SQLiteStatement.forEach(_:)();

  if (!v3)
  {
  }

  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 8))(a2, v5);
}

uint64_t sub_10015315C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(a4 + 8);

  result = v12(v13, a3, a4);
  if (!v4)
  {
    return (*(v8 + 40))(v16, v11, v7);
  }

  return result;
}

uint64_t SQLiteStatement.singleRow<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1001532D4(a1, a2, SQLiteStatement.singleRowIfAny<A>(), a3);
}

{
  return sub_1001532D4(a1, a2, SQLiteStatement.singleRowIfAny<A>(), a3);
}

uint64_t sub_1001532D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, double)@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v8 = type metadata accessor for Optional();
  sub_100003A6C();
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v25 - v18;
  result = a3(a1, a2, v17);
  if (!v4)
  {
    v21 = v26;
    (*(v10 + 16))(v15, v19, v8);
    v22 = sub_100008D0C(v15, 1, a1);
    v23 = *(v10 + 8);
    if (v22 == 1)
    {
      v23(v15, v8);
      sub_10011DC44();
      swift_allocError();
      *(v24 + 8) = 0;
      *(v24 + 16) = 0;
      *v24 = 5;
      *(v24 + 24) = 4;
      swift_willThrow();
      return (v23)(v19, v8);
    }

    else
    {
      v23(v19, v8);
      return (*(*(a1 - 8) + 32))(v21, v15, a1);
    }
  }

  return result;
}

uint64_t sub_1001534FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a3 - 8) + 64);
  __chkstk_darwin(a1);
  v10 = *(v9 + 8);

  result = v10(a2, a3, a4);
  if (!v4)
  {
    type metadata accessor for Array();
    return Array.append(_:)();
  }

  return result;
}

uint64_t sub_100153604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[3] = a2;
  v9[0] = static Array._allocateUninitialized(_:)();
  v8[2] = a1;
  v6 = type metadata accessor for Array();
  SQLiteStatement.reduce<A>(into:handleRow:)(v9, a3, v8, v6);
  if (v3)
  {
  }

  return v9[1];
}

uint64_t sub_1001536A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a1;
  v6 = type metadata accessor for Optional();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v24 = *(a3 - 8);
  v10 = *(v24 + 64);
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  v17 = *(a4 + 8);

  v19 = v27;
  result = v17(v18, a3, a4);
  if (!v19)
  {
    v21 = v24;
    v22 = v25;
    if (sub_100008D0C(v9, 1, a3) == 1)
    {
      return (*(v22 + 8))(v9, v6);
    }

    else
    {
      (*(v21 + 32))(v16, v9, a3);
      (*(v21 + 16))(v13, v16, a3);
      type metadata accessor for Array();
      Array.append(_:)();
      return (*(v21 + 8))(v16, a3);
    }
  }

  return result;
}

uint64_t Array<A>.init(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v8 = sub_100154FFC();
  if (v3)
  {

    return v7;
  }

  result = sqlite3_column_count(v8);
  if ((result & 0x80000000) == 0)
  {
    v14[1] = 0;
    v14[2] = result;
    __chkstk_darwin(result);
    v13[2] = a2;
    v13[3] = a3;
    v13[4] = a1;
    v10 = sub_100046184(&qword_10021F068, &qword_1001A3EF8);
    v11 = sub_100046184(&qword_100216900, &unk_10019AE20);
    v12 = sub_100153B88();
    v7 = sub_100152A48(sub_100153B64, v13, v10, a2, v11, v12, &protocol self-conformance witness table for Error, v14);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100153A30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *a1;
  v11 = *(a4 + 8);

  result = v11(a2, v10, a3, a4);
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

uint64_t sub_100153AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Array<A>.init(with:)(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_100153B88()
{
  result = qword_10021F070;
  if (!qword_10021F070)
  {
    sub_1000461CC(&qword_10021F068, &qword_1001A3EF8);
    sub_100153C14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F070);
  }

  return result;
}

unint64_t sub_100153C14()
{
  result = qword_10021F078;
  if (!qword_10021F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F078);
  }

  return result;
}

uint64_t Array<A>.init(_:argc:)(uint64_t result, int a2)
{
  if (result)
  {
    if ((a2 & 0x80000000) == 0)
    {
      v3 = result;
      v4 = a2;
      if (a2)
      {
        result = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v2 = result;
        *(result + 16) = v4;
      }

      else
      {
        v2 = _swiftEmptyArrayStorage;
      }

      for (i = 0; ; ++i)
      {
        if (v4 == i)
        {
          v2[2] = v4;
          return v2;
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        v8 = *(v3 + 8 * i);
        if (!v8)
        {
          sub_10011DC44();
          v9 = sub_100004248();
          sub_1000046A0(xmmword_1001A3F40, v9, v10);
          v2[2] = 0;

          return v2;
        }

        v2[i + 4] = v8;
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_10011DC44();
    v5 = sub_100004248();
    sub_1000046A0(xmmword_1001A3F50, v5, v6);
    return v2;
  }

  return result;
}

uint64_t SQLiteArgument.init(_:)(uint64_t result)
{
  if (!result)
  {
    sub_10011DC44();
    v1 = sub_100004248();
    return sub_1000046A0(xmmword_1001A3F40, v1, v2);
  }

  return result;
}

Swift::Int8 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteArgument.getInt8()()
{
  v1 = sqlite3_value_int(v0);
  if (v1 >= -128)
  {
    if (v1 > 127)
    {
      __break(1u);
    }
  }

  else
  {
    sub_10011DC44();
    v2 = sub_100004248();
    LOBYTE(v1) = sub_1000064BC(v2, v3);
  }

  return v1;
}

Swift::UInt8 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteArgument.getUInt8()()
{
  v1 = sqlite3_value_int(v0);
  if ((v1 & 0x80000000) != 0)
  {
    goto LABEL_4;
  }

  if (v1 > 0xFF)
  {
    __break(1u);
LABEL_4:
    sub_10011DC44();
    v2 = sub_100004248();
    LOBYTE(v1) = sub_1000064BC(v2, v3);
  }

  return v1;
}

Swift::Int16 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteArgument.getInt16()()
{
  v1 = sqlite3_value_int(v0);
  if (v1 >= -32768)
  {
    if (v1 >= 0x8000)
    {
      __break(1u);
    }
  }

  else
  {
    sub_10011DC44();
    v2 = sub_100004248();
    LOWORD(v1) = sub_1000064BC(v2, v3);
  }

  return v1;
}

Swift::UInt16 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteArgument.getUInt16()()
{
  v1 = sqlite3_value_int(v0);
  if ((v1 & 0x80000000) != 0)
  {
    goto LABEL_4;
  }

  if (HIWORD(v1))
  {
    __break(1u);
LABEL_4:
    sub_10011DC44();
    v2 = sub_100004248();
    LOWORD(v1) = sub_1000064BC(v2, v3);
  }

  return v1;
}

Swift::UInt32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteArgument.getUInt32()()
{
  v1 = sqlite3_value_int(v0);
  if ((v1 & 0x80000000) != 0)
  {
    sub_10011DC44();
    v2 = sub_100004248();
    sub_1000064BC(v2, v3);
  }

  return v1;
}

sqlite3_int64 sub_1001540A0(sqlite3_value *a1)
{
  v1 = sqlite3_value_int64(a1);
  if (v1 < 0)
  {
    sub_10011DC44();
    v2 = sub_100004248();
    sub_1000064BC(v2, v3);
  }

  return v1;
}

Swift::Float __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteArgument.getFloat()()
{
  v1 = sqlite3_value_double(v0);
  if (fabs(v1) > -3.40282347e38)
  {
    return v1;
  }

  sub_10011DC44();
  v3 = sub_100004248();
  sub_1000064BC(v3, v4);
  return result;
}

uint64_t SQLiteArgument.withUnsafeBytes<A>(_:)(uint64_t (*a1)(const void *, uint64_t), int a2, sqlite3_value *a3)
{
  v5 = sqlite3_value_blob(a3);
  if (v5)
  {
    v6 = v5;
    v7 = sqlite3_value_bytes(a3);
    v5 = v6;
  }

  else
  {
    v7 = 0;
  }

  return a1(v5, v7);
}

uint64_t SQLiteArgument.getData()(sqlite3_value *a1)
{
  if (sqlite3_value_blob(a1))
  {
    sqlite3_value_bytes(a1);
    return Data.init(bytes:count:)();
  }

  else
  {
    sqlite3_value_type(a1);
    return 0;
  }
}

uint64_t SQLiteArgument.getUnsafeData()(sqlite3_value *a1)
{
  v2 = type metadata accessor for Data.Deallocator();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sqlite3_value_blob(a1))
  {
    sqlite3_value_bytes(a1);
    (*(v3 + 104))(v6, enum case for Data.Deallocator.none(_:), v2);
    return Data.init(bytesNoCopy:count:deallocator:)();
  }

  else
  {
    sqlite3_value_type(a1);
    return 0;
  }
}

uint64_t sub_1001543C8(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  if (v3 >> 60 == 15)
  {
    sub_10011DC44();
    sub_100004248();
    sub_100003EC4(v4, 6);
  }

  return v2;
}

Swift::String_optional __swiftcall SQLiteArgument.getString()()
{
  v1 = sqlite3_value_text(v0);
  if (v1)
  {
    v1 = String.init(cString:)();
  }

  else
  {
    v2 = 0;
  }

  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteArgument.getStringNonNull()()
{
  if (sqlite3_value_text(v0))
  {
    v1 = String.init(cString:)();
  }

  else
  {
    sub_10011DC44();
    sub_100004248();
    v1 = sub_100003EC4(v3, 6);
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t SQLiteArgument.getBase64EncodedData()(sqlite3_value *a1)
{
  if (sqlite3_value_type(a1) != 4 && sqlite3_value_type(a1) != 3)
  {
    return 0;
  }

  if (!sqlite3_value_text(a1))
  {
    return 0;
  }

  String.init(cString:)();
  v2 = Data.init(base64Encoded:options:)();
  v4 = v3;

  if (v4 >> 60 == 15)
  {
    return 0;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for SQLiteArgument(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 8))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLiteArgument(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

SQLiter::SQLiteDataType_optional __swiftcall SQLiteDataType.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 6)
  {
    return 5;
  }

  else
  {
    return (0x40201030005uLL >> (8 * rawValue));
  }
}

unint64_t sub_100154628()
{
  result = qword_10021F080;
  if (!qword_10021F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F080);
  }

  return result;
}

SQLiter::SQLiteDataType_optional sub_100154694@<W0>(Swift::Int32 *a1@<X0>, SQLiter::SQLiteDataType_optional *a2@<X8>)
{
  result.value = SQLiteDataType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1001546C0@<X0>(_DWORD *a1@<X8>)
{
  result = SQLiteDataType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLiteDataType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> String.ensureValidSQLNameCharacters()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = v3;
  v12[1] = v2;
  if (qword_10021EA68 != -1)
  {
    swift_once();
  }

  sub_10000964C(v4, qword_100232DC8);
  CharacterSet.inverted.getter();
  sub_10000527C();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v10 = v9;
  (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
    sub_10011DC44();
    swift_allocError();
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = 10;
    *(v11 + 24) = 4;
    swift_willThrow();
  }
}

void sub_10015495C()
{
  v1 = *v0;
  v2 = v0[1];
  String.ensureValidSQLNameCharacters()();
}

uint64_t SQLiteStatement.forEach(_:)()
{
  sub_10000E030();
  while (1)
  {
    result = SQLiteStatement.nextRow()();
    if (v1)
    {
      break;
    }

    if (!result)
    {
      if (v3 < v4)
      {
        __break(1u);
      }

      else if (v3 - v4 < *(v0 + 24))
      {
        sub_10011DC44();
        sub_100004248();
        return sub_100003EC4(v6, 5);
      }

      return result;
    }

    if (!v4)
    {
      sub_10011DC44();
      sub_100004248();
      sub_100003EC4(v7, 2);
    }

    v2(result);

    --v4;
  }

  return result;
}

double SQLiteStatement.init(database:statement:sqlString:verboseLog:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  type metadata accessor for SQLiteStatement.Context();
  v12 = swift_allocObject();
  v12[3] = a2;
  v12[4] = &_swiftEmptyDictionarySingleton;
  v12[2] = a1;
  *a6 = v12;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  result = 0.0;
  *(a6 + 24) = xmmword_1001A3DF0;
  *(a6 + 40) = a5;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteStatement.execute()()
{
  v2 = v0[4];
  for (i = v2; ; --i)
  {
    v4 = SQLiteStatement.nextRow()();
    if (v1)
    {
      break;
    }

    if (!v4)
    {
      if (v2 < i)
      {
        __break(1u);
      }

      else if (v2 - i < v0[3])
      {
        sub_10011DC44();
        sub_100004248();
        sub_100003EC4(v5, 5);
      }

      return;
    }

    if (!i)
    {
      sub_10011DC44();
      sub_100004248();
      sub_100003EC4(v6, 2);

      return;
    }

    sub_1001555B4(v4, v0);
  }
}

uint64_t SQLiteStatement.nextRow()()
{
  v2 = v0;
  v3 = *v0;
  v4 = sub_100154FFC();
  if (!v1)
  {
    v6 = v4;

    v7 = sqlite3_step(v6);
    if (v7 != 100)
    {
      v8 = v7;
      if (v7 == 101)
      {

        if (v2[5])
        {
          if (qword_10021EA70 != -1)
          {
            sub_10000466C();
          }

          v9 = type metadata accessor for Logger();
          sub_10000964C(v9, qword_100232DE0);
          v11 = v2[1];
          v10 = v2[2];

          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v12, v13))
          {
            v14 = swift_slowAlloc();
            v15 = swift_slowAlloc();
            v19[0] = v15;
            *v14 = 136315138;
            *(v14 + 4) = sub_100009684(v11, v10, v19);
            _os_log_impl(&_mh_execute_header, v12, v13, "SQL statement executed: %s", v14, 0xCu);
            sub_100007378(v15);
          }
        }

        return 0;
      }

      else
      {

        sub_100154F90();
        _StringGuts.grow(_:)(39);

        v19[0] = 0xD000000000000025;
        v19[1] = 0x80000001001B3580;
        String.append(_:)(*(v2 + 1));
        v16._countAndFlagsBits = 0xD000000000000025;
        v16._object = 0x80000001001B3580;
        v17 = SQLiteDatabase.logAndReturnSQLErrorMessage(_:)(v16);

        v3 = v8;
        sub_10011DC44();
        sub_100004248();
        *v18 = v8;
        *(v18 + 8) = v17;
        *(v18 + 24) = 0;
        swift_willThrow();
      }
    }
  }

  return v3;
}

uint64_t SQLiteStatement.reduce<A>(into:handleRow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003EE8(a1, a2, a3, a4);
  v8 = v7;
  (*(v9 + 16))(v5);
  sub_100011BB0();
  result = SQLiteStatement.forEach(_:)();
  if (v6)
  {
    return (*(v8 + 8))(v5, v4);
  }

  return result;
}

void *sub_100154F10(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[4] = &_swiftEmptyDictionarySingleton;
  v2[2] = a1;
  return v2;
}

void *sub_100154F28()
{
  v1 = v0[3];
  if (v1)
  {
    sqlite3_finalize(v1);
  }

  v2 = v0[2];

  v3 = v0[4];

  return v0;
}

uint64_t sub_100154F5C()
{
  sub_100154F28();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_100154F90()
{
  v1 = *(v0 + 16);
  if (v1 && *(v1 + 16))
  {
  }

  sub_10011DC44();
  sub_100004248();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *v3 = 4;
  *(v3 + 24) = 4;
  return swift_willThrow();
}

uint64_t sub_100154FFC()
{
  v1 = *(v0 + 16);
  if (!v1 || !*(v1 + 16))
  {
    v3 = 4;
LABEL_6:
    sub_10011DC44();
    sub_100004248();
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *v4 = v3;
    *(v4 + 24) = 4;
    return swift_willThrow();
  }

  result = *(v0 + 24);
  if (!result)
  {
    v3 = 3;
    goto LABEL_6;
  }

  return result;
}

__n128 SQLiteStatement.bind(_:at:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = a1[3];
  v9 = a1[4];
  sub_100007534(a1, v8);
  (*(v9 + 8))(v5, a2, v8, v9);
  if (!v4)
  {
    v11 = *v5;
    v23 = *(v5 + 1);

    sub_100007E54(v12, v13, v14, v15, v16, v17, v18, v19, v21, v22, v23);
    v20 = *(v5 + 1);
    *a3 = *v5;
    *(a3 + 16) = v20;
    result = *(v5 + 25);
    *(a3 + 25) = result;
  }

  return result;
}

void SQLiteStatement.bind(_:withName:)()
{
  sub_10000F6F8();
  v4 = *v0;
  v5 = sub_100154FFC();
  if (!v1)
  {
    v6 = v5;
    v7 = String.utf8CString.getter();
    LODWORD(v6) = sqlite3_bind_parameter_index(v6, (v7 + 32));

    if (v6)
    {
      v8 = v3[4];
      sub_100007534(v3, v3[3]);
      v9 = sub_1000087EC();
      v10(v9);
      v22 = *(v2 + 8);

      sub_100007E54(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, v22);
      sub_100008248();
    }

    else
    {
      sub_10011DC44();
      sub_100004248();
      sub_100003EC4(v19, 9);
    }
  }
}

uint64_t SQLiteStatement.bindIfAny(_:withName:)()
{
  sub_10000F6F8();
  v5 = v4;
  v6 = *v0;
  result = sub_100154FFC();
  if (!v1)
  {
    v8 = result;
    v9 = String.utf8CString.getter();
    LODWORD(v8) = sqlite3_bind_parameter_index(v8, (v9 + 32));

    if (v8)
    {
      v10 = v3[4];
      sub_100007534(v3, v3[3]);
      v11 = sub_1000087EC();
      v12(v11);
    }

    v14 = *(v2 + 8);
    v13 = *(v2 + 16);

    v16 = *(v2 + 40);
    *v5 = v6;
    *(v5 + 8) = v14;
    *(v5 + 16) = v15;
    *(v5 + 24) = *(v2 + 24);
    *(v5 + 40) = v16;
  }

  return result;
}

double SQLiteStatement.bind(_:)(uint64_t a1)
{
  SQLiteStatement.bind(_:)(a1);
  if (!v1)
  {
    *&result = sub_10000AD18(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, v13, v14, v15).n128_u64[0];
  }

  return result;
}

void SQLiteStatement.bind(_:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    for (i = 1; ; ++i)
    {
      v6 = v4[3];
      v7 = v4[4];
      sub_100007534(v4, v6);
      (*(v7 + 8))(v1, i, v6, v7);
      if (v2)
      {
        break;
      }

      v4 += 5;
      if (!--v3)
      {
        v8 = *v1;
        v20 = *(v1 + 1);

        sub_100007E54(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19, v20);
        sub_100008248();
        return;
      }
    }
  }

  else
  {
    sub_10011DC44();
    sub_100004248();
    sub_100003EC4(v17, 7);
  }
}

sqlite3_stmt *SQLiteStatement.reset()@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1;
  v5 = *v1;
  result = sub_100154FFC();
  if (!v2)
  {
    v7 = result;
    v8 = sqlite3_reset(result);
    if (v8)
    {
      v9 = v8;
      if (qword_10021EA70 != -1)
      {
        sub_10000466C();
      }

      v10 = type metadata accessor for Logger();
      sub_10000964C(v10, qword_100232DE0);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 67109120;
        *(v13 + 4) = v9;
        _os_log_impl(&_mh_execute_header, v11, v12, "Failed to reset a statement with error: %d", v13, 8u);
      }

      sub_10011DC44();
      sub_100004248();
      *v14 = v9;
      *(v14 + 8) = 0xD000000000000010;
      *(v14 + 16) = 0x80000001001B35B0;
      *(v14 + 24) = 0;
      return swift_willThrow();
    }

    else
    {
      sqlite3_clear_bindings(v7);
      v26 = *(v3 + 8);

      result = sub_100007E54(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25, v26);
      v23 = v3[1];
      *a1 = *v3;
      a1[1] = v23;
      *(a1 + 25) = *(v3 + 25);
    }
  }

  return result;
}

uint64_t sub_1001555B4(uint64_t a1, uint64_t *a2)
{
  if (qword_10021EA70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000964C(v3, qword_100232DE0);
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100009684(v4, v6, &v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "Unexpected result: %s", v9, 0xCu);
    sub_100007378(v10);
  }

  sub_10011DC44();
  swift_allocError();
  *v11 = xmmword_1001A4090;
  *(v11 + 16) = 0x80000001001B3630;
  *(v11 + 24) = 0;
  return swift_willThrow();
}

double SQLiteStatement.executeAndReset()()
{
  SQLiteStatement.execute()();
  if (!v1)
  {
    v2 = SQLiteStatement.reset()(&v10);
    *&result = sub_10000AD18(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14).n128_u64[0];
  }

  return result;
}

uint64_t SQLiteStatement.singleRowIfAny<A>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1000051C0(a2, 1, 1, a1);
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[2];

  sub_100011BB0();
  SQLiteStatement.forEach(_:)();

  if (!v3)
  {
  }

  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 8))(a2, v5);
}

uint64_t sub_1001558C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v16 - v13;
  result = a3(a1);
  if (!v5)
  {
    sub_1000051C0(v14, 0, 1, a5);
    return (*(v11 + 40))(a2, v14, v10);
  }

  return result;
}

uint64_t SQLiteStatement.singleRow<A>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  result = SQLiteStatement.singleRowIfAny<A>(_:)(a1, &v17 - v10);
  if (!v2)
  {
    v13 = v18;
    (*(v5 + 16))(v9, v11, v4);
    v14 = sub_100008D0C(v9, 1, a1);
    v15 = *(v5 + 8);
    if (v14 == 1)
    {
      v15(v9, v4);
      sub_10011DC44();
      sub_100004248();
      sub_100003EC4(v16, 5);
      return (v15)(v11, v4);
    }

    else
    {
      v15(v11, v4);
      return (*(*(a1 - 8) + 32))(v13, v9, a1);
    }
  }

  return result;
}

uint64_t SQLiteStatement.iterate(_:)()
{
  v5 = v0;
  sub_10000E030();
  do
  {
    result = SQLiteStatement.nextRow()();
    if (v1)
    {
      break;
    }

    if (!result)
    {
      if (v3 < v4)
      {
        __break(1u);
      }

      else if (v3 - v4 < *(v5 + 24))
      {
        sub_10011DC44();
        sub_100004248();
        return sub_100003EC4(v8, 5);
      }

      return result;
    }

    if (!v4)
    {
      sub_10011DC44();
      sub_100004248();
      sub_100003EC4(v9, 2);
    }

    v7 = v2(result);

    --v4;
  }

  while ((v7 & 1) != 0);
  return result;
}

uint64_t SQLiteStatement.reduce<A>(_:handleRow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003EE8(a1, a2, a3, a4);
  v8 = v7;
  (*(v9 + 16))(v5);
  sub_100011BB0();
  result = SQLiteStatement.forEach(_:)();
  if (v6)
  {
    return (*(v8 + 8))(v5, v4);
  }

  return result;
}

uint64_t sub_100155DC0(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = (__chkstk_darwin)();
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v18 - v15;
  (*(v10 + 16))(v14);
  a3(v14, a1);
  result = (*(v10 + 8))(v14, a5);
  if (!v5)
  {
    return (*(v10 + 40))(a2, v16, a5);
  }

  return result;
}

uint64_t sub_100155F58@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  result = a1();
  if (!v3)
  {
    return sub_1000051C0(a3, 0, 1, a2);
  }

  return result;
}

uint64_t SQLiteStatement.compactMap<A>(_:)()
{
  v2 = static Array._allocateUninitialized(_:)();
  sub_100011BB0();
  SQLiteStatement.forEach(_:)();
  if (v0)
  {
  }

  return v2;
}

uint64_t sub_100156048(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[1] = a4;
  v8 = type metadata accessor for Optional();
  v23[0] = *(v8 - 8);
  v9 = *(v23[0] + 64);
  v10 = __chkstk_darwin(v8);
  v12 = v23 - v11;
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v10);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v23 - v18;
  v20 = v23[3];
  result = a2(a1);
  if (!v20)
  {
    v22 = v23[0];
    if (sub_100008D0C(v12, 1, a5) == 1)
    {
      return (*(v22 + 8))(v12, v8);
    }

    else
    {
      (*(v13 + 32))(v19, v12, a5);
      (*(v13 + 16))(v17, v19, a5);
      type metadata accessor for Array();
      Array.append(_:)();
      return (*(v13 + 8))(v19, a5);
    }
  }

  return result;
}

uint64_t SQLiteStatement.expect(minRows:maxRows:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3[1];
  v4 = v3[2];
  *a3 = *v3;
  *(a3 + 8) = v5;
  *(a3 + 16) = v4;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
  *(a3 + 40) = 0;
}

uint64_t SQLiteStatement.dontExpectRows()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v2 = v1[2];
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = v2;
  *(a1 + 40) = 0;
}

uint64_t sub_100156324@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v4 = v2[1];
  v3 = v2[2];
  *a1 = *v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = a2;
  *(a1 + 40) = 0;
}

uint64_t sub_100156480(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001564C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}