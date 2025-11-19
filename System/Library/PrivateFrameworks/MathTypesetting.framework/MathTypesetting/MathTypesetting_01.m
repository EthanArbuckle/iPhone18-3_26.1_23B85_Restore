void sub_2582552D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL EQKit::Unicode::isPseudoScript(EQKit::Unicode *this)
{
  v1 = this;
  {
    std::set<unsigned int>::set[abi:ne200100]<unsigned int const*>(&EQKit::Unicode::isPseudoScript::sPseudoScriptSet, sPseudoScriptData, dword_2582D0194);
  }

  v2 = qword_27F926468;
  if (!qword_27F926468)
  {
    return 0;
  }

  v3 = &qword_27F926468;
  do
  {
    v4 = *(v2 + 28);
    v5 = v4 >= v1;
    v6 = v4 < v1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  return v3 != &qword_27F926468 && *(v3 + 7) <= v1;
}

uint64_t EQKit::Unicode::variationSelector(EQKit::Unicode *this)
{
  if ((this - 917760) >= 0xF0)
  {
    v1 = 0;
  }

  else
  {
    v1 = this - 917743;
  }

  if (this >> 4 == 4064)
  {
    return (this - 65023);
  }

  else
  {
    return v1;
  }
}

uint64_t EQKit::Unicode::lookupChar(uint64_t this, uint64_t a2, const EQKit::Script::Info *a3)
{
  switch(this)
  {
    case '\'':
      if (!*(a2 + 24))
      {
        return 8242;
      }

      break;
    case '*':
      if (!*(a2 + 24))
      {
        return 8727;
      }

      break;
    case '-':
      if (*(a2 + 24) == 1)
      {
        return 8208;
      }

      else
      {
        return 8722;
      }
  }

  v3 = this - 65;
  if ((this - 65) < 0x1A || (this - 97) <= 0x19)
  {
    switch(*(a2 + 12))
    {
      case 2:
        if (v3 >= 0x1A)
        {
          v5 = 119834;
        }

        else
        {
          v5 = 119808;
        }

        if (!*(a2 + 24))
        {
          goto LABEL_59;
        }

        return this;
      case 3:
        v11 = *(a2 + 24);
        v5 = 119860;
        v12 = 78;
        goto LABEL_49;
      case 4:
        v11 = *(a2 + 24);
        v5 = 119912;
        v12 = 130;
LABEL_49:
        if (v3 >= 0x1A)
        {
          v5 = v12 | 0x1D400;
        }

        if (v11)
        {
          return this;
        }

        goto LABEL_59;
      case 5:
        v5 = 120120;
        v10 = 338;
        goto LABEL_57;
      case 6:
        v5 = 120172;
        v10 = 390;
        goto LABEL_57;
      case 7:
        v5 = 119964;
        v10 = 182;
        goto LABEL_57;
      case 8:
        v5 = 120016;
        v10 = 234;
        goto LABEL_57;
      case 9:
        v5 = 120068;
        v10 = 286;
        goto LABEL_57;
      case 0xA:
        v5 = 120224;
        v10 = 442;
        goto LABEL_57;
      case 0xB:
        v5 = 120276;
        v10 = 494;
        goto LABEL_57;
      case 0xC:
        v5 = 120328;
        v10 = 546;
        goto LABEL_57;
      case 0xD:
        v5 = 120380;
        v10 = 598;
        goto LABEL_57;
      case 0xE:
        v5 = 120432;
        v10 = 650;
LABEL_57:
        if (v3 >= 0x1A)
        {
          v5 = v10 | 0x1D400;
        }

LABEL_59:
        v13 = v3 >= 0x1A;
        v14 = -97;
        v15 = -65;
        goto LABEL_66;
      default:
        return this;
    }
  }

  if ((this - 48) > 9)
  {
    v6 = this - 913;
    v7 = *(a2 + 12);
    if ((this - 913) < 0x19 || (this - 945) <= 0x18)
    {
      if (v7 <= 3)
      {
        if (v7 == 2)
        {
          v5 = 120488;
          v9 = 706;
        }

        else
        {
          if (v7 != 3)
          {
            return this;
          }

          v5 = 120546;
          v9 = 764;
        }
      }

      else
      {
        switch(v7)
        {
          case 4:
            v5 = 120604;
            v9 = 822;
            break;
          case 11:
            v5 = 120662;
            v9 = 880;
            break;
          case 13:
            v5 = 120720;
            v9 = 938;
            break;
          default:
            return this;
        }
      }

      if (v6 >= 0x19)
      {
        v5 = v9 | 0x1D400;
      }

      v13 = v6 >= 0x19;
      v14 = -945;
      v15 = -913;
LABEL_66:
      if (!v13)
      {
        v14 = v15;
      }

      return fixOutOfSequenceUnicodeChar((v14 + this + v5));
    }

    else
    {
      if (this == 567)
      {
        v8 = 120485;
      }

      else
      {
        v8 = 0;
      }

      if (this == 305)
      {
        v8 = 120484;
      }

      if (v7 == 3)
      {
        return v8;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v4 = *(a2 + 12) - 2;
    if (v4 <= 0xC && ((0x1F09u >> v4) & 1) != 0)
    {
      return dword_2582D0194[v4] + this - 48;
    }
  }

  return this;
}

uint64_t fixOutOfSequenceUnicodeChar(uint64_t result)
{
  if (result > 120069)
  {
    if (result > 120126)
    {
      if (result > 120135)
      {
        switch(result)
        {
          case 0x1D548:
            return 8474;
          case 0x1D549:
            return 8477;
          case 0x1D551:
            return 8484;
        }
      }

      else
      {
        switch(result)
        {
          case 0x1D53F:
            return 8461;
          case 0x1D545:
            return 8469;
          case 0x1D547:
            return 8473;
        }
      }
    }

    else if (result > 120084)
    {
      switch(result)
      {
        case 0x1D515:
          return 8476;
        case 0x1D51D:
          return 8488;
        case 0x1D53A:
          return 8450;
      }
    }

    else
    {
      switch(result)
      {
        case 0x1D506:
          return 8493;
        case 0x1D50B:
          return 8460;
        case 0x1D50C:
          return 8465;
      }
    }
  }

  else if (result > 119974)
  {
    if (result > 119993)
    {
      switch(result)
      {
        case 0x1D4BA:
          return 8495;
        case 0x1D4BC:
          return 8458;
        case 0x1D4C4:
          return 8500;
      }
    }

    else
    {
      switch(result)
      {
        case 0x1D4A7:
          return 8466;
        case 0x1D4A8:
          return 8499;
        case 0x1D4AD:
          return 8475;
      }
    }
  }

  else if (result > 119968)
  {
    switch(result)
    {
      case 0x1D4A1:
        return 8497;
      case 0x1D4A3:
        return 8459;
      case 0x1D4A4:
        return 8464;
    }
  }

  else
  {
    switch(result)
    {
      case 0x1D455:
        return 8462;
      case 0x1D49D:
        return 8492;
      case 0x1D4A0:
        return 8496;
    }
  }

  return result;
}

double EQKit::Unicode::emSize(EQKit::Unicode *this)
{
  if (this <= 8196)
  {
    result = 0.5;
    if (this > 8193)
    {
      if (this == 8194)
      {
        return result;
      }

      if (this != 8195)
      {
        return 0.33333333;
      }

      return 1.0;
    }

    if (this == 0x2000)
    {
      return result;
    }

    if (this == 8193)
    {
      return 1.0;
    }

    return 0.0;
  }

  if (this <= 8200)
  {
    if (this == 8197)
    {
      return 0.25;
    }

    if (this != 8198)
    {
      return 0.0;
    }

    return 0.16666666;
  }

  switch(this)
  {
    case 0x2009:
      return 0.16666666;
    case 0x200A:
      return 0.08333333;
    case 0x205F:
      return 0.22222222;
  }

  return 0.0;
}

void *std::set<unsigned int>::set[abi:ne200100]<unsigned int const*>(void *a1, unsigned int *a2, unsigned int *a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(a1, v4, v6++);
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *std::__tree<unsigned int>::__find_equal<unsigned int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<unsigned int>::__find_equal<unsigned int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t EQKit::StemStretch::Config::Entry::Entry(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = *(this + 16) & 0xF0 | 1;
  return this;
}

uint64_t EQKit::StemStretch::Config::Entry::fromDictionary(EQKit::StemStretch::Config::Entry *this, NSDictionary *a2, EQKit::StemStretch::Config::Entry *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    __p = 0uLL;
    v23 = 0;
    v5 = _stringForKey(this, @"analyzeMethod", &__p);
    if (!v5)
    {
      goto LABEL_27;
    }

    if (SHIBYTE(v23) < 0)
    {
      if (*(&__p + 1) != 11 || (*__p == 0x7543726F7272694DLL ? (v7 = *(__p + 3) == 0x6576727543726F72) : (v7 = 0), !v7))
      {
        if (*(&__p + 1) != 13)
        {
          goto LABEL_25;
        }

        p_p = __p;
        goto LABEL_15;
      }
    }

    else
    {
      if (HIBYTE(v23) != 11)
      {
        if (HIBYTE(v23) != 13)
        {
          goto LABEL_25;
        }

        p_p = &__p;
LABEL_15:
        v8 = *p_p;
        v9 = *(p_p + 5);
        if (v8 == 0x6C656C6C61726150 && v9 == 0x736D6574536C656CLL)
        {
          v11 = a2[2].super.isa & 0xFC | 1;
LABEL_26:
          LOBYTE(a2[2].super.isa) = v11;
LABEL_27:
          if (_stringForKey(this, @"minStemLength", &__p))
          {
            EQKitLength::EQKitLength(&v20, &__p, 0);
            LODWORD(a2->super.isa) = v20;
            a2[1].super.isa = v21;
            v5 = 1;
          }

          v13 = _stringForKey(this, @"axis", &__p);
          v14 = HIBYTE(v23);
          if (!v13)
          {
LABEL_59:
            if ((v14 & 0x80) == 0)
            {
              return v5;
            }

LABEL_60:
            operator delete(__p);
            return v5;
          }

          if (v23 < 0)
          {
            if (*(&__p + 1) == 10 && *__p == 0x746E6F7A69726F68 && *(__p + 8) == 27745)
            {
LABEL_56:
              v18 = a2[2].super.isa & 0xF3 | 4;
              goto LABEL_57;
            }

            if (*(&__p + 1) == 8 && *__p == 0x6C61636974726576)
            {
              goto LABEL_50;
            }

            if (*(&__p + 1) != 4)
            {
              v5 = 1;
              goto LABEL_60;
            }

            v17 = __p;
          }

          else
          {
            if (HIBYTE(v23) != 4)
            {
              if (HIBYTE(v23) != 8)
              {
                if (HIBYTE(v23) != 10)
                {
                  return 1;
                }

                if (__p != 0x746E6F7A69726F68 || WORD4(__p) != 27745)
                {
                  return 1;
                }

                goto LABEL_56;
              }

              if (__p != 0x6C61636974726576)
              {
                return 1;
              }

LABEL_50:
              v18 = a2[2].super.isa & 0xF3 | 8;
              goto LABEL_57;
            }

            v17 = &__p;
          }

          if (*v17 != 1701736302)
          {
LABEL_58:
            v5 = 1;
            goto LABEL_59;
          }

          v18 = LOBYTE(a2[2].super.isa) | 0xC;
LABEL_57:
          LOBYTE(a2[2].super.isa) = v18;
          goto LABEL_58;
        }

LABEL_25:
        v11 = a2[2].super.isa & 0xFC;
        goto LABEL_26;
      }

      if (__p != 0x7543726F7272694DLL || *(&__p + 3) != 0x6576727543726F72)
      {
        goto LABEL_25;
      }
    }

    v11 = a2[2].super.isa & 0xFC | 2;
    goto LABEL_26;
  }

  return 0;
}

void sub_25825612C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _stringForKey(void *a1, uint64_t a2, void **a3)
{
  v4 = [a1 objectForKey:a2];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = [v4 UTF8String];
    v7 = strlen(v6);
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v11) = v7;
    if (v7)
    {
      memmove(&__dst, v6, v7);
    }

    *(&__dst + v8) = 0;
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = __dst;
    a3[2] = v11;
  }

  else
  {
    if (*(a3 + 23) < 0)
    {
      a3[1] = 0;
      a3 = *a3;
    }

    else
    {
      *(a3 + 23) = 0;
    }

    *a3 = 0;
  }

  return isKindOfClass & 1;
}

uint64_t EQKit::StemStretch::Key::Key(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = -1;
  *(this + 20) = 0;
  *(this + 24) = 0;
  return this;
}

EQKit::StemStretch::Key *EQKit::StemStretch::Key::Key(EQKit::StemStretch::Key *this, CTFontRef font, __int16 a3, int a4, double a5)
{
  *(this + 1) = 0;
  *(this + 8) = a3;
  *(this + 5) = a4;
  *(this + 3) = a5;
  if (font)
  {
    *this = CTFontCopyPostScriptName(font);
    *(this + 1) = CTFontGetSize(font);
  }

  return this;
}

EQKit::StemStretch::Key *EQKit::StemStretch::Key::Key(EQKit::StemStretch::Key *this, const EQKit::StemStretch::Key *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 5) = *(a2 + 5);
  *(this + 3) = *(a2 + 3);
  if (v3)
  {
    CFRetain(v3);
  }

  return this;
}

uint64_t EQKit::StemStretch::Key::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    v5 = *a2;
    *a1 = *a2;
    if (v5)
    {
      CFRetain(v5);
    }

    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 20) = *(a2 + 20);
    *(a1 + 24) = *(a2 + 24);
  }

  return a1;
}

void EQKit::StemStretch::Key::~Key(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL EQKit::StemStretch::Key::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 24) != *(a2 + 24) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *a1;
  v3 = *a2;
  if (*a1 == v3)
  {
    return 1;
  }

  result = 0;
  if (v2 && v3)
  {
    return CFStringCompare(v2, v3, 0) == kCFCompareEqualTo;
  }

  return result;
}

EQKit::StemStretch::Key *EQKit::StemStretch::Key::keyForFontAndCharacter@<X0>(EQKit::StemStretch::Key *this@<X0>, const __CTFont *a2@<X1>, double a3@<D0>, uint64_t a4@<X8>)
{
  characters = a2;
  glyphs = -1;
  if (this)
  {
    v6 = a2;
    v7 = this;
    this = CTFontGetGlyphsForCharacters(this, &characters, &glyphs, 1);
    if (this)
    {
      return EQKit::StemStretch::Key::Key(a4, v7, glyphs, v6, a3);
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = -1;
  *(a4 + 20) = 0;
  *(a4 + 24) = 0;
  return this;
}

EQKit::StemStretch::Glyph *EQKit::StemStretch::Glyph::Glyph(EQKit::StemStretch::Glyph *this, const EQKit::StemStretch::Key *a2, const EQKit::StemStretch::Config::Entry *a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = *(a2 + 3);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  if (*a2)
  {
    v6 = CTFontCreateWithName(*a2, *(a2 + 1), 0);
  }

  else
  {
    v6 = 0;
  }

  *(this + 1) = EQKitPath::newPathFromGlyphWithFont(*(a2 + 8), v6, a3);
  if (!a3)
  {
    goto LABEL_9;
  }

  if (*a3)
  {
    Size = CTFontGetSize(v6);
    *(this + 2) = EQKitLength::resolveToAbsoluteWithSizeAndRule(a3, Size, *(a2 + 3));
  }

  v8 = *(a3 + 16) & 3;
  if (v8 == 2)
  {
    v9 = EQKit::StemStretch::Glyph::analyzeMirrorCurve(this, a3);
LABEL_11:
    if (v9)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v8 == 1)
  {
LABEL_9:
    v9 = EQKit::StemStretch::Glyph::analyzeParallelStems(this, a3);
    goto LABEL_11;
  }

LABEL_12:
  *this = 0;
  v10 = *(this + 1);
  if (v10)
  {
    EQKitPath::~EQKitPath(v10);
    MEMORY[0x259C7CB70]();
  }

  *(this + 1) = 0;
LABEL_15:
  if (v6)
  {
    CFRelease(v6);
  }

  return this;
}

void sub_258256638(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 + 48);
  if (v4)
  {
    *(v2 + 56) = v4;
    operator delete(v4);
  }

  std::vector<EQKit::StemStretch::FeatureCluster>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t EQKit::StemStretch::Glyph::analyzeParallelStems(EQKit::StemStretch::Glyph *this, const EQKit::StemStretch::Config::Entry *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    EQKit::StemStretch::FeatureRange::FeatureRange(v4, v2, 1);
  }

  return 0;
}

void sub_258256940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  EQKit::StemStretch::FeatureRange::~FeatureRange(va);
  _Unwind_Resume(a1);
}

BOOL EQKit::StemStretch::Glyph::analyzeMirrorCurve(EQKit::StemStretch::Glyph *this, const EQKit::StemStretch::Config::Entry *a2)
{
  if (a2)
  {
    v3 = (*(a2 + 16) >> 2) & 3;
  }

  else
  {
    v3 = 0;
  }

  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    return 0;
  }

  v32 = 0.0;
  CurveMirrorParallelWithAxis = EQKitPath::findCurveMirrorParallelWithAxis(v5, v4, &v32);
  v7 = CurveMirrorParallelWithAxis != 0x7FFFFFFFFFFFFFFFLL;
  if (CurveMirrorParallelWithAxis != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = CurveMirrorParallelWithAxis;
    v9 = EQKitPath::endPointIndexForElement(*(this + 1), CurveMirrorParallelWithAxis);
    v10 = EQKitPath::addLineToAfterElement(*(this + 1), v8);
    v11 = *(this + 1);
    EQKitPath::extractPath(v11);
    v12 = (*(v11 + 1) + 16 * v9);
    v13 = *v12;
    v14 = v12[1];
    v30 = 0;
    v31 = 0;
    v29 = &v30;
    std::vector<EQKit::StemStretch::FeatureCluster>::push_back[abi:ne200100](this + 3, &v29);
    std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(&v29, v30);
    v30 = 0;
    v31 = 0;
    v29 = &v30;
    std::vector<EQKit::StemStretch::FeatureCluster>::push_back[abi:ne200100](this + 3, &v29);
    std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(&v29, v30);
    v15 = *(this + 3);
    v16 = *(this + 4);
    v29 = 0;
    v17 = *(this + 7);
    if (v17 >= *(this + 8))
    {
      v18 = std::vector<EQKit::StemStretch::Stem>::__emplace_back_slow_path<EQKit::StemStretch::Stem>(this + 48, &v29);
    }

    else
    {
      *v17 = 0;
      v18 = (v17 + 1);
    }

    *(this + 7) = v18;
    v19 = *(this + 1);
    EQKitPath::extractPath(v19);
    *this = v4;
    v20 = *(v19 + 2) - *(v19 + 1);
    if (v20)
    {
      v21 = 0;
      v22 = 0;
      v23 = v16 - 24;
      v24 = v20 >> 4;
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      do
      {
        if (v9 == v22)
        {
          if (v32 <= 0.0)
          {
            v29 = v9;
            goto LABEL_31;
          }

          v29 = v9;
        }

        else if (v10 == v22)
        {
          if (v32 > 0.0)
          {
            v29 = v10;
LABEL_31:
            v27 = v23;
            goto LABEL_32;
          }

          v29 = v10;
        }

        else
        {
          v26 = *(v19 + 1);
          if (v3 > 1)
          {
            if (*(v26 + v21 + 8) > v14)
            {
LABEL_30:
              v29 = v22;
              goto LABEL_31;
            }
          }

          else if (*(v26 + v21) > v13)
          {
            goto LABEL_30;
          }

          v29 = v22;
        }

        v27 = v15;
LABEL_32:
        std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(v27, &v29);
        ++v22;
        v21 += 16;
      }

      while (v25 != v22);
    }
  }

  return v7;
}

