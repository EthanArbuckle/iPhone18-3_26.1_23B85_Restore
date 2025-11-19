uint64_t sub_245F02B00(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 164);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 64));
    v4 = *(v3 + 164);
    if ((v4 & 0x800) == 0)
    {
LABEL_3:
      if ((v4 & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_43;
    }
  }

  else if ((v4 & 0x800) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 164);
  if ((v4 & 0x1000) == 0)
  {
LABEL_4:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 164);
  if ((v4 & 0x2000) == 0)
  {
LABEL_5:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 164);
  if ((v4 & 0x4000) == 0)
  {
LABEL_6:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 164);
  if ((v4 & 0x8000) == 0)
  {
LABEL_7:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 124));
  v4 = *(v3 + 164);
  if ((v4 & 0x10000) == 0)
  {
LABEL_8:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 164);
  if ((v4 & 0x80000) == 0)
  {
LABEL_9:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 140));
  v4 = *(v3 + 164);
  if ((v4 & 0x100000) == 0)
  {
LABEL_10:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 164);
  if ((v4 & 0x200000) == 0)
  {
LABEL_11:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 148));
  v4 = *(v3 + 164);
  if ((v4 & 0x100) == 0)
  {
LABEL_12:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 164);
  if ((v4 & 0x200) == 0)
  {
LABEL_13:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_14;
    }

LABEL_53:
    result = PB::Writer::write(this, *(v3 + 104));
    if ((*(v3 + 164) & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 164);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_53;
  }

LABEL_14:
  if ((v4 & 0x80) != 0)
  {
LABEL_15:
    result = PB::Writer::write(this, *(v3 + 92));
  }

LABEL_16:
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    result = PB::Writer::write(this, v10);
  }

  v11 = *(v3 + 164);
  if ((v11 & 0x8000000) != 0)
  {
    v12 = *(v3 + 157);
    result = PB::Writer::write(this);
    v11 = *(v3 + 164);
    if ((v11 & 0x400000) == 0)
    {
LABEL_24:
      if ((v11 & 0x1000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_57;
    }
  }

  else if ((v11 & 0x400000) == 0)
  {
    goto LABEL_24;
  }

  v13 = *(v3 + 152);
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  v14 = *(v3 + 154);
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x10) == 0)
  {
LABEL_26:
    if ((v11 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = PB::Writer::write(this, *(v3 + 80));
  v11 = *(v3 + 164);
  if ((v11 & 8) == 0)
  {
LABEL_27:
    if ((v11 & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 76));
  v11 = *(v3 + 164);
  if ((v11 & 4) == 0)
  {
LABEL_28:
    if ((v11 & 0x20000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = PB::Writer::write(this, *(v3 + 72));
  v11 = *(v3 + 164);
  if ((v11 & 0x20000000) == 0)
  {
LABEL_29:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  v15 = *(v3 + 159);
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_30:
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  v16 = *(v3 + 161);
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x800000) == 0)
  {
LABEL_31:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_63:
  v17 = *(v3 + 153);
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x20) == 0)
  {
LABEL_32:
    if ((v11 & 0x40000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = PB::Writer::write(this, *(v3 + 84));
  v11 = *(v3 + 164);
  if ((v11 & 0x40000) == 0)
  {
LABEL_33:
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_66;
  }

LABEL_65:
  v18 = *(v3 + 136);
  result = PB::Writer::writeVarInt(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x10000000) == 0)
  {
LABEL_34:
    if ((v11 & 0x4000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_67;
  }

LABEL_66:
  v19 = *(v3 + 158);
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_68;
  }

LABEL_67:
  v20 = *(v3 + 156);
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x40000000) == 0)
  {
LABEL_36:
    if ((v11 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_69;
  }

LABEL_68:
  v21 = *(v3 + 160);
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 1) == 0)
  {
LABEL_37:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = PB::Writer::write(this, *(v3 + 56));
  v11 = *(v3 + 164);
  if ((v11 & 0x40) == 0)
  {
LABEL_38:
    if ((v11 & 0x2000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_71:
    v23 = *(v3 + 155);
    result = PB::Writer::write(this);
    if ((*(v3 + 164) & 0x20000) == 0)
    {
      return result;
    }

    goto LABEL_72;
  }

LABEL_70:
  v22 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x2000000) != 0)
  {
    goto LABEL_71;
  }

LABEL_39:
  if ((v11 & 0x20000) == 0)
  {
    return result;
  }

LABEL_72:
  v24 = *(v3 + 132);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245F02F04(uint64_t result)
{
  *result = &unk_2858D60E8;
  *(result + 48) = 0;
  return result;
}

void sub_245F02F2C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245F02F64(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D60E8;
  *(a1 + 48) = 0;
  v2 = *(a2 + 48);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(a1 + 48) = 1;
    *(a1 + 8) = v4;
    v2 = *(a2 + 48);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x20) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 32);
    v3 |= 0x20u;
    *(a1 + 48) = v3;
    *(a1 + 32) = v4;
    v2 = *(a2 + 48);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    LODWORD(v4) = *(a2 + 16);
    v3 |= 2u;
    *(a1 + 48) = v3;
    *(a1 + 16) = v4;
    v2 = *(a2 + 48);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(v4) = *(a2 + 28);
  v3 |= 0x10u;
  *(a1 + 48) = v3;
  *(a1 + 28) = v4;
  v2 = *(a2 + 48);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  LODWORD(v4) = *(a2 + 36);
  v3 |= 0x40u;
  *(a1 + 48) = v3;
  *(a1 + 36) = v4;
  v2 = *(a2 + 48);
  if ((v2 & 0x80) == 0)
  {
LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  LODWORD(v4) = *(a2 + 40);
  v3 |= 0x80u;
  *(a1 + 48) = v3;
  *(a1 + 40) = v4;
  v2 = *(a2 + 48);
  if ((v2 & 0x100) == 0)
  {
LABEL_11:
    if ((v2 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v5 = *(a2 + 44);
  v3 |= 0x100u;
  *(a1 + 48) = v3;
  *(a1 + 44) = v5;
  v2 = *(a2 + 48);
  if ((v2 & 8) == 0)
  {
LABEL_12:
    if ((v2 & 4) == 0)
    {
      return *&v4;
    }

    goto LABEL_20;
  }

LABEL_19:
  LODWORD(v4) = *(a2 + 24);
  v3 |= 8u;
  *(a1 + 48) = v3;
  *(a1 + 24) = v4;
  if ((*(a2 + 48) & 4) == 0)
  {
    return *&v4;
  }

LABEL_20:
  LODWORD(v4) = *(a2 + 20);
  *(a1 + 48) = v3 | 4;
  *(a1 + 20) = v4;
  return *&v4;
}

uint64_t sub_245F0308C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 48);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "avgRotationMax", *(a1 + 16));
    v5 = *(a1 + 48);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "historicalDisturbanceDuration", *(a1 + 20));
  v5 = *(a1 + 48);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "historicalQuiescenceDuration", *(a1 + 24));
  v5 = *(a1 + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "instAccelMagDiff", *(a1 + 28));
  v5 = *(a1 + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "instRotationMax", *(a1 + 32));
  v5 = *(a1 + 48);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = *(a1 + 44);
  PB::TextFormatter::format(this, "isAvgGrav");
  v5 = *(a1 + 48);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "lpfAccelMagDiff", *(a1 + 36));
  v5 = *(a1 + 48);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(this, "measNoiseVar", *(a1 + 40));
  if (*(a1 + 48))
  {
LABEL_10:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_11:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245F031F0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_71;
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
      if ((v10 >> 3) <= 4)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *(a1 + 48) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_59:
              *(this + 24) = 1;
              goto LABEL_67;
            }

            *(a1 + 16) = *(*this + v2);
LABEL_65:
            v2 = *(this + 1) + 4;
LABEL_66:
            *(this + 1) = v2;
            goto LABEL_67;
          }

          if (v22 == 4)
          {
            *(a1 + 48) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_59;
            }

            *(a1 + 28) = *(*this + v2);
            goto LABEL_65;
          }
        }

        else
        {
          if (v22 == 1)
          {
            *(a1 + 48) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_59;
            }

            *(a1 + 8) = *(*this + v2);
            v2 = *(this + 1) + 8;
            goto LABEL_66;
          }

          if (v22 == 2)
          {
            *(a1 + 48) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_59;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_65;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(a1 + 48) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_59;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_65;
        }

        if (v22 == 6)
        {
          *(a1 + 48) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_59;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_65;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(a1 + 48) |= 0x100u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v24 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v23 = *(*this + v2++);
              *(this + 1) = v2;
              v24 = v23 != 0;
            }

            *(a1 + 44) = v24;
            goto LABEL_67;
          case 8:
            *(a1 + 48) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_59;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_65;
          case 9:
            *(a1 + 48) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_59;
            }

            *(a1 + 20) = *(*this + v2);
            goto LABEL_65;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v25 = 0;
        return v25 & 1;
      }

      v2 = *(this + 1);
LABEL_67:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_71:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t sub_245F035DC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 48);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 48);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 48);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 48);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 48);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 48);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 48);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    result = PB::Writer::write(this, *(v3 + 24));
    if ((*(v3 + 48) & 4) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  v5 = *(v3 + 44);
  result = PB::Writer::write(this);
  v4 = *(v3 + 48);
  if ((v4 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_19:
  v6 = *(v3 + 20);

  return PB::Writer::write(this, v6);
}

uint64_t sub_245F03710(uint64_t result)
{
  *result = &unk_2858D6120;
  *(result + 8) = 0;
  *(result + 20) = 0;
  return result;
}

void sub_245F03734(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D6120;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245F037B4(PB::Base *a1)
{
  sub_245F03734(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245F037EC(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D6120;
  *(result + 8) = 0;
  *(result + 20) = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 20))
  {
    v2 = *(a2 + 16);
    *(result + 20) |= 1u;
    *(result + 16) = v2;
  }

  return result;
}

uint64_t sub_245F038B4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "correction");
  }

  if (*(a1 + 20))
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "isAvgGrav");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245F0394C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_35;
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

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 1u;
        v22 = *(this + 1);
        if (v22 >= *(this + 2))
        {
          v25 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v23 = v22 + 1;
          v24 = *(*this + v22);
          *(this + 1) = v23;
          v25 = v24 != 0;
        }

        *(a1 + 16) = v25;
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          operator new();
        }

        if ((PB::Reader::skip(this) & 1) == 0)
        {
          v27 = 0;
          return v27 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_35:
  v27 = v4 ^ 1;
  return v27 & 1;
}

uint64_t sub_245F03BC0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  if (*(v3 + 20))
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_245F03C28(uint64_t result)
{
  *result = &unk_2858D6158;
  *(result + 24) = 0;
  return result;
}

void sub_245F03C50(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245F03C88(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D6158;
  *(result + 24) = 0;
  v2 = *(a2 + 24);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 12);
    v3 = 2;
    *(result + 24) = 2;
    *(result + 12) = v4;
    v2 = *(a2 + 24);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 24) & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 20);
    v3 |= 8u;
    *(result + 24) = v3;
    *(result + 20) = v5;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 16);
    v3 |= 4u;
    *(result + 24) = v3;
    *(result + 16) = v6;
    v2 = *(a2 + 24);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        return result;
      }

LABEL_12:
      v8 = *(a2 + 21);
      *(result + 24) = v3 | 0x10;
      *(result + 21) = v8;
      return result;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 8);
  v3 |= 1u;
  *(result + 24) = v3;
  *(result + 8) = v7;
  if ((*(a2 + 24) & 0x10) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_245F03D40(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if ((v5 & 8) != 0)
  {
    v7 = *(a1 + 20);
    PB::TextFormatter::format(this, "activeGnssSession");
    v5 = *(a1 + 24);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 8);
  PB::TextFormatter::format(this, "currentModesOfOperation");
  v5 = *(a1 + 24);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = *(a1 + 12);
  PB::TextFormatter::format(this, "gnssModeOfOperation");
  v5 = *(a1 + 24);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v10 = *(a1 + 21);
  PB::TextFormatter::format(this, "hasSubscribedRhythmicClient");
  if ((*(a1 + 24) & 4) != 0)
  {
LABEL_6:
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "rhythmicMode");
  }

LABEL_7:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245F03E24(uint64_t a1, PB::Reader *this)
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
            goto LABEL_106;
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
      if ((v10 >> 3) <= 2)
      {
        if (v23 == 1)
        {
          *(a1 + 24) |= 2u;
          v44 = *(this + 1);
          v2 = *(this + 2);
          v45 = *this;
          if (v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v2)
          {
            v66 = 0;
            v67 = 0;
            v48 = 0;
            if (v2 <= v44)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v68 = v3 - v44;
            v69 = (v45 + v44);
            v70 = v44 + 1;
            while (1)
            {
              if (!v68)
              {
                LODWORD(v48) = 0;
                *(this + 24) = 1;
                goto LABEL_101;
              }

              v71 = v70;
              v72 = *v69;
              *(this + 1) = v71;
              v48 |= (v72 & 0x7F) << v66;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              --v68;
              ++v69;
              v70 = v71 + 1;
              v14 = v67++ > 8;
              if (v14)
              {
                LODWORD(v48) = 0;
                goto LABEL_100;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v48) = 0;
            }

LABEL_100:
            v3 = v71;
          }

          else
          {
            v46 = 0;
            v47 = 0;
            v48 = 0;
            v49 = (v45 + v44);
            v50 = v44 + 1;
            while (1)
            {
              v3 = v50;
              *(this + 1) = v50;
              v51 = *v49++;
              v48 |= (v51 & 0x7F) << v46;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              ++v50;
              v14 = v47++ > 8;
              if (v14)
              {
                LODWORD(v48) = 0;
                break;
              }
            }
          }

LABEL_101:
          *(a1 + 12) = v48;
          goto LABEL_102;
        }

        if (v23 == 2)
        {
          *(a1 + 24) |= 8u;
          v3 = *(this + 1);
          v2 = *(this + 2);
          if (v3 >= v2)
          {
            v27 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v26 = *(*this + v3++);
            *(this + 1) = v3;
            v27 = v26 != 0;
          }

          *(a1 + 20) = v27;
          goto LABEL_102;
        }
      }

      else
      {
        switch(v23)
        {
          case 3:
            *(a1 + 24) |= 4u;
            v28 = *(this + 1);
            v2 = *(this + 2);
            v29 = *this;
            if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v2)
            {
              v52 = 0;
              v53 = 0;
              v32 = 0;
              if (v2 <= v28)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v54 = v3 - v28;
              v55 = (v29 + v28);
              v56 = v28 + 1;
              while (1)
              {
                if (!v54)
                {
                  LODWORD(v32) = 0;
                  *(this + 24) = 1;
                  goto LABEL_93;
                }

                v57 = v56;
                v58 = *v55;
                *(this + 1) = v57;
                v32 |= (v58 & 0x7F) << v52;
                if ((v58 & 0x80) == 0)
                {
                  break;
                }

                v52 += 7;
                --v54;
                ++v55;
                v56 = v57 + 1;
                v14 = v53++ > 8;
                if (v14)
                {
                  LODWORD(v32) = 0;
                  goto LABEL_92;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v32) = 0;
              }

LABEL_92:
              v3 = v57;
            }

            else
            {
              v30 = 0;
              v31 = 0;
              v32 = 0;
              v33 = (v29 + v28);
              v34 = v28 + 1;
              while (1)
              {
                v3 = v34;
                *(this + 1) = v34;
                v35 = *v33++;
                v32 |= (v35 & 0x7F) << v30;
                if ((v35 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                ++v34;
                v14 = v31++ > 8;
                if (v14)
                {
                  LODWORD(v32) = 0;
                  break;
                }
              }
            }

LABEL_93:
            *(a1 + 16) = v32;
            goto LABEL_102;
          case 4:
            *(a1 + 24) |= 1u;
            v36 = *(this + 1);
            v2 = *(this + 2);
            v37 = *this;
            if (v36 > 0xFFFFFFFFFFFFFFF5 || v36 + 10 > v2)
            {
              v59 = 0;
              v60 = 0;
              v40 = 0;
              if (v2 <= v36)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v61 = v3 - v36;
              v62 = (v37 + v36);
              v63 = v36 + 1;
              while (1)
              {
                if (!v61)
                {
                  LODWORD(v40) = 0;
                  *(this + 24) = 1;
                  goto LABEL_97;
                }

                v64 = v63;
                v65 = *v62;
                *(this + 1) = v64;
                v40 |= (v65 & 0x7F) << v59;
                if ((v65 & 0x80) == 0)
                {
                  break;
                }

                v59 += 7;
                --v61;
                ++v62;
                v63 = v64 + 1;
                v14 = v60++ > 8;
                if (v14)
                {
                  LODWORD(v40) = 0;
                  goto LABEL_96;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v40) = 0;
              }

LABEL_96:
              v3 = v64;
            }

            else
            {
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v41 = (v37 + v36);
              v42 = v36 + 1;
              while (1)
              {
                v3 = v42;
                *(this + 1) = v42;
                v43 = *v41++;
                v40 |= (v43 & 0x7F) << v38;
                if ((v43 & 0x80) == 0)
                {
                  break;
                }

                v38 += 7;
                ++v42;
                v14 = v39++ > 8;
                if (v14)
                {
                  LODWORD(v40) = 0;
                  break;
                }
              }
            }

LABEL_97:
            *(a1 + 8) = v40;
            goto LABEL_102;
          case 5:
            *(a1 + 24) |= 0x10u;
            v3 = *(this + 1);
            v2 = *(this + 2);
            if (v3 >= v2)
            {
              v25 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v24 = *(*this + v3++);
              *(this + 1) = v3;
              v25 = v24 != 0;
            }

            *(a1 + 21) = v25;
            goto LABEL_102;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v73 = 0;
        return v73 & 1;
      }

      v3 = *(this + 1);
      v2 = *(this + 2);
LABEL_102:
      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_106:
  v73 = v4 ^ 1;
  return v73 & 1;
}

uint64_t sub_245F04350(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 24);
  if ((v4 & 2) != 0)
  {
    v5 = *(result + 12);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 24);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 24) & 8) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 20);
  result = PB::Writer::write(this);
  v4 = *(v3 + 24);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = *(v3 + 8);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 24) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  v7 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 24);
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v9 = *(v3 + 21);

  return PB::Writer::write(this);
}

