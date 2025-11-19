uint64_t sub_245D99140(uint64_t result)
{
  *result = &unk_2858CCC08;
  *(result + 44) = 0;
  return result;
}

void sub_245D99168(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245D991A0(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CCC08;
  *(result + 44) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 16);
    v3 = 2;
    *(result + 44) = 2;
    *(result + 16) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 44) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 24);
    v3 |= 4u;
    *(result + 44) = v3;
    *(result + 24) = v5;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 32);
    v3 |= 8u;
    *(result + 44) = v3;
    *(result + 32) = v6;
    v2 = *(a2 + 44);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        return result;
      }

LABEL_12:
      v8 = *(a2 + 40);
      *(result + 44) = v3 | 0x10;
      *(result + 40) = v8;
      return result;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 8);
  v3 |= 1u;
  *(result + 44) = v3;
  *(result + 8) = v7;
  if ((*(a2 + 44) & 0x10) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_245D99258(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 44);
  if (v5)
  {
    PB::TextFormatter::format(this, "aggAccelZDelta", *(a1 + 8));
    v5 = *(a1 + 44);
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

  else if ((*(a1 + 44) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "arcLength", *(a1 + 16));
  v5 = *(a1 + 44);
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
  PB::TextFormatter::format(this, "curveDistance", *(a1 + 24));
  v5 = *(a1 + 44);
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
  PB::TextFormatter::format(this, "firstLoftAngleDeg", *(a1 + 32));
  if ((*(a1 + 44) & 0x10) != 0)
  {
LABEL_6:
    v6 = *(a1 + 40);
    PB::TextFormatter::format(this, "stepResult");
  }

LABEL_7:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D9933C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_68;
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
          *(a1 + 44) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_46:
            *(this + 24) = 1;
            goto LABEL_64;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_58;
        }

        if (v22 == 2)
        {
          *(a1 + 44) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_46;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_58;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 44) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_46;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_58;
          case 4:
            *(a1 + 44) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_46;
            }

            *(a1 + 8) = *(*this + v2);
LABEL_58:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_64;
          case 5:
            *(a1 + 44) |= 0x10u;
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
                  goto LABEL_63;
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
                  goto LABEL_62;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_62:
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

LABEL_63:
            *(a1 + 40) = v27;
            goto LABEL_64;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
LABEL_64:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_68:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_245D996D0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 44);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 44);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = PB::Writer::write(this, *(v3 + 8));
    if ((*(v3 + 44) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 44);
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
  v5 = *(v3 + 40);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245D99794(uint64_t result)
{
  *result = &unk_2858CCC40;
  *(result + 176) = 0;
  return result;
}

void sub_245D997BC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245D997F4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CCC40;
  *(a1 + 176) = 0;
  v2 = *(a2 + 176);
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 32);
    v3 = 8;
    *(a1 + 176) = 8;
    *(a1 + 32) = result;
    v2 = *(a2 + 176);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x10) != 0)
  {
LABEL_5:
    result = *(a2 + 40);
    v3 |= 0x10u;
    *(a1 + 176) = v3;
    *(a1 + 40) = result;
    v2 = *(a2 + 176);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    result = *(a2 + 48);
    v3 |= 0x20u;
    *(a1 + 176) = v3;
    *(a1 + 48) = result;
    v2 = *(a2 + 176);
    if ((v2 & 0x40) == 0)
    {
LABEL_8:
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 56);
  v3 |= 0x40u;
  *(a1 + 176) = v3;
  *(a1 + 56) = result;
  v2 = *(a2 + 176);
  if ((v2 & 0x100) == 0)
  {
LABEL_9:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = *(a2 + 72);
  v3 |= 0x100u;
  *(a1 + 176) = v3;
  *(a1 + 72) = result;
  v2 = *(a2 + 176);
  if ((v2 & 0x1000) == 0)
  {
LABEL_10:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = *(a2 + 104);
  v3 |= 0x1000u;
  *(a1 + 176) = v3;
  *(a1 + 104) = result;
  v2 = *(a2 + 176);
  if ((v2 & 0x4000) == 0)
  {
LABEL_11:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = *(a2 + 120);
  v3 |= 0x4000u;
  *(a1 + 176) = v3;
  *(a1 + 120) = result;
  v2 = *(a2 + 176);
  if ((v2 & 0x8000) == 0)
  {
LABEL_12:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = *(a2 + 128);
  v3 |= 0x8000u;
  *(a1 + 176) = v3;
  *(a1 + 128) = result;
  v2 = *(a2 + 176);
  if ((v2 & 0x2000) == 0)
  {
LABEL_13:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = *(a2 + 112);
  v3 |= 0x2000u;
  *(a1 + 176) = v3;
  *(a1 + 112) = result;
  v2 = *(a2 + 176);
  if ((v2 & 0x10000) == 0)
  {
LABEL_14:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v5 = *(a2 + 136);
  v3 |= 0x10000u;
  *(a1 + 176) = v3;
  *(a1 + 136) = v5;
  v2 = *(a2 + 176);
  if ((v2 & 0x20000) == 0)
  {
LABEL_15:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v6 = *(a2 + 144);
  v3 |= 0x20000u;
  *(a1 + 176) = v3;
  *(a1 + 144) = v6;
  v2 = *(a2 + 176);
  if ((v2 & 0x40000) == 0)
  {
LABEL_16:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v7 = *(a2 + 152);
  v3 |= 0x40000u;
  *(a1 + 176) = v3;
  *(a1 + 152) = v7;
  v2 = *(a2 + 176);
  if ((v2 & 0x80000) == 0)
  {
LABEL_17:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 160);
  v3 |= 0x80000u;
  *(a1 + 176) = v3;
  *(a1 + 160) = result;
  v2 = *(a2 + 176);
  if ((v2 & 0x100000) == 0)
  {
LABEL_18:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  v8 = *(a2 + 168);
  v3 |= 0x100000u;
  *(a1 + 176) = v3;
  *(a1 + 168) = v8;
  v2 = *(a2 + 176);
  if ((v2 & 0x400) == 0)
  {
LABEL_19:
    if ((v2 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 88);
  v3 |= 0x400u;
  *(a1 + 176) = v3;
  *(a1 + 88) = result;
  v2 = *(a2 + 176);
  if ((v2 & 2) == 0)
  {
LABEL_20:
    if ((v2 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = *(a2 + 16);
  v3 |= 2u;
  *(a1 + 176) = v3;
  *(a1 + 16) = result;
  v2 = *(a2 + 176);
  if ((v2 & 4) == 0)
  {
LABEL_21:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = *(a2 + 24);
  v3 |= 4u;
  *(a1 + 176) = v3;
  *(a1 + 24) = result;
  v2 = *(a2 + 176);
  if ((v2 & 0x200000) == 0)
  {
LABEL_22:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_43;
  }

LABEL_42:
  v3 |= 0x200000u;
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 176) = v3;
  v2 = *(a2 + 176);
  if ((v2 & 0x80) == 0)
  {
LABEL_23:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = *(a2 + 64);
  v3 |= 0x80u;
  *(a1 + 176) = v3;
  *(a1 + 64) = result;
  v2 = *(a2 + 176);
  if ((v2 & 0x200) == 0)
  {
LABEL_24:
    if ((v2 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = *(a2 + 80);
  v3 |= 0x200u;
  *(a1 + 176) = v3;
  *(a1 + 80) = result;
  v2 = *(a2 + 176);
  if ((v2 & 1) == 0)
  {
LABEL_25:
    if ((v2 & 0x800) == 0)
    {
      return result;
    }

LABEL_46:
    result = *(a2 + 96);
    *(a1 + 176) = v3 | 0x800;
    *(a1 + 96) = result;
    return result;
  }

LABEL_45:
  result = *(a2 + 8);
  v3 |= 1u;
  *(a1 + 176) = v3;
  *(a1 + 8) = result;
  if ((*(a2 + 176) & 0x800) != 0)
  {
    goto LABEL_46;
  }

  return result;
}

uint64_t sub_245D99A84(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 176);
  if (v5)
  {
    PB::TextFormatter::format(this, "cadenceDeviceIdentification", *(a1 + 8));
    v5 = *(a1 + 176);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "cadenceUpdateTime", *(a1 + 16));
  v5 = *(a1 + 176);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "elapsedTime", *(a1 + 24));
  v5 = *(a1 + 176);
  if ((v5 & 0x100000) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  v6 = *(a1 + 168);
  PB::TextFormatter::format(this, "externalMachineType");
  v5 = *(a1 + 176);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "inclination", *(a1 + 32));
  v5 = *(a1 + 176);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "instantaneousCadence", *(a1 + 40));
  v5 = *(a1 + 176);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "instantaneousPower", *(a1 + 48));
  v5 = *(a1 + 176);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "instantaneousSpeed", *(a1 + 56));
  v5 = *(a1 + 176);
  if ((v5 & 0x200000) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  v7 = *(a1 + 172);
  PB::TextFormatter::format(this, "powerMeterIdentification");
  v5 = *(a1 + 176);
  if ((v5 & 0x80) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "powerUpdateTime", *(a1 + 64));
  v5 = *(a1 + 176);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "resistanceLevel", *(a1 + 72));
  v5 = *(a1 + 176);
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "speedDeviceIdentification", *(a1 + 80));
  v5 = *(a1 + 176);
  if ((v5 & 0x400) == 0)
  {
LABEL_14:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "speedUpdateTime", *(a1 + 88));
  v5 = *(a1 + 176);
  if ((v5 & 0x800) == 0)
  {
LABEL_15:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "startTime", *(a1 + 96));
  v5 = *(a1 + 176);
  if ((v5 & 0x1000) == 0)
  {
LABEL_16:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 104));
  v5 = *(a1 + 176);
  if ((v5 & 0x2000) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "totalDistance", *(a1 + 112));
  v5 = *(a1 + 176);
  if ((v5 & 0x4000) == 0)
  {
LABEL_18:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "totalElevationAscended", *(a1 + 120));
  v5 = *(a1 + 176);
  if ((v5 & 0x8000) == 0)
  {
LABEL_19:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "totalEnergy", *(a1 + 128));
  v5 = *(a1 + 176);
  if ((v5 & 0x10000) == 0)
  {
LABEL_20:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  v8 = *(a1 + 136);
  PB::TextFormatter::format(this, "totalFloorsClimbed");
  v5 = *(a1 + 176);
  if ((v5 & 0x20000) == 0)
  {
LABEL_21:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  v9 = *(a1 + 144);
  PB::TextFormatter::format(this, "totalStrideCount");
  v5 = *(a1 + 176);
  if ((v5 & 0x40000) == 0)
  {
LABEL_22:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_47:
  v10 = *(a1 + 152);
  PB::TextFormatter::format(this, "totalStrokeCount");
  if ((*(a1 + 176) & 0x80000) != 0)
  {
LABEL_23:
    PB::TextFormatter::format(this, "verticalSpeed", *(a1 + 160));
  }

LABEL_24:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D99D88(uint64_t a1, PB::Reader *this)
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
        goto LABEL_182;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 176) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_152;
        case 2u:
          *(a1 + 176) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_152;
        case 3u:
          *(a1 + 176) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_152;
        case 4u:
          *(a1 + 176) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_152;
        case 5u:
          *(a1 + 176) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_152;
        case 6u:
          *(a1 + 176) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_152;
        case 7u:
          *(a1 + 176) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 120) = *(*this + v2);
          goto LABEL_152;
        case 8u:
          *(a1 + 176) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 128) = *(*this + v2);
          goto LABEL_152;
        case 9u:
          *(a1 + 176) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_152;
        case 0xAu:
          *(a1 + 176) |= 0x10000u;
          v30 = *(this + 1);
          v2 = *(this + 2);
          v31 = *this;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v69 = 0;
            v70 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(this + 1);
            }

            v71 = v2 - v30;
            v72 = (v31 + v30);
            v73 = v30 + 1;
            while (1)
            {
              if (!v71)
              {
                v34 = 0;
                *(this + 24) = 1;
                goto LABEL_168;
              }

              v74 = v73;
              v75 = *v72;
              *(this + 1) = v74;
              v34 |= (v75 & 0x7F) << v69;
              if ((v75 & 0x80) == 0)
              {
                break;
              }

              v69 += 7;
              --v71;
              ++v72;
              v73 = v74 + 1;
              v14 = v70++ > 8;
              if (v14)
              {
                v34 = 0;
LABEL_167:
                v2 = v74;
                goto LABEL_168;
              }
            }

            if (*(this + 24))
            {
              v34 = 0;
            }

            goto LABEL_167;
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
              goto LABEL_168;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          v34 = 0;
LABEL_168:
          *(a1 + 136) = v34;
          goto LABEL_153;
        case 0xBu:
          *(a1 + 176) |= 0x20000u;
          v54 = *(this + 1);
          v2 = *(this + 2);
          v55 = *this;
          if (v54 > 0xFFFFFFFFFFFFFFF5 || v54 + 10 > v2)
          {
            v90 = 0;
            v91 = 0;
            v58 = 0;
            if (v2 <= v54)
            {
              v2 = *(this + 1);
            }

            v92 = v2 - v54;
            v93 = (v55 + v54);
            v94 = v54 + 1;
            while (1)
            {
              if (!v92)
              {
                v58 = 0;
                *(this + 24) = 1;
                goto LABEL_180;
              }

              v95 = v94;
              v96 = *v93;
              *(this + 1) = v95;
              v58 |= (v96 & 0x7F) << v90;
              if ((v96 & 0x80) == 0)
              {
                break;
              }

              v90 += 7;
              --v92;
              ++v93;
              v94 = v95 + 1;
              v14 = v91++ > 8;
              if (v14)
              {
                v58 = 0;
LABEL_179:
                v2 = v95;
                goto LABEL_180;
              }
            }

            if (*(this + 24))
            {
              v58 = 0;
            }

            goto LABEL_179;
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
              goto LABEL_180;
            }

            v56 += 7;
            ++v60;
            v14 = v57++ > 8;
          }

          while (!v14);
          v58 = 0;
LABEL_180:
          *(a1 + 144) = v58;
          goto LABEL_153;
        case 0xCu:
          *(a1 + 176) |= 0x40000u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v62 = 0;
            v63 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v64 = v2 - v22;
            v65 = (v23 + v22);
            v66 = v22 + 1;
            while (1)
            {
              if (!v64)
              {
                v26 = 0;
                *(this + 24) = 1;
                goto LABEL_164;
              }

              v67 = v66;
              v68 = *v65;
              *(this + 1) = v67;
              v26 |= (v68 & 0x7F) << v62;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              --v64;
              ++v65;
              v66 = v67 + 1;
              v14 = v63++ > 8;
              if (v14)
              {
                v26 = 0;
LABEL_163:
                v2 = v67;
                goto LABEL_164;
              }
            }

            if (*(this + 24))
            {
              v26 = 0;
            }

            goto LABEL_163;
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
              goto LABEL_164;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          v26 = 0;
LABEL_164:
          *(a1 + 152) = v26;
          goto LABEL_153;
        case 0xDu:
          *(a1 + 176) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 160) = *(*this + v2);
          goto LABEL_152;
        case 0xEu:
          *(a1 + 176) |= 0x100000u;
          v46 = *(this + 1);
          v2 = *(this + 2);
          v47 = *this;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v83 = 0;
            v84 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(this + 1);
            }

            v85 = v2 - v46;
            v86 = (v47 + v46);
            v87 = v46 + 1;
            while (1)
            {
              if (!v85)
              {
                LODWORD(v50) = 0;
                *(this + 24) = 1;
                goto LABEL_176;
              }

              v88 = v87;
              v89 = *v86;
              *(this + 1) = v88;
              v50 |= (v89 & 0x7F) << v83;
              if ((v89 & 0x80) == 0)
              {
                break;
              }

              v83 += 7;
              --v85;
              ++v86;
              v87 = v88 + 1;
              v14 = v84++ > 8;
              if (v14)
              {
                LODWORD(v50) = 0;
LABEL_175:
                v2 = v88;
                goto LABEL_176;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_175;
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
              goto LABEL_176;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_176:
          *(a1 + 168) = v50;
          goto LABEL_153;
        case 0xFu:
          *(a1 + 176) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_152;
        case 0x10u:
          *(a1 + 176) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_152;
        case 0x11u:
          *(a1 + 176) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_152;
        case 0x12u:
          *(a1 + 176) |= 0x200000u;
          v38 = *(this + 1);
          v2 = *(this + 2);
          v39 = *this;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v76 = 0;
            v77 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(this + 1);
            }

            v78 = v2 - v38;
            v79 = (v39 + v38);
            v80 = v38 + 1;
            while (1)
            {
              if (!v78)
              {
                LODWORD(v42) = 0;
                *(this + 24) = 1;
                goto LABEL_172;
              }

              v81 = v80;
              v82 = *v79;
              *(this + 1) = v81;
              v42 |= (v82 & 0x7F) << v76;
              if ((v82 & 0x80) == 0)
              {
                break;
              }

              v76 += 7;
              --v78;
              ++v79;
              v80 = v81 + 1;
              v14 = v77++ > 8;
              if (v14)
              {
                LODWORD(v42) = 0;
LABEL_171:
                v2 = v81;
                goto LABEL_172;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_171;
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
              goto LABEL_172;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_172:
          *(a1 + 172) = v42;
          goto LABEL_153;
        case 0x13u:
          *(a1 + 176) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_152;
        case 0x14u:
          *(a1 + 176) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_152;
        case 0x15u:
          *(a1 + 176) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_152;
        case 0x16u:
          *(a1 + 176) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_110:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 96) = *(*this + v2);
LABEL_152:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_153;
        default:
          if (!PB::Reader::skip(this))
          {
            v97 = 0;
            return v97 & 1;
          }

          v2 = *(this + 1);
LABEL_153:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_182;
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

LABEL_182:
  v97 = v4 ^ 1;
  return v97 & 1;
}

uint64_t sub_245D9A858(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 176);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 176);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 176);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 176);
  if ((v4 & 0x40) == 0)
  {
LABEL_5:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 176);
  if ((v4 & 0x100) == 0)
  {
LABEL_6:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 176);
  if ((v4 & 0x1000) == 0)
  {
LABEL_7:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 176);
  if ((v4 & 0x4000) == 0)
  {
LABEL_8:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 176);
  if ((v4 & 0x8000) == 0)
  {
LABEL_9:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 176);
  if ((v4 & 0x2000) == 0)
  {
LABEL_10:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 176);
  if ((v4 & 0x10000) == 0)
  {
LABEL_11:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  v5 = *(v3 + 136);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 176);
  if ((v4 & 0x20000) == 0)
  {
LABEL_12:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  v6 = *(v3 + 144);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 176);
  if ((v4 & 0x40000) == 0)
  {
LABEL_13:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v7 = *(v3 + 152);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 176);
  if ((v4 & 0x80000) == 0)
  {
LABEL_14:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 160));
  v4 = *(v3 + 176);
  if ((v4 & 0x100000) == 0)
  {
LABEL_15:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  v8 = *(v3 + 168);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 176);
  if ((v4 & 0x400) == 0)
  {
LABEL_16:
    if ((v4 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 176);
  if ((v4 & 2) == 0)
  {
LABEL_17:
    if ((v4 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 176);
  if ((v4 & 4) == 0)
  {
LABEL_18:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 176);
  if ((v4 & 0x200000) == 0)
  {
LABEL_19:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  v9 = *(v3 + 172);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 176);
  if ((v4 & 0x80) == 0)
  {
LABEL_20:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 176);
  if ((v4 & 0x200) == 0)
  {
LABEL_21:
    if ((v4 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_44:
    result = PB::Writer::write(this, *(v3 + 8));
    if ((*(v3 + 176) & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_45;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 176);
  if (v4)
  {
    goto LABEL_44;
  }

LABEL_22:
  if ((v4 & 0x800) == 0)
  {
    return result;
  }

LABEL_45:
  v10 = *(v3 + 96);

  return PB::Writer::write(this, v10);
}

uint64_t sub_245D9AAF8(uint64_t result)
{
  *result = &unk_2858CCC78;
  *(result + 112) = 0;
  return result;
}

void sub_245D9AB20(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245D9AB58(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CCC78;
  *(a1 + 112) = 0;
  v2 = *(a2 + 112);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 24);
    v3 = 4;
    *(a1 + 112) = 4;
    *(a1 + 24) = v4;
    v2 = *(a2 + 112);
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
    *(a1 + 112) = v3;
    *(a1 + 16) = v4;
    v2 = *(a2 + 112);
  }

LABEL_6:
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 |= 1u;
    *(a1 + 112) = v3;
    *(a1 + 8) = v4;
    v2 = *(a2 + 112);
    if ((v2 & 0x400) == 0)
    {
LABEL_8:
      if ((v2 & 0x400000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(v4) = *(a2 + 60);
  v3 |= 0x400u;
  *(a1 + 112) = v3;
  *(a1 + 60) = v4;
  v2 = *(a2 + 112);
  if ((v2 & 0x400000) == 0)
  {
LABEL_9:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  LODWORD(v4) = *(a2 + 108);
  v3 |= 0x400000u;
  *(a1 + 112) = v3;
  *(a1 + 108) = v4;
  v2 = *(a2 + 112);
  if ((v2 & 0x2000) == 0)
  {
LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  LODWORD(v4) = *(a2 + 72);
  v3 |= 0x2000u;
  *(a1 + 112) = v3;
  *(a1 + 72) = v4;
  v2 = *(a2 + 112);
  if ((v2 & 0x100) == 0)
  {
LABEL_11:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  LODWORD(v4) = *(a2 + 52);
  v3 |= 0x100u;
  *(a1 + 112) = v3;
  *(a1 + 52) = v4;
  v2 = *(a2 + 112);
  if ((v2 & 0x800) == 0)
  {
LABEL_12:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  v5 = *(a2 + 64);
  v3 |= 0x800u;
  *(a1 + 112) = v3;
  *(a1 + 64) = v5;
  v2 = *(a2 + 112);
  if ((v2 & 0x100000) == 0)
  {
LABEL_13:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  v6 = *(a2 + 100);
  v3 |= 0x100000u;
  *(a1 + 112) = v3;
  *(a1 + 100) = v6;
  v2 = *(a2 + 112);
  if ((v2 & 0x200000) == 0)
  {
LABEL_14:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  LODWORD(v4) = *(a2 + 104);
  v3 |= 0x200000u;
  *(a1 + 112) = v3;
  *(a1 + 104) = v4;
  v2 = *(a2 + 112);
  if ((v2 & 0x40000) == 0)
  {
LABEL_15:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  LODWORD(v4) = *(a2 + 92);
  v3 |= 0x40000u;
  *(a1 + 112) = v3;
  *(a1 + 92) = v4;
  v2 = *(a2 + 112);
  if ((v2 & 0x80) == 0)
  {
LABEL_16:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  LODWORD(v4) = *(a2 + 48);
  v3 |= 0x80u;
  *(a1 + 112) = v3;
  *(a1 + 48) = v4;
  v2 = *(a2 + 112);
  if ((v2 & 0x10000) == 0)
  {
LABEL_17:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  LODWORD(v4) = *(a2 + 84);
  v3 |= 0x10000u;
  *(a1 + 112) = v3;
  *(a1 + 84) = v4;
  v2 = *(a2 + 112);
  if ((v2 & 0x20) == 0)
  {
LABEL_18:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  LODWORD(v4) = *(a2 + 40);
  v3 |= 0x20u;
  *(a1 + 112) = v3;
  *(a1 + 40) = v4;
  v2 = *(a2 + 112);
  if ((v2 & 0x200) == 0)
  {
LABEL_19:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  LODWORD(v4) = *(a2 + 56);
  v3 |= 0x200u;
  *(a1 + 112) = v3;
  *(a1 + 56) = v4;
  v2 = *(a2 + 112);
  if ((v2 & 0x1000) == 0)
  {
LABEL_20:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_41:
  LODWORD(v4) = *(a2 + 68);
  v3 |= 0x1000u;
  *(a1 + 112) = v3;
  *(a1 + 68) = v4;
  v2 = *(a2 + 112);
  if ((v2 & 0x80000) == 0)
  {
LABEL_21:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_42:
  LODWORD(v4) = *(a2 + 96);
  v3 |= 0x80000u;
  *(a1 + 112) = v3;
  *(a1 + 96) = v4;
  v2 = *(a2 + 112);
  if ((v2 & 0x20000) == 0)
  {
LABEL_22:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_44;
  }

LABEL_43:
  LODWORD(v4) = *(a2 + 88);
  v3 |= 0x20000u;
  *(a1 + 112) = v3;
  *(a1 + 88) = v4;
  v2 = *(a2 + 112);
  if ((v2 & 0x40) == 0)
  {
LABEL_23:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

LABEL_44:
  LODWORD(v4) = *(a2 + 44);
  v3 |= 0x40u;
  *(a1 + 112) = v3;
  *(a1 + 44) = v4;
  v2 = *(a2 + 112);
  if ((v2 & 0x4000) == 0)
  {
LABEL_24:
    if ((v2 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_46;
  }

LABEL_45:
  LODWORD(v4) = *(a2 + 76);
  v3 |= 0x4000u;
  *(a1 + 112) = v3;
  *(a1 + 76) = v4;
  v2 = *(a2 + 112);
  if ((v2 & 8) == 0)
  {
LABEL_25:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_47;
  }

LABEL_46:
  LODWORD(v4) = *(a2 + 32);
  v3 |= 8u;
  *(a1 + 112) = v3;
  *(a1 + 32) = v4;
  v2 = *(a2 + 112);
  if ((v2 & 0x8000) == 0)
  {
LABEL_26:
    if ((v2 & 0x10) == 0)
    {
      return *&v4;
    }

    goto LABEL_48;
  }

LABEL_47:
  LODWORD(v4) = *(a2 + 80);
  v3 |= 0x8000u;
  *(a1 + 112) = v3;
  *(a1 + 80) = v4;
  if ((*(a2 + 112) & 0x10) == 0)
  {
    return *&v4;
  }

LABEL_48:
  LODWORD(v4) = *(a2 + 36);
  *(a1 + 112) = v3 | 0x10;
  *(a1 + 36) = v4;
  return *&v4;
}

uint64_t sub_245D9AE08(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 112);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(this, "averageCadence", *(a1 + 32));
    v5 = *(a1 + 112);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "averageHeartRate", *(a1 + 36));
  v5 = *(a1 + 112);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "averagePace", *(a1 + 40));
  v5 = *(a1 + 112);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "averagePower", *(a1 + 44));
  v5 = *(a1 + 112);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "averageSpeed", *(a1 + 48));
  v5 = *(a1 + 112);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "crossTrainerDistance", *(a1 + 52));
  v5 = *(a1 + 112);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "elapsedTime", *(a1 + 8));
  v5 = *(a1 + 112);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "elevationGain", *(a1 + 56));
  v5 = *(a1 + 112);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "energy", *(a1 + 60));
  v5 = *(a1 + 112);
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  v6 = *(a1 + 64);
  PB::TextFormatter::format(this, "floors");
  v5 = *(a1 + 112);
  if ((v5 & 2) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "globalMachtime", *(a1 + 16));
  v5 = *(a1 + 112);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "inclination", *(a1 + 68));
  v5 = *(a1 + 112);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "indoorBikeDistance", *(a1 + 72));
  v5 = *(a1 + 112);
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "instantaneousCadence", *(a1 + 76));
  v5 = *(a1 + 112);
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "instantaneousHeartRate", *(a1 + 80));
  v5 = *(a1 + 112);
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "instantaneousPace", *(a1 + 84));
  v5 = *(a1 + 112);
  if ((v5 & 0x20000) == 0)
  {
LABEL_18:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "instantaneousPower", *(a1 + 88));
  v5 = *(a1 + 112);
  if ((v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v5 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "instantaneousSpeed", *(a1 + 92));
  v5 = *(a1 + 112);
  if ((v5 & 4) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "localMachtime", *(a1 + 24));
  v5 = *(a1 + 112);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "resistanceLevel", *(a1 + 96));
  v5 = *(a1 + 112);
  if ((v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  v7 = *(a1 + 100);
  PB::TextFormatter::format(this, "stepCount");
  v5 = *(a1 + 112);
  if ((v5 & 0x200000) == 0)
  {
LABEL_23:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_49:
  PB::TextFormatter::format(this, "strideCount", *(a1 + 104));
  if ((*(a1 + 112) & 0x400000) != 0)
  {
LABEL_24:
    PB::TextFormatter::format(this, "treadmillDistance", *(a1 + 108));
  }

LABEL_25:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D9B12C(uint64_t a1, PB::Reader *this)
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
        goto LABEL_136;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 112) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_63;
        case 2u:
          *(a1 + 112) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_63;
        case 3u:
          *(a1 + 112) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 8) = *(*this + v2);
LABEL_63:
          v2 = *(this + 1) + 8;
          goto LABEL_121;
        case 4u:
          *(a1 + 112) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_120;
        case 5u:
          *(a1 + 112) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 108) = *(*this + v2);
          goto LABEL_120;
        case 6u:
          *(a1 + 112) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_120;
        case 7u:
          *(a1 + 112) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_120;
        case 8u:
          *(a1 + 112) |= 0x800u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v38 = 0;
            v39 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v40 = v2 - v22;
            v41 = (v23 + v22);
            v42 = v22 + 1;
            while (1)
            {
              if (!v40)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_130;
              }

              v43 = v42;
              v44 = *v41;
              *(this + 1) = v43;
              v26 |= (v44 & 0x7F) << v38;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              --v40;
              ++v41;
              v42 = v43 + 1;
              v14 = v39++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_129:
                v2 = v43;
                goto LABEL_130;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_129;
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
              goto LABEL_130;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_130:
          *(a1 + 64) = v26;
          goto LABEL_122;
        case 9u:
          *(a1 + 112) |= 0x100000u;
          v30 = *(this + 1);
          v2 = *(this + 2);
          v31 = *this;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v45 = 0;
            v46 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(this + 1);
            }

            v47 = v2 - v30;
            v48 = (v31 + v30);
            v49 = v30 + 1;
            while (1)
            {
              if (!v47)
              {
                LODWORD(v34) = 0;
                *(this + 24) = 1;
                goto LABEL_134;
              }

              v50 = v49;
              v51 = *v48;
              *(this + 1) = v50;
              v34 |= (v51 & 0x7F) << v45;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              --v47;
              ++v48;
              v49 = v50 + 1;
              v14 = v46++ > 8;
              if (v14)
              {
                LODWORD(v34) = 0;
LABEL_133:
                v2 = v50;
                goto LABEL_134;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_133;
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
              goto LABEL_134;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_134:
          *(a1 + 100) = v34;
          goto LABEL_122;
        case 0xAu:
          *(a1 + 112) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_120;
        case 0xBu:
          *(a1 + 112) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 92) = *(*this + v2);
          goto LABEL_120;
        case 0xCu:
          *(a1 + 112) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_120;
        case 0xDu:
          *(a1 + 112) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 84) = *(*this + v2);
          goto LABEL_120;
        case 0xEu:
          *(a1 + 112) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_120;
        case 0xFu:
          *(a1 + 112) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_120;
        case 0x10u:
          *(a1 + 112) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_120;
        case 0x11u:
          *(a1 + 112) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_120;
        case 0x12u:
          *(a1 + 112) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_120;
        case 0x13u:
          *(a1 + 112) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_120;
        case 0x14u:
          *(a1 + 112) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_120;
        case 0x15u:
          *(a1 + 112) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_120;
        case 0x16u:
          *(a1 + 112) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_120;
        case 0x17u:
          *(a1 + 112) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_100:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 36) = *(*this + v2);
LABEL_120:
            v2 = *(this + 1) + 4;
LABEL_121:
            *(this + 1) = v2;
          }

          goto LABEL_122;
        default:
          if (!PB::Reader::skip(this))
          {
            v52 = 0;
            return v52 & 1;
          }

          v2 = *(this + 1);
LABEL_122:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_136;
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

LABEL_136:
  v52 = v4 ^ 1;
  return v52 & 1;
}

uint64_t sub_245D9B9DC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 112);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
    v4 = *(v3 + 112);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 112);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 112);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 112);
  if ((v4 & 0x400000) == 0)
  {
LABEL_6:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 112);
  if ((v4 & 0x2000) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 112);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 112);
  if ((v4 & 0x800) == 0)
  {
LABEL_9:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  v5 = *(v3 + 64);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x100000) == 0)
  {
LABEL_10:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  v6 = *(v3 + 100);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x200000) == 0)
  {
LABEL_11:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 112);
  if ((v4 & 0x40000) == 0)
  {
LABEL_12:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 92));
  v4 = *(v3 + 112);
  if ((v4 & 0x80) == 0)
  {
LABEL_13:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 112);
  if ((v4 & 0x10000) == 0)
  {
LABEL_14:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 112);
  if ((v4 & 0x20) == 0)
  {
LABEL_15:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 112);
  if ((v4 & 0x200) == 0)
  {
LABEL_16:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 112);
  if ((v4 & 0x1000) == 0)
  {
LABEL_17:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 112);
  if ((v4 & 0x80000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 112);
  if ((v4 & 0x20000) == 0)
  {
LABEL_19:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 112);
  if ((v4 & 0x40) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 112);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 112);
  if ((v4 & 8) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

LABEL_46:
    result = PB::Writer::write(this, *(v3 + 80));
    if ((*(v3 + 112) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_47;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 112);
  if ((v4 & 0x8000) != 0)
  {
    goto LABEL_46;
  }

LABEL_23:
  if ((v4 & 0x10) == 0)
  {
    return result;
  }

LABEL_47:
  v7 = *(v3 + 36);

  return PB::Writer::write(this, v7);
}

uint64_t sub_245D9BC98(uint64_t result)
{
  *result = &unk_2858CCCB0;
  *(result + 28) = 0;
  return result;
}

void sub_245D9BCC0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245D9BCF8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CCCB0;
  *(a1 + 28) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(a1 + 28) = 1;
    *(a1 + 8) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 8) != 0)
  {
LABEL_5:
    result = *(a2 + 24);
    v3 |= 8u;
    *(a1 + 28) = v3;
    *(a1 + 24) = result;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 16);
    *(a1 + 28) = v3 | 2;
    *(a1 + 16) = result;
    return result;
  }

  result = *(a2 + 20);
  v3 |= 4u;
  *(a1 + 28) = v3;
  *(a1 + 20) = result;
  if ((*(a2 + 28) & 2) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_245D9BD94(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "maxSymmetryAllowanceFactor", *(a1 + 16));
    v5 = *(a1 + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "minPeakRotationRateThresholdRps", *(a1 + 20));
  v5 = *(a1 + 28);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(this, "minTwistAngleThresholdDeg", *(a1 + 24));
  if (*(a1 + 28))
  {
LABEL_5:
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestampUs");
  }

LABEL_6:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D9BE58(uint64_t a1, PB::Reader *this)
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
            goto LABEL_64;
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
LABEL_44:
            *(this + 24) = 1;
            goto LABEL_60;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_54;
        }

        if (v22 == 4)
        {
          *(a1 + 28) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_44;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_54;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 28) |= 1u;
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
                v27 = 0;
                *(this + 24) = 1;
                goto LABEL_59;
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
                v27 = 0;
                goto LABEL_58;
              }
            }

            if (*(this + 24))
            {
              v27 = 0;
            }

LABEL_58:
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
                v27 = 0;
                break;
              }
            }
          }

