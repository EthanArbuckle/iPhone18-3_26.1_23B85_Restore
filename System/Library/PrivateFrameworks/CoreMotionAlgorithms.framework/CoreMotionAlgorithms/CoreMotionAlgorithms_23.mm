uint64_t sub_245E412B8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 164);
  if ((v4 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(result + 40));
    v4 = *(v3 + 164);
    if ((v4 & 0x80000) == 0)
    {
LABEL_3:
      if ((v4 & 0x20000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }
  }

  else if ((v4 & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 164);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 164);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 164);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 148));
  v4 = *(v3 + 164);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 164);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_8:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 156));
  v4 = *(v3 + 164);
  if ((v4 & 0x2000) == 0)
  {
LABEL_9:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_43:
  v5 = *(v3 + 80);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x1000) == 0)
  {
LABEL_10:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_44:
  v6 = *(v3 + 76);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x80) == 0)
  {
LABEL_11:
    if ((v4 & 0x200000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_45:
  v7 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_12:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_47;
  }

LABEL_46:
  v8 = *(v3 + 160);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_13:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_48;
  }

LABEL_47:
  v9 = *(v3 + 140);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x400) == 0)
  {
LABEL_14:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_49;
  }

LABEL_48:
  v10 = *(v3 + 68);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x4000) == 0)
  {
LABEL_15:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_50;
  }

LABEL_49:
  v11 = *(v3 + 84);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x800000) == 0)
  {
LABEL_16:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_51;
  }

LABEL_50:
  v12 = *(v3 + 120);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

LABEL_51:
  v13 = *(v3 + 128);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_18:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_52:
  v14 = *(v3 + 136);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_19:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_54;
  }

LABEL_53:
  v15 = *(v3 + 132);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x400000) == 0)
  {
LABEL_20:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_55;
  }

LABEL_54:
  v16 = *(v3 + 116);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_21:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_56;
  }

LABEL_55:
  v17 = *(v3 + 124);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_57;
  }

LABEL_56:
  v18 = *(v3 + 152);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x8000) == 0)
  {
LABEL_23:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_58;
  }

LABEL_57:
  v19 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x100000) == 0)
  {
LABEL_24:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_59;
  }

LABEL_58:
  v20 = *(v3 + 108);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x100) == 0)
  {
LABEL_25:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 164);
  if ((v4 & 0x200000) == 0)
  {
LABEL_26:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 164);
  if ((v4 & 0x200) == 0)
  {
LABEL_27:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 164);
  if ((v4 & 0x20000) == 0)
  {
LABEL_28:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_63;
  }

LABEL_62:
  v21 = *(v3 + 96);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x40000) == 0)
  {
LABEL_29:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_64;
  }

LABEL_63:
  v22 = *(v3 + 100);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x10000) == 0)
  {
LABEL_30:
    if ((v4 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_65;
  }

LABEL_64:
  v23 = *(v3 + 92);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 8) == 0)
  {
LABEL_31:
    if ((v4 & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_66;
  }

LABEL_65:
  v24 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 4) == 0)
  {
LABEL_32:
    if ((v4 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_67;
  }

LABEL_66:
  v25 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 1) == 0)
  {
LABEL_33:
    if ((v4 & 2) == 0)
    {
      goto LABEL_34;
    }

LABEL_68:
    v27 = *(v3 + 16);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 164) & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_69;
  }

LABEL_67:
  v26 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 2) != 0)
  {
    goto LABEL_68;
  }

LABEL_34:
  if ((v4 & 0x800) == 0)
  {
    return result;
  }

LABEL_69:
  v28 = *(v3 + 72);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245E416A8(uint64_t result)
{
  *result = &unk_2858D0AD0;
  *(result + 20) = 0;
  return result;
}

void sub_245E416D0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E41708(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D0AD0;
  *(result + 20) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 8);
    *(result + 20) = 1;
    *(result + 8) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 16);
    *(result + 20) = v2;
    *(result + 16) = v4;
  }

  return result;
}

uint64_t sub_245E4176C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "proximityState");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E417E8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_54;
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
        *(a1 + 20) |= 2u;
        v22 = *(this + 1);
        v2 = *(this + 2);
        v23 = *this;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v2 = *(this + 1);
          }

          v32 = v2 - v22;
          v33 = (v23 + v22);
          v34 = v22 + 1;
          while (1)
          {
            if (!v32)
            {
              LODWORD(v26) = 0;
              *(this + 24) = 1;
              goto LABEL_49;
            }

            v35 = v34;
            v36 = *v33;
            *(this + 1) = v35;
            v26 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            --v32;
            ++v33;
            v34 = v35 + 1;
            v14 = v31++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              goto LABEL_48;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_48:
          v2 = v35;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          while (1)
          {
            v2 = v28;
            *(this + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              break;
            }
          }
        }

LABEL_49:
        *(a1 + 16) = v26;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 1u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
        {
          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v37 = 0;
          return v37 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_54:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t sub_245E41AB4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_245E41B20(uint64_t result)
{
  *result = &unk_2858D0B08;
  *(result + 28) = -1;
  *(result + 48) = 0;
  return result;
}

void sub_245E41B50(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E41B88(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D0B08;
  *(result + 28) = -1;
  *(result + 48) = 0;
  v2 = *(a2 + 48);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 48) = 1;
    *(result + 8) = v4;
    v2 = *(a2 + 48);
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
    v5 = *(a2 + 40);
    v3 |= 0x80u;
    *(result + 48) = v3;
    *(result + 40) = v5;
    v2 = *(a2 + 48);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 28);
    v3 |= 0x10u;
    *(result + 48) = v3;
    *(result + 28) = v6;
    v2 = *(a2 + 48);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 16);
  v3 |= 2u;
  *(result + 48) = v3;
  *(result + 16) = v7;
  v2 = *(a2 + 48);
  if ((v2 & 4) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a2 + 20);
  v3 |= 4u;
  *(result + 48) = v3;
  *(result + 20) = v8;
  v2 = *(a2 + 48);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(a2 + 32);
  v3 |= 0x20u;
  *(result + 48) = v3;
  *(result + 32) = v9;
  v2 = *(a2 + 48);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 36);
  v3 |= 0x40u;
  *(result + 48) = v3;
  *(result + 36) = v10;
  v2 = *(a2 + 48);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_20:
    v12 = *(a2 + 24);
    *(result + 48) = v3 | 8;
    *(result + 24) = v12;
    return result;
  }

LABEL_19:
  v11 = *(a2 + 44);
  v3 |= 0x100u;
  *(result + 48) = v3;
  *(result + 44) = v11;
  if ((*(a2 + 48) & 8) != 0)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_245E41CB8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 48);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "currentMeanAngleY", *(a1 + 16));
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

  PB::TextFormatter::format(this, "deltaMeanAngleY", *(a1 + 20));
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
  v6 = *(a1 + 24);
  PB::TextFormatter::format(this, "doubleTapCounter");
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
  v7 = *(a1 + 28);
  PB::TextFormatter::format(this, "doubleTapStatus");
  v5 = *(a1 + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "entropyConcha", *(a1 + 32));
  v5 = *(a1 + 48);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "entropyTragus", *(a1 + 36));
  v5 = *(a1 + 48);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a1 + 40);
  PB::TextFormatter::format(this, "location");
  v5 = *(a1 + 48);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(this, "tapInterval", *(a1 + 44));
  if (*(a1 + 48))
  {
LABEL_10:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_11:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E41E1C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_121;
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
            *(a1 + 48) |= 0x10u;
            v39 = *(this + 1);
            v2 = *(this + 2);
            v40 = *this;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v54 = 0;
              v55 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(this + 1);
              }

              v56 = v2 - v39;
              v57 = (v40 + v39);
              v58 = v39 + 1;
              while (1)
              {
                if (!v56)
                {
                  LODWORD(v43) = 0;
                  *(this + 24) = 1;
                  goto LABEL_112;
                }

                v59 = v58;
                v60 = *v57;
                *(this + 1) = v59;
                v43 |= (v60 & 0x7F) << v54;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                --v56;
                ++v57;
                v58 = v59 + 1;
                v14 = v55++ > 8;
                if (v14)
                {
                  LODWORD(v43) = 0;
                  goto LABEL_111;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_111:
              v2 = v59;
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
                  LODWORD(v43) = 0;
                  break;
                }
              }
            }

LABEL_112:
            *(a1 + 28) = v43;
            goto LABEL_117;
          }

          if (v22 == 4)
          {
            *(a1 + 48) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_72:
              *(this + 24) = 1;
              goto LABEL_117;
            }

            *(a1 + 16) = *(*this + v2);
LABEL_100:
            v2 = *(this + 1) + 4;
LABEL_101:
            *(this + 1) = v2;
            goto LABEL_117;
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
              goto LABEL_72;
            }

            *(a1 + 8) = *(*this + v2);
            v2 = *(this + 1) + 8;
            goto LABEL_101;
          }

          if (v22 == 2)
          {
            *(a1 + 48) |= 0x80u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v47 = 0;
              v48 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v49 = v2 - v31;
              v50 = (v32 + v31);
              v51 = v31 + 1;
              while (1)
              {
                if (!v49)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_108;
                }

                v52 = v51;
                v53 = *v50;
                *(this + 1) = v52;
                v35 |= (v53 & 0x7F) << v47;
                if ((v53 & 0x80) == 0)
                {
                  break;
                }

                v47 += 7;
                --v49;
                ++v50;
                v51 = v52 + 1;
                v14 = v48++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  goto LABEL_107;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_107:
              v2 = v52;
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
                  LODWORD(v35) = 0;
                  break;
                }
              }
            }

LABEL_108:
            *(a1 + 40) = v35;
            goto LABEL_117;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(a1 + 48) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_72;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_100;
        }

        if (v22 == 6)
        {
          *(a1 + 48) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_72;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_100;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(a1 + 48) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_72;
            }

            *(a1 + 36) = *(*this + v2);
            goto LABEL_100;
          case 8:
            *(a1 + 48) |= 0x100u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_72;
            }

            *(a1 + 44) = *(*this + v2);
            goto LABEL_100;
          case 9:
            *(a1 + 48) |= 8u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v61 = 0;
              v62 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v63 = v2 - v23;
              v64 = (v24 + v23);
              v65 = v23 + 1;
              while (1)
              {
                if (!v63)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_116;
                }

                v66 = v65;
                v67 = *v64;
                *(this + 1) = v66;
                v27 |= (v67 & 0x7F) << v61;
                if ((v67 & 0x80) == 0)
                {
                  break;
                }

                v61 += 7;
                --v63;
                ++v64;
                v65 = v66 + 1;
                v14 = v62++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_115;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_115:
              v2 = v66;
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
                  LODWORD(v27) = 0;
                  break;
                }
              }
            }

LABEL_116:
            *(a1 + 24) = v27;
            goto LABEL_117;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v68 = 0;
        return v68 & 1;
      }

      v2 = *(this + 1);
LABEL_117:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_121:
  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t sub_245E42460(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 48);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 48);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 48);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v6 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 48);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 48);
  if ((v4 & 4) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 48);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 48);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    result = PB::Writer::write(this, *(v3 + 44));
    if ((*(v3 + 48) & 8) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 48);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_19:
  v7 = *(v3 + 24);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245E42594(uint64_t result)
{
  *result = &unk_2858D0B40;
  *(result + 28) = 0;
  return result;
}

void sub_245E425BC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E425F4(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D0B40;
  *(result + 28) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 16);
    v3 = 2;
    *(result + 28) = 2;
    *(result + 16) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 28))
  {
LABEL_5:
    v5 = *(a2 + 8);
    v3 |= 1u;
    *(result + 28) = v3;
    *(result + 8) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 24);
    *(result + 28) = v3 | 4;
    *(result + 24) = v6;
  }

  return result;
}

uint64_t sub_245E42674(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if (v5)
  {
    PB::TextFormatter::format(this, "endTime", *(a1 + 8));
    v5 = *(a1 + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a1 + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "startTime", *(a1 + 16));
  if ((*(a1 + 28) & 4) != 0)
  {
LABEL_4:
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "taskType");
  }

LABEL_5:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E42718(uint64_t a1, PB::Reader *this)
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
            goto LABEL_59;
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
        goto LABEL_59;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 28) |= 4u;
        v23 = *(this + 1);
        v2 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(this + 1);
          }

          v33 = v2 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_54;
            }

            v36 = v35;
            v37 = *v34;
            *(this + 1) = v36;
            v27 |= (v37 & 0x7F) << v31;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            v35 = v36 + 1;
            v14 = v32++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_53;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_53:
          v2 = v36;
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
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_54:
        *(a1 + 24) = v27;
        goto LABEL_55;
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(a1 + 28) |= 2u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_30;
        }

        *(a1 + 16) = *(*this + v2);
LABEL_49:
        v2 = *(this + 1) + 8;
        *(this + 1) = v2;
        goto LABEL_55;
      }

      if (!PB::Reader::skip(this))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
LABEL_55:
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_59;
      }
    }

    *(a1 + 28) |= 1u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
    {
LABEL_30:
      *(this + 24) = 1;
      goto LABEL_55;
    }

    *(a1 + 8) = *(*this + v2);
    goto LABEL_49;
  }

