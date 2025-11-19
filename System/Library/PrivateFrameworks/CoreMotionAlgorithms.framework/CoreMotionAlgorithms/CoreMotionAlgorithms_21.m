uint64_t sub_245E3006C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 80);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 80);
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
  v4 = *(v3 + 80);
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
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 80);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 80);
  if ((v4 & 0x2000) == 0)
  {
LABEL_6:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 80);
  if ((v4 & 0x4000) == 0)
  {
LABEL_7:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 80);
  if ((v4 & 0x8000) == 0)
  {
LABEL_8:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 80);
  if ((v4 & 0x1000) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 80);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 80);
  if ((v4 & 0x40) == 0)
  {
LABEL_11:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 80);
  if ((v4 & 0x80) == 0)
  {
LABEL_12:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 80);
  if ((v4 & 0x200) == 0)
  {
LABEL_13:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 80);
  if ((v4 & 0x400) == 0)
  {
LABEL_14:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 80);
  if ((v4 & 0x800) == 0)
  {
LABEL_15:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 80);
  if ((v4 & 0x10) == 0)
  {
LABEL_16:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  v5 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 80);
  if ((v4 & 0x20000) == 0)
  {
LABEL_17:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    v7 = *(v3 + 76);
    result = PB::Writer::write(this);
    if ((*(v3 + 80) & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_37;
  }

LABEL_35:
  v6 = *(v3 + 77);
  result = PB::Writer::write(this);
  v4 = *(v3 + 80);
  if ((v4 & 0x10000) != 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  if ((v4 & 0x100) == 0)
  {
    return result;
  }

LABEL_37:
  v8 = *(v3 + 44);

  return PB::Writer::write(this, v8);
}

uint64_t sub_245E3029C(uint64_t result)
{
  *result = &unk_2858D05C8;
  *(result + 80) = 0;
  return result;
}

void sub_245E302C4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245E302FC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D05C8;
  *(a1 + 80) = 0;
  v2 = *(a2 + 80);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(a1 + 80) = 1;
    *(a1 + 8) = v4;
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
    LODWORD(v4) = *(a2 + 16);
    v3 |= 2u;
    *(a1 + 80) = v3;
    *(a1 + 16) = v4;
    v2 = *(a2 + 80);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    LODWORD(v4) = *(a2 + 20);
    v3 |= 4u;
    *(a1 + 80) = v3;
    *(a1 + 20) = v4;
    v2 = *(a2 + 80);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(v4) = *(a2 + 24);
  v3 |= 8u;
  *(a1 + 80) = v3;
  *(a1 + 24) = v4;
  v2 = *(a2 + 80);
  if ((v2 & 0x800) == 0)
  {
LABEL_9:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  LODWORD(v4) = *(a2 + 56);
  v3 |= 0x800u;
  *(a1 + 80) = v3;
  *(a1 + 56) = v4;
  v2 = *(a2 + 80);
  if ((v2 & 0x1000) == 0)
  {
LABEL_10:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  LODWORD(v4) = *(a2 + 60);
  v3 |= 0x1000u;
  *(a1 + 80) = v3;
  *(a1 + 60) = v4;
  v2 = *(a2 + 80);
  if ((v2 & 0x2000) == 0)
  {
LABEL_11:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  LODWORD(v4) = *(a2 + 64);
  v3 |= 0x2000u;
  *(a1 + 80) = v3;
  *(a1 + 64) = v4;
  v2 = *(a2 + 80);
  if ((v2 & 0x400) == 0)
  {
LABEL_12:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  LODWORD(v4) = *(a2 + 52);
  v3 |= 0x400u;
  *(a1 + 80) = v3;
  *(a1 + 52) = v4;
  v2 = *(a2 + 80);
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  LODWORD(v4) = *(a2 + 28);
  v3 |= 0x10u;
  *(a1 + 80) = v3;
  *(a1 + 28) = v4;
  v2 = *(a2 + 80);
  if ((v2 & 0x8000) == 0)
  {
LABEL_14:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  LODWORD(v4) = *(a2 + 72);
  v3 |= 0x8000u;
  *(a1 + 80) = v3;
  *(a1 + 72) = v4;
  v2 = *(a2 + 80);
  if ((v2 & 0x10000) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  v5 = *(a2 + 76);
  v3 |= 0x10000u;
  *(a1 + 80) = v3;
  *(a1 + 76) = v5;
  v2 = *(a2 + 80);
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  LODWORD(v4) = *(a2 + 32);
  v3 |= 0x20u;
  *(a1 + 80) = v3;
  *(a1 + 32) = v4;
  v2 = *(a2 + 80);
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  LODWORD(v4) = *(a2 + 36);
  v3 |= 0x40u;
  *(a1 + 80) = v3;
  *(a1 + 36) = v4;
  v2 = *(a2 + 80);
  if ((v2 & 0x80) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  LODWORD(v4) = *(a2 + 40);
  v3 |= 0x80u;
  *(a1 + 80) = v3;
  *(a1 + 40) = v4;
  v2 = *(a2 + 80);
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  LODWORD(v4) = *(a2 + 68);
  v3 |= 0x4000u;
  *(a1 + 80) = v3;
  *(a1 + 68) = v4;
  v2 = *(a2 + 80);
  if ((v2 & 0x100) == 0)
  {
LABEL_20:
    if ((v2 & 0x200) == 0)
    {
      return *&v4;
    }

    goto LABEL_36;
  }

LABEL_35:
  v6 = *(a2 + 44);
  v3 |= 0x100u;
  *(a1 + 80) = v3;
  *(a1 + 44) = v6;
  if ((*(a2 + 80) & 0x200) == 0)
  {
    return *&v4;
  }

LABEL_36:
  LODWORD(v4) = *(a2 + 48);
  *(a1 + 80) = v3 | 0x200;
  *(a1 + 48) = v4;
  return *&v4;
}

uint64_t sub_245E30504(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 80);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "biasX", *(a1 + 16));
    v5 = *(a1 + 80);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "biasY", *(a1 + 20));
  v5 = *(a1 + 80);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "biasZ", *(a1 + 24));
  v5 = *(a1 + 80);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "cost", *(a1 + 28));
  v5 = *(a1 + 80);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "coverage2d", *(a1 + 32));
  v5 = *(a1 + 80);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "coverage3d", *(a1 + 36));
  v5 = *(a1 + 80);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "earthDiffRatio", *(a1 + 40));
  v5 = *(a1 + 80);
  if ((v5 & 0x10000) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v6 = *(a1 + 76);
  PB::TextFormatter::format(this, "isPlanar");
  v5 = *(a1 + 80);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v7 = *(a1 + 44);
  PB::TextFormatter::format(this, "numberOfSamples");
  v5 = *(a1 + 80);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "planarity", *(a1 + 48));
  v5 = *(a1 + 80);
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
  PB::TextFormatter::format(this, "quality", *(a1 + 52));
  v5 = *(a1 + 80);
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
  PB::TextFormatter::format(this, "scaleX", *(a1 + 56));
  v5 = *(a1 + 80);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "scaleY", *(a1 + 60));
  v5 = *(a1 + 80);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "scaleZ", *(a1 + 64));
  v5 = *(a1 + 80);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "timeSpan", *(a1 + 68));
  v5 = *(a1 + 80);
  if ((v5 & 1) == 0)
  {
LABEL_17:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 80) & 0x8000) != 0)
  {
LABEL_18:
    PB::TextFormatter::format(this, "unitDistance", *(a1 + 72));
  }

LABEL_19:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E30768(uint64_t a1, PB::Reader *this)
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
        goto LABEL_101;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 80) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_91;
        case 2u:
          *(a1 + 80) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_90;
        case 3u:
          *(a1 + 80) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_90;
        case 4u:
          *(a1 + 80) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_90;
        case 5u:
          *(a1 + 80) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_90;
        case 6u:
          *(a1 + 80) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_90;
        case 7u:
          *(a1 + 80) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_90;
        case 8u:
          *(a1 + 80) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_90;
        case 9u:
          *(a1 + 80) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_90;
        case 0xAu:
          *(a1 + 80) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_90;
        case 0xBu:
          *(a1 + 80) |= 0x10000u;
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

          *(a1 + 76) = v31;
          goto LABEL_97;
        case 0xCu:
          *(a1 + 80) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_90;
        case 0xDu:
          *(a1 + 80) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_90;
        case 0xEu:
          *(a1 + 80) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_90;
        case 0xFu:
          *(a1 + 80) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_90;
        case 0x10u:
          *(a1 + 80) |= 0x100u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v32 = 0;
            v33 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v34 = v2 - v22;
            v35 = (v23 + v22);
            v36 = v22 + 1;
            while (1)
            {
              if (!v34)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_96;
              }

              v37 = v36;
              v38 = *v35;
              *(this + 1) = v37;
              v26 |= (v38 & 0x7F) << v32;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              --v34;
              ++v35;
              v36 = v37 + 1;
              v14 = v33++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_95:
                v2 = v37;
                goto LABEL_96;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_95;
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
              goto LABEL_96;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_96:
          *(a1 + 44) = v26;
          goto LABEL_97;
        case 0x11u:
          *(a1 + 80) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_78:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 48) = *(*this + v2);
LABEL_90:
            v2 = *(this + 1) + 4;
LABEL_91:
            *(this + 1) = v2;
          }

          goto LABEL_97;
        default:
          if (!PB::Reader::skip(this))
          {
            v39 = 0;
            return v39 & 1;
          }

          v2 = *(this + 1);
LABEL_97:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_101;
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

LABEL_101:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_245E30DF0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 80);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 80);
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

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 80);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 80);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 80);
  if ((v4 & 0x800) == 0)
  {
LABEL_6:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 80);
  if ((v4 & 0x1000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 80);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 80);
  if ((v4 & 0x400) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 80);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 80);
  if ((v4 & 0x8000) == 0)
  {
LABEL_11:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 80);
  if ((v4 & 0x10000) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v5 = *(v3 + 76);
  result = PB::Writer::write(this);
  v4 = *(v3 + 80);
  if ((v4 & 0x20) == 0)
  {
LABEL_13:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 80);
  if ((v4 & 0x40) == 0)
  {
LABEL_14:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 80);
  if ((v4 & 0x80) == 0)
  {
LABEL_15:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 80);
  if ((v4 & 0x4000) == 0)
  {
LABEL_16:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    v6 = *(v3 + 44);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 80) & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 80);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v4 & 0x200) == 0)
  {
    return result;
  }

LABEL_35:
  v7 = *(v3 + 48);

  return PB::Writer::write(this, v7);
}

