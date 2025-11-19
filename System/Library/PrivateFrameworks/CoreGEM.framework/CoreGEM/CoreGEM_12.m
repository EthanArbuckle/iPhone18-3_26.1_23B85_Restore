void sub_24541BAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24541BB04(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857B88;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24541BB60(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24541BB04(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24541BC0C(uint64_t result)
{
  v1 = *(result + 148);
  if (v1)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
  }

  if (HIBYTE(v1))
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
  }

  if (*(result + 152))
  {
    *(result + 136) = 0;
  }

  *(result + 148) = 0;
  return result;
}

uint64_t sub_24541BC74(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (2)
  {
    v4 = *(this + 1);
    if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v4 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v111 = 0;
        v7 = *(this + 1);
        v6 = *(this + 2);
        if (v7 < v6)
        {
          v8 = *v7;
          if ((v8 & 0x80000000) == 0)
          {
            v9 = v7 + 1;
            *(this + 1) = v9;
LABEL_82:
            a1[2] = v8;
            a1[37] |= 1u;
            if (v9 < v6 && *v9 == 16)
            {
              v25 = v9 + 1;
              *(this + 1) = v25;
              goto LABEL_85;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v111);
        if (result)
        {
          v8 = v111;
          v9 = *(this + 1);
          v6 = *(this + 2);
          goto LABEL_82;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v25 = *(this + 1);
        v6 = *(this + 2);
LABEL_85:
        v111 = 0;
        if (v25 >= v6 || (v44 = *v25, (v44 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v111);
          if (!result)
          {
            return result;
          }

          v44 = v111;
          v45 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v45 = v25 + 1;
          *(this + 1) = v45;
        }

        a1[3] = v44;
        a1[37] |= 2u;
        if (v45 >= v6 || *v45 != 24)
        {
          continue;
        }

        v21 = v45 + 1;
        *(this + 1) = v21;
LABEL_93:
        if (v21 >= v6 || (v46 = *v21, (v46 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
          if (!result)
          {
            return result;
          }

          v47 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[4] = v46;
          v47 = v21 + 1;
          *(this + 1) = v47;
        }

        a1[37] |= 4u;
        if (v47 >= v6 || *v47 != 32)
        {
          continue;
        }

        v23 = v47 + 1;
        *(this + 1) = v23;
LABEL_101:
        if (v23 >= v6 || (v48 = *v23, (v48 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
          if (!result)
          {
            return result;
          }

          v49 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[5] = v48;
          v49 = v23 + 1;
          *(this + 1) = v49;
        }

        a1[37] |= 8u;
        if (v49 >= v6 || *v49 != 40)
        {
          continue;
        }

        v16 = v49 + 1;
        *(this + 1) = v16;
LABEL_109:
        v111 = 0;
        if (v16 >= v6 || (v50 = *v16, (v50 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v111);
          if (!result)
          {
            return result;
          }

          v50 = v111;
          v51 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v51 = v16 + 1;
          *(this + 1) = v51;
        }

        a1[6] = v50;
        a1[37] |= 0x10u;
        if (v51 >= v6 || *v51 != 48)
        {
          continue;
        }

        v29 = v51 + 1;
        *(this + 1) = v29;
LABEL_117:
        v111 = 0;
        if (v29 >= v6 || (v52 = *v29, (v52 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v111);
          if (!result)
          {
            return result;
          }

          v52 = v111;
          v53 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v53 = v29 + 1;
          *(this + 1) = v53;
        }

        a1[7] = v52;
        a1[37] |= 0x20u;
        if (v53 >= v6 || *v53 != 56)
        {
          continue;
        }

        v32 = v53 + 1;
        *(this + 1) = v32;
LABEL_125:
        v111 = 0;
        if (v32 >= v6 || (v54 = *v32, (v54 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v111);
          if (!result)
          {
            return result;
          }

          v54 = v111;
          v55 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v55 = v32 + 1;
          *(this + 1) = v55;
        }

        a1[8] = v54;
        a1[37] |= 0x40u;
        if (v55 >= v6 || *v55 != 64)
        {
          continue;
        }

        v24 = v55 + 1;
        *(this + 1) = v24;
LABEL_133:
        v111 = 0;
        if (v24 >= v6 || (v56 = *v24, (v56 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v111);
          if (!result)
          {
            return result;
          }

          v56 = v111;
          v57 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v57 = v24 + 1;
          *(this + 1) = v57;
        }

        a1[9] = v56;
        a1[37] |= 0x80u;
        if (v57 >= v6 || *v57 != 72)
        {
          continue;
        }

        v35 = v57 + 1;
        *(this + 1) = v35;
LABEL_141:
        if (v35 >= v6 || (v58 = *v35, (v58 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 10);
          if (!result)
          {
            return result;
          }

          v59 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[10] = v58;
          v59 = v35 + 1;
          *(this + 1) = v59;
        }

        a1[37] |= 0x100u;
        if (v59 >= v6 || *v59 != 80)
        {
          continue;
        }

        v18 = v59 + 1;
        *(this + 1) = v18;
LABEL_149:
        if (v18 >= v6 || (v60 = *v18, (v60 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 11);
          if (!result)
          {
            return result;
          }

          v61 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[11] = v60;
          v61 = v18 + 1;
          *(this + 1) = v61;
        }

        a1[37] |= 0x200u;
        if (v61 >= v6 || *v61 != 88)
        {
          continue;
        }

        v34 = v61 + 1;
        *(this + 1) = v34;
LABEL_157:
        v111 = 0;
        if (v34 >= v6 || (v62 = *v34, (v62 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v111);
          if (!result)
          {
            return result;
          }

          v62 = v111;
          v63 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v63 = v34 + 1;
          *(this + 1) = v63;
        }

        a1[12] = v62;
        a1[37] |= 0x400u;
        if (v63 >= v6 || *v63 != 96)
        {
          continue;
        }

        v15 = v63 + 1;
        *(this + 1) = v15;
LABEL_165:
        v111 = 0;
        if (v15 >= v6 || (v64 = *v15, (v64 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v111);
          if (!result)
          {
            return result;
          }

          v64 = v111;
          v65 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v65 = v15 + 1;
          *(this + 1) = v65;
        }

        a1[13] = v64;
        a1[37] |= 0x800u;
        if (v65 >= v6 || *v65 != 104)
        {
          continue;
        }

        v17 = v65 + 1;
        *(this + 1) = v17;
LABEL_173:
        v111 = 0;
        if (v17 >= v6 || (v66 = *v17, (v66 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v111);
          if (!result)
          {
            return result;
          }

          v66 = v111;
          v67 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v67 = v17 + 1;
          *(this + 1) = v67;
        }

        a1[14] = v66;
        a1[37] |= 0x1000u;
        if (v67 >= v6 || *v67 != 112)
        {
          continue;
        }

        v31 = v67 + 1;
        *(this + 1) = v31;
LABEL_181:
        v111 = 0;
        if (v31 >= v6 || (v68 = *v31, (v68 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v111);
          if (!result)
          {
            return result;
          }

          v68 = v111;
          v69 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v69 = v31 + 1;
          *(this + 1) = v69;
        }

        a1[15] = v68;
        a1[37] |= 0x2000u;
        if (v69 >= v6 || *v69 != 120)
        {
          continue;
        }

        v13 = v69 + 1;
        *(this + 1) = v13;
LABEL_189:
        v111 = 0;
        if (v13 >= v6 || (v70 = *v13, (v70 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v111);
          if (!result)
          {
            return result;
          }

          v70 = v111;
          v71 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v71 = (v13 + 1);
          *(this + 1) = v71;
        }

        a1[16] = v70;
        a1[37] |= 0x4000u;
        if (v6 - v71 < 2 || *v71 != 128 || v71[1] != 1)
        {
          continue;
        }

        v22 = (v71 + 2);
        *(this + 1) = v22;
LABEL_198:
        if (v22 >= v6 || (v72 = *v22, (v72 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 17);
          if (!result)
          {
            return result;
          }

          v73 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[17] = v72;
          v73 = (v22 + 1);
          *(this + 1) = v73;
        }

        a1[37] |= 0x8000u;
        if (v6 - v73 < 2 || *v73 != 136 || v73[1] != 1)
        {
          continue;
        }

        v12 = (v73 + 2);
        *(this + 1) = v12;
LABEL_207:
        v111 = 0;
        if (v12 >= v6 || (v74 = *v12, (v74 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v111);
          if (!result)
          {
            return result;
          }

          v74 = v111;
          v75 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v75 = (v12 + 1);
          *(this + 1) = v75;
        }

        a1[18] = v74;
        a1[37] |= 0x10000u;
        if (v6 - v75 < 2 || *v75 != 144 || v75[1] != 1)
        {
          continue;
        }

        v27 = (v75 + 2);
        *(this + 1) = v27;
LABEL_216:
        v111 = 0;
        if (v27 >= v6 || (v76 = *v27, (v76 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v111);
          if (!result)
          {
            return result;
          }

          v76 = v111;
          v77 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v77 = (v27 + 1);
          *(this + 1) = v77;
        }

        a1[19] = v76;
        a1[37] |= 0x20000u;
        if (v6 - v77 < 2 || *v77 != 152 || v77[1] != 1)
        {
          continue;
        }

        v33 = (v77 + 2);
        *(this + 1) = v33;
LABEL_225:
        v111 = 0;
        if (v33 >= v6 || (v78 = *v33, (v78 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v111);
          if (!result)
          {
            return result;
          }

          v78 = v111;
          v79 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v79 = (v33 + 1);
          *(this + 1) = v79;
        }

        a1[20] = v78;
        a1[37] |= 0x40000u;
        if (v6 - v79 < 2 || *v79 != 160 || v79[1] != 1)
        {
          continue;
        }

        v39 = (v79 + 2);
        *(this + 1) = v39;
LABEL_234:
        v111 = 0;
        if (v39 >= v6 || (v80 = *v39, (v80 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v111);
          if (!result)
          {
            return result;
          }

          v80 = v111;
          v81 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v81 = (v39 + 1);
          *(this + 1) = v81;
        }

        a1[21] = v80;
        a1[37] |= 0x80000u;
        if (v6 - v81 < 2 || *v81 != 168 || v81[1] != 1)
        {
          continue;
        }

        v28 = (v81 + 2);
        *(this + 1) = v28;
LABEL_243:
        if (v28 >= v6 || (v82 = *v28, (v82 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 22);
          if (!result)
          {
            return result;
          }

          v83 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[22] = v82;
          v83 = (v28 + 1);
          *(this + 1) = v83;
        }

        a1[37] |= 0x100000u;
        if (v6 - v83 < 2 || *v83 != 176 || v83[1] != 1)
        {
          continue;
        }

        v30 = (v83 + 2);
        *(this + 1) = v30;
LABEL_252:
        if (v30 >= v6 || (v84 = *v30, (v84 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 23);
          if (!result)
          {
            return result;
          }

          v85 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[23] = v84;
          v85 = (v30 + 1);
          *(this + 1) = v85;
        }

        a1[37] |= 0x200000u;
        if (v6 - v85 < 2 || *v85 != 184 || v85[1] != 1)
        {
          continue;
        }

        v38 = (v85 + 2);
        *(this + 1) = v38;
LABEL_261:
        if (v38 >= v6 || (v86 = *v38, (v86 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 24);
          if (!result)
          {
            return result;
          }

          v87 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[24] = v86;
          v87 = (v38 + 1);
          *(this + 1) = v87;
        }

        a1[37] |= 0x400000u;
        if (v6 - v87 < 2 || *v87 != 192 || v87[1] != 1)
        {
          continue;
        }

        v40 = (v87 + 2);
        *(this + 1) = v40;
LABEL_270:
        v111 = 0;
        if (v40 >= v6 || (v88 = *v40, (v88 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v111);
          if (!result)
          {
            return result;
          }

          v88 = v111;
          v89 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v89 = (v40 + 1);
          *(this + 1) = v89;
        }

        a1[25] = v88;
        a1[37] |= 0x800000u;
        if (v6 - v89 < 2 || *v89 != 200 || v89[1] != 1)
        {
          continue;
        }

        v20 = (v89 + 2);
        *(this + 1) = v20;
LABEL_279:
        v10 = *(this + 2);
        if (v20 >= v10 || (v90 = *v20, (v90 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 26);
          if (!result)
          {
            return result;
          }

          v91 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          a1[26] = v90;
          v91 = (v20 + 1);
          *(this + 1) = v91;
        }

        a1[37] |= 0x1000000u;
        if (v10 - v91 < 2 || *v91 != 208 || v91[1] != 1)
        {
          continue;
        }

        v19 = (v91 + 2);
        *(this + 1) = v19;
LABEL_288:
        if (v19 >= v10 || (v92 = *v19, (v92 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 27);
          if (!result)
          {
            return result;
          }

          v93 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          a1[27] = v92;
          v93 = (v19 + 1);
          *(this + 1) = v93;
        }

        a1[37] |= 0x2000000u;
        if (v10 - v93 < 2 || *v93 != 216 || v93[1] != 1)
        {
          continue;
        }

        v43 = (v93 + 2);
        *(this + 1) = v43;
LABEL_297:
        if (v43 >= v10 || (v94 = *v43, (v94 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 28);
          if (!result)
          {
            return result;
          }

          v95 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          a1[28] = v94;
          v95 = (v43 + 1);
          *(this + 1) = v95;
        }

        a1[37] |= 0x4000000u;
        if (v10 - v95 < 2 || *v95 != 224 || v95[1] != 1)
        {
          continue;
        }

        v11 = (v95 + 2);
        *(this + 1) = v11;
LABEL_306:
        v111 = 0;
        if (v11 >= v10 || (v96 = *v11, (v96 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v111);
          if (!result)
          {
            return result;
          }

          v96 = v111;
          v97 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v97 = (v11 + 1);
          *(this + 1) = v97;
        }

        a1[29] = v96;
        a1[37] |= 0x8000000u;
        if (v10 - v97 < 2 || *v97 != 232 || v97[1] != 1)
        {
          continue;
        }

        v41 = (v97 + 2);
        *(this + 1) = v41;
LABEL_315:
        if (v41 >= v10 || (v98 = *v41, (v98 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 30);
          if (!result)
          {
            return result;
          }

          v99 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          a1[30] = v98;
          v99 = (v41 + 1);
          *(this + 1) = v99;
        }

        a1[37] |= 0x10000000u;
        if (v10 - v99 < 2 || *v99 != 240 || v99[1] != 1)
        {
          continue;
        }

        v42 = (v99 + 2);
        *(this + 1) = v42;
LABEL_324:
        if (v42 >= v10 || (v100 = *v42, (v100 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 31);
          if (!result)
          {
            return result;
          }

          v101 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          a1[31] = v100;
          v101 = (v42 + 1);
          *(this + 1) = v101;
        }

        a1[37] |= 0x20000000u;
        if (v10 - v101 < 2 || *v101 != 248 || v101[1] != 1)
        {
          continue;
        }

        v36 = (v101 + 2);
        *(this + 1) = v36;
LABEL_333:
        if (v36 >= v10 || (v102 = *v36, (v102 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 32);
          if (!result)
          {
            return result;
          }

          v103 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          a1[32] = v102;
          v103 = (v36 + 1);
          *(this + 1) = v103;
        }

        a1[37] |= 0x40000000u;
        if (v10 - v103 < 2 || *v103 != 128 || v103[1] != 2)
        {
          continue;
        }

        v26 = (v103 + 2);
        *(this + 1) = v26;
LABEL_342:
        if (v26 >= v10 || (v104 = *v26, (v104 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 33);
          if (!result)
          {
            return result;
          }

          v105 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          a1[33] = v104;
          v105 = (v26 + 1);
          *(this + 1) = v105;
        }

        a1[37] |= 0x80000000;
        if (v10 - v105 < 2 || *v105 != 136 || v105[1] != 2)
        {
          continue;
        }

        v37 = (v105 + 2);
        *(this + 1) = v37;
LABEL_351:
        if (v37 >= v10 || (v106 = *v37, (v106 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 34);
          if (!result)
          {
            return result;
          }

          v107 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          a1[34] = v106;
          v107 = (v37 + 1);
          *(this + 1) = v107;
        }

        a1[38] |= 1u;
        if (v10 - v107 < 2 || *v107 != 144 || v107[1] != 2)
        {
          continue;
        }

        v14 = (v107 + 2);
        *(this + 1) = v14;
LABEL_360:
        if (v14 >= v10 || (v108 = *v14, (v108 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 35);
          if (!result)
          {
            return result;
          }

          v109 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          a1[35] = v108;
          v109 = v14 + 1;
          *(this + 1) = v109;
        }

        a1[38] |= 2u;
        if (v109 != v10 || !*(this + 11) && *(this + 6) != *(this + 10))
        {
          continue;
        }

        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v21 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_93;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v23 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_101;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v16 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_109;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v29 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_117;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v32 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_125;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v24 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_133;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v35 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_141;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v18 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_149;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v34 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_157;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v15 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_165;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v17 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_173;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v31 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_181;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v13 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_189;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v22 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_198;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v12 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_207;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v27 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_216;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v33 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_225;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v39 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_234;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v28 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_243;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v30 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_252;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v38 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_261;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v40 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_270;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v20 = *(this + 1);
        goto LABEL_279;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v19 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_288;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v43 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_297;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_306;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v41 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_315;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v42 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_324;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v36 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_333;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v26 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_342;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v37 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_351;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v14 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_360;
      default:
LABEL_76:
        if ((TagFallback & 7) == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}

unsigned int *sub_24541CCD0(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[37];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, result[2], a2, a4);
    v6 = v5[37];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v5[3], a2, a4);
  v6 = v5[37];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[37];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, v5[6], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, v5[7], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, v5[8], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, v5[9], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[10], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[11], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, v5[12], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, v5[13], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xD, v5[14], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xE, v5[15], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xF, v5[16], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, v5[17], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x11, v5[18], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x12, v5[19], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x13, v5[20], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x14, v5[21], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, v5[22], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, v5[23], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, v5[24], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x18, v5[25], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, v5[26], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, v5[27], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, v5[28], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x1C, v5[29], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, v5[30], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_67:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, v5[32], a2, a4);
    if ((v5[37] & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_68;
  }

LABEL_66:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, v5[31], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_67;
  }

LABEL_32:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_68:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, v5[33], a2, a4);
LABEL_33:
  v7 = v5[38];
  if (v7)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, v5[34], a2, a4);
    v7 = v5[38];
  }

  if ((v7 & 2) != 0)
  {
    v8 = v5[35];

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22, v8, a2, a4);
  }

  return result;
}

uint64_t sub_24541D0BC(uint64_t a1)
{
  v2 = *(a1 + 148);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_58;
  }

  if (v2)
  {
    v4 = *(a1 + 8);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(a1 + 148);
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v5 = *(a1 + 12);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(a1 + 148);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_19:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 16);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(a1 + 148);
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_21:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_21;
  }

  v9 = *(a1 + 20);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(a1 + 148);
  }

  else
  {
    v10 = 2;
  }

  v3 = (v10 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_22:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_34:
  v11 = *(a1 + 24);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 11;
  }

  else if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(a1 + 148);
  }

  else
  {
    v12 = 2;
  }

  v3 = (v12 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_23:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_46;
  }

LABEL_40:
  v13 = *(a1 + 28);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = *(a1 + 148);
  }

  else
  {
    v14 = 2;
  }

  v3 = (v14 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_24:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

LABEL_46:
  v15 = *(a1 + 32);
  if ((v15 & 0x80000000) != 0)
  {
    v16 = 11;
  }

  else if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = *(a1 + 148);
  }

  else
  {
    v16 = 2;
  }

  v3 = (v16 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_52:
    v17 = *(a1 + 36);
    if ((v17 & 0x80000000) != 0)
    {
      v18 = 11;
    }

    else if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v2 = *(a1 + 148);
    }

    else
    {
      v18 = 2;
    }

    v3 = (v18 + v3);
  }

LABEL_58:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_110;
  }

  if ((v2 & 0x100) != 0)
  {
    v19 = *(a1 + 40);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v2 = *(a1 + 148);
    }

    else
    {
      v20 = 2;
    }

    v3 = (v20 + v3);
    if ((v2 & 0x200) == 0)
    {
LABEL_61:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_76;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_61;
  }

  v21 = *(a1 + 44);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v2 = *(a1 + 148);
  }

  else
  {
    v22 = 2;
  }

  v3 = (v22 + v3);
  if ((v2 & 0x400) == 0)
  {
LABEL_62:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_82;
  }

LABEL_76:
  v23 = *(a1 + 48);
  if ((v23 & 0x80000000) != 0)
  {
    v24 = 11;
  }

  else if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v2 = *(a1 + 148);
  }

  else
  {
    v24 = 2;
  }

  v3 = (v24 + v3);
  if ((v2 & 0x800) == 0)
  {
LABEL_63:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_88;
  }

LABEL_82:
  v25 = *(a1 + 52);
  if ((v25 & 0x80000000) != 0)
  {
    v26 = 11;
  }

  else if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v2 = *(a1 + 148);
  }

  else
  {
    v26 = 2;
  }

  v3 = (v26 + v3);
  if ((v2 & 0x1000) == 0)
  {
LABEL_64:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_94;
  }

LABEL_88:
  v27 = *(a1 + 56);
  if ((v27 & 0x80000000) != 0)
  {
    v28 = 11;
  }

  else if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v2 = *(a1 + 148);
  }

  else
  {
    v28 = 2;
  }

  v3 = (v28 + v3);
  if ((v2 & 0x2000) == 0)
  {
LABEL_65:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_100;
  }

LABEL_94:
  v29 = *(a1 + 60);
  if ((v29 & 0x80000000) != 0)
  {
    v30 = 11;
  }

  else if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    v2 = *(a1 + 148);
  }

  else
  {
    v30 = 2;
  }

  v3 = (v30 + v3);
  if ((v2 & 0x4000) == 0)
  {
LABEL_66:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_106;
  }

LABEL_100:
  v31 = *(a1 + 64);
  if ((v31 & 0x80000000) != 0)
  {
    v32 = 11;
  }

  else if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
    v2 = *(a1 + 148);
  }

  else
  {
    v32 = 2;
  }

  v3 = (v32 + v3);
  if ((v2 & 0x8000) != 0)
  {
LABEL_106:
    v33 = *(a1 + 68);
    if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
      v2 = *(a1 + 148);
    }

    else
    {
      v34 = 3;
    }

    v3 = (v34 + v3);
  }

LABEL_110:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_162;
  }

  if ((v2 & 0x10000) != 0)
  {
    v35 = *(a1 + 72);
    if ((v35 & 0x80000000) != 0)
    {
      v36 = 12;
    }

    else if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
      v2 = *(a1 + 148);
    }

    else
    {
      v36 = 3;
    }

    v3 = (v36 + v3);
    if ((v2 & 0x20000) == 0)
    {
LABEL_113:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_132;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_113;
  }

  v37 = *(a1 + 76);
  if ((v37 & 0x80000000) != 0)
  {
    v38 = 12;
  }

  else if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
    v2 = *(a1 + 148);
  }

  else
  {
    v38 = 3;
  }

  v3 = (v38 + v3);
  if ((v2 & 0x40000) == 0)
  {
LABEL_114:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_138;
  }

LABEL_132:
  v39 = *(a1 + 80);
  if ((v39 & 0x80000000) != 0)
  {
    v40 = 12;
  }

  else if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
    v2 = *(a1 + 148);
  }

  else
  {
    v40 = 3;
  }

  v3 = (v40 + v3);
  if ((v2 & 0x80000) == 0)
  {
LABEL_115:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_144;
  }

LABEL_138:
  v41 = *(a1 + 84);
  if ((v41 & 0x80000000) != 0)
  {
    v42 = 12;
  }

  else if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
    v2 = *(a1 + 148);
  }

  else
  {
    v42 = 3;
  }

  v3 = (v42 + v3);
  if ((v2 & 0x100000) == 0)
  {
LABEL_116:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_148;
  }

LABEL_144:
  v43 = *(a1 + 88);
  if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
    v2 = *(a1 + 148);
  }

  else
  {
    v44 = 3;
  }

  v3 = (v44 + v3);
  if ((v2 & 0x200000) == 0)
  {
LABEL_117:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_152;
  }

LABEL_148:
  v45 = *(a1 + 92);
  if (v45 >= 0x80)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
    v2 = *(a1 + 148);
  }

  else
  {
    v46 = 3;
  }

  v3 = (v46 + v3);
  if ((v2 & 0x400000) == 0)
  {
LABEL_118:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_156;
  }

LABEL_152:
  v47 = *(a1 + 96);
  if (v47 >= 0x80)
  {
    v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47) + 2;
    v2 = *(a1 + 148);
  }

  else
  {
    v48 = 3;
  }

  v3 = (v48 + v3);
  if ((v2 & 0x800000) != 0)
  {
LABEL_156:
    v49 = *(a1 + 100);
    if ((v49 & 0x80000000) != 0)
    {
      v50 = 12;
    }

    else if (v49 >= 0x80)
    {
      v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49) + 2;
      v2 = *(a1 + 148);
    }

    else
    {
      v50 = 3;
    }

    v3 = (v50 + v3);
  }

LABEL_162:
  if (!HIBYTE(v2))
  {
    goto LABEL_206;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v51 = *(a1 + 104);
    if (v51 >= 0x80)
    {
      v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51) + 2;
      v2 = *(a1 + 148);
    }

    else
    {
      v52 = 3;
    }

    v3 = (v52 + v3);
    if ((v2 & 0x2000000) == 0)
    {
LABEL_165:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_166;
      }

      goto LABEL_180;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_165;
  }

  v53 = *(a1 + 108);
  if (v53 >= 0x80)
  {
    v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53) + 2;
    v2 = *(a1 + 148);
  }

  else
  {
    v54 = 3;
  }

  v3 = (v54 + v3);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_166:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_184;
  }

LABEL_180:
  v55 = *(a1 + 112);
  if (v55 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 2;
    v2 = *(a1 + 148);
  }

  else
  {
    v56 = 3;
  }

  v3 = (v56 + v3);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_167:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_190;
  }

LABEL_184:
  v57 = *(a1 + 116);
  if ((v57 & 0x80000000) != 0)
  {
    v58 = 12;
  }

  else if (v57 >= 0x80)
  {
    v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57) + 2;
    v2 = *(a1 + 148);
  }

  else
  {
    v58 = 3;
  }

  v3 = (v58 + v3);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_168:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_194;
  }

LABEL_190:
  v59 = *(a1 + 120);
  if (v59 >= 0x80)
  {
    v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59) + 2;
    v2 = *(a1 + 148);
  }

  else
  {
    v60 = 3;
  }

  v3 = (v60 + v3);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_169:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_198;
  }

LABEL_194:
  v61 = *(a1 + 124);
  if (v61 >= 0x80)
  {
    v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61) + 2;
    v2 = *(a1 + 148);
  }

  else
  {
    v62 = 3;
  }

  v3 = (v62 + v3);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_170:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_206;
    }

    goto LABEL_202;
  }

LABEL_198:
  v63 = *(a1 + 128);
  if (v63 >= 0x80)
  {
    v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63) + 2;
    v2 = *(a1 + 148);
  }

  else
  {
    v64 = 3;
  }

  v3 = (v64 + v3);
  if ((v2 & 0x80000000) != 0)
  {
LABEL_202:
    v65 = *(a1 + 132);
    if (v65 >= 0x80)
    {
      v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65) + 2;
    }

    else
    {
      v66 = 3;
    }

    v3 = (v66 + v3);
  }