LABEL_59:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_245E42A24(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if ((v4 & 2) == 0)
  {
    if ((*(result + 28) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = PB::Writer::write(this, *(v3 + 8));
    if ((*(v3 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 16));
  v4 = *(v3 + 28);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v5 = *(v3 + 24);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245E42AB0(uint64_t result)
{
  *result = &unk_2858D0B78;
  *(result + 60) = 0;
  return result;
}

void sub_245E42AD8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E42B10(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D0B78;
  *(result + 60) = 0;
  v2 = *(a2 + 60);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 16);
    v3 = 2;
    *(result + 60) = 2;
    *(result + 16) = v4;
    v2 = *(a2 + 60);
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
    v3 |= 1u;
    *(result + 60) = v3;
    *(result + 8) = v5;
    v2 = *(a2 + 60);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 32);
    v3 |= 0x10u;
    *(result + 60) = v3;
    *(result + 32) = v6;
    v2 = *(a2 + 60);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x200) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 36);
  v3 |= 0x20u;
  *(result + 60) = v3;
  *(result + 36) = v7;
  v2 = *(a2 + 60);
  if ((v2 & 0x200) == 0)
  {
LABEL_9:
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a2 + 52);
  v3 |= 0x200u;
  *(result + 60) = v3;
  *(result + 52) = v8;
  v2 = *(a2 + 60);
  if ((v2 & 8) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(a2 + 28);
  v3 |= 8u;
  *(result + 60) = v3;
  *(result + 28) = v9;
  v2 = *(a2 + 60);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = *(a2 + 40);
  v3 |= 0x40u;
  *(result + 60) = v3;
  *(result + 40) = v10;
  v2 = *(a2 + 60);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a2 + 48);
  v3 |= 0x100u;
  *(result + 60) = v3;
  *(result + 48) = v11;
  v2 = *(a2 + 60);
  if ((v2 & 0x80) == 0)
  {
LABEL_13:
    if ((v2 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = *(a2 + 44);
  v3 |= 0x80u;
  *(result + 60) = v3;
  *(result + 44) = v12;
  v2 = *(a2 + 60);
  if ((v2 & 4) == 0)
  {
LABEL_14:
    if ((v2 & 0x400) == 0)
    {
      return result;
    }

LABEL_24:
    v14 = *(a2 + 56);
    *(result + 60) = v3 | 0x400;
    *(result + 56) = v14;
    return result;
  }

LABEL_23:
  v13 = *(a2 + 24);
  v3 |= 4u;
  *(result + 60) = v3;
  *(result + 24) = v13;
  if ((*(a2 + 60) & 0x400) != 0)
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_245E42C70(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 60);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "averageFilteredPressure", *(a1 + 24));
    v5 = *(a1 + 60);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 28);
  PB::TextFormatter::format(this, "deltaStepCount");
  v5 = *(a1 + 60);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(a1 + 32);
  PB::TextFormatter::format(this, "elevationAscended");
  v5 = *(a1 + 60);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = *(a1 + 36);
  PB::TextFormatter::format(this, "elevationDescended");
  v5 = *(a1 + 60);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a1 + 56);
  PB::TextFormatter::format(this, "isWorkoutElevationFusion");
  v5 = *(a1 + 60);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "pressureAmplitude", *(a1 + 40));
  v5 = *(a1 + 60);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a1 + 44);
  PB::TextFormatter::format(this, "pressureFailureState");
  v5 = *(a1 + 60);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(a1 + 48);
  PB::TextFormatter::format(this, "pressureQuality");
  v5 = *(a1 + 60);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = *(a1 + 52);
  PB::TextFormatter::format(this, "source");
  v5 = *(a1 + 60);
  if ((v5 & 1) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PB::TextFormatter::format(this, "startTime", *(a1 + 8));
  if ((*(a1 + 60) & 2) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

LABEL_13:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E42E14(uint64_t a1, PB::Reader *this)
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
            goto LABEL_182;
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
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(a1 + 60) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_71:
              *(this + 24) = 1;
              goto LABEL_178;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_58;
          }

          if (v22 == 2)
          {
            *(a1 + 60) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_71;
            }

            *(a1 + 8) = *(*this + v2);
LABEL_58:
            v2 = *(this + 1) + 8;
            goto LABEL_147;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 60) |= 0x10u;
              v49 = *(this + 1);
              v2 = *(this + 2);
              v50 = *this;
              if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
              {
                v87 = 0;
                v88 = 0;
                v53 = 0;
                if (v2 <= v49)
                {
                  v2 = *(this + 1);
                }

                v89 = v2 - v49;
                v90 = (v50 + v49);
                v91 = v49 + 1;
                while (1)
                {
                  if (!v89)
                  {
                    LODWORD(v53) = 0;
                    *(this + 24) = 1;
                    goto LABEL_165;
                  }

                  v92 = v91;
                  v93 = *v90;
                  *(this + 1) = v92;
                  v53 |= (v93 & 0x7F) << v87;
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
                    LODWORD(v53) = 0;
                    goto LABEL_164;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v53) = 0;
                }

LABEL_164:
                v2 = v92;
              }

              else
              {
                v51 = 0;
                v52 = 0;
                v53 = 0;
                v54 = (v50 + v49);
                v55 = v49 + 1;
                while (1)
                {
                  v2 = v55;
                  *(this + 1) = v55;
                  v56 = *v54++;
                  v53 |= (v56 & 0x7F) << v51;
                  if ((v56 & 0x80) == 0)
                  {
                    break;
                  }

                  v51 += 7;
                  ++v55;
                  v14 = v52++ > 8;
                  if (v14)
                  {
                    LODWORD(v53) = 0;
                    break;
                  }
                }
              }

LABEL_165:
              *(a1 + 32) = v53;
              goto LABEL_178;
            case 4:
              *(a1 + 60) |= 0x20u;
              v41 = *(this + 1);
              v2 = *(this + 2);
              v42 = *this;
              if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
              {
                v73 = 0;
                v74 = 0;
                v45 = 0;
                if (v2 <= v41)
                {
                  v2 = *(this + 1);
                }

                v75 = v2 - v41;
                v76 = (v42 + v41);
                v77 = v41 + 1;
                while (1)
                {
                  if (!v75)
                  {
                    LODWORD(v45) = 0;
                    *(this + 24) = 1;
                    goto LABEL_157;
                  }

                  v78 = v77;
                  v79 = *v76;
                  *(this + 1) = v78;
                  v45 |= (v79 & 0x7F) << v73;
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
                    LODWORD(v45) = 0;
                    goto LABEL_156;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v45) = 0;
                }

LABEL_156:
                v2 = v78;
              }

              else
              {
                v43 = 0;
                v44 = 0;
                v45 = 0;
                v46 = (v42 + v41);
                v47 = v41 + 1;
                while (1)
                {
                  v2 = v47;
                  *(this + 1) = v47;
                  v48 = *v46++;
                  v45 |= (v48 & 0x7F) << v43;
                  if ((v48 & 0x80) == 0)
                  {
                    break;
                  }

                  v43 += 7;
                  ++v47;
                  v14 = v44++ > 8;
                  if (v14)
                  {
                    LODWORD(v45) = 0;
                    break;
                  }
                }
              }

LABEL_157:
              *(a1 + 36) = v45;
              goto LABEL_178;
            case 5:
              *(a1 + 60) |= 0x200u;
              v31 = *(this + 1);
              v2 = *(this + 2);
              v32 = *this;
              if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
              {
                v80 = 0;
                v81 = 0;
                v35 = 0;
                if (v2 <= v31)
                {
                  v2 = *(this + 1);
                }

                v82 = v2 - v31;
                v83 = (v32 + v31);
                v84 = v31 + 1;
                while (1)
                {
                  if (!v82)
                  {
                    LODWORD(v35) = 0;
                    *(this + 24) = 1;
                    goto LABEL_161;
                  }

                  v85 = v84;
                  v86 = *v83;
                  *(this + 1) = v85;
                  v35 |= (v86 & 0x7F) << v80;
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
                    LODWORD(v35) = 0;
                    goto LABEL_160;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v35) = 0;
                }

LABEL_160:
                v2 = v85;
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
                    LODWORD(v35) = 0;
                    break;
                  }
                }
              }

LABEL_161:
              *(a1 + 52) = v35;
              goto LABEL_178;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(a1 + 60) |= 0x80u;
            v65 = *(this + 1);
            v2 = *(this + 2);
            v66 = *this;
            if (v65 > 0xFFFFFFFFFFFFFFF5 || v65 + 10 > v2)
            {
              v108 = 0;
              v109 = 0;
              v69 = 0;
              if (v2 <= v65)
              {
                v2 = *(this + 1);
              }

              v110 = v2 - v65;
              v111 = (v66 + v65);
              v112 = v65 + 1;
              while (1)
              {
                if (!v110)
                {
                  LODWORD(v69) = 0;
                  *(this + 24) = 1;
                  goto LABEL_177;
                }

                v113 = v112;
                v114 = *v111;
                *(this + 1) = v113;
                v69 |= (v114 & 0x7F) << v108;
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
                  LODWORD(v69) = 0;
                  goto LABEL_176;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v69) = 0;
              }

LABEL_176:
              v2 = v113;
            }

            else
            {
              v67 = 0;
              v68 = 0;
              v69 = 0;
              v70 = (v66 + v65);
              v71 = v65 + 1;
              while (1)
              {
                v2 = v71;
                *(this + 1) = v71;
                v72 = *v70++;
                v69 |= (v72 & 0x7F) << v67;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v67 += 7;
                ++v71;
                v14 = v68++ > 8;
                if (v14)
                {
                  LODWORD(v69) = 0;
                  break;
                }
              }
            }

LABEL_177:
            *(a1 + 44) = v69;
            goto LABEL_178;
          case 0xA:
            *(a1 + 60) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_71;
            }

            *(a1 + 24) = *(*this + v2);
LABEL_146:
            v2 = *(this + 1) + 4;
LABEL_147:
            *(this + 1) = v2;
            goto LABEL_178;
          case 0xB:
            *(a1 + 60) |= 0x400u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v40 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v39 = *(*this + v2++);
              *(this + 1) = v2;
              v40 = v39 != 0;
            }

            *(a1 + 56) = v40;
            goto LABEL_178;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 60) |= 8u;
            v57 = *(this + 1);
            v2 = *(this + 2);
            v58 = *this;
            if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v2)
            {
              v101 = 0;
              v102 = 0;
              v61 = 0;
              if (v2 <= v57)
              {
                v2 = *(this + 1);
              }

              v103 = v2 - v57;
              v104 = (v58 + v57);
              v105 = v57 + 1;
              while (1)
              {
                if (!v103)
                {
                  LODWORD(v61) = 0;
                  *(this + 24) = 1;
                  goto LABEL_173;
                }

                v106 = v105;
                v107 = *v104;
                *(this + 1) = v106;
                v61 |= (v107 & 0x7F) << v101;
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
                  LODWORD(v61) = 0;
                  goto LABEL_172;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v61) = 0;
              }

LABEL_172:
              v2 = v106;
            }

            else
            {
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = (v58 + v57);
              v63 = v57 + 1;
              while (1)
              {
                v2 = v63;
                *(this + 1) = v63;
                v64 = *v62++;
                v61 |= (v64 & 0x7F) << v59;
                if ((v64 & 0x80) == 0)
                {
                  break;
                }

                v59 += 7;
                ++v63;
                v14 = v60++ > 8;
                if (v14)
                {
                  LODWORD(v61) = 0;
                  break;
                }
              }
            }

LABEL_173:
            *(a1 + 28) = v61;
            goto LABEL_178;
          case 7:
            *(a1 + 60) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_71;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_146;
          case 8:
            *(a1 + 60) |= 0x100u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v94 = 0;
              v95 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v96 = v2 - v23;
              v97 = (v24 + v23);
              v98 = v23 + 1;
              while (1)
              {
                if (!v96)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_169;
                }

                v99 = v98;
                v100 = *v97;
                *(this + 1) = v99;
                v27 |= (v100 & 0x7F) << v94;
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
                  LODWORD(v27) = 0;
                  goto LABEL_168;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_168:
              v2 = v99;
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
                  LODWORD(v27) = 0;
                  break;
                }
              }
            }

LABEL_169:
            *(a1 + 48) = v27;
            goto LABEL_178;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v115 = 0;
        return v115 & 1;
      }

      v2 = *(this + 1);
LABEL_178:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_182:
  v115 = v4 ^ 1;
  return v115 & 1;
}

uint64_t sub_245E43748(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 60);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 60);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 60);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = *(v3 + 36);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 60);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    result = PB::Writer::write(this, *(v3 + 24));
    if ((*(v3 + 60) & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  v10 = *(v3 + 44);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x400) == 0)
  {
    return result;
  }

LABEL_23:
  v11 = *(v3 + 56);

  return PB::Writer::write(this);
}

uint64_t sub_245E438B4(uint64_t result)
{
  *result = &unk_2858D0BB0;
  *(result + 92) = 0;
  return result;
}