double sub_245E31004(uint64_t a1)
{
  *a1 = &unk_2858D0600;
  *(a1 + 124) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_245E31038(PB::Base *this)
{
  *this = &unk_2858D0600;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  PB::Base::~Base(this);
}

void sub_245E310AC(PB::Base *a1)
{
  sub_245E31038(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E310E4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D0600;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 124) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v5 = *(a2 + 124);
  if (v5)
  {
    v7 = *(a2 + 56);
    v6 = 1;
    *(a1 + 124) = 1;
    *(a1 + 56) = v7;
    v5 = *(a2 + 124);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((v5 & 0x80) != 0)
  {
LABEL_5:
    v8 = *(a2 + 88);
    v6 |= 0x80u;
    *(a1 + 124) = v6;
    *(a1 + 88) = v8;
    v5 = *(a2 + 124);
  }

LABEL_6:
  if ((v5 & 0x4000) != 0)
  {
    v13 = *(a2 + 116);
    v6 |= 0x4000u;
    *(a1 + 124) = v6;
    *(a1 + 116) = v13;
    v5 = *(a2 + 124);
    if ((v5 & 4) == 0)
    {
LABEL_8:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_8;
  }

  v14 = *(a2 + 68);
  v6 |= 4u;
  *(a1 + 124) = v6;
  *(a1 + 68) = v14;
  if ((*(a2 + 124) & 0x20) != 0)
  {
LABEL_9:
    v9 = *(a2 + 80);
    *(a1 + 124) = v6 | 0x20;
    *(a1 + 80) = v9;
  }

LABEL_10:
  if (a1 != a2)
  {
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  }

  v10 = *(a2 + 124);
  if ((v10 & 0x800) != 0)
  {
    v15 = *(a2 + 104);
    *(a1 + 124) |= 0x800u;
    *(a1 + 104) = v15;
    v10 = *(a2 + 124);
    if ((v10 & 0x100) == 0)
    {
LABEL_14:
      if ((v10 & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }
  }

  else if ((v10 & 0x100) == 0)
  {
    goto LABEL_14;
  }

  v16 = *(a2 + 92);
  *(a1 + 124) |= 0x100u;
  *(a1 + 92) = v16;
  v10 = *(a2 + 124);
  if ((v10 & 2) == 0)
  {
LABEL_15:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  v17 = *(a2 + 64);
  *(a1 + 124) |= 2u;
  *(a1 + 64) = v17;
  v10 = *(a2 + 124);
  if ((v10 & 0x10) == 0)
  {
LABEL_16:
    if ((v10 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  v18 = *(a2 + 76);
  *(a1 + 124) |= 0x10u;
  *(a1 + 76) = v18;
  v10 = *(a2 + 124);
  if ((v10 & 8) == 0)
  {
LABEL_17:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  v19 = *(a2 + 72);
  *(a1 + 124) |= 8u;
  *(a1 + 72) = v19;
  v10 = *(a2 + 124);
  if ((v10 & 0x400) == 0)
  {
LABEL_18:
    if ((v10 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_34:
  v20 = *(a2 + 100);
  *(a1 + 124) |= 0x400u;
  *(a1 + 100) = v20;
  v10 = *(a2 + 124);
  if ((v10 & 0x10000) == 0)
  {
LABEL_19:
    if ((v10 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_35:
  v21 = *(a2 + 121);
  *(a1 + 124) |= 0x10000u;
  *(a1 + 121) = v21;
  v10 = *(a2 + 124);
  if ((v10 & 0x8000) == 0)
  {
LABEL_20:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  v22 = *(a2 + 120);
  *(a1 + 124) |= 0x8000u;
  *(a1 + 120) = v22;
  v10 = *(a2 + 124);
  if ((v10 & 0x200) == 0)
  {
LABEL_21:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_37:
  v23 = *(a2 + 96);
  *(a1 + 124) |= 0x200u;
  *(a1 + 96) = v23;
  v10 = *(a2 + 124);
  if ((v10 & 0x1000) == 0)
  {
LABEL_22:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_23;
    }

LABEL_39:
    v25 = *(a2 + 84);
    *(a1 + 124) |= 0x40u;
    *(a1 + 84) = v25;
    if ((*(a2 + 124) & 0x2000) == 0)
    {
      return a1;
    }

    goto LABEL_24;
  }

LABEL_38:
  v24 = *(a2 + 108);
  *(a1 + 124) |= 0x1000u;
  *(a1 + 108) = v24;
  v10 = *(a2 + 124);
  if ((v10 & 0x40) != 0)
  {
    goto LABEL_39;
  }

LABEL_23:
  if ((v10 & 0x2000) != 0)
  {
LABEL_24:
    v11 = *(a2 + 112);
    *(a1 + 124) |= 0x2000u;
    *(a1 + 112) = v11;
  }

  return a1;
}

uint64_t sub_245E31380(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if ((*(a1 + 124) & 2) != 0)
  {
    PB::TextFormatter::format(this, "attitudeDelta", *(a1 + 64));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "calibratedField", v7);
  }

  v8 = *(a1 + 124);
  if ((v8 & 0x8000) != 0)
  {
    v14 = *(a1 + 120);
    PB::TextFormatter::format(this, "doCorrection");
    v8 = *(a1 + 124);
    if ((v8 & 4) == 0)
    {
LABEL_7:
      if ((v8 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }
  }

  else if ((v8 & 4) == 0)
  {
    goto LABEL_7;
  }

  PB::TextFormatter::format(this, "horizontal", *(a1 + 68));
  v8 = *(a1 + 124);
  if ((v8 & 8) == 0)
  {
LABEL_8:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = *(a1 + 72);
  PB::TextFormatter::format(this, "isOnSphere");
  v8 = *(a1 + 124);
  if ((v8 & 0x10) == 0)
  {
LABEL_9:
    if ((v8 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_31:
  v16 = *(a1 + 76);
  PB::TextFormatter::format(this, "isRotating");
  if ((*(a1 + 124) & 0x10000) != 0)
  {
LABEL_10:
    v9 = *(a1 + 121);
    PB::TextFormatter::format(this, "isTraversingSphere");
  }

LABEL_11:
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(this, "predictedField", v12);
  }

  v13 = *(a1 + 124);
  if ((v13 & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "scale", *(a1 + 80));
    v13 = *(a1 + 124);
    if ((v13 & 0x40) == 0)
    {
LABEL_15:
      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_35;
    }
  }

  else if ((v13 & 0x40) == 0)
  {
    goto LABEL_15;
  }

  PB::TextFormatter::format(this, "timerUnitDistanceThreshold", *(a1 + 84));
  v13 = *(a1 + 124);
  if ((v13 & 1) == 0)
  {
LABEL_16:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 56));
  v13 = *(a1 + 124);
  if ((v13 & 0x80) == 0)
  {
LABEL_17:
    if ((v13 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "unitDistance", *(a1 + 88));
  v13 = *(a1 + 124);
  if ((v13 & 0x100) == 0)
  {
LABEL_18:
    if ((v13 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "unitDistanceLargeBufferDelta", *(a1 + 92));
  v13 = *(a1 + 124);
  if ((v13 & 0x200) == 0)
  {
LABEL_19:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "unitDistanceLargeBufferMax", *(a1 + 96));
  v13 = *(a1 + 124);
  if ((v13 & 0x400) == 0)
  {
LABEL_20:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "unitDistanceReference", *(a1 + 100));
  v13 = *(a1 + 124);
  if ((v13 & 0x800) == 0)
  {
LABEL_21:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "unitDistanceSmallBufferDelta", *(a1 + 104));
  v13 = *(a1 + 124);
  if ((v13 & 0x1000) == 0)
  {
LABEL_22:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "unitDistanceThreshold", *(a1 + 108));
  v13 = *(a1 + 124);
  if ((v13 & 0x2000) == 0)
  {
LABEL_23:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_42:
  PB::TextFormatter::format(this, "unitDistanceThresholdApplied", *(a1 + 112));
  if ((*(a1 + 124) & 0x4000) != 0)
  {
LABEL_24:
    PB::TextFormatter::format(this, "vertical", *(a1 + 116));
  }

LABEL_25:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E31648(uint64_t a1, PB::Reader *this)
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
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_188;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 124) |= 1u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 56) = *(*this + v23);
          v24 = *(this + 1) + 8;
          goto LABEL_183;
        case 2u:
          *(a1 + 124) |= 0x80u;
          v46 = *(this + 1);
          if (v46 > 0xFFFFFFFFFFFFFFFBLL || v46 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 88) = *(*this + v46);
          goto LABEL_182;
        case 3u:
          *(a1 + 124) |= 0x4000u;
          v42 = *(this + 1);
          if (v42 > 0xFFFFFFFFFFFFFFFBLL || v42 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 116) = *(*this + v42);
          goto LABEL_182;
        case 4u:
          *(a1 + 124) |= 4u;
          v44 = *(this + 1);
          if (v44 > 0xFFFFFFFFFFFFFFFBLL || v44 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 68) = *(*this + v44);
          goto LABEL_182;
        case 5u:
          *(a1 + 124) |= 0x20u;
          v39 = *(this + 1);
          if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 80) = *(*this + v39);
          goto LABEL_182;
        case 6u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_190;
            }

            v48 = *(this + 1);
            v49 = *(this + 2);
            while (v48 < v49 && (*(this + 24) & 1) == 0)
            {
              v51 = *(a1 + 16);
              v50 = *(a1 + 24);
              if (v51 >= v50)
              {
                v53 = *(a1 + 8);
                v54 = v51 - v53;
                v55 = (v51 - v53) >> 2;
                v56 = v55 + 1;
                if ((v55 + 1) >> 62)
                {
                  goto LABEL_191;
                }

                v57 = v50 - v53;
                if (v57 >> 1 > v56)
                {
                  v56 = v57 >> 1;
                }

                if (v57 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v58 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v58 = v56;
                }

                if (v58)
                {
                  sub_245DF85BC(a1 + 8, v58);
                }

                v59 = (v51 - v53) >> 2;
                v60 = (4 * v55);
                v61 = (4 * v55 - 4 * v59);
                *v60 = 0;
                v52 = v60 + 1;
                memcpy(v61, v53, v54);
                v62 = *(a1 + 8);
                *(a1 + 8) = v61;
                *(a1 + 16) = v52;
                *(a1 + 24) = 0;
                if (v62)
                {
                  operator delete(v62);
                }
              }

              else
              {
                *v51 = 0;
                v52 = v51 + 4;
              }

              *(a1 + 16) = v52;
              v63 = *(this + 1);
              if (v63 > 0xFFFFFFFFFFFFFFFBLL || v63 + 4 > *(this + 2))
              {
                goto LABEL_146;
              }

              *(v52 - 1) = *(*this + v63);
              v49 = *(this + 2);
              v48 = *(this + 1) + 4;
              *(this + 1) = v48;
            }

            goto LABEL_147;
          }

          v102 = *(a1 + 16);
          v101 = *(a1 + 24);
          if (v102 >= v101)
          {
            v112 = *(a1 + 8);
            v113 = v102 - v112;
            v114 = (v102 - v112) >> 2;
            v115 = v114 + 1;
            if ((v114 + 1) >> 62)
            {
              goto LABEL_191;
            }

            v116 = v101 - v112;
            if (v116 >> 1 > v115)
            {
              v115 = v116 >> 1;
            }

            if (v116 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v117 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v117 = v115;
            }

            if (v117)
            {
              sub_245DF85BC(a1 + 8, v117);
            }

            v124 = (v102 - v112) >> 2;
            v125 = (4 * v114);
            v126 = (4 * v114 - 4 * v124);
            *v125 = 0;
            v103 = v125 + 1;
            memcpy(v126, v112, v113);
            v127 = *(a1 + 8);
            *(a1 + 8) = v126;
            *(a1 + 16) = v103;
            *(a1 + 24) = 0;
            if (v127)
            {
              operator delete(v127);
            }
          }

          else
          {
            *v102 = 0;
            v103 = v102 + 4;
          }

          *(a1 + 16) = v103;
          goto LABEL_178;
        case 7u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_190:
              v133 = 0;
              return v133 & 1;
            }

            v68 = *(this + 1);
            v69 = *(this + 2);
            while (v68 < v69 && (*(this + 24) & 1) == 0)
            {
              v71 = *(a1 + 40);
              v70 = *(a1 + 48);
              if (v71 >= v70)
              {
                v73 = *(a1 + 32);
                v74 = v71 - v73;
                v75 = (v71 - v73) >> 2;
                v76 = v75 + 1;
                if ((v75 + 1) >> 62)
                {
                  goto LABEL_191;
                }

                v77 = v70 - v73;
                if (v77 >> 1 > v76)
                {
                  v76 = v77 >> 1;
                }

                if (v77 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v78 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v78 = v76;
                }

                if (v78)
                {
                  sub_245DF85BC(a1 + 32, v78);
                }

                v79 = (v71 - v73) >> 2;
                v80 = (4 * v75);
                v81 = (4 * v75 - 4 * v79);
                *v80 = 0;
                v72 = v80 + 1;
                memcpy(v81, v73, v74);
                v82 = *(a1 + 32);
                *(a1 + 32) = v81;
                *(a1 + 40) = v72;
                *(a1 + 48) = 0;
                if (v82)
                {
                  operator delete(v82);
                }
              }

              else
              {
                *v71 = 0;
                v72 = v71 + 4;
              }

              *(a1 + 40) = v72;
              v83 = *(this + 1);
              if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(this + 2))
              {
LABEL_146:
                *(this + 24) = 1;
                break;
              }

              *(v72 - 1) = *(*this + v83);
              v69 = *(this + 2);
              v68 = *(this + 1) + 4;
              *(this + 1) = v68;
            }

LABEL_147:
            PB::Reader::recallMark();
          }

          else
          {
            v111 = *(a1 + 40);
            v110 = *(a1 + 48);
            if (v111 >= v110)
            {
              v118 = *(a1 + 32);
              v119 = v111 - v118;
              v120 = (v111 - v118) >> 2;
              v121 = v120 + 1;
              if ((v120 + 1) >> 62)
              {
LABEL_191:
                sub_245DF85A4();
              }

              v122 = v110 - v118;
              if (v122 >> 1 > v121)
              {
                v121 = v122 >> 1;
              }

              if (v122 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v123 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v123 = v121;
              }

              if (v123)
              {
                sub_245DF85BC(a1 + 32, v123);
              }

              v128 = (v111 - v118) >> 2;
              v129 = (4 * v120);
              v130 = (4 * v120 - 4 * v128);
              *v129 = 0;
              v103 = v129 + 1;
              memcpy(v130, v118, v119);
              v131 = *(a1 + 32);
              *(a1 + 32) = v130;
              *(a1 + 40) = v103;
              *(a1 + 48) = 0;
              if (v131)
              {
                operator delete(v131);
              }
            }

            else
            {
              *v111 = 0;
              v103 = v111 + 4;
            }

            *(a1 + 40) = v103;
LABEL_178:
            v132 = *(this + 1);
            if (v132 <= 0xFFFFFFFFFFFFFFFBLL && v132 + 4 <= *(this + 2))
            {
              *(v103 - 1) = *(*this + v132);
LABEL_182:
              v24 = *(this + 1) + 4;
LABEL_183:
              *(this + 1) = v24;
            }

            else
            {
LABEL_180:
              *(this + 24) = 1;
            }
          }

LABEL_184:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_188;
          }

          break;
        case 8u:
          *(a1 + 124) |= 0x800u;
          v45 = *(this + 1);
          if (v45 > 0xFFFFFFFFFFFFFFFBLL || v45 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 104) = *(*this + v45);
          goto LABEL_182;
        case 9u:
          *(a1 + 124) |= 0x100u;
          v94 = *(this + 1);
          if (v94 > 0xFFFFFFFFFFFFFFFBLL || v94 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 92) = *(*this + v94);
          goto LABEL_182;
        case 0xAu:
          *(a1 + 124) |= 2u;
          v41 = *(this + 1);
          if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 64) = *(*this + v41);
          goto LABEL_182;
        case 0xBu:
          *(a1 + 124) |= 0x10u;
          v86 = *(this + 1);
          v85 = *(this + 2);
          v87 = *this;
          if (v86 <= 0xFFFFFFFFFFFFFFF5 && v86 + 10 <= v85)
          {
            v88 = 0;
            v89 = 0;
            v90 = 0;
            v91 = (v87 + v86);
            v92 = v86 + 1;
            do
            {
              *(this + 1) = v92;
              v93 = *v91++;
              v90 |= (v93 & 0x7F) << v88;
              if ((v93 & 0x80) == 0)
              {
                goto LABEL_171;
              }

              v88 += 7;
              ++v92;
              v14 = v89++ > 8;
            }

            while (!v14);
LABEL_141:
            LODWORD(v90) = 0;
            goto LABEL_171;
          }

          v104 = 0;
          v105 = 0;
          v90 = 0;
          v17 = v85 >= v86;
          v106 = v85 - v86;
          if (!v17)
          {
            v106 = 0;
          }

          v107 = (v87 + v86);
          v108 = v86 + 1;
          while (2)
          {
            if (v106)
            {
              v109 = *v107;
              *(this + 1) = v108;
              v90 |= (v109 & 0x7F) << v104;
              if (v109 < 0)
              {
                v104 += 7;
                --v106;
                ++v107;
                ++v108;
                v14 = v105++ > 8;
                if (v14)
                {
                  goto LABEL_141;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v90) = 0;
              }
            }

            else
            {
              LODWORD(v90) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_171:
          *(a1 + 76) = v90;
          goto LABEL_184;
        case 0xCu:
          *(a1 + 124) |= 8u;
          v31 = *(this + 1);
          v30 = *(this + 2);
          v32 = *this;
          if (v31 <= 0xFFFFFFFFFFFFFFF5 && v31 + 10 <= v30)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = (v32 + v31);
            v37 = v31 + 1;
            do
            {
              *(this + 1) = v37;
              v38 = *v36++;
              v35 |= (v38 & 0x7F) << v33;
              if ((v38 & 0x80) == 0)
              {
                goto LABEL_168;
              }

              v33 += 7;
              ++v37;
              v14 = v34++ > 8;
            }

            while (!v14);
LABEL_131:
            LODWORD(v35) = 0;
            goto LABEL_168;
          }

          v95 = 0;
          v96 = 0;
          v35 = 0;
          v17 = v30 >= v31;
          v97 = v30 - v31;
          if (!v17)
          {
            v97 = 0;
          }

          v98 = (v32 + v31);
          v99 = v31 + 1;
          while (2)
          {
            if (v97)
            {
              v100 = *v98;
              *(this + 1) = v99;
              v35 |= (v100 & 0x7F) << v95;
              if (v100 < 0)
              {
                v95 += 7;
                --v97;
                ++v98;
                ++v99;
                v14 = v96++ > 8;
                if (v14)
                {
                  goto LABEL_131;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }
            }

            else
            {
              LODWORD(v35) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_168:
          *(a1 + 72) = v35;
          goto LABEL_184;
        case 0xDu:
          *(a1 + 124) |= 0x400u;
          v40 = *(this + 1);
          if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 100) = *(*this + v40);
          goto LABEL_182;
        case 0xEu:
          *(a1 + 124) |= 0x10000u;
          v64 = *(this + 1);
          if (v64 >= *(this + 2))
          {
            v67 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v65 = v64 + 1;
            v66 = *(*this + v64);
            *(this + 1) = v65;
            v67 = v66 != 0;
          }

          *(a1 + 121) = v67;
          goto LABEL_184;
        case 0xFu:
          *(a1 + 124) |= 0x8000u;
          v26 = *(this + 1);
          if (v26 >= *(this + 2))
          {
            v29 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v27 = v26 + 1;
            v28 = *(*this + v26);
            *(this + 1) = v27;
            v29 = v28 != 0;
          }

          *(a1 + 120) = v29;
          goto LABEL_184;
        case 0x10u:
          *(a1 + 124) |= 0x200u;
          v43 = *(this + 1);
          if (v43 > 0xFFFFFFFFFFFFFFFBLL || v43 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 96) = *(*this + v43);
          goto LABEL_182;
        case 0x11u:
          *(a1 + 124) |= 0x1000u;
          v25 = *(this + 1);
          if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 108) = *(*this + v25);
          goto LABEL_182;
        case 0x12u:
          *(a1 + 124) |= 0x40u;
          v47 = *(this + 1);
          if (v47 > 0xFFFFFFFFFFFFFFFBLL || v47 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 84) = *(*this + v47);
          goto LABEL_182;
        case 0x13u:
          *(a1 + 124) |= 0x2000u;
          v84 = *(this + 1);
          if (v84 > 0xFFFFFFFFFFFFFFFBLL || v84 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 112) = *(*this + v84);
          goto LABEL_182;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_190;
          }

          goto LABEL_184;
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

LABEL_188:
  v133 = v4 ^ 1;
  return v133 & 1;
}

uint64_t sub_245E32134(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 124);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 56));
    v4 = *(v3 + 124);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 0x4000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 124);
  if ((v4 & 0x4000) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_29:
    result = PB::Writer::write(this, *(v3 + 68));
    if ((*(v3 + 124) & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 124);
  if ((v4 & 4) != 0)
  {
    goto LABEL_29;
  }

LABEL_5:
  if ((v4 & 0x20) != 0)
  {
LABEL_6:
    result = PB::Writer::write(this, *(v3 + 80));
  }

LABEL_7:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    result = PB::Writer::write(this, v10);
  }

  v11 = *(v3 + 124);
  if ((v11 & 0x800) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 104));
    v11 = *(v3 + 124);
    if ((v11 & 0x100) == 0)
    {
LABEL_15:
      if ((v11 & 2) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }
  }

  else if ((v11 & 0x100) == 0)
  {
    goto LABEL_15;
  }

  result = PB::Writer::write(this, *(v3 + 92));
  v11 = *(v3 + 124);
  if ((v11 & 2) == 0)
  {
LABEL_16:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 64));
  v11 = *(v3 + 124);
  if ((v11 & 0x10) == 0)
  {
LABEL_17:
    if ((v11 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  v12 = *(v3 + 76);
  result = PB::Writer::writeVarInt(this);
  v11 = *(v3 + 124);
  if ((v11 & 8) == 0)
  {
LABEL_18:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  v13 = *(v3 + 72);
  result = PB::Writer::writeVarInt(this);
  v11 = *(v3 + 124);
  if ((v11 & 0x400) == 0)
  {
LABEL_19:
    if ((v11 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 100));
  v11 = *(v3 + 124);
  if ((v11 & 0x10000) == 0)
  {
LABEL_20:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_37:
  v14 = *(v3 + 121);
  result = PB::Writer::write(this);
  v11 = *(v3 + 124);
  if ((v11 & 0x8000) == 0)
  {
LABEL_21:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

LABEL_38:
  v15 = *(v3 + 120);
  result = PB::Writer::write(this);
  v11 = *(v3 + 124);
  if ((v11 & 0x200) == 0)
  {
LABEL_22:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 96));
  v11 = *(v3 + 124);
  if ((v11 & 0x1000) == 0)
  {
LABEL_23:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_24;
    }

LABEL_41:
    result = PB::Writer::write(this, *(v3 + 84));
    if ((*(v3 + 124) & 0x2000) == 0)
    {
      return result;
    }

    goto LABEL_42;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 108));
  v11 = *(v3 + 124);
  if ((v11 & 0x40) != 0)
  {
    goto LABEL_41;
  }

LABEL_24:
  if ((v11 & 0x2000) == 0)
  {
    return result;
  }

LABEL_42:
  v16 = *(v3 + 112);

  return PB::Writer::write(this, v16);
}

void *sub_245E32394(void *result)
{
  *result = &unk_2858D0638;
  result[1] = 0;
  return result;
}

void sub_245E323B4(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D0638;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245E32434(PB::Base *a1)
{
  sub_245E323B4(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245E3246C(void *result, uint64_t a2)
{
  *result = &unk_2858D0638;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245E32514(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "correction");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E32590(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_245E327F0(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_245E3280C(uint64_t result)
{
  *result = &unk_2858D0670;
  *(result + 28) = 0;
  return result;
}

void sub_245E32834(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E3286C(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D0670;
  *(result + 28) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 28) = 1;
    *(result + 8) = v4;
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
    v5 = *(a2 + 16);
    v3 |= 2u;
    *(result + 28) = v3;
    *(result + 16) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 4) == 0)
    {
      return result;
    }

LABEL_10:
    v7 = *(a2 + 24);
    *(result + 28) = v3 | 4;
    *(result + 24) = v7;
    return result;
  }

  v6 = *(a2 + 25);
  v3 |= 8u;
  *(result + 28) = v3;
  *(result + 25) = v6;
  if ((*(a2 + 28) & 4) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_245E32908(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 4) != 0)
  {
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "finalDecision");
    v5 = *(a1 + 28);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 25);
  PB::TextFormatter::format(this, "instantDecision");
  v5 = *(a1 + 28);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(this, "timeStart", *(a1 + 8));
  if ((*(a1 + 28) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "timeStop", *(a1 + 16));
  }

LABEL_6:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E329CC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_49;
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
          *(a1 + 28) |= 8u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v26 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v25 = *(*this + v2++);
            *(this + 1) = v2;
            v26 = v25 != 0;
          }

          *(a1 + 25) = v26;
          goto LABEL_45;
        }

        if (v22 == 4)
        {
          *(a1 + 28) |= 4u;
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

          *(a1 + 24) = v24;
          goto LABEL_45;
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
LABEL_36:
            *(this + 24) = 1;
            goto LABEL_45;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_44;
        }

        if (v22 == 2)
        {
          *(a1 + 28) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_36;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_44:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_45;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v27 = 0;
        return v27 & 1;
      }

      v2 = *(this + 1);
LABEL_45:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_49:
  v27 = v4 ^ 1;
  return v27 & 1;
}

uint64_t sub_245E32C6C(uint64_t result, PB::Writer *this)
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
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = *(v3 + 25);
      result = PB::Writer::write(this);
      if ((*(v3 + 28) & 4) == 0)
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
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_9:
  v6 = *(v3 + 24);

  return PB::Writer::write(this);
}

void *sub_245E32D14(void *result)
{
  *result = &unk_2858D06A8;
  result[1] = 0;
  return result;
}

void sub_245E32D34(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D06A8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245E32DB4(PB::Base *a1)
{
  sub_245E32D34(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245E32DEC(void *result, uint64_t a2)
{
  *result = &unk_2858D06A8;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245E32E94(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E32F10(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_245E33148(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245E33164(void *result)
{
  *result = &unk_2858D06E0;
  result[1] = 0;
  return result;
}

void sub_245E33184(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D06E0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245E33204(PB::Base *a1)
{
  sub_245E33184(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245E3323C(void *result, uint64_t a2)
{
  *result = &unk_2858D06E0;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245E332E4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E33360(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_245E335BC(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_245E335D8(uint64_t result)
{
  *result = &unk_2858D0718;
  *(result + 92) = 0;
  return result;
}

void sub_245E33600(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245E33638(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D0718;
  *(a1 + 92) = 0;
  v2 = *(a2 + 92);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(a1 + 92) = 1;
    *(a1 + 8) = v4;
    v2 = *(a2 + 92);
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x80000) != 0)
  {
LABEL_5:
    result = *(a2 + 88);
    v3 |= 0x80000u;
    *(a1 + 92) = v3;
    *(a1 + 88) = result;
    v2 = *(a2 + 92);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    result = *(a2 + 28);
    v3 |= 0x10u;
    *(a1 + 92) = v3;
    *(a1 + 28) = result;
    v2 = *(a2 + 92);
    if ((v2 & 0x8000) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }
  }

  else if ((v2 & 0x8000) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 72);
  v3 |= 0x8000u;
  *(a1 + 92) = v3;
  *(a1 + 72) = result;
  v2 = *(a2 + 92);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  v6 = *(a2 + 32);
  v3 |= 0x20u;
  *(a1 + 92) = v3;
  *(a1 + 32) = v6;
  v2 = *(a2 + 92);
  if ((v2 & 8) == 0)
  {
LABEL_10:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  v7 = *(a2 + 24);
  v3 |= 8u;
  *(a1 + 92) = v3;
  *(a1 + 24) = v7;
  v2 = *(a2 + 92);
  if ((v2 & 0x800) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v8 = *(a2 + 56);
  v3 |= 0x800u;
  *(a1 + 92) = v3;
  *(a1 + 56) = v8;
  v2 = *(a2 + 92);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  v9 = *(a2 + 44);
  v3 |= 0x100u;
  *(a1 + 92) = v3;
  *(a1 + 44) = v9;
  v2 = *(a2 + 92);
  if ((v2 & 0x80) == 0)
  {
LABEL_13:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  v10 = *(a2 + 40);
  v3 |= 0x80u;
  *(a1 + 92) = v3;
  *(a1 + 40) = v10;
  v2 = *(a2 + 92);
  if ((v2 & 0x200) == 0)
  {
LABEL_14:
    if ((v2 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  v11 = *(a2 + 48);
  v3 |= 0x200u;
  *(a1 + 92) = v3;
  *(a1 + 48) = v11;
  v2 = *(a2 + 92);
  if ((v2 & 4) == 0)
  {
LABEL_15:
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = *(a2 + 20);
  v3 |= 4u;
  *(a1 + 92) = v3;
  *(a1 + 20) = result;
  v2 = *(a2 + 92);
  if ((v2 & 2) == 0)
  {
LABEL_16:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = *(a2 + 16);
  v3 |= 2u;
  *(a1 + 92) = v3;
  *(a1 + 16) = result;
  v2 = *(a2 + 92);
  if ((v2 & 0x400) == 0)
  {
LABEL_17:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  v12 = *(a2 + 52);
  v3 |= 0x400u;
  *(a1 + 92) = v3;
  *(a1 + 52) = v12;
  v2 = *(a2 + 92);
  if ((v2 & 0x40) == 0)
  {
LABEL_18:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_36:
  v13 = *(a2 + 36);
  v3 |= 0x40u;
  *(a1 + 92) = v3;
  *(a1 + 36) = v13;
  v2 = *(a2 + 92);
  if ((v2 & 0x1000) == 0)
  {
LABEL_19:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 60);
  v3 |= 0x1000u;
  *(a1 + 92) = v3;
  *(a1 + 60) = result;
  v2 = *(a2 + 92);
  if ((v2 & 0x2000) == 0)
  {
LABEL_20:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = *(a2 + 64);
  v3 |= 0x2000u;
  *(a1 + 92) = v3;
  *(a1 + 64) = result;
  v2 = *(a2 + 92);
  if ((v2 & 0x4000) == 0)
  {
LABEL_21:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 68);
  v3 |= 0x4000u;
  *(a1 + 92) = v3;
  *(a1 + 68) = result;
  v2 = *(a2 + 92);
  if ((v2 & 0x10000) == 0)
  {
LABEL_22:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = *(a2 + 76);
  v3 |= 0x10000u;
  *(a1 + 92) = v3;
  *(a1 + 76) = result;
  v2 = *(a2 + 92);
  if ((v2 & 0x20000) == 0)
  {
LABEL_23:
    if ((v2 & 0x40000) == 0)
    {
      return result;
    }

LABEL_42:
    result = *(a2 + 84);
    *(a1 + 92) = v3 | 0x40000;
    *(a1 + 84) = result;
    return result;
  }

LABEL_41:
  result = *(a2 + 80);
  v3 |= 0x20000u;
  *(a1 + 92) = v3;
  *(a1 + 80) = result;
  if ((*(a2 + 92) & 0x40000) != 0)
  {
    goto LABEL_42;
  }

  return result;
}

uint64_t sub_245E33894(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 92);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "asymmetryProbabilityEstimate", *(a1 + 16));
    v5 = *(a1 + 92);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "cycleTime", *(a1 + 20));
  v5 = *(a1 + 92);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  v6 = *(a1 + 24);
  PB::TextFormatter::format(this, "deviceSide");
  v5 = *(a1 + 92);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "doubleSupportEstimate", *(a1 + 28));
  v5 = *(a1 + 92);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  v7 = *(a1 + 32);
  PB::TextFormatter::format(this, "gaitPhase");
  v5 = *(a1 + 92);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  v8 = *(a1 + 36);
  PB::TextFormatter::format(this, "segmentsRejectedByIsCadenceConcordant");
  v5 = *(a1 + 92);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  v9 = *(a1 + 40);
  PB::TextFormatter::format(this, "segmentsRejectedByIsFeasibleWalkingSpeed");
  v5 = *(a1 + 92);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  v10 = *(a1 + 44);
  PB::TextFormatter::format(this, "segmentsRejectedByIsNotRunning");
  v5 = *(a1 + 92);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  v11 = *(a1 + 48);
  PB::TextFormatter::format(this, "segmentsRejectedByIsPendular");
  v5 = *(a1 + 92);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  v12 = *(a1 + 52);
  PB::TextFormatter::format(this, "segmentsRejectedByIsSufficientVerticalTwist");
  v5 = *(a1 + 92);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  v13 = *(a1 + 56);
  PB::TextFormatter::format(this, "segmentsRejectedByIsSwingStanceCycle");
  v5 = *(a1 + 92);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "stepIndexOfHarmonicityAP", *(a1 + 60));
  v5 = *(a1 + 92);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "stepIndexOfHarmonicityML", *(a1 + 64));
  v5 = *(a1 + 92);
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "stepIndexOfHarmonicityVT", *(a1 + 68));
  v5 = *(a1 + 92);
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "stepLengthEstimate", *(a1 + 72));
  v5 = *(a1 + 92);
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "swingIndexOfHarmonicityAP", *(a1 + 76));
  v5 = *(a1 + 92);
  if ((v5 & 0x20000) == 0)
  {
LABEL_18:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "swingIndexOfHarmonicityML", *(a1 + 80));
  v5 = *(a1 + 92);
  if ((v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v5 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "swingIndexOfHarmonicityVT", *(a1 + 84));
  v5 = *(a1 + 92);
  if ((v5 & 1) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_43:
  v14 = *(a1 + 8);
  PB::TextFormatter::format(this, "timestamp");
  if ((*(a1 + 92) & 0x80000) != 0)
  {
LABEL_21:
    PB::TextFormatter::format(this, "walkSpeedEstimate", *(a1 + 88));
  }

LABEL_22:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E33B58(uint64_t a1, PB::Reader *this)
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
          *(a1 + 92) |= 1u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v122 = 0;
            v123 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v124 = v2 - v22;
            v125 = (v23 + v22);
            v126 = v22 + 1;
            while (1)
            {
              if (!v124)
              {
                v26 = 0;
                *(this + 24) = 1;
                goto LABEL_223;
              }

              v127 = v126;
              v128 = *v125;
              *(this + 1) = v127;
              v26 |= (v128 & 0x7F) << v122;
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
                v26 = 0;
                goto LABEL_222;
              }
            }

            if (*(this + 24))
            {
              v26 = 0;
            }

LABEL_222:
            v2 = v127;
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
                goto LABEL_223;
              }

              v24 += 7;
              ++v28;
              v14 = v25++ > 8;
            }

            while (!v14);
            v26 = 0;
          }

LABEL_223:
          *(a1 + 8) = v26;
          goto LABEL_240;
        case 2u:
          *(a1 + 92) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_120;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_194;
        case 3u:
          *(a1 + 92) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_120;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_194;
        case 4u:
          *(a1 + 92) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_120;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_194;
        case 5u:
          *(a1 + 92) |= 0x20u;
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
                LODWORD(v34) = 0;
                *(this + 24) = 1;
                goto LABEL_207;
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
                LODWORD(v34) = 0;
LABEL_206:
                v2 = v99;
                goto LABEL_207;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_206;
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
              goto LABEL_207;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_207:
          *(a1 + 32) = v34;
          goto LABEL_240;
        case 6u:
          *(a1 + 92) |= 8u;
          v62 = *(this + 1);
          v2 = *(this + 2);
          v63 = *this;
          if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v2)
          {
            v129 = 0;
            v130 = 0;
            v66 = 0;
            if (v2 <= v62)
            {
              v2 = *(this + 1);
            }

            v131 = v2 - v62;
            v132 = (v63 + v62);
            v133 = v62 + 1;
            while (1)
            {
              if (!v131)
              {
                LODWORD(v66) = 0;
                *(this + 24) = 1;
                goto LABEL_227;
              }

              v134 = v133;
              v135 = *v132;
              *(this + 1) = v134;
              v66 |= (v135 & 0x7F) << v129;
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
                LODWORD(v66) = 0;
LABEL_226:
                v2 = v134;
                goto LABEL_227;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v66) = 0;
            }

            goto LABEL_226;
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
              goto LABEL_227;
            }

            v64 += 7;
            ++v68;
            v14 = v65++ > 8;
          }

          while (!v14);
          LODWORD(v66) = 0;
LABEL_227:
          *(a1 + 24) = v66;
          goto LABEL_240;
        case 7u:
          *(a1 + 92) |= 0x800u;
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
                LODWORD(v82) = 0;
                *(this + 24) = 1;
                goto LABEL_235;
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
                LODWORD(v82) = 0;
LABEL_234:
                v2 = v148;
                goto LABEL_235;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v82) = 0;
            }

            goto LABEL_234;
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
              goto LABEL_235;
            }

            v80 += 7;
            ++v84;
            v14 = v81++ > 8;
          }

          while (!v14);
          LODWORD(v82) = 0;
LABEL_235:
          *(a1 + 56) = v82;
          goto LABEL_240;
        case 8u:
          *(a1 + 92) |= 0x100u;
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
                LODWORD(v58) = 0;
                *(this + 24) = 1;
                goto LABEL_219;
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
                LODWORD(v58) = 0;
LABEL_218:
                v2 = v120;
                goto LABEL_219;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v58) = 0;
            }

            goto LABEL_218;
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
              goto LABEL_219;
            }

            v56 += 7;
            ++v60;
            v14 = v57++ > 8;
          }

          while (!v14);
          LODWORD(v58) = 0;
LABEL_219:
          *(a1 + 44) = v58;
          goto LABEL_240;
        case 9u:
          *(a1 + 92) |= 0x80u;
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
                LODWORD(v90) = 0;
                *(this + 24) = 1;
                goto LABEL_239;
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
                LODWORD(v90) = 0;
LABEL_238:
                v2 = v155;
                goto LABEL_239;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v90) = 0;
            }

            goto LABEL_238;
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
              goto LABEL_239;
            }

            v88 += 7;
            ++v92;
            v14 = v89++ > 8;
          }

          while (!v14);
          LODWORD(v90) = 0;
LABEL_239:
          *(a1 + 40) = v90;
          goto LABEL_240;
        case 0xAu:
          *(a1 + 92) |= 0x200u;
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
                goto LABEL_215;
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
LABEL_214:
                v2 = v113;
                goto LABEL_215;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_214;
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
              goto LABEL_215;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_215:
          *(a1 + 48) = v50;
          goto LABEL_240;
        case 0xBu:
          *(a1 + 92) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_120;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_194;
        case 0xCu:
          *(a1 + 92) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_120;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_194;
        case 0xDu:
          *(a1 + 92) |= 0x400u;
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
                goto LABEL_211;
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
LABEL_210:
                v2 = v106;
                goto LABEL_211;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_210;
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
              goto LABEL_211;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_211:
          *(a1 + 52) = v42;
          goto LABEL_240;
        case 0xEu:
          *(a1 + 92) |= 0x40u;
          v70 = *(this + 1);
          v2 = *(this + 2);
          v71 = *this;
          if (v70 > 0xFFFFFFFFFFFFFFF5 || v70 + 10 > v2)
          {
            v136 = 0;
            v137 = 0;
            v74 = 0;
            if (v2 <= v70)
            {
              v2 = *(this + 1);
            }

            v138 = v2 - v70;
            v139 = (v71 + v70);
            v140 = v70 + 1;
            while (1)
            {
              if (!v138)
              {
                LODWORD(v74) = 0;
                *(this + 24) = 1;
                goto LABEL_231;
              }

              v141 = v140;
              v142 = *v139;
              *(this + 1) = v141;
              v74 |= (v142 & 0x7F) << v136;
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
                LODWORD(v74) = 0;
LABEL_230:
                v2 = v141;
                goto LABEL_231;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v74) = 0;
            }

            goto LABEL_230;
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
              goto LABEL_231;
            }

            v72 += 7;
            ++v76;
            v14 = v73++ > 8;
          }

          while (!v14);
          LODWORD(v74) = 0;
LABEL_231:
          *(a1 + 36) = v74;
          goto LABEL_240;
        case 0xFu:
          *(a1 + 92) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_120;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_194;
        case 0x10u:
          *(a1 + 92) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_120;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_194;
        case 0x11u:
          *(a1 + 92) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_120;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_194;
        case 0x12u:
          *(a1 + 92) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_120;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_194;
        case 0x13u:
          *(a1 + 92) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_120;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_194;
        case 0x14u:
          *(a1 + 92) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
          {
            *(a1 + 84) = *(*this + v2);
LABEL_194:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          else
          {
LABEL_120:
            *(this + 24) = 1;
          }

          goto LABEL_240;
        default:
          if (!PB::Reader::skip(this))
          {
            v157 = 0;
            return v157 & 1;
          }

          v2 = *(this + 1);
LABEL_240:
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
  v157 = v4 ^ 1;
  return v157 & 1;
}

uint64_t sub_245E348E0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 92);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 92);
    if ((v4 & 0x80000) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 92);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 92);
  if ((v4 & 0x8000) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 92);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  v6 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x800) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v8 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v9 = *(v3 + 44);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v10 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x200) == 0)
  {
LABEL_11:
    if ((v4 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v11 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 4) == 0)
  {
LABEL_12:
    if ((v4 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 92);
  if ((v4 & 2) == 0)
  {
LABEL_13:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 92);
  if ((v4 & 0x400) == 0)
  {
LABEL_14:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v12 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x40) == 0)
  {
LABEL_15:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v13 = *(v3 + 36);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x1000) == 0)
  {
LABEL_16:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 92);
  if ((v4 & 0x2000) == 0)
  {
LABEL_17:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 92);
  if ((v4 & 0x4000) == 0)
  {
LABEL_18:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 92);
  if ((v4 & 0x10000) == 0)
  {
LABEL_19:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

LABEL_40:
    result = PB::Writer::write(this, *(v3 + 80));
    if ((*(v3 + 92) & 0x40000) == 0)
    {
      return result;
    }

    goto LABEL_41;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 92);
  if ((v4 & 0x20000) != 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  if ((v4 & 0x40000) == 0)
  {
    return result;
  }

LABEL_41:
  v14 = *(v3 + 84);

  return PB::Writer::write(this, v14);
}

uint64_t sub_245E34B48(uint64_t result)
{
  *result = &unk_2858D0750;
  *(result + 20) = 0;
  return result;
}

void sub_245E34B70(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245E34BA8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D0750;
  *(a1 + 20) = 0;
  if ((*(a2 + 20) & 1) == 0)
  {
    v2 = 2;
    if ((*(a2 + 20) & 2) == 0)
    {
      return *&v3;
    }

    goto LABEL_5;
  }

  v3 = *(a2 + 8);
  *(a1 + 20) = 1;
  *(a1 + 8) = v3;
  v2 = 3;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    LODWORD(v3) = *(a2 + 16);
    *(a1 + 20) = v2;
    *(a1 + 16) = v3;
  }

  return *&v3;
}

uint64_t sub_245E34C0C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
    v5 = *(a1 + 20);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "yaw", *(a1 + 16));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E34C88(uint64_t a1, PB::Reader *this)
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
            goto LABEL_38;
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
        goto LABEL_38;
      }

      if ((v10 >> 3) == 2)
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 1u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_29;
        }

        *(a1 + 8) = *(*this + v2);
        v2 = *(this + 1) + 8;
LABEL_33:
        *(this + 1) = v2;
        goto LABEL_34;
      }

      if (!PB::Reader::skip(this))
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(this + 1);
LABEL_34:
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_38;
      }
    }

    *(a1 + 20) |= 2u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
    {
LABEL_29:
      *(this + 24) = 1;
      goto LABEL_34;
    }

    *(a1 + 16) = *(*this + v2);
    v2 = *(this + 1) + 4;
    goto LABEL_33;
  }