LABEL_206:
  LOBYTE(v67) = *(a1 + 152);
  if (v67)
  {
    if (*(a1 + 152))
    {
      v68 = *(a1 + 136);
      if (v68 >= 0x80)
      {
        v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68) + 2;
        v67 = *(a1 + 152);
      }

      else
      {
        v69 = 3;
      }

      v3 = (v69 + v3);
    }

    if ((v67 & 2) != 0)
    {
      v70 = *(a1 + 140);
      if (v70 >= 0x80)
      {
        v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70) + 2;
      }

      else
      {
        v71 = 3;
      }

      v3 = (v71 + v3);
    }
  }

  *(a1 + 144) = v3;
  return v3;
}

void sub_24541D7B4(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858AC0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24541B620(a1, lpsrc);
}

void sub_24541D870(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  sub_245426F74((a1 + 2), a2 + 8);
  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      v5 = *(a2 + 32);
      a1[13] |= 1u;
      a1[8] = v5;
      v4 = *(a2 + 52);
    }

    if ((v4 & 4) != 0)
    {
      v6 = *(a2 + 36);
      if (v6 >= 6)
      {
        __assert_rtn("set_session_protocol", "GnssEmergencyTypes.pb.h", 24528, "::CoreGem::proto::gnss::Emergency::SessionProtocol_IsValid(value)");
      }

      a1[13] |= 4u;
      a1[9] = v6;
      v4 = *(a2 + 52);
    }

    if ((v4 & 8) != 0)
    {
      v7 = *(a2 + 40);
      if (v7 >= 7)
      {
        __assert_rtn("set_pos_protocol", "GnssEmergencyTypes.pb.h", 24551, "::CoreGem::proto::gnss::Emergency::PosProtocol_IsValid(value)");
      }

      a1[13] |= 8u;
      a1[10] = v7;
      v4 = *(a2 + 52);
    }

    if ((v4 & 0x10) != 0)
    {
      v8 = *(a2 + 44);
      a1[13] |= 0x10u;
      a1[11] = v8;
    }
  }
}