void sub_245E438DC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E43914(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D0BB0;
  *(result + 92) = 0;
  v2 = *(a2 + 92);
  if ((v2 & 8) != 0)
  {
    v4 = *(a2 + 32);
    v3 = 8;
    *(result + 92) = 8;
    *(result + 32) = v4;
    v2 = *(a2 + 92);
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
    *(result + 92) = v3;
    *(result + 16) = v5;
    v2 = *(a2 + 92);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 24);
    v3 |= 4u;
    *(result + 92) = v3;
    *(result + 24) = v6;
    v2 = *(a2 + 92);
    if ((v2 & 0x1000) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }
  }

  else if ((v2 & 0x1000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 76);
  v3 |= 0x1000u;
  *(result + 92) = v3;
  *(result + 76) = v7;
  v2 = *(a2 + 92);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v8 = *(a2 + 48);
  v3 |= 0x20u;
  *(result + 92) = v3;
  *(result + 48) = v8;
  v2 = *(a2 + 92);
  if ((v2 & 0x4000) == 0)
  {
LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = *(a2 + 84);
  v3 |= 0x4000u;
  *(result + 92) = v3;
  *(result + 84) = v9;
  v2 = *(a2 + 92);
  if ((v2 & 0x100) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v10 = *(a2 + 60);
  v3 |= 0x100u;
  *(result + 92) = v3;
  *(result + 60) = v10;
  v2 = *(a2 + 92);
  if ((v2 & 0x80) == 0)
  {
LABEL_12:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v11 = *(a2 + 56);
  v3 |= 0x80u;
  *(result + 92) = v3;
  *(result + 56) = v11;
  v2 = *(a2 + 92);
  if ((v2 & 0x8000) == 0)
  {
LABEL_13:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v12 = *(a2 + 88);
  v3 |= 0x8000u;
  *(result + 92) = v3;
  *(result + 88) = v12;
  v2 = *(a2 + 92);
  if ((v2 & 0x200) == 0)
  {
LABEL_14:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  v13 = *(a2 + 64);
  v3 |= 0x200u;
  *(result + 92) = v3;
  *(result + 64) = v13;
  v2 = *(a2 + 92);
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  v14 = *(a2 + 40);
  v3 |= 0x10u;
  *(result + 92) = v3;
  *(result + 40) = v14;
  v2 = *(a2 + 92);
  if ((v2 & 0x40) == 0)
  {
LABEL_16:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  v15 = *(a2 + 52);
  v3 |= 0x40u;
  *(result + 92) = v3;
  *(result + 52) = v15;
  v2 = *(a2 + 92);
  if ((v2 & 0x2000) == 0)
  {
LABEL_17:
    if ((v2 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = *(a2 + 80);
  v3 |= 0x2000u;
  *(result + 92) = v3;
  *(result + 80) = v16;
  v2 = *(a2 + 92);
  if ((v2 & 1) == 0)
  {
LABEL_18:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = *(a2 + 8);
  v3 |= 1u;
  *(result + 92) = v3;
  *(result + 8) = v17;
  v2 = *(a2 + 92);
  if ((v2 & 0x400) == 0)
  {
LABEL_19:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  v18 = *(a2 + 68);
  v3 |= 0x400u;
  *(result + 92) = v3;
  *(result + 68) = v18;
  v2 = *(a2 + 92);
  if ((v2 & 0x800) == 0)
  {
LABEL_20:
    if ((v2 & 0x10000) == 0)
    {
      return result;
    }

LABEL_36:
    v20 = *(a2 + 89);
    *(result + 92) = v3 | 0x10000;
    *(result + 89) = v20;
    return result;
  }

LABEL_35:
  v19 = *(a2 + 72);
  v3 |= 0x800u;
  *(result + 92) = v3;
  *(result + 72) = v19;
  if ((*(a2 + 92) & 0x10000) != 0)
  {
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_245E43B1C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 92);
  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "altitudeDelta", *(a1 + 48));
    v5 = *(a1 + 92);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "altitudeDeltaStreaming", *(a1 + 52));
  v5 = *(a1 + 92);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "deltaTime", *(a1 + 56));
  v5 = *(a1 + 92);
  if ((v5 & 0x8000) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  v6 = *(a1 + 88);
  PB::TextFormatter::format(this, "didEstimate");
  v5 = *(a1 + 92);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "downhillStartTime", *(a1 + 8));
  v5 = *(a1 + 92);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = *(a1 + 16);
  PB::TextFormatter::format(this, "elevationAscended");
  v5 = *(a1 + 92);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v8 = *(a1 + 24);
  PB::TextFormatter::format(this, "elevationDescended");
  v5 = *(a1 + 92);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v9 = *(a1 + 60);
  PB::TextFormatter::format(this, "gradeType");
  v5 = *(a1 + 92);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "heightRef", *(a1 + 64));
  v5 = *(a1 + 92);
  if ((v5 & 0x10000) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v10 = *(a1 + 89);
  PB::TextFormatter::format(this, "isWorkoutElevationFusion");
  v5 = *(a1 + 92);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "predictionError", *(a1 + 68));
  v5 = *(a1 + 92);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "predictionIntercept", *(a1 + 72));
  v5 = *(a1 + 92);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v11 = *(a1 + 76);
  PB::TextFormatter::format(this, "source");
  v5 = *(a1 + 92);
  if ((v5 & 8) == 0)
  {
LABEL_15:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "startTime", *(a1 + 32));
  v5 = *(a1 + 92);
  if ((v5 & 0x2000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "timeDeltaStreaming", *(a1 + 80));
  v5 = *(a1 + 92);
  if ((v5 & 0x10) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  PB::TextFormatter::format(this, "timeRef", *(a1 + 40));
  if ((*(a1 + 92) & 0x4000) != 0)
  {
LABEL_18:
    PB::TextFormatter::format(this, "verticalSpeed", *(a1 + 84));
  }

LABEL_19:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E43D80(uint64_t a1, PB::Reader *this)
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
        goto LABEL_154;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 92) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_128;
        case 2u:
          *(a1 + 92) |= 2u;
          v40 = *(this + 1);
          v2 = *(this + 2);
          v41 = *this;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v72 = 0;
            v73 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v2 = *(this + 1);
            }

            v74 = v2 - v40;
            v75 = (v41 + v40);
            v76 = v40 + 1;
            while (1)
            {
              if (!v74)
              {
                v44 = 0;
                *(this + 24) = 1;
                goto LABEL_145;
              }

              v77 = v76;
              v78 = *v75;
              *(this + 1) = v77;
              v44 |= (v78 & 0x7F) << v72;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v72 += 7;
              --v74;
              ++v75;
              v76 = v77 + 1;
              v14 = v73++ > 8;
              if (v14)
              {
                v44 = 0;
LABEL_144:
                v2 = v77;
                goto LABEL_145;
              }
            }

            if (*(this + 24))
            {
              v44 = 0;
            }

            goto LABEL_144;
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
              goto LABEL_145;
            }

            v42 += 7;
            ++v46;
            v14 = v43++ > 8;
          }

          while (!v14);
          v44 = 0;
LABEL_145:
          *(a1 + 16) = v44;
          goto LABEL_150;
        case 3u:
          *(a1 + 92) |= 4u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v58 = 0;
            v59 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(this + 1);
            }

            v60 = v2 - v24;
            v61 = (v25 + v24);
            v62 = v24 + 1;
            while (1)
            {
              if (!v60)
              {
                v28 = 0;
                *(this + 24) = 1;
                goto LABEL_137;
              }

              v63 = v62;
              v64 = *v61;
              *(this + 1) = v63;
              v28 |= (v64 & 0x7F) << v58;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              --v60;
              ++v61;
              v62 = v63 + 1;
              v14 = v59++ > 8;
              if (v14)
              {
                v28 = 0;
LABEL_136:
                v2 = v63;
                goto LABEL_137;
              }
            }

            if (*(this + 24))
            {
              v28 = 0;
            }

            goto LABEL_136;
          }

          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          do
          {
            v2 = v30;
            *(this + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              goto LABEL_137;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          v28 = 0;
LABEL_137:
          *(a1 + 24) = v28;
          goto LABEL_150;
        case 4u:
          *(a1 + 92) |= 0x1000u;
          v32 = *(this + 1);
          v2 = *(this + 2);
          v33 = *this;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v65 = 0;
            v66 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v2 = *(this + 1);
            }

            v67 = v2 - v32;
            v68 = (v33 + v32);
            v69 = v32 + 1;
            while (1)
            {
              if (!v67)
              {
                LODWORD(v36) = 0;
                *(this + 24) = 1;
                goto LABEL_141;
              }

              v70 = v69;
              v71 = *v68;
              *(this + 1) = v70;
              v36 |= (v71 & 0x7F) << v65;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v65 += 7;
              --v67;
              ++v68;
              v69 = v70 + 1;
              v14 = v66++ > 8;
              if (v14)
              {
                LODWORD(v36) = 0;
LABEL_140:
                v2 = v70;
                goto LABEL_141;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v36) = 0;
            }

            goto LABEL_140;
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
              goto LABEL_141;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
          }

          while (!v14);
          LODWORD(v36) = 0;
LABEL_141:
          *(a1 + 76) = v36;
          goto LABEL_150;
        case 5u:
          *(a1 + 92) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_75;
        case 6u:
          *(a1 + 92) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 84) = *(*this + v2);
          goto LABEL_75;
        case 7u:
          *(a1 + 92) |= 0x100u;
          v48 = *(this + 1);
          v2 = *(this + 2);
          v49 = *this;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v79 = 0;
            v80 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v2 = *(this + 1);
            }

            v81 = v2 - v48;
            v82 = (v49 + v48);
            v83 = v48 + 1;
            while (1)
            {
              if (!v81)
              {
                LODWORD(v52) = 0;
                *(this + 24) = 1;
                goto LABEL_149;
              }

              v84 = v83;
              v85 = *v82;
              *(this + 1) = v84;
              v52 |= (v85 & 0x7F) << v79;
              if ((v85 & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              --v81;
              ++v82;
              v83 = v84 + 1;
              v14 = v80++ > 8;
              if (v14)
              {
                LODWORD(v52) = 0;
LABEL_148:
                v2 = v84;
                goto LABEL_149;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_148;
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
              goto LABEL_149;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_149:
          *(a1 + 60) = v52;
          goto LABEL_150;
        case 8u:
          *(a1 + 92) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_75;
        case 9u:
          *(a1 + 92) |= 0x8000u;
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

          *(a1 + 88) = v57;
          goto LABEL_150;
        case 0xAu:
          *(a1 + 92) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_75;
        case 0xBu:
          *(a1 + 92) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_128;
        case 0xCu:
          *(a1 + 92) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_75;
        case 0xDu:
          *(a1 + 92) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_75;
        case 0xEu:
          *(a1 + 92) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 8) = *(*this + v2);
LABEL_128:
          v2 = *(this + 1) + 8;
          goto LABEL_129;
        case 0xFu:
          *(a1 + 92) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_75;
        case 0x10u:
          *(a1 + 92) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_88:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 72) = *(*this + v2);
LABEL_75:
            v2 = *(this + 1) + 4;
LABEL_129:
            *(this + 1) = v2;
          }

          goto LABEL_150;
        case 0x11u:
          *(a1 + 92) |= 0x10000u;
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

          *(a1 + 89) = v23;
          goto LABEL_150;
        default:
          if (!PB::Reader::skip(this))
          {
            v86 = 0;
            return v86 & 1;
          }

          v2 = *(this + 1);
LABEL_150:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_154;
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

LABEL_154:
  v86 = v4 ^ 1;
  return v86 & 1;
}

uint64_t sub_245E44678(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 92);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 92);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v6 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x1000) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v7 = *(v3 + 76);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 92);
  if ((v4 & 0x4000) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 92);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v8 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 92);
  if ((v4 & 0x8000) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v9 = *(v3 + 88);
  result = PB::Writer::write(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x200) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 92);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 92);
  if ((v4 & 0x40) == 0)
  {
LABEL_13:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 92);
  if ((v4 & 0x2000) == 0)
  {
LABEL_14:
    if ((v4 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 92);
  if ((v4 & 1) == 0)
  {
LABEL_15:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 92);
  if ((v4 & 0x400) == 0)
  {
LABEL_16:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    result = PB::Writer::write(this, *(v3 + 72));
    if ((*(v3 + 92) & 0x10000) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 92);
  if ((v4 & 0x800) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v4 & 0x10000) == 0)
  {
    return result;
  }

LABEL_35:
  v10 = *(v3 + 89);

  return PB::Writer::write(this);
}

uint64_t sub_245E4488C(uint64_t result)
{
  *result = &unk_2858D0BE8;
  *(result + 8) = 0;
  *(result + 32) = 0;
  return result;
}

void sub_245E448B0(PB::Base *this)
{
  *this = &unk_2858D0BE8;
  v4 = *(this + 1);
  v2 = (this + 8);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_245DF8934(v2, v3);
  }

  PB::Base::~Base(this);
}

void sub_245E44914(PB::Base *a1)
{
  sub_245E448B0(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E4494C(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D0BE8;
  *(result + 8) = 0;
  *(result + 32) = 0;
  if (*(a2 + 32))
  {
    v2 = *(a2 + 16);
    *(result + 32) = 1;
    *(result + 16) = v2;
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  v3 = *(a2 + 32);
  if ((v3 & 2) != 0)
  {
    v4 = *(a2 + 24);
    *(result + 32) |= 2u;
    *(result + 24) = v4;
    v3 = *(a2 + 32);
  }

  if ((v3 & 4) != 0)
  {
    v5 = *(a2 + 28);
    *(result + 32) |= 4u;
    *(result + 28) = v5;
  }

  return result;
}

uint64_t sub_245E44A60(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if ((*(a1 + 32) & 4) != 0)
  {
    v5 = *(a1 + 28);
    PB::TextFormatter::format(this, "active");
  }

  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  v6 = *(a1 + 32);
  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(this, "threshold", *(a1 + 24));
    v6 = *(a1 + 32);
  }

  if (v6)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E44B10(uint64_t a1, PB::Reader *this)
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
            goto LABEL_46;
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
          *(a1 + 32) |= 2u;
          v29 = *(this + 1);
          if (v29 > 0xFFFFFFFFFFFFFFFBLL || v29 + 4 > *(this + 2))
          {
LABEL_37:
            *(this + 24) = 1;
            goto LABEL_42;
          }

          *(a1 + 24) = *(*this + v29);
          v28 = *(this + 1) + 4;
          goto LABEL_41;
        }

        if (v22 == 4)
        {
          *(a1 + 32) |= 4u;
          v23 = *(this + 1);
          if (v23 >= *(this + 2))
          {
            v26 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v24 = v23 + 1;
            v25 = *(*this + v23);
            *(this + 1) = v24;
            v26 = v25 != 0;
          }

          *(a1 + 28) = v26;
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 32) |= 1u;
          v27 = *(this + 1);
          if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(this + 2))
          {
            goto LABEL_37;
          }

          *(a1 + 16) = *(*this + v27);
          v28 = *(this + 1) + 8;
LABEL_41:
          *(this + 1) = v28;
          goto LABEL_42;
        }

        if (v22 == 2)
        {
          operator new();
        }
      }

      if (!PB::Reader::skip(this))
      {
        v31 = 0;
        return v31 & 1;
      }

LABEL_42:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_46:
  v31 = v4 ^ 1;
  return v31 & 1;
}

