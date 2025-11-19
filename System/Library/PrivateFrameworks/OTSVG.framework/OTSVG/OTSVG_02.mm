void SVG::consumeDigitSequence(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(v21, 170, sizeof(v21));
  v4 = *(a1 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  if (v4 <= a2 || (v5 >= 0 ? (v7 = a1) : (v7 = *a1), v8 = *(v7 + a2) - 48, v8 >= 0xA))
  {
    *a3 = 0;
    *(a3 + 32) = 0;
  }

  else
  {
    v9 = a2 + 1;
    LOBYTE(v21[0]) = v8;
    v21[1] = a2 + 1;
    LOBYTE(v21[2]) = 1;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    std::vector<unsigned char>::push_back[abi:nn200100](&v18, v21);
    memset(v17, 170, sizeof(v17));
    v10 = *(a1 + 23);
    v11 = a1[1];
    if ((v10 & 0x80000000) == 0)
    {
      v11 = *(a1 + 23);
    }

    if (v11 > v9)
    {
      v12 = v10 >> 63;
      do
      {
        if (v12)
        {
          v13 = *a1;
        }

        else
        {
          v13 = a1;
        }

        v14 = *(v13 + v9) - 48;
        if (v14 >= 0xA)
        {
          break;
        }

        ++v9;
        LOBYTE(v17[0]) = v14;
        v17[1] = v9;
        LOBYTE(v17[2]) = 1;
        std::vector<unsigned char>::push_back[abi:nn200100](&v18, v17);
        memset(v17, 170, sizeof(v17));
        v15 = *(a1 + 23);
        v12 = v15 >> 63;
        if ((v15 & 0x80000000) != 0)
        {
          v15 = a1[1];
        }
      }

      while (v15 > v9);
    }

    v16 = v18;
    if (v19 != v18)
    {
      if (v19 - v18 >= 0)
      {
        operator new();
      }

      std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = v9;
    *(a3 + 32) = 1;
    if (v16)
    {
      operator delete(v16);
    }
  }
}

void SVG::consumeIntegerConstant(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v4;
  v13 = v4;
  SVG::consumeDigitSequence(a1, a2, &v12);
  if ((v14 & 1) == 0)
  {
LABEL_11:
    *a3 = 0;
    *(a3 + 16) = 0;
    return;
  }

  v5 = v12;
  v6 = *(&v12 + 1) - v12;
  if (*(&v12 + 1) != v12)
  {
    v7 = 0;
    v8 = 0;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    while (1)
    {
      v9 = v8;
      v8 = *(v12 + v7) + 10 * v8;
      if (v8 < v9)
      {
        break;
      }

      if (v6 == ++v7)
      {
        v10 = *(&v13 + 1);
        *a3 = v8;
        *(a3 + 8) = v10;
        *(a3 + 16) = 1;
        goto LABEL_9;
      }
    }

    operator delete(v12);
    goto LABEL_11;
  }

  v11 = *(&v13 + 1);
  *a3 = 0;
  *(a3 + 8) = v11;
  *(a3 + 16) = 1;
  if (*(&v5 + 1))
  {
LABEL_9:
    operator delete(v5);
  }
}

unint64_t SVG::consumeCommaWsp(uint64_t *a1, unint64_t a2)
{
  v4 = SVG::consumeWsp(a1, a2);
  if (v5)
  {
    do
    {
      v6 = v4;
      v4 = SVG::consumeWsp(a1, v4);
    }

    while ((v7 & 1) != 0);
    v8 = SVG::consumeString<2ul>(",", a1, v6);
    if ((v9 & 1) == 0)
    {
      v8 = v6;
    }

    do
    {
      v10 = v8;
      v8 = SVG::consumeWsp(a1, v8);
    }

    while ((v11 & 1) != 0);
  }

  else
  {
    v12 = SVG::consumeString<2ul>(",", a1, a2);
    if ((v13 & 1) == 0)
    {
      v15 = 0;
      LOBYTE(v10) = 0;
      return v10 | v15;
    }

    do
    {
      v10 = v12;
      v12 = SVG::consumeWsp(a1, v12);
    }

    while ((v14 & 1) != 0);
  }

  v15 = v10 & 0xFFFFFFFFFFFFFF00;
  return v10 | v15;
}

void SVG::consumePathNumber(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = *(a1 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 8);
  }

  v8 = 1.0;
  if (v6 > a2)
  {
    if (v7 >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    v10 = *(v9 + a2);
    if (v10 != 43)
    {
      if (v10 != 45)
      {
        goto LABEL_11;
      }

      v8 = -1.0;
    }

    v3 = a2 + 1;
  }

LABEL_11:
  v14 = NAN;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  SVG::consumeFloatingPointConstant(a1, v3, &v14);
  if (v16 == 1)
  {
    v11 = v8 * v14;
    v12 = v15;
LABEL_15:
    *a3 = v11;
    *(a3 + 8) = v12;
    *(a3 + 16) = 1;
    return;
  }

  memset(v13, 170, sizeof(v13));
  SVG::consumeIntegerConstant(a1, v3, v13);
  if (LOBYTE(v13[2]) == 1)
  {
    v11 = v8 * v13[0];
    v12 = v13[1];
    goto LABEL_15;
  }

  *a3 = 0;
  *(a3 + 16) = 0;
}

void SVG::consumeCoordinatePair(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = -1;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  SVG::consumePathNumber(a1, a2, &v14);
  if (v16 == 1 && ((v5 = v15, v6 = SVG::consumeCommaWsp(a1, v15), (v7 & 1) == 0) ? (v8 = v5) : (v8 = v6), v11 = -1, v12 = 0xAAAAAAAAAAAAAAAALL, v13 = 0xAAAAAAAAAAAAAAAALL, SVG::consumePathNumber(a1, v8, &v11), (v13 & 1) != 0))
  {
    v9 = v11;
    v10 = v12;
    *a3 = v14;
    *(a3 + 8) = v9;
    *(a3 + 16) = v10;
    *(a3 + 24) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 24) = 0;
  }
}

void SVG::consumeListOfCoordinates(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  do
  {
    v4 = SVG::consumeWsp(a1, v4);
  }

  while ((v5 & 1) != 0);
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v6;
  v13 = v6;
  SVG::consumeOneOrMoreGeneric<double>(SVG::consumeCoordinate, __p);
  if (v14 == 1)
  {
    v7 = *(&v13 + 1);
    do
    {
      v8 = v7;
      v7 = SVG::consumeWsp(a1, v7);
    }

    while ((v9 & 1) != 0);
    v10 = *(a1 + 23);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a1 + 8);
    }

    if (v8 == v10)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v11 = 1;
      if (__p[1] != __p[0])
      {
        std::vector<double>::__vallocate[abi:nn200100](a2, (__p[1] - __p[0]) >> 3);
      }
    }

    else
    {
      v11 = 0;
      *a2 = 0;
    }

    *(a2 + 24) = v11;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }
}

void SVG::consumeInteger(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  if (v4 <= a2)
  {
    v8 = 1;
  }

  else
  {
    if (v5 >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    v7 = *(v6 + a2);
    v8 = 1;
    if (v7 != 43)
    {
      if (v7 != 45)
      {
        goto LABEL_12;
      }

      v8 = 0;
    }

    ++a2;
  }

LABEL_12:
  v16 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v9;
  v15 = v9;
  SVG::consumeDigitSequence(a1, a2, __p);
  if (v16 != 1)
  {
LABEL_18:
    *a3 = 0;
    *(a3 + 16) = 0;
    return;
  }

  v10 = SVG::digitsToInt(v8, __p);
  if ((v11 & 1) == 0)
  {
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    goto LABEL_18;
  }

  v12 = *(&v15 + 1);
  v13 = __p[0];
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = 1;
  if (v13)
  {
    operator delete(v13);
  }
}

unint64_t SVG::digitsToInt(char a1, unsigned __int8 **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = v2 - *a2;
  if (v2 != *a2)
  {
    v5 = 0;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    do
    {
      v6 = v5;
      v7 = *v3++;
      v5 = v7 + 10 * v5;
      if (v5 < v6)
      {
        goto LABEL_8;
      }

      --v4;
    }

    while (v4);
    if (a1)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_8:
      v8 = 0;
      LOBYTE(v5) = 0;
      return v5 | v8;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      v8 = 0x8000000000000000;
      LOBYTE(v5) = 0;
      return v5 | v8;
    }

    goto LABEL_12;
  }

  v5 = 0;
  if ((a1 & 1) == 0)
  {
LABEL_12:
    v5 = -v5;
    v8 = v5 & 0xFFFFFFFFFFFFFF00;
    return v5 | v8;
  }

LABEL_10:
  v8 = v5 & 0x7FFFFFFFFFFFFF00;
  return v5 | v8;
}

void SVG::consumeNumber(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 23);
  v7 = *(a1 + 8);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(a1 + 23);
  }

  v8 = 1.0;
  v9 = a2;
  if (v7 > a2)
  {
    v10 = *a1;
    if ((v6 & 0x80000000) == 0)
    {
      v10 = a1;
    }

    v11 = *(v10 + a2);
    if (v11 != 43)
    {
      v9 = a2;
      if (v11 != 45)
      {
        goto LABEL_10;
      }

      v8 = -1.0;
    }

    v9 = a2 + 1;
  }

LABEL_10:
  v32 = 0;
  v33 = 0;
  v34 = 0;
  memset(v30, 170, 24);
  if (v7 > v9)
  {
    v12 = v6 >> 63;
    do
    {
      if (v12)
      {
        v13 = *a1;
      }

      else
      {
        v13 = a1;
      }

      v14 = *(v13 + v9) - 48;
      if (v14 > 9)
      {
        break;
      }

      ++v9;
      v30[0] = v14;
      *&v30[8] = v9;
      v30[16] = 1;
      std::vector<unsigned char>::push_back[abi:nn200100](&v32, v30);
      v15 = *(a1 + 23);
      v12 = v15 >> 63;
      if ((v15 & 0x80000000) != 0)
      {
        v15 = *(a1 + 8);
      }

      memset(v30, 170, 24);
    }

    while (v15 > v9);
  }

  v16 = SVG::consumeString<2ul>(".", a1, v9);
  if ((v17 & 1) == 0 || (v31 = 0xAAAAAAAAAAAAAAAALL, *&v18 = 0xAAAAAAAAAAAAAAAALL, *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL, *v30 = v18, *&v30[16] = v18, SVG::consumeDigitSequence(a1, v16, v30), v31 != 1))
  {
LABEL_32:
    memset(v30, 170, 24);
    SVG::consumeInteger(a1, a2, v30);
    if (v30[16])
    {
      memset(v29, 170, sizeof(v29));
      v27 = *&v30[8];
      SVG::consumeExponent(v29, a1, *&v30[8]);
      v28 = *v30;
      if (LOBYTE(v29[2]) == 1)
      {
        v28 = __exp10(v29[0]) * v28;
        v27 = v29[1];
      }

      *a3 = v28;
      *(a3 + 8) = v27;
      *(a3 + 16) = 1;
    }

    else
    {
      *a3 = 0;
      *(a3 + 16) = 0;
    }

    v20 = v32;
    if (v32)
    {
      goto LABEL_27;
    }

    return;
  }

  v20 = v32;
  v21 = *v30;
  *&v22 = COERCE_DOUBLE(SVG::digitsToFloat(v32, v33, *v30, *&v30[8], v19));
  if ((v23 & 1) == 0)
  {
    if (v21)
    {
      operator delete(v21);
    }

    goto LABEL_32;
  }

  v24 = *&v22;
  memset(v29, 170, sizeof(v29));
  v25 = *&v30[24];
  SVG::consumeExponent(v29, a1, *&v30[24]);
  v26 = v8 * v24;
  if (LOBYTE(v29[2]) == 1)
  {
    v26 = v26 * __exp10(v29[0]);
    v25 = v29[1];
  }

  *a3 = v26;
  *(a3 + 8) = v25;
  *(a3 + 16) = 1;
  if (v21)
  {
    operator delete(v21);
  }

  if (v20)
  {
LABEL_27:

    operator delete(v20);
  }
}

void std::vector<unsigned char>::push_back[abi:nn200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t SVG::digitsToFloat(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = 0.0;
  v7 = 0.0;
  v8 = a2 - a1;
  if (a2 == a1)
  {
LABEL_7:
    if (a4 != a3)
    {
      v12 = 0;
      if ((a4 - a3) <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = a4 - a3;
      }

      v6 = 0.0;
      do
      {
        LOBYTE(a5) = *(a3 + v12);
        v14 = *&a5;
        a5 = __exp10(-1.0 - v12);
        v6 = v6 + v14 * a5;
        ++v12;
      }

      while (v13 != v12);
    }

    *&result = v7 + v6;
  }

  else
  {
    v9 = 0;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    while (1)
    {
      v10 = *a1++;
      v11 = v10 + 10 * v9;
      if (v11 < v9)
      {
        break;
      }

      v9 = v11;
      if (!--v8)
      {
        v7 = v11;
        goto LABEL_7;
      }
    }

    *&result = 0.0;
  }

  return result;
}

void SVG::consumeLength(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = NAN;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  SVG::consumeNumber(a1, a2, &v12);
  if (v14)
  {
    v5 = v13;
    v6 = SVG::consumeString<2ul>("%", a1, v13);
    if (v7)
    {
      *a3 = v12;
      *(a3 + 8) = 1;
      *(a3 + 16) = v6;
      *(a3 + 24) = 1;
    }

    else
    {
      v9 = NAN;
      v10 = 0xAAAAAAAAAAAAAAAALL;
      v11 = 0xAAAAAAAAAAAAAAAALL;
      SVG::consumeUnitSuffix(a1, v5, &v9);
      if (v11 == 1)
      {
        v8 = v10;
        *a3 = v12 * v9;
        *(a3 + 8) = 0;
        *(a3 + 16) = v8;
      }

      else
      {
        *a3 = v12;
        *(a3 + 8) = 0;
        *(a3 + 16) = v5;
      }

      *(a3 + 24) = 1;
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 24) = 0;
  }
}

unint64_t SVG::consumeUnitSuffix@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = SVG::consumeString<3ul>("px", a1, a2);
  if (v7)
  {
    v8 = 0x3FF0000000000000;
  }

  else
  {
    result = SVG::consumeString<3ul>("in", a1, a2);
    if (v9)
    {
      v8 = 0x4058000000000000;
    }

    else
    {
      result = SVG::consumeString<3ul>("cm", a1, a2);
      if (v10)
      {
        v8 = 0x4042E5CB972E5CB9;
      }

      else
      {
        result = SVG::consumeString<3ul>("mm", a1, a2);
        if (v11)
        {
          v8 = 0x400E3C78F1E3C78ELL;
        }

        else
        {
          result = SVG::consumeString<3ul>("pt", a1, a2);
          if (v12)
          {
            v8 = 0x3FF5555555555555;
          }

          else
          {
            result = SVG::consumeString<3ul>("pc", a1, a2);
            if ((v13 & 1) == 0)
            {
              v14 = 0;
              *a3 = 0;
              goto LABEL_14;
            }

            v8 = 0x4030000000000000;
          }
        }
      }
    }
  }

  *a3 = v8;
  *(a3 + 8) = result;
  v14 = 1;
LABEL_14:
  *(a3 + 16) = v14;
  return result;
}

void SVG::consumeCSSLength(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = NAN;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  SVG::consumeNumber(a1, a2, &v10);
  if (v12)
  {
    v7 = NAN;
    v8 = 0xAAAAAAAAAAAAAAAALL;
    v9 = 0xAAAAAAAAAAAAAAAALL;
    v5 = v11;
    SVG::consumeUnitSuffix(a1, v11, &v7);
    if (v9 == 1)
    {
      v6 = v8;
      *a3 = v10 * v7;
      *(a3 + 8) = v6;
    }

    else
    {
      *a3 = v10;
      *(a3 + 8) = v5;
    }

    *(a3 + 16) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 16) = 0;
  }
}

void *std::vector<unsigned char>::vector[abi:nn200100](void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

unint64_t SVG::consumeString<3ul>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  v4 = a3 + 2;
  if (v3 >= a3 + 2)
  {
    v10 = 0;
    for (i = 1; ; i = 0)
    {
      v12 = i;
      v13 = v10 + a3;
      v14 = *(a2 + 23) >= 0 ? a2 : *a2;
      v15 = *(v14 + v13);
      if (__tolower(*(a1 + v10)) != v15)
      {
        v16 = *(a2 + 23) >= 0 ? a2 : *a2;
        v17 = *(v16 + v13);
        if (__toupper(*(a1 + v10)) != v17)
        {
          break;
        }
      }

      v10 = 1;
      if ((v12 & 1) == 0)
      {
        v6 = v4 & 0xFFFFFFFFFFFFFF00;
        v5 = v4;
        return v6 | v5;
      }
    }
  }

  v5 = 0;
  v6 = 0;
  return v6 | v5;
}

unint64_t SVG::QualifiedNameHash::operator()(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  v5 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v13, a2, v4);
  v8 = *(v2 + 24);
  v7 = v2 + 24;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v14, v10, v11) ^ v5;
}

BOOL SVG::QualifiedNamePredicate::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = *(a3 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 8);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v9 = v4 >= 0 ? a2 : *a2;
  v10 = v7 >= 0 ? a3 : *a3;
  if (memcmp(v9, v10, v5))
  {
    return 0;
  }

  v11 = *(a2 + 47);
  if (v11 >= 0)
  {
    v12 = *(a2 + 47);
  }

  else
  {
    v12 = *(a2 + 32);
  }

  v13 = *(a3 + 47);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a3 + 32);
  }

  if (v12 != v13)
  {
    return 0;
  }

  v17 = *(a2 + 24);
  v16 = (a2 + 24);
  v15 = v17;
  if (v11 >= 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = v15;
  }

  v21 = *(a3 + 24);
  v20 = (a3 + 24);
  v19 = v21;
  if (v14 >= 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v19;
  }

  return memcmp(v18, v22, v12) == 0;
}

uint64_t SVG::Element::Element(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = &unk_286EB95E0;
  *(a1 + 8) = 0u;
  v5 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = a2;
  std::string::basic_string[abi:nn200100]<0>(v10, "id");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v6 = SVG::Element::findInAttributeMap(a3, v10, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v6)
  {
    std::string::operator=(v5, (v6 + 8));
  }

  return a1;
}

void *SVG::Element::findInAttributeMap(void *a1, uint64_t a2, uint64_t a3)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v5;
  *&__p[16] = v5;
  *v8 = v5;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v8, *a3, *(a3 + 8));
  }

  else
  {
    *v8 = *a3;
    *__p = *(a3 + 16);
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p[8], *a2, *(a2 + 8));
  }

  else
  {
    *&__p[8] = *a2;
    *&__p[24] = *(a2 + 16);
  }

  v6 = std::__hash_table<std::__hash_value_type<SVG::QualifiedName,std::string>,std::__unordered_map_hasher<SVG::QualifiedName,std::__hash_value_type<SVG::QualifiedName,std::string>,SVG::QualifiedNameHash,SVG::QualifiedNamePredicate,true>,std::__unordered_map_equal<SVG::QualifiedName,std::__hash_value_type<SVG::QualifiedName,std::string>,SVG::QualifiedNamePredicate,SVG::QualifiedNameHash,true>,std::allocator<std::__hash_value_type<SVG::QualifiedName,std::string>>>::find<SVG::QualifiedName>(a1, v8);
  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if ((__p[7] & 0x80000000) != 0)
  {
    operator delete(v8[0]);
  }

  return v6;
}

void SVG::Element::~Element(void **this)
{
  *this = &unk_286EB95E0;
  v2 = this + 4;
  std::vector<std::unique_ptr<SVG::Element>>::__destroy_vector::operator()[abi:nn200100](&v2);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  SVG::Element::~Element(this);

  JUMPOUT(0x25F894240);
}

uint64_t SVG::Element::appendChild(void *a1, uint64_t *a2)
{
  v5 = a1[5];
  v4 = a1[6];
  if (v5 >= v4)
  {
    v8 = (a1 + 4);
    v9 = a1[4];
    v10 = v5 - v9;
    v11 = (v5 - v9) >> 3;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
    }

    v13 = v4 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFF8;
    v15 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    v23[4] = a1 + 4;
    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::BoundingRectState::State *>>(v8, v15);
    }

    v16 = v11;
    v17 = (8 * v11);
    v18 = *a2;
    *a2 = 0;
    v19 = &v17[-v16];
    *v17 = v18;
    v7 = v17 + 1;
    memcpy(v19, v9, v10);
    v20 = a1[4];
    a1[4] = v19;
    a1[5] = v7;
    v21 = a1[6];
    a1[6] = 0;
    v23[2] = v20;
    v23[3] = v21;
    v23[0] = v20;
    v23[1] = v20;
    std::__split_buffer<std::unique_ptr<SVG::Element>>::~__split_buffer(v23);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 8;
  }

  a1[5] = v7;
  return 1;
}