LABEL_38:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_245E34E90(uint64_t result, PB::Writer *this)
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

    return PB::Writer::write(this, v5);
  }

  return result;
}

void *sub_245E34EFC(void *result)
{
  *result = &unk_2858D0788;
  result[1] = 0;
  return result;
}

void sub_245E34F1C(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D0788;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245E34F9C(PB::Base *a1)
{
  sub_245E34F1C(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245E34FD4(void *result, uint64_t a2)
{
  *result = &unk_2858D0788;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245E3507C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "correction");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E350F8(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_245E35358(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_245E35374(uint64_t result)
{
  *result = &unk_2858D07C0;
  *(result + 64) = 0;
  return result;
}

void sub_245E3539C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E353D4(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D07C0;
  *(result + 64) = 0;
  v2 = *(a2 + 64);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 64) = 1;
    *(result + 8) = v4;
    v2 = *(a2 + 64);
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 64) & 0x800) != 0)
  {
LABEL_5:
    v5 = *(a2 + 56);
    v3 |= 0x800u;
    *(result + 64) = v3;
    *(result + 56) = v5;
    v2 = *(a2 + 64);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 24);
    v3 |= 8u;
    *(result + 64) = v3;
    *(result + 24) = v6;
    v2 = *(a2 + 64);
    if ((v2 & 0x100) == 0)
    {
LABEL_8:
      if ((v2 & 0x200) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }
  }

  else if ((v2 & 0x100) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 44);
  v3 |= 0x100u;
  *(result + 64) = v3;
  *(result + 44) = v7;
  v2 = *(a2 + 64);
  if ((v2 & 0x200) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v8 = *(a2 + 48);
  v3 |= 0x200u;
  *(result + 64) = v3;
  *(result + 48) = v8;
  v2 = *(a2 + 64);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = *(a2 + 20);
  v3 |= 4u;
  *(result + 64) = v3;
  *(result + 20) = v9;
  v2 = *(a2 + 64);
  if ((v2 & 0x1000) == 0)
  {
LABEL_11:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = *(a2 + 60);
  v3 |= 0x1000u;
  *(result + 64) = v3;
  *(result + 60) = v10;
  v2 = *(a2 + 64);
  if ((v2 & 0x10) == 0)
  {
LABEL_12:
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v11 = *(a2 + 28);
  v3 |= 0x10u;
  *(result + 64) = v3;
  *(result + 28) = v11;
  v2 = *(a2 + 64);
  if ((v2 & 2) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  v12 = *(a2 + 16);
  v3 |= 2u;
  *(result + 64) = v3;
  *(result + 16) = v12;
  v2 = *(a2 + 64);
  if ((v2 & 0x40) == 0)
  {
LABEL_14:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = *(a2 + 36);
  v3 |= 0x40u;
  *(result + 64) = v3;
  *(result + 36) = v13;
  v2 = *(a2 + 64);
  if ((v2 & 0x4000) == 0)
  {
LABEL_15:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  v14 = *(a2 + 62);
  v3 |= 0x4000u;
  *(result + 64) = v3;
  *(result + 62) = v14;
  v2 = *(a2 + 64);
  if ((v2 & 0x8000) == 0)
  {
LABEL_16:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = *(a2 + 63);
  v3 |= 0x8000u;
  *(result + 64) = v3;
  *(result + 63) = v15;
  v2 = *(a2 + 64);
  if ((v2 & 0x80) == 0)
  {
LABEL_17:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = *(a2 + 40);
  v3 |= 0x80u;
  *(result + 64) = v3;
  *(result + 40) = v16;
  v2 = *(a2 + 64);
  if ((v2 & 0x400) == 0)
  {
LABEL_18:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  v17 = *(a2 + 52);
  v3 |= 0x400u;
  *(result + 64) = v3;
  *(result + 52) = v17;
  v2 = *(a2 + 64);
  if ((v2 & 0x20) == 0)
  {
LABEL_19:
    if ((v2 & 0x2000) == 0)
    {
      return result;
    }

LABEL_34:
    v19 = *(a2 + 61);
    *(result + 64) = v3 | 0x2000;
    *(result + 61) = v19;
    return result;
  }

LABEL_33:
  v18 = *(a2 + 32);
  v3 |= 0x20u;
  *(result + 64) = v3;
  *(result + 32) = v18;
  if ((*(a2 + 64) & 0x2000) != 0)
  {
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_245E355C0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if ((v5 & 0x1000) != 0)
  {
    v6 = *(a1 + 60);
    PB::TextFormatter::format(this, "doGyroPropagate");
    v5 = *(a1 + 64);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "estimate", *(a1 + 16));
  v5 = *(a1 + 64);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "gravVarianceSum", *(a1 + 20));
  v5 = *(a1 + 64);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "horizontalRotation", *(a1 + 24));
  v5 = *(a1 + 64);
  if ((v5 & 0x2000) == 0)
  {
LABEL_6:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  v7 = *(a1 + 61);
  PB::TextFormatter::format(this, "isCourseStable");
  v5 = *(a1 + 64);
  if ((v5 & 0x4000) == 0)
  {
LABEL_7:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v8 = *(a1 + 62);
  PB::TextFormatter::format(this, "isCourseValid");
  v5 = *(a1 + 64);
  if ((v5 & 0x8000) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v9 = *(a1 + 63);
  PB::TextFormatter::format(this, "isFiller");
  v5 = *(a1 + 64);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "isStablePoseFiltered", *(a1 + 28));
  v5 = *(a1 + 64);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "kalmanGain", *(a1 + 32));
  v5 = *(a1 + 64);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "measurement", *(a1 + 36));
  v5 = *(a1 + 64);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "measurementNoise", *(a1 + 40));
  v5 = *(a1 + 64);
  if ((v5 & 0x100) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "notHorizontalRotation", *(a1 + 44));
  v5 = *(a1 + 64);
  if ((v5 & 0x200) == 0)
  {
LABEL_14:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "radiusOfCurvatureFiltered", *(a1 + 48));
  v5 = *(a1 + 64);
  if ((v5 & 0x400) == 0)
  {
LABEL_15:
    if ((v5 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "stateCov", *(a1 + 52));
  v5 = *(a1 + 64);
  if ((v5 & 1) == 0)
  {
LABEL_16:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 64) & 0x800) != 0)
  {
LABEL_17:
    PB::TextFormatter::format(this, "yawDelta", *(a1 + 56));
  }

LABEL_18:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E35804(uint64_t a1, PB::Reader *this)
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
        goto LABEL_84;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 64) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_79;
        case 2u:
          *(a1 + 64) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_78;
        case 3u:
          *(a1 + 64) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_78;
        case 4u:
          *(a1 + 64) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_78;
        case 5u:
          *(a1 + 64) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_78;
        case 6u:
          *(a1 + 64) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_78;
        case 7u:
          *(a1 + 64) |= 0x1000u;
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

          *(a1 + 60) = v27;
          goto LABEL_80;
        case 8u:
          *(a1 + 64) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_78;
        case 9u:
          *(a1 + 64) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_78;
        case 0xAu:
          *(a1 + 64) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_78;
        case 0xBu:
          *(a1 + 64) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v29 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v28 = *(*this + v2++);
            *(this + 1) = v2;
            v29 = v28 != 0;
          }

          *(a1 + 62) = v29;
          goto LABEL_80;
        case 0xCu:
          *(a1 + 64) |= 0x8000u;
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

          *(a1 + 63) = v23;
          goto LABEL_80;
        case 0xDu:
          *(a1 + 64) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_78;
        case 0xEu:
          *(a1 + 64) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_78;
        case 0xFu:
          *(a1 + 64) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_66:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 32) = *(*this + v2);
LABEL_78:
            v2 = *(this + 1) + 4;
LABEL_79:
            *(this + 1) = v2;
          }

          goto LABEL_80;
        case 0x10u:
          *(a1 + 64) |= 0x2000u;
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

          *(a1 + 61) = v25;
          goto LABEL_80;
        default:
          if (!PB::Reader::skip(this))
          {
            v30 = 0;
            return v30 & 1;
          }

          v2 = *(this + 1);
LABEL_80:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_84;
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

LABEL_84:
  v30 = v4 ^ 1;
  return v30 & 1;
}

uint64_t sub_245E35DA8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 64);
    if ((v4 & 0x800) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*(result + 64) & 0x800) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 64);
  if ((v4 & 0x100) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 64);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 64);
  if ((v4 & 0x1000) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v5 = *(v3 + 60);
  result = PB::Writer::write(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 64);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 64);
  if ((v4 & 0x40) == 0)
  {
LABEL_11:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 64);
  if ((v4 & 0x4000) == 0)
  {
LABEL_12:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v6 = *(v3 + 62);
  result = PB::Writer::write(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x8000) == 0)
  {
LABEL_13:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v7 = *(v3 + 63);
  result = PB::Writer::write(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_14:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 64);
  if ((v4 & 0x400) == 0)
  {
LABEL_15:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    result = PB::Writer::write(this, *(v3 + 32));
    if ((*(v3 + 64) & 0x2000) == 0)
    {
      return result;
    }

    goto LABEL_33;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 64);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((v4 & 0x2000) == 0)
  {
    return result;
  }

LABEL_33:
  v8 = *(v3 + 61);

  return PB::Writer::write(this);
}

void sub_245E35FA4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245E35FDC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D07F8;
  *(a1 + 124) = 0;
  v2 = *(a2 + 124);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 40);
    v3 = 16;
    *(a1 + 124) = 16;
    *(a1 + 40) = v4;
    v2 = *(a2 + 124);
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
    v4 = *(a2 + 16);
    v3 |= 2u;
    *(a1 + 124) = v3;
    *(a1 + 16) = v4;
    v2 = *(a2 + 124);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 24);
    v3 |= 4u;
    *(a1 + 124) = v3;
    *(a1 + 24) = v4;
    v2 = *(a2 + 124);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v4 = *(a2 + 32);
  v3 |= 8u;
  *(a1 + 124) = v3;
  *(a1 + 32) = v4;
  v2 = *(a2 + 124);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  v4 = *(a2 + 8);
  v3 |= 1u;
  *(a1 + 124) = v3;
  *(a1 + 8) = v4;
  v2 = *(a2 + 124);
  if ((v2 & 0x40000) == 0)
  {
LABEL_10:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  LODWORD(v4) = *(a2 + 100);
  v3 |= 0x40000u;
  *(a1 + 124) = v3;
  *(a1 + 100) = v4;
  v2 = *(a2 + 124);
  if ((v2 & 0x80000) == 0)
  {
LABEL_11:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  LODWORD(v4) = *(a2 + 104);
  v3 |= 0x80000u;
  *(a1 + 124) = v3;
  *(a1 + 104) = v4;
  v2 = *(a2 + 124);
  if ((v2 & 0x100000) == 0)
  {
LABEL_12:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  LODWORD(v4) = *(a2 + 108);
  v3 |= 0x100000u;
  *(a1 + 124) = v3;
  *(a1 + 108) = v4;
  v2 = *(a2 + 124);
  if ((v2 & 0x2000) == 0)
  {
LABEL_13:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  LODWORD(v4) = *(a2 + 80);
  v3 |= 0x2000u;
  *(a1 + 124) = v3;
  *(a1 + 80) = v4;
  v2 = *(a2 + 124);
  if ((v2 & 0x4000) == 0)
  {
LABEL_14:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  LODWORD(v4) = *(a2 + 84);
  v3 |= 0x4000u;
  *(a1 + 124) = v3;
  *(a1 + 84) = v4;
  v2 = *(a2 + 124);
  if ((v2 & 0x8000) == 0)
  {
LABEL_15:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  LODWORD(v4) = *(a2 + 88);
  v3 |= 0x8000u;
  *(a1 + 124) = v3;
  *(a1 + 88) = v4;
  v2 = *(a2 + 124);
  if ((v2 & 0x100) == 0)
  {
LABEL_16:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  LODWORD(v4) = *(a2 + 60);
  v3 |= 0x100u;
  *(a1 + 124) = v3;
  *(a1 + 60) = v4;
  v2 = *(a2 + 124);
  if ((v2 & 0x200) == 0)
  {
LABEL_17:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  LODWORD(v4) = *(a2 + 64);
  v3 |= 0x200u;
  *(a1 + 124) = v3;
  *(a1 + 64) = v4;
  v2 = *(a2 + 124);
  if ((v2 & 0x400) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  LODWORD(v4) = *(a2 + 68);
  v3 |= 0x400u;
  *(a1 + 124) = v3;
  *(a1 + 68) = v4;
  v2 = *(a2 + 124);
  if ((v2 & 0x80) == 0)
  {
LABEL_19:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  v5 = *(a2 + 56);
  v3 |= 0x80u;
  *(a1 + 124) = v3;
  *(a1 + 56) = v5;
  v2 = *(a2 + 124);
  if ((v2 & 0x800) == 0)
  {
LABEL_20:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  LODWORD(v4) = *(a2 + 72);
  v3 |= 0x800u;
  *(a1 + 124) = v3;
  *(a1 + 72) = v4;
  v2 = *(a2 + 124);
  if ((v2 & 0x20000) == 0)
  {
LABEL_21:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

LABEL_43:
  LODWORD(v4) = *(a2 + 96);
  v3 |= 0x20000u;
  *(a1 + 124) = v3;
  *(a1 + 96) = v4;
  v2 = *(a2 + 124);
  if ((v2 & 0x20) == 0)
  {
LABEL_22:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_45;
  }

LABEL_44:
  LODWORD(v4) = *(a2 + 48);
  v3 |= 0x20u;
  *(a1 + 124) = v3;
  *(a1 + 48) = v4;
  v2 = *(a2 + 124);
  if ((v2 & 0x1000) == 0)
  {
LABEL_23:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_46;
  }

LABEL_45:
  v6 = *(a2 + 76);
  v3 |= 0x1000u;
  *(a1 + 124) = v3;
  *(a1 + 76) = v6;
  v2 = *(a2 + 124);
  if ((v2 & 0x40) == 0)
  {
LABEL_24:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_47;
  }

LABEL_46:
  v7 = *(a2 + 52);
  v3 |= 0x40u;
  *(a1 + 124) = v3;
  *(a1 + 52) = v7;
  v2 = *(a2 + 124);
  if ((v2 & 0x10000) == 0)
  {
LABEL_25:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_48;
  }

LABEL_47:
  v8 = *(a2 + 92);
  v3 |= 0x10000u;
  *(a1 + 124) = v3;
  *(a1 + 92) = v8;
  v2 = *(a2 + 124);
  if ((v2 & 0x200000) == 0)
  {
LABEL_26:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_49;
  }

LABEL_48:
  v9 = *(a2 + 112);
  v3 |= 0x200000u;
  *(a1 + 124) = v3;
  *(a1 + 112) = v9;
  v2 = *(a2 + 124);
  if ((v2 & 0x800000) == 0)
  {
LABEL_27:
    if ((v2 & 0x400000) == 0)
    {
      return *&v4;
    }

    goto LABEL_50;
  }

LABEL_49:
  v10 = *(a2 + 120);
  v3 |= 0x800000u;
  *(a1 + 124) = v3;
  *(a1 + 120) = v10;
  if ((*(a2 + 124) & 0x400000) == 0)
  {
    return *&v4;
  }

LABEL_50:
  LODWORD(v4) = *(a2 + 116);
  *(a1 + 124) = v3 | 0x400000;
  *(a1 + 116) = v4;
  return *&v4;
}

uint64_t sub_245E362A4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 124);
  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "accuracy", *(a1 + 48));
    v5 = *(a1 + 124);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 52);
  PB::TextFormatter::format(this, "clientID");
  v5 = *(a1 + 124);
  if ((v5 & 0x800000) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  v7 = *(a1 + 120);
  PB::TextFormatter::format(this, "isGyroOn");
  v5 = *(a1 + 124);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  v8 = *(a1 + 56);
  PB::TextFormatter::format(this, "magneticFieldCalibrationLevel");
  v5 = *(a1 + 124);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "magneticFieldX", *(a1 + 60));
  v5 = *(a1 + 124);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "magneticFieldY", *(a1 + 64));
  v5 = *(a1 + 124);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "magneticFieldZ", *(a1 + 68));
  v5 = *(a1 + 124);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "magneticHeading", *(a1 + 72));
  v5 = *(a1 + 124);
  if ((v5 & 0x1000) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  v9 = *(a1 + 76);
  PB::TextFormatter::format(this, "mode");
  v5 = *(a1 + 124);
  if ((v5 & 1) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "quaternionW", *(a1 + 8));
  v5 = *(a1 + 124);
  if ((v5 & 2) == 0)
  {
LABEL_12:
    if ((v5 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "quaternionX", *(a1 + 16));
  v5 = *(a1 + 124);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "quaternionY", *(a1 + 24));
  v5 = *(a1 + 124);
  if ((v5 & 8) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "quaternionZ", *(a1 + 32));
  v5 = *(a1 + 124);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "rotationRateX", *(a1 + 80));
  v5 = *(a1 + 124);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "rotationRateY", *(a1 + 84));
  v5 = *(a1 + 124);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "rotationRateZ", *(a1 + 88));
  v5 = *(a1 + 124);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  v10 = *(a1 + 92);
  PB::TextFormatter::format(this, "status");
  v5 = *(a1 + 124);
  if ((v5 & 0x10) == 0)
  {
LABEL_19:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  v5 = *(a1 + 124);
  if ((v5 & 0x20000) == 0)
  {
LABEL_20:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "trueHeading", *(a1 + 96));
  v5 = *(a1 + 124);
  if ((v5 & 0x40000) == 0)
  {
LABEL_21:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "userAccelerationX", *(a1 + 100));
  v5 = *(a1 + 124);
  if ((v5 & 0x80000) == 0)
  {
LABEL_22:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "userAccelerationY", *(a1 + 104));
  v5 = *(a1 + 124);
  if ((v5 & 0x100000) == 0)
  {
LABEL_23:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "userAccelerationZ", *(a1 + 108));
  v5 = *(a1 + 124);
  if ((v5 & 0x200000) == 0)
  {
LABEL_24:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_51:
  v11 = *(a1 + 112);
  PB::TextFormatter::format(this, "variant");
  if ((*(a1 + 124) & 0x400000) != 0)
  {
LABEL_25:
    PB::TextFormatter::format(this, "visionCompassBias", *(a1 + 116));
  }

LABEL_26:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E365E8(uint64_t a1, PB::Reader *this)
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
        goto LABEL_191;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 124) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_63;
        case 2u:
          *(a1 + 124) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_63;
        case 3u:
          *(a1 + 124) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_63;
        case 4u:
          *(a1 + 124) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_63;
        case 5u:
          *(a1 + 124) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 8) = *(*this + v2);
LABEL_63:
          v2 = *(this + 1) + 8;
          goto LABEL_161;
        case 6u:
          *(a1 + 124) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 100) = *(*this + v2);
          goto LABEL_160;
        case 7u:
          *(a1 + 124) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_160;
        case 8u:
          *(a1 + 124) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 108) = *(*this + v2);
          goto LABEL_160;
        case 9u:
          *(a1 + 124) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_160;
        case 0xAu:
          *(a1 + 124) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 84) = *(*this + v2);
          goto LABEL_160;
        case 0xBu:
          *(a1 + 124) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_160;
        case 0xCu:
          *(a1 + 124) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_160;
        case 0xDu:
          *(a1 + 124) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_160;
        case 0xEu:
          *(a1 + 124) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_160;
        case 0xFu:
          *(a1 + 124) |= 0x80u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v64 = 0;
            v65 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v66 = v2 - v22;
            v67 = (v23 + v22);
            v68 = v22 + 1;
            while (1)
            {
              if (!v66)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_173;
              }

              v69 = v68;
              v70 = *v67;
              *(this + 1) = v69;
              v26 |= (v70 & 0x7F) << v64;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              --v66;
              ++v67;
              v68 = v69 + 1;
              v14 = v65++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_172:
                v2 = v69;
                goto LABEL_173;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_172;
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
              goto LABEL_173;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_173:
          *(a1 + 56) = v26;
          goto LABEL_162;
        case 0x10u:
          *(a1 + 124) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_160;
        case 0x11u:
          *(a1 + 124) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_160;
        case 0x12u:
          *(a1 + 124) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_160;
        case 0x13u:
          *(a1 + 124) |= 0x1000u;
          v46 = *(this + 1);
          v2 = *(this + 2);
          v47 = *this;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v85 = 0;
            v86 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(this + 1);
            }

            v87 = v2 - v46;
            v88 = (v47 + v46);
            v89 = v46 + 1;
            while (1)
            {
              if (!v87)
              {
                LODWORD(v50) = 0;
                *(this + 24) = 1;
                goto LABEL_185;
              }

              v90 = v89;
              v91 = *v88;
              *(this + 1) = v90;
              v50 |= (v91 & 0x7F) << v85;
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
                LODWORD(v50) = 0;
LABEL_184:
                v2 = v90;
                goto LABEL_185;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_184;
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
              goto LABEL_185;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_185:
          *(a1 + 76) = v50;
          goto LABEL_162;
        case 0x14u:
          *(a1 + 124) |= 0x40u;
          v56 = *(this + 1);
          v2 = *(this + 2);
          v57 = *this;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v92 = 0;
            v93 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v2 = *(this + 1);
            }

            v94 = v2 - v56;
            v95 = (v57 + v56);
            v96 = v56 + 1;
            while (1)
            {
              if (!v94)
              {
                LODWORD(v60) = 0;
                *(this + 24) = 1;
                goto LABEL_189;
              }

              v97 = v96;
              v98 = *v95;
              *(this + 1) = v97;
              v60 |= (v98 & 0x7F) << v92;
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
                LODWORD(v60) = 0;
LABEL_188:
                v2 = v97;
                goto LABEL_189;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v60) = 0;
            }

            goto LABEL_188;
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
              goto LABEL_189;
            }

            v58 += 7;
            ++v62;
            v14 = v59++ > 8;
          }

          while (!v14);
          LODWORD(v60) = 0;