uint64_t sub_245E44DD8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 32))
  {
    result = PB::Writer::write(this, *(result + 16));
  }

  if (*(v3 + 8))
  {
    result = PB::Writer::write();
  }

  v4 = *(v3 + 32);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 24));
    v4 = *(v3 + 32);
  }

  if ((v4 & 4) != 0)
  {
    v5 = *(v3 + 28);

    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_245E44E70(uint64_t result)
{
  *result = &unk_2858D0C20;
  *(result + 12) = 0;
  return result;
}

void sub_245E44E98(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E44ED0(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D0C20;
  *(result + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(result + 12) = 1;
    *(result + 8) = v2;
  }

  return result;
}

uint64_t sub_245E44F0C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "state");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E44F6C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_51;
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

        v10 = (v4 & 1) != 0 ? 0 : v17;
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

      if ((v10 >> 3) == 1)
      {
        *(a1 + 12) |= 1u;
        v23 = *(this + 1);
        v2 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v33 = v3 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_46;
            }

            v36 = v35;
            v37 = *v34;
            *(this + 1) = v36;
            v27 |= (v37 & 0x7F) << v31;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            v35 = v36 + 1;
            v14 = v32++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_45;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_45:
          v3 = v36;
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
            v3 = v29;
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
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_46:
        *(a1 + 8) = v27;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v38 = 0;
          return v38 & 1;
        }

        v3 = *(this + 1);
        v2 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_51:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_245E451E0(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    v2 = *(result + 8);
    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_245E45200(uint64_t result)
{
  *result = &unk_2858D0C58;
  *(result + 96) = 0;
  return result;
}

void sub_245E45228(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E45260(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D0C58;
  *(result + 96) = 0;
  v2 = *(a2 + 96);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 40);
    v3 = 16;
    *(result + 96) = 16;
    *(result + 40) = v4;
    v2 = *(a2 + 96);
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
    *(result + 96) = v3;
    *(result + 16) = v5;
    v2 = *(a2 + 96);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 24);
    v3 |= 4u;
    *(result + 96) = v3;
    *(result + 24) = v6;
    v2 = *(a2 + 96);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 32);
  v3 |= 8u;
  *(result + 96) = v3;
  *(result + 32) = v7;
  v2 = *(a2 + 96);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v8 = *(a2 + 8);
  v3 |= 1u;
  *(result + 96) = v3;
  *(result + 8) = v8;
  v2 = *(a2 + 96);
  if ((v2 & 0x1000) == 0)
  {
LABEL_10:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v9 = *(a2 + 76);
  v3 |= 0x1000u;
  *(result + 96) = v3;
  *(result + 76) = v9;
  v2 = *(a2 + 96);
  if ((v2 & 0x2000) == 0)
  {
LABEL_11:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v10 = *(a2 + 80);
  v3 |= 0x2000u;
  *(result + 96) = v3;
  *(result + 80) = v10;
  v2 = *(a2 + 96);
  if ((v2 & 0x4000) == 0)
  {
LABEL_12:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v11 = *(a2 + 84);
  v3 |= 0x4000u;
  *(result + 96) = v3;
  *(result + 84) = v11;
  v2 = *(a2 + 96);
  if ((v2 & 0x200) == 0)
  {
LABEL_13:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v12 = *(a2 + 64);
  v3 |= 0x200u;
  *(result + 96) = v3;
  *(result + 64) = v12;
  v2 = *(a2 + 96);
  if ((v2 & 0x400) == 0)
  {
LABEL_14:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v13 = *(a2 + 68);
  v3 |= 0x400u;
  *(result + 96) = v3;
  *(result + 68) = v13;
  v2 = *(a2 + 96);
  if ((v2 & 0x800) == 0)
  {
LABEL_15:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  v14 = *(a2 + 72);
  v3 |= 0x800u;
  *(result + 96) = v3;
  *(result + 72) = v14;
  v2 = *(a2 + 96);
  if ((v2 & 0x40) == 0)
  {
LABEL_16:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  v15 = *(a2 + 52);
  v3 |= 0x40u;
  *(result + 96) = v3;
  *(result + 52) = v15;
  v2 = *(a2 + 96);
  if ((v2 & 0x80) == 0)
  {
LABEL_17:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  v16 = *(a2 + 56);
  v3 |= 0x80u;
  *(result + 96) = v3;
  *(result + 56) = v16;
  v2 = *(a2 + 96);
  if ((v2 & 0x100) == 0)
  {
LABEL_18:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_34:
  v17 = *(a2 + 60);
  v3 |= 0x100u;
  *(result + 96) = v3;
  *(result + 60) = v17;
  v2 = *(a2 + 96);
  if ((v2 & 0x20) == 0)
  {
LABEL_19:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_35:
  v18 = *(a2 + 48);
  v3 |= 0x20u;
  *(result + 96) = v3;
  *(result + 48) = v18;
  v2 = *(a2 + 96);
  if ((v2 & 0x10000) == 0)
  {
LABEL_20:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  v19 = *(a2 + 92);
  v3 |= 0x10000u;
  *(result + 96) = v3;
  *(result + 92) = v19;
  v2 = *(a2 + 96);
  if ((v2 & 0x20000) == 0)
  {
LABEL_21:
    if ((v2 & 0x8000) == 0)
    {
      return result;
    }

LABEL_38:
    v21 = *(a2 + 88);
    *(result + 96) = v3 | 0x8000;
    *(result + 88) = v21;
    return result;
  }

LABEL_37:
  v20 = *(a2 + 93);
  v3 |= 0x20000u;
  *(result + 96) = v3;
  *(result + 93) = v20;
  if ((*(a2 + 96) & 0x8000) != 0)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t sub_245E45484(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 96);
  if ((v5 & 0x10000) != 0)
  {
    v7 = *(a1 + 92);
    PB::TextFormatter::format(this, "doingBiasEstimation");
    v5 = *(a1 + 96);
    if ((v5 & 0x20000) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 93);
  PB::TextFormatter::format(this, "doingYawCorrection");
  v5 = *(a1 + 96);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = *(a1 + 48);
  PB::TextFormatter::format(this, "magneticFieldCalibrationLevel");
  v5 = *(a1 + 96);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "magneticFieldX", *(a1 + 52));
  v5 = *(a1 + 96);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "magneticFieldY", *(a1 + 56));
  v5 = *(a1 + 96);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "magneticFieldZ", *(a1 + 60));
  v5 = *(a1 + 96);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "quaternionW", *(a1 + 8));
  v5 = *(a1 + 96);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "quaternionX", *(a1 + 16));
  v5 = *(a1 + 96);
  if ((v5 & 4) == 0)
  {
LABEL_10:
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "quaternionY", *(a1 + 24));
  v5 = *(a1 + 96);
  if ((v5 & 8) == 0)
  {
LABEL_11:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "quaternionZ", *(a1 + 32));
  v5 = *(a1 + 96);
  if ((v5 & 0x200) == 0)
  {
LABEL_12:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "rotationRateX", *(a1 + 64));
  v5 = *(a1 + 96);
  if ((v5 & 0x400) == 0)
  {
LABEL_13:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "rotationRateY", *(a1 + 68));
  v5 = *(a1 + 96);
  if ((v5 & 0x800) == 0)
  {
LABEL_14:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "rotationRateZ", *(a1 + 72));
  v5 = *(a1 + 96);
  if ((v5 & 0x10) == 0)
  {
LABEL_15:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  v5 = *(a1 + 96);
  if ((v5 & 0x1000) == 0)
  {
LABEL_16:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "userAccelerationX", *(a1 + 76));
  v5 = *(a1 + 96);
  if ((v5 & 0x2000) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "userAccelerationY", *(a1 + 80));
  v5 = *(a1 + 96);
  if ((v5 & 0x4000) == 0)
  {
LABEL_18:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_39:
  PB::TextFormatter::format(this, "userAccelerationZ", *(a1 + 84));
  if ((*(a1 + 96) & 0x8000) != 0)
  {
LABEL_19:
    v6 = *(a1 + 88);
    PB::TextFormatter::format(this, "variant");
  }

LABEL_20:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E45708(uint64_t a1, PB::Reader *this)
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
        goto LABEL_123;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 96) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_61;
        case 2u:
          *(a1 + 96) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_61;
        case 3u:
          *(a1 + 96) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_61;
        case 4u:
          *(a1 + 96) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_61;
        case 5u:
          *(a1 + 96) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 8) = *(*this + v2);
LABEL_61:
          v2 = *(this + 1) + 8;
          goto LABEL_108;
        case 6u:
          *(a1 + 96) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_107;
        case 7u:
          *(a1 + 96) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_107;
        case 8u:
          *(a1 + 96) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 84) = *(*this + v2);
          goto LABEL_107;
        case 9u:
          *(a1 + 96) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_107;
        case 0xAu:
          *(a1 + 96) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_107;
        case 0xBu:
          *(a1 + 96) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_107;
        case 0xCu:
          *(a1 + 96) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_107;
        case 0xDu:
          *(a1 + 96) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_107;
        case 0xEu:
          *(a1 + 96) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_85:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 60) = *(*this + v2);
LABEL_107:
            v2 = *(this + 1) + 4;
LABEL_108:
            *(this + 1) = v2;
          }

          goto LABEL_119;
        case 0xFu:
          *(a1 + 96) |= 0x20u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v42 = 0;
            v43 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(this + 1);
            }

            v44 = v2 - v24;
            v45 = (v25 + v24);
            v46 = v24 + 1;
            while (1)
            {
              if (!v44)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_114;
              }

              v47 = v46;
              v48 = *v45;
              *(this + 1) = v47;
              v28 |= (v48 & 0x7F) << v42;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              --v44;
              ++v45;
              v46 = v47 + 1;
              v14 = v43++ > 8;
              if (v14)
              {
                LODWORD(v28) = 0;
LABEL_113:
                v2 = v47;
                goto LABEL_114;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_113;
          }

          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          do
          {
            v2 = v30;
            *(this + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              goto LABEL_114;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_114:
          *(a1 + 48) = v28;
          goto LABEL_119;
        case 0x10u:
          *(a1 + 96) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v33 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v32 = *(*this + v2++);
            *(this + 1) = v2;
            v33 = v32 != 0;
          }

          *(a1 + 92) = v33;
          goto LABEL_119;
        case 0x11u:
          *(a1 + 96) |= 0x20000u;
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

          *(a1 + 93) = v23;
          goto LABEL_119;
        case 0x12u:
          *(a1 + 96) |= 0x8000u;
          v34 = *(this + 1);
          v2 = *(this + 2);
          v35 = *this;
          if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v2)
          {
            v49 = 0;
            v50 = 0;
            v38 = 0;
            if (v2 <= v34)
            {
              v2 = *(this + 1);
            }

            v51 = v2 - v34;
            v52 = (v35 + v34);
            v53 = v34 + 1;
            while (1)
            {
              if (!v51)
              {
                LODWORD(v38) = 0;
                *(this + 24) = 1;
                goto LABEL_118;
              }

              v54 = v53;
              v55 = *v52;
              *(this + 1) = v54;
              v38 |= (v55 & 0x7F) << v49;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              --v51;
              ++v52;
              v53 = v54 + 1;
              v14 = v50++ > 8;
              if (v14)
              {
                LODWORD(v38) = 0;
LABEL_117:
                v2 = v54;
                goto LABEL_118;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v38) = 0;
            }

            goto LABEL_117;
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = (v35 + v34);
          v40 = v34 + 1;
          do
          {
            v2 = v40;
            *(this + 1) = v40;
            v41 = *v39++;
            v38 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              goto LABEL_118;
            }

            v36 += 7;
            ++v40;
            v14 = v37++ > 8;
          }

          while (!v14);
          LODWORD(v38) = 0;
LABEL_118:
          *(a1 + 88) = v38;
          goto LABEL_119;
        default:
          if (!PB::Reader::skip(this))
          {
            v56 = 0;
            return v56 & 1;
          }

          v2 = *(this + 1);
LABEL_119:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_123;
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

LABEL_123:
  v56 = v4 ^ 1;
  return v56 & 1;
}

uint64_t sub_245E45EA4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 96);
  if ((v4 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(result + 40));
    v4 = *(v3 + 96);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 96);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 96);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 96);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 96);
  if ((v4 & 0x1000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 96);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 96);
  if ((v4 & 0x4000) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 96);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 96);
  if ((v4 & 0x400) == 0)
  {
LABEL_11:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 96);
  if ((v4 & 0x800) == 0)
  {
LABEL_12:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 96);
  if ((v4 & 0x40) == 0)
  {
LABEL_13:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 96);
  if ((v4 & 0x80) == 0)
  {
LABEL_14:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 96);
  if ((v4 & 0x100) == 0)
  {
LABEL_15:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 96);
  if ((v4 & 0x20) == 0)
  {
LABEL_16:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  v5 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x10000) == 0)
  {
LABEL_17:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    v7 = *(v3 + 93);
    result = PB::Writer::write(this);
    if ((*(v3 + 96) & 0x8000) == 0)
    {
      return result;
    }

    goto LABEL_37;
  }

LABEL_35:
  v6 = *(v3 + 92);
  result = PB::Writer::write(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x20000) != 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  if ((v4 & 0x8000) == 0)
  {
    return result;
  }

LABEL_37:
  v8 = *(v3 + 88);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245E460D4(uint64_t result)
{
  *result = &unk_2858D0C90;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void sub_245E46100(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245E46138(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D0C90;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16))
  {
    v3 = *(a2 + 8);
    *(a1 + 16) = 1;
    *(a1 + 8) = v3;
    v2 = 3;
    if ((*(a2 + 16) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 16) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 12);
    *(a1 + 16) = v2;
    *(a1 + 12) = result;
  }

  return result;
}

uint64_t sub_245E461A0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "name");
    v5 = *(a1 + 16);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "value", *(a1 + 12));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E4621C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_54;
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
        *(a1 + 16) |= 2u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
        {
          *(a1 + 12) = *(*this + v2);
          v2 = *(this + 1) + 4;
          *(this + 1) = v2;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 16) |= 1u;
        v22 = *(this + 1);
        v2 = *(this + 2);
        v23 = *this;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v2 = *(this + 1);
          }

          v32 = v2 - v22;
          v33 = (v23 + v22);
          v34 = v22 + 1;
          while (1)
          {
            if (!v32)
            {
              LODWORD(v26) = 0;
              *(this + 24) = 1;
              goto LABEL_49;
            }

            v35 = v34;
            v36 = *v33;
            *(this + 1) = v35;
            v26 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            --v32;
            ++v33;
            v34 = v35 + 1;
            v14 = v31++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              goto LABEL_48;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_48:
          v2 = v35;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          while (1)
          {
            v2 = v28;
            *(this + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              break;
            }
          }
        }