void EQKit::StemStretch::Glyph::~Glyph(EQKit::StemStretch::Glyph *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    EQKitPath::~EQKitPath(v2);
    MEMORY[0x259C7CB70]();
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = (this + 24);
  std::vector<EQKit::StemStretch::FeatureCluster>::__destroy_vector::operator()[abi:ne200100](&v4);
}

BOOL EQKit::StemStretch::FeatureRange::analyze(EQKit::StemStretch::FeatureRange *this, double a2)
{
  v4 = 0;
  v96 = *MEMORY[0x277D85DE8];
  v5 = *(this + 2);
  __p = 0;
  v90 = 0;
  v91 = 0;
  v6 = (this + 16);
  v7 = MEMORY[0x277CBF348];
  v80 = v5;
  while (1)
  {
    v8 = *this;
    EQKitPath::extractPath(*this);
    if (v4 >= (*(v8 + 40) - *(v8 + 32)) >> 4)
    {
      break;
    }

    v87 = *v7;
    v88 = v87;
    if (EQKitPath::elementMinMax(*this, v4, &v88, &v87))
    {
      p_y = &v88.y;
      if (v5 == 1)
      {
        p_y = &v88;
      }

      x = p_y->x;
      v12 = &v87.y;
      if (v5 == 1)
      {
        v12 = &v87;
      }

      v13 = v12->x;
      v85 = 0;
      v86 = 0;
      if (EQKitPath::isLineTo(*this, v4, &v86, &v85, 0))
      {
        v14 = EQKitPath::vector(*this, v86, v85);
        if (v5 == 1)
        {
          v14 = v15;
        }

        v16 = v14 == 0.0;
      }

      else
      {
        v16 = 0;
      }

      if (x > v13)
      {
        __assert_rtn("analyze", "EQKitStemStretch.mm", 532, "min <= max");
      }

      v17 = *(this + 3);
      if (v17 != v6)
      {
        v18 = 0;
        v19 = *(this + 3);
        do
        {
          ++v18;
          v19 = *(v19 + 8);
        }

        while (v19 != v6);
        v20 = *(this + 3);
        do
        {
          v21 = v18 >> 1;
          v22 = v20;
          if (v18 != 1)
          {
            v23 = v21 + 1;
            v22 = v20;
            do
            {
              v22 = *(*&v22 + 8);
              --v23;
            }

            while (v23 > 1);
          }

          if (*(*&v22 + 24) < x)
          {
            v20 = *(*&v22 + 8);
            v21 = v18 + ~v21;
          }

          v18 = v21;
        }

        while (v21);
        if (x >= v13 || *&v20 == v6)
        {
          v33 = x != v13 || *&v20 == v6;
          if (!v33 && !v16)
          {
            v34 = 0;
            v81 = x;
            v82 = v13;
            v83 = 1;
            v84 = 0uLL;
            do
            {
              v35 = &v92 + v34;
              *v35 = xmmword_2582D01D0;
              *(v35 + 4) = 0;
              *(v35 + 3) = 0;
              *(v35 + 4) = 0;
              v34 += 40;
            }

            while (v34 != 120);
            v36 = EQKit::StemStretch::FeatureRange::Span::split(*&v20 + 16, &v81, &v92);
            if (v36)
            {
              if (v36 != 1)
              {
                std::list<EQKit::StemStretch::FeatureRange::Span>::insert();
              }

              v37 = *&v20;
              if ((*&v20 + 16) != &v92)
              {
                *(*&v20 + 16) = v92;
                *(*&v20 + 32) = v93;
                *(*&v20 + 40) = v94;
                v37 = *&v20;
                *(*&v20 + 48) = v95;
              }

              EQKit::StemStretch::FeatureRange::collapse(this, v37, *&v20);
            }

            v5 = v80;
          }
        }

        else
        {
          if (x < *(*&v20 + 16) && *&v20 != v17)
          {
            v20 = **&v20;
          }

          if (v16)
          {
            v25 = 2;
          }

          else
          {
            v25 = 1;
          }

          v81 = x;
          v82 = v13;
          v83 = v25;
          v84 = 0uLL;
          if (v16)
          {
            v26 = &v88.y;
            if (v5 != 1)
            {
              v26 = &v88;
            }

            *&v84 = v26->x;
            std::vector<EQKit::StemStretch::FeatureRange::Span>::push_back[abi:ne200100](&__p, &v81);
          }

          if (*&v20 != v6)
          {
            v27 = 0;
            v28 = v20;
            while (*(*&v28 + 16) < v13)
            {
              for (i = 0; i != 120; i += 40)
              {
                v30 = &v92 + i;
                *v30 = xmmword_2582D01D0;
                *(v30 + 4) = 0;
                *(v30 + 3) = 0;
                *(v30 + 4) = 0;
              }

              v31 = EQKit::StemStretch::FeatureRange::Span::split(*&v28 + 16, &v81, &v92);
              if (v31)
              {
                if (v31 != 1)
                {
                  std::list<EQKit::StemStretch::FeatureRange::Span>::insert();
                }

                if ((*&v28 + 16) != &v92)
                {
                  *(*&v28 + 16) = v92;
                  *(*&v28 + 32) = v93;
                  *(*&v28 + 40) = v94;
                  *(*&v28 + 48) = v95;
                }

                v27 = 1;
              }

              v28 = *(*&v28 + 8);
              if (*&v28 == v6)
              {
                v28 = *&v6;
                break;
              }
            }

            v5 = v80;
            if (v27)
            {
              EQKit::StemStretch::FeatureRange::collapse(this, *&v20, *&v28);
            }
          }

          v7 = MEMORY[0x277CBF348];
        }
      }
    }

    ++v4;
  }

  v38 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v90 - __p) >> 3));
  *&v92 = EQKit::StemStretch::FeatureRange::Span::compareOrthogonal;
  if (v90 == __p)
  {
    v39 = 0;
  }

  else
  {
    v39 = v38;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*,false>(__p, v90, &v92, v39, 1, v9);
  EQKit::StemStretch::FeatureRange::collapse(this, &__p);
  v40 = *(this + 3);
  if (v40 != v6)
  {
    v41 = 0;
    while (1)
    {
      if (*(v40 + 32) == 2)
      {
        v43 = __p;
        v42 = v90;
        if (__p != v90)
        {
          v44 = 0;
          v45 = 0;
          v46 = 0;
          v47 = 0.0;
          v48 = 0.0;
          v49 = 0.0;
          v50 = __p;
          do
          {
            if (*(v40 + 24) > *v50)
            {
              v51 = v50[1];
              if (*(v40 + 16) < v51)
              {
                if (v46)
                {
                  v52 = vabdd_f64(v50[3], v46[3]);
                  if (v49 < v52)
                  {
                    v49 = v52;
                  }

                  v45 = 1;
                  v46 = 0;
                }

                else
                {
                  v46 = v50;
                }

                if (v48 >= v51)
                {
                  v48 = v50[1];
                }

                if (!v44)
                {
                  v48 = v50[1];
                }

                if (v47 < *v50 || v44 == 0)
                {
                  v47 = *v50;
                }

                ++v44;
              }
            }

            v50 += 5;
          }

          while (v50 != v90);
          if (v44)
          {
            v81 = v47;
            v82 = v48;
            v83 = 0;
            v84 = 0uLL;
            do
            {
              if (*(v40 + 24) <= *v43 || *(v40 + 16) >= v43[1])
              {
                for (j = 0; j != 120; j += 40)
                {
                  v55 = &v92 + j;
                  *v55 = xmmword_2582D01D0;
                  *(v55 + 4) = 0;
                  *(v55 + 3) = 0;
                  *(v55 + 4) = 0;
                }

                v56 = EQKit::StemStretch::FeatureRange::Span::split(&v81, v43, &v92);
                if (v56)
                {
                  v57 = &v92;
                  while (1)
                  {
                    if (*(v40 + 24) > *v57)
                    {
                      v58 = v57[1];
                      if (*(v40 + 16) < v58)
                      {
                        break;
                      }
                    }

                    v57 += 5;
                    if (!--v56)
                    {
                      goto LABEL_111;
                    }
                  }

                  if (v57 != &v81)
                  {
                    v81 = *v57;
                    v82 = v58;
                    v83 = *(v57 + 4);
                    v84 = *(v57 + 3);
                  }
                }

LABEL_111:
                v42 = v90;
              }

              v43 += 5;
            }

            while (v43 != v42);
            if (v82 >= v81)
            {
              v59 = vabdd_f64(v82, v81);
              if (((v59 >= a2) & v45) == 1)
              {
                if (v49 / (v82 - v81) < 2.0)
                {
                  goto LABEL_121;
                }
              }

              else if (v59 >= a2)
              {
LABEL_121:
                *(v40 + 48) = v59;
                goto LABEL_115;
              }
            }
          }
        }

        v41 = 1;
        *(v40 + 32) = 1;
      }

LABEL_115:
      v40 = *(v40 + 8);
      if (v40 == v6)
      {
        if (v41)
        {
          EQKit::StemStretch::FeatureRange::collapse(this, *(this + 3), v6);
        }

        break;
      }
    }
  }

  v60 = *(this + 4);
  if (v60)
  {
    v61 = *(this + 3);
    if (v61[8] || (v63 = *v61, v62 = *(v61 + 1), *(v63 + 8) = v62, *v62 = v63, *(this + 4) = v60 - 1, operator delete(v61), (v60 = *(this + 4)) != 0))
    {
      v64 = *v6;
      if (*(*v6 + 32) || (v66 = *v64, v65 = v64[1], *(v66 + 8) = v65, *v65 = v66, *(this + 4) = v60 - 1, operator delete(v64), *(this + 4)))
      {
        if (*(*(this + 3) + 32) == 2)
        {
          operator new();
        }

        if (*(*v6 + 32) == 2)
        {
          operator new();
        }
      }
    }
  }

  for (k = *(this + 3); k != v6; k = *(k + 8))
  {
    v68 = *(k + 32);
    if (v68 == 1)
    {
      EQKit::StemStretch::FeatureRange::addFeatureCluster(this, *(k + 16), *(k + 24));
    }

    else if (v68 == 2)
    {
      v69 = *(k + 48);
      *&v92 = v69;
      v70 = *(this + 9);
      if (v70 >= *(this + 10))
      {
        v71 = std::vector<EQKit::StemStretch::Stem>::__emplace_back_slow_path<EQKit::StemStretch::Stem>(this + 64, &v92);
      }

      else
      {
        *v70 = v69;
        v71 = (v70 + 1);
      }

      *(this + 9) = v71;
    }
  }

  v73 = *(this + 5);
  v72 = *(this + 6);
  v76 = this + 64;
  v74 = *(this + 8);
  v75 = *(v76 + 1);
  if (__p)
  {
    v90 = __p;
    operator delete(__p);
  }

  v77 = 0xAAAAAAAAAAAAAAABLL * ((v72 - v73) >> 3);
  return v77 > 1 && v77 == ((v75 - v74) >> 3) + 1;
}

void sub_2582574EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void EQKit::StemStretch::FeatureRange::~FeatureRange(EQKit::StemStretch::FeatureRange *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  v3 = (this + 40);
  std::vector<EQKit::StemStretch::FeatureCluster>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__list_imp<EQKit::StemStretch::FeatureRange::Span>::clear(this + 2);
}

uint64_t std::vector<EQKit::StemStretch::FeatureCluster>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<EQKit::StemStretch::FeatureCluster>::__emplace_back_slow_path<EQKit::StemStretch::FeatureCluster>(a1, a2);
  }

  else
  {
    std::set<unsigned long>::set[abi:ne200100](a1[1], a2);
    result = v3 + 24;
    a1[1] = v3 + 24;
  }

  a1[1] = result;
  return result;
}

CGPath *EQKit::StemStretch::Glyph::newPathWithLength(EQKit::StemStretch::Glyph *this, double a2, CGSize *a3)
{
  v4 = *(this + 1);
  if (!v4)
  {
    return 0;
  }

  v7 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  if (*(v4 + 120) == 1)
  {
    v9 = (v4 + 88);
  }

  else
  {
    v9 = EQKitPath::computePathBounds(v4);
  }

  v11 = v9[3];
  v12 = *this;
  if (*this == 1)
  {
    v13 = v9[2];
  }

  else
  {
    v13 = v9[3];
  }

  v14 = a2 - v13;
  if (a2 - v13 <= 0.0)
  {
    v38 = *(this + 1);
    if (*(v38 + 120) == 1)
    {
      v39 = (v38 + 88);
    }

    else
    {
      v39 = EQKitPath::computePathBounds(v38);
    }

    width = v39->width;
    height = v39->height;
    *a3 = v39[1];
    Mutable = CGPathCreateMutable();
    memset(&v43, 0, sizeof(v43));
    CGAffineTransformMakeTranslation(&v43, -width, -height);
    EQKitPath::appendToCGPath(*(this + 1), Mutable, &v43, 0);
  }

  else
  {
    v15 = *v9;
    v16 = v9[1];
    v18 = *(this + 6);
    v17 = *(this + 7);
    a3->width = v9[2];
    a3->height = v11;
    *(&a3->width + (v12 != 1)) = v13 + v14;
    v19 = *(this + 1);
    EQKitPath::extractPath(v19);
    v45 = 0;
    v46 = 0;
    __p = 0;
    std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(&__p, v19[1], v19[2], (v19[2] - v19[1]) >> 4);
    v20 = *(this + 3);
    v21 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 4) - v20) >> 3);
    v22 = v21 >= 2;
    v23 = v21 - 2;
    if (v22)
    {
      v24 = 0;
      v25 = v14 / ((v17 - v18) >> 3);
      v26 = __p;
      v27 = ((*(this + 7) - *(this + 6)) >> 3) + 1;
      v28 = 1;
      do
      {
        if (v28 == v27)
        {
          break;
        }

        if (v12 == 1)
        {
          v7 = v25 + v7;
        }

        else
        {
          v8 = v25 + v8;
        }

        v29 = (v20 + 24 * v28);
        v32 = *v29;
        v30 = v29 + 1;
        v31 = v32;
        if (v32 != v30)
        {
          do
          {
            v33 = &v26[16 * v31[4]];
            v34 = v8 + v33[1];
            *v33 = v7 + *v33;
            v33[1] = v34;
            v35 = v31[1];
            if (v35)
            {
              do
              {
                v36 = v35;
                v35 = *v35;
              }

              while (v35);
            }

            else
            {
              do
              {
                v36 = v31[2];
                v37 = *v36 == v31;
                v31 = v36;
              }

              while (!v37);
            }

            v31 = v36;
          }

          while (v36 != v30);
        }

        ++v28;
        v37 = v24++ == v23;
      }

      while (!v37);
    }

    Mutable = CGPathCreateMutable();
    memset(&v43, 0, sizeof(v43));
    CGAffineTransformMakeTranslation(&v43, -v15, -v16);
    EQKitPath::appendToCGPath(*(this + 1), Mutable, &v43, &__p);
    if (__p)
    {
      v45 = __p;
      operator delete(__p);
    }
  }

  return Mutable;
}

void sub_258257870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<EQKit::StemStretch::FeatureCluster>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 24;
        std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy((v4 - 24), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<EQKit::StemStretch::FeatureCluster>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<EQKit::StemStretch::FeatureCluster>,EQKit::StemStretch::FeatureCluster*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<EQKit::StemStretch::FeatureCluster>,EQKit::StemStretch::FeatureCluster*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<EQKit::StemStretch::FeatureCluster>,EQKit::StemStretch::FeatureCluster*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 24;
      std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void EQKit::StemStretch::FeatureRange::FeatureRange(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a1 + 16;
  *(a1 + 24) = a1 + 16;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  operator new();
}

void sub_258257A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = *(v10 + 64);
  if (v13)
  {
    *(v10 + 72) = v13;
    operator delete(v13);
  }

  a10 = (v10 + 40);
  std::vector<EQKit::StemStretch::FeatureCluster>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__list_imp<EQKit::StemStretch::FeatureRange::Span>::clear(v11);
  _Unwind_Resume(a1);
}

void *std::__list_imp<EQKit::StemStretch::FeatureRange::Span>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t std::vector<EQKit::StemStretch::FeatureRange::Span>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<EQKit::StemStretch::FeatureRange::Span>::__emplace_back_slow_path<EQKit::StemStretch::FeatureRange::Span const&>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 24) = *(a2 + 24);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t EQKit::StemStretch::FeatureRange::Span::split(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = v3 - *a2 == 0.0 && v5 == 1;
  if (!v6 && (v3 <= *a1 || v4 >= *(a1 + 8)))
  {
    return 0;
  }

  v7 = *(a1 + 16);
  if (v7 == 1 || v7 == v5)
  {
    return 0;
  }

  v11 = *a1;
  if (*a1 == v4)
  {
    v12 = *(a1 + 8);
    if (v12 == v3)
    {
      if (v5 == 1)
      {
        if (a3 != a1)
        {
          *a3 = v11;
          *(a3 + 8) = v12;
          *(a3 + 24) = *(a1 + 24);
        }

        v9 = 1;
        *(a3 + 16) = 1;
        return v9;
      }

      if (!v7)
      {
        if (a3 != a2)
        {
          *a3 = v4;
          *(a3 + 8) = v3;
          *(a3 + 16) = v5;
          *(a3 + 24) = *(a2 + 24);
        }

        return 1;
      }

      return 0;
    }
  }

  if (v11 >= v4)
  {
    v13 = 0;
  }

  else
  {
    *a3 = v11;
    *(a3 + 8) = v4;
    *(a3 + 16) = v7;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    v11 = *a1;
    v4 = *a2;
    v3 = *(a2 + 8);
    v13 = 1;
    v5 = *(a2 + 16);
  }

  if (v11 >= v4)
  {
    v4 = v11;
  }

  if (v3 >= *(a1 + 8))
  {
    v3 = *(a1 + 8);
  }

  v14 = a3 + 40 * v13;
  *v14 = v4;
  *(v14 + 8) = v3;
  *(v14 + 16) = v5;
  v9 = v13 + 1;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  v15 = *(a2 + 8);
  v16 = *(a1 + 8);
  if (v15 < v16)
  {
    v17 = *(a1 + 16);
    v18 = a3 + 40 * v9;
    *v18 = v15;
    *(v18 + 8) = v16;
    *(v18 + 16) = v17;
    v9 = v13 | 2;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
  }

  return v9;
}