void sub_24541D9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24541D9C8(uint64_t a1)
{
  *a1 = &unk_285857C00;
  sub_2453EB7EC();
  v2 = *(a1 + 20);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 8) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 20);
      }
    }
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    MEMORY[0x245D6A0A0](v5, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24541DA90(uint64_t a1)
{
  sub_24541D9C8(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24541DB20(uint64_t a1)
{
  if (*(a1 + 52))
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  result = sub_2453DC6D0(a1 + 8);
  *(a1 + 52) = 0;
  return result;
}

uint64_t sub_24541DB58(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_1:
          v4 = *(this + 1);
          if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v4 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v6 = TagFallback >> 3;
          v7 = TagFallback & 7;
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v6 != 1)
          {
            if (v6 != 2 || v7 != 2)
            {
              goto LABEL_21;
            }

            goto LABEL_32;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v14 = *(this + 1);
          v15 = *(this + 2);
          if (v14 >= v15 || (v16 = *v14, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 8);
            if (!result)
            {
              return result;
            }

            v17 = *(this + 1);
            v15 = *(this + 2);
          }

          else
          {
            a1[8] = v16;
            v17 = v14 + 1;
            *(this + 1) = v17;
          }

          a1[13] |= 1u;
          if (v17 < v15 && *v17 == 18)
          {
            while (1)
            {
              *(this + 1) = v17 + 1;
LABEL_32:
              v19 = a1[5];
              v20 = a1[4];
              if (v20 >= v19)
              {
                if (v19 == a1[6])
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2));
                  v19 = a1[5];
                }

                a1[5] = v19 + 1;
                operator new();
              }

              v21 = *(a1 + 1);
              a1[4] = v20 + 1;
              v22 = *(v21 + 8 * v20);
              v38 = 0;
              v23 = *(this + 1);
              if (v23 >= *(this + 2) || *v23 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v38))
                {
                  return 0;
                }
              }

              else
              {
                v38 = *v23;
                *(this + 1) = v23 + 1;
              }

              v24 = *(this + 14);
              v25 = *(this + 15);
              *(this + 14) = v24 + 1;
              if (v24 >= v25)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
              if (!sub_24541BC74(v22, this) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
              v26 = *(this + 14);
              v27 = __OFSUB__(v26, 1);
              v28 = v26 - 1;
              if (v28 < 0 == v27)
              {
                *(this + 14) = v28;
              }

              v17 = *(this + 1);
              v11 = *(this + 2);
              if (v17 >= v11)
              {
                break;
              }

              v29 = *v17;
              if (v29 != 18)
              {
                if (v29 != 24)
                {
                  goto LABEL_1;
                }

                v10 = v17 + 1;
                *(this + 1) = v10;
                goto LABEL_50;
              }
            }
          }
        }

        if (v6 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v10 = *(this + 1);
        v11 = *(this + 2);
LABEL_50:
        v37 = 0;
        if (v10 >= v11 || (v30 = *v10, (v30 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v37);
          if (!result)
          {
            return result;
          }

          v30 = v37;
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v30 <= 5)
        {
          a1[13] |= 4u;
          a1[9] = v30;
        }

        v31 = *(this + 1);
        v12 = *(this + 2);
        if (v31 < v12 && *v31 == 32)
        {
          v13 = v31 + 1;
          *(this + 1) = v13;
          goto LABEL_60;
        }
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v13 = *(this + 1);
      v12 = *(this + 2);
LABEL_60:
      v36 = 0;
      if (v13 >= v12 || (v32 = *v13, (v32 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v36);
        if (!result)
        {
          return result;
        }

        v32 = v36;
      }

      else
      {
        *(this + 1) = v13 + 1;
      }

      if (v32 <= 6)
      {
        a1[13] |= 8u;
        a1[10] = v32;
      }

      v33 = *(this + 1);
      v8 = *(this + 2);
      if (v33 < v8 && *v33 == 40)
      {
        v9 = v33 + 1;
        *(this + 1) = v9;
LABEL_70:
        if (v9 >= v8 || (v34 = *v9, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 11);
          if (!result)
          {
            return result;
          }

          v35 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          a1[11] = v34;
          v35 = v9 + 1;
          *(this + 1) = v35;
        }

        a1[13] |= 0x10u;
        if (v35 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_70;
    }

LABEL_21:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_24541DF88(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 52))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 32), a2, a4);
  }

  if (*(v5 + 16) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  v7 = *(v5 + 52);
  if ((v7 & 4) == 0)
  {
    if ((v7 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 40), a2, a4);
    if ((*(v5 + 52) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 36), a2, a4);
  v7 = *(v5 + 52);
  if ((v7 & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if ((v7 & 0x10) == 0)
  {
    return result;
  }

LABEL_12:
  v8 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v8, a2, a4);
}

uint64_t sub_24541E06C(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 52);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_29;
  }

  if (*(a1 + 52))
  {
    v4 = *(a1 + 32);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(a1 + 52);
      if ((v2 & 4) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 4) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(a1 + 52) & 4) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(a1 + 36);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(a1 + 52);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_16:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  v7 = *(a1 + 40);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v2 = *(a1 + 52);
  }

  else
  {
    v8 = 2;
  }

  v3 += v8;
  if ((v2 & 0x10) != 0)
  {
LABEL_25:
    v9 = *(a1 + 44);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    }

    else
    {
      v10 = 2;
    }

    v3 += v10;
  }

LABEL_29:
  v11 = *(a1 + 16);
  v12 = (v11 + v3);
  if (v11 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = sub_24541D0BC(*(*(a1 + 8) + 8 * v13));
      v15 = v14;
      if (v14 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      }

      else
      {
        v16 = 1;
      }

      v12 = (v15 + v12 + v16);
      ++v13;
    }

    while (v13 < *(a1 + 16));
  }

  *(a1 + 48) = v12;
  return v12;
}

void sub_24541E1C8(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858AD8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24541D870(a1, lpsrc);
}

void sub_24541E284(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 8);
    *(a1 + 16) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_24541E310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24541E328(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857C78;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24541E384(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24541E328(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24541E40C(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_24541E420(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v4 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v11 = 0;
      v7 = *(this + 1);
      v6 = *(this + 2);
      if (v7 >= v6 || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v11);
        if (!result)
        {
          return result;
        }

        v8 = v11;
        v9 = *(this + 1);
        v6 = *(this + 2);
      }

      else
      {
        v9 = v7 + 1;
        *(this + 1) = v9;
      }

      *(a1 + 8) = v8 != 0;
      *(a1 + 16) |= 1u;
      if (v9 == v6 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_24541E538(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
  }

  return result;
}

uint64_t sub_24541E554(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = 2 * (*(a1 + 16) & 1u);
  }

  else
  {
    v1 = 0;
  }

  *(a1 + 12) = v1;
  return v1;
}

void sub_24541E570(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858AF0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24541E284(a1, lpsrc);
}

void *sub_24541E62C(void *a1, uint64_t a2)
{
  *a1 = &unk_285857CF0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  sub_24541E688(a1, a2);
  return a1;
}

void sub_24541E688(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      *(a1 + 28) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        sub_2453EB7EC();
        v6 = *(qword_2813CEF80 + 8);
      }

      sub_2453EB890(v5, v6);
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 28) |= 2u;
      v7 = *(a1 + 16);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 16);
      if (!v8)
      {
        sub_2453EB7EC();
        v8 = *(qword_2813CEF80 + 16);
      }

      sub_24541EF18(v7, v8);
    }
  }
}

