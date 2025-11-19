uint64_t sub_245D912F8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 396);
  if ((v4 & 0x80000) != 0)
  {
    v33 = *(result + 376);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 396);
    if ((v4 & 0x1000000) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_64;
    }
  }

  else if ((v4 & 0x1000000) == 0)
  {
    goto LABEL_3;
  }

  v34 = *(v3 + 388);
  result = PB::Writer::write(this);
  v4 = *(v3 + 396);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = PB::Writer::write(this, *(v3 + 224));
  v4 = *(v3 + 396);
  if ((v4 & 0x40000) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = PB::Writer::write(this, *(v3 + 368));
  v4 = *(v3 + 396);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_67;
  }

LABEL_66:
  v35 = *(v3 + 232);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_68;
  }

LABEL_67:
  v36 = *(v3 + 256);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = PB::Writer::write(this, *(v3 + 264));
  v4 = *(v3 + 396);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = PB::Writer::write(this, *(v3 + 288));
  v4 = *(v3 + 396);
  if ((v4 & 0x400) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_71;
  }

LABEL_70:
  result = PB::Writer::write(this, *(v3 + 304));
  v4 = *(v3 + 396);
  if ((v4 & 0x200) == 0)
  {
LABEL_11:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_72;
  }

LABEL_71:
  result = PB::Writer::write(this, *(v3 + 296));
  v4 = *(v3 + 396);
  if ((v4 & 0x80) == 0)
  {
LABEL_12:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_73;
  }

LABEL_72:
  result = PB::Writer::write(this, *(v3 + 280));
  v4 = *(v3 + 396);
  if ((v4 & 0x40) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_74;
  }

LABEL_73:
  result = PB::Writer::write(this, *(v3 + 272));
  v4 = *(v3 + 396);
  if ((v4 & 0x1000) == 0)
  {
LABEL_14:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_75;
  }

LABEL_74:
  result = PB::Writer::write(this, *(v3 + 320));
  v4 = *(v3 + 396);
  if ((v4 & 0x800) == 0)
  {
LABEL_15:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_76;
  }

LABEL_75:
  result = PB::Writer::write(this, *(v3 + 312));
  v4 = *(v3 + 396);
  if ((v4 & 0x20000) == 0)
  {
LABEL_16:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_77;
  }

LABEL_76:
  v37 = *(v3 + 360);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x10000) == 0)
  {
LABEL_17:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_78;
  }

LABEL_77:
  v38 = *(v3 + 352);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x8000) == 0)
  {
LABEL_18:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_79;
  }

LABEL_78:
  v39 = *(v3 + 344);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x4000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_80;
  }

LABEL_79:
  v40 = *(v3 + 336);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_81;
  }

LABEL_80:
  v41 = *(v3 + 328);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_21:
    if ((v4 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_82;
  }

LABEL_81:
  v42 = *(v3 + 395);
  result = PB::Writer::write(this);
  v4 = *(v3 + 396);
  if ((v4 & 4) == 0)
  {
LABEL_22:
    if ((v4 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_83;
  }

LABEL_82:
  result = PB::Writer::write(this, *(v3 + 240));
  v4 = *(v3 + 396);
  if ((v4 & 8) == 0)
  {
LABEL_23:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_84;
  }

LABEL_83:
  result = PB::Writer::write(this, *(v3 + 248));
  v4 = *(v3 + 396);
  if ((v4 & 0x100000) == 0)
  {
LABEL_24:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_85;
  }

LABEL_84:
  v43 = *(v3 + 384);
  result = PB::Writer::write(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x400000) == 0)
  {
LABEL_25:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_86;
  }

LABEL_85:
  v44 = *(v3 + 386);
  result = PB::Writer::write(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_26:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_87;
  }

LABEL_86:
  v45 = *(v3 + 394);
  result = PB::Writer::write(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x200000) == 0)
  {
LABEL_27:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_88;
  }

LABEL_87:
  v46 = *(v3 + 385);
  result = PB::Writer::write(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x800000) == 0)
  {
LABEL_28:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_89;
  }

LABEL_88:
  v47 = *(v3 + 387);
  result = PB::Writer::write(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_90;
  }

LABEL_89:
  v48 = *(v3 + 392);
  result = PB::Writer::write(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_30:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_91;
  }

LABEL_90:
  v49 = *(v3 + 391);
  result = PB::Writer::write(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_92:
    v51 = *(v3 + 389);
    result = PB::Writer::write(this);
    if ((*(v3 + 396) & 0x4000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_91:
  v50 = *(v3 + 393);
  result = PB::Writer::write(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x2000000) != 0)
  {
    goto LABEL_92;
  }

LABEL_32:
  if ((v4 & 0x4000000) != 0)
  {
LABEL_33:
    v5 = *(v3 + 390);
    result = PB::Writer::write(this);
  }

LABEL_34:
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  while (v6 != v7)
  {
    v8 = *v6++;
    result = PB::Writer::write(this, v8);
  }

  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  while (v9 != v10)
  {
    v11 = *v9++;
    result = PB::Writer::write(this, v11);
  }

  v12 = *(v3 + 56);
  v13 = *(v3 + 64);
  while (v12 != v13)
  {
    v14 = *v12++;
    result = PB::Writer::write(this, v14);
  }

  v15 = *(v3 + 104);
  v16 = *(v3 + 112);
  while (v15 != v16)
  {
    v17 = *v15++;
    result = PB::Writer::write(this, v17);
  }

  v18 = *(v3 + 80);
  v19 = *(v3 + 88);
  while (v18 != v19)
  {
    v20 = *v18++;
    result = PB::Writer::write(this, v20);
  }

  v21 = *(v3 + 128);
  v22 = *(v3 + 136);
  while (v21 != v22)
  {
    v23 = *v21++;
    result = PB::Writer::write(this, v23);
  }

  v24 = *(v3 + 176);
  v25 = *(v3 + 184);
  while (v24 != v25)
  {
    v26 = *v24++;
    result = PB::Writer::write(this, v26);
  }

  v27 = *(v3 + 152);
  v28 = *(v3 + 160);
  while (v27 != v28)
  {
    v29 = *v27++;
    result = PB::Writer::write(this, v29);
  }

  v31 = *(v3 + 200);
  v30 = *(v3 + 208);
  while (v31 != v30)
  {
    v32 = *v31++;
    result = PB::Writer::write(this, v32);
  }

  return result;
}

uint64_t sub_245D917C4(uint64_t result)
{
  *result = &unk_2858CCAB8;
  *(result + 72) = 0;
  return result;
}

void sub_245D917EC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245D91824(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CCAB8;
  *(a1 + 72) = 0;
  v2 = *(a2 + 72);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 24);
    v3 = 4;
    *(a1 + 72) = 4;
    *(a1 + 24) = v4;
    v2 = *(a2 + 72);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 32);
    v3 |= 8u;
    *(a1 + 72) = v3;
    *(a1 + 32) = v5;
    v2 = *(a2 + 72);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 16);
    v3 |= 2u;
    *(a1 + 72) = v3;
    *(a1 + 16) = v6;
    v2 = *(a2 + 72);
    if ((v2 & 0x200) == 0)
    {
LABEL_8:
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 68);
  v3 |= 0x200u;
  *(a1 + 72) = v3;
  *(a1 + 68) = v7;
  v2 = *(a2 + 72);
  if ((v2 & 0x100) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  LODWORD(v4) = *(a2 + 64);
  v3 |= 0x100u;
  *(a1 + 72) = v3;
  *(a1 + 64) = v4;
  v2 = *(a2 + 72);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a2 + 40);
  v3 |= 0x10u;
  *(a1 + 72) = v3;
  *(a1 + 40) = v8;
  v2 = *(a2 + 72);
  if ((v2 & 0x20) == 0)
  {
LABEL_11:
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(a2 + 48);
  v3 |= 0x20u;
  *(a1 + 72) = v3;
  *(a1 + 48) = v9;
  v2 = *(a2 + 72);
  if ((v2 & 1) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = *(a2 + 8);
  v3 |= 1u;
  *(a1 + 72) = v3;
  *(a1 + 8) = v10;
  v2 = *(a2 + 72);
  if ((v2 & 0x80) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      return *&v4;
    }

    goto LABEL_22;
  }

LABEL_21:
  LODWORD(v4) = *(a2 + 60);
  v3 |= 0x80u;
  *(a1 + 72) = v3;
  *(a1 + 60) = v4;
  if ((*(a2 + 72) & 0x40) == 0)
  {
    return *&v4;
  }

LABEL_22:
  LODWORD(v4) = *(a2 + 56);
  *(a1 + 72) = v3 | 0x40;
  *(a1 + 56) = v4;
  return *&v4;
}

uint64_t sub_245D91968(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 72);
  if ((v5 & 0x40) != 0)
  {
    PB::TextFormatter::format(this, "afterElevationMedian", *(a1 + 56));
    v5 = *(a1 + 72);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "beforeElevationMedian", *(a1 + 60));
  v5 = *(a1 + 72);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(a1 + 8);
  PB::TextFormatter::format(this, "endTimestampOfWindow");
  v5 = *(a1 + 72);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "impactTimestamp");
  v5 = *(a1 + 72);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "iostime", *(a1 + 24));
  v5 = *(a1 + 72);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a1 + 32);
  PB::TextFormatter::format(this, "pressureTimestamp");
  v5 = *(a1 + 72);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "rangeOfElevationInWindow", *(a1 + 64));
  v5 = *(a1 + 72);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a1 + 40);
  PB::TextFormatter::format(this, "startTimestampOfLastInspectedWindow");
  v5 = *(a1 + 72);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v11 = *(a1 + 48);
  PB::TextFormatter::format(this, "startTimestampOfWindow");
  if ((*(a1 + 72) & 0x200) != 0)
  {
LABEL_11:
    v6 = *(a1 + 68);
    PB::TextFormatter::format(this, "state");
  }

LABEL_12:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D91AEC(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_176;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 10)
      {
        if (v22 <= 12)
        {
          if (v22 == 11)
          {
            *(a1 + 72) |= 0x10u;
            v39 = *(this + 1);
            v2 = *(this + 2);
            v40 = *this;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v85 = 0;
              v86 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(this + 1);
              }

              v87 = v2 - v39;
              v88 = (v40 + v39);
              v89 = v39 + 1;
              while (1)
              {
                if (!v87)
                {
                  v43 = 0;
                  *(this + 24) = 1;
                  goto LABEL_159;
                }

                v90 = v89;
                v91 = *v88;
                *(this + 1) = v90;
                v43 |= (v91 & 0x7F) << v85;
                if ((v91 & 0x80) == 0)
                {
                  break;
                }

                v85 += 7;
                --v87;
                ++v88;
                v89 = v90 + 1;
                v14 = v86++ > 8;
                if (v14)
                {
                  v43 = 0;
                  goto LABEL_158;
                }
              }

              if (*(this + 24))
              {
                v43 = 0;
              }

LABEL_158:
              v2 = v90;
            }

            else
            {
              v41 = 0;
              v42 = 0;
              v43 = 0;
              v44 = (v40 + v39);
              v45 = v39 + 1;
              while (1)
              {
                v2 = v45;
                *(this + 1) = v45;
                v46 = *v44++;
                v43 |= (v46 & 0x7F) << v41;
                if ((v46 & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                ++v45;
                v14 = v42++ > 8;
                if (v14)
                {
                  v43 = 0;
                  break;
                }
              }
            }

LABEL_159:
            *(a1 + 40) = v43;
            goto LABEL_172;
          }

          if (v22 == 12)
          {
            *(a1 + 72) |= 0x20u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v78 = 0;
              v79 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v80 = v2 - v31;
              v81 = (v32 + v31);
              v82 = v31 + 1;
              while (1)
              {
                if (!v80)
                {
                  v35 = 0;
                  *(this + 24) = 1;
                  goto LABEL_155;
                }

                v83 = v82;
                v84 = *v81;
                *(this + 1) = v83;
                v35 |= (v84 & 0x7F) << v78;
                if ((v84 & 0x80) == 0)
                {
                  break;
                }

                v78 += 7;
                --v80;
                ++v81;
                v82 = v83 + 1;
                v14 = v79++ > 8;
                if (v14)
                {
                  v35 = 0;
                  goto LABEL_154;
                }
              }

              if (*(this + 24))
              {
                v35 = 0;
              }

LABEL_154:
              v2 = v83;
            }

            else
            {
              v33 = 0;
              v34 = 0;
              v35 = 0;
              v36 = (v32 + v31);
              v37 = v31 + 1;
              while (1)
              {
                v2 = v37;
                *(this + 1) = v37;
                v38 = *v36++;
                v35 |= (v38 & 0x7F) << v33;
                if ((v38 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                ++v37;
                v14 = v34++ > 8;
                if (v14)
                {
                  v35 = 0;
                  break;
                }
              }
            }

LABEL_155:
            *(a1 + 48) = v35;
            goto LABEL_172;
          }
        }

        else
        {
          switch(v22)
          {
            case 0xD:
              *(a1 + 72) |= 1u;
              v55 = *(this + 1);
              v2 = *(this + 2);
              v56 = *this;
              if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
              {
                v99 = 0;
                v100 = 0;
                v59 = 0;
                if (v2 <= v55)
                {
                  v2 = *(this + 1);
                }

                v101 = v2 - v55;
                v102 = (v56 + v55);
                v103 = v55 + 1;
                while (1)
                {
                  if (!v101)
                  {
                    v59 = 0;
                    *(this + 24) = 1;
                    goto LABEL_167;
                  }

                  v104 = v103;
                  v105 = *v102;
                  *(this + 1) = v104;
                  v59 |= (v105 & 0x7F) << v99;
                  if ((v105 & 0x80) == 0)
                  {
                    break;
                  }

                  v99 += 7;
                  --v101;
                  ++v102;
                  v103 = v104 + 1;
                  v14 = v100++ > 8;
                  if (v14)
                  {
                    v59 = 0;
                    goto LABEL_166;
                  }
                }

                if (*(this + 24))
                {
                  v59 = 0;
                }

LABEL_166:
                v2 = v104;
              }

              else
              {
                v57 = 0;
                v58 = 0;
                v59 = 0;
                v60 = (v56 + v55);
                v61 = v55 + 1;
                while (1)
                {
                  v2 = v61;
                  *(this + 1) = v61;
                  v62 = *v60++;
                  v59 |= (v62 & 0x7F) << v57;
                  if ((v62 & 0x80) == 0)
                  {
                    break;
                  }

                  v57 += 7;
                  ++v61;
                  v14 = v58++ > 8;
                  if (v14)
                  {
                    v59 = 0;
                    break;
                  }
                }
              }

LABEL_167:
              *(a1 + 8) = v59;
              goto LABEL_172;
            case 0x14:
              *(a1 + 72) |= 0x80u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
LABEL_88:
                *(this + 24) = 1;
                goto LABEL_172;
              }

              *(a1 + 60) = *(*this + v2);
LABEL_140:
              v2 = *(this + 1) + 4;
LABEL_141:
              *(this + 1) = v2;
              goto LABEL_172;
            case 0x15:
              *(a1 + 72) |= 0x40u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_88;
              }

              *(a1 + 56) = *(*this + v2);
              goto LABEL_140;
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 72) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 24) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_141;
        }

        if (v22 == 2)
        {
          *(a1 + 72) |= 8u;
          v23 = *(this + 1);
          v2 = *(this + 2);
          v24 = *this;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v71 = 0;
            v72 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(this + 1);
            }

            v73 = v2 - v23;
            v74 = (v24 + v23);
            v75 = v23 + 1;
            while (1)
            {
              if (!v73)
              {
                v27 = 0;
                *(this + 24) = 1;
                goto LABEL_151;
              }

              v76 = v75;
              v77 = *v74;
              *(this + 1) = v76;
              v27 |= (v77 & 0x7F) << v71;
              if ((v77 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              --v73;
              ++v74;
              v75 = v76 + 1;
              v14 = v72++ > 8;
              if (v14)
              {
                v27 = 0;
                goto LABEL_150;
              }
            }

            if (*(this + 24))
            {
              v27 = 0;
            }

LABEL_150:
            v2 = v76;
          }

          else
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            while (1)
            {
              v2 = v29;
              *(this + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
              if (v14)
              {
                v27 = 0;
                break;
              }
            }
          }

LABEL_151:
          *(a1 + 32) = v27;
          goto LABEL_172;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 72) |= 2u;
            v47 = *(this + 1);
            v2 = *(this + 2);
            v48 = *this;
            if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
            {
              v92 = 0;
              v93 = 0;
              v51 = 0;
              if (v2 <= v47)
              {
                v2 = *(this + 1);
              }

              v94 = v2 - v47;
              v95 = (v48 + v47);
              v96 = v47 + 1;
              while (1)
              {
                if (!v94)
                {
                  v51 = 0;
                  *(this + 24) = 1;
                  goto LABEL_163;
                }

                v97 = v96;
                v98 = *v95;
                *(this + 1) = v97;
                v51 |= (v98 & 0x7F) << v92;
                if ((v98 & 0x80) == 0)
                {
                  break;
                }

                v92 += 7;
                --v94;
                ++v95;
                v96 = v97 + 1;
                v14 = v93++ > 8;
                if (v14)
                {
                  v51 = 0;
                  goto LABEL_162;
                }
              }

              if (*(this + 24))
              {
                v51 = 0;
              }

LABEL_162:
              v2 = v97;
            }

            else
            {
              v49 = 0;
              v50 = 0;
              v51 = 0;
              v52 = (v48 + v47);
              v53 = v47 + 1;
              while (1)
              {
                v2 = v53;
                *(this + 1) = v53;
                v54 = *v52++;
                v51 |= (v54 & 0x7F) << v49;
                if ((v54 & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                ++v53;
                v14 = v50++ > 8;
                if (v14)
                {
                  v51 = 0;
                  break;
                }
              }
            }

LABEL_163:
            *(a1 + 16) = v51;
            goto LABEL_172;
          case 4:
            *(a1 + 72) |= 0x200u;
            v63 = *(this + 1);
            v2 = *(this + 2);
            v64 = *this;
            if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v2)
            {
              v106 = 0;
              v107 = 0;
              v67 = 0;
              if (v2 <= v63)
              {
                v2 = *(this + 1);
              }

              v108 = v2 - v63;
              v109 = (v64 + v63);
              v110 = v63 + 1;
              while (1)
              {
                if (!v108)
                {
                  LODWORD(v67) = 0;
                  *(this + 24) = 1;
                  goto LABEL_171;
                }

                v111 = v110;
                v112 = *v109;
                *(this + 1) = v111;
                v67 |= (v112 & 0x7F) << v106;
                if ((v112 & 0x80) == 0)
                {
                  break;
                }

                v106 += 7;
                --v108;
                ++v109;
                v110 = v111 + 1;
                v14 = v107++ > 8;
                if (v14)
                {
                  LODWORD(v67) = 0;
                  goto LABEL_170;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v67) = 0;
              }

LABEL_170:
              v2 = v111;
            }

            else
            {
              v65 = 0;
              v66 = 0;
              v67 = 0;
              v68 = (v64 + v63);
              v69 = v63 + 1;
              while (1)
              {
                v2 = v69;
                *(this + 1) = v69;
                v70 = *v68++;
                v67 |= (v70 & 0x7F) << v65;
                if ((v70 & 0x80) == 0)
                {
                  break;
                }

                v65 += 7;
                ++v69;
                v14 = v66++ > 8;
                if (v14)
                {
                  LODWORD(v67) = 0;
                  break;
                }
              }
            }

LABEL_171:
            *(a1 + 68) = v67;
            goto LABEL_172;
          case 0xA:
            *(a1 + 72) |= 0x100u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_88;
            }

            *(a1 + 64) = *(*this + v2);
            goto LABEL_140;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v113 = 0;
        return v113 & 1;
      }

      v2 = *(this + 1);
