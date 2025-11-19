uint64_t GPUTools::GL::DYTexGenParameterComponentCount(GPUTools::GL *this)
{
  if ((this - 9472) > 2)
  {
    return 1;
  }

  else
  {
    return dword_24C158820[this - 9472];
  }
}

double GPUTools::GL::DYGetShaderVariableTypeInfo(int a1, uint64_t a2)
{
  if (!a2)
  {
    GPUTools::GL::DYGetShaderVariableTypeInfo();
  }

  *&result = 0x100000001;
  v3 = 610;
  v4 = 5126;
  if (a1 > 36294)
  {
    if (a1 <= 36677)
    {
      if ((a1 - 36297) < 0x10)
      {
LABEL_44:
        *a2 = 1;
        *(a2 + 4) = 5124;
        *(a2 + 8) = 612;
        *(a2 + 16) = 0x100000001;
        *(a2 + 12) = 0;
        return result;
      }

      if (a1 == 36295)
      {
        *&result = 0x300000001;
        *a2 = 3;
        *(a2 + 4) = 5125;
        *(a2 + 8) = 626;
        *(a2 + 16) = 0x300000001;
        *(a2 + 12) = 0;
        return result;
      }

      if (a1 == 36296)
      {
        *&result = 0x400000001;
        *a2 = 4;
        *(a2 + 4) = 5125;
        *(a2 + 8) = 632;
        *(a2 + 16) = 0x400000001;
        *(a2 + 12) = 0;
        return result;
      }

      goto LABEL_13;
    }

    if (a1 > 36859)
    {
      if (a1 > 37127)
      {
        if ((a1 - 37128) >= 6)
        {
          *a2 = 1;
          *(a2 + 4) = 5126;
          *(a2 + 8) = 610;
          *(a2 + 16) = 0x100000001;
          *(a2 + 12) = 0;
          return result;
        }

        goto LABEL_44;
      }

      if (a1 == 36860)
      {
        *&result = 0x200000001;
        *a2 = 2;
        *(a2 + 4) = 5130;
        *(a2 + 8) = 1012;
        *(a2 + 16) = 0x200000001;
        *(a2 + 12) = 0;
        return result;
      }

      if (a1 == 36861)
      {
        *&result = 0x300000001;
        *a2 = 3;
        *(a2 + 4) = 5130;
        *(a2 + 8) = 1014;
        *(a2 + 16) = 0x300000001;
        *(a2 + 12) = 0;
        return result;
      }

      if (a1 != 36862)
      {
LABEL_13:
        *a2 = 1;
        *(a2 + 4) = v4;
        *(a2 + 8) = v3;
        *(a2 + 16) = 0x100000001;
        *(a2 + 12) = 0;
        return result;
      }

      v6 = 0;
      *&result = 0x400000001;
      v7 = 1016;
    }

    else
    {
      if (a1 > 36681)
      {
        if (a1 > 36683)
        {
          if (a1 == 36684)
          {
            *&result = 0x300000004;
            v5 = 1022;
            goto LABEL_52;
          }

          if (a1 != 36685)
          {
            if (a1 != 36686)
            {
              goto LABEL_13;
            }

            *&result = 0x400000003;
            v5 = 1025;
LABEL_52:
            *a2 = 12;
            *(a2 + 4) = 5130;
            *(a2 + 8) = v5;
            *(a2 + 16) = result;
            *(a2 + 12) = 1;
            return result;
          }

          *&result = 0x400000002;
          v9 = 1024;
LABEL_50:
          *a2 = 8;
          *(a2 + 4) = 5130;
          *(a2 + 8) = v9;
          *(a2 + 16) = result;
          *(a2 + 12) = 1;
          return result;
        }

        if (a1 == 36682)
        {
          *&result = 0x200000004;
          v9 = 1019;
          goto LABEL_50;
        }

        *&result = 0x300000002;
        v8 = 1021;
LABEL_42:
        *a2 = 6;
        *(a2 + 4) = 5130;
        *(a2 + 8) = v8;
        *(a2 + 16) = result;
        *(a2 + 12) = 1;
        return result;
      }

      if (a1 > 36679)
      {
        if (a1 == 36680)
        {
          *&result = 0x400000004;
          *a2 = 16;
          *(a2 + 4) = 5130;
          *(a2 + 8) = 1023;
          *(a2 + 16) = 0x400000004;
          *(a2 + 12) = 1;
          return result;
        }

        *&result = 0x200000003;
        v8 = 1018;
        goto LABEL_42;
      }

      if (a1 != 36678)
      {
        result = COERCE_DOUBLE(0x300000003);
        *a2 = 9;
        *(a2 + 4) = 5130;
        *(a2 + 8) = 1020;
        *(a2 + 16) = 0x300000003;
        *(a2 + 12) = 1;
        return result;
      }

      *&result = 0x200000002;
      v6 = 1;
      v7 = 1017;
    }

    *a2 = 4;
    *(a2 + 4) = 5130;
    *(a2 + 8) = v7;
    *(a2 + 16) = result;
    *(a2 + 12) = v6;
    return result;
  }

  if (a1 <= 35663)
  {
    if (a1 != 5124)
    {
      if (a1 == 5130)
      {
        v4 = 5130;
      }

      else
      {
        v4 = 5126;
      }

      if (a1 == 5130)
      {
        v3 = 1010;
      }

      else
      {
        v3 = 610;
      }

      if (a1 == 5125)
      {
        v4 = 5125;
        v3 = 614;
      }

      goto LABEL_13;
    }

    goto LABEL_44;
  }

  switch(a1)
  {
    case 35664:
      *&result = 0x200000001;
      *a2 = 2;
      *(a2 + 4) = 5126;
      *(a2 + 8) = 616;
      *(a2 + 16) = 0x200000001;
      *(a2 + 12) = 0;
      return result;
    case 35665:
      *&result = 0x300000001;
      *a2 = 3;
      *(a2 + 4) = 5126;
      *(a2 + 8) = 622;
      *(a2 + 16) = 0x300000001;
      *(a2 + 12) = 0;
      return result;
    case 35666:
      *&result = 0x400000001;
      *a2 = 4;
      *(a2 + 4) = 5126;
      *(a2 + 8) = 628;
      *(a2 + 16) = 0x400000001;
      *(a2 + 12) = 0;
      return result;
    case 35667:
    case 35671:
      *&result = 0x200000001;
      *a2 = 2;
      *(a2 + 4) = 5124;
      *(a2 + 8) = 618;
      *(a2 + 16) = 0x200000001;
      *(a2 + 12) = 0;
      return result;
    case 35668:
    case 35672:
      *&result = 0x300000001;
      *a2 = 3;
      *(a2 + 4) = 5124;
      *(a2 + 8) = 624;
      *(a2 + 16) = 0x300000001;
      *(a2 + 12) = 0;
      return result;
    case 35669:
    case 35673:
      *&result = 0x400000001;
      *a2 = 4;
      *(a2 + 4) = 5124;
      *(a2 + 8) = 630;
      *(a2 + 16) = 0x400000001;
      *(a2 + 12) = 0;
      return result;
    case 35670:
    case 35677:
    case 35678:
    case 35679:
    case 35680:
    case 35681:
    case 35682:
    case 35683:
    case 35684:
      goto LABEL_44;
    case 35674:
      *&result = 0x200000002;
      *a2 = 4;
      *(a2 + 4) = 5126;
      *(a2 + 8) = 634;
      *(a2 + 16) = 0x200000002;
      *(a2 + 12) = 1;
      return result;
    case 35675:
      *&result = 0x300000003;
      *a2 = 9;
      *(a2 + 4) = 5126;
      *(a2 + 8) = 637;
      *(a2 + 16) = 0x300000003;
      *(a2 + 12) = 1;
      return result;
    case 35676:
      *&result = 0x400000004;
      *a2 = 16;
      *(a2 + 4) = 5126;
      *(a2 + 8) = 640;
      *(a2 + 16) = 0x400000004;
      *(a2 + 12) = 1;
      return result;
    case 35685:
      *&result = 0x200000003;
      *a2 = 6;
      *(a2 + 4) = 5126;
      *(a2 + 8) = 635;
      *(a2 + 16) = 0x200000003;
      *(a2 + 12) = 1;
      return result;
    case 35686:
      *&result = 0x200000004;
      *a2 = 8;
      *(a2 + 4) = 5126;
      *(a2 + 8) = 636;
      *(a2 + 16) = 0x200000004;
      *(a2 + 12) = 1;
      return result;
    case 35687:
      *&result = 0x300000002;
      *a2 = 6;
      *(a2 + 4) = 5126;
      *(a2 + 8) = 638;
      *(a2 + 16) = 0x300000002;
      *(a2 + 12) = 1;
      return result;
    case 35688:
      *&result = 0x300000004;
      *a2 = 12;
      *(a2 + 4) = 5126;
      *(a2 + 8) = 639;
      *(a2 + 16) = 0x300000004;
      *(a2 + 12) = 1;
      return result;
    case 35689:
      *&result = 0x400000002;
      *a2 = 8;
      *(a2 + 4) = 5126;
      *(a2 + 8) = 641;
      *(a2 + 16) = 0x400000002;
      *(a2 + 12) = 1;
      return result;
    case 35690:
      *&result = 0x400000003;
      *a2 = 12;
      *(a2 + 4) = 5126;
      *(a2 + 8) = 642;
      *(a2 + 16) = 0x400000003;
      *(a2 + 12) = 1;
      return result;
    default:
      if ((a1 - 36288) < 6)
      {
        goto LABEL_44;
      }

      if (a1 != 36294)
      {
        goto LABEL_13;
      }

      *&result = 0x200000001;
      *a2 = 2;
      *(a2 + 4) = 5125;
      *(a2 + 8) = 620;
      *(a2 + 16) = 0x200000001;
      *(a2 + 12) = 0;
      break;
  }

  return result;
}

uint64_t GPUTools::GL::DYGetShaderTypeFromMask(GPUTools::GL *this)
{
  if (this <= 3)
  {
    if (this == 1)
    {
      return 35633;
    }

    if (this == 2)
    {
      return 35632;
    }
  }

  else
  {
    switch(this)
    {
      case 0x10:
        return 36487;
      case 8:
        return 36488;
      case 4:
        return 36313;
    }
  }

  return 0;
}

uint64_t GPUTools::GL::GetFramebufferAttachmentMaskInfo(GPUTools::GL *this)
{
  v1 = 2930;
  v2 = 3107;
  if (this == 36128)
  {
    v2 = 2968;
  }

  if (this != 36096)
  {
    v1 = v2;
  }

  if (this == 33306)
  {
    v1 = 2930;
    v3 = 0xB9800000000;
  }

  else
  {
    v3 = 0;
  }

  return v3 | v1;
}

uint64_t GPUTools::GL::DYGetFramebufferAttachment(GPUTools::GL *this, int a2)
{
  if (this > 6145)
  {
    if (this != 6146)
    {
      if (this == 34041)
      {
        return 33306;
      }

      return 36064;
    }

    return 36128;
  }

  else
  {
    if (this != 6144)
    {
      if (this == 6145)
      {
        return 36096;
      }

      return 36064;
    }

    return (a2 + 36064);
  }
}

void GPUTools::GL::DYGetQueryParameterInfo(GPUTools::GL *this, unsigned int a2, _DWORD *a3, unsigned int *a4, BOOL *a5)
{
  if (a3)
  {
    *a3 = 1;
  }

  if (a4)
  {
    *a4 = 0;
  }
}

uint64_t GPUTools::GL::DYGetQueryObjectParameterInfo(uint64_t this, _DWORD *a2, unsigned int *a3, BOOL *a4)
{
  if (a2)
  {
    *a2 = 1;
  }

  if (a3)
  {
    *a3 = this == 34919;
  }

  return this;
}

int *GPUTools::GL::GetInternalFormatInfo(GPUTools::GL *this)
{
  v1 = this;
  result = &GPUTools::GL::sInternalFormatsTable;
  v3 = 6660;
  while (*result != v1)
  {
    result += 15;
    v3 -= 60;
    if (!v3)
    {
      return &GPUTools::GL::sUnknownFormat;
    }
  }

  return result;
}

uint64_t GPUTools::GL::EnumerateInternalFormats(uint64_t a1)
{
  v7 = 0;
  v2 = &GPUTools::GL::sInternalFormatsTable;
  v3 = 6600;
  do
  {
    v4 = *(a1 + 24);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v5 = v3;
    result = (*(*v4 + 48))(v4, v2, &v7);
    if (v7)
    {
      break;
    }

    v3 = v5 - 60;
    v2 += 15;
  }

  while (v5);
  return result;
}

{
  v6 = 0;
  v2 = &GPUTools::GL::sInternalFormatsTable;
  v3 = 6600;
  do
  {
    v4 = v3;
    result = (*(a1 + 16))(a1, v2, &v6);
    if (v6)
    {
      break;
    }

    v3 = v4 - 60;
    v2 += 15;
  }

  while (v4);
  return result;
}

int *GPUTools::GL::GetCompressedFormatInfo(GPUTools::GL *this)
{
  v1 = &GPUTools::GL::sCompressedFormatsTable;
  v2 = 4980;
  while (*v1 != this)
  {
    v1 += 15;
    v2 -= 60;
    if (!v2)
    {
      dy_abort();
      return v1;
    }
  }

  return v1;
}

uint64_t GPUTools::GL::EnumerateCompressedFormats(uint64_t a1)
{
  v7 = 0;
  v2 = &GPUTools::GL::sCompressedFormatsTable;
  v3 = 4920;
  do
  {
    v4 = *(a1 + 24);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v5 = v3;
    result = (*(*v4 + 48))(v4, v2, &v7);
    if (v7)
    {
      break;
    }

    v3 = v5 - 60;
    v2 += 15;
  }

  while (v5);
  return result;
}

{
  v6 = 0;
  v2 = &GPUTools::GL::sCompressedFormatsTable;
  v3 = 4920;
  do
  {
    v4 = v3;
    result = (*(a1 + 16))(a1, v2, &v6);
    if (v6)
    {
      break;
    }

    v3 = v4 - 60;
    v2 += 15;
  }

  while (v4);
  return result;
}

uint64_t GPUTools::GL::GetInternalFormatComponentsInfo@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, uint8x8_t a3@<D0>)
{
  v3 = *(result + 8);
  *a2 = v3;
  if (v3)
  {
    a3.i32[0] = *(result + 44);
    LOBYTE(v4) = vmaxv_u16(*&vmovl_u8(a3));
LABEL_10:
    *(a2 + 4) = v4;
    goto LABEL_11;
  }

  v5 = *(result + 36);
  *a2 = v5;
  if (v5)
  {
    v4 = *(result + 51);
    if (v4 <= *(result + 47))
    {
      LOBYTE(v4) = *(result + 47);
    }

    goto LABEL_10;
  }

  v6 = *(result + 40);
  *a2 = v6;
  if (v6)
  {
    LOBYTE(v4) = *(result + 52);
    goto LABEL_10;
  }

  v7 = *(result + 20);
  *a2 = v7;
  if (v7)
  {
    LOBYTE(v4) = *(result + 47);
    goto LABEL_10;
  }

LABEL_11:
  v8 = *(result + 49);
  v9 = *(result + 32);
  *(a2 + 8) = *(result + 28);
  *(a2 + 12) = v8;
  v10 = *(result + 50);
  *(a2 + 16) = v9;
  *(a2 + 20) = v10;
  return result;
}

unint64_t GPUTools::GL::GetFirstValidComponentInfo(void *a1)
{
  if (*a1)
  {
    return *a1 | *a1 & 0xFFFFFFFF00000000;
  }

  if (*(a1 + 2))
  {
    return a1[1];
  }

  if (*(a1 + 4))
  {
    return a1[2];
  }

  return 0;
}

uint64_t GPUTools::GL::GetImageUploadFormatInfo(GPUTools::GL *this, char a2)
{
  v3 = this;
  v4 = this;
  if (GPUTools::GL::IsCompressedFormat(this))
  {
    return v4;
  }

  v6 = &GPUTools::GL::sInternalFormatsTable;
  v7 = 6660;
  while (*v6 != v3)
  {
    v6 += 15;
    v7 -= 60;
    if (!v7)
    {
      return v4;
    }
  }

  if (!v3)
  {
    return v4;
  }

  else
  {
    return GPUTools::GL::GetImageUploadFormatInfo(v6, a2, v5);
  }
}

uint64_t GPUTools::GL::IsCompressedFormat(GPUTools::GL *this)
{
  v1 = this;
  result = 1;
  if (v1 > 37487)
  {
    if (((v1 - 37840) > 0x3D || ((1 << (v1 + 48)) & 0x3FFFC00400003FFFLL) == 0) && (v1 - 37808) >= 0xE && (v1 - 37488) >= 0xA)
    {
      return 0;
    }
  }

  else if (v1 > 35839)
  {
    if (v1 <= 36282)
    {
      if ((v1 - 35840) < 4)
      {
        return result;
      }

      v3 = -35917;
LABEL_19:
      if ((v1 + v3) < 3)
      {
        return result;
      }

      return 0;
    }

    if ((v1 - 36283) >= 4 && (v1 - 36492) >= 4)
    {
      return 0;
    }
  }

  else if (((v1 - 35412) > 0x23 || ((1 << (v1 - 84)) & 0xC00000F0FLL) == 0) && (v1 - 35728) >= 0xA)
  {
    v3 = -33777;
    goto LABEL_19;
  }

  return result;
}

uint64_t GPUTools::GL::GetImageUploadFormatInfo(unsigned int *a1, char a2, uint8x8_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (a2)
  {
    goto LABEL_2;
  }

  if (v3 > 35897)
  {
    if (v3 <= 36012)
    {
      if (v3 == 35898)
      {
        return v3 | (v4 << 32);
      }

      if (v3 == 35901)
      {
        return v3 | (v4 << 32);
      }
    }

    else
    {
      switch(v3)
      {
        case 0x8CAD:
          return v3 | (v4 << 32);
        case 0x906F:
          v4 = 36249;
          return v3 | (v4 << 32);
        case 0x8D62:
          return v3 | (v4 << 32);
      }
    }
  }

  else
  {
    if (v3 > 32854)
    {
      if (v3 == 32855)
      {
        return v3 | (v4 << 32);
      }

      if (v3 != 32857)
      {
        if (v3 == 35056)
        {
          return v3 | (v4 << 32);
        }

        goto LABEL_2;
      }

      return v3 | (v4 << 32);
    }

    if (v3 == 10768)
    {
      return v3 | (v4 << 32);
    }

    if (v3 == 32854)
    {
      return v3 | (v4 << 32);
    }
  }

LABEL_2:
  v5 = a1[2];
  if (v5)
  {
    a3.i32[0] = a1[11];
    LOBYTE(v6) = vmaxv_u16(*&vmovl_u8(a3));
LABEL_34:
    v8 = v6;
    goto LABEL_35;
  }

  v5 = a1[9];
  if (v5)
  {
    v6 = *(a1 + 51);
    if (v6 <= *(a1 + 47))
    {
      LOBYTE(v6) = *(a1 + 47);
    }

    goto LABEL_34;
  }

  v5 = a1[10];
  if (v5)
  {
    LOBYTE(v6) = *(a1 + 52);
    goto LABEL_34;
  }

  v5 = a1[5];
  if (v5)
  {
    LOBYTE(v6) = *(a1 + 47);
    goto LABEL_34;
  }

  v5 = a1[7];
  if (v5)
  {
    v8 = *(a1 + 49);
LABEL_35:
    v9 = v8 << 32;
    if (v5 >> 1 != 2562)
    {
      goto LABEL_56;
    }

    goto LABEL_36;
  }

  v12 = a1[8];
  if (v12)
  {
    v9 = *(a1 + 50) << 32;
  }

  else
  {
    v9 = 0;
  }

  if (!v12)
  {
    v12 = 0;
  }

  v5 = v12 | v9;
  if (v5 >> 1 != 2562)
  {
    goto LABEL_56;
  }

LABEL_36:
  if (v4 > 6408)
  {
    if (v4 <= 32840)
    {
      if (v4 == 6409)
      {
        v4 = 36252;
      }

      else
      {
        if (v4 != 6410)
        {
          goto LABEL_99;
        }

        v4 = 36253;
      }
    }

    else if (v4 != 32841)
    {
      if (v4 == 33319)
      {
        v4 = 33320;
      }

      else if (v4 != 34041)
      {
        goto LABEL_99;
      }
    }

LABEL_56:
    v10 = HIDWORD(v9);
    if (!v10)
    {
      if ((v5 - 5124) >= 3)
      {
        if (v5 != 35863 && v5 != 36764)
        {
          goto LABEL_98;
        }

        LODWORD(v10) = 8;
        if (v5 > 5125)
        {
LABEL_60:
          if (v5 != 36764)
          {
            if (v5 != 35863)
            {
              if (v5 == 5126)
              {
                if (v10 < 0x11)
                {
                  return v3 | (v4 << 32);
                }

                if (v10 < 0x21)
                {
                  return v3 | (v4 << 32);
                }

                if (v10 < 0x41)
                {
                  return v3 | (v4 << 32);
                }
              }

              goto LABEL_98;
            }

            goto LABEL_73;
          }

          goto LABEL_75;
        }

LABEL_71:
        if (v5 == 5124)
        {
LABEL_75:
          if (v10 < 9)
          {
            return v3 | (v4 << 32);
          }

          if (v10 < 0x11)
          {
            return v3 | (v4 << 32);
          }

          if (v10 < 0x21)
          {
            return v3 | (v4 << 32);
          }

          goto LABEL_98;
        }

        if (v5 == 5125)
        {
LABEL_73:
          if (v10 < 9)
          {
            return v3 | (v4 << 32);
          }

          if (v10 < 0x11)
          {
            return v3 | (v4 << 32);
          }

          if (v10 < 0x21)
          {
            return v3 | (v4 << 32);
          }
        }

LABEL_98:
        dy_abort();
        goto LABEL_99;
      }

      LODWORD(v10) = 32;
    }

    if (v5 > 5125)
    {
      goto LABEL_60;
    }

    goto LABEL_71;
  }

  if (v4 > 6405)
  {
    if (v4 == 6406)
    {
      v4 = 36247;
    }

    else if (v4 == 6407)
    {
      v4 = 36248;
    }

    else
    {
      v4 = 36249;
    }

    goto LABEL_56;
  }

  if ((v4 - 6401) < 2)
  {
    goto LABEL_56;
  }

  if (v4 == 6403)
  {
    v4 = 36244;
    goto LABEL_56;
  }

LABEL_99:
  v13 = dy_abort();
  return GPUTools::GL::TypeMatchingComponentSpecification(v13, v14);
}

uint64_t GPUTools::GL::TypeMatchingComponentSpecification(GPUTools::GL *this, int a2)
{
  if (!a2)
  {
    if ((this - 5124) >= 3)
    {
      a2 = 8;
      if (this != 35863 && this != 36764)
      {
        goto LABEL_30;
      }
    }

    else
    {
      a2 = 32;
    }
  }

  if (this <= 5125)
  {
    if (this != 5124)
    {
      if (this != 5125)
      {
        goto LABEL_30;
      }

LABEL_14:
      if (a2 < 9)
      {
        return 5121;
      }

      if (a2 < 0x11)
      {
        return 5123;
      }

      if (a2 < 0x21)
      {
        return 5125;
      }

      goto LABEL_30;
    }

LABEL_16:
    if (a2 < 9)
    {
      return 5120;
    }

    if (a2 < 0x11)
    {
      return 5122;
    }

    if (a2 < 0x21)
    {
      return 5124;
    }

    goto LABEL_30;
  }

  switch(this)
  {
    case 0x8F9C:
      goto LABEL_16;
    case 0x8C17:
      goto LABEL_14;
    case 0x1406:
      if (a2 < 17)
      {
        return 36193;
      }

      if (a2 < 0x21)
      {
        return 5126;
      }

      if (a2 < 0x41)
      {
        return 5130;
      }

      break;
  }

LABEL_30:
  v3 = dy_abort();
  return GPUTools::GL::DYProcessImageUploadFormatForLegacyES(v3);
}

int *GPUTools::GL::DYProcessImageUploadFormatForLegacyES(int *result)
{
  if (!result)
  {
    GPUTools::GL::DYProcessImageUploadFormatForLegacyES();
  }

  v1 = result[1];
  if (v1 == 32993)
  {
    *result = 6408;
  }

  else
  {
    if (*result == 35905)
    {
      v1 = 35904;
    }

    if (*result == 35907)
    {
      v1 = 35906;
    }

    *result = v1;
  }

  return result;
}

uint64_t GPUTools::GL::dy_type_component_count(GPUTools::GL *this)
{
  v1 = this;
  result = 1;
  if (v1 > 33636)
  {
    if (v1 <= 34233)
    {
      if ((v1 - 33637) >= 4)
      {
        if (v1 != 34042)
        {
          return result;
        }

        return 2;
      }

      return 4;
    }

    if (v1 > 35901)
    {
      if (v1 != 35902)
      {
        if (v1 == 36269)
        {
          return 2;
        }

        return result;
      }
    }

    else
    {
      if ((v1 - 34234) < 2)
      {
        return 2;
      }

      if (v1 != 35899)
      {
        return result;
      }
    }

    return 3;
  }

  if ((v1 - 32819) < 4)
  {
    return 4;
  }

  if ((v1 - 33634) < 3 || v1 == 32818)
  {
    return 3;
  }

  return result;
}

uint64_t GPUTools::GL::dy_type_size(GPUTools::GL *this)
{
  v1 = this;
  result = 1;
  if (v1 > 33634)
  {
    if (v1 <= 34233)
    {
      if ((v1 - 33635) < 4)
      {
        return 2;
      }

      if ((v1 - 33639) < 2)
      {
        return 4;
      }

      v3 = 34042;
      goto LABEL_29;
    }

    if (v1 <= 36192)
    {
      if ((v1 - 34234) < 2)
      {
        return 2;
      }

      if (v1 == 35899)
      {
        return 4;
      }

      v3 = 35902;
      goto LABEL_29;
    }

    if (v1 != 36269)
    {
      if (v1 == 36255)
      {
        return 4;
      }

      if (v1 == 36193)
      {
        return 2;
      }

      return result;
    }

    return 8;
  }

  if (v1 <= 5129)
  {
    if (v1 <= 5126)
    {
      if ((v1 - 5124) >= 3)
      {
        if ((v1 - 5122) >= 2)
        {
          return result;
        }

        return 2;
      }

      return 4;
    }

    if (v1 == 5127)
    {
      return 2;
    }

    if (v1 == 5128)
    {
      return 3;
    }

    v3 = 5129;
    goto LABEL_29;
  }

  if (v1 <= 32818)
  {
    if (v1 != 5130)
    {
      if (v1 == 5131)
      {
        return 2;
      }

      v3 = 5132;
LABEL_29:
      if (v1 == v3)
      {
        return 4;
      }

      return result;
    }

    return 8;
  }

  if ((v1 - 32819) < 2)
  {
    return 2;
  }

  if ((v1 - 32821) < 2)
  {
    return 4;
  }

  return result;
}

uint64_t GPUTools::GL::GetCompressedFormatElementCount(GPUTools::GL *this)
{
  v1 = this;
  result = 4;
  if (v1 <= 37487)
  {
    if ((v1 - 35412) < 2 || (v1 - 35840) < 2)
    {
      return 3;
    }
  }

  else
  {
    v3 = v1 - 112;
    if ((v1 - 37488) <= 5)
    {
      if (((1 << v3) & 3) != 0)
      {
        return 1;
      }

      if (((1 << v3) & 0xC) != 0)
      {
        return 2;
      }

      return 3;
    }

    if (v1 == 37874)
    {
      return 3;
    }
  }

  return result;
}

uint64_t GPUTools::GL::GetColorFormatForElementCount(GPUTools::GL *this, int a2)
{
  if (this > 2)
  {
    if (this != 3)
    {
LABEL_8:
      if (a2)
      {
        return 36249;
      }

      else
      {
        return 6408;
      }
    }

    if (a2)
    {
      return 36248;
    }

    else
    {
      return 6407;
    }
  }

  else
  {
    if (this != 1)
    {
      if (this == 2)
      {
        if (a2)
        {
          return 33320;
        }

        else
        {
          return 33319;
        }
      }

      goto LABEL_8;
    }

    if (a2)
    {
      return 36244;
    }

    else
    {
      return 6403;
    }
  }
}

uint64_t GPUTools::GL::ColorRenderableFormatMatchingFormat(unsigned int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    GPUTools::GL::ColorRenderableFormatMatchingFormat();
  }

  if (!a1[1] && (GPUTools::GL::IsCompressedFormat(*a1) & 1) == 0)
  {
    GPUTools::GL::ColorRenderableFormatMatchingFormat();
  }

  v3 = a1[2];
  IsCompressedFormat = GPUTools::GL::IsCompressedFormat(v1);
  if (!v3)
  {
    goto LABEL_16;
  }

  if (IsCompressedFormat)
  {
    goto LABEL_17;
  }

  v5 = &GPUTools::GL::sInternalFormatsTable;
  v6 = 6660;
  do
  {
    if (*v5 == v1)
    {
      goto LABEL_10;
    }

    v5 += 15;
    v6 -= 60;
  }

  while (v6);
  v5 = &GPUTools::GL::sUnknownFormat;
LABEL_10:
  while (1)
  {
    v7 = v5[1];
    if (v7 == 6402)
    {
      break;
    }

    if (v7 != 34041)
    {
      goto LABEL_25;
    }

    result = 0x19030000822ELL;
    if (v1 == 34041 || v1 == 35056 || v1 == 36013)
    {
      return result;
    }

    dy_string_from_enum(v1);
    IsCompressedFormat = dy_abort();
LABEL_16:
    if ((IsCompressedFormat & 1) == 0)
    {
      GPUTools::GL::ColorRenderableFormatMatchingFormat();
    }

LABEL_17:
    v5 = &GPUTools::GL::sCompressedFormatsTable;
    v9 = 4980;
    while (*v5 != v1)
    {
      v5 += 15;
      v9 -= 60;
      if (!v9)
      {
        dy_abort();
        goto LABEL_21;
      }
    }
  }