void std::vector<std::unique_ptr<SVG::Element>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<SVG::Element>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<SVG::Element>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<SVG::Element>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<SVG::Element>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<SVG::Element>>::__destruct_at_end[abi:nn200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<SVG::QualifiedName,std::string>,std::__unordered_map_hasher<SVG::QualifiedName,std::__hash_value_type<SVG::QualifiedName,std::string>,SVG::QualifiedNameHash,SVG::QualifiedNamePredicate,true>,std::__unordered_map_equal<SVG::QualifiedName,std::__hash_value_type<SVG::QualifiedName,std::string>,SVG::QualifiedNamePredicate,SVG::QualifiedNameHash,true>,std::allocator<std::__hash_value_type<SVG::QualifiedName,std::string>>>::find<SVG::QualifiedName>(void *a1, uint64_t a2)
{
  v4 = SVG::QualifiedNameHash::operator()(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        LOBYTE(v4) = SVG::QualifiedNamePredicate::operator()(v4, (v11 + 2), a2);
        if (v4)
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

_OWORD *SVG::CircleElement::CircleElement(_OWORD *a1, uint64_t a2, void *a3)
{
  v5 = SVG::ShapeElement::ShapeElement(a1, a2, a3);
  *v5 = &unk_286EB9A78;
  *(v5 + 688) = 0;
  *(v5 + 696) = 0;
  *(v5 + 704) = 0;
  *(v5 + 712) = 0;
  *(v5 + 720) = 0;
  *(v5 + 728) = 0;
  std::string::basic_string[abi:nn200100]<0>(v12, "cx");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v6 = SVG::Element::findInAttributeMap(a3, v12, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (v6)
  {
    v12[0] = -1;
    v12[1] = 0xAAAAAAAAAAAAAAAALL;
    v13 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v6 + 8), v12);
    if (v13 == 1)
    {
      a1[43] = *v12;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v12, "cy");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v7 = SVG::Element::findInAttributeMap(a3, v12, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (v7)
  {
    v12[0] = -1;
    v12[1] = 0xAAAAAAAAAAAAAAAALL;
    v13 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v7 + 8), v12);
    if (v13 == 1)
    {
      a1[44] = *v12;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v12, "r");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v8 = SVG::Element::findInAttributeMap(a3, v12, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (v8)
  {
    v12[0] = -1;
    v12[1] = 0xAAAAAAAAAAAAAAAALL;
    v13 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v8 + 8), v12);
    if (v13 == 1)
    {
      a1[45] = *v12;
    }
  }

  return a1;
}

void SVG::CircleElement::path(SVG::CircleElement *this@<X0>, CGRect a2@<0:D0, 8:D1, 16:D2, 24:D3>, CGPath **a3@<X8>)
{
  height = a2.size.height;
  width = a2.size.width;
  v7 = SVG::Length::computeValue((this + 688), a2.size.width);
  v8 = SVG::Length::computeValue((this + 704), height);
  v9 = SVG::Length::computeValue((this + 720), sqrt(height * height + width * width) / 1.41421356);
  if (v9 <= 0.0)
  {
    *a3 = 0;
  }

  else
  {
    v10 = v9;
    Mutable = CGPathCreateMutable();
    v13.origin.x = v7 - v10;
    v13.origin.y = v8 - v10;
    v13.size.width = v10 + v10;
    v13.size.height = v10 + v10;
    CGPathAddEllipseInRect(Mutable, 0, v13);
    *a3 = Mutable;
    if (Mutable)
    {
      CFRetain(Mutable);

      CFRelease(Mutable);
    }
  }
}

double SVG::CircleElement::boundingBox(SVG::CircleElement *this, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  v5 = SVG::Length::computeValue((this + 688), a2.size.width);
  SVG::Length::computeValue((this + 704), height);
  return v5 - SVG::Length::computeValue((this + 720), sqrt(height * height + width * width) / 1.41421356);
}

void SVG::CircleElement::~CircleElement(SVG::CircleElement *this)
{
  SVG::GElement::~GElement(this);

  JUMPOUT(0x25F894240);
}

void SVG::LengthRect::computeRect(SVG::LengthRect *this, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  *&v7 = -1;
  *(&v7 + 1) = -1;
  *&v17.c = v7;
  *&v17.tx = v7;
  *&v17.a = v7;
  SVG::unitTransform(*this, &v17, x, a2.origin.y, a2.size.width, a2.size.height);
  if (*this == 1)
  {
    width = 1.0;
    x = 0.0;
    y = 0.0;
    height = 1.0;
  }

  tx = v17.tx;
  ty = v17.ty;
  v15 = *&v17.c;
  v16 = *&v17.a;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  SVG::LengthRect::computeOrigin(this, v18);
  v11 = v10;
  v13 = v12;
  v14 = SVG::Length::computeValue((this + 40), width);
  v19.size.height = SVG::Length::computeValue((this + 56), height);
  *&v17.a = v16;
  *&v17.c = v15;
  v17.tx = tx;
  v17.ty = ty;
  v19.origin.x = v11;
  v19.origin.y = v13;
  v19.size.width = v14;
  CGRectApplyAffineTransform(v19, &v17);
}

void SVG::LengthRect::computePatternRecordingRect(SVG::LengthRect *this, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *&v18.c = v5;
  *&v18.tx = v5;
  *&v18.a = v5;
  v6 = (this + 40);
  SVG::unitTransform(*this, &v18, a2.origin.x, a2.origin.y, width, a2.size.height);
  v8 = *this;
  v7 = (this + 56);
  v9 = v8 == 1;
  if (v8 == 1)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = width;
  }

  if (v9)
  {
    height = 1.0;
  }

  tx = v18.tx;
  ty = v18.ty;
  v16 = *&v18.c;
  v17 = *&v18.a;
  v13 = *MEMORY[0x277CBF348];
  v14 = *(MEMORY[0x277CBF348] + 8);
  v15 = SVG::Length::computeValue(v6, v10);
  v19.size.height = SVG::Length::computeValue(v7, height);
  *&v18.a = v17;
  *&v18.c = v16;
  v18.tx = tx;
  v18.ty = ty;
  v19.origin.x = v13;
  v19.origin.y = v14;
  v19.size.width = v15;
  CGRectApplyAffineTransform(v19, &v18);
}

uint64_t SVG::calculateLinearQuanta(SVG *this, CGPoint a2, CGSize a3, CGRect a4)
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.width;
  v23 = a3.height;
  v24 = a2.y;
  v19 = a4.origin.x - a2.x;
  v21 = a2.x;
  v9 = a3.height * (a4.origin.y - a2.y);
  v10 = a3.height * a3.height + v8 * v8;
  v22 = (v9 + (a4.origin.x - a2.x) * a3.width) / v10;
  v11 = (v9 + (CGRectGetMaxX(a4) - a2.x) * a3.width) / v10;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v12 = (v23 * (CGRectGetMaxY(v25) - v24) + v19 * v8) / v10;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MaxX = CGRectGetMaxX(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v15 = (v23 * (CGRectGetMaxY(v27) - v24) + (MaxX - v21) * v8) / v10;
  v16 = v22;
  if (v11 >= v22)
  {
    v17 = v22;
  }

  else
  {
    v17 = v11;
  }

  if (v12 < v17)
  {
    v17 = v12;
  }

  if (v15 < v17)
  {
    v17 = v15;
  }

  if (v22 < v11)
  {
    v16 = v11;
  }

  if (v16 < v12)
  {
    v16 = v12;
  }

  if (v16 >= v15)
  {
    v15 = v16;
  }

  LODWORD(v13) = vcvtmd_s64_f64(v17);
  LODWORD(v14) = vcvtpd_s64_f64(v15);
  return v13 | (v14 << 32);
}

uint64_t SVG::calculateRadialQuanta(SVG *this, CGPoint a2, double a3, CGRect a4)
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a2.x;
  v23 = a2.x - a4.origin.x;
  v10 = (a2.y - a4.origin.y) * (a2.y - a4.origin.y);
  v11 = sqrt(v10 + v23 * v23) / a3;
  MaxX = CGRectGetMaxX(a4);
  v13 = sqrt(v10 + (v9 - MaxX) * (v9 - MaxX)) / a3;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MaxY = CGRectGetMaxY(v26);
  v15 = sqrt((a2.y - MaxY) * (a2.y - MaxY) + v23 * v23) / a3;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v24 = CGRectGetMaxX(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v18 = CGRectGetMaxY(v28);
  v19 = sqrt((a2.y - v18) * (a2.y - v18) + (a2.x - v24) * (a2.x - v24)) / a3;
  if (v13 >= v11)
  {
    v20 = v11;
  }

  else
  {
    v20 = v13;
  }

  if (v15 < v20)
  {
    v20 = v15;
  }

  if (v19 < v20)
  {
    v20 = v19;
  }

  if (v11 >= v13)
  {
    v21 = v11;
  }

  else
  {
    v21 = v13;
  }

  if (v21 < v15)
  {
    v21 = v15;
  }

  if (v21 >= v19)
  {
    v19 = v21;
  }

  LODWORD(v16) = vcvtmd_s64_f64(v20);
  LODWORD(v17) = vcvtpd_s64_f64(v19);
  return v16 | (v17 << 32);
}

_OWORD *SVG::EllipseElement::EllipseElement(_OWORD *a1, uint64_t a2, void *a3)
{
  v5 = SVG::ShapeElement::ShapeElement(a1, a2, a3);
  *v5 = &unk_286EB9A38;
  *(v5 + 688) = 0;
  *(v5 + 696) = 0;
  *(v5 + 704) = 0;
  *(v5 + 712) = 0;
  *(v5 + 720) = 0;
  *(v5 + 728) = 0;
  *(v5 + 736) = 0;
  *(v5 + 744) = 0;
  std::string::basic_string[abi:nn200100]<0>(v13, "cx");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v6 = SVG::Element::findInAttributeMap(a3, v13, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  if (v6)
  {
    v13[0] = -1;
    v13[1] = 0xAAAAAAAAAAAAAAAALL;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v6 + 8), v13);
    if (v14 == 1)
    {
      a1[43] = *v13;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v13, "cy");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v7 = SVG::Element::findInAttributeMap(a3, v13, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  if (v7)
  {
    v13[0] = -1;
    v13[1] = 0xAAAAAAAAAAAAAAAALL;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v7 + 8), v13);
    if (v14 == 1)
    {
      a1[44] = *v13;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v13, "rx");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v8 = SVG::Element::findInAttributeMap(a3, v13, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  if (v8)
  {
    v13[0] = -1;
    v13[1] = 0xAAAAAAAAAAAAAAAALL;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v8 + 8), v13);
    if (v14 == 1)
    {
      a1[45] = *v13;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v13, "ry");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v9 = SVG::Element::findInAttributeMap(a3, v13, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  if (v9)
  {
    v13[0] = -1;
    v13[1] = 0xAAAAAAAAAAAAAAAALL;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v9 + 8), v13);
    if (v14 == 1)
    {
      a1[46] = *v13;
    }
  }

  return a1;
}

void SVG::EllipseElement::path(SVG::EllipseElement *this@<X0>, CGRect a2@<0:D0, 8:D1, 16:D2, 24:D3>, CGPath **a3@<X8>)
{
  height = a2.size.height;
  width = a2.size.width;
  v7 = SVG::Length::computeValue((this + 688), a2.size.width);
  v8 = SVG::Length::computeValue((this + 704), height);
  v9 = SVG::Length::computeValue((this + 720), width);
  v10 = SVG::Length::computeValue((this + 736), height);
  if (v9 <= 0.0 || (v11 = v10, v10 <= 0.0))
  {
    *a3 = 0;
  }

  else
  {
    Mutable = CGPathCreateMutable();
    v14.origin.x = v7 - v9;
    v14.origin.y = v8 - v11;
    v14.size.width = v9 + v9;
    v14.size.height = v11 + v11;
    CGPathAddEllipseInRect(Mutable, 0, v14);
    *a3 = Mutable;
    if (Mutable)
    {
      CFRetain(Mutable);

      CFRelease(Mutable);
    }
  }
}

double SVG::EllipseElement::boundingBox(SVG::EllipseElement *this, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  v5 = SVG::Length::computeValue((this + 688), a2.size.width);
  SVG::Length::computeValue((this + 704), height);
  v6 = SVG::Length::computeValue((this + 720), width);
  SVG::Length::computeValue((this + 736), height);
  return v5 - v6;
}

void SVG::EllipseElement::~EllipseElement(SVG::EllipseElement *this)
{
  SVG::GElement::~GElement(this);

  JUMPOUT(0x25F894240);
}

uint64_t SVG::LinearGradientElement::LinearGradientElement(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = SVG::Element::Element(a1, a2, a3);
  SVG::Presentation::Presentation(v5 + 64, a3);
  *(a1 + 640) = 0;
  *a1 = &unk_286EB97B8;
  *(a1 + 648) = 0;
  *(a1 + 652) = 0;
  *(a1 + 656) = 0;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 716) = 0;
  *(a1 + 720) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0;
  *(a1 + 784) = 0;
  *(a1 + 792) = 0;
  *(a1 + 808) = 0;
  SVG::GradientElement::parseAttributes(a1, a3);
  std::string::basic_string[abi:nn200100]<0>(v17, "x1");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v6 = SVG::Element::findInAttributeMap(a3, v17, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v6)
  {
    v17[0] = -1;
    v17[1] = 0xAAAAAAAAAAAAAAAALL;
    v18 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v6 + 8), v17);
    if (v18 == 1)
    {
      v7 = *(a1 + 736);
      *(a1 + 720) = *v17;
      if ((v7 & 1) == 0)
      {
        *(a1 + 736) = 1;
      }
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v17, "y1");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v8 = SVG::Element::findInAttributeMap(a3, v17, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v8)
  {
    v17[0] = -1;
    v17[1] = 0xAAAAAAAAAAAAAAAALL;
    v18 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v8 + 8), v17);
    if (v18 == 1)
    {
      v9 = *(a1 + 760);
      *(a1 + 744) = *v17;
      if ((v9 & 1) == 0)
      {
        *(a1 + 760) = 1;
      }
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v17, "x2");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v10 = SVG::Element::findInAttributeMap(a3, v17, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v10)
  {
    v17[0] = -1;
    v17[1] = 0xAAAAAAAAAAAAAAAALL;
    v18 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v10 + 8), v17);
    if (v18 == 1)
    {
      v11 = *(a1 + 784);
      *(a1 + 768) = *v17;
      if ((v11 & 1) == 0)
      {
        *(a1 + 784) = 1;
      }
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v17, "y2");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v12 = SVG::Element::findInAttributeMap(a3, v17, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v12)
  {
    v17[0] = -1;
    v17[1] = 0xAAAAAAAAAAAAAAAALL;
    v18 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v12 + 8), v17);
    if (v18 == 1)
    {
      v13 = *(a1 + 808);
      *(a1 + 792) = *v17;
      if ((v13 & 1) == 0)
      {
        *(a1 + 808) = 1;
      }
    }
  }

  return a1;
}

void SVG::LinearGradientElement::specifiedLinearState(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 160) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 96) = xmmword_25D1D6B88;
  *(a2 + 112) = unk_25D1D6B98;
  *(a2 + 128) = xmmword_25D1D6BA8;
  *(a2 + 144) = unk_25D1D6BB8;
  *(a2 + 32) = xmmword_25D1D6B48;
  *(a2 + 48) = unk_25D1D6B58;
  *(a2 + 64) = xmmword_25D1D6B68;
  *(a2 + 80) = unk_25D1D6B78;
  *a2 = xmmword_25D1D6B28;
  *(a2 + 16) = unk_25D1D6B38;
  *a2 = 0;
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 68) = 0;
  *(a2 + 72) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 160) = 0;
  memset(v5, 0, sizeof(v5));
  v2[0] = a1;
  std::vector<std::reference_wrapper<SVG::GradientElement const>>::push_back[abi:nn200100](v5, v2);
  *v2 = 0u;
  *__p = 0u;
  *&v4 = 0xAAAAAAAA3F800000;
  operator new();
}

void SVG::LinearGradientElement::~LinearGradientElement(SVG::LinearGradientElement *this)
{
  *this = &unk_286EB9910;
  v2 = *(this + 80);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 128);
  if (v3 != -1)
  {
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v9 + v3))(&v8, this + 480);
  }

  *(this + 128) = -1;
  v4 = *(this + 116);
  if (v4 != -1)
  {
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v9 + v4))(&v8, this + 416);
  }

  *(this + 116) = -1;
  v5 = *(this + 82);
  if (v5 != -1)
  {
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v9 + v5))(&v8, this + 312);
  }

  *(this + 82) = -1;
  v6 = *(this + 66);
  if (v6 != -1)
  {
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v9 + v6))(&v8, this + 216);
  }

  *(this + 66) = -1;
  v7 = *(this + 36);
  if (v7 != -1)
  {
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v9 + v7))(&v8, this + 128);
  }

  *(this + 36) = -1;

  SVG::Element::~Element(this);
}

{
  *this = &unk_286EB9910;
  v2 = *(this + 80);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 128);
  if (v3 != -1)
  {
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v9 + v3))(&v8, this + 480);
  }

  *(this + 128) = -1;
  v4 = *(this + 116);
  if (v4 != -1)
  {
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v9 + v4))(&v8, this + 416);
  }

  *(this + 116) = -1;
  v5 = *(this + 82);
  if (v5 != -1)
  {
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v9 + v5))(&v8, this + 312);
  }

  *(this + 82) = -1;
  v6 = *(this + 66);
  if (v6 != -1)
  {
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v9 + v6))(&v8, this + 216);
  }

  *(this + 66) = -1;
  v7 = *(this + 36);
  if (v7 != -1)
  {
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v9 + v7))(&v8, this + 128);
  }

  *(this + 36) = -1;
  SVG::Element::~Element(this);
  MEMORY[0x25F894240]();
}

uint64_t SVG::ClipPathElement::ClipPathElement(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = SVG::Element::Element(a1, a2, a3);
  SVG::Presentation::Presentation(v5 + 64, a3);
  *a1 = &unk_286EB9950;
  v6 = MEMORY[0x277CBF2C0];
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  *(a1 + 640) = *MEMORY[0x277CBF2C0];
  *(a1 + 656) = v7;
  *(a1 + 672) = *(v6 + 32);
  *(a1 + 688) = 0;
  std::string::basic_string[abi:nn200100]<0>(v14, "transform");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v8 = SVG::Element::findInAttributeMap(a3, v14, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v15) < 0)
  {
    operator delete(v14[0]);
  }

  if (v8)
  {
    *&v9 = -1;
    *(&v9 + 1) = -1;
    v15 = v9;
    v16 = v9;
    *v14 = v9;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    SVG::parseTransform((v8 + 8), v14);
    if (v17 == 1)
    {
      v10 = v15;
      *(a1 + 640) = *v14;
      *(a1 + 656) = v10;
      *(a1 + 672) = v16;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v14, "clipPathUnits");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v11 = SVG::Element::findInAttributeMap(a3, v14, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v15) < 0)
  {
    operator delete(v14[0]);
  }

  if (v11)
  {
    v12 = SVG::parseUnits((v11 + 8));
    if ((v12 & 0x100000000) != 0)
    {
      *(a1 + 688) = v12;
    }
  }

  return a1;
}

uint64_t SVG::ClipPathElement::appendChild(void *a1, uint64_t *a2)
{
  v2 = *a2;
  {
    return 0;
  }

  return SVG::Element::appendChild(a1, a2);
}

void SVG::clipPaths(CGFloat a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>, CGFloat a6@<D0>, CGFloat a7@<D1>, CGFloat a8@<D2>, CGFloat a9@<D3>, double a10@<D4>, double a11@<D5>, double a12@<D6>, double a13@<D7>)
{
  v97 = a6;
  v98 = a7;
  v99 = a8;
  v100 = a9;
  *v94 = a10;
  *&v94[1] = a11;
  v95 = a12;
  v96 = a13;
  if (std::__hash_table<SVG::Element const*,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,std::allocator<SVG::Element const*>>::find<SVG::Element const*>(a4, *&a1))
  {
    v18 = MEMORY[0x277CBF2C0];
    v19 = *(MEMORY[0x277CBF2C0] + 16);
    *(a5 + 24) = *MEMORY[0x277CBF2C0];
    *(a5 + 40) = v19;
    *(a5 + 56) = *(v18 + 32);
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *a5 = &unk_286EB9D08;
    *(a5 + 80) = 0;
    *(a5 + 88) = 0;
    *(a5 + 72) = 0;
    memset(&v102, 0, 24);
    *&t1.a = &v102;
    std::vector<std::shared_ptr<SVG::ClipToPaths::BaseClipNode>>::__destroy_vector::operator()[abi:nn200100](&t1);
    return;
  }

  v20 = 0x9DDFEA08EB382D69 * (((((*&a1 >> 3) & 0x3FFFFFFLL) << 6) | 8) ^ HIDWORD(*&a1));
  v21 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(*&a1) ^ (v20 >> 47) ^ v20)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(*&a1) ^ (v20 >> 47) ^ v20)) >> 47));
  v22 = a4[1];
  if (!*&v22)
  {
    goto LABEL_20;
  }

  v23 = vcnt_s8(v22);
  v23.i16[0] = vaddlv_u8(v23);
  if (v23.u32[0] > 1uLL)
  {
    v24 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(*&a1) ^ (v20 >> 47) ^ v20)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(*&a1) ^ (v20 >> 47) ^ v20)) >> 47));
    if (v21 >= *&v22)
    {
      v24 = v21 % *&v22;
    }
  }

  else
  {
    v24 = (*&v22 - 1) & v21;
  }

  v25 = *(*a4 + 8 * v24);
  if (!v25 || (v26 = *v25) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v27 = v26[1];
    if (v27 == v21)
    {
      break;
    }

    if (v23.u32[0] > 1uLL)
    {
      if (v27 >= *&v22)
      {
        v27 %= *&v22;
      }
    }

    else
    {
      v27 &= *&v22 - 1;
    }

    if (v27 != v24)
    {
      goto LABEL_20;
    }

LABEL_19:
    v26 = *v26;
    if (!v26)
    {
      goto LABEL_20;
    }
  }

  if (v26[2] != *&a1)
  {
    goto LABEL_19;
  }

  v102.a = a1;
  v28 = std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::find<__CFURL const*>(a3, &v102);
  if (v28[149] != 2)
  {
    goto LABEL_110;
  }

  if (v28[148])
  {
LABEL_25:
    v29 = MEMORY[0x277CBF2C0];
    v30 = *(MEMORY[0x277CBF2C0] + 16);
    *(a5 + 24) = *MEMORY[0x277CBF2C0];
    *(a5 + 40) = v30;
    *(a5 + 56) = *(v29 + 32);
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *a5 = &unk_286EB9D08;
    *(a5 + 80) = 0;
    *(a5 + 88) = 0;
    *(a5 + 72) = 0;
    memset(&v102, 0, 24);
    *&t1.a = &v102;
    p_t1 = &t1;
    goto LABEL_26;
  }

  if (v28[40] != 2)
  {
    goto LABEL_110;
  }

  if (v28[39] == 2)
  {
    goto LABEL_25;
  }

  v93[0] = a2;
  v93[1] = a3;
  v93[2] = &v97;
  v93[3] = v94;
  v93[4] = a4;
  v84 = unk_25D1D6CB8;
  v85 = *&byte_25D1D6C88[32];
  v102 = *byte_25D1D6C88;
  v103 = unk_25D1D6CB8;
  v83 = xmmword_25D1D6CC8;
  v104 = xmmword_25D1D6CC8;
  memset(v105, 170, 24);
  memset(v82, 170, sizeof(v82));
  if (v28[26] != 2)
  {
LABEL_110:
    std::__throw_bad_variant_access[abi:nn200100]();
LABEL_111:
    std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
  }

  SVG::clipPaths(SVG::ClipPathElement const&,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,CGRect,CGRect,std::unordered_set<SVG::ClipPathElement const*> &)::$_1::operator()(&v102, v93, (v28 + 22));
  v87 = 0u;
  if (LOBYTE(v105[1]) == 1)
  {
    std::allocate_shared[abi:nn200100]<SVG::ClipToPaths::ParentClipNode,std::allocator<SVG::ClipToPaths::ParentClipNode>,SVG::ClipToPaths::ParentClipNode&,0>();
  }

  v92[0] = a3;
  v92[1] = v94;
  v92[2] = v93;
  __src[0] = 0;
  __src[1] = 0;
  v91 = 0.0;
  v43 = *(*&a1 + 32);
  v42 = *(*&a1 + 40);
  if (v43 == v42)
  {
LABEL_108:
    CGPathCreateWithRect(*MEMORY[0x277CBF3A0], 0);
    v75 = *(MEMORY[0x277CBF2C0] + 16);
    *&v102.a = *MEMORY[0x277CBF2C0];
    *&v102.c = v75;
    *&v102.tx = *(MEMORY[0x277CBF2C0] + 32);
    operator new();
  }

  v88 = a3;
  v79 = a2;
  while (2)
  {
    v44 = *v43;
    if (v45)
    {
      t1.a = -3.72066208e-103;
      t1.b = -3.72066208e-103;
      SVG::clipPaths(SVG::ClipPathElement const&,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,CGRect,CGRect,std::unordered_set<SVG::ClipPathElement const*> &)::$_2::operator()(&t1, v92, v45);
      if (*&t1.a)
      {
        v47 = __src[1];
        if (__src[1] >= *&v91)
        {
          v59 = (__src[1] - __src[0]) >> 4;
          v60 = v59 + 1;
          if ((v59 + 1) >> 60)
          {
            goto LABEL_111;
          }

          v61 = *&v91 - __src[0];
          if ((*&v91 - __src[0]) >> 3 > v60)
          {
            v60 = v61 >> 3;
          }

          if (v61 >= 0x7FFFFFFFFFFFFFF0)
          {
            v62 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v62 = v60;
          }

          *&v102.tx = __src;
          if (v62)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<SVG::ClipToPaths::BaseClipNode>>>(v62);
          }

          memset(&v102, 0, 32);
          v63 = (16 * v59);
          *v63 = t1.a;
          b = t1.b;
          v63[1] = t1.b;
          if (b != 0.0)
          {
            atomic_fetch_add_explicit((*&b + 8), 1uLL, memory_order_relaxed);
          }

          v49 = v63 + 2;
          v64 = v63 - (__src[1] - __src[0]);
          memcpy(v64, __src[0], __src[1] - __src[0]);
          v65 = __src[0];
          v66 = v91;
          __src[0] = v64;
          __src[1] = v49;
          v91 = 0.0;
          *&v102.c = v65;
          v102.d = v66;
          *&v102.a = v65;
          *&v102.b = v65;
          std::__split_buffer<std::shared_ptr<SVG::ClipToPaths::BaseClipNode>>::~__split_buffer(&v102);
        }

        else
        {
          *__src[1] = t1.a;
          b = t1.b;
          v47[1] = *&t1.b;
          if (b != 0.0)
          {
            atomic_fetch_add_explicit((*&b + 8), 1uLL, memory_order_relaxed);
          }

          v49 = v47 + 2;
        }

        __src[1] = v49;
        if (b != 0.0)
        {
LABEL_79:
          std::__shared_weak_count::__release_shared[abi:nn200100](*&b);
        }
      }

      else
      {
        b = t1.b;
        if (*&t1.b)
        {
          goto LABEL_79;
        }
      }
    }

    else
    {
      if (v50)
      {
        v51 = v50;
        *&v102.a = v50;
        v52 = std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::find<__CFURL const*>(v88, &v102);
        if (v52[149] != 2)
        {
          goto LABEL_110;
        }

        v53 = v52;
        if (!v52[148])
        {
          if (v52[40] != 2)
          {
            goto LABEL_110;
          }

          if (v52[39] != 2)
          {
            memset(&t2, 0, 24);
            v102.a = v51[94];
            v54 = std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::find<__CFURL const*>(v79, &v102);
            if (v54)
            {
              if (v55)
              {
                v102.a = -3.72066208e-103;
                v102.b = -3.72066208e-103;
                SVG::clipPaths(SVG::ClipPathElement const&,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,CGRect,CGRect,std::unordered_set<SVG::ClipPathElement const*> &)::$_2::operator()(&v102, v92, v55);
                if (*&v102.a)
                {
                  v56 = t2.b;
                  if (*&t2.b >= *&t2.c)
                  {
                    v58 = std::vector<std::shared_ptr<SVG::ClipToPaths::BaseClipNode>>::__emplace_back_slow_path<std::shared_ptr<SVG::ClipToPaths::LeafClipNode> const>(&t2, &v102);
                  }

                  else
                  {
                    **&t2.b = *&v102.a;
                    v57 = v102.b;
                    *(*&v56 + 8) = v102.b;
                    if (v57 != 0.0)
                    {
                      atomic_fetch_add_explicit((*&v57 + 8), 1uLL, memory_order_relaxed);
                    }

                    v58 = *&v56 + 16;
                  }

                  *&t2.b = v58;
                }

                if (*&v102.b)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](*&v102.b);
                }
              }
            }

            *&v105[1] = 0xAAAAAAAAAAAAAAAALL;
            *&v102.tx = v85;
            v103 = v84;
            v104 = v83;
            v105[0] = v82[1];
            *&v102.a = v82[0];
            *&v102.c = *&byte_25D1D6C88[16];
            if (v53[26] == 2)
            {
              SVG::clipPaths(SVG::ClipPathElement const&,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,CGRect,CGRect,std::unordered_set<SVG::ClipPathElement const*> &)::$_1::operator()(&v102, v93, (v53 + 22));
              if (LOBYTE(v105[1]) == 1)
              {
                std::allocate_shared[abi:nn200100]<SVG::ClipToPaths::ParentClipNode,std::allocator<SVG::ClipToPaths::ParentClipNode>,SVG::ClipToPaths::ParentClipNode&,0>();
              }

              v86 = 0uLL;
              v67 = v51[84];
              v68 = v51[85];
              *&v102.a = *(v51 + 43);
              v80 = *(v51 + 41);
              v81 = *(v51 + 40);
              v69 = SVG::Length::computeValue(&v102, v95);
              *&v102.a = *(v51 + 44);
              v70 = SVG::Length::computeValue(&v102, v96);
              *&t1.a = v81;
              *&t1.c = v80;
              t1.tx = v67;
              t1.ty = v68;
              CGAffineTransformTranslate(&v102, &t1, v69, v70);
              operator new();
            }

            goto LABEL_110;
          }
        }
      }
    }

    if (++v43 != v42)
    {
      continue;
    }

    break;
  }

  v71 = __src[0];
  v72 = __src[1];
  if (__src[0] == __src[1])
  {
    goto LABEL_108;
  }

  v73 = 0;
  do
  {
    v74 = *v71;
    v71 += 2;
    v73 += SVG::countChildren(v74, v46);
  }

  while (v71 != v72);
  if (!v73)
  {
    goto LABEL_108;
  }

  *&v76 = -1;
  *(&v76 + 1) = -1;
  *&v102.c = v76;
  *&v102.tx = v76;
  *&v102.a = v76;
  SVG::unitTransform(*(*&a1 + 688), &t1, v97, v98, v99, v100);
  v77 = *(*&a1 + 656);
  *&t2.a = *(*&a1 + 640);
  *&t2.c = v77;
  *&t2.tx = *(*&a1 + 672);
  CGAffineTransformConcat(&v102, &t1, &t2);
  *(a5 + 8) = v87;
  v78 = *&v102.c;
  *(a5 + 24) = *&v102.a;
  *(a5 + 40) = v78;
  *(a5 + 56) = *&v102.tx;
  *a5 = &unk_286EB9D08;
  *(a5 + 72) = *__src;
  *(a5 + 88) = v91;
  __src[0] = 0;
  __src[1] = 0;
  v91 = 0.0;
  *&v102.a = __src;
  p_t1 = &v102;