LABEL_172:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_176:
  v113 = v4 ^ 1;
  return v113 & 1;
}

uint64_t sub_245D923D4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 72);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
    v4 = *(v3 + 72);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 72);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 72);
  if ((v4 & 0x200) == 0)
  {
LABEL_5:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = *(v3 + 68);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 72);
  if ((v4 & 0x100) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 72);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 72);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    result = PB::Writer::write(this, *(v3 + 60));
    if ((*(v3 + 72) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  v10 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 72);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    return result;
  }

LABEL_21:
  v11 = *(v3 + 56);

  return PB::Writer::write(this, v11);
}

uint64_t sub_245D92524(uint64_t result)
{
  *result = &unk_2858CCAF0;
  *(result + 80) = 0;
  return result;
}

void sub_245D9254C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245D92584(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CCAF0;
  *(result + 80) = 0;
  v2 = *(a2 + 80);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 24);
    v3 = 4;
    *(result + 80) = 4;
    *(result + 24) = v4;
    v2 = *(a2 + 80);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 16);
    v3 |= 2u;
    *(result + 80) = v3;
    *(result + 16) = v5;
    v2 = *(a2 + 80);
  }

LABEL_6:
  if (v2)
  {
    v6 = *(a2 + 8);
    v3 |= 1u;
    *(result + 80) = v3;
    *(result + 8) = v6;
    v2 = *(a2 + 80);
    if ((v2 & 0x200) == 0)
    {
LABEL_8:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 64);
  v3 |= 0x200u;
  *(result + 80) = v3;
  *(result + 64) = v7;
  v2 = *(a2 + 80);
  if ((v2 & 0x800) == 0)
  {
LABEL_9:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a2 + 72);
  v3 |= 0x800u;
  *(result + 80) = v3;
  *(result + 72) = v8;
  v2 = *(a2 + 80);
  if ((v2 & 0x1000) == 0)
  {
LABEL_10:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(a2 + 76);
  v3 |= 0x1000u;
  *(result + 80) = v3;
  *(result + 76) = v9;
  v2 = *(a2 + 80);
  if ((v2 & 0x400) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a2 + 68);
  v3 |= 0x400u;
  *(result + 80) = v3;
  *(result + 68) = v10;
  v2 = *(a2 + 80);
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(a2 + 48);
  v3 |= 0x20u;
  *(result + 80) = v3;
  *(result + 48) = v11;
  v2 = *(a2 + 80);
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = *(a2 + 52);
  v3 |= 0x40u;
  *(result + 80) = v3;
  *(result + 52) = v12;
  v2 = *(a2 + 80);
  if ((v2 & 0x100) == 0)
  {
LABEL_14:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = *(a2 + 60);
  v3 |= 0x100u;
  *(result + 80) = v3;
  *(result + 60) = v13;
  v2 = *(a2 + 80);
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = *(a2 + 40);
  v3 |= 0x10u;
  *(result + 80) = v3;
  *(result + 40) = v14;
  v2 = *(a2 + 80);
  if ((v2 & 8) == 0)
  {
LABEL_16:
    if ((v2 & 0x80) == 0)
    {
      return result;
    }

LABEL_28:
    v16 = *(a2 + 56);
    *(result + 80) = v3 | 0x80;
    *(result + 56) = v16;
    return result;
  }

LABEL_27:
  v15 = *(a2 + 32);
  v3 |= 8u;
  *(result + 80) = v3;
  *(result + 32) = v15;
  if ((*(a2 + 80) & 0x80) != 0)
  {
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_245D9271C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "aopTsImpact");
    v5 = *(a1 + 80);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 16);
  PB::TextFormatter::format(this, "aopTsNow");
  v5 = *(a1 + 80);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a1 + 24);
  PB::TextFormatter::format(this, "aopTsSensor");
  v5 = *(a1 + 80);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(a1 + 48);
  PB::TextFormatter::format(this, "nPeaks");
  v5 = *(a1 + 80);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "normalizedIQR", *(a1 + 52));
  v5 = *(a1 + 80);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = *(a1 + 56);
  PB::TextFormatter::format(this, "operatingMode");
  v5 = *(a1 + 80);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = *(a1 + 60);
  PB::TextFormatter::format(this, "repetitiveMotion");
  v5 = *(a1 + 80);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = *(a1 + 32);
  PB::TextFormatter::format(this, "repetitiveMotionEndTs");
  v5 = *(a1 + 80);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = *(a1 + 40);
  PB::TextFormatter::format(this, "repetitiveMotionStartTs");
  v5 = *(a1 + 80);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = *(a1 + 64);
  PB::TextFormatter::format(this, "seq");
  v5 = *(a1 + 80);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "sumHighQPeaksInDecLowFreqFFT", *(a1 + 68));
  v5 = *(a1 + 80);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  PB::TextFormatter::format(this, "sumHighQPeaksInHighFreqFFT", *(a1 + 72));
  if ((*(a1 + 80) & 0x1000) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(this, "sumHighQPeaksInLowFreqFFT", *(a1 + 76));
  }

LABEL_15:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D92900(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(this + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_223;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 80) |= 4u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v136 = 0;
            v137 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v138 = v2 - v22;
            v139 = (v23 + v22);
            v140 = v22 + 1;
            while (1)
            {
              if (!v138)
              {
                v26 = 0;
                *(this + 24) = 1;
                goto LABEL_210;
              }

              v141 = v140;
              v142 = *v139;
              *(this + 1) = v141;
              v26 |= (v142 & 0x7F) << v136;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v136 += 7;
              --v138;
              ++v139;
              v140 = v141 + 1;
              v14 = v137++ > 8;
              if (v14)
              {
                v26 = 0;
                goto LABEL_209;
              }
            }

            if (*(this + 24))
            {
              v26 = 0;
            }

LABEL_209:
            v2 = v141;
          }

          else
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            v27 = (v23 + v22);
            v28 = v22 + 1;
            do
            {
              v2 = v28;
              *(this + 1) = v28;
              v29 = *v27++;
              v26 |= (v29 & 0x7F) << v24;
              if ((v29 & 0x80) == 0)
              {
                goto LABEL_210;
              }

              v24 += 7;
              ++v28;
              v14 = v25++ > 8;
            }

            while (!v14);
            v26 = 0;
          }

LABEL_210:
          *(a1 + 24) = v26;
          goto LABEL_219;
        case 2u:
          *(a1 + 80) |= 2u;
          v78 = *(this + 1);
          v2 = *(this + 2);
          v79 = *this;
          if (v78 > 0xFFFFFFFFFFFFFFF5 || v78 + 10 > v2)
          {
            v143 = 0;
            v144 = 0;
            v82 = 0;
            if (v2 <= v78)
            {
              v2 = *(this + 1);
            }

            v145 = v2 - v78;
            v146 = (v79 + v78);
            v147 = v78 + 1;
            while (1)
            {
              if (!v145)
              {
                v82 = 0;
                *(this + 24) = 1;
                goto LABEL_214;
              }

              v148 = v147;
              v149 = *v146;
              *(this + 1) = v148;
              v82 |= (v149 & 0x7F) << v143;
              if ((v149 & 0x80) == 0)
              {
                break;
              }

              v143 += 7;
              --v145;
              ++v146;
              v147 = v148 + 1;
              v14 = v144++ > 8;
              if (v14)
              {
                v82 = 0;
LABEL_213:
                v2 = v148;
                goto LABEL_214;
              }
            }

            if (*(this + 24))
            {
              v82 = 0;
            }

            goto LABEL_213;
          }

          v80 = 0;
          v81 = 0;
          v82 = 0;
          v83 = (v79 + v78);
          v84 = v78 + 1;
          do
          {
            v2 = v84;
            *(this + 1) = v84;
            v85 = *v83++;
            v82 |= (v85 & 0x7F) << v80;
            if ((v85 & 0x80) == 0)
            {
              goto LABEL_214;
            }

            v80 += 7;
            ++v84;
            v14 = v81++ > 8;
          }

          while (!v14);
          v82 = 0;
LABEL_214:
          *(a1 + 16) = v82;
          goto LABEL_219;
        case 3u:
          *(a1 + 80) |= 1u;
          v54 = *(this + 1);
          v2 = *(this + 2);
          v55 = *this;
          if (v54 > 0xFFFFFFFFFFFFFFF5 || v54 + 10 > v2)
          {
            v115 = 0;
            v116 = 0;
            v58 = 0;
            if (v2 <= v54)
            {
              v2 = *(this + 1);
            }

            v117 = v2 - v54;
            v118 = (v55 + v54);
            v119 = v54 + 1;
            while (1)
            {
              if (!v117)
              {
                v58 = 0;
                *(this + 24) = 1;
                goto LABEL_198;
              }

              v120 = v119;
              v121 = *v118;
              *(this + 1) = v120;
              v58 |= (v121 & 0x7F) << v115;
              if ((v121 & 0x80) == 0)
              {
                break;
              }

              v115 += 7;
              --v117;
              ++v118;
              v119 = v120 + 1;
              v14 = v116++ > 8;
              if (v14)
              {
                v58 = 0;
LABEL_197:
                v2 = v120;
                goto LABEL_198;
              }
            }

            if (*(this + 24))
            {
              v58 = 0;
            }

            goto LABEL_197;
          }

          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = (v55 + v54);
          v60 = v54 + 1;
          do
          {
            v2 = v60;
            *(this + 1) = v60;
            v61 = *v59++;
            v58 |= (v61 & 0x7F) << v56;
            if ((v61 & 0x80) == 0)
            {
              goto LABEL_198;
            }

            v56 += 7;
            ++v60;
            v14 = v57++ > 8;
          }

          while (!v14);
          v58 = 0;
LABEL_198:
          *(a1 + 8) = v58;
          goto LABEL_219;
        case 4u:
          *(a1 + 80) |= 0x200u;
          v62 = *(this + 1);
          v2 = *(this + 2);
          v63 = *this;
          if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v2)
          {
            v122 = 0;
            v123 = 0;
            v66 = 0;
            if (v2 <= v62)
            {
              v2 = *(this + 1);
            }

            v124 = v2 - v62;
            v125 = (v63 + v62);
            v126 = v62 + 1;
            while (1)
            {
              if (!v124)
              {
                LODWORD(v66) = 0;
                *(this + 24) = 1;
                goto LABEL_202;
              }

              v127 = v126;
              v128 = *v125;
              *(this + 1) = v127;
              v66 |= (v128 & 0x7F) << v122;
              if ((v128 & 0x80) == 0)
              {
                break;
              }

              v122 += 7;
              --v124;
              ++v125;
              v126 = v127 + 1;
              v14 = v123++ > 8;
              if (v14)
              {
                LODWORD(v66) = 0;
LABEL_201:
                v2 = v127;
                goto LABEL_202;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v66) = 0;
            }

            goto LABEL_201;
          }

          v64 = 0;
          v65 = 0;
          v66 = 0;
          v67 = (v63 + v62);
          v68 = v62 + 1;
          do
          {
            v2 = v68;
            *(this + 1) = v68;
            v69 = *v67++;
            v66 |= (v69 & 0x7F) << v64;
            if ((v69 & 0x80) == 0)
            {
              goto LABEL_202;
            }

            v64 += 7;
            ++v68;
            v14 = v65++ > 8;
          }

          while (!v14);
          LODWORD(v66) = 0;
LABEL_202:
          *(a1 + 64) = v66;
          goto LABEL_219;
        case 5u:
          *(a1 + 80) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_173;
        case 6u:
          *(a1 + 80) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_173;
        case 7u:
          *(a1 + 80) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_173;
        case 8u:
          *(a1 + 80) |= 0x20u;
          v70 = *(this + 1);
          v2 = *(this + 2);
          v71 = *this;
          if (v70 > 0xFFFFFFFFFFFFFFF5 || v70 + 10 > v2)
          {
            v129 = 0;
            v130 = 0;
            v74 = 0;
            if (v2 <= v70)
            {
              v2 = *(this + 1);
            }

            v131 = v2 - v70;
            v132 = (v71 + v70);
            v133 = v70 + 1;
            while (1)
            {
              if (!v131)
              {
                LODWORD(v74) = 0;
                *(this + 24) = 1;
                goto LABEL_206;
              }

              v134 = v133;
              v135 = *v132;
              *(this + 1) = v134;
              v74 |= (v135 & 0x7F) << v129;
              if ((v135 & 0x80) == 0)
              {
                break;
              }

              v129 += 7;
              --v131;
              ++v132;
              v133 = v134 + 1;
              v14 = v130++ > 8;
              if (v14)
              {
                LODWORD(v74) = 0;
LABEL_205:
                v2 = v134;
                goto LABEL_206;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v74) = 0;
            }

            goto LABEL_205;
          }

          v72 = 0;
          v73 = 0;
          v74 = 0;
          v75 = (v71 + v70);
          v76 = v70 + 1;
          do
          {
            v2 = v76;
            *(this + 1) = v76;
            v77 = *v75++;
            v74 |= (v77 & 0x7F) << v72;
            if ((v77 & 0x80) == 0)
            {
              goto LABEL_206;
            }

            v72 += 7;
            ++v76;
            v14 = v73++ > 8;
          }

          while (!v14);
          LODWORD(v74) = 0;