void EQKit::StemStretch::FeatureRange::collapse(uint64_t a1, void **__p, double *a3)
{
  v3 = a3;
  v4 = __p;
  v6 = (a1 + 16);
  if (*(a1 + 24) != __p)
  {
    v4 = *__p;
  }

  if (v6 != a3)
  {
    v3 = *(a3 + 1);
  }

  while (v4 != v3)
  {
    v7 = v4;
    v4 = *(v4 + 1);
    if (v4 != v6)
    {
      if (v7[3] != v4[2])
      {
        EQKit::StemStretch::FeatureRange::collapse();
      }

      if (*(v7 + 8) == *(v4 + 8))
      {
        v4[2] = v7[2];
        v8 = *v7;
        *(v8 + 8) = v4;
        *v4 = v8;
        --*(a1 + 32);
        operator delete(v7);
      }
    }
  }
}

BOOL EQKit::StemStretch::FeatureRange::Span::compareOrthogonal(double *a1, double *a2)
{
  v2 = a1[3];
  v3 = a2[3];
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 == v3)
  {
    return *a1 < *a2;
  }

  return 0;
}

void EQKit::StemStretch::FeatureRange::collapse(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*a2 != v2)
  {
    do
    {
      if (v3 + 40 != v2 && *(v3 + 8) == *(v3 + 40) && *(v3 + 24) == *(v3 + 64) && *(v3 + 16) == *(v3 + 56))
      {
        *(v3 + 8) = *(v3 + 48);
        if (v3 + 80 == v2)
        {
          v2 = v3 + 40;
        }

        else
        {
          v4 = v3 + 56;
          v5 = v3 + 56;
          do
          {
            *(v4 - 16) = *(v4 + 24);
            v6 = *(v5 + 40);
            v5 += 40;
            *v4 = v6;
            *(v4 + 8) = *(v4 + 48);
            v7 = v4 + 64;
            v4 = v5;
          }

          while (v7 != v2);
          v2 = v5 - 16;
        }

        a2[1] = v2;
      }

      else
      {
        v3 += 40;
      }
    }

    while (v3 != v2);
  }
}

void EQKit::StemStretch::FeatureRange::addFeatureCluster(EQKit::StemStretch::FeatureRange *this, double a2, double a3)
{
  v6 = *(this + 2);
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  std::vector<EQKit::StemStretch::FeatureCluster>::push_back[abi:ne200100](this + 5, &v16);
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(&v16, v17[0]);
  v7 = *(this + 6);
  v8 = *this;
  EQKitPath::extractPath(v8);
  v10 = *(v8 + 1);
  v9 = *(v8 + 2);
  if (v9 != v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = v7 - 24;
    do
    {
      v14 = (v10 + v11);
      if (v6 != 1)
      {
        v14 = (v10 + v11 + 8);
      }

      if (*v14 >= a2 && *v14 <= a3)
      {
        v16 = v12;
        std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(v13, &v16);
        v10 = *(v8 + 1);
        v9 = *(v8 + 2);
      }

      ++v12;
      v11 += 16;
    }

    while (v12 < (v9 - v10) >> 4);
  }
}

uint64_t std::vector<EQKit::StemStretch::FeatureRange::Span>::__emplace_back_slow_path<EQKit::StemStretch::FeatureRange::Span const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<EQKit::StemStretch::FeatureRange::Span>>(a1, v6);
  }

  v7 = 40 * v2;
  __p = 0;
  v11 = v7;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 24) = *(a2 + 24);
  v12 = 40 * v2 + 40;
  v13 = 0;
  std::vector<EQKit::StemStretch::FeatureRange::Span>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 40) % 0x28uLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_258258108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<EQKit::StemStretch::FeatureRange::Span>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      *v6 = *v5;
      *(v6 + 16) = *(v5 + 16);
      *(v6 + 24) = *(v5 + 24);
      v5 += 40;
      v6 += 40;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<EQKit::StemStretch::FeatureRange::Span>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*,false>(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5, __n128 a6)
{
  v8 = a2;
  v9 = result;
  v50 = a2;
  v51 = result;
LABEL_2:
  v10 = 1 - a4;
  v49 = a5;
  while (1)
  {
    v11 = v8 - v9;
    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 3);
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v44 = *a3;
        v50 = (v8 - 40);
        result = (v44)();
        if (result)
        {
          v45 = &v51;
          v46 = &v50;
          return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(v45, v46);
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v50 = (v8 - 40);
      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*,0>(v9, (v9 + 40), v9 + 5, (v8 - 40), a3);
    }

    if (v12 == 5)
    {
      v50 = (v8 - 40);
      v55 = (v9 + 40);
      v56 = v9;
      v53 = (v9 + 120);
      v54 = v9 + 5;
      v52 = (v8 - 40);
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*,0>(v9, (v9 + 40), v9 + 5, (v9 + 120), a3);
      result = (*a3)((v8 - 40), (v9 + 120));
      if (result)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v53, &v52);
        result = (*a3)(v53, v9 + 5);
        if (result)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v54, &v53);
          result = (*a3)(v54, (v9 + 40));
          if (result)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v55, &v54);
            result = (*a3)(v55, v9);
            goto LABEL_93;
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v11 <= 959)
    {
      if (a5)
      {
        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*>(v9, v8, a3);
      }

      else
      {
        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*>(v9, v8, a3);
      }
    }

    if (v10 == 1)
    {
      if (v9 != v8)
      {
        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*,EQKit::StemStretch::FeatureRange::Span*>(v9, v8, v8, a3, a6);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = (v9 + 40 * (v12 >> 1));
    v15 = (v8 - 40);
    if (v11 < 0x1401)
    {
      v55 = v9;
      v56 = (v9 + 40 * (v12 >> 1));
      v54 = v15;
      v19 = (*a3)(v9, v56);
      v20 = (*a3)(v15, v9);
      if (v19)
      {
        if (v20)
        {
          v21 = &v56;
          goto LABEL_37;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v56, &v55);
        if ((*a3)(v54, v55))
        {
          v21 = &v55;
LABEL_37:
          v23 = &v54;
LABEL_38:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(v21, v23);
        }
      }

      else if (v20)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v55, &v54);
        if ((*a3)(v55, v56))
        {
          v21 = &v56;
          v23 = &v55;
          goto LABEL_38;
        }
      }

      if (a5)
      {
        goto LABEL_40;
      }

      goto LABEL_66;
    }

    v55 = (v9 + 40 * (v12 >> 1));
    v56 = v9;
    v54 = v15;
    v16 = (*a3)(v55, v9);
    v17 = (*a3)(v15, v14);
    if (v16)
    {
      if (v17)
      {
        v18 = &v56;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v56, &v55);
        if (!(*a3)(v54, v55))
        {
          goto LABEL_29;
        }

        v18 = &v55;
      }

      v22 = &v54;
      goto LABEL_28;
    }

    if (v17)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v55, &v54);
      if ((*a3)(v55, v56))
      {
        v18 = &v56;
        v22 = &v55;
LABEL_28:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(v18, v22);
      }
    }

LABEL_29:
    v24 = (v51 + 40 * v13 - 40);
    v55 = v24;
    v56 = (v51 + 40);
    v54 = v50 - 5;
    v25 = (*a3)(v24);
    v26 = (*a3)(v50 - 5, v24);
    if (v25)
    {
      if (v26)
      {
        v27 = &v56;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v56, &v55);
        if (!(*a3)(v54, v55))
        {
          goto LABEL_45;
        }

        v27 = &v55;
      }

      v28 = &v54;
      goto LABEL_44;
    }

    if (v26)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v55, &v54);
      if ((*a3)(v55, v56))
      {
        v27 = &v56;
        v28 = &v55;
LABEL_44:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(v27, v28);
      }
    }

LABEL_45:
    v29 = (v51 + 40 * v13 + 40);
    v55 = v29;
    v56 = v51 + 5;
    v54 = (v50 - 120);
    v30 = (*a3)(v29);
    v31 = (*a3)((v50 - 120), v29);
    if (v30)
    {
      if (v31)
      {
        v32 = &v56;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v56, &v55);
        if (!(*a3)(v54, v55))
        {
          goto LABEL_55;
        }

        v32 = &v55;
      }

      v33 = &v54;
      goto LABEL_54;
    }

    if (v31)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v55, &v54);
      if ((*a3)(v55, v56))
      {
        v32 = &v56;
        v33 = &v55;
LABEL_54:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(v32, v33);
      }
    }

LABEL_55:
    v34 = (v51 + 40 * v13);
    v35 = (v51 + 40 * v13 + 40);
    v55 = v34;
    v56 = (v51 + 40 * v13 - 40);
    v54 = v35;
    v36 = (*a3)(v34);
    v37 = (*a3)(v35, v34);
    if (v36)
    {
      a5 = v49;
      if (v37)
      {
        v38 = &v56;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v56, &v55);
        if (!(*a3)(v54, v55))
        {
          goto LABEL_65;
        }

        v38 = &v55;
      }

      v39 = &v54;
      goto LABEL_64;
    }

    a5 = v49;
    if (v37)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v55, &v54);
      if ((*a3)(v55, v56))
      {
        v38 = &v56;
        v39 = &v55;
LABEL_64:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(v38, v39);
      }
    }

LABEL_65:
    v56 = (v51 + 40 * v13);
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v51, &v56);
    if (a5)
    {
LABEL_40:
      v8 = v50;
      goto LABEL_67;
    }

LABEL_66:
    v8 = v50;
    if (((*a3)(v51 - 40) & 1) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,EQKit::StemStretch::FeatureRange::Span *,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&)>(v51, v50, a3);
      v9 = result;
      goto LABEL_76;
    }

LABEL_67:
    a6.n128_f64[0] = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,EQKit::StemStretch::FeatureRange::Span *,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&)>(v51, v8, a3);
    v41 = v40;
    if ((v42 & 1) == 0)
    {
      goto LABEL_74;
    }

    v43 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*>(v51, v40, a3);
    v9 = (v41 + 40);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*>((v41 + 40), v8, a3);
    if (result)
    {
      if (v43)
      {
        return result;
      }

      v50 = v41;
      v9 = v51;
      v8 = v41;
    }

    else
    {
      if (!v43)
      {
LABEL_74:
        result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*,false>(v51, v41, a3, -v10, a5 & 1, a6);
        v9 = (v41 + 40);
LABEL_76:
        a5 = 0;
        v51 = v9;
        a4 = -v10;
        goto LABEL_2;
      }

      v51 = (v41 + 40);
    }

    ++v10;
  }

  v47 = (v9 + 40);
  v50 = (v8 - 40);
  v55 = (v9 + 40);
  v56 = v9;
  v54 = (v8 - 40);
  v48 = (*a3)((v9 + 40), v9);
  result = (*a3)((v8 - 40), v47);
  if (v48)
  {
    if (result)
    {
      v45 = &v56;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v56, &v55);
      result = (*a3)(v54, v55);
      if (!result)
      {
        return result;
      }

      v45 = &v55;
    }

    v46 = &v54;
    return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(v45, v46);
  }

  if (result)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v55, &v54);
    result = (*a3)(v55, v56);
LABEL_93:
    if (result)
    {
      v45 = &v56;
      v46 = &v55;
      return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(v45, v46);
    }
  }

  return result;
}

__int128 **std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(__int128 **result, __int128 **a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = **result;
  v5 = *(*result + 4);
  v6 = *(*result + 24);
  if (*result != *a2)
  {
    *v2 = *v3;
    *(v2 + 4) = *(v3 + 4);
    *(v2 + 24) = *(v3 + 24);
  }

  *v3 = v4;
  *(v3 + 4) = v5;
  *(v3 + 24) = v6;
  return result;
}

__int128 **std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t (**a5)(__int128 *, __int128 *))
{
  v17 = a2;
  v18 = a1;
  v15 = a4;
  v16 = a3;
  v20 = a2;
  v21 = a1;
  v19 = a3;
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = &v21;
LABEL_9:
      v13 = &v19;
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v21, &v20);
    if ((*a5)(v19, v20))
    {
      v12 = &v20;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v20, &v19);
    if ((*a5)(v20, v21))
    {
      v12 = &v21;
      v13 = &v20;
LABEL_10:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(v12, v13);
    }
  }

  result = (*a5)(a4, a3);
  if (result)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v16, &v15);
    result = (*a5)(v16, a2);
    if (result)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v17, &v16);
      result = (*a5)(v17, a1);
      if (result)
      {
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v18, &v17);
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*>(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v18 = v3;
    v19 = v4;
    v6 = result;
    v7 = (result + 40);
    if ((result + 40) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v15 = *v11;
          v16 = *(v10 + 14);
          v17 = v10[4];
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            *(v13 + 40) = *(v6 + v12);
            *(v13 + 56) = *(v6 + v12 + 16);
            *(v13 + 64) = *(v6 + v12 + 24);
            if (!v12)
            {
              break;
            }

            v12 -= 40;
            result = (*a3)(&v15, v12 + v6);
            if ((result & 1) == 0)
            {
              v14 = v6 + v12 + 40;
              goto LABEL_10;
            }
          }

          v14 = v6;
LABEL_10:
          if (v14 != &v15)
          {
            *v14 = v15;
            *(v14 + 16) = v16;
            *(v14 + 24) = v17;
          }
        }

        v7 = (v11 + 40);
        v9 += 40;
        v10 = v11;
      }

      while ((v11 + 40) != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*>(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v15 = v3;
    v16 = v4;
    v6 = result;
    v7 = (result + 40);
    if ((result + 40) != a2)
    {
      v9 = result - 40;
      do
      {
        v10 = v7;
        result = (*a3)(v7, v6);
        if (result)
        {
          v12 = *v10;
          v13 = *(v6 + 14);
          v14 = v6[4];
          v11 = v9;
          do
          {
            *(v11 + 80) = *(v11 + 40);
            *(v11 + 96) = *(v11 + 56);
            *(v11 + 104) = *(v11 + 64);
            result = (*a3)(&v12, v11);
            v11 -= 40;
          }

          while ((result & 1) != 0);
          if ((v11 + 80) != &v12)
          {
            *(v11 + 80) = v12;
            *(v11 + 96) = v13;
            *(v11 + 104) = v14;
          }
        }

        v7 = (v10 + 40);
        v9 += 40;
        v6 = v10;
      }

      while ((v10 + 40) != a2);
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,EQKit::StemStretch::FeatureRange::Span *,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&)>(uint64_t a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v13 = a2;
  v10 = *a1;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  if ((*a3)(&v10, (a2 - 40)))
  {
    v5 = a1;
    do
    {
      v5 = (v5 + 40);
      v14 = v5;
    }

    while (((*a3)(&v10, v5) & 1) == 0);
  }

  else
  {
    v6 = (a1 + 40);
    do
    {
      v5 = v6;
      v14 = v6;
      if (v6 >= v13)
      {
        break;
      }

      v7 = (*a3)(&v10, v6);
      v6 = (v5 + 40);
    }

    while (!v7);
  }

  v8 = v13;
  if (v5 < v13)
  {
    do
    {
      v8 = (v8 - 40);
      v13 = v8;
    }

    while (((*a3)(&v10, v8) & 1) != 0);
    v5 = v14;
  }

  if (v5 < v8)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v14, &v13);
      do
      {
        v14 = (v14 + 40);
      }

      while (!(*a3)(&v10));
      do
      {
        v13 = (v13 - 40);
      }

      while (((*a3)(&v10) & 1) != 0);
      v5 = v14;
    }

    while (v14 < v13);
  }

  if ((v5 - 40) != a1)
  {
    *a1 = *(v5 - 40);
    *(a1 + 16) = *(v5 - 6);
    *(a1 + 24) = *(v5 - 1);
  }

  if ((v5 - 40) != &v10)
  {
    *(v5 - 40) = v10;
    *(v5 - 6) = v11;
    *(v5 - 1) = v12;
  }

  return v5;
}

double std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,EQKit::StemStretch::FeatureRange::Span *,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&)>(uint64_t a1, __int128 *a2, uint64_t (**a3)(void))
{
  v5 = 0;
  v17 = a2;
  v14 = *a1;
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  do
  {
    v5 += 40;
    v18 = (v5 + a1);
  }

  while (((*a3)() & 1) != 0);
  v7 = v17;
  if (v5 == 40)
  {
    v10 = (a1 + 40);
    do
    {
      if (v10 >= v7)
      {
        break;
      }

      v11 = *a3;
      v7 = (v7 - 40);
      v17 = v7;
    }

    while (((v11)(v7, &v14) & 1) == 0);
  }

  else
  {
    v8 = (v17 - 40);
    do
    {
      v17 = v8;
      v9 = (*a3)(v8, &v14);
      v8 = (v8 - 40);
    }

    while (!v9);
    v10 = v18;
  }

  v12 = v10;
  if (v10 < v17)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v18, &v17);
      do
      {
        v18 = (v18 + 40);
      }

      while (((*a3)() & 1) != 0);
      do
      {
        v17 = (v17 - 40);
      }

      while (!(*a3)());
      v12 = v18;
    }

    while (v18 < v17);
  }

  if ((v12 - 40) != a1)
  {
    *a1 = *(v12 - 40);
    *(a1 + 16) = *(v12 - 6);
    v6 = *(v12 - 1);
    *(a1 + 24) = v6;
  }

  if ((v12 - 40) != &v14)
  {
    *(v12 - 40) = v14;
    *(v12 - 6) = v15;
    *&v6 = v16;
    *(v12 - 1) = v16;
  }

  return *&v6;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*>(__int128 *a1, char *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v28 = a2;
  v29 = a1;
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v12 = (a1 + 40);
        v13 = (a2 - 40);
        *&v25 = a1;
        v32 = (a2 - 40);
        v33 = (a1 + 40);
        v14 = (*a3)((a1 + 40), a1);
        v15 = (*a3)(v13, v12);
        if (v14)
        {
          if (v15)
          {
            v8 = &v25;
          }

          else
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v25, &v33);
            if (!(*a3)(v32, v33))
            {
              return 1;
            }

            v8 = &v33;
          }

          v9 = &v32;
          goto LABEL_30;
        }

        if (!v15)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v33, &v32);
        v11 = (*a3)(v33, v25);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*,0>(a1, (a1 + 40), a1 + 5, (a2 - 40), a3);
        return 1;
      case 5:
        *&v25 = a1;
        v32 = a1 + 5;
        v33 = (a1 + 40);
        v10 = (a2 - 40);
        v30 = a2 - 40;
        v31 = (a1 + 120);
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*,0>(a1, (a1 + 40), a1 + 5, (a1 + 120), a3);
        if (!(*a3)(v10, (a1 + 120)))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v31, &v30);
        if (!(*a3)(v31, a1 + 5))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v32, &v31);
        if (!(*a3)(v32, (a1 + 40)))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v33, &v32);
        v11 = (*a3)(v33, a1);
        break;
      default:
        goto LABEL_16;
    }

    if (v11)
    {
      v8 = &v25;
      v9 = &v33;
      goto LABEL_30;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    v28 = a2 - 40;
    if ((v7)())
    {
      v8 = &v29;
      v9 = &v28;
LABEL_30:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(v8, v9);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v16 = a1 + 5;
  *&v25 = a1;
  v32 = a1 + 5;
  v33 = (a1 + 40);
  v17 = (*a3)((a1 + 40), a1);
  v18 = (*a3)(a1 + 5, (a1 + 40));
  if (v17)
  {
    if (v18)
    {
      v19 = &v25;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v25, &v33);
      if (!(*a3)(v32, v33))
      {
        goto LABEL_35;
      }

      v19 = &v33;
    }

    v20 = &v32;
    goto LABEL_34;
  }

  if (v18)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v33, &v32);
    if ((*a3)(v33, v25))
    {
      v19 = &v25;
      v20 = &v33;
LABEL_34:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(v19, v20);
    }
  }