LABEL_189:
          *(a1 + 52) = v60;
          goto LABEL_162;
        case 0x15u:
          *(a1 + 124) |= 0x10000u;
          v30 = *(this + 1);
          v2 = *(this + 2);
          v31 = *this;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v71 = 0;
            v72 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(this + 1);
            }

            v73 = v2 - v30;
            v74 = (v31 + v30);
            v75 = v30 + 1;
            while (1)
            {
              if (!v73)
              {
                LODWORD(v34) = 0;
                *(this + 24) = 1;
                goto LABEL_177;
              }

              v76 = v75;
              v77 = *v74;
              *(this + 1) = v76;
              v34 |= (v77 & 0x7F) << v71;
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
                LODWORD(v34) = 0;
LABEL_176:
                v2 = v76;
                goto LABEL_177;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_176;
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
              goto LABEL_177;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_177:
          *(a1 + 92) = v34;
          goto LABEL_162;
        case 0x16u:
          *(a1 + 124) |= 0x200000u;
          v38 = *(this + 1);
          v2 = *(this + 2);
          v39 = *this;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v78 = 0;
            v79 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(this + 1);
            }

            v80 = v2 - v38;
            v81 = (v39 + v38);
            v82 = v38 + 1;
            while (1)
            {
              if (!v80)
              {
                LODWORD(v42) = 0;
                *(this + 24) = 1;
                goto LABEL_181;
              }

              v83 = v82;
              v84 = *v81;
              *(this + 1) = v83;
              v42 |= (v84 & 0x7F) << v78;
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
                LODWORD(v42) = 0;
LABEL_180:
                v2 = v83;
                goto LABEL_181;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_180;
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
              goto LABEL_181;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_181:
          *(a1 + 112) = v42;
          goto LABEL_162;
        case 0x17u:
          *(a1 + 124) |= 0x800000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v55 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v54 = *(*this + v2++);
            *(this + 1) = v2;
            v55 = v54 != 0;
          }

          *(a1 + 120) = v55;
          goto LABEL_162;
        case 0x18u:
          *(a1 + 124) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
          {
            *(a1 + 116) = *(*this + v2);
LABEL_160:
            v2 = *(this + 1) + 4;
LABEL_161:
            *(this + 1) = v2;
          }

          else
          {
LABEL_114:
            *(this + 24) = 1;
          }

          goto LABEL_162;
        default:
          if (!PB::Reader::skip(this))
          {
            v99 = 0;
            return v99 & 1;
          }

          v2 = *(this + 1);