LABEL_206:
          *(a1 + 48) = v74;
          goto LABEL_219;
        case 9u:
          *(a1 + 80) |= 0x40u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
          {
            *(a1 + 52) = *(*this + v2);
LABEL_173:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          else
          {
LABEL_99:
            *(this + 24) = 1;
          }

          goto LABEL_219;
        case 0xAu:
          *(a1 + 80) |= 0x100u;
          v46 = *(this + 1);
          v2 = *(this + 2);
          v47 = *this;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v108 = 0;
            v109 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(this + 1);
            }

            v110 = v2 - v46;
            v111 = (v47 + v46);
            v112 = v46 + 1;
            while (1)
            {
              if (!v110)
              {
                LODWORD(v50) = 0;
                *(this + 24) = 1;
                goto LABEL_194;
              }

              v113 = v112;
              v114 = *v111;
              *(this + 1) = v113;
              v50 |= (v114 & 0x7F) << v108;
              if ((v114 & 0x80) == 0)
              {
                break;
              }

              v108 += 7;
              --v110;
              ++v111;
              v112 = v113 + 1;
              v14 = v109++ > 8;
              if (v14)
              {
                LODWORD(v50) = 0;
LABEL_193:
                v2 = v113;
                goto LABEL_194;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_193;
          }

          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = (v47 + v46);
          v52 = v46 + 1;
          do
          {
            v2 = v52;
            *(this + 1) = v52;
            v53 = *v51++;
            v50 |= (v53 & 0x7F) << v48;
            if ((v53 & 0x80) == 0)
            {
              goto LABEL_194;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_194:
          *(a1 + 60) = v50;
          goto LABEL_219;
        case 0xBu:
          *(a1 + 80) |= 0x10u;
          v86 = *(this + 1);
          v2 = *(this + 2);
          v87 = *this;
          if (v86 > 0xFFFFFFFFFFFFFFF5 || v86 + 10 > v2)
          {
            v150 = 0;
            v151 = 0;
            v90 = 0;
            if (v2 <= v86)
            {
              v2 = *(this + 1);
            }

            v152 = v2 - v86;
            v153 = (v87 + v86);
            v154 = v86 + 1;
            while (1)
            {
              if (!v152)
              {
                v90 = 0;
                *(this + 24) = 1;
                goto LABEL_218;
              }

              v155 = v154;
              v156 = *v153;
              *(this + 1) = v155;
              v90 |= (v156 & 0x7F) << v150;
              if ((v156 & 0x80) == 0)
              {
                break;
              }

              v150 += 7;
              --v152;
              ++v153;
              v154 = v155 + 1;
              v14 = v151++ > 8;
              if (v14)
              {
                v90 = 0;
LABEL_217:
                v2 = v155;
                goto LABEL_218;
              }
            }

            if (*(this + 24))
            {
              v90 = 0;
            }

            goto LABEL_217;
          }

          v88 = 0;
          v89 = 0;
          v90 = 0;
          v91 = (v87 + v86);
          v92 = v86 + 1;
          do
          {
            v2 = v92;
            *(this + 1) = v92;
            v93 = *v91++;
            v90 |= (v93 & 0x7F) << v88;
            if ((v93 & 0x80) == 0)
            {
              goto LABEL_218;
            }

            v88 += 7;
            ++v92;
            v14 = v89++ > 8;
          }

          while (!v14);
          v90 = 0;
LABEL_218:
          *(a1 + 40) = v90;
          goto LABEL_219;
        case 0xCu:
          *(a1 + 80) |= 8u;
          v30 = *(this + 1);
          v2 = *(this + 2);
          v31 = *this;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v94 = 0;
            v95 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(this + 1);
            }

            v96 = v2 - v30;
            v97 = (v31 + v30);
            v98 = v30 + 1;
            while (1)
            {
              if (!v96)
              {
                v34 = 0;
                *(this + 24) = 1;
                goto LABEL_186;
              }

              v99 = v98;
              v100 = *v97;
              *(this + 1) = v99;
              v34 |= (v100 & 0x7F) << v94;
              if ((v100 & 0x80) == 0)
              {
                break;
              }

              v94 += 7;
              --v96;
              ++v97;
              v98 = v99 + 1;
              v14 = v95++ > 8;
              if (v14)
              {
                v34 = 0;
LABEL_185:
                v2 = v99;
                goto LABEL_186;
              }
            }

            if (*(this + 24))
            {
              v34 = 0;
            }

            goto LABEL_185;
          }

          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          do
          {
            v2 = v36;
            *(this + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              goto LABEL_186;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          v34 = 0;
LABEL_186:
          *(a1 + 32) = v34;
          goto LABEL_219;
        case 0xDu:
          *(a1 + 80) |= 0x80u;
          v38 = *(this + 1);
          v2 = *(this + 2);
          v39 = *this;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v101 = 0;
            v102 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(this + 1);
            }

            v103 = v2 - v38;
            v104 = (v39 + v38);
            v105 = v38 + 1;
            while (1)
            {
              if (!v103)
              {
                LODWORD(v42) = 0;
                *(this + 24) = 1;
                goto LABEL_190;
              }

              v106 = v105;
              v107 = *v104;
              *(this + 1) = v106;
              v42 |= (v107 & 0x7F) << v101;
              if ((v107 & 0x80) == 0)
              {
                break;
              }

              v101 += 7;
              --v103;
              ++v104;
              v105 = v106 + 1;
              v14 = v102++ > 8;
              if (v14)
              {
                LODWORD(v42) = 0;
LABEL_189:
                v2 = v106;
                goto LABEL_190;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_189;
          }

          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = (v39 + v38);
          v44 = v38 + 1;
          do
          {
            v2 = v44;
            *(this + 1) = v44;
            v45 = *v43++;
            v42 |= (v45 & 0x7F) << v40;
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_190;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_190:
          *(a1 + 56) = v42;
          goto LABEL_219;
        default:
          if (!PB::Reader::skip(this))
          {
            v157 = 0;
            return v157 & 1;
          }

          v2 = *(this + 1);
LABEL_219:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_223;
          }

          break;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v7 + v2);
    v20 = v2 + 1;
    while (v18)
    {
      v21 = *v19;
      *(this + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      --v18;
      ++v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(this + 24) = 1;
  }

LABEL_223:
  v157 = v4 ^ 1;
  return v157 & 1;
}

uint64_t sub_245D934E4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 80);
  if ((v4 & 4) != 0)
  {
    v5 = *(result + 24);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 80);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 80);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 80);
  if ((v4 & 0x200) == 0)
  {
LABEL_5:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(v3 + 64);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 80);
  if ((v4 & 0x800) == 0)
  {
LABEL_6:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 80);
  if ((v4 & 0x1000) == 0)
  {
LABEL_7:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 80);
  if ((v4 & 0x400) == 0)
  {
LABEL_8:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 80);
  if ((v4 & 0x20) == 0)
  {
LABEL_9:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 80);
  if ((v4 & 0x40) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 80);
  if ((v4 & 0x100) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 80);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 8) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v12 = *(v3 + 32);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 80) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_25:
  v11 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 80);
  if ((v4 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v4 & 0x80) == 0)
  {
    return result;
  }

LABEL_27:
  v13 = *(v3 + 56);

  return PB::Writer::writeVarInt(this);
}

void sub_245D9368C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245D936C4(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CCB28;
  *(result + 72) = 0;
  v2 = *(a2 + 72);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 72) = 1;
    *(result + 8) = v4;
    v2 = *(a2 + 72);
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x20000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 70);
    v3 |= 0x20000u;
    *(result + 72) = v3;
    *(result + 70) = v5;
    v2 = *(a2 + 72);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 12);
    v3 |= 2u;
    *(result + 72) = v3;
    *(result + 12) = v6;
    v2 = *(a2 + 72);
    if ((v2 & 0x2000) == 0)
    {
LABEL_8:
      if ((v2 & 0x4000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 0x2000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 60);
  v3 |= 0x2000u;
  *(result + 72) = v3;
  *(result + 60) = v7;
  v2 = *(a2 + 72);
  if ((v2 & 0x4000) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v8 = *(a2 + 64);
  v3 |= 0x4000u;
  *(result + 72) = v3;
  *(result + 64) = v8;
  v2 = *(a2 + 72);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v9 = *(a2 + 16);
  v3 |= 4u;
  *(result + 72) = v3;
  *(result + 16) = v9;
  v2 = *(a2 + 72);
  if ((v2 & 0x20) == 0)
  {
LABEL_11:
    if ((v2 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v10 = *(a2 + 28);
  v3 |= 0x20u;
  *(result + 72) = v3;
  *(result + 28) = v10;
  v2 = *(a2 + 72);
  if ((v2 & 8) == 0)
  {
LABEL_12:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v11 = *(a2 + 20);
  v3 |= 8u;
  *(result + 72) = v3;
  *(result + 20) = v11;
  v2 = *(a2 + 72);
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v12 = *(a2 + 24);
  v3 |= 0x10u;
  *(result + 72) = v3;
  *(result + 24) = v12;
  v2 = *(a2 + 72);
  if ((v2 & 0x1000) == 0)
  {
LABEL_14:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v13 = *(a2 + 56);
  v3 |= 0x1000u;
  *(result + 72) = v3;
  *(result + 56) = v13;
  v2 = *(a2 + 72);
  if ((v2 & 0x800) == 0)
  {
LABEL_15:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  v14 = *(a2 + 52);
  v3 |= 0x800u;
  *(result + 72) = v3;
  *(result + 52) = v14;
  v2 = *(a2 + 72);
  if ((v2 & 0x400) == 0)
  {
LABEL_16:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  v15 = *(a2 + 48);
  v3 |= 0x400u;
  *(result + 72) = v3;
  *(result + 48) = v15;
  v2 = *(a2 + 72);
  if ((v2 & 0x200) == 0)
  {
LABEL_17:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  v16 = *(a2 + 44);
  v3 |= 0x200u;
  *(result + 72) = v3;
  *(result + 44) = v16;
  v2 = *(a2 + 72);
  if ((v2 & 0x40) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_34:
  v17 = *(a2 + 32);
  v3 |= 0x40u;
  *(result + 72) = v3;
  *(result + 32) = v17;
  v2 = *(a2 + 72);
  if ((v2 & 0x80) == 0)
  {
LABEL_19:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_35:
  v18 = *(a2 + 36);
  v3 |= 0x80u;
  *(result + 72) = v3;
  *(result + 36) = v18;
  v2 = *(a2 + 72);
  if ((v2 & 0x100) == 0)
  {
LABEL_20:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  v19 = *(a2 + 40);
  v3 |= 0x100u;
  *(result + 72) = v3;
  *(result + 40) = v19;
  v2 = *(a2 + 72);
  if ((v2 & 0x10000) == 0)
  {
LABEL_21:
    if ((v2 & 0x8000) == 0)
    {
      return result;
    }

LABEL_38:
    v21 = *(a2 + 68);
    *(result + 72) = v3 | 0x8000;
    *(result + 68) = v21;
    return result;
  }

LABEL_37:
  v20 = *(a2 + 69);
  v3 |= 0x10000u;
  *(result + 72) = v3;
  *(result + 69) = v20;
  if ((*(a2 + 72) & 0x8000) != 0)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t sub_245D938E4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 72);
  if (v5)
  {
    v7 = *(a1 + 8);
    PB::TextFormatter::format(this, "crownUpDown");
    v5 = *(a1 + 72);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 12);
  PB::TextFormatter::format(this, "fallType");
  v5 = *(a1 + 72);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "impactMaxAccelNormAlertThreshold", *(a1 + 16));
  v5 = *(a1 + 72);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "impactMaxAccelNormLoggingHeartRateThreshold", *(a1 + 20));
  v5 = *(a1 + 72);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "impactMaxAccelNormLoggingHighResolutionSensorDataThreshold", *(a1 + 24));
  v5 = *(a1 + 72);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "impactMaxAccelNormLoggingStatsThreshold", *(a1 + 28));
  v5 = *(a1 + 72);
  if ((v5 & 0x8000) == 0)
  {
LABEL_8:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  v9 = *(a1 + 68);
  PB::TextFormatter::format(this, "isADLImpact");
  v5 = *(a1 + 72);
  if ((v5 & 0x10000) == 0)
  {
LABEL_9:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  v10 = *(a1 + 69);
  PB::TextFormatter::format(this, "isFallDetectionFeatureEnabled");
  v5 = *(a1 + 72);
  if ((v5 & 0x20000) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  v11 = *(a1 + 70);
  PB::TextFormatter::format(this, "isNearFall");
  v5 = *(a1 + 72);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "metMinutePercentile90", *(a1 + 32));
  v5 = *(a1 + 72);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "metMinutePercentile95", *(a1 + 36));
  v5 = *(a1 + 72);
  if ((v5 & 0x100) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "metMinutePercentile98", *(a1 + 40));
  v5 = *(a1 + 72);
  if ((v5 & 0x200) == 0)
  {
LABEL_14:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "metMinutePercentileActual", *(a1 + 44));
  v5 = *(a1 + 72);
  if ((v5 & 0x400) == 0)
  {
LABEL_15:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "otherFallPosteriorRatioDetectionThreshold", *(a1 + 48));
  v5 = *(a1 + 72);
  if ((v5 & 0x800) == 0)
  {
LABEL_16:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "slipFallPosteriorRatioDetectionThreshold", *(a1 + 52));
  v5 = *(a1 + 72);
  if ((v5 & 0x1000) == 0)
  {
LABEL_17:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "tripFallPosteriorRatioDetectionThreshold", *(a1 + 56));
  v5 = *(a1 + 72);
  if ((v5 & 0x2000) == 0)
  {
LABEL_18:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_39:
  v12 = *(a1 + 60);
  PB::TextFormatter::format(this, "userAgeBucket");
  if ((*(a1 + 72) & 0x4000) != 0)
  {
LABEL_19:
    v6 = *(a1 + 64);
    PB::TextFormatter::format(this, "workoutType");
  }

LABEL_20:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D93B68(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(this + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_156;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 72) |= 1u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v81 = 0;
            v82 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v83 = v2 - v22;
            v84 = (v23 + v22);
            v85 = v22 + 1;
            while (1)
            {
              if (!v83)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_151;
              }

              v86 = v85;
              v87 = *v84;
              *(this + 1) = v86;
              v26 |= (v87 & 0x7F) << v81;
              if ((v87 & 0x80) == 0)
              {
                break;
              }

              v81 += 7;
              --v83;
              ++v84;
              v85 = v86 + 1;
              v14 = v82++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
                goto LABEL_150;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

LABEL_150:
            v2 = v86;
          }

          else
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            v27 = (v23 + v22);
            v28 = v22 + 1;
            do
            {
              v2 = v28;
              *(this + 1) = v28;
              v29 = *v27++;
              v26 |= (v29 & 0x7F) << v24;
              if ((v29 & 0x80) == 0)
              {
                goto LABEL_151;
              }

              v24 += 7;
              ++v28;
              v14 = v25++ > 8;
            }

            while (!v14);
            LODWORD(v26) = 0;
          }

LABEL_151:
          *(a1 + 8) = v26;
          goto LABEL_152;
        case 2u:
          *(a1 + 72) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v57 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v56 = *(*this + v2++);
            *(this + 1) = v2;
            v57 = v56 != 0;
          }

          *(a1 + 70) = v57;
          goto LABEL_152;
        case 3u:
          *(a1 + 72) |= 2u;
          v40 = *(this + 1);
          v2 = *(this + 2);
          v41 = *this;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v67 = 0;
            v68 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v2 = *(this + 1);
            }

            v69 = v2 - v40;
            v70 = (v41 + v40);
            v71 = v40 + 1;
            while (1)
            {
              if (!v69)
              {
                LODWORD(v44) = 0;
                *(this + 24) = 1;
                goto LABEL_143;
              }

              v72 = v71;
              v73 = *v70;
              *(this + 1) = v72;
              v44 |= (v73 & 0x7F) << v67;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v67 += 7;
              --v69;
              ++v70;
              v71 = v72 + 1;
              v14 = v68++ > 8;
              if (v14)
              {
                LODWORD(v44) = 0;
LABEL_142:
                v2 = v72;
                goto LABEL_143;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v44) = 0;
            }

            goto LABEL_142;
          }

          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = (v41 + v40);
          v46 = v40 + 1;
          do
          {
            v2 = v46;
            *(this + 1) = v46;
            v47 = *v45++;
            v44 |= (v47 & 0x7F) << v42;
            if ((v47 & 0x80) == 0)
            {
              goto LABEL_143;
            }

            v42 += 7;
            ++v46;
            v14 = v43++ > 8;
          }

          while (!v14);
          LODWORD(v44) = 0;
LABEL_143:
          *(a1 + 12) = v44;
          goto LABEL_152;
        case 4u:
          *(a1 + 72) |= 0x2000u;
          v48 = *(this + 1);
          v2 = *(this + 2);
          v49 = *this;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v74 = 0;
            v75 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v2 = *(this + 1);
            }

            v76 = v2 - v48;
            v77 = (v49 + v48);
            v78 = v48 + 1;
            while (1)
            {
              if (!v76)
              {
                LODWORD(v52) = 0;
                *(this + 24) = 1;
                goto LABEL_147;
              }

              v79 = v78;
              v80 = *v77;
              *(this + 1) = v79;
              v52 |= (v80 & 0x7F) << v74;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v74 += 7;
              --v76;
              ++v77;
              v78 = v79 + 1;
              v14 = v75++ > 8;
              if (v14)
              {
                LODWORD(v52) = 0;
LABEL_146:
                v2 = v79;
                goto LABEL_147;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_146;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = (v49 + v48);
          v54 = v48 + 1;
          do
          {
            v2 = v54;
            *(this + 1) = v54;
            v55 = *v53++;
            v52 |= (v55 & 0x7F) << v50;
            if ((v55 & 0x80) == 0)
            {
              goto LABEL_147;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_147:
          *(a1 + 60) = v52;
          goto LABEL_152;
        case 5u:
          *(a1 + 72) |= 0x4000u;
          v32 = *(this + 1);
          v2 = *(this + 2);
          v33 = *this;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v60 = 0;
            v61 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v2 = *(this + 1);
            }

            v62 = v2 - v32;
            v63 = (v33 + v32);
            v64 = v32 + 1;
            while (1)
            {
              if (!v62)
              {
                LODWORD(v36) = 0;
                *(this + 24) = 1;
                goto LABEL_139;
              }

              v65 = v64;
              v66 = *v63;
              *(this + 1) = v65;
              v36 |= (v66 & 0x7F) << v60;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v60 += 7;
              --v62;
              ++v63;
              v64 = v65 + 1;
              v14 = v61++ > 8;
              if (v14)
              {
                LODWORD(v36) = 0;
LABEL_138:
                v2 = v65;
                goto LABEL_139;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v36) = 0;
            }

            goto LABEL_138;
          }

          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = (v33 + v32);
          v38 = v32 + 1;
          do
          {
            v2 = v38;
            *(this + 1) = v38;
            v39 = *v37++;
            v36 |= (v39 & 0x7F) << v34;
            if ((v39 & 0x80) == 0)
            {
              goto LABEL_139;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
          }

          while (!v14);
          LODWORD(v36) = 0;
LABEL_139:
          *(a1 + 64) = v36;
          goto LABEL_152;
        case 6u:
          *(a1 + 72) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_91;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_131;
        case 7u:
          *(a1 + 72) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_91;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_131;
        case 8u:
          *(a1 + 72) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_91;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_131;
        case 9u:
          *(a1 + 72) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_91;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_131;
        case 0xAu:
          *(a1 + 72) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_91;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_131;
        case 0xBu:
          *(a1 + 72) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_91;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_131;
        case 0xCu:
          *(a1 + 72) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_91;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_131;
        case 0xDu:
          *(a1 + 72) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_91;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_131;
        case 0xEu:
          *(a1 + 72) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_91;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_131;
        case 0xFu:
          *(a1 + 72) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_91;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_131;
        case 0x10u:
          *(a1 + 72) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_91:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 40) = *(*this + v2);
LABEL_131:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          goto LABEL_152;
        case 0x11u:
          *(a1 + 72) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v31 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v30 = *(*this + v2++);
            *(this + 1) = v2;
            v31 = v30 != 0;
          }

          *(a1 + 69) = v31;
          goto LABEL_152;
        case 0x12u:
          *(a1 + 72) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v59 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v58 = *(*this + v2++);
            *(this + 1) = v2;
            v59 = v58 != 0;
          }

          *(a1 + 68) = v59;
          goto LABEL_152;
        default:
          if (!PB::Reader::skip(this))
          {
            v88 = 0;
            return v88 & 1;
          }

          v2 = *(this + 1);
LABEL_152:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_156;
          }

          break;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v7 + v2);
    v20 = v2 + 1;
    while (v18)
    {
      v21 = *v19;
      *(this + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      --v18;
      ++v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(this + 24) = 1;
  }

LABEL_156:
  v88 = v4 ^ 1;
  return v88 & 1;
}

uint64_t sub_245D944A0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 72);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 72);
    if ((v4 & 0x20000) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 70);
  result = PB::Writer::write(this);
  v4 = *(v3 + 72);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  v7 = *(v3 + 12);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 72);
  if ((v4 & 0x2000) == 0)
  {
LABEL_5:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  v8 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 72);
  if ((v4 & 0x4000) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = *(v3 + 64);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 72);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 72);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 72);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 72);
  if ((v4 & 0x1000) == 0)
  {
LABEL_11:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 72);
  if ((v4 & 0x800) == 0)
  {
LABEL_12:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 72);
  if ((v4 & 0x400) == 0)
  {
LABEL_13:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 72);
  if ((v4 & 0x200) == 0)
  {
LABEL_14:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 72);
  if ((v4 & 0x40) == 0)
  {
LABEL_15:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 72);
  if ((v4 & 0x80) == 0)
  {
LABEL_16:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 72);
  if ((v4 & 0x100) == 0)
  {
LABEL_17:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    v10 = *(v3 + 69);
    result = PB::Writer::write(this);
    if ((*(v3 + 72) & 0x8000) == 0)
    {
      return result;
    }

    goto LABEL_37;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 72);
  if ((v4 & 0x10000) != 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  if ((v4 & 0x8000) == 0)
  {
    return result;
  }

LABEL_37:
  v11 = *(v3 + 68);

  return PB::Writer::write(this);
}