LABEL_35:
  v21 = a1 + 120;
  if (v21 == a2)
  {
    return 1;
  }

  v22 = 0;
  while (1)
  {
    if ((*a3)(v21, v16))
    {
      v25 = *v21;
      v26 = *(v21 + 4);
      v27 = *(v21 + 24);
      do
      {
        v23 = v16;
        *(v16 + 40) = *v16;
        *(v16 + 14) = *(v16 + 4);
        v16[4] = *(v16 + 24);
        if (v16 == v29)
        {
          break;
        }

        v16 = (v16 - 40);
      }

      while (((*a3)(&v25, (v23 - 40)) & 1) != 0);
      if (v23 != &v25)
      {
        *v23 = v25;
        *(v23 + 4) = v26;
        *(v23 + 24) = v27;
      }

      if (++v22 == 8)
      {
        break;
      }
    }

    v16 = v21;
    v21 += 40;
    if (v21 == v28)
    {
      return 1;
    }
  }

  return v21 + 40 == v28;
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*,EQKit::StemStretch::FeatureRange::Span*>(__int128 *a1, __int128 *a2, __int128 *a3, unsigned int (**a4)(int64_t, uint64_t), __n128 a5)
{
  v26 = a1;
  if (a1 != a2)
  {
    v8 = a1;
    v9 = a2 - a1;
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 41)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v13 = (a1 + 40 * v11);
      do
      {
        a5.n128_f64[0] = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*>(v8, a4, v10, v13);
        v13 = (v13 - 40);
        --v12;
      }

      while (v12);
    }

    v25 = a2;
    v14 = a2;
    if (a2 != a3)
    {
      do
      {
        if ((*a4)(v14, v26, a5))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<EQKit::StemStretch::FeatureRange::Span *&,EQKit::StemStretch::FeatureRange::Span *&>(&v25, &v26);
          a5.n128_f64[0] = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*>(v26, a4, v10, v26);
        }

        v14 = (v25 + 40);
        v25 = v14;
      }

      while (v14 != a3);
      v8 = v26;
      v9 = a2 - v26;
    }

    if (v9 >= 41)
    {
      v15 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 3);
      v16 = a2 - 40;
      do
      {
        v18 = *v8;
        v17 = *(v8 + 1);
        v19 = *(v8 + 4);
        v21 = *(v8 + 3);
        v20 = *(v8 + 4);
        v22 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*>(v8, a4, v15);
        if (v16 == v22)
        {
          *v22 = v18;
          *(v22 + 8) = v17;
          *(v22 + 16) = v19;
          *(v22 + 24) = v21;
          *(v22 + 32) = v20;
        }

        else
        {
          *v22 = *v16;
          *(v22 + 16) = *(v16 + 4);
          *(v22 + 24) = *(v16 + 24);
          *v16 = v18;
          *(v16 + 1) = v17;
          *(v16 + 4) = v19;
          *(v16 + 3) = v21;
          *(v16 + 4) = v20;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*>(v8, v22 + 40, a4, 0xCCCCCCCCCCCCCCCDLL * ((v22 + 40 - v8) >> 3));
        }

        v16 -= 40;
      }

      while (v15-- > 2);
      return v25;
    }

    return v14;
  }

  return a3;
}

double std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*>(uint64_t a1, unsigned int (**a2)(int64_t, uint64_t), uint64_t a3, __int128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v23 = v4;
    v24 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x999999999999999ALL * ((a4 - a1) >> 3)) | 1;
      v13 = a1 + 40 * v12;
      v14 = 0x999999999999999ALL * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && (*a2)(a1 + 40 * v12, v13 + 40))
      {
        v13 += 40;
        v12 = v14;
      }

      if (((*a2)(v13, v7) & 1) == 0)
      {
        v20 = *v7;
        v21 = *(v7 + 4);
        v15 = *(v7 + 24);
        v22 = v15;
        do
        {
          v16 = v13;
          if (v7 != v13)
          {
            *v7 = *v13;
            *(v7 + 4) = *(v13 + 16);
            v15 = *(v13 + 24);
            *(v7 + 24) = v15;
          }

          if (v9 < v12)
          {
            break;
          }

          v17 = (2 * v12) | 1;
          v13 = a1 + 40 * v17;
          v18 = 2 * v12 + 2;
          if (v18 < a3 && (*a2)(a1 + 40 * v17, v13 + 40))
          {
            v13 += 40;
            v17 = v18;
          }

          v7 = v16;
          v12 = v17;
        }

        while (!(*a2)(v13, &v20));
        if (v16 != &v20)
        {
          *v16 = v20;
          *(v16 + 4) = v21;
          *&v15 = v22;
          *(v16 + 24) = v22;
        }
      }
    }
  }

  return *&v15;
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*>(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 40 * v6;
    v9 = v8 + 40;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = v8 + 80;
      if ((*a2)(v8 + 40, v8 + 80))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    if (a1 != v9)
    {
      *a1 = *v9;
      *(a1 + 16) = *(v9 + 16);
      *(a1 + 24) = *(v9 + 24);
    }

    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(EQKit::StemStretch::FeatureRange::Span const&,EQKit::StemStretch::FeatureRange::Span const&),EQKit::StemStretch::FeatureRange::Span*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v19 = v4;
    v20 = v5;
    v10 = v6 >> 1;
    v11 = a1 + 40 * (v6 >> 1);
    v12 = a2 - 40;
    if ((*a3)(v11, (a2 - 40)))
    {
      v16 = *(a2 - 40);
      v17 = *(a2 - 24);
      v13 = *(a2 - 16);
      v18 = v13;
      do
      {
        v14 = v11;
        if (v12 != v11)
        {
          *v12 = *v11;
          *(v12 + 16) = *(v11 + 16);
          v13 = *(v11 + 24);
          *(v12 + 24) = v13;
        }

        if (!v10)
        {
          break;
        }

        v10 = (v10 - 1) >> 1;
        v11 = a1 + 40 * v10;
        v12 = v14;
      }

      while (((*a3)(v11, &v16) & 1) != 0);
      if (v14 != &v16)
      {
        *v14 = v16;
        *(v14 + 16) = v17;
        *&v13 = v18;
        *(v14 + 24) = v18;
      }
    }
  }

  return *&v13;
}

uint64_t std::vector<EQKit::StemStretch::FeatureCluster>::__emplace_back_slow_path<EQKit::StemStretch::FeatureCluster>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<EQKit::StemStretch::FeatureCluster>>(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  std::set<unsigned long>::set[abi:ne200100]((24 * v2), a2);
  v15 = 24 * v2 + 24;
  v7 = a1[1];
  v8 = (24 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<EQKit::StemStretch::FeatureCluster>,EQKit::StemStretch::FeatureCluster*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<EQKit::StemStretch::FeatureCluster>::~__split_buffer(&v13);
  return v12;
}

void sub_25825994C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<EQKit::StemStretch::FeatureCluster>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<EQKit::StemStretch::FeatureCluster>,EQKit::StemStretch::FeatureCluster*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      std::set<unsigned long>::set[abi:ne200100](a4, v6);
      v6 += 24;
      a4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
    v9 = 1;
    while (v5 != a3)
    {
      std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(v5, *(v5 + 8));
      v5 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<EQKit::StemStretch::FeatureCluster>,EQKit::StemStretch::FeatureCluster*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

void **std::__split_buffer<EQKit::StemStretch::FeatureCluster>::~__split_buffer(void **a1)
{
  std::__split_buffer<EQKit::StemStretch::FeatureCluster>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<EQKit::StemStretch::FeatureCluster>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(i - 24, *(i - 16));
  }
}

uint64_t std::vector<EQKit::StemStretch::Stem>::__emplace_back_slow_path<EQKit::StemStretch::Stem>(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v7);
  }

  __p = 0;
  v11 = (8 * v2);
  *v11 = *a2;
  v12 = 8 * v2 + 8;
  v13 = 0;
  std::vector<EQKit::StemStretch::Stem>::__swap_out_circular_buffer(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_258259B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::vector<EQKit::StemStretch::Stem>::__swap_out_circular_buffer(uint64_t **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void *std::set<unsigned long>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<unsigned long>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<unsigned long>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<unsigned long>::__emplace_hint_unique_key_args<unsigned long,unsigned long const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<unsigned long>::__emplace_hint_unique_key_args<unsigned long,unsigned long const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<unsigned long>::__find_equal<unsigned long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<unsigned long>::__find_equal<unsigned long>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t EQKit::OpticalKern::Glyph::Key::Key(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void EQKit::OpticalKern::Glyph::Key::~Key(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t EQKit::OpticalKern::Glyph::Key::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    v5 = *a2;
    *a1 = *a2;
    if (v5)
    {
      CFRetain(v5);
    }

    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
  }

  return a1;
}

BOOL EQKit::OpticalKern::Glyph::Key::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v2 = *a1;
  v3 = *a2;
  if (*a1 == v3)
  {
    return 1;
  }

  result = 0;
  if (v2)
  {
    if (v3)
    {
      return CFStringCompare(v2, v3, 0) == kCFCompareEqualTo;
    }
  }

  return result;
}

EQKit::OpticalKern::Edge::Path *EQKit::OpticalKern::Edge::Path::Path(EQKit::OpticalKern::Edge::Path *this, const EQKit::OpticalKern::Glyph::Key *a2, const EQKitPath::QuantizationConfig *a3, const Config *a4)
{
  *this = *(a2 + 6);
  *(this + 1) = 4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  v7 = CTFontCreateWithName(*a2, *(a2 + 2), 0);
  memset(&matrix, 0, sizeof(matrix));
  CGAffineTransformMakeScale(&matrix, 1.0, -1.0);
  if (v7)
  {
    v8 = CTFontCreatePathForGlyph(v7, *(a2 + 4), &matrix);
  }

  else
  {
    v8 = 0;
  }

  v10[0] = 0;
  v10[1] = 0;
  EQKit::OpticalKern::Edge::Path::analyze(this, v8, a3, v10);
  CGPathRelease(v8);
  if (v7)
  {
    CFRelease(v7);
  }

  return this;
}

void sub_25825A290(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void EQKit::OpticalKern::Edge::Path::analyze(unsigned int *a1, const CGPath *a2, __int128 *a3, unint64_t ***a4)
{
  *(a1 + 2) = 0;
  v5 = (a1 + 4);
  *(a1 + 3) = 0;
  *(a1 + 7) = 0x7FF8000000000000;
  if (a2)
  {
    v8 = *a1;
    EQKitPath::EQKitPath(v40, a2);
    if (v43[32] == 1)
    {
      v9 = v43;
    }

    else
    {
      v9 = EQKitPath::computePathBounds(v40);
    }

    v11 = *v9;
    v10 = v9[1];
    v13 = v9[2];
    v12 = v9[3];
    v14 = *v9;
    v15 = v10;
    v16 = v13;
    v17 = v12;
    if ((v8 | 2) == 2)
    {
      v18 = CGRectGetMinY(*&v14) * *(a1 + 1);
      *(a1 + 2) = vcvtms_s32_f32(v18);
      v44.origin.x = v11;
      v44.origin.y = v10;
      v44.size.width = v13;
      v44.size.height = v12;
      v19 = CGRectGetMaxY(v44) * *(a1 + 1);
      v20 = ceilf(v19);
    }

    else
    {
      v21 = CGRectGetMinX(*&v14) * *(a1 + 1);
      *(a1 + 2) = vcvtms_s32_f32(v21);
      v45.origin.x = v11;
      v45.origin.y = v10;
      v45.size.width = v13;
      v45.size.height = v12;
      v22 = CGRectGetMaxX(v45) * *(a1 + 1);
      v20 = floorf(v22);
    }

    *(a1 + 3) = v20;
    v23 = v20 - *(a1 + 2);
    v37 = 0x7FF8000000000000;
    std::vector<double>::resize(a1 + 4, v23 + 1, &v37);
    v37 = *v5;
    v24 = a3[1];
    v38 = *a3;
    v39 = v24;
    v25 = *a4;
    if (*a4)
    {
      for (i = *v25; i != v25[1]; ++i)
      {
        EQKitPath::quantizeElementEdge(v40, *i, *a1, &v37, a1 + 4);
        v25 = *a4;
      }
    }

    else
    {
      EQKitPath::extractPath(v40);
      if (v42 != v41)
      {
        v27 = 0;
        if (((v42 - v41) >> 4) <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = (v42 - v41) >> 4;
        }

        do
        {
          EQKitPath::quantizeElementEdge(v40, v27++, *a1, &v37, a1 + 4);
        }

        while (v28 != v27);
      }
    }

    v29 = *(a1 + 4);
    v30 = *(a1 + 5) - v29;
    if (v30)
    {
      v31 = v30 >> 3;
      v32 = *a1 & 0xFFFFFFFE;
      if (v31 <= 1)
      {
        v31 = 1;
      }

      v33 = 1;
      do
      {
        v34 = *v29;
        if ((v33 & 1) == 0)
        {
          v35 = *(a1 + 7);
          v36 = v34 < v35;
          if (v32 == 2)
          {
            v36 = v35 < v34;
          }

          if (!v36)
          {
            v34 = *(a1 + 7);
          }
        }

        v33 = 0;
        *(a1 + 7) = v34;
        ++v29;
        --v31;
      }

      while (v31);
    }

    EQKitPath::~EQKitPath(v40);
  }

  else
  {
    v40[0] = 0x7FF8000000000000;
    std::vector<double>::resize(a1 + 4, 1uLL, v40);
  }
}

void sub_25825A558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  EQKitPath::~EQKitPath(va);
  _Unwind_Resume(a1);
}

uint64_t EQKit::OpticalKern::Edge::Path::Path(uint64_t a1, int a2, const CGPath *a3, __int128 *a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = 4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v6 = *(a5 + 8);
  v8[0] = *a5;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  EQKit::OpticalKern::Edge::Path::analyze(a1, a3, a4, v8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void sub_25825A608(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(a1, a2 - v3, a3);
  }
}

unint64_t EQKit::OpticalKern::Edge::Segment::closestBucketIndex(EQKit::OpticalKern::Edge::Segment *this, double a2)
{
  v3 = a2 - (*(*this + 24))(this);
  v4 = v3 / (*(*this + 56))(this);
  v5 = vcvtms_s32_f32(v4);
  if ((v5 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  if ((*(*this + 48))(this) <= v5)
  {
    return (*(*this + 48))(this) - 1;
  }

  return v5;
}

uint64_t EQKit::OpticalKern::Edge::Segment::isDistanceToSmallerThanThreshold(_DWORD *a1, _DWORD *a2, double *a3, _OWORD *a4, uint64_t a5, double a6)
{
  v6 = 0;
  if ((a1[2] & 0xFFFFFFFE) == 2 && a6 >= 0.0 && (a2[2] & 0xFFFFFFFE) != 2)
  {
    v14 = (*(*a2 + 40))(a2);
    if (v14 - (*(*a1 + 40))(a1) >= a6 || (v15 = (*(*a1 + 32))(a1) + a6, v15 <= (*(*a2 + 24))(a2)) || (v16 = (*(*a2 + 32))(a2) + a6, v16 <= (*(*a1 + 24))(a1)))
    {
      v6 = 0;
    }

    else
    {
      v17 = a1[2];
      v18 = (*(*a1 + 48))(a1);
      v19 = (*(*a2 + 48))(a2);
      v20 = (*(*a1 + 88))(a1, 0);
      v21 = (*(*a2 + 88))(a2, 0);
      v6 = 0;
      if (v20 < v18)
      {
        v22 = v21;
        v105 = v19;
        if (v21 < v19)
        {
          v97 = a4;
          v98 = a3;
          v23 = v17 & 0xFFFFFFFD;
          v24 = a6 * a6;
          v25 = v20;
          *&v121 = (*(*a1 + 64))(a1, v20);
          *(&v121 + 1) = v26;
          v122 = v27;
          v99 = 0;
          *&v119 = (*(*a2 + 64))(a2, v22);
          *(&v119 + 1) = v28;
          v120 = v29;
          v30 = 1.79769313e308;
          v31 = v22;
          v32 = v20;
          v33 = v31;
          v102 = v23;
          v101 = a5;
          do
          {
            v117 = *MEMORY[0x277CBF348];
            v118 = v117;
            v34 = _determineBucketDistance(&v121, &v119, v23 == 0, &v117);
            if (v34 < v24)
            {
              if (v34 < v30)
              {
                v35 = v118;
                *v97 = v117;
                v97[1] = v35;
                v30 = v34;
              }

              if (a5)
              {
                v36 = *(a5 + 8);
                v37 = *(a5 + 16);
                if (v36 >= v37)
                {
                  v40 = (v36 - *a5) >> 5;
                  v41 = v40 + 1;
                  if ((v40 + 1) >> 59)
                  {
                    std::vector<std::string>::__throw_length_error[abi:ne200100]();
                  }

                  v42 = v37 - *a5;
                  if (v42 >> 4 > v41)
                  {
                    v41 = v42 >> 4;
                  }

                  if (v42 >= 0x7FFFFFFFFFFFFFE0)
                  {
                    v43 = 0x7FFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v43 = v41;
                  }

                  if (v43)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<EQKit::OpticalKern::Edge::CGPointVector>>(a5, v43);
                  }

                  v44 = v31;
                  v45 = (32 * v40);
                  v46 = v118;
                  *v45 = v117;
                  v45[1] = v46;
                  v39 = 32 * v40 + 32;
                  v47 = *(a5 + 8) - *a5;
                  v48 = v45 - v47;
                  memcpy(v45 - v47, *a5, v47);
                  v49 = *a5;
                  *a5 = v48;
                  *(a5 + 8) = v39;
                  *(a5 + 16) = 0;
                  if (v49)
                  {
                    operator delete(v49);
                  }

                  v31 = v44;
                }

                else
                {
                  v38 = v118;
                  *v36 = v117;
                  v36[1] = v38;
                  v39 = (v36 + 2);
                }

                *(a5 + 8) = v39;
                v23 = v102;
              }

              if (*&v119 < *&v121)
              {
                v50 = v120;
                v51 = *(&v121 + 1);
                v52 = v122 > *(&v119 + 1) && v120 > *(&v121 + 1);
                if (!v52)
                {
                  if (v122 >= *(&v119 + 1))
                  {
                    if (v23)
                    {
                      v53 = v120;
                      v50 = *&v119;
                      v54 = *(&v121 + 1);
                      v51 = *&v121;
                    }

                    else
                    {
                      v53 = *&v119;
                      v54 = *&v121;
                    }
                  }

                  else
                  {
                    if (v23)
                    {
                      v53 = *(&v119 + 1);
                    }

                    else
                    {
                      v53 = *&v119;
                    }

                    if (v23)
                    {
                      v50 = *&v119;
                    }

                    else
                    {
                      v50 = *(&v119 + 1);
                    }

                    if (v23)
                    {
                      v54 = v122;
                    }

                    else
                    {
                      v54 = *&v121;
                    }

                    if (v23)
                    {
                      v51 = *&v121;
                    }

                    else
                    {
                      v51 = v122;
                    }
                  }

                  *&v117 = v54;
                  *(&v117 + 1) = v51;
                  *&v118 = v53;
                  *(&v118 + 1) = v50;
                }
              }

              v55 = (*&v118 - *&v117) * (*&v118 - *&v117);
              if (!v23)
              {
                v55 = (*(&v118 + 1) - *(&v117 + 1)) * (*(&v118 + 1) - *(&v117 + 1));
              }

              v56 = *&v121 + sqrt(v24 - v55) - *&v119;
              if (*v98 >= v56)
              {
                v56 = *v98;
              }

              *v98 = v56;
              v99 = 1;
            }

            v57 = (*(*a1 + 88))(a1, v25 + 1);
            v104 = v31;
            v58 = (*(*a2 + 88))(a2, v31 + 1);
            v31 = v58;
            if (v57 >= v18 || v58 >= v105)
            {
              if (v57 < v18)
              {
                *&v121 = (*(*a1 + 64))(a1, v57);
                *(&v121 + 1) = v81;
                v122 = v82;
                v31 = v104;
              }

              else
              {
                if (v58 >= v105)
                {
                  break;
                }

                *&v119 = (*(*a2 + 64))(a2, v58);
                *(&v119 + 1) = v60;
                v120 = v61;
                v57 = v25;
              }

              v62 = v105;
            }

            else
            {
              v103 = v25;
              v52 = v32 > v25;
              v62 = v105;
              if (!v52)
              {
                v63 = *&v121;
                v32 = v57;
                do
                {
                  if ((*(*a1 + 72))(a1, v32) > v63)
                  {
                    break;
                  }

                  v32 = (*(*a1 + 88))(a1, v32 + 1);
                }

                while (v32 < v18);
              }

              if (v33 <= v104)
              {
                v64 = *&v119;
                v33 = v31;
                do
                {
                  if ((*(*a2 + 72))(a2, v33) < v64)
                  {
                    break;
                  }

                  v33 = (*(*a2 + 88))(a2, v33 + 1);
                }

                while (v33 < v105);
              }

              *&v115 = (*(*a1 + 64))(a1, v57);
              *(&v115 + 1) = v65;
              v116 = v66;
              *&v113 = (*(*a2 + 64))(a2, v31);
              *(&v113 + 1) = v67;
              v114 = v68;
              v69 = _determineBucketDistance(&v121, &v113, v23 == 0, v112);
              if (v33 >= v105)
              {
                v100 = v33;
                a5 = v101;
              }

              else
              {
                *&v106 = (*(*a2 + 64))(a2, v33);
                *(&v106 + 1) = v70;
                *&v107 = v71;
                v110 = *MEMORY[0x277CBF348];
                v111 = v110;
                v72 = _determineBucketDistance(&v121, &v106, v23 == 0, &v110);
                if (v72 >= v69)
                {
                  v73 = v69;
                  v78 = v33;
                  a5 = v101;
                }

                else
                {
                  v73 = v72;
                  if (v32 >= v18)
                  {
                    v74 = v103;
                  }

                  else
                  {
                    v74 = v32;
                  }

                  (*(*a1 + 64))(a1, v74);
                  v76 = (*(*a2 + 80))(a2, v75);
                  if (v31 <= v76)
                  {
                    v77 = v76;
                  }

                  else
                  {
                    v77 = v31;
                  }

                  v78 = v33;
                  if (v77 < v33)
                  {
                    *&v106 = (*(*a2 + 64))(a2, v77);
                    *(&v106 + 1) = v79;
                    *&v107 = v80;
                    v73 = _determineBucketDistance(&v121, &v106, v102 == 0, &v110);
                    v78 = v77;
                  }

                  a5 = v101;
                  if (v73 >= v69)
                  {
                    v73 = v69;
                  }

                  else
                  {
                    v114 = *&v107;
                    v112[0] = v110;
                    v112[1] = v111;
                    v113 = v106;
                    v31 = v78;
                  }
                }

                v100 = v78;
                v69 = v73;
              }

              v23 = v102;
              v83 = _determineBucketDistance(&v115, &v119, v102 == 0, &v110);
              if (v32 < v18)
              {
                *&v108 = (*(*a1 + 64))(a1, v32);
                *(&v108 + 1) = v84;
                v109 = v85;
                v106 = *MEMORY[0x277CBF348];
                v107 = v106;
                v86 = _determineBucketDistance(&v108, &v119, v102 == 0, &v106);
                if (v86 >= v83)
                {
                  a5 = v101;
                  v23 = v102;
                }

                else
                {
                  v87 = v86;
                  if (v100 >= v105)
                  {
                    v88 = v104;
                  }

                  else
                  {
                    v88 = v100;
                  }

                  (*(*a2 + 64))(a2, v88);
                  v90 = (*(*a1 + 80))(a1, v89);
                  if (v57 <= v90)
                  {
                    v91 = v90;
                  }

                  else
                  {
                    v91 = v57;
                  }

                  v92 = v32;
                  v23 = v102;
                  if (v91 < v32)
                  {
                    *&v108 = (*(*a1 + 64))(a1, v91);
                    *(&v108 + 1) = v93;
                    v109 = v94;
                    v87 = _determineBucketDistance(&v108, &v119, v102 == 0, &v106);
                    v92 = v91;
                  }

                  a5 = v101;
                  if (v87 < v83)
                  {
                    v115 = v108;
                    v116 = v109;
                    v110 = v106;
                    v111 = v107;
                    v57 = v92;
                    v83 = v87;
                  }
                }
              }

              if (v69 <= v83)
              {
                v119 = v113;
                v120 = v114;
                v57 = v103;
              }

              else
              {
                v121 = v115;
                v122 = v116;
                v31 = v104;
              }
            }

            v95 = v57 >= v18 || v31 >= v62;
            v25 = v57;
          }

          while (!v95);
          v6 = v99;
        }
      }
    }
  }

  return v6 & 1;
}

double EQKit::OpticalKern::Edge::PathSegment::minOrthogonal(EQKit::OpticalKern::Edge::PathSegment *this)
{
  v1 = *(this + 6);
  if (!v1)
  {
    return 0.0;
  }

  v2 = *(v1 + 16);
  return *(this + 4) + v2 * (*(*this + 56))(this);
}

double EQKit::OpticalKern::Edge::PathSegment::maxOrthogonal(EQKit::OpticalKern::Edge::PathSegment *this)
{
  v1 = *(this + 6);
  if (!v1)
  {
    return 0.0;
  }

  v2 = *(v1 + 24);
  return *(this + 4) + v2 * (*(*this + 56))(this);
}

double EQKit::OpticalKern::Edge::PathSegment::closestOffset(EQKit::OpticalKern::Edge::PathSegment *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    return *(this + 5) + *(v1 + 56) * *(this + 8);
  }

  else
  {
    return 0.0;
  }
}

uint64_t EQKit::OpticalKern::Edge::PathSegment::bucketCount(EQKit::OpticalKern::Edge::PathSegment *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    return *(v1 + 24) - *(v1 + 16) + 1;
  }

  else
  {
    return 1;
  }
}

double EQKit::OpticalKern::Edge::PathSegment::bucketLength(EQKit::OpticalKern::Edge::PathSegment *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    return *(this + 8) * (1.0 / *(v1 + 8));
  }

  else
  {
    return 1.0;
  }
}