LABEL_21:
  result = 0x19030000822ELL;
  if ((v1 - 33189) >= 3 && v1 != 6402 && v1 != 36012)
  {
    dy_string_from_enum(v1);
    v7 = dy_abort();
LABEL_25:
    v10 = *(v5 + 47);
    v11 = v5[2];
    if (v11)
    {
      v12 = *(v5 + 44);
      v13 = *(v5 + 45);
      v14 = *(v5 + 46);
      if (v14 <= v10)
      {
        v14 = v10;
      }

      if (v13 > v14)
      {
        v14 = v13;
      }

      if (v12 <= v14)
      {
        v10 = v14;
      }

      else
      {
        v10 = v12;
      }
    }

    else
    {
      v11 = v5[9];
      if (v11)
      {
        v15 = *(v5 + 51);
        if (v15 <= v10)
        {
          v10 = v10;
        }

        else
        {
          v10 = v15;
        }
      }

      else
      {
        v11 = v5[10];
        if (v11)
        {
          v10 = *(v5 + 52);
        }

        else
        {
          v11 = v5[5];
          if (!v11)
          {
            v21 = v5[7];
            v22 = v5[8];
            v23 = *(v5 + 49);
            v24 = *(v5 + 50);
            if (v22)
            {
              v25 = v24 << 32;
            }

            else
            {
              v25 = 0;
            }

            if (!v22)
            {
              v22 = 0;
            }

            if (v21)
            {
              v16 = v23 << 32;
            }

            else
            {
              v16 = v25;
            }

            if (v21)
            {
              v26 = v21;
            }

            else
            {
              v26 = v22;
            }

            v17 = v26 | v16;
            v18 = GPUTools::GL::dy_format_element_count(v7);
            if (v17 > 5125)
            {
              goto LABEL_41;
            }

            goto LABEL_62;
          }
        }
      }
    }

    v16 = v10 << 32;
    v17 = v11;
    v18 = GPUTools::GL::dy_format_element_count(v7);
    if (v17 > 5125)
    {
LABEL_41:
      switch(v17)
      {
        case 5126:
          v19 = 2;
          v20 = HIDWORD(v16);
          if (HIDWORD(v16) < 9)
          {
            goto LABEL_70;
          }

          goto LABEL_65;
        case 35863:
          v19 = 0;
          v20 = HIDWORD(v16);
          if (HIDWORD(v16) < 9)
          {
            goto LABEL_70;
          }

          goto LABEL_65;
        case 36764:
          v19 = 1;
          v20 = HIDWORD(v16);
          if (HIDWORD(v16) < 9)
          {
            goto LABEL_70;
          }

LABEL_65:
          if (v20 >= 0x11)
          {
            if (v20 >= 0x21)
            {
              if (v20 >= 0x41)
              {
LABEL_91:
                v35 = dy_abort();
                return GPUTools::GL::ColorRenderableFormatMatchingDepthStencilFormat(v35);
              }

              v27 = 3;
            }

            else
            {
              v27 = 2;
            }
          }

          else
          {
            v27 = 1;
          }

          goto LABEL_71;
      }

LABEL_90:
      dy_abort();
      goto LABEL_91;
    }

LABEL_62:
    if (v17 == 5124)
    {
      v19 = 3;
      v20 = HIDWORD(v16);
      if (HIDWORD(v16) >= 9)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v17 != 5125)
      {
        goto LABEL_90;
      }

      v19 = 4;
      v20 = HIDWORD(v16);
      if (HIDWORD(v16) >= 9)
      {
        goto LABEL_65;
      }
    }

LABEL_70:
    v27 = 0;
LABEL_71:
    v28 = 1;
    if (v18 != 2)
    {
      v28 = 2;
    }

    if (v18 == 1)
    {
      v28 = 0;
    }

    v29 = &GPUTools::GL::s_renderableFormats + 48 * v19 + 12 * v27;
    v30 = *&v29[4 * v28];
    if (v30)
    {
      v31 = *&v29[4 * v28];
      if (GPUTools::GL::IsCompressedFormat(v30))
      {
        return v31;
      }

      v33 = &GPUTools::GL::sInternalFormatsTable;
      v34 = 6660;
      result = v31;
      while (*v33 != v31)
      {
        v33 += 15;
        v34 -= 60;
        if (!v34)
        {
          return result;
        }
      }

      return GPUTools::GL::GetImageUploadFormatInfo(v33, 1, v32);
    }

    dy_string_from_enum(v1);
    dy_string_from_enum(a1[1]);
    dy_string_from_enum(a1[2]);
    dy_abort();
    goto LABEL_90;
  }

  return result;
}

uint64_t GPUTools::GL::ColorRenderableFormatMatchingDepthStencilFormat(int *a1, int a2)
{
  v2 = *a1;
  if (v2 == 34041 || v2 == 36013 || v2 == 35056)
  {
    if (a2)
    {
      return 0x19030000822ELL;
    }

    else
    {
      return 0x8D9400008232;
    }
  }

  else
  {
    dy_string_from_enum(v2);
    v5 = dy_abort();
    return GPUTools::GL::ColorRenderableFormatMatchingDepthFormat(v5);
  }
}

uint64_t GPUTools::GL::ColorRenderableFormatMatchingDepthFormat(int *a1)
{
  v1 = *a1;
  if ((v1 - 33189) < 3 || v1 == 36012 || v1 == 6402)
  {
    return 0x19030000822ELL;
  }

  dy_string_from_enum(v1);
  v4 = dy_abort();
  return GPUTools::GL::dy_format_element_count(v4);
}

uint64_t GPUTools::GL::dy_format_element_count(GPUTools::GL *this)
{
  v1 = this;
  result = 1;
  if (v1 > 35358)
  {
    if (v1 <= 36247)
    {
      if ((v1 - 35898) > 8)
      {
        goto LABEL_27;
      }

      if (((1 << (v1 - 58)) & 0x5B) != 0)
      {
        return 3;
      }

      if (v1 != 35906)
      {
LABEL_27:
        v4 = 35359;
LABEL_28:
        if (v1 != v4)
        {
          return result;
        }

        return 2;
      }

      return 4;
    }

    if (v1 > 36249)
    {
      if (v1 == 36250)
      {
        return 3;
      }

      v3 = 36251;
    }

    else
    {
      if (v1 == 36248)
      {
        return 3;
      }

      v3 = 36249;
    }

LABEL_22:
    if (v1 != v3)
    {
      return result;
    }

    return 4;
  }

  if (v1 > 32992)
  {
    if (v1 > 34040)
    {
      if (v1 != 34041)
      {
        v4 = 34233;
        goto LABEL_28;
      }
    }

    else if ((v1 - 33319) >= 2)
    {
      v3 = 32993;
      goto LABEL_22;
    }

    return 2;
  }

  if (v1 <= 6409)
  {
    if (v1 == 6407)
    {
      return 3;
    }

    v3 = 6408;
    goto LABEL_22;
  }

  switch(v1)
  {
    case 6410:
      return 2;
    case 32768:
      return 4;
    case 32992:
      return 3;
  }

  return result;
}

uint64_t GPUTools::GL::IsPackedType(GPUTools::GL *this)
{
  v1 = this;
  result = 1;
  if (v1 <= 34041)
  {
    if ((v1 - 33634) >= 7 && (v1 - 32818) >= 5)
    {
      return 0;
    }
  }

  else
  {
    if (v1 > 35901)
    {
      if (v1 == 35902 || v1 == 36255 || v1 == 36269)
      {
        return result;
      }

      return 0;
    }

    if (v1 != 34042 && v1 != 35899)
    {
      return 0;
    }
  }

  return result;
}

uint64_t GPUTools::GL::RangeForUnpackedType(uint64_t this, void *a2, double *a3, double *a4)
{
  if (this > 5124)
  {
    if (this <= 5129)
    {
      if (this == 5125)
      {
        *a2 = 0;
        *a3 = 4294967300.0;
        return this;
      }

      if (this == 5126)
      {
        *a2 = 0xC7EFFFFFE0000000;
        *a3 = 3.40282347e38;
        return this;
      }
    }

    else
    {
      if (this == 5130)
      {
        *a2 = 0xFFEFFFFFFFFFFFFFLL;
        *a3 = 1.79769313e308;
        return this;
      }

      if (this == 5131 || this == 36193)
      {
        *a2 = 0xC0EFFC0000000000;
        *a3 = 65504.0;
        return this;
      }
    }

    goto LABEL_22;
  }

  if (this <= 5121)
  {
    if (this == 5120)
    {
      *a2 = 0xC060000000000000;
      *a3 = 127.0;
      return this;
    }

    if (this == 5121)
    {
      *a2 = 0;
      *a3 = 255.0;
      return this;
    }

LABEL_22:
    *a2 = 0;
    *a3 = 1.0;
    return this;
  }

  if (this == 5122)
  {
    *a2 = 0xC0E0000000000000;
    *a3 = 32767.0;
  }

  else if (this == 5123)
  {
    *a2 = 0;
    *a3 = 65535.0;
  }

  else
  {
    *a2 = 0xC1E0000000000000;
    *a3 = 2147483650.0;
  }

  return this;
}

uint64_t GPUTools::GL::dy_pixel_group_size(GPUTools::GL *this, GPUTools::GL *a2)
{
  v2 = a2;
  result = GPUTools::GL::dy_type_size(a2);
  if (v2 > 34041)
  {
    if (v2 > 35898)
    {
      if (v2 != 35899 && v2 != 35902 && v2 != 36269)
      {
        return GPUTools::GL::dy_format_element_count(this) * result;
      }
    }

    else if ((v2 - 34234) >= 2 && v2 != 34042)
    {
      return GPUTools::GL::dy_format_element_count(this) * result;
    }
  }

  else if ((v2 - 33634) >= 7 && (v2 - 32818) >= 5)
  {
    return GPUTools::GL::dy_format_element_count(this) * result;
  }

  return result;
}

uint64_t GPUTools::GL::dy_pixel_row_bytes(GPUTools::GL *this, int a2, int a3, unsigned int a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = this;
  result = 0;
  if (a4 <= 8 && ((1 << a4) & 0x116) != 0)
  {
    if (a3 <= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = a3;
    }

    return (a4 + v6 * v4 - 1) & -a4;
  }

  return result;
}

uint64_t GPUTools::GL::ComputeClientImageSize(unsigned int *a1, int *a2)
{
  v4 = GPUTools::GL::dy_pixel_group_size(a1[1], a1[2]);
  if (a1[10] <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a1[10];
  }

  v6 = a1[6];
  if (!v6)
  {
    return 0;
  }

  v7 = a2[3];
  if (v7 > 8 || ((1 << v7) & 0x116) == 0)
  {
    return 0;
  }

  v9 = v5 * v4;
  if (*a2 > 0)
  {
    v6 = *a2;
  }

  return a1[7] * ((v7 + v9 * v6 - 1) & -v7) * a1[8];
}

uint64_t GPUTools::GL::ComputePackedClientImageSize(unsigned int *a1)
{
  v2 = GPUTools::GL::dy_pixel_group_size(a1[1], a1[2]);
  v3 = a1[10];
  if (v3 <= 1)
  {
    v3 = 1;
  }

  return a1[7] * a1[6] * v3 * v2 * a1[8];
}

uint64_t GPUTools::GL::ComputeReadPixelsImageSize(int a1, int a2, GPUTools::GL *this, GPUTools::GL *a4, int *a5)
{
  v8 = GPUTools::GL::dy_pixel_group_size(this, a4);
  v9 = a5[6];
  if (!v9)
  {
    v10 = *a5;
    v11 = a5[3];
    if (*a5 <= 0)
    {
      v10 = a1;
    }

    v9 = (v11 + v10 * v8 - 1) & -v11;
    v12 = v11 > 8;
    v13 = (1 << v11) & 0x116;
    if (v12 || v13 == 0)
    {
      v9 = 0;
    }

    if (!a1)
    {
      v9 = 0;
    }
  }

  return (a5[2] * v8 + (a5[1] + a2) * v9);
}

const signed __int8 *GPUTools::GL::NormalizeIntegerComponents(const signed __int8 *this, unint64_t a2, unint64_t a3, double a4, double a5, __n128 a6)
{
  if (!a3)
  {
    return this;
  }

  if (a3 >= 4 && (a2 + a3 <= this || &this[4 * a3] <= a2))
  {
    if (a3 >= 0x10)
    {
      v6 = a3 & 0xFFFFFFFFFFFFFFF0;
      v12.i64[0] = 0x8181818181818181;
      v12.i64[1] = 0x8181818181818181;
      a6.n128_u32[1] = 100663295;
      v13 = a3 & 0xFFFFFFFFFFFFFFF0;
      v14 = vdupq_n_s32(0x42FE0000u);
      v15 = this;
      v16 = a2;
      do
      {
        v17 = *v16++;
        v18 = vmaxq_s8(v17, v12);
        v15[2] = vdivq_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v18, xmmword_24C1558E0), 0x18uLL), v14);
        v15[3] = vdivq_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v18, xmmword_24C1558F0), 0x18uLL), v14);
        *v15 = vdivq_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v18, xmmword_24C1558C0), 0x18uLL), v14);
        v15[1] = vdivq_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v18, xmmword_24C1558D0), 0x18uLL), v14);
        v15 += 4;
        v13 -= 16;
      }

      while (v13);
      if (v6 == a3)
      {
        return this;
      }

      if ((a3 & 0xC) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = 0;
    }

    v19 = v6;
    v6 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = (a2 + v19);
    v21 = &this[4 * v19];
    v22 = v19 - (a3 & 0xFFFFFFFFFFFFFFFCLL);
    v23 = vdupq_n_s32(0x42FE0000u);
    do
    {
      v24 = *v20++;
      a6.n128_u32[0] = v24;
      v25 = vmax_s16(*&vmovl_s8(a6.n128_u64[0]), 0x7E007E007E007ELL);
      v26 = 0uLL;
      v26.i8[3] = v25.i8[0];
      v26.i8[7] = v25.i8[2];
      v26.i8[11] = v25.i8[4];
      v26.i8[15] = v25.i8[6];
      a6 = vdivq_f32(vcvtq_n_f32_s32(v26, 0x18uLL), v23);
      *v21++ = a6;
      v22 += 4;
    }

    while (v22);
    if (v6 == a3)
    {
      return this;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_6:
  v7 = (a3 - v6);
  v8 = &this[4 * v6];
  v9 = (a2 + v6);
  do
  {
    v11 = *v9++;
    v10 = v11;
    if (v11 <= -127)
    {
      v10 = -127;
    }

    *v8++ = v10 / 127.0;
    --v7;
  }

  while (v7);
  return this;
}

const unsigned __int8 *GPUTools::GL::NormalizeIntegerComponents(const unsigned __int8 *this, unint64_t a2, unint64_t a3, double a4, __n128 a5)
{
  if (a3)
  {
    if (a3 < 4 || a2 + a3 > this && &this[4 * a3] > a2)
    {
      v5 = 0;
      goto LABEL_6;
    }

    if (a3 >= 0x10)
    {
      v5 = a3 & 0xFFFFFFFFFFFFFFF0;
      a5.n128_u32[1] = -251;
      v10 = a3 & 0xFFFFFFFFFFFFFFF0;
      v11 = this;
      v12 = vdupq_n_s32(0x437F0000u);
      v13 = a2;
      do
      {
        v14 = *v13++;
        v11[2] = vdivq_f32(vcvtq_f32_u32(vqtbl1q_s8(v14, xmmword_24C155920)), v12);
        v11[3] = vdivq_f32(vcvtq_f32_u32(vqtbl1q_s8(v14, xmmword_24C155930)), v12);
        *v11 = vdivq_f32(vcvtq_f32_u32(vqtbl1q_s8(v14, xmmword_24C155900)), v12);
        v11[1] = vdivq_f32(vcvtq_f32_u32(vqtbl1q_s8(v14, xmmword_24C155910)), v12);
        v11 += 4;
        v10 -= 16;
      }

      while (v10);
      if (v5 == a3)
      {
        return this;
      }

      if ((a3 & 0xC) == 0)
      {
LABEL_6:
        v6 = (a3 - v5);
        v7 = &this[4 * v5];
        v8 = (a2 + v5);
        do
        {
          v9 = *v8++;
          *v7++ = v9 / 255.0;
          --v6;
        }

        while (v6);
        return this;
      }
    }

    else
    {
      v5 = 0;
    }

    v15 = v5;
    v5 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = (a2 + v15);
    v17 = &this[4 * v15];
    v18 = v15 - (a3 & 0xFFFFFFFFFFFFFFFCLL);
    v19 = vdupq_n_s32(0x437F0000u);
    do
    {
      v20 = *v16++;
      a5.n128_u32[0] = v20;
      a5 = vdivq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a5.n128_u64[0]))), v19);
      *v17++ = a5;
      v18 += 4;
    }

    while (v18);
    if (v5 != a3)
    {
      goto LABEL_6;
    }
  }

  return this;
}

float32x4_t *GPUTools::GL::NormalizeIntegerComponents(float32x4_t *this, int16x8_t *a2, unint64_t a3)
{
  if (!a3)
  {
    return this;
  }

  if (a3 >= 4)
  {
    if (a3 >= 0x10)
    {
      v3 = a3 & 0xFFFFFFFFFFFFFFF0;
      v4 = a2 + 1;
      v5 = this + 2;
      v6.i64[0] = 0x1000100010001;
      v6.i64[1] = 0x1000100010001;
      v7 = vnegq_f16(v6);
      v8 = vdupq_n_s32(0x46FFFE00u);
      v9 = a3 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v10 = vmaxq_s16(v4[-1], v7);
        v11 = vmaxq_s16(*v4, v7);
        v5[-2] = vdivq_f32(vcvtq_f32_s32(vmovl_s16(*v10.i8)), v8);
        v5[-1] = vdivq_f32(vcvtq_f32_s32(vmovl_high_s16(v10)), v8);
        *v5 = vdivq_f32(vcvtq_f32_s32(vmovl_s16(*v11.i8)), v8);
        v5[1] = vdivq_f32(vcvtq_f32_s32(vmovl_high_s16(v11)), v8);
        v5 += 4;
        v4 += 2;
        v9 -= 16;
      }

      while (v9);
      if (v3 == a3)
      {
        return this;
      }

      if ((a3 & 0xC) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v3 = 0;
    }

    v12 = v3;
    v3 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = (a2 + 2 * v12);
    v14 = (this + 4 * v12);
    v15 = v12 - (a3 & 0xFFFFFFFFFFFFFFFCLL);
    v16 = vneg_f16(0x1000100010001);
    v17 = vdupq_n_s32(0x46FFFE00u);
    do
    {
      v18 = *v13++;
      *v14++ = vdivq_f32(vcvtq_f32_s32(vmovl_s16(vmax_s16(v18, v16))), v17);
      v15 += 4;
    }

    while (v15);
    if (v3 == a3)
    {
      return this;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_13:
  v19 = (a3 - v3);
  v20 = &this->f32[v3];
  v21 = &a2->i16[v3];
  do
  {
    v23 = *v21++;
    v22 = v23;
    if (v23 <= -32767)
    {
      v22 = -32767;
    }

    *v20++ = v22 / 32767.0;
    --v19;
  }

  while (v19);
  return this;
}

float32x4_t *GPUTools::GL::NormalizeIntegerComponents(float32x4_t *this, uint16x8_t *a2, unint64_t a3)
{
  if (a3)
  {
    if (a3 < 4)
    {
      v3 = 0;
      goto LABEL_13;
    }

    if (a3 >= 0x10)
    {
      v3 = a3 & 0xFFFFFFFFFFFFFFF0;
      v4 = a2 + 1;
      v5 = this + 2;
      v6 = vdupq_n_s32(0x477FFF00u);
      v7 = a3 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v8 = v4[-1];
        v9 = vcvtq_f32_u32(vmovl_high_u16(*v4));
        v10 = vdivq_f32(vcvtq_f32_u32(vmovl_u16(*v4->i8)), v6);
        v5[-2] = vdivq_f32(vcvtq_f32_u32(vmovl_u16(*v8.i8)), v6);
        v5[-1] = vdivq_f32(vcvtq_f32_u32(vmovl_high_u16(v8)), v6);
        *v5 = v10;
        v5[1] = vdivq_f32(v9, v6);
        v5 += 4;
        v4 += 2;
        v7 -= 16;
      }

      while (v7);
      if (v3 == a3)
      {
        return this;
      }

      if ((a3 & 0xC) == 0)
      {
LABEL_13:
        v17 = (a3 - v3);
        v18 = &this->f32[v3];
        v19 = a2 + v3;
        do
        {
          v20 = *v19++;
          *v18++ = v20 / 65535.0;
          --v17;
        }

        while (v17);
        return this;
      }
    }

    else
    {
      v3 = 0;
    }

    v11 = v3;
    v3 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = (a2 + 2 * v11);
    v13 = (this + 4 * v11);
    v14 = v11 - (a3 & 0xFFFFFFFFFFFFFFFCLL);
    v15 = vdupq_n_s32(0x477FFF00u);
    do
    {
      v16 = *v12++;
      *v13++ = vdivq_f32(vcvtq_f32_u32(vmovl_u16(v16)), v15);
      v14 += 4;
    }

    while (v14);
    if (v3 != a3)
    {
      goto LABEL_13;
    }
  }

  return this;
}

float GPUTools::GL::NormalizeIntegerComponents(GPUTools::GL *this, int32x4_t *a2, unint64_t a3, int32x4_t a4)
{
  if (a3)
  {
    if (a3 >= 8)
    {
      v4 = a3 & 0xFFFFFFFFFFFFFFF8;
      v5 = a2 + 1;
      v6 = (this + 16);
      v7.i64[0] = 0x100000001;
      v7.i64[1] = 0x100000001;
      a4 = vnegq_f32(v7);
      v8.i64[0] = 0x3000000030000000;
      v8.i64[1] = 0x3000000030000000;
      v9 = a3 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v10 = vmulq_f32(vcvtq_f32_s32(vmaxq_s32(*v5, a4)), v8);
        v6[-1] = vmulq_f32(vcvtq_f32_s32(vmaxq_s32(v5[-1], a4)), v8);
        *v6 = v10;
        v5 += 2;
        v6 += 2;
        v9 -= 8;
      }

      while (v9);
      if (v4 == a3)
      {
        return *a4.i32;
      }
    }

    else
    {
      v4 = 0;
    }

    v11 = (a3 - v4);
    v12 = v4;
    v13 = (this + 4 * v4);
    v14 = &a2->i32[v12];
    do
    {
      v16 = *v14++;
      v15 = v16;
      if (v16 <= -2147483647)
      {
        v15 = -2147483647;
      }

      *a4.i32 = vcvts_n_f32_s32(v15, 0x1FuLL);
      *v13++ = a4.i32[0];
      --v11;
    }

    while (v11);
  }

  return *a4.i32;
}

float32x4_t *GPUTools::GL::NormalizeIntegerComponents(float32x4_t *this, uint32x4_t *a2, unint64_t a3)
{
  if (a3)
  {
    if (a3 < 8)
    {
      v3 = 0;
LABEL_7:
      v9 = (a3 - v3);
      v10 = v3;
      v11 = &this->f32[v3];
      v12 = &a2->i32[v10];
      do
      {
        v13 = *v12++;
        *v11++ = v13 * 2.3283e-10;
        --v9;
      }

      while (v9);
      return this;
    }

    v3 = a3 & 0xFFFFFFFFFFFFFFF8;
    v4 = a2 + 1;
    v5 = this + 1;
    v6 = vdupq_n_s32(0x2F800000u);
    v7 = a3 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v8 = vmulq_f32(vcvtq_f32_u32(*v4), v6);
      v5[-1] = vmulq_f32(vcvtq_f32_u32(v4[-1]), v6);
      *v5 = v8;
      v4 += 2;
      v5 += 2;
      v7 -= 8;
    }

    while (v7);
    if (v3 != a3)
    {
      goto LABEL_7;
    }
  }

  return this;
}

uint64_t GPUTools::GL::DYGetBufferBindingEnum(GPUTools::GL *this)
{
  if (this == 36663)
  {
    v1 = 36663;
  }

  else
  {
    v1 = 0;
  }

  if (this == 36662)
  {
    v2 = 36662;
  }

  else
  {
    v2 = v1;
  }

  if (this == 35982)
  {
    v3 = 35983;
  }

  else
  {
    v3 = 0;
  }

  if (this == 35345)
  {
    v4 = 35368;
  }

  else
  {
    v4 = v3;
  }

  if (this <= 36661)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (this == 35052)
  {
    v6 = 35055;
  }

  else
  {
    v6 = 0;
  }

  if (this == 35051)
  {
    v7 = 35053;
  }

  else
  {
    v7 = v6;
  }

  if (this == 34963)
  {
    v8 = 34965;
  }

  else
  {
    v8 = 0;
  }

  if (this == 34962)
  {
    v9 = 34964;
  }

  else
  {
    v9 = v8;
  }

  if (this <= 35050)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if (this <= 35344)
  {
    return v10;
  }

  else
  {
    return v5;
  }
}

uint64_t GPUTools::GL::DYGetBufferAccessAsBitfield(GPUTools::GL *this)
{
  if ((this - 35000) >= 3)
  {
    return 0;
  }

  else
  {
    return (this - 34999);
  }
}

uint64_t GPUTools::GL::dy_get_framebuffer_binding_enum(GPUTools::GL *this)
{
  if (this == 36008)
  {
    v1 = 36010;
  }

  else
  {
    v1 = 36160;
  }

  if (this == 36009)
  {
    v2 = 36006;
  }

  else
  {
    v2 = v1;
  }

  if (this == 36160)
  {
    return 36006;
  }

  else
  {
    return v2;
  }
}

uint64_t GPUTools::GL::DYGetCompressedPalettedTextureInfo(uint64_t result, _DWORD *a2)
{
  v2 = result - 35728;
  if ((result - 35728) > 9)
  {
    *a2 = 1;
    a2[1] = 1;
    a2[2] = 8;
  }

  else
  {
    v3 = dword_24C15882C[v2];
    v4 = dword_24C158854[v2];
    v5 = dword_24C15887C[v2];
    *a2 = v3;
    a2[1] = v4;
    a2[2] = v5;
  }

  return result;
}

BOOL GPUTools::GL::DYIsAttachmentWritable(int a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a1 == 33306)
  {
    v23[1] = 36128;
    a1 = 36096;
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = 0;
  v23[0] = a1;
  v5 = 1;
  while (1)
  {
    v7 = v23[v4];
    if ((v7 - 36064) < 0x10)
    {
      break;
    }

    if (v7 == 36096)
    {
      v22[0] = 0;
      (*(a2 + 16))(a2, 2929, v22);
      if (v22[0] == 1)
      {
        v21 = 0;
        (*(a2 + 16))(a2, 2930, &v21);
        if (v21)
        {
          v21 = 0;
          (*(a2 + 16))(a2, 2932, &v21);
          if (v21 != 512)
          {
            return v5;
          }
        }
      }
    }

    else if (v7 == 36128)
    {
      v22[0] = 0;
      (*(a2 + 16))(a2, 2960, v22);
      if (v22[0] == 1)
      {
        v21 = 0;
        (*(a2 + 16))(a2, 2968, &v21);
        if (v21)
        {
          v20 = 0;
          (*(a2 + 16))(a2, 2962, &v20);
          if (v20 == 519)
          {
            v19 = 0;
            HIDWORD(v18) = 0;
            (*(a2 + 16))(a2, 2929, &v18 + 4);
            (*(a2 + 16))(a2, 2965, &v19 + 4);
            (*(a2 + 16))(a2, 2966, &v19);
            if (v19 == 7680)
            {
              v11 = HIDWORD(v19) == 7680;
              v12 = HIDWORD(v18);
              goto LABEL_36;
            }

            v10 = 1;
          }

          else
          {
            if (v20 == 512)
            {
              HIDWORD(v19) = 0;
              (*(a2 + 16))(a2, 2964, &v19 + 4);
              v10 = HIDWORD(v19) != 7680;
              goto LABEL_43;
            }

            v18 = 0;
            v19 = 0;
            (*(a2 + 16))(a2, 2929, &v18);
            (*(a2 + 16))(a2, 2964, &v19 + 4);
            (*(a2 + 16))(a2, 2965, &v19);
            (*(a2 + 16))(a2, 2966, &v18 + 4);
            v10 = 1;
            if (HIDWORD(v19) == 7680 && HIDWORD(v18) == 7680)
            {
              v11 = v19 == 7680;
              v12 = v18;
LABEL_36:
              v10 = !v11 && v12 == 1;
            }
          }
        }

        else
        {
          v10 = 0;
        }

LABEL_43:
        v21 = 0;
        (*(a2 + 16))(a2, 36005, &v21);
        v6 = v21;
        if (v21)
        {
          v20 = 0;
          (*(a2 + 16))(a2, 34816, &v20);
          if (v20 == 512)
          {
            HIDWORD(v19) = 0;
            (*(a2 + 16))(a2, 34817, &v19 + 4);
            v6 = HIDWORD(v19) != 7680;
          }

          else if (v20 == 519)
          {
            v19 = 0;
            HIDWORD(v18) = 0;
            (*(a2 + 16))(a2, 2929, &v18 + 4);
            (*(a2 + 16))(a2, 34818, &v19 + 4);
            (*(a2 + 16))(a2, 34819, &v19);
            if (v19 == 7680)
            {
              v14 = HIDWORD(v19) == 7680;
              v15 = HIDWORD(v18);
              goto LABEL_51;
            }

            v6 = 1;
          }

          else
          {
            v18 = 0;
            v19 = 0;
            (*(a2 + 16))(a2, 2929, &v18);
            (*(a2 + 16))(a2, 34817, &v19 + 4);
            (*(a2 + 16))(a2, 34818, &v19);
            (*(a2 + 16))(a2, 34819, &v18 + 4);
            v6 = 1;
            if (HIDWORD(v19) == 7680 && HIDWORD(v18) == 7680)
            {
              v14 = v19 == 7680;
              v15 = v18;
LABEL_51:
              v6 = !v14 && v15 == 1;
            }
          }
        }

        if (v10 || v6)
        {
          return v5;
        }
      }
    }

LABEL_7:
    v5 = ++v4 < v3;
    if (v3 == v4)
    {
      return v5;
    }
  }

  (*(a2 + 16))(a2, 3107, v22);
  if (v22[0])
  {
    v8 = 0;
  }

  else
  {
    v8 = v22[1] == 0;
  }

  v9 = v8 && v22[2] == 0;
  if (v9 && !v22[3])
  {
    goto LABEL_7;
  }

  return v5;
}