LABEL_59:
          *(a1 + 8) = v27;
          goto LABEL_60;
        }

        if (v22 == 2)
        {
          *(a1 + 28) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_44;
          }

          *(a1 + 24) = *(*this + v2);
LABEL_54:
          v2 = *(this + 1) + 4;
          *(this + 1) = v2;
          goto LABEL_60;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
LABEL_60:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_64:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_245D9C1AC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 28);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 20));
      if ((*(v3 + 28) & 2) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 28);
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_9:
  v6 = *(v3 + 16);

  return PB::Writer::write(this, v6);
}

uint64_t sub_245D9C254(uint64_t result)
{
  *result = &unk_2858CCCE8;
  *(result + 52) = 0;
  return result;
}

void sub_245D9C27C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245D9C2B4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CCCE8;
  *(a1 + 52) = 0;
  v2 = *(a2 + 52);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(a1 + 52) = 1;
    *(a1 + 8) = v4;
    v2 = *(a2 + 52);
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 52) & 0x200) != 0)
  {
LABEL_5:
    v5 = *(a2 + 48);
    v3 |= 0x200u;
    *(a1 + 52) = v3;
    *(a1 + 48) = v5;
    v2 = *(a2 + 52);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 16);
    v3 |= 2u;
    *(a1 + 52) = v3;
    *(a1 + 16) = result;
    v2 = *(a2 + 52);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 20);
  v3 |= 4u;
  *(a1 + 52) = v3;
  *(a1 + 20) = result;
  v2 = *(a2 + 52);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(a2 + 24);
  v3 |= 8u;
  *(a1 + 52) = v3;
  *(a1 + 24) = v7;
  v2 = *(a2 + 52);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = *(a2 + 32);
  v3 |= 0x20u;
  *(a1 + 52) = v3;
  *(a1 + 32) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = *(a2 + 36);
  v3 |= 0x40u;
  *(a1 + 52) = v3;
  *(a1 + 36) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x80) == 0)
  {
LABEL_12:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = *(a2 + 40);
  v3 |= 0x80u;
  *(a1 + 52) = v3;
  *(a1 + 40) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x100) == 0)
    {
      return result;
    }