uint64_t sub_245F04414(uint64_t result)
{
  *result = &unk_2858D6190;
  *(result + 28) = 0;
  return result;
}

void sub_245F0443C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245F04474(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D6190;
  *(a1 + 28) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(a1 + 28) = 1;
    *(a1 + 8) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 2) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 16);
    v3 |= 2u;
    *(a1 + 28) = v3;
    *(a1 + 16) = v4;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    LODWORD(v4) = *(a2 + 20);
    v3 |= 4u;
    *(a1 + 28) = v3;
    *(a1 + 20) = v4;
    if ((*(a2 + 28) & 8) == 0)
    {
      return *&v4;
    }
  }

  else if ((v2 & 8) == 0)
  {
    return *&v4;
  }

  LODWORD(v4) = *(a2 + 24);
  *(a1 + 28) = v3 | 8;
  *(a1 + 24) = v4;
  return *&v4;
}

uint64_t sub_245F04510(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
    v5 = *(a1 + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "x", *(a1 + 16));
  v5 = *(a1 + 28);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(this, "y", *(a1 + 20));
  if ((*(a1 + 28) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "z", *(a1 + 24));
  }

LABEL_6:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245F045D4(uint64_t a1, PB::Reader *this)
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
            goto LABEL_48;
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
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 28) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_40:
            *(this + 24) = 1;
            goto LABEL_44;
          }

          *(a1 + 20) = *(*this + v2);
LABEL_42:
          v2 = *(this + 1) + 4;
LABEL_43:
          *(this + 1) = v2;
          goto LABEL_44;
        }

        if (v22 == 4)
        {
          *(a1 + 28) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 28) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_43;
        }

        if (v22 == 2)
        {
          *(a1 + 28) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_42;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_44:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_48:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245F04864(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 28);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 20));
      if ((*(v3 + 28) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 28);
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v5 = *(v3 + 24);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245F0490C(uint64_t result)
{
  *result = &unk_2858D61C8;
  *(result + 64) = 0;
  return result;
}

void sub_245F04934(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245F0496C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D61C8;
  *(a1 + 64) = 0;
  v2 = *(a2 + 64);
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 16);
    v3 = 2;
    *(a1 + 64) = 2;
    *(a1 + 16) = result;
    v2 = *(a2 + 64);
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 64) & 0x40) != 0)
  {
LABEL_5:
    result = *(a2 + 56);
    v3 |= 0x40u;
    *(a1 + 64) = v3;
    *(a1 + 56) = result;
    v2 = *(a2 + 64);
  }

LABEL_6:
  if (v2)
  {
    result = *(a2 + 8);
    v3 |= 1u;
    *(a1 + 64) = v3;
    *(a1 + 8) = result;
    v2 = *(a2 + 64);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 24);
  v3 |= 4u;
  *(a1 + 64) = v3;
  *(a1 + 24) = result;
  v2 = *(a2 + 64);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = *(a2 + 40);
  v3 |= 0x10u;
  *(a1 + 64) = v3;
  *(a1 + 40) = result;
  v2 = *(a2 + 64);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_16:
    result = *(a2 + 32);
    *(a1 + 64) = v3 | 8;
    *(a1 + 32) = result;
    return result;
  }

LABEL_15:
  result = *(a2 + 48);
  v3 |= 0x20u;
  *(a1 + 64) = v3;
  *(a1 + 48) = result;
  if ((*(a2 + 64) & 8) != 0)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_245F04A5C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if (v5)
  {
    PB::TextFormatter::format(this, "cadence", *(a1 + 8));
    v5 = *(a1 + 64);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 64) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "startTime", *(a1 + 16));
  v5 = *(a1 + 64);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "swingAccelX", *(a1 + 24));
  v5 = *(a1 + 64);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(this, "swingAccelXStandardized", *(a1 + 32));
  v5 = *(a1 + 64);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "swingAccelY", *(a1 + 40));
  v5 = *(a1 + 64);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(this, "swingAccelZ", *(a1 + 48));
  if ((*(a1 + 64) & 0x40) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 56));
  }

LABEL_9:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245F04B80(uint64_t a1, PB::Reader *this)
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
            goto LABEL_60;
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
      if ((v10 >> 3) <= 4)
      {
        switch(v22)
        {
          case 1:
            *(a1 + 64) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_53:
              *(this + 24) = 1;
              goto LABEL_56;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_55;
          case 2:
            *(a1 + 64) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_53;
            }

            *(a1 + 56) = *(*this + v2);
            goto LABEL_55;
          case 3:
            *(a1 + 64) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_53;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_55;
        }
      }

      else if (v22 > 6)
      {
        if (v22 == 7)
        {
          *(a1 + 64) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_55;
        }

        if (v22 == 8)
        {
          *(a1 + 64) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_55;
        }
      }

      else
      {
        if (v22 == 5)
        {
          *(a1 + 64) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_55;
        }

        if (v22 == 6)
        {
          *(a1 + 64) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 40) = *(*this + v2);
LABEL_55:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_56;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_56:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_60:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245F04ED0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 64);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 64) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::write(this, *(v3 + 48));
    if ((*(v3 + 64) & 8) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 64);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_15:
  v5 = *(v3 + 32);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245F04FCC(uint64_t result)
{
  *result = &unk_2858D6200;
  *(result + 120) = 0;
  return result;
}

void sub_245F04FF4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245F0502C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D6200;
  *(a1 + 120) = 0;
  v2 = *(a2 + 120);
  if ((v2 & 0x200) != 0)
  {
    result = *(a2 + 80);
    v3 = 512;
    *(a1 + 120) = 512;
    *(a1 + 80) = result;
    v2 = *(a2 + 120);
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 120) & 0x2000) != 0)
  {
LABEL_5:
    result = *(a2 + 112);
    v3 |= 0x2000u;
    *(a1 + 120) = v3;
    *(a1 + 112) = result;
    v2 = *(a2 + 120);
  }

LABEL_6:
  if ((v2 & 0x400) != 0)
  {
    result = *(a2 + 88);
    v3 |= 0x400u;
    *(a1 + 120) = v3;
    *(a1 + 88) = result;
    v2 = *(a2 + 120);
    if ((v2 & 0x800) == 0)
    {
LABEL_8:
      if ((v2 & 0x1000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 0x800) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 96);
  v3 |= 0x800u;
  *(a1 + 120) = v3;
  *(a1 + 96) = result;
  v2 = *(a2 + 120);
  if ((v2 & 0x1000) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = *(a2 + 104);
  v3 |= 0x1000u;
  *(a1 + 120) = v3;
  *(a1 + 104) = result;
  v2 = *(a2 + 120);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = *(a2 + 56);
  v3 |= 0x40u;
  *(a1 + 120) = v3;
  *(a1 + 56) = result;
  v2 = *(a2 + 120);
  if ((v2 & 0x80) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = *(a2 + 64);
  v3 |= 0x80u;
  *(a1 + 120) = v3;
  *(a1 + 64) = result;
  v2 = *(a2 + 120);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = *(a2 + 72);
  v3 |= 0x100u;
  *(a1 + 120) = v3;
  *(a1 + 72) = result;
  v2 = *(a2 + 120);
  if ((v2 & 8) == 0)
  {
LABEL_13:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = *(a2 + 32);
  v3 |= 8u;
  *(a1 + 120) = v3;
  *(a1 + 32) = result;
  v2 = *(a2 + 120);
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = *(a2 + 40);
  v3 |= 0x10u;
  *(a1 + 120) = v3;
  *(a1 + 40) = result;
  v2 = *(a2 + 120);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = *(a2 + 48);
  v3 |= 0x20u;
  *(a1 + 120) = v3;
  *(a1 + 48) = result;
  v2 = *(a2 + 120);
  if ((v2 & 1) == 0)
  {
LABEL_16:
    if ((v2 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = *(a2 + 8);
  v3 |= 1u;
  *(a1 + 120) = v3;
  *(a1 + 8) = result;
  v2 = *(a2 + 120);
  if ((v2 & 2) == 0)
  {
LABEL_17:
    if ((v2 & 4) == 0)
    {
      return result;
    }

LABEL_30:
    result = *(a2 + 24);
    *(a1 + 120) = v3 | 4;
    *(a1 + 24) = result;
    return result;
  }

LABEL_29:
  result = *(a2 + 16);
  v3 |= 2u;
  *(a1 + 120) = v3;
  *(a1 + 16) = result;
  if ((*(a2 + 120) & 4) != 0)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_245F051E0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 120);
  if (v5)
  {
    PB::TextFormatter::format(this, "centerOfMassPrefiltAccelX", *(a1 + 8));
    v5 = *(a1 + 120);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "centerOfMassPrefiltAccelY", *(a1 + 16));
  v5 = *(a1 + 120);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "centerOfMassPrefiltAccelZ", *(a1 + 24));
  v5 = *(a1 + 120);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "centripetalAccelX", *(a1 + 32));
  v5 = *(a1 + 120);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "centripetalAccelY", *(a1 + 40));
  v5 = *(a1 + 120);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "centripetalAccelZ", *(a1 + 48));
  v5 = *(a1 + 120);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "centripetalRotationRateX", *(a1 + 56));
  v5 = *(a1 + 120);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "centripetalRotationRateY", *(a1 + 64));
  v5 = *(a1 + 120);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "centripetalRotationRateZ", *(a1 + 72));
  v5 = *(a1 + 120);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "startTime", *(a1 + 80));
  v5 = *(a1 + 120);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "swingVelocityX", *(a1 + 88));
  v5 = *(a1 + 120);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "swingVelocityY", *(a1 + 96));
  v5 = *(a1 + 120);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  PB::TextFormatter::format(this, "swingVelocityZ", *(a1 + 104));
  if ((*(a1 + 120) & 0x2000) != 0)
  {
LABEL_15:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 112));
  }

LABEL_16:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245F053E4(uint64_t a1, PB::Reader *this)
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
        goto LABEL_73;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 120) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_68;
        case 2u:
          *(a1 + 120) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_68;
        case 3u:
          *(a1 + 120) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_68;
        case 4u:
          *(a1 + 120) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_68;
        case 5u:
          *(a1 + 120) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_68;
        case 6u:
          *(a1 + 120) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_68;
        case 7u:
          *(a1 + 120) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_68;
        case 8u:
          *(a1 + 120) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_68;
        case 9u:
          *(a1 + 120) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_68;
        case 0xAu:
          *(a1 + 120) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_68;
        case 0xBu:
          *(a1 + 120) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_68;
        case 0xCu:
          *(a1 + 120) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_68;
        case 0xDu:
          *(a1 + 120) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_68;
        case 0xEu:
          *(a1 + 120) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_64:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 24) = *(*this + v2);
LABEL_68:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_69;
        default:
          if (!PB::Reader::skip(this))
          {
            v22 = 0;
            return v22 & 1;
          }

          v2 = *(this + 1);
LABEL_69:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_73;
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