double EQKit::OpticalKern::Edge::PathSegment::bucket(EQKit::OpticalKern::Edge::PathSegment *this, uint64_t a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    return *(this + 5) + *(*(v2 + 32) + 8 * a2) * *(this + 8);
  }

  else
  {
    return 0.0;
  }
}

double EQKit::OpticalKern::Edge::PathSegment::offset(EQKit::OpticalKern::Edge::PathSegment *this, uint64_t a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    return *(this + 5) + *(*(v2 + 32) + 8 * a2) * *(this + 8);
  }

  else
  {
    return 0.0;
  }
}

uint64_t EQKit::OpticalKern::Edge::PathSegment::nextValidBucket(EQKit::OpticalKern::Edge::PathSegment *this, uint64_t a2)
{
  if (!*(this + 6))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return a2;
}

void EQKit::OpticalKern::Edge::PathSegment::appendToCGPath(EQKit::OpticalKern::Edge::PathSegment *this, CGPath *a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    v5 = *v2;
    v6 = *(v2 + 1);
    v7 = *(this + 8);
    memset(&v29, 0, sizeof(v29));
    CGAffineTransformMakeTranslation(&v29, *(this + 2), *(this + 3));
    v8 = *(v2 + 2);
    if (v8 <= *(v2 + 3))
    {
      v9 = 0;
      v10 = v7 * (1.0 / v6);
      v11 = 0.0;
      do
      {
        v12 = *(v2 + 2);
        v13 = __OFSUB__(v8, v12);
        v14 = v8 - v12;
        if (v14 < 0 != v13 || (v15 = *(v2 + 4), v14 >= ((*(v2 + 5) - v15) >> 3)))
        {
          v16 = 1.79769313e308;
          if ((*v2 & 0xFFFFFFFE) == 2)
          {
            v16 = -1.79769313e308;
          }
        }

        else
        {
          v16 = *(v15 + 8 * v14);
        }

        v17 = v16 * *(this + 8);
        if ((v9 & 1) == 0)
        {
          v20 = v8;
          if ((v5 | 2) == 2)
          {
            CGPathMoveToPoint(a2, &v29, v17, v10 * v20);
            v21 = v8 + 1;
            v22 = v10 * (v8 + 1);
            v23 = a2;
            v24 = v17;
          }

          else
          {
            CGPathMoveToPoint(a2, &v29, v10 * v20, v17);
            v21 = v8 + 1;
            v24 = v10 * (v8 + 1);
            v23 = a2;
            v22 = v17;
          }

          CGPathAddLineToPoint(v23, &v29, v24, v22);
          v9 = 1;
          v11 = v17;
          goto LABEL_22;
        }

        v18 = v5 | 2;
        if (v17 == v11)
        {
          if (v18 != 2)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v19 = v8;
          if (v18 != 2)
          {
            CGPathAddLineToPoint(a2, &v29, v10 * v19, v17);
LABEL_20:
            v21 = v8 + 1;
            v27 = v10 * (v8 + 1);
            v26 = a2;
            v25 = v17;
            goto LABEL_21;
          }

          CGPathAddLineToPoint(a2, &v29, v17, v10 * v19);
        }

        v21 = v8 + 1;
        v25 = v10 * (v8 + 1);
        v26 = a2;
        v27 = v17;
LABEL_21:
        CGPathAddLineToPoint(v26, &v29, v27, v25);
        v9 = 1;
LABEL_22:
        v2 = *(this + 6);
        v28 = v8 < *(v2 + 3);
        v8 = v21;
      }

      while (v28);
    }
  }
}

double EQKit::OpticalKern::Edge::ParallelSegment::bucketLength(EQKit::OpticalKern::Edge::ParallelSegment *this)
{
  result = *(this + 6);
  if (result <= 0.0)
  {
    return 1.0;
  }

  return result;
}

double EQKit::OpticalKern::Edge::ParallelSegment::bucket(EQKit::OpticalKern::Edge::ParallelSegment *this)
{
  v1 = *(this + 5);
  (*(*this + 56))(this);
  return v1;
}

void EQKit::OpticalKern::Edge::ParallelSegment::appendToCGPath(CGFloat *this, CGMutablePathRef path)
{
  if (path)
  {
    if ((*(this + 2) | 2) == 2)
    {
      CGPathMoveToPoint(path, 0, this[5], this[4]);
      v4 = this[5];
      v5 = this[4] + this[6];
    }

    else
    {
      CGPathMoveToPoint(path, 0, this[4], this[5]);
      v5 = this[5];
      v4 = this[4] + this[6];
    }

    CGPathAddLineToPoint(path, 0, v4, v5);
  }
}

uint64_t EQKit::OpticalKern::Edge::Composite::Composite(uint64_t a1, int **a2, uint64_t a3, uint64_t **a4)
{
  v4 = a1;
  v5 = *(a2 + 6);
  *(a1 + 8) = 0;
  *a1 = v5;
  v6 = 0uLL;
  *(a1 + 16) = 0u;
  v7 = *a2;
  if (*a2 != a2[1])
  {
    v8 = *(a2 + 6);
    do
    {
      v9 = *v7;
      if (*v7 == 1)
      {
        EQKit::OpticalKern::Spec::Entry::copyPath(v7);
        operator new();
      }

      if (v9 == 2)
      {
        v10 = *(v7 + 4);
        if (a4 && v10)
        {
          LOWORD(matrix.b) = *(v7 + 20);
          matrix.c = 12.0;
          LODWORD(matrix.d) = v8;
          *&matrix.a = CTFontCopyPostScriptName(v10);
          EQKitCache<EQKit::OpticalKern::Glyph::Key,std::shared_ptr<EQKit::OpticalKern::Edge::Path>,std::shared_ptr<EQKit::OpticalKern::Edge::Path const>>::lookup(a4, &matrix, v17);
          v17[0] = 0;
          v17[1] = 0;
          EQKit::OpticalKern::Glyph::Key::~Key(&matrix);
          goto LABEL_14;
        }

        if (v10)
        {
          CopyWithAttributes = CTFontCreateCopyWithAttributes(*(v7 + 4), 12.0, 0, 0);
          if (CopyWithAttributes)
          {
            memset(&matrix, 0, sizeof(matrix));
            CGAffineTransformMakeScale(&matrix, 1.0, -1.0);
            CTFontCreatePathForGlyph(CopyWithAttributes, *(v7 + 20), &matrix);
            operator new();
          }

LABEL_14:
          operator new();
        }
      }

      else if (v9 == 3)
      {
        operator new();
      }

      v7 += 18;
    }

    while (v7 != a2[1]);
    v6 = *(a1 + 8);
    v4 = a1;
  }

  v12 = 126 - 2 * __clz((*(&v6 + 1) - v6) >> 4);
  v17[0] = _compareSegmentsMinOrthogonal;
  if (*(&v6 + 1) == v6)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,false>(v6, *(&v6 + 1), v17, v13, 1);
  return v4;
}

void sub_25825BCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = a12;
  std::vector<std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void sub_25825BDD0()
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  if (v0)
  {
    MEMORY[0x259C7CB70](v2, 0x1080C4076FF3075);
  }

  JUMPOUT(0x25825BDB8);
}

void **std::vector<std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void EQKitCache<EQKit::OpticalKern::Glyph::Key,std::shared_ptr<EQKit::OpticalKern::Edge::Path>,std::shared_ptr<EQKit::OpticalKern::Edge::Path const>>::lookup(uint64_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  pthread_rwlock_rdlock((a1 + 9));
  v6 = std::__hash_table<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::__unordered_map_hasher<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::hash<EQKit::OpticalKern::Glyph::Key>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,true>,std::__unordered_map_equal<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,std::hash<EQKit::OpticalKern::Glyph::Key>,true>,std::allocator<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>>>::find<EQKit::OpticalKern::Glyph::Key>(a1 + 1, a2);
  v7 = v6;
  if (v6)
  {
    v6[8] = **a1;
    v8 = v6[6];
    v9 = v6[7];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *a3 = v8;
    a3[1] = v9;
  }

  else
  {
    v9 = 0;
  }

  pthread_rwlock_unlock((a1 + 9));
  if (!v7 && (a1[34][2])())
  {
    pthread_rwlock_wrlock((a1 + 9));
    v10 = std::__hash_table<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::__unordered_map_hasher<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::hash<EQKit::OpticalKern::Glyph::Key>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,true>,std::__unordered_map_equal<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,std::hash<EQKit::OpticalKern::Glyph::Key>,true>,std::allocator<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>>>::find<EQKit::OpticalKern::Glyph::Key>(a1 + 1, a2);
    if (v10)
    {
      v10[8] = **a1;
      v11 = v10[6];
      v12 = v10[7];
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v15 = **a1;
      v13 = std::__hash_table<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::__unordered_map_hasher<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::hash<EQKit::OpticalKern::Glyph::Key>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,true>,std::__unordered_map_equal<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,std::hash<EQKit::OpticalKern::Glyph::Key>,true>,std::allocator<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>>>::__emplace_unique_key_args<EQKit::OpticalKern::Glyph::Key,std::piecewise_construct_t const&,std::tuple<EQKit::OpticalKern::Glyph::Key const&>,std::tuple<>>(a1 + 1, a2);
      v14 = v13[7];
      v13[6] = 0;
      v13[7] = 0;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      v13[8] = v15;
      if (a1[4] > a1[7])
      {
        *(a1 + 48) = 1;
      }

      v11 = 0;
      v12 = 0;
    }

    *a3 = v11;
    a3[1] = v12;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    pthread_rwlock_unlock((a1 + 9));
  }
}