LABEL_22:
    result = *(a2 + 44);
    *(a1 + 52) = v3 | 0x100;
    *(a1 + 44) = result;
    return result;
  }

LABEL_21:
  v8 = *(a2 + 28);
  v3 |= 0x10u;
  *(a1 + 52) = v3;
  *(a1 + 28) = v8;
  if ((*(a2 + 52) & 0x100) != 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_245D9C3F8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 52);
  if ((v5 & 0x200) != 0)
  {
    v7 = *(a1 + 48);
    PB::TextFormatter::format(this, "deterministicAlgoDecisionBool");
    v5 = *(a1 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "fGyroXLatestGyroValleyIntegratedValueLeftZCToMaxima", *(a1 + 16));
  v5 = *(a1 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "fGyroXLatestGyroValleyValueRps", *(a1 + 20));
  v5 = *(a1 + 52);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a1 + 24);
  PB::TextFormatter::format(this, "fGyroXNumPeaksInLast5sCount");
  v5 = *(a1 + 52);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(a1 + 28);
  PB::TextFormatter::format(this, "fGyroXNumValleysInLast2s");
  v5 = *(a1 + 52);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "fScreenTiltAngle2sLast", *(a1 + 32));
  v5 = *(a1 + 52);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "fWristAngleToHorizontal2sFirst", *(a1 + 36));
  v5 = *(a1 + 52);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "fWristAngleToHorizontal2sFirstToLast", *(a1 + 40));
  v5 = *(a1 + 52);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  PB::TextFormatter::format(this, "fWristAngleToHorizontal2sLast", *(a1 + 44));
  if (*(a1 + 52))
  {
LABEL_11:
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestampUs");
  }