LABEL_73:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_245F058D8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 120);
  if ((v4 & 0x200) != 0)
  {
    result = PB::Writer::write(this, *(result + 80));
    v4 = *(v3 + 120);
    if ((v4 & 0x2000) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*(result + 120) & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 120);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 120);
  if ((v4 & 0x800) == 0)
  {
LABEL_5:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 120);
  if ((v4 & 0x1000) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 120);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 120);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 120);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 120);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 120);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 120);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 120);
  if ((v4 & 1) == 0)
  {
LABEL_13:
    if ((v4 & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    result = PB::Writer::write(this, *(v3 + 16));
    if ((*(v3 + 120) & 4) == 0)
    {
      return result;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 120);
  if ((v4 & 2) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_29:
  v5 = *(v3 + 24);

  return PB::Writer::write(this, v5);
}

void *sub_245F05A98(void *result)
{
  *result = &unk_2858D6238;
  result[28] = 0;
  return result;
}

void sub_245F05AC0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245F05AF8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D6238;
  *(a1 + 224) = 0;
  v2 = *(a2 + 224);
  if ((v2 & 0x40) != 0)
  {
    result = *(a2 + 56);
    v3 = 64;
    *(a1 + 224) = 64;
    *(a1 + 56) = result;
    v2 = *(a2 + 224);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x80) != 0)
  {
LABEL_5:
    result = *(a2 + 64);
    v3 |= 0x80uLL;
    *(a1 + 224) = v3;
    *(a1 + 64) = result;
    v2 = *(a2 + 224);
  }

LABEL_6:
  if ((v2 & 0x200000000) != 0)
  {
    v5 = *(a2 + 220);
    v3 |= 0x200000000uLL;
    *(a1 + 224) = v3;
    *(a1 + 220) = v5;
    v2 = *(a2 + 224);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 0x40000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_42;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 16);
  v3 |= 2uLL;
  *(a1 + 224) = v3;
  *(a1 + 16) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_9:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  v6 = *(a2 + 217);
  v3 |= 0x40000000uLL;
  *(a1 + 224) = v3;
  *(a1 + 217) = v6;
  v2 = *(a2 + 224);
  if ((v2 & 0x80000) == 0)
  {
LABEL_10:
    if ((v2 & 0x400000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = *(a2 + 160);
  v3 |= 0x80000uLL;
  *(a1 + 224) = v3;
  *(a1 + 160) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x400000000) == 0)
  {
LABEL_11:
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  v7 = *(a2 + 221);
  v3 |= 0x400000000uLL;
  *(a1 + 224) = v3;
  *(a1 + 221) = v7;
  v2 = *(a2 + 224);
  if ((v2 & 1) == 0)
  {
LABEL_12:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = *(a2 + 8);
  v3 |= 1uLL;
  *(a1 + 224) = v3;
  *(a1 + 8) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_13:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  v8 = *(a2 + 216);
  v3 |= 0x20000000uLL;
  *(a1 + 224) = v3;
  *(a1 + 216) = v8;
  v2 = *(a2 + 224);
  if ((v2 & 0x80000000) == 0)
  {
LABEL_14:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  v9 = *(a2 + 218);
  v3 |= 0x80000000uLL;
  *(a1 + 224) = v3;
  *(a1 + 218) = v9;
  v2 = *(a2 + 224);
  if ((v2 & 0x8000) == 0)
  {
LABEL_15:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = *(a2 + 128);
  v3 |= 0x8000uLL;
  *(a1 + 224) = v3;
  *(a1 + 128) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x40000) == 0)
  {
LABEL_16:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = *(a2 + 152);
  v3 |= 0x40000uLL;
  *(a1 + 224) = v3;
  *(a1 + 152) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x4000) == 0)
  {
LABEL_17:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = *(a2 + 120);
  v3 |= 0x4000uLL;
  *(a1 + 224) = v3;
  *(a1 + 120) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  v10 = *(a2 + 208);
  v3 |= 0x8000000uLL;
  *(a1 + 224) = v3;
  *(a1 + 208) = v10;
  v2 = *(a2 + 224);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_19:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  v11 = *(a2 + 204);
  v3 |= 0x4000000uLL;
  *(a1 + 224) = v3;
  *(a1 + 204) = v11;
  v2 = *(a2 + 224);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_20:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  v12 = *(a2 + 212);
  v3 |= 0x10000000uLL;
  *(a1 + 224) = v3;
  *(a1 + 212) = v12;
  v2 = *(a2 + 224);
  if ((v2 & 0x800000) == 0)
  {
LABEL_21:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  v13 = *(a2 + 192);
  v3 |= 0x800000uLL;
  *(a1 + 224) = v3;
  *(a1 + 192) = v13;
  v2 = *(a2 + 224);
  if ((v2 & 0x1000) == 0)
  {
LABEL_22:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = *(a2 + 104);
  v3 |= 0x1000uLL;
  *(a1 + 224) = v3;
  *(a1 + 104) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_23:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  v14 = *(a2 + 200);
  v3 |= 0x2000000uLL;
  *(a1 + 224) = v3;
  *(a1 + 200) = v14;
  v2 = *(a2 + 224);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_24:
    if ((v2 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  v15 = *(a2 + 196);
  v3 |= 0x1000000uLL;
  *(a1 + 224) = v3;
  *(a1 + 196) = v15;
  v2 = *(a2 + 224);
  if ((v2 & 8) == 0)
  {
LABEL_25:
    if ((v2 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = *(a2 + 32);
  v3 |= 8uLL;
  *(a1 + 224) = v3;
  *(a1 + 32) = result;
  v2 = *(a2 + 224);
  if ((v2 & 4) == 0)
  {
LABEL_26:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = *(a2 + 24);
  v3 |= 4uLL;
  *(a1 + 224) = v3;
  *(a1 + 24) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x10) == 0)
  {
LABEL_27:
    if ((v2 & 0x100000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = *(a2 + 40);
  v3 |= 0x10uLL;
  *(a1 + 224) = v3;
  *(a1 + 40) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x100000000) == 0)
  {
LABEL_28:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  v16 = *(a2 + 219);
  v3 |= 0x100000000uLL;
  *(a1 + 224) = v3;
  *(a1 + 219) = v16;
  v2 = *(a2 + 224);
  if ((v2 & 0x100) == 0)
  {
LABEL_29:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = *(a2 + 72);
  v3 |= 0x100uLL;
  *(a1 + 224) = v3;
  *(a1 + 72) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x800) == 0)
  {
LABEL_30:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = *(a2 + 96);
  v3 |= 0x800uLL;
  *(a1 + 224) = v3;
  *(a1 + 96) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x10000) == 0)
  {
LABEL_31:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = *(a2 + 136);
  v3 |= 0x10000uLL;
  *(a1 + 224) = v3;
  *(a1 + 136) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x20000) == 0)
  {
LABEL_32:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = *(a2 + 144);
  v3 |= 0x20000uLL;
  *(a1 + 224) = v3;
  *(a1 + 144) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x20) == 0)
  {
LABEL_33:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = *(a2 + 48);
  v3 |= 0x20uLL;
  *(a1 + 224) = v3;
  *(a1 + 48) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x400000) == 0)
  {
LABEL_34:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = *(a2 + 184);
  v3 |= 0x400000uLL;
  *(a1 + 224) = v3;
  *(a1 + 184) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x2000) == 0)
  {
LABEL_35:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = *(a2 + 112);
  v3 |= 0x2000uLL;
  *(a1 + 224) = v3;
  *(a1 + 112) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x100000) == 0)
  {
LABEL_36:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = *(a2 + 168);
  v3 |= 0x100000uLL;
  *(a1 + 224) = v3;
  *(a1 + 168) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x200) == 0)
  {
LABEL_37:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_71;
  }

LABEL_70:
  result = *(a2 + 80);
  v3 |= 0x200uLL;
  *(a1 + 224) = v3;
  *(a1 + 80) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x200000) == 0)
  {
LABEL_38:
    if ((v2 & 0x400) == 0)
    {
      return result;
    }

LABEL_72:
    result = *(a2 + 88);
    *(a1 + 224) = v3 | 0x400;
    *(a1 + 88) = result;
    return result;
  }

LABEL_71:
  result = *(a2 + 176);
  v3 |= 0x200000uLL;
  *(a1 + 224) = v3;
  *(a1 + 176) = result;
  if ((*(a2 + 224) & 0x400) != 0)
  {
    goto LABEL_72;
  }

  return result;
}

uint64_t sub_245F05EF8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 224);
  if (v5)
  {
    PB::TextFormatter::format(this, "emptyField0", *(a1 + 8));
    v5 = *(a1 + 224);
    if ((v5 & 0x20000000) == 0)
    {
LABEL_3:
      if ((v5 & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((v5 & 0x20000000) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 216);
  PB::TextFormatter::format(this, "emptyField1");
  v5 = *(a1 + 224);
  if ((v5 & 0x800000) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  v7 = *(a1 + 192);
  PB::TextFormatter::format(this, "emptyField2");
  v5 = *(a1 + 224);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "groundContactTime", *(a1 + 16));
  v5 = *(a1 + 224);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "groundContactTimeCadence", *(a1 + 24));
  v5 = *(a1 + 224);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "groundContactTimeGrade", *(a1 + 32));
  v5 = *(a1 + 224);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  v8 = *(a1 + 196);
  PB::TextFormatter::format(this, "groundContactTimeGradeSource");
  v5 = *(a1 + 224);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  v9 = *(a1 + 200);
  PB::TextFormatter::format(this, "groundContactTimeGradeType");
  v5 = *(a1 + 224);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  v10 = *(a1 + 217);
  PB::TextFormatter::format(this, "groundContactTimeIsValid");
  v5 = *(a1 + 224);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "groundContactTimePace", *(a1 + 40));
  v5 = *(a1 + 224);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  v11 = *(a1 + 204);
  PB::TextFormatter::format(this, "groundContactTimeReportingStatus");
  v5 = *(a1 + 224);
  if ((v5 & 0x20) == 0)
  {
LABEL_13:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "groundContactTimeUnsmoothed", *(a1 + 48));
  v5 = *(a1 + 224);
  if ((v5 & 0x40) == 0)
  {
LABEL_14:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "groundContactTimeWindowEndTime", *(a1 + 56));
  v5 = *(a1 + 224);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  v12 = *(a1 + 218);
  PB::TextFormatter::format(this, "isFlat");
  v5 = *(a1 + 224);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  v13 = *(a1 + 219);
  PB::TextFormatter::format(this, "isFormBasedStrideLength");
  v5 = *(a1 + 224);
  if ((v5 & 0x80) == 0)
  {
LABEL_17:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "strideLength", *(a1 + 64));
  v5 = *(a1 + 224);
  if ((v5 & 0x100) == 0)
  {
LABEL_18:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "strideLengthCadence", *(a1 + 72));
  v5 = *(a1 + 224);
  if ((v5 & 0x200) == 0)
  {
LABEL_19:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "strideLengthGrade", *(a1 + 80));
  v5 = *(a1 + 224);
  if ((v5 & 0x400) == 0)
  {
LABEL_20:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "strideLengthGradeType", *(a1 + 88));
  v5 = *(a1 + 224);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_21:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  v14 = *(a1 + 220);
  PB::TextFormatter::format(this, "strideLengthIsValid");
  v5 = *(a1 + 224);
  if ((v5 & 0x800) == 0)
  {
LABEL_22:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(this, "strideLengthPace", *(a1 + 96));
  v5 = *(a1 + 224);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  v15 = *(a1 + 208);
  PB::TextFormatter::format(this, "strideLengthReportingStatus");
  v5 = *(a1 + 224);
  if ((v5 & 0x1000) == 0)
  {
LABEL_24:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "strideLengthUncalibrated", *(a1 + 104));
  v5 = *(a1 + 224);
  if ((v5 & 0x2000) == 0)
  {
LABEL_25:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(this, "strideLengthUnsmoothed", *(a1 + 112));
  v5 = *(a1 + 224);
  if ((v5 & 0x4000) == 0)
  {
LABEL_26:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(this, "strideLengthWindowEndTime", *(a1 + 120));
  v5 = *(a1 + 224);
  if ((v5 & 0x8000) == 0)
  {
LABEL_27:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 128));
  v5 = *(a1 + 224);
  if ((v5 & 0x10000) == 0)
  {
LABEL_28:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(this, "verticalOscCadence", *(a1 + 136));
  v5 = *(a1 + 224);
  if ((v5 & 0x20000) == 0)
  {
LABEL_29:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(this, "verticalOscPace", *(a1 + 144));
  v5 = *(a1 + 224);
  if ((v5 & 0x40000) == 0)
  {
LABEL_30:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(this, "verticalOscWindowEndTime", *(a1 + 152));
  v5 = *(a1 + 224);
  if ((v5 & 0x80000) == 0)
  {
LABEL_31:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(this, "verticalOscillation", *(a1 + 160));
  v5 = *(a1 + 224);
  if ((v5 & 0x100000) == 0)
  {
LABEL_32:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(this, "verticalOscillationGrade", *(a1 + 168));
  v5 = *(a1 + 224);
  if ((v5 & 0x200000) == 0)
  {
LABEL_33:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(this, "verticalOscillationGradeType", *(a1 + 176));
  v5 = *(a1 + 224);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_72:
  v16 = *(a1 + 221);
  PB::TextFormatter::format(this, "verticalOscillationIsValid");
  v5 = *(a1 + 224);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_73:
  v17 = *(a1 + 212);
  PB::TextFormatter::format(this, "verticalOscillationReportingStatus");
  if ((*(a1 + 224) & 0x400000) != 0)
  {
LABEL_36:
    PB::TextFormatter::format(this, "verticalOscillationUnsmoothed", *(a1 + 184));
  }

LABEL_37:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245F0639C(uint64_t a1, PB::Reader *this)
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
        goto LABEL_244;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 224) |= 0x40uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_209;
        case 2u:
          *(a1 + 224) |= 0x80uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_209;
        case 3u:
          *(a1 + 224) |= 0x200000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v43 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v42 = *(*this + v2++);
            *(this + 1) = v2;
            v43 = v42 != 0;
          }

          *(a1 + 220) = v43;
          goto LABEL_210;
        case 4u:
          *(a1 + 224) |= 2uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_209;
        case 5u:
          *(a1 + 224) |= 0x40000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v39 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v38 = *(*this + v2++);
            *(this + 1) = v2;
            v39 = v38 != 0;
          }

          *(a1 + 217) = v39;
          goto LABEL_210;
        case 6u:
          *(a1 + 224) |= 0x80000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 160) = *(*this + v2);
          goto LABEL_209;
        case 7u:
          *(a1 + 224) |= 0x400000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v61 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v60 = *(*this + v2++);
            *(this + 1) = v2;
            v61 = v60 != 0;
          }

          *(a1 + 221) = v61;
          goto LABEL_210;
        case 8u:
          *(a1 + 224) |= 1uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_209;
        case 9u:
          *(a1 + 224) |= 0x20000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v71 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v70 = *(*this + v2++);
            *(this + 1) = v2;
            v71 = v70 != 0;
          }

          *(a1 + 216) = v71;
          goto LABEL_210;
        case 0xAu:
          *(a1 + 224) |= 0x80000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v41 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v40 = *(*this + v2++);
            *(this + 1) = v2;
            v41 = v40 != 0;
          }

          *(a1 + 218) = v41;
          goto LABEL_210;
        case 0xBu:
          *(a1 + 224) |= 0x8000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 128) = *(*this + v2);
          goto LABEL_209;
        case 0xCu:
          *(a1 + 224) |= 0x40000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 152) = *(*this + v2);
          goto LABEL_209;
        case 0xDu:
          *(a1 + 224) |= 0x4000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 120) = *(*this + v2);
          goto LABEL_209;
        case 0xEu:
          *(a1 + 224) |= 0x8000000uLL;
          v52 = *(this + 1);
          v2 = *(this + 2);
          v53 = *this;
          if (v52 > 0xFFFFFFFFFFFFFFF5 || v52 + 10 > v2)
          {
            v103 = 0;
            v104 = 0;
            v56 = 0;
            if (v2 <= v52)
            {
              v2 = *(this + 1);
            }

            v105 = v2 - v52;
            v106 = (v53 + v52);
            v107 = v52 + 1;
            while (1)
            {
              if (!v105)
              {
                LODWORD(v56) = 0;
                *(this + 24) = 1;
                goto LABEL_234;
              }

              v108 = v107;
              v109 = *v106;
              *(this + 1) = v108;
              v56 |= (v109 & 0x7F) << v103;
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
                LODWORD(v56) = 0;
LABEL_233:
                v2 = v108;
                goto LABEL_234;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v56) = 0;
            }

            goto LABEL_233;
          }

          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = (v53 + v52);
          v58 = v52 + 1;
          do
          {
            v2 = v58;
            *(this + 1) = v58;
            v59 = *v57++;
            v56 |= (v59 & 0x7F) << v54;
            if ((v59 & 0x80) == 0)
            {
              goto LABEL_234;
            }

            v54 += 7;
            ++v58;
            v14 = v55++ > 8;
          }

          while (!v14);
          LODWORD(v56) = 0;