LABEL_162:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_191;
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

LABEL_191:
  v99 = v4 ^ 1;
  return v99 & 1;
}

uint64_t sub_245E37144(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 124);
  if ((v4 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(result + 40));
    v4 = *(v3 + 124);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 124);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 124);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 124);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 124);
  if ((v4 & 0x40000) == 0)
  {
LABEL_7:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 124);
  if ((v4 & 0x80000) == 0)
  {
LABEL_8:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 124);
  if ((v4 & 0x100000) == 0)
  {
LABEL_9:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 124);
  if ((v4 & 0x2000) == 0)
  {
LABEL_10:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 124);
  if ((v4 & 0x4000) == 0)
  {
LABEL_11:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 124);
  if ((v4 & 0x8000) == 0)
  {
LABEL_12:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 124);
  if ((v4 & 0x100) == 0)
  {
LABEL_13:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 124);
  if ((v4 & 0x200) == 0)
  {
LABEL_14:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 124);
  if ((v4 & 0x400) == 0)
  {
LABEL_15:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 124);
  if ((v4 & 0x80) == 0)
  {
LABEL_16:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  v5 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 124);
  if ((v4 & 0x800) == 0)
  {
LABEL_17:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 124);
  if ((v4 & 0x20000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 124);
  if ((v4 & 0x20) == 0)
  {
LABEL_19:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 124);
  if ((v4 & 0x1000) == 0)
  {
LABEL_20:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  v6 = *(v3 + 76);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 124);
  if ((v4 & 0x40) == 0)
  {
LABEL_21:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  v7 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 124);
  if ((v4 & 0x10000) == 0)
  {
LABEL_22:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  v8 = *(v3 + 92);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 124);
  if ((v4 & 0x200000) == 0)
  {
LABEL_23:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

LABEL_48:
    v10 = *(v3 + 120);
    result = PB::Writer::write(this);
    if ((*(v3 + 124) & 0x400000) == 0)
    {
      return result;
    }

    goto LABEL_49;
  }

LABEL_47:
  v9 = *(v3 + 112);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 124);
  if ((v4 & 0x800000) != 0)
  {
    goto LABEL_48;
  }