LABEL_26:
  std::vector<std::shared_ptr<SVG::ClipToPaths::BaseClipNode>>::__destroy_vector::operator()[abi:nn200100](p_t1);
  v32 = std::__hash_table<SVG::Element const*,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,std::allocator<SVG::Element const*>>::find<SVG::Element const*>(a4, *&a1);
  if (v32)
  {
    v33 = a4[1];
    v34 = *v32;
    v35 = v32[1];
    v36 = vcnt_s8(v33);
    v36.i16[0] = vaddlv_u8(v36);
    if (v36.u32[0] > 1uLL)
    {
      if (v35 >= *&v33)
      {
        v35 %= *&v33;
      }
    }

    else
    {
      v35 &= *&v33 - 1;
    }

    v37 = *(*a4 + 8 * v35);
    do
    {
      v38 = v37;
      v37 = *v37;
    }

    while (v37 != v32);
    if (v38 == a4 + 2)
    {
      goto LABEL_92;
    }

    v39 = v38[1];
    if (v36.u32[0] > 1uLL)
    {
      if (v39 >= *&v33)
      {
        v39 %= *&v33;
      }
    }

    else
    {
      v39 &= *&v33 - 1;
    }

    if (v39 == v35)
    {
LABEL_94:
      if (v34)
      {
        v40 = *(v34 + 8);
        goto LABEL_96;
      }
    }

    else
    {
LABEL_92:
      if (!v34)
      {
        goto LABEL_93;
      }

      v40 = *(v34 + 8);
      if (v36.u32[0] > 1uLL)
      {
        v41 = *(v34 + 8);
        if (v40 >= *&v33)
        {
          v41 = v40 % *&v33;
        }
      }

      else
      {
        v41 = v40 & (*&v33 - 1);
      }

      if (v41 != v35)
      {
LABEL_93:
        *(*a4 + 8 * v35) = 0;
        v34 = *v32;
        goto LABEL_94;
      }

LABEL_96:
      if (v36.u32[0] > 1uLL)
      {
        if (v40 >= *&v33)
        {
          v40 %= *&v33;
        }
      }

      else
      {
        v40 &= *&v33 - 1;
      }

      if (v40 != v35)
      {
        *(*a4 + 8 * v40) = v38;
        v34 = *v32;
      }
    }

    *v38 = v34;
    *v32 = 0;
    --a4[3];
    operator delete(v32);
  }
}

void SVG::ClipPathElement::~ClipPathElement(SVG::ClipPathElement *this)
{
  SVG::GElement::~GElement(this);

  JUMPOUT(0x25F894240);
}

void SVG::clipPaths(SVG::ClipPathElement const&,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,CGRect,CGRect,std::unordered_set<SVG::ClipPathElement const*> &)::$_1::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  {
    v8 = *(a2 + 16);
    SVG::clipPaths(v13, v7, *a2, *(a2 + 8), *(a2 + 32), *v8, v8[1], v8[2], v8[3], **(a2 + 24), *(*(a2 + 24) + 8), *(*(a2 + 24) + 16), *(*(a2 + 24) + 24));
    v10 = v13[1];
    v9 = v14;
    *a1 = &unk_286EB9D48;
    *(a1 + 8) = v10;
    *(a1 + 16) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v16;
    *(a1 + 24) = v15;
    *(a1 + 40) = v11;
    v12 = v18;
    *(a1 + 56) = v17;
    *a1 = &unk_286EB9D08;
    *(a1 + 72) = v12;
    *(a1 + 88) = v19;
    v18 = 0uLL;
    v19 = 0;
    *(a1 + 96) = 1;
    v13[0] = &unk_286EB9D08;
    v20 = &v18;
    std::vector<std::shared_ptr<SVG::ClipToPaths::BaseClipNode>>::__destroy_vector::operator()[abi:nn200100](&v20);
    v13[0] = &unk_286EB9D48;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 96) = 0;
  }
}

BOOL SVG::countChildren(SVG *this, SVG::ClipToPaths::BaseClipNode *a2)
{
  if (!v3)
  {
  }

  v5 = *(v3 + 9);
  v6 = *(v3 + 10);
  if (v5 == v6)
  {
    return 0;
  }

  LODWORD(v7) = 0;
  do
  {
    v8 = *v5;
    v5 += 2;
    v7 = SVG::countChildren(v8, v4) + v7;
  }

  while (v5 != v6);
  return v7;
}

void SVG::ClipToPaths::ParentClipNode::~ParentClipNode(SVG::ClipToPaths::ParentClipNode *this)
{
  *this = &unk_286EB9D08;
  v3 = (this + 72);
  std::vector<std::shared_ptr<SVG::ClipToPaths::BaseClipNode>>::__destroy_vector::operator()[abi:nn200100](&v3);
  *this = &unk_286EB9D48;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

{
  *this = &unk_286EB9D08;
  v3 = (this + 72);
  std::vector<std::shared_ptr<SVG::ClipToPaths::BaseClipNode>>::__destroy_vector::operator()[abi:nn200100](&v3);
  *this = &unk_286EB9D48;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  MEMORY[0x25F894240](this, 0x10A1C4090873174);
}

void std::vector<std::shared_ptr<SVG::ClipToPaths::BaseClipNode>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<SVG::ClipToPaths::BaseClipNode>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<SVG::ClipToPaths::BaseClipNode>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  a1[1] = v2;
}

void std::__shared_ptr_emplace<SVG::ClipToPaths::ParentClipNode>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286EB9338;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F894240);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<SVG::ClipToPaths::BaseClipNode>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
}

_DWORD *SVG::clipPaths(SVG::ClipPathElement const&,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,CGRect,CGRect,std::unordered_set<SVG::ClipPathElement const*> &)::$_2::operator()(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v11[0] = a3;
  result = std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::find<__CFURL const*>(v6, v11);
  if (result[149] == 2)
  {
    v8 = result;
    if (result[148])
    {
LABEL_5:
      *a1 = 0;
      a1[1] = 0;
      return result;
    }

    if (result[40] == 2)
    {
      if (result[39] == 2)
      {
        goto LABEL_5;
      }

      v12 = 0xAAAAAAAAAAAAAAAALL;
      (*(*a3 + 32))(&v12, a3, **(a2 + 8), *(*(a2 + 8) + 8), *(*(a2 + 8) + 16), *(*(a2 + 8) + 24));
      if (!v12)
      {
        v9 = CGPathCreateWithRect(*MEMORY[0x277CBF3A0], 0);
        if (v12)
        {
          CFRelease(v12);
        }

        v12 = v9;
      }

      if (v8[29] == 2)
      {
        memset(&v11[4], 255, 32);
        *&v11[8] = xmmword_25D1D6CC8;
        memset(&v11[10], 170, 24);
        *v11 = xmmword_25D1D6C88;
        *&v11[2] = unk_25D1D6C98;
        if (v8[26] == 2)
        {
          SVG::clipPaths(SVG::ClipPathElement const&,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,CGRect,CGRect,std::unordered_set<SVG::ClipPathElement const*> &)::$_1::operator()(v11, *(a2 + 16), (v8 + 22));
          if (LOBYTE(v11[12]) == 1)
          {
            std::allocate_shared[abi:nn200100]<SVG::ClipToPaths::ParentClipNode,std::allocator<SVG::ClipToPaths::ParentClipNode>,SVG::ClipToPaths::ParentClipNode&,0>();
          }

          operator new();
        }
      }
    }
  }

  v10 = std::__throw_bad_variant_access[abi:nn200100]();
  return std::__shared_ptr_emplace<SVG::ClipToPaths::LeafClipNode>::~__shared_ptr_emplace(v10);
}

void std::__shared_ptr_emplace<SVG::ClipToPaths::LeafClipNode>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286EB9370;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F894240);
}