LABEL_12:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D9C57C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_125;
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
      if ((v10 >> 3) > 5)
      {
        if (v22 <= 7)
        {
          if (v22 == 6)
          {
            *(a1 + 52) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_68:
              *(this + 24) = 1;
              goto LABEL_121;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_105;
          }

          if (v22 == 7)
          {
            *(a1 + 52) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 36) = *(*this + v2);
            goto LABEL_105;
          }
        }

        else
        {
          switch(v22)
          {
            case 8:
              *(a1 + 52) |= 0x80u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_68;
              }

              *(a1 + 40) = *(*this + v2);
              goto LABEL_105;
            case 9:
              *(a1 + 52) |= 0x10u;
              v41 = *(this + 1);
              v2 = *(this + 2);
              v42 = *this;
              if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
              {
                v63 = 0;
                v64 = 0;
                v45 = 0;
                if (v2 <= v41)
                {
                  v2 = *(this + 1);
                }

                v65 = v2 - v41;
                v66 = (v42 + v41);
                v67 = v41 + 1;
                while (1)
                {
                  if (!v65)
                  {
                    LODWORD(v45) = 0;
                    *(this + 24) = 1;
                    goto LABEL_120;
                  }

                  v68 = v67;
                  v69 = *v66;
                  *(this + 1) = v68;
                  v45 |= (v69 & 0x7F) << v63;
                  if ((v69 & 0x80) == 0)
                  {
                    break;
                  }

                  v63 += 7;
                  --v65;
                  ++v66;
                  v67 = v68 + 1;
                  v14 = v64++ > 8;
                  if (v14)
                  {
                    LODWORD(v45) = 0;
                    goto LABEL_119;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v45) = 0;
                }

LABEL_119:
                v2 = v68;
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

LABEL_120:
              *(a1 + 28) = v45;
              goto LABEL_121;
            case 0xA:
              *(a1 + 52) |= 0x100u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_68;
              }

              *(a1 + 44) = *(*this + v2);
              goto LABEL_105;
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 52) |= 1u;
          v33 = *(this + 1);
          v2 = *(this + 2);
          v34 = *this;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
          {
            v49 = 0;
            v50 = 0;
            v37 = 0;
            if (v2 <= v33)
            {
              v2 = *(this + 1);
            }

            v51 = v2 - v33;
            v52 = (v34 + v33);
            v53 = v33 + 1;
            while (1)
            {
              if (!v51)
              {
                v37 = 0;
                *(this + 24) = 1;
                goto LABEL_112;
              }

              v54 = v53;
              v55 = *v52;
              *(this + 1) = v54;
              v37 |= (v55 & 0x7F) << v49;
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
                v37 = 0;
                goto LABEL_111;
              }
            }

            if (*(this + 24))
            {
              v37 = 0;
            }

LABEL_111:
            v2 = v54;
          }

          else
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = (v34 + v33);
            v39 = v33 + 1;
            while (1)
            {
              v2 = v39;
              *(this + 1) = v39;
              v40 = *v38++;
              v37 |= (v40 & 0x7F) << v35;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              ++v39;
              v14 = v36++ > 8;
              if (v14)
              {
                v37 = 0;
                break;
              }
            }
          }

LABEL_112:
          *(a1 + 8) = v37;
          goto LABEL_121;
        }

        if (v22 == 2)
        {
          *(a1 + 52) |= 0x200u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v32 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v31 = *(*this + v2++);
            *(this + 1) = v2;
            v32 = v31 != 0;
          }

          *(a1 + 48) = v32;
          goto LABEL_121;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 52) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_105;
          case 4:
            *(a1 + 52) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 20) = *(*this + v2);
LABEL_105:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
            goto LABEL_121;
          case 5:
            *(a1 + 52) |= 8u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v56 = 0;
              v57 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v58 = v2 - v23;
              v59 = (v24 + v23);
              v60 = v23 + 1;
              while (1)
              {
                if (!v58)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_116;
                }

                v61 = v60;
                v62 = *v59;
                *(this + 1) = v61;
                v27 |= (v62 & 0x7F) << v56;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v56 += 7;
                --v58;
                ++v59;
                v60 = v61 + 1;
                v14 = v57++ > 8;
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
              v2 = v61;
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
            goto LABEL_121;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v70 = 0;
        return v70 & 1;
      }

      v2 = *(this + 1);
LABEL_121:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_125:
  v70 = v4 ^ 1;
  return v70 & 1;
}

uint64_t sub_245D9CC04(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 52);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 52);
    if ((v4 & 0x200) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(result + 52) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 48);
  result = PB::Writer::write(this);
  v4 = *(v3 + 52);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 52);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 52);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 52);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v8 = *(v3 + 28);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 52) & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 52);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x100) == 0)
  {
    return result;
  }

LABEL_21:
  v9 = *(v3 + 44);

  return PB::Writer::write(this, v9);
}

uint64_t sub_245D9CD54(uint64_t result)
{
  *result = &unk_2858CCD20;
  *(result + 100) = 0;
  return result;
}

