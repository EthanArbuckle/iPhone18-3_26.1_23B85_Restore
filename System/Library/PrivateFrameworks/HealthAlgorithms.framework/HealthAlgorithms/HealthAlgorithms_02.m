void *std::vector<unsigned short>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2512AC4D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void mimosa::v2::PatchDecoder::extract_patch<mimosa::v2::PacketState::PatchV3>(_BYTE *a1, uint64_t a2, const byte *a3, const byte *this, byte *a5)
{
  v6 = this;
  if ((a3 & 0x20) != 0)
  {
    a1[1] ^= 1u;
    if ((a3 & 0x10) != 0)
    {
LABEL_3:
      if ((a3 & 0x8000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a3 & 0x10) != 0)
  {
    goto LABEL_3;
  }

  v11 = mimosa::v2::parse_varint(this, a5, a3);
  v6 += v12;
  *a2 = mimosa::v2::varint::sign_transform(v11);
  if ((a3 & 0x8000000) == 0)
  {
LABEL_4:
    if ((a3 & 0x20000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v13 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v14;
  *(a2 + 8) = mimosa::v2::varint::sign_transform(v13);
  if ((a3 & 0x20000000) == 0)
  {
LABEL_5:
    if (a3)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v15 = *v6++;
  *(a2 + 16) = v15 | 0x100;
  if (a3)
  {
LABEL_6:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v16 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v17;
  *(a2 + 24) = mimosa::v2::varint::sign_transform(v16);
  if ((a3 & 0x8000) == 0)
  {
LABEL_7:
    if ((a3 & 0x100000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v20 = *v6++;
    *(a2 + 40) = v20 | 0x100;
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v18 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v19;
  *(a2 + 32) = mimosa::v2::varint::sign_transform(v18);
  if ((a3 & 0x100000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((a3 & 0x80000000) == 0)
  {
LABEL_9:
    v10 = *(a2 + 104);
    goto LABEL_18;
  }

LABEL_17:
  v21 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v22;
  v10 = mimosa::v2::varint::sign_transform(v21);
  *(a2 + 104) = v10;
LABEL_18:
  *(a2 + 104) = v10 + *(a2 + 24);
  if ((a3 & 0x80000) == 0)
  {
    if ((a3 & 0x200000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v26 = *v6++;
    *(a2 + 120) = v26 | 0x100;
    if ((a3 & 0x100000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v24 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v25;
  *(a2 + 112) = mimosa::v2::varint::sign_transform(v24);
  if ((a3 & 0x200000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if ((a3 & 0x100000000) == 0)
  {
LABEL_21:
    v23 = *(a2 + 192);
    goto LABEL_25;
  }

LABEL_24:
  v27 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v28;
  v23 = mimosa::v2::varint::sign_transform(v27);
  *(a2 + 192) = v23;
LABEL_25:
  *(a2 + 192) = v23 + *(a2 + 24);
  if ((a3 & 0x40000) == 0)
  {
    if ((a3 & 0x400000000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    v32 = *v6++;
    *(a2 + 208) = v32 | 0x100;
    if ((a3 & 0x200000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v30 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v31;
  *(a2 + 200) = mimosa::v2::varint::sign_transform(v30);
  if ((a3 & 0x400000000000) != 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if ((a3 & 0x200000000) == 0)
  {
LABEL_28:
    v29 = *(a2 + 272);
    goto LABEL_32;
  }

LABEL_31:
  v33 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v34;
  v29 = mimosa::v2::varint::sign_transform(v33);
  *(a2 + 272) = v29;
LABEL_32:
  *(a2 + 272) = v29 + *(a2 + 24);
  if ((a3 & 0x100000) == 0)
  {
    if ((a3 & 0x800000000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    v38 = *v6++;
    *(a2 + 288) = v38 | 0x100;
    if ((a3 & 8) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  v36 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v37;
  *(a2 + 280) = mimosa::v2::varint::sign_transform(v36);
  if ((a3 & 0x800000000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  if ((a3 & 8) == 0)
  {
LABEL_35:
    v35 = a1[2];
    goto LABEL_39;
  }

LABEL_38:
  v39 = *v6++;
  v35 = v39;
  a1[2] = v39;
LABEL_39:
  std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize((a2 + 80), v35);
  if ((a3 & 0x2000) != 0)
  {
    v41 = *v6++;
    v40 = v41;
    a1[3] = v41;
  }

  else
  {
    v40 = a1[3];
  }

  std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize((a2 + 128), v40);
  if ((a3 & 0x80) != 0)
  {
    std::optional<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>>::emplace[abi:ne200100]<unsigned char &,void>(a2 + 48, a1 + 2);
    v43 = *(a2 + 48);
    v44 = *(a2 + 56);
    if (v43 != v44)
    {
      while (1)
      {
        v45 = *v6;
        if (*v6)
        {
          break;
        }

        v6 += 2;
        if ((v45 & 2) != 0)
        {
          goto LABEL_48;
        }

LABEL_49:
        if ((v45 & 4) != 0)
        {
          v49 = *v6;
          v6 += 2;
          *(v43 + 8) = v49;
          *(v43 + 10) = 1;
          if ((v45 & 8) == 0)
          {
LABEL_51:
            if ((v45 & 0x10) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_64;
          }
        }

        else if ((v45 & 8) == 0)
        {
          goto LABEL_51;
        }

        v50 = *v6;
        v6 += 2;
        *(v43 + 12) = v50;
        *(v43 + 14) = 1;
        if ((v45 & 0x10) == 0)
        {
LABEL_52:
          if ((v45 & 0x20) == 0)
          {
            goto LABEL_53;
          }

          goto LABEL_65;
        }

LABEL_64:
        v51 = *v6;
        v6 += 2;
        *(v43 + 16) = v51;
        *(v43 + 18) = 1;
        if ((v45 & 0x20) == 0)
        {
LABEL_53:
          if ((v45 & 0x40) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_66;
        }

LABEL_65:
        v52 = *v6;
        v6 += 2;
        *(v43 + 20) = v52;
        *(v43 + 22) = 1;
        if ((v45 & 0x40) == 0)
        {
LABEL_54:
          if ((v45 & 0x80) == 0)
          {
            goto LABEL_55;
          }

          goto LABEL_67;
        }

LABEL_66:
        v53 = *v6++;
        *(v43 + 24) = v53 | 0x100;
        if ((v45 & 0x80) == 0)
        {
LABEL_55:
          if ((v45 & 0x100) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_68;
        }

LABEL_67:
        v54 = *v6++;
        *(v43 + 26) = v54 | 0x100;
        if ((v45 & 0x100) == 0)
        {
LABEL_56:
          if ((v45 & 0x200) == 0)
          {
            goto LABEL_57;
          }

          goto LABEL_69;
        }

LABEL_68:
        v55 = *v6++;
        *(v43 + 28) = v55 | 0x100;
        if ((v45 & 0x200) == 0)
        {
LABEL_57:
          if ((v45 & 0x400) != 0)
          {
            goto LABEL_70;
          }

          goto LABEL_58;
        }

LABEL_69:
        v56 = *v6++;
        *(v43 + 30) = v56 | 0x100;
        if ((v45 & 0x400) != 0)
        {
LABEL_70:
          v57 = *v6++;
          *(v43 + 32) = v57 | 0x100;
          if ((v45 & 0x800) == 0)
          {
            goto LABEL_60;
          }

LABEL_59:
          v48 = *v6++;
          *(v43 + 34) = v48 | 0x100;
          goto LABEL_60;
        }

LABEL_58:
        if ((v45 & 0x800) != 0)
        {
          goto LABEL_59;
        }

LABEL_60:
        v43 += 36;
        if (v43 == v44)
        {
          goto LABEL_72;
        }
      }

      v46 = *(v6 + 1);
      v6 += 4;
      *(v43 + 4) = v46;
      *(v43 + 6) = 1;
      if ((v45 & 2) == 0)
      {
        goto LABEL_49;
      }

LABEL_48:
      v47 = *v6;
      v6 += 2;
      *v43 = v47;
      *(v43 + 2) = 1;
      goto LABEL_49;
    }

LABEL_72:
    if ((a3 & 0x100) == 0)
    {
      if (a1[2])
      {
        v58 = *(a2 + 48);
        v59 = *(v58 + 4);
        if ((v59 & 0x10000) != 0)
        {
          for (i = *(a2 + 56); v58 != i; v58 += 36)
          {
            *(v58 + 4) = v59;
            *(v58 + 6) = 1;
          }
        }
      }
    }
  }

  v61 = *(a2 + 80);
  v62 = *(a2 + 88);
  if (v61 != v62)
  {
    v63 = v61 + 2;
    do
    {
      v64 = mimosa::v2::parse_varint(v6, a5, v42);
      v66 = v65;
      *(v63 - 2) = mimosa::v2::varint::sign_transform(v64);
      v67 = v63 - 2;
      v68 = &v6[v66];
      v70 = mimosa::v2::parse_varint(v68, a5, v69);
      v6 = &v68[v71];
      *(v63 - 1) = mimosa::v2::varint::sign_transform(v70);
      if ((a1[1] & 1) == 0)
      {
        v72 = mimosa::v2::parse_varint(v6, a5, v42);
        v6 += v73;
        *v63 = mimosa::v2::varint::sign_transform(v72);
      }

      v63 += 3;
    }

    while (v67 + 3 != v62);
  }

  if ((a3 & 0x800) != 0)
  {
    if ((a3 & 0x2000000) != 0)
    {
      std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::vector[abi:ne200100](&v106, *v6);
      if (*(a2 + 184) == 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 152);
      }

      v97 = v106;
      *(a2 + 152) = v106;
      *(a2 + 168) = v107;
      *(a2 + 176) = 0;
      *(a2 + 184) = 1;
      v98 = v97;
      ++v6;
      while (v98 != *(&v97 + 1))
      {
        *v98 = *v6;
        *(v98 + 2) = *(v6 + 1);
        *(v98 + 4) = v6[4];
        *(v98 + 5) = v6[5] != 0;
        v98 += 6;
        v6 += 6;
      }
    }

    else
    {
      v87 = *v6++;
      v86 = v87;
      if (*(a2 + 184) == 1)
      {
        if (*(a2 + 176) != 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 152);
          *(a2 + 176) = 1;
        }

        *(a2 + 152) = v86;
      }

      else
      {
        *(a2 + 152) = v86;
        *(a2 + 176) = 1;
        *(a2 + 184) = 1;
      }
    }
  }

  v74 = *(a2 + 128);
  v75 = *(a2 + 136);
  while (v74 != v75)
  {
    v76 = mimosa::v2::parse_varint(v6, a5, v42);
    v78 = &v6[v77];
    *v74 = mimosa::v2::varint::sign_transform(v76);
    v80 = mimosa::v2::parse_varint(v78, a5, v79);
    v82 = &v78[v81];
    v74[1] = mimosa::v2::varint::sign_transform(v80);
    v84 = mimosa::v2::parse_varint(v82, a5, v83);
    v6 = &v82[v85];
    v74[2] = mimosa::v2::varint::sign_transform(v84);
    v74 += 3;
  }

  if ((a3 & 4) != 0)
  {
    v88 = mimosa::v2::parse_varint(v6, a5, v42);
    v6 += v89;
    *(a2 + 216) = v88;
    *(a2 + 224) = 1;
    if ((a3 & 0x2000000000) == 0)
    {
LABEL_88:
      if ((a3 & 0x4000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_101;
    }
  }

  else if ((a3 & 0x2000000000) == 0)
  {
    goto LABEL_88;
  }

  v90 = *v6;
  v6 += 8;
  *(a2 + 232) = v90;
  *(a2 + 240) = 1;
  if ((a3 & 0x4000) == 0)
  {
LABEL_89:
    if ((a3 & 0x200000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_102;
  }

LABEL_101:
  v91 = *v6;
  v6 += 4;
  *(a2 + 248) = v91;
  *(a2 + 252) = 1;
  if ((a3 & 0x200000) == 0)
  {
LABEL_90:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_103;
  }

LABEL_102:
  v92 = *v6;
  v6 += 4;
  *(a2 + 256) = v92;
  *(a2 + 260) = 1;
  if ((a3 & 0x1000) == 0)
  {
LABEL_91:
    if ((a3 & 0x40000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_104;
  }

LABEL_103:
  v93 = *v6;
  v6 += 2;
  *(a2 + 264) = v93;
  *(a2 + 266) = 1;
  if ((a3 & 0x40000000) == 0)
  {
LABEL_92:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_105;
  }

LABEL_104:
  v94 = *v6++;
  *(a2 + 268) = v94 | 0x100;
  if ((a3 & 0x200) == 0)
  {
    goto LABEL_122;
  }

LABEL_105:
  if ((a3 & 0x800000) != 0)
  {
    std::vector<unsigned short>::vector[abi:ne200100](&v106, a1[2]);
    if (*(a2 + 328) == 1)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 296);
    }

    v99 = v106;
    *(a2 + 296) = v106;
    *(a2 + 312) = v107;
    *(a2 + 320) = 0;
    *(a2 + 328) = 1;
    for (j = v99; j != *(&v99 + 1); ++j)
    {
      v101 = *v6;
      v6 += 2;
      *j = v101;
    }
  }

  else
  {
    v96 = *v6++;
    v95 = v96;
    if (*(a2 + 328) == 1)
    {
      if (*(a2 + 320) != 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 296);
        *(a2 + 320) = 1;
      }

      *(a2 + 296) = v95;
    }

    else
    {
      *(a2 + 296) = v95;
      *(a2 + 320) = 1;
      *(a2 + 328) = 1;
    }
  }

LABEL_122:
  if ((a3 & 0x4000000) != 0)
  {
    v103 = *v6++;
    *(a2 + 352) = v103 | 0x100;
    if ((a3 & 0x20000) == 0)
    {
LABEL_124:
      if ((a3 & 0x400) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_125;
    }
  }

  else if ((a3 & 0x20000) == 0)
  {
    goto LABEL_124;
  }

  v104 = *v6++;
  *(a2 + 354) = v104 | 0x100;
  if ((a3 & 0x400) != 0)
  {
LABEL_125:
    v102 = *v6;
    v6 += 8;
    *(a2 + 336) = v102;
    *(a2 + 344) = 1;
  }

LABEL_126:
  if (&v6[(a3 >> 38) & 1] != a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "something went wrong during patch decoding");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

unint64_t mimosa::v2::PatchDecoder::extract_patch<mimosa::v2::PacketState::PatchV4>(_BYTE *a1, uint64_t a2, const byte *a3, const byte *this, byte *a5)
{
  v6 = this;
  if ((a3 & 0x20) != 0)
  {
    a1[1] ^= 1u;
    if ((a3 & 0x10) != 0)
    {
LABEL_3:
      if ((a3 & 0x8000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a3 & 0x10) != 0)
  {
    goto LABEL_3;
  }

  v11 = mimosa::v2::parse_varint(this, a5, a3);
  v6 += v12;
  *a2 = mimosa::v2::varint::sign_transform(v11);
  if ((a3 & 0x8000000) == 0)
  {
LABEL_4:
    if ((a3 & 0x20000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v13 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v14;
  *(a2 + 8) = mimosa::v2::varint::sign_transform(v13);
  if ((a3 & 0x20000000) == 0)
  {
LABEL_5:
    if (a3)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v15 = *v6++;
  *(a2 + 16) = v15 | 0x100;
  if (a3)
  {
LABEL_6:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v16 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v17;
  *(a2 + 24) = mimosa::v2::varint::sign_transform(v16);
  if ((a3 & 0x8000) == 0)
  {
LABEL_7:
    if ((a3 & 0x100000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v20 = *v6++;
    *(a2 + 40) = v20 | 0x100;
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v18 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v19;
  *(a2 + 32) = mimosa::v2::varint::sign_transform(v18);
  if ((a3 & 0x100000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((a3 & 0x80000000) == 0)
  {
LABEL_9:
    v10 = *(a2 + 104);
    goto LABEL_18;
  }

LABEL_17:
  v21 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v22;
  v10 = mimosa::v2::varint::sign_transform(v21);
  *(a2 + 104) = v10;
LABEL_18:
  *(a2 + 104) = v10 + *(a2 + 24);
  if ((a3 & 0x80000) == 0)
  {
    if ((a3 & 0x200000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v26 = *v6++;
    *(a2 + 120) = v26 | 0x100;
    if ((a3 & 0x100000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v24 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v25;
  *(a2 + 112) = mimosa::v2::varint::sign_transform(v24);
  if ((a3 & 0x200000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if ((a3 & 0x100000000) == 0)
  {
LABEL_21:
    v23 = *(a2 + 192);
    goto LABEL_25;
  }

LABEL_24:
  v27 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v28;
  v23 = mimosa::v2::varint::sign_transform(v27);
  *(a2 + 192) = v23;
LABEL_25:
  *(a2 + 192) = v23 + *(a2 + 24);
  if ((a3 & 0x40000) == 0)
  {
    if ((a3 & 0x400000000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    v32 = *v6++;
    *(a2 + 208) = v32 | 0x100;
    if ((a3 & 0x200000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v30 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v31;
  *(a2 + 200) = mimosa::v2::varint::sign_transform(v30);
  if ((a3 & 0x400000000000) != 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if ((a3 & 0x200000000) == 0)
  {
LABEL_28:
    v29 = *(a2 + 272);
    goto LABEL_32;
  }

LABEL_31:
  v33 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v34;
  v29 = mimosa::v2::varint::sign_transform(v33);
  *(a2 + 272) = v29;
LABEL_32:
  *(a2 + 272) = v29 + *(a2 + 24);
  if ((a3 & 0x100000) == 0)
  {
    if ((a3 & 0x800000000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    v38 = *v6++;
    *(a2 + 288) = v38 | 0x100;
    if ((a3 & 0x400000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  v36 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v37;
  *(a2 + 280) = mimosa::v2::varint::sign_transform(v36);
  if ((a3 & 0x800000000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  if ((a3 & 0x400000000) == 0)
  {
LABEL_35:
    v35 = *(a2 + 360);
    goto LABEL_39;
  }

LABEL_38:
  v39 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v40;
  v35 = mimosa::v2::varint::sign_transform(v39);
  *(a2 + 360) = v35;
LABEL_39:
  *(a2 + 360) = v35 + *(a2 + 24);
  if ((a3 & 0x800000000) == 0)
  {
    if ((a3 & 0x1000000000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_44:
    v44 = *v6++;
    *(a2 + 376) = v44 | 0x100;
    if ((a3 & 0x1000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  v42 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v43;
  *(a2 + 368) = mimosa::v2::varint::sign_transform(v42);
  if ((a3 & 0x1000000000000) != 0)
  {
    goto LABEL_44;
  }

LABEL_41:
  if ((a3 & 0x1000000000) == 0)
  {
LABEL_42:
    v41 = *(a2 + 392);
    goto LABEL_46;
  }

LABEL_45:
  v45 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v46;
  v41 = mimosa::v2::varint::sign_transform(v45);
  *(a2 + 392) = v41;
LABEL_46:
  *(a2 + 392) = v41 + *(a2 + 24);
  if ((a3 & 0x400000) == 0)
  {
    if ((a3 & 0x2000000000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    v50 = *v6++;
    *(a2 + 408) = v50 | 0x100;
    if ((a3 & 8) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_52;
  }

  v48 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v49;
  *(a2 + 400) = mimosa::v2::varint::sign_transform(v48);
  if ((a3 & 0x2000000000000) != 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  if ((a3 & 8) == 0)
  {
LABEL_49:
    v47 = a1[2];
    goto LABEL_53;
  }

LABEL_52:
  v51 = *v6++;
  v47 = v51;
  a1[2] = v51;
LABEL_53:
  std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize((a2 + 80), v47);
  if ((a3 & 0x2000) != 0)
  {
    v53 = *v6++;
    v52 = v53;
    a1[3] = v53;
  }

  else
  {
    v52 = a1[3];
  }

  std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize((a2 + 128), v52);
  if ((a3 & 0x80) != 0)
  {
    std::optional<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>>::emplace[abi:ne200100]<unsigned char &,void>(a2 + 48, a1 + 2);
    v55 = *(a2 + 48);
    v56 = *(a2 + 56);
    if (v55 != v56)
    {
      while (1)
      {
        v57 = *v6;
        if (*v6)
        {
          break;
        }

        v6 += 2;
        if ((v57 & 2) != 0)
        {
          goto LABEL_62;
        }

LABEL_63:
        if ((v57 & 4) != 0)
        {
          v61 = *v6;
          v6 += 2;
          *(v55 + 8) = v61;
          *(v55 + 10) = 1;
          if ((v57 & 8) == 0)
          {
LABEL_65:
            if ((v57 & 0x10) == 0)
            {
              goto LABEL_66;
            }

            goto LABEL_78;
          }
        }

        else if ((v57 & 8) == 0)
        {
          goto LABEL_65;
        }

        v62 = *v6;
        v6 += 2;
        *(v55 + 12) = v62;
        *(v55 + 14) = 1;
        if ((v57 & 0x10) == 0)
        {
LABEL_66:
          if ((v57 & 0x20) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_79;
        }

LABEL_78:
        v63 = *v6;
        v6 += 2;
        *(v55 + 16) = v63;
        *(v55 + 18) = 1;
        if ((v57 & 0x20) == 0)
        {
LABEL_67:
          if ((v57 & 0x40) == 0)
          {
            goto LABEL_68;
          }

          goto LABEL_80;
        }

LABEL_79:
        v64 = *v6;
        v6 += 2;
        *(v55 + 20) = v64;
        *(v55 + 22) = 1;
        if ((v57 & 0x40) == 0)
        {
LABEL_68:
          if ((v57 & 0x80) == 0)
          {
            goto LABEL_69;
          }

          goto LABEL_81;
        }

LABEL_80:
        v65 = *v6++;
        *(v55 + 24) = v65 | 0x100;
        if ((v57 & 0x80) == 0)
        {
LABEL_69:
          if ((v57 & 0x100) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_82;
        }

LABEL_81:
        v66 = *v6++;
        *(v55 + 26) = v66 | 0x100;
        if ((v57 & 0x100) == 0)
        {
LABEL_70:
          if ((v57 & 0x200) == 0)
          {
            goto LABEL_71;
          }

          goto LABEL_83;
        }

LABEL_82:
        v67 = *v6++;
        *(v55 + 28) = v67 | 0x100;
        if ((v57 & 0x200) == 0)
        {
LABEL_71:
          if ((v57 & 0x400) != 0)
          {
            goto LABEL_84;
          }

          goto LABEL_72;
        }

LABEL_83:
        v68 = *v6++;
        *(v55 + 30) = v68 | 0x100;
        if ((v57 & 0x400) != 0)
        {
LABEL_84:
          v69 = *v6++;
          *(v55 + 32) = v69 | 0x100;
          if ((v57 & 0x800) == 0)
          {
            goto LABEL_74;
          }

LABEL_73:
          v60 = *v6++;
          *(v55 + 34) = v60 | 0x100;
          goto LABEL_74;
        }

LABEL_72:
        if ((v57 & 0x800) != 0)
        {
          goto LABEL_73;
        }

LABEL_74:
        v55 += 36;
        if (v55 == v56)
        {
          goto LABEL_86;
        }
      }

      v58 = *(v6 + 1);
      v6 += 4;
      *(v55 + 4) = v58;
      *(v55 + 6) = 1;
      if ((v57 & 2) == 0)
      {
        goto LABEL_63;
      }

LABEL_62:
      v59 = *v6;
      v6 += 2;
      *v55 = v59;
      *(v55 + 2) = 1;
      goto LABEL_63;
    }

LABEL_86:
    if ((a3 & 0x100) == 0)
    {
      if (a1[2])
      {
        v70 = *(a2 + 48);
        v71 = *(v70 + 4);
        if ((v71 & 0x10000) != 0)
        {
          for (i = *(a2 + 56); v70 != i; v70 += 36)
          {
            *(v70 + 4) = v71;
            *(v70 + 6) = 1;
          }
        }
      }
    }
  }

  v73 = *(a2 + 80);
  v74 = *(a2 + 88);
  if (v73 != v74)
  {
    v75 = v73 + 2;
    do
    {
      v76 = mimosa::v2::parse_varint(v6, a5, v54);
      v78 = v77;
      *(v75 - 2) = mimosa::v2::varint::sign_transform(v76);
      v79 = v75 - 2;
      v80 = &v6[v78];
      v82 = mimosa::v2::parse_varint(v80, a5, v81);
      v6 = &v80[v83];
      *(v75 - 1) = mimosa::v2::varint::sign_transform(v82);
      if ((a1[1] & 1) == 0)
      {
        v84 = mimosa::v2::parse_varint(v6, a5, v54);
        v6 += v85;
        *v75 = mimosa::v2::varint::sign_transform(v84);
      }

      v75 += 3;
    }

    while (v79 + 3 != v74);
  }

  if ((a3 & 0x800) != 0)
  {
    if ((a3 & 0x2000000) != 0)
    {
      std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::vector[abi:ne200100](&v137, *v6);
      if (*(a2 + 184) == 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 152);
      }

      v109 = v137;
      *(a2 + 152) = v137;
      *(a2 + 168) = v138;
      *(a2 + 176) = 0;
      *(a2 + 184) = 1;
      v110 = v109;
      ++v6;
      while (v110 != *(&v109 + 1))
      {
        *v110 = *v6;
        *(v110 + 2) = *(v6 + 1);
        *(v110 + 4) = v6[4];
        *(v110 + 5) = v6[5] != 0;
        v110 += 6;
        v6 += 6;
      }
    }

    else
    {
      v99 = *v6++;
      v98 = v99;
      if (*(a2 + 184) == 1)
      {
        if (*(a2 + 176) != 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 152);
          *(a2 + 176) = 1;
        }

        *(a2 + 152) = v98;
      }

      else
      {
        *(a2 + 152) = v98;
        *(a2 + 176) = 1;
        *(a2 + 184) = 1;
      }
    }
  }

  v86 = *(a2 + 128);
  v87 = *(a2 + 136);
  while (v86 != v87)
  {
    v88 = mimosa::v2::parse_varint(v6, a5, v54);
    v90 = &v6[v89];
    *v86 = mimosa::v2::varint::sign_transform(v88);
    v92 = mimosa::v2::parse_varint(v90, a5, v91);
    v94 = &v90[v93];
    v86[1] = mimosa::v2::varint::sign_transform(v92);
    v96 = mimosa::v2::parse_varint(v94, a5, v95);
    v6 = &v94[v97];
    v86[2] = mimosa::v2::varint::sign_transform(v96);
    v86 += 3;
  }

  if ((a3 & 4) != 0)
  {
    v100 = mimosa::v2::parse_varint(v6, a5, v54);
    v6 += v101;
    *(a2 + 216) = v100;
    *(a2 + 224) = 1;
    if ((a3 & 0x2000000000) == 0)
    {
LABEL_102:
      if ((a3 & 0x4000) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_115;
    }
  }

  else if ((a3 & 0x2000000000) == 0)
  {
    goto LABEL_102;
  }

  v102 = *v6;
  v6 += 8;
  *(a2 + 232) = v102;
  *(a2 + 240) = 1;
  if ((a3 & 0x4000) == 0)
  {
LABEL_103:
    if ((a3 & 0x200000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_116;
  }

LABEL_115:
  v103 = *v6;
  v6 += 4;
  *(a2 + 248) = v103;
  *(a2 + 252) = 1;
  if ((a3 & 0x200000) == 0)
  {
LABEL_104:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_117;
  }

LABEL_116:
  v104 = *v6;
  v6 += 4;
  *(a2 + 256) = v104;
  *(a2 + 260) = 1;
  if ((a3 & 0x1000) == 0)
  {
LABEL_105:
    if ((a3 & 0x40000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_118;
  }

LABEL_117:
  v105 = *v6;
  v6 += 2;
  *(a2 + 264) = v105;
  *(a2 + 266) = 1;
  if ((a3 & 0x40000000) == 0)
  {
LABEL_106:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_119;
  }

LABEL_118:
  v106 = *v6++;
  *(a2 + 268) = v106 | 0x100;
  if ((a3 & 0x200) == 0)
  {
    goto LABEL_136;
  }

LABEL_119:
  if ((a3 & 0x800000) != 0)
  {
    std::vector<unsigned short>::vector[abi:ne200100](&v137, a1[2]);
    if (*(a2 + 328) == 1)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 296);
    }

    v111 = v137;
    *(a2 + 296) = v137;
    *(a2 + 312) = v138;
    *(a2 + 320) = 0;
    *(a2 + 328) = 1;
    for (j = v111; j != *(&v111 + 1); ++j)
    {
      v113 = *v6;
      v6 += 2;
      *j = v113;
    }
  }

  else
  {
    v108 = *v6++;
    v107 = v108;
    if (*(a2 + 328) == 1)
    {
      if (*(a2 + 320) != 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 296);
        *(a2 + 320) = 1;
      }

      *(a2 + 296) = v107;
    }

    else
    {
      *(a2 + 296) = v107;
      *(a2 + 320) = 1;
      *(a2 + 328) = 1;
    }
  }

LABEL_136:
  if ((a3 & 0x4000000) != 0)
  {
    v116 = *v6++;
    *(a2 + 352) = v116 | 0x100;
    if ((a3 & 0x20000) == 0)
    {
LABEL_138:
      if ((a3 & 0x400) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_139;
    }
  }

  else if ((a3 & 0x20000) == 0)
  {
    goto LABEL_138;
  }

  v117 = *v6++;
  *(a2 + 354) = v117 | 0x100;
  if ((a3 & 0x400) != 0)
  {
LABEL_139:
    v114 = *v6;
    v6 += 8;
    *(a2 + 336) = v114;
    *(a2 + 344) = 1;
  }

LABEL_140:
  v115 = &v6[(a3 >> 38) & 1];
  if ((a3 & 0x40000000000) == 0)
  {
    if ((a3 & 2) == 0)
    {
      goto LABEL_142;
    }

LABEL_148:
    v119 = mimosa::v2::parse_varint(v115, a5, v54);
    v115 += v120;
    *(a2 + 388) = mimosa::v2::varint::sign_transform(v119);
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_149;
  }

  v118 = *v115;
  v115 += 2;
  *(a2 + 384) = v118;
  *(a2 + 386) = 1;
  if ((a3 & 2) != 0)
  {
    goto LABEL_148;
  }

LABEL_142:
  if ((a3 & 0x10000) == 0)
  {
    goto LABEL_157;
  }

LABEL_149:
  if ((a3 & 0x1000000) != 0)
  {
    v123 = (a2 + 464);
    *(a2 + 464) = 0;
    *(a2 + 472) = 0;
    *(a2 + 480) = 1;
    v124 = 12;
    do
    {
      v125 = *v115;
      v115 += 2;
      *v123++ = v125;
      v124 -= 2;
    }

    while (v124);
LABEL_157:
    if ((a3 & 0x40) != 0)
    {
      goto LABEL_158;
    }

    goto LABEL_159;
  }

  v122 = *v115++;
  v121 = v122;
  if (*(a2 + 480) != 1)
  {
    *(a2 + 464) = v121;
    *(a2 + 476) = 1;
    *(a2 + 480) = 1;
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_158;
  }

  if (*(a2 + 476) != 1)
  {
    *(a2 + 476) = 1;
  }

  *(a2 + 464) = v121;
  if ((a3 & 0x40) != 0)
  {
LABEL_158:
    v126 = *v115;
    v115 += 2;
    *(a2 + 484) = v126;
    *(a2 + 486) = 1;
  }

LABEL_159:
  result = mimosa::v2::parse_varint(v115, a5, v54);
  v129 = result;
  v130 = 0;
  v132 = &v115[v131];
  v133 = a2 + 416;
  do
  {
    if (v129)
    {
      v134 = mimosa::v2::parse_varint(v132, a5, v128);
      v132 += v135;
      result = mimosa::v2::varint::sign_transform(v134);
      *(v133 + v130) = result;
    }

    v129 >>= 1;
    v130 += 8;
  }

  while (v130 != 48);
  if (v132 != a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "something went wrong during patch decoding");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void mimosa::v2::PatchDecoder::extract_patch<mimosa::v2::PacketState::PatchV5>(_BYTE *a1, uint64_t a2, const byte *a3, const byte *this, byte *a5)
{
  v6 = this;
  if ((a3 & 0x20) != 0)
  {
    a1[1] ^= 1u;
    if ((a3 & 0x10) != 0)
    {
LABEL_3:
      if ((a3 & 0x8000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a3 & 0x10) != 0)
  {
    goto LABEL_3;
  }

  v11 = mimosa::v2::parse_varint(this, a5, a3);
  v6 += v12;
  *a2 = mimosa::v2::varint::sign_transform(v11);
  if ((a3 & 0x8000000) == 0)
  {
LABEL_4:
    if ((a3 & 0x20000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v13 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v14;
  *(a2 + 8) = mimosa::v2::varint::sign_transform(v13);
  if ((a3 & 0x20000000) == 0)
  {
LABEL_5:
    if (a3)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v15 = *v6++;
  *(a2 + 16) = v15 | 0x100;
  if (a3)
  {
LABEL_6:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v16 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v17;
  *(a2 + 24) = mimosa::v2::varint::sign_transform(v16);
  if ((a3 & 0x8000) == 0)
  {
LABEL_7:
    if ((a3 & 0x100000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v20 = *v6++;
    *(a2 + 40) = v20 | 0x100;
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v18 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v19;
  *(a2 + 32) = mimosa::v2::varint::sign_transform(v18);
  if ((a3 & 0x100000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((a3 & 0x80000000) == 0)
  {
LABEL_9:
    v10 = *(a2 + 104);
    goto LABEL_18;
  }

LABEL_17:
  v21 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v22;
  v10 = mimosa::v2::varint::sign_transform(v21);
  *(a2 + 104) = v10;
LABEL_18:
  *(a2 + 104) = v10 + *(a2 + 24);
  if ((a3 & 0x80000) == 0)
  {
    if ((a3 & 0x200000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v26 = *v6++;
    *(a2 + 120) = v26 | 0x100;
    if ((a3 & 0x100000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v24 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v25;
  *(a2 + 112) = mimosa::v2::varint::sign_transform(v24);
  if ((a3 & 0x200000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if ((a3 & 0x100000000) == 0)
  {
LABEL_21:
    v23 = *(a2 + 192);
    goto LABEL_25;
  }

LABEL_24:
  v27 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v28;
  v23 = mimosa::v2::varint::sign_transform(v27);
  *(a2 + 192) = v23;
LABEL_25:
  *(a2 + 192) = v23 + *(a2 + 24);
  if ((a3 & 0x40000) == 0)
  {
    if ((a3 & 0x400000000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    v32 = *v6++;
    *(a2 + 208) = v32 | 0x100;
    if ((a3 & 0x200000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v30 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v31;
  *(a2 + 200) = mimosa::v2::varint::sign_transform(v30);
  if ((a3 & 0x400000000000) != 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if ((a3 & 0x200000000) == 0)
  {
LABEL_28:
    v29 = *(a2 + 272);
    goto LABEL_32;
  }

LABEL_31:
  v33 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v34;
  v29 = mimosa::v2::varint::sign_transform(v33);
  *(a2 + 272) = v29;
LABEL_32:
  *(a2 + 272) = v29 + *(a2 + 24);
  if ((a3 & 0x100000) == 0)
  {
    if ((a3 & 0x800000000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    v38 = *v6++;
    *(a2 + 288) = v38 | 0x100;
    if ((a3 & 0x400000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  v36 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v37;
  *(a2 + 280) = mimosa::v2::varint::sign_transform(v36);
  if ((a3 & 0x800000000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  if ((a3 & 0x400000000) == 0)
  {
LABEL_35:
    v35 = *(a2 + 360);
    goto LABEL_39;
  }

LABEL_38:
  v39 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v40;
  v35 = mimosa::v2::varint::sign_transform(v39);
  *(a2 + 360) = v35;
LABEL_39:
  *(a2 + 360) = v35 + *(a2 + 24);
  if ((a3 & 0x800000000) == 0)
  {
    if ((a3 & 0x1000000000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_44:
    v44 = *v6++;
    *(a2 + 376) = v44 | 0x100;
    if ((a3 & 0x1000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  v42 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v43;
  *(a2 + 368) = mimosa::v2::varint::sign_transform(v42);
  if ((a3 & 0x1000000000000) != 0)
  {
    goto LABEL_44;
  }

LABEL_41:
  if ((a3 & 0x1000000000) == 0)
  {
LABEL_42:
    v41 = *(a2 + 392);
    goto LABEL_46;
  }

LABEL_45:
  v45 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v46;
  v41 = mimosa::v2::varint::sign_transform(v45);
  *(a2 + 392) = v41;
LABEL_46:
  *(a2 + 392) = v41 + *(a2 + 24);
  if ((a3 & 0x400000) == 0)
  {
    if ((a3 & 0x2000000000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    v50 = *v6++;
    *(a2 + 408) = v50 | 0x100;
    if ((a3 & 8) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_52;
  }

  v48 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v49;
  *(a2 + 400) = mimosa::v2::varint::sign_transform(v48);
  if ((a3 & 0x2000000000000) != 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  if ((a3 & 8) == 0)
  {
LABEL_49:
    v47 = a1[2];
    goto LABEL_53;
  }

LABEL_52:
  v51 = *v6++;
  v47 = v51;
  a1[2] = v51;
LABEL_53:
  std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize((a2 + 80), v47);
  if ((a3 & 0x2000) != 0)
  {
    v53 = *v6++;
    v52 = v53;
    a1[3] = v53;
  }

  else
  {
    v52 = a1[3];
  }

  std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize((a2 + 128), v52);
  if ((a3 & 0x80) != 0)
  {
    std::optional<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>>::emplace[abi:ne200100]<unsigned char &,void>(a2 + 48, a1 + 2);
    v55 = *(a2 + 48);
    v56 = *(a2 + 56);
    if (v55 != v56)
    {
      while (1)
      {
        v57 = *v6;
        if (*v6)
        {
          break;
        }

        v6 += 2;
        if ((v57 & 2) != 0)
        {
          goto LABEL_62;
        }

LABEL_63:
        if ((v57 & 4) != 0)
        {
          v61 = *v6;
          v6 += 2;
          *(v55 + 8) = v61;
          *(v55 + 10) = 1;
          if ((v57 & 8) == 0)
          {
LABEL_65:
            if ((v57 & 0x10) == 0)
            {
              goto LABEL_66;
            }

            goto LABEL_78;
          }
        }

        else if ((v57 & 8) == 0)
        {
          goto LABEL_65;
        }

        v62 = *v6;
        v6 += 2;
        *(v55 + 12) = v62;
        *(v55 + 14) = 1;
        if ((v57 & 0x10) == 0)
        {
LABEL_66:
          if ((v57 & 0x20) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_79;
        }

LABEL_78:
        v63 = *v6;
        v6 += 2;
        *(v55 + 16) = v63;
        *(v55 + 18) = 1;
        if ((v57 & 0x20) == 0)
        {
LABEL_67:
          if ((v57 & 0x40) == 0)
          {
            goto LABEL_68;
          }

          goto LABEL_80;
        }

LABEL_79:
        v64 = *v6;
        v6 += 2;
        *(v55 + 20) = v64;
        *(v55 + 22) = 1;
        if ((v57 & 0x40) == 0)
        {
LABEL_68:
          if ((v57 & 0x80) == 0)
          {
            goto LABEL_69;
          }

          goto LABEL_81;
        }

LABEL_80:
        v65 = *v6++;
        *(v55 + 24) = v65 | 0x100;
        if ((v57 & 0x80) == 0)
        {
LABEL_69:
          if ((v57 & 0x100) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_82;
        }

LABEL_81:
        v66 = *v6++;
        *(v55 + 26) = v66 | 0x100;
        if ((v57 & 0x100) == 0)
        {
LABEL_70:
          if ((v57 & 0x200) == 0)
          {
            goto LABEL_71;
          }

          goto LABEL_83;
        }

LABEL_82:
        v67 = *v6++;
        *(v55 + 28) = v67 | 0x100;
        if ((v57 & 0x200) == 0)
        {
LABEL_71:
          if ((v57 & 0x400) != 0)
          {
            goto LABEL_84;
          }

          goto LABEL_72;
        }

LABEL_83:
        v68 = *v6++;
        *(v55 + 30) = v68 | 0x100;
        if ((v57 & 0x400) != 0)
        {
LABEL_84:
          v69 = *v6++;
          *(v55 + 32) = v69 | 0x100;
          if ((v57 & 0x800) == 0)
          {
            goto LABEL_74;
          }

LABEL_73:
          v60 = *v6++;
          *(v55 + 34) = v60 | 0x100;
          goto LABEL_74;
        }

LABEL_72:
        if ((v57 & 0x800) != 0)
        {
          goto LABEL_73;
        }

LABEL_74:
        v55 += 36;
        if (v55 == v56)
        {
          goto LABEL_86;
        }
      }

      v58 = *(v6 + 1);
      v6 += 4;
      *(v55 + 4) = v58;
      *(v55 + 6) = 1;
      if ((v57 & 2) == 0)
      {
        goto LABEL_63;
      }

LABEL_62:
      v59 = *v6;
      v6 += 2;
      *v55 = v59;
      *(v55 + 2) = 1;
      goto LABEL_63;
    }

LABEL_86:
    if ((a3 & 0x100) == 0)
    {
      if (a1[2])
      {
        v70 = *(a2 + 48);
        v71 = *(v70 + 4);
        if ((v71 & 0x10000) != 0)
        {
          for (i = *(a2 + 56); v70 != i; v70 += 36)
          {
            *(v70 + 4) = v71;
            *(v70 + 6) = 1;
          }
        }
      }
    }
  }

  v73 = *(a2 + 80);
  v74 = *(a2 + 88);
  if (v73 != v74)
  {
    v75 = v73 + 2;
    do
    {
      v76 = mimosa::v2::parse_varint(v6, a5, v54);
      v78 = v77;
      *(v75 - 2) = mimosa::v2::varint::sign_transform(v76);
      v79 = v75 - 2;
      v80 = &v6[v78];
      v82 = mimosa::v2::parse_varint(v80, a5, v81);
      v6 = &v80[v83];
      *(v75 - 1) = mimosa::v2::varint::sign_transform(v82);
      if ((a1[1] & 1) == 0)
      {
        v84 = mimosa::v2::parse_varint(v6, a5, v54);
        v6 += v85;
        *v75 = mimosa::v2::varint::sign_transform(v84);
      }

      v75 += 3;
    }

    while (v79 + 3 != v74);
  }

  if ((a3 & 0x800) != 0)
  {
    if ((a3 & 0x2000000) != 0)
    {
      std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::vector[abi:ne200100](&v135, *v6);
      if (*(a2 + 184) == 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 152);
      }

      v109 = v135;
      *(a2 + 152) = v135;
      *(a2 + 168) = v136;
      *(a2 + 176) = 0;
      *(a2 + 184) = 1;
      v110 = v109;
      ++v6;
      while (v110 != *(&v109 + 1))
      {
        *v110 = *v6;
        *(v110 + 2) = *(v6 + 1);
        *(v110 + 4) = v6[4];
        *(v110 + 5) = v6[5] != 0;
        v110 += 6;
        v6 += 6;
      }
    }

    else
    {
      v99 = *v6++;
      v98 = v99;
      if (*(a2 + 184) == 1)
      {
        if (*(a2 + 176) != 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 152);
          *(a2 + 176) = 1;
        }

        *(a2 + 152) = v98;
      }

      else
      {
        *(a2 + 152) = v98;
        *(a2 + 176) = 1;
        *(a2 + 184) = 1;
      }
    }
  }

  v86 = *(a2 + 128);
  v87 = *(a2 + 136);
  while (v86 != v87)
  {
    v88 = mimosa::v2::parse_varint(v6, a5, v54);
    v90 = &v6[v89];
    *v86 = mimosa::v2::varint::sign_transform(v88);
    v92 = mimosa::v2::parse_varint(v90, a5, v91);
    v94 = &v90[v93];
    v86[1] = mimosa::v2::varint::sign_transform(v92);
    v96 = mimosa::v2::parse_varint(v94, a5, v95);
    v6 = &v94[v97];
    v86[2] = mimosa::v2::varint::sign_transform(v96);
    v86 += 3;
  }

  if ((a3 & 4) != 0)
  {
    v100 = mimosa::v2::parse_varint(v6, a5, v54);
    v6 += v101;
    *(a2 + 216) = v100;
    *(a2 + 224) = 1;
    if ((a3 & 0x2000000000) == 0)
    {
LABEL_102:
      if ((a3 & 0x4000) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_115;
    }
  }

  else if ((a3 & 0x2000000000) == 0)
  {
    goto LABEL_102;
  }

  v102 = *v6;
  v6 += 8;
  *(a2 + 232) = v102;
  *(a2 + 240) = 1;
  if ((a3 & 0x4000) == 0)
  {
LABEL_103:
    if ((a3 & 0x200000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_116;
  }

LABEL_115:
  v103 = *v6;
  v6 += 4;
  *(a2 + 248) = v103;
  *(a2 + 252) = 1;
  if ((a3 & 0x200000) == 0)
  {
LABEL_104:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_117;
  }

LABEL_116:
  v104 = *v6;
  v6 += 4;
  *(a2 + 256) = v104;
  *(a2 + 260) = 1;
  if ((a3 & 0x1000) == 0)
  {
LABEL_105:
    if ((a3 & 0x40000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_118;
  }

LABEL_117:
  v105 = *v6;
  v6 += 2;
  *(a2 + 264) = v105;
  *(a2 + 266) = 1;
  if ((a3 & 0x40000000) == 0)
  {
LABEL_106:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_119;
  }

LABEL_118:
  v106 = *v6++;
  *(a2 + 268) = v106 | 0x100;
  if ((a3 & 0x200) == 0)
  {
    goto LABEL_136;
  }

LABEL_119:
  if ((a3 & 0x800000) != 0)
  {
    std::vector<unsigned short>::vector[abi:ne200100](&v135, a1[2]);
    if (*(a2 + 328) == 1)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 296);
    }

    v111 = v135;
    *(a2 + 296) = v135;
    *(a2 + 312) = v136;
    *(a2 + 320) = 0;
    *(a2 + 328) = 1;
    for (j = v111; j != *(&v111 + 1); ++j)
    {
      v113 = *v6;
      v6 += 2;
      *j = v113;
    }
  }

  else
  {
    v108 = *v6++;
    v107 = v108;
    if (*(a2 + 328) == 1)
    {
      if (*(a2 + 320) != 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 296);
        *(a2 + 320) = 1;
      }

      *(a2 + 296) = v107;
    }

    else
    {
      *(a2 + 296) = v107;
      *(a2 + 320) = 1;
      *(a2 + 328) = 1;
    }
  }

LABEL_136:
  if ((a3 & 0x4000000) != 0)
  {
    v116 = *v6++;
    *(a2 + 352) = v116 | 0x100;
    if ((a3 & 0x20000) == 0)
    {
LABEL_138:
      if ((a3 & 0x400) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_139;
    }
  }

  else if ((a3 & 0x20000) == 0)
  {
    goto LABEL_138;
  }

  v117 = *v6++;
  *(a2 + 354) = v117 | 0x100;
  if ((a3 & 0x400) != 0)
  {
LABEL_139:
    v114 = *v6;
    v6 += 8;
    *(a2 + 336) = v114;
    *(a2 + 344) = 1;
  }

LABEL_140:
  v115 = &v6[(a3 >> 38) & 1];
  if ((a3 & 0x40000000000) == 0)
  {
    if ((a3 & 2) == 0)
    {
      goto LABEL_142;
    }

LABEL_148:
    v119 = mimosa::v2::parse_varint(v115, a5, v54);
    v115 += v120;
    *(a2 + 388) = mimosa::v2::varint::sign_transform(v119);
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_149;
  }

  v118 = *v115;
  v115 += 2;
  *(a2 + 384) = v118;
  *(a2 + 386) = 1;
  if ((a3 & 2) != 0)
  {
    goto LABEL_148;
  }

LABEL_142:
  if ((a3 & 0x10000) == 0)
  {
    goto LABEL_157;
  }

LABEL_149:
  if ((a3 & 0x1000000) != 0)
  {
    v123 = (a2 + 488);
    *(a2 + 488) = 0;
    *(a2 + 496) = 0;
    *(a2 + 504) = 0;
    *(a2 + 508) = 0;
    v124 = 18;
    *(a2 + 512) = 1;
    do
    {
      v125 = *v115;
      v115 += 2;
      *v123++ = v125;
      v124 -= 2;
    }

    while (v124);
LABEL_157:
    if ((a3 & 0x40) != 0)
    {
      goto LABEL_158;
    }

    goto LABEL_159;
  }

  v122 = *v115++;
  v121 = v122;
  if (*(a2 + 512) != 1)
  {
    *(a2 + 488) = v121;
    *(a2 + 508) = 1;
    *(a2 + 512) = 1;
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_158;
  }

  if (*(a2 + 508) != 1)
  {
    *(a2 + 508) = 1;
  }

  *(a2 + 488) = v121;
  if ((a3 & 0x40) != 0)
  {
LABEL_158:
    v126 = *v115;
    v115 += 2;
    *(a2 + 516) = v126;
    *(a2 + 518) = 1;
  }

LABEL_159:
  v127 = 0;
  v130 = *v115;
  v128 = v115 + 1;
  v129 = v130;
  v131 = a2 + 416;
  do
  {
    if (v129)
    {
      v132 = mimosa::v2::parse_varint(v128, a5, v54);
      v128 += v133;
      *(v131 + v127) = mimosa::v2::varint::sign_transform(v132);
    }

    v129 >>= 1;
    v127 += 8;
  }

  while (v127 != 72);
  if (v128 != a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "something went wrong during patch decoding");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

unint64_t mimosa::v2::PatchDecoder::extract_patch<mimosa::v2::PacketState::PatchV6>(_BYTE *a1, uint64_t a2, const byte *a3, const byte *this, byte *a5)
{
  v6 = this;
  if ((a3 & 0x20) != 0)
  {
    a1[1] ^= 1u;
    if ((a3 & 0x10) != 0)
    {
LABEL_3:
      if ((a3 & 0x8000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a3 & 0x10) != 0)
  {
    goto LABEL_3;
  }

  v11 = mimosa::v2::parse_varint(this, a5, a3);
  v6 += v12;
  *a2 = mimosa::v2::varint::sign_transform(v11);
  if ((a3 & 0x8000000) == 0)
  {
LABEL_4:
    if ((a3 & 0x20000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v13 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v14;
  *(a2 + 8) = mimosa::v2::varint::sign_transform(v13);
  if ((a3 & 0x20000000) == 0)
  {
LABEL_5:
    if (a3)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v15 = *v6++;
  *(a2 + 16) = v15 | 0x100;
  if (a3)
  {
LABEL_6:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v16 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v17;
  *(a2 + 24) = mimosa::v2::varint::sign_transform(v16);
  if ((a3 & 0x8000) == 0)
  {
LABEL_7:
    if ((a3 & 0x100000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v20 = *v6++;
    *(a2 + 40) = v20 | 0x100;
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v18 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v19;
  *(a2 + 32) = mimosa::v2::varint::sign_transform(v18);
  if ((a3 & 0x100000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((a3 & 0x80000000) == 0)
  {
LABEL_9:
    v10 = *(a2 + 144);
    goto LABEL_18;
  }

LABEL_17:
  v21 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v22;
  v10 = mimosa::v2::varint::sign_transform(v21);
  *(a2 + 144) = v10;
LABEL_18:
  *(a2 + 144) = v10 + *(a2 + 24);
  if ((a3 & 0x80000) == 0)
  {
    if ((a3 & 0x200000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v26 = *v6++;
    *(a2 + 160) = v26 | 0x100;
    if ((a3 & 0x100000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v24 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v25;
  *(a2 + 152) = mimosa::v2::varint::sign_transform(v24);
  if ((a3 & 0x200000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if ((a3 & 0x100000000) == 0)
  {
LABEL_21:
    v23 = *(a2 + 232);
    goto LABEL_25;
  }

LABEL_24:
  v27 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v28;
  v23 = mimosa::v2::varint::sign_transform(v27);
  *(a2 + 232) = v23;
LABEL_25:
  *(a2 + 232) = v23 + *(a2 + 24);
  if ((a3 & 0x40000) == 0)
  {
    if ((a3 & 0x400000000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    v32 = *v6++;
    *(a2 + 248) = v32 | 0x100;
    if ((a3 & 0x200000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v30 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v31;
  *(a2 + 240) = mimosa::v2::varint::sign_transform(v30);
  if ((a3 & 0x400000000000) != 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if ((a3 & 0x200000000) == 0)
  {
LABEL_28:
    v29 = *(a2 + 312);
    goto LABEL_32;
  }

LABEL_31:
  v33 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v34;
  v29 = mimosa::v2::varint::sign_transform(v33);
  *(a2 + 312) = v29;
LABEL_32:
  *(a2 + 312) = v29 + *(a2 + 24);
  if ((a3 & 0x100000) == 0)
  {
    if ((a3 & 0x800000000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    v38 = *v6++;
    *(a2 + 328) = v38 | 0x100;
    if ((a3 & 0x400000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  v36 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v37;
  *(a2 + 320) = mimosa::v2::varint::sign_transform(v36);
  if ((a3 & 0x800000000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  if ((a3 & 0x400000000) == 0)
  {
LABEL_35:
    v35 = *(a2 + 360);
    goto LABEL_39;
  }

LABEL_38:
  v39 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v40;
  v35 = mimosa::v2::varint::sign_transform(v39);
  *(a2 + 360) = v35;
LABEL_39:
  *(a2 + 360) = v35 + *(a2 + 24);
  if ((a3 & 0x800000000) == 0)
  {
    if ((a3 & 0x1000000000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_44:
    v44 = *v6++;
    *(a2 + 376) = v44 | 0x100;
    if ((a3 & 0x1000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  v42 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v43;
  *(a2 + 368) = mimosa::v2::varint::sign_transform(v42);
  if ((a3 & 0x1000000000000) != 0)
  {
    goto LABEL_44;
  }

LABEL_41:
  if ((a3 & 0x1000000000) == 0)
  {
LABEL_42:
    v41 = *(a2 + 392);
    goto LABEL_46;
  }

LABEL_45:
  v45 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v46;
  v41 = mimosa::v2::varint::sign_transform(v45);
  *(a2 + 392) = v41;
LABEL_46:
  *(a2 + 392) = v41 + *(a2 + 24);
  if ((a3 & 0x400000) == 0)
  {
    if ((a3 & 0x2000000000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    v50 = *v6++;
    *(a2 + 408) = v50 | 0x100;
    if ((a3 & 0x4000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_52;
  }

  v48 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v49;
  *(a2 + 400) = mimosa::v2::varint::sign_transform(v48);
  if ((a3 & 0x2000000000000) != 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  if ((a3 & 0x4000000000000) == 0)
  {
LABEL_49:
    v47 = *(a2 + 488);
    goto LABEL_53;
  }

LABEL_52:
  v51 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v52;
  v47 = mimosa::v2::varint::sign_transform(v51);
  *(a2 + 488) = v47;
LABEL_53:
  *(a2 + 488) = v47 + *(a2 + 24);
  if ((a3 & 0x8000000000000) != 0)
  {
    v54 = mimosa::v2::parse_varint(v6, a5, a3);
    v6 += v55;
    *(a2 + 496) = mimosa::v2::varint::sign_transform(v54);
    if ((a3 & 0x10000000000000) == 0)
    {
LABEL_55:
      if ((a3 & 0x8000000000) == 0)
      {
        goto LABEL_56;
      }

LABEL_60:
      v57 = *v6++;
      *(a2 + 512) = v57 | 0x100;
      if ((a3 & 8) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_61;
    }
  }

  else if ((a3 & 0x10000000000000) == 0)
  {
    goto LABEL_55;
  }

  v56 = *v6++;
  *(a2 + 504) = v56 | 0x100;
  if ((a3 & 0x8000000000) != 0)
  {
    goto LABEL_60;
  }

LABEL_56:
  if ((a3 & 8) == 0)
  {
LABEL_57:
    v53 = a1[2];
    goto LABEL_62;
  }

LABEL_61:
  v58 = *v6++;
  v53 = v58;
  a1[2] = v58;
LABEL_62:
  std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize((a2 + 120), v53);
  if ((a3 & 0x2000) != 0)
  {
    v60 = *v6++;
    v59 = v60;
    a1[3] = v60;
  }

  else
  {
    v59 = a1[3];
  }

  std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize((a2 + 168), v59);
  if ((a3 & 0x80) != 0)
  {
    std::optional<std::vector<mimosa::v2::OpticalSamplesV2SubpacketState::Patch::Sample>>::emplace[abi:ne200100]<unsigned char &,void>(a2 + 88, a1 + 2);
    v63 = *(a2 + 88);
    v62 = *(a2 + 96);
    if (v63 != v62)
    {
      v64 = v63 + 16;
      while (1)
      {
        v65 = *v6;
        if (*v6)
        {
          break;
        }

        v6 += 2;
        if ((v65 & 2) != 0)
        {
          goto LABEL_72;
        }

LABEL_73:
        if ((v65 & 4) != 0)
        {
          v70 = *v6;
          v6 += 2;
          *(v64 - 12) = v70;
          *(v64 - 22) = 1;
          if ((v65 & 8) == 0)
          {
LABEL_75:
            if ((v65 & 0x10) == 0)
            {
              goto LABEL_76;
            }

            goto LABEL_88;
          }
        }

        else if ((v65 & 8) == 0)
        {
          goto LABEL_75;
        }

        v71 = *v6++;
        *(v64 - 5) = v71 | 0x100;
        if ((v65 & 0x10) == 0)
        {
LABEL_76:
          if ((v65 & 0x20) == 0)
          {
            goto LABEL_77;
          }

          goto LABEL_89;
        }

LABEL_88:
        v72 = *v6++;
        *(v64 - 4) = v72 | 0x100;
        if ((v65 & 0x20) == 0)
        {
LABEL_77:
          if ((v65 & 0x100) == 0)
          {
            goto LABEL_78;
          }

          goto LABEL_90;
        }

LABEL_89:
        v73 = *v6;
        v6 += 2;
        *(v64 - 10) = v73;
        *(v64 - 18) = 1;
        if ((v65 & 0x100) == 0)
        {
LABEL_78:
          if ((v65 & 0x400) == 0)
          {
            goto LABEL_79;
          }

          goto LABEL_91;
        }

LABEL_90:
        v74 = *v6;
        v6 += 2;
        *(v64 - 8) = v74;
        *(v64 - 14) = 1;
        if ((v65 & 0x400) == 0)
        {
LABEL_79:
          if ((v65 & 0x80) == 0)
          {
            goto LABEL_80;
          }

          goto LABEL_92;
        }

LABEL_91:
        v75 = *v6++;
        *(v64 - 1) = v75 | 0x100;
        if ((v65 & 0x80) == 0)
        {
LABEL_80:
          if ((v65 & 0x800) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_93;
        }

LABEL_92:
        v76 = *v6++;
        *(v64 - 3) = v76 | 0x100;
        if ((v65 & 0x800) == 0)
        {
LABEL_81:
          if ((v65 & 0x40) != 0)
          {
            goto LABEL_94;
          }

          goto LABEL_82;
        }

LABEL_93:
        v77 = *v6++;
        *v64 = v77 | 0x100;
        if ((v65 & 0x40) != 0)
        {
LABEL_94:
          v78 = *v6++;
          *(v64 - 6) = v78 | 0x100;
          if ((v65 & 0x200) == 0)
          {
            goto LABEL_84;
          }

LABEL_83:
          v68 = *v6++;
          *(v64 - 2) = v68 | 0x100;
          goto LABEL_84;
        }

LABEL_82:
        if ((v65 & 0x200) != 0)
        {
          goto LABEL_83;
        }

LABEL_84:
        v69 = v64 + 1;
        v64 += 17;
        if (v69 == v62)
        {
          goto LABEL_96;
        }
      }

      v66 = *(v6 + 1);
      v6 += 4;
      *(v64 - 14) = v66;
      *(v64 - 26) = 1;
      if ((v65 & 2) == 0)
      {
        goto LABEL_73;
      }

LABEL_72:
      v67 = *v6;
      v6 += 2;
      *(v64 - 16) = v67;
      *(v64 - 30) = 1;
      goto LABEL_73;
    }

LABEL_96:
    if ((a3 & 0x100) == 0)
    {
      if (a1[2])
      {
        v79 = *(a2 + 88);
        v80 = *(v79 + 4);
        if ((v80 & 0x10000) != 0)
        {
          for (i = *(a2 + 96); v79 != i; v79 += 34)
          {
            *(v79 + 4) = v80;
            *(v79 + 6) = 1;
          }
        }
      }
    }
  }

  v82 = *(a2 + 120);
  v83 = *(a2 + 128);
  if (v82 != v83)
  {
    v84 = v82 + 2;
    do
    {
      v85 = mimosa::v2::parse_varint(v6, a5, v61);
      v87 = v86;
      *(v84 - 2) = mimosa::v2::varint::sign_transform(v85);
      v88 = v84 - 2;
      v89 = &v6[v87];
      v91 = mimosa::v2::parse_varint(v89, a5, v90);
      v6 = &v89[v92];
      *(v84 - 1) = mimosa::v2::varint::sign_transform(v91);
      if ((a1[1] & 1) == 0)
      {
        v93 = mimosa::v2::parse_varint(v6, a5, v61);
        v6 += v94;
        *v84 = mimosa::v2::varint::sign_transform(v93);
      }

      v84 += 3;
    }

    while (v88 + 3 != v83);
  }

  if ((a3 & 0x800) != 0)
  {
    if ((a3 & 0x2000000) != 0)
    {
      std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::vector[abi:ne200100](&v146, *v6);
      if (*(a2 + 224) == 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 192);
      }

      v118 = v146;
      *(a2 + 192) = v146;
      *(a2 + 208) = v147;
      *(a2 + 216) = 0;
      *(a2 + 224) = 1;
      v119 = v118;
      ++v6;
      while (v119 != *(&v118 + 1))
      {
        *v119 = *v6;
        *(v119 + 2) = *(v6 + 1);
        *(v119 + 4) = v6[4];
        *(v119 + 5) = v6[5] != 0;
        v119 += 6;
        v6 += 6;
      }
    }

    else
    {
      v108 = *v6++;
      v107 = v108;
      if (*(a2 + 224) == 1)
      {
        if (*(a2 + 216) != 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 192);
          *(a2 + 216) = 1;
        }

        *(a2 + 192) = v107;
      }

      else
      {
        *(a2 + 192) = v107;
        *(a2 + 216) = 1;
        *(a2 + 224) = 1;
      }
    }
  }

  v95 = *(a2 + 168);
  v96 = *(a2 + 176);
  while (v95 != v96)
  {
    v97 = mimosa::v2::parse_varint(v6, a5, v61);
    v99 = &v6[v98];
    *v95 = mimosa::v2::varint::sign_transform(v97);
    v101 = mimosa::v2::parse_varint(v99, a5, v100);
    v103 = &v99[v102];
    v95[1] = mimosa::v2::varint::sign_transform(v101);
    v105 = mimosa::v2::parse_varint(v103, a5, v104);
    v6 = &v103[v106];
    v95[2] = mimosa::v2::varint::sign_transform(v105);
    v95 += 3;
  }

  if ((a3 & 4) != 0)
  {
    v109 = mimosa::v2::parse_varint(v6, a5, v61);
    v6 += v110;
    *(a2 + 256) = v109;
    *(a2 + 264) = 1;
    if ((a3 & 0x2000000000) == 0)
    {
LABEL_112:
      if ((a3 & 0x4000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_125;
    }
  }

  else if ((a3 & 0x2000000000) == 0)
  {
    goto LABEL_112;
  }

  v111 = *v6;
  v6 += 8;
  *(a2 + 272) = v111;
  *(a2 + 280) = 1;
  if ((a3 & 0x4000) == 0)
  {
LABEL_113:
    if ((a3 & 0x200000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_126;
  }

LABEL_125:
  v112 = *v6;
  v6 += 4;
  *(a2 + 288) = v112;
  *(a2 + 292) = 1;
  if ((a3 & 0x200000) == 0)
  {
LABEL_114:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_127;
  }

LABEL_126:
  v113 = *v6;
  v6 += 4;
  *(a2 + 296) = v113;
  *(a2 + 300) = 1;
  if ((a3 & 0x1000) == 0)
  {
LABEL_115:
    if ((a3 & 0x40000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_128;
  }

LABEL_127:
  v114 = *v6;
  v6 += 2;
  *(a2 + 304) = v114;
  *(a2 + 306) = 1;
  if ((a3 & 0x40000000) == 0)
  {
LABEL_116:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_129;
  }

LABEL_128:
  v115 = *v6++;
  *(a2 + 308) = v115 | 0x100;
  if ((a3 & 0x200) == 0)
  {
    goto LABEL_146;
  }

LABEL_129:
  if ((a3 & 0x800000) != 0)
  {
    std::vector<unsigned short>::vector[abi:ne200100](&v146, a1[2]);
    if (*(a2 + 80) == 1)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 48);
    }

    v120 = v146;
    *(a2 + 48) = v146;
    *(a2 + 64) = v147;
    *(a2 + 72) = 0;
    *(a2 + 80) = 1;
    for (j = v120; j != *(&v120 + 1); ++j)
    {
      v122 = *v6;
      v6 += 2;
      *j = v122;
    }
  }

  else
  {
    v117 = *v6++;
    v116 = v117;
    if (*(a2 + 80) == 1)
    {
      if (*(a2 + 72) != 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 48);
        *(a2 + 72) = 1;
      }

      *(a2 + 48) = v116;
    }

    else
    {
      *(a2 + 48) = v116;
      *(a2 + 72) = 1;
      *(a2 + 80) = 1;
    }
  }

LABEL_146:
  if ((a3 & 0x4000000) != 0)
  {
    v125 = *v6++;
    *(a2 + 352) = v125 | 0x100;
    if ((a3 & 0x20000) == 0)
    {
LABEL_148:
      if ((a3 & 0x400) == 0)
      {
        goto LABEL_150;
      }

      goto LABEL_149;
    }
  }

  else if ((a3 & 0x20000) == 0)
  {
    goto LABEL_148;
  }

  v126 = *v6++;
  *(a2 + 354) = v126 | 0x100;
  if ((a3 & 0x400) != 0)
  {
LABEL_149:
    v123 = *v6;
    v6 += 8;
    *(a2 + 336) = v123;
    *(a2 + 344) = 1;
  }

LABEL_150:
  v124 = &v6[(a3 >> 38) & 1];
  if ((a3 & 0x40000000000) == 0)
  {
    if ((a3 & 2) == 0)
    {
      goto LABEL_152;
    }

LABEL_158:
    v128 = mimosa::v2::parse_varint(v124, a5, v61);
    v124 += v129;
    *(a2 + 388) = mimosa::v2::varint::sign_transform(v128);
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_159;
  }

  v127 = *v124;
  v124 += 2;
  *(a2 + 384) = v127;
  *(a2 + 386) = 1;
  if ((a3 & 2) != 0)
  {
    goto LABEL_158;
  }

LABEL_152:
  if ((a3 & 0x10000) == 0)
  {
    goto LABEL_167;
  }

LABEL_159:
  if ((a3 & 0x1000000) != 0)
  {
    v132 = (a2 + 464);
    *(a2 + 464) = 0;
    *(a2 + 472) = 0;
    *(a2 + 480) = 1;
    v133 = 12;
    do
    {
      v134 = *v124;
      v124 += 2;
      *v132++ = v134;
      v133 -= 2;
    }

    while (v133);
LABEL_167:
    if ((a3 & 0x40) != 0)
    {
      goto LABEL_168;
    }

    goto LABEL_169;
  }

  v131 = *v124++;
  v130 = v131;
  if (*(a2 + 480) != 1)
  {
    *(a2 + 464) = v130;
    *(a2 + 476) = 1;
    *(a2 + 480) = 1;
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_168;
  }

  if (*(a2 + 476) != 1)
  {
    *(a2 + 476) = 1;
  }

  *(a2 + 464) = v130;
  if ((a3 & 0x40) != 0)
  {
LABEL_168:
    v135 = *v124;
    v124 += 2;
    *(a2 + 484) = v135;
    *(a2 + 486) = 1;
  }

LABEL_169:
  result = mimosa::v2::parse_varint(v124, a5, v61);
  v138 = result;
  v139 = 0;
  v141 = &v124[v140];
  v142 = a2 + 416;
  do
  {
    if (v138)
    {
      v143 = mimosa::v2::parse_varint(v141, a5, v137);
      v141 += v144;
      result = mimosa::v2::varint::sign_transform(v143);
      *(v142 + v139) = result;
    }

    v138 >>= 1;
    v139 += 8;
  }

  while (v139 != 48);
  if (v141 != a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "something went wrong during patch decoding");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void *std::optional<std::vector<mimosa::v2::OpticalSamplesV2SubpacketState::Patch::Sample>>::emplace[abi:ne200100]<unsigned char &,void>(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 24) == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    *(a1 + 24) = 0;
  }

  result = std::vector<mimosa::v2::OpticalSamplesV2SubpacketState::Patch::Sample>::vector[abi:ne200100](a1, *a2);
  *(a1 + 24) = 1;
  return result;
}

void *std::vector<mimosa::v2::OpticalSamplesV2SubpacketState::Patch::Sample>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<mimosa::v2::OpticalSamplesV2SubpacketState::Patch::Sample>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2512AE984(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<mimosa::v2::OpticalSamplesV2SubpacketState::Patch::Sample>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x787878787878788)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<mimosa::v2::OpticalSamplesV2SubpacketState::Patch::Sample>>(a1, a2);
  }

  std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mimosa::v2::OpticalSamplesV2SubpacketState::Patch::Sample>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x787878787878788)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

unint64_t mimosa::v2::PatchDecoder::extract_patch<mimosa::v2::PacketState::PatchV7>(_BYTE *a1, uint64_t a2, const byte *a3, const byte *this, byte *a5)
{
  v6 = this;
  if ((a3 & 0x20) != 0)
  {
    a1[1] ^= 1u;
    if ((a3 & 0x10) != 0)
    {
LABEL_3:
      if ((a3 & 0x8000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a3 & 0x10) != 0)
  {
    goto LABEL_3;
  }

  v11 = mimosa::v2::parse_varint(this, a5, a3);
  v6 += v12;
  *a2 = mimosa::v2::varint::sign_transform(v11);
  if ((a3 & 0x8000000) == 0)
  {
LABEL_4:
    if ((a3 & 0x20000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v13 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v14;
  *(a2 + 8) = mimosa::v2::varint::sign_transform(v13);
  if ((a3 & 0x20000000) == 0)
  {
LABEL_5:
    if (a3)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v15 = *v6++;
  *(a2 + 16) = v15 | 0x100;
  if (a3)
  {
LABEL_6:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v16 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v17;
  *(a2 + 24) = mimosa::v2::varint::sign_transform(v16);
  if ((a3 & 0x8000) == 0)
  {
LABEL_7:
    if ((a3 & 0x100000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v20 = *v6++;
    *(a2 + 40) = v20 | 0x100;
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v18 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v19;
  *(a2 + 32) = mimosa::v2::varint::sign_transform(v18);
  if ((a3 & 0x100000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((a3 & 0x80000000) == 0)
  {
LABEL_9:
    v10 = *(a2 + 144);
    goto LABEL_18;
  }

LABEL_17:
  v21 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v22;
  v10 = mimosa::v2::varint::sign_transform(v21);
  *(a2 + 144) = v10;
LABEL_18:
  *(a2 + 144) = v10 + *(a2 + 24);
  if ((a3 & 0x80000) == 0)
  {
    if ((a3 & 0x200000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v26 = *v6++;
    *(a2 + 160) = v26 | 0x100;
    if ((a3 & 0x100000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v24 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v25;
  *(a2 + 152) = mimosa::v2::varint::sign_transform(v24);
  if ((a3 & 0x200000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if ((a3 & 0x100000000) == 0)
  {
LABEL_21:
    v23 = *(a2 + 232);
    goto LABEL_25;
  }

LABEL_24:
  v27 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v28;
  v23 = mimosa::v2::varint::sign_transform(v27);
  *(a2 + 232) = v23;
LABEL_25:
  *(a2 + 232) = v23 + *(a2 + 24);
  if ((a3 & 0x40000) == 0)
  {
    if ((a3 & 0x400000000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    v32 = *v6++;
    *(a2 + 248) = v32 | 0x100;
    if ((a3 & 0x200000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v30 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v31;
  *(a2 + 240) = mimosa::v2::varint::sign_transform(v30);
  if ((a3 & 0x400000000000) != 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if ((a3 & 0x200000000) == 0)
  {
LABEL_28:
    v29 = *(a2 + 312);
    goto LABEL_32;
  }

LABEL_31:
  v33 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v34;
  v29 = mimosa::v2::varint::sign_transform(v33);
  *(a2 + 312) = v29;
LABEL_32:
  *(a2 + 312) = v29 + *(a2 + 24);
  if ((a3 & 0x100000) == 0)
  {
    if ((a3 & 0x800000000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    v38 = *v6++;
    *(a2 + 328) = v38 | 0x100;
    if ((a3 & 0x400000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  v36 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v37;
  *(a2 + 320) = mimosa::v2::varint::sign_transform(v36);
  if ((a3 & 0x800000000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  if ((a3 & 0x400000000) == 0)
  {
LABEL_35:
    v35 = *(a2 + 360);
    goto LABEL_39;
  }

LABEL_38:
  v39 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v40;
  v35 = mimosa::v2::varint::sign_transform(v39);
  *(a2 + 360) = v35;
LABEL_39:
  *(a2 + 360) = v35 + *(a2 + 24);
  if ((a3 & 0x800000000) == 0)
  {
    if ((a3 & 0x1000000000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_44:
    v44 = *v6++;
    *(a2 + 376) = v44 | 0x100;
    if ((a3 & 0x1000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  v42 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v43;
  *(a2 + 368) = mimosa::v2::varint::sign_transform(v42);
  if ((a3 & 0x1000000000000) != 0)
  {
    goto LABEL_44;
  }

LABEL_41:
  if ((a3 & 0x1000000000) == 0)
  {
LABEL_42:
    v41 = *(a2 + 392);
    goto LABEL_46;
  }

LABEL_45:
  v45 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v46;
  v41 = mimosa::v2::varint::sign_transform(v45);
  *(a2 + 392) = v41;
LABEL_46:
  *(a2 + 392) = v41 + *(a2 + 24);
  if ((a3 & 0x400000) == 0)
  {
    if ((a3 & 0x2000000000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    v50 = *v6++;
    *(a2 + 408) = v50 | 0x100;
    if ((a3 & 0x4000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_52;
  }

  v48 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v49;
  *(a2 + 400) = mimosa::v2::varint::sign_transform(v48);
  if ((a3 & 0x2000000000000) != 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  if ((a3 & 0x4000000000000) == 0)
  {
LABEL_49:
    v47 = *(a2 + 520);
    goto LABEL_53;
  }

LABEL_52:
  v51 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v52;
  v47 = mimosa::v2::varint::sign_transform(v51);
  *(a2 + 520) = v47;
LABEL_53:
  *(a2 + 520) = v47 + *(a2 + 24);
  if ((a3 & 0x8000000000000) != 0)
  {
    v54 = mimosa::v2::parse_varint(v6, a5, a3);
    v6 += v55;
    *(a2 + 528) = mimosa::v2::varint::sign_transform(v54);
    if ((a3 & 0x10000000000000) == 0)
    {
LABEL_55:
      if ((a3 & 0x8000000000) == 0)
      {
        goto LABEL_56;
      }

LABEL_60:
      v57 = *v6++;
      *(a2 + 544) = v57 | 0x100;
      if ((a3 & 8) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_61;
    }
  }

  else if ((a3 & 0x10000000000000) == 0)
  {
    goto LABEL_55;
  }

  v56 = *v6++;
  *(a2 + 536) = v56 | 0x100;
  if ((a3 & 0x8000000000) != 0)
  {
    goto LABEL_60;
  }

LABEL_56:
  if ((a3 & 8) == 0)
  {
LABEL_57:
    v53 = a1[2];
    goto LABEL_62;
  }

LABEL_61:
  v58 = *v6++;
  v53 = v58;
  a1[2] = v58;
LABEL_62:
  std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize((a2 + 120), v53);
  if ((a3 & 0x2000) != 0)
  {
    v60 = *v6++;
    v59 = v60;
    a1[3] = v60;
  }

  else
  {
    v59 = a1[3];
  }

  std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize((a2 + 168), v59);
  if ((a3 & 0x80) != 0)
  {
    std::optional<std::vector<mimosa::v2::OpticalSamplesV2SubpacketState::Patch::Sample>>::emplace[abi:ne200100]<unsigned char &,void>(a2 + 88, a1 + 2);
    v63 = *(a2 + 88);
    v62 = *(a2 + 96);
    if (v63 != v62)
    {
      v64 = v63 + 16;
      while (1)
      {
        v65 = *v6;
        if (*v6)
        {
          break;
        }

        v6 += 2;
        if ((v65 & 2) != 0)
        {
          goto LABEL_72;
        }

LABEL_73:
        if ((v65 & 4) != 0)
        {
          v70 = *v6;
          v6 += 2;
          *(v64 - 12) = v70;
          *(v64 - 22) = 1;
          if ((v65 & 8) == 0)
          {
LABEL_75:
            if ((v65 & 0x10) == 0)
            {
              goto LABEL_76;
            }

            goto LABEL_88;
          }
        }

        else if ((v65 & 8) == 0)
        {
          goto LABEL_75;
        }

        v71 = *v6++;
        *(v64 - 5) = v71 | 0x100;
        if ((v65 & 0x10) == 0)
        {
LABEL_76:
          if ((v65 & 0x20) == 0)
          {
            goto LABEL_77;
          }

          goto LABEL_89;
        }

LABEL_88:
        v72 = *v6++;
        *(v64 - 4) = v72 | 0x100;
        if ((v65 & 0x20) == 0)
        {
LABEL_77:
          if ((v65 & 0x100) == 0)
          {
            goto LABEL_78;
          }

          goto LABEL_90;
        }

LABEL_89:
        v73 = *v6;
        v6 += 2;
        *(v64 - 10) = v73;
        *(v64 - 18) = 1;
        if ((v65 & 0x100) == 0)
        {
LABEL_78:
          if ((v65 & 0x400) == 0)
          {
            goto LABEL_79;
          }

          goto LABEL_91;
        }

LABEL_90:
        v74 = *v6;
        v6 += 2;
        *(v64 - 8) = v74;
        *(v64 - 14) = 1;
        if ((v65 & 0x400) == 0)
        {
LABEL_79:
          if ((v65 & 0x80) == 0)
          {
            goto LABEL_80;
          }

          goto LABEL_92;
        }

LABEL_91:
        v75 = *v6++;
        *(v64 - 1) = v75 | 0x100;
        if ((v65 & 0x80) == 0)
        {
LABEL_80:
          if ((v65 & 0x800) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_93;
        }

LABEL_92:
        v76 = *v6++;
        *(v64 - 3) = v76 | 0x100;
        if ((v65 & 0x800) == 0)
        {
LABEL_81:
          if ((v65 & 0x40) != 0)
          {
            goto LABEL_94;
          }

          goto LABEL_82;
        }

LABEL_93:
        v77 = *v6++;
        *v64 = v77 | 0x100;
        if ((v65 & 0x40) != 0)
        {
LABEL_94:
          v78 = *v6++;
          *(v64 - 6) = v78 | 0x100;
          if ((v65 & 0x200) == 0)
          {
            goto LABEL_84;
          }

LABEL_83:
          v68 = *v6++;
          *(v64 - 2) = v68 | 0x100;
          goto LABEL_84;
        }

LABEL_82:
        if ((v65 & 0x200) != 0)
        {
          goto LABEL_83;
        }

LABEL_84:
        v69 = v64 + 1;
        v64 += 17;
        if (v69 == v62)
        {
          goto LABEL_96;
        }
      }

      v66 = *(v6 + 1);
      v6 += 4;
      *(v64 - 14) = v66;
      *(v64 - 26) = 1;
      if ((v65 & 2) == 0)
      {
        goto LABEL_73;
      }

LABEL_72:
      v67 = *v6;
      v6 += 2;
      *(v64 - 16) = v67;
      *(v64 - 30) = 1;
      goto LABEL_73;
    }

LABEL_96:
    if ((a3 & 0x100) == 0)
    {
      if (a1[2])
      {
        v79 = *(a2 + 88);
        v80 = *(v79 + 4);
        if ((v80 & 0x10000) != 0)
        {
          for (i = *(a2 + 96); v79 != i; v79 += 34)
          {
            *(v79 + 4) = v80;
            *(v79 + 6) = 1;
          }
        }
      }
    }
  }

  v82 = *(a2 + 120);
  v83 = *(a2 + 128);
  if (v82 != v83)
  {
    v84 = v82 + 2;
    do
    {
      v85 = mimosa::v2::parse_varint(v6, a5, v61);
      v87 = v86;
      *(v84 - 2) = mimosa::v2::varint::sign_transform(v85);
      v88 = v84 - 2;
      v89 = &v6[v87];
      v91 = mimosa::v2::parse_varint(v89, a5, v90);
      v6 = &v89[v92];
      *(v84 - 1) = mimosa::v2::varint::sign_transform(v91);
      if ((a1[1] & 1) == 0)
      {
        v93 = mimosa::v2::parse_varint(v6, a5, v61);
        v6 += v94;
        *v84 = mimosa::v2::varint::sign_transform(v93);
      }

      v84 += 3;
    }

    while (v88 + 3 != v83);
  }

  if ((a3 & 0x800) != 0)
  {
    if ((a3 & 0x2000000) != 0)
    {
      std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::vector[abi:ne200100](&v146, *v6);
      if (*(a2 + 224) == 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 192);
      }

      v118 = v146;
      *(a2 + 192) = v146;
      *(a2 + 208) = v147;
      *(a2 + 216) = 0;
      *(a2 + 224) = 1;
      v119 = v118;
      ++v6;
      while (v119 != *(&v118 + 1))
      {
        *v119 = *v6;
        *(v119 + 2) = *(v6 + 1);
        *(v119 + 4) = v6[4];
        *(v119 + 5) = v6[5] != 0;
        v119 += 6;
        v6 += 6;
      }
    }

    else
    {
      v108 = *v6++;
      v107 = v108;
      if (*(a2 + 224) == 1)
      {
        if (*(a2 + 216) != 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 192);
          *(a2 + 216) = 1;
        }

        *(a2 + 192) = v107;
      }

      else
      {
        *(a2 + 192) = v107;
        *(a2 + 216) = 1;
        *(a2 + 224) = 1;
      }
    }
  }

  v95 = *(a2 + 168);
  v96 = *(a2 + 176);
  while (v95 != v96)
  {
    v97 = mimosa::v2::parse_varint(v6, a5, v61);
    v99 = &v6[v98];
    *v95 = mimosa::v2::varint::sign_transform(v97);
    v101 = mimosa::v2::parse_varint(v99, a5, v100);
    v103 = &v99[v102];
    v95[1] = mimosa::v2::varint::sign_transform(v101);
    v105 = mimosa::v2::parse_varint(v103, a5, v104);
    v6 = &v103[v106];
    v95[2] = mimosa::v2::varint::sign_transform(v105);
    v95 += 3;
  }

  if ((a3 & 4) != 0)
  {
    v109 = mimosa::v2::parse_varint(v6, a5, v61);
    v6 += v110;
    *(a2 + 256) = v109;
    *(a2 + 264) = 1;
    if ((a3 & 0x2000000000) == 0)
    {
LABEL_112:
      if ((a3 & 0x4000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_125;
    }
  }

  else if ((a3 & 0x2000000000) == 0)
  {
    goto LABEL_112;
  }

  v111 = *v6;
  v6 += 8;
  *(a2 + 272) = v111;
  *(a2 + 280) = 1;
  if ((a3 & 0x4000) == 0)
  {
LABEL_113:
    if ((a3 & 0x200000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_126;
  }

LABEL_125:
  v112 = *v6;
  v6 += 4;
  *(a2 + 288) = v112;
  *(a2 + 292) = 1;
  if ((a3 & 0x200000) == 0)
  {
LABEL_114:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_127;
  }

LABEL_126:
  v113 = *v6;
  v6 += 4;
  *(a2 + 296) = v113;
  *(a2 + 300) = 1;
  if ((a3 & 0x1000) == 0)
  {
LABEL_115:
    if ((a3 & 0x40000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_128;
  }

LABEL_127:
  v114 = *v6;
  v6 += 2;
  *(a2 + 304) = v114;
  *(a2 + 306) = 1;
  if ((a3 & 0x40000000) == 0)
  {
LABEL_116:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_129;
  }

LABEL_128:
  v115 = *v6++;
  *(a2 + 308) = v115 | 0x100;
  if ((a3 & 0x200) == 0)
  {
    goto LABEL_146;
  }

LABEL_129:
  if ((a3 & 0x800000) != 0)
  {
    std::vector<unsigned short>::vector[abi:ne200100](&v146, a1[2]);
    if (*(a2 + 80) == 1)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 48);
    }

    v120 = v146;
    *(a2 + 48) = v146;
    *(a2 + 64) = v147;
    *(a2 + 72) = 0;
    *(a2 + 80) = 1;
    for (j = v120; j != *(&v120 + 1); ++j)
    {
      v122 = *v6;
      v6 += 2;
      *j = v122;
    }
  }

  else
  {
    v117 = *v6++;
    v116 = v117;
    if (*(a2 + 80) == 1)
    {
      if (*(a2 + 72) != 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 48);
        *(a2 + 72) = 1;
      }

      *(a2 + 48) = v116;
    }

    else
    {
      *(a2 + 48) = v116;
      *(a2 + 72) = 1;
      *(a2 + 80) = 1;
    }
  }

LABEL_146:
  if ((a3 & 0x4000000) != 0)
  {
    v125 = *v6++;
    *(a2 + 352) = v125 | 0x100;
    if ((a3 & 0x20000) == 0)
    {
LABEL_148:
      if ((a3 & 0x400) == 0)
      {
        goto LABEL_150;
      }

      goto LABEL_149;
    }
  }

  else if ((a3 & 0x20000) == 0)
  {
    goto LABEL_148;
  }

  v126 = *v6++;
  *(a2 + 354) = v126 | 0x100;
  if ((a3 & 0x400) != 0)
  {
LABEL_149:
    v123 = *v6;
    v6 += 8;
    *(a2 + 336) = v123;
    *(a2 + 344) = 1;
  }

LABEL_150:
  v124 = &v6[(a3 >> 38) & 1];
  if ((a3 & 0x40000000000) == 0)
  {
    if ((a3 & 2) == 0)
    {
      goto LABEL_152;
    }

LABEL_158:
    v128 = mimosa::v2::parse_varint(v124, a5, v61);
    v124 += v129;
    *(a2 + 388) = mimosa::v2::varint::sign_transform(v128);
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_159;
  }

  v127 = *v124;
  v124 += 2;
  *(a2 + 384) = v127;
  *(a2 + 386) = 1;
  if ((a3 & 2) != 0)
  {
    goto LABEL_158;
  }

LABEL_152:
  if ((a3 & 0x10000) == 0)
  {
    goto LABEL_167;
  }

LABEL_159:
  if ((a3 & 0x1000000) != 0)
  {
    v132 = (a2 + 488);
    *(a2 + 488) = 0;
    *(a2 + 496) = 0;
    *(a2 + 504) = 0;
    *(a2 + 508) = 0;
    v133 = 18;
    *(a2 + 512) = 1;
    do
    {
      v134 = *v124;
      v124 += 2;
      *v132++ = v134;
      v133 -= 2;
    }

    while (v133);
LABEL_167:
    if ((a3 & 0x40) != 0)
    {
      goto LABEL_168;
    }

    goto LABEL_169;
  }

  v131 = *v124++;
  v130 = v131;
  if (*(a2 + 512) != 1)
  {
    *(a2 + 488) = v130;
    *(a2 + 508) = 1;
    *(a2 + 512) = 1;
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_168;
  }

  if (*(a2 + 508) != 1)
  {
    *(a2 + 508) = 1;
  }

  *(a2 + 488) = v130;
  if ((a3 & 0x40) != 0)
  {
LABEL_168:
    v135 = *v124;
    v124 += 2;
    *(a2 + 516) = v135;
    *(a2 + 518) = 1;
  }

LABEL_169:
  result = mimosa::v2::parse_varint(v124, a5, v61);
  v138 = result;
  v139 = 0;
  v141 = &v124[v140];
  v142 = a2 + 416;
  do
  {
    if (v138)
    {
      v143 = mimosa::v2::parse_varint(v141, a5, v137);
      v141 += v144;
      result = mimosa::v2::varint::sign_transform(v143);
      *(v142 + v139) = result;
    }

    v138 >>= 1;
    v139 += 8;
  }

  while (v139 != 72);
  if (v141 != a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "something went wrong during patch decoding");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void mimosa::v2::PatchDecoder::extract_patch<mimosa::v2::PacketState::PatchV9>(_BYTE *a1, uint64_t a2, const byte *a3, const byte *this, byte *a5)
{
  v6 = this;
  if ((a3 & 0x20) != 0)
  {
    a1[1] ^= 1u;
    if ((a3 & 0x10) != 0)
    {
LABEL_3:
      if ((a3 & 0x8000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a3 & 0x10) != 0)
  {
    goto LABEL_3;
  }

  v11 = mimosa::v2::parse_varint(this, a5, a3);
  v6 += v12;
  *a2 = mimosa::v2::varint::sign_transform(v11);
  if ((a3 & 0x8000000) == 0)
  {
LABEL_4:
    if ((a3 & 0x20000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v13 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v14;
  *(a2 + 8) = mimosa::v2::varint::sign_transform(v13);
  if ((a3 & 0x20000000) == 0)
  {
LABEL_5:
    if (a3)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v15 = *v6++;
  *(a2 + 16) = v15 | 0x100;
  if (a3)
  {
LABEL_6:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v16 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v17;
  *(a2 + 24) = mimosa::v2::varint::sign_transform(v16);
  if ((a3 & 0x8000) == 0)
  {
LABEL_7:
    if ((a3 & 0x100000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v20 = *v6++;
    *(a2 + 40) = v20 | 0x100;
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v18 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v19;
  *(a2 + 32) = mimosa::v2::varint::sign_transform(v18);
  if ((a3 & 0x100000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((a3 & 0x80000000) == 0)
  {
LABEL_9:
    v10 = *(a2 + 144);
    goto LABEL_18;
  }

LABEL_17:
  v21 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v22;
  v10 = mimosa::v2::varint::sign_transform(v21);
  *(a2 + 144) = v10;
LABEL_18:
  *(a2 + 144) = v10 + *(a2 + 24);
  if ((a3 & 0x80000) == 0)
  {
    if ((a3 & 0x200000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v26 = *v6++;
    *(a2 + 160) = v26 | 0x100;
    if ((a3 & 0x100000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v24 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v25;
  *(a2 + 152) = mimosa::v2::varint::sign_transform(v24);
  if ((a3 & 0x200000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if ((a3 & 0x100000000) == 0)
  {
LABEL_21:
    v23 = *(a2 + 232);
    goto LABEL_25;
  }

LABEL_24:
  v27 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v28;
  v23 = mimosa::v2::varint::sign_transform(v27);
  *(a2 + 232) = v23;
LABEL_25:
  *(a2 + 232) = v23 + *(a2 + 24);
  if ((a3 & 0x40000) == 0)
  {
    if ((a3 & 0x400000000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    v32 = *v6++;
    *(a2 + 248) = v32 | 0x100;
    if ((a3 & 0x200000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v30 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v31;
  *(a2 + 240) = mimosa::v2::varint::sign_transform(v30);
  if ((a3 & 0x400000000000) != 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if ((a3 & 0x200000000) == 0)
  {
LABEL_28:
    v29 = *(a2 + 312);
    goto LABEL_32;
  }

LABEL_31:
  v33 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v34;
  v29 = mimosa::v2::varint::sign_transform(v33);
  *(a2 + 312) = v29;
LABEL_32:
  *(a2 + 312) = v29 + *(a2 + 24);
  if ((a3 & 0x100000) == 0)
  {
    if ((a3 & 0x800000000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    v38 = *v6++;
    *(a2 + 328) = v38 | 0x100;
    if ((a3 & 0x4000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  v36 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v37;
  *(a2 + 320) = mimosa::v2::varint::sign_transform(v36);
  if ((a3 & 0x800000000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  if ((a3 & 0x4000000000000) == 0)
  {
LABEL_35:
    v35 = *(a2 + 344);
    goto LABEL_39;
  }

LABEL_38:
  v39 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v40;
  v35 = mimosa::v2::varint::sign_transform(v39);
  *(a2 + 344) = v35;
LABEL_39:
  *(a2 + 344) = v35 + *(a2 + 24);
  if ((a3 & 0x8000000000000) != 0)
  {
    v42 = mimosa::v2::parse_varint(v6, a5, a3);
    v6 += v43;
    *(a2 + 352) = mimosa::v2::varint::sign_transform(v42);
    if ((a3 & 0x10000000000000) == 0)
    {
LABEL_41:
      if ((a3 & 0x8000000000) == 0)
      {
        goto LABEL_42;
      }

LABEL_46:
      v45 = *v6++;
      *(a2 + 368) = v45 | 0x100;
      if ((a3 & 8) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_47;
    }
  }

  else if ((a3 & 0x10000000000000) == 0)
  {
    goto LABEL_41;
  }

  v44 = *v6++;
  *(a2 + 360) = v44 | 0x100;
  if ((a3 & 0x8000000000) != 0)
  {
    goto LABEL_46;
  }

LABEL_42:
  if ((a3 & 8) == 0)
  {
LABEL_43:
    v41 = a1[2];
    goto LABEL_48;
  }

LABEL_47:
  v46 = *v6++;
  v41 = v46;
  a1[2] = v46;
LABEL_48:
  std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize((a2 + 120), v41);
  if ((a3 & 0x2000) != 0)
  {
    v48 = *v6++;
    v47 = v48;
    a1[3] = v48;
  }

  else
  {
    v47 = a1[3];
  }

  std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize((a2 + 168), v47);
  if ((a3 & 0x80) != 0)
  {
    std::optional<std::vector<mimosa::v2::OpticalSamplesV2SubpacketState::Patch::Sample>>::emplace[abi:ne200100]<unsigned char &,void>(a2 + 88, a1 + 2);
    v51 = *(a2 + 88);
    v50 = *(a2 + 96);
    if (v51 != v50)
    {
      v52 = v51 + 16;
      while (1)
      {
        v53 = *v6;
        if (*v6)
        {
          break;
        }

        v6 += 2;
        if ((v53 & 2) != 0)
        {
          goto LABEL_58;
        }

LABEL_59:
        if ((v53 & 4) != 0)
        {
          v58 = *v6;
          v6 += 2;
          *(v52 - 12) = v58;
          *(v52 - 22) = 1;
          if ((v53 & 8) == 0)
          {
LABEL_61:
            if ((v53 & 0x10) == 0)
            {
              goto LABEL_62;
            }

            goto LABEL_74;
          }
        }

        else if ((v53 & 8) == 0)
        {
          goto LABEL_61;
        }

        v59 = *v6++;
        *(v52 - 5) = v59 | 0x100;
        if ((v53 & 0x10) == 0)
        {
LABEL_62:
          if ((v53 & 0x20) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_75;
        }

LABEL_74:
        v60 = *v6++;
        *(v52 - 4) = v60 | 0x100;
        if ((v53 & 0x20) == 0)
        {
LABEL_63:
          if ((v53 & 0x100) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_76;
        }

LABEL_75:
        v61 = *v6;
        v6 += 2;
        *(v52 - 10) = v61;
        *(v52 - 18) = 1;
        if ((v53 & 0x100) == 0)
        {
LABEL_64:
          if ((v53 & 0x400) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_77;
        }

LABEL_76:
        v62 = *v6;
        v6 += 2;
        *(v52 - 8) = v62;
        *(v52 - 14) = 1;
        if ((v53 & 0x400) == 0)
        {
LABEL_65:
          if ((v53 & 0x80) == 0)
          {
            goto LABEL_66;
          }

          goto LABEL_78;
        }

LABEL_77:
        v63 = *v6++;
        *(v52 - 1) = v63 | 0x100;
        if ((v53 & 0x80) == 0)
        {
LABEL_66:
          if ((v53 & 0x800) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_79;
        }

LABEL_78:
        v64 = *v6++;
        *(v52 - 3) = v64 | 0x100;
        if ((v53 & 0x800) == 0)
        {
LABEL_67:
          if ((v53 & 0x40) != 0)
          {
            goto LABEL_80;
          }

          goto LABEL_68;
        }

LABEL_79:
        v65 = *v6++;
        *v52 = v65 | 0x100;
        if ((v53 & 0x40) != 0)
        {
LABEL_80:
          v66 = *v6++;
          *(v52 - 6) = v66 | 0x100;
          if ((v53 & 0x200) == 0)
          {
            goto LABEL_70;
          }

LABEL_69:
          v56 = *v6++;
          *(v52 - 2) = v56 | 0x100;
          goto LABEL_70;
        }

LABEL_68:
        if ((v53 & 0x200) != 0)
        {
          goto LABEL_69;
        }

LABEL_70:
        v57 = v52 + 1;
        v52 += 17;
        if (v57 == v50)
        {
          goto LABEL_82;
        }
      }

      v54 = *(v6 + 1);
      v6 += 4;
      *(v52 - 14) = v54;
      *(v52 - 26) = 1;
      if ((v53 & 2) == 0)
      {
        goto LABEL_59;
      }

LABEL_58:
      v55 = *v6;
      v6 += 2;
      *(v52 - 16) = v55;
      *(v52 - 30) = 1;
      goto LABEL_59;
    }

LABEL_82:
    if ((a3 & 0x100) == 0)
    {
      if (a1[2])
      {
        v67 = *(a2 + 88);
        v68 = *(v67 + 4);
        if ((v68 & 0x10000) != 0)
        {
          for (i = *(a2 + 96); v67 != i; v67 += 34)
          {
            *(v67 + 4) = v68;
            *(v67 + 6) = 1;
          }
        }
      }
    }
  }

  v70 = *(a2 + 120);
  v71 = *(a2 + 128);
  if (v70 != v71)
  {
    v72 = v70 + 2;
    do
    {
      v73 = mimosa::v2::parse_varint(v6, a5, v49);
      v75 = v74;
      *(v72 - 2) = mimosa::v2::varint::sign_transform(v73);
      v76 = v72 - 2;
      v77 = &v6[v75];
      v79 = mimosa::v2::parse_varint(v77, a5, v78);
      v6 = &v77[v80];
      *(v72 - 1) = mimosa::v2::varint::sign_transform(v79);
      if ((a1[1] & 1) == 0)
      {
        v81 = mimosa::v2::parse_varint(v6, a5, v49);
        v6 += v82;
        *v72 = mimosa::v2::varint::sign_transform(v81);
      }

      v72 += 3;
    }

    while (v76 + 3 != v71);
  }

  if ((a3 & 0x800) != 0)
  {
    if ((a3 & 0x2000000) != 0)
    {
      std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::vector[abi:ne200100](&v114, *v6);
      if (*(a2 + 224) == 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 192);
      }

      v104 = v114;
      *(a2 + 192) = v114;
      *(a2 + 208) = v115;
      *(a2 + 216) = 0;
      *(a2 + 224) = 1;
      v105 = v104;
      ++v6;
      while (v105 != *(&v104 + 1))
      {
        *v105 = *v6;
        *(v105 + 2) = *(v6 + 1);
        *(v105 + 4) = v6[4];
        *(v105 + 5) = v6[5] != 0;
        v105 += 6;
        v6 += 6;
      }
    }

    else
    {
      v96 = *v6++;
      v95 = v96;
      if (*(a2 + 224) == 1)
      {
        if (*(a2 + 216) != 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 192);
          *(a2 + 216) = 1;
        }

        *(a2 + 192) = v95;
      }

      else
      {
        *(a2 + 192) = v95;
        *(a2 + 216) = 1;
        *(a2 + 224) = 1;
      }
    }
  }

  v83 = *(a2 + 168);
  v84 = *(a2 + 176);
  while (v83 != v84)
  {
    v85 = mimosa::v2::parse_varint(v6, a5, v49);
    v87 = &v6[v86];
    *v83 = mimosa::v2::varint::sign_transform(v85);
    v89 = mimosa::v2::parse_varint(v87, a5, v88);
    v91 = &v87[v90];
    v83[1] = mimosa::v2::varint::sign_transform(v89);
    v93 = mimosa::v2::parse_varint(v91, a5, v92);
    v6 = &v91[v94];
    v83[2] = mimosa::v2::varint::sign_transform(v93);
    v83 += 3;
  }

  if ((a3 & 4) != 0)
  {
    v97 = mimosa::v2::parse_varint(v6, a5, v49);
    v6 += v98;
    *(a2 + 288) = v97;
    *(a2 + 296) = 1;
    if ((a3 & 0x4000) == 0)
    {
LABEL_98:
      if ((a3 & 0x200000) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_109;
    }
  }

  else if ((a3 & 0x4000) == 0)
  {
    goto LABEL_98;
  }

  v99 = *v6;
  v6 += 8;
  *(a2 + 256) = v99;
  *(a2 + 264) = 1;
  if ((a3 & 0x200000) == 0)
  {
LABEL_99:
    if ((a3 & 0x40000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_110;
  }

LABEL_109:
  v100 = *v6;
  v6 += 8;
  *(a2 + 272) = v100;
  *(a2 + 280) = 1;
  if ((a3 & 0x40000000) == 0)
  {
LABEL_100:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_111;
  }

LABEL_110:
  v101 = *v6++;
  *(a2 + 304) = v101 | 0x100;
  if ((a3 & 0x200) == 0)
  {
    goto LABEL_128;
  }

LABEL_111:
  if ((a3 & 0x800000) != 0)
  {
    std::vector<unsigned short>::vector[abi:ne200100](&v114, a1[2]);
    if (*(a2 + 80) == 1)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 48);
    }

    v106 = v114;
    *(a2 + 48) = v114;
    *(a2 + 64) = v115;
    *(a2 + 72) = 0;
    *(a2 + 80) = 1;
    for (j = v106; j != *(&v106 + 1); ++j)
    {
      v108 = *v6;
      v6 += 2;
      *j = v108;
    }
  }

  else
  {
    v103 = *v6++;
    v102 = v103;
    if (*(a2 + 80) == 1)
    {
      if (*(a2 + 72) != 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 48);
        *(a2 + 72) = 1;
      }

      *(a2 + 48) = v102;
    }

    else
    {
      *(a2 + 48) = v102;
      *(a2 + 72) = 1;
      *(a2 + 80) = 1;
    }
  }

LABEL_128:
  if ((a3 & 0x4000000) != 0)
  {
    v110 = *v6++;
    *(a2 + 336) = v110 | 0x100;
    if ((a3 & 0x20000) == 0)
    {
LABEL_130:
      if ((a3 & 0x1000) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_137;
    }
  }

  else if ((a3 & 0x20000) == 0)
  {
    goto LABEL_130;
  }

  v111 = *v6++;
  *(a2 + 338) = v111 | 0x100;
  if ((a3 & 0x1000) == 0)
  {
LABEL_131:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

LABEL_137:
  v112 = *v6++;
  *(a2 + 340) = v112 | 0x100;
  if ((a3 & 0x400) != 0)
  {
LABEL_132:
    v109 = *v6++;
    *(a2 + 342) = v109 | 0x100;
  }

LABEL_133:
  if (&v6[(a3 >> 38) & 1] != a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "something went wrong during patch decoding");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

unint64_t mimosa::v2::PatchDecoder::extract_patch<mimosa::v2::PacketState::PatchV10>(_BYTE *a1, uint64_t a2, const byte *a3, const byte *this, byte *a5)
{
  v6 = this;
  if ((a3 & 0x20) != 0)
  {
    a1[1] ^= 1u;
    if ((a3 & 0x10) != 0)
    {
LABEL_3:
      if ((a3 & 0x8000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a3 & 0x10) != 0)
  {
    goto LABEL_3;
  }

  v11 = mimosa::v2::parse_varint(this, a5, a3);
  v6 += v12;
  *a2 = mimosa::v2::varint::sign_transform(v11);
  if ((a3 & 0x8000000) == 0)
  {
LABEL_4:
    if ((a3 & 0x20000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v13 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v14;
  *(a2 + 8) = mimosa::v2::varint::sign_transform(v13);
  if ((a3 & 0x20000000) == 0)
  {
LABEL_5:
    if (a3)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v15 = *v6++;
  *(a2 + 16) = v15 | 0x100;
  if (a3)
  {
LABEL_6:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v16 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v17;
  *(a2 + 24) = mimosa::v2::varint::sign_transform(v16);
  if ((a3 & 0x8000) == 0)
  {
LABEL_7:
    if ((a3 & 0x100000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v20 = *v6++;
    *(a2 + 40) = v20 | 0x100;
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v18 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v19;
  *(a2 + 32) = mimosa::v2::varint::sign_transform(v18);
  if ((a3 & 0x100000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((a3 & 0x80000000) == 0)
  {
LABEL_9:
    v10 = *(a2 + 144);
    goto LABEL_18;
  }

LABEL_17:
  v21 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v22;
  v10 = mimosa::v2::varint::sign_transform(v21);
  *(a2 + 144) = v10;
LABEL_18:
  *(a2 + 144) = v10 + *(a2 + 24);
  if ((a3 & 0x80000) == 0)
  {
    if ((a3 & 0x200000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v26 = *v6++;
    *(a2 + 160) = v26 | 0x100;
    if ((a3 & 0x100000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v24 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v25;
  *(a2 + 152) = mimosa::v2::varint::sign_transform(v24);
  if ((a3 & 0x200000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if ((a3 & 0x100000000) == 0)
  {
LABEL_21:
    v23 = *(a2 + 232);
    goto LABEL_25;
  }

LABEL_24:
  v27 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v28;
  v23 = mimosa::v2::varint::sign_transform(v27);
  *(a2 + 232) = v23;
LABEL_25:
  *(a2 + 232) = v23 + *(a2 + 24);
  if ((a3 & 0x40000) == 0)
  {
    if ((a3 & 0x400000000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    v32 = *v6++;
    *(a2 + 248) = v32 | 0x100;
    if ((a3 & 0x200000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v30 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v31;
  *(a2 + 240) = mimosa::v2::varint::sign_transform(v30);
  if ((a3 & 0x400000000000) != 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if ((a3 & 0x200000000) == 0)
  {
LABEL_28:
    v29 = *(a2 + 312);
    goto LABEL_32;
  }

LABEL_31:
  v33 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v34;
  v29 = mimosa::v2::varint::sign_transform(v33);
  *(a2 + 312) = v29;
LABEL_32:
  *(a2 + 312) = v29 + *(a2 + 24);
  if ((a3 & 0x100000) == 0)
  {
    if ((a3 & 0x800000000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    v38 = *v6++;
    *(a2 + 328) = v38 | 0x100;
    if ((a3 & 0x400000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  v36 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v37;
  *(a2 + 320) = mimosa::v2::varint::sign_transform(v36);
  if ((a3 & 0x800000000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  if ((a3 & 0x400000000) == 0)
  {
LABEL_35:
    v35 = *(a2 + 344);
    goto LABEL_39;
  }

LABEL_38:
  v39 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v40;
  v35 = mimosa::v2::varint::sign_transform(v39);
  *(a2 + 344) = v35;
LABEL_39:
  *(a2 + 344) = v35 + *(a2 + 24);
  if ((a3 & 0x800000000) == 0)
  {
    if ((a3 & 0x1000000000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_44:
    v44 = *v6++;
    *(a2 + 360) = v44 | 0x100;
    if ((a3 & 0x1000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  v42 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v43;
  *(a2 + 352) = mimosa::v2::varint::sign_transform(v42);
  if ((a3 & 0x1000000000000) != 0)
  {
    goto LABEL_44;
  }

LABEL_41:
  if ((a3 & 0x1000000000) == 0)
  {
LABEL_42:
    v41 = *(a2 + 376);
    goto LABEL_46;
  }

LABEL_45:
  v45 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v46;
  v41 = mimosa::v2::varint::sign_transform(v45);
  *(a2 + 376) = v41;
LABEL_46:
  *(a2 + 376) = v41 + *(a2 + 24);
  if ((a3 & 0x400000) == 0)
  {
    if ((a3 & 0x2000000000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    v50 = *v6++;
    *(a2 + 392) = v50 | 0x100;
    if ((a3 & 0x4000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_52;
  }

  v48 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v49;
  *(a2 + 384) = mimosa::v2::varint::sign_transform(v48);
  if ((a3 & 0x2000000000000) != 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  if ((a3 & 0x4000000000000) == 0)
  {
LABEL_49:
    v47 = *(a2 + 472);
    goto LABEL_53;
  }

LABEL_52:
  v51 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v52;
  v47 = mimosa::v2::varint::sign_transform(v51);
  *(a2 + 472) = v47;
LABEL_53:
  *(a2 + 472) = v47 + *(a2 + 24);
  if ((a3 & 0x8000000000000) != 0)
  {
    v54 = mimosa::v2::parse_varint(v6, a5, a3);
    v6 += v55;
    *(a2 + 480) = mimosa::v2::varint::sign_transform(v54);
    if ((a3 & 0x10000000000000) == 0)
    {
LABEL_55:
      if ((a3 & 0x8000000000) == 0)
      {
        goto LABEL_56;
      }

LABEL_60:
      v57 = *v6++;
      *(a2 + 496) = v57 | 0x100;
      if ((a3 & 8) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_61;
    }
  }

  else if ((a3 & 0x10000000000000) == 0)
  {
    goto LABEL_55;
  }

  v56 = *v6++;
  *(a2 + 488) = v56 | 0x100;
  if ((a3 & 0x8000000000) != 0)
  {
    goto LABEL_60;
  }

LABEL_56:
  if ((a3 & 8) == 0)
  {
LABEL_57:
    v53 = a1[2];
    goto LABEL_62;
  }

LABEL_61:
  v58 = *v6++;
  v53 = v58;
  a1[2] = v58;
LABEL_62:
  std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize((a2 + 120), v53);
  if ((a3 & 0x2000) != 0)
  {
    v60 = *v6++;
    v59 = v60;
    a1[3] = v60;
  }

  else
  {
    v59 = a1[3];
  }

  std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize((a2 + 168), v59);
  if ((a3 & 0x80) != 0)
  {
    std::optional<std::vector<mimosa::v2::OpticalSamplesV2SubpacketState::Patch::Sample>>::emplace[abi:ne200100]<unsigned char &,void>(a2 + 88, a1 + 2);
    v63 = *(a2 + 88);
    v62 = *(a2 + 96);
    if (v63 != v62)
    {
      v64 = v63 + 16;
      while (1)
      {
        v65 = *v6;
        if (*v6)
        {
          break;
        }

        v6 += 2;
        if ((v65 & 2) != 0)
        {
          goto LABEL_72;
        }

LABEL_73:
        if ((v65 & 4) != 0)
        {
          v70 = *v6;
          v6 += 2;
          *(v64 - 12) = v70;
          *(v64 - 22) = 1;
          if ((v65 & 8) == 0)
          {
LABEL_75:
            if ((v65 & 0x10) == 0)
            {
              goto LABEL_76;
            }

            goto LABEL_88;
          }
        }

        else if ((v65 & 8) == 0)
        {
          goto LABEL_75;
        }

        v71 = *v6++;
        *(v64 - 5) = v71 | 0x100;
        if ((v65 & 0x10) == 0)
        {
LABEL_76:
          if ((v65 & 0x20) == 0)
          {
            goto LABEL_77;
          }

          goto LABEL_89;
        }

LABEL_88:
        v72 = *v6++;
        *(v64 - 4) = v72 | 0x100;
        if ((v65 & 0x20) == 0)
        {
LABEL_77:
          if ((v65 & 0x100) == 0)
          {
            goto LABEL_78;
          }

          goto LABEL_90;
        }

LABEL_89:
        v73 = *v6;
        v6 += 2;
        *(v64 - 10) = v73;
        *(v64 - 18) = 1;
        if ((v65 & 0x100) == 0)
        {
LABEL_78:
          if ((v65 & 0x400) == 0)
          {
            goto LABEL_79;
          }

          goto LABEL_91;
        }

LABEL_90:
        v74 = *v6;
        v6 += 2;
        *(v64 - 8) = v74;
        *(v64 - 14) = 1;
        if ((v65 & 0x400) == 0)
        {
LABEL_79:
          if ((v65 & 0x80) == 0)
          {
            goto LABEL_80;
          }

          goto LABEL_92;
        }

LABEL_91:
        v75 = *v6++;
        *(v64 - 1) = v75 | 0x100;
        if ((v65 & 0x80) == 0)
        {
LABEL_80:
          if ((v65 & 0x800) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_93;
        }

LABEL_92:
        v76 = *v6++;
        *(v64 - 3) = v76 | 0x100;
        if ((v65 & 0x800) == 0)
        {
LABEL_81:
          if ((v65 & 0x40) != 0)
          {
            goto LABEL_94;
          }

          goto LABEL_82;
        }

LABEL_93:
        v77 = *v6++;
        *v64 = v77 | 0x100;
        if ((v65 & 0x40) != 0)
        {
LABEL_94:
          v78 = *v6++;
          *(v64 - 6) = v78 | 0x100;
          if ((v65 & 0x200) == 0)
          {
            goto LABEL_84;
          }

LABEL_83:
          v68 = *v6++;
          *(v64 - 2) = v68 | 0x100;
          goto LABEL_84;
        }

LABEL_82:
        if ((v65 & 0x200) != 0)
        {
          goto LABEL_83;
        }

LABEL_84:
        v69 = v64 + 1;
        v64 += 17;
        if (v69 == v62)
        {
          goto LABEL_96;
        }
      }

      v66 = *(v6 + 1);
      v6 += 4;
      *(v64 - 14) = v66;
      *(v64 - 26) = 1;
      if ((v65 & 2) == 0)
      {
        goto LABEL_73;
      }

LABEL_72:
      v67 = *v6;
      v6 += 2;
      *(v64 - 16) = v67;
      *(v64 - 30) = 1;
      goto LABEL_73;
    }

LABEL_96:
    if ((a3 & 0x100) == 0)
    {
      if (a1[2])
      {
        v79 = *(a2 + 88);
        v80 = *(v79 + 4);
        if ((v80 & 0x10000) != 0)
        {
          for (i = *(a2 + 96); v79 != i; v79 += 34)
          {
            *(v79 + 4) = v80;
            *(v79 + 6) = 1;
          }
        }
      }
    }
  }

  v82 = *(a2 + 120);
  v83 = *(a2 + 128);
  if (v82 != v83)
  {
    v84 = v82 + 2;
    do
    {
      v85 = mimosa::v2::parse_varint(v6, a5, v61);
      v87 = v86;
      *(v84 - 2) = mimosa::v2::varint::sign_transform(v85);
      v88 = v84 - 2;
      v89 = &v6[v87];
      v91 = mimosa::v2::parse_varint(v89, a5, v90);
      v6 = &v89[v92];
      *(v84 - 1) = mimosa::v2::varint::sign_transform(v91);
      if ((a1[1] & 1) == 0)
      {
        v93 = mimosa::v2::parse_varint(v6, a5, v61);
        v6 += v94;
        *v84 = mimosa::v2::varint::sign_transform(v93);
      }

      v84 += 3;
    }

    while (v88 + 3 != v83);
  }

  if ((a3 & 0x800) != 0)
  {
    if ((a3 & 0x2000000) != 0)
    {
      std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::vector[abi:ne200100](&v145, *v6);
      if (*(a2 + 224) == 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 192);
      }

      v116 = v145;
      *(a2 + 192) = v145;
      *(a2 + 208) = v146;
      *(a2 + 216) = 0;
      *(a2 + 224) = 1;
      v117 = v116;
      ++v6;
      while (v117 != *(&v116 + 1))
      {
        *v117 = *v6;
        *(v117 + 2) = *(v6 + 1);
        *(v117 + 4) = v6[4];
        *(v117 + 5) = v6[5] != 0;
        v117 += 6;
        v6 += 6;
      }
    }

    else
    {
      v108 = *v6++;
      v107 = v108;
      if (*(a2 + 224) == 1)
      {
        if (*(a2 + 216) != 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 192);
          *(a2 + 216) = 1;
        }

        *(a2 + 192) = v107;
      }

      else
      {
        *(a2 + 192) = v107;
        *(a2 + 216) = 1;
        *(a2 + 224) = 1;
      }
    }
  }

  v95 = *(a2 + 168);
  v96 = *(a2 + 176);
  while (v95 != v96)
  {
    v97 = mimosa::v2::parse_varint(v6, a5, v61);
    v99 = &v6[v98];
    *v95 = mimosa::v2::varint::sign_transform(v97);
    v101 = mimosa::v2::parse_varint(v99, a5, v100);
    v103 = &v99[v102];
    v95[1] = mimosa::v2::varint::sign_transform(v101);
    v105 = mimosa::v2::parse_varint(v103, a5, v104);
    v6 = &v103[v106];
    v95[2] = mimosa::v2::varint::sign_transform(v105);
    v95 += 3;
  }

  if ((a3 & 4) != 0)
  {
    v109 = mimosa::v2::parse_varint(v6, a5, v61);
    v6 += v110;
    *(a2 + 288) = v109;
    *(a2 + 296) = 1;
    if ((a3 & 0x4000) == 0)
    {
LABEL_112:
      if ((a3 & 0x200000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_123;
    }
  }

  else if ((a3 & 0x4000) == 0)
  {
    goto LABEL_112;
  }

  v111 = *v6;
  v6 += 8;
  *(a2 + 256) = v111;
  *(a2 + 264) = 1;
  if ((a3 & 0x200000) == 0)
  {
LABEL_113:
    if ((a3 & 0x40000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_124;
  }

LABEL_123:
  v112 = *v6;
  v6 += 8;
  *(a2 + 272) = v112;
  *(a2 + 280) = 1;
  if ((a3 & 0x40000000) == 0)
  {
LABEL_114:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_125;
  }

LABEL_124:
  v113 = *v6++;
  *(a2 + 304) = v113 | 0x100;
  if ((a3 & 0x200) == 0)
  {
    goto LABEL_142;
  }

LABEL_125:
  if ((a3 & 0x800000) != 0)
  {
    std::vector<unsigned short>::vector[abi:ne200100](&v145, a1[2]);
    if (*(a2 + 80) == 1)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 48);
    }

    v118 = v145;
    *(a2 + 48) = v145;
    *(a2 + 64) = v146;
    *(a2 + 72) = 0;
    *(a2 + 80) = 1;
    for (j = v118; j != *(&v118 + 1); ++j)
    {
      v120 = *v6;
      v6 += 2;
      *j = v120;
    }
  }

  else
  {
    v115 = *v6++;
    v114 = v115;
    if (*(a2 + 80) == 1)
    {
      if (*(a2 + 72) != 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 48);
        *(a2 + 72) = 1;
      }

      *(a2 + 48) = v114;
    }

    else
    {
      *(a2 + 48) = v114;
      *(a2 + 72) = 1;
      *(a2 + 80) = 1;
    }
  }

LABEL_142:
  if ((a3 & 0x4000000) != 0)
  {
    v123 = *v6++;
    *(a2 + 336) = v123 | 0x100;
    if ((a3 & 0x20000) == 0)
    {
LABEL_144:
      if ((a3 & 0x1000) == 0)
      {
        goto LABEL_145;
      }

      goto LABEL_153;
    }
  }

  else if ((a3 & 0x20000) == 0)
  {
    goto LABEL_144;
  }

  v124 = *v6++;
  *(a2 + 338) = v124 | 0x100;
  if ((a3 & 0x1000) == 0)
  {
LABEL_145:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_146;
  }

LABEL_153:
  v125 = *v6++;
  *(a2 + 340) = v125 | 0x100;
  if ((a3 & 0x400) != 0)
  {
LABEL_146:
    v121 = *v6++;
    *(a2 + 342) = v121 | 0x100;
  }

LABEL_147:
  v122 = &v6[(a3 >> 38) & 1];
  if ((a3 & 0x40000000000) == 0)
  {
    if ((a3 & 2) == 0)
    {
      goto LABEL_149;
    }

LABEL_156:
    v127 = mimosa::v2::parse_varint(v122, a5, v61);
    v122 += v128;
    *(a2 + 372) = mimosa::v2::varint::sign_transform(v127);
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_157;
  }

  v126 = *v122;
  v122 += 2;
  *(a2 + 368) = v126;
  *(a2 + 370) = 1;
  if ((a3 & 2) != 0)
  {
    goto LABEL_156;
  }

LABEL_149:
  if ((a3 & 0x10000) == 0)
  {
    goto LABEL_165;
  }

LABEL_157:
  if ((a3 & 0x1000000) != 0)
  {
    v131 = (a2 + 448);
    *(a2 + 448) = 0;
    *(a2 + 456) = 0;
    *(a2 + 464) = 1;
    v132 = 12;
    do
    {
      v133 = *v122;
      v122 += 2;
      *v131++ = v133;
      v132 -= 2;
    }

    while (v132);
LABEL_165:
    if ((a3 & 0x40) != 0)
    {
      goto LABEL_166;
    }

    goto LABEL_167;
  }

  v130 = *v122++;
  v129 = v130;
  if (*(a2 + 464) != 1)
  {
    *(a2 + 448) = v129;
    *(a2 + 460) = 1;
    *(a2 + 464) = 1;
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_166;
  }

  if (*(a2 + 460) != 1)
  {
    *(a2 + 460) = 1;
  }

  *(a2 + 448) = v129;
  if ((a3 & 0x40) != 0)
  {
LABEL_166:
    v134 = *v122;
    v122 += 2;
    *(a2 + 468) = v134;
    *(a2 + 470) = 1;
  }

LABEL_167:
  result = mimosa::v2::parse_varint(v122, a5, v61);
  v137 = result;
  v138 = 0;
  v140 = &v122[v139];
  v141 = a2 + 400;
  do
  {
    if (v137)
    {
      v142 = mimosa::v2::parse_varint(v140, a5, v136);
      v140 += v143;
      result = mimosa::v2::varint::sign_transform(v142);
      *(v141 + v138) = result;
    }

    v137 >>= 1;
    v138 += 8;
  }

  while (v138 != 48);
  if (v140 != a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "something went wrong during patch decoding");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

unint64_t mimosa::v2::PatchDecoder::extract_patch<mimosa::v2::PacketState::PatchV11>(_BYTE *a1, uint64_t a2, const byte *a3, const byte *this, byte *a5)
{
  v6 = this;
  if ((a3 & 0x20) != 0)
  {
    a1[1] ^= 1u;
    if ((a3 & 0x10) != 0)
    {
LABEL_3:
      if ((a3 & 0x8000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a3 & 0x10) != 0)
  {
    goto LABEL_3;
  }

  v11 = mimosa::v2::parse_varint(this, a5, a3);
  v6 += v12;
  *a2 = mimosa::v2::varint::sign_transform(v11);
  if ((a3 & 0x8000000) == 0)
  {
LABEL_4:
    if ((a3 & 0x20000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v13 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v14;
  *(a2 + 8) = mimosa::v2::varint::sign_transform(v13);
  if ((a3 & 0x20000000) == 0)
  {
LABEL_5:
    if (a3)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v15 = *v6++;
  *(a2 + 16) = v15 | 0x100;
  if (a3)
  {
LABEL_6:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v16 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v17;
  *(a2 + 24) = mimosa::v2::varint::sign_transform(v16);
  if ((a3 & 0x8000) == 0)
  {
LABEL_7:
    if ((a3 & 0x100000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v20 = *v6++;
    *(a2 + 40) = v20 | 0x100;
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v18 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v19;
  *(a2 + 32) = mimosa::v2::varint::sign_transform(v18);
  if ((a3 & 0x100000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((a3 & 0x80000000) == 0)
  {
LABEL_9:
    v10 = *(a2 + 144);
    goto LABEL_18;
  }

LABEL_17:
  v21 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v22;
  v10 = mimosa::v2::varint::sign_transform(v21);
  *(a2 + 144) = v10;
LABEL_18:
  *(a2 + 144) = v10 + *(a2 + 24);
  if ((a3 & 0x80000) == 0)
  {
    if ((a3 & 0x200000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v26 = *v6++;
    *(a2 + 160) = v26 | 0x100;
    if ((a3 & 0x100000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v24 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v25;
  *(a2 + 152) = mimosa::v2::varint::sign_transform(v24);
  if ((a3 & 0x200000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if ((a3 & 0x100000000) == 0)
  {
LABEL_21:
    v23 = *(a2 + 232);
    goto LABEL_25;
  }

LABEL_24:
  v27 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v28;
  v23 = mimosa::v2::varint::sign_transform(v27);
  *(a2 + 232) = v23;
LABEL_25:
  *(a2 + 232) = v23 + *(a2 + 24);
  if ((a3 & 0x40000) == 0)
  {
    if ((a3 & 0x400000000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    v32 = *v6++;
    *(a2 + 248) = v32 | 0x100;
    if ((a3 & 0x200000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v30 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v31;
  *(a2 + 240) = mimosa::v2::varint::sign_transform(v30);
  if ((a3 & 0x400000000000) != 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if ((a3 & 0x200000000) == 0)
  {
LABEL_28:
    v29 = *(a2 + 312);
    goto LABEL_32;
  }

LABEL_31:
  v33 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v34;
  v29 = mimosa::v2::varint::sign_transform(v33);
  *(a2 + 312) = v29;
LABEL_32:
  *(a2 + 312) = v29 + *(a2 + 24);
  if ((a3 & 0x100000) == 0)
  {
    if ((a3 & 0x800000000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    v38 = *v6++;
    *(a2 + 328) = v38 | 0x100;
    if ((a3 & 0x400000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  v36 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v37;
  *(a2 + 320) = mimosa::v2::varint::sign_transform(v36);
  if ((a3 & 0x800000000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  if ((a3 & 0x400000000) == 0)
  {
LABEL_35:
    v35 = *(a2 + 344);
    goto LABEL_39;
  }

LABEL_38:
  v39 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v40;
  v35 = mimosa::v2::varint::sign_transform(v39);
  *(a2 + 344) = v35;
LABEL_39:
  *(a2 + 344) = v35 + *(a2 + 24);
  if ((a3 & 0x800000000) == 0)
  {
    if ((a3 & 0x1000000000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_44:
    v44 = *v6++;
    *(a2 + 360) = v44 | 0x100;
    if ((a3 & 0x1000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  v42 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v43;
  *(a2 + 352) = mimosa::v2::varint::sign_transform(v42);
  if ((a3 & 0x1000000000000) != 0)
  {
    goto LABEL_44;
  }

LABEL_41:
  if ((a3 & 0x1000000000) == 0)
  {
LABEL_42:
    v41 = *(a2 + 376);
    goto LABEL_46;
  }

LABEL_45:
  v45 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v46;
  v41 = mimosa::v2::varint::sign_transform(v45);
  *(a2 + 376) = v41;
LABEL_46:
  *(a2 + 376) = v41 + *(a2 + 24);
  if ((a3 & 0x400000) == 0)
  {
    if ((a3 & 0x2000000000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    v50 = *v6++;
    *(a2 + 392) = v50 | 0x100;
    if ((a3 & 0x4000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_52;
  }

  v48 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v49;
  *(a2 + 384) = mimosa::v2::varint::sign_transform(v48);
  if ((a3 & 0x2000000000000) != 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  if ((a3 & 0x4000000000000) == 0)
  {
LABEL_49:
    v47 = *(a2 + 504);
    goto LABEL_53;
  }

LABEL_52:
  v51 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v52;
  v47 = mimosa::v2::varint::sign_transform(v51);
  *(a2 + 504) = v47;
LABEL_53:
  *(a2 + 504) = v47 + *(a2 + 24);
  if ((a3 & 0x8000000000000) != 0)
  {
    v54 = mimosa::v2::parse_varint(v6, a5, a3);
    v6 += v55;
    *(a2 + 512) = mimosa::v2::varint::sign_transform(v54);
    if ((a3 & 0x10000000000000) == 0)
    {
LABEL_55:
      if ((a3 & 0x8000000000) == 0)
      {
        goto LABEL_56;
      }

LABEL_60:
      v57 = *v6++;
      *(a2 + 528) = v57 | 0x100;
      if ((a3 & 8) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_61;
    }
  }

  else if ((a3 & 0x10000000000000) == 0)
  {
    goto LABEL_55;
  }

  v56 = *v6++;
  *(a2 + 520) = v56 | 0x100;
  if ((a3 & 0x8000000000) != 0)
  {
    goto LABEL_60;
  }

LABEL_56:
  if ((a3 & 8) == 0)
  {
LABEL_57:
    v53 = a1[2];
    goto LABEL_62;
  }

LABEL_61:
  v58 = *v6++;
  v53 = v58;
  a1[2] = v58;
LABEL_62:
  std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize((a2 + 120), v53);
  if ((a3 & 0x2000) != 0)
  {
    v60 = *v6++;
    v59 = v60;
    a1[3] = v60;
  }

  else
  {
    v59 = a1[3];
  }

  std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize((a2 + 168), v59);
  if ((a3 & 0x80) != 0)
  {
    std::optional<std::vector<mimosa::v2::OpticalSamplesV2SubpacketState::Patch::Sample>>::emplace[abi:ne200100]<unsigned char &,void>(a2 + 88, a1 + 2);
    v63 = *(a2 + 88);
    v62 = *(a2 + 96);
    if (v63 != v62)
    {
      v64 = v63 + 16;
      while (1)
      {
        v65 = *v6;
        if (*v6)
        {
          break;
        }

        v6 += 2;
        if ((v65 & 2) != 0)
        {
          goto LABEL_72;
        }

LABEL_73:
        if ((v65 & 4) != 0)
        {
          v70 = *v6;
          v6 += 2;
          *(v64 - 12) = v70;
          *(v64 - 22) = 1;
          if ((v65 & 8) == 0)
          {
LABEL_75:
            if ((v65 & 0x10) == 0)
            {
              goto LABEL_76;
            }

            goto LABEL_88;
          }
        }

        else if ((v65 & 8) == 0)
        {
          goto LABEL_75;
        }

        v71 = *v6++;
        *(v64 - 5) = v71 | 0x100;
        if ((v65 & 0x10) == 0)
        {
LABEL_76:
          if ((v65 & 0x20) == 0)
          {
            goto LABEL_77;
          }

          goto LABEL_89;
        }

LABEL_88:
        v72 = *v6++;
        *(v64 - 4) = v72 | 0x100;
        if ((v65 & 0x20) == 0)
        {
LABEL_77:
          if ((v65 & 0x100) == 0)
          {
            goto LABEL_78;
          }

          goto LABEL_90;
        }

LABEL_89:
        v73 = *v6;
        v6 += 2;
        *(v64 - 10) = v73;
        *(v64 - 18) = 1;
        if ((v65 & 0x100) == 0)
        {
LABEL_78:
          if ((v65 & 0x400) == 0)
          {
            goto LABEL_79;
          }

          goto LABEL_91;
        }

LABEL_90:
        v74 = *v6;
        v6 += 2;
        *(v64 - 8) = v74;
        *(v64 - 14) = 1;
        if ((v65 & 0x400) == 0)
        {
LABEL_79:
          if ((v65 & 0x80) == 0)
          {
            goto LABEL_80;
          }

          goto LABEL_92;
        }

LABEL_91:
        v75 = *v6++;
        *(v64 - 1) = v75 | 0x100;
        if ((v65 & 0x80) == 0)
        {
LABEL_80:
          if ((v65 & 0x800) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_93;
        }

LABEL_92:
        v76 = *v6++;
        *(v64 - 3) = v76 | 0x100;
        if ((v65 & 0x800) == 0)
        {
LABEL_81:
          if ((v65 & 0x40) != 0)
          {
            goto LABEL_94;
          }

          goto LABEL_82;
        }

LABEL_93:
        v77 = *v6++;
        *v64 = v77 | 0x100;
        if ((v65 & 0x40) != 0)
        {
LABEL_94:
          v78 = *v6++;
          *(v64 - 6) = v78 | 0x100;
          if ((v65 & 0x200) == 0)
          {
            goto LABEL_84;
          }

LABEL_83:
          v68 = *v6++;
          *(v64 - 2) = v68 | 0x100;
          goto LABEL_84;
        }

LABEL_82:
        if ((v65 & 0x200) != 0)
        {
          goto LABEL_83;
        }

LABEL_84:
        v69 = v64 + 1;
        v64 += 17;
        if (v69 == v62)
        {
          goto LABEL_96;
        }
      }

      v66 = *(v6 + 1);
      v6 += 4;
      *(v64 - 14) = v66;
      *(v64 - 26) = 1;
      if ((v65 & 2) == 0)
      {
        goto LABEL_73;
      }

LABEL_72:
      v67 = *v6;
      v6 += 2;
      *(v64 - 16) = v67;
      *(v64 - 30) = 1;
      goto LABEL_73;
    }

LABEL_96:
    if ((a3 & 0x100) == 0)
    {
      if (a1[2])
      {
        v79 = *(a2 + 88);
        v80 = *(v79 + 4);
        if ((v80 & 0x10000) != 0)
        {
          for (i = *(a2 + 96); v79 != i; v79 += 34)
          {
            *(v79 + 4) = v80;
            *(v79 + 6) = 1;
          }
        }
      }
    }
  }

  v82 = *(a2 + 120);
  v83 = *(a2 + 128);
  if (v82 != v83)
  {
    v84 = v82 + 2;
    do
    {
      v85 = mimosa::v2::parse_varint(v6, a5, v61);
      v87 = v86;
      *(v84 - 2) = mimosa::v2::varint::sign_transform(v85);
      v88 = v84 - 2;
      v89 = &v6[v87];
      v91 = mimosa::v2::parse_varint(v89, a5, v90);
      v6 = &v89[v92];
      *(v84 - 1) = mimosa::v2::varint::sign_transform(v91);
      if ((a1[1] & 1) == 0)
      {
        v93 = mimosa::v2::parse_varint(v6, a5, v61);
        v6 += v94;
        *v84 = mimosa::v2::varint::sign_transform(v93);
      }

      v84 += 3;
    }

    while (v88 + 3 != v83);
  }

  if ((a3 & 0x800) != 0)
  {
    if ((a3 & 0x2000000) != 0)
    {
      std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::vector[abi:ne200100](&v145, *v6);
      if (*(a2 + 224) == 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 192);
      }

      v116 = v145;
      *(a2 + 192) = v145;
      *(a2 + 208) = v146;
      *(a2 + 216) = 0;
      *(a2 + 224) = 1;
      v117 = v116;
      ++v6;
      while (v117 != *(&v116 + 1))
      {
        *v117 = *v6;
        *(v117 + 2) = *(v6 + 1);
        *(v117 + 4) = v6[4];
        *(v117 + 5) = v6[5] != 0;
        v117 += 6;
        v6 += 6;
      }
    }

    else
    {
      v108 = *v6++;
      v107 = v108;
      if (*(a2 + 224) == 1)
      {
        if (*(a2 + 216) != 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 192);
          *(a2 + 216) = 1;
        }

        *(a2 + 192) = v107;
      }

      else
      {
        *(a2 + 192) = v107;
        *(a2 + 216) = 1;
        *(a2 + 224) = 1;
      }
    }
  }

  v95 = *(a2 + 168);
  v96 = *(a2 + 176);
  while (v95 != v96)
  {
    v97 = mimosa::v2::parse_varint(v6, a5, v61);
    v99 = &v6[v98];
    *v95 = mimosa::v2::varint::sign_transform(v97);
    v101 = mimosa::v2::parse_varint(v99, a5, v100);
    v103 = &v99[v102];
    v95[1] = mimosa::v2::varint::sign_transform(v101);
    v105 = mimosa::v2::parse_varint(v103, a5, v104);
    v6 = &v103[v106];
    v95[2] = mimosa::v2::varint::sign_transform(v105);
    v95 += 3;
  }

  if ((a3 & 4) != 0)
  {
    v109 = mimosa::v2::parse_varint(v6, a5, v61);
    v6 += v110;
    *(a2 + 288) = v109;
    *(a2 + 296) = 1;
    if ((a3 & 0x4000) == 0)
    {
LABEL_112:
      if ((a3 & 0x200000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_123;
    }
  }

  else if ((a3 & 0x4000) == 0)
  {
    goto LABEL_112;
  }

  v111 = *v6;
  v6 += 8;
  *(a2 + 256) = v111;
  *(a2 + 264) = 1;
  if ((a3 & 0x200000) == 0)
  {
LABEL_113:
    if ((a3 & 0x40000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_124;
  }

LABEL_123:
  v112 = *v6;
  v6 += 8;
  *(a2 + 272) = v112;
  *(a2 + 280) = 1;
  if ((a3 & 0x40000000) == 0)
  {
LABEL_114:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_125;
  }

LABEL_124:
  v113 = *v6++;
  *(a2 + 304) = v113 | 0x100;
  if ((a3 & 0x200) == 0)
  {
    goto LABEL_142;
  }

LABEL_125:
  if ((a3 & 0x800000) != 0)
  {
    std::vector<unsigned short>::vector[abi:ne200100](&v145, a1[2]);
    if (*(a2 + 80) == 1)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 48);
    }

    v118 = v145;
    *(a2 + 48) = v145;
    *(a2 + 64) = v146;
    *(a2 + 72) = 0;
    *(a2 + 80) = 1;
    for (j = v118; j != *(&v118 + 1); ++j)
    {
      v120 = *v6;
      v6 += 2;
      *j = v120;
    }
  }

  else
  {
    v115 = *v6++;
    v114 = v115;
    if (*(a2 + 80) == 1)
    {
      if (*(a2 + 72) != 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 48);
        *(a2 + 72) = 1;
      }

      *(a2 + 48) = v114;
    }

    else
    {
      *(a2 + 48) = v114;
      *(a2 + 72) = 1;
      *(a2 + 80) = 1;
    }
  }

LABEL_142:
  if ((a3 & 0x4000000) != 0)
  {
    v123 = *v6++;
    *(a2 + 336) = v123 | 0x100;
    if ((a3 & 0x20000) == 0)
    {
LABEL_144:
      if ((a3 & 0x1000) == 0)
      {
        goto LABEL_145;
      }

      goto LABEL_153;
    }
  }

  else if ((a3 & 0x20000) == 0)
  {
    goto LABEL_144;
  }

  v124 = *v6++;
  *(a2 + 338) = v124 | 0x100;
  if ((a3 & 0x1000) == 0)
  {
LABEL_145:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_146;
  }

LABEL_153:
  v125 = *v6++;
  *(a2 + 340) = v125 | 0x100;
  if ((a3 & 0x400) != 0)
  {
LABEL_146:
    v121 = *v6++;
    *(a2 + 342) = v121 | 0x100;
  }

LABEL_147:
  v122 = &v6[(a3 >> 38) & 1];
  if ((a3 & 0x40000000000) == 0)
  {
    if ((a3 & 2) == 0)
    {
      goto LABEL_149;
    }

LABEL_156:
    v127 = mimosa::v2::parse_varint(v122, a5, v61);
    v122 += v128;
    *(a2 + 372) = mimosa::v2::varint::sign_transform(v127);
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_157;
  }

  v126 = *v122;
  v122 += 2;
  *(a2 + 368) = v126;
  *(a2 + 370) = 1;
  if ((a3 & 2) != 0)
  {
    goto LABEL_156;
  }

LABEL_149:
  if ((a3 & 0x10000) == 0)
  {
    goto LABEL_165;
  }

LABEL_157:
  if ((a3 & 0x1000000) != 0)
  {
    v131 = (a2 + 472);
    *(a2 + 472) = 0;
    *(a2 + 480) = 0;
    *(a2 + 488) = 0;
    *(a2 + 492) = 0;
    v132 = 18;
    *(a2 + 496) = 1;
    do
    {
      v133 = *v122;
      v122 += 2;
      *v131++ = v133;
      v132 -= 2;
    }

    while (v132);
LABEL_165:
    if ((a3 & 0x40) != 0)
    {
      goto LABEL_166;
    }

    goto LABEL_167;
  }

  v130 = *v122++;
  v129 = v130;
  if (*(a2 + 496) != 1)
  {
    *(a2 + 472) = v129;
    *(a2 + 492) = 1;
    *(a2 + 496) = 1;
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_166;
  }

  if (*(a2 + 492) != 1)
  {
    *(a2 + 492) = 1;
  }

  *(a2 + 472) = v129;
  if ((a3 & 0x40) != 0)
  {
LABEL_166:
    v134 = *v122;
    v122 += 2;
    *(a2 + 500) = v134;
    *(a2 + 502) = 1;
  }

LABEL_167:
  result = mimosa::v2::parse_varint(v122, a5, v61);
  v137 = result;
  v138 = 0;
  v140 = &v122[v139];
  v141 = a2 + 400;
  do
  {
    if (v137)
    {
      v142 = mimosa::v2::parse_varint(v140, a5, v136);
      v140 += v143;
      result = mimosa::v2::varint::sign_transform(v142);
      *(v141 + v138) = result;
    }

    v137 >>= 1;
    v138 += 8;
  }

  while (v138 != 72);
  if (v140 != a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "something went wrong during patch decoding");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(std::variant<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t mimosa::v2::PacketState::update(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v2 = *(a2 + 552);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (off_286352CF8[v2])(&v5);
}

{
  v4 = a1;
  v2 = *(a2 + 320);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (off_286352D58[v2])(&v5);
}

double mimosa::v2::PacketState::update_@<D0>(mimosa::v2::PacketState *this@<X0>, const mimosa::v2::PacketState::PatchV1 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = (a3 + 16);
  *(a3 + 12) = 0;
  *(a3 + 24) = 0;
  *(a3 + 28) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 61) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0;
  *a3 = mimosa::v2::ContainerHeaderState::update(this, a2);
  *(a3 + 8) = v7;
  mimosa::v2::OpticalSamplesV1SubpacketState::update((this + 40), (a2 + 24), &v14);
  v8 = v15;
  *v6 = v14;
  v9 = v16;
  *(a3 + 32) = v8;
  *(a3 + 48) = v9;
  mimosa::v2::AccelSubpacketState::update((this + 280), (a2 + 104), &v14);
  v10 = v15;
  *(a3 + 56) = v14;
  v11 = v16;
  *(a3 + 72) = v10;
  *(a3 + 88) = v11;
  mimosa::v2::AlgsResponseV1SubpacketState::update(this + 400, a2 + 192, &v14);
  v12 = v15;
  *(a3 + 96) = v14;
  *(a3 + 112) = v12;
  result = *&v16;
  *(a3 + 128) = v16;
  return result;
}

double mimosa::v2::PacketState::update_@<D0>(mimosa::v2::PacketState *this@<X0>, const mimosa::v2::PacketState::PatchV2 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = 0;
  v6 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 28) = 0;
  *(a3 + 32) = 0u;
  v7 = (a3 + 32);
  *(a3 + 48) = 0u;
  *(a3 + 61) = 0;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 149) = 0;
  *(a3 + 72) = 0u;
  v8 = (a3 + 72);
  *(a3 + 168) = 0;
  *(a3 + 176) = 0;
  *(a3 + 160) = 0;
  v9 = (a3 + 160);
  *(a3 + 192) = 0u;
  v10 = a3 + 192;
  *(a3 + 184) = 0;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 208) = 0u;
  *a3 = mimosa::v2::ContainerHeaderState::update(this, a2);
  *(a3 + 8) = v11;
  mimosa::v2::OpticalDecoderV1SubpacketState::update(this + 616, a2 + 272, &v20);
  *(v10 - 48) = v20;
  v12 = *v9;
  if (*v9)
  {
    *(a3 + 168) = v12;
    operator delete(v12);
  }

  *(a3 + 160) = v21;
  *(a3 + 176) = v22;
  *&v22 = 0;
  v21 = 0uLL;
  *(a3 + 184) = WORD4(v22);
  mimosa::v2::OpticalSamplesV1SubpacketState::update(this + 40, a2 + 24, v9, &v20);
  *v6 = v20;
  v13 = *v7;
  if (*v7)
  {
    *(a3 + 40) = v13;
    operator delete(v13);
  }

  *(a3 + 32) = v21;
  *(a3 + 48) = v22;
  mimosa::v2::AccelSubpacketState::update((this + 280), (a2 + 104), &v20);
  *(v10 - 136) = v20;
  v14 = *v8;
  if (*v8)
  {
    *(a3 + 80) = v14;
    operator delete(v14);
  }

  *(a3 + 72) = v21;
  *(a3 + 88) = v22;
  mimosa::v2::AlgsResponseV1SubpacketState::update(this + 400, a2 + 192, &v20);
  v15 = (v10 - 96);
  v16 = v21;
  *v15 = v20;
  v15[1] = v16;
  v15[2] = v22;
  mimosa::v2::TemperatureSubpacketState::update(this + 920, a2 + 344, &v20);
  *v10 = v20;
  *(v10 + 16) = v21;
  mimosa::v2::WavelengthV2SubpacketState::update(this + 968, a2 + 376, &v20);
  v17 = v20;
  *(a3 + 232) = v21;
  result = *&v22;
  v19 = v23;
  *(a3 + 248) = v22;
  *(a3 + 280) = v24;
  *(a3 + 216) = v17;
  *(a3 + 264) = v19;
  return result;
}

double mimosa::v2::PacketState::update_@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = 0;
  v6 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 28) = 0;
  *(a3 + 32) = 0u;
  v7 = (a3 + 32);
  *(a3 + 72) = 0u;
  v8 = (a3 + 72);
  *(a3 + 160) = 0u;
  v9 = (a3 + 160);
  *(a3 + 48) = 0u;
  *(a3 + 61) = 0;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 149) = 0;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0;
  *a3 = mimosa::v2::ContainerHeaderState::update(a1, a2);
  *(a3 + 8) = v10;
  mimosa::v2::OpticalDecoderV2SubpacketState::update(a1 + 712, a2 + 272, &v17);
  *(a3 + 144) = v17;
  v11 = *v9;
  if (*v9)
  {
    *(a3 + 168) = v11;
    operator delete(v11);
  }

  *(a3 + 160) = v18;
  v12 = *(&v19 + 1);
  *(a3 + 176) = v19;
  *(a3 + 184) = v12;
  *(a3 + 192) = v20;
  mimosa::v2::OpticalSamplesV1SubpacketState::update(a1 + 40, a2 + 24, v9, &v17);
  *v6 = v17;
  v13 = *v7;
  if (*v7)
  {
    *(a3 + 40) = v13;
    operator delete(v13);
  }

  *(a3 + 32) = v18;
  *(a3 + 48) = v19;
  mimosa::v2::AccelSubpacketState::update((a1 + 280), (a2 + 104), &v17);
  *(a3 + 56) = v17;
  v14 = *v8;
  if (*v8)
  {
    *(a3 + 80) = v14;
    operator delete(v14);
  }

  *(a3 + 72) = v18;
  *(a3 + 88) = v19;
  mimosa::v2::AlgsResponseV2SubpacketState::update(a1 + 472, a2 + 192, &v17);
  v15 = v18;
  *(a3 + 96) = v17;
  *(a3 + 112) = v15;
  result = *&v19;
  *(a3 + 128) = v19;
  return result;
}

{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = 0;
  v6 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 28) = 0;
  *(a3 + 32) = 0u;
  v7 = (a3 + 32);
  *(a3 + 48) = 0u;
  *(a3 + 61) = 0;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 149) = 0;
  *(a3 + 72) = 0u;
  v8 = (a3 + 72);
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0;
  *(a3 + 160) = 0u;
  v9 = (a3 + 160);
  *(a3 + 200) = 0u;
  v10 = a3 + 200;
  *(a3 + 312) = 0;
  *(a3 + 280) = 0u;
  *(a3 + 296) = 0u;
  *(a3 + 248) = 0u;
  *(a3 + 264) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 232) = 0u;
  *a3 = mimosa::v2::ContainerHeaderState::update(a1, a2);
  *(a3 + 8) = v11;
  mimosa::v2::OpticalDecoderV2SubpacketState::update(a1 + 712, a2 + 272, &v22);
  *(v10 - 56) = v22;
  v12 = *v9;
  if (*v9)
  {
    *(a3 + 168) = v12;
    operator delete(v12);
  }

  *(a3 + 160) = v23;
  v13 = *(&v24 + 1);
  *(a3 + 176) = v24;
  *(v10 - 16) = v13;
  *(v10 - 8) = v25;
  mimosa::v2::OpticalSamplesV1SubpacketState::update(a1 + 40, a2 + 24, v9, &v22);
  *v6 = v22;
  v14 = *v7;
  if (*v7)
  {
    *(a3 + 40) = v14;
    operator delete(v14);
  }

  *(a3 + 32) = v23;
  *(a3 + 48) = v24;
  mimosa::v2::AccelSubpacketState::update((a1 + 280), (a2 + 104), &v22);
  *(v10 - 144) = v22;
  v15 = *v8;
  if (*v8)
  {
    *(a3 + 80) = v15;
    operator delete(v15);
  }

  *(a3 + 72) = v23;
  *(a3 + 88) = v24;
  mimosa::v2::AlgsResponseV2SubpacketState::update(a1 + 472, a2 + 192, &v22);
  v16 = (v10 - 104);
  v17 = v23;
  *v16 = v22;
  v16[1] = v17;
  v16[2] = v24;
  mimosa::v2::TemperatureSubpacketState::update(a1 + 920, a2 + 360, &v22);
  *v10 = v22;
  *(v10 + 16) = v23;
  mimosa::v2::WavelengthV3SubpacketState::update(a1 + 1120, a2 + 392, &v22);
  v18 = v25;
  *(a3 + 256) = v24;
  *(a3 + 272) = v18;
  v19 = v27;
  *(a3 + 288) = v26;
  *(a3 + 304) = v19;
  result = *&v22;
  v21 = v23;
  *(a3 + 224) = v22;
  *(a3 + 240) = v21;
  return result;
}

{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = 0;
  v6 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 28) = 0;
  *(a3 + 200) = 0u;
  v7 = (a3 + 200);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 61) = 0;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 248) = 0u;
  *(a3 + 312) = 0;
  *(a3 + 72) = 0u;
  v8 = (a3 + 72);
  v8[12] = 0u;
  v8[13] = 0u;
  v8[14] = 0u;
  *a3 = mimosa::v2::ContainerHeaderState::update(a1, a2);
  *(a3 + 8) = v9;
  mimosa::v2::OpticalDecoderV3SubpacketState::update(a1 + 816, a2 + 312, &v20);
  v10 = v21;
  *(a3 + 144) = v20;
  *(a3 + 160) = v10;
  mimosa::v2::OpticalSamplesV2SubpacketState::update((a1 + 144), (a2 + 24), *(a3 + 168), *(a3 + 169), &v20);
  v11 = v21;
  *v6 = v20;
  v12 = v22;
  *(a3 + 32) = v11;
  *(a3 + 48) = v12;
  mimosa::v2::AccelSubpacketState::update((a1 + 280), (a2 + 144), &v20);
  v13 = v21;
  *(a3 + 56) = v20;
  v14 = v22;
  *(a3 + 72) = v13;
  *(a3 + 88) = v14;
  mimosa::v2::AlgsResponseV2SubpacketState::update(a1 + 472, a2 + 232, &v20);
  v15 = v21;
  *(a3 + 96) = v20;
  *(a3 + 112) = v15;
  *(a3 + 128) = v22;
  mimosa::v2::TemperatureSubpacketState::update(a1 + 920, a2 + 360, &v20);
  *(a3 + 176) = v20;
  *(a3 + 192) = v21;
  mimosa::v2::WavelengthV3SubpacketState::update(a1 + 1120, a2 + 392, &v20);
  v16 = v23;
  v7[2] = v22;
  v7[3] = v16;
  v17 = v25;
  v7[4] = v24;
  v7[5] = v17;
  v18 = v21;
  *v7 = v20;
  v7[1] = v18;
  mimosa::v2::OpticalScalarsSubpacketState::update(a1 + 1272, a2 + 520, &v20);
  *(a3 + 312) = v21;
  result = *&v20;
  *(a3 + 296) = v20;
  return result;
}

{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = 0;
  v6 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 28) = 0;
  *(a3 + 200) = 0u;
  v7 = (a3 + 200);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 61) = 0;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 248) = 0u;
  *(a3 + 312) = 0;
  *(a3 + 72) = 0u;
  v8 = (a3 + 72);
  v8[12] = 0u;
  v8[13] = 0u;
  v8[14] = 0u;
  *a3 = mimosa::v2::ContainerHeaderState::update(a1, a2);
  *(a3 + 8) = v9;
  mimosa::v2::OpticalDecoderV3SubpacketState::update(a1 + 816, a2 + 312, &v20);
  v10 = v21;
  *(a3 + 144) = v20;
  *(a3 + 160) = v10;
  mimosa::v2::OpticalSamplesV2SubpacketState::update((a1 + 144), (a2 + 24), *(a3 + 168), *(a3 + 169), &v20);
  v11 = v21;
  *v6 = v20;
  v12 = v22;
  *(a3 + 32) = v11;
  *(a3 + 48) = v12;
  mimosa::v2::AccelSubpacketState::update((a1 + 280), (a2 + 144), &v20);
  v13 = v21;
  *(a3 + 56) = v20;
  v14 = v22;
  *(a3 + 72) = v13;
  *(a3 + 88) = v14;
  mimosa::v2::AlgsResponseV2SubpacketState::update(a1 + 472, a2 + 232, &v20);
  v15 = v21;
  *(a3 + 96) = v20;
  *(a3 + 112) = v15;
  *(a3 + 128) = v22;
  mimosa::v2::TemperatureSubpacketState::update(a1 + 920, a2 + 360, &v20);
  *(a3 + 176) = v20;
  *(a3 + 192) = v21;
  mimosa::v2::WavelengthV3SubpacketState::update(a1 + 1120, a2 + 392, &v20);
  v16 = v23;
  v7[2] = v22;
  v7[3] = v16;
  v17 = v25;
  v7[4] = v24;
  v7[5] = v17;
  v18 = v21;
  *v7 = v20;
  v7[1] = v18;
  mimosa::v2::OpticalScalarsSubpacketState::update(a1 + 1272, a2 + 520, &v20);
  *(a3 + 312) = v21;
  result = *&v20;
  *(a3 + 296) = v20;
  return result;
}

{
  *(a3 + 48) = 0;
  v6 = a3 + 48;
  *(a3 + 72) = 0;
  *(a3 + 184) = 0;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  *(a3 + 232) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 252) = 0;
  *(a3 + 256) = 0;
  *(a3 + 260) = 0;
  *(a3 + 264) = 0;
  *(a3 + 266) = 0;
  *(a3 + 268) = 0;
  *(a3 + 296) = 0;
  *(a3 + 328) = 0;
  *(a3 + 336) = 0;
  *(a3 + 344) = 0;
  *(a3 + 384) = 0;
  *(a3 + 386) = 0;
  *(a3 + 480) = 0;
  *(a3 + 484) = 0;
  *(a3 + 486) = 0;
  *(a3 + 24) = 0;
  v7 = a3 + 24;
  *(a3 + 80) = 0u;
  v8 = (a3 + 80);
  *(a3 + 128) = 0;
  v9 = (a3 + 128);
  *(a3 + 152) = 0;
  v10 = a3 + 152;
  *(a3 + 192) = 0;
  v11 = (a3 + 192);
  v12 = (a3 + 388);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 96) = 0u;
  *(a3 + 106) = 0u;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 200) = 0;
  *(a3 + 208) = 0;
  *(a3 + 272) = 0;
  *(a3 + 280) = 0;
  *(a3 + 288) = 0;
  *(a3 + 352) = 0;
  *(a3 + 376) = 0;
  *(a3 + 360) = 0;
  *(a3 + 368) = 0;
  *(a3 + 396) = 0;
  *v12 = 0;
  *(v12 + 14) = 0;
  *(a3 + 464) = 0;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 416) = 0u;
  mimosa::v2::ContainerHeaderState::update(a1, a2, &v22);
  *a3 = v22;
  *(a3 + 16) = *__p;
  mimosa::v2::OpticalSamplesV1SubpacketState::update(a1 + 40, a2 + 16, (a2 + 160), &v22);
  *v7 = v22;
  *(v7 + 16) = *__p;
  std::__optional_storage_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>>(v6, &__p[8]);
  v13 = *v8;
  if (*v8)
  {
    *(a3 + 88) = v13;
    operator delete(v13);
  }

  *(a3 + 80) = *&v24[8];
  *(a3 + 96) = *&v24[24];
  memset(&v24[8], 0, 24);
  if (v24[0] == 1 && *&__p[8])
  {
    *&__p[16] = *&__p[8];
    operator delete(*&__p[8]);
  }

  mimosa::v2::AccelSubpacketState::update(a1 + 280, a2 + 56, &v22);
  *(a3 + 104) = v22;
  *(a3 + 120) = *__p;
  v14 = *v9;
  if (*v9)
  {
    *(a3 + 136) = v14;
    operator delete(v14);
  }

  *(a3 + 128) = *&__p[8];
  *(a3 + 144) = *&__p[24];
  memset(&__p[8], 0, 24);
  std::__optional_storage_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>>(v10, v24);
  if (v25 == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v24);
  }

  if (*&__p[8])
  {
    *&__p[16] = *&__p[8];
    operator delete(*&__p[8]);
  }

  mimosa::v2::AlgsResponseV2SubpacketState::update(a1 + 472, a2 + 96, &v22);
  v15 = *v24;
  v11[2] = *&__p[16];
  v11[3] = v15;
  *(v11 + 62) = *&v24[14];
  v16 = *__p;
  *v11 = v22;
  v11[1] = v16;
  mimosa::v2::OpticalDecoderV2SubpacketState::update(a1 + 712, a2 + 144, &v22);
  *(a3 + 272) = v22;
  *(a3 + 288) = *__p;
  std::__optional_storage_base<std::variant<std::vector<unsigned short>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<unsigned short>,unsigned char>,false>>(a3 + 296, &__p[8]);
  *(a3 + 336) = *&v24[16];
  *(a3 + 352) = v25;
  if (v24[8] == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p[8]);
  }

  mimosa::v2::TemperatureSubpacketState::update(a1 + 920, a2 + 200, &v22);
  v17 = *__p;
  *(a3 + 360) = v22;
  *(a3 + 376) = v17;
  mimosa::v2::WavelengthV2SubpacketState::update(a1 + 968, a2 + 224, &v22);
  v18 = *v24;
  *(a3 + 424) = *&__p[16];
  *(a3 + 440) = v18;
  v19 = v25;
  *(a3 + 456) = *&v24[16];
  *(a3 + 472) = v19;
  result = *&v22;
  v21 = *__p;
  *(a3 + 392) = v22;
  *(a3 + 408) = v21;
  return result;
}

{
  *(a3 + 48) = 0;
  v6 = a3 + 48;
  *(a3 + 72) = 0;
  *(a3 + 184) = 0;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  *(a3 + 232) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 252) = 0;
  *(a3 + 256) = 0;
  *(a3 + 260) = 0;
  *(a3 + 264) = 0;
  *(a3 + 266) = 0;
  *(a3 + 268) = 0;
  *(a3 + 296) = 0;
  *(a3 + 328) = 0;
  *(a3 + 336) = 0;
  *(a3 + 344) = 0;
  *(a3 + 384) = 0;
  *(a3 + 386) = 0;
  *(a3 + 512) = 0;
  *(a3 + 516) = 0;
  *(a3 + 24) = 0;
  v7 = a3 + 24;
  *(a3 + 80) = 0u;
  v8 = (a3 + 80);
  *(a3 + 128) = 0;
  v9 = (a3 + 128);
  *(a3 + 152) = 0;
  v10 = a3 + 152;
  *(a3 + 192) = 0;
  v11 = (a3 + 192);
  *(a3 + 518) = 0;
  v12 = (a3 + 388);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 96) = 0u;
  *(a3 + 106) = 0u;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 200) = 0;
  *(a3 + 208) = 0;
  *(a3 + 272) = 0;
  *(a3 + 280) = 0;
  *(a3 + 288) = 0;
  *(a3 + 352) = 0;
  *(a3 + 376) = 0;
  *(a3 + 360) = 0;
  *(a3 + 368) = 0;
  *(a3 + 396) = 0;
  *v12 = 0;
  *(v12 + 14) = 0;
  *(a3 + 473) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  mimosa::v2::ContainerHeaderState::update(a1, a2, &v23);
  *a3 = v23;
  *(a3 + 16) = *__p;
  mimosa::v2::OpticalSamplesV1SubpacketState::update(a1 + 40, a2 + 16, (a2 + 160), &v23);
  *v7 = v23;
  *(v7 + 16) = *__p;
  std::__optional_storage_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>>(v6, &__p[8]);
  v13 = *v8;
  if (*v8)
  {
    *(a3 + 88) = v13;
    operator delete(v13);
  }

  *(a3 + 80) = *&v25[8];
  *(a3 + 96) = *&v25[24];
  memset(&v25[8], 0, 24);
  if (v25[0] == 1 && *&__p[8])
  {
    *&__p[16] = *&__p[8];
    operator delete(*&__p[8]);
  }

  mimosa::v2::AccelSubpacketState::update(a1 + 280, a2 + 56, &v23);
  *(a3 + 104) = v23;
  *(a3 + 120) = *__p;
  v14 = *v9;
  if (*v9)
  {
    *(a3 + 136) = v14;
    operator delete(v14);
  }

  *(a3 + 128) = *&__p[8];
  *(a3 + 144) = *&__p[24];
  memset(&__p[8], 0, 24);
  std::__optional_storage_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>>(v10, v25);
  if (v26 == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v25);
  }

  if (*&__p[8])
  {
    *&__p[16] = *&__p[8];
    operator delete(*&__p[8]);
  }

  mimosa::v2::AlgsResponseV2SubpacketState::update(a1 + 472, a2 + 96, &v23);
  v15 = *v25;
  v11[2] = *&__p[16];
  v11[3] = v15;
  *(v11 + 62) = *&v25[14];
  v16 = *__p;
  *v11 = v23;
  v11[1] = v16;
  mimosa::v2::OpticalDecoderV2SubpacketState::update(a1 + 712, a2 + 144, &v23);
  *(a3 + 272) = v23;
  *(a3 + 288) = *__p;
  std::__optional_storage_base<std::variant<std::vector<unsigned short>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<unsigned short>,unsigned char>,false>>(a3 + 296, &__p[8]);
  *(a3 + 336) = *&v25[16];
  *(a3 + 352) = v26;
  if (v25[8] == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p[8]);
  }

  mimosa::v2::TemperatureSubpacketState::update(a1 + 920, a2 + 200, &v23);
  v17 = *__p;
  *(a3 + 360) = v23;
  *(a3 + 376) = v17;
  mimosa::v2::WavelengthV3SubpacketState::update(a1 + 1120, a2 + 224, &v23);
  v18 = v26;
  *(a3 + 456) = *&v25[16];
  *(a3 + 472) = v18;
  v19 = v28;
  *(a3 + 488) = v27;
  *(a3 + 504) = v19;
  v20 = *__p;
  *(a3 + 392) = v23;
  *(a3 + 408) = v20;
  result = *&__p[16];
  v22 = *v25;
  *(a3 + 424) = *&__p[16];
  *(a3 + 440) = v22;
  return result;
}

{
  *(a3 + 48) = 0;
  v6 = a3 + 48;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  v7 = a3 + 88;
  *(a3 + 112) = 0;
  *(a3 + 224) = 0;
  *(a3 + 256) = 0;
  *(a3 + 264) = 0;
  *(a3 + 272) = 0;
  *(a3 + 280) = 0;
  *(a3 + 288) = 0;
  *(a3 + 292) = 0;
  *(a3 + 296) = 0;
  *(a3 + 300) = 0;
  *(a3 + 304) = 0;
  *(a3 + 306) = 0;
  *(a3 + 308) = 0;
  *(a3 + 336) = 0;
  *(a3 + 344) = 0;
  *(a3 + 384) = 0;
  *(a3 + 386) = 0;
  *(a3 + 512) = 0;
  *(a3 + 516) = 0;
  *(a3 + 518) = 0;
  *(a3 + 24) = 0u;
  v8 = a3 + 24;
  *(a3 + 120) = 0u;
  v9 = (a3 + 120);
  *(a3 + 168) = 0u;
  v10 = (a3 + 168);
  *(a3 + 192) = 0;
  v28 = a3 + 192;
  *(a3 + 544) = 0;
  *(a3 + 232) = 0u;
  v11 = (a3 + 232);
  v12 = (a3 + 312);
  v13 = (a3 + 360);
  v14 = a3 + 388;
  *(a3 + 16) = 0;
  *a3 = 0u;
  *(a3 + 40) = 0;
  *(a3 + 136) = 0u;
  *(a3 + 146) = 0u;
  *(a3 + 184) = 0;
  *(a3 + 248) = 0;
  v26 = v13;
  v27 = v12;
  *v12 = 0u;
  *(a3 + 328) = 0;
  *(a3 + 352) = 0;
  *(a3 + 376) = 0;
  *v13 = 0u;
  *v14 = 0u;
  *(v14 + 14) = 0;
  *(a3 + 473) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 536) = 0;
  *(a3 + 520) = 0u;
  mimosa::v2::ContainerHeaderState::update(a1, a2, v29);
  *a3 = *v29;
  *(a3 + 16) = *&v29[16];
  mimosa::v2::OpticalSamplesV2SubpacketState::update(a1 + 144, a2 + 16, *(a2 + 168), *(a2 + 169), v29);
  *v8 = *v29;
  *(v8 + 16) = *&v29[16];
  std::__optional_storage_base<std::variant<std::vector<unsigned short>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<unsigned short>,unsigned char>,false>>(v6, &v29[24]);
  std::__optional_storage_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>>(v7, &v30[16]);
  v15 = *v9;
  if (*v9)
  {
    *(a3 + 128) = v15;
    operator delete(v15);
  }

  *(a3 + 120) = v32;
  *(a3 + 136) = v33;
  *&v33 = 0;
  v32 = 0uLL;
  if (BYTE8(v31) == 1 && *&v30[16])
  {
    *&v30[24] = *&v30[16];
    operator delete(*&v30[16]);
  }

  if (v30[8] == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v29[24]);
  }

  mimosa::v2::AccelSubpacketState::update(a1 + 280, a2 + 56, v29);
  *(a3 + 144) = *v29;
  *(a3 + 160) = *&v29[16];
  v16 = *v10;
  if (*v10)
  {
    *(a3 + 176) = v16;
    operator delete(v16);
  }

  *(a3 + 168) = *&v29[24];
  *(a3 + 184) = *&v29[40];
  memset(&v29[24], 0, 24);
  std::__optional_storage_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>>(v28, v30);
  if (v31 == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v30);
  }

  if (*&v29[24])
  {
    *&v29[32] = *&v29[24];
    operator delete(*&v29[24]);
  }

  mimosa::v2::AlgsResponseV2SubpacketState::update(a1 + 472, a2 + 96, v29);
  v17 = *v30;
  v11[2] = *&v29[32];
  v11[3] = v17;
  *(v11 + 62) = *&v30[14];
  v18 = *&v29[16];
  *v11 = *v29;
  v11[1] = v18;
  mimosa::v2::OpticalDecoderV3SubpacketState::update(a1 + 816, a2 + 144, v29);
  v19 = *&v29[16];
  *v27 = *v29;
  v27[1] = v19;
  *(v27 + 28) = *&v29[28];
  mimosa::v2::TemperatureSubpacketState::update(a1 + 920, a2 + 176, v29);
  v20 = *&v29[16];
  *v26 = *v29;
  v26[1] = v20;
  mimosa::v2::WavelengthV3SubpacketState::update(a1 + 1120, a2 + 200, v29);
  v21 = v31;
  *(a3 + 456) = *&v30[16];
  *(a3 + 472) = v21;
  v22 = v33;
  *(a3 + 488) = v32;
  *(a3 + 504) = v22;
  v23 = *&v29[16];
  *(a3 + 392) = *v29;
  *(a3 + 408) = v23;
  v24 = *v30;
  *(a3 + 424) = *&v29[32];
  *(a3 + 440) = v24;
  mimosa::v2::OpticalScalarsSubpacketState::update(a1 + 1272, a2 + 296, v29);
  *(a3 + 520) = *v29;
  result = *&v29[10];
  *(a3 + 530) = *&v29[10];
  return result;
}

{
  *(a3 + 48) = 0;
  v6 = a3 + 48;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  v7 = a3 + 88;
  *(a3 + 112) = 0;
  *(a3 + 224) = 0;
  *(a3 + 256) = 0;
  *(a3 + 264) = 0;
  *(a3 + 272) = 0;
  *(a3 + 280) = 0;
  *(a3 + 288) = 0;
  *(a3 + 292) = 0;
  *(a3 + 296) = 0;
  *(a3 + 300) = 0;
  *(a3 + 304) = 0;
  *(a3 + 306) = 0;
  *(a3 + 308) = 0;
  *(a3 + 336) = 0;
  *(a3 + 344) = 0;
  *(a3 + 384) = 0;
  *(a3 + 386) = 0;
  *(a3 + 512) = 0;
  *(a3 + 516) = 0;
  *(a3 + 518) = 0;
  *(a3 + 24) = 0u;
  v8 = a3 + 24;
  *(a3 + 120) = 0u;
  v9 = (a3 + 120);
  *(a3 + 168) = 0u;
  v10 = (a3 + 168);
  *(a3 + 192) = 0;
  v28 = a3 + 192;
  *(a3 + 544) = 0;
  *(a3 + 232) = 0u;
  v11 = (a3 + 232);
  v12 = (a3 + 312);
  v13 = (a3 + 360);
  v14 = a3 + 388;
  *(a3 + 16) = 0;
  *a3 = 0u;
  *(a3 + 40) = 0;
  *(a3 + 136) = 0u;
  *(a3 + 146) = 0u;
  *(a3 + 184) = 0;
  *(a3 + 248) = 0;
  v26 = v13;
  v27 = v12;
  *v12 = 0u;
  *(a3 + 328) = 0;
  *(a3 + 352) = 0;
  *(a3 + 376) = 0;
  *v13 = 0u;
  *v14 = 0u;
  *(v14 + 14) = 0;
  *(a3 + 473) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 536) = 0;
  *(a3 + 520) = 0u;
  mimosa::v2::ContainerHeaderState::update(a1, a2, v29);
  *a3 = *v29;
  *(a3 + 16) = *&v29[16];
  mimosa::v2::OpticalSamplesV2SubpacketState::update(a1 + 144, a2 + 16, *(a2 + 168), *(a2 + 169), v29);
  *v8 = *v29;
  *(v8 + 16) = *&v29[16];
  std::__optional_storage_base<std::variant<std::vector<unsigned short>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<unsigned short>,unsigned char>,false>>(v6, &v29[24]);
  std::__optional_storage_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>>(v7, &v30[16]);
  v15 = *v9;
  if (*v9)
  {
    *(a3 + 128) = v15;
    operator delete(v15);
  }

  *(a3 + 120) = v32;
  *(a3 + 136) = v33;
  *&v33 = 0;
  v32 = 0uLL;
  if (BYTE8(v31) == 1 && *&v30[16])
  {
    *&v30[24] = *&v30[16];
    operator delete(*&v30[16]);
  }

  if (v30[8] == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v29[24]);
  }

  mimosa::v2::AccelSubpacketState::update(a1 + 280, a2 + 56, v29);
  *(a3 + 144) = *v29;
  *(a3 + 160) = *&v29[16];
  v16 = *v10;
  if (*v10)
  {
    *(a3 + 176) = v16;
    operator delete(v16);
  }

  *(a3 + 168) = *&v29[24];
  *(a3 + 184) = *&v29[40];
  memset(&v29[24], 0, 24);
  std::__optional_storage_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>>(v28, v30);
  if (v31 == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v30);
  }

  if (*&v29[24])
  {
    *&v29[32] = *&v29[24];
    operator delete(*&v29[24]);
  }

  mimosa::v2::AlgsResponseV2SubpacketState::update(a1 + 472, a2 + 96, v29);
  v17 = *v30;
  v11[2] = *&v29[32];
  v11[3] = v17;
  *(v11 + 62) = *&v30[14];
  v18 = *&v29[16];
  *v11 = *v29;
  v11[1] = v18;
  mimosa::v2::OpticalDecoderV3SubpacketState::update(a1 + 816, a2 + 144, v29);
  v19 = *&v29[16];
  *v27 = *v29;
  v27[1] = v19;
  *(v27 + 28) = *&v29[28];
  mimosa::v2::TemperatureSubpacketState::update(a1 + 920, a2 + 176, v29);
  v20 = *&v29[16];
  *v26 = *v29;
  v26[1] = v20;
  mimosa::v2::WavelengthV3SubpacketState::update(a1 + 1120, a2 + 200, v29);
  v21 = v31;
  *(a3 + 456) = *&v30[16];
  *(a3 + 472) = v21;
  v22 = v33;
  *(a3 + 488) = v32;
  *(a3 + 504) = v22;
  v23 = *&v29[16];
  *(a3 + 392) = *v29;
  *(a3 + 408) = v23;
  v24 = *v30;
  *(a3 + 424) = *&v29[32];
  *(a3 + 440) = v24;
  mimosa::v2::OpticalScalarsSubpacketState::update(a1 + 1272, a2 + 296, v29);
  *(a3 + 520) = *v29;
  result = *&v29[10];
  *(a3 + 530) = *&v29[10];
  return result;
}

{
  *(a3 + 24) = 0;
  v6 = a3 + 24;
  *(a3 + 48) = 0;
  v7 = a3 + 48;
  *(a3 + 88) = 0;
  v8 = a3 + 88;
  *(a3 + 80) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0u;
  v9 = (a3 + 120);
  *(a3 + 224) = 0;
  *(a3 + 296) = 0;
  *(a3 + 304) = 0;
  *(a3 + 368) = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 136) = 0u;
  *(a3 + 146) = 0u;
  *(a3 + 168) = 0;
  v10 = (a3 + 168);
  *(a3 + 192) = 0;
  v20 = a3 + 192;
  *(a3 + 232) = 0;
  v11 = (a3 + 232);
  *(a3 + 312) = 0;
  v19 = (a3 + 312);
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0;
  *(a3 + 320) = 0;
  *(a3 + 328) = 0;
  *(a3 + 344) = 0;
  *(a3 + 352) = 0;
  *(a3 + 336) = 0;
  *(a3 + 360) = 0;
  mimosa::v2::ContainerHeaderState::update(a1, a2, v21);
  *a3 = *v21;
  *(a3 + 16) = *&v21[16];
  mimosa::v2::OpticalSamplesV2SubpacketState::update(a1 + 144, a2 + 16, *(a2 + 160), *(a2 + 161), v21);
  *v6 = *v21;
  *(v6 + 16) = *&v21[16];
  std::__optional_storage_base<std::variant<std::vector<unsigned short>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<unsigned short>,unsigned char>,false>>(v7, &v21[24]);
  std::__optional_storage_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>>(v8, &v22[16]);
  v12 = *v9;
  if (*v9)
  {
    *(a3 + 128) = v12;
    operator delete(v12);
  }

  *(a3 + 120) = v25;
  *(a3 + 136) = v26;
  v26 = 0;
  v25 = 0uLL;
  if (v24 == 1 && *&v22[16])
  {
    *&v22[24] = *&v22[16];
    operator delete(*&v22[16]);
  }

  if (v22[8] == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v21[24]);
  }

  mimosa::v2::AccelSubpacketState::update(a1 + 280, a2 + 56, v21);
  v13 = v10 - 3;
  *v13 = *v21;
  *(v13 + 8) = *&v21[16];
  v14 = *v10;
  if (*v10)
  {
    *(a3 + 176) = v14;
    operator delete(v14);
  }

  *(a3 + 168) = *&v21[24];
  *(a3 + 184) = *&v21[40];
  memset(&v21[24], 0, 24);
  std::__optional_storage_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>>(v20, v22);
  if (v23 == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v22);
  }

  if (*&v21[24])
  {
    *&v21[32] = *&v21[24];
    operator delete(*&v21[24]);
  }

  mimosa::v2::AlgsResponseV4SubpacketState::update(a1 + 544, a2 + 96, v21);
  v15 = *v22;
  v11[2] = *&v21[32];
  v11[3] = v15;
  *(v11 + 58) = *&v22[10];
  v16 = *&v21[16];
  *v11 = *v21;
  v11[1] = v16;
  mimosa::v2::OpticalDecoderV4SubpacketState::update((a1 + 872), (a2 + 144), v21);
  v17 = *&v21[16];
  *v19 = *v21;
  v19[1] = v17;
  mimosa::v2::OpticalScalarsSubpacketState::update(a1 + 1272, a2 + 168, v21);
  *(a3 + 344) = *v21;
  result = *&v21[10];
  *(a3 + 354) = *&v21[10];
  return result;
}

{
  *(a3 + 24) = 0;
  v6 = a3 + 24;
  *(a3 + 48) = 0;
  v7 = a3 + 48;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  v8 = a3 + 88;
  *(a3 + 112) = 0;
  *(a3 + 224) = 0;
  *(a3 + 296) = 0;
  *(a3 + 304) = 0;
  *(a3 + 368) = 0;
  *(a3 + 370) = 0;
  *(a3 + 464) = 0;
  *(a3 + 468) = 0;
  *(a3 + 470) = 0;
  *(a3 + 496) = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  *(a3 + 120) = 0u;
  *(a3 + 168) = 0;
  v10 = (a3 + 168);
  v9 = a3 + 120;
  *(a3 + 192) = 0;
  v24 = a3 + 192;
  *(a3 + 232) = 0;
  v11 = (a3 + 232);
  *(a3 + 312) = 0;
  v23 = (a3 + 312);
  *(a3 + 344) = 0;
  v22 = (a3 + 344);
  *(a3 + 40) = 0;
  *(a3 + 146) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0;
  *(a3 + 320) = 0;
  *(a3 + 328) = 0;
  *(a3 + 352) = 0;
  *(a3 + 336) = 0;
  *(a3 + 360) = 0;
  *(a3 + 380) = 0;
  *(a3 + 372) = 0;
  *(a3 + 386) = 0;
  *(a3 + 448) = 0;
  *(a3 + 432) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 488) = 0;
  *(a3 + 472) = 0;
  *(a3 + 480) = 0;
  mimosa::v2::ContainerHeaderState::update(a1, a2, v25);
  *a3 = *v25;
  *(a3 + 16) = *&v25[16];
  mimosa::v2::OpticalSamplesV2SubpacketState::update(a1 + 144, a2 + 16, *(a2 + 160), *(a2 + 161), v25);
  *v6 = *v25;
  *(v6 + 16) = *&v25[16];
  std::__optional_storage_base<std::variant<std::vector<unsigned short>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<unsigned short>,unsigned char>,false>>(v7, &v25[24]);
  std::__optional_storage_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>>(v8, &v26[16]);
  v12 = *v9;
  if (*v9)
  {
    *(a3 + 128) = v12;
    operator delete(v12);
  }

  *(a3 + 120) = v28;
  *(a3 + 136) = v29;
  v29 = 0;
  v28 = 0uLL;
  if (BYTE8(v27) == 1 && *&v26[16])
  {
    *&v26[24] = *&v26[16];
    operator delete(*&v26[16]);
  }

  if (v26[8] == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v25[24]);
  }

  mimosa::v2::AccelSubpacketState::update(a1 + 280, a2 + 56, v25);
  *(v9 + 24) = *v25;
  *(v9 + 40) = *&v25[16];
  v13 = *v10;
  if (*v10)
  {
    *(a3 + 176) = v13;
    operator delete(v13);
  }

  *(a3 + 168) = *&v25[24];
  *(a3 + 184) = *&v25[40];
  memset(&v25[24], 0, 24);
  std::__optional_storage_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>>(v24, v26);
  if (v27 == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v26);
  }

  if (*&v25[24])
  {
    *&v25[32] = *&v25[24];
    operator delete(*&v25[24]);
  }

  mimosa::v2::AlgsResponseV4SubpacketState::update(a1 + 544, a2 + 96, v25);
  v14 = *v26;
  v11[2] = *&v25[32];
  v11[3] = v14;
  *(v11 + 58) = *&v26[10];
  v15 = *&v25[16];
  *v11 = *v25;
  v11[1] = v15;
  mimosa::v2::OpticalDecoderV4SubpacketState::update((a1 + 872), (a2 + 144), v25);
  v16 = *&v25[16];
  *v23 = *v25;
  v23[1] = v16;
  mimosa::v2::TemperatureSubpacketState::update(a1 + 920, a2 + 168, v25);
  v17 = *&v25[16];
  *v22 = *v25;
  v22[1] = v17;
  mimosa::v2::WavelengthV2SubpacketState::update(a1 + 968, a2 + 192, v25);
  v18 = *v26;
  *(v9 + 288) = *&v25[32];
  *(v9 + 304) = v18;
  v19 = v27;
  *(v9 + 320) = *&v26[16];
  *(v9 + 336) = v19;
  v20 = *&v25[16];
  *(v9 + 256) = *v25;
  *(v9 + 272) = v20;
  mimosa::v2::OpticalScalarsSubpacketState::update(a1 + 1272, a2 + 264, v25);
  *(v9 + 352) = *v25;
  result = *&v25[10];
  *(v9 + 362) = *&v25[10];
  return result;
}

{
  *(a3 + 24) = 0;
  v6 = a3 + 24;
  *(a3 + 48) = 0;
  v7 = a3 + 48;
  *(a3 + 88) = 0;
  v8 = a3 + 88;
  *(a3 + 80) = 0;
  *(a3 + 112) = 0;
  *(a3 + 224) = 0;
  *(a3 + 296) = 0;
  *(a3 + 304) = 0;
  *(a3 + 368) = 0;
  *(a3 + 370) = 0;
  *(a3 + 496) = 0;
  *(a3 + 500) = 0;
  *(a3 + 502) = 0;
  *(a3 + 528) = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 120) = 0u;
  *(a3 + 168) = 0;
  v10 = (a3 + 168);
  v9 = a3 + 120;
  *(a3 + 192) = 0;
  v25 = a3 + 192;
  *(a3 + 232) = 0;
  v11 = (a3 + 232);
  *(a3 + 312) = 0;
  v24 = (a3 + 312);
  *(a3 + 344) = 0;
  v23 = (a3 + 344);
  *(a3 + 146) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0;
  *(a3 + 320) = 0;
  *(a3 + 328) = 0;
  *(a3 + 352) = 0;
  *(a3 + 336) = 0;
  *(a3 + 360) = 0;
  *(a3 + 380) = 0;
  *(a3 + 372) = 0;
  *(a3 + 386) = 0;
  *(a3 + 457) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 520) = 0;
  *(a3 + 504) = 0;
  *(a3 + 512) = 0;
  mimosa::v2::ContainerHeaderState::update(a1, a2, v26);
  *a3 = *v26;
  *(a3 + 16) = *&v26[16];
  mimosa::v2::OpticalSamplesV2SubpacketState::update(a1 + 144, a2 + 16, *(a2 + 160), *(a2 + 161), v26);
  *v6 = *v26;
  *(v6 + 16) = *&v26[16];
  std::__optional_storage_base<std::variant<std::vector<unsigned short>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<unsigned short>,unsigned char>,false>>(v7, &v26[24]);
  std::__optional_storage_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>>(v8, &v27[16]);
  v12 = *v9;
  if (*v9)
  {
    *(a3 + 128) = v12;
    operator delete(v12);
  }

  *(a3 + 120) = v29;
  *(a3 + 136) = v30;
  *&v30 = 0;
  v29 = 0uLL;
  if (BYTE8(v28) == 1 && *&v27[16])
  {
    *&v27[24] = *&v27[16];
    operator delete(*&v27[16]);
  }

  if (v27[8] == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v26[24]);
  }

  mimosa::v2::AccelSubpacketState::update(a1 + 280, a2 + 56, v26);
  *(v9 + 24) = *v26;
  *(v9 + 40) = *&v26[16];
  v13 = *v10;
  if (*v10)
  {
    *(a3 + 176) = v13;
    operator delete(v13);
  }

  *(a3 + 168) = *&v26[24];
  *(a3 + 184) = *&v26[40];
  memset(&v26[24], 0, 24);
  std::__optional_storage_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>>(v25, v27);
  if (v28 == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v27);
  }

  if (*&v26[24])
  {
    *&v26[32] = *&v26[24];
    operator delete(*&v26[24]);
  }

  mimosa::v2::AlgsResponseV4SubpacketState::update(a1 + 544, a2 + 96, v26);
  v14 = *v27;
  v11[2] = *&v26[32];
  v11[3] = v14;
  *(v11 + 58) = *&v27[10];
  v15 = *&v26[16];
  *v11 = *v26;
  v11[1] = v15;
  mimosa::v2::OpticalDecoderV4SubpacketState::update((a1 + 872), (a2 + 144), v26);
  v16 = *&v26[16];
  *v24 = *v26;
  v24[1] = v16;
  mimosa::v2::TemperatureSubpacketState::update(a1 + 920, a2 + 168, v26);
  v17 = *&v26[16];
  *v23 = *v26;
  v23[1] = v17;
  mimosa::v2::WavelengthV3SubpacketState::update(a1 + 1120, a2 + 192, v26);
  v18 = v28;
  *(v9 + 320) = *&v27[16];
  *(v9 + 336) = v18;
  v19 = v30;
  *(v9 + 352) = v29;
  *(v9 + 368) = v19;
  v20 = *&v26[16];
  *(v9 + 256) = *v26;
  *(v9 + 272) = v20;
  v21 = *v27;
  *(v9 + 288) = *&v26[32];
  *(v9 + 304) = v21;
  mimosa::v2::OpticalScalarsSubpacketState::update(a1 + 1272, a2 + 288, v26);
  *(v9 + 384) = *v26;
  result = *&v26[10];
  *(v9 + 394) = *&v26[10];
  return result;
}

{
  *(a3 + 24) = 0;
  v6 = a3 + 24;
  *(a3 + 48) = 0;
  v7 = a3 + 48;
  *(a3 + 88) = 0;
  v8 = a3 + 88;
  *(a3 + 80) = 0;
  *(a3 + 112) = 0;
  *(a3 + 224) = 0;
  *(a3 + 296) = 0;
  *(a3 + 304) = 0;
  *(a3 + 368) = 0;
  *(a3 + 370) = 0;
  *(a3 + 496) = 0;
  *(a3 + 500) = 0;
  *(a3 + 502) = 0;
  *(a3 + 528) = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 120) = 0u;
  *(a3 + 168) = 0;
  v10 = (a3 + 168);
  v9 = a3 + 120;
  *(a3 + 192) = 0;
  v25 = a3 + 192;
  *(a3 + 232) = 0;
  v11 = (a3 + 232);
  *(a3 + 312) = 0;
  v24 = (a3 + 312);
  *(a3 + 344) = 0;
  v23 = (a3 + 344);
  *(a3 + 146) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0;
  *(a3 + 320) = 0;
  *(a3 + 328) = 0;
  *(a3 + 352) = 0;
  *(a3 + 336) = 0;
  *(a3 + 360) = 0;
  *(a3 + 380) = 0;
  *(a3 + 372) = 0;
  *(a3 + 386) = 0;
  *(a3 + 457) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 520) = 0;
  *(a3 + 504) = 0;
  *(a3 + 512) = 0;
  mimosa::v2::ContainerHeaderState::update(a1, a2, v26);
  *a3 = *v26;
  *(a3 + 16) = *&v26[16];
  mimosa::v2::OpticalSamplesV2SubpacketState::update(a1 + 144, a2 + 16, *(a2 + 160), *(a2 + 161), v26);
  *v6 = *v26;
  *(v6 + 16) = *&v26[16];
  std::__optional_storage_base<std::variant<std::vector<unsigned short>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<unsigned short>,unsigned char>,false>>(v7, &v26[24]);
  std::__optional_storage_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>>(v8, &v27[16]);
  v12 = *v9;
  if (*v9)
  {
    *(a3 + 128) = v12;
    operator delete(v12);
  }

  *(a3 + 120) = v29;
  *(a3 + 136) = v30;
  *&v30 = 0;
  v29 = 0uLL;
  if (BYTE8(v28) == 1 && *&v27[16])
  {
    *&v27[24] = *&v27[16];
    operator delete(*&v27[16]);
  }

  if (v27[8] == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v26[24]);
  }

  mimosa::v2::AccelSubpacketState::update(a1 + 280, a2 + 56, v26);
  *(v9 + 24) = *v26;
  *(v9 + 40) = *&v26[16];
  v13 = *v10;
  if (*v10)
  {
    *(a3 + 176) = v13;
    operator delete(v13);
  }

  *(a3 + 168) = *&v26[24];
  *(a3 + 184) = *&v26[40];
  memset(&v26[24], 0, 24);
  std::__optional_storage_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>>(v25, v27);
  if (v28 == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v27);
  }

  if (*&v26[24])
  {
    *&v26[32] = *&v26[24];
    operator delete(*&v26[24]);
  }

  mimosa::v2::AlgsResponseV4SubpacketState::update(a1 + 544, a2 + 96, v26);
  v14 = *v27;
  v11[2] = *&v26[32];
  v11[3] = v14;
  *(v11 + 58) = *&v27[10];
  v15 = *&v26[16];
  *v11 = *v26;
  v11[1] = v15;
  mimosa::v2::OpticalDecoderV4SubpacketState::update((a1 + 872), (a2 + 144), v26);
  v16 = *&v26[16];
  *v24 = *v26;
  v24[1] = v16;
  mimosa::v2::TemperatureSubpacketState::update(a1 + 920, a2 + 168, v26);
  v17 = *&v26[16];
  *v23 = *v26;
  v23[1] = v17;
  mimosa::v2::WavelengthV3SubpacketState::update(a1 + 1120, a2 + 192, v26);
  v18 = v28;
  *(v9 + 320) = *&v27[16];
  *(v9 + 336) = v18;
  v19 = v30;
  *(v9 + 352) = v29;
  *(v9 + 368) = v19;
  v20 = *&v26[16];
  *(v9 + 256) = *v26;
  *(v9 + 272) = v20;
  v21 = *v27;
  *(v9 + 288) = *&v26[32];
  *(v9 + 304) = v21;
  mimosa::v2::OpticalScalarsSubpacketState::update(a1 + 1272, a2 + 288, v26);
  *(v9 + 384) = *v26;
  result = *&v26[10];
  *(v9 + 394) = *&v26[10];
  return result;
}

__n128 mimosa::v2::PacketState::update_@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = (a3 + 16);
  *(a3 + 12) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0u;
  v7 = (a3 + 32);
  *(a3 + 28) = 0;
  *(a3 + 48) = 0u;
  *(a3 + 61) = 0;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 149) = 0;
  *(a3 + 72) = 0u;
  v8 = (a3 + 72);
  *(a3 + 176) = 0u;
  *(a3 + 160) = 0u;
  v9 = (a3 + 160);
  *(a3 + 200) = 0u;
  v10 = a3 + 200;
  *(a3 + 192) = 0;
  *(a3 + 264) = 0u;
  *(a3 + 280) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 248) = 0u;
  *(a3 + 216) = 0u;
  *a3 = mimosa::v2::ContainerHeaderState::update(a1, a2);
  *(a3 + 8) = v11;
  mimosa::v2::OpticalDecoderV2SubpacketState::update(a1 + 712, a2 + 272, &v20);
  *(v10 - 56) = v20;
  v12 = *v9;
  if (*v9)
  {
    *(a3 + 168) = v12;
    operator delete(v12);
  }

  *(a3 + 160) = v21;
  v13 = *(&v22 + 1);
  *(a3 + 176) = v22;
  *(v10 - 16) = v13;
  *(v10 - 8) = v23;
  mimosa::v2::OpticalSamplesV1SubpacketState::update(a1 + 40, a2 + 24, v9, &v20);
  *v6 = v20;
  v14 = *v7;
  if (*v7)
  {
    *(a3 + 40) = v14;
    operator delete(v14);
  }

  *(a3 + 32) = v21;
  *(a3 + 48) = v22;
  mimosa::v2::AccelSubpacketState::update((a1 + 280), (a2 + 104), &v20);
  *(v10 - 144) = v20;
  v15 = *v8;
  if (*v8)
  {
    *(a3 + 80) = v15;
    operator delete(v15);
  }

  *(a3 + 72) = v21;
  *(a3 + 88) = v22;
  mimosa::v2::AlgsResponseV2SubpacketState::update(a1 + 472, a2 + 192, &v20);
  v16 = (v10 - 104);
  v17 = v21;
  *v16 = v20;
  v16[1] = v17;
  v16[2] = v22;
  mimosa::v2::TemperatureSubpacketState::update(a1 + 920, a2 + 360, &v20);
  *v10 = v20;
  *(v10 + 16) = v21.n128_u64[0];
  mimosa::v2::WavelengthV2SubpacketState::update(a1 + 968, a2 + 392, &v20);
  v18 = v23;
  *(a3 + 256) = v22;
  *(a3 + 272) = v18;
  *(a3 + 288) = v24;
  result = v21;
  *(a3 + 224) = v20;
  *(a3 + 240) = result;
  return result;
}

{
  *(a3 + 48) = 0;
  v6 = a3 + 48;
  *(a3 + 72) = 0;
  *(a3 + 184) = 0;
  *(a3 + 216) = 0;
  *(a3 + 218) = 0;
  *(a3 + 232) = 0;
  *(a3 + 236) = 0;
  *(a3 + 240) = 0;
  *(a3 + 244) = 0;
  *(a3 + 248) = 0;
  *(a3 + 252) = 0;
  *(a3 + 256) = 0;
  *(a3 + 260) = 0;
  *(a3 + 262) = 0;
  *(a3 + 264) = 0;
  *(a3 + 266) = 0;
  *(a3 + 268) = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  v7 = a3 + 24;
  *(a3 + 16) = 0;
  *(a3 + 80) = 0u;
  v8 = (a3 + 80);
  *(a3 + 128) = 0;
  v9 = (a3 + 128);
  *(a3 + 152) = 0;
  v10 = a3 + 152;
  *(a3 + 192) = 0;
  v11 = a3 + 192;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 96) = 0u;
  *(a3 + 106) = 0u;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 200) = 0;
  *(a3 + 208) = 0;
  *(a3 + 220) = 0;
  *(a3 + 228) = 0;
  mimosa::v2::ContainerHeaderState::update(a1, a2, &v16);
  *a3 = v16;
  *(a3 + 16) = *__p;
  mimosa::v2::OpticalSamplesV1SubpacketState::update((a1 + 40), a2 + 16, &v16);
  *v7 = v16;
  *(v7 + 16) = *__p;
  std::__optional_storage_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>>(v6, &__p[8]);
  v12 = *v8;
  if (*v8)
  {
    *(a3 + 88) = v12;
    operator delete(v12);
  }

  *(a3 + 80) = *&v18[8];
  *(a3 + 96) = *&v18[24];
  memset(&v18[8], 0, 24);
  if (v18[0] == 1 && *&__p[8])
  {
    *&__p[16] = *&__p[8];
    operator delete(*&__p[8]);
  }

  mimosa::v2::AccelSubpacketState::update(a1 + 280, a2 + 56, &v16);
  *(v7 + 80) = v16;
  *(v7 + 96) = *__p;
  v13 = *v9;
  if (*v9)
  {
    *(a3 + 136) = v13;
    operator delete(v13);
  }

  *(a3 + 128) = *&__p[8];
  *(a3 + 144) = *&__p[24];
  memset(&__p[8], 0, 24);
  std::__optional_storage_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>>(v10, v18);
  if (v19 == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v18);
  }

  if (*&__p[8])
  {
    *&__p[16] = *&__p[8];
    operator delete(*&__p[8]);
  }

  mimosa::v2::AlgsResponseV1SubpacketState::update(a1 + 400, a2 + 96, &v16);
  v14 = *v18;
  *(v11 + 32) = *&__p[16];
  *(v11 + 48) = v14;
  *(v11 + 62) = *&v18[14];
  result = *__p;
  *v11 = v16;
  *(v11 + 16) = result;
  return result;
}

double mimosa::v2::PacketState::update_@<D0>(mimosa::v2::PacketState *this@<X0>, const mimosa::v2::PacketState::PatchV6 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = 0;
  v6 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 28) = 0;
  *(a3 + 200) = 0u;
  v7 = a3 + 200;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 61) = 0;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 248) = 0u;
  *(a3 + 72) = 0u;
  v8 = a3 + 72;
  *(v8 + 192) = 0u;
  *(v8 + 208) = 0u;
  *a3 = mimosa::v2::ContainerHeaderState::update(this, a2);
  *(a3 + 8) = v9;
  mimosa::v2::OpticalDecoderV3SubpacketState::update(this + 816, a2 + 312, &v19);
  v10 = v20;
  *(a3 + 144) = v19;
  *(a3 + 160) = v10;
  mimosa::v2::OpticalSamplesV2SubpacketState::update((this + 144), (a2 + 24), *(a3 + 168), *(a3 + 169), &v19);
  v11 = v20;
  *v6 = v19;
  v12 = v21;
  *(a3 + 32) = v11;
  *(a3 + 48) = v12;
  mimosa::v2::AccelSubpacketState::update((this + 280), (a2 + 144), &v19);
  v13 = v20;
  *(a3 + 56) = v19;
  v14 = v21;
  *(a3 + 72) = v13;
  *(a3 + 88) = v14;
  mimosa::v2::AlgsResponseV2SubpacketState::update(this + 472, a2 + 232, &v19);
  v15 = v20;
  *(a3 + 96) = v19;
  *(a3 + 112) = v15;
  *(a3 + 128) = v21;
  mimosa::v2::TemperatureSubpacketState::update(this + 920, a2 + 360, &v19);
  *(a3 + 176) = v19;
  *(a3 + 192) = v20;
  mimosa::v2::WavelengthV2SubpacketState::update(this + 968, a2 + 392, &v19);
  v16 = v22;
  *(v7 + 32) = v21;
  *(v7 + 48) = v16;
  *(v7 + 64) = v23;
  v17 = v20;
  *v7 = v19;
  *(v7 + 16) = v17;
  mimosa::v2::OpticalScalarsSubpacketState::update(this + 1272, a2 + 488, &v19);
  result = *&v19;
  *(a3 + 272) = v19;
  *(a3 + 288) = v20;
  return result;
}

double mimosa::v2::PacketState::update_@<D0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = 0;
  v6 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 28) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 61) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0;
  *a3 = mimosa::v2::ContainerHeaderState::update(a1, a2);
  *(a3 + 8) = v7;
  mimosa::v2::OpticalDecoderV4SubpacketState::update(a1 + 872, a2 + 312, &v14);
  *(a3 + 144) = v14;
  *(a3 + 160) = v15;
  mimosa::v2::OpticalSamplesV2SubpacketState::update((a1 + 144), (a2 + 24), *(a3 + 160), *(a3 + 161), &v14);
  v8 = v15;
  *v6 = v14;
  v9 = v16;
  *(a3 + 32) = v8;
  *(a3 + 48) = v9;
  mimosa::v2::AccelSubpacketState::update((a1 + 280), (a2 + 144), &v14);
  v10 = v15;
  *(a3 + 56) = v14;
  v11 = v16;
  *(a3 + 72) = v10;
  *(a3 + 88) = v11;
  mimosa::v2::AlgsResponseV4SubpacketState::update((a1 + 544), (a2 + 232), &v14);
  v12 = v15;
  *(a3 + 96) = v14;
  *(a3 + 112) = v12;
  *(a3 + 128) = v16;
  mimosa::v2::OpticalScalarsSubpacketState::update((a1 + 1272), (a2 + 344), &v14);
  result = v14.n128_f64[0];
  *(a3 + 168) = v14;
  *(a3 + 184) = v15;
  return result;
}

{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = 0;
  v6 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 28) = 0;
  *(a3 + 168) = 0u;
  v7 = (a3 + 168);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 61) = 0;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 248) = 0u;
  *(a3 + 280) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 264) = 0u;
  *a3 = mimosa::v2::ContainerHeaderState::update(a1, a2);
  *(a3 + 8) = v8;
  mimosa::v2::OpticalDecoderV4SubpacketState::update(a1 + 872, a2 + 312, &v17);
  *(a3 + 144) = v17;
  *(a3 + 160) = v18;
  mimosa::v2::OpticalSamplesV2SubpacketState::update((a1 + 144), (a2 + 24), *(a3 + 160), *(a3 + 161), &v17);
  v9 = v18;
  *v6 = v17;
  v10 = v19;
  *(a3 + 32) = v9;
  *(a3 + 48) = v10;
  mimosa::v2::AccelSubpacketState::update((a1 + 280), (a2 + 144), &v17);
  v11 = v18;
  *(a3 + 56) = v17;
  v12 = v19;
  *(a3 + 72) = v11;
  *(a3 + 88) = v12;
  mimosa::v2::AlgsResponseV4SubpacketState::update((a1 + 544), (a2 + 232), &v17);
  v13 = v18;
  *(a3 + 96) = v17;
  *(a3 + 112) = v13;
  *(a3 + 128) = v19;
  mimosa::v2::TemperatureSubpacketState::update((a1 + 920), (a2 + 344), &v17);
  *v7 = v17;
  v7[1].n128_u64[0] = v18;
  mimosa::v2::WavelengthV2SubpacketState::update((a1 + 968), (a2 + 376), &v17);
  v14 = v20;
  *(a3 + 224) = v19;
  *(a3 + 240) = v14;
  *(a3 + 256) = v21;
  v15 = v18;
  *(a3 + 192) = v17;
  *(a3 + 208) = v15;
  mimosa::v2::OpticalScalarsSubpacketState::update((a1 + 1272), (a2 + 472), &v17);
  *(a3 + 280) = v18;
  result = v17.n128_f64[0];
  *(a3 + 264) = v17;
  return result;
}

{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = 0;
  v6 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 28) = 0;
  *(a3 + 168) = 0u;
  v7 = (a3 + 168);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 61) = 0;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 248) = 0u;
  *(a3 + 72) = 0u;
  v8 = (a3 + 72);
  v8[12] = 0u;
  v8[13] = 0u;
  v8[14] = 0u;
  *a3 = mimosa::v2::ContainerHeaderState::update(a1, a2);
  *(a3 + 8) = v9;
  mimosa::v2::OpticalDecoderV4SubpacketState::update(a1 + 872, a2 + 312, &v19);
  *(a3 + 144) = v19;
  *(a3 + 160) = v20;
  mimosa::v2::OpticalSamplesV2SubpacketState::update((a1 + 144), (a2 + 24), *(a3 + 160), *(a3 + 161), &v19);
  v10 = v20;
  *v6 = v19;
  v11 = v21;
  *(a3 + 32) = v10;
  *(a3 + 48) = v11;
  mimosa::v2::AccelSubpacketState::update((a1 + 280), (a2 + 144), &v19);
  v12 = v20;
  *(a3 + 56) = v19;
  v13 = v21;
  *(a3 + 72) = v12;
  *(a3 + 88) = v13;
  mimosa::v2::AlgsResponseV4SubpacketState::update((a1 + 544), (a2 + 232), &v19);
  v14 = v20;
  *(a3 + 96) = v19;
  *(a3 + 112) = v14;
  *(a3 + 128) = v21;
  mimosa::v2::TemperatureSubpacketState::update((a1 + 920), (a2 + 344), &v19);
  *v7 = v19;
  v7[1].n128_u64[0] = v20;
  mimosa::v2::WavelengthV3SubpacketState::update((a1 + 1120), (a2 + 376), &v19);
  v15 = v22;
  *(a3 + 224) = v21;
  *(a3 + 240) = v15;
  v16 = v24;
  *(a3 + 256) = v23;
  *(a3 + 272) = v16;
  v17 = v20;
  *(a3 + 192) = v19;
  *(a3 + 208) = v17;
  mimosa::v2::OpticalScalarsSubpacketState::update((a1 + 1272), (a2 + 504), &v19);
  result = v19.n128_f64[0];
  *(a3 + 288) = v19;
  *(a3 + 304) = v20;
  return result;
}

{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = 0;
  v6 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 28) = 0;
  *(a3 + 168) = 0u;
  v7 = (a3 + 168);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 61) = 0;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 248) = 0u;
  *(a3 + 72) = 0u;
  v8 = (a3 + 72);
  v8[12] = 0u;
  v8[13] = 0u;
  v8[14] = 0u;
  *a3 = mimosa::v2::ContainerHeaderState::update(a1, a2);
  *(a3 + 8) = v9;
  mimosa::v2::OpticalDecoderV4SubpacketState::update(a1 + 872, a2 + 312, &v19);
  *(a3 + 144) = v19;
  *(a3 + 160) = v20;
  mimosa::v2::OpticalSamplesV2SubpacketState::update((a1 + 144), (a2 + 24), *(a3 + 160), *(a3 + 161), &v19);
  v10 = v20;
  *v6 = v19;
  v11 = v21;
  *(a3 + 32) = v10;
  *(a3 + 48) = v11;
  mimosa::v2::AccelSubpacketState::update((a1 + 280), (a2 + 144), &v19);
  v12 = v20;
  *(a3 + 56) = v19;
  v13 = v21;
  *(a3 + 72) = v12;
  *(a3 + 88) = v13;
  mimosa::v2::AlgsResponseV4SubpacketState::update((a1 + 544), (a2 + 232), &v19);
  v14 = v20;
  *(a3 + 96) = v19;
  *(a3 + 112) = v14;
  *(a3 + 128) = v21;
  mimosa::v2::TemperatureSubpacketState::update((a1 + 920), (a2 + 344), &v19);
  *v7 = v19;
  v7[1].n128_u64[0] = v20;
  mimosa::v2::WavelengthV3SubpacketState::update((a1 + 1120), (a2 + 376), &v19);
  v15 = v22;
  *(a3 + 224) = v21;
  *(a3 + 240) = v15;
  v16 = v24;
  *(a3 + 256) = v23;
  *(a3 + 272) = v16;
  v17 = v20;
  *(a3 + 192) = v19;
  *(a3 + 208) = v17;
  mimosa::v2::OpticalScalarsSubpacketState::update((a1 + 1272), (a2 + 504), &v19);
  result = v19.n128_f64[0];
  *(a3 + 288) = v19;
  *(a3 + 304) = v20;
  return result;
}

double mimosa::v2::PacketState::update_@<D0>(mimosa::v2::PacketState *this@<X0>, const mimosa::PacketV2 *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0;
  v6 = a3 + 48;
  *(a3 + 72) = 0;
  *(a3 + 184) = 0;
  *(a3 + 216) = 0;
  *(a3 + 218) = 0;
  *(a3 + 232) = 0;
  *(a3 + 236) = 0;
  *(a3 + 240) = 0;
  *(a3 + 244) = 0;
  *(a3 + 248) = 0;
  *(a3 + 252) = 0;
  *(a3 + 256) = 0;
  *(a3 + 260) = 0;
  *(a3 + 262) = 0;
  *(a3 + 264) = 0;
  *(a3 + 266) = 0;
  *(a3 + 268) = 0;
  *(a3 + 296) = 0;
  *(a3 + 328) = 0;
  *(a3 + 368) = 0;
  *(a3 + 370) = 0;
  *(a3 + 464) = 0;
  *(a3 + 468) = 0;
  *(a3 + 24) = 0;
  v7 = a3 + 24;
  *(a3 + 80) = 0u;
  v8 = (a3 + 80);
  *(a3 + 128) = 0;
  v9 = (a3 + 128);
  *(a3 + 152) = 0;
  v10 = a3 + 152;
  *(a3 + 192) = 0;
  v11 = (a3 + 192);
  *(a3 + 470) = 0;
  v12 = (a3 + 372);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 96) = 0u;
  *(a3 + 106) = 0u;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 200) = 0;
  *(a3 + 208) = 0;
  *(a3 + 220) = 0;
  *(a3 + 228) = 0;
  *(a3 + 272) = 0;
  *(a3 + 280) = 0;
  *(a3 + 288) = 0;
  *(a3 + 336) = 0;
  *(a3 + 360) = 0;
  *(a3 + 344) = 0;
  *(a3 + 352) = 0;
  *(a3 + 380) = 0;
  *v12 = 0;
  *(v12 + 14) = 0;
  *(a3 + 448) = 0;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 400) = 0u;
  mimosa::v2::ContainerHeaderState::update(this, a2, &v22);
  *a3 = v22;
  *(a3 + 16) = *__p;
  mimosa::v2::OpticalSamplesV1SubpacketState::update(this + 40, a2 + 16, a2 + 20, &v22);
  *v7 = v22;
  *(v7 + 16) = *__p;
  std::__optional_storage_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>>(v6, &__p[8]);
  v13 = *v8;
  if (*v8)
  {
    *(a3 + 88) = v13;
    operator delete(v13);
  }

  *(a3 + 80) = *&v24[8];
  *(a3 + 96) = *&v24[24];
  memset(&v24[8], 0, 24);
  if (v24[0] == 1 && *&__p[8])
  {
    *&__p[16] = *&__p[8];
    operator delete(*&__p[8]);
  }

  mimosa::v2::AccelSubpacketState::update(this + 280, a2 + 56, &v22);
  *(a3 + 104) = v22;
  *(a3 + 120) = *__p;
  v14 = *v9;
  if (*v9)
  {
    *(a3 + 136) = v14;
    operator delete(v14);
  }

  *(a3 + 128) = *&__p[8];
  *(a3 + 144) = *&__p[24];
  memset(&__p[8], 0, 24);
  std::__optional_storage_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>>(v10, v24);
  if (v25 == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v24);
  }

  if (*&__p[8])
  {
    *&__p[16] = *&__p[8];
    operator delete(*&__p[8]);
  }

  mimosa::v2::AlgsResponseV1SubpacketState::update(this + 400, a2 + 96, &v22);
  v15 = *v24;
  v11[2] = *&__p[16];
  v11[3] = v15;
  *(v11 + 62) = *&v24[14];
  v16 = *__p;
  *v11 = v22;
  v11[1] = v16;
  mimosa::v2::OpticalDecoderV1SubpacketState::update(this + 616, a2 + 144, &v22);
  *(a3 + 272) = v22;
  *(a3 + 288) = *__p;
  std::__optional_storage_base<std::variant<std::vector<unsigned short>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<unsigned short>,unsigned char>,false>>(a3 + 296, &__p[8]);
  *(a3 + 336) = *&v24[16];
  if (v24[8] == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p[8]);
  }

  mimosa::v2::TemperatureSubpacketState::update(this + 920, a2 + 192, &v22);
  v17 = *__p;
  *(a3 + 344) = v22;
  *(a3 + 360) = v17;
  mimosa::v2::WavelengthV2SubpacketState::update(this + 968, a2 + 216, &v22);
  v18 = *v24;
  *(a3 + 408) = *&__p[16];
  *(a3 + 424) = v18;
  v19 = v25;
  *(a3 + 440) = *&v24[16];
  *(a3 + 456) = v19;
  result = *&v22;
  v21 = *__p;
  *(a3 + 376) = v22;
  *(a3 + 392) = v21;
  return result;
}

uint64_t mimosa::v2::PacketState::update_@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0;
  v6 = a3 + 48;
  *(a3 + 72) = 0;
  *(a3 + 184) = 0;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  *(a3 + 232) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 252) = 0;
  *(a3 + 256) = 0;
  *(a3 + 260) = 0;
  *(a3 + 264) = 0;
  *(a3 + 266) = 0;
  *(a3 + 268) = 0;
  *(a3 + 296) = 0;
  *(a3 + 328) = 0;
  *(a3 + 336) = 0;
  *(a3 + 344) = 0;
  *(a3 + 24) = 0;
  v7 = a3 + 24;
  *(a3 + 80) = 0u;
  v8 = (a3 + 80);
  *(a3 + 128) = 0;
  v9 = (a3 + 128);
  *(a3 + 152) = 0;
  v10 = a3 + 152;
  *(a3 + 192) = 0;
  v11 = (a3 + 192);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 96) = 0u;
  *(a3 + 106) = 0u;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 200) = 0;
  *(a3 + 208) = 0;
  *(a3 + 272) = 0;
  *(a3 + 280) = 0;
  *(a3 + 288) = 0;
  *(a3 + 352) = 0;
  mimosa::v2::ContainerHeaderState::update(a1, a2, &v17);
  *a3 = v17;
  *(a3 + 16) = *__p;
  mimosa::v2::OpticalSamplesV1SubpacketState::update(a1 + 40, a2 + 16, (a2 + 160), &v17);
  *v7 = v17;
  *(v7 + 16) = *__p;
  std::__optional_storage_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>>(v6, &__p[8]);
  v12 = *v8;
  if (*v8)
  {
    *(a3 + 88) = v12;
    operator delete(v12);
  }

  *(a3 + 80) = *&v19[8];
  *(a3 + 96) = *&v19[24];
  memset(&v19[8], 0, 24);
  if (v19[0] == 1 && *&__p[8])
  {
    *&__p[16] = *&__p[8];
    operator delete(*&__p[8]);
  }

  mimosa::v2::AccelSubpacketState::update(a1 + 280, a2 + 56, &v17);
  *(a3 + 104) = v17;
  *(a3 + 120) = *__p;
  v13 = *v9;
  if (*v9)
  {
    *(a3 + 136) = v13;
    operator delete(v13);
  }

  *(a3 + 128) = *&__p[8];
  *(a3 + 144) = *&__p[24];
  memset(&__p[8], 0, 24);
  std::__optional_storage_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>>(v10, v19);
  if (v20 == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v19);
  }

  if (*&__p[8])
  {
    *&__p[16] = *&__p[8];
    operator delete(*&__p[8]);
  }

  mimosa::v2::AlgsResponseV2SubpacketState::update(a1 + 472, a2 + 96, &v17);
  v14 = *v19;
  v11[2] = *&__p[16];
  v11[3] = v14;
  *(v11 + 62) = *&v19[14];
  v15 = *__p;
  *v11 = v17;
  v11[1] = v15;
  mimosa::v2::OpticalDecoderV2SubpacketState::update(a1 + 712, a2 + 144, &v17);
  *(a3 + 272) = v17;
  *(a3 + 288) = *__p;
  result = std::__optional_storage_base<std::variant<std::vector<unsigned short>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<unsigned short>,unsigned char>,false>>(a3 + 296, &__p[8]);
  *(a3 + 336) = *&v19[16];
  *(a3 + 352) = v20;
  if (v19[8] == 1)
  {
    return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p[8]);
  }

  return result;
}

double mimosa::v2::PacketState::update_@<D0>(mimosa::v2::PacketState *this@<X0>, const mimosa::PacketV6 *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0;
  v6 = a3 + 48;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  v7 = a3 + 88;
  *(a3 + 112) = 0;
  *(a3 + 224) = 0;
  *(a3 + 256) = 0;
  *(a3 + 264) = 0;
  *(a3 + 272) = 0;
  *(a3 + 280) = 0;
  *(a3 + 288) = 0;
  *(a3 + 292) = 0;
  *(a3 + 296) = 0;
  *(a3 + 300) = 0;
  *(a3 + 304) = 0;
  *(a3 + 306) = 0;
  *(a3 + 308) = 0;
  *(a3 + 336) = 0;
  *(a3 + 344) = 0;
  *(a3 + 384) = 0;
  *(a3 + 386) = 0;
  *(a3 + 480) = 0;
  *(a3 + 484) = 0;
  *(a3 + 486) = 0;
  *(a3 + 512) = 0;
  *(a3 + 24) = 0;
  v8 = a3 + 24;
  *(a3 + 120) = 0u;
  v9 = (a3 + 120);
  *(a3 + 168) = 0;
  v10 = (a3 + 168);
  *(a3 + 192) = 0;
  v23 = a3 + 192;
  *(a3 + 232) = 0;
  v11 = (a3 + 232);
  v12 = (a3 + 388);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 136) = 0u;
  *(a3 + 146) = 0u;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 312) = 0;
  *(a3 + 320) = 0;
  *(a3 + 328) = 0;
  *(a3 + 352) = 0;
  *(a3 + 376) = 0;
  *(a3 + 360) = 0;
  *(a3 + 368) = 0;
  *(a3 + 396) = 0;
  *v12 = 0;
  *(v12 + 14) = 0;
  *(a3 + 464) = 0;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 504) = 0;
  *(a3 + 488) = 0;
  *(a3 + 496) = 0;
  mimosa::v2::ContainerHeaderState::update(this, a2, v24);
  *a3 = *v24;
  *(a3 + 16) = *&v24[16];
  mimosa::v2::OpticalSamplesV2SubpacketState::update(this + 144, a2 + 16, *(a2 + 168), *(a2 + 169), v24);
  *v8 = *v24;
  *(v8 + 16) = *&v24[16];
  std::__optional_storage_base<std::variant<std::vector<unsigned short>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<unsigned short>,unsigned char>,false>>(v6, &v24[24]);
  std::__optional_storage_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>,false>>(v7, &v25[16]);
  v13 = *v9;
  if (*v9)
  {
    *(a3 + 128) = v13;
    operator delete(v13);
  }

  *(a3 + 120) = v27;
  *(a3 + 136) = v28;
  v28 = 0;
  v27 = 0uLL;
  if (BYTE8(v26) == 1 && *&v25[16])
  {
    *&v25[24] = *&v25[16];
    operator delete(*&v25[16]);
  }

  if (v25[8] == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v24[24]);
  }

  mimosa::v2::AccelSubpacketState::update(this + 280, a2 + 56, v24);
  *(a3 + 144) = *v24;
  *(a3 + 160) = *&v24[16];
  v14 = *v10;
  if (*v10)
  {
    *(a3 + 176) = v14;
    operator delete(v14);
  }

  *(a3 + 168) = *&v24[24];
  *(a3 + 184) = *&v24[40];
  memset(&v24[24], 0, 24);
  std::__optional_storage_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,false>>(v23, v25);
  if (v26 == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v25);
  }

  if (*&v24[24])
  {
    *&v24[32] = *&v24[24];
    operator delete(*&v24[24]);
  }

  mimosa::v2::AlgsResponseV2SubpacketState::update(this + 472, a2 + 96, v24);
  v15 = *v25;
  v11[2] = *&v24[32];
  v11[3] = v15;
  *(v11 + 62) = *&v25[14];
  v16 = *&v24[16];
  *v11 = *v24;
  v11[1] = v16;
  mimosa::v2::OpticalDecoderV3SubpacketState::update(this + 816, a2 + 144, v24);
  v17 = *&v24[16];
  *(a3 + 312) = *v24;
  *(a3 + 328) = v17;
  *(a3 + 340) = *&v24[28];
  mimosa::v2::TemperatureSubpacketState::update(this + 920, a2 + 176, v24);
  v18 = *&v24[16];
  *(a3 + 360) = *v24;
  *(a3 + 376) = v18;
  mimosa::v2::WavelengthV2SubpacketState::update(this + 968, a2 + 200, v24);
  v19 = *v25;
  *(a3 + 424) = *&v24[32];
  *(a3 + 440) = v19;
  v20 = v26;
  *(a3 + 456) = *&v25[16];
  *(a3 + 472) = v20;
  v21 = *&v24[16];
  *(a3 + 392) = *v24;
  *(a3 + 408) = v21;
  mimosa::v2::OpticalScalarsSubpacketState::update(this + 1272, a2 + 272, v24);
  *(a3 + 488) = *v24;
  result = *&v24[10];
  *(a3 + 498) = *&v24[10];
  return result;
}