uint64_t std::vector<std::shared_ptr<SVG::ClipToPaths::BaseClipNode>>::__emplace_back_slow_path<std::shared_ptr<SVG::ClipToPaths::LeafClipNode> const>(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
  }

  v5 = *(a1 + 16) - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v15[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<SVG::ClipToPaths::BaseClipNode>>>(v6);
  }

  v7 = 16 * v2;
  v8 = *a2;
  *(16 * v2) = *a2;
  if (*(&v8 + 1))
  {
    atomic_fetch_add_explicit((*(&v8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v9 = v7 + 16;
  v10 = *(a1 + 8) - *a1;
  v11 = v7 - v10;
  memcpy((v7 - v10), *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  v13 = *(a1 + 16);
  *(a1 + 16) = 0;
  v15[2] = v12;
  v15[3] = v13;
  v15[0] = v12;
  v15[1] = v12;
  std::__split_buffer<std::shared_ptr<SVG::ClipToPaths::BaseClipNode>>::~__split_buffer(v15);
  return v9;
}

uint64_t std::__split_buffer<std::shared_ptr<SVG::ClipToPaths::BaseClipNode>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void SVG::ApplyPresentationFill::ApplyPresentationFill(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *v60 = a10;
  *&v60[1] = a11;
  *&v60[2] = a12;
  *&v60[3] = a13;
  v57 = a14;
  v58 = a15;
  v59 = a16;
  v56 = a8;
  *a1 = a2;
  v25 = a2[5] + a2[4] - 1;
  v26 = *(a2[1] + ((v25 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v25 & 0x1F) << 7);
  *(a1 + 8) = 0;
  *(a1 + 112) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1> const&>(a1 + 8, v26 + 8);
  *(a1 + 144) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v27 = a2[5] + a2[4] - 1;
  *(a1 + 129) = *(*(a2[1] + ((v27 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v27 & 0x1F) << 7) + 120);
  *(a1 + 136) = a17;
  *(a1 + 224) = 0;
  v28 = *a17;
  if (!*(a17 + 8))
  {
    v28 = 1.0;
  }

  v55 = v28;
  v29 = *(a6 + 40);
  if (v29 - 1 > 1)
  {
    if (a9 < 1.0)
    {
      *(a1 + 128) = 1;
      v34[0] = &unk_286EB94D8;
      *&v34[1] = a9;
      v40 = &unk_286EB94D8;
      v41 = a9;
      v54 = 12;
      SVG::Recorder::append(a2, &v40);
      if (v54 != -1)
      {
        (*(&off_286EBABF8 + v54))(&v61, &v40);
      }

      v34[0] = &unk_286EB9730;
      v40 = &unk_286EB9730;
      v54 = 10;
      SVG::Recorder::append(a2, &v40);
      if (v54 != -1)
      {
        (*(&off_286EBABF8 + v54))(&v61, &v40);
      }

      v29 = *(a6 + 40);
    }
  }

  else
  {
    v30 = v28 * a9;
    v55 = v30;
  }

  v39 = -86;
  v38 = -86;
  v37[0] = a2;
  v37[1] = &v55;
  v36 = a2;
  v42 = a3;
  v43 = v60;
  v44 = a4;
  v45 = &v56;
  v46 = &v57;
  v47 = a5;
  v48 = a2;
  v49 = &v39;
  v50 = &v38;
  v51 = v37;
  v40 = a2;
  v41 = COERCE_DOUBLE(&v55);
  v52 = &v36;
  v53 = a2;
  if (v29 != -1)
  {
    v61 = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::ApplyPresentationFill::ApplyPresentationFill(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_0,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_1,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_2,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_4,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_3>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext> const&>;
    v62 = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::ApplyPresentationFill::ApplyPresentationFill(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_0,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_1,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_2,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_4,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_3>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext> const&>;
    v63 = std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::ApplyPresentationFill::ApplyPresentationFill(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_0,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_1,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_2,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_4,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_3>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext> const&>;
    v64 = std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::ApplyPresentationFill::ApplyPresentationFill(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_0,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_1,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_2,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_4,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_3>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext> const&>;
    v65 = std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::ApplyPresentationFill::ApplyPresentationFill(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_0,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_1,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_2,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_4,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_3>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext> const&>;
    v66[0] = &v40;
    (*(&v61 + v29))(v34, v66, a6 + 8);
    v31 = *(a1 + 224);
    if (v31 == -1)
    {
      if (v35 == -1)
      {
LABEL_19:
        v32 = a2[5] + a2[4] - 1;
        *(*(a2[1] + ((v32 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v32 & 0x1F) << 7) + 120) = a7;
        return;
      }
    }

    else if (v35 == -1)
    {
      v61 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      v62 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      v63 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      (*(&v61 + v31))(v66, a1 + 144);
      *(a1 + 224) = -1;
      goto LABEL_17;
    }

    v66[0] = a1 + 144;
    v61 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJSA_SB_SC_EEEOSR_EEEDcSJ_DpT0_;
    v62 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJSA_SB_SC_EEEOSR_EEEDcSJ_DpT0_;
    v63 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJSA_SB_SC_EEEOSR_EEEDcSJ_DpT0_;
    (*(&v61 + v35))(v66, a1 + 144, v34);
LABEL_17:
    if (v35 != -1)
    {
      v61 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      v62 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      v63 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      (*(&v61 + v35))(v66, v34);
    }

    goto LABEL_19;
  }

  v33 = std::__throw_bad_variant_access[abi:nn200100]();
  SVG::ApplyPresentationFill::~ApplyPresentationFill(v33);
}

void SVG::ApplyPresentationFill::~ApplyPresentationFill(SVG::ApplyPresentationFill *this)
{
  v2 = *this;
  v3 = *(*this + 40) + *(*this + 32) - 1;
  *(*(*(*this + 8) + ((v3 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v3 & 0x1F) << 7) + 120) = *(this + 129);
  v9 = &unk_286EB9598;
  LOBYTE(v10[0]) = 0;
  v11 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1> const&>(v10, this + 8);
  v12 = &unk_286EB9598;
  LOBYTE(v13) = 0;
  v15 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1>>(&v13, v10);
  v16 = 9;
  SVG::Recorder::append(v2, &v12);
  if (v16 != -1)
  {
    (*(&off_286EBABF8 + v16))(v18, &v12);
  }

  v16 = -1;
  v9 = &unk_286EB9598;
  if (v11 != -1)
  {
    v18[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v18[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v18[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    (v18[v11])(&v17, v10);
  }

  if (*(this + 128) == 1)
  {
    v4 = *this;
    v9 = &unk_286EB97F8;
    v12 = &unk_286EB97F8;
    v16 = 11;
    SVG::Recorder::append(v4, &v12);
    if (v16 != -1)
    {
      (*(&off_286EBABF8 + v16))(v18, &v12);
    }

    v5 = *this;
    v9 = &unk_286EB94D8;
    v10[0] = 0x3FF0000000000000;
    v12 = &unk_286EB94D8;
    v13 = 0x3FF0000000000000;
    v16 = 12;
    SVG::Recorder::append(v5, &v12);
    if (v16 != -1)
    {
      (*(&off_286EBABF8 + v16))(v18, &v12);
    }
  }

  v6 = *(this + 56);
  if (v6 != -1)
  {
    v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v13 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v14 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v12 + v6))(&v9, this + 18);
  }

  *(this + 56) = -1;
  v7 = *(this + 15);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 28);
  if (v8 != -1)
  {
    v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v13 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v14 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    (*(&v12 + v8))(&v9, this + 1);
  }

  *(this + 28) = -1;
}

void SVG::ApplyPresentation::ApplyPresentation(uint64_t a1, void *a2, uint64_t a3, void *lpsrc, void *a5, void *a6, void *a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  *(a1 + 8) = a2;
  v12 = (a1 + 8);
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 26) = 0;
  if (*(a3 + 136) != 2)
  {
    goto LABEL_80;
  }

  v15 = *(a3 + 132);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 27) = v15 == 2;
  if (v15 == 2)
  {
    return;
  }

  if (v26)
  {
    v27 = v26[41];
    *&v83[8] = v26[40];
    *&v83[24] = v27;
    *&v83[40] = v26[42];
    *v83 = &unk_286EB9490;
    *v85 = &unk_286EB9490;
    *&v85[8] = *&v83[8];
    *&v85[24] = v27;
    *&v85[40] = *&v83[40];
    v89 = 2;
    SVG::Recorder::append(a2, v85);
    if (v89 != -1)
    {
      (*(&off_286EBABF8 + v89))(&v84, v85);
    }
  }

  if (*(a3 + 48) != 2)
  {
    goto LABEL_80;
  }

  if (*(a3 + 40) == 1)
  {
    if (v28)
    {
      v29 = v28;
      if ((*(a1 + 16) & 1) != 0 || (SVG::StateSaverRestorer::save(v12), *(a3 + 48) == 2))
      {
        v30 = *(a3 + 32);
        v90.origin.x = v29[84] + v30;
        v31 = *(a3 + 8);
        v90.origin.y = v29[85] + v31;
        v90.size.width = v29[86] - v30 - *(a3 + 16);
        v90.size.height = v29[87] - v31 - *(a3 + 24);
        CGPathCreateWithRect(v90, 0);
        v32 = *(MEMORY[0x277CBF2C0] + 16);
        *v83 = *MEMORY[0x277CBF2C0];
        *&v83[16] = v32;
        *&v83[32] = *(MEMORY[0x277CBF2C0] + 32);
        operator new();
      }

      goto LABEL_80;
    }
  }

  if (*(a3 + 80) != 2)
  {
    goto LABEL_80;
  }

  if (*(a3 + 72) == 1)
  {
    *v85 = *(a3 + 64);
    v33 = std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::find<__CFURL const*>(a5, v85);
    if (v33)
    {
      if (v34 != 0.0)
      {
        v35 = v34;
        if (v36)
        {
          (*(*v36 + 40))(v36, a9, a10, a11, a12);
        }

        else
        {
          v39 = 1.0;
          v37 = 0.0;
          v38 = 0.0;
          v40 = 1.0;
        }

        memset(&v83[32], 255, 32);
        *&v83[64] = xmmword_25D1D6D88;
        *&v83[80] = unk_25D1D6D98;
        *v83 = xmmword_25D1D6D48;
        *&v83[16] = unk_25D1D6D58;
        memset(v85, 0, 32);
        *&v85[32] = 0xAAAAAAAA3F800000;
        SVG::clipPaths(v35, a5, a7, v85, v83, v37, v38, v39, v40, a9, a10, a11, a12);
        std::__hash_table<SVG::Element const*,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,std::allocator<SVG::Element const*>>::~__hash_table(v85);
        operator new();
      }
    }
  }

  if (*(a3 + 264) != 2)
  {
    goto LABEL_80;
  }

  if (*(a3 + 256) == 1)
  {
    *v85 = *(a3 + 248);
    v41 = std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::find<__CFURL const*>(a5, v85);
    if (v41)
    {
      if (v42)
      {
        v43 = a6[1];
        if (v43)
        {
          v44 = v42;
          v45 = 0x9DDFEA08EB382D69 * ((8 * (v42 & 0x1FFFFFFF) + 8) ^ HIDWORD(v42));
          v46 = 0x9DDFEA08EB382D69 * (HIDWORD(v42) ^ (v45 >> 47) ^ v45);
          v47 = 0x9DDFEA08EB382D69 * (v46 ^ (v46 >> 47));
          v48 = vcnt_s8(v43);
          v48.i16[0] = vaddlv_u8(v48);
          if (v48.u32[0] > 1uLL)
          {
            v49 = v47;
            if (v47 >= *&v43)
            {
              v49 = v47 % *&v43;
            }
          }

          else
          {
            v49 = (*&v43 - 1) & v47;
          }

          v50 = *(*a6 + 8 * v49);
          if (v50)
          {
            v51 = *v50;
            if (*v50)
            {
              do
              {
                v52 = v51[1];
                if (v47 == v52)
                {
                  if (v51[2] == v42)
                  {
                    if (v53)
                    {
                      v54 = (*(*v53 + 40))(v53, a9, a10, a11, a12);
                      v56 = v55;
                      v58 = v57;
                      v60 = v59;
                    }

                    else
                    {
                      v58 = 1.0;
                      v54 = 0.0;
                      v56 = 0.0;
                      v60 = 1.0;
                    }

                    if ((*(a1 + 16) & 1) == 0)
                    {
                      SVG::StateSaverRestorer::save(v12);
                    }

                    SVG::unitTransform(v44[178], v85, v54, v56, v58, v60);
                    v91.origin.x = v54;
                    v91.origin.y = v56;
                    v91.size.width = v58;
                    v91.size.height = v60;
                    SVG::LengthRect::computeRect((v44 + 160), v91);
                    v65 = v51[3];
                    v66 = v51[4];
                    *v83 = &unk_286EB9E98;
                    *&v83[8] = v65;
                    *&v83[16] = v66;
                    if (v66)
                    {
                      atomic_fetch_add_explicit((v66 + 8), 1uLL, memory_order_relaxed);
                      v65 = *&v83[8];
                      v66 = *&v83[16];
                    }

                    v67 = *v85;
                    v68 = *&v85[16];
                    *&v83[24] = *v85;
                    *&v83[40] = *&v85[16];
                    v69 = *&v85[32];
                    *&v83[56] = *&v85[32];
                    *&v83[72] = v61;
                    *&v83[80] = v62;
                    *&v83[88] = v63;
                    *&v83[96] = v64;
                    *v85 = &unk_286EB9E98;
                    *&v85[8] = v65;
                    *&v85[16] = v66;
                    *&v83[8] = 0;
                    *&v83[16] = 0;
                    *&v85[24] = v67;
                    v88 = *&v83[88];
                    v87 = *&v83[72];
                    v86 = v69;
                    *&v85[40] = v68;
                    v89 = 8;
                    SVG::Recorder::append(a2, v85);
                    if (v89 != -1)
                    {
                      (*(&off_286EBABF8 + v89))(&v84, v85);
                    }

                    v89 = -1;
                    *v83 = &unk_286EB9E98;
                    break;
                  }
                }

                else
                {
                  if (v48.u32[0] > 1uLL)
                  {
                    if (v52 >= *&v43)
                    {
                      v52 %= *&v43;
                    }
                  }

                  else
                  {
                    v52 &= *&v43 - 1;
                  }

                  if (v52 != v49)
                  {
                    break;
                  }
                }

                v51 = *v51;
              }

              while (v51);
            }
          }
        }
      }
    }
  }

  v70 = a2[5] + a2[4] - 1;
  v71 = (*(a2[1] + ((v70 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v70 & 0x1F) << 7));
  *(a1 + 25) = *v71;
  if (*(a3 + 92) != 2)
  {
    goto LABEL_80;
  }

  *v71 = *(a3 + 88) == 1;
  v73 = v71[120];
  v72 = v71 + 120;
  *(a1 + 26) = v73;
  if (*(a3 + 228) != 2)
  {
    goto LABEL_80;
  }

  *v72 = *(a3 + 224) == 1;
  {
    goto LABEL_69;
  }

  if (*(a3 + 200) != 2 || *(a3 + 400) != 2)
  {
    goto LABEL_80;
  }

  v74 = *(a3 + 192);
  v75 = v74 - 1;
  v76 = *(a3 + 392);
  v77 = v74 || (v76 - 1) >= 2;
  v78 = !v77;
  v79 = v76 || v75 >= 2;
  if (v79 && !v78)
  {
LABEL_69:
    if (*(a3 + 280) == 2)
    {
      v80 = *(a3 + 272);
      if (v80 < 1.0)
      {
        *(a1 + 24) = 1;
        *v83 = &unk_286EB94D8;
        *&v83[8] = v80;
        *v85 = &unk_286EB94D8;
        *&v85[8] = v80;
        v89 = 12;
        SVG::Recorder::append(a2, v85);
        if (v89 != -1)
        {
          (*(&off_286EBABF8 + v89))(&v84, v85);
        }

        *v83 = &unk_286EB9730;
        *v85 = &unk_286EB9730;
        v89 = 10;
        SVG::Recorder::append(a2, v85);
        if (v89 != -1)
        {
          (*(&off_286EBABF8 + v89))(&v84, v85);
        }
      }

      goto LABEL_75;
    }

LABEL_80:
    std::__throw_bad_variant_access[abi:nn200100]();
    goto LABEL_81;
  }

  if (*(a3 + 280) != 2)
  {
    goto LABEL_80;
  }

  *(a1 + 32) = *(a3 + 272);
  *(a1 + 40) = 1;
LABEL_75:
  *v85 = *(a1 + 32);
  v81 = *(a8 + 24);
  if (!v81)
  {
LABEL_81:
    v82 = std::__throw_bad_function_call[abi:nn200100]();
    SVG::ApplyPresentation::~ApplyPresentation(v82);
    return;
  }

  (*(*v81 + 48))(v81, v85);
}

void SVG::ApplyPresentation::~ApplyPresentation(SVG::ApplyPresentation *this)
{
  if ((*(this + 27) & 1) == 0)
  {
    if (*(this + 24) == 1)
    {
      v2 = *this;
      v6[0] = &unk_286EB97F8;
      v7 = 11;
      SVG::Recorder::append(v2, v6);
      if (v7 != -1)
      {
        (*(&off_286EBABF8 + v7))(&v8, v6);
      }

      v3 = *this;
      v6[0] = &unk_286EB94D8;
      v6[1] = 0x3FF0000000000000;
      v7 = 12;
      SVG::Recorder::append(v3, v6);
      if (v7 != -1)
      {
        (*(&off_286EBABF8 + v7))(&v8, v6);
      }
    }

    v4 = *(*this + 40) + *(*this + 32) - 1;
    v5 = (*(*(*this + 8) + ((v4 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v4 & 0x1F) << 7));
    v5[120] = *(this + 26);
    *v5 = *(this + 25);
  }

  SVG::StateSaverRestorer::~StateSaverRestorer((this + 8));
}

void std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::ApplyPresentationFill::ApplyPresentationFill(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_0,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_1,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_2,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_4,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_3>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext> const&>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v95 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 16);
  *t2 = *a2;
  v7 = std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::find<__CFURL const*>(v6, t2);
  if (!v7)
  {
    goto LABEL_57;
  }

  v8 = v7[3];
  if (v9)
  {
    v10 = v9;
    (*(*v9 + 40))(t2);
    if (*t2 != 1 || (v11 = *(v5 + 24), *(v11 + 16) > 0.0) && *(v11 + 24) > 0.0)
    {
      v12 = *(v5 + 32);
      v13 = v12[1];
      if (v13)
      {
        v14 = 0x9DDFEA08EB382D69 * ((8 * (v10 & 0x1FFFFFFF) + 8) ^ HIDWORD(v10));
        v15 = 0x9DDFEA08EB382D69 * (HIDWORD(v10) ^ (v14 >> 47) ^ v14);
        v16 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
        v17 = vcnt_s8(v13);
        v17.i16[0] = vaddlv_u8(v17);
        if (v17.u32[0] > 1uLL)
        {
          v18 = v16;
          if (v16 >= *&v13)
          {
            v18 = v16 % *&v13;
          }
        }

        else
        {
          v18 = (*&v13 - 1) & v16;
        }

        v28 = *(*v12 + 8 * v18);
        if (v28)
        {
          v29 = *v28;
          if (v29)
          {
            while (1)
            {
              v30 = v29[1];
              if (v16 == v30)
              {
                if (v29[2] == v10)
                {
                  v34 = **(v5 + 40);
                  v36 = *(v5 + 16);
                  v35 = *(v5 + 24);
                  v37 = *v35;
                  v38 = v35[1];
                  v39 = v35[2];
                  v40 = v35[3];
                  memset(&v76, 255, sizeof(v76));
                  v77 = 0.0;
                  v78 = 0;
                  v79.a = 0.0;
                  v79.b = -3.72066066e-103;
                  *&v41 = -1;
                  *(&v41 + 1) = -1;
                  v87 = v41;
                  v88 = v41;
                  v86 = v41;
                  (*(*v10 + 40))(t2, v10, v36);
                  SVG::unitTransform(*t2, &v86, v37, v38, v39, v40);
                  (*(*v10 + 40))(t2, v10, v36);
                  t1 = *&t2[8];
                  *t2 = v86;
                  *&t2[16] = v87;
                  *&t2[32] = v88;
                  CGAffineTransformConcat(&v76, &t1, t2);
                  *&v42 = -1;
                  *(&v42 + 1) = -1;
                  v87 = v42;
                  v88 = v42;
                  v86 = v42;
                  v89 = 0xAAAAAAAAAAAAAAAALL;
                  *t2 = v76;
                  SVG::invert(t2, &v86);
                  if (v89 == 1)
                  {
                    (*(*v10 + 40))(t2, v10, v36);
                    BoundingBox = CGPathGetBoundingBox(v34);
                    *t2 = v86;
                    *&t2[16] = v87;
                    *&t2[32] = v88;
                    CGRectApplyAffineTransform(BoundingBox, t2);
                    if (v43)
                    {
                      SVG::LinearGradientElement::specifiedLinearState(v43, t2);
                    }

                    if (v73)
                    {
                      SVG::RadialGradientElement::specifiedRadialState(v73, t2);
                    }
                  }

                  *a3 = 0;
                  a3[20] = 0;
                  if (LODWORD(v79.b) != -1)
                  {
                    *t2 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIN3SVG18DrawLinearGradientENS_9allocatorISA_EEEENS8_INS9_18DrawRadialGradientENSB_ISE_EEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSD_SG_EEEEEEDcSK_DpT0_;
                    *&t2[8] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIN3SVG18DrawLinearGradientENS_9allocatorISA_EEEENS8_INS9_18DrawRadialGradientENSB_ISE_EEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSD_SG_EEEEEEDcSK_DpT0_;
                    (*&t2[8 * LODWORD(v79.b)])(&v86, &v77);
                  }

                  return;
                }
              }

              else
              {
                if (v17.u32[0] > 1uLL)
                {
                  if (v30 >= *&v13)
                  {
                    v30 %= *&v13;
                  }
                }

                else
                {
                  v30 &= *&v13 - 1;
                }

                if (v30 != v18)
                {
                  goto LABEL_57;
                }
              }

              v29 = *v29;
              if (!v29)
              {
                goto LABEL_57;
              }
            }
          }
        }
      }
    }

    goto LABEL_57;
  }

  if (!v19)
  {
    goto LABEL_57;
  }

  v20 = *(v5 + 56);
  v21 = v20[1];
  if (!*&v21)
  {
    goto LABEL_57;
  }

  v22 = v19;
  v23 = 0x9DDFEA08EB382D69 * ((8 * (v19 & 0x1FFFFFFF) + 8) ^ HIDWORD(v19));
  v24 = 0x9DDFEA08EB382D69 * (HIDWORD(v19) ^ (v23 >> 47) ^ v23);
  v25 = 0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47));
  v26 = vcnt_s8(v21);
  v26.i16[0] = vaddlv_u8(v26);
  if (v26.u32[0] > 1uLL)
  {
    v27 = v25;
    if (v25 >= *&v21)
    {
      v27 = v25 % *&v21;
    }
  }

  else
  {
    v27 = (*&v21 - 1) & v25;
  }

  v31 = *(*v20 + 8 * v27);
  if (!v31 || (v32 = *v31) == 0)
  {
LABEL_57:
    if (*(a2 + 24) == 1)
    {
      v71 = **(v5 + 96);
      *&v76.a = **(v5 + 88);
      v76.c = v71;
      v72 = *(a2 + 20);
      if (v72 == -1)
      {
        std::__throw_bad_variant_access[abi:nn200100]();
        std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
      }

      *&v86 = &v76;
      *t2 = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::ApplyPresentationFill::ApplyPresentationFill(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_0,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_1,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_2,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_3>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::FromContext> const&>;
      *&t2[8] = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::ApplyPresentationFill::ApplyPresentationFill(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_0,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_1,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_2,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_3>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::FromContext> const&>;
      *&t2[16] = std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::ApplyPresentationFill::ApplyPresentationFill(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_0,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_1,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_2,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_3>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::FromContext> const&>;
      *&t2[24] = std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::ApplyPresentationFill::ApplyPresentationFill(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_0,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_1,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_2,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_3>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::FromContext> const&>;
      (*&t2[8 * v72])(&v86, a2 + 12);
    }

    else
    {
      *a3 = 0;
      a3[20] = 0;
    }

    return;
  }

  while (1)
  {
    v33 = *(v32 + 1);
    if (v25 == v33)
    {
      break;
    }

    if (v26.u32[0] > 1uLL)
    {
      if (v33 >= *&v21)
      {
        v33 %= *&v21;
      }
    }

    else
    {
      v33 &= *&v21 - 1;
    }

    if (v33 != v27)
    {
      goto LABEL_57;
    }

LABEL_39:
    v32 = *v32;
    if (!v32)
    {
      goto LABEL_57;
    }
  }

  if (*(v32 + 2) != v19)
  {
    goto LABEL_39;
  }

  v44 = *(v5 + 64);
  v46 = *(v5 + 16);
  v45 = *(v5 + 24);
  v47 = *v45;
  v48 = v45[1];
  v49 = v45[2];
  v50 = v45[3];
  memset(&v90, 255, sizeof(v90));
  v52 = v32[3];
  v51 = *(v32 + 4);
  if (v51)
  {
    atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SVG::PatternElement::computeRecordingRect(v19, v46, v47, v48, v49, v50);
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  SVG::PatternElement::computePlaybackRect(v22, v46, v47, v48, v49, v50);
  v74 = v61;
  v75 = v62;
  *&v63 = -1;
  *(&v63 + 1) = -1;
  v87 = v63;
  v88 = v63;
  v86 = v63;
  v89 = 0xAAAAAAAAAAAAAAAALL;
  SVG::PatternElement::contentsTransform(v22, v46, &v86, v47, v48, v49, v50, v54, v56, v58, v60);
  if (v89 != 1 || (*&v64 = -1, *(&v64 + 1) = -1, *&t1.c = v64, *&t1.tx = v64, *&t1.a = v64, v85 = 0xAAAAAAAAAAAAAAAALL, *t2 = v86, *&t2[16] = v87, *&t2[32] = v88, SVG::invert(t2, &t1), v85 != 1) || (*t2 = t1, v97.origin.x = v54, v97.origin.y = v56, v97.size.width = v58, v97.size.height = v60, v98 = CGRectApplyAffineTransform(v97, t2), v98.size.width <= 0.0) || (height = v98.size.height, v98.size.height <= 0.0))
  {
    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v51);
    }

    goto LABEL_57;
  }

  x = v98.origin.x;
  y = v98.origin.y;
  width = v98.size.width;
  CTM = SVG::Recorder::recordGetCTM(v44);
  *&v70 = -1;
  *(&v70 + 1) = -1;
  *&v83.c = v70;
  *&v83.tx = v70;
  *&v83.a = v70;
  CGAffineTransformMakeTranslation(&v83, v74 - v54, v75 - v56);
  SVG::PatternElement::specifiedState(v22, v46, t2);
  v81 = v94;
  *t2 = v86;
  *&t2[16] = v87;
  *&t2[32] = v88;
  v82 = v83;
  CGAffineTransformConcat(&v76, &v82, &v81);
  CGAffineTransformConcat(&v90, t2, &v76);
  *&v76.a = &unk_286EB9598;
  v76.b = v52;
  *&v76.c = v51;
  v76.d = x;
  v76.tx = y;
  v76.ty = width;
  v77 = height;
  v78 = CTM;
  v79 = v90;
  v80 = 2;
  *t2 = &unk_286EB9598;
  t2[8] = 0;
  v92 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1>>(&t2[8], &v76.b);
  v93 = 9;
  SVG::Recorder::append(v44, t2);
  if (v93 != -1)
  {
    (*(&off_286EBABF8 + v93))(&v82, t2);
  }

  v93 = -1;
  *&v76.a = &unk_286EB9598;
  if (v80 != -1)
  {
    *&v82.a = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    *&v82.b = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    *&v82.c = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    (*(&v82.a + v80))(&v81, &v76.b);
  }

  *a3 = 0;
  a3[20] = 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::ApplyPresentationFill::ApplyPresentationFill(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_0,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_1,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_2,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_4,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_3>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext> const&>@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(*a1 + 104);
  v5[0] = 0;
  v6 = 1;
  v7 = &unk_286EB9598;
  v8[0] = 0;
  v9 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1>>(v8, v5);
  v10 = 9;
  result = SVG::Recorder::append(v3, &v7);
  if (v10 != -1)
  {
    result = (*(&off_286EBABF8 + v10))(v12, &v7);
  }

  v10 = -1;
  if (v6 != -1)
  {
    v12[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v12[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v12[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    result = (v12[v6])(&v11, v5);
  }

  *a2 = 0;
  a2[20] = 1;
  return result;
}

void SVG::ApplyPresentationFill::ApplyPresentationFill(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_2::operator()(_DWORD *a1, float **a2, uint64_t a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  SVG::createColorObject(*(*a2 + 25), a3, &v13, *a2[1]);
  v5 = *a2;
  v6 = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  v7[0] = v6;
  v8 = 0;
  v9 = &unk_286EB9598;
  v10[0] = 0;
  v11 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1>>(v10, v7);
  v12 = 9;
  SVG::Recorder::append(v5, &v9);
  if (v12 != -1)
  {
    (*(&off_286EBABF8 + v12))(v15, &v9);
  }

  v12 = -1;
  if (v8 != -1)
  {
    v15[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v15[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v15[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    (v15[v8])(&v14, v7);
  }

  *a1 = 0;
  a1[20] = 1;
  if (v6)
  {
    CFRelease(v6);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::DrawLinearGradient>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
}

void std::vector<SVG::DrawLinearGradient>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 56;
      v7 = v4 - 56;
      v8 = v4 - 56;
      do
      {
        v9 = *v8;
        v8 -= 56;
        (*v9)(v7);
        v6 -= 56;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void (***std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<SVG::DrawLinearGradient>,SVG::DrawLinearGradient*>(void (***result)(void), void (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v4 = a3;
    v5 = result;
    do
    {
      v6 = v5[1];
      v5[1] = 0;
      *a3 = &unk_286EB9888;
      *(a3 + 8) = v6;
      v7 = *(v5 + 1);
      v8 = *(v5 + 2);
      *(a3 + 48) = *(v5 + 12);
      *(a3 + 16) = v7;
      *(a3 + 32) = v8;
      v5 += 7;
      a3 += 56;
      v4 += 56;
    }

    while (v5 != a2);
    v9 = result;
    v10 = result;
    do
    {
      v11 = *v10;
      v10 += 7;
      (*v11)();
      v9 += 7;
      result = v10;
    }

    while (v10 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<SVG::DrawLinearGradient>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 56);
    *(a1 + 16) = i - 56;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>>::__assign_alt[abi:nn200100]<0ul,std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawLinearGradient>>(uint64_t a1, void **a2, __n128 *a3)
{
  v5 = *(a1 + 24);
  if (v5 == -1)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    v17[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIN3SVG18DrawLinearGradientENS_9allocatorISA_EEEENS8_INS9_18DrawRadialGradientENSB_ISE_EEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSD_SG_EEEEEEDcSK_DpT0_;
    v17[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIN3SVG18DrawLinearGradientENS_9allocatorISA_EEEENS8_INS9_18DrawRadialGradientENSB_ISE_EEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSD_SG_EEEEEEDcSK_DpT0_;
    (v17[v5])(&v16, a1);
LABEL_12:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a3;
    *a1 = *a3;
    *(a1 + 16) = a3[1].n128_u64[0];
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    *(a1 + 24) = 0;
    return result;
  }

  v7 = *a2;
  if (*a2)
  {
    v8 = a2[1];
    v9 = *a2;
    if (v8 != v7)
    {
      v10 = v8 - 56;
      v11 = v8 - 56;
      v12 = v8 - 56;
      do
      {
        v13 = *v12;
        v12 -= 56;
        (*v13)(v11);
        v10 -= 56;
        v14 = v11 == v7;
        v11 = v12;
      }

      while (!v14);
      v9 = *a2;
    }

    a2[1] = v7;
    operator delete(v9);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  result = *a3;
  *a2 = *a3;
  a2[2] = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  return result;
}

void std::vector<SVG::DrawRadialGradient>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 72;
      v7 = v4 - 72;
      v8 = v4 - 72;
      do
      {
        v9 = *v8;
        v8 -= 72;
        (*v9)(v7);
        v6 -= 72;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 24);
  if (v4 != -1)
  {
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIN3SVG18DrawLinearGradientENS_9allocatorISA_EEEENS8_INS9_18DrawRadialGradientENSB_ISE_EEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSD_SG_EEEEEEDcSK_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIN3SVG18DrawLinearGradientENS_9allocatorISA_EEEENS8_INS9_18DrawRadialGradientENSB_ISE_EEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSD_SG_EEEEEEDcSK_DpT0_;
    result = (*(&v7 + v4))(&v6, result);
  }

  *(v3 + 24) = -1;
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = v3;
    v7 = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>> &&>;
    v8 = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>> &&>;
    result = (*(&v7 + v5))(&v6, a2);
    *(v3 + 24) = v5;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::DrawRadialGradient>>(unint64_t a1)
{
  if (a1 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
}

void (***std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<SVG::DrawRadialGradient>,SVG::DrawRadialGradient*>(void (***result)(void), void (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v4 = a3;
    v5 = result;
    do
    {
      v6 = v5[1];
      v5[1] = 0;
      *a3 = &unk_286EB9840;
      *(a3 + 8) = v6;
      v7 = *(v5 + 1);
      v8 = *(v5 + 2);
      v9 = *(v5 + 3);
      *(a3 + 64) = *(v5 + 16);
      *(a3 + 32) = v8;
      *(a3 + 48) = v9;
      *(a3 + 16) = v7;
      v5 += 9;
      a3 += 72;
      v4 += 72;
    }

    while (v5 != a2);
    v10 = result;
    v11 = result;
    do
    {
      v12 = *v11;
      v11 += 9;
      (*v12)();
      v10 += 9;
      result = v11;
    }

    while (v11 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<SVG::DrawRadialGradient>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 72);
    *(a1 + 16) = i - 72;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>>::__assign_alt[abi:nn200100]<1ul,std::vector<SVG::DrawRadialGradient>,std::vector<SVG::DrawRadialGradient>>(uint64_t a1, void **a2, __n128 *a3)
{
  v5 = *(a1 + 24);
  if (v5 == -1)
  {
    goto LABEL_12;
  }

  if (v5 != 1)
  {
    v17[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIN3SVG18DrawLinearGradientENS_9allocatorISA_EEEENS8_INS9_18DrawRadialGradientENSB_ISE_EEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSD_SG_EEEEEEDcSK_DpT0_;
    v17[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIN3SVG18DrawLinearGradientENS_9allocatorISA_EEEENS8_INS9_18DrawRadialGradientENSB_ISE_EEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSD_SG_EEEEEEDcSK_DpT0_;
    (v17[v5])(&v16, a1);
LABEL_12:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a3;
    *a1 = *a3;
    *(a1 + 16) = a3[1].n128_u64[0];
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
    return result;
  }

  v7 = *a2;
  if (*a2)
  {
    v8 = a2[1];
    v9 = *a2;
    if (v8 != v7)
    {
      v10 = v8 - 72;
      v11 = v8 - 72;
      v12 = v8 - 72;
      do
      {
        v13 = *v12;
        v12 -= 72;
        (*v13)(v11);
        v10 -= 72;
        v14 = v11 == v7;
        v11 = v12;
      }

      while (!v14);
      v9 = *a2;
    }

    a2[1] = v7;
    operator delete(v9);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  result = *a3;
  *a2 = *a3;
  a2[2] = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::ApplyPresentationFill::ApplyPresentationFill(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_0,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_1,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_2,SVG::ApplyPresentationFill::(SVG::Recorder &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> const&,SVG::Presentation::Paint const&,double,BOOL,CGRect,CGRect,CGPath const*,SVG::ApplyPresentationState const&)::$_3>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::FromContext> const&>@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v5[0] = 0;
  v6 = 1;
  v7 = &unk_286EB9598;
  v8[0] = 0;
  v9 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1>>(v8, v5);
  v10 = 9;
  result = SVG::Recorder::append(v3, &v7);
  if (v10 != -1)
  {
    result = (*(&off_286EBABF8 + v10))(v12, &v7);
  }

  v10 = -1;
  if (v6 != -1)
  {
    v12[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v12[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v12[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    result = (v12[v6])(&v11, v5);
  }

  *a2 = 0;
  a2[20] = 1;
  return result;
}

void SVG::SetContextFill::~SetContextFill(SVG::SetContextFill *this)
{
  *this = &unk_286EB9598;
  v2 = *(this + 28);
  if (v2 != -1)
  {
    v4[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v4[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v4[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    (v4[v2])(&v3, this + 8);
  }

  *(this + 28) = -1;
}

{
  *this = &unk_286EB9598;
  v2 = *(this + 28);
  if (v2 != -1)
  {
    v4[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v4[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v4[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    (v4[v2])(&v3, this + 8);
  }

  *(this + 28) = -1;
  MEMORY[0x25F894240](this, 0x10A3C40C258EA78);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3 != -1)
  {
    v6[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIN3SVG18DrawLinearGradientENS_9allocatorISA_EEEENS8_INS9_18DrawRadialGradientENSB_ISE_EEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSD_SG_EEEEEEDcSK_DpT0_;
    v6[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIN3SVG18DrawLinearGradientENS_9allocatorISA_EEEENS8_INS9_18DrawRadialGradientENSB_ISE_EEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSD_SG_EEEEEEDcSK_DpT0_;
    result = (v6[v3])(&v5, a2 + 48);
  }

  *(a2 + 72) = -1;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJSA_SB_SC_EEEOSR_EEEDcSJ_DpT0_(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  v5 = *(*result + 80);
  if (v5 != -1)
  {
    if (!v5)
    {
      *a2 = *a3;
      return result;
    }

    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    result = (v7[v5])(&v6, v4);
  }

  *v4 = *a3;
  v4[20] = 0;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJSA_SB_SC_EEEOSR_EEEDcSJ_DpT0_(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  v5 = *(*result + 80);
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      *a2 = *a3;
      return result;
    }

    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    result = (v7[v5])(&v6, v4);
  }

  *v4 = *a3;
  v4[20] = 1;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJSA_SB_SC_EEEOSR_EEEDcSJ_DpT0_(uint64_t result, uint64_t a2, __int128 *a3)
{
  v4 = *result;
  v5 = *(*result + 80);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 2)
  {
    v15 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v16 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v17 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG21ApplyPresentationFill4NoneENS9_8FillPathENS9_8GradientEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v15 + v5))(&v14, v4);
LABEL_7:
    *(v4 + 80) = -1;
    v12 = *a3;
    v13 = a3[2];
    *(v4 + 16) = a3[1];
    *(v4 + 32) = v13;
    *v4 = v12;
    *(v4 + 48) = 0;
    *(v4 + 72) = -1;
    result = std::__variant_detail::__ctor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>>,(std::__variant_detail::_Trait)1>>(v4 + 48, (a3 + 3));
    *(v4 + 80) = 2;
    return result;
  }

  v7 = *a3;
  v8 = a3[2];
  *(a2 + 16) = a3[1];
  *(a2 + 32) = v8;
  *a2 = v7;
  v9 = a2 + 48;
  v10 = *(a2 + 72);
  v11 = *(a3 + 18);
  if (v10 == -1)
  {
    if (v11 == -1)
    {
      return result;
    }
  }

  else if (v11 == -1)
  {
    v15 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIN3SVG18DrawLinearGradientENS_9allocatorISA_EEEENS8_INS9_18DrawRadialGradientENSB_ISE_EEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSD_SG_EEEEEEDcSK_DpT0_;
    v16 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIN3SVG18DrawLinearGradientENS_9allocatorISA_EEEENS8_INS9_18DrawRadialGradientENSB_ISE_EEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSD_SG_EEEEEEDcSK_DpT0_;
    result = (*(&v15 + v10))(&v14, v9);
    *(a2 + 72) = -1;
    return result;
  }

  v14 = v9;
  v15 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJNS_6vectorIN3SVG18DrawLinearGradientENS_9allocatorISA_EEEENS8_INS9_18DrawRadialGradientENSB_ISE_EEEEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISH_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSL_1EJSD_SG_EEEOSV_EEEDcSN_DpT0_;
  v16 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJNS_6vectorIN3SVG18DrawLinearGradientENS_9allocatorISA_EEEENS8_INS9_18DrawRadialGradientENSB_ISE_EEEEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISH_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSL_1EJSD_SG_EEEOSV_EEEDcSN_DpT0_;
  return (*(&v15 + v11))(&v14);
}

uint64_t SVG::ImageElement::ImageElement(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = SVG::Element::Element(a1, a2, a3);
  SVG::Presentation::Presentation(v5 + 64, a3);
  *a1 = &unk_286EB9B40;
  *(a1 + 640) = 5;
  v6 = MEMORY[0x277CBF2C0];
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  *(a1 + 648) = *MEMORY[0x277CBF2C0];
  *(a1 + 664) = v7;
  *(a1 + 680) = *(v6 + 32);
  *(a1 + 696) = 0;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 752) = 0;
  v8 = (a1 + 760);
  *(a1 + 760) = 0u;
  std::string::basic_string[abi:nn200100]<0>(data, "preserveAspectRatio");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v9 = SVG::Element::findInAttributeMap(a3, data, __p);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v37) < 0)
  {
    operator delete(data[0]);
  }

  if (v9)
  {
    v10 = SVG::PreserveAspectRatio::parsePreserveAspectRatio((v9 + 8));
    if (v11)
    {
      *(a1 + 640) = v10;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(data, "transform");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v12 = SVG::Element::findInAttributeMap(a3, data, __p);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v37) < 0)
  {
    operator delete(data[0]);
  }

  if (v12)
  {
    *&v13 = -1;
    *(&v13 + 1) = -1;
    v37 = v13;
    v38 = v13;
    *data = v13;
    v39 = 0xAAAAAAAAAAAAAAAALL;
    SVG::parseTransform((v12 + 8), data);
    if (v39 == 1)
    {
      v14 = v37;
      *(a1 + 648) = *data;
      *(a1 + 664) = v14;
      *(a1 + 680) = v38;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(data, "x");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v15 = SVG::Element::findInAttributeMap(a3, data, __p);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v37) < 0)
  {
    operator delete(data[0]);
  }

  if (v15)
  {
    data[0] = -1;
    data[1] = 0xAAAAAAAAAAAAAAAALL;
    *&v37 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v15 + 8), data);
    if (v37 == 1)
    {
      *(a1 + 696) = *data;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(data, "y");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v16 = SVG::Element::findInAttributeMap(a3, data, __p);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v37) < 0)
  {
    operator delete(data[0]);
  }

  if (v16)
  {
    data[0] = -1;
    data[1] = 0xAAAAAAAAAAAAAAAALL;
    *&v37 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v16 + 8), data);
    if (v37 == 1)
    {
      *(a1 + 712) = *data;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(data, "width");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v17 = SVG::Element::findInAttributeMap(a3, data, __p);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v37) < 0)
  {
    operator delete(data[0]);
  }

  if (v17)
  {
    data[0] = -1;
    data[1] = 0xAAAAAAAAAAAAAAAALL;
    *&v37 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v17 + 8), data);
    if (v37 == 1)
    {
      *(a1 + 728) = *data;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(data, "height");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v18 = SVG::Element::findInAttributeMap(a3, data, __p);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v37) < 0)
  {
    operator delete(data[0]);
  }

  if (v18)
  {
    data[0] = -1;
    data[1] = 0xAAAAAAAAAAAAAAAALL;
    *&v37 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v18 + 8), data);
    if (v37 == 1)
    {
      *(a1 + 744) = *data;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(data, "href");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/1999/xlink");
  v19 = SVG::Element::findInAttributeMap(a3, data, __p);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v37) < 0)
  {
    operator delete(data[0]);
  }

  if (v19)
  {
    v20 = *MEMORY[0x277CBECE8];
    v21 = *(v19 + 87);
    if (v21 < 0)
    {
      v22 = v19[8];
      v21 = v19[9];
    }

    else
    {
      v22 = (v19 + 8);
    }

    v23 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v22, v21, 0x8000100u, 1u);
    if (v23)
    {
      v24 = v23;
      v25 = CFURLCreateWithString(v20, v23, 0);
      if (*v8)
      {
        CFRelease(*v8);
      }

      *v8 = v25;
      CFRelease(v24);
    }
  }

  v26 = *v8;
  if (*v8)
  {
    v27 = CFURLCopyScheme(*v8);
    if (v27)
    {
      v28 = v27;
      ImageAtIndex = 0;
      if (CFStringCompare(v27, @"data", 0) == kCFCompareEqualTo)
      {
        v30 = CFURLCopyResourceSpecifier(v26);
        v31 = CFStringFind(v30, @",", 0);
        if (v31.location == -1)
        {
          ImageAtIndex = 0;
          if (!v30)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v42.length = CFStringGetLength(v30) - (v31.location + v31.length);
          v42.location = v31.location + v31.length;
          v32 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], v30, v42);
          data[0] = 0xAAAAAAAAAAAAAAAALL;
          SVG::decodeBase64(v32, data);
          v33 = CGImageSourceCreateWithData(data[0], 0);
          ImageAtIndex = CGImageSourceCreateImageAtIndex(v33, 0, 0);
          if (v33)
          {
            CFRelease(v33);
          }

          if (data[0])
          {
            CFRelease(data[0]);
          }

          if (v32)
          {
            CFRelease(v32);
          }

          if (!v30)
          {
            goto LABEL_67;
          }
        }

        CFRelease(v30);
      }

LABEL_67:
      CFRelease(v28);
      goto LABEL_69;
    }
  }

  ImageAtIndex = 0;
LABEL_69:
  v34 = *(a1 + 768);
  if (v34)
  {
    CFRelease(v34);
  }

  *(a1 + 768) = ImageAtIndex;
  return a1;
}

CGAffineTransform *SVG::ImageElement::totalTransform@<X0>(SVG::ImageElement *this@<X0>, CGRect a2@<0:D0, 8:D1, 16:D2, 24:D3>, uint64_t a3@<X8>)
{
  height = a2.size.height;
  width = a2.size.width;
  v7 = SVG::Length::computeValue((this + 696), a2.size.width);
  v8 = SVG::Length::computeValue((this + 712), height);
  v9 = SVG::Length::computeValue((this + 728), width);
  v10 = SVG::Length::computeValue((this + 744), height);
  *&v11 = -1;
  *(&v11 + 1) = -1;
  *&v19.c = v11;
  *&v19.tx = v11;
  *&v19.a = v11;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v12 = CGImageGetWidth(*(this + 96));
  v13 = CGImageGetHeight(*(this + 96));
  result = SVG::computeViewBoxTransform(*(this + 80), &v19, 0.0, 0.0, v12, v13, v7, v8, v9, v10);
  if (v20 == 1)
  {
    t1 = v19;
    v15 = *(this + 664);
    *&v17.a = *(this + 648);
    *&v17.c = v15;
    *&v17.tx = *(this + 680);
    result = CGAffineTransformConcat(a3, &t1, &v17);
    v16 = 1;
  }

  else
  {
    v16 = 0;
    *a3 = 0;
  }

  *(a3 + 48) = v16;
  return result;
}

void SVG::ImageElement::~ImageElement(SVG::ImageElement *this)
{
  *this = &unk_286EB9B40;
  v2 = *(this + 96);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 95);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 128);
  if (v4 != -1)
  {
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v10 + v4))(&v9, this + 480);
  }

  *(this + 128) = -1;
  v5 = *(this + 116);
  if (v5 != -1)
  {
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v10 + v5))(&v9, this + 416);
  }

  *(this + 116) = -1;
  v6 = *(this + 82);
  if (v6 != -1)
  {
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v10 + v6))(&v9, this + 312);
  }

  *(this + 82) = -1;
  v7 = *(this + 66);
  if (v7 != -1)
  {
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v10 + v7))(&v9, this + 216);
  }

  *(this + 66) = -1;
  v8 = *(this + 36);
  if (v8 != -1)
  {
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v10 + v8))(&v9, this + 128);
  }

  *(this + 36) = -1;

  SVG::Element::~Element(this);
}

{
  *this = &unk_286EB9B40;
  v2 = *(this + 96);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 95);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 128);
  if (v4 != -1)
  {
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v10 + v4))(&v9, this + 480);
  }

  *(this + 128) = -1;
  v5 = *(this + 116);
  if (v5 != -1)
  {
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v10 + v5))(&v9, this + 416);
  }

  *(this + 116) = -1;
  v6 = *(this + 82);
  if (v6 != -1)
  {
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v10 + v6))(&v9, this + 312);
  }

  *(this + 82) = -1;
  v7 = *(this + 66);
  if (v7 != -1)
  {
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v10 + v7))(&v9, this + 216);
  }

  *(this + 66) = -1;
  v8 = *(this + 36);
  if (v8 != -1)
  {
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v10 + v8))(&v9, this + 128);
  }

  *(this + 36) = -1;
  SVG::Element::~Element(this);
  MEMORY[0x25F894240]();
}

void SVG::convertString(SVG *this, NSString *a2)
{
  v7 = a2;
  v3 = [(NSString *)v7 UTF8String];
  if (v3)
  {
    v4 = v3;
    v5 = strlen(v3);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    *(this + 23) = v5;
    if (v5)
    {
      memmove(this, v4, v5);
    }

    *(this + v6) = 0;
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }
}

void std::vector<std::reference_wrapper<SVG::Element>>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::Recorder::State *>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void *__copy_helper_atomic_property_(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<std::reference_wrapper<SVG::Element>>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 3);
  }

  return result;
}

const void **__assign_helper_atomic_property_(const void **result, const void **a2)
{
  if (result != a2)
  {
    v2 = result;
    v3 = *a2;
    v4 = a2[1];
    v5 = v4 - *a2;
    v6 = result[2];
    v7 = *result;
    if (v6 - *result < v5)
    {
      v8 = v5 >> 3;
      if (v7)
      {
        result[1] = v7;
        operator delete(v7);
        v6 = 0;
        *v2 = 0;
        v2[1] = 0;
        v2[2] = 0;
      }

      if (!(v8 >> 61))
      {
        v9 = v6 >> 2;
        if (v6 >> 2 <= v8)
        {
          v9 = v5 >> 3;
        }

        if (v6 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::vector<std::reference_wrapper<SVG::Element>>::__vallocate[abi:nn200100](v2, v10);
      }

      std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
    }

    v11 = result[1];
    v12 = v11 - v7;
    if (v11 - v7 >= v5)
    {
      if (v4 != v3)
      {
        result = memmove(v7, v3, v5);
      }

      v14 = &v7[v5];
    }

    else
    {
      v13 = &v3[v12];
      if (v11 != v7)
      {
        result = memmove(*result, *a2, v12);
        v11 = v2[1];
      }

      if (v4 != v13)
      {
        result = memmove(v11, v13, v4 - v13);
      }

      v14 = &v11[v4 - v13];
    }

    v2[1] = v14;
  }

  return result;
}

void __copy_helper_atomic_property__52(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<SVG::GradientElement const*,std::hash<SVG::GradientElement const*>,std::equal_to<SVG::GradientElement const*>,std::allocator<SVG::GradientElement const*>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = *(i + 39);
    if (v5 >= 0)
    {
      v6 = i + 2;
    }

    else
    {
      v6 = i[2];
    }

    if (v5 >= 0)
    {
      v7 = *(i + 39);
    }

    else
    {
      v7 = i[3];
    }

    v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v17, v6, v7);
    v9 = v8;
    v10 = *(a1 + 8);
    if (!*&v10)
    {
      goto LABEL_25;
    }

    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v13 = v8;
      if (v8 >= *&v10)
      {
        v13 = v8 % *&v10;
      }
    }

    else
    {
      v13 = (*&v10 - 1) & v8;
    }

    v14 = *(*a1 + 8 * v13);
    if (!v14 || (v15 = *v14) == 0)
    {
LABEL_25:
      operator new();
    }

    while (1)
    {
      v16 = v15[1];
      if (v16 == v9)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v16 >= *&v10)
        {
          v16 %= *&v10;
        }
      }

      else
      {
        v16 &= *&v10 - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_25;
      }

LABEL_24:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_25;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:nn200100](a1, v15 + 2, i + 2))
    {
      goto LABEL_24;
    }
  }
}