void sub_25825C0B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _compareSegmentsMinOrthogonal(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    if (*a2)
    {
      v4 = (*(*result + 24))(result);
      return v4 < (*(**a2 + 24))();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t EQKit::OpticalKern::Edge::Composite::isDistanceSmallerThanThreshold(int *a1, uint64_t a2, double *a3, double *a4, uint64_t a5, double a6)
{
  v6 = *a1;
  *a3 = 0.0;
  v7 = *(a1 + 1);
  if (v7 == *(a1 + 2))
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v28 = v6 & 0xFFFFFFFD;
    v14 = MEMORY[0x277CBF348];
    do
    {
      v26 = v7;
      v16 = *v7;
      v15 = *(v7 + 8);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = v15;
      for (i = *(a2 + 8); i != *(a2 + 16); i += 16)
      {
        v18 = *i;
        v19 = *(i + 8);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v29 = *v14;
        v30 = v29;
        if (v16 && v18 && EQKit::OpticalKern::Edge::Segment::isDistanceToSmallerThanThreshold(v16, v18, a3, &v29, a5, a6))
        {
          if ((v13 & 1) == 0 || (!v28 ? (v20 = *&v30 - *&v29, v21 = a4[2], v22 = *a4) : (v20 = *(&v30 + 1) - *(&v29 + 1), v21 = a4[3], v22 = a4[1]), v20 < v21 - v22))
          {
            v23 = v30;
            *a4 = v29;
            *(a4 + 1) = v23;
          }

          v13 = 1;
        }

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      v7 = v26 + 16;
    }

    while (v26 + 16 != *(a1 + 2));
  }

  return v13 & 1;
}

void sub_25825C314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

CGMutablePathRef EQKit::OpticalKern::Edge::Composite::newPathForEdge(EQKit::OpticalKern::Edge::Composite *this)
{
  Mutable = CGPathCreateMutable();
  if (Mutable)
  {
    for (i = *(this + 1); i != *(this + 2); i += 2)
    {
      v4 = *i;
      v5 = i[1];
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v4)
      {
        (*(*v4 + 16))(v4, Mutable);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }

  return Mutable;
}

void sub_25825C3E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void EQKit::OpticalKern::Edge::PathSegment::~PathSegment(EQKit::OpticalKern::Edge::PathSegment *this)
{
  *this = &unk_28696A648;
  v1 = *(this + 7);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_28696A648;
  v1 = *(this + 7);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x259C7CB70);
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_2582D01E0)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_2582D01E0)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

double _determineBucketDistance(double *a1, double *a2, int a3, double *a4)
{
  v4 = a2[1];
  v5 = a2[2];
  v7 = a1[1];
  v6 = a1[2];
  if (v6 > v4 && v5 > v7)
  {
    if (v7 >= v4)
    {
      v4 = a1[1];
    }

    if (v5 < v6)
    {
      v6 = a2[2];
    }

    v28 = v6 + v4;
    v27 = v28 * 0.5;
    v25 = *a1;
    if (a3)
    {
      v24 = *a1;
    }

    else
    {
      v24 = v28 * 0.5;
    }

    if (a3)
    {
      v25 = v27;
      v26 = *a2;
    }

    else
    {
      v26 = v27;
    }

    if (!a3)
    {
      v27 = *a2;
    }
  }

  else
  {
    if (a3)
    {
      v9 = *a1;
    }

    else
    {
      v9 = a1[1];
    }

    if (a3)
    {
      v10 = a1[1];
    }

    else
    {
      v10 = *a1;
    }

    if (a3)
    {
      v11 = *a2;
    }

    else
    {
      v11 = a2[2];
    }

    if (a3)
    {
      v12 = a2[2];
    }

    else
    {
      v12 = *a2;
    }

    if (a3)
    {
      v13 = *a2;
    }

    else
    {
      v13 = a2[1];
    }

    if (a3)
    {
      v14 = a2[1];
    }

    else
    {
      v14 = *a2;
    }

    if (a3)
    {
      v15 = *a1;
    }

    else
    {
      v15 = a1[2];
    }

    if (a3)
    {
      v16 = a1[2];
    }

    else
    {
      v16 = *a1;
    }

    if (v6 < v4)
    {
      v9 = v15;
      v10 = v16;
      v11 = v13;
      v12 = v14;
    }

    if (a3)
    {
      v17 = *a2;
    }

    else
    {
      v17 = a2[2];
    }

    if (a3)
    {
      v18 = a2[2];
    }

    else
    {
      v18 = *a2;
    }

    if (a3)
    {
      v19 = *a2;
    }

    else
    {
      v19 = a1[1];
    }

    if (a3)
    {
      v20 = *a2;
    }

    else
    {
      v7 = *a2;
      v20 = a2[1];
    }

    if (a3)
    {
      v21 = a2[1];
    }

    else
    {
      v21 = *a2;
    }

    if (a3)
    {
      v5 = *a2;
      v22 = a1[2];
    }

    else
    {
      v22 = *a2;
    }

    v23 = v6 < v4;
    if (v6 < v4)
    {
      v24 = v5;
    }

    else
    {
      v24 = v19;
    }

    if (v23)
    {
      v25 = v22;
    }

    else
    {
      v25 = v7;
    }

    if (v23)
    {
      v26 = v20;
    }

    else
    {
      v26 = v17;
    }

    if (v23)
    {
      v27 = v21;
    }

    else
    {
      v27 = v18;
    }

    if (*a2 >= *a1)
    {
      v24 = v9;
      v25 = v10;
      v26 = v11;
      v27 = v12;
    }
  }

  *a4 = v24;
  a4[1] = v25;
  a4[2] = v26;
  a4[3] = v27;
  result = (v27 - v25) * (v27 - v25) + (v26 - v24) * (v26 - v24);
  if (*a2 < *a1 && a2[2] > a1[1] && a1[2] > a2[1])
  {
    return -result;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<EQKit::OpticalKern::Edge::CGPointVector>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,false>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3uLL:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,0>(v9, v9 + 2, a2 - 2, a3);
          return;
        case 4uLL:
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,0>(v9, v9 + 2, v9 + 4, a2 - 2, a3);
          return;
        case 5uLL:
          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,0>(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2, a3);
          return;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v23 = *a3;
        v24 = *(a2 - 1);
        v35 = *(a2 - 2);
        v36 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v25 = v9[1];
        v33 = *v9;
        v34 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = v23(&v35, &v33);
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        if (v26)
        {
          v27 = *v9;
          *v9 = *(a2 - 2);
          *(a2 - 2) = v27;
          v28 = v9[1];
          v9[1] = *(a2 - 1);
          *(a2 - 1) = v28;
        }

        return;
      }
    }

    if (v12 <= 23)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(v9, a2, a3);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      break;
    }

    v13 = v12 >> 1;
    v14 = &v9[2 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,0>(&v9[2 * (v12 >> 1)], v9, a2 - 2, a3);
      if (a5)
      {
        goto LABEL_25;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,0>(v9, &v9[2 * (v12 >> 1)], a2 - 2, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,0>(v9 + 2, v14 - 2, a2 - 4, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,0>(v9 + 4, &v9[2 * v13 + 2], a2 - 6, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,0>(v14 - 2, v14, &v9[2 * v13 + 2], a3);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      if (a5)
      {
        goto LABEL_25;
      }
    }

    v16 = *a3;
    v17 = *(v9 - 1);
    v31 = *(v9 - 2);
    v32 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v9[1];
    v29 = *v9;
    v30 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v16(&v31, &v29);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if ((v19 & 1) == 0)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const> *,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>)>(v9, a2, a3);
      goto LABEL_30;
    }

LABEL_25:
    v20 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const> *,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>)>(v9, a2, a3);
    if ((v21 & 1) == 0)
    {
      goto LABEL_28;
    }

    v22 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(v9, v20, a3);
    v9 = v20 + 2;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(v20 + 2, a2, a3))
    {
      a4 = -v11;
      a2 = v20;
      if (v22)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v22)
    {
LABEL_28:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,false>(a1, v20, a3, -v11, a5 & 1);
      v9 = v20 + 2;
LABEL_30:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v9 != a2)
  {
    std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(v9, a2, a2, a3);
  }
}

void sub_25825CC40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,0>(void *a1, void *a2, void *a3, uint64_t (**a4)(uint64_t *, uint64_t *))
{
  v8 = *a4;
  v10 = (a2 + 1);
  v9 = a2[1];
  v55 = *a2;
  v56 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = (a1 + 1);
  v11 = a1[1];
  v53 = *a1;
  v54 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v8(&v55, &v53);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  v14 = *a4;
  v15 = (a3 + 1);
  if (v13)
  {
    v16 = *v15;
    v43 = *a3;
    v44 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = a2[1];
    v41 = *a2;
    v42 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v14(&v43, &v41);
    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    }

    v19 = *a1;
    if (v18)
    {
      *a1 = *a3;
      *a3 = v19;
    }

    else
    {
      *a1 = *a2;
      *a2 = v19;
      v30 = a1[1];
      a1[1] = a2[1];
      a2[1] = v30;
      v31 = *a4;
      v32 = a3[1];
      v39 = *a3;
      v40 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        v30 = *v10;
      }

      v37 = *a2;
      v38 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v33 = v31(&v39, &v37);
      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }

      if (!v33)
      {
        return 1;
      }

      v34 = *a2;
      *a2 = *a3;
      *a3 = v34;
      v12 = v10;
    }

    v10 = (a3 + 1);
LABEL_50:
    v35 = *v12;
    *v12 = *v10;
    *v10 = v35;
    return 1;
  }

  v20 = *v15;
  v51 = *a3;
  v52 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = a2[1];
  v49 = *a2;
  v50 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = v14(&v51, &v49);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  if (v22)
  {
    v23 = *a2;
    *a2 = *a3;
    *a3 = v23;
    v24 = a2[1];
    a2[1] = a3[1];
    a3[1] = v24;
    v25 = *a4;
    v26 = a2[1];
    v47 = *a2;
    v48 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v27 = a1[1];
    v45 = *a1;
    v46 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v28 = v25(&v47, &v45);
    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    }

    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    if (!v28)
    {
      return 1;
    }

    v29 = *a1;
    *a1 = *a2;
    *a2 = v29;
    goto LABEL_50;
  }

  return 0;
}

void sub_25825CF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (**a5)(uint64_t *, uint64_t *))
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,0>(a1, a2, a3, a5);
  v10 = *a5;
  v11 = a4[1];
  v38 = *a4;
  v39 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a3[1];
  v36 = *a3;
  v37 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v10(&v38, &v36);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (v13)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    v15 = a3[1];
    a3[1] = a4[1];
    a4[1] = v15;
    v16 = *a5;
    v17 = a3[1];
    v34 = *a3;
    v35 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = a2[1];
    v32 = *a2;
    v33 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v16(&v34, &v32);
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    if (v19)
    {
      v20 = *a2;
      *a2 = *a3;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a5;
      v23 = a2[1];
      v30 = *a2;
      v31 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = a1[1];
      v28 = *a1;
      v29 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = v22(&v30, &v28);
      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      if (v25)
      {
        v26 = *a1;
        *a1 = *a2;
        *a2 = v26;
        v27 = a1[1];
        a1[1] = a2[1];
        a2[1] = v27;
      }
    }
  }
}

void sub_25825D1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t *, uint64_t *))
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,0>(a1, a2, a3, a4, a6);
  v12 = *a6;
  v13 = a5[1];
  v50 = *a5;
  v51 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a4[1];
  v48 = *a4;
  v49 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v12(&v50, &v48);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  if (v15)
  {
    v16 = *a4;
    *a4 = *a5;
    *a5 = v16;
    v17 = a4[1];
    a4[1] = a5[1];
    a5[1] = v17;
    v18 = *a6;
    v19 = a4[1];
    v46 = *a4;
    v47 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = a3[1];
    v44 = *a3;
    v45 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = v18(&v46, &v44);
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }

    if (v21)
    {
      v22 = *a3;
      *a3 = *a4;
      *a4 = v22;
      v23 = a3[1];
      a3[1] = a4[1];
      a4[1] = v23;
      v24 = *a6;
      v25 = a3[1];
      v42 = *a3;
      v43 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = a2[1];
      v40 = *a2;
      v41 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = v24(&v42, &v40);
      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
      }

      if (v27)
      {
        v28 = *a2;
        *a2 = *a3;
        *a3 = v28;
        v29 = a2[1];
        a2[1] = a3[1];
        a3[1] = v29;
        v30 = *a6;
        v31 = a2[1];
        v38 = *a2;
        v39 = v31;
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v32 = a1[1];
        v36 = *a1;
        v37 = v32;
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v33 = v30(&v38, &v36);
        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }

        if (v33)
        {
          v34 = *a1;
          *a1 = *a2;
          *a2 = v34;
          v35 = a1[1];
          a1[1] = a2[1];
          a2[1] = v35;
        }
      }
    }
  }
}

void sub_25825D478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  if (a1 == a2)
  {
    return;
  }

  v5 = a1 + 2;
  if (a1 + 2 == a2)
  {
    return;
  }

  v7 = 0;
  v8 = a1;
  do
  {
    v9 = v8;
    v8 = v5;
    v10 = *a3;
    v11 = v9[3];
    v31 = v9[2];
    v32 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v9[1];
    v29 = *v9;
    v30 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = v10(&v31, &v29);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (!v13)
    {
      goto LABEL_32;
    }

    v14 = *v8;
    v15 = v9[3];
    v16 = v7;
    *v8 = 0;
    v8[1] = 0;
    while (1)
    {
      v17 = a1 + v16;
      v18 = *(a1 + v16);
      *v17 = 0;
      *(v17 + 1) = 0;
      v19 = *(a1 + v16 + 24);
      *(v17 + 1) = v18;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if (!v16)
      {
        v23 = a1;
        goto LABEL_30;
      }

      v20 = *a3;
      v27 = v14;
      v28 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = *(a1 + v16 - 8);
      v25 = *(a1 + v16 - 16);
      v26 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = v20(&v27, &v25);
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if (!v28)
      {
        break;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      if ((v22 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_27:
      v16 -= 16;
    }

    if (v22)
    {
      goto LABEL_27;
    }

LABEL_29:
    v23 = (a1 + v16);
LABEL_30:
    v24 = v23[1];
    *v23 = v14;
    v23[1] = v15;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

LABEL_32:
    v5 = v8 + 2;
    v7 += 16;
  }

  while (v8 + 2 != a2);
}

void sub_25825D684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 2;
    if (a1 + 2 != a2)
    {
      v7 = (a1 + 3);
      do
      {
        v8 = v4;
        v4 = v5;
        v9 = *a3;
        v10 = v8[3];
        v28 = v8[2];
        v29 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = v8[1];
        v26 = *v8;
        v27 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = v9(&v28, &v26);
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }

        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        if (v12)
        {
          v13 = *v4;
          v14 = v8[3];
          v15 = v7;
          *v4 = 0;
          v4[1] = 0;
          do
          {
            v16 = *(v15 - 3);
            *(v15 - 3) = 0;
            *(v15 - 2) = 0;
            v17 = *v15;
            *(v15 - 1) = v16;
            if (v17)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v17);
            }

            v18 = *a3;
            v24 = v13;
            v25 = v14;
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v19 = *(v15 - 4);
            v22 = *(v15 - 5);
            v23 = v19;
            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v20 = v18(&v24, &v22);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v23);
            }

            if (v25)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v25);
            }

            v15 -= 2;
          }

          while ((v20 & 1) != 0);
          v21 = *v15;
          *(v15 - 1) = v13;
          *v15 = v14;
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }
        }

        v5 = v4 + 2;
        v7 += 2;
      }

      while (v4 + 2 != a2);
    }
  }
}

void sub_25825D838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const> *,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v7 = *a1;
  v6 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v8 = *a3;
  v56 = v7;
  v57 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 - 1);
  v54 = *(a2 - 2);
  v55 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v8(&v56, &v54);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  if (v10)
  {
    i = a1;
    do
    {
      v12 = *a3;
      v52 = v7;
      v53 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = i[3];
      v50 = i[2];
      v51 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = v12(&v52, &v50);
      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }

      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      }

      i += 2;
    }

    while ((v14 & 1) == 0);
  }

  else
  {
    for (i = a1 + 2; i < v4; i += 2)
    {
      v15 = *a3;
      v48 = v7;
      v49 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = i[1];
      v46 = *i;
      v47 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = v15(&v48, &v46);
      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      }

      if (v17)
      {
        break;
      }
    }
  }

  if (i < v4)
  {
    do
    {
      v18 = *a3;
      v44 = v7;
      v45 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = *(v4 - 1);
      v42 = *(v4 - 2);
      v43 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = v18(&v44, &v42);
      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
      }

      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      v4 -= 2;
    }

    while ((v20 & 1) != 0);
  }

  while (i < v4)
  {
    v21 = *i;
    *i = *v4;
    *v4 = v21;
    v22 = i[1];
    i[1] = v4[1];
    v4[1] = v22;
    do
    {
      v23 = *a3;
      v40 = v7;
      v41 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = i[3];
      v38 = i[2];
      v39 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = v23(&v40, &v38);
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      i += 2;
    }

    while (!v25);
    do
    {
      v26 = *a3;
      v36 = v7;
      v37 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = *(v4 - 1);
      v34 = *(v4 - 2);
      v35 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = v26(&v36, &v34);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      v4 -= 2;
    }

    while ((v28 & 1) != 0);
  }

  v29 = (i - 2);
  if (i - 2 != a1)
  {
    v30 = *v29;
    *v29 = 0;
    *(i - 1) = 0;
    v31 = a1[1];
    *a1 = v30;
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }
  }

  v32 = *(i - 1);
  *(i - 2) = v7;
  *(i - 1) = v6;
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  return i;
}

void sub_25825DB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v29 = *(v27 - 104);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = *(v27 - 88);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const> *,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = 0;
  v8 = *a1;
  v7 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  do
  {
    v9 = *a3;
    v10 = a1[v6 + 3];
    v56 = a1[v6 + 2];
    v57 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v54 = v8;
    v55 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v9(&v56, &v54);
    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }

    v6 += 2;
  }

  while ((v11 & 1) != 0);
  v12 = &a1[v6];
  if (v6 == 2)
  {
    if (v12 < a2)
    {
      for (a2 -= 2; ; a2 -= 2)
      {
        v17 = *a3;
        v18 = a2[1];
        v52 = *a2;
        v53 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v50 = v8;
        v51 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v19 = v17(&v52, &v50);
        if (v51)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v51);
        }

        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        }

        v20 = v12 >= a2 ? 1 : v19;
        if (v20)
        {
          break;
        }
      }
    }
  }

  else
  {
    do
    {
      v14 = *(a2 - 2);
      v13 = *(a2 - 1);
      a2 -= 2;
      v15 = *a3;
      v48 = v14;
      v49 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v46 = v8;
      v47 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = v15(&v48, &v46);
      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      }
    }

    while ((v16 & 1) == 0);
  }

  if (v12 >= a2)
  {
    v21 = &a1[v6];
  }

  else
  {
    v21 = &a1[v6];
    v22 = a2;
    do
    {
      v23 = *v21;
      *v21 = *v22;
      *v22 = v23;
      v24 = v21[1];
      v21[1] = v22[1];
      v22[1] = v24;
      do
      {
        v26 = v21[2];
        v25 = v21[3];
        v21 += 2;
        v27 = *a3;
        v44 = v26;
        v45 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v42 = v8;
        v43 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = v27(&v44, &v42);
        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        }

        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }
      }

      while ((v28 & 1) != 0);
      do
      {
        v30 = *(v22 - 2);
        v29 = *(v22 - 1);
        v22 -= 2;
        v31 = *a3;
        v40 = v30;
        v41 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v38 = v8;
        v39 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v32 = v31(&v40, &v38);
        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }

        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        }
      }

      while (!v32);
    }

    while (v21 < v22);
  }

  v33 = (v21 - 2);
  if (v21 - 2 != a1)
  {
    v34 = *v33;
    *v33 = 0;
    *(v21 - 1) = 0;
    v35 = a1[1];
    *a1 = v34;
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }
  }

  v36 = *(v21 - 1);
  *(v21 - 2) = v8;
  *(v21 - 1) = v7;
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  return v21 - 2;
}

void sub_25825DF08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v6 = (a2 - a1) >> 4;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a3;
        v8 = *(a2 - 1);
        v44 = *(a2 - 2);
        v45 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = a1[1];
        v42 = *a1;
        v43 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = v7(&v44, &v42);
        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        }

        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }

        if (v10)
        {
          v11 = *a1;
          *a1 = *(v4 - 2);
          *(v4 - 2) = v11;
          v12 = a1[1];
          a1[1] = *(v4 - 1);
          *(v4 - 1) = v12;
        }

        return 1;
      }

      goto LABEL_19;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,0>(a1, a1 + 2, a2 - 2, a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
      return 1;
  }