void GPUTools::GL::DYResolveMSAABuffer(GPUTools::GL *this, unint64_t a2, int8x16_t *__src, size_t __n, int32x4_t *__b, void *a6)
{
  v6 = __b;
  v8 = __src;
  v9 = (a2 - 1);
  if (a2 <= 1)
  {

    memcpy(__b, __src, __n);
    return;
  }

  v11 = this;
  memset(__b, 255, __n / a2);
  if (v11 > 34841)
  {
    if (v11 > 36167)
    {
      if (v11 <= 36755)
      {
        switch(v11)
        {
          case 36168:
            goto LABEL_14;
          case 36194:

            GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<2u,2u,true,63ull,59ull,58ull,53ull,52ull,48ull,0ull,0ull>(a2, v8, __n, v6);
            break;
          case 36208:
            GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<8u,16u,true,31ull,0ull,63ull,32ull,0ull,0ull,0ull,0ull>(a2, v8->i8, __n, v6);

            GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<8u,16u,true,31ull,0ull,63ull,32ull,0ull,0ull,0ull,0ull>(a2, &v8->i8[8], __n, &v6->i64[1]);
            break;
          case 36209:
            GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<8u,12u,true,31ull,0ull,63ull,32ull,0ull,0ull,0ull,0ull>(a2, v8, __n, v6);

            GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<4u,12u,true,63ull,32ull,0ull,0ull,0ull,0ull,0ull,0ull>(a2, &v8->i32[2], __n, &v6->i64[1]);
            break;
          case 36214:

            GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<8u,8u,true,15ull,0ull,31ull,16ull,47ull,32ull,63ull,48ull>(a2, v8, __n, v6);
            break;
          case 36215:

            GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<6u,6u,true,31ull,16ull,47ull,32ull,63ull,48ull,0ull,0ull>(a2, v8, __n, v6);
            break;
          case 36220:
            goto LABEL_60;
          case 36221:
            goto LABEL_101;
          case 36226:
            GPUTools::GL::MSAABufferResolver<long long>::resolve<8u,16u,true,31ull,0ull,63ull,32ull,0ull,0ull,0ull,0ull>(a2, v8->i8, __n, v6);

            GPUTools::GL::MSAABufferResolver<long long>::resolve<8u,16u,true,31ull,0ull,63ull,32ull,0ull,0ull,0ull,0ull>(a2, &v8->i8[8], __n, &v6->i64[1]);
            break;
          case 36227:
            GPUTools::GL::MSAABufferResolver<long long>::resolve<8u,12u,true,31ull,0ull,63ull,32ull,0ull,0ull,0ull,0ull>(a2, v8->i64, __n, v6);

            GPUTools::GL::MSAABufferResolver<long long>::resolve<4u,12u,true,63ull,32ull,0ull,0ull,0ull,0ull,0ull,0ull>(a2, &v8->i32[2], __n, &v6->i64[1]);
            break;
          case 36232:

            GPUTools::GL::MSAABufferResolver<long long>::resolve<8u,8u,true,15ull,0ull,31ull,16ull,47ull,32ull,63ull,48ull>(a2, v8, __n, v6);
            break;
          case 36233:

            GPUTools::GL::MSAABufferResolver<long long>::resolve<6u,6u,true,31ull,16ull,47ull,32ull,63ull,48ull,0ull,0ull>(a2, v8, __n, v6);
            break;
          case 36238:
            goto LABEL_124;
          case 36239:
            goto LABEL_127;
          default:
            return;
        }

        return;
      }

      if (v11 > 36757)
      {
        if (v11 == 36758)
        {
LABEL_127:

          GPUTools::GL::MSAABufferResolver<long long>::resolve<3u,3u,false,63ull,56ull,55ull,48ull,47ull,40ull,0ull,0ull>(a2, v8->i8, __n, v6);
          return;
        }

        if (v11 == 36759)
        {
LABEL_124:

          GPUTools::GL::MSAABufferResolver<long long>::resolve<4u,4u,false,63ull,56ull,55ull,48ull,47ull,40ull,39ull,32ull>(a2, v8->i8, __n, v6);
          return;
        }

        v60 = 36975;
        goto LABEL_50;
      }

      if (v11 != 36756)
      {
        if (!__n)
        {
          return;
        }

        v61 = (v8 + __n);
        v62 = a2 & 0xFFFFFFF0;
        v63 = a2 & 0xFFFFFFF8;
        while (1)
        {
          if (a2 >= 8)
          {
            if (a2 < 0x10)
            {
              v64 = 0;
              v65 = 0;
              v68 = 0;
LABEL_81:
              v67 = (v8 + 2 * v63);
              v69 = 0uLL;
              v70 = v64;
              v71 = v65;
              v72 = 2 * v68;
              v73 = v68 - v63;
              v74 = 0uLL;
              v75 = 0uLL;
              v76 = 0uLL;
              v77 = 0uLL;
              v78 = 0uLL;
              do
              {
                v79 = &v8->i8[v72];
                v461 = vld2_s8(v79);
                v80 = vmovl_s8(*v461.i8);
                v81 = vmovl_s16(*v80.i8);
                v82 = vmovl_high_s16(v80);
                v461 = vmovl_s8(v461.u64[1]);
                *(&v461 + 8) = vmovl_s16(*v461.i8);
                v461 = vmovl_high_s16(v461);
                v75 = vaddw_high_s32(v75, v82);
                v74 = vaddw_s32(v74, *v82.i8);
                v69 = vaddw_high_s32(v69, v81);
                v70 = vaddw_s32(v70, *v81.i8);
                v78 = vaddw_high_s32(v78, v461);
                v77 = vaddw_s32(v77, *v461.i8);
                v76 = vaddw_high_s32(v76, *(&v461 + 8));
                v71 = vaddw_s32(v71, v461.u64[1]);
                v72 += 16;
                v73 += 8;
              }

              while (v73);
              v64 = vaddvq_s64(vaddq_s64(vaddq_s64(v70, v74), vaddq_s64(v69, v75)));
              v65 = vaddvq_s64(vaddq_s64(vaddq_s64(v71, v77), vaddq_s64(v76, v78)));
              v66 = a2 & 0xFFFFFFF8;
              if (v63 == a2)
              {
                goto LABEL_76;
              }

              goto LABEL_90;
            }

            v83 = 0;
            v84 = 0uLL;
            v85 = 0uLL;
            v86 = 0uLL;
            v87 = 0uLL;
            v88 = 0uLL;
            v89 = 0uLL;
            v90 = 0uLL;
            v91 = 0uLL;
            v92 = 0uLL;
            v93 = 0uLL;
            v94 = 0uLL;
            v95 = 0uLL;
            v96 = 0uLL;
            v97 = 0uLL;
            v98 = 0uLL;
            v99 = 0uLL;
            do
            {
              i8 = v8[v83 / 0x10].i8;
              v465 = vld2q_s8(i8);
              v101 = vmovl_s8(*v465.val[0].i8);
              v102 = vmovl_s16(*v101.i8);
              v103 = vmovl_high_s16(v101);
              v104 = vmovl_high_s8(v465.val[0]);
              v105 = vmovl_s16(*v104.i8);
              v106 = vmovl_high_s16(v104);
              v107 = vmovl_s8(*v465.val[1].i8);
              v108 = vmovl_s16(*v107.i8);
              v109 = vmovl_high_s16(v107);
              v465.val[0] = vmovl_high_s8(v465.val[1]);
              v465.val[1] = vmovl_s16(*v465.val[0].i8);
              v465.val[0] = vmovl_high_s16(v465.val[0]);
              v90 = vaddw_s32(v90, *v106.i8);
              v89 = vaddw_high_s32(v89, v105);
              v87 = vaddw_high_s32(v87, v103);
              v91 = vaddw_high_s32(v91, v106);
              v88 = vaddw_s32(v88, *v105.i8);
              v86 = vaddw_s32(v86, *v103.i8);
              v85 = vaddw_high_s32(v85, v102);
              v84 = vaddw_s32(v84, *v102.i8);
              v98 = vaddw_s32(v98, *v465.val[0].i8);
              v97 = vaddw_high_s32(v97, v465.val[1]);
              v95 = vaddw_high_s32(v95, v109);
              v99 = vaddw_high_s32(v99, v465.val[0]);
              v96 = vaddw_s32(v96, *v465.val[1].i8);
              v94 = vaddw_s32(v94, *v109.i8);
              v93 = vaddw_high_s32(v93, v108);
              v92 = vaddw_s32(v92, *v108.i8);
              v83 += 32;
            }

            while (((2 * a2) & 0x1FFFFFFE0) != v83);
            v64 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v84, v88), vaddq_s64(v86, v90)), vaddq_s64(vaddq_s64(v85, v89), vaddq_s64(v87, v91))));
            v65 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v92, v96), vaddq_s64(v94, v98)), vaddq_s64(vaddq_s64(v93, v97), vaddq_s64(v95, v99))));
            if (v62 == a2)
            {
              goto LABEL_76;
            }

            if ((a2 & 8) != 0)
            {
              v68 = a2 & 0xFFFFFFF0;
              goto LABEL_81;
            }

            v67 = (v8 + 2 * v62);
            v66 = a2 & 0xFFFFFFF0;
          }

          else
          {
            v64 = 0;
            v65 = 0;
            v66 = 0;
            v67 = v8;
          }

LABEL_90:
          v110 = a2 - v66;
          do
          {
            v64 += v67->i8[0];
            v65 += v67->i8[1];
            v67 = (v67 + 2);
            --v110;
          }

          while (v110);
LABEL_76:
          v8 = (v8 + 2 * v9 + 2);
          v6->i8[0] = v64 / a2;
          v6->i8[1] = v65 / a2;
          v6 = (v6 + 2);
          if (v8 >= v61)
          {
            return;
          }
        }
      }

      if (!__n)
      {
        return;
      }

      v406 = (v8 + __n);
      v407 = v9 + 1;
      v408 = a2 & 0xFFFFFFE0;
      v409 = a2 & 0xFFFFFFF8;
      v410 = &v8[1];
      while (1)
      {
        if (a2 >= 8)
        {
          if (a2 < 0x20)
          {
            v411 = 0;
            v414 = 0;
LABEL_294:
            v413 = (v8 + v409);
            v446 = 0uLL;
            v447 = v411;
            v448 = 0uLL;
            v449 = 0uLL;
            do
            {
              v450 = vmovl_s8(*&v8->i8[v414]);
              v451 = vmovl_s16(*v450.i8);
              v452 = vmovl_high_s16(v450);
              v449 = vaddw_high_s32(v449, v452);
              v448 = vaddw_s32(v448, *v452.i8);
              v446 = vaddw_high_s32(v446, v451);
              v447 = vaddw_s32(v447, *v451.i8);
              v414 += 8;
            }

            while (v409 != v414);
            v411 = vaddvq_s64(vaddq_s64(vaddq_s64(v447, v448), vaddq_s64(v446, v449)));
            v412 = a2 & 0xFFFFFFF8;
            if (v409 == a2)
            {
              goto LABEL_284;
            }

            goto LABEL_299;
          }

          v415 = 0uLL;
          v416 = a2 & 0xFFFFFFE0;
          v417 = 0uLL;
          v418 = v410;
          v419 = 0uLL;
          v420 = 0uLL;
          v421 = 0uLL;
          v422 = 0uLL;
          v423 = 0uLL;
          v424 = 0uLL;
          v425 = 0uLL;
          v426 = 0uLL;
          v427 = 0uLL;
          v428 = 0uLL;
          v429 = 0uLL;
          v430 = 0uLL;
          v431 = 0uLL;
          v432 = 0uLL;
          do
          {
            v433 = *v418[-2].i8;
            v434 = vmovl_s8(*v433.i8);
            v435 = vmovl_s16(*v434.i8);
            v436 = vmovl_high_s8(v433);
            v437 = vmovl_high_s16(v436);
            v438 = vmovl_high_s16(v434);
            v439 = vmovl_s16(*v436.i8);
            v440 = vmovl_s8(*v418);
            v441 = vmovl_s16(*v440.i8);
            v442 = vmovl_high_s8(*v418->i8);
            v443 = vmovl_high_s16(v442);
            v444 = vmovl_high_s16(v440);
            v445 = vmovl_s16(*v442.i8);
            v420 = vaddw_high_s32(v420, v438);
            v422 = vaddw_high_s32(v422, v439);
            v421 = vaddw_s32(v421, *v439.i8);
            v419 = vaddw_s32(v419, *v438.i8);
            v417 = vaddw_high_s32(v417, v435);
            v423 = vaddw_s32(v423, *v437.i8);
            v415 = vaddw_s32(v415, *v435.i8);
            v424 = vaddw_high_s32(v424, v437);
            v428 = vaddw_high_s32(v428, v444);
            v430 = vaddw_high_s32(v430, v445);
            v429 = vaddw_s32(v429, *v445.i8);
            v427 = vaddw_s32(v427, *v444.i8);
            v426 = vaddw_high_s32(v426, v441);
            v431 = vaddw_s32(v431, *v443.i8);
            v425 = vaddw_s32(v425, *v441.i8);
            v418 += 4;
            v432 = vaddw_high_s32(v432, v443);
            v416 -= 32;
          }

          while (v416);
          v411 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v425, v415), vaddq_s64(v429, v421)), vaddq_s64(vaddq_s64(v427, v419), vaddq_s64(v431, v423))), vaddq_s64(vaddq_s64(vaddq_s64(v426, v417), vaddq_s64(v430, v422)), vaddq_s64(vaddq_s64(v428, v420), vaddq_s64(v432, v424)))));
          if (v408 == a2)
          {
            goto LABEL_284;
          }

          if ((a2 & 0x18) != 0)
          {
            v414 = a2 & 0xFFFFFFE0;
            goto LABEL_294;
          }

          v413 = (v8 + v408);
          v412 = a2 & 0xFFFFFFE0;
        }

        else
        {
          v411 = 0;
          v412 = 0;
          v413 = v8;
        }

LABEL_299:
        v453 = a2 - v412;
        do
        {
          v454 = v413->i8[0];
          v413 = (v413 + 1);
          v411 += v454;
          --v453;
        }

        while (v453);
LABEL_284:
        v8 = (v8 + v407);
        v6->i8[0] = v411 / a2;
        v6 = (v6 + 1);
        v410 = (v410 + v407);
        if (v8 >= v406)
        {
          return;
        }
      }
    }

    if (v11 <= 35900)
    {
      if (v11 > 35055)
      {
        if (v11 == 35056)
        {

          GPUTools::GL::MSAADepthStencilResolver<unsigned long long>::resolve<4u,4u,true,63ull,40ull,39ull,32ull>(a2, v8, __n, v6);
        }

        else if (v11 == 35898)
        {

          GPUTools::GL::MSAABufferResolver<float>::resolve<4u,(unsigned char)11,(unsigned char)11,(unsigned char)10,(unsigned char)0>(a2, v8->i8, __n, v6->i32);
        }
      }

      else if (v11 == 34842)
      {

        GPUTools::GL::MSAABufferResolver<float>::resolve<8u,(unsigned char)16,(unsigned char)16,(unsigned char)16,(unsigned char)16>(a2, v8->i16, __n, v6);
      }

      else if (v11 == 34843)
      {

        GPUTools::GL::MSAABufferResolver<float>::resolve<6u,(unsigned char)16,(unsigned char)16,(unsigned char)16,(unsigned char)0>(a2, v8, __n, v6);
      }
    }

    else
    {
      if (v11 > 35906)
      {
        if (v11 != 35907)
        {
          if (v11 == 36012)
          {
            if (__n)
            {
              v455 = (v8 + __n);
              do
              {
                v456 = 0;
                v457 = 3.4028e38;
                do
                {
                  if (v457 >= *&v8->i32[v456])
                  {
                    v457 = *&v8->i32[v456];
                  }

                  ++v456;
                }

                while (a2 != v456);
                v8 = (v8 + 4 * v9 + 4);
                *v6->i32 = v457;
                v6 = (v6 + 4);
              }

              while (v8 < v455);
            }
          }

          else if (v11 == 36013)
          {

            GPUTools::GL::MSAADepthStencilResolver<float>::resolve<8u,8u,true,63ull,32ull,31ull,24ull>(a2, v8->i8, __n, v6);
          }

          return;
        }

LABEL_60:

        GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<4u,4u,false,63ull,56ull,55ull,48ull,47ull,40ull,39ull,32ull>(a2, v8, __n, v6);
        return;
      }

      if (v11 == 35901)
      {

        GPUTools::GL::MSAABufferResolverResolveRGB9E5(a2, v8, __n, v6->i32, v12, v13);
      }

      else if (v11 == 35905)
      {
LABEL_101:

        GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<3u,3u,false,63ull,56ull,55ull,48ull,47ull,40ull,0ull,0ull>(a2, v8, __n, v6);
      }
    }

    return;
  }

  if (v11 > 33188)
  {
    switch(v11)
    {
      case 33189:
        if (!__n)
        {
          return;
        }

        v258 = (v8 + __n);
        v259 = a2 & 0xFFFFFFF0;
        v260 = a2 & 0xFFFFFFF8;
        while (1)
        {
          if (a2 < 8)
          {
            v261 = 0;
            v262 = -1;
            v263 = v8;
            goto LABEL_198;
          }

          if (a2 >= 0x10)
          {
            v286 = 0;
            v287.i64[0] = -1;
            v287.i64[1] = -1;
            v288.i64[0] = -1;
            v288.i64[1] = -1;
            v289.i64[0] = -1;
            v289.i64[1] = -1;
            v290.i64[0] = -1;
            v290.i64[1] = -1;
            v291.i64[0] = -1;
            v291.i64[1] = -1;
            v292.i64[0] = -1;
            v292.i64[1] = -1;
            v293.i64[0] = -1;
            v293.i64[1] = -1;
            v294.i64[0] = -1;
            v294.i64[1] = -1;
            do
            {
              v295 = v8[v286 / 0x10].i8;
              v463 = vld2q_s8(v295);
              v296 = vmovl_high_u8(v463.val[0]);
              v297 = vmovl_high_u16(v296);
              v298.i64[0] = v297.u32[2];
              v298.i64[1] = v297.u32[3];
              v299 = v298;
              v298.i64[0] = v297.u32[0];
              v298.i64[1] = v297.u32[1];
              v300 = v298;
              v301 = vmovl_u16(*v296.i8);
              v298.i64[0] = v301.u32[2];
              v298.i64[1] = v301.u32[3];
              v302 = v298;
              v303 = vmovl_u8(*v463.val[0].i8);
              v304 = vmovl_high_u16(v303);
              v298.i64[0] = v304.u32[2];
              v298.i64[1] = v304.u32[3];
              v305 = v298;
              v298.i64[0] = v301.u32[0];
              v298.i64[1] = v301.u32[1];
              v306 = v298;
              v298.i64[0] = v304.u32[0];
              v298.i64[1] = v304.u32[1];
              v307 = v298;
              v308 = vmovl_u16(*v303.i8);
              v298.i64[0] = v308.u32[2];
              v298.i64[1] = v308.u32[3];
              v309 = v298;
              v298.i64[0] = v308.u32[0];
              v298.i64[1] = v308.u32[1];
              v310 = vmovl_u8(*v463.val[1].i8);
              v311 = vmovl_u16(*v310.i8);
              v312 = vmovl_high_u16(v310);
              v463.val[0] = vmovl_high_u8(v463.val[1]);
              v463.val[1] = vmovl_u16(*v463.val[0].i8);
              v463.val[0] = vmovl_high_u16(v463.val[0]);
              v313 = vshll_high_n_u32(v463.val[0], 8uLL);
              v314 = vshll_high_n_u32(v463.val[1], 8uLL);
              v315 = vorrq_s8(vshll_n_u32(*v311.i8, 8uLL), v298);
              v316 = vorrq_s8(vshll_high_n_u32(v311, 8uLL), v309);
              v317 = vorrq_s8(vshll_n_u32(*v312.i8, 8uLL), v307);
              v463.val[1] = vorrq_s8(vshll_n_u32(*v463.val[1].i8, 8uLL), v306);
              v318 = vorrq_s8(vshll_high_n_u32(v312, 8uLL), v305);
              v319 = vorrq_s8(v314, v302);
              v463.val[0] = vorrq_s8(vshll_n_u32(*v463.val[0].i8, 8uLL), v300);
              v320 = vorrq_s8(v313, v299);
              v294 = vbslq_s8(vcgtq_u64(v320, v294), v294, v320);
              v293 = vbslq_s8(vcgtq_u64(v463.val[0], v293), v293, v463.val[0]);
              v292 = vbslq_s8(vcgtq_u64(v319, v292), v292, v319);
              v290 = vbslq_s8(vcgtq_u64(v318, v290), v290, v318);
              v291 = vbslq_s8(vcgtq_u64(v463.val[1], v291), v291, v463.val[1]);
              v289 = vbslq_s8(vcgtq_u64(v317, v289), v289, v317);
              v288 = vbslq_s8(vcgtq_u64(v316, v288), v288, v316);
              v287 = vbslq_s8(vcgtq_u64(v315, v287), v287, v315);
              v286 += 32;
            }

            while (((2 * a2) & 0x1FFFFFFE0) != v286);
            v321 = vbslq_s8(vcgtq_u64(v291, v287), v287, v291);
            v322 = vbslq_s8(vcgtq_u64(v293, v289), v289, v293);
            v323 = vbslq_s8(vcgtq_u64(v322, v321), v321, v322);
            v324 = vbslq_s8(vcgtq_u64(v292, v288), v288, v292);
            v325 = vbslq_s8(vcgtq_u64(v294, v290), v290, v294);
            v326 = vbslq_s8(vcgtq_u64(v325, v324), v324, v325);
            v327 = vbslq_s8(vcgtq_u64(v326, v323), v323, v326);
            v326.i64[0] = vextq_s8(v327, v327, 8uLL).u64[0];
            v262 = vbsl_s8(vcgtd_u64(v326.u64[0], v327.u64[0]), *v327.i8, *v326.i8);
            if (v259 == a2)
            {
              goto LABEL_184;
            }

            if ((a2 & 8) == 0)
            {
              v263 = (v8 + 2 * v259);
              v261 = a2 & 0xFFFFFFF0;
LABEL_198:
              v328 = a2 - v261;
              do
              {
                v330 = v263->u16[0];
                v263 = (v263 + 2);
                v329 = v330;
                if (v262 >= v330)
                {
                  v262 = v329;
                }

                --v328;
              }

              while (v328);
              goto LABEL_184;
            }

            v264 = a2 & 0xFFFFFFF0;
          }

          else
          {
            v264 = 0;
            v262 = -1;
          }

          v263 = (v8 + 2 * v260);
          v265 = 2 * v264;
          v266 = vdupq_n_s64(v262);
          v267 = v264 - v260;
          v268 = v266;
          v269 = v266;
          v270 = v266;
          do
          {
            v271 = &v8->i8[v265];
            v459 = vld2_s8(v271);
            v272 = vmovl_u8(*v459.i8);
            v273 = vmovl_high_u16(v272);
            v274.i64[0] = v273.u32[2];
            v274.i64[1] = v273.u32[3];
            v275 = v274;
            v274.i64[0] = v273.u32[0];
            v274.i64[1] = v273.u32[1];
            v276 = v274;
            v277 = vmovl_u16(*v272.i8);
            v274.i64[0] = v277.u32[2];
            v274.i64[1] = v277.u32[3];
            v278 = v274;
            v274.i64[0] = v277.u32[0];
            v274.i64[1] = v277.u32[1];
            v459 = vmovl_u8(v459.u64[1]);
            *(&v459 + 8) = vmovl_u16(*v459.i8);
            v459 = vmovl_high_u16(v459);
            v279 = vshll_high_n_u32(v459, 8uLL);
            v280 = vshll_high_n_u32(*(&v459 + 8), 8uLL);
            *(&v459 + 8) = vorrq_s8(vshll_n_u32(v459.u64[1], 8uLL), v274);
            v281 = vorrq_s8(v280, v278);
            v459 = vorrq_s8(vshll_n_u32(*v459.i8, 8uLL), v276);
            v282 = vorrq_s8(v279, v275);
            v270 = vbslq_s8(vcgtq_u64(v282, v270), v270, v282);
            v269 = vbslq_s8(vcgtq_u64(v459, v269), v269, v459);
            v268 = vbslq_s8(vcgtq_u64(v281, v268), v268, v281);
            v266 = vbslq_s8(vcgtq_u64(*(&v459 + 8), v266), v266, *(&v459 + 8));
            v265 += 16;
            v267 += 8;
          }

          while (v267);
          v283 = vbslq_s8(vcgtq_u64(v269, v266), v266, v269);
          v284 = vbslq_s8(vcgtq_u64(v270, v268), v268, v270);
          v285 = vbslq_s8(vcgtq_u64(v284, v283), v283, v284);
          v284.i64[0] = vextq_s8(v285, v285, 8uLL).u64[0];
          v262 = vbsl_s8(vcgtd_u64(v284.u64[0], v285.u64[0]), *v285.i8, *v284.i8);
          v261 = a2 & 0xFFFFFFF8;
          if (v260 != a2)
          {
            goto LABEL_198;
          }

LABEL_184:
          v8 = (v8 + 2 * v9 + 2);
          v6->i16[0] = v262;
          v6 = (v6 + 2);
          if (v8 >= v258)
          {
            return;
          }
        }

      case 33190:
        if (!__n)
        {
          return;
        }

        v331 = (v8 + __n);
        v332 = 4 * v9 + 4;
        v333 = a2 & 0xFFFFFFF8;
        v334 = &v8[1];
        while (a2 > 7)
        {
          v337 = (v8 + 4 * v333);
          v338.i64[0] = -1;
          v338.i64[1] = -1;
          v339 = a2 & 0xFFFFFFF8;
          v340 = v334;
          v341.i64[0] = -1;
          v341.i64[1] = -1;
          v342.i64[0] = -1;
          v342.i64[1] = -1;
          v343.i64[0] = -1;
          v343.i64[1] = -1;
          do
          {
            v344 = vshrq_n_u32(v340[-1], 8uLL);
            v345 = vshrq_n_u32(*v340, 8uLL);
            v346.i64[0] = v344.u32[0];
            v346.i64[1] = v344.u32[1];
            v347 = v346;
            v346.i64[0] = v344.u32[2];
            v346.i64[1] = v344.u32[3];
            v348 = v346;
            v346.i64[0] = v345.u32[0];
            v346.i64[1] = v345.u32[1];
            v349 = v346;
            v346.i64[0] = v345.u32[2];
            v346.i64[1] = v345.u32[3];
            v341 = vbslq_s8(vcgtq_u64(v348, v341), v341, v348);
            v338 = vbslq_s8(vcgtq_u64(v347, v338), v338, v347);
            v343 = vbslq_s8(vcgtq_u64(v346, v343), v343, v346);
            v342 = vbslq_s8(vcgtq_u64(v349, v342), v342, v349);
            v340 += 2;
            v339 -= 8;
          }

          while (v339);
          v350 = vbslq_s8(vcgtq_u64(v342, v338), v338, v342);
          v351 = vbslq_s8(vcgtq_u64(v343, v341), v341, v343);
          v352 = vbslq_s8(vcgtq_u64(v351, v350), v350, v351);
          v351.i64[0] = vextq_s8(v352, v352, 8uLL).u64[0];
          v336 = vbsl_s8(vcgtd_u64(v351.u64[0], v352.u64[0]), *v352.i8, *v351.i8);
          v335 = a2 & 0xFFFFFFF8;
          if (v333 != a2)
          {
            goto LABEL_212;
          }

LABEL_206:
          v8 = (v8 + v332);
          v6->i8[0] = 0;
          *(v6->i16 + 1) = v336.i16[0];
          v6->i8[3] = v336.i8[2];
          v6 = (v6 + 4);
          v334 = (v334 + v332);
          if (v8 >= v331)
          {
            return;
          }
        }

        v335 = 0;
        v336 = -1;
        v337 = v8;
LABEL_212:
        v353 = a2 - v335;
        do
        {
          v354 = v337->i32[0];
          v337 = (v337 + 4);
          v355 = v354 >> 8;
          if (*&v336 >= v355)
          {
            v336 = v355;
          }

          --v353;
        }

        while (v353);
        goto LABEL_206;
      case 33191:
      case 33192:
      case 33193:
      case 33194:
      case 33195:
      case 33196:
      case 33197:
      case 33198:
      case 33199:
      case 33200:
      case 33201:
      case 33202:
      case 33203:
      case 33204:
      case 33205:
      case 33206:
      case 33207:
      case 33208:
      case 33209:
      case 33210:
      case 33211:
      case 33212:
      case 33213:
      case 33214:
      case 33215:
      case 33216:
      case 33217:
      case 33218:
      case 33219:
      case 33220:
      case 33221:
      case 33222:
      case 33223:
      case 33224:
      case 33225:
      case 33226:
      case 33227:
      case 33228:
      case 33229:
      case 33230:
      case 33231:
      case 33232:
      case 33233:
      case 33234:
      case 33235:
      case 33236:
      case 33237:
      case 33238:
      case 33239:
      case 33240:
      case 33241:
      case 33242:
      case 33243:
      case 33244:
      case 33245:
      case 33246:
      case 33247:
      case 33248:
      case 33249:
      case 33250:
      case 33251:
      case 33252:
      case 33253:
      case 33254:
      case 33255:
      case 33256:
      case 33257:
      case 33258:
      case 33259:
      case 33260:
      case 33261:
      case 33262:
      case 33263:
      case 33264:
      case 33265:
      case 33266:
      case 33267:
      case 33268:
      case 33269:
      case 33270:
      case 33271:
      case 33272:
      case 33273:
      case 33274:
      case 33275:
      case 33276:
      case 33277:
      case 33278:
      case 33279:
      case 33280:
      case 33281:
      case 33282:
      case 33283:
      case 33284:
      case 33285:
      case 33286:
      case 33287:
      case 33288:
      case 33289:
      case 33290:
      case 33291:
      case 33292:
      case 33293:
      case 33294:
      case 33295:
      case 33296:
      case 33297:
      case 33298:
      case 33299:
      case 33300:
      case 33301:
      case 33302:
      case 33303:
      case 33304:
      case 33305:
      case 33306:
      case 33307:
      case 33308:
      case 33309:
      case 33310:
      case 33311:
      case 33312:
      case 33313:
      case 33314:
      case 33315:
      case 33316:
      case 33317:
      case 33318:
      case 33319:
      case 33320:
      case 33322:
      case 33324:
        return;
      case 33321:
      case 33330:
LABEL_14:
        if (!__n)
        {
          return;
        }

        v17 = v9 + 1;
        v18 = (v9 + 1) & 0x1FFFFFFE0;
        v19 = (v9 + 1) & 0x1FFFFFFF8;
        v20 = v8 + 1;
        v21 = (v8 + __n);
        while (1)
        {
          if (v9 >= 7)
          {
            if (v9 < 0x1F)
            {
              v22 = 0;
              v25 = 0;
LABEL_26:
              v24 = (v8 + v19);
              v53 = 0uLL;
              v54 = v22;
              v55 = 0uLL;
              v56 = 0uLL;
              do
              {
                v14.i64[0] = *(v8->i64 + v25);
                v57 = vqtbl1q_s8(v14, xmmword_24C155910);
                v14 = vqtbl1q_s8(v14, xmmword_24C155900);
                v56 = vaddw_high_u32(v56, v57);
                v53 = vaddw_high_u32(v53, v14);
                v55 = vaddw_u32(v55, *v57.i8);
                v54 = vaddw_u32(v54, *v14.i8);
                v25 += 8;
              }

              while (v19 != v25);
              v22 = vaddvq_s64(vaddq_s64(vaddq_s64(v54, v55), vaddq_s64(v53, v56)));
              v23 = (v9 + 1) & 0xFFFFFFF8;
              if (v17 == v19)
              {
                goto LABEL_16;
              }

              goto LABEL_31;
            }

            v26 = 0uLL;
            v27 = (v9 + 1) & 0x1FFFFFFE0;
            v28 = 0uLL;
            v29 = v20;
            v30 = 0uLL;
            v31 = 0uLL;
            v32 = 0uLL;
            v33 = 0uLL;
            v34 = 0uLL;
            v35 = 0uLL;
            v36 = 0uLL;
            v37 = 0uLL;
            v38 = 0uLL;
            v39 = 0uLL;
            v40 = 0uLL;
            v41 = 0uLL;
            v42 = 0uLL;
            v43 = 0uLL;
            do
            {
              v44 = v29[-1];
              v45 = vqtbl1q_s8(v44, xmmword_24C155910);
              v46 = vqtbl1q_s8(v44, xmmword_24C155900);
              v47 = vqtbl1q_s8(v44, xmmword_24C155920);
              v48 = vqtbl1q_s8(v44, xmmword_24C155930);
              v49 = vqtbl1q_s8(*v29, xmmword_24C155910);
              v50 = vqtbl1q_s8(*v29, xmmword_24C155900);
              v51 = vqtbl1q_s8(*v29, xmmword_24C155920);
              v52 = vqtbl1q_s8(*v29, xmmword_24C155930);
              v28 = vaddw_high_u32(v28, v46);
              v31 = vaddw_high_u32(v31, v45);
              v30 = vaddw_u32(v30, *v45.i8);
              v26 = vaddw_u32(v26, *v46.i8);
              v32 = vaddw_u32(v32, *v47.i8);
              v33 = vaddw_high_u32(v33, v47);
              v34 = vaddw_u32(v34, *v48.i8);
              v35 = vaddw_high_u32(v35, v48);
              v37 = vaddw_high_u32(v37, v50);
              v39 = vaddw_high_u32(v39, v49);
              v38 = vaddw_u32(v38, *v49.i8);
              v36 = vaddw_u32(v36, *v50.i8);
              v40 = vaddw_u32(v40, *v51.i8);
              v41 = vaddw_high_u32(v41, v51);
              v42 = vaddw_u32(v42, *v52.i8);
              v29 += 2;
              v43 = vaddw_high_u32(v43, v52);
              v27 -= 32;
            }

            while (v27);
            v14 = vaddq_s64(v42, v34);
            v22 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v36, v26), vaddq_s64(v40, v32)), vaddq_s64(vaddq_s64(v38, v30), v14)), vaddq_s64(vaddq_s64(vaddq_s64(v37, v28), vaddq_s64(v41, v33)), vaddq_s64(vaddq_s64(v39, v31), vaddq_s64(v43, v35)))));
            if (v17 == v18)
            {
              goto LABEL_16;
            }

            if (((v9 + 1) & 0x18) != 0)
            {
              v25 = (v9 + 1) & 0x1FFFFFFE0;
              goto LABEL_26;
            }

            v24 = (v8 + v18);
            v23 = (v9 + 1) & 0xFFFFFFE0;
          }

          else
          {
            v22 = 0;
            v23 = 0;
            v24 = v8;
          }