void __assign_helper_atomic_property__53(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v51 = v2;
    v52 = v3;
    *(a1 + 32) = *(a2 + 32);
    v5 = *(a2 + 16);
    v6 = *(a1 + 8);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }

      v8 = *(a1 + 16);
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      if (v8)
      {
        v9 = v5 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        while (1)
        {
          std::string::operator=((v8 + 2), (v5 + 2));
          if (v8 != v5)
          {
            v11 = v5[9];
            v12 = v11 / 0xAA;
            v13 = v5[6];
            v14 = (v13 + 8 * (v11 / 0xAA));
            if (v5[7] == v13)
            {
              v16 = 0;
              v25 = 0;
LABEL_19:
              v18 = 0;
              v20 = v8 + 10;
              goto LABEL_21;
            }

            v15 = v11 % 0xAA;
            v16 = (*(v13 + 8 * v12) + 24 * (v11 % 0xAA));
            v17 = v5[10] + v11;
            if ((*(v13 + 8 * (v17 / 0xAA)) + 24 * (v17 % 0xAA)) == v16)
            {
              v25 = *(v13 + 8 * v12) + 24 * v15;
              goto LABEL_19;
            }

            v18 = v17 % 0xAA - v15 + 170 * ((8 * (v17 / 0xAA) - 8 * v12) >> 3);
            v20 = v8 + 10;
            v19 = v8[10];
            if (v19 >= v18)
            {
              v25 = *(v13 + 8 * v12) + 24 * v15;
LABEL_21:
              v26 = v8[9];
              v27 = v8[6];
              v28 = (v27 + 8 * (v26 / 0xAA));
              if (v8[7] == v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = &(*v28)[v26 % 0xAA];
              }

              v49 = v14;
              v50 = v25;
              std::__deque_iterator<std::string,std::string*,std::string&,std::string**,long,170l>::operator+=[abi:nn200100](&v49, v18);
              v30 = v49;
              v31 = v50;
              v49 = v28;
              v50 = v29;
              std::__for_each_segment[abi:nn200100]<std::__deque_iterator<std::string,std::string const*,std::string const&,std::string const* const*,long,170l>,std::__copy_impl::_CopySegment<std::__deque_iterator<std::string,std::string const*,std::string const&,std::string const* const*,long,170l>,std::__deque_iterator<std::string,std::string*,std::string&,std::string**,long,170l>>>(v14, v16, v30, v31, &v49);
              v32 = v8[9];
              v33 = v8[10];
              v34 = v8[6];
              v35 = v8[7];
              v36 = (v34 + 8 * ((v32 + v33) / 0xAA));
              if (v35 == v34)
              {
                v37 = 0;
              }

              else
              {
                v37 = *v36 + 24 * ((v32 + v33) % 0xAA);
              }

              if (v37 != v50)
              {
                v38 = (v50 - *v49) >> 3;
                v39 = 170 * (v36 - v49) - 0x5555555555555555 * ((v37 - *v36) >> 3) + 0x5555555555555555 * v38;
                if (v39 >= 1)
                {
                  v40 = (v34 + 8 * (v32 / 0xAA));
                  if (v35 == v34)
                  {
                    v41 = 0;
                  }

                  else
                  {
                    v41 = &(*v40)[v32 % 0xAA];
                  }

                  if (v41 == v50)
                  {
                    v42 = 0;
                  }

                  else
                  {
                    v42 = 170 * (v49 - v40) - 0x5555555555555555 * v38 + 0x5555555555555555 * ((v41 - *v40) >> 3);
                  }

                  v49 = v40;
                  v50 = v41;
                  std::__deque_iterator<std::string,std::string*,std::string&,std::string**,long,170l>::operator+=[abi:nn200100](&v49, v42);
                  v43 = v50;
                  if (v50 != v37)
                  {
                    v44 = v49;
                    do
                    {
                      if (SHIBYTE(v43->__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v43->__r_.__value_.__l.__data_);
                      }

                      if (++v43 - *v44 == 4080)
                      {
                        v45 = v44[1];
                        ++v44;
                        v43 = v45;
                      }
                    }

                    while (v43 != v37);
                    v33 = *v20;
                  }

                  *v20 = v33 - v39;
                    ;
                  }
                }
              }

              goto LABEL_48;
            }

            v49 = (v13 + 8 * (v11 / 0xAA));
            v50 = v16;
            std::__deque_iterator<std::string,std::string*,std::string&,std::string**,long,170l>::operator+=[abi:nn200100](&v49, v19);
            v21 = v8[9];
            v22 = v8[6];
            v23 = (v22 + 8 * (v21 / 0xAA));
            if (v8[7] == v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = &(*v23)[v21 % 0xAA];
            }

            v46 = v49;
            v47 = v50;
            v49 = v23;
            v50 = v24;
            std::__for_each_segment[abi:nn200100]<std::__deque_iterator<std::string,std::string const*,std::string const&,std::string const* const*,long,170l>,std::__copy_impl::_CopySegment<std::__deque_iterator<std::string,std::string const*,std::string const&,std::string const* const*,long,170l>,std::__deque_iterator<std::string,std::string*,std::string&,std::string**,long,170l>>>(v14, v16, v46, v47, &v49);
            std::deque<std::string>::__append_with_size[abi:nn200100]<std::__deque_iterator<std::string,std::string const*,std::string const&,std::string const* const*,long,170l>>(v8 + 5, v46, v47, v18 - *v20);
          }

LABEL_48:
          v10 = *v8;
          std::__hash_table<std::__hash_value_type<std::string,std::stack<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::stack<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::stack<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::stack<std::string>>>>::__node_insert_multi(a1, v8);
          v5 = *v5;
          if (v10)
          {
            v48 = v5 == 0;
          }

          else
          {
            v48 = 1;
          }

          v8 = v10;
          if (v48)
          {
            goto LABEL_53;
          }
        }
      }

      v10 = v8;
LABEL_53:
      std::__hash_table<std::__hash_value_type<std::string,std::stack<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::stack<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::stack<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::stack<std::string>>>>::__deallocate_node(v10);
    }

    if (v5)
    {
      operator new();
    }
  }
}