LABEL_19:
  v13 = a1 + 4;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,0>(a1, a1 + 2, a1 + 4, a3);
  v14 = a1 + 6;
  if (a1 + 6 == v4)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  v32 = v4;
  while (1)
  {
    v17 = *a3;
    v18 = v14[1];
    v40 = *v14;
    v41 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v13[1];
    v38 = *v13;
    v39 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = v17(&v40, &v38);
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    if (v20)
    {
      v33 = v16;
      v21 = *v14;
      v22 = v14[1];
      v23 = v15;
      *v14 = 0;
      v14[1] = 0;
      while (1)
      {
        v24 = a1 + v23;
        v25 = *(a1 + v23 + 32);
        *(v24 + 4) = 0;
        *(v24 + 5) = 0;
        v26 = *(a1 + v23 + 56);
        *(v24 + 3) = v25;
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        if (v23 == -32)
        {
          break;
        }

        v27 = *a3;
        v36 = v21;
        v37 = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = *(a1 + v23 + 24);
        v34 = *(a1 + v23 + 16);
        v35 = v28;
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v29 = v27(&v36, &v34);
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
          if ((v29 & 1) == 0)
          {
            v13 = (a1 + v23 + 32);
            goto LABEL_46;
          }
        }

        else if (!v29)
        {
          goto LABEL_46;
        }

        v13 -= 2;
        v23 -= 16;
      }

      v13 = a1;
LABEL_46:
      v30 = v13[1];
      *v13 = v21;
      v13[1] = v22;
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      v16 = v33 + 1;
      v4 = v32;
      if (v33 == 7)
      {
        return v14 + 2 == v32;
      }
    }

    v13 = v14;
    v15 += 16;
    v14 += 2;
    if (v14 == v4)
    {
      return 1;
    }
  }
}

void sub_25825E290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t *, uint64_t *))
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *a4;
        v14 = v12[1];
        v23 = *v12;
        v24 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = a1[1];
        v21 = *a1;
        v22 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = v13(&v23, &v21);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        if (v16)
        {
          v17 = *v12;
          *v12 = *a1;
          *a1 = v17;
          v18 = v12[1];
          v12[1] = a1[1];
          a1[1] = v18;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(a1, v6, a4, v8);
        v6 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

void sub_25825E464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(uint64_t a1, uint64_t (**a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return;
  }

  v5 = a4;
  v6 = a1;
  v36 = v4 >> 1;
  if ((v4 >> 1) < (a4 - a1) >> 4)
  {
    return;
  }

  v9 = (a4 - a1) >> 3;
  v10 = v9 + 1;
  v11 = (a1 + 16 * (v9 + 1));
  v12 = v9 + 2;
  if (v9 + 2 < a3)
  {
    v13 = *a2;
    v50 = *v11;
    if (*(&v50 + 1))
    {
      atomic_fetch_add_explicit((*(&v50 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(v11 + 3);
    v48 = *(v11 + 2);
    v49 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = v13(&v50, &v48);
    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    if (*(&v50 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v50 + 1));
      if ((v15 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (v15)
    {
LABEL_12:
      ++v11;
      v10 = v12;
    }
  }

LABEL_13:
  v16 = *a2;
  v17 = *(v11 + 1);
  v46 = *v11;
  v47 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v5[1];
  v44 = *v5;
  v45 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = v16(&v46, &v44);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if ((v19 & 1) == 0)
  {
    v20 = v5[1];
    v35 = *v5;
    *v5 = 0;
    v5[1] = 0;
    v21 = v6;
    while (1)
    {
      v22 = v11;
      v23 = *v11;
      *v11 = 0;
      *(v11 + 1) = 0;
      v24 = v5[1];
      *v5 = v23;
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (v36 < v10)
      {
LABEL_48:
        v34 = v22[1];
        *v22 = v35;
        v22[1] = v20;
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        return;
      }

      v25 = 2 * v10;
      v10 = (2 * v10) | 1;
      v11 = (v6 + 16 * v10);
      v26 = v25 + 2;
      if (v25 + 2 < a3)
      {
        v27 = *a2;
        v28 = *v11;
        v43 = v28;
        if (*(&v28 + 1))
        {
          atomic_fetch_add_explicit((*(&v28 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v29 = *(v11 + 3);
        v41 = *(v11 + 2);
        v42 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v30 = v27(&v43, &v41);
        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }

        if (!*(&v43 + 1))
        {
          if (!v30)
          {
            goto LABEL_36;
          }

LABEL_35:
          ++v11;
          v10 = v26;
          goto LABEL_36;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v43 + 1));
        if (v30)
        {
          goto LABEL_35;
        }
      }

LABEL_36:
      v31 = *a2;
      v32 = *(v11 + 1);
      v39 = *v11;
      v40 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v37 = v35;
      v38 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v33 = v31(&v39, &v37);
      v6 = v21;
      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }

      v5 = v22;
      if (v33)
      {
        goto LABEL_48;
      }
    }
  }
}

void sub_25825E738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (*(v24 - 88))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v24 - 88));
  }

  _Unwind_Resume(exception_object);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(uint64_t *a1, uint64_t a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(a1, a3, a4);
    v10 = v9;
    if (v9 == (a2 - 16))
    {
      v15 = v9[1];
      *v10 = v8;
      v10[1] = v7;
      if (v15)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    else
    {
      v11 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v12 = v9[1];
      *v10 = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v13 = (v10 + 2);
      v14 = *(a2 - 8);
      *(a2 - 16) = v8;
      *(a2 - 8) = v7;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(a1, v13, a3, (v13 - a1) >> 4);
    }
  }
}

void sub_25825E8AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(void *a1, uint64_t (**a2)(uint64_t *, uint64_t *), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[2 * v6];
    v9 = v8 + 2;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 >= a3)
    {
      goto LABEL_12;
    }

    v12 = *a2;
    v13 = v8[3];
    v23 = v8[2];
    v24 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = v8[4];
    v14 = v8[5];
    v16 = v8 + 4;
    v21 = v15;
    v22 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = v12(&v23, &v21);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      if ((v17 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_11:
      v9 = v16;
      v6 = v11;
      goto LABEL_12;
    }

    if (v17)
    {
      goto LABEL_11;
    }

LABEL_12:
    v18 = *v9;
    *v9 = 0;
    v9[1] = 0;
    v19 = a1[1];
    *a1 = v18;
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

void sub_25825E9E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, uint64_t *), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = (a1 + 16 * (v4 >> 1));
    v10 = *a3;
    v11 = *v9;
    v29 = v11;
    if (*(&v11 + 1))
    {
      atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v12 = *(a2 - 8);
    v13 = (a2 - 16);
    v27 = *(a2 - 16);
    v28 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = v10(&v29, &v27);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (*(&v29 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
    }

    if (v14)
    {
      v16 = *(a2 - 16);
      v15 = *(a2 - 8);
      *v13 = 0;
      v13[1] = 0;
      do
      {
        v17 = v9;
        v18 = *v9;
        *v9 = 0;
        v9[1] = 0;
        v19 = v13[1];
        *v13 = v18;
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 16 * v8);
        v20 = *a3;
        v21 = *v9;
        v26 = v21;
        if (*(&v21 + 1))
        {
          atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v24 = v16;
        v25 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = v20(&v26, &v24);
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        if (*(&v26 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
        }

        v13 = v17;
      }

      while ((v22 & 1) != 0);
      v23 = v17[1];
      *v17 = v16;
      v17[1] = v15;
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }
    }
  }
}

void sub_25825EB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_25825ED2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>::shared_ptr[abi:ne200100]<EQKit::OpticalKern::Edge::ParallelSegment,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<EQKit::OpticalKern::Edge::ParallelSegment *,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>::__shared_ptr_default_delete<EQKit::OpticalKern::Edge::Segment const,EQKit::OpticalKern::Edge::ParallelSegment>,std::allocator<EQKit::OpticalKern::Edge::ParallelSegment>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C7CB70);
}

uint64_t std::__shared_ptr_pointer<EQKit::OpticalKern::Edge::ParallelSegment *,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>::__shared_ptr_default_delete<EQKit::OpticalKern::Edge::Segment const,EQKit::OpticalKern::Edge::ParallelSegment>,std::allocator<EQKit::OpticalKern::Edge::ParallelSegment>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<EQKit::OpticalKern::Edge::ParallelSegment *,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>::__shared_ptr_default_delete<EQKit::OpticalKern::Edge::Segment const,EQKit::OpticalKern::Edge::ParallelSegment>,std::allocator<EQKit::OpticalKern::Edge::ParallelSegment>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_25825EEB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<EQKit::OpticalKern::Edge::Path>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<EQKit::OpticalKern::Edge::Path *,std::shared_ptr<EQKit::OpticalKern::Edge::Path>::__shared_ptr_default_delete<EQKit::OpticalKern::Edge::Path,EQKit::OpticalKern::Edge::Path>,std::allocator<EQKit::OpticalKern::Edge::Path>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C7CB70);
}

uint64_t std::__shared_ptr_pointer<EQKit::OpticalKern::Edge::Path *,std::shared_ptr<EQKit::OpticalKern::Edge::Path>::__shared_ptr_default_delete<EQKit::OpticalKern::Edge::Path,EQKit::OpticalKern::Edge::Path>,std::allocator<EQKit::OpticalKern::Edge::Path>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<EQKit::OpticalKern::Edge::Path>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 32);
    if (v2)
    {
      *(a2 + 40) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x259C7CB70);
  }
}

void sub_25825F01C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>::shared_ptr[abi:ne200100]<EQKit::OpticalKern::Edge::ParallelSegment,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<EQKit::OpticalKern::Edge::PathSegment *,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>::__shared_ptr_default_delete<EQKit::OpticalKern::Edge::Segment const,EQKit::OpticalKern::Edge::PathSegment>,std::allocator<EQKit::OpticalKern::Edge::PathSegment>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C7CB70);
}

uint64_t std::__shared_ptr_pointer<EQKit::OpticalKern::Edge::PathSegment *,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>::__shared_ptr_default_delete<EQKit::OpticalKern::Edge::Segment const,EQKit::OpticalKern::Edge::PathSegment>,std::allocator<EQKit::OpticalKern::Edge::PathSegment>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<EQKit::OpticalKern::Edge::PathSegment *,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>::__shared_ptr_default_delete<EQKit::OpticalKern::Edge::Segment const,EQKit::OpticalKern::Edge::PathSegment>,std::allocator<EQKit::OpticalKern::Edge::PathSegment>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__hash_table<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::__unordered_map_hasher<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::hash<EQKit::OpticalKern::Glyph::Key>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,true>,std::__unordered_map_equal<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,std::hash<EQKit::OpticalKern::Glyph::Key>,true>,std::allocator<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>>>::find<EQKit::OpticalKern::Glyph::Key>(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = CFHash(v4);
  }

  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4 ^ *(a2 + 24) ^ (*(a2 + 8) << 16);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4 ^ *(a2 + 24) ^ (*(a2 + 8) << 16);
    if (v6 >= *&v5)
    {
      v9 = v6 % *&v5;
    }
  }

  else
  {
    v9 = v6 & (*&v5 - 1);
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
      if (v12 == v6)
      {
        if (EQKit::OpticalKern::Glyph::Key::operator==((v11 + 2), a2))
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

void *std::__hash_table<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::__unordered_map_hasher<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::hash<EQKit::OpticalKern::Glyph::Key>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,true>,std::__unordered_map_equal<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,std::hash<EQKit::OpticalKern::Glyph::Key>,true>,std::allocator<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>>>::__emplace_unique_key_args<EQKit::OpticalKern::Glyph::Key,std::piecewise_construct_t const&,std::tuple<EQKit::OpticalKern::Glyph::Key const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = CFHash(v4);
  }

  v5 = *(a2 + 8) << 16;
  v6 = v4 ^ *(a2 + 24);
  v7 = v6 ^ v5;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_20;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6 ^ v5;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = v7 & (*&v8 - 1);
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_20:
    std::__hash_table<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::__unordered_map_hasher<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::hash<EQKit::OpticalKern::Glyph::Key>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,true>,std::__unordered_map_equal<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,std::hash<EQKit::OpticalKern::Glyph::Key>,true>,std::allocator<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<EQKit::OpticalKern::Glyph::Key const&>,std::tuple<>>();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_20;
    }

LABEL_19:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  if (!EQKit::OpticalKern::Glyph::Key::operator==((v13 + 2), a2))
  {
    goto LABEL_19;
  }

  return v13;
}

void sub_25825F46C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key const,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,0>((v2 + 16));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::pair<EQKit::OpticalKern::Glyph::Key const,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>::pair[abi:ne200100]<EQKit::OpticalKern::Glyph::Key const&>(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key const,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,0>(EQKit::OpticalKern::Glyph::Key *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  EQKit::OpticalKern::Glyph::Key::~Key(this);
}

void sub_25825F650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<EQKit::OpticalKern::Edge::Path>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<EQKit::OpticalKern::Edge::Path *,std::shared_ptr<EQKit::OpticalKern::Edge::Path const>::__shared_ptr_default_delete<EQKit::OpticalKern::Edge::Path const,EQKit::OpticalKern::Edge::Path>,std::allocator<EQKit::OpticalKern::Edge::Path>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C7CB70);
}

uint64_t std::__shared_ptr_pointer<EQKit::OpticalKern::Edge::Path *,std::shared_ptr<EQKit::OpticalKern::Edge::Path const>::__shared_ptr_default_delete<EQKit::OpticalKern::Edge::Path const,EQKit::OpticalKern::Edge::Path>,std::allocator<EQKit::OpticalKern::Edge::Path>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void EQKit::OpticalKern::Spec::Entry::~Entry(EQKit::OpticalKern::Spec::Entry *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

EQKit::OpticalKern::Spec::Entry *EQKit::OpticalKern::Spec::Entry::Entry(EQKit::OpticalKern::Spec::Entry *this, CGPoint a2, const CGPath *a3)
{
  *this = 1;
  *(this + 8) = a2;
  *(this + 3) = a3;
  *(this + 4) = 0;
  *(this + 20) = -1;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  if (a3)
  {
    CFRetain(a3);
  }

  return this;
}

void sub_25825F7B8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

EQKit::OpticalKern::Spec::Entry *EQKit::OpticalKern::Spec::Entry::Entry(EQKit::OpticalKern::Spec::Entry *this, CGPoint a2, const __CTFont *a3, __int16 a4)
{
  *this = 2;
  *(this + 8) = a2;
  *(this + 3) = 0;
  *(this + 4) = a3;
  *(this + 20) = a4;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  if (a3)
  {
    CFRetain(a3);
  }

  return this;
}

void sub_25825F81C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

EQKit::OpticalKern::Spec::Entry *EQKit::OpticalKern::Spec::Entry::Entry(EQKit::OpticalKern::Spec::Entry *this, const EQKit::OpticalKern::Spec::Entry *a2)
{
  *this = *a2;
  *(this + 8) = *(a2 + 8);
  v4 = *(a2 + 3);
  v3 = *(a2 + 4);
  *(this + 3) = v4;
  *(this + 4) = v3;
  *(this + 20) = *(a2 + 20);
  *(this + 6) = *(a2 + 6);
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (v4)
  {
    CFRetain(v4);
    v3 = *(this + 4);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  return this;
}

void sub_25825F89C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

CGPathRef EQKit::OpticalKern::Spec::Entry::copyPath(EQKit::OpticalKern::Spec::Entry *this)
{
  if (*(this + 3))
  {
    v3 = *(this + 3);

    return CFRetain(v3);
  }

  else
  {
    v8 = v1;
    v9 = v2;
    v5 = *(this + 4);
    if (!v5)
    {
      return 0;
    }

    v6 = *(this + 20);
    if (v6 == 0xFFFF)
    {
      return 0;
    }

    else
    {
      memset(&v7, 0, sizeof(v7));
      CGAffineTransformMakeScale(&v7, 1.0, -1.0);
      return CTFontCreatePathForGlyph(v5, v6, &v7);
    }
  }
}

void EQKit::OpticalKern::Spec::appendEntry(EQKit::OpticalKern::Spec *this, CGPoint a2, const CGPath *a3)
{
  EQKit::OpticalKern::Spec::Entry::Entry(v4, a2, a3);
  std::vector<EQKit::OpticalKern::Spec::Entry>::push_back[abi:ne200100](this, v4);
  EQKit::OpticalKern::Spec::Entry::~Entry(v4);
}

void sub_25825F984(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::OpticalKern::Spec::Entry::~Entry(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<EQKit::OpticalKern::Spec::Entry>::push_back[abi:ne200100](uint64_t a1, const EQKit::OpticalKern::Spec::Entry *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<EQKit::OpticalKern::Spec::Entry>::__emplace_back_slow_path<EQKit::OpticalKern::Spec::Entry>(a1, a2);
  }

  else
  {
    EQKit::OpticalKern::Spec::Entry::Entry(*(a1 + 8), a2);
    result = v3 + 72;
    *(a1 + 8) = v3 + 72;
  }

  *(a1 + 8) = result;
  return result;
}

void EQKit::OpticalKern::Spec::appendEntry(EQKit::OpticalKern::Spec *this, CGPoint a2, const __CTFont *a3, __int16 a4)
{
  EQKit::OpticalKern::Spec::Entry::Entry(v5, a2, a3, a4);
  std::vector<EQKit::OpticalKern::Spec::Entry>::push_back[abi:ne200100](this, v5);
  EQKit::OpticalKern::Spec::Entry::~Entry(v5);
}

void sub_25825FA30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::OpticalKern::Spec::Entry::~Entry(va);
  _Unwind_Resume(a1);
}

void EQKit::OpticalKern::Spec::appendEntry(EQKit::OpticalKern::Spec *this, CGPoint a2, double a3)
{
  v3 = 3;
  v4 = a2;
  v5 = 0;
  v6 = 0;
  v7 = -1;
  v8 = a3;
  v9 = 0;
  v10 = 0;
  std::vector<EQKit::OpticalKern::Spec::Entry>::push_back[abi:ne200100](this, &v3);
  EQKit::OpticalKern::Spec::Entry::~Entry(&v3);
}

void sub_25825FA98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::OpticalKern::Spec::Entry::~Entry(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<EQKit::OpticalKern::Spec::Entry>::__emplace_back_slow_path<EQKit::OpticalKern::Spec::Entry>(uint64_t a1, const EQKit::OpticalKern::Spec::Entry *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<EQKit::OpticalKern::Spec::Entry>>(a1, v6);
  }

  v13 = 0;
  v14 = 72 * v2;
  EQKit::OpticalKern::Spec::Entry::Entry((72 * v2), a2);
  v15 = 72 * v2 + 72;
  v7 = *(a1 + 8);
  v8 = (72 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<EQKit::OpticalKern::Spec::Entry>,EQKit::OpticalKern::Spec::Entry*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<EQKit::OpticalKern::Spec::Entry>::~__split_buffer(&v13);
  return v12;
}

void sub_25825FBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<EQKit::OpticalKern::Spec::Entry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<EQKit::OpticalKern::Spec::Entry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<EQKit::OpticalKern::Spec::Entry>,EQKit::OpticalKern::Spec::Entry*>(int a1, EQKit::OpticalKern::Spec::Entry *a2, EQKit::OpticalKern::Spec::Entry *a3, EQKit::OpticalKern::Spec::Entry *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      EQKit::OpticalKern::Spec::Entry::Entry(this, v8);
      v8 = (v8 + 72);
      this = (this + 72);
      v7 -= 72;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      EQKit::OpticalKern::Spec::Entry::~Entry(v6);
      v6 = (v6 + 72);
    }
  }
}

void sub_25825FCD0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 72);
    do
    {
      EQKit::OpticalKern::Spec::Entry::~Entry(v4);
      v4 = (v5 - 72);
      v2 += 72;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<EQKit::OpticalKern::Spec::Entry>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    EQKit::OpticalKern::Spec::Entry::~Entry((i - 72));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void EQKit::Kerning::Manager::~Manager(EQKit::Kerning::Manager *this)
{
  v1 = *this;
  if (v1)
  {
    v2 = EQKitCache<EQKit::OpticalKern::Glyph::Key,std::shared_ptr<EQKit::OpticalKern::Edge::Path>,std::shared_ptr<EQKit::OpticalKern::Edge::Path const>>::~EQKitCache(v1);
    MEMORY[0x259C7CB70](v2, 0x10E0C40B27302BALL);
  }
}

void EQKit::Kerning::Manager::Manager(EQKit::Kerning::Manager *this, const EQKit::Environment::Version *a2, NSDictionary *a3)
{
  *(this + 1) = 0;
  *(this + 16) = *a2 > 1uLL;
  v5 = objc_opt_class();
  v6 = EQKitUtilDynamicCast(v5, [(NSDictionary *)a3 objectForKey:@"quantization"]);
  EQKitPath::QuantizationConfig::QuantizationConfig((this + 24), v6);
  operator new();
}

uint64_t EQKitCache<EQKit::OpticalKern::Glyph::Key,std::shared_ptr<EQKit::OpticalKern::Edge::Path>,std::shared_ptr<EQKit::OpticalKern::Edge::Path const>>::prune(uint64_t **a1)
{
  pthread_rwlock_rdlock((a1 + 9));
  v2 = *(a1 + 48);
  result = pthread_rwlock_unlock((a1 + 9));
  if (v2 == 1)
  {
    pthread_rwlock_wrlock((a1 + 9));
    if (*(a1 + 48) == 1)
    {
      v4 = **a1;
      v19 = 0;
      v5 = 0uLL;
      v18 = 0u;
      v6 = a1[3];
      if (v6)
      {
        do
        {
          v7 = v6[8];
          EQKit::OpticalKern::Glyph::Key::Key(v16, (v6 + 2));
          v17 = v4 - v7;
          v8 = *(&v18 + 1);
          if (*(&v18 + 1) >= v19)
          {
            v9 = std::vector<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>>::__emplace_back_slow_path<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>>(&v18, v16);
          }

          else
          {
            EQKit::OpticalKern::Glyph::Key::Key(*(&v18 + 1), v16);
            *(v8 + 32) = v17;
            v9 = v8 + 40;
          }

          *(&v18 + 1) = v9;
          EQKit::OpticalKern::Glyph::Key::~Key(v16);
          v6 = *v6;
        }

        while (v6);
        v5 = v18;
      }

      v10 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((*(&v5 + 1) - v5) >> 3));
      v20 = EQKitCache<EQKit::OpticalKern::Glyph::Key,std::shared_ptr<EQKit::OpticalKern::Edge::Path>,std::shared_ptr<EQKit::OpticalKern::Edge::Path const>>::compareKeyLRU;
      if (*(&v5 + 1) == v5)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*,false>(v5, *(&v5 + 1), &v20, v11, 1);
      v12 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v18 + 1) - v18) >> 3);
      v13 = a1[8];
      v14 = v12 - v13;
      if (v12 > v13)
      {
        v15 = 40 * v13;
        do
        {
          if (std::__hash_table<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::__unordered_map_hasher<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::hash<EQKit::OpticalKern::Glyph::Key>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,true>,std::__unordered_map_equal<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,std::hash<EQKit::OpticalKern::Glyph::Key>,true>,std::allocator<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>>>::find<EQKit::OpticalKern::Glyph::Key>(a1 + 1, v18 + v15))
          {
            std::__hash_table<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::__unordered_map_hasher<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::hash<EQKit::OpticalKern::Glyph::Key>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,true>,std::__unordered_map_equal<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,std::hash<EQKit::OpticalKern::Glyph::Key>,true>,std::allocator<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>>>::__erase_unique<EQKit::OpticalKern::Glyph::Key>(a1 + 1, v18 + v15);
          }

          v15 += 40;
          --v14;
        }

        while (v14);
      }

      *(a1 + 48) = 0;
      v16[0] = &v18;
      std::vector<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>>::__destroy_vector::operator()[abi:ne200100](v16);
    }

    return pthread_rwlock_unlock((a1 + 9));
  }

  return result;
}