LABEL_234:
          *(a1 + 208) = v56;
          goto LABEL_210;
        case 0xFu:
          *(a1 + 224) |= 0x4000000uLL;
          v30 = *(this + 1);
          v2 = *(this + 2);
          v31 = *this;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v89 = 0;
            v90 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(this + 1);
            }

            v91 = v2 - v30;
            v92 = (v31 + v30);
            v93 = v30 + 1;
            while (1)
            {
              if (!v91)
              {
                LODWORD(v34) = 0;
                *(this + 24) = 1;
                goto LABEL_226;
              }

              v94 = v93;
              v95 = *v92;
              *(this + 1) = v94;
              v34 |= (v95 & 0x7F) << v89;
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
                LODWORD(v34) = 0;
LABEL_225:
                v2 = v94;
                goto LABEL_226;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_225;
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
              goto LABEL_226;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_226:
          *(a1 + 204) = v34;
          goto LABEL_210;
        case 0x10u:
          *(a1 + 224) |= 0x10000000uLL;
          v44 = *(this + 1);
          v2 = *(this + 2);
          v45 = *this;
          if (v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v2)
          {
            v96 = 0;
            v97 = 0;
            v48 = 0;
            if (v2 <= v44)
            {
              v2 = *(this + 1);
            }

            v98 = v2 - v44;
            v99 = (v45 + v44);
            v100 = v44 + 1;
            while (1)
            {
              if (!v98)
              {
                LODWORD(v48) = 0;
                *(this + 24) = 1;
                goto LABEL_230;
              }

              v101 = v100;
              v102 = *v99;
              *(this + 1) = v101;
              v48 |= (v102 & 0x7F) << v96;
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
                LODWORD(v48) = 0;
LABEL_229:
                v2 = v101;
                goto LABEL_230;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v48) = 0;
            }

            goto LABEL_229;
          }

          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = (v45 + v44);
          v50 = v44 + 1;
          do
          {
            v2 = v50;
            *(this + 1) = v50;
            v51 = *v49++;
            v48 |= (v51 & 0x7F) << v46;
            if ((v51 & 0x80) == 0)
            {
              goto LABEL_230;
            }

            v46 += 7;
            ++v50;
            v14 = v47++ > 8;
          }

          while (!v14);
          LODWORD(v48) = 0;
LABEL_230:
          *(a1 + 212) = v48;
          goto LABEL_210;
        case 0x11u:
          *(a1 + 224) |= 0x800000uLL;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v82 = 0;
            v83 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v84 = v2 - v22;
            v85 = (v23 + v22);
            v86 = v22 + 1;
            while (1)
            {
              if (!v84)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_222;
              }

              v87 = v86;
              v88 = *v85;
              *(this + 1) = v87;
              v26 |= (v88 & 0x7F) << v82;
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
                LODWORD(v26) = 0;
LABEL_221:
                v2 = v87;
                goto LABEL_222;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_221;
          }

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
              goto LABEL_222;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_222:
          *(a1 + 192) = v26;
          goto LABEL_210;
        case 0x12u:
          *(a1 + 224) |= 0x1000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_209;
        case 0x13u:
          *(a1 + 224) |= 0x2000000uLL;
          v62 = *(this + 1);
          v2 = *(this + 2);
          v63 = *this;
          if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v2)
          {
            v110 = 0;
            v111 = 0;
            v66 = 0;
            if (v2 <= v62)
            {
              v2 = *(this + 1);
            }

            v112 = v2 - v62;
            v113 = (v63 + v62);
            v114 = v62 + 1;
            while (1)
            {
              if (!v112)
              {
                LODWORD(v66) = 0;
                *(this + 24) = 1;
                goto LABEL_238;
              }

              v115 = v114;
              v116 = *v113;
              *(this + 1) = v115;
              v66 |= (v116 & 0x7F) << v110;
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
                LODWORD(v66) = 0;
LABEL_237:
                v2 = v115;
                goto LABEL_238;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v66) = 0;
            }

            goto LABEL_237;
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
              goto LABEL_238;
            }

            v64 += 7;
            ++v68;
            v14 = v65++ > 8;
          }

          while (!v14);
          LODWORD(v66) = 0;
LABEL_238:
          *(a1 + 200) = v66;
          goto LABEL_210;
        case 0x14u:
          *(a1 + 224) |= 0x1000000uLL;
          v72 = *(this + 1);
          v2 = *(this + 2);
          v73 = *this;
          if (v72 > 0xFFFFFFFFFFFFFFF5 || v72 + 10 > v2)
          {
            v117 = 0;
            v118 = 0;
            v76 = 0;
            if (v2 <= v72)
            {
              v2 = *(this + 1);
            }

            v119 = v2 - v72;
            v120 = (v73 + v72);
            v121 = v72 + 1;
            while (1)
            {
              if (!v119)
              {
                LODWORD(v76) = 0;
                *(this + 24) = 1;
                goto LABEL_242;
              }

              v122 = v121;
              v123 = *v120;
              *(this + 1) = v122;
              v76 |= (v123 & 0x7F) << v117;
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
                LODWORD(v76) = 0;
LABEL_241:
                v2 = v122;
                goto LABEL_242;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v76) = 0;
            }

            goto LABEL_241;
          }

          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = (v73 + v72);
          v78 = v72 + 1;
          do
          {
            v2 = v78;
            *(this + 1) = v78;
            v79 = *v77++;
            v76 |= (v79 & 0x7F) << v74;
            if ((v79 & 0x80) == 0)
            {
              goto LABEL_242;
            }

            v74 += 7;
            ++v78;
            v14 = v75++ > 8;
          }

          while (!v14);
          LODWORD(v76) = 0;
LABEL_242:
          *(a1 + 196) = v76;
          goto LABEL_210;
        case 0x15u:
          *(a1 + 224) |= 8uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_209;
        case 0x16u:
          *(a1 + 224) |= 4uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_209;
        case 0x17u:
          *(a1 + 224) |= 0x10uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_209;
        case 0x18u:
          *(a1 + 224) |= 0x100000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v81 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v80 = *(*this + v2++);
            *(this + 1) = v2;
            v81 = v80 != 0;
          }

          *(a1 + 219) = v81;
          goto LABEL_210;
        case 0x19u:
          *(a1 + 224) |= 0x100uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_209;
        case 0x1Au:
          *(a1 + 224) |= 0x800uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_209;
        case 0x1Bu:
          *(a1 + 224) |= 0x10000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 136) = *(*this + v2);
          goto LABEL_209;
        case 0x1Cu:
          *(a1 + 224) |= 0x20000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 144) = *(*this + v2);
          goto LABEL_209;
        case 0x1Du:
          *(a1 + 224) |= 0x20uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_209;
        case 0x1Eu:
          *(a1 + 224) |= 0x400000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 184) = *(*this + v2);
          goto LABEL_209;
        case 0x1Fu:
          *(a1 + 224) |= 0x2000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_209;
        case 0x20u:
          *(a1 + 224) |= 0x100000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 168) = *(*this + v2);
          goto LABEL_209;
        case 0x21u:
          *(a1 + 224) |= 0x200uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_209;
        case 0x22u:
          *(a1 + 224) |= 0x200000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 176) = *(*this + v2);
          goto LABEL_209;
        case 0x23u:
          *(a1 + 224) |= 0x400uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_145:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 88) = *(*this + v2);
LABEL_209:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_210;
        default:
          if (!PB::Reader::skip(this))
          {
            v124 = 0;
            return v124 & 1;
          }

          v2 = *(this + 1);
LABEL_210:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_244;
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

LABEL_244:
  v124 = v4 ^ 1;
  return v124 & 1;
}