LABEL_31:
          v58 = a2 - v23;
          do
          {
            v59 = v24->u8[0];
            v24 = (v24 + 1);
            v22 += v59;
            --v58;
          }

          while (v58);
LABEL_16:
          v8 = (v8 + v17);
          v6->i8[0] = v22 / a2;
          v6 = (v6 + 1);
          v20 = (v20 + v17);
          if (v8 >= v21)
          {
            return;
          }
        }

      case 33323:
      case 33336:
        if (!__n)
        {
          return;
        }

        v111 = v9 + 1;
        v112 = (v9 + 1) & 0x1FFFFFFF0;
        v113 = (v9 + 1) & 0x1FFFFFFF8;
        v114 = (v8 + __n);
        while (1)
        {
          if (v9 >= 7)
          {
            if (v9 < 0xF)
            {
              v115 = 0;
              v116 = 0;
              v119 = 0;
LABEL_111:
              v118 = (v8 + 2 * v113);
              v120 = 0uLL;
              v121 = v115;
              v122 = v116;
              v123 = 2 * v119;
              v124 = v119 - v113;
              v125 = 0uLL;
              v126 = 0uLL;
              v127 = 0uLL;
              v128 = 0uLL;
              v129 = 0uLL;
              do
              {
                v130 = &v8->i8[v123];
                v15 = vld2_s8(v130);
                v131 = vqtbl1q_s8(v15, xmmword_24C155910);
                v132 = vqtbl1q_s8(v15, xmmword_24C155900);
                v133 = vqtbl1q_s8(v16, xmmword_24C155910);
                v15 = vqtbl1q_s8(v16, xmmword_24C155900);
                v126 = vaddw_high_u32(v126, v131);
                v120 = vaddw_high_u32(v120, v132);
                v125 = vaddw_u32(v125, *v131.i8);
                v121 = vaddw_u32(v121, *v132.i8);
                v129 = vaddw_high_u32(v129, v133);
                v127 = vaddw_high_u32(v127, v15);
                v128 = vaddw_u32(v128, *v133.i8);
                v122 = vaddw_u32(v122, *v15.i8);
                v123 += 16;
                v124 += 8;
              }

              while (v124);
              v115 = vaddvq_s64(vaddq_s64(vaddq_s64(v121, v125), vaddq_s64(v120, v126)));
              v116 = vaddvq_s64(vaddq_s64(vaddq_s64(v122, v128), vaddq_s64(v127, v129)));
              v117 = (v9 + 1) & 0xFFFFFFF8;
              if (v111 == v113)
              {
                goto LABEL_106;
              }

              goto LABEL_120;
            }

            v134 = 0uLL;
            v135 = (v9 + 1) & 0x1FFFFFFF0;
            v136 = 0uLL;
            v137 = v8;
            v138 = 0uLL;
            v139 = 0uLL;
            v140 = 0uLL;
            v141 = 0uLL;
            v142 = 0uLL;
            v143 = 0uLL;
            v144 = 0uLL;
            v145 = 0uLL;
            v146 = 0uLL;
            v147 = 0uLL;
            v148 = 0uLL;
            v149 = 0uLL;
            v150 = 0uLL;
            v16 = 0uLL;
            do
            {
              v467 = vld2q_s8(v137);
              v137 += 32;
              v151 = vqtbl1q_s8(v467.val[0], xmmword_24C155920);
              v152 = vqtbl1q_s8(v467.val[0], xmmword_24C155910);
              v153 = vqtbl1q_s8(v467.val[0], xmmword_24C155900);
              v154 = vqtbl1q_s8(v467.val[0], xmmword_24C155930);
              v155 = vqtbl1q_s8(v467.val[1], xmmword_24C155920);
              v156 = vqtbl1q_s8(v467.val[1], xmmword_24C155910);
              v157 = vqtbl1q_s8(v467.val[1], xmmword_24C155900);
              v467.val[0] = vqtbl1q_s8(v467.val[1], xmmword_24C155930);
              v139 = vaddw_high_u32(v139, v152);
              v136 = vaddw_high_u32(v136, v153);
              v140 = vaddw_u32(v140, *v151.i8);
              v138 = vaddw_u32(v138, *v152.i8);
              v134 = vaddw_u32(v134, *v153.i8);
              v141 = vaddw_high_u32(v141, v151);
              v142 = vaddw_u32(v142, *v154.i8);
              v143 = vaddw_high_u32(v143, v154);
              v147 = vaddw_high_u32(v147, v156);
              v145 = vaddw_high_u32(v145, v157);
              v148 = vaddw_u32(v148, *v155.i8);
              v146 = vaddw_u32(v146, *v156.i8);
              v144 = vaddw_u32(v144, *v157.i8);
              v149 = vaddw_high_u32(v149, v155);
              v150 = vaddw_u32(v150, *v467.val[0].i8);
              v16 = vaddw_high_u32(v16, v467.val[0]);
              v135 -= 16;
            }

            while (v135);
            v15 = vaddq_s64(v138, v142);
            v115 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v134, v140), v15), vaddq_s64(vaddq_s64(v136, v141), vaddq_s64(v139, v143))));
            v116 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v144, v148), vaddq_s64(v146, v150)), vaddq_s64(vaddq_s64(v145, v149), vaddq_s64(v147, v16))));
            if (v111 == v112)
            {
              goto LABEL_106;
            }

            if ((v111 & 8) != 0)
            {
              v119 = (v9 + 1) & 0x1FFFFFFF0;
              goto LABEL_111;
            }

            v118 = (v8 + 2 * v112);
            v117 = (v9 + 1) & 0xFFFFFFF0;
          }

          else
          {
            v115 = 0;
            v116 = 0;
            v117 = 0;
            v118 = v8;
          }

LABEL_120:
          v158 = a2 - v117;
          do
          {
            v115 += v118->u8[0];
            v116 += v118->u8[1];
            v118 = (v118 + 2);
            --v158;
          }

          while (v158);
LABEL_106:
          v8 = (v8 + 2 * v9 + 2);
          v6->i8[0] = v115 / a2;
          v6->i8[1] = v116 / a2;
          v6 = (v6 + 2);
          if (v8 >= v114)
          {
            return;
          }
        }

      case 33325:

        GPUTools::GL::MSAABufferResolver<float>::resolve<2u,(unsigned char)16,(unsigned char)0,(unsigned char)0,(unsigned char)0>(a2, v8, __n, v6);
        return;
      case 33326:

        GPUTools::GL::MSAABufferResolver<float>::resolve<4u,(unsigned char)32,(unsigned char)0,(unsigned char)0,(unsigned char)0>(a2, v8->i32, __n, v6->i32);
        return;
      case 33327:

        GPUTools::GL::MSAABufferResolver<float>::resolve<4u,(unsigned char)16,(unsigned char)16,(unsigned char)0,(unsigned char)0>(a2, v8->i8, __n, v6);
        return;
      case 33328:

        GPUTools::GL::MSAABufferResolver<float>::resolve<8u,(unsigned char)32,(unsigned char)32,(unsigned char)0,(unsigned char)0>(a2, v8, __n, v6->i32, v13);
        return;
      case 33329:
        if (!__n)
        {
          return;
        }

        v159 = (v8 + __n);
        v160 = v9 + 1;
        v161 = a2 & 0xFFFFFFE0;
        v162 = a2 & 0xFFFFFFF8;
        v163 = &v8[1];
        while (1)
        {
          if (a2 >= 8)
          {
            if (a2 < 0x20)
            {
              v164 = 0;
              v167 = 0;
LABEL_148:
              v166 = (v8 + v162);
              v199 = 0uLL;
              v200 = v164;
              v201 = 0uLL;
              v202 = 0uLL;
              do
              {
                v203 = vmovl_s8(*&v8->i8[v167]);
                v204 = vmovl_s16(*v203.i8);
                v205 = vmovl_high_s16(v203);
                v202 = vaddw_high_s32(v202, v205);
                v201 = vaddw_s32(v201, *v205.i8);
                v199 = vaddw_high_s32(v199, v204);
                v200 = vaddw_s32(v200, *v204.i8);
                v167 += 8;
              }

              while (v162 != v167);
              v164 = vaddvq_s64(vaddq_s64(vaddq_s64(v200, v201), vaddq_s64(v199, v202)));
              v165 = a2 & 0xFFFFFFF8;
              if (v162 == a2)
              {
                goto LABEL_138;
              }

              goto LABEL_153;
            }

            v168 = 0uLL;
            v169 = a2 & 0xFFFFFFE0;
            v170 = 0uLL;
            v171 = v163;
            v172 = 0uLL;
            v173 = 0uLL;
            v174 = 0uLL;
            v175 = 0uLL;
            v176 = 0uLL;
            v177 = 0uLL;
            v178 = 0uLL;
            v179 = 0uLL;
            v180 = 0uLL;
            v181 = 0uLL;
            v182 = 0uLL;
            v183 = 0uLL;
            v184 = 0uLL;
            v185 = 0uLL;
            do
            {
              v186 = *v171[-2].i8;
              v187 = vmovl_s8(*v186.i8);
              v188 = vmovl_s16(*v187.i8);
              v189 = vmovl_high_s8(v186);
              v190 = vmovl_high_s16(v189);
              v191 = vmovl_high_s16(v187);
              v192 = vmovl_s16(*v189.i8);
              v193 = vmovl_s8(*v171);
              v194 = vmovl_s16(*v193.i8);
              v195 = vmovl_high_s8(*v171->i8);
              v196 = vmovl_high_s16(v195);
              v197 = vmovl_high_s16(v193);
              v198 = vmovl_s16(*v195.i8);
              v173 = vaddw_high_s32(v173, v191);
              v175 = vaddw_high_s32(v175, v192);
              v174 = vaddw_s32(v174, *v192.i8);
              v172 = vaddw_s32(v172, *v191.i8);
              v170 = vaddw_high_s32(v170, v188);
              v176 = vaddw_s32(v176, *v190.i8);
              v168 = vaddw_s32(v168, *v188.i8);
              v177 = vaddw_high_s32(v177, v190);
              v181 = vaddw_high_s32(v181, v197);
              v183 = vaddw_high_s32(v183, v198);
              v182 = vaddw_s32(v182, *v198.i8);
              v180 = vaddw_s32(v180, *v197.i8);
              v179 = vaddw_high_s32(v179, v194);
              v184 = vaddw_s32(v184, *v196.i8);
              v178 = vaddw_s32(v178, *v194.i8);
              v171 += 4;
              v185 = vaddw_high_s32(v185, v196);
              v169 -= 32;
            }

            while (v169);
            v164 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v178, v168), vaddq_s64(v182, v174)), vaddq_s64(vaddq_s64(v180, v172), vaddq_s64(v184, v176))), vaddq_s64(vaddq_s64(vaddq_s64(v179, v170), vaddq_s64(v183, v175)), vaddq_s64(vaddq_s64(v181, v173), vaddq_s64(v185, v177)))));
            if (v161 == a2)
            {
              goto LABEL_138;
            }

            if ((a2 & 0x18) != 0)
            {
              v167 = a2 & 0xFFFFFFE0;
              goto LABEL_148;
            }

            v166 = (v8 + v161);
            v165 = a2 & 0xFFFFFFE0;
          }

          else
          {
            v164 = 0;
            v165 = 0;
            v166 = v8;
          }

LABEL_153:
          v206 = a2 - v165;
          do
          {
            v207 = v166->i8[0];
            v166 = (v166 + 1);
            v164 += v207;
            --v206;
          }

          while (v206);
LABEL_138:
          v8 = (v8 + v160);
          v6->i8[0] = v164 / a2;
          v6 = (v6 + 1);
          v163 = (v163 + v160);
          if (v8 >= v159)
          {
            return;
          }
        }

      case 33331:

        GPUTools::GL::MSAABufferResolver<long long>::resolve<2u,2u,true,63ull,48ull,0ull,0ull,0ull,0ull,0ull,0ull>(a2, v8->i8, __n, v6);
        return;
      case 33332:
        if (!__n)
        {
          return;
        }

        v356 = (v8 + __n);
        v357 = a2 & 0xFFFFFFF0;
        v358 = a2 & 0xFFFFFFF8;
        while (1)
        {
          if (a2 >= 8)
          {
            if (a2 < 0x10)
            {
              v359 = 0;
              v362 = 0;
LABEL_245:
              v361 = (v8 + 2 * v358);
              v363 = 0uLL;
              v364 = v359;
              v365 = 2 * v362;
              v366 = v362 - v358;
              v367 = 0uLL;
              v368 = 0uLL;
              do
              {
                v369 = &v8->i8[v365];
                v460 = vld2_s8(v369);
                v370 = vmovl_u8(v460.val[0]);
                v371 = vmovl_high_u16(v370);
                v372.i64[0] = v371.u32[2];
                v372.i64[1] = v371.u32[3];
                v373 = v372;
                v372.i64[0] = v371.u32[0];
                v372.i64[1] = v371.u32[1];
                v374 = v372;
                v375 = vmovl_u16(*v370.i8);
                v372.i64[0] = v375.u32[2];
                v372.i64[1] = v375.u32[3];
                v376 = v372;
                v372.i64[0] = v375.u32[0];
                v372.i64[1] = v375.u32[1];
                v460 = vmovl_u8(v460.val[1]);
                *(&v460 + 8) = vmovl_u16(v460.val[0]);
                v460 = vmovl_high_u16(v460);
                v368 = vaddq_s64(vorrq_s8(vshll_high_n_u32(v460, 8uLL), v373), v368);
                v367 = vaddq_s64(vorrq_s8(vshll_n_u32(v460.val[0], 8uLL), v374), v367);
                v363 = vaddq_s64(vorrq_s8(vshll_high_n_u32(*(&v460 + 8), 8uLL), v376), v363);
                v364 = vaddq_s64(vorrq_s8(vshll_n_u32(v460.val[1], 8uLL), v372), v364);
                v365 += 16;
                v366 += 8;
              }

              while (v366);
              v359 = vaddvq_s64(vaddq_s64(vaddq_s64(v364, v367), vaddq_s64(v363, v368)));
              v360 = a2 & 0xFFFFFFF8;
              if (v358 == a2)
              {
                goto LABEL_240;
              }

              goto LABEL_254;
            }

            v377 = 0;
            v378 = 0uLL;
            v379 = 0uLL;
            v380 = 0uLL;
            v381 = 0uLL;
            v382 = 0uLL;
            v383 = 0uLL;
            v384 = 0uLL;
            v385 = 0uLL;
            do
            {
              v386 = v8[v377 / 0x10].i8;
              v464 = vld2q_s8(v386);
              v387 = vmovl_high_u8(v464.val[0]);
              v388 = vmovl_high_u16(v387);
              v389.i64[0] = v388.u32[2];
              v389.i64[1] = v388.u32[3];
              v390 = v389;
              v389.i64[0] = v388.u32[0];
              v389.i64[1] = v388.u32[1];
              v391 = v389;
              v392 = vmovl_u16(*v387.i8);
              v389.i64[0] = v392.u32[2];
              v389.i64[1] = v392.u32[3];
              v393 = v389;
              v394 = vmovl_u8(*v464.val[0].i8);
              v395 = vmovl_high_u16(v394);
              v389.i64[0] = v395.u32[2];
              v389.i64[1] = v395.u32[3];
              v396 = v389;
              v389.i64[0] = v392.u32[0];
              v389.i64[1] = v392.u32[1];
              v397 = v389;
              v389.i64[0] = v395.u32[0];
              v389.i64[1] = v395.u32[1];
              v398 = v389;
              v399 = vmovl_u16(*v394.i8);
              v389.i64[0] = v399.u32[2];
              v389.i64[1] = v399.u32[3];
              v400 = v389;
              v389.i64[0] = v399.u32[0];
              v389.i64[1] = v399.u32[1];
              v401 = vmovl_u8(*v464.val[1].i8);
              v402 = vmovl_u16(*v401.i8);
              v403 = vmovl_high_u16(v401);
              v464.val[0] = vmovl_high_u8(v464.val[1]);
              v464.val[1] = vmovl_u16(*v464.val[0].i8);
              v464.val[0] = vmovl_high_u16(v464.val[0]);
              v385 = vaddq_s64(vorrq_s8(vshll_high_n_u32(v464.val[0], 8uLL), v390), v385);
              v384 = vaddq_s64(vorrq_s8(vshll_n_u32(*v464.val[0].i8, 8uLL), v391), v384);
              v383 = vaddq_s64(vorrq_s8(vshll_high_n_u32(v464.val[1], 8uLL), v393), v383);
              v381 = vaddq_s64(vorrq_s8(vshll_high_n_u32(v403, 8uLL), v396), v381);
              v382 = vaddq_s64(vorrq_s8(vshll_n_u32(*v464.val[1].i8, 8uLL), v397), v382);
              v380 = vaddq_s64(vorrq_s8(vshll_n_u32(*v403.i8, 8uLL), v398), v380);
              v379 = vaddq_s64(vorrq_s8(vshll_high_n_u32(v402, 8uLL), v400), v379);
              v378 = vaddq_s64(vorrq_s8(vshll_n_u32(*v402.i8, 8uLL), v389), v378);
              v377 += 32;
            }

            while (((2 * a2) & 0x1FFFFFFE0) != v377);
            v359 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v378, v382), vaddq_s64(v380, v384)), vaddq_s64(vaddq_s64(v379, v383), vaddq_s64(v381, v385))));
            if (v357 == a2)
            {
              goto LABEL_240;
            }

            if ((a2 & 8) != 0)
            {
              v362 = a2 & 0xFFFFFFF0;
              goto LABEL_245;
            }

            v361 = (v8 + 2 * v357);
            v360 = a2 & 0xFFFFFFF0;
          }

          else
          {
            v359 = 0;
            v360 = 0;
            v361 = v8;
          }

LABEL_254:
          v404 = a2 - v360;
          do
          {
            v405 = v361->u16[0];
            v361 = (v361 + 2);
            v359 += v405;
            --v404;
          }

          while (v404);
LABEL_240:
          v8 = (v8 + 2 * v9 + 2);
          v6->i16[0] = v359 / a2;
          v6 = (v6 + 2);
          if (v8 >= v356)
          {
            return;
          }
        }

      case 33333:

        GPUTools::GL::MSAABufferResolver<long long>::resolve<4u,4u,true,63ull,32ull,0ull,0ull,0ull,0ull,0ull,0ull>(a2, v8->i32, __n, v6);
        return;
      case 33334:

        GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<4u,4u,true,63ull,32ull,0ull,0ull,0ull,0ull,0ull,0ull>(a2, v8, __n, v6);
        return;
      case 33335:
        if (!__n)
        {
          return;
        }

        v208 = (v8 + __n);
        v209 = a2 & 0xFFFFFFF0;
        v210 = a2 & 0xFFFFFFF8;
        break;
      case 33337:

        GPUTools::GL::MSAABufferResolver<long long>::resolve<4u,4u,true,47ull,32ull,65ull,48ull,0ull,0ull,0ull,0ull>(a2, v8, __n, v6);
        return;
      case 33338:

        GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<4u,4u,true,47ull,32ull,63ull,48ull,0ull,0ull,0ull,0ull>(a2, v8, __n, v6);
        return;
      case 33339:

        GPUTools::GL::MSAABufferResolver<long long>::resolve<8u,8u,true,31ull,0ull,63ull,32ull,0ull,0ull,0ull,0ull>(a2, v8, __n, v6);
        return;
      case 33340:

        GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<8u,8u,true,31ull,0ull,63ull,32ull,0ull,0ull,0ull,0ull>(a2, v8, __n, v6);
        return;
      default:
        if (v11 == 34836)
        {

          GPUTools::GL::MSAABufferResolver<float>::resolve<16u,(unsigned char)32,(unsigned char)32,(unsigned char)32,(unsigned char)32>(a2, v8, __n, v6, v13);
        }

        else if (v11 == 34837)
        {

          GPUTools::GL::MSAABufferResolver<float>::resolve<12u,(unsigned char)32,(unsigned char)32,(unsigned char)32,(unsigned char)0>(a2, v8, __n, v6->i32, v13);
        }

        return;
    }

    while (1)
    {
      if (a2 >= 8)
      {
        if (a2 < 0x10)
        {
          v211 = 0;
          v212 = 0;
          v215 = 0;
LABEL_166:
          v214 = (v8 + 2 * v210);
          v216 = 0uLL;
          v217 = v211;
          v218 = v212;
          v219 = 2 * v215;
          v220 = v215 - v210;
          v221 = 0uLL;
          v222 = 0uLL;
          v223 = 0uLL;
          v224 = 0uLL;
          v225 = 0uLL;
          do
          {
            v226 = &v8->i8[v219];
            v462 = vld2_s8(v226);
            v227 = vmovl_s8(*v462.i8);
            v228 = vmovl_s16(*v227.i8);
            v229 = vmovl_high_s16(v227);
            v462 = vmovl_s8(v462.u64[1]);
            *(&v462 + 8) = vmovl_s16(*v462.i8);
            v462 = vmovl_high_s16(v462);
            v222 = vaddw_high_s32(v222, v229);
            v221 = vaddw_s32(v221, *v229.i8);
            v216 = vaddw_high_s32(v216, v228);
            v217 = vaddw_s32(v217, *v228.i8);
            v225 = vaddw_high_s32(v225, v462);
            v224 = vaddw_s32(v224, *v462.i8);
            v223 = vaddw_high_s32(v223, *(&v462 + 8));
            v218 = vaddw_s32(v218, v462.u64[1]);
            v219 += 16;
            v220 += 8;
          }

          while (v220);
          v211 = vaddvq_s64(vaddq_s64(vaddq_s64(v217, v221), vaddq_s64(v216, v222)));
          v212 = vaddvq_s64(vaddq_s64(vaddq_s64(v218, v224), vaddq_s64(v223, v225)));
          v213 = a2 & 0xFFFFFFF8;
          if (v210 == a2)
          {
            goto LABEL_161;
          }

          goto LABEL_175;
        }

        v230 = 0;
        v231 = 0uLL;
        v232 = 0uLL;
        v233 = 0uLL;
        v234 = 0uLL;
        v235 = 0uLL;
        v236 = 0uLL;
        v237 = 0uLL;
        v238 = 0uLL;
        v239 = 0uLL;
        v240 = 0uLL;
        v241 = 0uLL;
        v242 = 0uLL;
        v243 = 0uLL;
        v244 = 0uLL;
        v245 = 0uLL;
        v246 = 0uLL;
        do
        {
          v247 = v8[v230 / 0x10].i8;
          v466 = vld2q_s8(v247);
          v248 = vmovl_s8(*v466.val[0].i8);
          v249 = vmovl_s16(*v248.i8);
          v250 = vmovl_high_s16(v248);
          v251 = vmovl_high_s8(v466.val[0]);
          v252 = vmovl_s16(*v251.i8);
          v253 = vmovl_high_s16(v251);
          v254 = vmovl_s8(*v466.val[1].i8);
          v255 = vmovl_s16(*v254.i8);
          v256 = vmovl_high_s16(v254);
          v466.val[0] = vmovl_high_s8(v466.val[1]);
          v466.val[1] = vmovl_s16(*v466.val[0].i8);
          v466.val[0] = vmovl_high_s16(v466.val[0]);
          v237 = vaddw_s32(v237, *v253.i8);
          v236 = vaddw_high_s32(v236, v252);
          v234 = vaddw_high_s32(v234, v250);
          v238 = vaddw_high_s32(v238, v253);
          v235 = vaddw_s32(v235, *v252.i8);
          v233 = vaddw_s32(v233, *v250.i8);
          v232 = vaddw_high_s32(v232, v249);
          v231 = vaddw_s32(v231, *v249.i8);
          v245 = vaddw_s32(v245, *v466.val[0].i8);
          v244 = vaddw_high_s32(v244, v466.val[1]);
          v242 = vaddw_high_s32(v242, v256);
          v246 = vaddw_high_s32(v246, v466.val[0]);
          v243 = vaddw_s32(v243, *v466.val[1].i8);
          v241 = vaddw_s32(v241, *v256.i8);
          v240 = vaddw_high_s32(v240, v255);
          v239 = vaddw_s32(v239, *v255.i8);
          v230 += 32;
        }

        while (((2 * a2) & 0x1FFFFFFE0) != v230);
        v211 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v231, v235), vaddq_s64(v233, v237)), vaddq_s64(vaddq_s64(v232, v236), vaddq_s64(v234, v238))));
        v212 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v239, v243), vaddq_s64(v241, v245)), vaddq_s64(vaddq_s64(v240, v244), vaddq_s64(v242, v246))));
        if (v209 == a2)
        {
          goto LABEL_161;
        }

        if ((a2 & 8) != 0)
        {
          v215 = a2 & 0xFFFFFFF0;
          goto LABEL_166;
        }

        v214 = (v8 + 2 * v209);
        v213 = a2 & 0xFFFFFFF0;
      }

      else
      {
        v211 = 0;
        v212 = 0;
        v213 = 0;
        v214 = v8;
      }

LABEL_175:
      v257 = a2 - v213;
      do
      {
        v211 += v214->i8[0];
        v212 += v214->i8[1];
        v214 = (v214 + 2);
        --v257;
      }

      while (v257);
LABEL_161:
      v8 = (v8 + 2 * v9 + 2);
      v6->i8[0] = v211 / a2;
      v6->i8[1] = v212 / a2;
      v6 = (v6 + 2);
      if (v8 >= v208)
      {
        return;
      }
    }
  }

  if (v11 <= 32854)
  {
    if (v11 == 32849)
    {

      GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<3u,3u,false,63ull,56ull,55ull,48ull,47ull,32ull,0ull,0ull>(a2, v8, __n, v6);
    }

    else if (v11 == 32854)
    {

      GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<2u,2u,true,63ull,60ull,59ull,56ull,55ull,52ull,51ull,48ull>(a2, v8, __n, v6);
    }
  }

  else
  {
    if (v11 != 32855)
    {
      if (v11 != 32856)
      {
        v60 = 32857;
LABEL_50:
        if (v11 == v60)
        {

          GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<4u,4u,true,41ull,32ull,51ull,42ull,61ull,52ull,63ull,62ull>(a2, v8, __n, v6);
        }

        return;
      }

      goto LABEL_60;
    }

    GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<2u,2u,true,63ull,59ull,58ull,54ull,53ull,49ull,48ull,48ull>(a2, v8->i8, __n, v6);
  }
}