double sub_245D946D0(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2858CCB60;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return result;
}

void sub_245D94708(PB::Base *this)
{
  *this = &unk_2858CCB60;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 8);
  *(this + 8) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 7);
  *(this + 7) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 6);
  *(this + 6) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 5);
  *(this + 5) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 4);
  *(this + 4) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 2);
  *(this + 2) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 1);
  *(this + 1) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  PB::Base::~Base(this);
}

void sub_245D949FC(PB::Base *a1)
{
  sub_245D94708(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245D94A34(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CCB60;
  *(result + 8) = 0;
  *(result + 32) = 0u;
  *(result + 16) = 0;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0;
  if (*(a2 + 128))
  {
    v2 = *(a2 + 24);
    *(result + 128) = 1;
    *(result + 24) = v2;
  }

  if (*(a2 + 88))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  if (*(a2 + 64))
  {
    operator new();
  }

  if (*(a2 + 72))
  {
    operator new();
  }

  if (*(a2 + 32))
  {
    operator new();
  }

  if (*(a2 + 104))
  {
    operator new();
  }

  if (*(a2 + 80))
  {
    operator new();
  }

  if (*(a2 + 120))
  {
    operator new();
  }

  if (*(a2 + 48))
  {
    operator new();
  }

  if (*(a2 + 56))
  {
    operator new();
  }

  if (*(a2 + 112))
  {
    operator new();
  }

  if (*(a2 + 40))
  {
    operator new();
  }

  if (*(a2 + 96))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245D94FD8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "accel100");
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "accel800");
  }

  if (*(a1 + 128))
  {
    v7 = *(a1 + 24);
    PB::TextFormatter::format(this, "aopTimestamp");
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(*v8 + 32))(v8, this, "dm");
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(*v9 + 32))(v9, this, "dmAlwaysOn");
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(*v10 + 32))(v10, this, "fallState");
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    (*(*v11 + 32))(v11, this, "fallStats");
  }

  v12 = *(a1 + 64);
  if (v12)
  {
    (*(*v12 + 32))(v12, this, "gyro100");
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    (*(*v13 + 32))(v13, this, "gyro200");
  }

  v14 = *(a1 + 80);
  if (v14)
  {
    (*(*v14 + 32))(v14, this, "heartRate");
  }

  v15 = *(a1 + 88);
  if (v15)
  {
    (*(*v15 + 32))(v15, this, "meta");
  }

  v16 = *(a1 + 96);
  if (v16)
  {
    (*(*v16 + 32))(v16, this, "odometerEntry");
  }

  v17 = *(a1 + 104);
  if (v17)
  {
    (*(*v17 + 32))(v17, this, "pressure");
  }

  v18 = *(a1 + 112);
  if (v18)
  {
    (*(*v18 + 32))(v18, this, "suppressionFeatures");
  }

  v19 = *(a1 + 120);
  if (v19)
  {
    (*(*v19 + 32))(v19, this, "wristState");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D95348(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v2);
        v21 = v2 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_63;
          }

          v22 = *v20;
          *(this + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        if (v4)
        {
          v10 = 0;
        }

        else
        {
          v10 = v17;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      switch((v10 >> 3))
      {
        case 2u:
          *(a1 + 128) |= 1u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 <= 0xFFFFFFFFFFFFFFF5 && v24 + 10 <= v23)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            do
            {
              *(this + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                goto LABEL_61;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
            }

            while (!v14);
LABEL_57:
            v28 = 0;
            goto LABEL_61;
          }

          v32 = 0;
          v33 = 0;
          v28 = 0;
          v18 = v23 >= v24;
          v34 = v23 - v24;
          if (!v18)
          {
            v34 = 0;
          }

          v35 = (v25 + v24);
          v36 = v24 + 1;
          break;
        case 3u:
          operator new();
        case 4u:
          operator new();
        case 5u:
          operator new();
        case 6u:
          operator new();
        case 7u:
          operator new();
        case 8u:
          operator new();
        case 9u:
          operator new();
        case 0xAu:
          operator new();
        case 0xBu:
          operator new();
        case 0xCu:
          operator new();
        case 0xDu:
          operator new();
        case 0xEu:
          operator new();
        case 0xFu:
          operator new();
        case 0x10u:
          operator new();
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_47;
          }

          v39 = 0;
          return v39 & 1;
      }

      while (1)
      {
        if (!v34)
        {
          v28 = 0;
          *(this + 24) = 1;
          goto LABEL_61;
        }

        v37 = *v35;
        *(this + 1) = v36;
        v28 |= (v37 & 0x7F) << v32;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v32 += 7;
        --v34;
        ++v35;
        ++v36;
        v14 = v33++ > 8;
        if (v14)
        {
          goto LABEL_57;
        }
      }

      if (*(this + 24))
      {
        v28 = 0;
      }

LABEL_61:
      *(a1 + 24) = v28;
LABEL_47:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3)
      {
        break;
      }
    }

    while ((*(this + 24) & 1) == 0);
  }

LABEL_63:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_245D95BE4(uint64_t result)
{
  *result = &unk_2858CD1B8;
  *(result + 44) = 0;
  return result;
}

void *sub_245D95C08(void *result)
{
  *result = &unk_2858CCBD0;
  result[27] = 0;
  return result;
}

uint64_t sub_245D95C2C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 128))
  {
    v4 = *(result + 24);
    result = PB::Writer::writeVarInt(this);
  }

  v5 = v3[11];
  if (v5)
  {
    result = PB::Writer::writeSubmessage(this, v5);
  }

  v6 = v3[1];
  if (v6)
  {
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = v3[2];
  if (v7)
  {
    result = PB::Writer::writeSubmessage(this, v7);
  }

  v8 = v3[8];
  if (v8)
  {
    result = PB::Writer::writeSubmessage(this, v8);
  }

  v9 = v3[9];
  if (v9)
  {
    result = PB::Writer::writeSubmessage(this, v9);
  }

  v10 = v3[4];
  if (v10)
  {
    result = PB::Writer::writeSubmessage(this, v10);
  }

  v11 = v3[13];
  if (v11)
  {
    result = PB::Writer::writeSubmessage(this, v11);
  }

  v12 = v3[10];
  if (v12)
  {
    result = PB::Writer::writeSubmessage(this, v12);
  }

  v13 = v3[15];
  if (v13)
  {
    result = PB::Writer::writeSubmessage(this, v13);
  }

  v14 = v3[6];
  if (v14)
  {
    result = PB::Writer::writeSubmessage(this, v14);
  }

  v15 = v3[7];
  if (v15)
  {
    result = PB::Writer::writeSubmessage(this, v15);
  }

  v16 = v3[14];
  if (v16)
  {
    result = PB::Writer::writeSubmessage(this, v16);
  }

  v17 = v3[5];
  if (v17)
  {
    result = PB::Writer::writeSubmessage(this, v17);
  }

  v18 = v3[12];
  if (v18)
  {

    return PB::Writer::writeSubmessage(this, v18);
  }

  return result;
}

void sub_245D95D9C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245D95DD4(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CCB98;
  *(result + 48) = 0;
  v2 = *(a2 + 48);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 16);
    v3 = 2;
    *(result + 48) = 2;
    *(result + 16) = v4;
    v2 = *(a2 + 48);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 48))
  {
LABEL_5:
    v5 = *(a2 + 8);
    v3 |= 1u;
    *(result + 48) = v3;
    *(result + 8) = v5;
    v2 = *(a2 + 48);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 24);
    v3 |= 4u;
    *(result + 48) = v3;
    *(result + 24) = v6;
    v2 = *(a2 + 48);
    if ((v2 & 0x40) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 40);
  v3 |= 0x40u;
  *(result + 48) = v3;
  *(result + 40) = v7;
  v2 = *(a2 + 48);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = *(a2 + 36);
  v3 |= 0x20u;
  *(result + 48) = v3;
  *(result + 36) = v8;
  v2 = *(a2 + 48);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = *(a2 + 32);
  v3 |= 0x10u;
  *(result + 48) = v3;
  *(result + 32) = v9;
  v2 = *(a2 + 48);
  if ((v2 & 8) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      return result;
    }

LABEL_18:
    v11 = *(a2 + 44);
    *(result + 48) = v3 | 0x80;
    *(result + 44) = v11;
    return result;
  }