uint64_t OTSVGDocumentCreate(std::mutex **a1, unint64_t a2, uint64_t a3)
{
  v6 = *a1;
  std::mutex::lock(*a1);
  v7 = *&(*a1)[1].__m_.__opaque[48];
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = a2;
      if (*&v7 <= a2)
      {
        v9 = a2 % *&v7;
      }
    }

    else
    {
      v9 = (*&v7 - 1) & a2;
    }

    v10 = *(*&(*a1)[1].__m_.__opaque[40] + 8 * v9);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = v11[1];
          if (v12 == a2)
          {
            if (v11[2] == a2)
            {
              if (v11[3])
              {
                operator new();
              }

              v15 = 0;
              std::mutex::unlock(v6);
              return v15;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v12 >= *&v7)
              {
                v12 %= *&v7;
              }
            }

            else
            {
              v12 &= *&v7 - 1;
            }

            if (v12 != v9)
            {
              break;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  std::mutex::unlock(v6);
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v13 = *a1;
  if (*(*a1)[1].__m_.__opaque <= a2)
  {
    return 0;
  }

  v14 = v13[1].__m_.__sig + 12 * a2;
  if (*&(*a1)[1].__m_.__opaque[16] + bswap32(*(v14 + 4)) + bswap32(*(v14 + 8)) > CFDataGetLength(*&v13[1].__m_.__opaque[8]))
  {
    return 0;
  }

  v17 = *MEMORY[0x277CBECE8];
  BytePtr = CFDataGetBytePtr(*&(*a1)[1].__m_.__opaque[8]);
  v19 = CFDataCreate(v17, &BytePtr[*&(*a1)[1].__m_.__opaque[16] + bswap32(*(v14 + 4))], bswap32(*(v14 + 8)));
  v15 = OTSVGDocumentCreateWithData(v19, *&(*a1)[1].__m_.__opaque[24], a3);
  v20 = *a1;
  std::mutex::lock(*a1);
  v21 = *a1;
  if (v15)
  {
    v22 = *(v15 + 8);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = *&v21[1].__m_.__opaque[48];
  if (!*&v23)
  {
    goto LABEL_45;
  }

  v24 = vcnt_s8(v23);
  v24.i16[0] = vaddlv_u8(v24);
  if (v24.u32[0] > 1uLL)
  {
    v25 = a2;
    if (*&v23 <= a2)
    {
      v25 = a2 % *&v23;
    }
  }

  else
  {
    v25 = (*&v23 + 0x7FFFFFFFFFFFFFFFLL) & a2;
  }

  v26 = *(*&v21[1].__m_.__opaque[40] + 8 * v25);
  if (!v26 || (v27 = *v26) == 0)
  {
LABEL_45:
    operator new();
  }

  while (1)
  {
    v28 = v27[1];
    if (v28 == a2)
    {
      break;
    }

    if (v24.u32[0] > 1uLL)
    {
      if (v28 >= *&v23)
      {
        v28 %= *&v23;
      }
    }

    else
    {
      v28 &= *&v23 - 1;
    }

    if (v28 != v25)
    {
      goto LABEL_45;
    }

LABEL_44:
    v27 = *v27;
    if (!v27)
    {
      goto LABEL_45;
    }
  }

  if (v27[2] != a2)
  {
    goto LABEL_44;
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  std::mutex::unlock(v20);
  if (v19)
  {
    CFRelease(v19);
  }

  return v15;
}

uint64_t OTSVGDocumentCreateWithData(SVG *a1, uint64_t a2, uint64_t a3)
{
  v72 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v5 = [[_OTSVGParserDelegate alloc] initWithUnitsPerEm:a2];
  [(_OTSVGParserDelegate *)v5 setRoot:&v35];
  cf = 0xAAAAAAAAAAAAAAAALL;
  SVG::unzipData(a1, &cf);
  if (cf)
  {
    a1 = cf;
  }

  v6 = [objc_alloc(MEMORY[0x277CCAE70]) initWithData:a1];
  [v6 setShouldProcessNamespaces:1];
  [v6 setShouldReportNamespacePrefixes:1];
  [v6 setDelegate:v5];
  [v6 parse];
  if (![(_OTSVGParserDelegate *)v5 errorOccurred])
  {
    v7 = v35;
    if (v35)
    {
      *v31 = 0u;
      *v32 = 0u;
      v33 = 0xAAAAAAAA3F800000;
      SVG::populateIdMapWithRealIds(v31, v35);
      SVG::populateIdMapWithFakeIds(v31, v7, 0);
      memset(v29, 0, sizeof(v29));
      v30 = 0xAAAAAAAA3F800000;
      SVG::populateReferenceMap(v29, v31, v35);
      *v26 = 0u;
      *v27 = 0u;
      v28 = 0xAAAAAAAA3F800000;
      SVG::Presentation::defaultPresentation(v61);
      SVG::Presentation::defaultPresentation(&v40);
      SVG::populateDirectlyInheritedPresentationMap(v26, v61, &v40, v35);
      if (v60 != -1)
      {
        v22[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v22[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v23[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        (v22[v60])(v18, &v59);
      }

      v60 = -1;
      if (v58 != -1)
      {
        v22[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        v22[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        v23[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        (v22[v58])(v18, &v57);
      }

      v58 = -1;
      if (v56 != -1)
      {
        v22[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v22[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v23[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        (v22[v56])(v18, &v55);
      }

      v56 = -1;
      if (v54 != -1)
      {
        v22[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        v22[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        v23[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        (v22[v54])(v18, &v53);
      }

      v54 = -1;
      if (v49 != -1)
      {
        v22[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v22[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v23[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        (v22[v49])(v18, v48);
      }

      if (v71 != -1)
      {
        v40 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v41 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v42 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        (*(&v40 + v71))(v22, v70);
      }

      v71 = -1;
      if (v69 != -1)
      {
        v40 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        v41 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        v42 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        (*(&v40 + v69))(v22, v68);
      }

      v69 = -1;
      if (v67 != -1)
      {
        v40 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v41 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v42 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        (*(&v40 + v67))(v22, v66);
      }

      v67 = -1;
      if (v65 != -1)
      {
        v40 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        v41 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        v42 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        (*(&v40 + v65))(v22, v64);
      }

      v65 = -1;
      if (v63 != -1)
      {
        v40 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v41 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v42 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        (*(&v40 + v63))(v22, v62);
      }

      *v22 = 0u;
      *v23 = 0u;
      v24 = 1065353216;
      v25 = -1431655766;
      SVG::populateGradientMap(v22, v29, v26, a3, v35);
      *v18 = 0u;
      *v19 = 0u;
      v20 = 1065353216;
      v21 = -1431655766;
      *__p = 0u;
      *v15 = 0u;
      v16 = 1065353216;
      v17 = -1431655766;
      SVG::Presentation::defaultPresentation(v61);
      v8 = v35;
      v37 = a3;
      memset(v36, 170, sizeof(v36));
      SVG::analyzeDependencies(v29, v26, v61, v35, v36);
      v10 = v36[0];
      v9 = v36[1];
      if (v36[0] != v36[1])
      {
        do
        {
          v40 = &v37;
          v41 = v29;
          v42 = v22;
          v43 = v18;
          v44 = __p;
          v45 = v26;
          v46 = v8;
          v47 = &v37;
          v48[0] = v29;
          v48[1] = v22;
          v49 = v18;
          v50 = __p;
          v51 = v26;
          v52 = v8;
          v11 = v10[2];
          if (v11 == -1)
          {
            std::__throw_bad_variant_access[abi:nn200100]();
          }

          v38 = &v40;
          v39[0] = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::populatePatternAndMaskMaps(std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> &,std::unordered_map<SVG::MaskElement const*,SVG::Document::MaskData> &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,__CFArray const*,SVG::Presentation const&,SVG::SVGElement const&)::$_0,SVG::populatePatternAndMaskMaps(std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> &,std::unordered_map<SVG::MaskElement const*,SVG::Document::MaskData> &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,__CFArray const*,SVG::Presentation const&,SVG::SVGElement const&)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&>;
          v39[1] = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::populatePatternAndMaskMaps(std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> &,std::unordered_map<SVG::MaskElement const*,SVG::Document::MaskData> &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,__CFArray const*,SVG::Presentation const&,SVG::SVGElement const&)::$_0,SVG::populatePatternAndMaskMaps(std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> &,std::unordered_map<SVG::MaskElement const*,SVG::Document::MaskData> &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,__CFArray const*,SVG::Presentation const&,SVG::SVGElement const&)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&>;
          (v39[v11])(&v38, v10);
          v10 += 4;
        }

        while (v10 != v9);
        v10 = v36[0];
      }

      if (v10)
      {
        v36[1] = v10;
        operator delete(v10);
      }

      if (v71 != -1)
      {
        v40 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v41 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v42 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        (*(&v40 + v71))(v36, v70);
      }

      v71 = -1;
      if (v69 != -1)
      {
        v40 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        v41 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        v42 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        (*(&v40 + v69))(v36, v68);
      }

      v69 = -1;
      if (v67 != -1)
      {
        v40 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v41 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v42 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        (*(&v40 + v67))(v36, v66);
      }

      v67 = -1;
      if (v65 != -1)
      {
        v40 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        v41 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        v42 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        (*(&v40 + v65))(v36, v64);
      }

      v65 = -1;
      if (v63 != -1)
      {
        v40 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v41 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v42 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        (*(&v40 + v63))(v36, v62);
      }

      operator new();
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v12 = v35;
  v35 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return 0;
}

void SVG::populateReferenceMap(void *a1, void *a2, void *a3)
{
  if (v6)
  {
    v7 = v6;
    if (*(v6 + 20) == 2 && *(v6 + 72) == 1)
    {
      v8 = v6[8];
      v32 = v8;
      if (v8)
      {
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *__p = v9;
        v31 = v9;
        SVG::extractValidFragment(__p, v8);
        if (BYTE8(v31) == 1 && std::__hash_table<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>>>::find<std::string>(a2, __p))
        {
          std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::__emplace_unique_key_args<__CFURL const*,__CFURL const* const&,std::reference_wrapper<SVG::Element> const&>(a1, v8);
        }

        if (BYTE8(v31) == 1 && SBYTE7(v31) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    if (*(v7 + 66) == 2 && *(v7 + 256) == 1)
    {
      v10 = v7[31];
      v32 = v10;
      if (v10)
      {
        *&v11 = 0xAAAAAAAAAAAAAAAALL;
        *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *__p = v11;
        v31 = v11;
        SVG::extractValidFragment(__p, v10);
        if (BYTE8(v31) == 1 && std::__hash_table<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>>>::find<std::string>(a2, __p))
        {
          std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::__emplace_unique_key_args<__CFURL const*,__CFURL const* const&,std::reference_wrapper<SVG::Element> const&>(a1, v10);
        }

        if (BYTE8(v31) == 1 && SBYTE7(v31) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    if (*(v7 + 50) == 2 && *(v7 + 48) == 3)
    {
      v13 = v7[20];
      if (v13)
      {
        *&v14 = 0xAAAAAAAAAAAAAAAALL;
        *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *__p = v14;
        v31 = v14;
        SVG::extractValidFragment(__p, v13);
        if (BYTE8(v31) == 1 && std::__hash_table<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>>>::find<std::string>(a2, __p))
        {
          v32 = v7[20];
          std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::__emplace_unique_key_args<__CFURL const*,__CFURL const* const&,std::reference_wrapper<SVG::Element> const&>(a1, v32);
        }

        if (BYTE8(v31) == 1 && SBYTE7(v31) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    if (*(v7 + 100) == 2 && *(v7 + 98) == 3)
    {
      v16 = v7[45];
      if (v16)
      {
        *&v17 = 0xAAAAAAAAAAAAAAAALL;
        *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *__p = v17;
        v31 = v17;
        SVG::extractValidFragment(__p, v16);
        if (BYTE8(v31) == 1 && std::__hash_table<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>>>::find<std::string>(a2, __p))
        {
          v32 = v7[45];
          std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::__emplace_unique_key_args<__CFURL const*,__CFURL const* const&,std::reference_wrapper<SVG::Element> const&>(a1, v32);
        }

        if (BYTE8(v31) == 1 && SBYTE7(v31) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  if (v18)
  {
    v19 = *(v18 + 94);
    v32 = v19;
    if (v19)
    {
      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__p = v20;
      v31 = v20;
      SVG::extractValidFragment(__p, v19);
      if (BYTE8(v31) == 1 && std::__hash_table<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>>>::find<std::string>(a2, __p))
      {
        std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::__emplace_unique_key_args<__CFURL const*,__CFURL const* const&,std::reference_wrapper<SVG::Element> const&>(a1, v19);
      }

      if (BYTE8(v31) == 1 && SBYTE7(v31) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (v21)
  {
    v22 = *(v21 + 80);
    v32 = v22;
    if (v22)
    {
      *&v23 = 0xAAAAAAAAAAAAAAAALL;
      *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__p = v23;
      v31 = v23;
      SVG::extractValidFragment(__p, v22);
      if (BYTE8(v31) == 1 && std::__hash_table<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>>>::find<std::string>(a2, __p))
      {
        std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::__emplace_unique_key_args<__CFURL const*,__CFURL const* const&,std::reference_wrapper<SVG::Element> const&>(a1, v22);
      }

      if (BYTE8(v31) == 1 && SBYTE7(v31) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (v24)
  {
    v25 = *(v24 + 108);
    v32 = v25;
    if (v25)
    {
      *&v26 = 0xAAAAAAAAAAAAAAAALL;
      *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__p = v26;
      v31 = v26;
      SVG::extractValidFragment(__p, v25);
      if (BYTE8(v31) == 1 && std::__hash_table<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>>>::find<std::string>(a2, __p))
      {
        std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::__emplace_unique_key_args<__CFURL const*,__CFURL const* const&,std::reference_wrapper<SVG::Element> const&>(a1, v25);
      }

      if (BYTE8(v31) == 1 && SBYTE7(v31) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v28 = a3[4];
  v27 = a3[5];
  while (v28 != v27)
  {
    v29 = *v28++;
    SVG::populateReferenceMap(a1, a2, v29);
  }
}

void SVG::populateDirectlyInheritedPresentationMap(void *a1, const SVG::Presentation *a2, const SVG::Presentation *a3, unint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!v8)
  {
    v17 = *(a4 + 32);
    v16 = *(a4 + 40);
    while (v17 != v16)
    {
      v18 = *v17++;
      SVG::populateDirectlyInheritedPresentationMap(a1, a2, a3, v18);
    }

    return;
  }

  v9 = v8;
  memcpy(__dst, &unk_25D1D6F00, sizeof(__dst));
  SVG::Presentation::inherit(v9, a2, a3, __dst);
  v10 = 0x9DDFEA08EB382D69 * (((((a4 >> 3) & 0x3FFFFFF) << 6) | 8) ^ HIDWORD(a4));
  v11 = 0x9DDFEA08EB382D69 * (HIDWORD(a4) ^ (v10 >> 47) ^ v10);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
  v13 = a1[1];
  if (!*&v13)
  {
    goto LABEL_22;
  }

  v14 = vcnt_s8(v13);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
    if (v12 >= *&v13)
    {
      v15 = v12 % *&v13;
    }
  }

  else
  {
    v15 = (*&v13 - 1) & v12;
  }

  v19 = *(*a1 + 8 * v15);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v21 = v20[1];
    if (v21 == v12)
    {
      break;
    }

    if (v14.u32[0] > 1uLL)
    {
      if (v21 >= *&v13)
      {
        v21 %= *&v13;
      }
    }

    else
    {
      v21 &= *&v13 - 1;
    }

    if (v21 != v15)
    {
      goto LABEL_22;
    }

LABEL_21:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_22;
    }
  }

  if (v20[2] != a4)
  {
    goto LABEL_21;
  }

  v23 = *(a4 + 32);
  v22 = *(a4 + 40);
  while (v23 != v22)
  {
    v24 = *v23++;
    SVG::populateDirectlyInheritedPresentationMap(a1, __dst, a3, v24);
  }

  if (LODWORD(__dst[28]) != -1)
  {
    v26 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v27 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v28 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v26 + LODWORD(__dst[28])))(&v25, &__dst[26]);
  }

  LODWORD(__dst[28]) = -1;
  if (LODWORD(__dst[25]) != -1)
  {
    v26 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v27 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v28 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v26 + LODWORD(__dst[25])))(&v25, &__dst[22]);
  }

  LODWORD(__dst[25]) = -1;
  if (DWORD2(__dst[16]) != -1)
  {
    v26 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v27 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v28 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v26 + DWORD2(__dst[16])))(&v25, &__dst[15] + 8);
  }

  DWORD2(__dst[16]) = -1;
  if (DWORD2(__dst[12]) != -1)
  {
    v26 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v27 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v28 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v26 + DWORD2(__dst[12])))(&v25, &__dst[9] + 8);
  }

  DWORD2(__dst[12]) = -1;
  if (LODWORD(__dst[5]) != -1)
  {
    v26 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v27 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v28 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v26 + LODWORD(__dst[5])))(&v25, &__dst[4]);
  }
}

void *SVG::populateGradientMap(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (result)
  {
    SVG::GradientElement::getGradient(result, a2, a3);
  }

  v12 = a5[4];
  v11 = a5[5];
  while (v12 != v11)
  {
    v13 = *v12++;
    result = SVG::populateGradientMap(a1, a2, a3, a4, v13);
  }

  return result;
}

void OTSVGDocumentEnumerateIDs(uint64_t a1, void *a2)
{
  v9 = a2;
  if (a1)
  {
    v3 = *(*a1 + 112);
    if (v3)
    {
      v4 = *MEMORY[0x277CBECE8];
      do
      {
        v5 = *(v3 + 39);
        if (v5 >= 0)
        {
          v6 = (v3 + 2);
        }

        else
        {
          v6 = v3[2];
        }

        if (v5 >= 0)
        {
          v7 = *(v3 + 39);
        }

        else
        {
          v7 = v3[3];
        }

        v8 = CFStringCreateWithBytes(v4, v6, v7, 0x8000100u, 0);
        v9[2](v9, v8);
        if (v8)
        {
          CFRelease(v8);
        }

        v3 = *v3;
      }

      while (v3);
    }
  }
}

uint64_t OTSVGDocumentRelease(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v1);
    }

    JUMPOUT(0x25F894240);
  }

  return result;
}

uint64_t std::deque<std::string>::~deque[abi:nn200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0xAA];
    v7 = *v6;
    v8 = *v6 + 24 * (v5 % 0xAA);
    v9 = v3[(*(a1 + 40) + v5) / 0xAA] + 24 * ((*(a1 + 40) + v5) % 0xAA);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
          v7 = *v6;
        }

        v8 += 24;
        if (v8 - v7 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 85;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_19;
    }

    v13 = 170;
  }

  *(a1 + 32) = v13;
LABEL_19:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::reference_wrapper<SVG::Element>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::Recorder::State *>>(a2);
  }

  std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
}

uint64_t SVG::populateIdMapWithRealIds(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 31);
  if (v4 >= 0)
  {
    v5 = *(a2 + 31);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  if (v5)
  {
    if (v4 >= 0)
    {
      v6 = (a2 + 8);
    }

    else
    {
      v6 = *(a2 + 8);
    }

    v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v19, v6, v5);
    v8 = v7;
    v9 = v3[1];
    if (v9)
    {
      v10 = vcnt_s8(v9);
      v10.i16[0] = vaddlv_u8(v10);
      v11 = v10.u32[0];
      if (v10.u32[0] > 1uLL)
      {
        v12 = v7;
        if (v7 >= *&v9)
        {
          v12 = v7 % *&v9;
        }
      }

      else
      {
        v12 = (*&v9 - 1) & v7;
      }

      v13 = *(*v3 + 8 * v12);
      if (v13)
      {
        for (i = *v13; i; i = *i)
        {
          v15 = i[1];
          if (v15 == v8)
          {
            result = std::equal_to<std::string>::operator()[abi:nn200100](v3, i + 2, (a2 + 8));
            if (result)
            {
              goto LABEL_26;
            }
          }

          else
          {
            if (v11 > 1)
            {
              if (v15 >= *&v9)
              {
                v15 %= *&v9;
              }
            }

            else
            {
              v15 &= *&v9 - 1;
            }

            if (v15 != v12)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

LABEL_26:
  v17 = *(a2 + 32);
  v16 = *(a2 + 40);
  while (v17 != v16)
  {
    v18 = *v17++;
    result = SVG::populateIdMapWithRealIds(v3, v18);
  }

  return result;
}

uint64_t SVG::populateIdMapWithFakeIds(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 31);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 16);
  }

  if (!v5)
  {
    v28 = a2;
    v40 = 0uLL;
    v41 = 0;
    v6 = *MEMORY[0x277D82828];
    v7 = *(MEMORY[0x277D82828] + 24);
    while (1)
    {
      v39 = 0xAAAAAAAAAAAAAAAALL;
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v38[7] = v8;
      v38[8] = v8;
      v38[5] = v8;
      v38[6] = v8;
      v38[3] = v8;
      v38[4] = v8;
      v38[1] = v8;
      v38[2] = v8;
      v38[0] = v8;
      v36 = v8;
      v37 = v8;
      *__src = v8;
      *__p = v8;
      v32 = v8;
      v33 = v8;
      v31 = v8;
      std::ostringstream::basic_ostringstream[abi:nn200100](&v31);
      v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v31, "element", 7);
      MEMORY[0x25F894160](v9, a3);
      if ((BYTE8(v37) & 0x10) != 0)
      {
        break;
      }

      if ((BYTE8(v37) & 8) != 0)
      {
        v12 = *(&v32 + 1);
        v11 = *(&v33 + 1);
LABEL_12:
        v10 = v11 - v12;
        if ((v11 - v12) >= 0x7FFFFFFFFFFFFFF8)
        {
          std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
        }

        if (v10 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v30) = v11 - v12;
        if (v10)
        {
          memmove(&__dst, v12, v10);
        }

        goto LABEL_18;
      }

      v10 = 0;
      HIBYTE(v30) = 0;
LABEL_18:
      *(&__dst + v10) = 0;
      if (SHIBYTE(v41) < 0)
      {
        operator delete(v40);
      }

      v40 = __dst;
      v41 = v30;
      *&v31 = v6;
      *(&v31 + *(v6 - 24)) = v7;
      *(&v31 + 1) = MEMORY[0x277D82878] + 16;
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[1]);
      }

      *(&v31 + 1) = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v32);
      std::ostream::~ostream();
      MEMORY[0x25F894220](v38);
      a3 = (a3 + 1);
      if (!std::__hash_table<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>>>::find<std::string>(a1, &v40))
      {
        if (v41 >= 0)
        {
          v13 = &v40;
        }

        else
        {
          v13 = v40;
        }

        if (v41 >= 0)
        {
          v14 = HIBYTE(v41);
        }

        else
        {
          v14 = *(&v40 + 1);
        }

        v15 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v31, v13, v14);
        v16 = v15;
        v17 = a1[1];
        if (!*&v17)
        {
          goto LABEL_46;
        }

        v18 = vcnt_s8(v17);
        v18.i16[0] = vaddlv_u8(v18);
        v19 = v18.u32[0];
        if (v18.u32[0] > 1uLL)
        {
          v20 = v15;
          if (v15 >= *&v17)
          {
            v20 = v15 % *&v17;
          }
        }

        else
        {
          v20 = (*&v17 - 1) & v15;
        }

        v21 = *(*a1 + 8 * v20);
        if (!v21 || (v22 = *v21) == 0)
        {
LABEL_46:
          operator new();
        }

        while (1)
        {
          v23 = v22[1];
          if (v23 == v16)
          {
            if (std::equal_to<std::string>::operator()[abi:nn200100](a1, v22 + 2, &v40))
            {
              if (SHIBYTE(v41) < 0)
              {
                operator delete(v40);
              }

              a2 = v28;
              goto LABEL_50;
            }
          }

          else
          {
            if (v19 > 1)
            {
              if (v23 >= *&v17)
              {
                v23 %= *&v17;
              }
            }

            else
            {
              v23 &= *&v17 - 1;
            }

            if (v23 != v20)
            {
              goto LABEL_46;
            }
          }

          v22 = *v22;
          if (!v22)
          {
            goto LABEL_46;
          }
        }
      }
    }

    v11 = v37;
    if (v37 < __src[1])
    {
      *&v37 = __src[1];
      v11 = __src[1];
    }

    v12 = __src[0];
    goto LABEL_12;
  }

LABEL_50:
  v24 = *(a2 + 32);
  v25 = *(a2 + 40);
  while (v24 != v25)
  {
    v26 = *v24++;
    a3 = SVG::populateIdMapWithFakeIds(a1, v26, a3);
  }

  return a3;
}

void SVG::extractValidFragment(SVG *this, CFURLRef anURL)
{
  if (!CFURLCanBeDecomposed(anURL))
  {
    goto LABEL_19;
  }

  v4 = CFURLCopyScheme(anURL);
  v5 = CFURLCopyNetLocation(anURL);
  v6 = CFURLCopyPath(anURL);
  if (v4 | v5)
  {
    *this = 0;
    *(this + 24) = 0;
    if (!v6)
    {
      if (!v5)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

LABEL_12:
    CFRelease(v6);
    if (!v5)
    {
LABEL_6:
      if (!v4)
      {
        return;
      }

      goto LABEL_7;
    }

LABEL_5:
    CFRelease(v5);
    goto LABEL_6;
  }

  if (v6)
  {
    *this = 0;
    *(this + 24) = 0;
    goto LABEL_12;
  }

  v7 = CFURLCopyFragment(anURL, &stru_286EBAEE8);
  if (!v7)
  {
LABEL_19:
    *this = 0;
    *(this + 24) = 0;
    return;
  }

  v4 = v7;
  memset(__p, 170, sizeof(__p));
  SVG::convertString(__p, &v7->isa);
  v8 = HIBYTE(__p[2]);
  v9 = SHIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) < 0)
  {
    v8 = __p[1];
  }

  if (v8)
  {
    *this = *__p;
    *(this + 2) = __p[2];
    *(this + 24) = 1;
  }

  else
  {
    *this = 0;
    *(this + 24) = 0;
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_7:

  CFRelease(v4);
}

void *std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::__emplace_unique_key_args<__CFURL const*,__CFURL const* const&,std::reference_wrapper<SVG::Element> const&>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::populatePatternAndMaskMaps(std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> &,std::unordered_map<SVG::MaskElement const*,SVG::Document::MaskData> &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,__CFArray const*,SVG::Presentation const&,SVG::SVGElement const&)::$_0,SVG::populatePatternAndMaskMaps(std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> &,std::unordered_map<SVG::MaskElement const*,SVG::Document::MaskData> &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,__CFArray const*,SVG::Presentation const&,SVG::SVGElement const&)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&>(uint64_t *a1, uint64_t *a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  memcpy(__dst, &unk_25D1D6F00, sizeof(__dst));
  SVG::Presentation::defaultPresentation(__dst);
  memcpy(v30, &unk_25D1D7140, 0x1A8uLL);
  SVG::Recorder::getInitialState(__dst, v68);
  SVG::Recorder::Recorder(v30, v68, **v2, 1u, 1.0);
  if (*&v68[112] != -1)
  {
    *&v35 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    *(&v35 + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    *&v36 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    (*(&v35 + *&v68[112]))(v18, &v68[8]);
  }

  memset(v29, 170, sizeof(v29));
  SVG::hrefChain<SVG::PatternElement>(v3, *(v2 + 8), v29);
  memset(__p, 0, sizeof(__p));
  v5 = v29[0];
  v4 = v29[1];
  if (v29[0] != v29[1])
  {
    v6 = v29[0];
    while (1)
    {
      v7 = *(*v6 + 40);
      v8 = *(*v6 + 32);
      if (v8 != v7)
      {
        break;
      }

      v6 += 8;
      if (v6 == v29[1])
      {
        goto LABEL_10;
      }
    }

    do
    {
      v9 = *v8++;
      *v68 = v9;
      std::vector<std::reference_wrapper<SVG::PatternElement const>>::push_back[abi:nn200100](__p, v68);
    }

    while (v8 != v7);
    v5 = v29[0];
    v4 = v29[1];
  }

LABEL_10:
  memcpy(v68, &unk_25D1D6F00, sizeof(v68));
  *&v68[8] = 0;
  *&v68[48] = 0;
  *&v68[64] = 0;
  *&v68[80] = 0;
  *&v68[88] = 0;
  *&v68[100] = 0;
  *&v68[200] = 0;
  *&v68[208] = 0;
  *&v68[216] = 0;
  *&v68[248] = 0;
  *&v68[264] = 0;
  *&v68[272] = 0;
  *&v68[280] = 0;
  *&v68[308] = 0;
  *&v68[320] = 0;
  *&v68[328] = 0;
  *&v68[336] = 0;
  *&v68[352] = 0;
  *&v68[400] = 0;
  *&v68[416] = 0;
  *&v68[448] = 0;
  *&v68[464] = 0;
  *&v68[480] = 0;
  *&v68[512] = 0;
  *&v68[520] = 0;
  *&v68[528] = 0;
  *&v68[544] = 0;
  *&v68[560] = 0;
  v69 = 0;
  memset(&v68[112], 0, 28);
  *&v68[152] = 0;
  *&v68[232] = 0;
  *&v68[224] = 0;
  *&v68[288] = 0;
  *&v68[296] = 0;
  memset(&v68[488], 0, 20);
  if (v4 != v5)
  {
    do
    {
      v10 = *(v4 - 1);
      v4 -= 8;
      SVG::Presentation::specifiedInherit((v10 + 64), v68, &v35);
      *v68 = v35;
      *&v68[16] = v36;
      *&v68[32] = v37;
      *&v68[48] = v38;
      std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>,(std::__variant_detail::_Trait)1>>(&v68[64], v39);
      *&v68[88] = v41;
      *&v68[104] = v42;
      *&v68[120] = v43;
      *&v68[136] = v44;
      std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1>>(&v68[152], v45);
      *&v68[208] = v47;
      *&v68[224] = v48;
      std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>,(std::__variant_detail::_Trait)1>>(&v68[248], v49);
      *&v68[304] = v53;
      *&v68[320] = v54;
      *&v68[336] = v55;
      *&v68[272] = v51;
      *&v68[288] = v52;
      std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1>>(&v68[352], v56);
      std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>,(std::__variant_detail::_Trait)1>>(&v68[416], v58);
      *&v68[520] = v64;
      *&v68[536] = v65;
      *&v68[552] = v66;
      v69 = v67;
      *&v68[456] = v60;
      *&v68[472] = v61;
      *&v68[488] = v62;
      *&v68[504] = v63;
      if (v59 != -1)
      {
        *v18 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        *&v18[8] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        *&v18[16] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        (*&v18[8 * v59])(&v32, v58);
      }

      v59 = -1;
      if (v57 != -1)
      {
        *v18 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        *&v18[8] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        *&v18[16] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        (*&v18[8 * v57])(&v32, v56);
      }

      v57 = -1;
      if (v50 != -1)
      {
        *v18 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        *&v18[8] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        *&v18[16] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        (*&v18[8 * v50])(&v32, v49);
      }

      v50 = -1;
      if (v46 != -1)
      {
        *v18 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        *&v18[8] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        *&v18[16] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        (*&v18[8 * v46])(&v32, v45);
      }

      v46 = -1;
      if (v40 != -1)
      {
        *v18 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        *&v18[8] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        *&v18[16] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        (*&v18[8 * v40])(&v32, v39);
      }
    }

    while (v4 != v29[0]);
  }

  *&v18[48] = unk_25D1D7318;
  memset(v18, 170, 48);
  v11 = *(v2 + 8);
  v13 = *(v2 + 32);
  v12 = *(v2 + 40);
  v14 = *(v2 + 48);
  v15 = *(v2 + 16);
  *&v18[56] = 1065353216;
  memset(&v18[24], 0, 32);
  *&v18[8] = v11;
  *&v18[16] = __dst;
  *v18 = &unk_286EB9610;
  v19 = v30;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v23 = v15;
  v24 = v13;
  v25 = v12;
  v16 = *(v14 + 688);
  v26 = *(v14 + 672);
  v27 = v16;
  *&v35 = *(v3 + 56);
  v17 = std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::find<__CFURL const*>(v12, &v35);
  SVG::Presentation::inherit(v68, (v17 + 3), __dst, &v35);
  SVG::RecordBase::operator()(v18, __p, &v35);
  if (v59 != -1)
  {
    v32 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v33 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v34 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v32 + v59))(&v31, v58);
  }

  v59 = -1;
  if (v57 != -1)
  {
    v32 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v33 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v34 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v32 + v57))(&v31, v56);
  }

  v57 = -1;
  if (v50 != -1)
  {
    v32 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v33 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v34 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v32 + v50))(&v31, v49);
  }

  v50 = -1;
  if (v46 != -1)
  {
    v32 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v33 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v34 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v32 + v46))(&v31, v45);
  }

  v46 = -1;
  if (v40 != -1)
  {
    v32 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v33 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v34 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v32 + v40))(&v31, v39);
  }

  SVG::Recorder::takeRecording(v30, &v35);
  operator new();
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::populatePatternAndMaskMaps(std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> &,std::unordered_map<SVG::MaskElement const*,SVG::Document::MaskData> &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,__CFArray const*,SVG::Presentation const&,SVG::SVGElement const&)::$_0,SVG::populatePatternAndMaskMaps(std::unordered_map<SVG::PatternElement const*,SVG::Document::PatternData> &,std::unordered_map<SVG::MaskElement const*,SVG::Document::MaskData> &,std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::GradientElement const*,SVG::CF<CGGradient *>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,__CFArray const*,SVG::Presentation const&,SVG::SVGElement const&)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&>(uint64_t *a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  memcpy(__dst, &unk_25D1D6F00, sizeof(__dst));
  SVG::Presentation::defaultPresentation(__dst);
  memcpy(v24, &unk_25D1D7140, 0x1A8uLL);
  SVG::Recorder::getInitialState(__dst, &v29);
  SVG::Recorder::Recorder(v24, &v29, **(v2 + 56), 1u, 1.0);
  if (v32 != -1)
  {
    *v14 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    *&v14[8] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    *&v14[16] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    (*&v14[8 * v32])(&v26, &v29 + 8);
  }

  memset(v14, 170, 48);
  *&v14[48] = unk_25D1D7318;
  v5 = *(v2 + 88);
  v4 = *(v2 + 96);
  v6 = *(v2 + 104);
  *&v14[8] = *(v2 + 64);
  *&v14[16] = __dst;
  memset(&v14[24], 0, 32);
  *&v14[56] = 1065353216;
  *v14 = &unk_286EB9610;
  v15 = v24;
  v7 = *(v2 + 72);
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v19 = v7;
  v20 = v5;
  v21 = v4;
  v8 = *(v6 + 688);
  v22 = *(v6 + 672);
  v23 = v8;
  memset(__p, 0, sizeof(__p));
  v9 = v3[4];
  v10 = v3[5];
  if (v9 != v10)
  {
    do
    {
      v11 = *v9++;
      *&v29 = v11;
      std::vector<std::reference_wrapper<SVG::PatternElement const>>::push_back[abi:nn200100](__p, &v29);
    }

    while (v9 != v10);
    v4 = *(v2 + 96);
  }

  *&v29 = v3[7];
  v12 = std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::find<__CFURL const*>(v4, &v29);
  SVG::Presentation::inherit((v3 + 8), (v12 + 3), __dst, &v29);
  SVG::RecordBase::operator()(v14, __p, &v29);
  if (v40 != -1)
  {
    v26 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v27 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v28 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v26 + v40))(&v25, &v39);
  }

  v40 = -1;
  if (v38 != -1)
  {
    v26 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v27 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v28 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v26 + v38))(&v25, &v37);
  }

  v38 = -1;
  if (v36 != -1)
  {
    v26 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v27 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v28 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v26 + v36))(&v25, &v35);
  }

  v36 = -1;
  if (v34 != -1)
  {
    v26 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v27 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v28 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v26 + v34))(&v25, &v33);
  }

  v34 = -1;
  if (v31 != -1)
  {
    v26 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v27 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v28 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v26 + v31))(&v25, &v30);
  }

  SVG::Recorder::takeRecording(v24, &v29);
  operator new();
}