LABEL_49:
        *(a1 + 8) = v26;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v37 = 0;
          return v37 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_54:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t sub_245E464E8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 16);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 12);

    return PB::Writer::write(this, v6);
  }

  return result;
}

uint64_t sub_245E46554(uint64_t a1)
{
  *a1 = 0;
  v2 = dispatch_queue_create("CMMsl.Writer", 0);
  *(a1 + 8) = v2;
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v2);
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 300;
  *(a1 + 40) = -1;
  v4 = MEMORY[0x277D85DD0];
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  handler[0] = v4;
  handler[1] = 0x40000000;
  handler[2] = sub_245E46658;
  handler[3] = &unk_278E96D40;
  handler[4] = a1;
  dispatch_source_set_event_handler(v3, handler);
  dispatch_source_set_timer(*(a1 + 16), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_resume(*(a1 + 16));
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  deflateInit_((a1 + 80), -1, "1.2.12", 112);
  return a1;
}

void sub_245E46660(void *a1)
{
  v1 = (a1 + 7);
  if (a1[7])
  {
    while (1)
    {
      v3 = deflate((a1 + 10), 4);
      if (v3)
      {
        break;
      }

      sub_245E47024(a1);
    }

    if (v3 == 1)
    {
      v4 = a1[15];
      v5 = v4 + 28;
      v6 = (v4 + 35) & 0xFFFFFFFFFFFFFFF8;
      *(a1[7] + 12) = v4 + 12;
      if (v4 + 28 < v6)
      {
        do
        {
          *(*v1 + v5++) = 0;
        }

        while (v6 != v5);
      }

      v7 = a1[7];
      if (*a1)
      {
        (*(**a1 + 24))(*a1, v7, v6);
        free(*v1);
      }

      else
      {
        v8 = a1[1];
        destructor[0] = MEMORY[0x277D85DD0];
        destructor[1] = 0x40000000;
        destructor[2] = sub_245E470A4;
        destructor[3] = &unk_278E96E28;
        destructor[4] = v7;
        v9 = dispatch_data_create(v7, v6, v8, destructor);
        dispatch_io_write(a1[3], a1[6], v9, a1[1], &unk_2858D18E8);
        dispatch_release(v9);
      }

      a1[6] += v6;
      v1[1] = 0;
      v1[2] = 0;
      *v1 = 0;
      deflateReset((a1 + 10));
      dispatch_source_set_timer(a1[2], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, (1000000000 * a1[4]) >> 1);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "zstream status? Msl %d\n", v3);
    }
  }
}

void sub_245E46824(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = sub_245E46898;
  v3[3] = &unk_278E96D60;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_sync(v2, v3);
}

uint64_t sub_245E46898(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 40) != -1)
  {
    sub_245F2AE00();
  }

  *(v1 + 32) = *(result + 40);
  return result;
}

uint64_t sub_245E468C4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    dispatch_release(v4);
  }

  else
  {
    v5 = *(a1 + 40);
    if ((v5 & 0x80000000) == 0)
    {
      close(v5);
    }
  }

  free(*(a1 + 56));
  deflateEnd((a1 + 80));
  return a1;
}

uint64_t sub_245E46934(uint64_t a1, uint64_t a2, int a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v3 = *(a1 + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = sub_245E469E8;
  v6[3] = &unk_278E96DA8;
  v6[5] = a1;
  v6[6] = a2;
  v7 = a3;
  v6[4] = &v8;
  dispatch_sync(v3, v6);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

dispatch_io_t sub_245E469E8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = open_dprotected_np(*(a1 + 48), 16777730, *(a1 + 56), 0, 438);
  *(v2 + 40) = v3;
  if (v3 < 0)
  {
    v7 = *MEMORY[0x277D85DF8];
    v8 = "Cannot open Msl file\n";
    v9 = 21;
  }

  else
  {
    v4 = lseek(v3, 0, 2);
    if (v4 < 0)
    {
      v7 = *MEMORY[0x277D85DF8];
      v8 = "Cannot seek to end of Msl file\n";
      v9 = 31;
    }

    else
    {
      v5 = v4;
      if ((lseek(*(v2 + 40), 0, 0) & 0x8000000000000000) == 0)
      {
        if (v5)
        {
          __buf = 0;
          if (pread(*(v2 + 40), &__buf, 8uLL, 0) == 8)
          {
            if (__buf == 0xE020C5BE006C536DLL)
            {
              v6 = (v5 + 7) & 0x7FFFFFFFFFFFFFF8;
LABEL_15:
              *(v2 + 48) = v6;
              v11 = *(v2 + 40);
              v12 = *(v2 + 8);
              cleanup_handler[0] = MEMORY[0x277D85DD0];
              cleanup_handler[1] = 0x40000000;
              cleanup_handler[2] = sub_245E46C1C;
              cleanup_handler[3] = &unk_278E96D80;
              v17 = v11;
              result = dispatch_io_create(1uLL, v11, v12, cleanup_handler);
              *(v2 + 24) = result;
              if (result)
              {
                *(*(*(a1 + 32) + 8) + 24) = 1;
                return result;
              }

              v13 = *MEMORY[0x277D85DF8];
              v14 = "Cannot create dispatch_io for Msl file\n";
              v15 = 39;
              return fwrite(v14, v15, 1uLL, v13);
            }

            v13 = *MEMORY[0x277D85DF8];
            v14 = "Bad signature in Msl file\n";
            v15 = 26;
          }

          else
          {
            v13 = *MEMORY[0x277D85DF8];
            v14 = "Short signature in Msl file\n";
            v15 = 28;
          }

          return fwrite(v14, v15, 1uLL, v13);
        }

        v6 = 8;
        pwrite(*(v2 + 40), &unk_245F30480, 8uLL, 0);
        goto LABEL_15;
      }

      v7 = *MEMORY[0x277D85DF8];
      v8 = "Cannot seek to start of Msl file\n";
      v9 = 33;
    }
  }

  return fwrite(v8, v9, 1uLL, v7);
}

void sub_245E46C24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = sub_245E46C98;
  v3[3] = &unk_278E96DC8;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_sync(v2, v3);
}

void sub_245E46C98(uint64_t a1)
{
  v2 = *(a1 + 32);
  PB::Writer::Writer(&v5);
  (*(**(a1 + 40) + 24))(*(a1 + 40), &v5);
  v3 = *(v2 + 56);
  if (!v3)
  {
    sub_245E46D78(v2);
    v3 = *(v2 + 56);
  }

  ++*(v3 + 16);
  v4 = v5 - v6;
  sub_245E46E64(v2, &v4, 4);
  sub_245E46E64(v2, v6, v5 - v6);
  if (!*(v2 + 72))
  {
    sub_245E46660(v2);
  }

  PB::Writer::~Writer(&v5);
}

void sub_245E46D60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PB::Writer::~Writer(va);
  _Unwind_Resume(a1);
}

void sub_245E46D78(uint64_t a1)
{
  *(a1 + 56) = malloc_type_malloc(0x8000uLL, 0x100004077774924uLL);
  *(a1 + 64) = xmmword_245F30470;
  gettimeofday(&v7, 0);
  v2 = *(a1 + 56);
  *v2 = 0x5979AAB3D5E07959;
  *(v2 + 8) = 1936614771;
  tv_sec = v7.tv_sec;
  *(v2 + 16) = 0;
  *(v2 + 20) = tv_sec;
  *(v2 + 24) = 1000 * v7.tv_usec;
  *(a1 + 104) = v2 + 28;
  *(a1 + 112) = *(a1 + 64) - 28;
  v4 = 1000000000 * *(a1 + 32);
  v5 = *(a1 + 16);
  v6 = dispatch_time(0, v4);

  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, v4 >> 1);
}

char *sub_245E46E64(char *result, uint64_t a2, int a3)
{
  *(result + 10) = a2;
  v3 = (result + 80);
  *(result + 22) = a3;
  if (a3)
  {
    v4 = result;
    do
    {
      result = deflate(v3, 0);
      if (!result && !*(v4 + 28))
      {
        result = sub_245E47024(v4);
      }
    }

    while (*(v4 + 22));
  }

  return result;
}

void sub_245E46EBC(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = sub_245E46F44;
  v4[3] = &unk_278E96E08;
  v4[4] = a1;
  v4[5] = v2;
  dispatch_sync(v3, v4);
}