LABEL_24:
  if ((v4 & 0x400000) == 0)
  {
    return result;
  }

LABEL_49:
  v11 = *(v3 + 116);

  return PB::Writer::write(this, v11);
}

uint64_t sub_245E3741C(uint64_t result)
{
  *result = &unk_2858D0830;
  *(result + 8) = 0;
  *(result + 20) = 0;
  return result;
}

void sub_245E37440(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D0830;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245E374C0(PB::Base *a1)
{
  sub_245E37440(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E374F8(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D0830;
  *(result + 8) = 0;
  *(result + 20) = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  v2 = *(a2 + 20);
  if (v2)
  {
    v3 = *(a2 + 16);
    *(result + 20) |= 1u;
    *(result + 16) = v3;
    v2 = *(a2 + 20);
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 17);
    *(result + 20) |= 2u;
    *(result + 17) = v4;
  }

  return result;
}

uint64_t sub_245E375DC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "deviceMotion");
  }

  v6 = *(a1 + 20);
  if (v6)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "inQuiescentMode");
    v6 = *(a1 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(a1 + 17);
    PB::TextFormatter::format(this, "shouldGyroBeOn");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E37690(_BYTE *a1, PB::Reader *this)
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
            goto LABEL_40;
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
      if ((v10 >> 3) == 3)
      {
        a1[20] |= 2u;
        v27 = *(this + 1);
        if (v27 >= *(this + 2))
        {
          v30 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v28 = v27 + 1;
          v29 = *(*this + v27);
          *(this + 1) = v28;
          v30 = v29 != 0;
        }

        a1[17] = v30;
      }

      else if (v22 == 2)
      {
        a1[20] |= 1u;
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

        a1[16] = v26;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if ((PB::Reader::skip(this) & 1) == 0)
        {
          v32 = 0;
          return v32 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_40:
  v32 = v4 ^ 1;
  return v32 & 1;
}

uint64_t sub_245E3796C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  v5 = v3[20];
  if (v5)
  {
    v6 = v3[16];
    result = PB::Writer::write(this);
    v5 = v3[20];
  }

  if ((v5 & 2) != 0)
  {
    v7 = v3[17];

    return PB::Writer::write(this);
  }

  return result;
}

void sub_245E379EC(PB::Base *this)
{
  *this = &unk_2858D0868;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = v5;
    operator delete(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    *(this + 5) = v6;
    operator delete(v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    *(this + 2) = v7;
    operator delete(v7);
  }

  PB::Base::~Base(this);
}

void sub_245E37AA0(PB::Base *a1)
{
  sub_245E379EC(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E37AD8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 56) = 0u;
  v5 = (a1 + 56);
  *a1 = &unk_2858D0868;
  *(a1 + 104) = 0u;
  v6 = (a1 + 104);
  *(a1 + 160) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a2 + 160))
  {
    v7 = *(a2 + 152);
    *(a1 + 160) = 1;
    *(a1 + 152) = v7;
  }

  if (a1 != a2)
  {
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
    sub_245DF843C(v5, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
    sub_245DF843C(v6, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 2);
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    sub_245DF843C((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
    sub_245DF843C((a1 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
  }

  return a1;
}

uint64_t sub_245E37C00(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "dx", v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "estimate", v10);
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "measurement", v13);
  }

  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(this, "noisevariance", v16);
  }

  v17 = *(a1 + 104);
  v18 = *(a1 + 112);
  while (v17 != v18)
  {
    v19 = *v17++;
    PB::TextFormatter::format(this, "residual", v19);
  }

  v20 = *(a1 + 128);
  v21 = *(a1 + 136);
  while (v20 != v21)
  {
    v22 = *v20++;
    PB::TextFormatter::format(this, "statevariance", v22);
  }

  if (*(a1 + 160))
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 152));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E37D78(uint64_t a1, PB::Reader *this)
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
        goto LABEL_245;
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
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_245;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) > 3)
      {
        break;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_247:
              v196 = 0;
              return v196 & 1;
            }

            v106 = *(this + 1);
            v107 = *(this + 2);
            while (v106 < v107 && (*(this + 24) & 1) == 0)
            {
              v109 = *(a1 + 40);
              v108 = *(a1 + 48);
              if (v109 >= v108)
              {
                v111 = *(a1 + 32);
                v112 = v109 - v111;
                v113 = (v109 - v111) >> 2;
                v114 = v113 + 1;
                if ((v113 + 1) >> 62)
                {
                  goto LABEL_248;
                }

                v115 = v108 - v111;
                if (v115 >> 1 > v114)
                {
                  v114 = v115 >> 1;
                }

                if (v115 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v116 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v116 = v114;
                }

                if (v116)
                {
                  sub_245DF85BC(a1 + 32, v116);
                }

                v117 = (v109 - v111) >> 2;
                v118 = (4 * v113);
                v119 = (4 * v113 - 4 * v117);
                *v118 = 0;
                v110 = v118 + 1;
                memcpy(v119, v111, v112);
                v120 = *(a1 + 32);
                *(a1 + 32) = v119;
                *(a1 + 40) = v110;
                *(a1 + 48) = 0;
                if (v120)
                {
                  operator delete(v120);
                }
              }

              else
              {
                *v109 = 0;
                v110 = v109 + 4;
              }

              *(a1 + 40) = v110;
              v121 = *(this + 1);
              if (v121 > 0xFFFFFFFFFFFFFFFBLL || v121 + 4 > *(this + 2))
              {
LABEL_156:
                *(this + 24) = 1;
                goto LABEL_157;
              }

              *(v110 - 1) = *(*this + v121);
              v107 = *(this + 2);
              v106 = *(this + 1) + 4;
              *(this + 1) = v106;
            }

            goto LABEL_157;
          }

          v134 = *(a1 + 40);
          v133 = *(a1 + 48);
          if (v134 >= v133)
          {
            v165 = *(a1 + 32);
            v166 = v134 - v165;
            v167 = (v134 - v165) >> 2;
            v168 = v167 + 1;
            if ((v167 + 1) >> 62)
            {
LABEL_248:
              sub_245DF85A4();
            }

            v169 = v133 - v165;
            if (v169 >> 1 > v168)
            {
              v168 = v169 >> 1;
            }

            if (v169 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v170 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v170 = v168;
            }

            if (v170)
            {
              sub_245DF85BC(a1 + 32, v170);
            }

            v191 = (v134 - v165) >> 2;
            v192 = (4 * v167);
            v193 = (4 * v167 - 4 * v191);
            *v192 = 0;
            v124 = v192 + 1;
            memcpy(v193, v165, v166);
            v194 = *(a1 + 32);
            *(a1 + 32) = v193;
            *(a1 + 40) = v124;
            *(a1 + 48) = 0;
            if (v194)
            {
              operator delete(v194);
            }
          }

          else
          {
            *v134 = 0;
            v124 = v134 + 4;
          }

          *(a1 + 40) = v124;
        }

        else
        {
          if (v23 != 3)
          {
            goto LABEL_94;
          }

          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_247;
            }

            v40 = *(this + 1);
            v41 = *(this + 2);
            while (v40 < v41 && (*(this + 24) & 1) == 0)
            {
              v43 = *(a1 + 64);
              v42 = *(a1 + 72);
              if (v43 >= v42)
              {
                v45 = *(a1 + 56);
                v46 = v43 - v45;
                v47 = (v43 - v45) >> 2;
                v48 = v47 + 1;
                if ((v47 + 1) >> 62)
                {
                  goto LABEL_248;
                }

                v49 = v42 - v45;
                if (v49 >> 1 > v48)
                {
                  v48 = v49 >> 1;
                }

                if (v49 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v50 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v50 = v48;
                }

                if (v50)
                {
                  sub_245DF85BC(a1 + 56, v50);
                }

                v51 = (v43 - v45) >> 2;
                v52 = (4 * v47);
                v53 = (4 * v47 - 4 * v51);
                *v52 = 0;
                v44 = v52 + 1;
                memcpy(v53, v45, v46);
                v54 = *(a1 + 56);
                *(a1 + 56) = v53;
                *(a1 + 64) = v44;
                *(a1 + 72) = 0;
                if (v54)
                {
                  operator delete(v54);
                }
              }

              else
              {
                *v43 = 0;
                v44 = v43 + 4;
              }

              *(a1 + 64) = v44;
              v55 = *(this + 1);
              if (v55 > 0xFFFFFFFFFFFFFFFBLL || v55 + 4 > *(this + 2))
              {
                goto LABEL_156;
              }

              *(v44 - 1) = *(*this + v55);
              v41 = *(this + 2);
              v40 = *(this + 1) + 4;
              *(this + 1) = v40;
            }

            goto LABEL_157;
          }

          v132 = *(a1 + 64);
          v131 = *(a1 + 72);
          if (v132 >= v131)
          {
            v159 = *(a1 + 56);
            v160 = v132 - v159;
            v161 = (v132 - v159) >> 2;
            v162 = v161 + 1;
            if ((v161 + 1) >> 62)
            {
              goto LABEL_248;
            }

            v163 = v131 - v159;
            if (v163 >> 1 > v162)
            {
              v162 = v163 >> 1;
            }

            if (v163 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v164 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v164 = v162;
            }

            if (v164)
            {
              sub_245DF85BC(a1 + 56, v164);
            }

            v187 = (v132 - v159) >> 2;
            v188 = (4 * v161);
            v189 = (4 * v161 - 4 * v187);
            *v188 = 0;
            v124 = v188 + 1;
            memcpy(v189, v159, v160);
            v190 = *(a1 + 56);
            *(a1 + 56) = v189;
            *(a1 + 64) = v124;
            *(a1 + 72) = 0;
            if (v190)
            {
              operator delete(v190);
            }
          }

          else
          {
            *v132 = 0;
            v124 = v132 + 4;
          }

          *(a1 + 64) = v124;
        }

        goto LABEL_236;
      }

      *(a1 + 160) |= 1u;
      v72 = *(this + 1);
      if (v72 > 0xFFFFFFFFFFFFFFF7 || v72 + 8 > *(this + 2))
      {
LABEL_238:
        *(this + 24) = 1;
        goto LABEL_241;
      }

      *(a1 + 152) = *(*this + v72);
      v73 = *(this + 1) + 8;