void sub_24541E800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24541E818(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857CF0;
  sub_24541E870(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24541E870(uint64_t a1)
{
  sub_2453EB7EC();
  if (qword_2813CEF80 != a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

void sub_24541E918(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24541E818(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24541E99C(uint64_t result)
{
  LOBYTE(v1) = *(result + 28);
  if (v1)
  {
    if (*(result + 28))
    {
      v2 = *(result + 8);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 16) = 0;
          *(v2 + 8) = 0;
        }

        *(v2 + 24) = 0;
        v1 = *(result + 28);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(result + 16);
      if (v3)
      {
        if (*(v3 + 16))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 16) = 0;
      }
    }
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_24541E9EC(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_24541EA00(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v6 != 2)
      {
        goto LABEL_15;
      }

      *(a1 + 28) |= 1u;
      v7 = *(a1 + 8);
      if (!v7)
      {
        operator new();
      }

      v22 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22))
        {
          return 0;
        }
      }

      else
      {
        v22 = *v8;
        *(this + 1) = v8 + 1;
      }

      v9 = *(this + 14);
      v10 = *(this + 15);
      *(this + 14) = v9 + 1;
      if (v9 >= v10)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      if (!sub_2453EBA78(v7, this) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v11 = *(this + 14);
      v12 = __OFSUB__(v11, 1);
      v13 = v11 - 1;
      if (v13 < 0 == v12)
      {
        *(this + 14) = v13;
      }

      v14 = *(this + 1);
      if (v14 < *(this + 2) && *v14 == 18)
      {
        *(this + 1) = v14 + 1;
LABEL_27:
        *(a1 + 28) |= 2u;
        v15 = *(a1 + 16);
        if (!v15)
        {
          operator new();
        }

        v23 = 0;
        v16 = *(this + 1);
        if (v16 >= *(this + 2) || *v16 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23))
          {
            return 0;
          }
        }

        else
        {
          v23 = *v16;
          *(this + 1) = v16 + 1;
        }

        v17 = *(this + 14);
        v18 = *(this + 15);
        *(this + 14) = v17 + 1;
        if (v17 >= v18)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245426384(v15, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v19 = *(this + 14);
        v12 = __OFSUB__(v19, 1);
        v20 = v19 - 1;
        if (v20 < 0 == v12)
        {
          *(this + 14) = v20;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 2)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (v6 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_24541ECF4(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEF80 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      sub_2453EB7EC();
      v8 = *(qword_2813CEF80 + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return result;
}

uint64_t sub_24541ED88(uint64_t a1)
{
  if (!*(a1 + 28))
  {
    v2 = 0;
    goto LABEL_19;
  }

  if ((*(a1 + 28) & 1) == 0)
  {
    v2 = 0;
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    sub_2453EB7EC();
    v3 = *(qword_2813CEF80 + 8);
  }

  v4 = 2 * (*(v3 + 24) & 1) + (*(v3 + 24) & 2);
  if ((*(v3 + 24) & 4) != 0)
  {
    v4 |= 9u;
  }

  if (*(v3 + 24))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(v3 + 20) = v5;
  v2 = (v5 + 2);
  if ((*(a1 + 28) & 2) != 0)
  {
LABEL_14:
    v6 = *(a1 + 16);
    if (!v6)
    {
      sub_2453EB7EC();
      v6 = *(qword_2813CEF80 + 16);
    }

    v7 = 2 * (*(v6 + 16) & 1) + (*(v6 + 16) & 2) + ((*(v6 + 16) >> 1) & 2) + ((*(v6 + 16) >> 2) & 2);
    if (!*(v6 + 16))
    {
      v7 = 0;
    }

    *(v6 + 12) = v7;
    v2 = (v2 + v7 + 2);
  }

LABEL_19:
  *(a1 + 24) = v2;
  return v2;
}

void sub_24541EE74(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858B08, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24541E688(a1, lpsrc);
}

void sub_24541EF18(uint64_t a1, _BYTE *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = a2[16];
  if (v4)
  {
    if (a2[16])
    {
      v6 = a2[8];
      *(a1 + 16) |= 1u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 4);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((a2[16] & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = a2[9];
    *(a1 + 16) |= 2u;
    *(a1 + 9) = v7;
    v4 = *(a2 + 4);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_12:
    v8 = a2[10];
    *(a1 + 16) |= 4u;
    *(a1 + 10) = v8;
    if ((*(a2 + 4) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = a2[11];
    *(a1 + 16) |= 8u;
    *(a1 + 11) = v5;
  }
}

void sub_24541F00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24541F03C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v6 = *(a2 + 8);
    *(a1 + 40) |= 2u;
    v7 = *(a1 + 8);
    if (v7 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v7, v6);
    v4 = *(a2 + 40);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v5 = *(a2 + 32);
  *(a1 + 40) |= 1u;
  *(a1 + 32) = v5;
  v4 = *(a2 + 40);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_13:
  *(a1 + 40) |= 4u;
  v8 = *(a1 + 16);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    sub_2453EB7EC();
    v9 = *(qword_2813CEFB8 + 16);
  }

  sub_24541E284(v8, v9);
  if ((*(a2 + 40) & 8) != 0)
  {
LABEL_18:
    *(a1 + 40) |= 8u;
    v10 = *(a1 + 24);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 24);
    if (!v11)
    {
      sub_2453EB7EC();
      v11 = *(qword_2813CEFB8 + 24);
    }

    sub_2453ED0E0(v10, v11);
  }
}

void sub_24541F240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24541F258(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857D68;
  v2 = *(a1 + 1);
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x245D6A0D0](v2, 0x1012C40EC159624);
  }

  sub_2453EB7EC();
  if (qword_2813CEFB8 != a1)
  {
    v4 = *(a1 + 2);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(a1 + 3);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24541F35C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24541F258(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24541F3F0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2)
  {
    *(result + 32) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(result + 8);
      if (v3 != MEMORY[0x277D82C30])
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    v4 = *(result + 40);
    if ((v4 & 4) != 0)
    {
      v5 = *(result + 16);
      if (v5)
      {
        if (*(v5 + 16))
        {
          *(v5 + 8) = 0;
        }

        *(v5 + 16) = 0;
        v4 = *(result + 40);
      }
    }

    if ((v4 & 8) != 0)
    {
      result = *(result + 24);
      if (result)
      {
        result = sub_2453ED398(result);
      }
    }
  }

  *(v1 + 40) = 0;
  return result;
}

uint64_t sub_24541F48C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(this + 1);
          if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v7 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_21;
            }

            v30 = 0;
            v11 = *(this + 1);
            v10 = *(this + 2);
            if (v11 >= v10 || (v12 = *v11, (v12 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30);
              if (!result)
              {
                return result;
              }

              v12 = v30;
              v13 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              v13 = v11 + 1;
              *(this + 1) = v13;
            }

            *(a1 + 32) = v12 != 0;
            v9 = *(a1 + 40) | 1;
            *(a1 + 40) = v9;
            if (v13 < v10 && *v13 == 18)
            {
              *(this + 1) = v13 + 1;
              goto LABEL_29;
            }
          }

          else
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_21;
            }

            v9 = *(a1 + 40);
LABEL_29:
            *(a1 + 40) = v9 | 2;
            if (*(a1 + 8) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v15 = *(this + 1);
            if (v15 < *(this + 2) && *v15 == 26)
            {
              *(this + 1) = v15 + 1;
              goto LABEL_35;
            }
          }
        }

        if (v7 != 3)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_21;
        }

LABEL_35:
        *(a1 + 40) |= 4u;
        v16 = *(a1 + 16);
        if (!v16)
        {
          operator new();
        }

        v31 = 0;
        v17 = *(this + 1);
        if (v17 >= *(this + 2) || *v17 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
          {
            return 0;
          }
        }

        else
        {
          v31 = *v17;
          *(this + 1) = v17 + 1;
        }

        v18 = *(this + 14);
        v19 = *(this + 15);
        *(this + 14) = v18 + 1;
        if (v18 >= v19)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24541E420(v16, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v20 = *(this + 14);
        v21 = __OFSUB__(v20, 1);
        v22 = v20 - 1;
        if (v22 < 0 == v21)
        {
          *(this + 14) = v22;
        }

        v23 = *(this + 1);
        if (v23 < *(this + 2) && *v23 == 34)
        {
          *(this + 1) = v23 + 1;
          goto LABEL_49;
        }
      }

      if (v7 != 4 || v8 != 2)
      {
        break;
      }

LABEL_49:
      *(a1 + 40) |= 8u;
      v24 = *(a1 + 24);
      if (!v24)
      {
        operator new();
      }

      v32 = 0;
      v25 = *(this + 1);
      if (v25 >= *(this + 2) || *v25 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32))
        {
          return 0;
        }
      }

      else
      {
        v32 = *v25;
        *(this + 1) = v25 + 1;
      }

      v26 = *(this + 14);
      v27 = *(this + 15);
      *(this + 14) = v26 + 1;
      if (v26 >= v27)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      if (!sub_2453ED3E8(v24, this) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v28 = *(this + 14);
      v21 = __OFSUB__(v28, 1);
      v29 = v28 - 1;
      if (v29 < 0 == v21)
      {
        *(this + 14) = v29;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_24541F89C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 32), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 8);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_8:
  v8 = *(v5 + 16);
  if (!v8)
  {
    sub_2453EB7EC();
    v8 = *(qword_2813CEFB8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  if ((*(v5 + 40) & 8) != 0)
  {
LABEL_11:
    v9 = *(v5 + 24);
    if (!v9)
    {
      sub_2453EB7EC();
      v9 = *(qword_2813CEFB8 + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  }

  return result;
}

uint64_t sub_24541F96C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_28;
  }

  v3 = 2 * (v2 & 1u);
  if ((v2 & 2) != 0)
  {
    v4 = *(a1 + 8);
    v5 = *(v4 + 23);
    v6 = v5;
    v7 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v8 = *(v4 + 23);
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v2 = *(a1 + 40);
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 1;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    v3 = (v9 + v3 + v5 + 1);
    if ((v2 & 4) == 0)
    {
LABEL_4:
      if ((v2 & 8) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_4;
  }

  v10 = *(a1 + 16);
  if (!v10)
  {
    sub_2453EB7EC();
    v10 = *(qword_2813CEFB8 + 16);
  }

  if (*(v10 + 16))
  {
    v11 = 2 * (*(v10 + 16) & 1);
  }

  else
  {
    v11 = 0;
  }

  *(v10 + 12) = v11;
  v3 = (v3 + v11 + 2);
  if ((*(a1 + 40) & 8) != 0)
  {
LABEL_22:
    v12 = *(a1 + 24);
    if (!v12)
    {
      sub_2453EB7EC();
      v12 = *(qword_2813CEFB8 + 24);
    }

    v13 = sub_2453ED878(v12);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    }

    else
    {
      v15 = 1;
    }

    v3 = (v3 + v14 + v15 + 1);
  }

LABEL_28:
  *(a1 + 36) = v3;
  return v3;
}

void sub_24541FA9C(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858B20, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24541F03C(a1, lpsrc);
}

void sub_24541FB58(_DWORD *a1, _DWORD *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = a2[16];
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v6 = a2[2];
    a1[16] |= 1u;
    a1[2] = v6;
    v4 = a2[16];
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v7 = a2[3];
  a1[16] |= 2u;
  a1[3] = v7;
  v4 = a2[16];
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = a2[4];
  a1[16] |= 4u;
  a1[4] = v8;
  v4 = a2[16];
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = a2[5];
  a1[16] |= 8u;
  a1[5] = v9;
  v4 = a2[16];
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v11 = a2[7];
    a1[16] |= 0x20u;
    a1[7] = v11;
    v4 = a2[16];
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_24:
  v10 = a2[6];
  a1[16] |= 0x10u;
  a1[6] = v10;
  v4 = a2[16];
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_26:
  v12 = a2[8];
  a1[16] |= 0x40u;
  a1[8] = v12;
  v4 = a2[16];
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = a2[9];
    a1[16] |= 0x80u;
    a1[9] = v5;
    v4 = a2[16];
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v13 = a2[10];
    a1[16] |= 0x100u;
    a1[10] = v13;
    v4 = a2[16];
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_30;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v14 = a2[11];
  a1[16] |= 0x200u;
  a1[11] = v14;
  v4 = a2[16];
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

LABEL_31:
    v16 = a2[13];
    a1[16] |= 0x800u;
    a1[13] = v16;
    if ((a2[16] & 0x1000) == 0)
    {
      return;
    }

    goto LABEL_32;
  }

LABEL_30:
  v15 = a2[12];
  a1[16] |= 0x400u;
  a1[12] = v15;
  v4 = a2[16];
  if ((v4 & 0x800) != 0)
  {
    goto LABEL_31;
  }

LABEL_18:
  if ((v4 & 0x1000) == 0)
  {
    return;
  }

LABEL_32:
  v17 = a2[14];
  if (v17 >= 7)
  {
    __assert_rtn("set_doppler_uncer_ext", "GnssEmergencyTypes.pb.h", 25158, "::CoreGem::proto::gnss::Emergency::GpsDopplerUncMpsExt_IsValid(value)");
  }

  a1[16] |= 0x1000u;
  a1[14] = v17;
}

void sub_24541FDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24541FDB8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857DE0;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24541FE14(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24541FDB8(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24541FEA8(uint64_t result)
{
  v1 = *(result + 64);
  if (v1)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
  }

  *(result + 64) = 0;
  return result;
}

uint64_t sub_24541FED8(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (2)
  {
    v4 = *(this + 1);
    if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v4 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v7 = *(this + 1);
        v6 = *(this + 2);
        if (v7 < v6)
        {
          v8 = *v7;
          if ((v8 & 0x80000000) == 0)
          {
            a1[2] = v8;
            v9 = v7 + 1;
            *(this + 1) = v9;
LABEL_40:
            a1[16] |= 1u;
            if (v9 < v6 && *v9 == 16)
            {
              v17 = v9 + 1;
              *(this + 1) = v17;
              goto LABEL_43;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (result)
        {
          v9 = *(this + 1);
          v6 = *(this + 2);
          goto LABEL_40;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v17 = *(this + 1);
        v6 = *(this + 2);
LABEL_43:
        if (v17 >= v6 || (v22 = *v17, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v23 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[3] = v22;
          v23 = v17 + 1;
          *(this + 1) = v23;
        }

        a1[16] |= 2u;
        if (v23 >= v6 || *v23 != 24)
        {
          continue;
        }

        v14 = v23 + 1;
        *(this + 1) = v14;
LABEL_51:
        if (v14 >= v6 || (v24 = *v14, (v24 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
          if (!result)
          {
            return result;
          }

          v25 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[4] = v24;
          v25 = v14 + 1;
          *(this + 1) = v25;
        }

        a1[16] |= 4u;
        if (v25 >= v6 || *v25 != 32)
        {
          continue;
        }

        v15 = v25 + 1;
        *(this + 1) = v15;
LABEL_59:
        if (v15 >= v6 || (v26 = *v15, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
          if (!result)
          {
            return result;
          }

          v27 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[5] = v26;
          v27 = v15 + 1;
          *(this + 1) = v27;
        }

        a1[16] |= 8u;
        if (v27 >= v6 || *v27 != 40)
        {
          continue;
        }

        v11 = v27 + 1;
        *(this + 1) = v11;
LABEL_67:
        if (v11 >= v6 || (v28 = *v11, (v28 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 6);
          if (!result)
          {
            return result;
          }

          v29 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[6] = v28;
          v29 = v11 + 1;
          *(this + 1) = v29;
        }

        a1[16] |= 0x10u;
        if (v29 >= v6 || *v29 != 48)
        {
          continue;
        }

        v18 = v29 + 1;
        *(this + 1) = v18;
LABEL_75:
        if (v18 >= v6 || (v30 = *v18, (v30 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 7);
          if (!result)
          {
            return result;
          }

          v31 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[7] = v30;
          v31 = v18 + 1;
          *(this + 1) = v31;
        }

        a1[16] |= 0x20u;
        if (v31 >= v6 || *v31 != 56)
        {
          continue;
        }

        v19 = v31 + 1;
        *(this + 1) = v19;
LABEL_83:
        if (v19 >= v6 || (v32 = *v19, (v32 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 8);
          if (!result)
          {
            return result;
          }

          v33 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[8] = v32;
          v33 = v19 + 1;
          *(this + 1) = v33;
        }

        a1[16] |= 0x40u;
        if (v33 >= v6 || *v33 != 64)
        {
          continue;
        }

        v16 = v33 + 1;
        *(this + 1) = v16;
LABEL_91:
        if (v16 >= v6 || (v34 = *v16, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 9);
          if (!result)
          {
            return result;
          }

          v35 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[9] = v34;
          v35 = v16 + 1;
          *(this + 1) = v35;
        }

        a1[16] |= 0x80u;
        if (v35 >= v6 || *v35 != 72)
        {
          continue;
        }

        v21 = v35 + 1;
        *(this + 1) = v21;
LABEL_99:
        if (v21 >= v6 || (v36 = *v21, (v36 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 10);
          if (!result)
          {
            return result;
          }

          v37 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[10] = v36;
          v37 = v21 + 1;
          *(this + 1) = v37;
        }

        a1[16] |= 0x100u;
        if (v37 >= v6 || *v37 != 80)
        {
          continue;
        }

        v13 = v37 + 1;
        *(this + 1) = v13;
LABEL_107:
        if (v13 >= v6 || (v38 = *v13, (v38 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 11);
          if (!result)
          {
            return result;
          }

          v39 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[11] = v38;
          v39 = v13 + 1;
          *(this + 1) = v39;
        }

        a1[16] |= 0x200u;
        if (v39 >= v6 || *v39 != 88)
        {
          continue;
        }

        v20 = v39 + 1;
        *(this + 1) = v20;
LABEL_115:
        if (v20 >= v6 || (v40 = *v20, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 12);
          if (!result)
          {
            return result;
          }

          v41 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[12] = v40;
          v41 = v20 + 1;
          *(this + 1) = v41;
        }

        a1[16] |= 0x400u;
        if (v41 >= v6 || *v41 != 96)
        {
          continue;
        }

        v10 = v41 + 1;
        *(this + 1) = v10;
LABEL_123:
        if (v10 >= v6 || (v42 = *v10, (v42 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 13);
          if (!result)
          {
            return result;
          }

          v43 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[13] = v42;
          v43 = v10 + 1;
          *(this + 1) = v43;
        }

        a1[16] |= 0x800u;
        if (v43 >= v6 || *v43 != 104)
        {
          continue;
        }

        v12 = v43 + 1;
        *(this + 1) = v12;
LABEL_131:
        v46 = 0;
        if (v12 >= v6 || (v44 = *v12, (v44 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v46);
          if (!result)
          {
            return result;
          }

          v44 = v46;
        }

        else
        {
          *(this + 1) = v12 + 1;
        }

        if (v44 <= 6)
        {
          a1[16] |= 0x1000u;
          a1[14] = v44;
        }

        if (*(this + 1) != *(this + 2) || !*(this + 11) && *(this + 6) != *(this + 10))
        {
          continue;
        }

        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v14 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_51;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v15 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_59;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v11 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_67;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v18 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_75;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v19 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_83;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v16 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_91;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v21 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_99;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v13 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_107;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v20 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_115;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v10 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_123;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v12 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_131;
      default:
LABEL_34:
        if ((TagFallback & 7) == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}

unsigned int *sub_245420500(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[16];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, result[2], a2, a4);
    v6 = v5[16];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[16];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[16];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[8], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[9], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[10], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[11], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, v5[13], a2, a4);
    if ((v5[16] & 0x1000) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[12], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v6 & 0x1000) == 0)
  {
    return result;
  }

LABEL_27:
  v7 = v5[14];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, v7, a2, a4);
}

uint64_t sub_2454206A4(unsigned int *a1)
{
  v2 = a1[16];
  if (!v2)
  {
    v3 = 0;
    goto LABEL_45;
  }

  if (v2)
  {
    v4 = a1[2];
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = a1[16];
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = a1[3];
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = a1[16];
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = a1[4];
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = a1[16];
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_16:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

  v9 = a1[5];
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = a1[16];
  }

  else
  {
    v10 = 2;
  }

  v3 = (v10 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_17:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_29:
  v11 = a1[6];
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = a1[16];
  }

  else
  {
    v12 = 2;
  }

  v3 = (v12 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_18:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_33:
  v13 = a1[7];
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = a1[16];
  }

  else
  {
    v14 = 2;
  }

  v3 = (v14 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_19:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_37:
  v15 = a1[8];
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = a1[16];
  }

  else
  {
    v16 = 2;
  }

  v3 = (v16 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_41:
    v17 = a1[9];
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v2 = a1[16];
    }

    else
    {
      v18 = 2;
    }

    v3 = (v18 + v3);
  }

LABEL_45:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_74;
  }

  if ((v2 & 0x100) != 0)
  {
    v19 = a1[10];
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v2 = a1[16];
    }

    else
    {
      v20 = 2;
    }

    v3 = (v20 + v3);
    if ((v2 & 0x200) == 0)
    {
LABEL_48:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_60;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_48;
  }

  v21 = a1[11];
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v2 = a1[16];
  }

  else
  {
    v22 = 2;
  }

  v3 = (v22 + v3);
  if ((v2 & 0x400) == 0)
  {
LABEL_49:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_64;
  }

LABEL_60:
  v23 = a1[12];
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v2 = a1[16];
  }

  else
  {
    v24 = 2;
  }

  v3 = (v24 + v3);
  if ((v2 & 0x800) == 0)
  {
LABEL_50:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_68;
  }

LABEL_64:
  v25 = a1[13];
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v2 = a1[16];
  }

  else
  {
    v26 = 2;
  }

  v3 = (v26 + v3);
  if ((v2 & 0x1000) != 0)
  {
LABEL_68:
    v27 = a1[14];
    if ((v27 & 0x80000000) != 0)
    {
      v28 = 11;
    }

    else if (v27 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    }

    else
    {
      v28 = 2;
    }

    v3 = (v28 + v3);
  }

LABEL_74:
  a1[15] = v3;
  return v3;
}

void sub_245420930(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858B38, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24541FB58(a1, lpsrc);
}

void sub_2454209EC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
  LODWORD(v6) = *(a2 + 32);
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if (v7 >= v6)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
      }

      v8 = *(*(a2 + 24) + 8 * v7);
      v9 = *(a1 + 36);
      v10 = *(a1 + 32);
      if (v10 >= v9)
      {
        if (v9 == *(a1 + 40))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v9 = *(a1 + 36);
        }

        *(a1 + 36) = v9 + 1;
        operator new();
      }

      v11 = *(a1 + 24);
      *(a1 + 32) = v10 + 1;
      sub_24541FB58(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 32);
    }

    while (v7 < v6);
  }

  LOBYTE(v12) = *(a2 + 68);
  if (!v12)
  {
    return;
  }

  if (*(a2 + 68))
  {
    v14 = *(a2 + 8);
    *(a1 + 68) |= 1u;
    *(a1 + 8) = v14;
    v12 = *(a2 + 68);
    if ((v12 & 2) == 0)
    {
LABEL_16:
      if ((v12 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  else if ((*(a2 + 68) & 2) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 12);
  *(a1 + 68) |= 2u;
  *(a1 + 12) = v15;
  v12 = *(a2 + 68);
  if ((v12 & 4) == 0)
  {
LABEL_17:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_25:
  *(a1 + 68) |= 4u;
  v16 = *(a1 + 16);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 16);
  if (!v17)
  {
    sub_2453EB7EC();
    v17 = *(qword_2813CEF48 + 16);
  }

  sub_2454188E8(v16, v17);
  v12 = *(a2 + 68);
  if ((v12 & 0x10) == 0)
  {
LABEL_18:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_19;
    }

LABEL_31:
    v19 = *(a2 + 52);
    if (v19 >= 6)
    {
      __assert_rtn("set_session_protocol", "GnssEmergencyTypes.pb.h", 25318, "::CoreGem::proto::gnss::Emergency::SessionProtocol_IsValid(value)");
    }

    *(a1 + 68) |= 0x20u;
    *(a1 + 52) = v19;
    v12 = *(a2 + 68);
    if ((v12 & 0x40) == 0)
    {
LABEL_20:
      if ((v12 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_30:
  v18 = *(a2 + 48);
  *(a1 + 68) |= 0x10u;
  *(a1 + 48) = v18;
  v12 = *(a2 + 68);
  if ((v12 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_19:
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_33:
  v20 = *(a2 + 56);
  if (v20 >= 7)
  {
    __assert_rtn("set_pos_protocol", "GnssEmergencyTypes.pb.h", 25341, "::CoreGem::proto::gnss::Emergency::PosProtocol_IsValid(value)");
  }

  *(a1 + 68) |= 0x40u;
  *(a1 + 56) = v20;
  if ((*(a2 + 68) & 0x80) != 0)
  {
LABEL_21:
    v13 = *(a2 + 60);
    *(a1 + 68) |= 0x80u;
    *(a1 + 60) = v13;
  }
}

void sub_245420D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245420D64(uint64_t a1)
{
  *a1 = &unk_285857E58;
  sub_2453EB7EC();
  if (qword_2813CEF48 != a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(a1 + 36);
  if (v3 >= 1)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *(*(a1 + 24) + 8 * i);
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v3 = *(a1 + 36);
      }
    }
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    MEMORY[0x245D6A0A0](v6, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245420E68(uint64_t a1)
{
  sub_245420D64(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245420F00(uint64_t a1)
{
  v2 = *(a1 + 68);
  if (v2)
  {
    *(a1 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        sub_245418B5C(v3);
      }
    }

    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  result = sub_2453DC6D0(a1 + 24);
  *(a1 + 68) = 0;
  return result;
}

uint64_t sub_245420F4C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(this + 1);
        if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 > 4)
        {
          if (TagFallback >> 3 > 6)
          {
            if (v6 == 7)
            {
              if ((TagFallback & 7) == 0)
              {
                v20 = *(this + 1);
                v19 = *(this + 2);
                goto LABEL_101;
              }
            }

            else if (v6 == 8 && (TagFallback & 7) == 0)
            {
              v13 = *(this + 1);
              v12 = *(this + 2);
              goto LABEL_111;
            }
          }

          else if (v6 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_83;
            }
          }

          else if (v6 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_91;
          }

          goto LABEL_34;
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_34;
          }

          v14 = *(this + 1);
          v8 = *(this + 2);
          if (v14 >= v8 || (v15 = *v14, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
            if (!result)
            {
              return result;
            }

            v16 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            *(a1 + 8) = v15;
            v16 = v14 + 1;
            *(this + 1) = v16;
          }

          *(a1 + 68) |= 1u;
          if (v16 < v8 && *v16 == 16)
          {
            v9 = v16 + 1;
            *(this + 1) = v9;
LABEL_43:
            if (v9 >= v8 || (v22 = *v9, v22 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
              if (!result)
              {
                return result;
              }

              v23 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              *(a1 + 12) = v22;
              v23 = v9 + 1;
              *(this + 1) = v23;
            }

            v18 = *(a1 + 68) | 2;
            *(a1 + 68) = v18;
            if (v23 < v8 && *v23 == 26)
            {
              *(this + 1) = v23 + 1;
              goto LABEL_51;
            }
          }
        }

        else
        {
          if (v6 == 2 && (TagFallback & 7) == 0)
          {
            v9 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_43;
          }

LABEL_34:
          if (v7 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }
      }

      if (v6 != 3)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_34;
      }

      v18 = *(a1 + 68);
LABEL_51:
      *(a1 + 68) = v18 | 4;
      v24 = *(a1 + 16);
      if (!v24)
      {
        operator new();
      }

      v50 = 0;
      v25 = *(this + 1);
      if (v25 >= *(this + 2) || *v25 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
        {
          return 0;
        }
      }

      else
      {
        v50 = *v25;
        *(this + 1) = v25 + 1;
      }

      v26 = *(this + 14);
      v27 = *(this + 15);
      *(this + 14) = v26 + 1;
      if (v26 >= v27)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      if (!sub_245418B9C(v24, this) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v28 = *(this + 14);
      v29 = __OFSUB__(v28, 1);
      v30 = v28 - 1;
      if (v30 < 0 == v29)
      {
        *(this + 14) = v30;
      }

      v31 = *(this + 1);
      if (v31 < *(this + 2) && *v31 == 34)
      {
LABEL_64:
        *(this + 1) = v31 + 1;
        goto LABEL_65;
      }
    }

    if (v6 != 4 || v7 != 2)
    {
      goto LABEL_34;
    }

LABEL_65:
    v32 = *(a1 + 36);
    v33 = *(a1 + 32);
    if (v33 >= v32)
    {
      if (v32 == *(a1 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v32 = *(a1 + 36);
      }

      *(a1 + 36) = v32 + 1;
      operator new();
    }

    v34 = *(a1 + 24);
    *(a1 + 32) = v33 + 1;
    v35 = *(v34 + 8 * v33);
    v50 = 0;
    v36 = *(this + 1);
    if (v36 >= *(this + 2) || *v36 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
      {
        return 0;
      }
    }

    else
    {
      v50 = *v36;
      *(this + 1) = v36 + 1;
    }

    v37 = *(this + 14);
    v38 = *(this + 15);
    *(this + 14) = v37 + 1;
    if (v37 >= v38)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_24541FED8(v35, this) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v39 = *(this + 14);
    v29 = __OFSUB__(v39, 1);
    v40 = v39 - 1;
    if (v40 < 0 == v29)
    {
      *(this + 14) = v40;
    }

    v31 = *(this + 1);
    v10 = *(this + 2);
    if (v31 < v10)
    {
      v41 = *v31;
      if (v41 == 34)
      {
        goto LABEL_64;
      }

      if (v41 == 40)
      {
        v17 = v31 + 1;
        *(this + 1) = v17;
LABEL_83:
        if (v17 >= v10 || (v42 = *v17, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
          if (!result)
          {
            return result;
          }

          v43 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 48) = v42;
          v43 = v17 + 1;
          *(this + 1) = v43;
        }

        *(a1 + 68) |= 0x10u;
        if (v43 < v10 && *v43 == 48)
        {
          v11 = v43 + 1;
          *(this + 1) = v11;
LABEL_91:
          v50 = 0;
          if (v11 >= v10 || (v44 = *v11, (v44 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
            if (!result)
            {
              return result;
            }

            v44 = v50;
          }

          else
          {
            *(this + 1) = v11 + 1;
          }

          if (v44 <= 5)
          {
            *(a1 + 68) |= 0x20u;
            *(a1 + 52) = v44;
          }

          v45 = *(this + 1);
          v19 = *(this + 2);
          if (v45 < v19 && *v45 == 56)
          {
            v20 = v45 + 1;
            *(this + 1) = v20;
LABEL_101:
            v50 = 0;
            if (v20 >= v19 || (v46 = *v20, (v46 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
              if (!result)
              {
                return result;
              }

              v46 = v50;
            }

            else
            {
              *(this + 1) = v20 + 1;
            }

            if (v46 <= 6)
            {
              *(a1 + 68) |= 0x40u;
              *(a1 + 56) = v46;
            }

            v47 = *(this + 1);
            v12 = *(this + 2);
            if (v47 < v12 && *v47 == 64)
            {
              v13 = v47 + 1;
              *(this + 1) = v13;
LABEL_111:
              if (v13 >= v12 || (v48 = *v13, v48 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
                if (!result)
                {
                  return result;
                }

                v49 = *(this + 1);
                v12 = *(this + 2);
              }

              else
              {
                *(a1 + 60) = v48;
                v49 = v13 + 1;
                *(this + 1) = v49;
              }

              *(a1 + 68) |= 0x80u;
              if (v49 == v12 && (*(this + 11) || *(this + 6) == *(this + 10)))
              {
                *(this + 8) = 0;
                result = 1;
                *(this + 36) = 1;
                return result;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_245421578(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 68);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 68);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  if ((*(v5 + 68) & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = *(v5 + 16);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEF48 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
LABEL_10:
  if (*(v5 + 32) >= 1)
  {
    v8 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 24) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 32));
  }

  v9 = *(v5 + 68);
  if ((v9 & 0x10) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 48), a2, a4);
    v9 = *(v5 + 68);
    if ((v9 & 0x20) == 0)
    {
LABEL_15:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, *(v5 + 56), a2, a4);
      if ((*(v5 + 68) & 0x80) == 0)
      {
        return result;
      }

      goto LABEL_21;
    }
  }

  else if ((v9 & 0x20) == 0)
  {
    goto LABEL_15;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 52), a2, a4);
  v9 = *(v5 + 68);
  if ((v9 & 0x40) != 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  if ((v9 & 0x80) == 0)
  {
    return result;
  }

LABEL_21:
  v10 = *(v5 + 60);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v10, a2, a4);
}

uint64_t sub_2454216C8(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 68);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_46;
  }

  if (*(a1 + 68))
  {
    v4 = *(a1 + 8);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(a1 + 68);
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(a1 + 68) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(a1 + 12);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(a1 + 68);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEF48 + 16);
    }

    v8 = sub_245418E6C(v7);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    }

    else
    {
      v10 = 1;
    }

    v3 += v9 + v10 + 1;
    v2 = *(a1 + 68);
    if ((v2 & 0x10) == 0)
    {
LABEL_16:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_16;
  }

  v11 = *(a1 + 48);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(a1 + 68);
  }

  else
  {
    v12 = 2;
  }

  v3 += v12;
  if ((v2 & 0x20) == 0)
  {
LABEL_17:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_30:
  v13 = *(a1 + 52);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = *(a1 + 68);
  }

  else
  {
    v14 = 2;
  }

  v3 += v14;
  if ((v2 & 0x40) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

LABEL_36:
  v15 = *(a1 + 56);
  if ((v15 & 0x80000000) != 0)
  {
    v16 = 11;
  }

  else if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = *(a1 + 68);
  }

  else
  {
    v16 = 2;
  }

  v3 += v16;
  if ((v2 & 0x80) != 0)
  {
LABEL_42:
    v17 = *(a1 + 60);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    }

    else
    {
      v18 = 2;
    }

    v3 += v18;
  }

LABEL_46:
  v19 = *(a1 + 32);
  v20 = (v19 + v3);
  if (v19 >= 1)
  {
    v21 = 0;
    do
    {
      v22 = sub_2454206A4(*(*(a1 + 24) + 8 * v21));
      v23 = v22;
      if (v22 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      }

      else
      {
        v24 = 1;
      }

      v20 = (v23 + v20 + v24);
      ++v21;
    }

    while (v21 < *(a1 + 32));
  }

  *(a1 + 64) = v20;
  return v20;
}

void sub_2454218CC(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858B50, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2454209EC(a1, lpsrc);
}

void sub_245421988(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 8);
    if (v4 >= 6)
    {
      __assert_rtn("set_network_type", "GnssEmergencyTypes.pb.h", 25390, "::CoreGem::proto::gnss::Emergency::ClsNetworkType_IsValid(value)");
    }

    *(a1 + 16) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_245421A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245421A54(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857ED0;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245421AB0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245421A54(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245421B34(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_245421B48(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v4 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v9 = 0;
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v9);
        if (!result)
        {
          return result;
        }

        v7 = v9;
      }

      else
      {
        *(this + 1) = v6 + 1;
      }

      if (v7 <= 5)
      {
        *(a1 + 16) |= 1u;
        *(a1 + 8) = v7;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_245421C60(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
  }

  return result;
}

uint64_t sub_245421C7C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 8);
    if ((v3 & 0x80000000) != 0)
    {
      result = 11;
    }

    else if (v3 >= 0x80)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 0;
  }

  *(a1 + 12) = result;
  return result;
}

void sub_245421CD8(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858B68, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245421988(a1, lpsrc);
}

void sub_245421D94(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 8);
      if (v5 >= 0xA)
      {
        __assert_rtn("set_result", "GnssEmergencyTypes.pb.h", 25417, "::CoreGem::proto::gnss::Result_IsValid(value)");
      }

      *(a1 + 28) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      if (v6 >= 6)
      {
        __assert_rtn("set_network_type", "GnssEmergencyTypes.pb.h", 25440, "::CoreGem::proto::gnss::Emergency::ClsNetworkType_IsValid(value)");
      }

      *(a1 + 28) |= 2u;
      *(a1 + 12) = v6;
      v4 = *(a2 + 28);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 28) |= 4u;
      v7 = *(a1 + 16);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 16);
      if (!v8)
      {
        sub_2453EB7EC();
        v8 = *(qword_2813CEF50 + 16);
      }

      sub_245418090(v7, v8);
    }
  }
}

void sub_245421F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245421F2C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857F48;
  sub_2453EB7EC();
  if (qword_2813CEF50 != a1)
  {
    v2 = *(a1 + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245421FC4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245421F2C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245422048(uint64_t result)
{
  v1 = result;
  v2 = *(result + 28);
  if (v2)
  {
    *(result + 8) = 0;
    if ((v2 & 4) != 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = sub_245418368(result);
      }
    }
  }

  *(v1 + 28) = 0;
  return result;
}

uint64_t sub_245422088(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v4 = *(this + 1);
          if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v4 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v6 = TagFallback >> 3;
          v7 = TagFallback & 7;
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v7 == 2)
          {
            goto LABEL_36;
          }

LABEL_16:
          if (v7 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }

        if (v6 == 2)
        {
          break;
        }

        if (v6 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_16;
        }

        v24 = 0;
        v8 = *(this + 1);
        if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24);
          if (!result)
          {
            return result;
          }

          v9 = v24;
        }

        else
        {
          *(this + 1) = v8 + 1;
        }

        if (v9 <= 9)
        {
          *(a1 + 28) |= 1u;
          *(a1 + 8) = v9;
        }

        v13 = *(this + 1);
        v10 = *(this + 2);
        if (v13 < v10 && *v13 == 16)
        {
          v11 = v13 + 1;
          *(this + 1) = v11;
          goto LABEL_26;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v11 = *(this + 1);
      v10 = *(this + 2);
LABEL_26:
      v23 = 0;
      if (v11 >= v10 || (v14 = *v11, (v14 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23);
        if (!result)
        {
          return result;
        }

        v14 = v23;
      }

      else
      {
        *(this + 1) = v11 + 1;
      }

      if (v14 <= 5)
      {
        *(a1 + 28) |= 2u;
        *(a1 + 12) = v14;
      }

      v15 = *(this + 1);
    }

    while (v15 >= *(this + 2) || *v15 != 26);
    *(this + 1) = v15 + 1;
LABEL_36:
    *(a1 + 28) |= 4u;
    v16 = *(a1 + 16);
    if (!v16)
    {
      operator new();
    }

    v25 = 0;
    v17 = *(this + 1);
    if (v17 >= *(this + 2) || *v17 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25))
      {
        return 0;
      }
    }

    else
    {
      v25 = *v17;
      *(this + 1) = v17 + 1;
    }

    v18 = *(this + 14);
    v19 = *(this + 15);
    *(this + 14) = v18 + 1;
    if (v18 >= v19)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_2454183C8(v16, this) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v20 = *(this + 14);
    v21 = __OFSUB__(v20, 1);
    v22 = v20 - 1;
    if (v22 < 0 == v21)
    {
      *(this + 14) = v22;
    }

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_245422358(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = *(v5 + 16);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEF50 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

uint64_t sub_2454223F8(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_26;
  }

  if (*(a1 + 28))
  {
    v4 = *(a1 + 8);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(a1 + 28);
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v5 = *(a1 + 12);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(a1 + 28);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_19:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEF50 + 16);
    }

    v8 = sub_245418750(v7);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    }

    else
    {
      v10 = 1;
    }

    v3 = (v3 + v9 + v10 + 1);
  }

LABEL_26:
  *(a1 + 24) = v3;
  return v3;
}

void sub_2454224F8(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858B80, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245421D94(a1, lpsrc);
}

void sub_2454225B4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857FC0;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245422610(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2454225B4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2454226A4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v4 = *(this + 1);
        if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v6 == 1)
        {
          if (v7 != 1)
          {
            goto LABEL_31;
          }

          v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v21) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 8) = v21;
          *(a1 + 60) |= 1u;
          v10 = *(this + 1);
          if (v10 < *(this + 2) && *v10 == 17)
          {
            *(this + 1) = v10 + 1;
            goto LABEL_34;
          }
        }

        else
        {
          if (v6 != 2)
          {
            if (v6 != 3 || v7 != 1)
            {
              goto LABEL_31;
            }

            goto LABEL_38;
          }

          if (v7 != 1)
          {
            goto LABEL_31;
          }

LABEL_34:
          v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v21) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = v21;
          *(a1 + 60) |= 2u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 25)
          {
            *(this + 1) = v12 + 1;
LABEL_38:
            v21 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v21) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 24) = v21;
            *(a1 + 60) |= 4u;
            v13 = *(this + 1);
            if (v13 < *(this + 2) && *v13 == 33)
            {
              *(this + 1) = v13 + 1;
              goto LABEL_42;
            }
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        if (v6 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v11 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_50;
          }
        }

        else if (v6 == 7 && (TagFallback & 7) == 0)
        {
          v9 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_58;
        }

        goto LABEL_31;
      }

      if (v6 != 4)
      {
        break;
      }

      if (v7 != 1)
      {
        goto LABEL_31;
      }