void sub_245E46F44(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_245E46660(v2);
  v3 = v2[3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = sub_245E46FE4;
  v5[3] = &unk_278E96DE8;
  v4 = *(a1 + 40);
  v5[4] = v2;
  v5[5] = v4;
  dispatch_io_barrier(v3, v5);
  dispatch_semaphore_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(*(a1 + 40));
}

intptr_t sub_245E46FE4(uint64_t a1)
{
  fsync(*(*(a1 + 32) + 40));
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

char *sub_245E47024(char *result)
{
  v1 = result;
  v3 = *(result + 8);
  v2 = *(result + 9);
  if (v2)
  {
    *(result + 28) += v2;
    *(result + 8) = v3 + v2;
    *(result + 9) = 0;
  }

  else
  {
    *(result + 8) = 2 * v3;
    result = malloc_type_realloc(*(result + 7), 2 * v3, 0x100004077774924uLL);
    *(v1 + 7) = result;
    v4 = *(v1 + 15);
    *(v1 + 13) = &result[v4 + 28];
    *(v1 + 28) = *(v1 + 16) - v4;
  }

  return result;
}

void sub_245E470AC(int a1, char a2, int a3, int __errnum)
{
  if (__errnum || (a2 & 1) == 0)
  {
    v4 = *MEMORY[0x277D85DF8];
    v5 = strerror(__errnum);
    fprintf(v4, "Msl dispatch io write error %s\n", v5);
  }
}

uint64_t sub_245E47114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = *a2;
  if (*(a2 + 39) < 0)
  {
    sub_245DF8878((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v6 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v6;
  }

  if (*(a2 + 63) < 0)
  {
    sub_245DF8878((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v7 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v7;
  }

  if (*(a2 + 87) < 0)
  {
    sub_245DF8878((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v8 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v8;
  }

  v9 = *(a2 + 88);
  *(a1 + 104) = 0u;
  *(a1 + 88) = v9;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0xBFF0000000000000;
  v10 = sub_245EBCB4C(a1 + 16, a2, a3, a4);
  *(a1 + 136) = v10;
  if ((v10 & 1) == 0)
  {
    if (qword_27EE37600 != -1)
    {
      sub_245F2AE2C();
    }

    v11 = qword_27EE375F8;
    if (os_log_type_enabled(qword_27EE375F8, OS_LOG_TYPE_ERROR))
    {
      sub_245F2AE40(a1, (a1 + 16), v11);
    }
  }

  return a1;
}

void sub_245E4723C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245E472A0(uint64_t a1)
{
  sub_245E47318(a1);
  sub_245E48190((a1 + 128), 0);
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_245E47318(uint64_t a1)
{
  v2 = (a1 + 128);
  result = *(a1 + 128);
  if (result)
  {
    sub_245E46EBC(result);

    return sub_245E48190(v2, 0);
  }

  return result;
}

void sub_245E4772C(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  sub_245E482A0(&a15, MEMORY[0x277D82828]);
  MEMORY[0x24C194460](va);
  _Unwind_Resume(a1);
}

uint64_t *sub_245E4779C(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_245E4D1E0((a1 + 1), 16);
  return a1;
}

void sub_245E478E0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x24C194460](v1);
  _Unwind_Resume(a1);
}

void *sub_245E47908(void *a1, uint64_t *a2)
{
  MEMORY[0x24C194320](v10, a1);
  if (v10[0] == 1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    std::locale::use_facet(&v11, MEMORY[0x277D826D0]);
    std::locale::~locale(&v11);
    v4 = (a1 + *(*a1 - 24));
    rdbuf = v4->__rdbuf_;
    if (v4[1].__fmtflags_ == -1)
    {
      std::ios_base::getloc(v4);
      v6 = std::locale::use_facet(&v11, MEMORY[0x277D82680]);
      v7 = (v6->__vftable[2].~facet_0)(v6, 32);
      std::locale::~locale(&v11);
      v4[1].__fmtflags_ = v7;
    }

    v8 = *a2;
    strlen(a2[1]);
    if (!std::time_put<char,std::ostreambuf_iterator<char>>::put())
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  MEMORY[0x24C194330](v10);
  return a1;
}

void sub_245E47A7C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x24C194330](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x245E47A5CLL);
}

void sub_245E47AEC(uint64_t a1@<X0>, const void **a2@<X1>, const void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, std::string *a6@<X8>)
{
  v31[2] = *MEMORY[0x277D85DE8];
  sub_245E481DC(a3, 95, &v28);
  v11 = *(a4 + 23);
  if (v11 >= 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = *a4;
  }

  if (v11 >= 0)
  {
    v13 = *(a4 + 23);
  }

  else
  {
    v13 = *(a4 + 8);
  }

  v14 = std::string::append(&v28, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v29, 46);
  v30 = v29;
  memset(&v29, 0, sizeof(v29));
  v16 = *(a5 + 23);
  if (v16 >= 0)
  {
    v17 = a5;
  }

  else
  {
    v17 = *a5;
  }

  if (v16 >= 0)
  {
    v18 = *(a5 + 23);
  }

  else
  {
    v18 = *(a5 + 8);
  }

  v19 = std::string::append(&v30, v17, v18);
  v20 = v19->__r_.__value_.__r.__words[0];
  v31[0] = v19->__r_.__value_.__l.__size_;
  *(v31 + 7) = *(&v19->__r_.__value_.__r.__words[1] + 7);
  v21 = HIBYTE(v19->__r_.__value_.__r.__words[2]);
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v22 = v31[0];
  *(a1 + 104) = v20;
  *(a1 + 112) = v22;
  *(a1 + 119) = *(v31 + 7);
  *(a1 + 127) = v21;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  sub_245E481DC(a2, 47, &v30);
  v23 = *(a1 + 127);
  if (v23 >= 0)
  {
    v24 = (a1 + 104);
  }

  else
  {
    v24 = *(a1 + 104);
  }

  if (v23 >= 0)
  {
    v25 = *(a1 + 127);
  }

  else
  {
    v25 = *(a1 + 112);
  }

  v26 = std::string::append(&v30, v24, v25);
  *a6 = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void sub_245E47CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245E47D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  sub_245EBCCEC(a1 + 16, a1 + 64, a3, a4, &v5);
  sub_245E4D784(&v4, ".*_(\\d+-\\d+-\\d+_\\d+:\\d+:\\d+\\.\\d+)\\..*", 0);
}

void sub_245E48020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_245E48150(&a12);
  a12.__locale_ = &a20;
  sub_245E4D0B0(&a12);
  _Unwind_Resume(a1);
}

void sub_245E4805C(uint64_t a1, uint64_t a2)
{
  v4 = sub_245EBF00C();

  sub_245E4809C(a1, a2, v4);
}

void sub_245E4809C(uint64_t a1, uint64_t a2, double a3)
{
  if ((*(a1 + 136) & 1) == 0)
  {
    sub_245F2AEF0();
  }

  v6 = *(a1 + 128);
  if (!v6 || *(a1 + 144) < 0.0 || sub_245E47104(v6) > *a1 || (v8 = *(a1 + 144), v8 > a3) || (LODWORD(v7) = *(a1 + 8), a3 - v8 > v7))
  {
    sub_245E4736C(a1);
  }

  v9 = *(a1 + 128);

  sub_245E46C24(v9, a2);
}

void sub_245E48140(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1)
  {
    sub_245E46EBC(v1);
  }
}

void sub_245E48150(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    sub_245E4D044(locale);
  }

  std::locale::~locale(this);
}

uint64_t sub_245E48190(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_245E46930();

    JUMPOUT(0x24C194490);
  }

  return result;
}

uint64_t sub_245E481DC@<X0>(const void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  result = sub_245E4D154(a3, v5 + 1);
  if (*(result + 23) >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    result = memmove(v7, v8, v5);
  }

  v9 = &v7[v5];
  *v9 = a2;
  v9[1] = 0;
  return result;
}

os_log_t sub_245E48270()
{
  result = os_log_create("com.apple.MotionSensorLogging", "MSL");
  qword_27EE375F8 = result;
  return result;
}

uint64_t sub_245E482A0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void sub_245E483BC(uint64_t a1, unint64_t a2, uint64_t **a3, uint64_t a4, char a5)
{
  v202 = *MEMORY[0x277D85DE8];
LABEL_2:
  v9 = a2 - 24;
  v191 = a2 - 48;
  v10 = a2 - 72;
  v11 = a1;
  v196 = a2;
  while (1)
  {
    a1 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 3);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      goto LABEL_198;
    }

    if (v13 == 2)
    {
      if (!sub_245E4966C(a3, v9, v11))
      {
        goto LABEL_198;
      }

LABEL_117:
      v131 = *v11;
      v199 = *(v11 + 16);
      v198 = v131;
      v132 = *v9;
      *(v11 + 16) = *(v9 + 16);
      *v11 = v132;
      v133 = v198;
      v134 = v199;
      goto LABEL_118;
    }

LABEL_10:
    if (v12 <= 575)
    {
      if (a5)
      {
        if (v11 != a2)
        {
          v135 = (v11 + 24);
          if (v11 + 24 != a2)
          {
            v136 = 0;
            v137 = v11;
            do
            {
              v138 = v137;
              v137 = v135;
              if (sub_245E4966C(a3, v135, v138))
              {
                v139 = *v137;
                v199 = *(v137 + 16);
                v198 = v139;
                *(v137 + 8) = 0;
                *(v137 + 16) = 0;
                *v137 = 0;
                v140 = v136;
                do
                {
                  v141 = v11 + v140;
                  if (*(v11 + v140 + 47) < 0)
                  {
                    operator delete(*(v141 + 24));
                  }

                  *(v141 + 24) = *v141;
                  *(v141 + 40) = *(v141 + 16);
                  *(v141 + 23) = 0;
                  *v141 = 0;
                  if (!v140)
                  {
                    v144 = v11;
                    goto LABEL_132;
                  }

                  v142 = sub_245E4966C(a3, &v198, (v11 + v140 - 24));
                  v140 -= 24;
                }

                while ((v142 & 1) != 0);
                v143 = *(v11 + v140 + 47);
                v144 = v11 + v140 + 24;
                if (v143 < 0)
                {
                  operator delete(*v144);
                }

LABEL_132:
                v145 = v198;
                *(v144 + 16) = v199;
                *v144 = v145;
              }

              v135 = (v137 + 24);
              v136 += 24;
            }

            while (v137 + 24 != v196);
          }
        }
      }

      else if (v11 != a2)
      {
        v181 = (v11 + 24);
        if (v11 + 24 != a2)
        {
          v182 = v11 - 24;
          do
          {
            v183 = a1;
            a1 = v181;
            if (sub_245E4966C(a3, v181, v183))
            {
              v184 = *a1;
              v199 = *(a1 + 16);
              v198 = v184;
              *(a1 + 8) = 0;
              *(a1 + 16) = 0;
              *a1 = 0;
              v185 = v182;
              do
              {
                if (*(v185 + 71) < 0)
                {
                  operator delete(*(v185 + 48));
                }

                *(v185 + 48) = *(v185 + 24);
                *(v185 + 64) = *(v185 + 40);
                *(v185 + 47) = 0;
                *(v185 + 24) = 0;
                v186 = sub_245E4966C(a3, &v198, v185);
                v185 -= 24;
              }

              while ((v186 & 1) != 0);
              if (*(v185 + 71) < 0)
              {
                operator delete(*(v185 + 48));
              }

              v187 = v198;
              *(v185 + 64) = v199;
              *(v185 + 48) = v187;
            }

            v181 = (a1 + 24);
            v182 += 24;
          }

          while (a1 + 24 != v196);
        }
      }

      goto LABEL_198;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v146 = (v13 - 2) >> 1;
        v194 = v146;
        do
        {
          v147 = v146;
          if (v194 >= v146)
          {
            v148 = (2 * v146) | 1;
            v149 = a1 + 24 * v148;
            if (2 * v146 + 2 < v13 && sub_245E4966C(a3, (a1 + 24 * v148), (v149 + 24)))
            {
              v149 += 24;
              v148 = 2 * v147 + 2;
            }

            v150 = a1 + 24 * v147;
            a2 = v196;
            if ((sub_245E4966C(a3, v149, v150) & 1) == 0)
            {
              v151 = *v150;
              v199 = *(v150 + 16);
              v198 = v151;
              *(v150 + 8) = 0;
              *(v150 + 16) = 0;
              *v150 = 0;
              while (1)
              {
                v152 = v149;
                if (*(v150 + 23) < 0)
                {
                  operator delete(*v150);
                }

                v153 = *v149;
                *(v150 + 16) = *(v149 + 16);
                *v150 = v153;
                *(v149 + 23) = 0;
                *v149 = 0;
                if (v194 < v148)
                {
                  break;
                }

                v154 = (2 * v148) | 1;
                v149 = a1 + 24 * v154;
                v148 = 2 * v148 + 2;
                if (v148 >= v13)
                {
                  v148 = v154;
                }

                else if (sub_245E4966C(a3, (a1 + 24 * v154), (v149 + 24)))
                {
                  v149 += 24;
                }

                else
                {
                  v148 = v154;
                }

                v150 = v152;
                if (sub_245E4966C(a3, v149, &v198))
                {
                  if (*(v152 + 23) < 0)
                  {
                    operator delete(*v152);
                  }

                  break;
                }
              }

              v155 = v198;
              *(v152 + 16) = v199;
              *v152 = v155;
              a2 = v196;
            }
          }

          v146 = v147 - 1;
        }

        while (v147);
        v156 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
        do
        {
          v157 = 0;
          v192 = a2;
          v195 = *a1;
          *&v200 = *(a1 + 8);
          *(&v200 + 7) = *(a1 + 15);
          v197 = *(a1 + 23);
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          v158 = a1;
          do
          {
            v159 = v158;
            v160 = v158 + 24 * v157;
            v158 = v160 + 24;
            v161 = 2 * v157;
            v157 = (2 * v157) | 1;
            v162 = v161 + 2;
            if (v161 + 2 < v156)
            {
              v163 = v160 + 48;
              if (sub_245E4966C(a3, (v160 + 24), (v160 + 48)))
              {
                v158 = v163;
                v157 = v162;
              }

              if (*(v159 + 23) < 0)
              {
                operator delete(*v159);
              }
            }

            v164 = *v158;
            *(v159 + 16) = *(v158 + 16);
            *v159 = v164;
            *(v158 + 23) = 0;
            *v158 = 0;
          }

          while (v157 <= ((v156 - 2) >> 1));
          if (v158 == v192 - 24)
          {
            v166 = v192 - 24;
            *v158 = v195;
            v175 = *(&v200 + 7);
            *(v158 + 8) = v200;
            *(v158 + 15) = v175;
            *(v158 + 23) = v197;
          }

          else
          {
            v165 = *(v192 - 24);
            v166 = v192 - 24;
            *(v158 + 16) = *(v192 - 8);
            *v158 = v165;
            *(v192 - 24) = v195;
            v167 = v200;
            *(v192 - 9) = *(&v200 + 7);
            *(v192 - 16) = v167;
            *(v192 - 1) = v197;
            v168 = v158 - a1 + 24;
            if (v168 >= 25)
            {
              v169 = (-2 - 0x5555555555555555 * (v168 >> 3)) >> 1;
              v170 = a1 + 24 * v169;
              if (sub_245E4966C(a3, v170, v158))
              {
                v171 = *v158;
                v199 = *(v158 + 16);
                v198 = v171;
                *(v158 + 8) = 0;
                *(v158 + 16) = 0;
                *v158 = 0;
                while (1)
                {
                  v172 = v170;
                  if (*(v158 + 23) < 0)
                  {
                    operator delete(*v158);
                  }

                  v173 = *v170;
                  *(v158 + 16) = *(v170 + 16);
                  *v158 = v173;
                  *(v170 + 23) = 0;
                  *v170 = 0;
                  if (!v169)
                  {
                    break;
                  }

                  v169 = (v169 - 1) >> 1;
                  v170 = a1 + 24 * v169;
                  v158 = v172;
                  if ((sub_245E4966C(a3, v170, &v198) & 1) == 0)
                  {
                    if (*(v172 + 23) < 0)
                    {
                      operator delete(*v172);
                    }

                    break;
                  }
                }

                v174 = v198;
                *(v172 + 16) = v199;
                *v172 = v174;
              }
            }
          }

          v176 = v156-- <= 2;
          a2 = v166;
        }

        while (!v176);
      }

      goto LABEL_198;
    }

    v14 = v13 >> 1;
    v15 = v11 + 24 * v14;
    if (v12 >= 0xC01)
    {
      v16 = sub_245E4966C(a3, (a1 + 24 * v14), a1);
      v17 = sub_245E4966C(a3, v9, (a1 + 24 * v14));
      if (v16)
      {
        if (v17)
        {
          v18 = *a1;
          v199 = *(a1 + 16);
          v198 = v18;
          v19 = *v9;
          *(a1 + 16) = *(v9 + 16);
          *a1 = v19;
          goto LABEL_27;
        }

        v36 = *a1;
        v199 = *(a1 + 16);
        v198 = v36;
        v37 = *v15;
        *(a1 + 16) = *(v15 + 16);
        *a1 = v37;
        v38 = v198;
        *(v15 + 16) = v199;
        *v15 = v38;
        if (sub_245E4966C(a3, v9, (a1 + 24 * v14)))
        {
          v39 = *v15;
          v199 = *(v15 + 16);
          v198 = v39;
          v40 = *v9;
          *(v15 + 16) = *(v9 + 16);
          *v15 = v40;
LABEL_27:
          v41 = v198;
          *(v9 + 16) = v199;
          *v9 = v41;
        }
      }

      else if (v17)
      {
        v24 = *v15;
        v199 = *(v15 + 16);
        v198 = v24;
        v25 = *v9;
        *(v15 + 16) = *(v9 + 16);
        *v15 = v25;
        v26 = v198;
        *(v9 + 16) = v199;
        *v9 = v26;
        if (sub_245E4966C(a3, (a1 + 24 * v14), a1))
        {
          v27 = *a1;
          v199 = *(a1 + 16);
          v198 = v27;
          v28 = *v15;
          *(a1 + 16) = *(v15 + 16);
          *a1 = v28;
          v29 = v198;
          *(v15 + 16) = v199;
          *v15 = v29;
        }
      }

      v42 = a1 + 24 * v14 - 24;
      v43 = sub_245E4966C(a3, v42, (a1 + 24));
      v44 = sub_245E4966C(a3, v191, v42);
      if (v43)
      {
        if (v44)
        {
          v198 = *(a1 + 24);
          v45 = v198;
          v199 = *(a1 + 40);
          v46 = v199;
          v47 = *(v191 + 16);
          *(a1 + 24) = *v191;
          *(a1 + 40) = v47;
          *(v191 + 16) = v46;
          *v191 = v45;
        }

        else
        {
          v198 = *(a1 + 24);
          v60 = v198;
          v199 = *(a1 + 40);
          v61 = v199;
          v62 = *(a1 + 24 * v14 - 8);
          *(a1 + 24) = *v42;
          *(a1 + 40) = v62;
          *(a1 + 24 * v14 - 8) = v61;
          *v42 = v60;
          if (sub_245E4966C(a3, v191, v42))
          {
            v63 = *v42;
            v199 = *(a1 + 24 * v14 - 8);
            v198 = v63;
            v64 = *v191;
            *(a1 + 24 * v14 - 8) = *(v191 + 16);
            *v42 = v64;
            v65 = v198;
            *(v191 + 16) = v199;
            *v191 = v65;
          }
        }
      }

      else if (v44)
      {
        v48 = *v42;
        v199 = *(a1 + 24 * v14 - 8);
        v198 = v48;
        v49 = *v191;
        *(a1 + 24 * v14 - 8) = *(v191 + 16);
        *v42 = v49;
        v50 = v198;
        *(v191 + 16) = v199;
        *v191 = v50;
        if (sub_245E4966C(a3, v42, (a1 + 24)))
        {
          v198 = *(a1 + 24);
          v51 = v198;
          v199 = *(a1 + 40);
          v52 = v199;
          v53 = *(a1 + 24 * v14 - 8);
          *(a1 + 24) = *v42;
          *(a1 + 40) = v53;
          *(a1 + 24 * v14 - 8) = v52;
          *v42 = v51;
        }
      }

      v66 = a1 + 24 * v14;
      v67 = sub_245E4966C(a3, (v66 + 24), (a1 + 48));
      v68 = sub_245E4966C(a3, v10, (v66 + 24));
      if (v67)
      {
        if (v68)
        {
          v69 = *(a1 + 48);
          v198 = v69;
          v70 = *(a1 + 64);
          v199 = v70;
          v71 = *(v10 + 16);
          *(a1 + 48) = *v10;
          *(a1 + 64) = v71;
          goto LABEL_47;
        }

        v198 = *(a1 + 48);
        v78 = v198;
        v199 = *(a1 + 64);
        v79 = v199;
        v80 = *(v66 + 40);
        *(a1 + 48) = *(v66 + 24);
        *(a1 + 64) = v80;
        *(v66 + 40) = v79;
        *(v66 + 24) = v78;
        if (sub_245E4966C(a3, v10, (v66 + 24)))
        {
          v81 = *(v66 + 24);
          v199 = *(v66 + 40);
          v198 = v81;
          v82 = *v10;
          *(v66 + 40) = *(v10 + 16);
          *(v66 + 24) = v82;
          v69 = v198;
          v70 = v199;
LABEL_47:
          *(v10 + 16) = v70;
          *v10 = v69;
        }
      }

      else if (v68)
      {
        v72 = *(v66 + 24);
        v199 = *(v66 + 40);
        v198 = v72;
        v73 = *v10;
        *(v66 + 40) = *(v10 + 16);
        *(v66 + 24) = v73;
        v74 = v198;
        *(v10 + 16) = v199;
        *v10 = v74;
        if (sub_245E4966C(a3, (v66 + 24), (a1 + 48)))
        {
          v198 = *(a1 + 48);
          v75 = v198;
          v199 = *(a1 + 64);
          v76 = v199;
          v77 = *(v66 + 40);
          *(a1 + 48) = *(v66 + 24);
          *(a1 + 64) = v77;
          *(v66 + 40) = v76;
          *(v66 + 24) = v75;
        }
      }

      v83 = sub_245E4966C(a3, v15, v42);
      v84 = sub_245E4966C(a3, (v66 + 24), v15);
      if (v83)
      {
        if (v84)
        {
          v85 = *v42;
          v199 = *(v42 + 16);
          v198 = v85;
          *v42 = *(v66 + 24);
          *(v42 + 16) = *(v66 + 40);
          goto LABEL_56;
        }

        v90 = *v42;
        v199 = *(v42 + 16);
        v198 = v90;
        *v42 = *v15;
        *(v42 + 16) = *(v15 + 16);
        v91 = v198;
        *(v15 + 16) = v199;
        *v15 = v91;
        if (sub_245E4966C(a3, (v66 + 24), v15))
        {
          v92 = *v15;
          v199 = *(v15 + 16);
          v198 = v92;
          *v15 = *(v66 + 24);
          *(v15 + 16) = *(v66 + 40);
LABEL_56:
          v93 = v198;
          *(v66 + 40) = v199;
          *(v66 + 24) = v93;
        }
      }

      else if (v84)
      {
        v86 = *v15;
        v199 = *(v15 + 16);
        v198 = v86;
        *v15 = *(v66 + 24);
        *(v15 + 16) = *(v66 + 40);
        v87 = v198;
        *(v66 + 40) = v199;
        *(v66 + 24) = v87;
        if (sub_245E4966C(a3, v15, v42))
        {
          v88 = *v42;
          v199 = *(v42 + 16);
          v198 = v88;
          *v42 = *v15;
          *(v42 + 16) = *(v15 + 16);
          v89 = v198;
          *(v15 + 16) = v199;
          *v15 = v89;
        }
      }

      v94 = *a1;
      v199 = *(a1 + 16);
      v198 = v94;
      v95 = *v15;
      *(a1 + 16) = *(v15 + 16);
      *a1 = v95;
      v96 = v198;
      *(v15 + 16) = v199;
      *v15 = v96;
      goto LABEL_58;
    }

    v20 = sub_245E4966C(a3, a1, (a1 + 24 * v14));
    v21 = sub_245E4966C(a3, v9, a1);
    if ((v20 & 1) == 0)
    {
      if (v21)
      {
        v30 = *a1;
        v199 = *(a1 + 16);
        v198 = v30;
        v31 = *v9;
        *(a1 + 16) = *(v9 + 16);
        *a1 = v31;
        v32 = v198;
        *(v9 + 16) = v199;
        *v9 = v32;
        if (sub_245E4966C(a3, a1, (a1 + 24 * v14)))
        {
          v33 = *v15;
          v199 = *(v15 + 16);
          v198 = v33;
          v34 = *a1;
          *(v15 + 16) = *(a1 + 16);
          *v15 = v34;
          v35 = v198;
          *(a1 + 16) = v199;
          *a1 = v35;
        }
      }

      goto LABEL_58;
    }

    if (v21)
    {
      v22 = *v15;
      v199 = *(v15 + 16);
      v198 = v22;
      v23 = *v9;
      *(v15 + 16) = *(v9 + 16);
      *v15 = v23;
    }

    else
    {
      v54 = *v15;
      v199 = *(v15 + 16);
      v198 = v54;
      v55 = *a1;
      *(v15 + 16) = *(a1 + 16);
      *v15 = v55;
      v56 = v198;
      *(a1 + 16) = v199;
      *a1 = v56;
      if (!sub_245E4966C(a3, v9, a1))
      {
        goto LABEL_58;
      }

      v57 = *a1;
      v199 = *(a1 + 16);
      v198 = v57;
      v58 = *v9;
      *(a1 + 16) = *(v9 + 16);
      *a1 = v58;
    }

    v59 = v198;
    *(v9 + 16) = v199;
    *v9 = v59;