LABEL_240:
      *(this + 1) = v73;
LABEL_241:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_245;
      }
    }

    if (v23 > 5)
    {
      if (v23 == 6)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_247;
          }

          v90 = *(this + 1);
          v91 = *(this + 2);
          while (v90 < v91 && (*(this + 24) & 1) == 0)
          {
            v93 = *(a1 + 88);
            v92 = *(a1 + 96);
            if (v93 >= v92)
            {
              v95 = *(a1 + 80);
              v96 = v93 - v95;
              v97 = (v93 - v95) >> 2;
              v98 = v97 + 1;
              if ((v97 + 1) >> 62)
              {
                goto LABEL_248;
              }

              v99 = v92 - v95;
              if (v99 >> 1 > v98)
              {
                v98 = v99 >> 1;
              }

              if (v99 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v100 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v100 = v98;
              }

              if (v100)
              {
                sub_245DF85BC(a1 + 80, v100);
              }

              v101 = (v93 - v95) >> 2;
              v102 = (4 * v97);
              v103 = (4 * v97 - 4 * v101);
              *v102 = 0;
              v94 = v102 + 1;
              memcpy(v103, v95, v96);
              v104 = *(a1 + 80);
              *(a1 + 80) = v103;
              *(a1 + 88) = v94;
              *(a1 + 96) = 0;
              if (v104)
              {
                operator delete(v104);
              }
            }

            else
            {
              *v93 = 0;
              v94 = v93 + 4;
            }

            *(a1 + 88) = v94;
            v105 = *(this + 1);
            if (v105 > 0xFFFFFFFFFFFFFFFBLL || v105 + 4 > *(this + 2))
            {
              goto LABEL_156;
            }

            *(v94 - 1) = *(*this + v105);
            v91 = *(this + 2);
            v90 = *(this + 1) + 4;
            *(this + 1) = v90;
          }

          goto LABEL_157;
        }

        v126 = *(a1 + 88);
        v125 = *(a1 + 96);
        if (v126 >= v125)
        {
          v141 = *(a1 + 80);
          v142 = v126 - v141;
          v143 = (v126 - v141) >> 2;
          v144 = v143 + 1;
          if ((v143 + 1) >> 62)
          {
            goto LABEL_248;
          }

          v145 = v125 - v141;
          if (v145 >> 1 > v144)
          {
            v144 = v145 >> 1;
          }

          if (v145 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v146 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v146 = v144;
          }

          if (v146)
          {
            sub_245DF85BC(a1 + 80, v146);
          }

          v175 = (v126 - v141) >> 2;
          v176 = (4 * v143);
          v177 = (4 * v143 - 4 * v175);
          *v176 = 0;
          v124 = v176 + 1;
          memcpy(v177, v141, v142);
          v178 = *(a1 + 80);
          *(a1 + 80) = v177;
          *(a1 + 88) = v124;
          *(a1 + 96) = 0;
          if (v178)
          {
            operator delete(v178);
          }
        }

        else
        {
          *v126 = 0;
          v124 = v126 + 4;
        }

        *(a1 + 88) = v124;
      }

      else
      {
        if (v23 != 7)
        {
LABEL_94:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_247;
          }

          goto LABEL_241;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_247;
          }

          v56 = *(this + 1);
          v57 = *(this + 2);
          while (v56 < v57 && (*(this + 24) & 1) == 0)
          {
            v59 = *(a1 + 136);
            v58 = *(a1 + 144);
            if (v59 >= v58)
            {
              v61 = *(a1 + 128);
              v62 = v59 - v61;
              v63 = (v59 - v61) >> 2;
              v64 = v63 + 1;
              if ((v63 + 1) >> 62)
              {
                goto LABEL_248;
              }

              v65 = v58 - v61;
              if (v65 >> 1 > v64)
              {
                v64 = v65 >> 1;
              }

              if (v65 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v66 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v66 = v64;
              }

              if (v66)
              {
                sub_245DF85BC(a1 + 128, v66);
              }

              v67 = (v59 - v61) >> 2;
              v68 = (4 * v63);
              v69 = (4 * v63 - 4 * v67);
              *v68 = 0;
              v60 = v68 + 1;
              memcpy(v69, v61, v62);
              v70 = *(a1 + 128);
              *(a1 + 128) = v69;
              *(a1 + 136) = v60;
              *(a1 + 144) = 0;
              if (v70)
              {
                operator delete(v70);
              }
            }

            else
            {
              *v59 = 0;
              v60 = v59 + 4;
            }

            *(a1 + 136) = v60;
            v71 = *(this + 1);
            if (v71 > 0xFFFFFFFFFFFFFFFBLL || v71 + 4 > *(this + 2))
            {
              goto LABEL_156;
            }

            *(v60 - 1) = *(*this + v71);
            v57 = *(this + 2);
            v56 = *(this + 1) + 4;
            *(this + 1) = v56;
          }

          goto LABEL_157;
        }

        v130 = *(a1 + 136);
        v129 = *(a1 + 144);
        if (v130 >= v129)
        {
          v153 = *(a1 + 128);
          v154 = v130 - v153;
          v155 = (v130 - v153) >> 2;
          v156 = v155 + 1;
          if ((v155 + 1) >> 62)
          {
            goto LABEL_248;
          }

          v157 = v129 - v153;
          if (v157 >> 1 > v156)
          {
            v156 = v157 >> 1;
          }

          if (v157 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v158 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v158 = v156;
          }

          if (v158)
          {
            sub_245DF85BC(a1 + 128, v158);
          }

          v183 = (v130 - v153) >> 2;
          v184 = (4 * v155);
          v185 = (4 * v155 - 4 * v183);
          *v184 = 0;
          v124 = v184 + 1;
          memcpy(v185, v153, v154);
          v186 = *(a1 + 128);
          *(a1 + 128) = v185;
          *(a1 + 136) = v124;
          *(a1 + 144) = 0;
          if (v186)
          {
            operator delete(v186);
          }
        }

        else
        {
          *v130 = 0;
          v124 = v130 + 4;
        }

        *(a1 + 136) = v124;
      }
    }

    else if (v23 == 4)
    {
      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_247;
        }

        v74 = *(this + 1);
        v75 = *(this + 2);
        while (v74 < v75 && (*(this + 24) & 1) == 0)
        {
          v77 = *(a1 + 112);
          v76 = *(a1 + 120);
          if (v77 >= v76)
          {
            v79 = *(a1 + 104);
            v80 = v77 - v79;
            v81 = (v77 - v79) >> 2;
            v82 = v81 + 1;
            if ((v81 + 1) >> 62)
            {
              goto LABEL_248;
            }

            v83 = v76 - v79;
            if (v83 >> 1 > v82)
            {
              v82 = v83 >> 1;
            }

            if (v83 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v84 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v84 = v82;
            }

            if (v84)
            {
              sub_245DF85BC(a1 + 104, v84);
            }

            v85 = (v77 - v79) >> 2;
            v86 = (4 * v81);
            v87 = (4 * v81 - 4 * v85);
            *v86 = 0;
            v78 = v86 + 1;
            memcpy(v87, v79, v80);
            v88 = *(a1 + 104);
            *(a1 + 104) = v87;
            *(a1 + 112) = v78;
            *(a1 + 120) = 0;
            if (v88)
            {
              operator delete(v88);
            }
          }

          else
          {
            *v77 = 0;
            v78 = v77 + 4;
          }

          *(a1 + 112) = v78;
          v89 = *(this + 1);
          if (v89 > 0xFFFFFFFFFFFFFFFBLL || v89 + 4 > *(this + 2))
          {
            goto LABEL_156;
          }

          *(v78 - 1) = *(*this + v89);
          v75 = *(this + 2);
          v74 = *(this + 1) + 4;
          *(this + 1) = v74;
        }

        goto LABEL_157;
      }

      v123 = *(a1 + 112);
      v122 = *(a1 + 120);
      if (v123 >= v122)
      {
        v135 = *(a1 + 104);
        v136 = v123 - v135;
        v137 = (v123 - v135) >> 2;
        v138 = v137 + 1;
        if ((v137 + 1) >> 62)
        {
          goto LABEL_248;
        }

        v139 = v122 - v135;
        if (v139 >> 1 > v138)
        {
          v138 = v139 >> 1;
        }

        if (v139 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v140 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v140 = v138;
        }

        if (v140)
        {
          sub_245DF85BC(a1 + 104, v140);
        }

        v171 = (v123 - v135) >> 2;
        v172 = (4 * v137);
        v173 = (4 * v137 - 4 * v171);
        *v172 = 0;
        v124 = v172 + 1;
        memcpy(v173, v135, v136);
        v174 = *(a1 + 104);
        *(a1 + 104) = v173;
        *(a1 + 112) = v124;
        *(a1 + 120) = 0;
        if (v174)
        {
          operator delete(v174);
        }
      }

      else
      {
        *v123 = 0;
        v124 = v123 + 4;
      }

      *(a1 + 112) = v124;
    }

    else
    {
      if (v23 != 5)
      {
        goto LABEL_94;
      }

      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_247;
        }

        v24 = *(this + 1);
        v25 = *(this + 2);
        while (v24 < v25 && (*(this + 24) & 1) == 0)
        {
          v27 = *(a1 + 16);
          v26 = *(a1 + 24);
          if (v27 >= v26)
          {
            v29 = *(a1 + 8);
            v30 = v27 - v29;
            v31 = (v27 - v29) >> 2;
            v32 = v31 + 1;
            if ((v31 + 1) >> 62)
            {
              goto LABEL_248;
            }

            v33 = v26 - v29;
            if (v33 >> 1 > v32)
            {
              v32 = v33 >> 1;
            }

            if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v34 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v34 = v32;
            }

            if (v34)
            {
              sub_245DF85BC(a1 + 8, v34);
            }

            v35 = (v27 - v29) >> 2;
            v36 = (4 * v31);
            v37 = (4 * v31 - 4 * v35);
            *v36 = 0;
            v28 = v36 + 1;
            memcpy(v37, v29, v30);
            v38 = *(a1 + 8);
            *(a1 + 8) = v37;
            *(a1 + 16) = v28;
            *(a1 + 24) = 0;
            if (v38)
            {
              operator delete(v38);
            }
          }

          else
          {
            *v27 = 0;
            v28 = v27 + 4;
          }

          *(a1 + 16) = v28;
          v39 = *(this + 1);
          if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(this + 2))
          {
            goto LABEL_156;
          }

          *(v28 - 1) = *(*this + v39);
          v25 = *(this + 2);
          v24 = *(this + 1) + 4;
          *(this + 1) = v24;
        }