LABEL_42:
      v21 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v21) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 32) = v21;
      *(a1 + 60) |= 8u;
      v14 = *(this + 1);
      if (v14 < *(this + 2) && *v14 == 41)
      {
        *(this + 1) = v14 + 1;
LABEL_46:
        v21 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v21) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = v21;
        *(a1 + 60) |= 0x10u;
        v15 = *(this + 1);
        v8 = *(this + 2);
        if (v15 < v8 && *v15 == 48)
        {
          v11 = v15 + 1;
          *(this + 1) = v11;
LABEL_50:
          if (v11 >= v8 || (v16 = *v11, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
            if (!result)
            {
              return result;
            }

            v17 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            *(a1 + 48) = v16;
            v17 = v11 + 1;
            *(this + 1) = v17;
          }

          *(a1 + 60) |= 0x20u;
          if (v17 < v8 && *v17 == 56)
          {
            v9 = v17 + 1;
            *(this + 1) = v9;
LABEL_58:
            if (v9 >= v8 || (v19 = *v9, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
              if (!result)
              {
                return result;
              }

              v20 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              *(a1 + 52) = v19;
              v20 = v9 + 1;
              *(this + 1) = v20;
            }

            *(a1 + 60) |= 0x40u;
            if (v20 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v6 == 5 && v7 == 1)
    {
      goto LABEL_46;
    }

LABEL_31:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

uint64_t sub_245422A04(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 60);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 60);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 48), a2, a4);
    if ((*(v5 + 60) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return result;
  }

LABEL_15:
  v7 = *(v5 + 52);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v7, a2, a4);
}