LABEL_58:
    --a4;
    if (a5 & 1) != 0 || (sub_245E4966C(a3, (a1 - 24), a1))
    {
      v97 = 0;
      v98 = *a1;
      v201 = *(a1 + 16);
      v200 = v98;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      do
      {
        v99 = sub_245E4966C(a3, (a1 + v97 + 24), &v200);
        v97 += 24;
      }

      while ((v99 & 1) != 0);
      v100 = a1 + v97;
      v101 = v196;
      if (v97 == 24)
      {
        v101 = v196;
        do
        {
          if (v100 >= v101)
          {
            break;
          }

          v101 -= 3;
        }

        while ((sub_245E4966C(a3, v101, &v200) & 1) == 0);
      }

      else
      {
        do
        {
          v101 -= 3;
        }

        while (!sub_245E4966C(a3, v101, &v200));
      }

      v11 = a1 + v97;
      if (v100 < v101)
      {
        v102 = v101;
        do
        {
          v103 = *v11;
          v199 = *(v11 + 16);
          v198 = v103;
          v104 = *v102;
          *(v11 + 16) = v102[2];
          *v11 = v104;
          v105 = v198;
          v102[2] = v199;
          *v102 = v105;
          do
          {
            v11 += 24;
          }

          while ((sub_245E4966C(a3, v11, &v200) & 1) != 0);
          do
          {
            v102 -= 3;
          }

          while (!sub_245E4966C(a3, v102, &v200));
        }

        while (v11 < v102);
      }

      v106 = (v11 - 24);
      if (v11 - 24 == a1)
      {
        if (*(v11 - 1) < 0)
        {
          operator delete(*v106);
        }
      }

      else
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v107 = *v106;
        *(a1 + 16) = *(v11 - 8);
        *a1 = v107;
        *(v11 - 1) = 0;
        *(v11 - 24) = 0;
      }

      v108 = v200;
      *(v11 - 8) = v201;
      *v106 = v108;
      if (v100 < v101)
      {
        goto LABEL_83;
      }

      v109 = sub_245E49A8C(a1, v11 - 24, a3);
      if (sub_245E49A8C(v11, v196, a3))
      {
        a2 = v11 - 24;
        if (!v109)
        {
          goto LABEL_2;
        }

        goto LABEL_198;
      }

      a2 = v196;
      if (!v109)
      {
LABEL_83:
        sub_245E483BC(a1, v11 - 24, a3, a4, a5 & 1);
        a5 = 0;
        a2 = v196;
      }
    }

    else
    {
      v110 = *a1;
      v201 = *(a1 + 16);
      v200 = v110;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      a2 = v196;
      if (sub_245E4966C(a3, &v200, v9))
      {
        v11 = a1;
        do
        {
          v11 += 24;
        }

        while ((sub_245E4966C(a3, &v200, v11) & 1) == 0);
      }

      else
      {
        v111 = (a1 + 24);
        do
        {
          v11 = v111;
          if (v111 >= v196)
          {
            break;
          }

          v112 = sub_245E4966C(a3, &v200, v111);
          v111 = (v11 + 24);
        }

        while (!v112);
      }

      v113 = v196;
      if (v11 < v196)
      {
        v113 = v196;
        do
        {
          v113 -= 24;
        }

        while ((sub_245E4966C(a3, &v200, v113) & 1) != 0);
      }

      while (v11 < v113)
      {
        v114 = *v11;
        v199 = *(v11 + 16);
        v198 = v114;
        v115 = *v113;
        *(v11 + 16) = *(v113 + 16);
        *v11 = v115;
        v116 = v198;
        *(v113 + 16) = v199;
        *v113 = v116;
        do
        {
          v11 += 24;
        }

        while (!sub_245E4966C(a3, &v200, v11));
        do
        {
          v113 -= 24;
        }

        while ((sub_245E4966C(a3, &v200, v113) & 1) != 0);
      }

      v117 = (v11 - 24);
      if (v11 - 24 == a1)
      {
        if (*(v11 - 1) < 0)
        {
          operator delete(*v117);
        }
      }

      else
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v118 = *v117;
        *(a1 + 16) = *(v11 - 8);
        *a1 = v118;
        *(v11 - 1) = 0;
        *(v11 - 24) = 0;
      }

      a5 = 0;
      v119 = v200;
      *(v11 - 8) = v201;
      *v117 = v119;
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      sub_245E498AC(v11, (v11 + 24), (v11 + 48), v9, a3);
      goto LABEL_198;
    }

    if (v13 == 5)
    {
      sub_245E498AC(v11, (v11 + 24), (v11 + 48), (v11 + 72), a3);
      if (sub_245E4966C(a3, v9, (v11 + 72)))
      {
        v198 = *(v11 + 72);
        v121 = v198;
        v199 = *(v11 + 88);
        v122 = v199;
        v123 = *(v9 + 16);
        *(v11 + 72) = *v9;
        *(v11 + 88) = v123;
        *(v9 + 16) = v122;
        *v9 = v121;
        if (sub_245E4966C(a3, (v11 + 72), (v11 + 48)))
        {
          v124 = *(v11 + 64);
          v125 = *(v11 + 48);
          *(v11 + 48) = *(v11 + 72);
          *(v11 + 64) = *(v11 + 88);
          *(v11 + 72) = v125;
          *(v11 + 88) = v124;
          if (sub_245E4966C(a3, (v11 + 48), (v11 + 24)))
          {
            v126 = *(v11 + 40);
            v127 = *(v11 + 24);
            *(v11 + 24) = *(v11 + 48);
            *(v11 + 40) = *(v11 + 64);
            *(v11 + 48) = v127;
            *(v11 + 64) = v126;
            v128 = sub_245E4966C(a3, (v11 + 24), v11);
LABEL_181:
            if (v128)
            {
              v180 = *v11;
              v199 = *(v11 + 16);
              v198 = v180;
              *v11 = *(v11 + 24);
              *(v11 + 16) = *(v11 + 40);
              *(v11 + 24) = v198;
              *(v11 + 40) = v199;
            }
          }
        }
      }

      goto LABEL_198;
    }

    goto LABEL_10;
  }

  v129 = sub_245E4966C(a3, (v11 + 24), v11);
  v130 = sub_245E4966C(a3, v9, (v11 + 24));
  if (v129)
  {
    if (v130)
    {
      goto LABEL_117;
    }

    v188 = *v11;
    v199 = *(v11 + 16);
    v198 = v188;
    *v11 = *(v11 + 24);
    *(v11 + 16) = *(v11 + 40);
    *(v11 + 24) = v198;
    *(v11 + 40) = v199;
    if (!sub_245E4966C(a3, v9, (v11 + 24)))
    {
      goto LABEL_198;
    }

    v133 = *(v11 + 24);
    v198 = v133;
    v134 = *(v11 + 40);
    v199 = v134;
    v189 = *(v9 + 16);
    *(v11 + 24) = *v9;
    *(v11 + 40) = v189;
LABEL_118:
    *(v9 + 16) = v134;
    *v9 = v133;
    goto LABEL_198;
  }

  if (v130)
  {
    v198 = *(v11 + 24);
    v177 = v198;
    v199 = *(v11 + 40);
    v178 = v199;
    v179 = *(v9 + 16);
    *(v11 + 24) = *v9;
    *(v11 + 40) = v179;
    *(v9 + 16) = v178;
    *v9 = v177;
    v128 = sub_245E4966C(a3, (v11 + 24), v11);
    goto LABEL_181;
  }

LABEL_198:
  v190 = *MEMORY[0x277D85DE8];
}