uint64_t GPUTools::GL::MSAABufferResolver<long long>::resolve<2u,2u,true,63ull,48ull,0ull,0ull,0ull,0ull,0ull,0ull>(uint64_t result, const char *a2, int a3, _WORD *a4)
{
  if (a3)
  {
    v4 = &a2[a3];
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    if (result > 0xF)
    {
      v8 = 2 * (v5 & 0xFFFFFFF0);
      if ((v5 & 0xFFFFFFF0) == v5)
      {
        do
        {
          v9 = 0;
          v10 = 0uLL;
          v11 = 0uLL;
          v12 = &a2[v8];
          v13 = 0uLL;
          v14 = 0uLL;
          v15 = 0uLL;
          v16 = 0uLL;
          v17 = 0uLL;
          v18 = 0uLL;
          do
          {
            v19 = &a2[v9];
            v80 = vld2q_s8(v19);
            v20 = vmovl_u8(*v80.val[0].i8);
            v21 = vmovl_u16(*v20.i8);
            v22.i64[0] = v21.u32[0];
            v22.i64[1] = v21.u32[1];
            v23 = v22;
            v22.i64[0] = v21.u32[2];
            v22.i64[1] = v21.u32[3];
            v24 = v22;
            v25 = vmovl_high_u16(v20);
            v22.i64[0] = v25.u32[0];
            v22.i64[1] = v25.u32[1];
            v26 = v22;
            v27 = vmovl_high_u8(v80.val[0]);
            v28 = vmovl_u16(*v27.i8);
            v22.i64[0] = v28.u32[0];
            v22.i64[1] = v28.u32[1];
            v29 = v22;
            v22.i64[0] = v25.u32[2];
            v22.i64[1] = v25.u32[3];
            v30 = v22;
            v22.i64[0] = v28.u32[2];
            v22.i64[1] = v28.u32[3];
            v31 = v22;
            v32 = vmovl_high_u16(v27);
            v22.i64[0] = v32.u32[0];
            v22.i64[1] = v32.u32[1];
            v33 = v22;
            v22.i64[0] = v32.u32[2];
            v22.i64[1] = v32.u32[3];
            v34 = v22;
            v35 = vmovl_u8(*v80.val[1].i8);
            v36 = vmovl_u16(*v35.i8);
            v22.i64[0] = v36.u32[0];
            v22.i64[1] = v36.u32[1];
            v37 = v22;
            v22.i64[0] = v36.u32[2];
            v22.i64[1] = v36.u32[3];
            v38 = v22;
            v39 = vmovl_high_u16(v35);
            v22.i64[0] = v39.u32[0];
            v22.i64[1] = v39.u32[1];
            v40 = v22;
            v80.val[0] = vmovl_high_u8(v80.val[1]);
            v80.val[1] = vmovl_u16(*v80.val[0].i8);
            v22.i64[0] = v80.val[1].u32[0];
            v22.i64[1] = v80.val[1].u32[1];
            v41 = v22;
            v22.i64[0] = v39.u32[2];
            v22.i64[1] = v39.u32[3];
            v42 = v22;
            v22.i64[0] = v80.val[1].u32[2];
            v22.i64[1] = v80.val[1].u32[3];
            v80.val[1] = v22;
            v80.val[0] = vmovl_high_u16(v80.val[0]);
            v22.i64[0] = v80.val[0].u32[0];
            v22.i64[1] = v80.val[0].u32[1];
            v43 = v22;
            v22.i64[0] = v80.val[0].u32[2];
            v22.i64[1] = v80.val[0].u32[3];
            v18 = vsraq_n_s64(v18, vorrq_s8(vshlq_n_s64(v22, 0x38uLL), vshlq_n_s64(v34, 0x30uLL)), 0x30uLL);
            v17 = vsraq_n_s64(v17, vorrq_s8(vshlq_n_s64(v43, 0x38uLL), vshlq_n_s64(v33, 0x30uLL)), 0x30uLL);
            v16 = vsraq_n_s64(v16, vorrq_s8(vshlq_n_s64(v80.val[1], 0x38uLL), vshlq_n_s64(v31, 0x30uLL)), 0x30uLL);
            v9 += 32;
            v14 = vsraq_n_s64(v14, vorrq_s8(vshlq_n_s64(v42, 0x38uLL), vshlq_n_s64(v30, 0x30uLL)), 0x30uLL);
            v15 = vsraq_n_s64(v15, vorrq_s8(vshlq_n_s64(v41, 0x38uLL), vshlq_n_s64(v29, 0x30uLL)), 0x30uLL);
            v13 = vsraq_n_s64(v13, vorrq_s8(vshlq_n_s64(v40, 0x38uLL), vshlq_n_s64(v26, 0x30uLL)), 0x30uLL);
            v11 = vsraq_n_s64(v11, vorrq_s8(vshlq_n_s64(v38, 0x38uLL), vshlq_n_s64(v24, 0x30uLL)), 0x30uLL);
            v10 = vsraq_n_s64(v10, vorrq_s8(vshlq_n_s64(v37, 0x38uLL), vshlq_n_s64(v23, 0x30uLL)), 0x30uLL);
          }

          while (v8 != v9);
          *a4++ = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v10, v15), vaddq_s64(v13, v17)), vaddq_s64(vaddq_s64(v11, v16), vaddq_s64(v14, v18)))) / v5;
          a2 += v8;
        }

        while (v12 < v4);
      }

      else
      {
        do
        {
          v44 = 0uLL;
          v45 = a2;
          v46 = 0uLL;
          a2 += v8;
          v47 = v5 & 0xFFFFFFF0;
          v48 = 0uLL;
          v49 = 0uLL;
          v50 = 0uLL;
          v51 = 0uLL;
          v52 = 0uLL;
          v53 = 0uLL;
          do
          {
            v81 = vld2q_s8(v45);
            v45 += 32;
            v54 = vmovl_u8(*v81.val[0].i8);
            v55 = vmovl_u16(*v54.i8);
            v56.i64[0] = v55.u32[0];
            v56.i64[1] = v55.u32[1];
            v57 = v56;
            v56.i64[0] = v55.u32[2];
            v56.i64[1] = v55.u32[3];
            v58 = v56;
            v59 = vmovl_high_u16(v54);
            v56.i64[0] = v59.u32[0];
            v56.i64[1] = v59.u32[1];
            v60 = v56;
            v61 = vmovl_high_u8(v81.val[0]);
            v62 = vmovl_u16(*v61.i8);
            v56.i64[0] = v62.u32[0];
            v56.i64[1] = v62.u32[1];
            v63 = v56;
            v56.i64[0] = v59.u32[2];
            v56.i64[1] = v59.u32[3];
            v64 = v56;
            v56.i64[0] = v62.u32[2];
            v56.i64[1] = v62.u32[3];
            v65 = v56;
            v66 = vmovl_high_u16(v61);
            v56.i64[0] = v66.u32[0];
            v56.i64[1] = v66.u32[1];
            v67 = v56;
            v56.i64[0] = v66.u32[2];
            v56.i64[1] = v66.u32[3];
            v68 = v56;
            v69 = vmovl_u8(*v81.val[1].i8);
            v70 = vmovl_u16(*v69.i8);
            v56.i64[0] = v70.u32[0];
            v56.i64[1] = v70.u32[1];
            v71 = v56;
            v56.i64[0] = v70.u32[2];
            v56.i64[1] = v70.u32[3];
            v72 = v56;
            v73 = vmovl_high_u16(v69);
            v56.i64[0] = v73.u32[0];
            v56.i64[1] = v73.u32[1];
            v74 = v56;
            v81.val[0] = vmovl_high_u8(v81.val[1]);
            v81.val[1] = vmovl_u16(*v81.val[0].i8);
            v56.i64[0] = v81.val[1].u32[0];
            v56.i64[1] = v81.val[1].u32[1];
            v75 = v56;
            v56.i64[0] = v73.u32[2];
            v56.i64[1] = v73.u32[3];
            v76 = v56;
            v56.i64[0] = v81.val[1].u32[2];
            v56.i64[1] = v81.val[1].u32[3];
            v81.val[1] = v56;
            v81.val[0] = vmovl_high_u16(v81.val[0]);
            v56.i64[0] = v81.val[0].u32[0];
            v56.i64[1] = v81.val[0].u32[1];
            v77 = v56;
            v56.i64[0] = v81.val[0].u32[2];
            v56.i64[1] = v81.val[0].u32[3];
            v53 = vsraq_n_s64(v53, vorrq_s8(vshlq_n_s64(v56, 0x38uLL), vshlq_n_s64(v68, 0x30uLL)), 0x30uLL);
            v52 = vsraq_n_s64(v52, vorrq_s8(vshlq_n_s64(v77, 0x38uLL), vshlq_n_s64(v67, 0x30uLL)), 0x30uLL);
            v51 = vsraq_n_s64(v51, vorrq_s8(vshlq_n_s64(v81.val[1], 0x38uLL), vshlq_n_s64(v65, 0x30uLL)), 0x30uLL);
            v49 = vsraq_n_s64(v49, vorrq_s8(vshlq_n_s64(v76, 0x38uLL), vshlq_n_s64(v64, 0x30uLL)), 0x30uLL);
            v50 = vsraq_n_s64(v50, vorrq_s8(vshlq_n_s64(v75, 0x38uLL), vshlq_n_s64(v63, 0x30uLL)), 0x30uLL);
            v48 = vsraq_n_s64(v48, vorrq_s8(vshlq_n_s64(v74, 0x38uLL), vshlq_n_s64(v60, 0x30uLL)), 0x30uLL);
            v46 = vsraq_n_s64(v46, vorrq_s8(vshlq_n_s64(v72, 0x38uLL), vshlq_n_s64(v58, 0x30uLL)), 0x30uLL);
            v44 = vsraq_n_s64(v44, vorrq_s8(vshlq_n_s64(v71, 0x38uLL), vshlq_n_s64(v57, 0x30uLL)), 0x30uLL);
            v47 -= 16;
          }

          while (v47);
          v78 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v44, v50), vaddq_s64(v48, v52)), vaddq_s64(vaddq_s64(v46, v51), vaddq_s64(v49, v53))));
          v79 = v5 - (v5 & 0xFFFFFFF0);
          do
          {
            v78 += ((*a2 << 48) | (*(a2 + 1) << 56)) >> 48;
            a2 += 2;
            --v79;
          }

          while (v79);
          *a4++ = v78 / v5;
        }

        while (a2 < v4);
      }
    }

    else
    {
      do
      {
        v6 = 0;
        v7 = v5;
        do
        {
          v6 += ((*a2 << 48) | (*(a2 + 1) << 56)) >> 48;
          a2 += 2;
          --v7;
        }

        while (v7);
        *a4++ = v6 / v5;
      }

      while (a2 < v4);
    }
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<4u,4u,true,63ull,32ull,0ull,0ull,0ull,0ull,0ull,0ull>(uint64_t result, uint32x4_t *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = (a2 + a3);
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    if (result <= 7)
    {
      do
      {
        v17 = a2->u32[0];
        if (result < 2)
        {
          a2 = (a2 + 4);
        }

        else
        {
          v17 += a2->u32[1];
          if (result == 2)
          {
            a2 = (a2 + 8);
          }

          else
          {
            v17 += a2->u32[2];
            if (result == 3)
            {
              a2 = (a2 + 12);
            }

            else
            {
              v17 += a2->u32[3];
              if (result == 4)
              {
                ++a2;
              }

              else
              {
                v17 += a2[1].u32[0];
                if (result == 5)
                {
                  a2 = (a2 + 20);
                }

                else
                {
                  v17 += a2[1].u32[1];
                  if (result == 6)
                  {
                    a2 = (a2 + 24);
                  }

                  else
                  {
                    v17 += a2[1].u32[2];
                    a2 = (a2 + 28);
                  }
                }
              }
            }
          }
        }

        v16 = v17 / v5;
        *a4 = v16;
        *(a4 + 2) = BYTE2(v16);
        *(a4 + 3) = BYTE3(v16);
        a4 += 4;
      }

      while (a2 < v4);
    }

    else
    {
      v6 = 4 * (v5 & 0xFFFFFFF8);
      if ((v5 & 0xFFFFFFF8) == v5)
      {
        v7 = a2 + 1;
        do
        {
          a2 = (a2 + v6);
          v8 = 0uLL;
          v9 = v7;
          v10 = v5 & 0xFFFFFFF8;
          v11 = 0uLL;
          v12 = 0uLL;
          v13 = 0uLL;
          do
          {
            v14 = v9[-1];
            v11 = vaddw_high_u32(v11, v14);
            v8 = vaddw_u32(v8, *v14.i8);
            v13 = vaddw_high_u32(v13, *v9);
            v12 = vaddw_u32(v12, *v9->i8);
            v9 += 2;
            v10 -= 8;
          }

          while (v10);
          v15 = vaddvq_s64(vaddq_s64(vaddq_s64(v12, v8), vaddq_s64(v13, v11)));
          *a4 = v15 / v5;
          *(a4 + 2) = (v15 / v5) >> 16;
          *(a4 + 3) = (v15 / v5) >> 24;
          a4 += 4;
          v7 = (v7 + v6);
        }

        while (a2 < v4);
      }

      else
      {
        do
        {
          v18 = a2 + 1;
          a2 = (a2 + v6);
          v19 = 0uLL;
          v20 = v5 & 0xFFFFFFF8;
          v21 = 0uLL;
          v22 = 0uLL;
          v23 = 0uLL;
          do
          {
            v24 = v18[-1];
            v21 = vaddw_high_u32(v21, v24);
            v19 = vaddw_u32(v19, *v24.i8);
            v23 = vaddw_high_u32(v23, *v18);
            v22 = vaddw_u32(v22, *v18->i8);
            v18 += 2;
            v20 -= 8;
          }

          while (v20);
          v25 = vaddvq_s64(vaddq_s64(vaddq_s64(v22, v19), vaddq_s64(v23, v21)));
          v26 = v5 - (v5 & 0xFFFFFFF8);
          do
          {
            v27 = a2->i32[0];
            a2 = (a2 + 4);
            v25 += v27;
            --v26;
          }

          while (v26);
          v28 = v25 / v5;
          *a4 = v28;
          *(a4 + 2) = BYTE2(v28);
          *(a4 + 3) = BYTE3(v28);
          a4 += 4;
        }

        while (a2 < v4);
      }
    }
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<long long>::resolve<4u,4u,true,63ull,32ull,0ull,0ull,0ull,0ull,0ull,0ull>(uint64_t result, int *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = (a2 + a3);
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    if (result <= 7)
    {
      do
      {
        v17 = *a2;
        if (result < 2)
        {
          ++a2;
        }

        else
        {
          v17 += a2[1];
          if (result == 2)
          {
            a2 += 2;
          }

          else
          {
            v17 += a2[2];
            if (result == 3)
            {
              a2 += 3;
            }

            else
            {
              v17 += a2[3];
              if (result == 4)
              {
                a2 += 4;
              }

              else
              {
                v17 += a2[4];
                if (result == 5)
                {
                  a2 += 5;
                }

                else
                {
                  v17 += a2[5];
                  if (result == 6)
                  {
                    a2 += 6;
                  }

                  else
                  {
                    v17 += a2[6];
                    a2 += 7;
                  }
                }
              }
            }
          }
        }

        v16 = v17 / v5;
        *a4 = v16;
        *(a4 + 2) = BYTE2(v16);
        *(a4 + 3) = BYTE3(v16);
        a4 += 4;
      }

      while (a2 < v4);
    }

    else
    {
      v6 = 4 * (v5 & 0xFFFFFFF8);
      if ((v5 & 0xFFFFFFF8) == v5)
      {
        v7 = (a2 + 4);
        do
        {
          a2 = (a2 + v6);
          v8 = 0uLL;
          v9 = v7;
          v10 = v5 & 0xFFFFFFF8;
          v11 = 0uLL;
          v12 = 0uLL;
          v13 = 0uLL;
          do
          {
            v14 = v9[-1];
            v11 = vaddw_high_s32(v11, v14);
            v8 = vaddw_s32(v8, *v14.i8);
            v13 = vaddw_high_s32(v13, *v9);
            v12 = vaddw_s32(v12, *v9->i8);
            v9 += 2;
            v10 -= 8;
          }

          while (v10);
          v15 = vaddvq_s64(vaddq_s64(vaddq_s64(v12, v8), vaddq_s64(v13, v11)));
          *a4 = v15 / v5;
          *(a4 + 2) = (v15 / v5) >> 16;
          *(a4 + 3) = (v15 / v5) >> 24;
          a4 += 4;
          v7 = (v7 + v6);
        }

        while (a2 < v4);
      }

      else
      {
        do
        {
          v18 = (a2 + 4);
          a2 = (a2 + v6);
          v19 = 0uLL;
          v20 = v5 & 0xFFFFFFF8;
          v21 = 0uLL;
          v22 = 0uLL;
          v23 = 0uLL;
          do
          {
            v24 = v18[-1];
            v21 = vaddw_high_s32(v21, v24);
            v19 = vaddw_s32(v19, *v24.i8);
            v23 = vaddw_high_s32(v23, *v18);
            v22 = vaddw_s32(v22, *v18->i8);
            v18 += 2;
            v20 -= 8;
          }

          while (v20);
          v25 = vaddvq_s64(vaddq_s64(vaddq_s64(v22, v19), vaddq_s64(v23, v21)));
          v26 = v5 - (v5 & 0xFFFFFFF8);
          do
          {
            v27 = *a2++;
            v25 += v27;
            --v26;
          }

          while (v26);
          v28 = v25 / v5;
          *a4 = v28;
          *(a4 + 2) = BYTE2(v28);
          *(a4 + 3) = BYTE3(v28);
          a4 += 4;
        }

        while (a2 < v4);
      }
    }
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<4u,4u,true,47ull,32ull,63ull,48ull,0ull,0ull,0ull,0ull>(uint64_t result, unsigned int *a2, unsigned int a3, _WORD *a4)
{
  if (a3)
  {
    v4 = (a2 + a3);
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    if (result <= 7)
    {
      do
      {
        v24 = *a2;
        v25 = *a2 >> 16;
        if (result < 2)
        {
          ++a2;
        }

        else
        {
          v26 = a2[1];
          v24 += v26;
          v25 += v26 >> 16;
          if (result == 2)
          {
            a2 += 2;
          }

          else
          {
            v27 = a2[2];
            v24 += v27;
            v25 += v27 >> 16;
            if (result == 3)
            {
              a2 += 3;
            }

            else
            {
              v28 = a2[3];
              v24 += v28;
              v25 += v28 >> 16;
              if (result == 4)
              {
                a2 += 4;
              }

              else
              {
                v29 = a2[4];
                v24 += v29;
                v25 += v29 >> 16;
                if (result == 5)
                {
                  a2 += 5;
                }

                else
                {
                  v30 = a2[5];
                  v24 += v30;
                  v25 += v30 >> 16;
                  if (result == 6)
                  {
                    a2 += 6;
                  }

                  else
                  {
                    v31 = a2[6];
                    v24 += v31;
                    v25 += v31 >> 16;
                    a2 += 7;
                  }
                }
              }
            }
          }
        }

        *a4 = v24 / v5;
        a4[1] = v25 / v5;
        a4 += 2;
      }

      while (a2 < v4);
    }

    else
    {
      v6 = 4 * (v5 & 0xFFFFFFF8);
      if ((v5 & 0xFFFFFFF8) == v5)
      {
        v7 = a2 + 4;
        v8.i64[0] = 0xFFFFLL;
        v8.i64[1] = 0xFFFFLL;
        do
        {
          v9 = 0uLL;
          a2 = (a2 + v6);
          v10 = 0uLL;
          v11 = v7;
          v12 = v5 & 0xFFFFFFF8;
          v13 = 0uLL;
          v14 = 0uLL;
          v15 = 0uLL;
          v16 = 0uLL;
          v17 = 0uLL;
          v18 = 0uLL;
          do
          {
            v19 = *(v11 - 1);
            v20.i64[0] = DWORD2(v19);
            v20.i64[1] = HIDWORD(v19);
            v21 = v20;
            v20.i64[0] = v19;
            v20.i64[1] = DWORD1(v19);
            v22 = v20;
            v20.i64[0] = *(v11 + 1);
            v20.i64[1] = HIDWORD(*v11);
            v23 = v20;
            v20.i64[0] = *v11;
            v20.i64[1] = HIDWORD(*v11);
            v10 = vaddq_s64(vandq_s8(v21, v8), v10);
            v9 = vaddq_s64(vandq_s8(v22, v8), v9);
            v14 = vaddq_s64(vandq_s8(v23, v8), v14);
            v13 = vaddq_s64(vandq_s8(v20, v8), v13);
            v16 = vsraq_n_u64(v16, v21, 0x10uLL);
            v15 = vsraq_n_u64(v15, v22, 0x10uLL);
            v18 = vsraq_n_u64(v18, v23, 0x10uLL);
            v17 = vsraq_n_u64(v17, v20, 0x10uLL);
            v11 += 8;
            v12 -= 8;
          }

          while (v12);
          *a4 = vaddvq_s64(vaddq_s64(vaddq_s64(v13, v9), vaddq_s64(v14, v10))) / v5;
          a4[1] = vaddvq_s64(vaddq_s64(vaddq_s64(v17, v15), vaddq_s64(v18, v16))) / v5;
          a4 += 2;
          v7 = (v7 + v6);
        }

        while (a2 < v4);
      }

      else
      {
        v32.i64[0] = 0xFFFFLL;
        v32.i64[1] = 0xFFFFLL;
        do
        {
          v33 = 0uLL;
          v34 = 0uLL;
          v35 = a2 + 4;
          a2 = (a2 + v6);
          v36 = v5 & 0xFFFFFFF8;
          v37 = 0uLL;
          v38 = 0uLL;
          v39 = 0uLL;
          v40 = 0uLL;
          v41 = 0uLL;
          v42 = 0uLL;
          do
          {
            v43 = *(v35 - 1);
            v44.i64[0] = DWORD2(v43);
            v44.i64[1] = HIDWORD(v43);
            v45 = v44;
            v44.i64[0] = v43;
            v44.i64[1] = DWORD1(v43);
            v46 = v44;
            v44.i64[0] = *(v35 + 1);
            v44.i64[1] = HIDWORD(*v35);
            v47 = v44;
            v44.i64[0] = *v35;
            v44.i64[1] = HIDWORD(*v35);
            v34 = vaddq_s64(vandq_s8(v45, v32), v34);
            v33 = vaddq_s64(vandq_s8(v46, v32), v33);
            v38 = vaddq_s64(vandq_s8(v47, v32), v38);
            v37 = vaddq_s64(vandq_s8(v44, v32), v37);
            v40 = vsraq_n_u64(v40, v45, 0x10uLL);
            v39 = vsraq_n_u64(v39, v46, 0x10uLL);
            v42 = vsraq_n_u64(v42, v47, 0x10uLL);
            v41 = vsraq_n_u64(v41, v44, 0x10uLL);
            v35 += 8;
            v36 -= 8;
          }

          while (v36);
          v48 = vaddvq_s64(vaddq_s64(vaddq_s64(v37, v33), vaddq_s64(v38, v34)));
          v49 = vaddvq_s64(vaddq_s64(vaddq_s64(v41, v39), vaddq_s64(v42, v40)));
          v50 = v5 - (v5 & 0xFFFFFFF8);
          do
          {
            v51 = *a2++;
            v48 += v51;
            v49 += v51 >> 16;
            --v50;
          }

          while (v50);
          *a4 = v48 / v5;
          a4[1] = v49 / v5;
          a4 += 2;
        }

        while (a2 < v4);
      }
    }
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<long long>::resolve<4u,4u,true,47ull,32ull,65ull,48ull,0ull,0ull,0ull,0ull>(uint64_t result, unsigned int *a2, unsigned int a3, _WORD *a4)
{
  if (a3)
  {
    v4 = (a2 + a3);
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    if (result <= 7)
    {
      do
      {
        v23 = *a2;
        v24 = v23;
        v25 = v23 >> 16;
        if (result < 2)
        {
          ++a2;
        }

        else
        {
          v26 = a2[1];
          v24 += v26;
          v25 += v26 >> 16;
          if (result == 2)
          {
            a2 += 2;
          }

          else
          {
            v27 = a2[2];
            v24 += v27;
            v25 += v27 >> 16;
            if (result == 3)
            {
              a2 += 3;
            }

            else
            {
              v28 = a2[3];
              v24 += v28;
              v25 += v28 >> 16;
              if (result == 4)
              {
                a2 += 4;
              }

              else
              {
                v29 = a2[4];
                v24 += v29;
                v25 += v29 >> 16;
                if (result == 5)
                {
                  a2 += 5;
                }

                else
                {
                  v30 = a2[5];
                  v24 += v30;
                  v25 += v30 >> 16;
                  if (result == 6)
                  {
                    a2 += 6;
                  }

                  else
                  {
                    v31 = a2[6];
                    v24 += v31;
                    v25 += v31 >> 16;
                    a2 += 7;
                  }
                }
              }
            }
          }
        }

        *a4 = v24 / v5;
        a4[1] = v25 / v5;
        a4 += 2;
      }

      while (a2 < v4);
    }

    else
    {
      v6 = 4 * (v5 & 0xFFFFFFF8);
      if ((v5 & 0xFFFFFFF8) == v5)
      {
        v7 = a2 + 4;
        do
        {
          v8 = 0uLL;
          a2 = (a2 + v6);
          v9 = 0uLL;
          v10 = v7;
          v11 = v5 & 0xFFFFFFF8;
          v12 = 0uLL;
          v13 = 0uLL;
          v14 = 0uLL;
          v15 = 0uLL;
          v16 = 0uLL;
          v17 = 0uLL;
          do
          {
            v18 = *(v10 - 1);
            v19.i64[0] = DWORD2(v18);
            v19.i64[1] = HIDWORD(v18);
            v20 = v19;
            v19.i64[0] = v18;
            v19.i64[1] = DWORD1(v18);
            v21 = v19;
            v19.i64[0] = *(v10 + 1);
            v19.i64[1] = HIDWORD(*v10);
            v22 = v19;
            v19.i64[0] = *v10;
            v19.i64[1] = HIDWORD(*v10);
            v9 = vsraq_n_s64(v9, vshlq_n_s64(v20, 0x30uLL), 0x30uLL);
            v8 = vsraq_n_s64(v8, vshlq_n_s64(v21, 0x30uLL), 0x30uLL);
            v13 = vsraq_n_s64(v13, vshlq_n_s64(v22, 0x30uLL), 0x30uLL);
            v12 = vsraq_n_s64(v12, vshlq_n_s64(v19, 0x30uLL), 0x30uLL);
            v15 = vsraq_n_u64(v15, v20, 0x10uLL);
            v14 = vsraq_n_u64(v14, v21, 0x10uLL);
            v17 = vsraq_n_u64(v17, v22, 0x10uLL);
            v16 = vsraq_n_u64(v16, v19, 0x10uLL);
            v10 += 8;
            v11 -= 8;
          }

          while (v11);
          *a4 = vaddvq_s64(vaddq_s64(vaddq_s64(v12, v8), vaddq_s64(v13, v9))) / v5;
          a4[1] = vaddvq_s64(vaddq_s64(vaddq_s64(v16, v14), vaddq_s64(v17, v15))) / v5;
          a4 += 2;
          v7 = (v7 + v6);
        }

        while (a2 < v4);
      }

      else
      {
        do
        {
          v32 = 0uLL;
          v33 = 0uLL;
          v34 = a2 + 4;
          a2 = (a2 + v6);
          v35 = v5 & 0xFFFFFFF8;
          v36 = 0uLL;
          v37 = 0uLL;
          v38 = 0uLL;
          v39 = 0uLL;
          v40 = 0uLL;
          v41 = 0uLL;
          do
          {
            v42 = *(v34 - 1);
            v43.i64[0] = DWORD2(v42);
            v43.i64[1] = HIDWORD(v42);
            v44 = v43;
            v43.i64[0] = v42;
            v43.i64[1] = DWORD1(v42);
            v45 = v43;
            v43.i64[0] = *(v34 + 1);
            v43.i64[1] = HIDWORD(*v34);
            v46 = v43;
            v43.i64[0] = *v34;
            v43.i64[1] = HIDWORD(*v34);
            v33 = vsraq_n_s64(v33, vshlq_n_s64(v44, 0x30uLL), 0x30uLL);
            v32 = vsraq_n_s64(v32, vshlq_n_s64(v45, 0x30uLL), 0x30uLL);
            v37 = vsraq_n_s64(v37, vshlq_n_s64(v46, 0x30uLL), 0x30uLL);
            v36 = vsraq_n_s64(v36, vshlq_n_s64(v43, 0x30uLL), 0x30uLL);
            v39 = vsraq_n_u64(v39, v44, 0x10uLL);
            v38 = vsraq_n_u64(v38, v45, 0x10uLL);
            v41 = vsraq_n_u64(v41, v46, 0x10uLL);
            v40 = vsraq_n_u64(v40, v43, 0x10uLL);
            v34 += 8;
            v35 -= 8;
          }

          while (v35);
          v47 = vaddvq_s64(vaddq_s64(vaddq_s64(v36, v32), vaddq_s64(v37, v33)));
          v48 = vaddvq_s64(vaddq_s64(vaddq_s64(v40, v38), vaddq_s64(v41, v39)));
          v49 = v5 - (v5 & 0xFFFFFFF8);
          do
          {
            v50 = *a2++;
            v47 += v50;
            v48 += v50 >> 16;
            --v49;
          }

          while (v49);
          *a4 = v47 / v5;
          a4[1] = v48 / v5;
          a4 += 2;
        }

        while (a2 < v4);
      }
    }
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<8u,8u,true,31ull,0ull,63ull,32ull,0ull,0ull,0ull,0ull>(uint64_t result, int8x16_t *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a2->u64 + a3;
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    v6.i64[0] = 0xFFFFFFFFLL;
    v6.i64[1] = 0xFFFFFFFFLL;
    v7 = vdupq_n_s64(1uLL);
    do
    {
      if (result > 3)
      {
        v16 = 0uLL;
        v15 = (a2 + 8 * (v5 & 0xFFFFFFFC));
        v17 = 0uLL;
        v18 = a2 + 1;
        v19 = v5 & 0xFFFFFFFC;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
        do
        {
          v26 = v18[-1];
          v27 = vandq_s8(v26, v7);
          v28 = vandq_s8(*v18, v7);
          v16 = vaddq_s64(vandq_s8(v26, v6), v16);
          v17 = vaddq_s64(vandq_s8(*v18, v6), v17);
          v20 = vsraq_n_u64(v20, v26, 0x20uLL);
          v21 = vsraq_n_u64(v21, *v18, 0x20uLL);
          v22 = vaddq_s64(v27, v22);
          v23 = vaddq_s64(v28, v23);
          v24 = vaddq_s64(v27, v24);
          v25 = vaddq_s64(v28, v25);
          v18 += 2;
          v19 -= 4;
        }

        while (v19);
        v10 = vaddvq_s64(vaddq_s64(v17, v16));
        v11 = vaddvq_s64(vaddq_s64(v21, v20));
        v12 = vaddvq_s64(vaddq_s64(v23, v22));
        v13 = vaddvq_s64(vaddq_s64(v25, v24));
        v14 = v5 & 0xFFFFFFFC;
        if ((v5 & 0xFFFFFFFC) == v5)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = a2;
      }

      v29 = v5 - v14;
      do
      {
        v30 = v15->i64[0];
        v15 = (v15 + 8);
        v10 += v30;
        v11 += HIDWORD(v30);
        v12 += v30 & 1;
        v13 += v30 & 1;
        --v29;
      }

      while (v29);
LABEL_6:
      v8 = v10 / v5;
      *a4 = ((v13 / v5) | (v12 / v5)) & 1 | v8;
      *(a4 + 1) = BYTE1(v8);
      *(a4 + 2) = BYTE2(v8);
      *(a4 + 3) = BYTE3(v8);
      v9 = v11 / v5;
      *(a4 + 4) = v9;
      *(a4 + 6) = BYTE2(v9);
      *(a4 + 7) = BYTE3(v9);
      a4 += 8;
      a2 = v15;
    }

    while (v15 < v4);
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<long long>::resolve<8u,8u,true,31ull,0ull,63ull,32ull,0ull,0ull,0ull,0ull>(uint64_t result, int8x16_t *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a2->u64 + a3;
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    v6 = vdupq_n_s64(1uLL);
    do
    {
      if (result > 3)
      {
        v15 = 0uLL;
        v14 = &a2->i64[v5 & 0xFFFFFFFC];
        v16 = 0uLL;
        v17 = a2 + 1;
        v18 = v5 & 0xFFFFFFFC;
        v19 = 0uLL;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        do
        {
          v25 = v17[-1];
          v26 = vandq_s8(v25, v6);
          v27 = vandq_s8(*v17, v6);
          v15 = vsraq_n_s64(v15, vshlq_n_s64(v25, 0x20uLL), 0x20uLL);
          v16 = vsraq_n_s64(v16, vshlq_n_s64(*v17, 0x20uLL), 0x20uLL);
          v19 = vsraq_n_s64(v19, v25, 0x20uLL);
          v20 = vsraq_n_s64(v20, *v17, 0x20uLL);
          v21 = vsubq_s64(v21, v26);
          v22 = vsubq_s64(v22, v27);
          v23 = vsubq_s64(v23, v26);
          v24 = vsubq_s64(v24, v27);
          v17 += 2;
          v18 -= 4;
        }

        while (v18);
        v9 = vaddvq_s64(vaddq_s64(v16, v15));
        v10 = vaddvq_s64(vaddq_s64(v20, v19));
        v11 = vaddvq_s64(vaddq_s64(v22, v21));
        v12 = vaddvq_s64(vaddq_s64(v24, v23));
        v13 = v5 & 0xFFFFFFFC;
        if ((v5 & 0xFFFFFFFC) == v5)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = a2;
      }

      v28 = v5 - v13;
      do
      {
        v29 = *v14++;
        v9 += v29;
        v10 += v29 >> 32;
        v11 -= v29 & 1;
        v12 -= v29 & 1;
        --v28;
      }

      while (v28);
LABEL_6:
      v7 = v9 / v5;
      *a4 = ((v12 / v5) | (v11 / v5)) & 1 | v7;
      *(a4 + 1) = BYTE1(v7);
      *(a4 + 2) = BYTE2(v7);
      *(a4 + 3) = BYTE3(v7);
      v8 = v10 / v5;
      *(a4 + 4) = v8;
      *(a4 + 6) = BYTE2(v8);
      *(a4 + 7) = BYTE3(v8);
      a4 += 8;
      a2 = v14;
    }

    while (v14 < v4);
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<3u,3u,false,63ull,56ull,55ull,48ull,47ull,32ull,0ull,0ull>(uint64_t result, unsigned __int8 *a2, int a3, _BYTE *a4)
{
  if (a3)
  {
    v6 = &a2[a3];
    if (result <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = result;
    }

    if (result < 8)
    {
      do
      {
        v36 = *a2;
        v37 = a2[1];
        v38 = a2[2];
        if (result < 2)
        {
          a2 += 3;
        }

        else
        {
          v36 += a2[3];
          v37 += a2[4];
          v38 += a2[5];
          if (result == 2)
          {
            a2 += 6;
          }

          else
          {
            v36 += a2[6];
            v37 += a2[7];
            v38 += a2[8];
            if (result == 3)
            {
              a2 += 9;
            }

            else
            {
              v36 += a2[9];
              v37 += a2[10];
              v38 += a2[11];
              if (result == 4)
              {
                a2 += 12;
              }

              else
              {
                v36 += a2[12];
                v37 += a2[13];
                v38 += a2[14];
                if (result == 5)
                {
                  a2 += 15;
                }

                else
                {
                  v36 += a2[15];
                  v37 += a2[16];
                  v38 += a2[17];
                  if (result == 6)
                  {
                    a2 += 18;
                  }

                  else
                  {
                    v36 += a2[18];
                    v37 += a2[19];
                    v38 += a2[20];
                    a2 += 21;
                  }
                }
              }
            }
          }
        }

        *a4 = v36 / v7;
        a4[1] = v37 / v7;
        a4[2] = ((v38 << 8) / v7) >> 8;
        a4 += 3;
      }

      while (a2 < v6);
    }

    else
    {
      do
      {
        v8 = 0uLL;
        v9 = a2;
        v10 = 0uLL;
        a2 += 3 * (v7 & 0xFFFFFFF8);
        v11 = 0uLL;
        v12 = v7 & 0xFFFFFFF8;
        v13 = 0uLL;
        v14 = 0uLL;
        v15 = 0uLL;
        v16 = 0uLL;
        v17 = 0uLL;
        v18 = 0uLL;
        v19 = 0uLL;
        v20 = 0uLL;
        v21 = 0uLL;
        do
        {
          *v4.i8 = vld3_s8(v9);
          v9 += 24;
          v22 = vqtbl1q_s8(v4, xmmword_24C155910);
          v23 = vqtbl1q_s8(v4, xmmword_24C155900);
          v24 = vqtbl1q_s8(v5, xmmword_24C155910);
          v25 = vqtbl1q_s8(v5, xmmword_24C155900);
          v27 = vmovl_u8(v26);
          v28 = vmovl_high_u16(v27);
          v29 = vmovl_u16(*v27.i8);
          v30 = vshll_n_u32(*v29.i8, 8uLL);
          v4 = vshll_high_n_u32(v29, 8uLL);
          v31 = vshll_n_u32(*v28.i8, 8uLL);
          v5 = vshll_high_n_u32(v28, 8uLL);
          v13 = vaddw_high_u32(v13, v22);
          v10 = vaddw_high_u32(v10, v23);
          v11 = vaddw_u32(v11, *v22.i8);
          v8 = vaddw_u32(v8, *v23.i8);
          v17 = vaddw_high_u32(v17, v24);
          v15 = vaddw_high_u32(v15, v25);
          v16 = vaddw_u32(v16, *v24.i8);
          v14 = vaddw_u32(v14, *v25.i8);
          v21 = vaddq_s64(v5, v21);
          v20 = vaddq_s64(v31, v20);
          v19 = vaddq_s64(v4, v19);
          v18 = vaddq_s64(v30, v18);
          v12 -= 8;
        }

        while (v12);
        v32 = vaddvq_s64(vaddq_s64(vaddq_s64(v8, v11), vaddq_s64(v10, v13)));
        v33 = vaddvq_s64(vaddq_s64(vaddq_s64(v14, v16), vaddq_s64(v15, v17)));
        v34 = vaddvq_s64(vaddq_s64(vaddq_s64(v18, v20), vaddq_s64(v19, v21)));
        v35 = v7 - (v7 & 0xFFFFFFF8);
        if ((v7 & 0xFFFFFFF8) != v7)
        {
          do
          {
            result = a2[1];
            v32 += *a2;
            v33 += result;
            v34 += a2[2] << 8;
            a2 += 3;
            --v35;
          }

          while (v35);
        }

        *a4 = v32 / v7;
        a4[1] = v33 / v7;
        a4[2] = (v34 / v7) >> 8;
        a4 += 3;
      }

      while (a2 < v6);
    }
  }

  return result;
}

unint64_t GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<2u,2u,true,63ull,59ull,58ull,53ull,52ull,48ull,0ull,0ull>(unint64_t result, unsigned __int8 *a2, int a3, _BYTE *a4)
{
  if (a3)
  {
    v4 = &a2[a3];
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    if (result < 8)
    {
      do
      {
        v43 = *a2;
        v44 = a2[1];
        v45 = (v43 << 48) | (v44 << 56);
        v46 = v44 >> 3;
        v47 = (v45 >> 53) & 0x3F;
        v48 = v43 & 0x1F;
        if (result < 2)
        {
          a2 += 2;
        }

        else
        {
          v49 = a2[2];
          v50 = a2[3];
          v46 += v50 >> 3;
          v47 += (((v49 << 48) | (v50 << 56)) >> 53) & 0x3F;
          v48 += v49 & 0x1F;
          if (result == 2)
          {
            a2 += 4;
          }

          else
          {
            v51 = a2[4];
            v52 = a2[5];
            v46 += v52 >> 3;
            v47 += (((v51 << 48) | (v52 << 56)) >> 53) & 0x3F;
            v48 += v51 & 0x1F;
            if (result == 3)
            {
              a2 += 6;
            }

            else
            {
              v53 = a2[6];
              v54 = a2[7];
              v46 += v54 >> 3;
              v47 += (((v53 << 48) | (v54 << 56)) >> 53) & 0x3F;
              v48 += v53 & 0x1F;
              if (result == 4)
              {
                a2 += 8;
              }

              else
              {
                v55 = a2[8];
                v56 = a2[9];
                v46 += v56 >> 3;
                v47 += (((v55 << 48) | (v56 << 56)) >> 53) & 0x3F;
                v48 += v55 & 0x1F;
                if (result == 5)
                {
                  a2 += 10;
                }

                else
                {
                  v57 = a2[10];
                  v58 = a2[11];
                  v46 += v58 >> 3;
                  v47 += (((v57 << 48) | (v58 << 56)) >> 53) & 0x3F;
                  v48 += v57 & 0x1F;
                  if (result == 6)
                  {
                    a2 += 12;
                  }

                  else
                  {
                    v59 = a2[12];
                    v60 = a2[13];
                    v46 += v60 >> 3;
                    v47 += (((v59 << 48) | (v60 << 56)) >> 53) & 0x3F;
                    v48 += v59 & 0x1F;
                    a2 += 14;
                  }
                }
              }
            }
          }
        }

        v42 = (v47 / v5) << 53;
        *a4 = (v42 & 0xFFE0FFFFFFFFFFFFLL | (((v48 / v5) & 0x1F) << 48)) >> 48;
        a4[1] = (v42 & 0x700000000000000 | ((v46 / v5) << 59)) >> 56;
        a4 += 2;
      }

      while (a2 < v4);
    }

    else
    {
      v6 = vdupq_n_s64(0x3FuLL);
      v7 = vdupq_n_s64(0x1FuLL);
      do
      {
        v9 = 0uLL;
        v10 = a2;
        v11 = 0uLL;
        a2 += 2 * (v5 & 0xFFFFFFF8);
        v12 = 0uLL;
        v13 = v5 & 0xFFFFFFF8;
        v14 = 0uLL;
        v15 = 0uLL;
        v16 = 0uLL;
        v17 = 0uLL;
        v18 = 0uLL;
        v19 = 0uLL;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        do
        {
          v61 = vld2_s8(v10);
          v10 += 16;
          v23 = vmovl_u8(*v61.i8);
          v24 = vmovl_u16(*v23.i8);
          v25.i64[0] = v24.u32[0];
          v25.i64[1] = v24.u32[1];
          v26 = v25;
          v25.i64[0] = v24.u32[2];
          v25.i64[1] = v24.u32[3];
          v27 = v25;
          v28 = vmovl_high_u16(v23);
          v25.i64[0] = v28.u32[0];
          v25.i64[1] = v28.u32[1];
          v29 = v25;
          v25.i64[0] = v28.u32[2];
          v25.i64[1] = v28.u32[3];
          v30 = v25;
          v61 = vmovl_u8(v61.u64[1]);
          *(&v61 + 8) = vmovl_u16(*v61.i8);
          v25.i64[0] = v61.u32[2];
          v25.i64[1] = v61.u32[3];
          v31 = v25;
          v25.i64[0] = v32;
          v25.i64[1] = v33;
          *(&v61 + 8) = v25;
          v61 = vmovl_high_u16(v61);
          v25.i64[0] = v61.u32[0];
          v25.i64[1] = v61.u32[1];
          v34 = v25;
          v25.i64[0] = v35;
          v25.i64[1] = v36;
          v14 = vsraq_n_u64(v14, v25, 3uLL);
          v12 = vsraq_n_u64(v12, v34, 3uLL);
          v11 = vsraq_n_u64(v11, *(&v61 + 8), 3uLL);
          v9 = vsraq_n_u64(v9, v31, 3uLL);
          v18 = vaddq_s64(vandq_s8(vshrq_n_u64(vorrq_s8(vshlq_n_s64(v25, 0x38uLL), vshlq_n_s64(v30, 0x30uLL)), 0x35uLL), v6), v18);
          v17 = vaddq_s64(vandq_s8(vshrq_n_u64(vorrq_s8(vshlq_n_s64(v34, 0x38uLL), vshlq_n_s64(v29, 0x30uLL)), 0x35uLL), v6), v17);
          v16 = vaddq_s64(vandq_s8(vshrq_n_u64(vorrq_s8(vshlq_n_s64(*(&v61 + 8), 0x38uLL), vshlq_n_s64(v27, 0x30uLL)), 0x35uLL), v6), v16);
          v15 = vaddq_s64(vandq_s8(vshrq_n_u64(vorrq_s8(vshlq_n_s64(v31, 0x38uLL), vshlq_n_s64(v26, 0x30uLL)), 0x35uLL), v6), v15);
          v22 = vaddq_s64(vandq_s8(v30, v7), v22);
          v21 = vaddq_s64(vandq_s8(v29, v7), v21);
          v20 = vaddq_s64(vandq_s8(v27, v7), v20);
          v19 = vaddq_s64(vandq_s8(v26, v7), v19);
          v13 -= 8;
        }

        while (v13);
        v37 = vaddvq_s64(vaddq_s64(vaddq_s64(v9, v12), vaddq_s64(v11, v14)));
        v38 = vaddvq_s64(vaddq_s64(vaddq_s64(v15, v17), vaddq_s64(v16, v18)));
        v39 = vaddvq_s64(vaddq_s64(vaddq_s64(v19, v21), vaddq_s64(v20, v22)));
        v40 = v5 - (v5 & 0xFFFFFFF8);
        if ((v5 & 0xFFFFFFF8) != v5)
        {
          do
          {
            v41 = *a2;
            result = a2[1];
            v37 += result >> 3;
            v38 += (((v41 << 48) | (result << 56)) >> 53) & 0x3F;
            v39 += v41 & 0x1F;
            a2 += 2;
            --v40;
          }

          while (v40);
        }

        v8 = (v38 / v5) << 53;
        *a4 = (v8 & 0xFFE0FFFFFFFFFFFFLL | (((v39 / v5) & 0x1F) << 48)) >> 48;
        a4[1] = (v8 & 0x700000000000000 | ((v37 / v5) << 59)) >> 56;
        a4 += 2;
      }

      while (a2 < v4);
    }
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<4u,4u,false,63ull,56ull,55ull,48ull,47ull,40ull,39ull,32ull>(uint64_t result, unsigned __int8 *a2, int a3, _BYTE *a4)
{
  if (a3)
  {
    v8 = &a2[a3];
    if (result <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = result;
    }

    if (result < 8)
    {
      do
      {
        v40 = *a2;
        v41 = a2[1];
        v42 = a2[2];
        v43 = a2[3];
        if (result < 2)
        {
          a2 += 4;
        }

        else
        {
          v40 += a2[4];
          v41 += a2[5];
          v42 += a2[6];
          v43 += a2[7];
          if (result == 2)
          {
            a2 += 8;
          }

          else
          {
            v40 += a2[8];
            v41 += a2[9];
            v42 += a2[10];
            v43 += a2[11];
            if (result == 3)
            {
              a2 += 12;
            }

            else
            {
              v40 += a2[12];
              v41 += a2[13];
              v42 += a2[14];
              v43 += a2[15];
              if (result == 4)
              {
                a2 += 16;
              }

              else
              {
                v40 += a2[16];
                v41 += a2[17];
                v42 += a2[18];
                v43 += a2[19];
                if (result == 5)
                {
                  a2 += 20;
                }

                else
                {
                  v40 += a2[20];
                  v41 += a2[21];
                  v42 += a2[22];
                  v43 += a2[23];
                  if (result == 6)
                  {
                    a2 += 24;
                  }

                  else
                  {
                    v40 += a2[24];
                    v41 += a2[25];
                    v42 += a2[26];
                    v43 += a2[27];
                    a2 += 28;
                  }
                }
              }
            }
          }
        }

        *a4 = v40 / v9;
        a4[1] = v41 / v9;
        a4[2] = v42 / v9;
        a4[3] = v43 / v9;
        a4 += 4;
      }

      while (a2 < v8);
    }

    else
    {
      do
      {
        v10 = 0uLL;
        v11 = a2;
        v12 = 0uLL;
        a2 += 4 * (v9 & 0xFFFFFFF8);
        v13 = 0uLL;
        v14 = v9 & 0xFFFFFFF8;
        v15 = 0uLL;
        v16 = 0uLL;
        v17 = 0uLL;
        v18 = 0uLL;
        v19 = 0uLL;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
        v26 = 0uLL;
        v27 = 0uLL;
        do
        {
          *v4.i8 = vld4_s8(v11);
          v11 += 32;
          v28 = vqtbl1q_s8(v4, xmmword_24C155910);
          v29 = vqtbl1q_s8(v4, xmmword_24C155900);
          v30 = vqtbl1q_s8(v5, xmmword_24C155910);
          v31 = vqtbl1q_s8(v5, xmmword_24C155900);
          v32 = vqtbl1q_s8(v6, xmmword_24C155910);
          v33 = vqtbl1q_s8(v6, xmmword_24C155900);
          v34 = vqtbl1q_s8(v7, xmmword_24C155910);
          v4 = vqtbl1q_s8(v7, xmmword_24C155900);
          v15 = vaddw_high_u32(v15, v28);
          v12 = vaddw_high_u32(v12, v29);
          v13 = vaddw_u32(v13, *v28.i8);
          v10 = vaddw_u32(v10, *v29.i8);
          v19 = vaddw_high_u32(v19, v30);
          v17 = vaddw_high_u32(v17, v31);
          v18 = vaddw_u32(v18, *v30.i8);
          v16 = vaddw_u32(v16, *v31.i8);
          v23 = vaddw_high_u32(v23, v32);
          v21 = vaddw_high_u32(v21, v33);
          v22 = vaddw_u32(v22, *v32.i8);
          v20 = vaddw_u32(v20, *v33.i8);
          v27 = vaddw_high_u32(v27, v34);
          v25 = vaddw_high_u32(v25, v4);
          v26 = vaddw_u32(v26, *v34.i8);
          v24 = vaddw_u32(v24, *v4.i8);
          v14 -= 8;
        }

        while (v14);
        v35 = vaddvq_s64(vaddq_s64(vaddq_s64(v10, v13), vaddq_s64(v12, v15)));
        v36 = vaddvq_s64(vaddq_s64(vaddq_s64(v16, v18), vaddq_s64(v17, v19)));
        v37 = vaddvq_s64(vaddq_s64(vaddq_s64(v20, v22), vaddq_s64(v21, v23)));
        v38 = vaddvq_s64(vaddq_s64(vaddq_s64(v24, v26), vaddq_s64(v25, v27)));
        v39 = v9 - (v9 & 0xFFFFFFF8);
        if ((v9 & 0xFFFFFFF8) != v9)
        {
          do
          {
            v35 += *a2;
            v36 += a2[1];
            result = a2[3];
            v37 += a2[2];
            v38 += result;
            a2 += 4;
            --v39;
          }

          while (v39);
        }

        *a4 = v35 / v9;
        a4[1] = v36 / v9;
        a4[2] = v37 / v9;
        a4[3] = v38 / v9;
        a4 += 4;
      }

      while (a2 < v8);
    }
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<long long>::resolve<4u,4u,false,63ull,56ull,55ull,48ull,47ull,40ull,39ull,32ull>(uint64_t result, char *a2, int a3, _BYTE *a4)
{
  if (a3)
  {
    v4 = &a2[a3];
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    if (result < 8)
    {
      do
      {
        v38 = *a2;
        v39 = a2[1];
        v40 = a2[2];
        v41 = a2[3];
        if (result < 2)
        {
          a2 += 4;
        }

        else
        {
          v38 += a2[4];
          v39 += a2[5];
          v40 += a2[6];
          v41 += a2[7];
          if (result == 2)
          {
            a2 += 8;
          }

          else
          {
            v38 += a2[8];
            v39 += a2[9];
            v40 += a2[10];
            v41 += a2[11];
            if (result == 3)
            {
              a2 += 12;
            }

            else
            {
              v38 += a2[12];
              v39 += a2[13];
              v40 += a2[14];
              v41 += a2[15];
              if (result == 4)
              {
                a2 += 16;
              }

              else
              {
                v38 += a2[16];
                v39 += a2[17];
                v40 += a2[18];
                v41 += a2[19];
                if (result == 5)
                {
                  a2 += 20;
                }

                else
                {
                  v38 += a2[20];
                  v39 += a2[21];
                  v40 += a2[22];
                  v41 += a2[23];
                  if (result == 6)
                  {
                    a2 += 24;
                  }

                  else
                  {
                    v38 += a2[24];
                    v39 += a2[25];
                    v40 += a2[26];
                    v41 += a2[27];
                    a2 += 28;
                  }
                }
              }
            }
          }
        }

        *a4 = v38 / v5;
        a4[1] = v39 / v5;
        a4[2] = v40 / v5;
        a4[3] = v41 / v5;
        a4 += 4;
      }

      while (a2 < v4);
    }

    else
    {
      do
      {
        v6 = 0uLL;
        v7 = a2;
        v8 = 0uLL;
        a2 += 4 * (v5 & 0xFFFFFFF8);
        v9 = 0uLL;
        v10 = v5 & 0xFFFFFFF8;
        v11 = 0uLL;
        v12 = 0uLL;
        v13 = 0uLL;
        v14 = 0uLL;
        v15 = 0uLL;
        v16 = 0uLL;
        v17 = 0uLL;
        v18 = 0uLL;
        v19 = 0uLL;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        do
        {
          v42 = vld4_s8(v7);
          v7 += 32;
          v24 = vmovl_s8(v42.val[0]);
          v25 = vmovl_s16(*v24.i8);
          v26 = vmovl_high_s16(v24);
          v27 = vmovl_s8(v42.val[1]);
          v28 = vmovl_s16(*v27.i8);
          v29 = vmovl_high_s16(v27);
          v30 = vmovl_s8(v42.val[2]);
          v31 = vmovl_s16(*v30.i8);
          v32 = vmovl_high_s16(v30);
          *v42.val[0].i8 = vmovl_s8(v42.val[3]);
          *v42.val[1].i8 = vmovl_s16(v42.val[0]);
          *v42.val[0].i8 = vmovl_high_s16(*v42.val[0].i8);
          v11 = vaddw_high_s32(v11, v26);
          v9 = vaddw_s32(v9, *v26.i8);
          v8 = vaddw_high_s32(v8, v25);
          v6 = vaddw_s32(v6, *v25.i8);
          v15 = vaddw_high_s32(v15, v29);
          v14 = vaddw_s32(v14, *v29.i8);
          v13 = vaddw_high_s32(v13, v28);
          v12 = vaddw_s32(v12, *v28.i8);
          v19 = vaddw_high_s32(v19, v32);
          v18 = vaddw_s32(v18, *v32.i8);
          v17 = vaddw_high_s32(v17, v31);
          v16 = vaddw_s32(v16, *v31.i8);
          v23 = vaddw_high_s32(v23, *v42.val[0].i8);
          v22 = vaddw_s32(v22, v42.val[0]);
          v21 = vaddw_high_s32(v21, *v42.val[1].i8);
          v20 = vaddw_s32(v20, v42.val[1]);
          v10 -= 8;
        }

        while (v10);
        v33 = vaddvq_s64(vaddq_s64(vaddq_s64(v6, v9), vaddq_s64(v8, v11)));
        v34 = vaddvq_s64(vaddq_s64(vaddq_s64(v12, v14), vaddq_s64(v13, v15)));
        v35 = vaddvq_s64(vaddq_s64(vaddq_s64(v16, v18), vaddq_s64(v17, v19)));
        v36 = vaddvq_s64(vaddq_s64(vaddq_s64(v20, v22), vaddq_s64(v21, v23)));
        v37 = v5 - (v5 & 0xFFFFFFF8);
        if ((v5 & 0xFFFFFFF8) != v5)
        {
          do
          {
            v33 += *a2;
            v34 += a2[1];
            result = a2[3];
            v35 += a2[2];
            v36 += result;
            a2 += 4;
            --v37;
          }

          while (v37);
        }

        *a4 = v33 / v5;
        a4[1] = v34 / v5;
        a4[2] = v35 / v5;
        a4[3] = v36 / v5;
        a4 += 4;
      }

      while (a2 < v4);
    }
  }

  return result;
}

unint64_t GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<8u,8u,true,15ull,0ull,31ull,16ull,47ull,32ull,63ull,48ull>(unint64_t result, int8x16_t *a2, unsigned int a3, _WORD *a4)
{
  if (a3)
  {
    v4 = (a2 + a3);
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    if (result < 4)
    {
      do
      {
        v24 = WORD1(a2->i64[0]);
        v25 = a2->i64[0];
        v26 = WORD2(a2->i64[0]);
        v27 = HIWORD(a2->i64[0]);
        if (result < 2)
        {
          a2 = (a2 + 8);
        }

        else
        {
          v28 = a2->u64[1];
          v25 += v28;
          v24 += WORD1(v28);
          v26 += WORD2(v28);
          v27 += HIWORD(v28);
          if (result == 2)
          {
            ++a2;
          }

          else
          {
            v29 = a2[1].u64[0];
            v25 += v29;
            v24 += WORD1(v29);
            v26 += WORD2(v29);
            v27 += HIWORD(v29);
            a2 = (a2 + 24);
          }
        }

        *a4 = v25 / v5;
        a4[1] = v24 / v5;
        a4[2] = v26 / v5;
        a4[3] = v27 / v5;
        a4 += 4;
      }

      while (a2 < v4);
    }

    else
    {
      v6.i64[0] = 0xFFFFLL;
      v6.i64[1] = 0xFFFFLL;
      do
      {
        v7 = 0uLL;
        v8 = 0uLL;
        v9 = a2 + 1;
        a2 = (a2 + 8 * (v5 & 0xFFFFFFFC));
        v10 = v5 & 0xFFFFFFFC;
        v11 = 0uLL;
        v12 = 0uLL;
        v13 = 0uLL;
        v14 = 0uLL;
        v15 = 0uLL;
        v16 = 0uLL;
        do
        {
          v17 = v9[-1];
          v7 = vaddq_s64(vandq_s8(v17, v6), v7);
          v8 = vaddq_s64(vandq_s8(*v9, v6), v8);
          v11 = vaddq_s64(vandq_s8(vshrq_n_u64(v17, 0x10uLL), v6), v11);
          v12 = vaddq_s64(vandq_s8(vshrq_n_u64(*v9, 0x10uLL), v6), v12);
          v13 = vaddq_s64(vandq_s8(vshrq_n_u64(v17, 0x20uLL), v6), v13);
          v14 = vaddq_s64(vandq_s8(vshrq_n_u64(*v9, 0x20uLL), v6), v14);
          v15 = vsraq_n_u64(v15, v17, 0x30uLL);
          v16 = vsraq_n_u64(v16, *v9, 0x30uLL);
          v9 += 2;
          v10 -= 4;
        }

        while (v10);
        v18 = vaddvq_s64(vaddq_s64(v8, v7));
        v19 = vaddvq_s64(vaddq_s64(v12, v11));
        v20 = vaddvq_s64(vaddq_s64(v14, v13));
        v21 = vaddvq_s64(vaddq_s64(v16, v15));
        v22 = v5 - (v5 & 0xFFFFFFFC);
        if ((v5 & 0xFFFFFFFC) != v5)
        {
          do
          {
            v23 = a2->i64[0];
            a2 = (a2 + 8);
            result = v23;
            v18 += v23;
            v19 += WORD1(v23);
            v20 += WORD2(v23);
            v21 += HIWORD(v23);
            --v22;
          }

          while (v22);
        }

        *a4 = v18 / v5;
        a4[1] = v19 / v5;
        a4[2] = v20 / v5;
        a4[3] = v21 / v5;
        a4 += 4;
      }

      while (a2 < v4);
    }
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<long long>::resolve<8u,8u,true,15ull,0ull,31ull,16ull,47ull,32ull,63ull,48ull>(uint64_t result, int64x2_t *a2, unsigned int a3, _WORD *a4)
{
  if (a3)
  {
    v4 = (a2 + a3);
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    if (result < 4)
    {
      do
      {
        v23 = a2->i64[0];
        v24 = a2->i64[0] << 32 >> 48;
        v25 = a2->i64[0] << 16 >> 48;
        v26 = a2->i64[0] >> 48;
        if (result < 2)
        {
          a2 = (a2 + 8);
        }

        else
        {
          v27 = a2->i64[1];
          v23 += v27;
          v24 += v27 >> 16;
          v25 += v27 << 16 >> 48;
          v26 += v27 >> 48;
          if (result == 2)
          {
            ++a2;
          }

          else
          {
            v28 = a2[1].i64[0];
            v23 += v28;
            v24 += v28 >> 16;
            v25 += v28 << 16 >> 48;
            v26 += v28 >> 48;
            a2 = (a2 + 24);
          }
        }

        *a4 = v23 / v5;
        a4[1] = v24 / v5;
        a4[2] = v25 / v5;
        a4[3] = v26 / v5;
        a4 += 4;
      }

      while (a2 < v4);
    }

    else
    {
      do
      {
        v6 = 0uLL;
        v7 = 0uLL;
        v8 = a2 + 1;
        a2 = (a2 + 8 * (v5 & 0xFFFFFFFC));
        v9 = v5 & 0xFFFFFFFC;
        v10 = 0uLL;
        v11 = 0uLL;
        v12 = 0uLL;
        v13 = 0uLL;
        v14 = 0uLL;
        v15 = 0uLL;
        do
        {
          v16 = v8[-1];
          v6 = vsraq_n_s64(v6, vshlq_n_s64(v16, 0x30uLL), 0x30uLL);
          v7 = vsraq_n_s64(v7, vshlq_n_s64(*v8, 0x30uLL), 0x30uLL);
          v10 = vsraq_n_s64(v10, vshlq_n_s64(v16, 0x20uLL), 0x30uLL);
          v11 = vsraq_n_s64(v11, vshlq_n_s64(*v8, 0x20uLL), 0x30uLL);
          v12 = vsraq_n_s64(v12, vshlq_n_s64(v16, 0x10uLL), 0x30uLL);
          v13 = vsraq_n_s64(v13, vshlq_n_s64(*v8, 0x10uLL), 0x30uLL);
          v14 = vsraq_n_s64(v14, v16, 0x30uLL);
          v15 = vsraq_n_s64(v15, *v8, 0x30uLL);
          v8 += 2;
          v9 -= 4;
        }

        while (v9);
        v17 = vaddvq_s64(vaddq_s64(v7, v6));
        v18 = vaddvq_s64(vaddq_s64(v11, v10));
        v19 = vaddvq_s64(vaddq_s64(v13, v12));
        v20 = vaddvq_s64(vaddq_s64(v15, v14));
        v21 = v5 - (v5 & 0xFFFFFFFC);
        if ((v5 & 0xFFFFFFFC) != v5)
        {
          do
          {
            v22 = a2->i64[0];
            a2 = (a2 + 8);
            result = v22;
            v17 += v22;
            v18 += v22 >> 16;
            v19 += v22 << 16 >> 48;
            v20 += v22 >> 48;
            --v21;
          }

          while (v21);
        }

        *a4 = v17 / v5;
        a4[1] = v18 / v5;
        a4[2] = v19 / v5;
        a4[3] = v20 / v5;
        a4 += 4;
      }

      while (a2 < v4);
    }
  }

  return result;
}

unint64_t GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<8u,16u,true,31ull,0ull,63ull,32ull,0ull,0ull,0ull,0ull>(unint64_t result, char *a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = &a2[a3];
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    v6 = v5 & 3;
    if ((v5 & 3) == 0)
    {
      v6 = 4;
    }

    if (result < 5)
    {
      do
      {
        v34 = *a2;
        v35 = HIDWORD(*a2);
        v36 = *a2 & 1;
        if (result < 2)
        {
          a2 += 16;
        }

        else
        {
          v37 = *(a2 + 2);
          v34 += v37;
          v35 += HIDWORD(v37);
          v36 += v37 & 1;
          if (result == 2)
          {
            a2 += 32;
          }

          else
          {
            v38 = *(a2 + 4);
            v34 += v38;
            v35 += HIDWORD(v38);
            v36 += v38 & 1;
            if (result == 3)
            {
              a2 += 48;
            }

            else
            {
              v39 = *(a2 + 6);
              v34 += v39;
              v35 += HIDWORD(v39);
              v36 += v39 & 1;
              a2 += 64;
            }
          }
        }

        v32 = v34 / v5;
        *a4 = (v36 / v5) & 1 | v32;
        *(a4 + 1) = BYTE1(v32);
        *(a4 + 2) = BYTE2(v32);
        *(a4 + 3) = BYTE3(v32);
        v33 = v35 / v5;
        *(a4 + 4) = v33;
        *(a4 + 6) = BYTE2(v33);
        *(a4 + 7) = BYTE3(v33);
        a4 += 16;
      }

      while (a2 < v4);
    }

    else
    {
      v7.i64[0] = 0xFFFFFFFFLL;
      v7.i64[1] = 0xFFFFFFFFLL;
      v8 = vdupq_n_s64(1uLL);
      do
      {
        v9 = 0uLL;
        v10 = 0uLL;
        v11 = (a2 + 32);
        a2 += 16 * (v5 - v6);
        v12 = v5 - v6;
        v13 = 0uLL;
        v14 = 0uLL;
        v15 = 0uLL;
        v16 = 0uLL;
        v17 = 0uLL;
        v18 = 0uLL;
        do
        {
          v19 = v11 - 4;
          v20 = vld2q_f64(v19);
          v21 = vld2q_f64(v11);
          v22 = vandq_s8(v20, v8);
          v23 = vandq_s8(v21, v8);
          v9 = vaddq_s64(vandq_s8(v20, v7), v9);
          v10 = vaddq_s64(vandq_s8(v21, v7), v10);
          v13 = vsraq_n_u64(v13, v20, 0x20uLL);
          v14 = vsraq_n_u64(v14, v21, 0x20uLL);
          v15 = vaddq_s64(v22, v15);
          v16 = vaddq_s64(v23, v16);
          v17 = vaddq_s64(v22, v17);
          v18 = vaddq_s64(v23, v18);
          v11 += 8;
          v12 -= 4;
        }

        while (v12);
        v24 = vaddvq_s64(vaddq_s64(v10, v9));
        v25 = vaddvq_s64(vaddq_s64(v14, v13));
        v26 = vaddvq_s64(vaddq_s64(v16, v15));
        v27 = vaddvq_s64(vaddq_s64(v18, v17));
        v28 = v6;
        do
        {
          v29 = *a2;
          a2 += 16;
          result = v29;
          v24 += v29;
          v25 += HIDWORD(v29);
          v26 += v29 & 1;
          v27 += v29 & 1;
          --v28;
        }

        while (v28);
        v30 = v24 / v5;
        *a4 = ((v27 / v5) | (v26 / v5)) & 1 | v30;
        *(a4 + 1) = BYTE1(v30);
        *(a4 + 2) = BYTE2(v30);
        *(a4 + 3) = BYTE3(v30);
        v31 = v25 / v5;
        *(a4 + 4) = v31;
        *(a4 + 6) = BYTE2(v31);
        *(a4 + 7) = BYTE3(v31);
        a4 += 16;
      }

      while (a2 < v4);
    }
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<long long>::resolve<8u,16u,true,31ull,0ull,63ull,32ull,0ull,0ull,0ull,0ull>(uint64_t result, char *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = &a2[a3];
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    v6 = v5 & 3;
    if ((v5 & 3) == 0)
    {
      v6 = 4;
    }

    v7 = v5 - v6;
    v8 = vdupq_n_s64(1uLL);
    do
    {
      if (result > 4)
      {
        v14 = 0uLL;
        v15 = 0uLL;
        v16 = (a2 + 32);
        v17 = v7;
        v18 = 0uLL;
        v19 = 0uLL;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        do
        {
          v24 = v16 - 4;
          v25 = vld2q_f64(v24);
          v26 = vld2q_f64(v16);
          v27 = vandq_s8(v25, v8);
          v28 = vandq_s8(v26, v8);
          v14 = vsraq_n_s64(v14, vshlq_n_s64(v25, 0x20uLL), 0x20uLL);
          v15 = vsraq_n_s64(v15, vshlq_n_s64(v26, 0x20uLL), 0x20uLL);
          v18 = vsraq_n_s64(v18, v25, 0x20uLL);
          v19 = vsraq_n_s64(v19, v26, 0x20uLL);
          v20 = vsubq_s64(v20, v27);
          v21 = vsubq_s64(v21, v28);
          v22 = vsubq_s64(v22, v27);
          v23 = vsubq_s64(v23, v28);
          v16 += 8;
          v17 -= 4;
        }

        while (v17);
        v9 = vaddvq_s64(vaddq_s64(v15, v14));
        v10 = vaddvq_s64(vaddq_s64(v19, v18));
        v11 = vaddvq_s64(vaddq_s64(v21, v20));
        v12 = vaddvq_s64(vaddq_s64(v23, v22));
        a2 += 16 * v7;
        v13 = v7;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
      }

      v29 = v5 - v13;
      do
      {
        v30 = *a2;
        a2 += 16;
        v9 += v30;
        v10 += v30 >> 32;
        v11 -= v30 & 1;
        v12 -= v30 & 1;
        --v29;
      }

      while (v29);
      *a4 = ((v12 / v5) | (v11 / v5)) & 1 | (v9 / v5);
      *(a4 + 1) = (v9 / v5) >> 8;
      *(a4 + 2) = (v9 / v5) >> 16;
      *(a4 + 3) = (v9 / v5) >> 24;
      v31 = v10 / v5;
      *(a4 + 4) = v31;
      *(a4 + 6) = BYTE2(v31);
      *(a4 + 7) = BYTE3(v31);
      a4 += 16;
    }

    while (a2 < v4);
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<4u,4u,true,41ull,32ull,51ull,42ull,61ull,52ull,63ull,62ull>(uint64_t result, unsigned int *a2, unsigned int a3, _BYTE *a4)
{
  if (a3)
  {
    v4 = a2 + a3;
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    v6 = vdupq_n_s64(0x3FFuLL);
    do
    {
      if (result > 7)
      {
        v16 = 0uLL;
        v15 = &a2[v5 & 0xFFFFFFF8];
        v17 = 0uLL;
        v18 = a2 + 4;
        v19 = 0uLL;
        v20 = v5 & 0xFFFFFFF8;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
        v26 = 0uLL;
        v27 = 0uLL;
        v28 = 0uLL;
        v29 = 0uLL;
        v30 = 0uLL;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        do
        {
          v34 = *(v18 - 1);
          v35.i64[0] = DWORD2(v34);
          v35.i64[1] = HIDWORD(v34);
          v36 = v35;
          v35.i64[0] = v34;
          v35.i64[1] = DWORD1(v34);
          v37 = v35;
          v35.i64[0] = *(v18 + 1);
          v35.i64[1] = HIDWORD(*v18);
          v38 = v35;
          v35.i64[0] = *v18;
          v35.i64[1] = HIDWORD(*v18);
          v17 = vaddq_s64(vandq_s8(v36, v6), v17);
          v16 = vaddq_s64(vandq_s8(v37, v6), v16);
          v21 = vaddq_s64(vandq_s8(v38, v6), v21);
          v19 = vaddq_s64(vandq_s8(v35, v6), v19);
          v23 = vaddq_s64(vandq_s8(vshrq_n_u64(v36, 0xAuLL), v6), v23);
          v22 = vaddq_s64(vandq_s8(vshrq_n_u64(v37, 0xAuLL), v6), v22);
          v25 = vaddq_s64(vandq_s8(vshrq_n_u64(v38, 0xAuLL), v6), v25);
          v24 = vaddq_s64(vandq_s8(vshrq_n_u64(v35, 0xAuLL), v6), v24);
          v27 = vaddq_s64(vandq_s8(vshrq_n_u64(v36, 0x14uLL), v6), v27);
          v26 = vaddq_s64(vandq_s8(vshrq_n_u64(v37, 0x14uLL), v6), v26);
          v29 = vaddq_s64(vandq_s8(vshrq_n_u64(v38, 0x14uLL), v6), v29);
          v28 = vaddq_s64(vandq_s8(vshrq_n_u64(v35, 0x14uLL), v6), v28);
          v31 = vsraq_n_u64(v31, v36, 0x1EuLL);
          v30 = vsraq_n_u64(v30, v37, 0x1EuLL);
          v33 = vsraq_n_u64(v33, v38, 0x1EuLL);
          v32 = vsraq_n_u64(v32, v35, 0x1EuLL);
          v18 += 8;
          v20 -= 8;
        }

        while (v20);
        v10 = vaddvq_s64(vaddq_s64(vaddq_s64(v19, v16), vaddq_s64(v21, v17)));
        v11 = vaddvq_s64(vaddq_s64(vaddq_s64(v24, v22), vaddq_s64(v25, v23)));
        v12 = vaddvq_s64(vaddq_s64(vaddq_s64(v28, v26), vaddq_s64(v29, v27)));
        v13 = vaddvq_s64(vaddq_s64(vaddq_s64(v32, v30), vaddq_s64(v33, v31)));
        v14 = v5 & 0xFFFFFFF8;
        if ((v5 & 0xFFFFFFF8) == v5)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = a2;
      }

      v39 = v5 - v14;
      do
      {
        v40 = *v15++;
        v10 += v40 & 0x3FF;
        v11 += (v40 >> 10) & 0x3FF;
        v12 += (v40 >> 20) & 0x3FF;
        v13 += v40 >> 30;
        --v39;
      }

      while (v39);
LABEL_6:
      v7 = v10 / v5;
      v8 = v12 / v5;
      v9 = (v11 / v5) << 42;
      *a4 = v7;
      a4[1] = ((v9 & 0xFFFFFC0000000000 | (v7 << 32) & 0x3FFFFFFFFFFLL) >> 32) >> 8;
      a4[2] = (v9 & 0xF000000000000 | (v8 << 52)) >> 48;
      a4[3] = ((v8 << 52) & 0x3F00000000000000 | ((v13 / v5) << 62)) >> 56;
      a4 += 4;
      a2 = v15;
    }

    while (v15 < v4);
  }

  return result;
}

unint64_t GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<2u,2u,true,63ull,60ull,59ull,56ull,55ull,52ull,51ull,48ull>(unint64_t result, unsigned __int8 *a2, int a3, _BYTE *a4)
{
  if (a3)
  {
    v4 = &a2[a3];
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    if (result < 8)
    {
      do
      {
        v41 = a2[1];
        v42 = v41 >> 4;
        v43 = *a2;
        v44 = v41 & 0xF;
        v45 = v43 >> 4;
        v46 = v43 & 0xF;
        if (result < 2)
        {
          a2 += 2;
        }

        else
        {
          v47 = a2[2];
          v48 = a2[3];
          v42 += v48 >> 4;
          v44 += v48 & 0xF;
          v45 += v47 >> 4;
          v46 += v47 & 0xF;
          if (result == 2)
          {
            a2 += 4;
          }

          else
          {
            v49 = a2[4];
            v50 = a2[5];
            v42 += v50 >> 4;
            v44 += v50 & 0xF;
            v45 += v49 >> 4;
            v46 += v49 & 0xF;
            if (result == 3)
            {
              a2 += 6;
            }

            else
            {
              v51 = a2[6];
              v52 = a2[7];
              v42 += v52 >> 4;
              v44 += v52 & 0xF;
              v45 += v51 >> 4;
              v46 += v51 & 0xF;
              if (result == 4)
              {
                a2 += 8;
              }

              else
              {
                v53 = a2[8];
                v54 = a2[9];
                v42 += v54 >> 4;
                v44 += v54 & 0xF;
                v45 += v53 >> 4;
                v46 += v53 & 0xF;
                if (result == 5)
                {
                  a2 += 10;
                }

                else
                {
                  v55 = a2[10];
                  v56 = a2[11];
                  v42 += v56 >> 4;
                  v44 += v56 & 0xF;
                  v45 += v55 >> 4;
                  v46 += v55 & 0xF;
                  if (result == 6)
                  {
                    a2 += 12;
                  }

                  else
                  {
                    v57 = a2[12];
                    v58 = a2[13];
                    v42 += v58 >> 4;
                    v44 += v58 & 0xF;
                    v45 += v57 >> 4;
                    v46 += v57 & 0xF;
                    a2 += 14;
                  }
                }
              }
            }
          }
        }

        *a4 = ((((v46 / v5) & 0xF) << 48) | ((v45 / v5) << 52)) >> 48;
        a4[1] = (((v42 / v5) << 60) | (((v44 / v5) & 0xF) << 56)) >> 56;
        a4 += 2;
      }

      while (a2 < v4);
    }

    else
    {
      v6 = vdupq_n_s64(0xFuLL);
      do
      {
        v7 = 0uLL;
        v8 = a2;
        v9 = 0uLL;
        a2 += 2 * (v5 & 0xFFFFFFF8);
        v10 = 0uLL;
        v11 = v5 & 0xFFFFFFF8;
        v12 = 0uLL;
        v13 = 0uLL;
        v14 = 0uLL;
        v15 = 0uLL;
        v16 = 0uLL;
        v17 = 0uLL;
        v18 = 0uLL;
        v19 = 0uLL;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        do
        {
          v59 = vld2_s8(v8);
          v8 += 16;
          v25 = vmovl_u8(v59.val[0]);
          v59 = vmovl_u8(v59.val[1]);
          *(&v59 + 8) = vmovl_high_u16(v59);
          v28.val[0] = v26;
          v28.val[1] = v27;
          v12 = vsraq_n_u64(v12, v28, 4uLL);
          v16 = vaddq_s64(vandq_s8(v28, v6), v16);
          v28.val[0] = v59.val[1].u32[0];
          v28.val[1] = v59.val[1].u32[1];
          v59 = vmovl_u16(v59.val[0]);
          v10 = vsraq_n_u64(v10, v28, 4uLL);
          v15 = vaddq_s64(vandq_s8(v28, v6), v15);
          v28.val[0] = v29;
          v28.val[1] = v30;
          v9 = vsraq_n_u64(v9, v28, 4uLL);
          v14 = vaddq_s64(vandq_s8(v28, v6), v14);
          *(&v59 + 8) = vmovl_high_u16(v25);
          v28.val[0] = v59.val[0].u32[0];
          v28.val[1] = v59.val[0].u32[1];
          v7 = vsraq_n_u64(v7, v28, 4uLL);
          v13 = vaddq_s64(vandq_s8(v28, v6), v13);
          v28.val[0] = v31;
          v28.val[1] = v32;
          v20 = vsraq_n_u64(v20, v28, 4uLL);
          v24 = vaddq_s64(vandq_s8(v28, v6), v24);
          v28.val[0] = v59.val[1].u32[0];
          v28.val[1] = v59.val[1].u32[1];
          *(&v59 + 8) = vmovl_u16(*v25.i8);
          v19 = vsraq_n_u64(v19, v28, 4uLL);
          v23 = vaddq_s64(vandq_s8(v28, v6), v23);
          v28.val[0] = v33;
          v28.val[1] = v34;
          v59 = v28;
          v28.val[0] = v59.val[1].u32[0];
          v28.val[1] = v59.val[1].u32[1];
          v17 = vsraq_n_u64(v17, v28, 4uLL);
          v18 = vsraq_n_u64(v18, v59, 4uLL);
          v22 = vaddq_s64(vandq_s8(v59, v6), v22);
          v21 = vaddq_s64(vandq_s8(v28, v6), v21);
          v11 -= 8;
        }

        while (v11);
        v35 = vaddvq_s64(vaddq_s64(vaddq_s64(v7, v10), vaddq_s64(v9, v12)));
        v36 = vaddvq_s64(vaddq_s64(vaddq_s64(v13, v15), vaddq_s64(v14, v16)));
        v37 = vaddvq_s64(vaddq_s64(vaddq_s64(v17, v19), vaddq_s64(v18, v20)));
        v38 = vaddvq_s64(vaddq_s64(vaddq_s64(v21, v23), vaddq_s64(v22, v24)));
        v39 = v5 - (v5 & 0xFFFFFFF8);
        if ((v5 & 0xFFFFFFF8) != v5)
        {
          do
          {
            result = a2[1];
            v40 = *a2;
            a2 += 2;
            v35 += result >> 4;
            v36 += result & 0xF;
            v37 += v40 >> 4;
            v38 += v40 & 0xF;
            --v39;
          }

          while (v39);
        }

        *a4 = ((((v38 / v5) & 0xF) << 48) | ((v37 / v5) << 52)) >> 48;
        a4[1] = (((v35 / v5) << 60) | (((v36 / v5) & 0xF) << 56)) >> 56;
        a4 += 2;
      }

      while (a2 < v4);
    }
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<2u,2u,true,63ull,59ull,58ull,54ull,53ull,49ull,48ull,48ull>(uint64_t result, const char *a2, int a3, _BYTE *a4)
{
  if (a3)
  {
    v4 = &a2[a3];
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    v6 = vdupq_n_s64(0x1FuLL);
    v7 = vdupq_n_s64(1uLL);
    do
    {
      if (result > 7)
      {
        v15 = 0uLL;
        v14 = &a2[2 * (v5 & 0xFFFFFFF8)];
        v16 = 0uLL;
        v17 = v5 & 0xFFFFFFF8;
        v18 = 0uLL;
        v19 = 0uLL;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
        v26 = 0uLL;
        v27 = 0uLL;
        v28 = 0uLL;
        v29 = 0uLL;
        v30 = 0uLL;
        v31 = 0uLL;
        do
        {
          v49 = vld2_s8(a2);
          a2 += 16;
          v32 = vmovl_u8(*v49.i8);
          v33 = vmovl_u16(*v32.i8);
          v34.i64[0] = v33.u32[0];
          v34.i64[1] = v33.u32[1];
          v35 = v34;
          v34.i64[0] = v33.u32[2];
          v34.i64[1] = v33.u32[3];
          v36 = v34;
          v37 = vmovl_high_u16(v32);
          v34.i64[0] = v37.u32[0];
          v34.i64[1] = v37.u32[1];
          v38 = v34;
          v34.i64[0] = v37.u32[2];
          v34.i64[1] = v37.u32[3];
          v39 = v34;
          v49 = vmovl_u8(v49.u64[1]);
          *(&v49 + 8) = vmovl_u16(*v49.i8);
          v34.i64[0] = v49.u32[2];
          v34.i64[1] = v49.u32[3];
          v40 = v34;
          v34.i64[0] = v41;
          v34.i64[1] = v42;
          *(&v49 + 8) = v34;
          v49 = vmovl_high_u16(v49);
          v34.i64[0] = v49.u32[0];
          v34.i64[1] = v49.u32[1];
          v43 = v34;
          v34.i64[0] = v44;
          v34.i64[1] = v45;
          v19 = vsraq_n_u64(v19, v34, 3uLL);
          v18 = vsraq_n_u64(v18, v43, 3uLL);
          v16 = vsraq_n_u64(v16, *(&v49 + 8), 3uLL);
          v15 = vsraq_n_u64(v15, v40, 3uLL);
          v23 = vaddq_s64(vandq_s8(vshrq_n_u64(vorrq_s8(vshlq_n_s64(v34, 0x38uLL), vshlq_n_s64(v39, 0x30uLL)), 0x36uLL), v6), v23);
          v22 = vaddq_s64(vandq_s8(vshrq_n_u64(vorrq_s8(vshlq_n_s64(v43, 0x38uLL), vshlq_n_s64(v38, 0x30uLL)), 0x36uLL), v6), v22);
          v21 = vaddq_s64(vandq_s8(vshrq_n_u64(vorrq_s8(vshlq_n_s64(*(&v49 + 8), 0x38uLL), vshlq_n_s64(v36, 0x30uLL)), 0x36uLL), v6), v21);
          v20 = vaddq_s64(vandq_s8(vshrq_n_u64(vorrq_s8(vshlq_n_s64(v40, 0x38uLL), vshlq_n_s64(v35, 0x30uLL)), 0x36uLL), v6), v20);
          v27 = vaddq_s64(vandq_s8(vshrq_n_u64(v39, 1uLL), v6), v27);
          v26 = vaddq_s64(vandq_s8(vshrq_n_u64(v38, 1uLL), v6), v26);
          v25 = vaddq_s64(vandq_s8(vshrq_n_u64(v36, 1uLL), v6), v25);
          v24 = vaddq_s64(vandq_s8(vshrq_n_u64(v35, 1uLL), v6), v24);
          v31 = vaddq_s64(vandq_s8(v39, v7), v31);
          v30 = vaddq_s64(vandq_s8(v38, v7), v30);
          v29 = vaddq_s64(vandq_s8(v36, v7), v29);
          v28 = vaddq_s64(vandq_s8(v35, v7), v28);
          v17 -= 8;
        }

        while (v17);
        v9 = vaddvq_s64(vaddq_s64(vaddq_s64(v15, v18), vaddq_s64(v16, v19)));
        v10 = vaddvq_s64(vaddq_s64(vaddq_s64(v20, v22), vaddq_s64(v21, v23)));
        v11 = vaddvq_s64(vaddq_s64(vaddq_s64(v24, v26), vaddq_s64(v25, v27)));
        v12 = vaddvq_s64(vaddq_s64(vaddq_s64(v28, v30), vaddq_s64(v29, v31)));
        v13 = v5 & 0xFFFFFFF8;
        if ((v5 & 0xFFFFFFF8) == v5)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = a2;
      }

      v46 = v5 - v13;
      do
      {
        v47 = *v14;
        v48 = *(v14 + 1);
        v9 += v48 >> 3;
        v10 += (((v47 << 48) | (v48 << 56)) >> 54) & 0x1F;
        v11 += (v47 >> 1) & 0x1F;
        v12 += v47 & 1;
        v14 += 2;
        --v46;
      }

      while (v46);
LABEL_6:
      v8 = v10 / v5;
      *a4 = ((((v12 / v5) & 1) << 48) & 0x1FFFFFFFFFFFFLL | (((v11 / v5) & 0x1F) << 49) & 0x3FFFFFFFFFFFFFLL | (v8 << 54)) >> 48;
      a4[1] = ((v8 << 54) & 0x700000000000000 | ((v9 / v5) << 59)) >> 56;
      a4 += 2;
      a2 = v14;
    }

    while (v14 < v4);
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<float>::resolve<4u,(unsigned char)11,(unsigned char)11,(unsigned char)10,(unsigned char)0>(uint64_t result, char *a2, unsigned int a3, int *a4)
{
  if (a3)
  {
    v4 = &a2[a3];
    v5 = result;
    do
    {
      if (!result)
      {
        v11 = 0.0;
        v10 = 0.0;
        v32 = 0.0 / v5;
        if ((COERCE_UNSIGNED_INT(0.0 / v5) & 0x80000000) != 0)
        {
          goto LABEL_56;
        }

LABEL_43:
        v33 = LODWORD(v32) & 0x7F800000;
        v34 = LODWORD(v32) & 0x7FFFFF;
        if ((LODWORD(v32) & 0x7F800000) == 0x7F800000)
        {
          v36 = (v34 >> 17) | 0x7C0;
          v37 = v10 / v5;
          if ((COERCE_UNSIGNED_INT(v10 / v5) & 0x80000000) == 0)
          {
            goto LABEL_57;
          }

          goto LABEL_73;
        }

        if (v33)
        {
          if (v33 > 0x47000000)
          {
            v36 = 1984;
            v37 = v10 / v5;
            if ((COERCE_UNSIGNED_INT(v10 / v5) & 0x80000000) == 0)
            {
              goto LABEL_57;
            }

            goto LABEL_73;
          }

          if (v33 >> 23 < 0x71)
          {
            goto LABEL_56;
          }

          v36 = ((LODWORD(v32) >> 17) - 7168) & 0xFFC0 | (v34 >> 17);
          v37 = v10 / v5;
          if ((COERCE_UNSIGNED_INT(v10 / v5) & 0x80000000) != 0)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v35 = LODWORD(v32) >> 17;
          if (v34)
          {
            v36 = v35;
          }

          else
          {
            v36 = 0;
          }

          v37 = v10 / v5;
          if ((COERCE_UNSIGNED_INT(v10 / v5) & 0x80000000) != 0)
          {
            goto LABEL_73;
          }
        }

LABEL_57:
        v38 = LODWORD(v37) & 0x7F800000;
        v39 = LODWORD(v37) & 0x7FFFFF;
        if ((LODWORD(v37) & 0x7F800000) == 0x7F800000)
        {
          v41 = (v39 >> 17) | 0x7C0;
          v42 = v11 / v5;
          if ((COERCE_UNSIGNED_INT(v11 / v5) & 0x80000000) == 0)
          {
            goto LABEL_74;
          }
        }

        else if (v38)
        {
          if (v38 <= 0x47000000)
          {
            if (v38 >> 23 < 0x71)
            {
              goto LABEL_73;
            }

            v41 = ((LODWORD(v37) >> 17) - 7168) & 0xFFC0 | (v39 >> 17);
            v42 = v11 / v5;
            if ((COERCE_UNSIGNED_INT(v11 / v5) & 0x80000000) == 0)
            {
              goto LABEL_74;
            }
          }

          else
          {
            v41 = 1984;
            v42 = v11 / v5;
            if ((COERCE_UNSIGNED_INT(v11 / v5) & 0x80000000) == 0)
            {
              goto LABEL_74;
            }
          }
        }

        else
        {
          v40 = LODWORD(v37) >> 17;
          if (v39)
          {
            v41 = v40;
          }

          else
          {
            v41 = 0;
          }

          v42 = v11 / v5;
          if ((COERCE_UNSIGNED_INT(v11 / v5) & 0x80000000) == 0)
          {
            goto LABEL_74;
          }
        }

LABEL_3:
        v6 = 0;
        goto LABEL_4;
      }

      v7 = 0;
      v8 = 0.0;
      v9 = a2;
      v10 = 0.0;
      v11 = 0.0;
      do
      {
        v14 = *v9;
        v15 = (*v9 >> 6) & 0x1F;
        v16 = *v9 & 0x3F;
        if (v15 == 31)
        {
          LODWORD(v20) = (v16 << 17) | 0x7F800000;
          v21 = (v14 >> 17) & 0x1F;
          v22 = (v14 >> 11) & 0x3F;
          if (v21 == 31)
          {
            goto LABEL_17;
          }

          goto LABEL_21;
        }

        if (v15)
        {
          v18 = (v15 << 23) + 939524096;
          v17 = 17;
          goto LABEL_20;
        }

        if (v16)
        {
          v17 = 16;
          v18 = 956301312;
          do
          {
            v19 = v17 - 16;
            ++v17;
            v18 -= 0x800000;
          }

          while (((v16 << v19) & 0x40) == 0);
LABEL_20:
          LODWORD(v20) = (v16 << v17) & 0x7FFFFF | v18;
          v21 = (v14 >> 17) & 0x1F;
          v22 = (v14 >> 11) & 0x3F;
          if (v21 == 31)
          {
            goto LABEL_17;
          }

          goto LABEL_21;
        }

        v20 = 0.0;
        v21 = (v14 >> 17) & 0x1F;
        v22 = (v14 >> 11) & 0x3F;
        if (v21 == 31)
        {
LABEL_17:
          LODWORD(v23) = (v22 << 17) | 0x7F800000;
          v24 = v14 >> 27;
          if (v14 >> 27 == 31)
          {
            goto LABEL_7;
          }

          goto LABEL_28;
        }

LABEL_21:
        if (v21)
        {
          v26 = (v21 << 23) + 939524096;
          v25 = 17;
          goto LABEL_27;
        }

        if (v22)
        {
          v25 = 16;
          v26 = 956301312;
          do
          {
            v27 = v25 - 16;
            ++v25;
            v26 -= 0x800000;
          }

          while (((v22 << v27) & 0x40) == 0);
LABEL_27:
          LODWORD(v23) = (v22 << v25) & 0x7FFFFF | v26;
          v24 = v14 >> 27;
          if (v14 >> 27 == 31)
          {
            goto LABEL_7;
          }

          goto LABEL_28;
        }

        v23 = 0.0;
        v24 = v14 >> 27;
        if (v14 >> 27 == 31)
        {
LABEL_7:
          v12 = (v14 >> 22 << 18) | 0x7F800000;
LABEL_8:
          v13 = *&v12;
          goto LABEL_9;
        }

LABEL_28:
        v28 = (v14 >> 22) & 0x1F;
        if (v24)
        {
          v30 = (v24 << 23) + 939524096;
          v29 = 18;
LABEL_34:
          v12 = (v28 << v29) & 0x7FFFFF | v30;
          goto LABEL_8;
        }

        if (v28)
        {
          v29 = 17;
          v30 = 956301312;
          do
          {
            v31 = v29 - 17;
            ++v29;
            v30 -= 0x800000;
          }

          while (((v28 << v31) & 0x20) == 0);
          goto LABEL_34;
        }

        v13 = 0.0;
LABEL_9:
        v8 = v8 + v20;
        v10 = v10 + v23;
        v11 = v11 + v13;
        ++v9;
        ++v7;
      }

      while (v7 != result);
      a2 += 4 * (result - 1) + 4;
      v32 = v8 / v5;
      if ((COERCE_UNSIGNED_INT(v8 / v5) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

LABEL_56:
      v36 = 0;
      v37 = v10 / v5;
      if ((COERCE_UNSIGNED_INT(v10 / v5) & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

LABEL_73:
      v41 = 0;
      v42 = v11 / v5;
      if ((COERCE_UNSIGNED_INT(v11 / v5) & 0x80000000) != 0)
      {
        goto LABEL_3;
      }

LABEL_74:
      v43 = LODWORD(v42) & 0x7F800000;
      v44 = LODWORD(v42) & 0x7FFFFF;
      if ((LODWORD(v42) & 0x7F800000) == 0x7F800000)
      {
        v6 = (v44 >> 18) | 0x3E0;
        goto LABEL_4;
      }

      if (v43)
      {
        if (v43 > 0x47000000)
        {
          v6 = 992;
          goto LABEL_4;
        }

        if (v43 >> 23 >= 0x71)
        {
          v6 = ((LODWORD(v42) >> 18) - 3584) & 0xFFE0 | (v44 >> 18);
          goto LABEL_4;
        }

        goto LABEL_3;
      }

      v45 = LODWORD(v42) >> 18;
      if (v44)
      {
        v6 = v45;
      }

      else
      {
        v6 = 0;
      }

LABEL_4:
      *a4++ = v36 | (v41 << 11) | (v6 << 22);
    }

    while (a2 < v4);
  }

  return result;
}

void GPUTools::GL::MSAABufferResolverResolveRGB9E5(GPUTools::GL *this, unsigned int *a2, const void *a3, __int32 *a4, void *a5, double a6)
{
  if (a3)
  {
    v7 = a2;
    v8 = this;
    v9 = a2 + a3;
    *&a6 = this;
    v10 = 4 * (this - 1) + 4;
    v39 = this;
    v38 = vdup_lane_s32(*&a6, 0);
    v11 = vdup_n_s32(0x477F8000u);
    __asm { FMOV            V0.2D, #0.5 }

    v37 = _Q0;
    do
    {
      v31 = 0;
      v32 = 0.0;
      if (v8)
      {
        v33 = v8;
        v34 = v7;
        do
        {
          v35 = *v34++;
          v36 = ldexp(1.0, (v35 >> 27) - 24);
          v32 = v32 + ((v35 & 0x1FF) * v36);
          v31 = vadd_f32(v31, vmul_n_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v35), 0xFFFFFFF7FFFFFFEELL), 0x100000001)), v36));
          --v33;
        }

        while (v33);
        v7 = (v7 + v10);
      }

      if ((v32 / v39) < 65408.0)
      {
        v16 = v32 / v39;
      }

      else
      {
        v16 = 65408.0;
      }

      v17 = 0.0;
      if ((v32 / v39) > 0.0)
      {
        v17 = v16;
      }

      v18 = v17;
      v19 = vdiv_f32(v31, v38);
      v20 = vand_s8(vbsl_s8(vcge_f32(v19, v11), v11, v19), vcgtz_f32(v19));
      v40 = v20;
      if (v17 <= *v20.i32)
      {
        v21 = *v20.i32;
      }

      else
      {
        v21 = v17;
      }

      if (*&v20.i32[1] > *v20.i32)
      {
        v20.i32[0] = v20.i32[1];
      }

      if (v17 <= *&v20.i32[1])
      {
        v22 = *v20.i32;
      }

      else
      {
        v22 = v21;
      }

      if ((LODWORD(v22) >> 23) <= 0x6Fu)
      {
        v23 = 111;
      }

      else
      {
        v23 = (LODWORD(v22) >> 23);
      }

      v24 = ldexp(1.0, v23 - 135);
      v25 = vcvtmd_s64_f64(v22 / v24 + 0.5);
      _ZF = v25 == 512;
      if (v25 == 512)
      {
        v27 = 18;
      }

      else
      {
        v27 = 17;
      }

      v28 = v27 + v23;
      if (_ZF)
      {
        v24 = v24 + v24;
      }

      v29 = vcvtmd_s64_f64(v18 / v24 + 0.5);
      v30 = vand_s8(vshl_u32(vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(vdivq_f64(vcvtq_f64_f32(v40), vdupq_lane_s64(*&v24, 0)), v37)))), 0x900000012), 0x3FE0007FC0000);
      *a4++ = v29 & 0x1FF | (v28 << 27) | v30.i32[1] | v30.i32[0];
    }

    while (v7 < v9);
  }
}

uint64_t GPUTools::GL::MSAABufferResolver<float>::resolve<2u,(unsigned char)16,(unsigned char)0,(unsigned char)0,(unsigned char)0>(uint64_t result, unsigned __int16 *a2, unsigned int a3, _WORD *a4)
{
  if (!a3)
  {
    return result;
  }

  v4 = result;
  if (!result)
  {
    v25 = HIWORD(COERCE_UNSIGNED_INT(0.0 / v4)) & 0x8000;
    v26 = COERCE_UNSIGNED_INT(0.0 / v4) >> 13;
    if ((COERCE_UNSIGNED_INT(0.0 / v4) & 0x7FFFFF) == 0)
    {
      LOWORD(v26) = 0;
    }

    v27 = COERCE_UNSIGNED_INT(0.0 / v4) & 0x7F800000;
    if (v27)
    {
      v28 = (COERCE_UNSIGNED_INT(0.0 / v4) & 0x7FFFFF) >> 13;
      v29 = v25 | 0x7C00;
      if (v27 == 2139095040)
      {
        while (1)
        {
          *a4++ = v29 | v28;
        }
      }

      if (v27 >= 0x47000001)
      {
        while (1)
        {
          *a4++ = v29;
        }
      }

      if (v27 >> 23 < 0x71)
      {
        while (1)
        {
          *a4++ = v25;
        }
      }

        ;
      }
    }

      ;
    }
  }

  v5 = (a2 + a3);
  v6 = 2 * (result - 1) + 2;
  do
  {
    while (2)
    {
      v8 = 0;
      v9 = 0.0;
      v10 = a2;
      do
      {
        while (1)
        {
          v12 = *v10;
          v13 = (v12 >> 10) & 0x1F;
          v14 = v12 & 0x3FF;
          v15 = v12 & 0x80000000;
          if (!v13)
          {
            break;
          }

          if (v13 != 31)
          {
            v16 = (v13 << 23) + 939524096;
            v17 = 13;
LABEL_16:
            v11 = v16 | v15 | (v14 << v17) & 0x7FFFFF;
            goto LABEL_9;
          }

          v11 = v15 | (*v10 << 13) | 0x7F800000;
LABEL_9:
          v9 = v9 + *&v11;
          ++v10;
          if (++v8 == result)
          {
            goto LABEL_18;
          }
        }

        if ((v12 & 0x3FF) != 0)
        {
          v16 = 956301312;
          v17 = 12;
          do
          {
            v18 = v17 - 12;
            v16 -= 0x800000;
            ++v17;
          }

          while (((v14 << v18) & 0x400) == 0);
          goto LABEL_16;
        }

        v9 = v9 + 0.0;
        ++v10;
        ++v8;
      }

      while (v8 != result);
LABEL_18:
      v19 = COERCE_UNSIGNED_INT(v9 / v4) & 0x7FFFFF;
      v20 = HIWORD(COERCE_UNSIGNED_INT(v9 / v4)) & 0x8000;
      v21 = COERCE_UNSIGNED_INT(v9 / v4) & 0x7F800000;
      if (v21)
      {
        v22 = v20 | (v19 >> 13) | 0x7C00;
        v23 = v20 | 0x7C00;
        v24 = ((v21 >> 13) + (v19 >> 13) + 0x4000) | v20;
        if (v21 >> 23 >= 0x71)
        {
          LOWORD(v20) = v24;
        }

        if (v21 > 0x47000000)
        {
          LOWORD(v20) = v23;
        }

        if (v21 == 2139095040)
        {
          LOWORD(v20) = v22;
        }

        a2 = (a2 + v6);
        *a4++ = v20;
        if (a2 >= v5)
        {
          return result;
        }

        continue;
      }

      break;
    }

    v7 = COERCE_UNSIGNED_INT(v9 / v4) >> 13;
    if (!v19)
    {
      LOWORD(v7) = 0;
    }

    a2 = (a2 + v6);
    *a4++ = v20 | v7;
  }

  while (a2 < v5);
  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<float>::resolve<4u,(unsigned char)32,(unsigned char)0,(unsigned char)0,(unsigned char)0>(uint64_t result, float *a2, unsigned int a3, float *a4)
{
  if (a3)
  {
    v4 = result;
    if (!result)
    {
        ;
      }
    }

    v5 = (a2 + a3);
    v6 = 4 * (result - 1) + 4;
    if (result > 7)
    {
      if ((result & 0xFFFFFFF8) == result)
      {
        v9 = a2 + 4;
        do
        {
          v10 = 0.0;
          v11 = v9;
          v12 = result & 0xFFFFFFF8;
          do
          {
            v10 = (((((((v10 + COERCE_FLOAT(*(v11 - 1))) + COERCE_FLOAT(HIDWORD(*(v11 - 2)))) + COERCE_FLOAT(*(v11 - 1))) + COERCE_FLOAT(HIDWORD(*(v11 - 1)))) + COERCE_FLOAT(*v11)) + COERCE_FLOAT(HIDWORD(*v11))) + COERCE_FLOAT(*(v11 + 1))) + COERCE_FLOAT(HIDWORD(*v11));
            v11 += 8;
            v12 -= 8;
          }

          while (v12);
          a2 = (a2 + v6);
          *a4++ = v10 / v4;
          v9 = (v9 + v6);
        }

        while (a2 < v5);
      }

      else
      {
        v13 = a2 + 4;
        do
        {
          v14 = 0.0;
          v15 = result & 0xFFFFFFF8;
          v16 = v13;
          do
          {
            v14 = (((((((v14 + COERCE_FLOAT(*(v16 - 1))) + COERCE_FLOAT(HIDWORD(*(v16 - 2)))) + COERCE_FLOAT(*(v16 - 1))) + COERCE_FLOAT(HIDWORD(*(v16 - 1)))) + COERCE_FLOAT(*v16)) + COERCE_FLOAT(HIDWORD(*v16))) + COERCE_FLOAT(*(v16 + 1))) + COERCE_FLOAT(HIDWORD(*v16));
            v16 += 8;
            v15 -= 8;
          }

          while (v15);
          v17 = result & 0xFFFFFFF8;
          do
          {
            v14 = v14 + a2[v17++];
          }

          while (result != v17);
          a2 = (a2 + v6);
          *a4++ = v14 / v4;
          v13 = (v13 + v6);
        }

        while (a2 < v5);
      }
    }

    else
    {
      do
      {
        v7 = *a2 + 0.0;
        if (result != 1)
        {
          v7 = v7 + a2[1];
          if (result != 2)
          {
            v7 = v7 + a2[2];
            if (result != 3)
            {
              v7 = v7 + a2[3];
              if (result != 4)
              {
                v7 = v7 + a2[4];
                if (result != 5)
                {
                  v7 = v7 + a2[5];
                  if (result != 6)
                  {
                    v7 = v7 + a2[6];
                  }
                }
              }
            }
          }
        }

        a2 = (a2 + v6);
        *a4++ = v7 / v4;
      }

      while (a2 < v5);
    }
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<float>::resolve<4u,(unsigned char)16,(unsigned char)16,(unsigned char)0,(unsigned char)0>(uint64_t result, char *a2, unsigned int a3, _WORD *a4)
{
  if (a3)
  {
    v4 = &a2[a3];
    v5 = result;
    while (!result)
    {
      v21 = 0.0;
      v19 = 0.0;
LABEL_4:
      v6 = v21 / v5;
      v7 = COERCE_UNSIGNED_INT(v19 / v5) & 0x7F800000;
      v8 = COERCE_UNSIGNED_INT(v19 / v5) & 0x7FFFFF;
      v9 = HIWORD(COERCE_UNSIGNED_INT(v19 / v5)) & 0x8000;
      v10 = ((v7 >> 13) + (v8 >> 13) + 0x4000) | v9;
      if (v7 >> 23 < 0x71)
      {
        v10 = HIWORD(COERCE_UNSIGNED_INT(v19 / v5)) & 0x8000;
      }

      if (v7 >= 0x47000001)
      {
        LOWORD(v10) = v9 | 0x7C00;
      }

      v11 = COERCE_UNSIGNED_INT(v19 / v5) >> 13;
      if (!v8)
      {
        LOWORD(v11) = 0;
      }

      v12 = v9 | v11;
      if (v7)
      {
        v12 = v10;
      }

      if (v7 == 2139095040)
      {
        v12 = v9 | (v8 >> 13) | 0x7C00;
      }

      *a4 = v12;
      v13 = LODWORD(v6) & 0x7F800000;
      v14 = HIWORD(LODWORD(v6)) & 0x8000;
      v15 = (((LODWORD(v6) & 0x7F800000u) >> 13) + ((LODWORD(v6) & 0x7FFFFFu) >> 13) + 0x4000) | v14;
      if ((LODWORD(v6) & 0x7F800000u) >> 23 < 0x71)
      {
        v15 = HIWORD(LODWORD(v6)) & 0x8000;
      }

      if (v13 >= 0x47000001)
      {
        LOWORD(v15) = v14 | 0x7C00;
      }

      v16 = LODWORD(v6) >> 13;
      if ((LODWORD(v6) & 0x7FFFFF) == 0)
      {
        LOWORD(v16) = 0;
      }

      v17 = v14 | v16;
      if (v13)
      {
        v17 = v15;
      }

      if (v13 == 2139095040)
      {
        v17 = v14 | ((LODWORD(v6) & 0x7FFFFFu) >> 13) | 0x7C00;
      }

      a4[1] = v17;
      a4 += 2;
      if (a2 >= v4)
      {
        return result;
      }
    }

    v18 = 0;
    v19 = 0.0;
    v20 = a2;
    v21 = 0.0;
    while (1)
    {
      v24 = *v20;
      v25 = (*v20 >> 10) & 0x1F;
      v26 = *v20 & 0x3FF;
      v27 = (*v20 << 16) & 0x80000000;
      if (v25 == 31)
      {
        LODWORD(v31) = v27 | (v26 << 13) | 0x7F800000;
        v32 = (v24 >> 26) & 0x1F;
        v33 = v24 & 0x80000000;
        if (v32 == 31)
        {
          goto LABEL_27;
        }

        goto LABEL_40;
      }

      if (v25)
      {
        break;
      }

      if (v26)
      {
        v28 = 12;
        v29 = 956301312;
        do
        {
          v30 = v28 - 12;
          ++v28;
          v29 -= 0x800000;
        }

        while (((v26 << v30) & 0x400) == 0);
LABEL_39:
        LODWORD(v31) = v29 | v27 | (v26 << v28) & 0x7FFFFF;
        v32 = (v24 >> 26) & 0x1F;
        v33 = v24 & 0x80000000;
        if (v32 == 31)
        {
          goto LABEL_27;
        }

        goto LABEL_40;
      }

      v31 = 0.0;
      v32 = (v24 >> 26) & 0x1F;
      v33 = v24 & 0x80000000;
      if (v32 == 31)
      {
LABEL_27:
        v22 = v33 | (HIWORD(v24) << 13) | 0x7F800000;
        goto LABEL_28;
      }

LABEL_40:
      v34 = HIWORD(v24) & 0x3FF;
      if (v32)
      {
        v36 = (v32 << 23) + 939524096;
        v35 = 13;
      }

      else
      {
        if (!v34)
        {
          v23 = 0.0;
          goto LABEL_29;
        }

        v35 = 12;
        v36 = 956301312;
        do
        {
          v37 = v35 - 12;
          ++v35;
          v36 -= 0x800000;
        }

        while (((v34 << v37) & 0x400) == 0);
      }

      v22 = v36 | v33 | (v34 << v35) & 0x7FFFFF;
LABEL_28:
      v23 = *&v22;
LABEL_29:
      v19 = v19 + v31;
      v21 = v21 + v23;
      ++v20;
      if (++v18 == result)
      {
        a2 += 4 * (result - 1) + 4;
        goto LABEL_4;
      }
    }

    v29 = (v25 << 23) + 939524096;
    v28 = 13;
    goto LABEL_39;
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<float>::resolve<8u,(unsigned char)32,(unsigned char)32,(unsigned char)0,(unsigned char)0>(uint64_t result, unint64_t a2, unsigned int a3, float *a4, double a5)
{
  if (a3)
  {
    *&a5 = result;
    if (!result)
    {
      v9 = 0.0 / *&a5;
      while (1)
      {
        *a4 = v9;
        a4[1] = v9;
        a4 += 2;
      }
    }

    v5 = a2 + a3;
    v6 = vdup_lane_s32(*&a5, 0);
    do
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v8 = vadd_f32(v8, *(a2 + 8 * v7++));
      }

      while (result != v7);
      a2 += 8 * (result - 1) + 8;
      *a4 = vdiv_f32(v8, v6);
      a4 += 2;
    }

    while (a2 < v5);
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<long long>::resolve<3u,3u,false,63ull,56ull,55ull,48ull,47ull,40ull,0ull,0ull>(uint64_t result, char *a2, int a3, _BYTE *a4)
{
  if (a3)
  {
    v4 = &a2[a3];
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    if (result < 8)
    {
      do
      {
        v30 = *a2;
        v31 = a2[1];
        v32 = a2[2];
        if (result < 2)
        {
          a2 += 3;
        }

        else
        {
          v30 += a2[3];
          v31 += a2[4];
          v32 += a2[5];
          if (result == 2)
          {
            a2 += 6;
          }

          else
          {
            v30 += a2[6];
            v31 += a2[7];
            v32 += a2[8];
            if (result == 3)
            {
              a2 += 9;
            }

            else
            {
              v30 += a2[9];
              v31 += a2[10];
              v32 += a2[11];
              if (result == 4)
              {
                a2 += 12;
              }

              else
              {
                v30 += a2[12];
                v31 += a2[13];
                v32 += a2[14];
                if (result == 5)
                {
                  a2 += 15;
                }

                else
                {
                  v30 += a2[15];
                  v31 += a2[16];
                  v32 += a2[17];
                  if (result == 6)
                  {
                    a2 += 18;
                  }

                  else
                  {
                    v30 += a2[18];
                    v31 += a2[19];
                    v32 += a2[20];
                    a2 += 21;
                  }
                }
              }
            }
          }
        }

        *a4 = v30 / v5;
        a4[1] = v31 / v5;
        a4[2] = v32 / v5;
        a4 += 3;
      }

      while (a2 < v4);
    }

    else
    {
      do
      {
        v6 = 0uLL;
        v7 = a2;
        v8 = 0uLL;
        a2 += 3 * (v5 & 0xFFFFFFF8);
        v9 = 0uLL;
        v10 = v5 & 0xFFFFFFF8;
        v11 = 0uLL;
        v12 = 0uLL;
        v13 = 0uLL;
        v14 = 0uLL;
        v15 = 0uLL;
        v16 = 0uLL;
        v17 = 0uLL;
        v18 = 0uLL;
        v19 = 0uLL;
        do
        {
          v33 = vld3_s8(v7);
          v7 += 24;
          v20 = vmovl_s8(v33.val[0]);
          v21 = vmovl_s16(*v20.i8);
          v22 = vmovl_high_s16(v20);
          v23 = vmovl_s8(v33.val[1]);
          v24 = vmovl_s16(*v23.i8);
          v25 = vmovl_high_s16(v23);
          *v33.val[0].i8 = vmovl_s8(v33.val[2]);
          *v33.val[1].i8 = vmovl_s16(v33.val[0]);
          *v33.val[0].i8 = vmovl_high_s16(*v33.val[0].i8);
          v11 = vaddw_high_s32(v11, v22);
          v9 = vaddw_s32(v9, *v22.i8);
          v8 = vaddw_high_s32(v8, v21);
          v6 = vaddw_s32(v6, *v21.i8);
          v15 = vaddw_high_s32(v15, v25);
          v14 = vaddw_s32(v14, *v25.i8);
          v13 = vaddw_high_s32(v13, v24);
          v12 = vaddw_s32(v12, *v24.i8);
          v19 = vaddw_high_s32(v19, *v33.val[0].i8);
          v18 = vaddw_s32(v18, v33.val[0]);
          v17 = vaddw_high_s32(v17, *v33.val[1].i8);
          v16 = vaddw_s32(v16, v33.val[1]);
          v10 -= 8;
        }

        while (v10);
        v26 = vaddvq_s64(vaddq_s64(vaddq_s64(v6, v9), vaddq_s64(v8, v11)));
        v27 = vaddvq_s64(vaddq_s64(vaddq_s64(v12, v14), vaddq_s64(v13, v15)));
        v28 = vaddvq_s64(vaddq_s64(vaddq_s64(v16, v18), vaddq_s64(v17, v19)));
        v29 = v5 - (v5 & 0xFFFFFFF8);
        if ((v5 & 0xFFFFFFF8) != v5)
        {
          do
          {
            result = a2[1];
            v26 += *a2;
            v27 += result;
            v28 += a2[2];
            a2 += 3;
            --v29;
          }

          while (v29);
        }

        *a4 = v26 / v5;
        a4[1] = v27 / v5;
        a4[2] = v28 / v5;
        a4 += 3;
      }

      while (a2 < v4);
    }
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<3u,3u,false,63ull,56ull,55ull,48ull,47ull,40ull,0ull,0ull>(uint64_t result, unsigned __int8 *a2, int a3, _BYTE *a4)
{
  if (a3)
  {
    v7 = &a2[a3];
    if (result <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = result;
    }

    if (result < 8)
    {
      do
      {
        v32 = *a2;
        v33 = a2[1];
        v34 = a2[2];
        if (result < 2)
        {
          a2 += 3;
        }

        else
        {
          v32 += a2[3];
          v33 += a2[4];
          v34 += a2[5];
          if (result == 2)
          {
            a2 += 6;
          }

          else
          {
            v32 += a2[6];
            v33 += a2[7];
            v34 += a2[8];
            if (result == 3)
            {
              a2 += 9;
            }

            else
            {
              v32 += a2[9];
              v33 += a2[10];
              v34 += a2[11];
              if (result == 4)
              {
                a2 += 12;
              }

              else
              {
                v32 += a2[12];
                v33 += a2[13];
                v34 += a2[14];
                if (result == 5)
                {
                  a2 += 15;
                }

                else
                {
                  v32 += a2[15];
                  v33 += a2[16];
                  v34 += a2[17];
                  if (result == 6)
                  {
                    a2 += 18;
                  }

                  else
                  {
                    v32 += a2[18];
                    v33 += a2[19];
                    v34 += a2[20];
                    a2 += 21;
                  }
                }
              }
            }
          }
        }

        *a4 = v32 / v8;
        a4[1] = v33 / v8;
        a4[2] = v34 / v8;
        a4 += 3;
      }

      while (a2 < v7);
    }

    else
    {
      do
      {
        v9 = 0uLL;
        v10 = a2;
        v11 = 0uLL;
        a2 += 3 * (v8 & 0xFFFFFFF8);
        v12 = 0uLL;
        v13 = v8 & 0xFFFFFFF8;
        v14 = 0uLL;
        v15 = 0uLL;
        v16 = 0uLL;
        v17 = 0uLL;
        v18 = 0uLL;
        v19 = 0uLL;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        do
        {
          *v4.i8 = vld3_s8(v10);
          v10 += 24;
          v23 = vqtbl1q_s8(v4, xmmword_24C155910);
          v24 = vqtbl1q_s8(v4, xmmword_24C155900);
          v25 = vqtbl1q_s8(v5, xmmword_24C155910);
          v26 = vqtbl1q_s8(v5, xmmword_24C155900);
          v27 = vqtbl1q_s8(v6, xmmword_24C155910);
          v4 = vqtbl1q_s8(v6, xmmword_24C155900);
          v14 = vaddw_high_u32(v14, v23);
          v11 = vaddw_high_u32(v11, v24);
          v12 = vaddw_u32(v12, *v23.i8);
          v9 = vaddw_u32(v9, *v24.i8);
          v18 = vaddw_high_u32(v18, v25);
          v16 = vaddw_high_u32(v16, v26);
          v17 = vaddw_u32(v17, *v25.i8);
          v15 = vaddw_u32(v15, *v26.i8);
          v22 = vaddw_high_u32(v22, v27);
          v20 = vaddw_high_u32(v20, v4);
          v21 = vaddw_u32(v21, *v27.i8);
          v19 = vaddw_u32(v19, *v4.i8);
          v13 -= 8;
        }

        while (v13);
        v28 = vaddvq_s64(vaddq_s64(vaddq_s64(v9, v12), vaddq_s64(v11, v14)));
        v29 = vaddvq_s64(vaddq_s64(vaddq_s64(v15, v17), vaddq_s64(v16, v18)));
        v30 = vaddvq_s64(vaddq_s64(vaddq_s64(v19, v21), vaddq_s64(v20, v22)));
        v31 = v8 - (v8 & 0xFFFFFFF8);
        if ((v8 & 0xFFFFFFF8) != v8)
        {
          do
          {
            result = a2[1];
            v28 += *a2;
            v29 += result;
            v30 += a2[2];
            a2 += 3;
            --v31;
          }

          while (v31);
        }

        *a4 = v28 / v8;
        a4[1] = v29 / v8;
        a4[2] = v30 / v8;
        a4 += 3;
      }

      while (a2 < v7);
    }
  }

  return result;
}

unint64_t GPUTools::GL::MSAABufferResolver<long long>::resolve<6u,6u,true,31ull,16ull,47ull,32ull,63ull,48ull,0ull,0ull>(unint64_t result, unsigned int *a2, unsigned int a3, _WORD *a4)
{
  if (a3)
  {
    v4 = (a2 + a3);
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    if (result >= 2)
    {
      do
      {
        v8 = 0;
        v9 = 0;
        v10 = a2 + 5;
        a2 = (a2 + 6 * (v5 & 0xFFFFFFFE));
        v11 = 0uLL;
        v12 = v5 & 0xFFFFFFFE;
        v13 = 0uLL;
        do
        {
          result = *(v10 + 1);
          v13 = vsraq_n_s64(v13, vshlq_u64(vdupq_n_s64(*(v10 - 5)), xmmword_24C155940), 0x30uLL);
          v11 = vsraq_n_s64(v11, vshlq_u64(vdupq_n_s64(result), xmmword_24C155940), 0x30uLL);
          v8 += ((*(v10 - 1) << 48) | (*v10 << 56)) >> 48;
          v9 += ((v10[5] << 48) | (v10[6] << 56)) >> 48;
          v10 += 12;
          v12 -= 2;
        }

        while (v12);
        v14 = vaddq_s64(v11, v13);
        v15 = v9 + v8;
        v16 = v5 - (v5 & 0xFFFFFFFE);
        if ((v5 & 0xFFFFFFFE) != v5)
        {
          do
          {
            v14 = vsraq_n_s64(v14, vshlq_u64(vdupq_n_s64(*a2), xmmword_24C155940), 0x30uLL);
            v15 += ((*(a2 + 4) << 48) | (*(a2 + 5) << 56)) >> 48;
            a2 = (a2 + 6);
            --v16;
          }

          while (v16);
        }

        *a4 = v14.i64[0] / v5;
        a4[1] = v14.i64[1] / v5;
        a4[2] = v15 / v5;
        a4 += 3;
      }

      while (a2 < v4);
    }

    else
    {
      do
      {
        v6 = (*(a2 + 4) << 48) | (*(a2 + 5) << 56);
        v7 = *a2 >> 16;
        *a4 = *a2;
        a4[1] = v7;
        a4[2] = HIWORD(v6);
        a4 += 3;
        a2 = (a2 + 6);
      }

      while (a2 < v4);
    }
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<6u,6u,true,31ull,16ull,47ull,32ull,63ull,48ull,0ull,0ull>(uint64_t result, unsigned int *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = (a2 + a3);
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    if (result >= 2)
    {
      do
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        result = 0;
        v13 = a2 + 5;
        a2 = (a2 + 6 * (v5 & 0xFFFFFFFE));
        v14 = v5 & 0xFFFFFFFE;
        do
        {
          v15 = *(v13 - 5);
          v16 = *(v13 + 1);
          v8 += v15;
          v9 += v16;
          v10 += v15 >> 16;
          v11 += v16 >> 16;
          v12 += *(v13 - 1);
          result += *(v13 + 5);
          v13 += 12;
          v14 -= 2;
        }

        while (v14);
        v17 = v9 + v8;
        v18 = v11 + v10;
        v19 = result + v12;
        v20 = v5 - (v5 & 0xFFFFFFFE);
        if ((v5 & 0xFFFFFFFE) != v5)
        {
          do
          {
            v21 = *a2;
            result = *(a2 + 2);
            v17 += v21;
            v18 += v21 >> 16;
            v19 += result;
            a2 = (a2 + 6);
            --v20;
          }

          while (v20);
        }

        *a4 = v17 / v5;
        *(a4 + 2) = v18 / v5;
        *(a4 + 4) = v19 / v5;
        a4 += 6;
      }

      while (a2 < v4);
    }

    else
    {
      do
      {
        v6 = *a2;
        v7 = *(a2 + 2);
        *a4 = *a2;
        *(a4 + 2) = BYTE2(v6);
        *(a4 + 3) = HIBYTE(v6);
        *(a4 + 4) = v7;
        a4 += 6;
        a2 = (a2 + 6);
      }

      while (a2 < v4);
    }
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<float>::resolve<6u,(unsigned char)16,(unsigned char)16,(unsigned char)16,(unsigned char)0>(uint64_t result, unsigned __int16 *a2, unsigned int a3, _WORD *a4)
{
  if (a3)
  {
    v4 = (a2 + a3);
    v5 = result;
    while (!result)
    {
      v28 = 0.0;
      v27 = 0.0;
      v25 = 0.0;
LABEL_4:
      v6 = v28 / v5;
      v7 = v27 / v5;
      v8 = COERCE_UNSIGNED_INT(v25 / v5) & 0x7F800000;
      v9 = COERCE_UNSIGNED_INT(v25 / v5) & 0x7FFFFF;
      v10 = HIWORD(COERCE_UNSIGNED_INT(v25 / v5)) & 0x8000;
      v11 = ((v8 >> 13) + (v9 >> 13) + 0x4000) | v10;
      if (v8 >> 23 < 0x71)
      {
        v11 = HIWORD(COERCE_UNSIGNED_INT(v25 / v5)) & 0x8000;
      }

      if (v8 >= 0x47000001)
      {
        LOWORD(v11) = v10 | 0x7C00;
      }

      v12 = COERCE_UNSIGNED_INT(v25 / v5) >> 13;
      if (!v9)
      {
        LOWORD(v12) = 0;
      }

      v13 = v10 | v12;
      if (v8)
      {
        v13 = v11;
      }

      if (v8 == 2139095040)
      {
        v13 = v10 | (v9 >> 13) | 0x7C00;
      }

      *a4 = v13;
      v14 = LODWORD(v6) & 0x7F800000;
      v15 = HIWORD(LODWORD(v6)) & 0x8000;
      v16 = (((LODWORD(v6) & 0x7F800000u) >> 13) + ((LODWORD(v6) & 0x7FFFFFu) >> 13) + 0x4000) | v15;
      if ((LODWORD(v6) & 0x7F800000u) >> 23 < 0x71)
      {
        v16 = HIWORD(LODWORD(v6)) & 0x8000;
      }

      if (v14 >= 0x47000001)
      {
        LOWORD(v16) = v15 | 0x7C00;
      }

      v17 = LODWORD(v6) >> 13;
      if ((LODWORD(v6) & 0x7FFFFF) == 0)
      {
        LOWORD(v17) = 0;
      }

      v18 = v15 | v17;
      if (v14)
      {
        v18 = v16;
      }

      if (v14 == 2139095040)
      {
        v18 = v15 | ((LODWORD(v6) & 0x7FFFFFu) >> 13) | 0x7C00;
      }

      a4[1] = v18;
      v19 = LODWORD(v7) & 0x7F800000;
      v20 = HIWORD(LODWORD(v7)) & 0x8000;
      v21 = (((LODWORD(v7) & 0x7F800000u) >> 13) + ((LODWORD(v7) & 0x7FFFFFu) >> 13) + 0x4000) | v20;
      if ((LODWORD(v7) & 0x7F800000u) >> 23 < 0x71)
      {
        v21 = HIWORD(LODWORD(v7)) & 0x8000;
      }

      if (v19 >= 0x47000001)
      {
        LOWORD(v21) = v20 | 0x7C00;
      }

      v22 = LODWORD(v7) >> 13;
      if ((LODWORD(v7) & 0x7FFFFF) == 0)
      {
        LOWORD(v22) = 0;
      }

      v23 = v20 | v22;
      if (v19)
      {
        v23 = v21;
      }

      if (v19 == 2139095040)
      {
        v23 = v20 | ((LODWORD(v7) & 0x7FFFFFu) >> 13) | 0x7C00;
      }

      a4[2] = v23;
      a4 += 3;
      if (a2 >= v4)
      {
        return result;
      }
    }

    v24 = 0;
    v25 = 0.0;
    v26 = a2;
    v27 = 0.0;
    v28 = 0.0;
    while (1)
    {
      v31 = *v26;
      v32 = (v31 >> 10) & 0x1F;
      v33 = v31 & 0x80000000;
      if (v32 == 31)
      {
        break;
      }

      v34 = v31 & 0x3FF;
      if (v32)
      {
        v36 = (v32 << 23) + 939524096;
        v35 = 13;
        goto LABEL_48;
      }

      if (v34)
      {
        v35 = 12;
        v36 = 956301312;
        do
        {
          v37 = v35 - 12;
          ++v35;
          v36 -= 0x800000;
        }

        while (((v34 << v37) & 0x400) == 0);
LABEL_48:
        v38 = v36 | v33 | (v34 << v35) & 0x7FFFFF;
LABEL_49:
        v39 = *&v38;
        v40 = v26[1];
        v41 = (v40 >> 10) & 0x1F;
        v42 = v40 & 0x80000000;
        if (v41 == 31)
        {
          goto LABEL_58;
        }

        goto LABEL_50;
      }

      v39 = 0.0;
      v40 = v26[1];
      v41 = (v40 >> 10) & 0x1F;
      v42 = v40 & 0x80000000;
      if (v41 == 31)
      {
LABEL_58:
        v47 = v42 | (v40 << 13) | 0x7F800000;
LABEL_59:
        v48 = *&v47;
        v49 = v26[2];
        v50 = (v49 >> 10) & 0x1F;
        v51 = v49 & 0x80000000;
        if (v50 == 31)
        {
          goto LABEL_37;
        }

        goto LABEL_60;
      }

LABEL_50:
      v43 = v40 & 0x3FF;
      if (v41)
      {
        v45 = (v41 << 23) + 939524096;
        v44 = 13;
LABEL_56:
        v47 = v45 | v42 | (v43 << v44) & 0x7FFFFF;
        goto LABEL_59;
      }

      if (v43)
      {
        v44 = 12;
        v45 = 956301312;
        do
        {
          v46 = v44 - 12;
          ++v44;
          v45 -= 0x800000;
        }

        while (((v43 << v46) & 0x400) == 0);
        goto LABEL_56;
      }

      v48 = 0.0;
      v49 = v26[2];
      v50 = (v49 >> 10) & 0x1F;
      v51 = v49 & 0x80000000;
      if (v50 == 31)
      {
LABEL_37:
        v29 = v51 | (v49 << 13) | 0x7F800000;
        goto LABEL_38;
      }

LABEL_60:
      v52 = v49 & 0x3FF;
      if (v50)
      {
        v54 = (v50 << 23) + 939524096;
        v53 = 13;
      }

      else
      {
        if (!v52)
        {
          v30 = 0.0;
          goto LABEL_39;
        }

        v53 = 12;
        v54 = 956301312;
        do
        {
          v55 = v53 - 12;
          ++v53;
          v54 -= 0x800000;
        }

        while (((v52 << v55) & 0x400) == 0);
      }

      v29 = v54 | v51 | (v52 << v53) & 0x7FFFFF;
LABEL_38:
      v30 = *&v29;
LABEL_39:
      v25 = v25 + v39;
      v28 = v28 + v48;
      v27 = v27 + v30;
      v26 += 3;
      if (++v24 == result)
      {
        a2 += 3 * (result - 1) + 3;
        goto LABEL_4;
      }
    }

    v38 = v33 | (*v26 << 13) | 0x7F800000;
    goto LABEL_49;
  }

  return result;
}