LABEL_17:
  v10 = *(a2 + 28);
  v3 |= 8u;
  *(result + 48) = v3;
  *(result + 28) = v10;
  if ((*(a2 + 48) & 0x80) != 0)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_245D95EDC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 48);
  if (v5)
  {
    v7 = *(a1 + 8);
    PB::TextFormatter::format(this, "aopTsNow");
    v5 = *(a1 + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a1 + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "aopTsSensor");
  v5 = *(a1 + 48);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = *(a1 + 44);
  PB::TextFormatter::format(this, "fallAlertSentFromReferee");
  v5 = *(a1 + 48);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = *(a1 + 24);
  PB::TextFormatter::format(this, "isFall");
  v5 = *(a1 + 48);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = *(a1 + 28);
  PB::TextFormatter::format(this, "operatingMode");
  v5 = *(a1 + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = *(a1 + 32);
  PB::TextFormatter::format(this, "resolution");
  v5 = *(a1 + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v13 = *(a1 + 36);
  PB::TextFormatter::format(this, "response");
  if ((*(a1 + 48) & 0x40) != 0)
  {
LABEL_9:
    v6 = *(a1 + 40);
    PB::TextFormatter::format(this, "state");
  }

LABEL_10:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D96020(uint64_t a1, PB::Reader *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(this + 24);
  if (v3 < v2 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v2 >= v3;
        v19 = v2 - v3;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v3);
        v21 = v3 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_191;
          }

          v22 = *v20;
          *(this + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        if (v4)
        {
          v10 = 0;
        }

        else
        {
          v10 = v17;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) > 4)
      {
        if (v23 > 6)
        {
          if (v23 == 7)
          {
            *(a1 + 48) |= 8u;
            v74 = *(this + 1);
            v2 = *(this + 2);
            v75 = *this;
            if (v74 > 0xFFFFFFFFFFFFFFF5 || v74 + 10 > v2)
            {
              v103 = 0;
              v104 = 0;
              v78 = 0;
              if (v2 <= v74)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v105 = v3 - v74;
              v106 = (v75 + v74);
              v107 = v74 + 1;
              while (1)
              {
                if (!v105)
                {
                  LODWORD(v78) = 0;
                  *(this + 24) = 1;
                  goto LABEL_174;
                }

                v108 = v107;
                v109 = *v106;
                *(this + 1) = v108;
                v78 |= (v109 & 0x7F) << v103;
                if ((v109 & 0x80) == 0)
                {
                  break;
                }

                v103 += 7;
                --v105;
                ++v106;
                v107 = v108 + 1;
                v14 = v104++ > 8;
                if (v14)
                {
                  LODWORD(v78) = 0;
                  goto LABEL_173;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v78) = 0;
              }

LABEL_173:
              v3 = v108;
            }

            else
            {
              v76 = 0;
              v77 = 0;
              v78 = 0;
              v79 = (v75 + v74);
              v80 = v74 + 1;
              while (1)
              {
                v3 = v80;
                *(this + 1) = v80;
                v81 = *v79++;
                v78 |= (v81 & 0x7F) << v76;
                if ((v81 & 0x80) == 0)
                {
                  break;
                }

                v76 += 7;
                ++v80;
                v14 = v77++ > 8;
                if (v14)
                {
                  LODWORD(v78) = 0;
                  break;
                }
              }
            }

LABEL_174:
            *(a1 + 28) = v78;
            goto LABEL_187;
          }

          if (v23 == 8)
          {
            *(a1 + 48) |= 0x80u;
            v3 = *(this + 1);
            v2 = *(this + 2);
            if (v3 >= v2)
            {
              v49 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v48 = *(*this + v3++);
              *(this + 1) = v3;
              v49 = v48 != 0;
            }

            *(a1 + 44) = v49;
            goto LABEL_187;
          }
        }

        else
        {
          if (v23 == 5)
          {
            *(a1 + 48) |= 0x20u;
            v58 = *(this + 1);
            v2 = *(this + 2);
            v59 = *this;
            if (v58 > 0xFFFFFFFFFFFFFFF5 || v58 + 10 > v2)
            {
              v89 = 0;
              v90 = 0;
              v62 = 0;
              if (v2 <= v58)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v91 = v3 - v58;
              v92 = (v59 + v58);
              v93 = v58 + 1;
              while (1)
              {
                if (!v91)
                {
                  LODWORD(v62) = 0;
                  *(this + 24) = 1;
                  goto LABEL_166;
                }

                v94 = v93;
                v95 = *v92;
                *(this + 1) = v94;
                v62 |= (v95 & 0x7F) << v89;
                if ((v95 & 0x80) == 0)
                {
                  break;
                }

                v89 += 7;
                --v91;
                ++v92;
                v93 = v94 + 1;
                v14 = v90++ > 8;
                if (v14)
                {
                  LODWORD(v62) = 0;
                  goto LABEL_165;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v62) = 0;
              }

LABEL_165:
              v3 = v94;
            }

            else
            {
              v60 = 0;
              v61 = 0;
              v62 = 0;
              v63 = (v59 + v58);
              v64 = v58 + 1;
              while (1)
              {
                v3 = v64;
                *(this + 1) = v64;
                v65 = *v63++;
                v62 |= (v65 & 0x7F) << v60;
                if ((v65 & 0x80) == 0)
                {
                  break;
                }

                v60 += 7;
                ++v64;
                v14 = v61++ > 8;
                if (v14)
                {
                  LODWORD(v62) = 0;
                  break;
                }
              }
            }

LABEL_166:
            *(a1 + 36) = v62;
            goto LABEL_187;
          }

          if (v23 == 6)
          {
            *(a1 + 48) |= 0x10u;
            v32 = *(this + 1);
            v2 = *(this + 2);
            v33 = *this;
            if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
            {
              v117 = 0;
              v118 = 0;
              v36 = 0;
              if (v2 <= v32)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v119 = v3 - v32;
              v120 = (v33 + v32);
              v121 = v32 + 1;
              while (1)
              {
                if (!v119)
                {
                  LODWORD(v36) = 0;
                  *(this + 24) = 1;
                  goto LABEL_182;
                }

                v122 = v121;
                v123 = *v120;
                *(this + 1) = v122;
                v36 |= (v123 & 0x7F) << v117;
                if ((v123 & 0x80) == 0)
                {
                  break;
                }

                v117 += 7;
                --v119;
                ++v120;
                v121 = v122 + 1;
                v14 = v118++ > 8;
                if (v14)
                {
                  LODWORD(v36) = 0;
                  goto LABEL_181;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v36) = 0;
              }

LABEL_181:
              v3 = v122;
            }

            else
            {
              v34 = 0;
              v35 = 0;
              v36 = 0;
              v37 = (v33 + v32);
              v38 = v32 + 1;
              while (1)
              {
                v3 = v38;
                *(this + 1) = v38;
                v39 = *v37++;
                v36 |= (v39 & 0x7F) << v34;
                if ((v39 & 0x80) == 0)
                {
                  break;
                }

                v34 += 7;
                ++v38;
                v14 = v35++ > 8;
                if (v14)
                {
                  LODWORD(v36) = 0;
                  break;
                }
              }
            }

LABEL_182:
            *(a1 + 32) = v36;
            goto LABEL_187;
          }
        }
      }

      else if (v23 > 2)
      {
        if (v23 == 3)
        {
          *(a1 + 48) |= 4u;
          v66 = *(this + 1);
          v2 = *(this + 2);
          v67 = *this;
          if (v66 > 0xFFFFFFFFFFFFFFF5 || v66 + 10 > v2)
          {
            v96 = 0;
            v97 = 0;
            v70 = 0;
            if (v2 <= v66)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v98 = v3 - v66;
            v99 = (v67 + v66);
            v100 = v66 + 1;
            while (1)
            {
              if (!v98)
              {
                LODWORD(v70) = 0;
                *(this + 24) = 1;
                goto LABEL_170;
              }

              v101 = v100;
              v102 = *v99;
              *(this + 1) = v101;
              v70 |= (v102 & 0x7F) << v96;
              if ((v102 & 0x80) == 0)
              {
                break;
              }

              v96 += 7;
              --v98;
              ++v99;
              v100 = v101 + 1;
              v14 = v97++ > 8;
              if (v14)
              {
                LODWORD(v70) = 0;
                goto LABEL_169;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v70) = 0;
            }

LABEL_169:
            v3 = v101;
          }

          else
          {
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v71 = (v67 + v66);
            v72 = v66 + 1;
            while (1)
            {
              v3 = v72;
              *(this + 1) = v72;
              v73 = *v71++;
              v70 |= (v73 & 0x7F) << v68;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              ++v72;
              v14 = v69++ > 8;
              if (v14)
              {
                LODWORD(v70) = 0;
                break;
              }
            }
          }

LABEL_170:
          *(a1 + 24) = v70;
          goto LABEL_187;
        }

        if (v23 == 4)
        {
          *(a1 + 48) |= 0x40u;
          v40 = *(this + 1);
          v2 = *(this + 2);
          v41 = *this;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v124 = 0;
            v125 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v126 = v3 - v40;
            v127 = (v41 + v40);
            v128 = v40 + 1;
            while (1)
            {
              if (!v126)
              {
                LODWORD(v44) = 0;
                *(this + 24) = 1;
                goto LABEL_186;
              }

              v129 = v128;
              v130 = *v127;
              *(this + 1) = v129;
              v44 |= (v130 & 0x7F) << v124;
              if ((v130 & 0x80) == 0)
              {
                break;
              }

              v124 += 7;
              --v126;
              ++v127;
              v128 = v129 + 1;
              v14 = v125++ > 8;
              if (v14)
              {
                LODWORD(v44) = 0;
                goto LABEL_185;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v44) = 0;
            }

LABEL_185:
            v3 = v129;
          }

          else
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = (v41 + v40);
            v46 = v40 + 1;
            while (1)
            {
              v3 = v46;
              *(this + 1) = v46;
              v47 = *v45++;
              v44 |= (v47 & 0x7F) << v42;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              ++v46;
              v14 = v43++ > 8;
              if (v14)
              {
                LODWORD(v44) = 0;
                break;
              }
            }
          }

LABEL_186:
          *(a1 + 40) = v44;
          goto LABEL_187;
        }
      }

      else
      {
        if (v23 == 1)
        {
          *(a1 + 48) |= 2u;
          v50 = *(this + 1);
          v2 = *(this + 2);
          v51 = *this;
          if (v50 > 0xFFFFFFFFFFFFFFF5 || v50 + 10 > v2)
          {
            v82 = 0;
            v83 = 0;
            v54 = 0;
            if (v2 <= v50)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v84 = v3 - v50;
            v85 = (v51 + v50);
            v86 = v50 + 1;
            while (1)
            {
              if (!v84)
              {
                v54 = 0;
                *(this + 24) = 1;
                goto LABEL_162;
              }

              v87 = v86;
              v88 = *v85;
              *(this + 1) = v87;
              v54 |= (v88 & 0x7F) << v82;
              if ((v88 & 0x80) == 0)
              {
                break;
              }

              v82 += 7;
              --v84;
              ++v85;
              v86 = v87 + 1;
              v14 = v83++ > 8;
              if (v14)
              {
                v54 = 0;
                goto LABEL_161;
              }
            }

            if (*(this + 24))
            {
              v54 = 0;
            }

LABEL_161:
            v3 = v87;
          }

          else
          {
            v52 = 0;
            v53 = 0;
            v54 = 0;
            v55 = (v51 + v50);
            v56 = v50 + 1;
            while (1)
            {
              v3 = v56;
              *(this + 1) = v56;
              v57 = *v55++;
              v54 |= (v57 & 0x7F) << v52;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              ++v56;
              v14 = v53++ > 8;
              if (v14)
              {
                v54 = 0;
                break;
              }
            }
          }

LABEL_162:
          *(a1 + 16) = v54;
          goto LABEL_187;
        }

        if (v23 == 2)
        {
          *(a1 + 48) |= 1u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v110 = 0;
            v111 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v112 = v3 - v24;
            v113 = (v25 + v24);
            v114 = v24 + 1;
            while (1)
            {
              if (!v112)
              {
                v28 = 0;
                *(this + 24) = 1;
                goto LABEL_178;
              }

              v115 = v114;
              v116 = *v113;
              *(this + 1) = v115;
              v28 |= (v116 & 0x7F) << v110;
              if ((v116 & 0x80) == 0)
              {
                break;
              }

              v110 += 7;
              --v112;
              ++v113;
              v114 = v115 + 1;
              v14 = v111++ > 8;
              if (v14)
              {
                v28 = 0;
                goto LABEL_177;
              }
            }

            if (*(this + 24))
            {
              v28 = 0;
            }

LABEL_177:
            v3 = v115;
          }

          else
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            while (1)
            {
              v3 = v30;
              *(this + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
              if (v14)
              {
                v28 = 0;
                break;
              }
            }
          }

LABEL_178:
          *(a1 + 8) = v28;
          goto LABEL_187;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v131 = 0;
        return v131 & 1;
      }

      v3 = *(this + 1);
      v2 = *(this + 2);
LABEL_187:
      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_191:
  v131 = v4 ^ 1;
  return v131 & 1;
}

uint64_t sub_245D96940(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 48);
  if ((v4 & 2) != 0)
  {
    v5 = *(result + 16);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 48);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(result + 48) & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 48);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v7 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 48);
  if ((v4 & 0x40) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v8 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 48);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = *(v3 + 36);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 48);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v11 = *(v3 + 28);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 48) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  v10 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 48);
  if ((v4 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 0x80) == 0)
  {
    return result;
  }

LABEL_17:
  v12 = *(v3 + 44);

  return PB::Writer::write(this);
}

void sub_245D96A5C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245D96A94(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CCBD0;
  *(a1 + 216) = 0;
  v2 = *(a2 + 216);
  if ((v2 & 0x80000000) != 0)
  {
    v4 = *(a2 + 144);
    v3 = 0x80000000;
    *(a1 + 216) = 0x80000000;
    *(a1 + 144) = v4;
    v2 = *(a2 + 216);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (v2)
  {
LABEL_5:
    v5 = *(a2 + 8);
    v3 |= 1uLL;
    *(a1 + 216) = v3;
    *(a1 + 8) = v5;
    v2 = *(a2 + 216);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 16);
    v3 |= 2uLL;
    *(a1 + 216) = v3;
    *(a1 + 16) = v6;
    v2 = *(a2 + 216);
    if ((v2 & 0x20000) == 0)
    {
LABEL_8:
      if ((v2 & 0x8000000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_56;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 88);
  v3 |= 0x20000uLL;
  *(a1 + 216) = v3;
  *(a1 + 88) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x8000000000) == 0)
  {
LABEL_9:
    if ((v2 & 0x4000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = *(a2 + 176);
  v3 |= 0x8000000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 176) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x4000000000) == 0)
  {
LABEL_10:
    if ((v2 & 0x80000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = *(a2 + 172);
  v3 |= 0x4000000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 172) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x80000000000) == 0)
  {
LABEL_11:
    if ((v2 & 0x40000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = *(a2 + 192);
  v3 |= 0x80000000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 192) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x40000000000) == 0)
  {
LABEL_12:
    if ((v2 & 0x800000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = *(a2 + 188);
  v3 |= 0x40000000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 188) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x800000000000) == 0)
  {
LABEL_13:
    if ((v2 & 0x400000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = *(a2 + 208);
  v3 |= 0x800000000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 208) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x400000000000) == 0)
  {
LABEL_14:
    if ((v2 & 0x10000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = *(a2 + 204);
  v3 |= 0x400000000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 204) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x10000000000) == 0)
  {
LABEL_15:
    if ((v2 & 0x100000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = *(a2 + 180);
  v3 |= 0x10000000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 180) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x100000000000) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = *(a2 + 196);
  v3 |= 0x100000000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 196) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x1000000000000) == 0)
  {
LABEL_17:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = *(a2 + 212);
  v3 |= 0x1000000000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 212) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x10000) == 0)
  {
LABEL_18:
    if ((v2 & 0x2000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = *(a2 + 84);
  v3 |= 0x10000uLL;
  *(a1 + 216) = v3;
  *(a1 + 84) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x2000000000) == 0)
  {
LABEL_19:
    if ((v2 & 0x20000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = *(a2 + 168);
  v3 |= 0x2000000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 168) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x20000000000) == 0)
  {
LABEL_20:
    if ((v2 & 0x200000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = *(a2 + 184);
  v3 |= 0x20000000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 184) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x200000000000) == 0)
  {
LABEL_21:
    if ((v2 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = *(a2 + 200);
  v3 |= 0x200000000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 200) = result;
  v2 = *(a2 + 216);
  if ((v2 & 4) == 0)
  {
LABEL_22:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_70;
  }

LABEL_69:
  v8 = *(a2 + 24);
  v3 |= 4uLL;
  *(a1 + 216) = v3;
  *(a1 + 24) = v8;
  v2 = *(a2 + 216);
  if ((v2 & 0x10) == 0)
  {
LABEL_23:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_71;
  }

LABEL_70:
  result = *(a2 + 36);
  v3 |= 0x10uLL;
  *(a1 + 216) = v3;
  *(a1 + 36) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x800000) == 0)
  {
LABEL_24:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_72;
  }

LABEL_71:
  result = *(a2 + 112);
  v3 |= 0x800000uLL;
  *(a1 + 216) = v3;
  *(a1 + 112) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x80) == 0)
  {
LABEL_25:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_73;
  }