void sub_245E495EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245E4966C(uint64_t **a1, void **a2, void **a3)
{
  v6 = *a1;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  *__p = 0u;
  memset(v20, 0, sizeof(v20));
  v7 = *v6;
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 < 0)
  {
    v8 = a2[1];
  }

  sub_245E49FBC(v9, v8 + v9, __p, v7, 0);
  if ((__p[1] - __p[0]) == 48)
  {
    if (*(__p[0] + 40) == 1)
    {
      sub_245E4CF94(__dst, *(__p[0] + 3), *(__p[0] + 4), *(__p[0] + 4) - *(__p[0] + 3));
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v18 = 0;
    }
  }

  else if (*(a2 + 23) < 0)
  {
    sub_245DF8878(__dst, *a2, a2[1]);
  }

  else
  {
    *__dst = *a2;
    v18 = a2[2];
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v10 = *a1;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  *__p = 0u;
  memset(v20, 0, sizeof(v20));
  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 < 0)
  {
    v11 = a3[1];
  }

  sub_245E49FBC(v12, v11 + v12, __p, *v10, 0);
  if ((__p[1] - __p[0]) == 48)
  {
    if (*(__p[0] + 40) == 1)
    {
      sub_245E4CF94(v15, *(__p[0] + 3), *(__p[0] + 4), *(__p[0] + 4) - *(__p[0] + 3));
    }

    else
    {
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
    }
  }

  else if (*(a3 + 23) < 0)
  {
    sub_245DF8878(v15, *a3, a3[1]);
  }

  else
  {
    *v15 = *a3;
    v16 = a3[2];
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v13 = sub_245E49F24(__dst, v15);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst[0]);
  }

  return (v13 >> 7) & 1;
}

void sub_245E4986C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_245E498AC(void **a1, void **a2, void **a3, __int128 *a4, uint64_t **a5)
{
  v10 = sub_245E4966C(a5, a2, a1);
  v11 = sub_245E4966C(a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1[2];
      v13 = *a1;
      v14 = a3[2];
      *a1 = *a3;
      a1[2] = v14;
LABEL_9:
      *a3 = v13;
      a3[2] = v12;
      goto LABEL_10;
    }

    v21 = a1[2];
    v22 = *a1;
    v23 = a2[2];
    *a1 = *a2;
    a1[2] = v23;
    *a2 = v22;
    a2[2] = v21;
    if (sub_245E4966C(a5, a3, a2))
    {
      v12 = a2[2];
      v13 = *a2;
      v24 = a3[2];
      *a2 = *a3;
      a2[2] = v24;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v15 = a2[2];
    v16 = *a2;
    v17 = a3[2];
    *a2 = *a3;
    a2[2] = v17;
    *a3 = v16;
    a3[2] = v15;
    if (sub_245E4966C(a5, a2, a1))
    {
      v18 = a1[2];
      v19 = *a1;
      v20 = a2[2];
      *a1 = *a2;
      a1[2] = v20;
      *a2 = v19;
      a2[2] = v18;
    }
  }

LABEL_10:
  if (sub_245E4966C(a5, a4, a3))
  {
    v26 = a3[2];
    v27 = *a3;
    v28 = *(a4 + 2);
    *a3 = *a4;
    a3[2] = v28;
    *a4 = v27;
    *(a4 + 2) = v26;
    if (sub_245E4966C(a5, a3, a2))
    {
      v29 = a2[2];
      v30 = *a2;
      v31 = a3[2];
      *a2 = *a3;
      a2[2] = v31;
      *a3 = v30;
      a3[2] = v29;
      if (sub_245E4966C(a5, a2, a1))
      {
        v32 = a1[2];
        result = *a1;
        v33 = a2[2];
        *a1 = *a2;
        a1[2] = v33;
        *a2 = result;
        a2[2] = v32;
      }
    }
  }

  return result;
}

BOOL sub_245E49A8C(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 24;
        v16 = sub_245E4966C(a3, (a1 + 24), a1);
        v17 = sub_245E4966C(a3, v7, (a1 + 24));
        if (v16)
        {
          if (!v17)
          {
            v35 = *(a1 + 16);
            v36 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v36;
            *(a1 + 40) = v35;
            if (!sub_245E4966C(a3, v7, (a1 + 24)))
            {
              return 1;
            }

            v18 = *(a1 + 40);
            v19 = *(a1 + 24);
            v37 = *(v7 + 16);
            *(a1 + 24) = *v7;
            *(a1 + 40) = v37;
            goto LABEL_16;
          }

LABEL_15:
          v18 = *(a1 + 16);
          v19 = *a1;
          v20 = *(v7 + 16);
          *a1 = *v7;
          *(a1 + 16) = v20;
LABEL_16:
          *v7 = v19;
          *(v7 + 16) = v18;
          return 1;
        }

        if (!v17)
        {
          return 1;
        }

        v26 = *(a1 + 40);
        v27 = *(a1 + 24);
        v28 = *(v7 + 16);
        *(a1 + 24) = *v7;
        *(a1 + 40) = v28;
        *v7 = v27;
        *(v7 + 16) = v26;
        break;
      case 4:
        sub_245E498AC(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
        return 1;
      case 5:
        v8 = a2 - 24;
        sub_245E498AC(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        if (!sub_245E4966C(a3, v8, (a1 + 72)))
        {
          return 1;
        }

        v9 = *(a1 + 88);
        v10 = *(a1 + 72);
        v11 = *(v8 + 16);
        *(a1 + 72) = *v8;
        *(a1 + 88) = v11;
        *v8 = v10;
        *(v8 + 16) = v9;
        if (!sub_245E4966C(a3, (a1 + 72), (a1 + 48)))
        {
          return 1;
        }

        v12 = *(a1 + 64);
        v13 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v13;
        *(a1 + 88) = v12;
        if (!sub_245E4966C(a3, (a1 + 48), (a1 + 24)))
        {
          return 1;
        }

        v14 = *(a1 + 40);
        v15 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v15;
        *(a1 + 64) = v14;
        break;
      default:
        goto LABEL_17;
    }

    if (sub_245E4966C(a3, (a1 + 24), a1))
    {
      v29 = *(a1 + 16);
      v30 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v30;
      *(a1 + 40) = v29;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 24;
    if (!sub_245E4966C(a3, (a2 - 24), a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v21 = (a1 + 48);
  v22 = sub_245E4966C(a3, (a1 + 24), a1);
  v23 = sub_245E4966C(a3, (a1 + 48), (a1 + 24));
  if (v22)
  {
    if (v23)
    {
      v24 = *(a1 + 16);
      v25 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (!sub_245E4966C(a3, (a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    *v21 = v25;
    *(a1 + 64) = v24;
  }

  else if (v23)
  {
    v31 = *(a1 + 40);
    v32 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v32;
    *(a1 + 64) = v31;
    if (sub_245E4966C(a3, (a1 + 24), a1))
    {
      v33 = *(a1 + 16);
      v34 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v34;
      *(a1 + 40) = v33;
    }
  }

LABEL_33:
  v40 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    if (sub_245E4966C(a3, v40, v21))
    {
      v49 = *v40;
      v50 = *(v40 + 16);
      *(v40 + 8) = 0;
      *(v40 + 16) = 0;
      *v40 = 0;
      v43 = v41;
      do
      {
        v44 = a1 + v43;
        if (*(a1 + v43 + 95) < 0)
        {
          operator delete(*(v44 + 72));
        }

        *(v44 + 72) = *(v44 + 48);
        *(v44 + 88) = *(v44 + 64);
        *(v44 + 71) = 0;
        *(v44 + 48) = 0;
        if (v43 == -48)
        {
          v47 = a1;
          goto LABEL_44;
        }

        v45 = sub_245E4966C(a3, &v49, (a1 + v43 + 24));
        v43 -= 24;
      }

      while ((v45 & 1) != 0);
      v46 = *(a1 + v43 + 95);
      v47 = a1 + v43 + 72;
      if (v46 < 0)
      {
        operator delete(*v47);
      }

LABEL_44:
      *v47 = v49;
      *(v47 + 16) = v50;
      if (++v42 == 8)
      {
        return v40 + 24 == a2;
      }
    }

    v21 = v40;
    v41 += 24;
    v40 += 24;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

void sub_245E49F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245E49F24(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return sub_245E49F5C(a1, v2, v5, v6);
}

uint64_t sub_245E49F5C(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t sub_245E49FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  *__p = 0u;
  memset(v12, 0, sizeof(v12));
  v9 = sub_245E4A0B8(a4, a1, a2, __p, a5 | 0x1040u);
  sub_245E4A284(a3, a1, a2, __p, (v5 & 0x800) != 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (!v9)
  {
    return 0;
  }

  if (*(a3 + 88) != 1)
  {
    return 1;
  }

  result = 0;
  *(a3 + 8) = *a3;
  return result;
}

void sub_245E4A09C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245E4A0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  sub_245E4A408(a4, *(a1 + 28) + 1, a2, a3, (v9 & 0x800) >> 11);
  if (sub_245E4A47C(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
  {
    if (*(a4 + 8) == *a4)
    {
      v10 = (a4 + 24);
    }

    else
    {
      v10 = *a4;
    }

LABEL_19:
    v16 = *v10;
    *(a4 + 56) = *v10;
    *(a4 + 64) = *(a4 + 48) != v16;
    v17 = v10[1];
    *(a4 + 72) = v17;
    *(a4 + 88) = v17 != *(a4 + 80);
    return 1;
  }

  if (a2 != a3 && (v9 & 0x40) == 0)
  {
    v11 = a2 + 1;
    if (v11 != a3)
    {
      v12 = (a4 + 24);
      do
      {
        sub_245E4A49C(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
        v13 = sub_245E4A47C(a1, v11, a3, a4, v9 | 0x80u, 0);
        v15 = *a4;
        v14 = *(a4 + 8);
        if (v13)
        {
          goto LABEL_16;
        }

        sub_245E4A49C(a4, 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3), (a4 + 24));
      }

      while (++v11 != a3);
    }

    v12 = (a4 + 24);
    sub_245E4A49C(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
    if (sub_245E4A47C(a1, v11, a3, a4, v9 | 0x80u, 0))
    {
      v15 = *a4;
      v14 = *(a4 + 8);
LABEL_16:
      if (v14 == v15)
      {
        v10 = v12;
      }

      else
      {
        v10 = v15;
      }

      goto LABEL_19;
    }
  }

  result = 0;
  *(a4 + 8) = *a4;
  return result;
}

void sub_245E4A284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  sub_245E4CDDC(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  v11 = *a1;
  if (*(a1 + 8) == *a1)
  {
    v14 = a2 - v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 - v10;
    v16 = *a4;
    v15 = a4[1];
    do
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      v18 = (v16 + v12);
      if (v17 <= v13)
      {
        v19 = a4 + 3;
      }

      else
      {
        v19 = v18;
      }

      *(v11 + v12) = v14 + *v19;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v13)
      {
        v20 = a4 + 3;
      }

      else
      {
        v20 = (*a4 + v12);
      }

      *(*a1 + v12 + 8) = v14 + v20[1];
      v16 = *a4;
      v15 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3) <= v13)
      {
        v21 = a4 + 3;
      }

      else
      {
        v21 = (*a4 + v12);
      }

      v22 = *(v21 + 16);
      v11 = *a1;
      v23 = *(a1 + 8);
      *(*a1 + v12 + 16) = v22;
      ++v13;
      v12 += 24;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v23 - v11) >> 3));
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  v24 = v14 + a4[6];
  *(a1 + 48) = v24;
  *(a1 + 56) = v14 + a4[7];
  *(a1 + 64) = *(a4 + 64);
  *(a1 + 72) = v14 + a4[9];
  *(a1 + 80) = v14 + a4[10];
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = v24;
  }

  *(a1 + 96) = *(a4 + 96);
}

char *sub_245E4A408(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5)
{
  *(a1 + 24) = a4;
  v8 = (a1 + 24);
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  result = sub_245E4A49C(a1, a2, (a1 + 24));
  *(a1 + 48) = a3;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = *v8;
  *(a1 + 88) = *(a1 + 40);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = a3;
  }

  *(a1 + 96) = 1;
  return result;
}

uint64_t sub_245E4A47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    return sub_245E4A600(a1, a2, a3, a4, a5, a6);
  }

  if (*(a1 + 28))
  {
    return sub_245E4AEF8(a1, a2, a3, a4, a5, a6);
  }

  return sub_245E4A9AC(a1, a2, a3, a4, a5, a6);
}

char *sub_245E4A49C(char **a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 3) < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      sub_245E4BCB8(a1, v9);
    }

    sub_245DF85A4();
  }

  v10 = a1[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  }

  if (v12)
  {
    v13 = *a3;
    v14 = *(a3 + 16);
    v15 = result;
    do
    {
      *v15 = v13;
      v15[16] = v14;
      v15 += 24;
      --v12;
    }

    while (v12);
  }

  if (a2 <= v11)
  {
    a1[1] = &result[24 * a2];
  }

  else
  {
    v16 = &v10[24 * (a2 - v11)];
    v17 = 24 * a2 - 8 * ((v10 - result) >> 3);
    do
    {
      v18 = *a3;
      *(v10 + 2) = *(a3 + 2);
      *v10 = v18;
      v10 += 24;
      v17 -= 24;
    }

    while (v17);
    a1[1] = v16;
  }

  return result;
}

uint64_t sub_245E4A600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  *&v40 = a3;
  *(&v40 + 1) = a3;
  v41 = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  sub_245E4B3D8(&v42, v36);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    *&v37 = *&v36[32];
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v43;
  *(v43 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  sub_245E4B4B4((v13 - 64), *(a1 + 28), &v40);
  sub_245E4B4F0((v43 - 40), *(a1 + 32));
  v14 = v43;
  *(v43 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      sub_245E4B520();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          sub_245E4BC38(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          sub_245E4BD04(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          sub_245E4B3D8(&v42, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          sub_245E4B578();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v43;
    ++v15;
    if (v42 == v43)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v43 - 96;
    sub_245E4B854((v43 - 96));
    v43 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v42;
  sub_245E4BDB4(v36);
  return v24;
}