void sub_245D9CD7C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245D9CDB4(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CCD20;
  *(result + 100) = 0;
  v2 = *(a2 + 100);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 24);
    v3 = 4;
    *(result + 100) = 4;
    *(result + 24) = v4;
    v2 = *(a2 + 100);
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
    *(result + 100) = v3;
    *(result + 32) = v5;
    v2 = *(a2 + 100);
  }

LABEL_6:
  if ((v2 & 0x400) != 0)
  {
    v6 = *(a2 + 60);
    v3 |= 0x400u;
    *(result + 100) = v3;
    *(result + 60) = v6;
    v2 = *(a2 + 100);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 16);
  v3 |= 2u;
  *(result + 100) = v3;
  *(result + 16) = v7;
  v2 = *(a2 + 100);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  v8 = *(a2 + 40);
  v3 |= 0x20u;
  *(result + 100) = v3;
  *(result + 40) = v8;
  v2 = *(a2 + 100);
  if ((v2 & 1) == 0)
  {
LABEL_10:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  v9 = *(a2 + 8);
  v3 |= 1u;
  *(result + 100) = v3;
  *(result + 8) = v9;
  v2 = *(a2 + 100);
  if ((v2 & 0x1000) == 0)
  {
LABEL_11:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v10 = *(a2 + 68);
  v3 |= 0x1000u;
  *(result + 100) = v3;
  *(result + 68) = v10;
  v2 = *(a2 + 100);
  if ((v2 & 0x800) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  v11 = *(a2 + 64);
  v3 |= 0x800u;
  *(result + 100) = v3;
  *(result + 64) = v11;
  v2 = *(a2 + 100);
  if ((v2 & 0x80) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  v12 = *(a2 + 48);
  v3 |= 0x80u;
  *(result + 100) = v3;
  *(result + 48) = v12;
  v2 = *(a2 + 100);
  if ((v2 & 0x40) == 0)
  {
LABEL_14:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  v13 = *(a2 + 44);
  v3 |= 0x40u;
  *(result + 100) = v3;
  *(result + 44) = v13;
  v2 = *(a2 + 100);
  if ((v2 & 0x2000) == 0)
  {
LABEL_15:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  v14 = *(a2 + 72);
  v3 |= 0x2000u;
  *(result + 100) = v3;
  *(result + 72) = v14;
  v2 = *(a2 + 100);
  if ((v2 & 0x100) == 0)
  {
LABEL_16:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  v15 = *(a2 + 52);
  v3 |= 0x100u;
  *(result + 100) = v3;
  *(result + 52) = v15;
  v2 = *(a2 + 100);
  if ((v2 & 0x40000) == 0)
  {
LABEL_17:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  v16 = *(a2 + 92);
  v3 |= 0x40000u;
  *(result + 100) = v3;
  *(result + 92) = v16;
  v2 = *(a2 + 100);
  if ((v2 & 0x20000) == 0)
  {
LABEL_18:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_36:
  v17 = *(a2 + 88);
  v3 |= 0x20000u;
  *(result + 100) = v3;
  *(result + 88) = v17;
  v2 = *(a2 + 100);
  if ((v2 & 0x200) == 0)
  {
LABEL_19:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

LABEL_37:
  v18 = *(a2 + 56);
  v3 |= 0x200u;
  *(result + 100) = v3;
  *(result + 56) = v18;
  v2 = *(a2 + 100);
  if ((v2 & 0x10) == 0)
  {
LABEL_20:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_38:
  v19 = *(a2 + 36);
  v3 |= 0x10u;
  *(result + 100) = v3;
  *(result + 36) = v19;
  v2 = *(a2 + 100);
  if ((v2 & 0x10000) == 0)
  {
LABEL_21:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

LABEL_39:
  v20 = *(a2 + 84);
  v3 |= 0x10000u;
  *(result + 100) = v3;
  *(result + 84) = v20;
  v2 = *(a2 + 100);
  if ((v2 & 0x8000) == 0)
  {
LABEL_22:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

LABEL_40:
  v21 = *(a2 + 80);
  v3 |= 0x8000u;
  *(result + 100) = v3;
  *(result + 80) = v21;
  v2 = *(a2 + 100);
  if ((v2 & 0x4000) == 0)
  {
LABEL_23:
    if ((v2 & 0x80000) == 0)
    {
      return result;
    }

LABEL_42:
    v23 = *(a2 + 96);
    *(result + 100) = v3 | 0x80000;
    *(result + 96) = v23;
    return result;
  }

LABEL_41:
  v22 = *(a2 + 76);
  v3 |= 0x4000u;
  *(result + 100) = v3;
  *(result + 76) = v22;
  if ((*(a2 + 100) & 0x80000) != 0)
  {
    goto LABEL_42;
  }

  return result;
}

uint64_t sub_245D9D010(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 100);
  if ((v5 & 8) != 0)
  {
    v6 = *(a1 + 32);
    PB::TextFormatter::format(this, "dataBufferSize");
    v5 = *(a1 + 100);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "gestureLengthSeconds", *(a1 + 36));
  v5 = *(a1 + 100);
  if ((v5 & 0x80000) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = *(a1 + 96);
  PB::TextFormatter::format(this, "isWristLooselyLevel");
  v5 = *(a1 + 100);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "negPeakHeight", *(a1 + 40));
  v5 = *(a1 + 100);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  v8 = *(a1 + 44);
  PB::TextFormatter::format(this, "negPeakLeftHalfWidth");
  v5 = *(a1 + 100);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  v9 = *(a1 + 48);
  PB::TextFormatter::format(this, "negPeakRightHalfWidth");
  v5 = *(a1 + 100);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  v10 = *(a1 + 8);
  PB::TextFormatter::format(this, "negPeakTimestampUs");
  v5 = *(a1 + 100);
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
  PB::TextFormatter::format(this, "negPeakTotalAngleDegrees", *(a1 + 52));
  v5 = *(a1 + 100);
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
  PB::TextFormatter::format(this, "pauseBtwPeaksSeconds", *(a1 + 56));
  v5 = *(a1 + 100);
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
  PB::TextFormatter::format(this, "posPeakHeight", *(a1 + 60));
  v5 = *(a1 + 100);
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
  v11 = *(a1 + 64);
  PB::TextFormatter::format(this, "posPeakLeftHalfWidth");
  v5 = *(a1 + 100);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  v12 = *(a1 + 68);
  PB::TextFormatter::format(this, "posPeakRightHalfWidth");
  v5 = *(a1 + 100);
  if ((v5 & 2) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  v13 = *(a1 + 16);
  PB::TextFormatter::format(this, "posPeakTimestampUs");
  v5 = *(a1 + 100);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "posPeakTotalAngleDegrees", *(a1 + 72));
  v5 = *(a1 + 100);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "rotZRangeDuringGestureRad", *(a1 + 76));
  v5 = *(a1 + 100);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "screenTiltAtEndDegrees", *(a1 + 80));
  v5 = *(a1 + 100);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "screenTiltAtStartDegrees", *(a1 + 84));
  v5 = *(a1 + 100);
  if ((v5 & 4) == 0)
  {
LABEL_19:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  v14 = *(a1 + 24);
  PB::TextFormatter::format(this, "timestampUs");
  v5 = *(a1 + 100);
  if ((v5 & 0x20000) == 0)
  {
LABEL_20:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_43:
  PB::TextFormatter::format(this, "wristAngleDiffBtwPeaksDegrees", *(a1 + 88));
  if ((*(a1 + 100) & 0x40000) != 0)
  {
LABEL_21:
    PB::TextFormatter::format(this, "wristAngleToHorizontalDegrees", *(a1 + 92));
  }

LABEL_22:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D9D2D4(uint64_t a1, PB::Reader *this)
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
        goto LABEL_228;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 100) |= 4u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v109 = 0;
            v110 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v111 = v2 - v22;
            v112 = (v23 + v22);
            v113 = v22 + 1;
            while (1)
            {
              if (!v111)
              {
                v26 = 0;
                *(this + 24) = 1;
                goto LABEL_207;
              }

              v114 = v113;
              v115 = *v112;
              *(this + 1) = v114;
              v26 |= (v115 & 0x7F) << v109;
              if ((v115 & 0x80) == 0)
              {
                break;
              }

              v109 += 7;
              --v111;
              ++v112;
              v113 = v114 + 1;
              v14 = v110++ > 8;
              if (v14)
              {
                v26 = 0;
                goto LABEL_206;
              }
            }

            if (*(this + 24))
            {
              v26 = 0;
            }

LABEL_206:
            v2 = v114;
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
                goto LABEL_207;
              }

              v24 += 7;
              ++v28;
              v14 = v25++ > 8;
            }

            while (!v14);
            v26 = 0;
          }

LABEL_207:
          *(a1 + 24) = v26;
          goto LABEL_224;
        case 2u:
          *(a1 + 100) |= 8u;
          v54 = *(this + 1);
          v2 = *(this + 2);
          v55 = *this;
          if (v54 > 0xFFFFFFFFFFFFFFF5 || v54 + 10 > v2)
          {
            v116 = 0;
            v117 = 0;
            v58 = 0;
            if (v2 <= v54)
            {
              v2 = *(this + 1);
            }

            v118 = v2 - v54;
            v119 = (v55 + v54);
            v120 = v54 + 1;
            while (1)
            {
              if (!v118)
              {
                LODWORD(v58) = 0;
                *(this + 24) = 1;
                goto LABEL_211;
              }

              v121 = v120;
              v122 = *v119;
              *(this + 1) = v121;
              v58 |= (v122 & 0x7F) << v116;
              if ((v122 & 0x80) == 0)
              {
                break;
              }

              v116 += 7;
              --v118;
              ++v119;
              v120 = v121 + 1;
              v14 = v117++ > 8;
              if (v14)
              {
                LODWORD(v58) = 0;
LABEL_210:
                v2 = v121;
                goto LABEL_211;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v58) = 0;
            }

            goto LABEL_210;
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
              goto LABEL_211;
            }

            v56 += 7;
            ++v60;
            v14 = v57++ > 8;
          }

          while (!v14);
          LODWORD(v58) = 0;
LABEL_211:
          *(a1 + 32) = v58;
          goto LABEL_224;
        case 3u:
          *(a1 + 100) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_106;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_183;
        case 4u:
          *(a1 + 100) |= 2u;
          v38 = *(this + 1);
          v2 = *(this + 2);
          v39 = *this;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v95 = 0;
            v96 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(this + 1);
            }

            v97 = v2 - v38;
            v98 = (v39 + v38);
            v99 = v38 + 1;
            while (1)
            {
              if (!v97)
              {
                v42 = 0;
                *(this + 24) = 1;
                goto LABEL_199;
              }

              v100 = v99;
              v101 = *v98;
              *(this + 1) = v100;
              v42 |= (v101 & 0x7F) << v95;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v95 += 7;
              --v97;
              ++v98;
              v99 = v100 + 1;
              v14 = v96++ > 8;
              if (v14)
              {
                v42 = 0;
LABEL_198:
                v2 = v100;
                goto LABEL_199;
              }
            }

            if (*(this + 24))
            {
              v42 = 0;
            }

            goto LABEL_198;
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
              goto LABEL_199;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          v42 = 0;
LABEL_199:
          *(a1 + 16) = v42;
          goto LABEL_224;
        case 5u:
          *(a1 + 100) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_106;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_183;
        case 6u:
          *(a1 + 100) |= 1u;
          v62 = *(this + 1);
          v2 = *(this + 2);
          v63 = *this;
          if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v2)
          {
            v123 = 0;
            v124 = 0;
            v66 = 0;
            if (v2 <= v62)
            {
              v2 = *(this + 1);
            }

            v125 = v2 - v62;
            v126 = (v63 + v62);
            v127 = v62 + 1;
            while (1)
            {
              if (!v125)
              {
                v66 = 0;
                *(this + 24) = 1;
                goto LABEL_215;
              }

              v128 = v127;
              v129 = *v126;
              *(this + 1) = v128;
              v66 |= (v129 & 0x7F) << v123;
              if ((v129 & 0x80) == 0)
              {
                break;
              }

              v123 += 7;
              --v125;
              ++v126;
              v127 = v128 + 1;
              v14 = v124++ > 8;
              if (v14)
              {
                v66 = 0;
LABEL_214:
                v2 = v128;
                goto LABEL_215;
              }
            }

            if (*(this + 24))
            {
              v66 = 0;
            }

            goto LABEL_214;
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
              goto LABEL_215;
            }

            v64 += 7;
            ++v68;
            v14 = v65++ > 8;
          }

          while (!v14);
          v66 = 0;
LABEL_215:
          *(a1 + 8) = v66;
          goto LABEL_224;
        case 7u:
          *(a1 + 100) |= 0x1000u;
          v70 = *(this + 1);
          v2 = *(this + 2);
          v71 = *this;
          if (v70 > 0xFFFFFFFFFFFFFFF5 || v70 + 10 > v2)
          {
            v130 = 0;
            v131 = 0;
            v74 = 0;
            if (v2 <= v70)
            {
              v2 = *(this + 1);
            }

            v132 = v2 - v70;
            v133 = (v71 + v70);
            v134 = v70 + 1;
            while (1)
            {
              if (!v132)
              {
                LODWORD(v74) = 0;
                *(this + 24) = 1;
                goto LABEL_219;
              }

              v135 = v134;
              v136 = *v133;
              *(this + 1) = v135;
              v74 |= (v136 & 0x7F) << v130;
              if ((v136 & 0x80) == 0)
              {
                break;
              }

              v130 += 7;
              --v132;
              ++v133;
              v134 = v135 + 1;
              v14 = v131++ > 8;
              if (v14)
              {
                LODWORD(v74) = 0;
LABEL_218:
                v2 = v135;
                goto LABEL_219;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v74) = 0;
            }

            goto LABEL_218;
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
              goto LABEL_219;
            }

            v72 += 7;
            ++v76;
            v14 = v73++ > 8;
          }

          while (!v14);
          LODWORD(v74) = 0;
LABEL_219:
          *(a1 + 68) = v74;
          goto LABEL_224;
        case 8u:
          *(a1 + 100) |= 0x800u;
          v46 = *(this + 1);
          v2 = *(this + 2);
          v47 = *this;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v102 = 0;
            v103 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(this + 1);
            }

            v104 = v2 - v46;
            v105 = (v47 + v46);
            v106 = v46 + 1;
            while (1)
            {
              if (!v104)
              {
                LODWORD(v50) = 0;
                *(this + 24) = 1;
                goto LABEL_203;
              }

              v107 = v106;
              v108 = *v105;
              *(this + 1) = v107;
              v50 |= (v108 & 0x7F) << v102;
              if ((v108 & 0x80) == 0)
              {
                break;
              }

              v102 += 7;
              --v104;
              ++v105;
              v106 = v107 + 1;
              v14 = v103++ > 8;
              if (v14)
              {
                LODWORD(v50) = 0;
LABEL_202:
                v2 = v107;
                goto LABEL_203;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_202;
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
              goto LABEL_203;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_203:
          *(a1 + 64) = v50;
          goto LABEL_224;
        case 9u:
          *(a1 + 100) |= 0x80u;
          v78 = *(this + 1);
          v2 = *(this + 2);
          v79 = *this;
          if (v78 > 0xFFFFFFFFFFFFFFF5 || v78 + 10 > v2)
          {
            v137 = 0;
            v138 = 0;
            v82 = 0;
            if (v2 <= v78)
            {
              v2 = *(this + 1);
            }

            v139 = v2 - v78;
            v140 = (v79 + v78);
            v141 = v78 + 1;
            while (1)
            {
              if (!v139)
              {
                LODWORD(v82) = 0;
                *(this + 24) = 1;
                goto LABEL_223;
              }

              v142 = v141;
              v143 = *v140;
              *(this + 1) = v142;
              v82 |= (v143 & 0x7F) << v137;
              if ((v143 & 0x80) == 0)
              {
                break;
              }

              v137 += 7;
              --v139;
              ++v140;
              v141 = v142 + 1;
              v14 = v138++ > 8;
              if (v14)
              {
                LODWORD(v82) = 0;
LABEL_222:
                v2 = v142;
                goto LABEL_223;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v82) = 0;
            }

            goto LABEL_222;
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
              goto LABEL_223;
            }

            v80 += 7;
            ++v84;
            v14 = v81++ > 8;
          }

          while (!v14);
          LODWORD(v82) = 0;
LABEL_223:
          *(a1 + 48) = v82;
          goto LABEL_224;
        case 0xAu:
          *(a1 + 100) |= 0x40u;
          v30 = *(this + 1);
          v2 = *(this + 2);
          v31 = *this;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v88 = 0;
            v89 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(this + 1);
            }

            v90 = v2 - v30;
            v91 = (v31 + v30);
            v92 = v30 + 1;
            while (1)
            {
              if (!v90)
              {
                LODWORD(v34) = 0;
                *(this + 24) = 1;
                goto LABEL_195;
              }

              v93 = v92;
              v94 = *v91;
              *(this + 1) = v93;
              v34 |= (v94 & 0x7F) << v88;
              if ((v94 & 0x80) == 0)
              {
                break;
              }

              v88 += 7;
              --v90;
              ++v91;
              v92 = v93 + 1;
              v14 = v89++ > 8;
              if (v14)
              {
                LODWORD(v34) = 0;
LABEL_194:
                v2 = v93;
                goto LABEL_195;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_194;
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
              goto LABEL_195;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_195:
          *(a1 + 44) = v34;
          goto LABEL_224;
        case 0xBu:
          *(a1 + 100) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_106;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_183;
        case 0xCu:
          *(a1 + 100) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_106;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_183;
        case 0xDu:
          *(a1 + 100) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_106;
          }

          *(a1 + 92) = *(*this + v2);
          goto LABEL_183;
        case 0xEu:
          *(a1 + 100) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_106;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_183;
        case 0xFu:
          *(a1 + 100) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_106;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_183;
        case 0x10u:
          *(a1 + 100) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_106;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_183;
        case 0x11u:
          *(a1 + 100) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_106;
          }

          *(a1 + 84) = *(*this + v2);
          goto LABEL_183;
        case 0x12u:
          *(a1 + 100) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_106;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_183;
        case 0x13u:
          *(a1 + 100) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_106:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 76) = *(*this + v2);