LABEL_72:
  result = *(a2 + 48);
  v3 |= 0x80uLL;
  *(a1 + 216) = v3;
  *(a1 + 48) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x40) == 0)
  {
LABEL_26:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_74;
  }

LABEL_73:
  result = *(a2 + 44);
  v3 |= 0x40uLL;
  *(a1 + 216) = v3;
  *(a1 + 44) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x100000) == 0)
  {
LABEL_27:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_75;
  }

LABEL_74:
  result = *(a2 + 100);
  v3 |= 0x100000uLL;
  *(a1 + 216) = v3;
  *(a1 + 100) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x80000) == 0)
  {
LABEL_28:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_76;
  }

LABEL_75:
  result = *(a2 + 96);
  v3 |= 0x80000uLL;
  *(a1 + 216) = v3;
  *(a1 + 96) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_29:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_77;
  }

LABEL_76:
  result = *(a2 + 140);
  v3 |= 0x40000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 140) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x1000) == 0)
  {
LABEL_30:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_78;
  }

LABEL_77:
  v9 = *(a2 + 68);
  v3 |= 0x1000uLL;
  *(a1 + 216) = v3;
  *(a1 + 68) = v9;
  v2 = *(a2 + 216);
  if ((v2 & 0x4000) == 0)
  {
LABEL_31:
    if ((v2 & 0x100000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_79;
  }

LABEL_78:
  v10 = *(a2 + 76);
  v3 |= 0x4000uLL;
  *(a1 + 216) = v3;
  *(a1 + 76) = v10;
  v2 = *(a2 + 216);
  if ((v2 & 0x100000000) == 0)
  {
LABEL_32:
    if ((v2 & 0x1000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_80;
  }

LABEL_79:
  v11 = *(a2 + 148);
  v3 |= 0x100000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 148) = v11;
  v2 = *(a2 + 216);
  if ((v2 & 0x1000000000) == 0)
  {
LABEL_33:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_81;
  }

LABEL_80:
  v12 = *(a2 + 164);
  v3 |= 0x1000000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 164) = v12;
  v2 = *(a2 + 216);
  if ((v2 & 0x100) == 0)
  {
LABEL_34:
    if ((v2 & 0x200000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_82;
  }

LABEL_81:
  v13 = *(a2 + 52);
  v3 |= 0x100uLL;
  *(a1 + 216) = v3;
  *(a1 + 52) = v13;
  v2 = *(a2 + 216);
  if ((v2 & 0x200000000) == 0)
  {
LABEL_35:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_83;
  }

LABEL_82:
  result = *(a2 + 152);
  v3 |= 0x200000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 152) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x800) == 0)
  {
LABEL_36:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_84;
  }

LABEL_83:
  result = *(a2 + 64);
  v3 |= 0x800uLL;
  *(a1 + 216) = v3;
  *(a1 + 64) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x400) == 0)
  {
LABEL_37:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_85;
  }

LABEL_84:
  result = *(a2 + 60);
  v3 |= 0x400uLL;
  *(a1 + 216) = v3;
  *(a1 + 60) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x200000) == 0)
  {
LABEL_38:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_86;
  }

LABEL_85:
  result = *(a2 + 104);
  v3 |= 0x200000uLL;
  *(a1 + 216) = v3;
  *(a1 + 104) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x40000) == 0)
  {
LABEL_39:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_87;
  }

LABEL_86:
  result = *(a2 + 92);
  v3 |= 0x40000uLL;
  *(a1 + 216) = v3;
  *(a1 + 92) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_40:
    if ((v2 & 0x800000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_88;
  }

LABEL_87:
  result = *(a2 + 136);
  v3 |= 0x20000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 136) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x800000000) == 0)
  {
LABEL_41:
    if ((v2 & 0x400000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_89;
  }

LABEL_88:
  result = *(a2 + 160);
  v3 |= 0x800000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 160) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x400000000) == 0)
  {
LABEL_42:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_90;
  }

LABEL_89:
  result = *(a2 + 156);
  v3 |= 0x400000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 156) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x8000) == 0)
  {
LABEL_43:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_91;
  }

LABEL_90:
  v14 = *(a2 + 80);
  v3 |= 0x8000uLL;
  *(a1 + 216) = v3;
  *(a1 + 80) = v14;
  v2 = *(a2 + 216);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_44:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_92;
  }

LABEL_91:
  result = *(a2 + 132);
  v3 |= 0x10000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 132) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_45:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_93;
  }

LABEL_92:
  result = *(a2 + 124);
  v3 |= 0x4000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 124) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_46:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_94;
  }

LABEL_93:
  result = *(a2 + 128);
  v3 |= 0x8000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 128) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x20) == 0)
  {
LABEL_47:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_95;
  }

LABEL_94:
  result = *(a2 + 40);
  v3 |= 0x20uLL;
  *(a1 + 216) = v3;
  *(a1 + 40) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_48:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_96;
  }

LABEL_95:
  result = *(a2 + 116);
  v3 |= 0x1000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 116) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_49:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_97;
  }

LABEL_96:
  v15 = *(a2 + 120);
  v3 |= 0x2000000uLL;
  *(a1 + 216) = v3;
  *(a1 + 120) = v15;
  v2 = *(a2 + 216);
  if ((v2 & 0x2000) == 0)
  {
LABEL_50:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_98;
  }

LABEL_97:
  result = *(a2 + 72);
  v3 |= 0x2000uLL;
  *(a1 + 216) = v3;
  *(a1 + 72) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x200) == 0)
  {
LABEL_51:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_99;
  }

LABEL_98:
  result = *(a2 + 56);
  v3 |= 0x200uLL;
  *(a1 + 216) = v3;
  *(a1 + 56) = result;
  v2 = *(a2 + 216);
  if ((v2 & 0x400000) == 0)
  {
LABEL_52:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_100:
    result = *(a2 + 32);
    *(a1 + 216) = v3 | 8;
    *(a1 + 32) = result;
    return result;
  }

LABEL_99:
  result = *(a2 + 108);
  v3 |= 0x400000uLL;
  *(a1 + 216) = v3;
  *(a1 + 108) = result;
  if ((*(a2 + 216) & 8) != 0)
  {
    goto LABEL_100;
  }

  return result;
}

uint64_t sub_245D97018(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 216);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(this, "abruptGravityChangeAngle", *(a1 + 32));
    v5 = *(a1 + 216);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_56;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "accelPathLength", *(a1 + 36));
  v5 = *(a1 + 216);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "accelPathLengthWithPeak", *(a1 + 40));
  v5 = *(a1 + 216);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "angleChangePostImpact", *(a1 + 44));
  v5 = *(a1 + 216);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "angleChangePreImpact", *(a1 + 48));
  v5 = *(a1 + 216);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_60;
  }

LABEL_59:
  v6 = *(a1 + 8);
  PB::TextFormatter::format(this, "aopTsNow");
  v5 = *(a1 + 216);
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_60:
  v7 = *(a1 + 16);
  PB::TextFormatter::format(this, "aopTsSensor");
  v5 = *(a1 + 216);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

LABEL_61:
  v8 = *(a1 + 52);
  PB::TextFormatter::format(this, "crown");
  v5 = *(a1 + 216);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "crownVariance", *(a1 + 56));
  v5 = *(a1 + 216);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(this, "extrapolatedMaxAccelNorm", *(a1 + 60));
  v5 = *(a1 + 216);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(this, "extrapolatedMaxMinusMin", *(a1 + 64));
  v5 = *(a1 + 216);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_66;
  }

LABEL_65:
  v9 = *(a1 + 68);
  PB::TextFormatter::format(this, "fallType");
  v5 = *(a1 + 216);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(this, "gravityVariance", *(a1 + 72));
  v5 = *(a1 + 216);
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_68;
  }

LABEL_67:
  v10 = *(a1 + 76);
  PB::TextFormatter::format(this, "isFall");
  v5 = *(a1 + 216);
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_69;
  }

LABEL_68:
  v11 = *(a1 + 80);
  PB::TextFormatter::format(this, "isNearFall");
  v5 = *(a1 + 216);
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(this, "jerkVectorMagMax", *(a1 + 84));
  v5 = *(a1 + 216);
  if ((v5 & 0x20000) == 0)
  {
LABEL_18:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(this, "magMax", *(a1 + 88));
  v5 = *(a1 + 216);
  if ((v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(this, "maxAccelNorm", *(a1 + 92));
  v5 = *(a1 + 216);
  if ((v5 & 0x80000) == 0)
  {
LABEL_20:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(this, "maxAngleChangePostImpact", *(a1 + 96));
  v5 = *(a1 + 216);
  if ((v5 & 0x100000) == 0)
  {
LABEL_21:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(this, "maxAngleChangePreImpact", *(a1 + 100));
  v5 = *(a1 + 216);
  if ((v5 & 0x200000) == 0)
  {
LABEL_22:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(this, "maxMinusMin", *(a1 + 104));
  v5 = *(a1 + 216);
  if ((v5 & 0x400000) == 0)
  {
LABEL_23:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_76;
  }

LABEL_75:
  PB::TextFormatter::format(this, "medianAbsGravityY", *(a1 + 108));
  v5 = *(a1 + 216);
  if ((v5 & 0x800000) == 0)
  {
LABEL_24:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_77;
  }

LABEL_76:
  PB::TextFormatter::format(this, "minInertialZ", *(a1 + 112));
  v5 = *(a1 + 216);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_78;
  }

LABEL_77:
  PB::TextFormatter::format(this, "minInertialZHighFreq", *(a1 + 116));
  v5 = *(a1 + 216);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_79;
  }

LABEL_78:
  v12 = *(a1 + 120);
  PB::TextFormatter::format(this, "operatingMode");
  v5 = *(a1 + 216);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_80;
  }

LABEL_79:
  PB::TextFormatter::format(this, "pathLengthDecorrelation", *(a1 + 124));
  v5 = *(a1 + 216);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_81;
  }

LABEL_80:
  PB::TextFormatter::format(this, "pathLengthDelaySpread", *(a1 + 128));
  v5 = *(a1 + 216);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_29:
    if ((v5 & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_82;
  }

LABEL_81:
  PB::TextFormatter::format(this, "pathLengthHarmonicMean", *(a1 + 132));
  v5 = *(a1 + 216);
  if ((v5 & 4) == 0)
  {
LABEL_30:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_83;
  }

LABEL_82:
  v13 = *(a1 + 24);
  PB::TextFormatter::format(this, "peakTimestamp");
  v5 = *(a1 + 216);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_84;
  }

LABEL_83:
  PB::TextFormatter::format(this, "poseAtImpact", *(a1 + 136));
  v5 = *(a1 + 216);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_85;
  }

LABEL_84:
  PB::TextFormatter::format(this, "posteriorRatio", *(a1 + 140));
  v5 = *(a1 + 216);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_86;
  }

LABEL_85:
  v14 = *(a1 + 144);
  PB::TextFormatter::format(this, "seq");
  v5 = *(a1 + 216);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_87;
  }

LABEL_86:
  v15 = *(a1 + 148);
  PB::TextFormatter::format(this, "simulated");
  v5 = *(a1 + 216);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_88;
  }

LABEL_87:
  PB::TextFormatter::format(this, "sumDeltaAngles", *(a1 + 152));
  v5 = *(a1 + 216);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_89;
  }

LABEL_88:
  PB::TextFormatter::format(this, "swingAngle", *(a1 + 156));
  v5 = *(a1 + 216);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_37:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_90;
  }

LABEL_89:
  PB::TextFormatter::format(this, "tiltAngle", *(a1 + 160));
  v5 = *(a1 + 216);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_38:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_91;
  }

LABEL_90:
  v16 = *(a1 + 164);
  PB::TextFormatter::format(this, "trialCount");
  v5 = *(a1 + 216);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_39:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_92;
  }