uint64_t sub_245422B00(uint64_t a1)
{
  v2 = *(a1 + 60);
  if (*(a1 + 60))
  {
    v3 = (v2 << 31 >> 31) & 9;
    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 8) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x10) != 0)
    {
      v4 = v3 + 9;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 0x20) != 0)
    {
      v5 = *(a1 + 48);
      if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(a1 + 60);
      }

      else
      {
        v6 = 2;
      }

      v4 = (v6 + v4);
    }

    if ((v2 & 0x40) != 0)
    {
      v7 = *(a1 + 52);
      if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      }

      else
      {
        v8 = 2;
      }

      v4 = (v8 + v4);
    }
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 56) = v4;
  return v4;
}

void sub_245422BC0(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858B98, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F69D4(a1, lpsrc);
}

void sub_245422C7C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285858038;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245422CD8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245422C7C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245422D5C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  do
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v7 == 1)
        {
          goto LABEL_32;
        }

        goto LABEL_16;
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v10;
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      *(a1 + 28) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(this + 1) = v12;
LABEL_24:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
          if (!result)
          {
            return result;
          }

          v15 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 12) = v14;
          v15 = v12 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 28) |= 2u;
        if (v15 < v8 && *v15 == 25)
        {
          *(this + 1) = v15 + 1;
LABEL_32:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = v16;
          *(a1 + 28) |= 4u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_24;
    }