LABEL_183:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          goto LABEL_224;
        case 0x14u:
          *(a1 + 100) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v87 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v86 = *(*this + v2++);
            *(this + 1) = v2;
            v87 = v86 != 0;
          }

          *(a1 + 96) = v87;
          goto LABEL_224;
        default:
          if (!PB::Reader::skip(this))
          {
            v144 = 0;
            return v144 & 1;
          }

          v2 = *(this + 1);
LABEL_224:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_228;
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

LABEL_228:
  v144 = v4 ^ 1;
  return v144 & 1;
}

uint64_t sub_245D9DF9C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 100);
  if ((v4 & 4) != 0)
  {
    v5 = *(result + 24);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 100);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 100);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  v7 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 100);
  if ((v4 & 1) == 0)
  {
LABEL_7:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v8 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x1000) == 0)
  {
LABEL_8:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v9 = *(v3 + 68);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x800) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v10 = *(v3 + 64);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v11 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x40) == 0)
  {
LABEL_11:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v12 = *(v3 + 44);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x2000) == 0)
  {
LABEL_12:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 100);
  if ((v4 & 0x100) == 0)
  {
LABEL_13:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 100);
  if ((v4 & 0x40000) == 0)
  {
LABEL_14:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 92));
  v4 = *(v3 + 100);
  if ((v4 & 0x20000) == 0)
  {
LABEL_15:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 100);
  if ((v4 & 0x200) == 0)
  {
LABEL_16:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 100);
  if ((v4 & 0x10) == 0)
  {
LABEL_17:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 100);
  if ((v4 & 0x10000) == 0)
  {
LABEL_18:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 100);
  if ((v4 & 0x8000) == 0)
  {
LABEL_19:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

LABEL_40:
    result = PB::Writer::write(this, *(v3 + 76));
    if ((*(v3 + 100) & 0x80000) == 0)
    {
      return result;
    }

    goto LABEL_41;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 100);
  if ((v4 & 0x4000) != 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  if ((v4 & 0x80000) == 0)
  {
    return result;
  }

LABEL_41:
  v13 = *(v3 + 96);

  return PB::Writer::write(this);
}

uint64_t sub_245D9E204(uint64_t result)
{
  *result = &unk_2858CCD58;
  *(result + 20) = 0;
  return result;
}

void sub_245D9E22C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245D9E264(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CCD58;
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

uint64_t sub_245D9E2C8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "state");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    v7 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D9E344(uint64_t a1, PB::Reader *this)
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
            goto LABEL_73;
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

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 2u;
        v31 = *(this + 1);
        v2 = *(this + 2);
        v32 = *this;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v46 = 0;
          v47 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v48 = v3 - v31;
          v49 = (v32 + v31);
          v50 = v31 + 1;
          while (1)
          {
            if (!v48)
            {
              LODWORD(v35) = 0;
              *(this + 24) = 1;
              goto LABEL_68;
            }

            v51 = v50;
            v52 = *v49;
            *(this + 1) = v51;
            v35 |= (v52 & 0x7F) << v46;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            --v48;
            ++v49;
            v50 = v51 + 1;
            v14 = v47++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_67;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_67:
          v3 = v51;
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
            v3 = v37;
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

LABEL_68:
        *(a1 + 16) = v35;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 1u;
        v23 = *(this + 1);
        v2 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v39 = 0;
          v40 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v41 = v3 - v23;
          v42 = (v24 + v23);
          v43 = v23 + 1;
          while (1)
          {
            if (!v41)
            {
              v27 = 0;
              *(this + 24) = 1;
              goto LABEL_64;
            }

            v44 = v43;
            v45 = *v42;
            *(this + 1) = v44;
            v27 |= (v45 & 0x7F) << v39;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            --v41;
            ++v42;
            v43 = v44 + 1;
            v14 = v40++ > 8;
            if (v14)
            {
              v27 = 0;
              goto LABEL_63;
            }
          }

          if (*(this + 24))
          {
            v27 = 0;
          }

LABEL_63:
          v3 = v44;
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
              v27 = 0;
              break;
            }
          }
        }

LABEL_64:
        *(a1 + 8) = v27;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v53 = 0;
          return v53 & 1;
        }

        v3 = *(this + 1);
        v2 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_73:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_245D9E6C4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 16);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