void std::__shared_ptr_emplace<SVG::Recording>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286EB92C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F894240);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::stack<std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::stack<std::string>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::stack<std::string>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::stack<std::string>>::pair[abi:nn200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  *&this[1].__r_.__value_.__l.__data_ = 0u;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  *&this[2].__r_.__value_.__r.__words[1] = 0u;
  v5 = *(a2 + 7);
  v6 = v5 / 0xAA;
  v7 = *(a2 + 4);
  v8 = (v7 + 8 * (v5 / 0xAA));
  if (*(a2 + 5) == v7)
  {
    v10 = 0;
    goto LABEL_8;
  }

  v9 = v5 % 0xAA;
  v10 = (*(v7 + 8 * v6) + 24 * (v5 % 0xAA));
  v11 = *(a2 + 8) + v5;
  v12 = v11 / 0xAA;
  v13 = v11 % 0xAA;
  if ((*(v7 + 8 * v12) + 24 * v13) == v10)
  {
LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  v14 = v13 - v9 + 170 * ((8 * v12 - 8 * v6) >> 3);
LABEL_9:
  std::deque<std::string>::__append_with_size[abi:nn200100]<std::__deque_iterator<std::string,std::string const*,std::string const&,std::string const* const*,long,170l>>(this[1].__r_.__value_.__r.__words, v8, v10, v14);
  return this;
}

void std::deque<std::string>::__append_with_size[abi:nn200100]<std::__deque_iterator<std::string,std::string const*,std::string const&,std::string const* const*,long,170l>>(void *a1, void *a2, __int128 *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  v10 = (v9 - v8) >> 3;
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = 170 * v10 - 1;
  }

  v13 = a1[4];
  v12 = a1[5];
  v14 = v12 + v13;
  v15 = v11 - (v12 + v13);
  v16 = a4 >= v15;
  v17 = a4 - v15;
  if (v17 != 0 && v16)
  {
    if (v9 == v8)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = v17;
    }

    if (v18 % 0xAA)
    {
      v19 = v18 / 0xAA + 1;
    }

    else
    {
      v19 = v18 / 0xAA;
    }

    if (v19 >= v13 / 0xAA)
    {
      v20 = v13 / 0xAA;
    }

    else
    {
      v20 = v19;
    }

    if (v19 <= v13 / 0xAA)
    {
      for (a1[4] = v13 - 170 * v20; v20; --v20)
      {
        v26 = a1[1];
        v38 = *v26;
        a1[1] = v26 + 1;
        std::__split_buffer<SVG::Recorder::State *>::emplace_back<SVG::Recorder::State *&>(a1, &v38);
      }
    }

    else
    {
      v21 = v19 - v20;
      v22 = a1[3] - *a1;
      if (v19 - v20 > (v22 >> 3) - v10)
      {
        v23 = v22 >> 2;
        if (v23 <= v21 + v10)
        {
          v24 = v21 + v10;
        }

        else
        {
          v24 = v23;
        }

        v25 = v10 - v20;
        v41 = a1;
        if (v24)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::Recorder::State *>>(v24);
        }

        v38 = 0;
        v39 = 8 * v25;
        v40 = 8 * v25;
        operator new();
      }

      if (v21)
      {
        if (a1[3] != a1[2])
        {
          operator new();
        }

        operator new();
      }

      for (a1[4] = v13 - 170 * v20; v20; --v20)
      {
        v27 = a1[1];
        v38 = *v27;
        a1[1] = v27 + 1;
        std::__split_buffer<SVG::Recorder::State *>::emplace_back<SVG::Recorder::State *&>(a1, &v38);
      }
    }

    v12 = a1[5];
    v8 = a1[1];
    v9 = a1[2];
    v14 = a1[4] + v12;
  }

  v28 = (v8 + 8 * (v14 / 0xAA));
  if (v9 == v8)
  {
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v29 = *v28 + 24 * (v14 % 0xAA);
    v30 = v29;
  }

  v38 = (v8 + 8 * (v14 / 0xAA));
  v39 = v30;
  std::__deque_iterator<std::string,std::string*,std::string&,std::string**,long,170l>::operator+=[abi:nn200100](&v38, a4);
  v31 = v39;
  if (v29 != v39)
  {
    v32 = v38;
    do
    {
      if (v28 == v32)
      {
        v33 = v31;
      }

      else
      {
        v33 = *v28 + 4080;
      }

      if (v29 == v33)
      {
        v33 = v29;
      }

      else
      {
        v34 = v29;
        do
        {
          if (*(a3 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(v34, *a3, *(a3 + 1));
          }

          else
          {
            v35 = *a3;
            v34->__r_.__value_.__r.__words[2] = *(a3 + 2);
            *&v34->__r_.__value_.__l.__data_ = v35;
          }

          a3 = (a3 + 24);
          if ((a3 - *a2) == 4080)
          {
            v36 = a2[1];
            ++a2;
            a3 = v36;
          }

          ++v34;
        }

        while (v34 != v33);
        v12 = a1[5];
      }

      v12 -= 0x5555555555555555 * ((v33 - v29) >> 3);
      a1[5] = v12;
      if (v28 == v32)
      {
        break;
      }

      v37 = v28[1];
      ++v28;
      v29 = v37;
    }

    while (v37 != v31);
  }
}

const void **std::__split_buffer<std::string *>::emplace_front<std::string *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::Recorder::State *>>(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__deque_iterator<std::string,std::string*,std::string&,std::string**,long,170l>::operator+=[abi:nn200100](void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x5555555555555555 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 169 - v3;
      v6 = &v2[-(v5 / 0xAA)];
      *result = v6;
      v4 = *v6 + 24 * (170 * (v5 / 0xAA) - v5) + 4056;
    }

    else
    {
      *result = &v2[v3 / 0xAA];
      v4 = v2[v3 / 0xAA] + 24 * (v3 % 0xAA);
    }

    result[1] = v4;
  }

  return result;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::stack<std::string>>,0>(uint64_t a1)
{
  std::deque<std::string>::~deque[abi:nn200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::stack<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::stack<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::stack<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::stack<std::string>>>>::__node_insert_multi(uint64_t a1, char *a2)
{
  v4 = (a2 + 16);
  v5 = a2[39];
  v6 = *(a2 + 3);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 2);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v33, v7, v8);
  *(v4 - 1) = v9;
  v10 = *(a1 + 8);
  v11 = (*(a1 + 24) + 1);
  v12 = *(a1 + 32);
  if (!v10 || (v12 * v10) < v11)
  {
    v13 = 1;
    if (v10 >= 3)
    {
      v13 = (v10 & (v10 - 1)) != 0;
    }

    v14 = v13 | (2 * v10);
    v15 = vcvtps_u32_f32(v11 / v12);
    if (v14 <= v15)
    {
      prime = v15;
    }

    else
    {
      prime = v14;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v10 = *(a1 + 8);
    }

    if (prime > v10)
    {
LABEL_19:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
    }

    if (prime < v10)
    {
      v17 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v10 < 3 || (v18 = vcnt_s8(v10), v18.i16[0] = vaddlv_u8(v18), v18.u32[0] > 1uLL))
      {
        v17 = std::__next_prime(v17);
      }

      else
      {
        v19 = 1 << -__clz(v17 - 1);
        if (v17 >= 2)
        {
          v17 = v19;
        }
      }

      if (prime <= v17)
      {
        prime = v17;
      }

      if (prime < v10)
      {
        if (prime)
        {
          goto LABEL_19;
        }

        v20 = *a1;
        *a1 = 0;
        if (v20)
        {
          operator delete(v20);
        }

        *(a1 + 8) = 0;
      }
    }

    v10 = *(a1 + 8);
  }

  v21 = vcnt_s8(v10);
  v21.i16[0] = vaddlv_u8(v21);
  v22 = v21.u32[0];
  if (v21.u32[0] > 1uLL)
  {
    v23 = v9;
    if (v10 <= v9)
    {
      v23 = v9 % v10;
    }
  }

  else
  {
    v23 = (v10 - 1) & v9;
  }

  v24 = *(*a1 + 8 * v23);
  if (v24)
  {
    v25 = *v24;
    if (*v24)
    {
      v26 = 0;
      do
      {
        v27 = v25[1];
        if (v22 > 1)
        {
          v28 = v25[1];
          if (v27 >= v10)
          {
            v28 = v27 % v10;
          }
        }

        else
        {
          v28 = v27 & (v10 - 1);
        }

        if (v28 != v23)
        {
          break;
        }

        v29 = v27 == v9 && std::equal_to<std::string>::operator()[abi:nn200100](a1, v25 + 2, v4);
        if ((v26 & (v29 != (v26 & 1))) != 0)
        {
          break;
        }

        v26 |= v29 != (v26 & 1);
        v24 = *v24;
        v25 = *v24;
      }

      while (*v24);
      v10 = *(a1 + 8);
      v30 = vcnt_s8(v10);
      v30.i16[0] = vaddlv_u8(v30);
      v22 = v30.u32[0];
    }
  }

  v31 = *(a2 + 1);
  if (v22 > 1)
  {
    if (v31 >= v10)
    {
      v31 %= v10;
    }
  }

  else
  {
    v31 &= v10 - 1;
  }

  if (!v24)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    *(*a1 + 8 * v31) = a1 + 16;
    if (!*a2)
    {
      goto LABEL_72;
    }

    v32 = *(*a2 + 8);
    if (v22 > 1)
    {
      if (v32 >= v10)
      {
        v32 %= v10;
      }
    }

    else
    {
      v32 &= v10 - 1;
    }

LABEL_71:
    *(*a1 + 8 * v32) = a2;
    goto LABEL_72;
  }

  *a2 = *v24;
  *v24 = a2;
  if (*a2)
  {
    v32 = *(*a2 + 8);
    if (v22 > 1)
    {
      if (v32 >= v10)
      {
        v32 %= v10;
      }
    }

    else
    {
      v32 &= v10 - 1;
    }

    if (v32 != v31)
    {
      goto LABEL_71;
    }
  }

LABEL_72:
  ++*(a1 + 24);
}

void std::__hash_table<std::__hash_value_type<std::string,std::stack<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::stack<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::stack<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::stack<std::string>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::stack<std::string>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

double std::__for_each_segment[abi:nn200100]<std::__deque_iterator<std::string,std::string const*,std::string const&,std::string const* const*,long,170l>,std::__copy_impl::_CopySegment<std::__deque_iterator<std::string,std::string const*,std::string const&,std::string const* const*,long,170l>,std::__deque_iterator<std::string,std::string*,std::string&,std::string**,long,170l>>>(std::string **a1, std::string *a2, std::string **a3, std::string *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    size = *a5;
    v8 = *(a5 + 8);
    memset(&v15, 170, sizeof(v15));
  }

  else
  {
    v11 = a1 + 1;
    v10 = *a1;
    size = *a5;
    v8 = *(a5 + 8);
    memset(&v15, 170, sizeof(v15));
    for (i = v10 + 170; ; i = v13 + 170)
    {
      std::__copy_impl::operator()[abi:nn200100]<std::string const*,std::__deque_iterator<std::string,std::string*,std::string&,std::string**,long,170l>,0>(&v15, a2, i, size, v8);
      v8 = v15.__r_.__value_.__r.__words[2];
      size = v15.__r_.__value_.__l.__size_;
      *a5 = v15.__r_.__value_.__l.__size_;
      *(a5 + 8) = v8;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      a2 = v13;
      memset(&v15, 170, sizeof(v15));
    }

    a2 = *v11;
    memset(&v15, 170, sizeof(v15));
  }

  std::__copy_impl::operator()[abi:nn200100]<std::string const*,std::__deque_iterator<std::string,std::string*,std::string&,std::string**,long,170l>,0>(&v15, a2, a4, size, v8);
  result = *&v15.__r_.__value_.__l.__size_;
  *a5 = *&v15.__r_.__value_.__r.__words[1];
  return result;
}

std::string *std::__copy_impl::operator()[abi:nn200100]<std::string const*,std::__deque_iterator<std::string,std::string*,std::string&,std::string**,long,170l>,0>(std::string *result, std::string *__str, std::string *a3, std::string **a4, std::string *this)
{
  v6 = a4;
  v7 = __str;
  words = result->__r_.__value_.__r.__words;
  if (__str == a3)
  {
    v12 = __str;
    goto LABEL_14;
  }

  v10 = *a4;
  while (1)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - this + 4080) >> 3);
    if ((0xAAAAAAAAAAAAAAABLL * ((a3 - v7) >> 3)) < v11)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v7) >> 3);
    }

    if (v11)
    {
      break;
    }

LABEL_10:
    v14 = v6[1];
    ++v6;
    v10 = v14;
    this = v14;
  }

  v12 = (v7 + v11);
  v13 = 24 * v11;
  do
  {
    result = std::string::operator=(this++, v7++);
    v13 -= 24;
  }

  while (v13);
  if (v12 != a3)
  {
    v7 = v12;
    goto LABEL_10;
  }

  if (this == &(*v6)[170])
  {
    v15 = v6[1];
    ++v6;
    this = v15;
  }

LABEL_14:
  *words = v12;
  words[1] = v6;
  words[2] = this;
  return result;
}

BOOL std::deque<std::string>::__maybe_remove_back_spare[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 170 * ((v1 - v2) >> 3) - 1;
  }

  v4 = v3 - (a1[5] + a1[4]);
  if (v4 >= 0x154)
  {
    operator delete(*(v1 - 8));
    a1[2] -= 8;
  }

  return v4 > 0x153;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::stack<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::stack<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::stack<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::stack<std::string>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::stack<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::stack<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::stack<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::stack<std::string>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>>>::__deallocate_node(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<SVG::Element const*,SVG::Presentation>,std::__unordered_map_hasher<SVG::Element const*,std::__hash_value_type<SVG::Element const*,SVG::Presentation>,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,true>,std::__unordered_map_equal<SVG::Element const*,std::__hash_value_type<SVG::Element const*,SVG::Presentation>,std::equal_to<SVG::Element const*>,std::hash<SVG::Element const*>,true>,std::allocator<std::__hash_value_type<SVG::Element const*,SVG::Presentation>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<SVG::Element const*,SVG::Presentation>,std::__unordered_map_hasher<SVG::Element const*,std::__hash_value_type<SVG::Element const*,SVG::Presentation>,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,true>,std::__unordered_map_equal<SVG::Element const*,std::__hash_value_type<SVG::Element const*,SVG::Presentation>,std::equal_to<SVG::Element const*>,std::hash<SVG::Element const*>,true>,std::allocator<std::__hash_value_type<SVG::Element const*,SVG::Presentation>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<SVG::Element const*,SVG::Presentation>,std::__unordered_map_hasher<SVG::Element const*,std::__hash_value_type<SVG::Element const*,SVG::Presentation>,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,true>,std::__unordered_map_equal<SVG::Element const*,std::__hash_value_type<SVG::Element const*,SVG::Presentation>,std::equal_to<SVG::Element const*>,std::hash<SVG::Element const*>,true>,std::allocator<std::__hash_value_type<SVG::Element const*,SVG::Presentation>>>::__deallocate_node(unsigned int *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[118];
      if (v3 != -1)
      {
        v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        (*(&v9 + v3))(&v8, v1 + 110);
      }

      v1[118] = -1;
      v4 = v1[106];
      if (v4 != -1)
      {
        v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        (*(&v9 + v4))(&v8, v1 + 94);
      }

      v1[106] = -1;
      v5 = v1[72];
      if (v5 != -1)
      {
        v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        (*(&v9 + v5))(&v8, v1 + 68);
      }

      v1[72] = -1;
      v6 = v1[56];
      if (v6 != -1)
      {
        v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        (*(&v9 + v6))(&v8, v1 + 44);
      }

      v1[56] = -1;
      v7 = v1[26];
      if (v7 != -1)
      {
        v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
        (*(&v9 + v7))(&v8, v1 + 22);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<SVG::GradientElement const*,SVG::CF<CGGradient *>>,std::__unordered_map_hasher<SVG::GradientElement const*,std::__hash_value_type<SVG::GradientElement const*,SVG::CF<CGGradient *>>,std::hash<SVG::GradientElement const*>,std::equal_to<SVG::GradientElement const*>,true>,std::__unordered_map_equal<SVG::GradientElement const*,std::__hash_value_type<SVG::GradientElement const*,SVG::CF<CGGradient *>>,std::equal_to<SVG::GradientElement const*>,std::hash<SVG::GradientElement const*>,true>,std::allocator<std::__hash_value_type<SVG::GradientElement const*,SVG::CF<CGGradient *>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<SVG::GradientElement const*,SVG::CF<CGGradient *>>,std::__unordered_map_hasher<SVG::GradientElement const*,std::__hash_value_type<SVG::GradientElement const*,SVG::CF<CGGradient *>>,std::hash<SVG::GradientElement const*>,std::equal_to<SVG::GradientElement const*>,true>,std::__unordered_map_equal<SVG::GradientElement const*,std::__hash_value_type<SVG::GradientElement const*,SVG::CF<CGGradient *>>,std::equal_to<SVG::GradientElement const*>,std::hash<SVG::GradientElement const*>,true>,std::allocator<std::__hash_value_type<SVG::GradientElement const*,SVG::CF<CGGradient *>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<SVG::GradientElement const*,SVG::CF<CGGradient *>>,std::__unordered_map_hasher<SVG::GradientElement const*,std::__hash_value_type<SVG::GradientElement const*,SVG::CF<CGGradient *>>,std::hash<SVG::GradientElement const*>,std::equal_to<SVG::GradientElement const*>,true>,std::__unordered_map_equal<SVG::GradientElement const*,std::__hash_value_type<SVG::GradientElement const*,SVG::CF<CGGradient *>>,std::equal_to<SVG::GradientElement const*>,std::hash<SVG::GradientElement const*>,true>,std::allocator<std::__hash_value_type<SVG::GradientElement const*,SVG::CF<CGGradient *>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[3];
      if (v3)
      {
        CFRelease(v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<SVG::PatternElement const*,SVG::Document::PatternData>,std::__unordered_map_hasher<SVG::PatternElement const*,std::__hash_value_type<SVG::PatternElement const*,SVG::Document::PatternData>,std::hash<SVG::PatternElement const*>,std::equal_to<SVG::PatternElement const*>,true>,std::__unordered_map_equal<SVG::PatternElement const*,std::__hash_value_type<SVG::PatternElement const*,SVG::Document::PatternData>,std::equal_to<SVG::PatternElement const*>,std::hash<SVG::PatternElement const*>,true>,std::allocator<std::__hash_value_type<SVG::PatternElement const*,SVG::Document::PatternData>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<SVG::PatternElement const*,SVG::Document::PatternData>,std::__unordered_map_hasher<SVG::PatternElement const*,std::__hash_value_type<SVG::PatternElement const*,SVG::Document::PatternData>,std::hash<SVG::PatternElement const*>,std::equal_to<SVG::PatternElement const*>,true>,std::__unordered_map_equal<SVG::PatternElement const*,std::__hash_value_type<SVG::PatternElement const*,SVG::Document::PatternData>,std::equal_to<SVG::PatternElement const*>,std::hash<SVG::PatternElement const*>,true>,std::allocator<std::__hash_value_type<SVG::PatternElement const*,SVG::Document::PatternData>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<SVG::PatternElement const*,SVG::Document::PatternData>,std::__unordered_map_hasher<SVG::PatternElement const*,std::__hash_value_type<SVG::PatternElement const*,SVG::Document::PatternData>,std::hash<SVG::PatternElement const*>,std::equal_to<SVG::PatternElement const*>,true>,std::__unordered_map_equal<SVG::PatternElement const*,std::__hash_value_type<SVG::PatternElement const*,SVG::Document::PatternData>,std::equal_to<SVG::PatternElement const*>,std::hash<SVG::PatternElement const*>,true>,std::allocator<std::__hash_value_type<SVG::PatternElement const*,SVG::Document::PatternData>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[4];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__shared_ptr_pointer<SVG::Document *,std::shared_ptr<SVG::Document>::__shared_ptr_default_delete<SVG::Document,SVG::Document>,std::allocator<SVG::Document>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F894240);
}

uint64_t std::__shared_ptr_pointer<SVG::Document *,std::shared_ptr<SVG::Document>::__shared_ptr_default_delete<SVG::Document,SVG::Document>,std::allocator<SVG::Document>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 352);
    if (v2)
    {
      do
      {
        v3 = *v2;
        v4 = v2[4];
        if (v4)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v4);
        }

        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    v5 = *(v1 + 336);
    *(v1 + 336) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    std::__hash_table<std::__hash_value_type<SVG::Element const*,SVG::Presentation>,std::__unordered_map_hasher<SVG::Element const*,std::__hash_value_type<SVG::Element const*,SVG::Presentation>,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,true>,std::__unordered_map_equal<SVG::Element const*,std::__hash_value_type<SVG::Element const*,SVG::Presentation>,std::equal_to<SVG::Element const*>,std::hash<SVG::Element const*>,true>,std::allocator<std::__hash_value_type<SVG::Element const*,SVG::Presentation>>>::~__hash_table(v1 + 296);
    std::__hash_table<std::__hash_value_type<SVG::PatternElement const*,SVG::Document::PatternData>,std::__unordered_map_hasher<SVG::PatternElement const*,std::__hash_value_type<SVG::PatternElement const*,SVG::Document::PatternData>,std::hash<SVG::PatternElement const*>,std::equal_to<SVG::PatternElement const*>,true>,std::__unordered_map_equal<SVG::PatternElement const*,std::__hash_value_type<SVG::PatternElement const*,SVG::Document::PatternData>,std::equal_to<SVG::PatternElement const*>,std::hash<SVG::PatternElement const*>,true>,std::allocator<std::__hash_value_type<SVG::PatternElement const*,SVG::Document::PatternData>>>::~__hash_table(v1 + 256);
    std::__hash_table<std::__hash_value_type<SVG::PatternElement const*,SVG::Document::PatternData>,std::__unordered_map_hasher<SVG::PatternElement const*,std::__hash_value_type<SVG::PatternElement const*,SVG::Document::PatternData>,std::hash<SVG::PatternElement const*>,std::equal_to<SVG::PatternElement const*>,true>,std::__unordered_map_equal<SVG::PatternElement const*,std::__hash_value_type<SVG::PatternElement const*,SVG::Document::PatternData>,std::equal_to<SVG::PatternElement const*>,std::hash<SVG::PatternElement const*>,true>,std::allocator<std::__hash_value_type<SVG::PatternElement const*,SVG::Document::PatternData>>>::~__hash_table(v1 + 216);
    std::__hash_table<std::__hash_value_type<SVG::GradientElement const*,SVG::CF<CGGradient *>>,std::__unordered_map_hasher<SVG::GradientElement const*,std::__hash_value_type<SVG::GradientElement const*,SVG::CF<CGGradient *>>,std::hash<SVG::GradientElement const*>,std::equal_to<SVG::GradientElement const*>,true>,std::__unordered_map_equal<SVG::GradientElement const*,std::__hash_value_type<SVG::GradientElement const*,SVG::CF<CGGradient *>>,std::equal_to<SVG::GradientElement const*>,std::hash<SVG::GradientElement const*>,true>,std::allocator<std::__hash_value_type<SVG::GradientElement const*,SVG::CF<CGGradient *>>>>::~__hash_table(v1 + 176);
    std::__hash_table<SVG::Element const*,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,std::allocator<SVG::Element const*>>::~__hash_table(v1 + 136);
    std::__hash_table<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>>>::~__hash_table(v1 + 96);
    v6 = *(v1 + 88);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(v1 + 64);
    *(v1 + 64) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    std::mutex::~mutex(v1);

    JUMPOUT(0x25F894240);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<SVG::Document *,std::shared_ptr<SVG::Document>::__shared_ptr_default_delete<SVG::Document,SVG::Document>,std::allocator<SVG::Document>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

_OWORD *SVG::RectElement::RectElement(_OWORD *a1, uint64_t a2, void *a3)
{
  v5 = SVG::ShapeElement::ShapeElement(a1, a2, a3);
  *v5 = &unk_286EB9BA0;
  *(v5 + 688) = 0;
  *(v5 + 696) = 0;
  *(v5 + 704) = 0;
  *(v5 + 712) = 0;
  *(v5 + 720) = 0;
  *(v5 + 728) = 0;
  *(v5 + 736) = 0;
  *(v5 + 744) = 0;
  *(v5 + 752) = 0;
  *(v5 + 760) = 0;
  *(v5 + 768) = 0;
  *(v5 + 776) = 0;
  std::string::basic_string[abi:nn200100]<0>(v15, "x");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v6 = SVG::Element::findInAttributeMap(a3, v15, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (v6)
  {
    v15[0] = -1;
    v15[1] = 0xAAAAAAAAAAAAAAAALL;
    v16 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v6 + 8), v15);
    if (v16 == 1)
    {
      a1[43] = *v15;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v15, "y");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v7 = SVG::Element::findInAttributeMap(a3, v15, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (v7)
  {
    v15[0] = -1;
    v15[1] = 0xAAAAAAAAAAAAAAAALL;
    v16 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v7 + 8), v15);
    if (v16 == 1)
    {
      a1[44] = *v15;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v15, "width");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v8 = SVG::Element::findInAttributeMap(a3, v15, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (v8)
  {
    v15[0] = -1;
    v15[1] = 0xAAAAAAAAAAAAAAAALL;
    v16 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v8 + 8), v15);
    if (v16 == 1)
    {
      a1[45] = *v15;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v15, "height");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v9 = SVG::Element::findInAttributeMap(a3, v15, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (v9)
  {
    v15[0] = -1;
    v15[1] = 0xAAAAAAAAAAAAAAAALL;
    v16 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v9 + 8), v15);
    if (v16 == 1)
    {
      a1[46] = *v15;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v15, "rx");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v10 = SVG::Element::findInAttributeMap(a3, v15, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v15, "ry");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v11 = SVG::Element::findInAttributeMap(a3, v15, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (v10)
  {
    v15[0] = -1;
    v15[1] = 0xAAAAAAAAAAAAAAAALL;
    v16 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v10 + 8), v15);
    if (v16 == 1)
    {
      a1[47] = *v15;
    }
  }

  if (v11)
  {
    v15[0] = -1;
    v15[1] = 0xAAAAAAAAAAAAAAAALL;
    v16 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v11 + 8), v15);
    if (v16 == 1)
    {
      a1[48] = *v15;
    }
  }

  if (!v10)
  {
    a1[47] = a1[48];
    if (v11)
    {
      return a1;
    }

LABEL_47:
    a1[48] = a1[47];
    return a1;
  }

  if (!v11)
  {
    goto LABEL_47;
  }

  return a1;
}