uint64_t sub_245F072B4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 224);
  if ((v4 & 0x40) != 0)
  {
    result = PB::Writer::write(this, *(result + 56));
    v4 = *(v3 + 224);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 0x200000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 224);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  v5 = *(v3 + 220);
  result = PB::Writer::write(this);
  v4 = *(v3 + 224);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 224);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  v6 = *(v3 + 217);
  result = PB::Writer::write(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x80000) == 0)
  {
LABEL_7:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 160));
  v4 = *(v3 + 224);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  v7 = *(v3 + 221);
  result = PB::Writer::write(this);
  v4 = *(v3 + 224);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 224);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_10:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  v8 = *(v3 + 216);
  result = PB::Writer::write(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_11:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  v9 = *(v3 + 218);
  result = PB::Writer::write(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x8000) == 0)
  {
LABEL_12:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 224);
  if ((v4 & 0x40000) == 0)
  {
LABEL_13:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 152));
  v4 = *(v3 + 224);
  if ((v4 & 0x4000) == 0)
  {
LABEL_14:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 224);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  v10 = *(v3 + 208);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_16:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  v11 = *(v3 + 204);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  v12 = *(v3 + 212);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x800000) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  v13 = *(v3 + 192);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 224);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_20:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  v14 = *(v3 + 200);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_21:
    if ((v4 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  v15 = *(v3 + 196);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 8) == 0)
  {
LABEL_22:
    if ((v4 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 224);
  if ((v4 & 4) == 0)
  {
LABEL_23:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 224);
  if ((v4 & 0x10) == 0)
  {
LABEL_24:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 224);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  v16 = *(v3 + 219);
  result = PB::Writer::write(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x100) == 0)
  {
LABEL_26:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 224);
  if ((v4 & 0x800) == 0)
  {
LABEL_27:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 224);
  if ((v4 & 0x10000) == 0)
  {
LABEL_28:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 224);
  if ((v4 & 0x20000) == 0)
  {
LABEL_29:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 224);
  if ((v4 & 0x20) == 0)
  {
LABEL_30:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 224);
  if ((v4 & 0x400000) == 0)
  {
LABEL_31:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = PB::Writer::write(this, *(v3 + 184));
  v4 = *(v3 + 224);
  if ((v4 & 0x2000) == 0)
  {
LABEL_32:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 224);
  if ((v4 & 0x100000) == 0)
  {
LABEL_33:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = PB::Writer::write(this, *(v3 + 168));
  v4 = *(v3 + 224);
  if ((v4 & 0x200) == 0)
  {
LABEL_34:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_35;
    }

LABEL_70:
    result = PB::Writer::write(this, *(v3 + 176));
    if ((*(v3 + 224) & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_71;
  }

LABEL_69:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 224);
  if ((v4 & 0x200000) != 0)
  {
    goto LABEL_70;
  }

LABEL_35:
  if ((v4 & 0x400) == 0)
  {
    return result;
  }

LABEL_71:
  v17 = *(v3 + 88);

  return PB::Writer::write(this, v17);
}

uint64_t sub_245F076C0(uint64_t result)
{
  *result = &unk_2858D6270;
  *(result + 128) = 0;
  return result;
}

void sub_245F076E8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245F07720(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D6270;
  *(result + 128) = 0;
  v2 = *(a2 + 128);
  if ((v2 & 0x40) != 0)
  {
    v4 = *(a2 + 56);
    v3 = 64;
    *(result + 128) = 64;
    *(result + 56) = v4;
    v2 = *(a2 + 128);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x20) != 0)
  {
LABEL_5:
    v5 = *(a2 + 48);
    v3 |= 0x20u;
    *(result + 128) = v3;
    *(result + 48) = v5;
    v2 = *(a2 + 128);
  }

LABEL_6:
  if ((v2 & 0x100) != 0)
  {
    v6 = *(a2 + 72);
    v3 |= 0x100u;
    *(result + 128) = v3;
    *(result + 72) = v6;
    v2 = *(a2 + 128);
    if ((v2 & 0x100000) == 0)
    {
LABEL_8:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  else if ((v2 & 0x100000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 124);
  v3 |= 0x100000u;
  *(result + 128) = v3;
  *(result + 124) = v7;
  v2 = *(a2 + 128);
  if ((v2 & 0x800) == 0)
  {
LABEL_9:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v8 = *(a2 + 96);
  v3 |= 0x800u;
  *(result + 128) = v3;
  *(result + 96) = v8;
  v2 = *(a2 + 128);
  if ((v2 & 0x400) == 0)
  {
LABEL_10:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v9 = *(a2 + 88);
  v3 |= 0x400u;
  *(result + 128) = v3;
  *(result + 88) = v9;
  v2 = *(a2 + 128);
  if ((v2 & 0x2000) == 0)
  {
LABEL_11:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v10 = *(a2 + 108);
  v3 |= 0x2000u;
  *(result + 128) = v3;
  *(result + 108) = v10;
  v2 = *(a2 + 128);
  if ((v2 & 0x1000) == 0)
  {
LABEL_12:
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  v11 = *(a2 + 104);
  v3 |= 0x1000u;
  *(result + 128) = v3;
  *(result + 104) = v11;
  v2 = *(a2 + 128);
  if ((v2 & 2) == 0)
  {
LABEL_13:
    if ((v2 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  v12 = *(a2 + 16);
  v3 |= 2u;
  *(result + 128) = v3;
  *(result + 16) = v12;
  v2 = *(a2 + 128);
  if ((v2 & 8) == 0)
  {
LABEL_14:
    if ((v2 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v13 = *(a2 + 32);
  v3 |= 8u;
  *(result + 128) = v3;
  *(result + 32) = v13;
  v2 = *(a2 + 128);
  if ((v2 & 4) == 0)
  {
LABEL_15:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v14 = *(a2 + 24);
  v3 |= 4u;
  *(result + 128) = v3;
  *(result + 24) = v14;
  v2 = *(a2 + 128);
  if ((v2 & 0x80000) == 0)
  {
LABEL_16:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v15 = *(a2 + 123);
  v3 |= 0x80000u;
  *(result + 128) = v3;
  *(result + 123) = v15;
  v2 = *(a2 + 128);
  if ((v2 & 0x10) == 0)
  {
LABEL_17:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  v16 = *(a2 + 40);
  v3 |= 0x10u;
  *(result + 128) = v3;
  *(result + 40) = v16;
  v2 = *(a2 + 128);
  if ((v2 & 0x200) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  v17 = *(a2 + 80);
  v3 |= 0x200u;
  *(result + 128) = v3;
  *(result + 80) = v17;
  v2 = *(a2 + 128);
  if ((v2 & 0x80) == 0)
  {
LABEL_19:
    if ((v2 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  v18 = *(a2 + 64);
  v3 |= 0x80u;
  *(result + 128) = v3;
  *(result + 64) = v18;
  v2 = *(a2 + 128);
  if ((v2 & 1) == 0)
  {
LABEL_20:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_40:
  v19 = *(a2 + 8);
  v3 |= 1u;
  *(result + 128) = v3;
  *(result + 8) = v19;
  v2 = *(a2 + 128);
  if ((v2 & 0x200000) == 0)
  {
LABEL_21:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_41:
  v20 = *(a2 + 125);
  v3 |= 0x200000u;
  *(result + 128) = v3;
  *(result + 125) = v20;
  v2 = *(a2 + 128);
  if ((v2 & 0x20000) == 0)
  {
LABEL_22:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_43;
  }

LABEL_42:
  v21 = *(a2 + 121);
  v3 |= 0x20000u;
  *(result + 128) = v3;
  *(result + 121) = v21;
  v2 = *(a2 + 128);
  if ((v2 & 0x8000) == 0)
  {
LABEL_23:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_43:
  v22 = *(a2 + 116);
  v3 |= 0x8000u;
  *(result + 128) = v3;
  *(result + 116) = v22;
  v2 = *(a2 + 128);
  if ((v2 & 0x10000) == 0)
  {
LABEL_24:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_45;
  }

LABEL_44:
  v23 = *(a2 + 120);
  v3 |= 0x10000u;
  *(result + 128) = v3;
  *(result + 120) = v23;
  v2 = *(a2 + 128);
  if ((v2 & 0x40000) == 0)
  {
LABEL_25:
    if ((v2 & 0x4000) == 0)
    {
      return result;
    }

LABEL_46:
    v25 = *(a2 + 112);
    *(result + 128) = v3 | 0x4000;
    *(result + 112) = v25;
    return result;
  }

LABEL_45:
  v24 = *(a2 + 122);
  v3 |= 0x40000u;
  *(result + 128) = v3;
  *(result + 122) = v24;
  if ((*(a2 + 128) & 0x4000) != 0)
  {
    goto LABEL_46;
  }

  return result;
}

uint64_t sub_245F079B4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 128);
  if ((v5 & 0x1000) != 0)
  {
    v6 = *(a1 + 104);
    PB::TextFormatter::format(this, "activityType");
    v5 = *(a1 + 128);
    if ((v5 & 0x2000) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 108);
  PB::TextFormatter::format(this, "activityTypeWithoutOverride");
  v5 = *(a1 + 128);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "currentCadence", *(a1 + 8));
  v5 = *(a1 + 128);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "currentPace", *(a1 + 16));
  v5 = *(a1 + 128);
  if ((v5 & 0x4000) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  v8 = *(a1 + 112);
  PB::TextFormatter::format(this, "elevationSource");
  v5 = *(a1 + 128);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "eta", *(a1 + 24));
  v5 = *(a1 + 128);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "grade", *(a1 + 32));
  v5 = *(a1 + 128);
  if ((v5 & 0x8000) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  v9 = *(a1 + 116);
  PB::TextFormatter::format(this, "gradeOnsetCounter");
  v5 = *(a1 + 128);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "horizSpeed", *(a1 + 40));
  v5 = *(a1 + 128);
  if ((v5 & 0x10000) == 0)
  {
LABEL_11:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  v10 = *(a1 + 120);
  PB::TextFormatter::format(this, "isArmConstrainedStateValid");
  v5 = *(a1 + 128);
  if ((v5 & 0x20000) == 0)
  {
LABEL_12:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  v11 = *(a1 + 121);
  PB::TextFormatter::format(this, "isGradeOnsetEscalated");
  v5 = *(a1 + 128);
  if ((v5 & 0x40000) == 0)
  {
LABEL_13:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  v12 = *(a1 + 122);
  PB::TextFormatter::format(this, "isRunning");
  v5 = *(a1 + 128);
  if ((v5 & 0x80000) == 0)
  {
LABEL_14:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  v13 = *(a1 + 123);
  PB::TextFormatter::format(this, "isValid");
  v5 = *(a1 + 128);
  if ((v5 & 0x100000) == 0)
  {
LABEL_15:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  v14 = *(a1 + 124);
  PB::TextFormatter::format(this, "isWeightSet");
  v5 = *(a1 + 128);
  if ((v5 & 0x200000) == 0)
  {
LABEL_16:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  v15 = *(a1 + 125);
  PB::TextFormatter::format(this, "isWorkoutSelected");
  v5 = *(a1 + 128);
  if ((v5 & 0x20) == 0)
  {
LABEL_17:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "powerWattage", *(a1 + 48));
  v5 = *(a1 + 128);
  if ((v5 & 0x40) == 0)
  {
LABEL_18:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "startTime", *(a1 + 56));
  v5 = *(a1 + 128);
  if ((v5 & 0x80) == 0)
  {
LABEL_19:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "userHeight", *(a1 + 64));
  v5 = *(a1 + 128);
  if ((v5 & 0x100) == 0)
  {
LABEL_20:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "userWeight", *(a1 + 72));
  v5 = *(a1 + 128);
  if ((v5 & 0x200) == 0)
  {
LABEL_21:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "verticalSpeed", *(a1 + 80));
  v5 = *(a1 + 128);
  if ((v5 & 0x400) == 0)
  {
LABEL_22:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_47:
  PB::TextFormatter::format(this, "wLoad", *(a1 + 88));
  if ((*(a1 + 128) & 0x800) != 0)
  {
LABEL_23:
    PB::TextFormatter::format(this, "workrateMETs", *(a1 + 96));
  }

LABEL_24:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245F07CB8(uint64_t a1, PB::Reader *this)
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
        goto LABEL_171;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 128) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_146;
        case 2u:
          *(a1 + 128) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_146;
        case 3u:
          *(a1 + 128) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_146;
        case 4u:
          *(a1 + 128) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v27 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v26 = *(*this + v2++);
            *(this + 1) = v2;
            v27 = v26 != 0;
          }

          *(a1 + 124) = v27;
          goto LABEL_167;
        case 5u:
          *(a1 + 128) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_146;
        case 6u:
          *(a1 + 128) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_146;
        case 7u:
          *(a1 + 128) |= 0x2000u;
          v48 = *(this + 1);
          v2 = *(this + 2);
          v49 = *this;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v80 = 0;
            v81 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v2 = *(this + 1);
            }

            v82 = v2 - v48;
            v83 = (v49 + v48);
            v84 = v48 + 1;
            while (1)
            {
              if (!v82)
              {
                LODWORD(v52) = 0;
                *(this + 24) = 1;
                goto LABEL_162;
              }

              v85 = v84;
              v86 = *v83;
              *(this + 1) = v85;
              v52 |= (v86 & 0x7F) << v80;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v80 += 7;
              --v82;
              ++v83;
              v84 = v85 + 1;
              v14 = v81++ > 8;
              if (v14)
              {
                LODWORD(v52) = 0;
LABEL_161:
                v2 = v85;
                goto LABEL_162;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_161;
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
              goto LABEL_162;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_162:
          *(a1 + 108) = v52;
          goto LABEL_167;
        case 8u:
          *(a1 + 128) |= 0x1000u;
          v28 = *(this + 1);
          v2 = *(this + 2);
          v29 = *this;
          if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v2)
          {
            v66 = 0;
            v67 = 0;
            v32 = 0;
            if (v2 <= v28)
            {
              v2 = *(this + 1);
            }

            v68 = v2 - v28;
            v69 = (v29 + v28);
            v70 = v28 + 1;
            while (1)
            {
              if (!v68)
              {
                LODWORD(v32) = 0;
                *(this + 24) = 1;
                goto LABEL_154;
              }

              v71 = v70;
              v72 = *v69;
              *(this + 1) = v71;
              v32 |= (v72 & 0x7F) << v66;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              --v68;
              ++v69;
              v70 = v71 + 1;
              v14 = v67++ > 8;
              if (v14)
              {
                LODWORD(v32) = 0;
LABEL_153:
                v2 = v71;
                goto LABEL_154;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v32) = 0;
            }

            goto LABEL_153;
          }

          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = (v29 + v28);
          v34 = v28 + 1;
          do
          {
            v2 = v34;
            *(this + 1) = v34;
            v35 = *v33++;
            v32 |= (v35 & 0x7F) << v30;
            if ((v35 & 0x80) == 0)
            {
              goto LABEL_154;
            }

            v30 += 7;
            ++v34;
            v14 = v31++ > 8;
          }

          while (!v14);
          LODWORD(v32) = 0;
LABEL_154:
          *(a1 + 104) = v32;
          goto LABEL_167;
        case 9u:
          *(a1 + 128) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_146;
        case 0xAu:
          *(a1 + 128) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_146;
        case 0xBu:
          *(a1 + 128) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_146;
        case 0xCu:
          *(a1 + 128) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v25 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v24 = *(*this + v2++);
            *(this + 1) = v2;
            v25 = v24 != 0;
          }

          *(a1 + 123) = v25;
          goto LABEL_167;
        case 0xDu:
          *(a1 + 128) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_146;
        case 0xEu:
          *(a1 + 128) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_146;
        case 0xFu:
          *(a1 + 128) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_146;
        case 0x10u:
          *(a1 + 128) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_96:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 8) = *(*this + v2);
LABEL_146:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_167;
        case 0x11u:
          *(a1 + 128) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v23 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v22 = *(*this + v2++);
            *(this + 1) = v2;
            v23 = v22 != 0;
          }

          *(a1 + 125) = v23;
          goto LABEL_167;
        case 0x12u:
          *(a1 + 128) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v37 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v36 = *(*this + v2++);
            *(this + 1) = v2;
            v37 = v36 != 0;
          }

          *(a1 + 121) = v37;
          goto LABEL_167;
        case 0x13u:
          *(a1 + 128) |= 0x8000u;
          v56 = *(this + 1);
          v2 = *(this + 2);
          v57 = *this;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v87 = 0;
            v88 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v2 = *(this + 1);
            }

            v89 = v2 - v56;
            v90 = (v57 + v56);
            v91 = v56 + 1;
            while (1)
            {
              if (!v89)
              {
                LODWORD(v60) = 0;
                *(this + 24) = 1;
                goto LABEL_166;
              }

              v92 = v91;
              v93 = *v90;
              *(this + 1) = v92;
              v60 |= (v93 & 0x7F) << v87;
              if ((v93 & 0x80) == 0)
              {
                break;
              }

              v87 += 7;
              --v89;
              ++v90;
              v91 = v92 + 1;
              v14 = v88++ > 8;
              if (v14)
              {
                LODWORD(v60) = 0;
LABEL_165:
                v2 = v92;
                goto LABEL_166;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v60) = 0;
            }

            goto LABEL_165;
          }

          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = (v57 + v56);
          v62 = v56 + 1;
          do
          {
            v2 = v62;
            *(this + 1) = v62;
            v63 = *v61++;
            v60 |= (v63 & 0x7F) << v58;
            if ((v63 & 0x80) == 0)
            {
              goto LABEL_166;
            }

            v58 += 7;
            ++v62;
            v14 = v59++ > 8;
          }

          while (!v14);
          LODWORD(v60) = 0;
LABEL_166:
          *(a1 + 116) = v60;
          goto LABEL_167;
        case 0x14u:
          *(a1 + 128) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v65 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v64 = *(*this + v2++);
            *(this + 1) = v2;
            v65 = v64 != 0;
          }

          *(a1 + 120) = v65;
          goto LABEL_167;
        case 0x15u:
          *(a1 + 128) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v39 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v38 = *(*this + v2++);
            *(this + 1) = v2;
            v39 = v38 != 0;
          }

          *(a1 + 122) = v39;
          goto LABEL_167;
        case 0x16u:
          *(a1 + 128) |= 0x4000u;
          v40 = *(this + 1);
          v2 = *(this + 2);
          v41 = *this;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v73 = 0;
            v74 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v2 = *(this + 1);
            }

            v75 = v2 - v40;
            v76 = (v41 + v40);
            v77 = v40 + 1;
            while (1)
            {
              if (!v75)
              {
                LODWORD(v44) = 0;
                *(this + 24) = 1;
                goto LABEL_158;
              }

              v78 = v77;
              v79 = *v76;
              *(this + 1) = v78;
              v44 |= (v79 & 0x7F) << v73;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v73 += 7;
              --v75;
              ++v76;
              v77 = v78 + 1;
              v14 = v74++ > 8;
              if (v14)
              {
                LODWORD(v44) = 0;
LABEL_157:
                v2 = v78;
                goto LABEL_158;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v44) = 0;
            }

            goto LABEL_157;
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
              goto LABEL_158;
            }

            v42 += 7;
            ++v46;
            v14 = v43++ > 8;
          }

          while (!v14);
          LODWORD(v44) = 0;
LABEL_158:
          *(a1 + 112) = v44;
          goto LABEL_167;
        default:
          if (!PB::Reader::skip(this))
          {
            v94 = 0;
            return v94 & 1;
          }

          v2 = *(this + 1);
LABEL_167:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_171;
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

LABEL_171:
  v94 = v4 ^ 1;
  return v94 & 1;
}

uint64_t sub_245F08704(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 128);
  if ((v4 & 0x40) != 0)
  {
    result = PB::Writer::write(this, *(result + 56));
    v4 = *(v3 + 128);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 128);
  if ((v4 & 0x100) == 0)
  {
LABEL_4:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 128);
  if ((v4 & 0x100000) == 0)
  {
LABEL_5:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  v5 = *(v3 + 124);
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x800) == 0)
  {
LABEL_6:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 128);
  if ((v4 & 0x400) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 128);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  v6 = *(v3 + 108);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x1000) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  v7 = *(v3 + 104);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 128);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 128);
  if ((v4 & 8) == 0)
  {
LABEL_11:
    if ((v4 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 128);
  if ((v4 & 4) == 0)
  {
LABEL_12:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 128);
  if ((v4 & 0x80000) == 0)
  {
LABEL_13:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v8 = *(v3 + 123);
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x10) == 0)
  {
LABEL_14:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 128);
  if ((v4 & 0x200) == 0)
  {
LABEL_15:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 128);
  if ((v4 & 0x80) == 0)
  {
LABEL_16:
    if ((v4 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 128);
  if ((v4 & 1) == 0)
  {
LABEL_17:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 128);
  if ((v4 & 0x200000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  v9 = *(v3 + 125);
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x20000) == 0)
  {
LABEL_19:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  v10 = *(v3 + 121);
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x8000) == 0)
  {
LABEL_20:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  v11 = *(v3 + 116);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x10000) == 0)
  {
LABEL_21:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

LABEL_44:
    v13 = *(v3 + 122);
    result = PB::Writer::write(this);
    if ((*(v3 + 128) & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_45;
  }

LABEL_43:
  v12 = *(v3 + 120);
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x40000) != 0)
  {
    goto LABEL_44;
  }

LABEL_22:
  if ((v4 & 0x4000) == 0)
  {
    return result;
  }

LABEL_45:
  v14 = *(v3 + 112);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245F089A4(uint64_t result)
{
  *result = &unk_2858D62A8;
  *(result + 48) = 0;
  return result;
}

void sub_245F089CC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245F08A04(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D62A8;
  *(a1 + 48) = 0;
  v2 = *(a2 + 48);
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 32);
    v3 = 8;
    *(a1 + 48) = 8;
    *(a1 + 32) = result;
    v2 = *(a2 + 48);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 48) & 0x10) != 0)
  {
LABEL_5:
    result = *(a2 + 40);
    v3 |= 0x10u;
    *(a1 + 48) = v3;
    *(a1 + 40) = result;
    v2 = *(a2 + 48);
  }

LABEL_6:
  if (v2)
  {
    result = *(a2 + 8);
    v3 |= 1u;
    *(a1 + 48) = v3;
    *(a1 + 8) = result;
    v2 = *(a2 + 48);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_12:
      result = *(a2 + 24);
      *(a1 + 48) = v3 | 4;
      *(a1 + 24) = result;
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 16);
  v3 |= 2u;
  *(a1 + 48) = v3;
  *(a1 + 16) = result;
  if ((*(a2 + 48) & 4) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_245F08ABC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 48);
  if (v5)
  {
    PB::TextFormatter::format(this, "primaryAxisX", *(a1 + 8));
    v5 = *(a1 + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a1 + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "primaryAxisY", *(a1 + 16));
  v5 = *(a1 + 48);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(this, "primaryAxisZ", *(a1 + 24));
  v5 = *(a1 + 48);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(this, "startTime", *(a1 + 32));
  if ((*(a1 + 48) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  }

LABEL_7:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245F08BA0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_51;
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
      if ((v10 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 48) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_42:
            *(this + 24) = 1;
            goto LABEL_47;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_46;
        }

        if (v22 == 2)
        {
          *(a1 + 48) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_42;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_46;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 48) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_42;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_46;
          case 4:
            *(a1 + 48) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_42;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_46;
          case 5:
            *(a1 + 48) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_42;
            }

            *(a1 + 24) = *(*this + v2);
LABEL_46:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_47;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_47:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_51:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245F08E68(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 48);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 48) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 48);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = PB::Writer::write(this, *(v3 + 16));
    if ((*(v3 + 48) & 4) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 48);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_11:
  v5 = *(v3 + 24);

  return PB::Writer::write(this, v5);
}

float sub_245F0989C(unsigned int a1, unint64_t a2, float a3)
{
  result = a3 / (vcvts_n_f32_s32(a1, 2uLL) / (a2 >> 1));
  if (result > (a2 - 1))
  {
    return (a2 - 1);
  }

  return result;
}

uint64_t sub_245F098C4(uint64_t a1)
{
  *(a1 + 144) = a1 + 152;
  *(a1 + 8) = 256;
  *a1 = 8;
  v2 = 0x100000000;
  v3 = 152;
  v11 = vdupq_n_s64(0x3F80000000000000uLL);
  v12 = vdupq_n_s64(0x400921FB54442D18uLL);
  do
  {
    v4 = vneg_s32(v2);
    v5.i64[0] = v4.i32[0];
    v5.i64[1] = v4.i32[1];
    v6 = vcvt_f32_f64(vmulq_f64(vmulq_f64(vcvtq_f64_s64(v5), v12), v11));
    v13 = v6.f32[0];
    v7 = __sincosf_stret(v6.f32[1]);
    v8 = __sincosf_stret(v13);
    v14.val[1] = __PAIR64__(LODWORD(v7.__sinval), LODWORD(v8.__sinval));
    v14.val[0] = __PAIR64__(LODWORD(v7.__cosval), LODWORD(v8.__cosval));
    v9 = (a1 + v3);
    vst2_f32(v9, v14);
    v2 = vadd_s32(v2, 0x200000002);
    v3 += 16;
  }

  while (v3 != 2200);
  sub_245F099B4(256, (a1 + 16));
  return a1;
}

uint64_t sub_245F099B4(uint64_t result, int *a2)
{
  v2 = sqrtf(result);
  v3 = 4;
  do
  {
    while (result % v3)
    {
      v4 = v3 + 2;
      if (v3 == 2)
      {
        v4 = 3;
      }

      if (v3 == 4)
      {
        v3 = 2;
      }

      else
      {
        v3 = v4;
      }

      if (v2 < v3)
      {
        v3 = result;
      }
    }

    result = (result / v3);
    *a2 = v3;
    a2[1] = result;
    a2 += 2;
  }

  while (result > 1);
  return result;
}

void sub_245F09A10(uint64_t a1, _DWORD *a2, unsigned __int16 *a3)
{
  v14[255] = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  bzero(&v13, 8 * *(a1 + 8));
  sub_245F09AF4(&v13, a3, 0, 1, 1u, v5 + 2, v5);
  *a2 = 0;
  v6 = (*v5 >> 1);
  if (v6 >= 2)
  {
    v7 = *v5;
    v8 = (a2 + 1);
    v9 = v14;
    v10 = v6 - 1;
    do
    {
      v11 = *v9++;
      *v8++ = sqrtf(vaddv_f32(vmul_f32(v11, v11)) / v7);
      --v10;
    }

    while (v10);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_245F09AF4(float32x2_t *a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, unsigned int a5, int *a6, uint64_t a7)
{
  v9 = a1;
  v68 = *MEMORY[0x277D85DE8];
  v10 = a6[1];
  v11 = v10 * *a6;
  v63 = *a6;
  if (v10 == 1)
  {
    v12 = a4 * a5;
    v13 = 8 * v11;
    v14 = a1;
    do
    {
      v14->i32[0] = *sub_245F09E3C(a2, a3);
      ++v14;
      LODWORD(a3) = a3 + v12;
      v13 -= 8;
    }

    while (v13);
  }

  else
  {
    v16 = *a6 * a4;
    v17 = a4 * a5;
    v18 = 8 * v11;
    v19 = 8 * v10;
    v20 = a1;
    do
    {
      sub_245F09AF4(v20, a2, a3, v16, a5, a6 + 2, a7);
      a3 = (a3 + v17);
      v20 = (v20 + v19);
      v18 -= v19;
    }

    while (v18);
  }

  if (v63 == 2)
  {
    v56 = *(a7 + 136);
    v57 = &v9[v10];
    do
    {
      v58.i32[0] = v57->i32[1];
      v58.f32[1] = -v58.f32[0];
      v59 = vmla_n_f32(vrev64_s32(vmul_f32(*v56, v58)), *v56, v57->f32[0]);
      *v57++ = vsub_f32(*v9, v59);
      *v9 = vadd_f32(v59, *v9);
      ++v9;
      v56 += a4;
      --v10;
    }

    while (v10);
  }

  else
  {
    v21 = v10;
    if (v63 == 4)
    {
      v22 = &v9[v10];
      v23 = (*(a7 + 136) + 4);
      v24 = &v9[2 * v10];
      v25 = &v9[3 * v10];
      v26 = *(a7 + 4);
      v27 = v9 + 1;
      v28 = v23;
      v29 = v23;
      do
      {
        v30 = *(v23 - 1);
        v31 = v22[1];
        v32 = (*v22 * v30) - (v31 * *v23);
        v33 = (v30 * v31) + (*v22 * *v23);
        v34 = *(v28 - 1);
        v35 = v24[1];
        v36 = (*v24 * v34) - (v35 * *v28);
        v37 = (v34 * v35) + (*v24 * *v28);
        v38 = *(v29 - 1);
        v39 = v25[1];
        v40 = (*v25 * v38) - (v39 * *v29);
        v41 = (v38 * v39) + (*v25 * *v29);
        v42 = *(v27 - 1);
        v43 = v42 - v36;
        v44 = *v27 - v37;
        v45 = v36 + v42;
        v46 = v37 + *v27;
        *(v27 - 1) = v45;
        *v27 = v46;
        v47 = v32 + v40;
        v48 = v33 + v41;
        v49 = v32 - v40;
        v50 = v33 - v41;
        *v24 = v45 - v47;
        v24[1] = v46 - v48;
        v51 = v48 + *v27;
        *(v27 - 1) = v47 + *(v27 - 1);
        *v27 = v51;
        if (v26)
        {
          v52 = v43 + v50;
          v53 = v44 - v49;
          v54 = v43 - v50;
          v55 = v44 + v49;
        }

        else
        {
          v54 = v43 + v50;
          v55 = v44 - v49;
          v52 = v43 - v50;
          v53 = v44 + v49;
        }

        *v22 = v54;
        v22[1] = v55;
        v22 += 2;
        v29 += 6 * a4;
        v24 += 2;
        v28 += 4 * a4;
        *v25 = v52;
        v25[1] = v53;
        v25 += 2;
        v23 += 2 * a4;
        v27 += 2;
        --v21;
      }

      while (v21);
    }

    else
    {
      if (qword_27EE37520 != -1)
      {
        sub_245F2B0B0();
      }

      v60 = qword_27EE37528;
      if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        v67 = v63;
        _os_log_impl(&dword_245D80000, v60, OS_LOG_TYPE_FAULT, "Error in FFT,p,%d", buf, 8u);
      }
    }
  }

  v61 = *MEMORY[0x277D85DE8];
}

os_log_t sub_245F09E0C()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  qword_27EE37528 = result;
  return result;
}

uint64_t sub_245F09E3C(unsigned __int16 *a1, unint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if (v4 <= a2)
  {
    if (qword_27EE37520 != -1)
    {
      dispatch_once(&qword_27EE37520, &unk_2858D6ED0);
    }

    v8 = qword_27EE37528;
    v9 = os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT);
    LODWORD(v4) = *(a1 + 1);
    if (v9)
    {
      v10 = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&dword_245D80000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v10, 0x12u);
      LODWORD(v4) = *(a1 + 1);
    }
  }

  v5 = *a1 + a2;
  if (v5 >= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return &a1[2 * (v5 - v4) + 4];
}

uint64_t sub_245F09F54(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 16) = 0x10000000000;
  *(a1 + 12) = 1031798784;
  *(a1 + 1048) = 1;
  *(a1 + 1064) = 0x10000000000;
  *(a1 + 1060) = 1031798784;
  *(a1 + 2096) = 1;
  *(a1 + 2112) = 0x10000000000;
  *(a1 + 2108) = 1031798784;
  *(a1 + 3144) = 1;
  *(a1 + 3160) = 0x10000000000;
  *(a1 + 3156) = 1031798784;
  *(a1 + 4192) = 1;
  *(a1 + 4208) = 0x10000000000;
  *(a1 + 4204) = 1031798784;
  *(a1 + 5240) = 1;
  *(a1 + 5256) = 0x10000000000;
  *(a1 + 5252) = 1031798784;
  *(a1 + 6288) = 1;
  *(a1 + 6304) = 0x10000000000;
  *(a1 + 6300) = 1031798784;
  *(a1 + 7336) = 1;
  *(a1 + 7352) = 0x10000000000;
  *(a1 + 7348) = 1031798784;
  *(a1 + 8384) = 1;
  *(a1 + 8400) = 0x10000000000;
  *(a1 + 8396) = 1031798784;
  *(a1 + 9432) = 1;
  *(a1 + 9448) = 0x10000000000;
  *(a1 + 9444) = 1031798784;
  *(a1 + 10480) = 1;
  *(a1 + 10496) = 0x10000000000;
  *(a1 + 10492) = 1031798784;
  *(a1 + 11528) = 1;
  *(a1 + 11544) = 0x10000000000;
  *(a1 + 11540) = 1031798784;
  *(a1 + 12576) = 1;
  *(a1 + 12592) = 0x10000000000;
  *(a1 + 12588) = 1031798784;
  *(a1 + 13624) = 1;
  *(a1 + 13640) = 0x10000000000;
  *(a1 + 13636) = 1031798784;
  *(a1 + 14672) = 1;
  *(a1 + 14688) = 0x10000000000;
  *(a1 + 14684) = 1031798784;
  *(a1 + 15720) = 0x10000000000;
  *(a1 + 19824) = 0;
  *(a1 + 19832) = 0x7F00000000;
  *(a1 + 20096) = 0u;
  sub_245F16CC4(a1 + 20112);
  sub_245F24864((a1 + 20696), &off_278E96EA8);
  sub_245F24864((a1 + 20760), &off_278E96EA8);
  sub_245F24864((a1 + 20824), &off_278E96EA8);
  return a1;
}

unsigned __int16 *sub_245F0A0B8(unsigned __int16 *result, unsigned __int16 *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 >= v2)
  {
    v4 = *(result + 1);
  }

  else
  {
    v4 = 0;
  }

  result[v3 - v4 + 4] = *a2;
  v5 = result[1];
  if (v2 <= v5)
  {
    v6 = *result + 1;
    if (v6 < v2)
    {
      LOWORD(v2) = 0;
    }

    *result = v6 - v2;
  }

  else
  {
    result[1] = v5 + 1;
  }

  return result;
}

uint64_t sub_245F0A114(uint64_t a1)
{
  v1 = a1 + 0x4000;
  if (*(a1 + 19836) != *(a1 + 19834))
  {
    return 0;
  }

  v3 = *(a1 + 19824);
  if (*(a1 + 19834))
  {
    v4 = 0;
    do
    {
      v3 -= *sub_245F0A198((a1 + 19832), v4++);
    }

    while (v4 < *(v1 + 3450));
  }

  return v3;
}

uint64_t sub_245F0A198(unsigned __int16 *a1, unint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if (v4 <= a2)
  {
    if (qword_27EE37520 != -1)
    {
      dispatch_once(&qword_27EE37520, &unk_2858D6EF0);
    }

    v8 = qword_27EE37528;
    v9 = os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT);
    LODWORD(v4) = *(a1 + 1);
    if (v9)
    {
      v10 = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&dword_245D80000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v10, 0x12u);
      LODWORD(v4) = *(a1 + 1);
    }
  }

  v5 = *a1 + a2;
  if (v5 >= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return &a1[v5 - v4 + 4];
}

unsigned __int16 *sub_245F0A3B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F24DC8(a2, *(a2 + 28), *(a2 + 32), *(a2 + 36));
  v6 = v5;
  v8 = v7;
  v9 = sub_245F24DC8(a2, *(a2 + 16), *(a2 + 20), *(a2 + 24));
  v12 = *(a1 + 18);
  v13 = *(a1 + 20);
  v14 = *(a1 + 16);
  if (v14 + v12 >= v13)
  {
    v15 = *(a1 + 20);
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 4 * (v14 + v12 - v15) + 24) = v9;
  if (v13 <= v12)
  {
    if (v14 + 1 < v13)
    {
      LOWORD(v13) = 0;
    }

    *(a1 + 16) = v14 + 1 - v13;
  }

  else
  {
    *(a1 + 18) = v12 + 1;
  }

  *a1 = 1;
  v16 = *(a1 + 1066);
  v17 = *(a1 + 1068);
  v18 = *(a1 + 1064);
  if (v18 + v16 >= v17)
  {
    v19 = *(a1 + 1068);
  }

  else
  {
    v19 = 0;
  }

  *(a1 + 4 * (v18 + v16 - v19) + 1072) = v10;
  if (v17 <= v16)
  {
    if (v18 + 1 < v17)
    {
      LOWORD(v17) = 0;
    }

    *(a1 + 1064) = v18 + 1 - v17;
  }

  else
  {
    *(a1 + 1066) = v16 + 1;
  }

  *(a1 + 1048) = 1;
  v20 = *(a1 + 2114);
  v21 = *(a1 + 2116);
  v22 = *(a1 + 2112);
  if (v22 + v20 >= v21)
  {
    v23 = *(a1 + 2116);
  }

  else
  {
    v23 = 0;
  }

  *(a1 + 4 * (v22 + v20 - v23) + 2120) = v11;
  if (v21 <= v20)
  {
    if (v22 + 1 < v21)
    {
      LOWORD(v21) = 0;
    }

    *(a1 + 2112) = v22 + 1 - v21;
  }

  else
  {
    *(a1 + 2114) = v20 + 1;
  }

  *(a1 + 2096) = 1;
  v24 = *(a1 + 3162);
  v25 = *(a1 + 3164);
  v26 = *(a1 + 3160);
  if (v26 + v24 >= v25)
  {
    v27 = *(a1 + 3164);
  }

  else
  {
    v27 = 0;
  }

  *(a1 + 4 * (v26 + v24 - v27) + 3168) = *(a2 + 16);
  if (v25 <= v24)
  {
    if (v26 + 1 < v25)
    {
      LOWORD(v25) = 0;
    }

    *(a1 + 3160) = v26 + 1 - v25;
  }

  else
  {
    *(a1 + 3162) = v24 + 1;
  }

  *(a1 + 3144) = 1;
  v28 = *(a1 + 4210);
  v29 = *(a1 + 4212);
  v30 = *(a1 + 4208);
  if (v30 + v28 >= v29)
  {
    v31 = *(a1 + 4212);
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 4 * (v30 + v28 - v31) + 4216) = *(a2 + 20);
  if (v29 <= v28)
  {
    if (v30 + 1 < v29)
    {
      LOWORD(v29) = 0;
    }

    *(a1 + 4208) = v30 + 1 - v29;
  }

  else
  {
    *(a1 + 4210) = v28 + 1;
  }

  *(a1 + 4192) = 1;
  v32 = *(a1 + 5258);
  v33 = *(a1 + 5260);
  v34 = *(a1 + 5256);
  if (v34 + v32 >= v33)
  {
    v35 = *(a1 + 5260);
  }

  else
  {
    v35 = 0;
  }

  *(a1 + 4 * (v34 + v32 - v35) + 5264) = *(a2 + 24);
  if (v33 <= v32)
  {
    if (v34 + 1 < v33)
    {
      LOWORD(v33) = 0;
    }

    *(a1 + 5256) = v34 + 1 - v33;
  }

  else
  {
    *(a1 + 5258) = v32 + 1;
  }

  *(a1 + 5240) = 1;
  v36 = *(a1 + 6306);
  v37 = *(a1 + 6308);
  v38 = *(a1 + 6304);
  if (v38 + v36 >= v37)
  {
    v39 = *(a1 + 6308);
  }

  else
  {
    v39 = 0;
  }

  *(a1 + 4 * (v38 + v36 - v39) + 6312) = v4;
  if (v37 <= v36)
  {
    if (v38 + 1 < v37)
    {
      LOWORD(v37) = 0;
    }

    *(a1 + 6304) = v38 + 1 - v37;
  }

  else
  {
    *(a1 + 6306) = v36 + 1;
  }

  *(a1 + 6288) = 1;
  v40 = *(a1 + 7354);
  v41 = *(a1 + 7356);
  v42 = *(a1 + 7352);
  if (v42 + v40 >= v41)
  {
    v43 = *(a1 + 7356);
  }

  else
  {
    v43 = 0;
  }

  *(a1 + 4 * (v42 + v40 - v43) + 7360) = v6;
  if (v41 <= v40)
  {
    if (v42 + 1 < v41)
    {
      LOWORD(v41) = 0;
    }

    *(a1 + 7352) = v42 + 1 - v41;
  }

  else
  {
    *(a1 + 7354) = v40 + 1;
  }

  *(a1 + 7336) = 1;
  v44 = *(a1 + 8402);
  v45 = *(a1 + 8404);
  v46 = *(a1 + 8400);
  if (v46 + v44 >= v45)
  {
    v47 = *(a1 + 8404);
  }

  else
  {
    v47 = 0;
  }

  *(a1 + 4 * (v46 + v44 - v47) + 8408) = v8;
  if (v45 <= v44)
  {
    if (v46 + 1 < v45)
    {
      LOWORD(v45) = 0;
    }

    *(a1 + 8400) = v46 + 1 - v45;
  }

  else
  {
    *(a1 + 8402) = v44 + 1;
  }

  *(a1 + 8384) = 1;
  v48 = *(a1 + 9450);
  v49 = *(a1 + 9452);
  v50 = *(a1 + 9448);
  if (v50 + v48 >= v49)
  {
    v51 = *(a1 + 9452);
  }

  else
  {
    v51 = 0;
  }

  *(a1 + 4 * (v50 + v48 - v51) + 9456) = *(a2 + 28);
  if (v49 <= v48)
  {
    if (v50 + 1 < v49)
    {
      LOWORD(v49) = 0;
    }

    *(a1 + 9448) = v50 + 1 - v49;
  }

  else
  {
    *(a1 + 9450) = v48 + 1;
  }

  *(a1 + 9432) = 1;
  v52 = *(a1 + 10498);
  v53 = *(a1 + 10500);
  v54 = *(a1 + 10496);
  if (v54 + v52 >= v53)
  {
    v55 = *(a1 + 10500);
  }

  else
  {
    v55 = 0;
  }

  *(a1 + 4 * (v54 + v52 - v55) + 10504) = *(a2 + 32);
  if (v53 <= v52)
  {
    if (v54 + 1 < v53)
    {
      LOWORD(v53) = 0;
    }

    *(a1 + 10496) = v54 + 1 - v53;
  }

  else
  {
    *(a1 + 10498) = v52 + 1;
  }

  *(a1 + 10480) = 1;
  v56 = *(a1 + 11546);
  v57 = *(a1 + 11548);
  v58 = *(a1 + 11544);
  if (v58 + v56 >= v57)
  {
    v59 = *(a1 + 11548);
  }

  else
  {
    v59 = 0;
  }

  *(a1 + 4 * (v58 + v56 - v59) + 11552) = *(a2 + 36);
  if (v57 <= v56)
  {
    if (v58 + 1 < v57)
    {
      LOWORD(v57) = 0;
    }

    *(a1 + 11544) = v58 + 1 - v57;
  }

  else
  {
    *(a1 + 11546) = v56 + 1;
  }

  *(a1 + 11528) = 1;
  result = sub_245F0A878((a1 + 15720), a2);
  v61 = *(a2 + 40);
  v62 = *(a1 + 19824);
  if (v62)
  {
    v63 = v61 - v62;
    if (v63 >> 16)
    {
      LOWORD(v63) = 10000;
    }

    v64 = v63;
    result = sub_245F0A0B8((a1 + 19832), &v64);
  }

  *(a1 + 19824) = v61;
  return result;
}

unsigned __int16 *sub_245F0A878(unsigned __int16 *result, _OWORD *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  *&result[8 * (v3 - v2) + 4] = *a2;
  v4 = result[1];
  v5 = *(result + 1);
  if (v5 <= v4)
  {
    v6 = *result + 1;
    if (v6 < v5)
    {
      LOWORD(v5) = 0;
    }

    *result = v6 - v5;
  }

  else
  {
    result[1] = v4 + 1;
  }

  return result;
}

float sub_245F0A8D8(uint64_t a1, int a2, float *a3, int a4)
{
  if (sub_245F0A2B0(a1))
  {
    if (a2)
    {
      sub_245F0A9CC(a1, a3);
      sub_245F0AC10(a1, a3);
      if (*(a1 + 12596) == *(a1 + 12594) && *(a1 + 13644) == *(a1 + 13642) && *(a1 + 14692) == *(a1 + 14690))
      {
        sub_245F0AF10(a1, a3);
      }
    }

    else if (!a4)
    {
      return result;
    }

    sub_245F0B1D4();

    return sub_245F0B6C8();
  }

  return result;
}

float sub_245F0A9CC(unsigned __int16 *a1, float *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  sub_245F09A0C(v24);
  sub_245F09A10(v24, v27, a1 + 1580);
  sub_245F09A0C(v24);
  sub_245F09A10(v24, v26, a1 + 2104);
  sub_245F09A0C(v24);
  sub_245F09A10(v24, v25, a1 + 2628);
  v4 = 0.0;
  for (i = 2; i != 127; ++i)
  {
    v4 = v4 + *&v27[i];
  }

  v6 = 0.0;
  for (j = 2; j != 127; ++j)
  {
    v6 = v6 + *&v26[j];
  }

  v8 = 0.0;
  for (k = 2; k != 127; ++k)
  {
    v8 = v8 + *&v25[k];
  }

  v10 = 0.0;
  for (m = 3; m != 11; m += 4)
  {
    v10 = (((v10 + COERCE_FLOAT(*&v27[m])) + COERCE_FLOAT(HIDWORD(*&v27[m]))) + COERCE_FLOAT(*&v27[m + 2])) + COERCE_FLOAT(HIDWORD(*&v27[m]));
  }

  v12 = 0.0;
  for (n = 3; n != 11; n += 4)
  {
    v12 = (((v12 + COERCE_FLOAT(*&v26[n])) + COERCE_FLOAT(HIDWORD(*&v26[n]))) + COERCE_FLOAT(*&v26[n + 2])) + COERCE_FLOAT(HIDWORD(*&v26[n]));
  }

  v14 = 0.0;
  for (ii = 3; ii != 11; ii += 4)
  {
    v14 = (((v14 + COERCE_FLOAT(*&v25[ii])) + COERCE_FLOAT(HIDWORD(*&v25[ii]))) + COERCE_FLOAT(*&v25[ii + 2])) + COERCE_FLOAT(HIDWORD(*&v25[ii]));
  }

  v16 = 0.0;
  for (jj = 2; jj != 13; ++jj)
  {
    v16 = v16 + *&v27[jj];
  }

  v18 = 0.0;
  for (kk = 2; kk != 13; ++kk)
  {
    v18 = v18 + *&v26[kk];
  }

  v20 = 0.0;
  for (mm = 2; mm != 13; ++mm)
  {
    v20 = v20 + *&v25[mm];
  }

  result = (v4 + v6) + v8;
  *a2 = ((v16 + v18) + v20) / result;
  a2[15] = result;
  a2[2] = ((v10 + v12) + v14) / result;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

float sub_245F0AC10(unsigned __int16 *a1, float *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  sub_245F09A0C(v33);
  sub_245F09A10(v33, v36, a1 + 4724);
  sub_245F09A0C(v33);
  sub_245F09A10(v33, v35, a1 + 5248);
  sub_245F09A0C(v33);
  sub_245F09A10(v33, v34, a1 + 5772);
  v4 = 0.0;
  for (i = 2; i != 127; ++i)
  {
    v4 = v4 + *&v36[i];
  }

  v6 = 0.0;
  for (j = 2; j != 127; ++j)
  {
    v6 = v6 + *&v35[j];
  }

  v8 = 0.0;
  for (k = 2; k != 127; ++k)
  {
    v8 = v8 + *&v34[k];
  }

  v10 = 0.0;
  for (m = 3; m != 11; m += 4)
  {
    v10 = (((v10 + COERCE_FLOAT(*&v36[m])) + COERCE_FLOAT(HIDWORD(*&v36[m]))) + COERCE_FLOAT(*&v36[m + 2])) + COERCE_FLOAT(HIDWORD(*&v36[m]));
  }

  v12 = 0.0;
  for (n = 3; n != 11; n += 4)
  {
    v12 = (((v12 + COERCE_FLOAT(*&v35[n])) + COERCE_FLOAT(HIDWORD(*&v35[n]))) + COERCE_FLOAT(*&v35[n + 2])) + COERCE_FLOAT(HIDWORD(*&v35[n]));
  }

  v14 = 0.0;
  for (ii = 3; ii != 11; ii += 4)
  {
    v14 = (((v14 + COERCE_FLOAT(*&v34[ii])) + COERCE_FLOAT(HIDWORD(*&v34[ii]))) + COERCE_FLOAT(*&v34[ii + 2])) + COERCE_FLOAT(HIDWORD(*&v34[ii]));
  }

  v16 = 0.0;
  for (jj = 2; jj != 13; ++jj)
  {
    v16 = v16 + *&v36[jj];
  }

  v18 = 0.0;
  for (kk = 2; kk != 13; ++kk)
  {
    v18 = v18 + *&v35[kk];
  }

  v20 = 0.0;
  for (mm = 2; mm != 13; ++mm)
  {
    v20 = v20 + *&v34[mm];
  }

  v22 = 0.0;
  do
  {
    v22 = v22 + *&v36[mm++];
  }

  while (mm != 39);
  v23 = 0.0;
  do
  {
    v23 = v23 + *&v36[mm++];
  }

  while (mm != 64);
  v24 = 0.0;
  for (nn = 39; nn != 64; ++nn)
  {
    v24 = v24 + *&v35[nn];
  }

  v26 = 0.0;
  for (i1 = 39; i1 != 64; ++i1)
  {
    v26 = v26 + *&v34[i1];
  }

  v28 = 0.0;
  for (i2 = 89; i2 != 127; ++i2)
  {
    v28 = v28 + *&v36[i2];
  }

  result = (v4 + v6) + v8;
  v31 = (v10 + v12) + v14;
  a2[16] = result;
  a2[20] = ((v16 + v18) + v20) / result;
  a2[21] = ((v23 + v24) + v26) / result;
  a2[7] = v31 / result;
  a2[8] = v31;
  a2[29] = v28;
  a2[32] = v22;
  a2[43] = v31 / result;
  a2[48] = v28;
  a2[53] = v22;
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_245F0AF10(unsigned __int16 *a1, float *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v32[0] = 0x300000000;
  sub_245F09A0C(v36);
  sub_245F09A10(v36, v35, a1 + 6296);
  sub_245F09A0C(v36);
  sub_245F09A10(v36, v34, a1 + 6820);
  sub_245F09A0C(v36);
  sub_245F09A10(v36, v33, a1 + 7344);
  for (i = 0; i != 128; ++i)
  {
    *&v6 = (v35[i] + v34[i]) + v33[i];
    v7 = WORD1(v32[0]);
    v8 = HIDWORD(v32[0]);
    v9 = LOWORD(v32[0]);
    v10 = LOWORD(v32[0]) + WORD1(v32[0]);
    if (v10 >= HIDWORD(v32[0]))
    {
      v11 = HIDWORD(v32[0]);
    }

    else
    {
      v11 = 0;
    }

    *(&v32[1] + v10 - v11) = LODWORD(v6);
    if (v8 <= v7)
    {
      if (v9 + 1 < v8)
      {
        LOWORD(v8) = 0;
      }

      LOWORD(v32[0]) = v9 + 1 - v8;
    }

    else
    {
      WORD1(v32[0]) = v7 + 1;
    }

    if (i >= 2)
    {
      *v31 = 0x300000000;
      sub_245F0BDFC(v31, v32);
      v6 = sub_245F0BE78(v31);
    }

    v36[i] = *&v6;
  }

  v12 = 0;
  v13 = 0;
  v14 = -3.4028e38;
  do
  {
    if (v36[v13] > v14)
    {
      v14 = v36[v13];
      v12 = v13;
    }

    ++v13;
  }

  while (v13 != 128);
  v15 = 0.0;
  v17 = sub_245F0BC3C(0.0, 50.0, 100.0, v4, v36);
  for (j = 0; j != 127; ++j)
  {
    v15 = v15 + v36[j];
  }

  for (k = 0; k != 10; ++k)
  {
    v20 = (5 * k);
    v21 = (5 * k + 5);
    v22 = vcvtps_s32_f32(v20 / 0.3937);
    v23 = vcvtps_s32_f32(v21 / 0.3937);
    if (v23 >= 128)
    {
      v23 = 128;
    }

    v24 = 0.0;
    if (v23 > v22)
    {
      v25 = v23 - v22;
      v26 = &v36[v22];
      do
      {
        v27 = *v26++;
        v24 = v24 + v27;
        --v25;
      }

      while (v25);
    }

    v28 = &a2[3 * k + 55];
    v28[4] = v24;
    v28[5] = v24 / v15;
    v28[6] = sub_245F0BC3C(v20, v21, 100.0, v16, v36);
  }

  v29 = v12 * 0.390625;
  a2[55] = v14;
  a2[56] = v29;
  a2[57] = v17;
  a2[58] = v15;
  v30 = *MEMORY[0x277D85DE8];
}

float sub_245F0B1D4()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v49 = *MEMORY[0x277D85DE8];
  sub_245F09A0C(v48);
  sub_245F09A10(v48, v47, v7 + 8);
  sub_245F09A0C(v48);
  sub_245F09A10(v48, v46, v7 + 532);
  sub_245F09A0C(v48);
  sub_245F09A10(v48, v45, v7 + 1056);
  if (v6)
  {
    v8 = 0.0;
    for (i = 2; i != 127; ++i)
    {
      v8 = v8 + *&v47[i];
    }

    v10 = 0.0;
    for (j = 2; j != 127; ++j)
    {
      v10 = v10 + *&v46[j];
    }

    v12 = 0.0;
    for (k = 2; k != 127; ++k)
    {
      v12 = v12 + *&v45[k];
    }

    v14 = 0;
    v15 = 0.0;
    do
    {
      v15 = (((v15 + COERCE_FLOAT(*&v45[v14 + 3])) + COERCE_FLOAT(HIDWORD(*&v45[v14 + 3]))) + COERCE_FLOAT(*&v45[v14 + 5])) + COERCE_FLOAT(HIDWORD(*&v45[v14 + 3]));
      v14 += 4;
    }

    while (v14 != 8);
    v16 = v8 + v10;
    v17 = 0.0;
    for (m = 2; m != 13; ++m)
    {
      v17 = v17 + *&v47[m];
    }

    v19 = 0.0;
    for (n = 2; n != 13; ++n)
    {
      v19 = v19 + *&v46[n];
    }

    v21 = 0.0;
    for (ii = 2; ii != 13; ++ii)
    {
      v21 = v21 + *&v45[ii];
    }

    v23 = 0;
    v24 = v17 + v19;
    v25 = 0.0;
    v26 = v24 / v16;
    do
    {
      v25 = v25 + *&v47[v23 + 13];
      ++v23;
    }

    while (v23 != 26);
    v27 = 0;
    v28 = 0.0;
    v29 = v15 / v12;
    do
    {
      v28 = v28 + *&v46[v27 + 13];
      ++v27;
    }

    while (v27 != 26);
    v4[13] = v16;
    v4[9] = v21 / v12;
    v4[17] = v29;
    v4[18] = v26;
    v30 = (v25 + v28) / v16;
    v4[30] = v30;
    v4[49] = v30;
    v4[51] = v26;
  }

  for (jj = 0; jj != 128; jj += 4)
  {
    *&v48[jj] = vaddq_f32(vmulq_f32(*&v47[jj], *&v47[jj]), vmulq_f32(*&v46[jj], *&v46[jj]));
    *&v44[jj * 4] = vmulq_f32(*&v45[jj], *&v45[jj]);
  }

  if ((atomic_load_explicit(&qword_27EE37628, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE37628))
  {
    qword_27EE37620 = vcvtas_u32_f32(sub_245F0989C(0x64u, 0x80uLL, 0.5));
    __cxa_guard_release(&qword_27EE37628);
  }

  if ((atomic_load_explicit(&qword_27EE37638, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE37638))
  {
    qword_27EE37630 = vcvtas_u32_f32(sub_245F0989C(0x64u, 0x80uLL, 3.5));
    __cxa_guard_release(&qword_27EE37638);
  }

  v32 = qword_27EE37620;
  v33 = qword_27EE37630;
  if (qword_27EE37620 <= qword_27EE37630)
  {
    v35 = 0.0;
    v36 = qword_27EE37620;
    do
    {
      v35 = v35 + v48[v36++];
    }

    while (v36 <= qword_27EE37630);
    v2[17] = sqrtf(v35);
    v34 = 0.0;
    do
    {
      v34 = v34 + *&v44[4 * v32++];
    }

    while (v32 <= v33);
  }

  else
  {
    v2[17] = 0.0;
    v34 = 0.0;
  }

  v2[19] = sqrtf(v34);
  if ((atomic_load_explicit(&qword_27EE37648, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE37648))
  {
    qword_27EE37640 = (roundf(sub_245F0989C(0x64u, 0x80uLL, 3.5)) + 1.0);
    __cxa_guard_release(&qword_27EE37648);
  }

  if ((atomic_load_explicit(&qword_27EE37658, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE37658))
  {
    qword_27EE37650 = vcvtas_u32_f32(sub_245F0989C(0x64u, 0x80uLL, 20.0));
    __cxa_guard_release(&qword_27EE37658);
  }

  v37 = qword_27EE37640;
  v38 = qword_27EE37650;
  if (qword_27EE37640 <= qword_27EE37650)
  {
    v40 = 0.0;
    v41 = qword_27EE37640;
    do
    {
      v40 = v40 + v48[v41++];
    }

    while (v41 <= qword_27EE37650);
    v2[18] = sqrtf(v40);
    v39 = 0.0;
    do
    {
      v39 = v39 + *&v44[4 * v37++];
    }

    while (v37 <= v38);
  }

  else
  {
    v2[18] = 0.0;
    v39 = 0.0;
  }

  result = sqrtf(v39);
  v2[20] = result;
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

float sub_245F0B6C8()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v51 = *MEMORY[0x277D85DE8];
  sub_245F09A0C(v50);
  sub_245F09A10(v50, v49, v7 + 3152);
  sub_245F09A0C(v50);
  sub_245F09A10(v50, v48, v7 + 3676);
  sub_245F09A0C(v50);
  sub_245F09A10(v50, v47, v7 + 4200);
  if (v6)
  {
    v8 = 0.0;
    for (i = 2; i != 127; ++i)
    {
      v8 = v8 + *&v49[i];
    }

    v10 = 0.0;
    for (j = 2; j != 127; ++j)
    {
      v10 = v10 + *&v48[j];
    }

    v12 = 0.0;
    for (k = 2; k != 127; ++k)
    {
      v12 = v12 + *&v47[k];
    }

    v14 = 0;
    v15 = 0.0;
    do
    {
      v15 = (((v15 + COERCE_FLOAT(*&v49[v14 + 3])) + COERCE_FLOAT(HIDWORD(*&v49[v14 + 3]))) + COERCE_FLOAT(*&v49[v14 + 5])) + COERCE_FLOAT(HIDWORD(*&v49[v14 + 3]));
      v14 += 4;
    }

    while (v14 != 8);
    v16 = 0;
    v17 = 0.0;
    do
    {
      v17 = (((v17 + COERCE_FLOAT(*&v48[v16 + 3])) + COERCE_FLOAT(HIDWORD(*&v48[v16 + 3]))) + COERCE_FLOAT(*&v48[v16 + 5])) + COERCE_FLOAT(HIDWORD(*&v48[v16 + 3]));
      v16 += 4;
    }

    while (v16 != 8);
    v18 = 0;
    v19 = 0.0;
    do
    {
      v19 = (((v19 + COERCE_FLOAT(*&v47[v18 + 3])) + COERCE_FLOAT(HIDWORD(*&v47[v18 + 3]))) + COERCE_FLOAT(*&v47[v18 + 5])) + COERCE_FLOAT(HIDWORD(*&v47[v18 + 3]));
      v18 += 4;
    }

    while (v18 != 8);
    v20 = v15 + v17;
    v21 = 0.0;
    v22 = 2;
    v23 = v19 / v12;
    do
    {
      v21 = v21 + *&v49[v22++];
    }

    while (v22 != 13);
    v24 = v8 + v10;
    v25 = 0.0;
    for (m = 2; m != 13; ++m)
    {
      v25 = v25 + *&v48[m];
    }

    v27 = 0.0;
    for (n = 2; n != 13; ++n)
    {
      v27 = v27 + *&v47[n];
    }

    v29 = 0;
    v30 = v21 + v25;
    v31 = 0.0;
    do
    {
      v31 = v31 + *&v47[v29 + 89];
      ++v29;
    }

    while (v29 != 38);
    v32 = v19 / v20;
    v4[19] = v24;
    v4[6] = v20 / v24;
    v4[3] = v12;
    v4[10] = v23;
    v4[11] = v30 / v24;
    v4[33] = v27;
    v4[31] = v31;
    v4[26] = v32;
    v4[38] = v27;
    v4[39] = v31;
    v4[40] = (v12 - v27) - v31;
    v4[45] = v32;
    v4[52] = v31;
    v4[54] = v27;
  }

  for (ii = 0; ii != 128; ii += 4)
  {
    *&v50[ii] = vaddq_f32(vmulq_f32(*&v49[ii], *&v49[ii]), vmulq_f32(*&v48[ii], *&v48[ii]));
    *&v46[ii * 4] = vmulq_f32(*&v47[ii], *&v47[ii]);
  }

  if ((atomic_load_explicit(&qword_27EE37668, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE37668))
  {
    qword_27EE37660 = vcvtas_u32_f32(sub_245F0989C(0x64u, 0x80uLL, 0.5));
    __cxa_guard_release(&qword_27EE37668);
  }

  if ((atomic_load_explicit(&qword_27EE37678, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE37678))
  {
    qword_27EE37670 = vcvtas_u32_f32(sub_245F0989C(0x64u, 0x80uLL, 3.5));
    __cxa_guard_release(&qword_27EE37678);
  }

  v34 = qword_27EE37660;
  v35 = qword_27EE37670;
  if (qword_27EE37660 <= qword_27EE37670)
  {
    v37 = 0.0;
    v38 = qword_27EE37660;
    do
    {
      v37 = v37 + v50[v38++];
    }

    while (v38 <= qword_27EE37670);
    v2[21] = sqrtf(v37);
    v36 = 0.0;
    do
    {
      v36 = v36 + *&v46[4 * v34++];
    }

    while (v34 <= v35);
  }

  else
  {
    v2[21] = 0.0;
    v36 = 0.0;
  }

  v2[23] = sqrtf(v36);
  if ((atomic_load_explicit(&qword_27EE37688, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE37688))
  {
    qword_27EE37680 = (roundf(sub_245F0989C(0x64u, 0x80uLL, 3.5)) + 1.0);
    __cxa_guard_release(&qword_27EE37688);
  }

  if ((atomic_load_explicit(&qword_27EE37698, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE37698))
  {
    qword_27EE37690 = vcvtas_u32_f32(sub_245F0989C(0x64u, 0x80uLL, 20.0));
    __cxa_guard_release(&qword_27EE37698);
  }

  v39 = qword_27EE37680;
  v40 = qword_27EE37690;
  if (qword_27EE37680 <= qword_27EE37690)
  {
    v42 = 0.0;
    v43 = qword_27EE37680;
    do
    {
      v42 = v42 + v50[v43++];
    }

    while (v43 <= qword_27EE37690);
    v2[22] = sqrtf(v42);
    v41 = 0.0;
    do
    {
      v41 = v41 + *&v46[4 * v39++];
    }

    while (v39 <= v40);
  }

  else
  {
    v2[22] = 0.0;
    v41 = 0.0;
  }

  result = sqrtf(v41);
  v2[24] = result;
  v45 = *MEMORY[0x277D85DE8];
  return result;
}