void *sub_245D9E730(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2858CCD90;
  return result;
}

void sub_245D9E754(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858CCD90;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245D9E7D4(PB::Base *a1)
{
  sub_245D9E754(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245D9E80C(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CCD90;
  *(result + 8) = 0;
  *(result + 16) = 0;
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

uint64_t sub_245D9E8E8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 20))
  {
    v5 = *(a1 + 16);
    PB::TextFormatter::format(this, "axis");
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D9E980(uint64_t a1, PB::Reader *this)
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
            goto LABEL_50;
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
        v23 = *(this + 1);
        v22 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          v17 = v22 >= v23;
          v33 = v22 - v23;
          if (!v17)
          {
            v33 = 0;
          }

          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_45;
            }

            v36 = *v34;
            *(this + 1) = v35;
            v27 |= (v36 & 0x7F) << v31;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            ++v35;
            v14 = v32++ > 8;
            if (v14)
            {
LABEL_41:
              LODWORD(v27) = 0;
              goto LABEL_45;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }
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
              goto LABEL_41;
            }
          }
        }

LABEL_45:
        *(a1 + 16) = v27;
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          operator new();
        }

        if ((PB::Reader::skip(this) & 1) == 0)
        {
          v38 = 0;
          return v38 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_50:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_245D9ECBC(uint64_t result)
{
  *result = &unk_2858CCE00;
  *(result + 68) = 0;
  return result;
}

uint64_t sub_245D9ECE0(uint64_t result, PB::Writer *this)
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

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_245D9ED48(uint64_t result)
{
  *result = &unk_2858CCDC8;
  *(result + 40) = 0;
  return result;
}

void sub_245D9ED70(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245D9EDA8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CCDC8;
  *(a1 + 40) = 0;
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(a1 + 40) = 1;
    *(a1 + 8) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 0x10) != 0)
  {
LABEL_5:
    result = *(a2 + 28);
    v3 |= 0x10u;
    *(a1 + 40) = v3;
    *(a1 + 28) = result;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    result = *(a2 + 32);
    v3 |= 0x20u;
    *(a1 + 40) = v3;
    *(a1 + 32) = result;
    v2 = *(a2 + 40);
    if ((v2 & 0x40) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 36);
  v3 |= 0x40u;
  *(a1 + 40) = v3;
  *(a1 + 36) = result;
  v2 = *(a2 + 40);
  if ((v2 & 2) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = *(a2 + 16);
  v3 |= 2u;
  *(a1 + 40) = v3;
  *(a1 + 16) = result;
  v2 = *(a2 + 40);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_16:
    result = *(a2 + 24);
    *(a1 + 40) = v3 | 8;
    *(a1 + 24) = result;
    return result;
  }

LABEL_15:
  result = *(a2 + 20);
  v3 |= 4u;
  *(a1 + 40) = v3;
  *(a1 + 20) = result;
  if ((*(a2 + 40) & 8) != 0)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_245D9EE98(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "gravityXG", *(a1 + 16));
    v5 = *(a1 + 40);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "gravityYG", *(a1 + 20));
  v5 = *(a1 + 40);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "gravityZG", *(a1 + 24));
  v5 = *(a1 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(this, "omegaXRps", *(a1 + 28));
  v5 = *(a1 + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "omegaYRps", *(a1 + 32));
  v5 = *(a1 + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(this, "omegaZRps", *(a1 + 36));
  if (*(a1 + 40))
  {
LABEL_8:
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestampUs");
  }

LABEL_9:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D9EFBC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_77;
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
      if ((v10 >> 3) <= 3)
      {
        switch(v22)
        {
          case 1:
            *(a1 + 40) |= 1u;
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
                  v27 = 0;
                  *(this + 24) = 1;
                  goto LABEL_72;
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
                  v27 = 0;
                  goto LABEL_71;
                }
              }

              if (*(this + 24))
              {
                v27 = 0;
              }

LABEL_71:
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
                  v27 = 0;
                  break;
                }
              }
            }

LABEL_72:
            *(a1 + 8) = v27;
            goto LABEL_73;
          case 2:
            *(a1 + 40) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_57:
              *(this + 24) = 1;
              goto LABEL_73;
            }

            *(a1 + 28) = *(*this + v2);
            goto LABEL_67;
          case 3:
            *(a1 + 40) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_57;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_67;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 40) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_57;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_67;
        }

        if (v22 == 7)
        {
          *(a1 + 40) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_57;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_67;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 40) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_57;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_67;
        }

        if (v22 == 5)
        {
          *(a1 + 40) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_57;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_67:
          v2 = *(this + 1) + 4;
          *(this + 1) = v2;
          goto LABEL_73;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
LABEL_73:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_77:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_245D9F3D8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 40);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 40) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 40);
  if ((v4 & 0x40) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 40);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::write(this, *(v3 + 20));
    if ((*(v3 + 40) & 8) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 40);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_15:
  v6 = *(v3 + 24);

  return PB::Writer::write(this, v6);
}

void sub_245D9F4D8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245D9F510(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CCE00;
  *(a1 + 68) = 0;
  v2 = *(a2 + 68);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 40);
    v3 = 16;
    *(a1 + 68) = 16;
    *(a1 + 40) = v4;
    v2 = *(a2 + 68);
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 68) & 0x100) != 0)
  {
LABEL_5:
    result = *(a2 + 60);
    v3 |= 0x100u;
    *(a1 + 68) = v3;
    *(a1 + 60) = result;
    v2 = *(a2 + 68);
  }

LABEL_6:
  if ((v2 & 0x200) != 0)
  {
    v6 = *(a2 + 64);
    v3 |= 0x200u;
    *(a1 + 68) = v3;
    *(a1 + 64) = v6;
    v2 = *(a2 + 68);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 16);
  v3 |= 2u;
  *(a1 + 68) = v3;
  *(a1 + 16) = v7;
  v2 = *(a2 + 68);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = *(a2 + 32);
  v3 |= 8u;
  *(a1 + 68) = v3;
  *(a1 + 32) = v8;
  v2 = *(a2 + 68);
  if ((v2 & 1) == 0)
  {
LABEL_10:
    if ((v2 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 8);
  v3 |= 1u;
  *(a1 + 68) = v3;
  *(a1 + 8) = v9;
  v2 = *(a2 + 68);
  if ((v2 & 4) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 24);
  v3 |= 4u;
  *(a1 + 68) = v3;
  *(a1 + 24) = v10;
  v2 = *(a2 + 68);
  if ((v2 & 0x80) == 0)
  {
LABEL_12:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = *(a2 + 56);
  v3 |= 0x80u;
  *(a1 + 68) = v3;
  *(a1 + 56) = result;
  v2 = *(a2 + 68);
  if ((v2 & 0x20) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      return result;
    }

LABEL_22:
    result = *(a2 + 52);
    *(a1 + 68) = v3 | 0x40;
    *(a1 + 52) = result;
    return result;
  }

LABEL_21:
  result = *(a2 + 48);
  v3 |= 0x20u;
  *(a1 + 68) = v3;
  *(a1 + 48) = result;
  if ((*(a2 + 68) & 0x40) != 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_245D9F650(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "integratedValueLeftZCToMaxima", *(a1 + 48));
    v5 = *(a1 + 68);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "integratedValueLeftZCToRightHalf", *(a1 + 52));
  v5 = *(a1 + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "integratedValueLeftZCToRightZC", *(a1 + 56));
  v5 = *(a1 + 68);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = *(a1 + 64);
  PB::TextFormatter::format(this, "isPeak");
  v5 = *(a1 + 68);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = *(a1 + 8);
  PB::TextFormatter::format(this, "timestampLeftHalfCrossingUs");
  v5 = *(a1 + 68);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "timestampLeftZeroCrossingUs");
  v5 = *(a1 + 68);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(a1 + 24);
  PB::TextFormatter::format(this, "timestampRightHalfCrossingUs");
  v5 = *(a1 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a1 + 32);
  PB::TextFormatter::format(this, "timestampRightZeroCrossingUs");
  v5 = *(a1 + 68);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v11 = *(a1 + 40);
  PB::TextFormatter::format(this, "timestampUs");
  if ((*(a1 + 68) & 0x100) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(this, "value", *(a1 + 60));
  }

LABEL_12:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245D9F7D4(uint64_t a1, PB::Reader *this)
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
            goto LABEL_159;
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
      if ((v10 >> 3) > 5)
      {
        if (v22 <= 7)
        {
          if (v22 == 6)
          {
            *(a1 + 68) |= 1u;
            v47 = *(this + 1);
            v2 = *(this + 2);
            v48 = *this;
            if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
            {
              v79 = 0;
              v80 = 0;
              v51 = 0;
              if (v2 <= v47)
              {
                v2 = *(this + 1);
              }

              v81 = v2 - v47;
              v82 = (v48 + v47);
              v83 = v47 + 1;
              while (1)
              {
                if (!v81)
                {
                  v51 = 0;
                  *(this + 24) = 1;
                  goto LABEL_146;
                }

                v84 = v83;
                v85 = *v82;
                *(this + 1) = v84;
                v51 |= (v85 & 0x7F) << v79;
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
                  v51 = 0;
                  goto LABEL_145;
                }
              }

              if (*(this + 24))
              {
                v51 = 0;
              }

LABEL_145:
              v2 = v84;
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

LABEL_146:
            *(a1 + 8) = v51;
            goto LABEL_155;
          }

          if (v22 == 7)
          {
            *(a1 + 68) |= 4u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v65 = 0;
              v66 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v67 = v2 - v31;
              v68 = (v32 + v31);
              v69 = v31 + 1;
              while (1)
              {
                if (!v67)
                {
                  v35 = 0;
                  *(this + 24) = 1;
                  goto LABEL_138;
                }

                v70 = v69;
                v71 = *v68;
                *(this + 1) = v70;
                v35 |= (v71 & 0x7F) << v65;
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
                  v35 = 0;
                  goto LABEL_137;
                }
              }

              if (*(this + 24))
              {
                v35 = 0;
              }

LABEL_137:
              v2 = v70;
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

LABEL_138:
            *(a1 + 24) = v35;
            goto LABEL_155;
          }
        }

        else
        {
          switch(v22)
          {
            case 8:
              *(a1 + 68) |= 0x80u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
LABEL_83:
                *(this + 24) = 1;
                goto LABEL_155;
              }

              *(a1 + 56) = *(*this + v2);
              goto LABEL_129;
            case 9:
              *(a1 + 68) |= 0x20u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_83;
              }

              *(a1 + 48) = *(*this + v2);
              goto LABEL_129;
            case 0xA:
              *(a1 + 68) |= 0x40u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_83;
              }

              *(a1 + 52) = *(*this + v2);
              goto LABEL_129;
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 68) |= 0x10u;
          v39 = *(this + 1);
          v2 = *(this + 2);
          v40 = *this;
          if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
          {
            v72 = 0;
            v73 = 0;
            v43 = 0;
            if (v2 <= v39)
            {
              v2 = *(this + 1);
            }

            v74 = v2 - v39;
            v75 = (v40 + v39);
            v76 = v39 + 1;
            while (1)
            {
              if (!v74)
              {
                v43 = 0;
                *(this + 24) = 1;
                goto LABEL_142;
              }

              v77 = v76;
              v78 = *v75;
              *(this + 1) = v77;
              v43 |= (v78 & 0x7F) << v72;
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
                v43 = 0;
                goto LABEL_141;
              }
            }

            if (*(this + 24))
            {
              v43 = 0;
            }