double SVG::RectElement::boundingBox(SVG::RectElement *this, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  v5 = SVG::Length::computeValue((this + 688), a2.size.width);
  SVG::Length::computeValue((this + 704), height);
  SVG::Length::computeValue((this + 720), width);
  SVG::Length::computeValue((this + 736), height);
  return v5;
}

void SVG::RectElement::path(SVG::RectElement *this@<X0>, CGRect a2@<0:D0, 8:D1, 16:D2, 24:D3>, CGPathRef *a3@<X8>)
{
  height = a2.size.height;
  width = a2.size.width;
  v7 = SVG::RectElement::boundingBox(this, a2);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = SVG::Length::computeValue((this + 752), width);
  v15 = SVG::Length::computeValue((this + 768), height);
  if (v11 * 0.5 < v14)
  {
    v14 = v11 * 0.5;
  }

  if (v13 * 0.5 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13 * 0.5;
  }

  if (v11 <= 0.0 || v13 <= 0.0)
  {
    *a3 = 0;
  }

  else if (v14 == 0.0 || v16 == 0.0)
  {
    v53.origin.x = v7;
    v53.origin.y = v9;
    v53.size.width = v11;
    v53.size.height = v13;
    *a3 = CGPathCreateWithRect(v53, 0);
  }

  else
  {
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, v7 + v14, v9);
    v45.origin.x = v7;
    v45.origin.y = v9;
    v45.size.width = v11;
    v45.size.height = v13;
    MaxX = CGRectGetMaxX(v45);
    CGPathAddLineToPoint(Mutable, 0, MaxX - v14, v9);
    *&v19 = -1;
    *(&v19 + 1) = -1;
    *&v44.c = v19;
    *&v44.tx = v19;
    *&v44.a = v19;
    CGAffineTransformMakeScale(&v44, v14, v16);
    v46.origin.x = v7;
    v46.origin.y = v9;
    v46.size.width = v11;
    v46.size.height = v13;
    v20 = CGRectGetMaxX(v46) - v14;
    v42 = v44;
    CGAffineTransformInvert(&m, &v42);
    v21 = m.tx + (v9 + v16) * m.c + m.a * v20;
    v22 = m.ty + (v9 + v16) * m.d + m.b * v20;
    *&v23 = -1;
    *(&v23 + 1) = -1;
    *&m.c = v23;
    *&m.tx = v23;
    v42 = v44;
    *&m.a = v23;
    CGAffineTransformTranslate(&m, &v42, v21, v22);
    CGPathAddArc(Mutable, &m, 0.0, 0.0, 1.0, 4.71238898, 6.28318531, 0);
    v47.origin.x = v7;
    v47.origin.y = v9;
    v47.size.width = v11;
    v47.size.height = v13;
    v24 = CGRectGetMaxX(v47);
    v48.origin.x = v7;
    v48.origin.y = v9;
    v48.size.width = v11;
    v48.size.height = v13;
    MaxY = CGRectGetMaxY(v48);
    CGPathAddLineToPoint(Mutable, 0, v24, MaxY - v16);
    *&v26 = -1;
    *(&v26 + 1) = -1;
    *&v44.c = v26;
    *&v44.tx = v26;
    *&v44.a = v26;
    CGAffineTransformMakeScale(&v44, v14, v16);
    v49.origin.x = v7;
    v49.origin.y = v9;
    v49.size.width = v11;
    v49.size.height = v13;
    v27 = CGRectGetMaxX(v49) - v14;
    v50.origin.x = v7;
    v50.origin.y = v9;
    v50.size.width = v11;
    v50.size.height = v13;
    v28 = CGRectGetMaxY(v50) - v16;
    v42 = v44;
    CGAffineTransformInvert(&m, &v42);
    v29 = m.tx + v28 * m.c + m.a * v27;
    v30 = m.ty + v28 * m.d + m.b * v27;
    *&v31 = -1;
    *(&v31 + 1) = -1;
    *&m.c = v31;
    *&m.tx = v31;
    v42 = v44;
    *&m.a = v31;
    CGAffineTransformTranslate(&m, &v42, v29, v30);
    CGPathAddArc(Mutable, &m, 0.0, 0.0, 1.0, 0.0, 1.57079633, 0);
    v51.origin.x = v7;
    v51.origin.y = v9;
    v51.size.width = v11;
    v51.size.height = v13;
    v32 = CGRectGetMaxY(v51);
    CGPathAddLineToPoint(Mutable, 0, v7 + v14, v32);
    *&v33 = -1;
    *(&v33 + 1) = -1;
    *&v44.c = v33;
    *&v44.tx = v33;
    *&v44.a = v33;
    CGAffineTransformMakeScale(&v44, v14, v16);
    v52.origin.x = v7;
    v52.origin.y = v9;
    v52.size.width = v11;
    v52.size.height = v13;
    v34 = CGRectGetMaxY(v52) - v16;
    v42 = v44;
    CGAffineTransformInvert(&m, &v42);
    v35 = m.tx + v34 * m.c + m.a * (v7 + v14);
    v36 = m.ty + v34 * m.d + m.b * (v7 + v14);
    *&v37 = -1;
    *(&v37 + 1) = -1;
    *&m.c = v37;
    *&m.tx = v37;
    v42 = v44;
    *&m.a = v37;
    CGAffineTransformTranslate(&m, &v42, v35, v36);
    CGPathAddArc(Mutable, &m, 0.0, 0.0, 1.0, 1.57079633, 3.14159265, 0);
    CGPathAddLineToPoint(Mutable, 0, v7, v9 + v16);
    *&v38 = -1;
    *(&v38 + 1) = -1;
    *&v44.c = v38;
    *&v44.tx = v38;
    *&v44.a = v38;
    CGAffineTransformMakeScale(&v44, v14, v16);
    v42 = v44;
    CGAffineTransformInvert(&m, &v42);
    v39 = m.tx + (v9 + v16) * m.c + m.a * (v7 + v14);
    v40 = m.ty + (v9 + v16) * m.d + m.b * (v7 + v14);
    *&v41 = -1;
    *(&v41 + 1) = -1;
    *&m.c = v41;
    *&m.tx = v41;
    v42 = v44;
    *&m.a = v41;
    CGAffineTransformTranslate(&m, &v42, v39, v40);
    CGPathAddArc(Mutable, &m, 0.0, 0.0, 1.0, 3.14159265, 4.71238898, 0);
    CGPathCloseSubpath(Mutable);
    *a3 = Mutable;
    if (Mutable)
    {
      CFRetain(Mutable);
      CFRelease(Mutable);
    }
  }
}

void SVG::RectElement::~RectElement(SVG::RectElement *this)
{
  SVG::GElement::~GElement(this);

  JUMPOUT(0x25F894240);
}

uint64_t SVG::PolygonElement::PolygonElement(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = SVG::ShapeElement::ShapeElement(a1, a2, a3);
  *v5 = &unk_286EB99C8;
  v5[86] = 0;
  v5[88] = 0;
  v5[87] = 0;
  std::string::basic_string[abi:nn200100]<0>(v24, "points");
  std::string::basic_string[abi:nn200100]<0>(&__p, "http://www.w3.org/2000/svg");
  v6 = SVG::Element::findInAttributeMap(a3, v24, &__p);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p);
  }

  if (SBYTE7(v25) < 0)
  {
    operator delete(v24[0]);
    if (!v6)
    {
      return a1;
    }
  }

  else if (!v6)
  {
    return a1;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v24 = v7;
  v25 = v7;
  SVG::consumeListOfCoordinates((v6 + 8), v24);
  if (BYTE8(v25) == 1)
  {
    v8 = 0;
    v9 = 0;
    __p = 0;
    v27 = 0;
    v28 = 0;
    v10 = v24[0];
    if ((v24[1] - v24[0]) >= 9)
    {
      v9 = 0;
      v11 = 0;
      do
      {
        v12 = v10[v11];
        if (v9 >= v28)
        {
          v13 = __p;
          v14 = v9 - __p;
          v15 = (v9 - __p) >> 4;
          v16 = v15 + 1;
          if ((v15 + 1) >> 60)
          {
            std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
          }

          v17 = v28 - __p;
          if ((v28 - __p) >> 3 > v16)
          {
            v16 = v17 >> 3;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFF0)
          {
            v18 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<CGPoint>>(&__p, v18);
          }

          v19 = v15;
          v20 = (16 * v15);
          v21 = &v20[-v19];
          *v20 = v12;
          v9 = (v20 + 1);
          memcpy(v21, v13, v14);
          v22 = __p;
          __p = v21;
          v27 = v9;
          v28 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v9 = v12;
          v9 += 16;
        }

        v27 = v9;
        ++v11;
        v10 = v24[0];
      }

      while (v11 < ((v24[1] - v24[0]) >> 3) >> 1);
      v8 = __p;
    }

    if ((a1 + 688) != &__p)
    {
      std::vector<CGPoint>::__assign_with_size[abi:nn200100]<CGPoint*,CGPoint*>((a1 + 688), v8, v9, (v9 - v8) >> 4);
      v8 = __p;
    }

    if (v8)
    {
      v27 = v8;
      operator delete(v8);
    }

    if ((BYTE8(v25) & 1) != 0 && v24[0])
    {
      v24[1] = v24[0];
      operator delete(v24[0]);
    }
  }

  return a1;
}

void SVG::PolygonElement::path(const CGPoint **this@<X0>, CGRect a2@<0:D0, 8:D1, 16:D2, 24:D3>, CGPath **a3@<X8>)
{
  Mutable = CGPathCreateMutable();
  CGPathAddLines(Mutable, 0, this[86], this[87] - this[86]);
  if ((this[87] - this[86]) >= 0x11)
  {
    CGPathCloseSubpath(Mutable);
  }

  *a3 = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);

    CFRelease(Mutable);
  }
}

float64_t SVG::PolygonElement::boundingBox(SVG::PolygonElement *this, CGRect a2)
{
  v2 = *(this + 87);
  v3 = *(this + 86);
  if (v2 == v3)
  {
    v5.f64[0] = *MEMORY[0x277CBF3A0];
  }

  else
  {
    v4 = *v3;
    v5 = *v3;
    do
    {
      v6 = *v3++;
      v5 = vbslq_s8(vcgtq_f64(v5, v6), v6, v5);
      v4 = vbslq_s8(vcgtq_f64(v6, v4), v6, v4);
    }

    while (v3 != v2);
  }

  return v5.f64[0];
}

void SVG::PolygonElement::~PolygonElement(SVG::PolygonElement *this)
{
  *this = &unk_286EB99C8;
  v2 = *(this + 86);
  if (v2)
  {
    *(this + 87) = v2;
    operator delete(v2);
  }

  SVG::GElement::~GElement(this);
}

{
  *this = &unk_286EB99C8;
  v2 = *(this + 86);
  if (v2)
  {
    *(this + 87) = v2;
    operator delete(v2);
  }

  SVG::GElement::~GElement(this);

  JUMPOUT(0x25F894240);
}

unint64_t SVG::CSS::consumeWhitespace(uint64_t *a1, unint64_t a2)
{
  v2 = *(a1 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = a1[1];
  }

  if (v2 <= a2 || (v3 >= 0 ? (v4 = a1) : (v4 = *a1), (v5 = *(v4 + a2), v6 = v5 > 0x20, v7 = (1 << v5) & 0x100000600, !v6) ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v9 = (a2 + 1) & 0xFFFFFFFFFFFFFF00;
    v10 = (a2 + 1);
  }

  return v9 | v10;
}

uint64_t SVG::CSS::consumeAName@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, std::string *a3@<X8>)
{
  v25 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[7] = v6;
  v24[8] = v6;
  v24[5] = v6;
  v24[6] = v6;
  v24[3] = v6;
  v24[4] = v6;
  v24[1] = v6;
  v24[2] = v6;
  v23 = v6;
  v24[0] = v6;
  *v21 = v6;
  v22 = v6;
  v20[1] = v6;
  v20[2] = v6;
  v19 = v6;
  v20[0] = v6;
  std::ostringstream::basic_ostringstream[abi:nn200100](&v19);
  memset(v18, 170, sizeof(v18));
  SVG::CSS::consumeCodePoint(a1, a2, v18);
  if (LOBYTE(v18[2]) == 1)
  {
    v15 = a3;
    do
    {
      if ((v18[0] & 0xFFFFFFDF) - 65 >= 0x1A && SLODWORD(v18[0]) <= 127 && LODWORD(v18[0]) != 95 && (LODWORD(v18[0]) != 45 ? (v7 = (LODWORD(v18[0]) - 48) > 9) : (v7 = 0), v7))
      {
        if (LODWORD(v18[0]) != 92)
        {
          break;
        }

        v8 = v18[1];
        memset(v27, 170, 24);
        SVG::CSS::consumeCodePoint(a1, v18[1], v27);
        if (LOBYTE(v27[2]) != 1 || LODWORD(v27[0]) == 10)
        {
          break;
        }

        memset(v26, 170, sizeof(v26));
        SVG::CSS::consumeHexDigit(v26, a1, v8);
        if (LOBYTE(v26[2]) == 1)
        {
          v9 = v26[1];
          memset(v27, 170, 24);
          SVG::CSS::consumeHexDigit(v27, a1, v26[1]);
          if (LOBYTE(v27[2]) == 1)
          {
            operator new();
          }

          v10 = SVG::CSS::consumeWhitespace(a1, v9);
          if (v11)
          {
            a2 = v10;
          }

          else
          {
            a2 = v9;
          }

          if (LOBYTE(v26[0]))
          {
            v12 = LOBYTE(v26[0]);
          }

          else
          {
            v12 = 65533;
          }

          a3 = v15;
        }

        else
        {
          SVG::CSS::consumeCodePoint(a1, v8, v27);
          v12 = v27[0];
          a2 = v27[1];
        }

        SVG::CSS::appendToStringStream(&v19, v12);
      }

      else
      {
        SVG::CSS::appendToStringStream(&v19, v18[0]);
        a2 = v18[1];
      }

      memset(v18, 170, sizeof(v18));
      SVG::CSS::consumeCodePoint(a1, a2, v18);
    }

    while ((v18[2] & 1) != 0);
  }

  std::ostringstream::str[abi:nn200100](&v19, __p);
  if (SHIBYTE(v17) < 0)
  {
    std::string::__init_copy_ctor_external(a3, __p[0], __p[1]);
    v13 = SHIBYTE(v17);
    a3[1].__r_.__value_.__r.__words[0] = a2;
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *__p;
    a3->__r_.__value_.__r.__words[2] = v17;
    a3[1].__r_.__value_.__r.__words[0] = a2;
  }

  *&v19 = *MEMORY[0x277D82828];
  *(&v20[-1] + *(v19 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v19 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[1]);
  }

  *(&v19 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  return MEMORY[0x25F894220](v24);
}

uint64_t *SVG::CSS::consumeCodePoint@<X0>(uint64_t *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 23);
  if ((v3 & 0x8000000000000000) == 0)
  {
    if (v3 > a2)
    {
      v4 = a2 + 1;
      v5 = *(result + a2);
      if (*(result + a2) < 0)
      {
        v6 = *(result + 23);
        goto LABEL_7;
      }

      goto LABEL_9;
    }

LABEL_10:
    v7 = 0;
    *a3 = 0;
    goto LABEL_11;
  }

  v6 = result[1];
  if (v6 <= a2)
  {
    goto LABEL_10;
  }

  v4 = a2 + 1;
  v5 = *(*result + a2);
  if (*(*result + a2) < 0)
  {
LABEL_7:
    if (v4 == v6)
    {
LABEL_8:
      v5 = -1;
      goto LABEL_9;
    }

    if (v5 < 0xE0)
    {
      if (v5 < 0xC2)
      {
        goto LABEL_8;
      }

      v15 = v5 & 0x1F;
      v10 = *result;
    }

    else
    {
      if (v5 > 0xEF)
      {
        if (v5 > 0xF4)
        {
          goto LABEL_8;
        }

        v20 = v5 - 240;
        v10 = *result;
        v21 = (v3 & 0x80000000) == 0 ? result : *result;
        v22 = *(v21 + v4);
        if (((byte_25D1D74D3[v22 >> 4] >> v20) & 1) == 0)
        {
          goto LABEL_8;
        }

        v4 = a2 + 2;
        if ((v3 & 0x80000000) != 0)
        {
          v23 = *result;
          if (v4 == result[1])
          {
            goto LABEL_8;
          }
        }

        else
        {
          v23 = result;
          if (v4 == v3)
          {
            v5 = -1;
            v4 = *(result + 23);
            goto LABEL_9;
          }
        }

        v13 = *(v23 + v4) ^ 0x80;
        if (v13 > 0x3F)
        {
          goto LABEL_8;
        }

        v8 = v22 & 0x3F | (v20 << 6);
      }

      else
      {
        v8 = v5 & 0xF;
        v9 = a00000000000000[v5 & 0xF];
        v10 = *result;
        if ((v3 & 0x80000000) == 0)
        {
          v11 = result;
        }

        else
        {
          v11 = *result;
        }

        v12 = *(v11 + v4);
        if (((v9 >> (v12 >> 5)) & 1) == 0)
        {
          goto LABEL_8;
        }

        v13 = v12 & 0x3F;
      }

      ++v4;
      v14 = result[1];
      if ((v3 & 0x80000000) == 0)
      {
        v14 = *(result + 23);
      }

      if (v4 == v14)
      {
        goto LABEL_8;
      }

      v15 = v13 | (v8 << 6);
    }

    if ((v3 & 0x80000000) == 0)
    {
      v16 = result;
    }

    else
    {
      v16 = v10;
    }

    v17 = *(v16 + v4) ^ 0x80;
    v18 = v17 > 0x3F;
    v19 = v17 | (v15 << 6);
    if (v18)
    {
      v5 = -1;
    }

    else
    {
      ++v4;
      v5 = v19;
    }
  }

LABEL_9:
  *a3 = v5;
  *(a3 + 8) = v4;
  v7 = 1;
LABEL_11:
  *(a3 + 16) = v7;
  return result;
}

void *SVG::CSS::appendToStringStream(void *result, unsigned int a2)
{
  v2 = result;
  v6 = -1431655766;
  if (a2 > 0x7F)
  {
    if (a2 > 0x7FF)
    {
      if (a2 >> 11 < 0x1B || (a2 & 0xFFFFE000) == 0xE000)
      {
        LOBYTE(v6) = (a2 >> 12) | 0xE0;
        BYTE1(v6) = (a2 >> 6) & 0x3F | 0x80;
        BYTE2(v6) = a2 & 0x3F | 0x80;
        v3 = 3;
      }

      else
      {
        if ((a2 - 0x10000) >> 20)
        {
          return result;
        }

        LOBYTE(v6) = (a2 >> 18) | 0xF0;
        BYTE1(v6) = (a2 >> 12) & 0x3F | 0x80;
        BYTE2(v6) = (a2 >> 6) & 0x3F | 0x80;
        HIBYTE(v6) = a2 & 0x3F | 0x80;
        v3 = 4;
      }
    }

    else
    {
      LOBYTE(v6) = (a2 >> 6) | 0xC0;
      BYTE1(v6) = a2 & 0x3F | 0x80;
      v3 = 2;
    }
  }

  else
  {
    LOBYTE(v6) = a2;
    v3 = 1;
  }

  v4 = &v6;
  do
  {
    v5 = *v4;
    v4 = (v4 + 1);
    v7 = v5;
    result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v2, &v7, 1);
    --v3;
  }

  while (v3);
  return result;
}

const void *std::ostringstream::str[abi:nn200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:nn200100](a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t SVG::CSS::preprocess@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[7] = v4;
  v16[8] = v4;
  v16[5] = v4;
  v16[6] = v4;
  v16[3] = v4;
  v16[4] = v4;
  v16[1] = v4;
  v16[2] = v4;
  v15 = v4;
  v16[0] = v4;
  *__p = v4;
  v14 = v4;
  v12[1] = v4;
  v12[2] = v4;
  v11 = v4;
  v12[0] = v4;
  std::ostringstream::basic_ostringstream[abi:nn200100](&v11);
  memset(v10, 170, sizeof(v10));
  SVG::CSS::consumeCodePoint(a1, 0, v10);
  if (LOBYTE(v10[2]) == 1)
  {
    while (1)
    {
      v5 = v10[0];
      if (!LODWORD(v10[0]))
      {
        break;
      }

      if (LODWORD(v10[0]) == 13)
      {
        memset(v9, 170, sizeof(v9));
        v6 = v10[1];
        SVG::CSS::consumeCodePoint(a1, v10[1], v9);
        if (LOBYTE(v9[2]) == 1 && LODWORD(v9[0]) == 10)
        {
          SVG::CSS::appendToStringStream(&v11, 0xAu);
          v6 = v9[1];
          goto LABEL_13;
        }
      }

      else
      {
        if (LODWORD(v10[0]) != 12)
        {
          goto LABEL_12;
        }

        v6 = v10[1];
      }

      SVG::CSS::appendToStringStream(&v11, 0xAu);
LABEL_13:
      memset(v10, 170, sizeof(v10));
      SVG::CSS::consumeCodePoint(a1, v6, v10);
      if ((v10[2] & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v5 = 65533;
LABEL_12:
    SVG::CSS::appendToStringStream(&v11, v5);
    v6 = v10[1];
    goto LABEL_13;
  }

LABEL_16:
  std::ostringstream::str[abi:nn200100](&v11, a2);
  *&v11 = *MEMORY[0x277D82828];
  *(&v12[-1] + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v11 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v11 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x25F894220](v16);
}

uint64_t *SVG::CSS::consumeHexDigit(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  memset(v7, 170, sizeof(v7));
  result = SVG::CSS::consumeCodePoint(a2, a3, v7);
  if (LOBYTE(v7[2]) == 1)
  {
    if ((LODWORD(v7[0]) - 58) >= 0xFFFFFFF6)
    {
      v5 = LOBYTE(v7[0]) - 48;
      goto LABEL_6;
    }

    if ((LODWORD(v7[0]) - 65) <= 5)
    {
      v5 = LOBYTE(v7[0]) - 55;
LABEL_6:
      v6 = v7[1];
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = 1;
      return result;
    }

    if ((LODWORD(v7[0]) - 97) <= 5)
    {
      v5 = LOBYTE(v7[0]) - 87;
      goto LABEL_6;
    }
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t std::stringbuf::view[abi:nn200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t SVG::parseUnits(uint64_t a1)
{
  v2 = 0;
  do
  {
    v3 = v2;
    v2 = SVG::consumeWsp(a1, v2);
  }

  while ((v4 & 1) != 0);
  memset(v13, 170, sizeof(v13));
  SVG::consumeUnits(a1, v3, v13);
  if (LOBYTE(v13[2]) != 1)
  {
    goto LABEL_10;
  }

  v5 = v13[1];
  do
  {
    v6 = v5;
    v5 = SVG::consumeWsp(a1, v5);
  }

  while ((v7 & 1) != 0);
  v8 = *(a1 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v6 == v8)
  {
    v9 = v13[0] & 0xFFFFFF00;
    v10 = LOBYTE(v13[0]);
    v11 = 0x100000000;
  }

  else
  {
LABEL_10:
    v11 = 0;
    v10 = 0;
    v9 = 0;
  }

  return v11 | v9 | v10;
}