LABEL_16:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

uint64_t sub_245422F38(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v7, a3);
}

uint64_t sub_245422FC4(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 28);
  if (!v2)
  {
    result = 0;
    goto LABEL_17;
  }

  if ((*(a1 + 28) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    v6 = *(a1 + 12);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(a1 + 28);
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
    goto LABEL_14;
  }

  v5 = *(a1 + 8);
  if (v5 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(a1 + 28);
    if ((v2 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  if ((v2 & 4) != 0)
  {
    result = v3 + 9;
  }

  else
  {
    result = v3;
  }

LABEL_17:
  *(a1 + 24) = result;
  return result;
}

void sub_245423060(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858BB0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F6B40(a1, lpsrc);
}

void sub_24542311C(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v6 = *(a2 + 8);
      a1[6] |= 1u;
      a1[2] = v6;
      v4 = *(a2 + 24);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 12);
    a1[6] |= 2u;
    a1[3] = v7;
    if ((*(a2 + 24) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 16);
    a1[6] |= 4u;
    a1[4] = v5;
  }
}

void sub_2454231F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245423208(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858580B0;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245423264(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245423208(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2454232EC(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_245423304(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v12 = *(this + 1);
          v7 = *(this + 2);
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        a1[2] = v9;
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      a1[6] |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(this + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v14 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          a1[3] = v13;
          v14 = v11 + 1;
          *(this + 1) = v14;
        }

        a1[6] |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(this + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, (v15 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
            if (!result)
            {
              return result;
            }

            v16 = *(this + 1);
            v7 = *(this + 2);
          }

          else
          {
            a1[4] = v15;
            v16 = v12 + 1;
            *(this + 1) = v16;
          }

          a1[6] |= 4u;
          if (v16 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_25;
    }

LABEL_16:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

unsigned int *sub_2454234F0(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[6];
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
    if ((v5[6] & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, result[2], a2, a4);
  v6 = v5[6];
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = v5[4];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v7, a2, a4);
}

uint64_t sub_24542357C(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 24);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if (*(a1 + 24))
  {
    v4 = *(a1 + 8);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(a1 + 24);
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(a1 + 24) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(a1 + 12);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(a1 + 24);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 16);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
  }

LABEL_19:
  *(a1 + 20) = v3;
  return v3;
}

void sub_245423634(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858BC8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542311C(a1, lpsrc);
}

void sub_2454236F0(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 8);
      a1[5] |= 1u;
      a1[2] = v5;
      v4 = *(a2 + 20);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      a1[5] |= 2u;
      a1[3] = v6;
    }
  }
}

void sub_24542379C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2454237B4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285858128;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245423810(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2454237B4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245423894(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_2454238A8(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v7 = *(this + 1);
      v6 = *(this + 2);
      if (v7 >= v6 || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v9 = *(this + 1);
        v6 = *(this + 2);
      }

      else
      {
        a1[2] = v8;
        v9 = v7 + 1;
        *(this + 1) = v9;
      }

      a1[5] |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(this + 1) = v10;
LABEL_22:
        if (v10 >= v6 || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v12 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[3] = v11;
          v12 = v10 + 1;
          *(this + 1) = v12;
        }

        a1[5] |= 2u;
        if (v12 == v6 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v6 = *(this + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_245423A24(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_245423A90(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2)
  {
    if (*(a1 + 20))
    {
      v4 = *(a1 + 8);
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(a1 + 20) & 2) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(a1 + 20) & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    v5 = *(a1 + 12);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 = (v6 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_14:
  *(a1 + 16) = v3;
  return v3;
}

void sub_245423B20(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858BE0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2454236F0(a1, lpsrc);
}

void sub_245423BDC(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 8);
      a1[5] |= 1u;
      a1[2] = v5;
      v4 = *(a2 + 20);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      a1[5] |= 2u;
      a1[3] = v6;
    }
  }
}

void sub_245423C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245423CA0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858581A0;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245423CFC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245423CA0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245423D80(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_245423D94(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v7 = *(this + 1);
      v6 = *(this + 2);
      if (v7 >= v6 || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v9 = *(this + 1);
        v6 = *(this + 2);
      }

      else
      {
        a1[2] = v8;
        v9 = v7 + 1;
        *(this + 1) = v9;
      }

      a1[5] |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(this + 1) = v10;
LABEL_22:
        if (v10 >= v6 || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v12 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[3] = v11;
          v12 = v10 + 1;
          *(this + 1) = v12;
        }

        a1[5] |= 2u;
        if (v12 == v6 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v6 = *(this + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_245423F10(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_245423F7C(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2)
  {
    if (*(a1 + 20))
    {
      v4 = *(a1 + 8);
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(a1 + 20) & 2) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(a1 + 20) & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    v5 = *(a1 + 12);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 = (v6 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_14:
  *(a1 + 16) = v3;
  return v3;
}

void sub_24542400C(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858BF8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245423BDC(a1, lpsrc);
}

void sub_2454240C8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v4 = *(a2 + 64);
  if (v4)
  {
    if (v4)
    {
      v8 = *(a2 + 8);
      *(a1 + 64) |= 1u;
      *(a1 + 8) = v8;
      v4 = *(a2 + 64);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_26;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    v9 = *(a2 + 12);
    *(a1 + 64) |= 2u;
    *(a1 + 12) = v9;
    v4 = *(a2 + 64);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_26:
    v10 = *(a2 + 16);
    *(a1 + 64) |= 4u;
    *(a1 + 16) = v10;
    v4 = *(a2 + 64);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

LABEL_27:
    v11 = *(a2 + 20);
    *(a1 + 64) |= 8u;
    *(a1 + 20) = v11;
    v4 = *(a2 + 64);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }

LABEL_28:
    v12 = *(a2 + 24);
    *(a1 + 64) |= 0x10u;
    *(a1 + 24) = v12;
    v4 = *(a2 + 64);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_29:
    v13 = *(a2 + 28);
    if (v13 >= 4)
    {
      __assert_rtn("set_fix_type", "GnssEmergencyTypes.pb.h", 26013, "::CoreGem::proto::gnss::Emergency::FixType_IsValid(value)");
    }

    *(a1 + 64) |= 0x20u;
    *(a1 + 28) = v13;
    v4 = *(a2 + 64);
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v5 = *(a2 + 56);
    *(a1 + 64) |= 0x40u;
    *(a1 + 56) = v5;
    v4 = *(a2 + 64);
LABEL_12:
    if ((v4 & 0x80) != 0)
    {
      *(a1 + 64) |= 0x80u;
      v6 = *(a1 + 32);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 32);
      if (!v7)
      {
        sub_2453EB7EC();
        v7 = *(qword_2813CEBD0 + 32);
      }

      sub_24542311C(v6, v7);
      v4 = *(a2 + 64);
    }
  }

  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 57);
    *(a1 + 64) |= 0x100u;
    *(a1 + 57) = v14;
    v4 = *(a2 + 64);
    if ((v4 & 0x200) == 0)
    {
LABEL_21:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_22;
      }

LABEL_38:
      v17 = *(a2 + 58);
      *(a1 + 64) |= 0x400u;
      *(a1 + 58) = v17;
      if ((*(a2 + 64) & 0x800) == 0)
      {
        return;
      }

      goto LABEL_39;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  *(a1 + 64) |= 0x200u;
  v15 = *(a1 + 40);
  if (!v15)
  {
    operator new();
  }

  v16 = *(a2 + 40);
  if (!v16)
  {
    sub_2453EB7EC();
    v16 = *(qword_2813CEBD0 + 40);
  }

  sub_2454236F0(v15, v16);
  v4 = *(a2 + 64);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_38;
  }

LABEL_22:
  if ((v4 & 0x800) == 0)
  {
    return;
  }

LABEL_39:
  *(a1 + 64) |= 0x800u;
  v18 = *(a1 + 48);
  if (!v18)
  {
    operator new();
  }

  v19 = *(a2 + 48);
  if (!v19)
  {
    sub_2453EB7EC();
    v19 = *(qword_2813CEBD0 + 48);
  }

  sub_245423BDC(v18, v19);
}

void sub_245424418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245424430(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285858218;
  sub_2453EB7EC();
  if (qword_2813CEBD0 != a1)
  {
    v2 = *(a1 + 4);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 5);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(a1 + 6);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245424520(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245424430(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2454245B8(uint64_t result)
{
  v1 = *(result + 64);
  if (v1)
  {
    *(result + 56) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 8) = 0;
    if ((v1 & 0x80) != 0)
    {
      v2 = *(result + 32);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
        v1 = *(result + 64);
      }
    }
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 57) = 0;
    if ((v1 & 0x200) != 0)
    {
      v3 = *(result + 40);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v1 = *(result + 64);
      }
    }

    *(result + 58) = 0;
    if ((v1 & 0x800) != 0)
    {
      v4 = *(result + 48);
      if (v4)
      {
        if (*(v4 + 20))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 20) = 0;
      }
    }
  }

  *(result + 64) = 0;
  return result;
}

uint64_t sub_245424648(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v4 = *(this + 1);
            if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
            {
              TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
              *(this + 8) = TagFallback;
              if (!TagFallback)
              {
                return 1;
              }
            }

            else
            {
              *(this + 8) = TagFallback;
              *(this + 1) = v4 + 1;
              if (!TagFallback)
              {
                return 1;
              }
            }

            v6 = TagFallback >> 3;
            v7 = TagFallback & 7;
            if (TagFallback >> 3 > 6)
            {
              break;
            }

            if (TagFallback >> 3 > 3)
            {
              if (v6 == 4)
              {
                if ((TagFallback & 7) == 0)
                {
                  v19 = *(this + 1);
                  v8 = *(this + 2);
                  goto LABEL_71;
                }
              }

              else if (v6 == 5)
              {
                if ((TagFallback & 7) == 0)
                {
                  v23 = *(this + 1);
                  v8 = *(this + 2);
                  goto LABEL_79;
                }
              }

              else if (v6 == 6 && (TagFallback & 7) == 0)
              {
                v12 = *(this + 1);
                v8 = *(this + 2);
                goto LABEL_87;
              }

              goto LABEL_46;
            }

            if (v6 == 1)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_46;
              }

              v14 = *(this + 1);
              v8 = *(this + 2);
              if (v14 >= v8 || (v15 = *v14, v15 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
                if (!result)
                {
                  return result;
                }

                v16 = *(this + 1);
                v8 = *(this + 2);
              }

              else
              {
                *(a1 + 8) = v15;
                v16 = v14 + 1;
                *(this + 1) = v16;
              }

              *(a1 + 64) |= 1u;
              if (v16 < v8 && *v16 == 16)
              {
                v21 = v16 + 1;
                *(this + 1) = v21;
                goto LABEL_55;
              }
            }

            else if (v6 == 2)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_46;
              }

              v21 = *(this + 1);
              v8 = *(this + 2);
LABEL_55:
              if (v21 >= v8 || (v27 = *v21, v27 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
                if (!result)
                {
                  return result;
                }

                v28 = *(this + 1);
                v8 = *(this + 2);
              }

              else
              {
                *(a1 + 12) = v27;
                v28 = v21 + 1;
                *(this + 1) = v28;
              }

              *(a1 + 64) |= 2u;
              if (v28 < v8 && *v28 == 24)
              {
                v9 = v28 + 1;
                *(this + 1) = v9;
LABEL_63:
                if (v9 >= v8 || (v29 = *v9, v29 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
                  if (!result)
                  {
                    return result;
                  }

                  v30 = *(this + 1);
                  v8 = *(this + 2);
                }

                else
                {
                  *(a1 + 16) = v29;
                  v30 = v9 + 1;
                  *(this + 1) = v30;
                }

                *(a1 + 64) |= 4u;
                if (v30 < v8 && *v30 == 32)
                {
                  v19 = v30 + 1;
                  *(this + 1) = v19;
LABEL_71:
                  if (v19 >= v8 || (v31 = *v19, v31 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
                    if (!result)
                    {
                      return result;
                    }

                    v32 = *(this + 1);
                    v8 = *(this + 2);
                  }

                  else
                  {
                    *(a1 + 20) = v31;
                    v32 = v19 + 1;
                    *(this + 1) = v32;
                  }

                  *(a1 + 64) |= 8u;
                  if (v32 < v8 && *v32 == 40)
                  {
                    v23 = v32 + 1;
                    *(this + 1) = v23;
LABEL_79:
                    if (v23 >= v8 || (v33 = *v23, v33 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
                      if (!result)
                      {
                        return result;
                      }

                      v34 = *(this + 1);
                      v8 = *(this + 2);
                    }

                    else
                    {
                      *(a1 + 24) = v33;
                      v34 = v23 + 1;
                      *(this + 1) = v34;
                    }

                    *(a1 + 64) |= 0x10u;
                    if (v34 < v8 && *v34 == 48)
                    {
                      v12 = v34 + 1;
                      *(this + 1) = v12;
LABEL_87:
                      v64 = 0;
                      if (v12 >= v8 || (v35 = *v12, (v35 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v64);
                        if (!result)
                        {
                          return result;
                        }

                        v35 = v64;
                      }

                      else
                      {
                        *(this + 1) = v12 + 1;
                      }

                      if (v35 <= 3)
                      {
                        *(a1 + 64) |= 0x20u;
                        *(a1 + 28) = v35;
                      }

                      v36 = *(this + 1);
                      v17 = *(this + 2);
                      if (v36 < v17 && *v36 == 56)
                      {
                        v18 = v36 + 1;
                        *(this + 1) = v18;
LABEL_97:
                        v64 = 0;
                        if (v18 >= v17 || (v37 = *v18, (v37 & 0x80000000) != 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v64);
                          if (!result)
                          {
                            return result;
                          }

                          v37 = v64;
                          v38 = *(this + 1);
                          v17 = *(this + 2);
                        }

                        else
                        {
                          v38 = v18 + 1;
                          *(this + 1) = v38;
                        }

                        *(a1 + 56) = v37 != 0;
                        v22 = *(a1 + 64) | 0x40;
                        *(a1 + 64) = v22;
                        if (v38 < v17 && *v38 == 66)
                        {
                          *(this + 1) = v38 + 1;
                          goto LABEL_105;
                        }
                      }
                    }
                  }
                }
              }
            }

            else
            {
              if (v6 == 3 && (TagFallback & 7) == 0)
              {
                v9 = *(this + 1);
                v8 = *(this + 2);
                goto LABEL_63;
              }

LABEL_46:
              if (v7 == 4)
              {
                return 1;
              }

              if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
              {
                return 0;
              }
            }
          }

          if (TagFallback >> 3 > 9)
          {
            break;
          }

          if (v6 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(this + 1);
              v17 = *(this + 2);
              goto LABEL_97;
            }

            goto LABEL_46;
          }

          if (v6 != 8)
          {
            if (v6 == 9 && (TagFallback & 7) == 0)
            {
              v11 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_119;
            }

            goto LABEL_46;
          }

          if (v7 != 2)
          {
            goto LABEL_46;
          }

          v22 = *(a1 + 64);
LABEL_105:
          *(a1 + 64) = v22 | 0x80;
          v39 = *(a1 + 32);
          if (!v39)
          {
            operator new();
          }

          v64 = 0;
          v40 = *(this + 1);
          if (v40 >= *(this + 2) || *v40 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v64))
            {
              return 0;
            }
          }

          else
          {
            v64 = *v40;
            *(this + 1) = v40 + 1;
          }

          v41 = *(this + 14);
          v42 = *(this + 15);
          *(this + 14) = v41 + 1;
          if (v41 >= v42)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_245423304(v39, this) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v43 = *(this + 14);
          v44 = __OFSUB__(v43, 1);
          v45 = v43 - 1;
          if (v45 < 0 == v44)
          {
            *(this + 14) = v45;
          }

          v46 = *(this + 1);
          v10 = *(this + 2);
          if (v46 < v10 && *v46 == 72)
          {
            v11 = v46 + 1;
            *(this + 1) = v11;
LABEL_119:
            v64 = 0;
            if (v11 >= v10 || (v47 = *v11, (v47 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v64);
              if (!result)
              {
                return result;
              }

              v47 = v64;
              v48 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              v48 = v11 + 1;
              *(this + 1) = v48;
            }

            *(a1 + 57) = v47 != 0;
            v20 = *(a1 + 64) | 0x100;
            *(a1 + 64) = v20;
            if (v48 < v10 && *v48 == 82)
            {
              *(this + 1) = v48 + 1;
              goto LABEL_127;
            }
          }
        }

        if (v6 != 10)
        {
          break;
        }

        if (v7 != 2)
        {
          goto LABEL_46;
        }

        v20 = *(a1 + 64);
LABEL_127:
        *(a1 + 64) = v20 | 0x200;
        v49 = *(a1 + 40);
        if (!v49)
        {
          operator new();
        }

        v64 = 0;
        v50 = *(this + 1);
        if (v50 >= *(this + 2) || *v50 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v64))
          {
            return 0;
          }
        }

        else
        {
          v64 = *v50;
          *(this + 1) = v50 + 1;
        }

        v51 = *(this + 14);
        v52 = *(this + 15);
        *(this + 14) = v51 + 1;
        if (v51 >= v52)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2454238A8(v49, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v53 = *(this + 14);
        v44 = __OFSUB__(v53, 1);
        v54 = v53 - 1;
        if (v54 < 0 == v44)
        {
          *(this + 14) = v54;
        }

        v55 = *(this + 1);
        v24 = *(this + 2);
        if (v55 < v24 && *v55 == 88)
        {
          v25 = v55 + 1;
          *(this + 1) = v25;
          goto LABEL_141;
        }
      }

      if (v6 != 11)
      {
        if (v6 == 12 && v7 == 2)
        {
          v13 = *(a1 + 64);
          goto LABEL_149;
        }

        goto LABEL_46;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_46;
      }

      v25 = *(this + 1);
      v24 = *(this + 2);
LABEL_141:
      v64 = 0;
      if (v25 >= v24 || (v56 = *v25, (v56 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v64);
        if (!result)
        {
          return result;
        }

        v56 = v64;
        v57 = *(this + 1);
        v24 = *(this + 2);
      }

      else
      {
        v57 = v25 + 1;
        *(this + 1) = v57;
      }

      *(a1 + 58) = v56 != 0;
      v13 = *(a1 + 64) | 0x400;
      *(a1 + 64) = v13;
    }

    while (v57 >= v24 || *v57 != 98);
    *(this + 1) = v57 + 1;
LABEL_149:
    *(a1 + 64) = v13 | 0x800;
    v58 = *(a1 + 48);
    if (!v58)
    {
      operator new();
    }

    v64 = 0;
    v59 = *(this + 1);
    if (v59 >= *(this + 2) || *v59 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v64))
      {
        return 0;
      }
    }

    else
    {
      v64 = *v59;
      *(this + 1) = v59 + 1;
    }

    v60 = *(this + 14);
    v61 = *(this + 15);
    *(this + 14) = v60 + 1;
    if (v60 >= v61)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_245423D94(v58, this) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v62 = *(this + 14);
    v44 = __OFSUB__(v62, 1);
    v63 = v62 - 1;
    if (v63 < 0 == v44)
    {
      *(this + 14) = v63;
    }

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}