LABEL_157:
        PB::Reader::recallMark();
        goto LABEL_241;
      }

      v128 = *(a1 + 16);
      v127 = *(a1 + 24);
      if (v128 >= v127)
      {
        v147 = *(a1 + 8);
        v148 = v128 - v147;
        v149 = (v128 - v147) >> 2;
        v150 = v149 + 1;
        if ((v149 + 1) >> 62)
        {
          goto LABEL_248;
        }

        v151 = v127 - v147;
        if (v151 >> 1 > v150)
        {
          v150 = v151 >> 1;
        }

        if (v151 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v152 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v152 = v150;
        }

        if (v152)
        {
          sub_245DF85BC(a1 + 8, v152);
        }

        v179 = (v128 - v147) >> 2;
        v180 = (4 * v149);
        v181 = (4 * v149 - 4 * v179);
        *v180 = 0;
        v124 = v180 + 1;
        memcpy(v181, v147, v148);
        v182 = *(a1 + 8);
        *(a1 + 8) = v181;
        *(a1 + 16) = v124;
        *(a1 + 24) = 0;
        if (v182)
        {
          operator delete(v182);
        }
      }

      else
      {
        *v128 = 0;
        v124 = v128 + 4;
      }

      *(a1 + 16) = v124;
    }

LABEL_236:
    v195 = *(this + 1);
    if (v195 > 0xFFFFFFFFFFFFFFFBLL || v195 + 4 > *(this + 2))
    {
      goto LABEL_238;
    }

    *(v124 - 1) = *(*this + v195);
    v73 = *(this + 1) + 4;
    goto LABEL_240;
  }

LABEL_245:
  v196 = v4 ^ 1;
  return v196 & 1;
}