void sub_258260168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a10 = &a15;
  std::vector<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

double EQKit::Kerning::Manager::kerningDistanceRequiredToSatisfyMinClearance(void *a1, int a2, void *a3, int a4, void *a5, double a6, double a7, double a8, double a9, double a10)
{
  v58 = 0.0;
  v10 = 0.0;
  if (*(a1 + 16) == 1)
  {
    [a3 erasableBounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [a5 erasableBounds];
    y = v61.origin.y;
    x = v61.origin.x;
    height = v61.size.height;
    width = v61.size.width;
    MinX = CGRectGetMinX(v61);
    v28 = a8;
    v29 = a10;
    v42 = v28;
    v30 = v28 + MinX;
    v62.origin.x = v20;
    v62.origin.y = v22;
    v62.size.width = v24;
    v62.size.height = v26;
    if (v30 - (a6 + CGRectGetMaxX(v62)) < v29)
    {
      v31 = v29;
      memset(v56, 0, sizeof(v56));
      v57 = 2;
      memset(v54, 0, sizeof(v54));
      v55 = 0;
      if (a2 == 2)
      {
        v63.origin.x = v20;
        v63.origin.y = v22;
        v63.size.width = v24;
        v63.size.height = v26;
        MaxX = CGRectGetMaxX(v63);
        v33 = a9;
        v64.origin.x = v20;
        v64.origin.y = v22;
        v64.size.width = v24;
        v64.size.height = v26;
        MinY = CGRectGetMinY(v64);
        v65.origin.x = v20;
        v65.origin.y = v22;
        v65.size.width = v24;
        v65.size.height = v26;
        v35 = CGRectGetHeight(v65);
        v59.y = a7 + MinY;
        v59.x = a6 + MaxX;
        EQKit::OpticalKern::Spec::appendEntry(v56, v59, v35);
        v32 = 1;
      }

      else
      {
        v32 = 0;
        v33 = a9;
        if (!a2)
        {
          v32 = [a3 appendOpticalAlignToSpec:v56 offset:{a6, a7}];
        }
      }

      if (a4 == 2)
      {
        v66.origin.y = y;
        v66.origin.x = x;
        v66.size.height = height;
        v66.size.width = width;
        v37 = CGRectGetMinX(v66);
        v67.origin.y = y;
        v67.origin.x = x;
        v67.size.height = height;
        v67.size.width = width;
        v38 = CGRectGetMinY(v67);
        v68.origin.y = y;
        v68.origin.x = x;
        v68.size.height = height;
        v68.size.width = width;
        v39 = CGRectGetHeight(v68);
        v60.y = v33 + v38;
        v60.x = v42 + v37;
        EQKit::OpticalKern::Spec::appendEntry(v54, v60, v39);
        v36 = 1;
      }

      else
      {
        if (a4)
        {
LABEL_13:
          v52 = v54;
          std::vector<EQKit::OpticalKern::Spec::Entry>::__destroy_vector::operator()[abi:ne200100](&v52);
          v54[0] = v56;
          std::vector<EQKit::OpticalKern::Spec::Entry>::__destroy_vector::operator()[abi:ne200100](v54);
          return v58;
        }

        v36 = [a5 appendOpticalAlignToSpec:v54 offset:{v42, v33}];
      }

      if ((v32 & v36) == 1)
      {
        EQKit::OpticalKern::Edge::Composite::Composite(&v52, v56, a1 + 3, *a1);
        EQKit::OpticalKern::Edge::Composite::Composite(&v50, v54, a1 + 3, *a1);
        v49[0] = *MEMORY[0x277CBF348];
        v49[1] = v49[0];
        EQKit::OpticalKern::Edge::Composite::isDistanceSmallerThanThreshold(&v52, &v50, &v58, v49, 0, v31);
        *&v49[0] = &v51;
        std::vector<std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>>::__destroy_vector::operator()[abi:ne200100](v49);
        v50 = &v53;
        std::vector<std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>>::__destroy_vector::operator()[abi:ne200100](&v50);
      }

      goto LABEL_13;
    }
  }

  return v10;
}

void sub_258260478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, uint64_t a23, uint64_t a24, uint64_t a25, void ***a26, uint64_t a27, uint64_t a28, uint64_t a29, void **a30)
{
  a17 = (v30 + 8);
  std::vector<std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>>::__destroy_vector::operator()[abi:ne200100](&a17);
  a22 = &a27;
  std::vector<std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>>::__destroy_vector::operator()[abi:ne200100](&a22);
  a26 = &a30;
  std::vector<EQKit::OpticalKern::Spec::Entry>::__destroy_vector::operator()[abi:ne200100](&a26);
  a30 = (v31 - 168);
  std::vector<EQKit::OpticalKern::Spec::Entry>::__destroy_vector::operator()[abi:ne200100](&a30);
  _Unwind_Resume(a1);
}

void std::vector<EQKit::OpticalKern::Spec::Entry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        EQKit::OpticalKern::Spec::Entry::~Entry((v4 - 72));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t EQKitCache<EQKit::OpticalKern::Glyph::Key,std::shared_ptr<EQKit::OpticalKern::Edge::Path>,std::shared_ptr<EQKit::OpticalKern::Edge::Path const>>::~EQKitCache(uint64_t a1)
{
  pthread_rwlock_destroy((a1 + 72));
  _Block_release(*(a1 + 272));
  std::__hash_table<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::__unordered_map_hasher<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::hash<EQKit::OpticalKern::Glyph::Key>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,true>,std::__unordered_map_equal<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,std::hash<EQKit::OpticalKern::Glyph::Key>,true>,std::allocator<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>>>::~__hash_table(a1 + 8);
  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::__unordered_map_hasher<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::hash<EQKit::OpticalKern::Glyph::Key>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,true>,std::__unordered_map_equal<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,std::hash<EQKit::OpticalKern::Glyph::Key>,true>,std::allocator<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::__unordered_map_hasher<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::hash<EQKit::OpticalKern::Glyph::Key>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,true>,std::__unordered_map_equal<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,std::hash<EQKit::OpticalKern::Glyph::Key>,true>,std::allocator<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::__unordered_map_hasher<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::hash<EQKit::OpticalKern::Glyph::Key>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,true>,std::__unordered_map_equal<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,std::hash<EQKit::OpticalKern::Glyph::Key>,true>,std::allocator<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key const,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t EQKitCache<EQKit::OpticalKern::Glyph::Key,std::shared_ptr<EQKit::OpticalKern::Edge::Path>,std::shared_ptr<EQKit::OpticalKern::Edge::Path const>>::EQKitCache(uint64_t a1, uint64_t a2, const void *a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_2582D0730;
  pthread_rwlock_init((a1 + 72), 0);
  *(a1 + 272) = _Block_copy(a3);
  return a1;
}

uint64_t std::vector<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>>::__emplace_back_slow_path<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>>(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>>>(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  v15 = 40 * v2;
  *(EQKit::OpticalKern::Glyph::Key::Key(40 * v2, a2) + 32) = *(a2 + 32);
  *&v15 = v15 + 40;
  v7 = *(a1 + 8);
  v8 = v14 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>>,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>>::~__split_buffer(&v13);
  return v12;
}

void sub_2582607E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>>,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*>(uint64_t a1, EQKit::OpticalKern::Glyph::Key *a2, EQKit::OpticalKern::Glyph::Key *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      EQKit::OpticalKern::Glyph::Key::Key(a4, v8);
      *(a4 + 32) = *(v8 + 32);
      v8 += 40;
      a4 += 40;
      v7 -= 40;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      EQKit::OpticalKern::Glyph::Key::~Key(v6);
      v6 = (v6 + 40);
    }
  }
}

void sub_2582608D4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 40);
    do
    {
      EQKit::OpticalKern::Glyph::Key::~Key(v4);
      v4 = (v5 - 40);
      v2 += 40;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    EQKit::OpticalKern::Glyph::Key::~Key((i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*,false>(uint64_t a1, unint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
  v7 = a2;
  v8 = a1;
  v48 = a2;
  v49 = a1;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = v7 - v8;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 3);
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v45 = *a3;
        v48 = v7 - 40;
        if ((v45)(v7 - 40))
        {
          v44 = &v49;
          v47 = &v48;
          goto LABEL_98;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v48 = v7 - 40;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*,0>(v8, v8 + 40, v8 + 80, v7 - 40, a3);
      return;
    }

    if (v11 == 5)
    {
      v48 = v7 - 40;
      v53 = v8 + 40;
      v54[0] = v8;
      v51 = v8 + 120;
      v52 = v8 + 80;
      v50 = v7 - 40;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*,0>(v8, v8 + 40, v8 + 80, v8 + 120, a3);
      if ((*a3)(v7 - 40, v8 + 120))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v51, &v50);
        if ((*a3)(v51, v8 + 80))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v52, &v51);
          if ((*a3)(v52, v8 + 40))
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v53, &v52);
            v40 = (*a3)(v53, v8);
            goto LABEL_92;
          }
        }
      }

      return;
    }

LABEL_10:
    if (v10 <= 959)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*>(v8, v7, a3);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*>(v8, v7, a3);
      }

      return;
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*>(v8, v7, v7, a3);
      }

      return;
    }

    v12 = v11 >> 1;
    v13 = v8 + 40 * (v11 >> 1);
    v14 = v7 - 40;
    if (v10 < 0x1401)
    {
      v53 = v8;
      v54[0] = v8 + 40 * (v11 >> 1);
      v52 = v14;
      v18 = (*a3)(v8, v13);
      v19 = (*a3)(v14, v8);
      if (v18)
      {
        if (v19)
        {
          v20 = v54;
          goto LABEL_37;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(v54, &v53);
        if ((*a3)(v52, v53))
        {
          v20 = &v53;
LABEL_37:
          v22 = &v52;
LABEL_38:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(v20, v22);
        }
      }

      else if (v19)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v53, &v52);
        if ((*a3)(v53, v54[0]))
        {
          v20 = v54;
          v22 = &v53;
          goto LABEL_38;
        }
      }

      v8 = v49;
      if (a5)
      {
        goto LABEL_40;
      }

      goto LABEL_65;
    }

    v53 = v8 + 40 * (v11 >> 1);
    v54[0] = v8;
    v52 = v14;
    v15 = (*a3)(v13, v8);
    v16 = (*a3)(v14, v13);
    if (v15)
    {
      if (v16)
      {
        v17 = v54;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(v54, &v53);
        if (!(*a3)(v52, v53))
        {
          goto LABEL_29;
        }

        v17 = &v53;
      }

      v21 = &v52;
      goto LABEL_28;
    }

    if (v16)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v53, &v52);
      if ((*a3)(v53, v54[0]))
      {
        v17 = v54;
        v21 = &v53;
LABEL_28:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(v17, v21);
      }
    }

LABEL_29:
    v8 = v49;
    v23 = v49 + 40 * v12;
    v53 = v23 - 40;
    v54[0] = v49 + 40;
    v52 = v48 - 80;
    v24 = (*a3)(v23 - 40);
    v25 = (*a3)(v48 - 80, v23 - 40);
    if (v24)
    {
      if (v25)
      {
        v26 = v54;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(v54, &v53);
        if (!(*a3)(v52, v53))
        {
          goto LABEL_45;
        }

        v26 = &v53;
      }

      v27 = &v52;
      goto LABEL_44;
    }

    if (v25)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v53, &v52);
      if ((*a3)(v53, v54[0]))
      {
        v26 = v54;
        v27 = &v53;
LABEL_44:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(v26, v27);
      }
    }

LABEL_45:
    v53 = v23 + 40;
    v54[0] = v49 + 80;
    v52 = v48 - 120;
    v28 = (*a3)(v23 + 40);
    v29 = (*a3)(v48 - 120, v23 + 40);
    if (v28)
    {
      if (v29)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(v54, &v52);
        goto LABEL_54;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(v54, &v53);
      if ((*a3)(v52, v53))
      {
        v30 = &v53;
        v31 = &v52;
        goto LABEL_53;
      }
    }

    else if (v29)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v53, &v52);
      if ((*a3)(v53, v54[0]))
      {
        v30 = v54;
        v31 = &v53;
LABEL_53:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(v30, v31);
      }
    }

LABEL_54:
    v53 = v49 + 40 * v12;
    v54[0] = v23 - 40;
    v52 = v23 + 40;
    v32 = (*a3)(v23, v23 - 40);
    v33 = (*a3)(v23 + 40, v23);
    if (v32)
    {
      if (v33)
      {
        v34 = v54;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(v54, &v53);
        if (!(*a3)(v52, v53))
        {
          goto LABEL_64;
        }

        v34 = &v53;
      }

      v35 = &v52;
      goto LABEL_63;
    }

    if (v33)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v53, &v52);
      if ((*a3)(v53, v54[0]))
      {
        v34 = v54;
        v35 = &v53;
LABEL_63:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(v34, v35);
      }
    }

LABEL_64:
    EQKit::OpticalKern::Glyph::Key::Key(v54, v49);
    EQKit::OpticalKern::Glyph::Key::operator=(v49, v23);
    EQKit::OpticalKern::Glyph::Key::operator=(v23, v54);
    EQKit::OpticalKern::Glyph::Key::~Key(v54);
    v36 = *(v49 + 32);
    *(v49 + 32) = *(v23 + 32);
    *(v23 + 32) = v36;
    if (a5)
    {
LABEL_40:
      v7 = v48;
      goto LABEL_66;
    }

LABEL_65:
    v7 = v48;
    if (((*a3)(v8 - 40, v8) & 1) == 0)
    {
      v8 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&)>(v8, v48, a3);
      goto LABEL_75;
    }

LABEL_66:
    v37 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&)>(v8, v7, a3);
    if ((v38 & 1) == 0)
    {
      goto LABEL_73;
    }

    v39 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*>(v8, v37, a3);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*>(v37 + 40, v7, a3))
    {
      if (v39)
      {
        return;
      }

      v48 = v37;
      v7 = v37;
    }

    else
    {
      if (!v39)
      {
LABEL_73:
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*,false>(v8, v37, a3, -i, a5 & 1);
        v8 = v37 + 40;
LABEL_75:
        a5 = 0;
        v49 = v8;
        a4 = -i;
        goto LABEL_2;
      }

      v49 = v37 + 40;
      v8 = v37 + 40;
    }
  }

  v41 = v8 + 40;
  v48 = v7 - 40;
  v53 = v8 + 40;
  v54[0] = v8;
  v52 = v7 - 40;
  v42 = (*a3)(v8 + 40, v8);
  v43 = (*a3)(v7 - 40, v41);
  if (v42)
  {
    if (v43)
    {
      v44 = v54;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(v54, &v53);
      if (!(*a3)(v52, v53))
      {
        return;
      }

      v44 = &v53;
    }

    v47 = &v52;
    goto LABEL_98;
  }

  if (v43)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v53, &v52);
    v40 = (*a3)(v53, v54[0]);
LABEL_92:
    if (v40)
    {
      v44 = v54;
      v47 = &v53;
LABEL_98:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(v44, v47);
    }
  }
}