LABEL_91:
  PB::TextFormatter::format(this, "xJerkScalarMagMax", *(a1 + 168));
  v5 = *(a1 + 216);
  if ((v5 & 0x4000000000) == 0)
  {
LABEL_40:
    if ((v5 & 0x8000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_93;
  }

LABEL_92:
  PB::TextFormatter::format(this, "xMax", *(a1 + 172));
  v5 = *(a1 + 216);
  if ((v5 & 0x8000000000) == 0)
  {
LABEL_41:
    if ((v5 & 0x10000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_94;
  }

LABEL_93:
  PB::TextFormatter::format(this, "xMin", *(a1 + 176));
  v5 = *(a1 + 216);
  if ((v5 & 0x10000000000) == 0)
  {
LABEL_42:
    if ((v5 & 0x20000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_95;
  }

LABEL_94:
  PB::TextFormatter::format(this, "xZCTime", *(a1 + 180));
  v5 = *(a1 + 216);
  if ((v5 & 0x20000000000) == 0)
  {
LABEL_43:
    if ((v5 & 0x40000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_96;
  }

LABEL_95:
  PB::TextFormatter::format(this, "yJerkScalarMagMax", *(a1 + 184));
  v5 = *(a1 + 216);
  if ((v5 & 0x40000000000) == 0)
  {
LABEL_44:
    if ((v5 & 0x80000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_97;
  }

LABEL_96:
  PB::TextFormatter::format(this, "yMax", *(a1 + 188));
  v5 = *(a1 + 216);
  if ((v5 & 0x80000000000) == 0)
  {
LABEL_45:
    if ((v5 & 0x100000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_98;
  }

LABEL_97:
  PB::TextFormatter::format(this, "yMin", *(a1 + 192));
  v5 = *(a1 + 216);
  if ((v5 & 0x100000000000) == 0)
  {
LABEL_46:
    if ((v5 & 0x200000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_99;
  }

LABEL_98:
  PB::TextFormatter::format(this, "yZCTime", *(a1 + 196));
  v5 = *(a1 + 216);
  if ((v5 & 0x200000000000) == 0)
  {
LABEL_47:
    if ((v5 & 0x400000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_100;
  }

LABEL_99:
  PB::TextFormatter::format(this, "zJerkScalarMagMax", *(a1 + 200));
  v5 = *(a1 + 216);
  if ((v5 & 0x400000000000) == 0)
  {
LABEL_48:
    if ((v5 & 0x800000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_101;
  }

LABEL_100:
  PB::TextFormatter::format(this, "zMax", *(a1 + 204));
  v5 = *(a1 + 216);
  if ((v5 & 0x800000000000) == 0)
  {
LABEL_49:
    if ((v5 & 0x1000000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_101:
  PB::TextFormatter::format(this, "zMin", *(a1 + 208));
  if ((*(a1 + 216) & 0x1000000000000) != 0)
  {
LABEL_50:
    PB::TextFormatter::format(this, "zZCTime", *(a1 + 212));
  }

LABEL_51:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D9767C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_354;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 216) |= 0x80000000uLL;
          v23 = *(this + 1);
          v22 = *(this + 2);
          v24 = *this;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
          {
            v183 = 0;
            v184 = 0;
            v27 = 0;
            v17 = v22 >= v23;
            v185 = v22 - v23;
            if (!v17)
            {
              v185 = 0;
            }

            v186 = (v24 + v23);
            v187 = v23 + 1;
            do
            {
              if (!v185)
              {
                LODWORD(v27) = 0;
                *(this + 24) = 1;
                goto LABEL_334;
              }

              v188 = *v186;
              *(this + 1) = v187;
              v27 |= (v188 & 0x7F) << v183;
              if ((v188 & 0x80) == 0)
              {
                if (*(this + 24))
                {
                  LODWORD(v27) = 0;
                }

                goto LABEL_334;
              }

              v183 += 7;
              --v185;
              ++v186;
              ++v187;
              v14 = v184++ > 8;
            }

            while (!v14);
LABEL_255:
            LODWORD(v27) = 0;
          }

          else
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            while (1)
            {
              *(this + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
              if (v14)
              {
                goto LABEL_255;
              }
            }
          }

LABEL_334:
          *(a1 + 144) = v27;
          goto LABEL_306;
        case 2u:
          *(a1 + 216) |= 1uLL;
          v87 = *(this + 1);
          v86 = *(this + 2);
          v88 = *this;
          if (v87 <= 0xFFFFFFFFFFFFFFF5 && v87 + 10 <= v86)
          {
            v89 = 0;
            v90 = 0;
            v91 = 0;
            v92 = (v88 + v87);
            v93 = v87 + 1;
            do
            {
              *(this + 1) = v93;
              v94 = *v92++;
              v91 |= (v94 & 0x7F) << v89;
              if ((v94 & 0x80) == 0)
              {
                goto LABEL_337;
              }

              v89 += 7;
              ++v93;
              v14 = v90++ > 8;
            }

            while (!v14);
LABEL_263:
            v91 = 0;
            goto LABEL_337;
          }

          v189 = 0;
          v190 = 0;
          v91 = 0;
          v17 = v86 >= v87;
          v191 = v86 - v87;
          if (!v17)
          {
            v191 = 0;
          }

          v192 = (v88 + v87);
          v193 = v87 + 1;
          while (2)
          {
            if (v191)
            {
              v194 = *v192;
              *(this + 1) = v193;
              v91 |= (v194 & 0x7F) << v189;
              if (v194 < 0)
              {
                v189 += 7;
                --v191;
                ++v192;
                ++v193;
                v14 = v190++ > 8;
                if (v14)
                {
                  goto LABEL_263;
                }

                continue;
              }

              if (*(this + 24))
              {
                v91 = 0;
              }
            }

            else
            {
              v91 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_337:
          *(a1 + 8) = v91;
          goto LABEL_306;
        case 3u:
          *(a1 + 216) |= 2uLL;
          v75 = *(this + 1);
          v74 = *(this + 2);
          v76 = *this;
          if (v75 <= 0xFFFFFFFFFFFFFFF5 && v75 + 10 <= v74)
          {
            v77 = 0;
            v78 = 0;
            v79 = 0;
            v80 = (v76 + v75);
            v81 = v75 + 1;
            do
            {
              *(this + 1) = v81;
              v82 = *v80++;
              v79 |= (v82 & 0x7F) << v77;
              if ((v82 & 0x80) == 0)
              {
                goto LABEL_331;
              }

              v77 += 7;
              ++v81;
              v14 = v78++ > 8;
            }

            while (!v14);
LABEL_247:
            v79 = 0;
            goto LABEL_331;
          }

          v177 = 0;
          v178 = 0;
          v79 = 0;
          v17 = v74 >= v75;
          v179 = v74 - v75;
          if (!v17)
          {
            v179 = 0;
          }

          v180 = (v76 + v75);
          v181 = v75 + 1;
          while (2)
          {
            if (v179)
            {
              v182 = *v180;
              *(this + 1) = v181;
              v79 |= (v182 & 0x7F) << v177;
              if (v182 < 0)
              {
                v177 += 7;
                --v179;
                ++v180;
                ++v181;
                v14 = v178++ > 8;
                if (v14)
                {
                  goto LABEL_247;
                }

                continue;
              }

              if (*(this + 24))
              {
                v79 = 0;
              }
            }

            else
            {
              v79 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_331:
          *(a1 + 16) = v79;
          goto LABEL_306;
        case 4u:
          *(a1 + 216) |= 0x20000uLL;
          v84 = *(this + 1);
          if (v84 > 0xFFFFFFFFFFFFFFFBLL || v84 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 88) = *(*this + v84);
          goto LABEL_305;
        case 5u:
          *(a1 + 216) |= 0x8000000000uLL;
          v60 = *(this + 1);
          if (v60 > 0xFFFFFFFFFFFFFFFBLL || v60 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 176) = *(*this + v60);
          goto LABEL_305;
        case 6u:
          *(a1 + 216) |= 0x4000000000uLL;
          v107 = *(this + 1);
          if (v107 > 0xFFFFFFFFFFFFFFFBLL || v107 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 172) = *(*this + v107);
          goto LABEL_305;
        case 7u:
          *(a1 + 216) |= 0x80000000000uLL;
          v110 = *(this + 1);
          if (v110 > 0xFFFFFFFFFFFFFFFBLL || v110 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 192) = *(*this + v110);
          goto LABEL_305;
        case 8u:
          *(a1 + 216) |= 0x40000000000uLL;
          v85 = *(this + 1);
          if (v85 > 0xFFFFFFFFFFFFFFFBLL || v85 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 188) = *(*this + v85);
          goto LABEL_305;
        case 9u:
          *(a1 + 216) |= 0x800000000000uLL;
          v113 = *(this + 1);
          if (v113 > 0xFFFFFFFFFFFFFFFBLL || v113 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 208) = *(*this + v113);
          goto LABEL_305;
        case 0xAu:
          *(a1 + 216) |= 0x400000000000uLL;
          v63 = *(this + 1);
          if (v63 > 0xFFFFFFFFFFFFFFFBLL || v63 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 204) = *(*this + v63);
          goto LABEL_305;
        case 0xBu:
          *(a1 + 216) |= 0x10000000000uLL;
          v112 = *(this + 1);
          if (v112 > 0xFFFFFFFFFFFFFFFBLL || v112 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 180) = *(*this + v112);
          goto LABEL_305;
        case 0xCu:
          *(a1 + 216) |= 0x100000000000uLL;
          v59 = *(this + 1);
          if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 196) = *(*this + v59);
          goto LABEL_305;
        case 0xDu:
          *(a1 + 216) |= 0x1000000000000uLL;
          v62 = *(this + 1);
          if (v62 > 0xFFFFFFFFFFFFFFFBLL || v62 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 212) = *(*this + v62);
          goto LABEL_305;
        case 0xEu:
          *(a1 + 216) |= 0x10000uLL;
          v109 = *(this + 1);
          if (v109 > 0xFFFFFFFFFFFFFFFBLL || v109 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 84) = *(*this + v109);
          goto LABEL_305;
        case 0xFu:
          *(a1 + 216) |= 0x2000000000uLL;
          v56 = *(this + 1);
          if (v56 > 0xFFFFFFFFFFFFFFFBLL || v56 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 168) = *(*this + v56);
          goto LABEL_305;
        case 0x10u:
          *(a1 + 216) |= 0x20000000000uLL;
          v83 = *(this + 1);
          if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 184) = *(*this + v83);
          goto LABEL_305;
        case 0x11u:
          *(a1 + 216) |= 0x200000000000uLL;
          v46 = *(this + 1);
          if (v46 > 0xFFFFFFFFFFFFFFFBLL || v46 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 200) = *(*this + v46);
          goto LABEL_305;
        case 0x12u:
          *(a1 + 216) |= 4uLL;
          v97 = *(this + 1);
          v96 = *(this + 2);
          v98 = *this;
          if (v97 <= 0xFFFFFFFFFFFFFFF5 && v97 + 10 <= v96)
          {
            v99 = 0;
            v100 = 0;
            v101 = 0;
            v102 = (v98 + v97);
            v103 = v97 + 1;
            do
            {
              *(this + 1) = v103;
              v104 = *v102++;
              v101 |= (v104 & 0x7F) << v99;
              if ((v104 & 0x80) == 0)
              {
                goto LABEL_340;
              }

              v99 += 7;
              ++v103;
              v14 = v100++ > 8;
            }

            while (!v14);
LABEL_271:
            v101 = 0;
            goto LABEL_340;
          }

          v195 = 0;
          v196 = 0;
          v101 = 0;
          v17 = v96 >= v97;
          v197 = v96 - v97;
          if (!v17)
          {
            v197 = 0;
          }

          v198 = (v98 + v97);
          v199 = v97 + 1;
          while (2)
          {
            if (v197)
            {
              v200 = *v198;
              *(this + 1) = v199;
              v101 |= (v200 & 0x7F) << v195;
              if (v200 < 0)
              {
                v195 += 7;
                --v197;
                ++v198;
                ++v199;
                v14 = v196++ > 8;
                if (v14)
                {
                  goto LABEL_271;
                }

                continue;
              }

              if (*(this + 24))
              {
                v101 = 0;
              }
            }

            else
            {
              v101 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_340:
          *(a1 + 24) = v101;
          goto LABEL_306;
        case 0x13u:
          *(a1 + 216) |= 0x10uLL;
          v111 = *(this + 1);
          if (v111 > 0xFFFFFFFFFFFFFFFBLL || v111 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 36) = *(*this + v111);
          goto LABEL_305;
        case 0x14u:
          *(a1 + 216) |= 0x800000uLL;
          v119 = *(this + 1);
          if (v119 > 0xFFFFFFFFFFFFFFFBLL || v119 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 112) = *(*this + v119);
          goto LABEL_305;
        case 0x15u:
          *(a1 + 216) |= 0x80uLL;
          v106 = *(this + 1);
          if (v106 > 0xFFFFFFFFFFFFFFFBLL || v106 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 48) = *(*this + v106);
          goto LABEL_305;
        case 0x16u:
          *(a1 + 216) |= 0x40uLL;
          v108 = *(this + 1);
          if (v108 > 0xFFFFFFFFFFFFFFFBLL || v108 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 44) = *(*this + v108);
          goto LABEL_305;
        case 0x17u:
          *(a1 + 216) |= 0x100000uLL;
          v117 = *(this + 1);
          if (v117 > 0xFFFFFFFFFFFFFFFBLL || v117 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 100) = *(*this + v117);
          goto LABEL_305;
        case 0x18u:
          *(a1 + 216) |= 0x80000uLL;
          v121 = *(this + 1);
          if (v121 > 0xFFFFFFFFFFFFFFFBLL || v121 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 96) = *(*this + v121);
          goto LABEL_305;
        case 0x19u:
          *(a1 + 216) |= 0x40000000uLL;
          v73 = *(this + 1);
          if (v73 > 0xFFFFFFFFFFFFFFFBLL || v73 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 140) = *(*this + v73);
          goto LABEL_305;
        case 0x1Au:
          *(a1 + 216) |= 0x1000uLL;
          v65 = *(this + 1);
          v64 = *(this + 2);
          v66 = *this;
          if (v65 <= 0xFFFFFFFFFFFFFFF5 && v65 + 10 <= v64)
          {
            v67 = 0;
            v68 = 0;
            v69 = 0;
            v70 = (v66 + v65);
            v71 = v65 + 1;
            do
            {
              *(this + 1) = v71;
              v72 = *v70++;
              v69 |= (v72 & 0x7F) << v67;
              if ((v72 & 0x80) == 0)
              {
                goto LABEL_328;
              }

              v67 += 7;
              ++v71;
              v14 = v68++ > 8;
            }

            while (!v14);
LABEL_239:
            LODWORD(v69) = 0;
            goto LABEL_328;
          }

          v171 = 0;
          v172 = 0;
          v69 = 0;
          v17 = v64 >= v65;
          v173 = v64 - v65;
          if (!v17)
          {
            v173 = 0;
          }

          v174 = (v66 + v65);
          v175 = v65 + 1;
          while (2)
          {
            if (v173)
            {
              v176 = *v174;
              *(this + 1) = v175;
              v69 |= (v176 & 0x7F) << v171;
              if (v176 < 0)
              {
                v171 += 7;
                --v173;
                ++v174;
                ++v175;
                v14 = v172++ > 8;
                if (v14)
                {
                  goto LABEL_239;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v69) = 0;
              }
            }

            else
            {
              LODWORD(v69) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_328:
          *(a1 + 68) = v69;
          goto LABEL_306;
        case 0x1Bu:
          *(a1 + 216) |= 0x4000uLL;
          v150 = *(this + 1);
          v149 = *(this + 2);
          v151 = *this;
          if (v150 <= 0xFFFFFFFFFFFFFFF5 && v150 + 10 <= v149)
          {
            v152 = 0;
            v153 = 0;
            v154 = 0;
            v155 = (v151 + v150);
            v156 = v150 + 1;
            do
            {
              *(this + 1) = v156;
              v157 = *v155++;
              v154 |= (v157 & 0x7F) << v152;
              if ((v157 & 0x80) == 0)
              {
                goto LABEL_352;
              }

              v152 += 7;
              ++v156;
              v14 = v153++ > 8;
            }

            while (!v14);
LABEL_303:
            LODWORD(v154) = 0;
            goto LABEL_352;
          }

          v219 = 0;
          v220 = 0;
          v154 = 0;
          v17 = v149 >= v150;
          v221 = v149 - v150;
          if (!v17)
          {
            v221 = 0;
          }

          v222 = (v151 + v150);
          v223 = v150 + 1;
          while (2)
          {
            if (v221)
            {
              v224 = *v222;
              *(this + 1) = v223;
              v154 |= (v224 & 0x7F) << v219;
              if (v224 < 0)
              {
                v219 += 7;
                --v221;
                ++v222;
                ++v223;
                v14 = v220++ > 8;
                if (v14)
                {
                  goto LABEL_303;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v154) = 0;
              }
            }

            else
            {
              LODWORD(v154) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_352:
          *(a1 + 76) = v154;
          goto LABEL_306;
        case 0x1Cu:
          *(a1 + 216) |= 0x100000000uLL;
          v37 = *(this + 1);
          v36 = *(this + 2);
          v38 = *this;
          if (v37 <= 0xFFFFFFFFFFFFFFF5 && v37 + 10 <= v36)
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = (v38 + v37);
            v43 = v37 + 1;
            do
            {
              *(this + 1) = v43;
              v44 = *v42++;
              v41 |= (v44 & 0x7F) << v39;
              if ((v44 & 0x80) == 0)
              {
                goto LABEL_322;
              }

              v39 += 7;
              ++v43;
              v14 = v40++ > 8;
            }

            while (!v14);
LABEL_223:
            LODWORD(v41) = 0;
            goto LABEL_322;
          }

          v159 = 0;
          v160 = 0;
          v41 = 0;
          v17 = v36 >= v37;
          v161 = v36 - v37;
          if (!v17)
          {
            v161 = 0;
          }

          v162 = (v38 + v37);
          v163 = v37 + 1;
          while (2)
          {
            if (v161)
            {
              v164 = *v162;
              *(this + 1) = v163;
              v41 |= (v164 & 0x7F) << v159;
              if (v164 < 0)
              {
                v159 += 7;
                --v161;
                ++v162;
                ++v163;
                v14 = v160++ > 8;
                if (v14)
                {
                  goto LABEL_223;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v41) = 0;
              }
            }

            else
            {
              LODWORD(v41) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_322:
          *(a1 + 148) = v41;
          goto LABEL_306;
        case 0x1Du:
          *(a1 + 216) |= 0x1000000000uLL;
          v123 = *(this + 1);
          v122 = *(this + 2);
          v124 = *this;
          if (v123 <= 0xFFFFFFFFFFFFFFF5 && v123 + 10 <= v122)
          {
            v125 = 0;
            v126 = 0;
            v127 = 0;
            v128 = (v124 + v123);
            v129 = v123 + 1;
            do
            {
              *(this + 1) = v129;
              v130 = *v128++;
              v127 |= (v130 & 0x7F) << v125;
              if ((v130 & 0x80) == 0)
              {
                goto LABEL_343;
              }

              v125 += 7;
              ++v129;
              v14 = v126++ > 8;
            }

            while (!v14);
LABEL_279:
            LODWORD(v127) = 0;
            goto LABEL_343;
          }

          v201 = 0;
          v202 = 0;
          v127 = 0;
          v17 = v122 >= v123;
          v203 = v122 - v123;
          if (!v17)
          {
            v203 = 0;
          }

          v204 = (v124 + v123);
          v205 = v123 + 1;
          while (2)
          {
            if (v203)
            {
              v206 = *v204;
              *(this + 1) = v205;
              v127 |= (v206 & 0x7F) << v201;
              if (v206 < 0)
              {
                v201 += 7;
                --v203;
                ++v204;
                ++v205;
                v14 = v202++ > 8;
                if (v14)
                {
                  goto LABEL_279;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v127) = 0;
              }
            }

            else
            {
              LODWORD(v127) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_343:
          *(a1 + 164) = v127;
          goto LABEL_306;
        case 0x1Eu:
          *(a1 + 216) |= 0x100uLL;
          v132 = *(this + 1);
          v131 = *(this + 2);
          v133 = *this;
          if (v132 <= 0xFFFFFFFFFFFFFFF5 && v132 + 10 <= v131)
          {
            v134 = 0;
            v135 = 0;
            v136 = 0;
            v137 = (v133 + v132);
            v138 = v132 + 1;
            do
            {
              *(this + 1) = v138;
              v139 = *v137++;
              v136 |= (v139 & 0x7F) << v134;
              if ((v139 & 0x80) == 0)
              {
                goto LABEL_346;
              }

              v134 += 7;
              ++v138;
              v14 = v135++ > 8;
            }

            while (!v14);
LABEL_287:
            LODWORD(v136) = 0;
            goto LABEL_346;
          }

          v207 = 0;
          v208 = 0;
          v136 = 0;
          v17 = v131 >= v132;
          v209 = v131 - v132;
          if (!v17)
          {
            v209 = 0;
          }

          v210 = (v133 + v132);
          v211 = v132 + 1;
          while (2)
          {
            if (v209)
            {
              v212 = *v210;
              *(this + 1) = v211;
              v136 |= (v212 & 0x7F) << v207;
              if (v212 < 0)
              {
                v207 += 7;
                --v209;
                ++v210;
                ++v211;
                v14 = v208++ > 8;
                if (v14)
                {
                  goto LABEL_287;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v136) = 0;
              }
            }

            else
            {
              LODWORD(v136) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_346:
          *(a1 + 52) = v136;
          goto LABEL_306;
        case 0x1Fu:
          *(a1 + 216) |= 0x200000000uLL;
          v114 = *(this + 1);
          if (v114 > 0xFFFFFFFFFFFFFFFBLL || v114 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 152) = *(*this + v114);
          goto LABEL_305;
        case 0x20u:
          *(a1 + 216) |= 0x800uLL;
          v95 = *(this + 1);
          if (v95 > 0xFFFFFFFFFFFFFFFBLL || v95 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 64) = *(*this + v95);
          goto LABEL_305;
        case 0x21u:
          *(a1 + 216) |= 0x400uLL;
          v115 = *(this + 1);
          if (v115 > 0xFFFFFFFFFFFFFFFBLL || v115 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 60) = *(*this + v115);
          goto LABEL_305;
        case 0x22u:
          *(a1 + 216) |= 0x200000uLL;
          v57 = *(this + 1);
          if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 104) = *(*this + v57);
          goto LABEL_305;
        case 0x23u:
          *(a1 + 216) |= 0x40000uLL;
          v45 = *(this + 1);
          if (v45 > 0xFFFFFFFFFFFFFFFBLL || v45 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 92) = *(*this + v45);
          goto LABEL_305;
        case 0x24u:
          *(a1 + 216) |= 0x20000000uLL;
          v34 = *(this + 1);
          if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 136) = *(*this + v34);
          goto LABEL_305;
        case 0x25u:
          *(a1 + 216) |= 0x800000000uLL;
          v35 = *(this + 1);
          if (v35 > 0xFFFFFFFFFFFFFFFBLL || v35 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 160) = *(*this + v35);
          goto LABEL_305;
        case 0x26u:
          *(a1 + 216) |= 0x400000000uLL;
          v32 = *(this + 1);
          if (v32 > 0xFFFFFFFFFFFFFFFBLL || v32 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 156) = *(*this + v32);
          goto LABEL_305;
        case 0x27u:
          *(a1 + 216) |= 0x8000uLL;
          v141 = *(this + 1);
          v140 = *(this + 2);
          v142 = *this;
          if (v141 <= 0xFFFFFFFFFFFFFFF5 && v141 + 10 <= v140)
          {
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = (v142 + v141);
            v147 = v141 + 1;
            do
            {
              *(this + 1) = v147;
              v148 = *v146++;
              v145 |= (v148 & 0x7F) << v143;
              if ((v148 & 0x80) == 0)
              {
                goto LABEL_349;
              }

              v143 += 7;
              ++v147;
              v14 = v144++ > 8;
            }

            while (!v14);
LABEL_295:
            LODWORD(v145) = 0;
            goto LABEL_349;
          }

          v213 = 0;
          v214 = 0;
          v145 = 0;
          v17 = v140 >= v141;
          v215 = v140 - v141;
          if (!v17)
          {
            v215 = 0;
          }

          v216 = (v142 + v141);
          v217 = v141 + 1;
          while (2)
          {
            if (v215)
            {
              v218 = *v216;
              *(this + 1) = v217;
              v145 |= (v218 & 0x7F) << v213;
              if (v218 < 0)
              {
                v213 += 7;
                --v215;
                ++v216;
                ++v217;
                v14 = v214++ > 8;
                if (v14)
                {
                  goto LABEL_295;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v145) = 0;
              }
            }

            else
            {
              LODWORD(v145) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_349:
          *(a1 + 80) = v145;
          goto LABEL_306;
        case 0x28u:
          *(a1 + 216) |= 0x10000000uLL;
          v118 = *(this + 1);
          if (v118 > 0xFFFFFFFFFFFFFFFBLL || v118 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 132) = *(*this + v118);
          goto LABEL_305;
        case 0x29u:
          *(a1 + 216) |= 0x4000000uLL;
          v61 = *(this + 1);
          if (v61 > 0xFFFFFFFFFFFFFFFBLL || v61 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 124) = *(*this + v61);
          goto LABEL_305;
        case 0x2Au:
          *(a1 + 216) |= 0x8000000uLL;
          v105 = *(this + 1);
          if (v105 > 0xFFFFFFFFFFFFFFFBLL || v105 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 128) = *(*this + v105);
          goto LABEL_305;
        case 0x2Bu:
          *(a1 + 216) |= 0x20uLL;
          v120 = *(this + 1);
          if (v120 > 0xFFFFFFFFFFFFFFFBLL || v120 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 40) = *(*this + v120);
          goto LABEL_305;
        case 0x2Cu:
          *(a1 + 216) |= 0x1000000uLL;
          v31 = *(this + 1);
          if (v31 > 0xFFFFFFFFFFFFFFFBLL || v31 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 116) = *(*this + v31);
          goto LABEL_305;
        case 0x2Du:
          *(a1 + 216) |= 0x2000000uLL;
          v48 = *(this + 1);
          v47 = *(this + 2);
          v49 = *this;
          if (v48 <= 0xFFFFFFFFFFFFFFF5 && v48 + 10 <= v47)
          {
            v50 = 0;
            v51 = 0;
            v52 = 0;
            v53 = (v49 + v48);
            v54 = v48 + 1;
            do
            {
              *(this + 1) = v54;
              v55 = *v53++;
              v52 |= (v55 & 0x7F) << v50;
              if ((v55 & 0x80) == 0)
              {
                goto LABEL_325;
              }

              v50 += 7;
              ++v54;
              v14 = v51++ > 8;
            }

            while (!v14);
LABEL_231:
            LODWORD(v52) = 0;
            goto LABEL_325;
          }

          v165 = 0;
          v166 = 0;
          v52 = 0;
          v17 = v47 >= v48;
          v167 = v47 - v48;
          if (!v17)
          {
            v167 = 0;
          }

          v168 = (v49 + v48);
          v169 = v48 + 1;
          break;
        case 0x2Eu:
          *(a1 + 216) |= 0x2000uLL;
          v116 = *(this + 1);
          if (v116 > 0xFFFFFFFFFFFFFFFBLL || v116 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 72) = *(*this + v116);
          goto LABEL_305;
        case 0x2Fu:
          *(a1 + 216) |= 0x200uLL;
          v158 = *(this + 1);
          if (v158 > 0xFFFFFFFFFFFFFFFBLL || v158 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 56) = *(*this + v158);
          goto LABEL_305;
        case 0x30u:
          *(a1 + 216) |= 0x400000uLL;
          v33 = *(this + 1);
          if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(this + 2))
          {
            goto LABEL_213;
          }

          *(a1 + 108) = *(*this + v33);
          goto LABEL_305;
        case 0x31u:
          *(a1 + 216) |= 8uLL;
          v58 = *(this + 1);
          if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(this + 2))
          {
LABEL_213:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 32) = *(*this + v58);
LABEL_305:
            *(this + 1) += 4;
          }

          goto LABEL_306;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_306;
          }

          v226 = 0;
          return v226 & 1;
      }

      while (1)
      {
        if (!v167)
        {
          LODWORD(v52) = 0;
          *(this + 24) = 1;
          goto LABEL_325;
        }

        v170 = *v168;
        *(this + 1) = v169;
        v52 |= (v170 & 0x7F) << v165;
        if ((v170 & 0x80) == 0)
        {
          break;
        }

        v165 += 7;
        --v167;
        ++v168;
        ++v169;
        v14 = v166++ > 8;
        if (v14)
        {
          goto LABEL_231;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v52) = 0;
      }

LABEL_325:
      *(a1 + 120) = v52;
LABEL_306:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3)
      {
        break;
      }
    }

    while ((*(this + 24) & 1) == 0);
  }

LABEL_354:
  v226 = v4 ^ 1;
  return v226 & 1;
}

uint64_t sub_245D98BAC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 216);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = *(result + 144);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 216);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_53;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 216);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_54;
  }

LABEL_53:
  v7 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 216);
  if ((v4 & 0x20000) == 0)
  {
LABEL_5:
    if ((v4 & 0x8000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 216);
  if ((v4 & 0x8000000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x4000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = PB::Writer::write(this, *(v3 + 176));
  v4 = *(v3 + 216);
  if ((v4 & 0x4000000000) == 0)
  {
LABEL_7:
    if ((v4 & 0x80000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = PB::Writer::write(this, *(v3 + 172));
  v4 = *(v3 + 216);
  if ((v4 & 0x80000000000) == 0)
  {
LABEL_8:
    if ((v4 & 0x40000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 192));
  v4 = *(v3 + 216);
  if ((v4 & 0x40000000000) == 0)
  {
LABEL_9:
    if ((v4 & 0x800000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = PB::Writer::write(this, *(v3 + 188));
  v4 = *(v3 + 216);
  if ((v4 & 0x800000000000) == 0)
  {
LABEL_10:
    if ((v4 & 0x400000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 208));
  v4 = *(v3 + 216);
  if ((v4 & 0x400000000000) == 0)
  {
LABEL_11:
    if ((v4 & 0x10000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = PB::Writer::write(this, *(v3 + 204));
  v4 = *(v3 + 216);
  if ((v4 & 0x10000000000) == 0)
  {
LABEL_12:
    if ((v4 & 0x100000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = PB::Writer::write(this, *(v3 + 180));
  v4 = *(v3 + 216);
  if ((v4 & 0x100000000000) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = PB::Writer::write(this, *(v3 + 196));
  v4 = *(v3 + 216);
  if ((v4 & 0x1000000000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = PB::Writer::write(this, *(v3 + 212));
  v4 = *(v3 + 216);
  if ((v4 & 0x10000) == 0)
  {
LABEL_15:
    if ((v4 & 0x2000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 216);
  if ((v4 & 0x2000000000) == 0)
  {
LABEL_16:
    if ((v4 & 0x20000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = PB::Writer::write(this, *(v3 + 168));
  v4 = *(v3 + 216);
  if ((v4 & 0x20000000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x200000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = PB::Writer::write(this, *(v3 + 184));
  v4 = *(v3 + 216);
  if ((v4 & 0x200000000000) == 0)
  {
LABEL_18:
    if ((v4 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = PB::Writer::write(this, *(v3 + 200));
  v4 = *(v3 + 216);
  if ((v4 & 4) == 0)
  {
LABEL_19:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_69;
  }

LABEL_68:
  v8 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 216);
  if ((v4 & 0x10) == 0)
  {
LABEL_20:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 216);
  if ((v4 & 0x800000) == 0)
  {
LABEL_21:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_71;
  }

LABEL_70:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 216);
  if ((v4 & 0x80) == 0)
  {
LABEL_22:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_72;
  }

LABEL_71:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 216);
  if ((v4 & 0x40) == 0)
  {
LABEL_23:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_73;
  }

LABEL_72:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 216);
  if ((v4 & 0x100000) == 0)
  {
LABEL_24:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_74;
  }

LABEL_73:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 216);
  if ((v4 & 0x80000) == 0)
  {
LABEL_25:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_75;
  }

LABEL_74:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 216);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_26:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_76;
  }

LABEL_75:
  result = PB::Writer::write(this, *(v3 + 140));
  v4 = *(v3 + 216);
  if ((v4 & 0x1000) == 0)
  {
LABEL_27:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_77;
  }

LABEL_76:
  v9 = *(v3 + 68);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 216);
  if ((v4 & 0x4000) == 0)
  {
LABEL_28:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_78;
  }

LABEL_77:
  v10 = *(v3 + 76);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 216);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x1000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_79;
  }

LABEL_78:
  v11 = *(v3 + 148);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 216);
  if ((v4 & 0x1000000000) == 0)
  {
LABEL_30:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_80;
  }

LABEL_79:
  v12 = *(v3 + 164);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 216);
  if ((v4 & 0x100) == 0)
  {
LABEL_31:
    if ((v4 & 0x200000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_81;
  }

LABEL_80:
  v13 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 216);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_32:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_82;
  }

LABEL_81:
  result = PB::Writer::write(this, *(v3 + 152));
  v4 = *(v3 + 216);
  if ((v4 & 0x800) == 0)
  {
LABEL_33:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_83;
  }

LABEL_82:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 216);
  if ((v4 & 0x400) == 0)
  {
LABEL_34:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_84;
  }

LABEL_83:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 216);
  if ((v4 & 0x200000) == 0)
  {
LABEL_35:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_85;
  }

LABEL_84:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 216);
  if ((v4 & 0x40000) == 0)
  {
LABEL_36:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_86;
  }

LABEL_85:
  result = PB::Writer::write(this, *(v3 + 92));
  v4 = *(v3 + 216);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_37:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_87;
  }

LABEL_86:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 216);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_38:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_88;
  }

LABEL_87:
  result = PB::Writer::write(this, *(v3 + 160));
  v4 = *(v3 + 216);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_39:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_89;
  }

LABEL_88:
  result = PB::Writer::write(this, *(v3 + 156));
  v4 = *(v3 + 216);
  if ((v4 & 0x8000) == 0)
  {
LABEL_40:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_90;
  }

LABEL_89:
  v14 = *(v3 + 80);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 216);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_41:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_91;
  }

LABEL_90:
  result = PB::Writer::write(this, *(v3 + 132));
  v4 = *(v3 + 216);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_42:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_92;
  }

LABEL_91:
  result = PB::Writer::write(this, *(v3 + 124));
  v4 = *(v3 + 216);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_43:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_93;
  }

LABEL_92:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 216);
  if ((v4 & 0x20) == 0)
  {
LABEL_44:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_94;
  }

LABEL_93:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 216);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_45:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_95;
  }

LABEL_94:
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 216);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_46:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_96;
  }

LABEL_95:
  v15 = *(v3 + 120);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 216);
  if ((v4 & 0x2000) == 0)
  {
LABEL_47:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_97;
  }

LABEL_96:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 216);
  if ((v4 & 0x200) == 0)
  {
LABEL_48:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_49;
    }

LABEL_98:
    result = PB::Writer::write(this, *(v3 + 108));
    if ((*(v3 + 216) & 8) == 0)
    {
      return result;
    }

    goto LABEL_99;
  }

LABEL_97:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 216);
  if ((v4 & 0x400000) != 0)
  {
    goto LABEL_98;
  }

LABEL_49:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_99:
  v16 = *(v3 + 32);

  return PB::Writer::write(this, v16);
}