LABEL_141:
            v2 = v77;
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

LABEL_142:
          *(a1 + 40) = v43;
          goto LABEL_155;
        }

        if (v22 == 2)
        {
          *(a1 + 68) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_83;
          }

          *(a1 + 60) = *(*this + v2);
LABEL_129:
          v2 = *(this + 1) + 4;
          *(this + 1) = v2;
          goto LABEL_155;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 68) |= 0x200u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v56 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v55 = *(*this + v2++);
              *(this + 1) = v2;
              v56 = v55 != 0;
            }

            *(a1 + 64) = v56;
            goto LABEL_155;
          case 4:
            *(a1 + 68) |= 2u;
            v57 = *(this + 1);
            v2 = *(this + 2);
            v58 = *this;
            if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v2)
            {
              v93 = 0;
              v94 = 0;
              v61 = 0;
              if (v2 <= v57)
              {
                v2 = *(this + 1);
              }

              v95 = v2 - v57;
              v96 = (v58 + v57);
              v97 = v57 + 1;
              while (1)
              {
                if (!v95)
                {
                  v61 = 0;
                  *(this + 24) = 1;
                  goto LABEL_154;
                }

                v98 = v97;
                v99 = *v96;
                *(this + 1) = v98;
                v61 |= (v99 & 0x7F) << v93;
                if ((v99 & 0x80) == 0)
                {
                  break;
                }

                v93 += 7;
                --v95;
                ++v96;
                v97 = v98 + 1;
                v14 = v94++ > 8;
                if (v14)
                {
                  v61 = 0;
                  goto LABEL_153;
                }
              }

              if (*(this + 24))
              {
                v61 = 0;
              }

LABEL_153:
              v2 = v98;
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
                  v61 = 0;
                  break;
                }
              }
            }

LABEL_154:
            *(a1 + 16) = v61;
            goto LABEL_155;
          case 5:
            *(a1 + 68) |= 8u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v86 = 0;
              v87 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v88 = v2 - v23;
              v89 = (v24 + v23);
              v90 = v23 + 1;
              while (1)
              {
                if (!v88)
                {
                  v27 = 0;
                  *(this + 24) = 1;
                  goto LABEL_150;
                }

                v91 = v90;
                v92 = *v89;
                *(this + 1) = v91;
                v27 |= (v92 & 0x7F) << v86;
                if ((v92 & 0x80) == 0)
                {
                  break;
                }

                v86 += 7;
                --v88;
                ++v89;
                v90 = v91 + 1;
                v14 = v87++ > 8;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_149;
                }
              }

              if (*(this + 24))
              {
                v27 = 0;
              }

LABEL_149:
              v2 = v91;
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

LABEL_150:
            *(a1 + 32) = v27;
            goto LABEL_155;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v100 = 0;
        return v100 & 1;
      }

      v2 = *(this + 1);
LABEL_155:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_159:
  v100 = v4 ^ 1;
  return v100 & 1;
}

uint64_t sub_245D9FFF4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 68);
  if ((v4 & 0x10) != 0)
  {
    v5 = *(result + 40);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 68);
    if ((v4 & 0x100) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(result + 68) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 68);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = *(v3 + 64);
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 1) == 0)
  {
LABEL_7:
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    result = PB::Writer::write(this, *(v3 + 48));
    if ((*(v3 + 68) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 68);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    return result;
  }

LABEL_21:
  v11 = *(v3 + 52);

  return PB::Writer::write(this, v11);
}

uint64_t sub_245DA0144(uint64_t result)
{
  *(result + 48) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_2858CCE38;
  return result;
}

void sub_245DA016C(PB::Base *this)
{
  *this = &unk_2858CCE38;
  v4 = *(this + 2);
  v2 = (this + 16);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_245DF8934(v2, v3);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    sub_245DF8934(this + 8, v5);
  }

  PB::Base::~Base(this);
}

void sub_245DA01E4(PB::Base *a1)
{
  sub_245DA016C(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DA021C(uint64_t result, uint64_t a2)
{
  *(result + 8) = 0;
  *result = &unk_2858CCE38;
  *(result + 16) = 0;
  *(result + 48) = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  v2 = *(a2 + 48);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 36);
    *(result + 48) |= 4u;
    *(result + 36) = v4;
    v2 = *(a2 + 48);
    if ((v2 & 2) == 0)
    {
LABEL_7:
      if ((v2 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 48) & 2) == 0)
  {
    goto LABEL_7;
  }

  v5 = *(a2 + 32);
  *(result + 48) |= 2u;
  *(result + 32) = v5;
  v2 = *(a2 + 48);
  if ((v2 & 8) == 0)
  {
LABEL_8:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = *(a2 + 40);
  *(result + 48) |= 8u;
  *(result + 40) = v6;
  v2 = *(a2 + 48);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

LABEL_15:
  v7 = *(a2 + 44);
  *(result + 48) |= 0x10u;
  *(result + 44) = v7;
  if ((*(a2 + 48) & 1) == 0)
  {
    return result;
  }

LABEL_10:
  v3 = *(a2 + 24);
  *(result + 48) |= 1u;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_245DA03F4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  v5 = *(a1 + 48);
  if ((v5 & 2) != 0)
  {
    v9 = *(a1 + 32);
    PB::TextFormatter::format(this, "modeSemanticType");
    v5 = *(a1 + 48);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(a1 + 48) & 4) == 0)
  {
    goto LABEL_5;
  }

  v10 = *(a1 + 36);
  PB::TextFormatter::format(this, "modeUpdateReason");
  if ((*(a1 + 48) & 8) != 0)
  {
LABEL_6:
    v6 = *(a1 + 40);
    PB::TextFormatter::format(this, "modeUpdateSource");
  }

LABEL_7:
  if (*(a1 + 16))
  {
    PB::TextFormatter::format();
  }

  v7 = *(a1 + 48);
  if ((v7 & 0x10) != 0)
  {
    v8 = *(a1 + 44);
    PB::TextFormatter::format(this, "starting");
    v7 = *(a1 + 48);
  }

  if (v7)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 24));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DA0500(uint64_t a1, PB::Reader *this)
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
            goto LABEL_104;
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
      if ((v10 >> 3) <= 3)
      {
        switch(v22)
        {
          case 1:
            operator new();
          case 2:
            operator new();
          case 3:
            *(a1 + 48) |= 4u;
            v33 = *(this + 1);
            v32 = *(this + 2);
            v34 = *this;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
            {
              v67 = 0;
              v68 = 0;
              v37 = 0;
              v17 = v32 >= v33;
              v69 = v32 - v33;
              if (!v17)
              {
                v69 = 0;
              }

              v70 = (v34 + v33);
              v71 = v33 + 1;
              while (1)
              {
                if (!v69)
                {
                  LODWORD(v37) = 0;
                  *(this + 24) = 1;
                  goto LABEL_99;
                }

                v72 = *v70;
                *(this + 1) = v71;
                v37 |= (v72 & 0x7F) << v67;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v67 += 7;
                --v69;
                ++v70;
                ++v71;
                v14 = v68++ > 8;
                if (v14)
                {
LABEL_86:
                  LODWORD(v37) = 0;
                  goto LABEL_99;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v37) = 0;
              }
            }

            else
            {
              v35 = 0;
              v36 = 0;
              v37 = 0;
              v38 = (v34 + v33);
              v39 = v33 + 1;
              while (1)
              {
                *(this + 1) = v39;
                v40 = *v38++;
                v37 |= (v40 & 0x7F) << v35;
                if ((v40 & 0x80) == 0)
                {
                  break;
                }

                v35 += 7;
                ++v39;
                v14 = v36++ > 8;
                if (v14)
                {
                  goto LABEL_86;
                }
              }
            }

LABEL_99:
            *(a1 + 36) = v37;
            goto LABEL_100;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 48) |= 0x10u;
          v51 = *(this + 1);
          if (v51 >= *(this + 2))
          {
            v54 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v52 = v51 + 1;
            v53 = *(*this + v51);
            *(this + 1) = v52;
            v54 = v53 != 0;
          }

          *(a1 + 44) = v54;
          goto LABEL_100;
        }

        if (v22 == 7)
        {
          *(a1 + 48) |= 1u;
          v41 = *(this + 1);
          if (v41 <= 0xFFFFFFFFFFFFFFF7 && v41 + 8 <= *(this + 2))
          {
            *(a1 + 24) = *(*this + v41);
            *(this + 1) += 8;
          }

          else
          {
            *(this + 24) = 1;
          }

          goto LABEL_100;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 48) |= 2u;
          v43 = *(this + 1);
          v42 = *(this + 2);
          v44 = *this;
          if (v43 > 0xFFFFFFFFFFFFFFF5 || v43 + 10 > v42)
          {
            v55 = 0;
            v56 = 0;
            v47 = 0;
            v17 = v42 >= v43;
            v57 = v42 - v43;
            if (!v17)
            {
              v57 = 0;
            }

            v58 = (v44 + v43);
            v59 = v43 + 1;
            while (1)
            {
              if (!v57)
              {
                LODWORD(v47) = 0;
                *(this + 24) = 1;
                goto LABEL_93;
              }

              v60 = *v58;
              *(this + 1) = v59;
              v47 |= (v60 & 0x7F) << v55;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              --v57;
              ++v58;
              ++v59;
              v14 = v56++ > 8;
              if (v14)
              {
LABEL_68:
                LODWORD(v47) = 0;
                goto LABEL_93;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v47) = 0;
            }
          }

          else
          {
            v45 = 0;
            v46 = 0;
            v47 = 0;
            v48 = (v44 + v43);
            v49 = v43 + 1;
            while (1)
            {
              *(this + 1) = v49;
              v50 = *v48++;
              v47 |= (v50 & 0x7F) << v45;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              ++v49;
              v14 = v46++ > 8;
              if (v14)
              {
                goto LABEL_68;
              }
            }
          }

LABEL_93:
          *(a1 + 32) = v47;
          goto LABEL_100;
        }

        if (v22 == 5)
        {
          *(a1 + 48) |= 8u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v61 = 0;
            v62 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v63 = v23 - v24;
            if (!v17)
            {
              v63 = 0;
            }

            v64 = (v25 + v24);
            v65 = v24 + 1;
            while (1)
            {
              if (!v63)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_96;
              }

              v66 = *v64;
              *(this + 1) = v65;
              v28 |= (v66 & 0x7F) << v61;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              --v63;
              ++v64;
              ++v65;
              v14 = v62++ > 8;
              if (v14)
              {
LABEL_78:
                LODWORD(v28) = 0;
                goto LABEL_96;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }
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
                goto LABEL_78;
              }
            }
          }

LABEL_96:
          *(a1 + 40) = v28;
          goto LABEL_100;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v74 = 0;
        return v74 & 1;
      }

LABEL_100:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_104:
  v74 = v4 ^ 1;
  return v74 & 1;
}