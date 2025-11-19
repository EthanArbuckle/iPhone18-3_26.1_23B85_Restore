double sub_245DCC4F4(uint64_t a1)
{
  *a1 = &unk_2858CDD88;
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_245DCC528(PB::Base *this)
{
  *this = &unk_2858CDD88;
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

void sub_245DCC59C(PB::Base *a1)
{
  sub_245DCC528(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DCC5D4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CDD88;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 144) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v5 = *(a2 + 144);
  if ((v5 & 8) != 0)
  {
    v7 = *(a2 + 80);
    v6 = 8;
    *(a1 + 144) = 8;
    *(a1 + 80) = v7;
    v5 = *(a2 + 144);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((v5 & 0x20) != 0)
  {
LABEL_5:
    v8 = *(a2 + 92);
    v6 |= 0x20u;
    *(a1 + 144) = v6;
    *(a1 + 92) = v8;
    v5 = *(a2 + 144);
  }

LABEL_6:
  if ((v5 & 0x40) != 0)
  {
    v11 = *(a2 + 96);
    v6 |= 0x40u;
    *(a1 + 144) = v6;
    *(a1 + 96) = v11;
    v5 = *(a2 + 144);
    if ((v5 & 0x80) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  v12 = *(a2 + 100);
  v6 |= 0x80u;
  *(a1 + 144) = v6;
  *(a1 + 100) = v12;
  v5 = *(a2 + 144);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = *(a2 + 88);
  v6 |= 0x10u;
  *(a1 + 144) = v6;
  *(a1 + 88) = v13;
  v5 = *(a2 + 144);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v14 = *(a2 + 112);
  v6 |= 0x400u;
  *(a1 + 144) = v6;
  *(a1 + 112) = v14;
  v5 = *(a2 + 144);
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = *(a2 + 116);
  v6 |= 0x800u;
  *(a1 + 144) = v6;
  *(a1 + 116) = v15;
  v5 = *(a2 + 144);
  if ((v5 & 0x1000) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = *(a2 + 120);
  v6 |= 0x1000u;
  *(a1 + 144) = v6;
  *(a1 + 120) = v16;
  v5 = *(a2 + 144);
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  v17 = *(a2 + 108);
  v6 |= 0x200u;
  *(a1 + 144) = v6;
  *(a1 + 108) = v17;
  v5 = *(a2 + 144);
  if ((v5 & 0x100) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  v18 = *(a2 + 104);
  v6 |= 0x100u;
  *(a1 + 144) = v6;
  *(a1 + 104) = v18;
  v5 = *(a2 + 144);
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v19 = *(a2 + 128);
  v6 |= 0x4000u;
  *(a1 + 144) = v6;
  *(a1 + 128) = v19;
  v5 = *(a2 + 144);
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  v20 = *(a2 + 132);
  v6 |= 0x8000u;
  *(a1 + 144) = v6;
  *(a1 + 132) = v20;
  v5 = *(a2 + 144);
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  v21 = *(a2 + 136);
  v6 |= 0x10000u;
  *(a1 + 144) = v6;
  *(a1 + 136) = v21;
  v5 = *(a2 + 144);
  if ((v5 & 0x2000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  v22 = *(a2 + 124);
  v6 |= 0x2000u;
  *(a1 + 144) = v6;
  *(a1 + 124) = v22;
  v5 = *(a2 + 144);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  v6 |= 0x20000u;
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = v6;
  v5 = *(a2 + 144);
  if ((v5 & 4) == 0)
  {
LABEL_20:
    if ((v5 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  v23 = *(a2 + 72);
  v6 |= 4u;
  *(a1 + 144) = v6;
  *(a1 + 72) = v23;
  v5 = *(a2 + 144);
  if ((v5 & 1) == 0)
  {
LABEL_21:
    if ((v5 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_40:
  v24 = *(a2 + 56);
  v6 |= 1u;
  *(a1 + 144) = v6;
  *(a1 + 56) = v24;
  if ((*(a2 + 144) & 2) != 0)
  {
LABEL_22:
    v9 = *(a2 + 64);
    *(a1 + 144) = v6 | 2;
    *(a1 + 64) = v9;
  }

LABEL_23:
  if (a1 != a2)
  {
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  return a1;
}

uint64_t sub_245DCC868(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 144);
  if ((v5 & 0x10) != 0)
  {
    PB::TextFormatter::format(this, "combinedUnc", *(a1 + 88));
    v5 = *(a1 + 144);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "combinedX", *(a1 + 92));
  v5 = *(a1 + 144);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_31:
  PB::TextFormatter::format(this, "combinedY", *(a1 + 96));
  if ((*(a1 + 144) & 0x80) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "combinedZ", *(a1 + 100));
  }

LABEL_6:
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "inerAccelApproachMx", v8);
  }

  v9 = *(a1 + 144);
  if ((v9 & 0x100) != 0)
  {
    v16 = *(a1 + 104);
    PB::TextFormatter::format(this, "inerAccelCount");
    v9 = *(a1 + 144);
    if ((v9 & 0x200) == 0)
    {
LABEL_10:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_35;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_10;
  }

  PB::TextFormatter::format(this, "inertialApproachUnc", *(a1 + 108));
  v9 = *(a1 + 144);
  if ((v9 & 0x400) == 0)
  {
LABEL_11:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "inertialApproachX", *(a1 + 112));
  v9 = *(a1 + 144);
  if ((v9 & 0x800) == 0)
  {
LABEL_12:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "inertialApproachY", *(a1 + 116));
  v9 = *(a1 + 144);
  if ((v9 & 0x1000) == 0)
  {
LABEL_13:
    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "inertialApproachZ", *(a1 + 120));
  v9 = *(a1 + 144);
  if ((v9 & 1) == 0)
  {
LABEL_14:
    if ((v9 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  v17 = *(a1 + 56);
  PB::TextFormatter::format(this, "previousTimeAccel");
  v9 = *(a1 + 144);
  if ((v9 & 2) == 0)
  {
LABEL_15:
    if ((v9 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_39:
  v18 = *(a1 + 64);
  PB::TextFormatter::format(this, "previousTimeSag");
  if ((*(a1 + 144) & 4) != 0)
  {
LABEL_16:
    v10 = *(a1 + 72);
    PB::TextFormatter::format(this, "previousTimestamp");
  }

LABEL_17:
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "sagittalApproachMx", v13);
  }

  v14 = *(a1 + 144);
  if ((v14 & 0x2000) != 0)
  {
    PB::TextFormatter::format(this, "sagittalApproachUnc", *(a1 + 124));
    v14 = *(a1 + 144);
    if ((v14 & 0x4000) == 0)
    {
LABEL_21:
      if ((v14 & 0x8000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_43;
    }
  }

  else if ((v14 & 0x4000) == 0)
  {
    goto LABEL_21;
  }

  PB::TextFormatter::format(this, "sagittalApproachX", *(a1 + 128));
  v14 = *(a1 + 144);
  if ((v14 & 0x8000) == 0)
  {
LABEL_22:
    if ((v14 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "sagittalApproachY", *(a1 + 132));
  v14 = *(a1 + 144);
  if ((v14 & 0x10000) == 0)
  {
LABEL_23:
    if ((v14 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "sagittalApproachZ", *(a1 + 136));
  v14 = *(a1 + 144);
  if ((v14 & 0x20000) == 0)
  {
LABEL_24:
    if ((v14 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_45:
  v19 = *(a1 + 140);
  PB::TextFormatter::format(this, "sagittalCount");
  if ((*(a1 + 144) & 8) != 0)
  {
LABEL_25:
    v15 = *(a1 + 80);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_26:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DCCB54(uint64_t a1, PB::Reader *this)
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
        goto LABEL_252;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 144) |= 8u;
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
                goto LABEL_233;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
            }

            while (!v14);
LABEL_182:
            v28 = 0;
            goto LABEL_233;
          }

          v145 = 0;
          v146 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v147 = v23 - v24;
          if (!v17)
          {
            v147 = 0;
          }

          v148 = (v25 + v24);
          v149 = v24 + 1;
          while (2)
          {
            if (v147)
            {
              v150 = *v148;
              *(this + 1) = v149;
              v28 |= (v150 & 0x7F) << v145;
              if (v150 < 0)
              {
                v145 += 7;
                --v147;
                ++v148;
                ++v149;
                v14 = v146++ > 8;
                if (v14)
                {
                  goto LABEL_182;
                }

                continue;
              }

              if (*(this + 24))
              {
                v28 = 0;
              }
            }

            else
            {
              v28 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_233:
          *(a1 + 80) = v28;
          goto LABEL_248;
        case 2u:
          *(a1 + 144) |= 0x20u;
          v74 = *(this + 1);
          if (v74 > 0xFFFFFFFFFFFFFFFBLL || v74 + 4 > *(this + 2))
          {
            goto LABEL_245;
          }

          *(a1 + 92) = *(*this + v74);
          goto LABEL_247;
        case 3u:
          *(a1 + 144) |= 0x40u;
          v62 = *(this + 1);
          if (v62 > 0xFFFFFFFFFFFFFFFBLL || v62 + 4 > *(this + 2))
          {
            goto LABEL_245;
          }

          *(a1 + 96) = *(*this + v62);
          goto LABEL_247;
        case 4u:
          *(a1 + 144) |= 0x80u;
          v72 = *(this + 1);
          if (v72 > 0xFFFFFFFFFFFFFFFBLL || v72 + 4 > *(this + 2))
          {
            goto LABEL_245;
          }

          *(a1 + 100) = *(*this + v72);
          goto LABEL_247;
        case 5u:
          *(a1 + 144) |= 0x10u;
          v51 = *(this + 1);
          if (v51 > 0xFFFFFFFFFFFFFFFBLL || v51 + 4 > *(this + 2))
          {
            goto LABEL_245;
          }

          *(a1 + 88) = *(*this + v51);
          goto LABEL_247;
        case 6u:
          *(a1 + 144) |= 0x400u;
          v84 = *(this + 1);
          if (v84 > 0xFFFFFFFFFFFFFFFBLL || v84 + 4 > *(this + 2))
          {
            goto LABEL_245;
          }

          *(a1 + 112) = *(*this + v84);
          goto LABEL_247;
        case 7u:
          *(a1 + 144) |= 0x800u;
          v86 = *(this + 1);
          if (v86 > 0xFFFFFFFFFFFFFFFBLL || v86 + 4 > *(this + 2))
          {
            goto LABEL_245;
          }

          *(a1 + 116) = *(*this + v86);
          goto LABEL_247;
        case 8u:
          *(a1 + 144) |= 0x1000u;
          v73 = *(this + 1);
          if (v73 > 0xFFFFFFFFFFFFFFFBLL || v73 + 4 > *(this + 2))
          {
            goto LABEL_245;
          }

          *(a1 + 120) = *(*this + v73);
          goto LABEL_247;
        case 9u:
          *(a1 + 144) |= 0x200u;
          v104 = *(this + 1);
          if (v104 > 0xFFFFFFFFFFFFFFFBLL || v104 + 4 > *(this + 2))
          {
            goto LABEL_245;
          }

          *(a1 + 108) = *(*this + v104);
          goto LABEL_247;
        case 0xAu:
          *(a1 + 144) |= 0x100u;
          v54 = *(this + 1);
          v53 = *(this + 2);
          v55 = *this;
          if (v54 <= 0xFFFFFFFFFFFFFFF5 && v54 + 10 <= v53)
          {
            v56 = 0;
            v57 = 0;
            v58 = 0;
            v59 = (v55 + v54);
            v60 = v54 + 1;
            do
            {
              *(this + 1) = v60;
              v61 = *v59++;
              v58 |= (v61 & 0x7F) << v56;
              if ((v61 & 0x80) == 0)
              {
                goto LABEL_227;
              }

              v56 += 7;
              ++v60;
              v14 = v57++ > 8;
            }

            while (!v14);
LABEL_166:
            LODWORD(v58) = 0;
            goto LABEL_227;
          }

          v133 = 0;
          v134 = 0;
          v58 = 0;
          v17 = v53 >= v54;
          v135 = v53 - v54;
          if (!v17)
          {
            v135 = 0;
          }

          v136 = (v55 + v54);
          v137 = v54 + 1;
          while (2)
          {
            if (v135)
            {
              v138 = *v136;
              *(this + 1) = v137;
              v58 |= (v138 & 0x7F) << v133;
              if (v138 < 0)
              {
                v133 += 7;
                --v135;
                ++v136;
                ++v137;
                v14 = v134++ > 8;
                if (v14)
                {
                  goto LABEL_166;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v58) = 0;
              }
            }

            else
            {
              LODWORD(v58) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_227:
          *(a1 + 104) = v58;
          goto LABEL_248;
        case 0xBu:
          *(a1 + 144) |= 0x4000u;
          v103 = *(this + 1);
          if (v103 > 0xFFFFFFFFFFFFFFFBLL || v103 + 4 > *(this + 2))
          {
            goto LABEL_245;
          }

          *(a1 + 128) = *(*this + v103);
          goto LABEL_247;
        case 0xCu:
          *(a1 + 144) |= 0x8000u;
          v50 = *(this + 1);
          if (v50 > 0xFFFFFFFFFFFFFFFBLL || v50 + 4 > *(this + 2))
          {
            goto LABEL_245;
          }

          *(a1 + 132) = *(*this + v50);
          goto LABEL_247;
        case 0xDu:
          *(a1 + 144) |= 0x10000u;
          v52 = *(this + 1);
          if (v52 > 0xFFFFFFFFFFFFFFFBLL || v52 + 4 > *(this + 2))
          {
            goto LABEL_245;
          }

          *(a1 + 136) = *(*this + v52);
          goto LABEL_247;
        case 0xEu:
          *(a1 + 144) |= 0x2000u;
          v85 = *(this + 1);
          if (v85 > 0xFFFFFFFFFFFFFFFBLL || v85 + 4 > *(this + 2))
          {
            goto LABEL_245;
          }

          *(a1 + 124) = *(*this + v85);
          goto LABEL_247;
        case 0xFu:
          *(a1 + 144) |= 0x20000u;
          v42 = *(this + 1);
          v41 = *(this + 2);
          v43 = *this;
          if (v42 <= 0xFFFFFFFFFFFFFFF5 && v42 + 10 <= v41)
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v47 = (v43 + v42);
            v48 = v42 + 1;
            do
            {
              *(this + 1) = v48;
              v49 = *v47++;
              v46 |= (v49 & 0x7F) << v44;
              if ((v49 & 0x80) == 0)
              {
                goto LABEL_224;
              }

              v44 += 7;
              ++v48;
              v14 = v45++ > 8;
            }

            while (!v14);
LABEL_158:
            LODWORD(v46) = 0;
            goto LABEL_224;
          }

          v127 = 0;
          v128 = 0;
          v46 = 0;
          v17 = v41 >= v42;
          v129 = v41 - v42;
          if (!v17)
          {
            v129 = 0;
          }

          v130 = (v43 + v42);
          v131 = v42 + 1;
          while (2)
          {
            if (v129)
            {
              v132 = *v130;
              *(this + 1) = v131;
              v46 |= (v132 & 0x7F) << v127;
              if (v132 < 0)
              {
                v127 += 7;
                --v129;
                ++v130;
                ++v131;
                v14 = v128++ > 8;
                if (v14)
                {
                  goto LABEL_158;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v46) = 0;
              }
            }

            else
            {
              LODWORD(v46) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_224:
          *(a1 + 140) = v46;
          goto LABEL_248;
        case 0x10u:
          *(a1 + 144) |= 4u;
          v64 = *(this + 1);
          v63 = *(this + 2);
          v65 = *this;
          if (v64 <= 0xFFFFFFFFFFFFFFF5 && v64 + 10 <= v63)
          {
            v66 = 0;
            v67 = 0;
            v68 = 0;
            v69 = (v65 + v64);
            v70 = v64 + 1;
            do
            {
              *(this + 1) = v70;
              v71 = *v69++;
              v68 |= (v71 & 0x7F) << v66;
              if ((v71 & 0x80) == 0)
              {
                goto LABEL_230;
              }

              v66 += 7;
              ++v70;
              v14 = v67++ > 8;
            }

            while (!v14);
LABEL_174:
            v68 = 0;
            goto LABEL_230;
          }

          v139 = 0;
          v140 = 0;
          v68 = 0;
          v17 = v63 >= v64;
          v141 = v63 - v64;
          if (!v17)
          {
            v141 = 0;
          }

          v142 = (v65 + v64);
          v143 = v64 + 1;
          while (2)
          {
            if (v141)
            {
              v144 = *v142;
              *(this + 1) = v143;
              v68 |= (v144 & 0x7F) << v139;
              if (v144 < 0)
              {
                v139 += 7;
                --v141;
                ++v142;
                ++v143;
                v14 = v140++ > 8;
                if (v14)
                {
                  goto LABEL_174;
                }

                continue;
              }

              if (*(this + 24))
              {
                v68 = 0;
              }
            }

            else
            {
              v68 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_230:
          *(a1 + 72) = v68;
          goto LABEL_248;
        case 0x11u:
          *(a1 + 144) |= 1u;
          v33 = *(this + 1);
          v32 = *(this + 2);
          v34 = *this;
          if (v33 <= 0xFFFFFFFFFFFFFFF5 && v33 + 10 <= v32)
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = (v34 + v33);
            v39 = v33 + 1;
            do
            {
              *(this + 1) = v39;
              v40 = *v38++;
              v37 |= (v40 & 0x7F) << v35;
              if ((v40 & 0x80) == 0)
              {
                goto LABEL_221;
              }

              v35 += 7;
              ++v39;
              v14 = v36++ > 8;
            }

            while (!v14);
LABEL_150:
            v37 = 0;
            goto LABEL_221;
          }

          v121 = 0;
          v122 = 0;
          v37 = 0;
          v17 = v32 >= v33;
          v123 = v32 - v33;
          if (!v17)
          {
            v123 = 0;
          }

          v124 = (v34 + v33);
          v125 = v33 + 1;
          while (2)
          {
            if (v123)
            {
              v126 = *v124;
              *(this + 1) = v125;
              v37 |= (v126 & 0x7F) << v121;
              if (v126 < 0)
              {
                v121 += 7;
                --v123;
                ++v124;
                ++v125;
                v14 = v122++ > 8;
                if (v14)
                {
                  goto LABEL_150;
                }

                continue;
              }

              if (*(this + 24))
              {
                v37 = 0;
              }
            }

            else
            {
              v37 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_221:
          *(a1 + 56) = v37;
          goto LABEL_248;
        case 0x12u:
          *(a1 + 144) |= 2u;
          v76 = *(this + 1);
          v75 = *(this + 2);
          v77 = *this;
          if (v76 <= 0xFFFFFFFFFFFFFFF5 && v76 + 10 <= v75)
          {
            v78 = 0;
            v79 = 0;
            v80 = 0;
            v81 = (v77 + v76);
            v82 = v76 + 1;
            do
            {
              *(this + 1) = v82;
              v83 = *v81++;
              v80 |= (v83 & 0x7F) << v78;
              if ((v83 & 0x80) == 0)
              {
                goto LABEL_236;
              }

              v78 += 7;
              ++v82;
              v14 = v79++ > 8;
            }

            while (!v14);
LABEL_190:
            v80 = 0;
            goto LABEL_236;
          }

          v151 = 0;
          v152 = 0;
          v80 = 0;
          v17 = v75 >= v76;
          v153 = v75 - v76;
          if (!v17)
          {
            v153 = 0;
          }

          v154 = (v77 + v76);
          v155 = v76 + 1;
          while (2)
          {
            if (v153)
            {
              v156 = *v154;
              *(this + 1) = v155;
              v80 |= (v156 & 0x7F) << v151;
              if (v156 < 0)
              {
                v151 += 7;
                --v153;
                ++v154;
                ++v155;
                v14 = v152++ > 8;
                if (v14)
                {
                  goto LABEL_190;
                }

                continue;
              }

              if (*(this + 24))
              {
                v80 = 0;
              }
            }

            else
            {
              v80 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_236:
          *(a1 + 64) = v80;
          goto LABEL_248;
        case 0x13u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_254;
            }

            v87 = *(this + 1);
            v88 = *(this + 2);
            while (v87 < v88 && (*(this + 24) & 1) == 0)
            {
              v90 = *(a1 + 40);
              v89 = *(a1 + 48);
              if (v90 >= v89)
              {
                v92 = *(a1 + 32);
                v93 = v90 - v92;
                v94 = (v90 - v92) >> 2;
                v95 = v94 + 1;
                if ((v94 + 1) >> 62)
                {
                  goto LABEL_255;
                }

                v96 = v89 - v92;
                if (v96 >> 1 > v95)
                {
                  v95 = v96 >> 1;
                }

                if (v96 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v97 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v97 = v95;
                }

                if (v97)
                {
                  sub_245DF85BC(a1 + 32, v97);
                }

                v98 = (v90 - v92) >> 2;
                v99 = (4 * v94);
                v100 = (4 * v94 - 4 * v98);
                *v99 = 0;
                v91 = v99 + 1;
                memcpy(v100, v92, v93);
                v101 = *(a1 + 32);
                *(a1 + 32) = v100;
                *(a1 + 40) = v91;
                *(a1 + 48) = 0;
                if (v101)
                {
                  operator delete(v101);
                }
              }

              else
              {
                *v90 = 0;
                v91 = v90 + 4;
              }

              *(a1 + 40) = v91;
              v102 = *(this + 1);
              if (v102 > 0xFFFFFFFFFFFFFFFBLL || v102 + 4 > *(this + 2))
              {
                goto LABEL_195;
              }

              *(v91 - 1) = *(*this + v102);
              v88 = *(this + 2);
              v87 = *(this + 1) + 4;
              *(this + 1) = v87;
            }

            goto LABEL_196;
          }

          v158 = *(a1 + 40);
          v157 = *(a1 + 48);
          if (v158 >= v157)
          {
            v162 = *(a1 + 32);
            v163 = v158 - v162;
            v164 = (v158 - v162) >> 2;
            v165 = v164 + 1;
            if ((v164 + 1) >> 62)
            {
              goto LABEL_255;
            }

            v166 = v157 - v162;
            if (v166 >> 1 > v165)
            {
              v165 = v166 >> 1;
            }

            if (v166 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v167 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v167 = v165;
            }

            if (v167)
            {
              sub_245DF85BC(a1 + 32, v167);
            }

            v174 = (v158 - v162) >> 2;
            v175 = (4 * v164);
            v176 = (4 * v164 - 4 * v174);
            *v175 = 0;
            v159 = v175 + 1;
            memcpy(v176, v162, v163);
            v177 = *(a1 + 32);
            *(a1 + 32) = v176;
            *(a1 + 40) = v159;
            *(a1 + 48) = 0;
            if (v177)
            {
              operator delete(v177);
            }
          }

          else
          {
            *v158 = 0;
            v159 = v158 + 4;
          }

          *(a1 + 40) = v159;
          goto LABEL_243;
        case 0x14u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_254:
              v183 = 0;
              return v183 & 1;
            }

            v105 = *(this + 1);
            v106 = *(this + 2);
            while (v105 < v106 && (*(this + 24) & 1) == 0)
            {
              v108 = *(a1 + 16);
              v107 = *(a1 + 24);
              if (v108 >= v107)
              {
                v110 = *(a1 + 8);
                v111 = v108 - v110;
                v112 = (v108 - v110) >> 2;
                v113 = v112 + 1;
                if ((v112 + 1) >> 62)
                {
                  goto LABEL_255;
                }

                v114 = v107 - v110;
                if (v114 >> 1 > v113)
                {
                  v113 = v114 >> 1;
                }

                if (v114 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v115 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v115 = v113;
                }

                if (v115)
                {
                  sub_245DF85BC(a1 + 8, v115);
                }

                v116 = (v108 - v110) >> 2;
                v117 = (4 * v112);
                v118 = (4 * v112 - 4 * v116);
                *v117 = 0;
                v109 = v117 + 1;
                memcpy(v118, v110, v111);
                v119 = *(a1 + 8);
                *(a1 + 8) = v118;
                *(a1 + 16) = v109;
                *(a1 + 24) = 0;
                if (v119)
                {
                  operator delete(v119);
                }
              }

              else
              {
                *v108 = 0;
                v109 = v108 + 4;
              }

              *(a1 + 16) = v109;
              v120 = *(this + 1);
              if (v120 > 0xFFFFFFFFFFFFFFFBLL || v120 + 4 > *(this + 2))
              {
LABEL_195:
                *(this + 24) = 1;
                break;
              }

              *(v109 - 1) = *(*this + v120);
              v106 = *(this + 2);
              v105 = *(this + 1) + 4;
              *(this + 1) = v105;
            }

LABEL_196:
            PB::Reader::recallMark();
          }

          else
          {
            v161 = *(a1 + 16);
            v160 = *(a1 + 24);
            if (v161 >= v160)
            {
              v168 = *(a1 + 8);
              v169 = v161 - v168;
              v170 = (v161 - v168) >> 2;
              v171 = v170 + 1;
              if ((v170 + 1) >> 62)
              {
LABEL_255:
                sub_245DF85A4();
              }

              v172 = v160 - v168;
              if (v172 >> 1 > v171)
              {
                v171 = v172 >> 1;
              }

              if (v172 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v173 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v173 = v171;
              }

              if (v173)
              {
                sub_245DF85BC(a1 + 8, v173);
              }

              v178 = (v161 - v168) >> 2;
              v179 = (4 * v170);
              v180 = (4 * v170 - 4 * v178);
              *v179 = 0;
              v159 = v179 + 1;
              memcpy(v180, v168, v169);
              v181 = *(a1 + 8);
              *(a1 + 8) = v180;
              *(a1 + 16) = v159;
              *(a1 + 24) = 0;
              if (v181)
              {
                operator delete(v181);
              }
            }

            else
            {
              *v161 = 0;
              v159 = v161 + 4;
            }

            *(a1 + 16) = v159;
LABEL_243:
            v182 = *(this + 1);
            if (v182 <= 0xFFFFFFFFFFFFFFFBLL && v182 + 4 <= *(this + 2))
            {
              *(v159 - 1) = *(*this + v182);
LABEL_247:
              *(this + 1) += 4;
            }

            else
            {
LABEL_245:
              *(this + 24) = 1;
            }
          }

LABEL_248:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_252;
          }

          break;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_254;
          }

          goto LABEL_248;
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

LABEL_252:
  v183 = v4 ^ 1;
  return v183 & 1;
}

uint64_t sub_245DCD93C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 144);
  if ((v4 & 8) != 0)
  {
    v12 = *(result + 80);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 144);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 92));
  v4 = *(v3 + 144);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 144);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 144);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 144);
  if ((v4 & 0x400) == 0)
  {
LABEL_7:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 144);
  if ((v4 & 0x800) == 0)
  {
LABEL_8:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 144);
  if ((v4 & 0x1000) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 144);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 144);
  if ((v4 & 0x100) == 0)
  {
LABEL_11:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  v13 = *(v3 + 104);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 144);
  if ((v4 & 0x4000) == 0)
  {
LABEL_12:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 144);
  if ((v4 & 0x8000) == 0)
  {
LABEL_13:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 132));
  v4 = *(v3 + 144);
  if ((v4 & 0x10000) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 144);
  if ((v4 & 0x2000) == 0)
  {
LABEL_15:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 124));
  v4 = *(v3 + 144);
  if ((v4 & 0x20000) == 0)
  {
LABEL_16:
    if ((v4 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  v14 = *(v3 + 140);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 144);
  if ((v4 & 4) == 0)
  {
LABEL_17:
    if ((v4 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_43:
    v16 = *(v3 + 56);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 144) & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_42:
  v15 = *(v3 + 72);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 144);
  if (v4)
  {
    goto LABEL_43;
  }

LABEL_18:
  if ((v4 & 2) != 0)
  {
LABEL_19:
    v5 = *(v3 + 64);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_20:
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  while (v6 != v7)
  {
    v8 = *v6++;
    result = PB::Writer::write(this, v8);
  }

  v10 = *(v3 + 8);
  v9 = *(v3 + 16);
  while (v10 != v9)
  {
    v11 = *v10++;
    result = PB::Writer::write(this, v11);
  }

  return result;
}

uint64_t sub_245DCDBA0(uint64_t result)
{
  *result = &unk_2858CDDC0;
  *(result + 132) = 0;
  return result;
}

void sub_245DCDBC8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DCDC00(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CDDC0;
  *(result + 132) = 0;
  v2 = *(a2 + 132);
  if ((v2 & 0x4000000) != 0)
  {
    v4 = *(a2 + 126);
    v3 = 0x4000000;
    *(result + 132) = 0x4000000;
    *(result + 126) = v4;
    v2 = *(a2 + 132);
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x8000000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 127);
    v3 |= 0x8000000u;
    *(result + 132) = v3;
    *(result + 127) = v5;
    v2 = *(a2 + 132);
  }

LABEL_6:
  if ((v2 & 0x80000) != 0)
  {
    v6 = *(a2 + 104);
    v3 |= 0x80000u;
    *(result + 132) = v3;
    *(result + 104) = v6;
    v2 = *(a2 + 132);
    if ((v2 & 0x800000) == 0)
    {
LABEL_8:
      if ((v2 & 0x100000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_36;
    }
  }

  else if ((v2 & 0x800000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 120);
  v3 |= 0x800000u;
  *(result + 132) = v3;
  *(result + 120) = v7;
  v2 = *(a2 + 132);
  if ((v2 & 0x100000) == 0)
  {
LABEL_9:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  v8 = *(a2 + 108);
  v3 |= 0x100000u;
  *(result + 132) = v3;
  *(result + 108) = v8;
  v2 = *(a2 + 132);
  if ((v2 & 0x20000) == 0)
  {
LABEL_10:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  v9 = *(a2 + 96);
  v3 |= 0x20000u;
  *(result + 132) = v3;
  *(result + 96) = v9;
  v2 = *(a2 + 132);
  if ((v2 & 0x10000) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  v10 = *(a2 + 92);
  v3 |= 0x10000u;
  *(result + 132) = v3;
  *(result + 92) = v10;
  v2 = *(a2 + 132);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  v11 = *(a2 + 60);
  v3 |= 0x100u;
  *(result + 132) = v3;
  *(result + 60) = v11;
  v2 = *(a2 + 132);
  if ((v2 & 0x80) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  v12 = *(a2 + 56);
  v3 |= 0x80u;
  *(result + 132) = v3;
  *(result + 56) = v12;
  v2 = *(a2 + 132);
  if ((v2 & 0x40) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  v13 = *(a2 + 52);
  v3 |= 0x40u;
  *(result + 132) = v3;
  *(result + 52) = v13;
  v2 = *(a2 + 132);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  v14 = *(a2 + 48);
  v3 |= 0x20u;
  *(result + 132) = v3;
  *(result + 48) = v14;
  v2 = *(a2 + 132);
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  v15 = *(a2 + 72);
  v3 |= 0x800u;
  *(result + 132) = v3;
  *(result + 72) = v15;
  v2 = *(a2 + 132);
  if ((v2 & 0x4000) == 0)
  {
LABEL_17:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  v16 = *(a2 + 84);
  v3 |= 0x4000u;
  *(result + 132) = v3;
  *(result + 84) = v16;
  v2 = *(a2 + 132);
  if ((v2 & 0x200000) == 0)
  {
LABEL_18:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  v17 = *(a2 + 112);
  v3 |= 0x200000u;
  *(result + 132) = v3;
  *(result + 112) = v17;
  v2 = *(a2 + 132);
  if ((v2 & 0x40000) == 0)
  {
LABEL_19:
    if ((v2 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  v18 = *(a2 + 100);
  v3 |= 0x40000u;
  *(result + 132) = v3;
  *(result + 100) = v18;
  v2 = *(a2 + 132);
  if ((v2 & 8) == 0)
  {
LABEL_20:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  v19 = *(a2 + 32);
  v3 |= 8u;
  *(result + 132) = v3;
  *(result + 32) = v19;
  v2 = *(a2 + 132);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_21:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  v20 = *(a2 + 124);
  v3 |= 0x1000000u;
  *(result + 132) = v3;
  *(result + 124) = v20;
  v2 = *(a2 + 132);
  if ((v2 & 0x8000) == 0)
  {
LABEL_22:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  v21 = *(a2 + 88);
  v3 |= 0x8000u;
  *(result + 132) = v3;
  *(result + 88) = v21;
  v2 = *(a2 + 132);
  if ((v2 & 0x10) == 0)
  {
LABEL_23:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  v22 = *(a2 + 40);
  v3 |= 0x10u;
  *(result + 132) = v3;
  *(result + 40) = v22;
  v2 = *(a2 + 132);
  if ((v2 & 0x400000) == 0)
  {
LABEL_24:
    if ((v2 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  v23 = *(a2 + 116);
  v3 |= 0x400000u;
  *(result + 132) = v3;
  *(result + 116) = v23;
  v2 = *(a2 + 132);
  if ((v2 & 4) == 0)
  {
LABEL_25:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

LABEL_52:
  v24 = *(a2 + 24);
  v3 |= 4u;
  *(result + 132) = v3;
  *(result + 24) = v24;
  v2 = *(a2 + 132);
  if ((v2 & 0x2000) == 0)
  {
LABEL_26:
    if ((v2 & 2) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_54;
  }

LABEL_53:
  v25 = *(a2 + 80);
  v3 |= 0x2000u;
  *(result + 132) = v3;
  *(result + 80) = v25;
  v2 = *(a2 + 132);
  if ((v2 & 2) == 0)
  {
LABEL_27:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_55;
  }

LABEL_54:
  v26 = *(a2 + 16);
  v3 |= 2u;
  *(result + 132) = v3;
  *(result + 16) = v26;
  v2 = *(a2 + 132);
  if ((v2 & 0x1000) == 0)
  {
LABEL_28:
    if ((v2 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

LABEL_55:
  v27 = *(a2 + 76);
  v3 |= 0x1000u;
  *(result + 132) = v3;
  *(result + 76) = v27;
  v2 = *(a2 + 132);
  if ((v2 & 1) == 0)
  {
LABEL_29:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_57;
  }

LABEL_56:
  v28 = *(a2 + 8);
  v3 |= 1u;
  *(result + 132) = v3;
  *(result + 8) = v28;
  v2 = *(a2 + 132);
  if ((v2 & 0x200) == 0)
  {
LABEL_30:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_58;
  }

LABEL_57:
  v29 = *(a2 + 64);
  v3 |= 0x200u;
  *(result + 132) = v3;
  *(result + 64) = v29;
  v2 = *(a2 + 132);
  if ((v2 & 0x400) == 0)
  {
LABEL_31:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_59;
  }

LABEL_58:
  v30 = *(a2 + 68);
  v3 |= 0x400u;
  *(result + 132) = v3;
  *(result + 68) = v30;
  v2 = *(a2 + 132);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_32:
    if ((v2 & 0x2000000) == 0)
    {
      return result;
    }

LABEL_60:
    v32 = *(a2 + 125);
    *(result + 132) = v3 | 0x2000000;
    *(result + 125) = v32;
    return result;
  }

LABEL_59:
  v31 = *(a2 + 128);
  v3 |= 0x10000000u;
  *(result + 132) = v3;
  *(result + 128) = v31;
  if ((*(a2 + 132) & 0x2000000) != 0)
  {
    goto LABEL_60;
  }

  return result;
}

uint64_t sub_245DCDF58(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 132);
  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "configSuddenTransitionDurationThreshold", *(a1 + 48));
    v5 = *(a1 + 132);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "configTransitionEndSpeedThreshold", *(a1 + 52));
  v5 = *(a1 + 132);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "configTransitionStartSpeedThreshold", *(a1 + 56));
  v5 = *(a1 + 132);
  if ((v5 & 0x100) == 0)
  {
LABEL_5:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  v7 = *(a1 + 60);
  PB::TextFormatter::format(this, "deltaTriggerTime");
  v5 = *(a1 + 132);
  if ((v5 & 0x200) == 0)
  {
LABEL_6:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "gpsSpeedMetersPerSecond", *(a1 + 64));
  v5 = *(a1 + 132);
  if ((v5 & 0x400) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "gpsSpeedMilesPerHour", *(a1 + 68));
  v5 = *(a1 + 132);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  v8 = *(a1 + 8);
  PB::TextFormatter::format(this, "gpsTimestamp");
  v5 = *(a1 + 132);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "highSpeedMetersPerSecondThreshold", *(a1 + 72));
  v5 = *(a1 + 132);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  v9 = *(a1 + 124);
  PB::TextFormatter::format(this, "isGPSDetected");
  v5 = *(a1 + 132);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  v10 = *(a1 + 125);
  PB::TextFormatter::format(this, "isGPSDetectedDebug");
  v5 = *(a1 + 132);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  v11 = *(a1 + 126);
  PB::TextFormatter::format(this, "isSuddenTransitionDetected");
  v5 = *(a1 + 132);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  v12 = *(a1 + 127);
  PB::TextFormatter::format(this, "isTransitionDetected");
  v5 = *(a1 + 132);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "lastDetectedTransitionSpeedEnd", *(a1 + 76));
  v5 = *(a1 + 132);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "lastDetectedTransitionSpeedStart", *(a1 + 80));
  v5 = *(a1 + 132);
  if ((v5 & 2) == 0)
  {
LABEL_16:
    if ((v5 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  v13 = *(a1 + 16);
  PB::TextFormatter::format(this, "lastDetectedTransitionTimeEnd");
  v5 = *(a1 + 132);
  if ((v5 & 4) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  v14 = *(a1 + 24);
  PB::TextFormatter::format(this, "lastDetectedTransitionTimeStart");
  v5 = *(a1 + 132);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  v15 = *(a1 + 128);
  PB::TextFormatter::format(this, "loggedAtEpoch");
  v5 = *(a1 + 132);
  if ((v5 & 0x4000) == 0)
  {
LABEL_19:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "lowSpeedMetersPerSecondThresold", *(a1 + 84));
  v5 = *(a1 + 132);
  if ((v5 & 0x8000) == 0)
  {
LABEL_20:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  v16 = *(a1 + 88);
  PB::TextFormatter::format(this, "state");
  v5 = *(a1 + 132);
  if ((v5 & 0x10000) == 0)
  {
LABEL_21:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "streamEndSpeed", *(a1 + 92));
  v5 = *(a1 + 132);
  if ((v5 & 0x20000) == 0)
  {
LABEL_22:
    if ((v5 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "streamStartSpeed", *(a1 + 96));
  v5 = *(a1 + 132);
  if ((v5 & 8) == 0)
  {
LABEL_23:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  v17 = *(a1 + 32);
  PB::TextFormatter::format(this, "timestamp");
  v5 = *(a1 + 132);
  if ((v5 & 0x40000) == 0)
  {
LABEL_24:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "transitionBaseDuration", *(a1 + 100));
  v5 = *(a1 + 132);
  if ((v5 & 0x80000) == 0)
  {
LABEL_25:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "transitionDuration", *(a1 + 104));
  v5 = *(a1 + 132);
  if ((v5 & 0x100000) == 0)
  {
LABEL_26:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "transitionEndSpeed", *(a1 + 108));
  v5 = *(a1 + 132);
  if ((v5 & 0x200000) == 0)
  {
LABEL_27:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(this, "transitionEpsilonDuration", *(a1 + 112));
  v5 = *(a1 + 132);
  if ((v5 & 0x400000) == 0)
  {
LABEL_28:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(this, "transitionSpeedStart", *(a1 + 116));
  v5 = *(a1 + 132);
  if ((v5 & 0x800000) == 0)
  {
LABEL_29:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_61:
  PB::TextFormatter::format(this, "transitionStartSpeed", *(a1 + 120));
  if ((*(a1 + 132) & 0x10) != 0)
  {
LABEL_30:
    v6 = *(a1 + 40);
    PB::TextFormatter::format(this, "transitionTimeStart");
  }

LABEL_31:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DCE33C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_275;
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
      if ((v10 >> 3) <= 103)
      {
        if (v22 > 7)
        {
          if (v22 <= 10)
          {
            if (v22 == 8)
            {
              *(a1 + 132) |= 0x100u;
              v79 = *(this + 1);
              v2 = *(this + 2);
              v80 = *this;
              if (v79 > 0xFFFFFFFFFFFFFFF5 || v79 + 10 > v2)
              {
                v103 = 0;
                v104 = 0;
                v83 = 0;
                if (v2 <= v79)
                {
                  v2 = *(this + 1);
                }

                v105 = v2 - v79;
                v106 = (v80 + v79);
                v107 = v79 + 1;
                while (1)
                {
                  if (!v105)
                  {
                    LODWORD(v83) = 0;
                    *(this + 24) = 1;
                    goto LABEL_257;
                  }

                  v108 = v107;
                  v109 = *v106;
                  *(this + 1) = v108;
                  v83 |= (v109 & 0x7F) << v103;
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
                    LODWORD(v83) = 0;
                    goto LABEL_256;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v83) = 0;
                }

LABEL_256:
                v2 = v108;
              }

              else
              {
                v81 = 0;
                v82 = 0;
                v83 = 0;
                v84 = (v80 + v79);
                v85 = v79 + 1;
                while (1)
                {
                  v2 = v85;
                  *(this + 1) = v85;
                  v86 = *v84++;
                  v83 |= (v86 & 0x7F) << v81;
                  if ((v86 & 0x80) == 0)
                  {
                    break;
                  }

                  v81 += 7;
                  ++v85;
                  v14 = v82++ > 8;
                  if (v14)
                  {
                    LODWORD(v83) = 0;
                    break;
                  }
                }
              }

LABEL_257:
              *(a1 + 60) = v83;
              goto LABEL_236;
            }

            if (v22 == 9)
            {
              *(a1 + 132) |= 0x80u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_163;
              }

              *(a1 + 56) = *(*this + v2);
            }

            else
            {
              *(a1 + 132) |= 0x40u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_163;
              }

              *(a1 + 52) = *(*this + v2);
            }

            goto LABEL_235;
          }

          if (v22 > 101)
          {
            if (v22 == 102)
            {
              *(a1 + 132) |= 0x4000u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_163;
              }

              *(a1 + 84) = *(*this + v2);
              goto LABEL_235;
            }

            if (v22 == 103)
            {
              *(a1 + 132) |= 0x200000u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_163;
              }

              *(a1 + 112) = *(*this + v2);
              goto LABEL_235;
            }
          }

          else
          {
            if (v22 == 11)
            {
              *(a1 + 132) |= 0x20u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_163;
              }

              *(a1 + 48) = *(*this + v2);
              goto LABEL_235;
            }

            if (v22 == 101)
            {
              *(a1 + 132) |= 0x800u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_163;
              }

              *(a1 + 72) = *(*this + v2);
              goto LABEL_235;
            }
          }
        }

        else
        {
          if (v22 > 3)
          {
            if (v22 > 5)
            {
              if (v22 == 6)
              {
                *(a1 + 132) |= 0x20000u;
                v2 = *(this + 1);
                if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
                {
                  goto LABEL_163;
                }

                *(a1 + 96) = *(*this + v2);
              }

              else
              {
                *(a1 + 132) |= 0x10000u;
                v2 = *(this + 1);
                if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
                {
                  goto LABEL_163;
                }

                *(a1 + 92) = *(*this + v2);
              }
            }

            else if (v22 == 4)
            {
              *(a1 + 132) |= 0x800000u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_163;
              }

              *(a1 + 120) = *(*this + v2);
            }

            else
            {
              *(a1 + 132) |= 0x100000u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_163;
              }

              *(a1 + 108) = *(*this + v2);
            }

            goto LABEL_235;
          }

          switch(v22)
          {
            case 1:
              *(a1 + 132) |= 0x4000000u;
              v2 = *(this + 1);
              if (v2 >= *(this + 2))
              {
                v78 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v77 = *(*this + v2++);
                *(this + 1) = v2;
                v78 = v77 != 0;
              }

              *(a1 + 126) = v78;
              goto LABEL_236;
            case 2:
              *(a1 + 132) |= 0x8000000u;
              v2 = *(this + 1);
              if (v2 >= *(this + 2))
              {
                v68 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v67 = *(*this + v2++);
                *(this + 1) = v2;
                v68 = v67 != 0;
              }

              *(a1 + 127) = v68;
              goto LABEL_236;
            case 3:
              *(a1 + 132) |= 0x80000u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_163;
              }

              *(a1 + 104) = *(*this + v2);
              goto LABEL_235;
          }
        }
      }

      else if (v22 <= 206)
      {
        if (v22 > 202)
        {
          if (v22 <= 204)
          {
            if (v22 == 203)
            {
              *(a1 + 132) |= 0x8000u;
              v59 = *(this + 1);
              v2 = *(this + 2);
              v60 = *this;
              if (v59 > 0xFFFFFFFFFFFFFFF5 || v59 + 10 > v2)
              {
                v89 = 0;
                v90 = 0;
                v63 = 0;
                if (v2 <= v59)
                {
                  v2 = *(this + 1);
                }

                v91 = v2 - v59;
                v92 = (v60 + v59);
                v93 = v59 + 1;
                while (1)
                {
                  if (!v91)
                  {
                    LODWORD(v63) = 0;
                    *(this + 24) = 1;
                    goto LABEL_249;
                  }

                  v94 = v93;
                  v95 = *v92;
                  *(this + 1) = v94;
                  v63 |= (v95 & 0x7F) << v89;
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
                    LODWORD(v63) = 0;
                    goto LABEL_248;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v63) = 0;
                }

LABEL_248:
                v2 = v94;
              }

              else
              {
                v61 = 0;
                v62 = 0;
                v63 = 0;
                v64 = (v60 + v59);
                v65 = v59 + 1;
                while (1)
                {
                  v2 = v65;
                  *(this + 1) = v65;
                  v66 = *v64++;
                  v63 |= (v66 & 0x7F) << v61;
                  if ((v66 & 0x80) == 0)
                  {
                    break;
                  }

                  v61 += 7;
                  ++v65;
                  v14 = v62++ > 8;
                  if (v14)
                  {
                    LODWORD(v63) = 0;
                    break;
                  }
                }
              }

LABEL_249:
              *(a1 + 88) = v63;
            }

            else
            {
              *(a1 + 132) |= 0x10u;
              v31 = *(this + 1);
              v2 = *(this + 2);
              v32 = *this;
              if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
              {
                v110 = 0;
                v111 = 0;
                v35 = 0;
                if (v2 <= v31)
                {
                  v2 = *(this + 1);
                }

                v112 = v2 - v31;
                v113 = (v32 + v31);
                v114 = v31 + 1;
                while (1)
                {
                  if (!v112)
                  {
                    v35 = 0;
                    *(this + 24) = 1;
                    goto LABEL_261;
                  }

                  v115 = v114;
                  v116 = *v113;
                  *(this + 1) = v115;
                  v35 |= (v116 & 0x7F) << v110;
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
                    v35 = 0;
                    goto LABEL_260;
                  }
                }

                if (*(this + 24))
                {
                  v35 = 0;
                }

LABEL_260:
                v2 = v115;
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

LABEL_261:
              *(a1 + 40) = v35;
            }

            goto LABEL_236;
          }

          if (v22 != 205)
          {
            *(a1 + 132) |= 4u;
            v41 = *(this + 1);
            v2 = *(this + 2);
            v42 = *this;
            if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
            {
              v117 = 0;
              v118 = 0;
              v45 = 0;
              if (v2 <= v41)
              {
                v2 = *(this + 1);
              }

              v119 = v2 - v41;
              v120 = (v42 + v41);
              v121 = v41 + 1;
              while (1)
              {
                if (!v119)
                {
                  v45 = 0;
                  *(this + 24) = 1;
                  goto LABEL_265;
                }

                v122 = v121;
                v123 = *v120;
                *(this + 1) = v122;
                v45 |= (v123 & 0x7F) << v117;
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
                  v45 = 0;
                  goto LABEL_264;
                }
              }

              if (*(this + 24))
              {
                v45 = 0;
              }

LABEL_264:
              v2 = v122;
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
                  v45 = 0;
                  break;
                }
              }
            }

LABEL_265:
            *(a1 + 24) = v45;
            goto LABEL_236;
          }

          *(a1 + 132) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_163;
          }

          *(a1 + 116) = *(*this + v2);
          goto LABEL_235;
        }

        switch(v22)
        {
          case 0x68:
            *(a1 + 132) |= 0x40000u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_163;
            }

            *(a1 + 100) = *(*this + v2);
            goto LABEL_235;
          case 0xC9:
            *(a1 + 132) |= 8u;
            v69 = *(this + 1);
            v2 = *(this + 2);
            v70 = *this;
            if (v69 > 0xFFFFFFFFFFFFFFF5 || v69 + 10 > v2)
            {
              v96 = 0;
              v97 = 0;
              v73 = 0;
              if (v2 <= v69)
              {
                v2 = *(this + 1);
              }

              v98 = v2 - v69;
              v99 = (v70 + v69);
              v100 = v69 + 1;
              while (1)
              {
                if (!v98)
                {
                  v73 = 0;
                  *(this + 24) = 1;
                  goto LABEL_253;
                }

                v101 = v100;
                v102 = *v99;
                *(this + 1) = v101;
                v73 |= (v102 & 0x7F) << v96;
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
                  v73 = 0;
                  goto LABEL_252;
                }
              }

              if (*(this + 24))
              {
                v73 = 0;
              }

LABEL_252:
              v2 = v101;
            }

            else
            {
              v71 = 0;
              v72 = 0;
              v73 = 0;
              v74 = (v70 + v69);
              v75 = v69 + 1;
              while (1)
              {
                v2 = v75;
                *(this + 1) = v75;
                v76 = *v74++;
                v73 |= (v76 & 0x7F) << v71;
                if ((v76 & 0x80) == 0)
                {
                  break;
                }

                v71 += 7;
                ++v75;
                v14 = v72++ > 8;
                if (v14)
                {
                  v73 = 0;
                  break;
                }
              }
            }

LABEL_253:
            *(a1 + 32) = v73;
            goto LABEL_236;
          case 0xCA:
            *(a1 + 132) |= 0x1000000u;
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

            *(a1 + 124) = v40;
            goto LABEL_236;
        }
      }

      else if (v22 > 301)
      {
        if (v22 <= 303)
        {
          if (v22 == 302)
          {
            *(a1 + 132) |= 0x200u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_163;
            }

            *(a1 + 64) = *(*this + v2);
          }

          else
          {
            *(a1 + 132) |= 0x400u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_163;
            }

            *(a1 + 68) = *(*this + v2);
          }

          goto LABEL_235;
        }

        if (v22 == 304)
        {
          *(a1 + 132) |= 0x10000000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v88 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v87 = *(*this + v2++);
            *(this + 1) = v2;
            v88 = v87 != 0;
          }

          *(a1 + 128) = v88;
          goto LABEL_236;
        }

        if (v22 == 305)
        {
          *(a1 + 132) |= 0x2000000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v58 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v57 = *(*this + v2++);
            *(this + 1) = v2;
            v58 = v57 != 0;
          }

          *(a1 + 125) = v58;
          goto LABEL_236;
        }
      }

      else
      {
        if (v22 <= 208)
        {
          if (v22 != 207)
          {
            *(a1 + 132) |= 2u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v124 = 0;
              v125 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v126 = v2 - v23;
              v127 = (v24 + v23);
              v128 = v23 + 1;
              while (1)
              {
                if (!v126)
                {
                  v27 = 0;
                  *(this + 24) = 1;
                  goto LABEL_269;
                }

                v129 = v128;
                v130 = *v127;
                *(this + 1) = v129;
                v27 |= (v130 & 0x7F) << v124;
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
                  v27 = 0;
                  goto LABEL_268;
                }
              }

              if (*(this + 24))
              {
                v27 = 0;
              }

LABEL_268:
              v2 = v129;
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

LABEL_269:
            *(a1 + 16) = v27;
            goto LABEL_236;
          }

          *(a1 + 132) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_163:
            *(this + 24) = 1;
            goto LABEL_236;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_235;
        }

        if (v22 == 209)
        {
          *(a1 + 132) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_163;
          }

          *(a1 + 76) = *(*this + v2);
LABEL_235:
          v2 = *(this + 1) + 4;
          *(this + 1) = v2;
          goto LABEL_236;
        }

        if (v22 == 301)
        {
          *(a1 + 132) |= 1u;
          v49 = *(this + 1);
          v2 = *(this + 2);
          v50 = *this;
          if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
          {
            v131 = 0;
            v132 = 0;
            v53 = 0;
            if (v2 <= v49)
            {
              v2 = *(this + 1);
            }

            v133 = v2 - v49;
            v134 = (v50 + v49);
            v135 = v49 + 1;
            while (1)
            {
              if (!v133)
              {
                v53 = 0;
                *(this + 24) = 1;
                goto LABEL_273;
              }

              v136 = v135;
              v137 = *v134;
              *(this + 1) = v136;
              v53 |= (v137 & 0x7F) << v131;
              if ((v137 & 0x80) == 0)
              {
                break;
              }

              v131 += 7;
              --v133;
              ++v134;
              v135 = v136 + 1;
              v14 = v132++ > 8;
              if (v14)
              {
                v53 = 0;
                goto LABEL_272;
              }
            }

            if (*(this + 24))
            {
              v53 = 0;
            }

LABEL_272:
            v2 = v136;
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
                v53 = 0;
                break;
              }
            }
          }

LABEL_273:
          *(a1 + 8) = v53;
          goto LABEL_236;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v138 = 0;
        return v138 & 1;
      }

      v2 = *(this + 1);
LABEL_236:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_275:
  v138 = v4 ^ 1;
  return v138 & 1;
}

uint64_t sub_245DCF22C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 132);
  if ((v4 & 0x4000000) != 0)
  {
    v5 = *(result + 126);
    result = PB::Writer::write(this);
    v4 = *(v3 + 132);
    if ((v4 & 0x8000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v4 & 0x8000000) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 127);
  result = PB::Writer::write(this);
  v4 = *(v3 + 132);
  if ((v4 & 0x80000) == 0)
  {
LABEL_4:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 132);
  if ((v4 & 0x800000) == 0)
  {
LABEL_5:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 132);
  if ((v4 & 0x100000) == 0)
  {
LABEL_6:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 132);
  if ((v4 & 0x20000) == 0)
  {
LABEL_7:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 132);
  if ((v4 & 0x10000) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 92));
  v4 = *(v3 + 132);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  v7 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 132);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 132);
  if ((v4 & 0x40) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 132);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 132);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 132);
  if ((v4 & 0x4000) == 0)
  {
LABEL_14:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 132);
  if ((v4 & 0x200000) == 0)
  {
LABEL_15:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 132);
  if ((v4 & 0x40000) == 0)
  {
LABEL_16:
    if ((v4 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 132);
  if ((v4 & 8) == 0)
  {
LABEL_17:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  v8 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 132);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_18:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  v9 = *(v3 + 124);
  result = PB::Writer::write(this);
  v4 = *(v3 + 132);
  if ((v4 & 0x8000) == 0)
  {
LABEL_19:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  v10 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 132);
  if ((v4 & 0x10) == 0)
  {
LABEL_20:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  v11 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 132);
  if ((v4 & 0x400000) == 0)
  {
LABEL_21:
    if ((v4 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 132);
  if ((v4 & 4) == 0)
  {
LABEL_22:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  v12 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 132);
  if ((v4 & 0x2000) == 0)
  {
LABEL_23:
    if ((v4 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 132);
  if ((v4 & 2) == 0)
  {
LABEL_24:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  v13 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 132);
  if ((v4 & 0x1000) == 0)
  {
LABEL_25:
    if ((v4 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 132);
  if ((v4 & 1) == 0)
  {
LABEL_26:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  v14 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 132);
  if ((v4 & 0x200) == 0)
  {
LABEL_27:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 132);
  if ((v4 & 0x400) == 0)
  {
LABEL_28:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_58:
    v15 = *(v3 + 128);
    result = PB::Writer::write(this);
    if ((*(v3 + 132) & 0x2000000) == 0)
    {
      return result;
    }

    goto LABEL_59;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 132);
  if ((v4 & 0x10000000) != 0)
  {
    goto LABEL_58;
  }

LABEL_29:
  if ((v4 & 0x2000000) == 0)
  {
    return result;
  }

LABEL_59:
  v16 = *(v3 + 125);

  return PB::Writer::write(this);
}

uint64_t sub_245DCF590(uint64_t result)
{
  *result = &unk_2858CDDF8;
  *(result + 64) = 0;
  return result;
}

void sub_245DCF5B8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DCF5F0(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CDDF8;
  *(result + 64) = 0;
  v2 = *(a2 + 64);
  if ((v2 & 0x40) != 0)
  {
    v4 = *(a2 + 44);
    v3 = 64;
    *(result + 64) = 64;
    *(result + 44) = v4;
    v2 = *(a2 + 64);
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
    v5 = *(a2 + 36);
    v3 |= 0x10u;
    *(result + 64) = v3;
    *(result + 36) = v5;
    v2 = *(a2 + 64);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    v6 = *(a2 + 40);
    v3 |= 0x20u;
    *(result + 64) = v3;
    *(result + 40) = v6;
    v2 = *(a2 + 64);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 32);
  v3 |= 8u;
  *(result + 64) = v3;
  *(result + 32) = v7;
  v2 = *(a2 + 64);
  if ((v2 & 4) == 0)
  {
LABEL_9:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = *(a2 + 24);
  v3 |= 4u;
  *(result + 64) = v3;
  *(result + 24) = v8;
  v2 = *(a2 + 64);
  if ((v2 & 0x800) == 0)
  {
LABEL_10:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a2 + 61);
  v3 |= 0x800u;
  *(result + 64) = v3;
  *(result + 61) = v9;
  v2 = *(a2 + 64);
  if ((v2 & 0x400) == 0)
  {
LABEL_11:
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(a2 + 60);
  v3 |= 0x400u;
  *(result + 64) = v3;
  *(result + 60) = v10;
  v2 = *(a2 + 64);
  if ((v2 & 1) == 0)
  {
LABEL_12:
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(a2 + 8);
  v3 |= 1u;
  *(result + 64) = v3;
  *(result + 8) = v11;
  v2 = *(a2 + 64);
  if ((v2 & 2) == 0)
  {
LABEL_13:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = *(a2 + 16);
  v3 |= 2u;
  *(result + 64) = v3;
  *(result + 16) = v12;
  v2 = *(a2 + 64);
  if ((v2 & 0x200) == 0)
  {
LABEL_14:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = *(a2 + 56);
  v3 |= 0x200u;
  *(result + 64) = v3;
  *(result + 56) = v13;
  v2 = *(a2 + 64);
  if ((v2 & 0x100) == 0)
  {
LABEL_15:
    if ((v2 & 0x80) == 0)
    {
      return result;
    }

LABEL_26:
    v15 = *(a2 + 48);
    *(result + 64) = v3 | 0x80;
    *(result + 48) = v15;
    return result;
  }

LABEL_25:
  v14 = *(a2 + 52);
  v3 |= 0x100u;
  *(result + 64) = v3;
  *(result + 52) = v14;
  if ((*(a2 + 64) & 0x80) != 0)
  {
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_245DCF76C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(this, "autocorrelationRangeValCriticalThreshold", *(a1 + 32));
    v5 = *(a1 + 64);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "autocorrelationRangeValThreshold", *(a1 + 36));
  v5 = *(a1 + 64);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = *(a1 + 40);
  PB::TextFormatter::format(this, "autocorrelationTimeVariationCriticalThreshold");
  v5 = *(a1 + 64);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a1 + 44);
  PB::TextFormatter::format(this, "autocorrelationTimeVariationThreshold");
  v5 = *(a1 + 64);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(a1 + 8);
  PB::TextFormatter::format(this, "epochFirstTimestamp");
  v5 = *(a1 + 64);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a1 + 16);
  PB::TextFormatter::format(this, "epochLastTimestamp");
  v5 = *(a1 + 64);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(a1 + 60);
  PB::TextFormatter::format(this, "isCriticalFP");
  v5 = *(a1 + 64);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = *(a1 + 61);
  PB::TextFormatter::format(this, "isPeriodic");
  v5 = *(a1 + 64);
  if ((v5 & 0x80) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = *(a1 + 48);
  PB::TextFormatter::format(this, "numDmSamplesEpoch");
  v5 = *(a1 + 64);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "rangeVal", *(a1 + 52));
  v5 = *(a1 + 64);
  if ((v5 & 0x200) == 0)
  {
LABEL_12:
    if ((v5 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  v14 = *(a1 + 56);
  PB::TextFormatter::format(this, "timeVariation");
  if ((*(a1 + 64) & 4) != 0)
  {
LABEL_13:
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_14:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DCF930(uint64_t a1, PB::Reader *this)
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
            goto LABEL_202;
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
      if ((v10 >> 3) > 202)
      {
        if (v22 > 302)
        {
          switch(v22)
          {
            case 0x12F:
              *(a1 + 64) |= 0x200u;
              v59 = *(this + 1);
              v2 = *(this + 2);
              v60 = *this;
              if (v59 > 0xFFFFFFFFFFFFFFF5 || v59 + 10 > v2)
              {
                v111 = 0;
                v112 = 0;
                v63 = 0;
                if (v2 <= v59)
                {
                  v2 = *(this + 1);
                }

                v113 = v2 - v59;
                v114 = (v60 + v59);
                v115 = v59 + 1;
                while (1)
                {
                  if (!v113)
                  {
                    LODWORD(v63) = 0;
                    *(this + 24) = 1;
                    goto LABEL_189;
                  }

                  v116 = v115;
                  v117 = *v114;
                  *(this + 1) = v116;
                  v63 |= (v117 & 0x7F) << v111;
                  if ((v117 & 0x80) == 0)
                  {
                    break;
                  }

                  v111 += 7;
                  --v113;
                  ++v114;
                  v115 = v116 + 1;
                  v14 = v112++ > 8;
                  if (v14)
                  {
                    LODWORD(v63) = 0;
                    goto LABEL_188;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v63) = 0;
                }

LABEL_188:
                v2 = v116;
              }

              else
              {
                v61 = 0;
                v62 = 0;
                v63 = 0;
                v64 = (v60 + v59);
                v65 = v59 + 1;
                while (1)
                {
                  v2 = v65;
                  *(this + 1) = v65;
                  v66 = *v64++;
                  v63 |= (v66 & 0x7F) << v61;
                  if ((v66 & 0x80) == 0)
                  {
                    break;
                  }

                  v61 += 7;
                  ++v65;
                  v14 = v62++ > 8;
                  if (v14)
                  {
                    LODWORD(v63) = 0;
                    break;
                  }
                }
              }

LABEL_189:
              *(a1 + 56) = v63;
              goto LABEL_198;
            case 0x130:
              *(a1 + 64) |= 0x100u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
LABEL_98:
                *(this + 24) = 1;
                goto LABEL_198;
              }

              *(a1 + 52) = *(*this + v2);
              goto LABEL_162;
            case 0x131:
              *(a1 + 64) |= 0x80u;
              v41 = *(this + 1);
              v2 = *(this + 2);
              v42 = *this;
              if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
              {
                v97 = 0;
                v98 = 0;
                v45 = 0;
                if (v2 <= v41)
                {
                  v2 = *(this + 1);
                }

                v99 = v2 - v41;
                v100 = (v42 + v41);
                v101 = v41 + 1;
                while (1)
                {
                  if (!v99)
                  {
                    LODWORD(v45) = 0;
                    *(this + 24) = 1;
                    goto LABEL_181;
                  }

                  v102 = v101;
                  v103 = *v100;
                  *(this + 1) = v102;
                  v45 |= (v103 & 0x7F) << v97;
                  if ((v103 & 0x80) == 0)
                  {
                    break;
                  }

                  v97 += 7;
                  --v99;
                  ++v100;
                  v101 = v102 + 1;
                  v14 = v98++ > 8;
                  if (v14)
                  {
                    LODWORD(v45) = 0;
                    goto LABEL_180;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v45) = 0;
                }

LABEL_180:
                v2 = v102;
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

LABEL_181:
              *(a1 + 48) = v45;
              goto LABEL_198;
          }
        }

        else
        {
          switch(v22)
          {
            case 0xCB:
              *(a1 + 64) |= 0x400u;
              v2 = *(this + 1);
              if (v2 >= *(this + 2))
              {
                v58 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v57 = *(*this + v2++);
                *(this + 1) = v2;
                v58 = v57 != 0;
              }

              *(a1 + 60) = v58;
              goto LABEL_198;
            case 0x12D:
              *(a1 + 64) |= 1u;
              v67 = *(this + 1);
              v2 = *(this + 2);
              v68 = *this;
              if (v67 > 0xFFFFFFFFFFFFFFF5 || v67 + 10 > v2)
              {
                v118 = 0;
                v119 = 0;
                v71 = 0;
                if (v2 <= v67)
                {
                  v2 = *(this + 1);
                }

                v120 = v2 - v67;
                v121 = (v68 + v67);
                v122 = v67 + 1;
                while (1)
                {
                  if (!v120)
                  {
                    v71 = 0;
                    *(this + 24) = 1;
                    goto LABEL_193;
                  }

                  v123 = v122;
                  v124 = *v121;
                  *(this + 1) = v123;
                  v71 |= (v124 & 0x7F) << v118;
                  if ((v124 & 0x80) == 0)
                  {
                    break;
                  }

                  v118 += 7;
                  --v120;
                  ++v121;
                  v122 = v123 + 1;
                  v14 = v119++ > 8;
                  if (v14)
                  {
                    v71 = 0;
                    goto LABEL_192;
                  }
                }

                if (*(this + 24))
                {
                  v71 = 0;
                }

LABEL_192:
                v2 = v123;
              }

              else
              {
                v69 = 0;
                v70 = 0;
                v71 = 0;
                v72 = (v68 + v67);
                v73 = v67 + 1;
                while (1)
                {
                  v2 = v73;
                  *(this + 1) = v73;
                  v74 = *v72++;
                  v71 |= (v74 & 0x7F) << v69;
                  if ((v74 & 0x80) == 0)
                  {
                    break;
                  }

                  v69 += 7;
                  ++v73;
                  v14 = v70++ > 8;
                  if (v14)
                  {
                    v71 = 0;
                    break;
                  }
                }
              }

LABEL_193:
              *(a1 + 8) = v71;
              goto LABEL_198;
            case 0x12E:
              *(a1 + 64) |= 2u;
              v31 = *(this + 1);
              v2 = *(this + 2);
              v32 = *this;
              if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
              {
                v90 = 0;
                v91 = 0;
                v35 = 0;
                if (v2 <= v31)
                {
                  v2 = *(this + 1);
                }

                v92 = v2 - v31;
                v93 = (v32 + v31);
                v94 = v31 + 1;
                while (1)
                {
                  if (!v92)
                  {
                    v35 = 0;
                    *(this + 24) = 1;
                    goto LABEL_177;
                  }

                  v95 = v94;
                  v96 = *v93;
                  *(this + 1) = v95;
                  v35 |= (v96 & 0x7F) << v90;
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
                    v35 = 0;
                    goto LABEL_176;
                  }
                }

                if (*(this + 24))
                {
                  v35 = 0;
                }

LABEL_176:
                v2 = v95;
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

LABEL_177:
              *(a1 + 16) = v35;
              goto LABEL_198;
          }
        }
      }

      else if (v22 > 103)
      {
        switch(v22)
        {
          case 0x68:
            *(a1 + 64) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_98;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_162;
          case 0xC9:
            *(a1 + 64) |= 4u;
            v75 = *(this + 1);
            v2 = *(this + 2);
            v76 = *this;
            if (v75 > 0xFFFFFFFFFFFFFFF5 || v75 + 10 > v2)
            {
              v125 = 0;
              v126 = 0;
              v79 = 0;
              if (v2 <= v75)
              {
                v2 = *(this + 1);
              }

              v127 = v2 - v75;
              v128 = (v76 + v75);
              v129 = v75 + 1;
              while (1)
              {
                if (!v127)
                {
                  v79 = 0;
                  *(this + 24) = 1;
                  goto LABEL_197;
                }

                v130 = v129;
                v131 = *v128;
                *(this + 1) = v130;
                v79 |= (v131 & 0x7F) << v125;
                if ((v131 & 0x80) == 0)
                {
                  break;
                }

                v125 += 7;
                --v127;
                ++v128;
                v129 = v130 + 1;
                v14 = v126++ > 8;
                if (v14)
                {
                  v79 = 0;
                  goto LABEL_196;
                }
              }

              if (*(this + 24))
              {
                v79 = 0;
              }

LABEL_196:
              v2 = v130;
            }

            else
            {
              v77 = 0;
              v78 = 0;
              v79 = 0;
              v80 = (v76 + v75);
              v81 = v75 + 1;
              while (1)
              {
                v2 = v81;
                *(this + 1) = v81;
                v82 = *v80++;
                v79 |= (v82 & 0x7F) << v77;
                if ((v82 & 0x80) == 0)
                {
                  break;
                }

                v77 += 7;
                ++v81;
                v14 = v78++ > 8;
                if (v14)
                {
                  v79 = 0;
                  break;
                }
              }
            }

LABEL_197:
            *(a1 + 24) = v79;
            goto LABEL_198;
          case 0xCA:
            *(a1 + 64) |= 0x800u;
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

            *(a1 + 61) = v40;
            goto LABEL_198;
        }
      }

      else
      {
        switch(v22)
        {
          case 'e':
            *(a1 + 64) |= 0x40u;
            v49 = *(this + 1);
            v2 = *(this + 2);
            v50 = *this;
            if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
            {
              v104 = 0;
              v105 = 0;
              v53 = 0;
              if (v2 <= v49)
              {
                v2 = *(this + 1);
              }

              v106 = v2 - v49;
              v107 = (v50 + v49);
              v108 = v49 + 1;
              while (1)
              {
                if (!v106)
                {
                  LODWORD(v53) = 0;
                  *(this + 24) = 1;
                  goto LABEL_185;
                }

                v109 = v108;
                v110 = *v107;
                *(this + 1) = v109;
                v53 |= (v110 & 0x7F) << v104;
                if ((v110 & 0x80) == 0)
                {
                  break;
                }

                v104 += 7;
                --v106;
                ++v107;
                v108 = v109 + 1;
                v14 = v105++ > 8;
                if (v14)
                {
                  LODWORD(v53) = 0;
                  goto LABEL_184;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v53) = 0;
              }

LABEL_184:
              v2 = v109;
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

LABEL_185:
            *(a1 + 44) = v53;
            goto LABEL_198;
          case 'f':
            *(a1 + 64) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_98;
            }

            *(a1 + 36) = *(*this + v2);
LABEL_162:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
            goto LABEL_198;
          case 'g':
            *(a1 + 64) |= 0x20u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v83 = 0;
              v84 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v85 = v2 - v23;
              v86 = (v24 + v23);
              v87 = v23 + 1;
              while (1)
              {
                if (!v85)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_173;
                }

                v88 = v87;
                v89 = *v86;
                *(this + 1) = v88;
                v27 |= (v89 & 0x7F) << v83;
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
                  LODWORD(v27) = 0;
                  goto LABEL_172;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_172:
              v2 = v88;
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

LABEL_173:
            *(a1 + 40) = v27;
            goto LABEL_198;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v132 = 0;
        return v132 & 1;
      }

      v2 = *(this + 1);
LABEL_198:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_202:
  v132 = v4 ^ 1;
  return v132 & 1;
}

uint64_t sub_245DD0374(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if ((v4 & 0x40) != 0)
  {
    v5 = *(result + 44);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 64);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 64);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_6:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x800) == 0)
  {
LABEL_7:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = *(v3 + 61);
  result = PB::Writer::write(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x400) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(v3 + 60);
  result = PB::Writer::write(this);
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x200) == 0)
  {
LABEL_11:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    result = PB::Writer::write(this, *(v3 + 52));
    if ((*(v3 + 64) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_23:
  v12 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v4 & 0x80) == 0)
  {
    return result;
  }

LABEL_25:
  v13 = *(v3 + 48);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245DD04FC(uint64_t result)
{
  *result = &unk_2858CDE30;
  *(result + 68) = 0;
  return result;
}

void sub_245DD0524(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DD055C(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CDE30;
  *(result + 68) = 0;
  v2 = *(a2 + 68);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 20);
    v3 = 4;
    *(result + 68) = 4;
    *(result + 20) = v4;
    v2 = *(a2 + 68);
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
    *(result + 68) = v3;
    *(result + 16) = v5;
    v2 = *(a2 + 68);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 24);
    v3 |= 8u;
    *(result + 68) = v3;
    *(result + 24) = v6;
    v2 = *(a2 + 68);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 8);
  v3 |= 1u;
  *(result + 68) = v3;
  *(result + 8) = v7;
  v2 = *(a2 + 68);
  if ((v2 & 0x800) == 0)
  {
LABEL_9:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v8 = *(a2 + 56);
  v3 |= 0x800u;
  *(result + 68) = v3;
  *(result + 56) = v8;
  v2 = *(a2 + 68);
  if ((v2 & 0x1000) == 0)
  {
LABEL_10:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v9 = *(a2 + 57);
  v3 |= 0x1000u;
  *(result + 68) = v3;
  *(result + 57) = v9;
  v2 = *(a2 + 68);
  if ((v2 & 0x2000) == 0)
  {
LABEL_11:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v10 = *(a2 + 58);
  v3 |= 0x2000u;
  *(result + 68) = v3;
  *(result + 58) = v10;
  v2 = *(a2 + 68);
  if ((v2 & 0x100000) == 0)
  {
LABEL_12:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v11 = *(a2 + 65);
  v3 |= 0x100000u;
  *(result + 68) = v3;
  *(result + 65) = v11;
  v2 = *(a2 + 68);
  if ((v2 & 0x40000) == 0)
  {
LABEL_13:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  v12 = *(a2 + 63);
  v3 |= 0x40000u;
  *(result + 68) = v3;
  *(result + 63) = v12;
  v2 = *(a2 + 68);
  if ((v2 & 0x8000) == 0)
  {
LABEL_14:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  v13 = *(a2 + 60);
  v3 |= 0x8000u;
  *(result + 68) = v3;
  *(result + 60) = v13;
  v2 = *(a2 + 68);
  if ((v2 & 0x4000) == 0)
  {
LABEL_15:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v14 = *(a2 + 59);
  v3 |= 0x4000u;
  *(result + 68) = v3;
  *(result + 59) = v14;
  v2 = *(a2 + 68);
  if ((v2 & 0x80000) == 0)
  {
LABEL_16:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  v15 = *(a2 + 64);
  v3 |= 0x80000u;
  *(result + 68) = v3;
  *(result + 64) = v15;
  v2 = *(a2 + 68);
  if ((v2 & 0x10000) == 0)
  {
LABEL_17:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  v16 = *(a2 + 61);
  v3 |= 0x10000u;
  *(result + 68) = v3;
  *(result + 61) = v16;
  v2 = *(a2 + 68);
  if ((v2 & 0x20000) == 0)
  {
LABEL_18:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  v17 = *(a2 + 62);
  v3 |= 0x20000u;
  *(result + 68) = v3;
  *(result + 62) = v17;
  v2 = *(a2 + 68);
  if ((v2 & 0x400) == 0)
  {
LABEL_19:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  v18 = *(a2 + 52);
  v3 |= 0x400u;
  *(result + 68) = v3;
  *(result + 52) = v18;
  v2 = *(a2 + 68);
  if ((v2 & 0x100) == 0)
  {
LABEL_20:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  v19 = *(a2 + 44);
  v3 |= 0x100u;
  *(result + 68) = v3;
  *(result + 44) = v19;
  v2 = *(a2 + 68);
  if ((v2 & 0x20) == 0)
  {
LABEL_21:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  v20 = *(a2 + 32);
  v3 |= 0x20u;
  *(result + 68) = v3;
  *(result + 32) = v20;
  v2 = *(a2 + 68);
  if ((v2 & 0x10) == 0)
  {
LABEL_22:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_41:
  v21 = *(a2 + 28);
  v3 |= 0x10u;
  *(result + 68) = v3;
  *(result + 28) = v21;
  v2 = *(a2 + 68);
  if ((v2 & 0x200) == 0)
  {
LABEL_23:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

LABEL_42:
  v22 = *(a2 + 48);
  v3 |= 0x200u;
  *(result + 68) = v3;
  *(result + 48) = v22;
  v2 = *(a2 + 68);
  if ((v2 & 0x40) == 0)
  {
LABEL_24:
    if ((v2 & 0x80) == 0)
    {
      return result;
    }

LABEL_44:
    v24 = *(a2 + 40);
    *(result + 68) = v3 | 0x80;
    *(result + 40) = v24;
    return result;
  }

LABEL_43:
  v23 = *(a2 + 36);
  v3 |= 0x40u;
  *(result + 68) = v3;
  *(result + 36) = v23;
  if ((*(a2 + 68) & 0x80) != 0)
  {
    goto LABEL_44;
  }

  return result;
}

uint64_t sub_245DD07D4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if ((v5 & 0x800) != 0)
  {
    v7 = *(a1 + 56);
    PB::TextFormatter::format(this, "crashDetectorDecision");
    v5 = *(a1 + 68);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "detectorPostTriggerTimeOffsetWindow", *(a1 + 16));
  v5 = *(a1 + 68);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "detectorPreTriggerTimeOffsetWindow", *(a1 + 20));
  v5 = *(a1 + 68);
  if ((v5 & 0x1000) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  v8 = *(a1 + 57);
  PB::TextFormatter::format(this, "earlyCrashDetectorDecision");
  v5 = *(a1 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "epochLatchingCount", *(a1 + 24));
  v5 = *(a1 + 68);
  if ((v5 & 0x2000) == 0)
  {
LABEL_7:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v9 = *(a1 + 58);
  PB::TextFormatter::format(this, "hasAudioInEpoch");
  v5 = *(a1 + 68);
  if ((v5 & 0x4000) == 0)
  {
LABEL_8:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v10 = *(a1 + 59);
  PB::TextFormatter::format(this, "isAudio");
  v5 = *(a1 + 68);
  if ((v5 & 0x8000) == 0)
  {
LABEL_9:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v11 = *(a1 + 60);
  PB::TextFormatter::format(this, "isBaro");
  v5 = *(a1 + 68);
  if ((v5 & 0x10000) == 0)
  {
LABEL_10:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  v12 = *(a1 + 61);
  PB::TextFormatter::format(this, "isDescalationDecided");
  v5 = *(a1 + 68);
  if ((v5 & 0x20000) == 0)
  {
LABEL_11:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  v13 = *(a1 + 62);
  PB::TextFormatter::format(this, "isDescalationRequired");
  v5 = *(a1 + 68);
  if ((v5 & 0x40000) == 0)
  {
LABEL_12:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  v14 = *(a1 + 63);
  PB::TextFormatter::format(this, "isFreeFall");
  v5 = *(a1 + 68);
  if ((v5 & 0x80000) == 0)
  {
LABEL_13:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  v15 = *(a1 + 64);
  PB::TextFormatter::format(this, "isGPS");
  v5 = *(a1 + 68);
  if ((v5 & 0x100000) == 0)
  {
LABEL_14:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  v16 = *(a1 + 65);
  PB::TextFormatter::format(this, "isPulse");
  v5 = *(a1 + 68);
  if ((v5 & 0x10) == 0)
  {
LABEL_15:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  v17 = *(a1 + 28);
  PB::TextFormatter::format(this, "latchedIsAudio");
  v5 = *(a1 + 68);
  if ((v5 & 0x20) == 0)
  {
LABEL_16:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  v18 = *(a1 + 32);
  PB::TextFormatter::format(this, "latchedIsBaro");
  v5 = *(a1 + 68);
  if ((v5 & 0x40) == 0)
  {
LABEL_17:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  v19 = *(a1 + 36);
  PB::TextFormatter::format(this, "latchedIsDescalationDecided");
  v5 = *(a1 + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_18:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  v20 = *(a1 + 40);
  PB::TextFormatter::format(this, "latchedIsDescalationRequired");
  v5 = *(a1 + 68);
  if ((v5 & 0x100) == 0)
  {
LABEL_19:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  v21 = *(a1 + 44);
  PB::TextFormatter::format(this, "latchedIsFreeFall");
  v5 = *(a1 + 68);
  if ((v5 & 0x200) == 0)
  {
LABEL_20:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  v22 = *(a1 + 48);
  PB::TextFormatter::format(this, "latchedIsGPS");
  v5 = *(a1 + 68);
  if ((v5 & 0x400) == 0)
  {
LABEL_21:
    if ((v5 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_45:
  v23 = *(a1 + 52);
  PB::TextFormatter::format(this, "latchedIsPulse");
  if (*(a1 + 68))
  {
LABEL_22:
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_23:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DD0AB8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_266;
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
      if ((v10 >> 3) <= 303)
      {
        if (v22 > 102)
        {
          if (v22 <= 300)
          {
            if (v22 == 103)
            {
              *(a1 + 68) |= 0x1000u;
              v2 = *(this + 1);
              if (v2 >= *(this + 2))
              {
                v106 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v105 = *(*this + v2++);
                *(this + 1) = v2;
                v106 = v105 != 0;
              }

              *(a1 + 57) = v106;
              goto LABEL_262;
            }

            if (v22 == 201)
            {
              *(a1 + 68) |= 0x2000u;
              v2 = *(this + 1);
              if (v2 >= *(this + 2))
              {
                v54 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v53 = *(*this + v2++);
                *(this + 1) = v2;
                v54 = v53 != 0;
              }

              *(a1 + 58) = v54;
              goto LABEL_262;
            }
          }

          else
          {
            switch(v22)
            {
              case 0x12D:
                *(a1 + 68) |= 0x100000u;
                v2 = *(this + 1);
                if (v2 >= *(this + 2))
                {
                  v60 = 0;
                  *(this + 24) = 1;
                }

                else
                {
                  v59 = *(*this + v2++);
                  *(this + 1) = v2;
                  v60 = v59 != 0;
                }

                *(a1 + 65) = v60;
                goto LABEL_262;
              case 0x12E:
                *(a1 + 68) |= 0x40000u;
                v2 = *(this + 1);
                if (v2 >= *(this + 2))
                {
                  v88 = 0;
                  *(this + 24) = 1;
                }

                else
                {
                  v87 = *(*this + v2++);
                  *(this + 1) = v2;
                  v88 = v87 != 0;
                }

                *(a1 + 63) = v88;
                goto LABEL_262;
              case 0x12F:
                *(a1 + 68) |= 0x8000u;
                v2 = *(this + 1);
                if (v2 >= *(this + 2))
                {
                  v42 = 0;
                  *(this + 24) = 1;
                }

                else
                {
                  v41 = *(*this + v2++);
                  *(this + 1) = v2;
                  v42 = v41 != 0;
                }

                *(a1 + 60) = v42;
                goto LABEL_262;
            }
          }
        }

        else if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(a1 + 68) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_131:
              *(this + 24) = 1;
              goto LABEL_262;
            }

            *(a1 + 20) = *(*this + v2);
            goto LABEL_221;
          }

          if (v22 == 2)
          {
            *(a1 + 68) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_131;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_221;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 68) |= 8u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_131;
              }

              *(a1 + 24) = *(*this + v2);
LABEL_221:
              v2 = *(this + 1) + 4;
              *(this + 1) = v2;
              goto LABEL_262;
            case 0x65:
              *(a1 + 68) |= 1u;
              v79 = *(this + 1);
              v2 = *(this + 2);
              v80 = *this;
              if (v79 > 0xFFFFFFFFFFFFFFF5 || v79 + 10 > v2)
              {
                v142 = 0;
                v143 = 0;
                v83 = 0;
                if (v2 <= v79)
                {
                  v2 = *(this + 1);
                }

                v144 = v2 - v79;
                v145 = (v80 + v79);
                v146 = v79 + 1;
                while (1)
                {
                  if (!v144)
                  {
                    v83 = 0;
                    *(this + 24) = 1;
                    goto LABEL_253;
                  }

                  v147 = v146;
                  v148 = *v145;
                  *(this + 1) = v147;
                  v83 |= (v148 & 0x7F) << v142;
                  if ((v148 & 0x80) == 0)
                  {
                    break;
                  }

                  v142 += 7;
                  --v144;
                  ++v145;
                  v146 = v147 + 1;
                  v14 = v143++ > 8;
                  if (v14)
                  {
                    v83 = 0;
                    goto LABEL_252;
                  }
                }

                if (*(this + 24))
                {
                  v83 = 0;
                }

LABEL_252:
                v2 = v147;
              }

              else
              {
                v81 = 0;
                v82 = 0;
                v83 = 0;
                v84 = (v80 + v79);
                v85 = v79 + 1;
                while (1)
                {
                  v2 = v85;
                  *(this + 1) = v85;
                  v86 = *v84++;
                  v83 |= (v86 & 0x7F) << v81;
                  if ((v86 & 0x80) == 0)
                  {
                    break;
                  }

                  v81 += 7;
                  ++v85;
                  v14 = v82++ > 8;
                  if (v14)
                  {
                    v83 = 0;
                    break;
                  }
                }
              }

LABEL_253:
              *(a1 + 8) = v83;
              goto LABEL_262;
            case 0x66:
              *(a1 + 68) |= 0x800u;
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

              *(a1 + 56) = v32;
              goto LABEL_262;
          }
        }
      }

      else if (v22 <= 401)
      {
        if (v22 <= 305)
        {
          if (v22 == 304)
          {
            *(a1 + 68) |= 0x4000u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v78 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v77 = *(*this + v2++);
              *(this + 1) = v2;
              v78 = v77 != 0;
            }

            *(a1 + 59) = v78;
            goto LABEL_262;
          }

          if (v22 == 305)
          {
            *(a1 + 68) |= 0x80000u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v52 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v51 = *(*this + v2++);
              *(this + 1) = v2;
              v52 = v51 != 0;
            }

            *(a1 + 64) = v52;
            goto LABEL_262;
          }
        }

        else
        {
          switch(v22)
          {
            case 0x132:
              *(a1 + 68) |= 0x10000u;
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

              *(a1 + 61) = v56;
              goto LABEL_262;
            case 0x133:
              *(a1 + 68) |= 0x20000u;
              v2 = *(this + 1);
              if (v2 >= *(this + 2))
              {
                v58 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v57 = *(*this + v2++);
                *(this + 1) = v2;
                v58 = v57 != 0;
              }

              *(a1 + 62) = v58;
              goto LABEL_262;
            case 0x191:
              *(a1 + 68) |= 0x400u;
              v33 = *(this + 1);
              v2 = *(this + 2);
              v34 = *this;
              if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
              {
                v107 = 0;
                v108 = 0;
                v37 = 0;
                if (v2 <= v33)
                {
                  v2 = *(this + 1);
                }

                v109 = v2 - v33;
                v110 = (v34 + v33);
                v111 = v33 + 1;
                while (1)
                {
                  if (!v109)
                  {
                    LODWORD(v37) = 0;
                    *(this + 24) = 1;
                    goto LABEL_233;
                  }

                  v112 = v111;
                  v113 = *v110;
                  *(this + 1) = v112;
                  v37 |= (v113 & 0x7F) << v107;
                  if ((v113 & 0x80) == 0)
                  {
                    break;
                  }

                  v107 += 7;
                  --v109;
                  ++v110;
                  v111 = v112 + 1;
                  v14 = v108++ > 8;
                  if (v14)
                  {
                    LODWORD(v37) = 0;
                    goto LABEL_232;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v37) = 0;
                }

LABEL_232:
                v2 = v112;
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
                    LODWORD(v37) = 0;
                    break;
                  }
                }
              }

LABEL_233:
              *(a1 + 52) = v37;
              goto LABEL_262;
          }
        }
      }

      else
      {
        if (v22 <= 404)
        {
          if (v22 == 402)
          {
            *(a1 + 68) |= 0x100u;
            v61 = *(this + 1);
            v2 = *(this + 2);
            v62 = *this;
            if (v61 > 0xFFFFFFFFFFFFFFF5 || v61 + 10 > v2)
            {
              v114 = 0;
              v115 = 0;
              v65 = 0;
              if (v2 <= v61)
              {
                v2 = *(this + 1);
              }

              v116 = v2 - v61;
              v117 = (v62 + v61);
              v118 = v61 + 1;
              while (1)
              {
                if (!v116)
                {
                  LODWORD(v65) = 0;
                  *(this + 24) = 1;
                  goto LABEL_237;
                }

                v119 = v118;
                v120 = *v117;
                *(this + 1) = v119;
                v65 |= (v120 & 0x7F) << v114;
                if ((v120 & 0x80) == 0)
                {
                  break;
                }

                v114 += 7;
                --v116;
                ++v117;
                v118 = v119 + 1;
                v14 = v115++ > 8;
                if (v14)
                {
                  LODWORD(v65) = 0;
                  goto LABEL_236;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v65) = 0;
              }

LABEL_236:
              v2 = v119;
            }

            else
            {
              v63 = 0;
              v64 = 0;
              v65 = 0;
              v66 = (v62 + v61);
              v67 = v61 + 1;
              while (1)
              {
                v2 = v67;
                *(this + 1) = v67;
                v68 = *v66++;
                v65 |= (v68 & 0x7F) << v63;
                if ((v68 & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                ++v67;
                v14 = v64++ > 8;
                if (v14)
                {
                  LODWORD(v65) = 0;
                  break;
                }
              }
            }

LABEL_237:
            *(a1 + 44) = v65;
          }

          else if (v22 == 403)
          {
            *(a1 + 68) |= 0x20u;
            v89 = *(this + 1);
            v2 = *(this + 2);
            v90 = *this;
            if (v89 > 0xFFFFFFFFFFFFFFF5 || v89 + 10 > v2)
            {
              v149 = 0;
              v150 = 0;
              v93 = 0;
              if (v2 <= v89)
              {
                v2 = *(this + 1);
              }

              v151 = v2 - v89;
              v152 = (v90 + v89);
              v153 = v89 + 1;
              while (1)
              {
                if (!v151)
                {
                  LODWORD(v93) = 0;
                  *(this + 24) = 1;
                  goto LABEL_257;
                }

                v154 = v153;
                v155 = *v152;
                *(this + 1) = v154;
                v93 |= (v155 & 0x7F) << v149;
                if ((v155 & 0x80) == 0)
                {
                  break;
                }

                v149 += 7;
                --v151;
                ++v152;
                v153 = v154 + 1;
                v14 = v150++ > 8;
                if (v14)
                {
                  LODWORD(v93) = 0;
                  goto LABEL_256;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v93) = 0;
              }

LABEL_256:
              v2 = v154;
            }

            else
            {
              v91 = 0;
              v92 = 0;
              v93 = 0;
              v94 = (v90 + v89);
              v95 = v89 + 1;
              while (1)
              {
                v2 = v95;
                *(this + 1) = v95;
                v96 = *v94++;
                v93 |= (v96 & 0x7F) << v91;
                if ((v96 & 0x80) == 0)
                {
                  break;
                }

                v91 += 7;
                ++v95;
                v14 = v92++ > 8;
                if (v14)
                {
                  LODWORD(v93) = 0;
                  break;
                }
              }
            }

LABEL_257:
            *(a1 + 32) = v93;
          }

          else
          {
            *(a1 + 68) |= 0x10u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v128 = 0;
              v129 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v130 = v2 - v23;
              v131 = (v24 + v23);
              v132 = v23 + 1;
              while (1)
              {
                if (!v130)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_245;
                }

                v133 = v132;
                v134 = *v131;
                *(this + 1) = v133;
                v27 |= (v134 & 0x7F) << v128;
                if ((v134 & 0x80) == 0)
                {
                  break;
                }

                v128 += 7;
                --v130;
                ++v131;
                v132 = v133 + 1;
                v14 = v129++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_244;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_244:
              v2 = v133;
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

LABEL_245:
            *(a1 + 28) = v27;
          }

          goto LABEL_262;
        }

        switch(v22)
        {
          case 0x195:
            *(a1 + 68) |= 0x200u;
            v69 = *(this + 1);
            v2 = *(this + 2);
            v70 = *this;
            if (v69 > 0xFFFFFFFFFFFFFFF5 || v69 + 10 > v2)
            {
              v121 = 0;
              v122 = 0;
              v73 = 0;
              if (v2 <= v69)
              {
                v2 = *(this + 1);
              }

              v123 = v2 - v69;
              v124 = (v70 + v69);
              v125 = v69 + 1;
              while (1)
              {
                if (!v123)
                {
                  LODWORD(v73) = 0;
                  *(this + 24) = 1;
                  goto LABEL_241;
                }

                v126 = v125;
                v127 = *v124;
                *(this + 1) = v126;
                v73 |= (v127 & 0x7F) << v121;
                if ((v127 & 0x80) == 0)
                {
                  break;
                }

                v121 += 7;
                --v123;
                ++v124;
                v125 = v126 + 1;
                v14 = v122++ > 8;
                if (v14)
                {
                  LODWORD(v73) = 0;
                  goto LABEL_240;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v73) = 0;
              }

LABEL_240:
              v2 = v126;
            }

            else
            {
              v71 = 0;
              v72 = 0;
              v73 = 0;
              v74 = (v70 + v69);
              v75 = v69 + 1;
              while (1)
              {
                v2 = v75;
                *(this + 1) = v75;
                v76 = *v74++;
                v73 |= (v76 & 0x7F) << v71;
                if ((v76 & 0x80) == 0)
                {
                  break;
                }

                v71 += 7;
                ++v75;
                v14 = v72++ > 8;
                if (v14)
                {
                  LODWORD(v73) = 0;
                  break;
                }
              }
            }

LABEL_241:
            *(a1 + 48) = v73;
            goto LABEL_262;
          case 0x196:
            *(a1 + 68) |= 0x40u;
            v97 = *(this + 1);
            v2 = *(this + 2);
            v98 = *this;
            if (v97 > 0xFFFFFFFFFFFFFFF5 || v97 + 10 > v2)
            {
              v156 = 0;
              v157 = 0;
              v101 = 0;
              if (v2 <= v97)
              {
                v2 = *(this + 1);
              }

              v158 = v2 - v97;
              v159 = (v98 + v97);
              v160 = v97 + 1;
              while (1)
              {
                if (!v158)
                {
                  LODWORD(v101) = 0;
                  *(this + 24) = 1;
                  goto LABEL_261;
                }

                v161 = v160;
                v162 = *v159;
                *(this + 1) = v161;
                v101 |= (v162 & 0x7F) << v156;
                if ((v162 & 0x80) == 0)
                {
                  break;
                }

                v156 += 7;
                --v158;
                ++v159;
                v160 = v161 + 1;
                v14 = v157++ > 8;
                if (v14)
                {
                  LODWORD(v101) = 0;
                  goto LABEL_260;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v101) = 0;
              }

LABEL_260:
              v2 = v161;
            }

            else
            {
              v99 = 0;
              v100 = 0;
              v101 = 0;
              v102 = (v98 + v97);
              v103 = v97 + 1;
              while (1)
              {
                v2 = v103;
                *(this + 1) = v103;
                v104 = *v102++;
                v101 |= (v104 & 0x7F) << v99;
                if ((v104 & 0x80) == 0)
                {
                  break;
                }

                v99 += 7;
                ++v103;
                v14 = v100++ > 8;
                if (v14)
                {
                  LODWORD(v101) = 0;
                  break;
                }
              }
            }

LABEL_261:
            *(a1 + 36) = v101;
            goto LABEL_262;
          case 0x197:
            *(a1 + 68) |= 0x80u;
            v43 = *(this + 1);
            v2 = *(this + 2);
            v44 = *this;
            if (v43 > 0xFFFFFFFFFFFFFFF5 || v43 + 10 > v2)
            {
              v135 = 0;
              v136 = 0;
              v47 = 0;
              if (v2 <= v43)
              {
                v2 = *(this + 1);
              }

              v137 = v2 - v43;
              v138 = (v44 + v43);
              v139 = v43 + 1;
              while (1)
              {
                if (!v137)
                {
                  LODWORD(v47) = 0;
                  *(this + 24) = 1;
                  goto LABEL_249;
                }

                v140 = v139;
                v141 = *v138;
                *(this + 1) = v140;
                v47 |= (v141 & 0x7F) << v135;
                if ((v141 & 0x80) == 0)
                {
                  break;
                }

                v135 += 7;
                --v137;
                ++v138;
                v139 = v140 + 1;
                v14 = v136++ > 8;
                if (v14)
                {
                  LODWORD(v47) = 0;
                  goto LABEL_248;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v47) = 0;
              }

LABEL_248:
              v2 = v140;
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
                v2 = v49;
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
                  LODWORD(v47) = 0;
                  break;
                }
              }
            }

LABEL_249:
            *(a1 + 40) = v47;
            goto LABEL_262;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v163 = 0;
        return v163 & 1;
      }

      v2 = *(this + 1);
LABEL_262:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_266:
  v163 = v4 ^ 1;
  return v163 & 1;
}

uint64_t sub_245DD1888(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 68);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 20));
    v4 = *(v3 + 68);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 68);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  v5 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x800) == 0)
  {
LABEL_6:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  v6 = *(v3 + 56);
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x1000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  v7 = *(v3 + 57);
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  v8 = *(v3 + 58);
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x100000) == 0)
  {
LABEL_9:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  v9 = *(v3 + 65);
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x40000) == 0)
  {
LABEL_10:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  v10 = *(v3 + 63);
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x8000) == 0)
  {
LABEL_11:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  v11 = *(v3 + 60);
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x4000) == 0)
  {
LABEL_12:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  v12 = *(v3 + 59);
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x80000) == 0)
  {
LABEL_13:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  v13 = *(v3 + 64);
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x10000) == 0)
  {
LABEL_14:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  v14 = *(v3 + 61);
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x20000) == 0)
  {
LABEL_15:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  v15 = *(v3 + 62);
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x400) == 0)
  {
LABEL_16:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  v16 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x100) == 0)
  {
LABEL_17:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  v17 = *(v3 + 44);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x20) == 0)
  {
LABEL_18:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  v18 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_19:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  v19 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x200) == 0)
  {
LABEL_20:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_21;
    }

LABEL_42:
    v21 = *(v3 + 36);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 68) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_43;
  }

LABEL_41:
  v20 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_42;
  }

LABEL_21:
  if ((v4 & 0x80) == 0)
  {
    return result;
  }

LABEL_43:
  v22 = *(v3 + 40);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245DD1B0C(uint64_t result)
{
  *result = &unk_2858CDE68;
  *(result + 92) = 0;
  return result;
}

void sub_245DD1B34(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DD1B6C(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CDE68;
  *(result + 92) = 0;
  v2 = *(a2 + 92);
  if ((v2 & 0x200) != 0)
  {
    v4 = *(a2 + 60);
    v3 = 512;
    *(result + 92) = 512;
    *(result + 60) = v4;
    v2 = *(a2 + 92);
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x4000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 80);
    v3 |= 0x4000u;
    *(result + 92) = v3;
    *(result + 80) = v5;
    v2 = *(a2 + 92);
  }

LABEL_6:
  if ((v2 & 0x400) != 0)
  {
    v6 = *(a2 + 64);
    v3 |= 0x400u;
    *(result + 92) = v3;
    *(result + 64) = v6;
    v2 = *(a2 + 92);
    if ((v2 & 0x8000) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 0x8000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 84);
  v3 |= 0x8000u;
  *(result + 92) = v3;
  *(result + 84) = v7;
  v2 = *(a2 + 92);
  if ((v2 & 4) == 0)
  {
LABEL_9:
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v8 = *(a2 + 24);
  v3 |= 4u;
  *(result + 92) = v3;
  *(result + 24) = v8;
  v2 = *(a2 + 92);
  if ((v2 & 8) == 0)
  {
LABEL_10:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v9 = *(a2 + 32);
  v3 |= 8u;
  *(result + 92) = v3;
  *(result + 32) = v9;
  v2 = *(a2 + 92);
  if ((v2 & 0x2000) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v10 = *(a2 + 76);
  v3 |= 0x2000u;
  *(result + 92) = v3;
  *(result + 76) = v10;
  v2 = *(a2 + 92);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v11 = *(a2 + 56);
  v3 |= 0x100u;
  *(result + 92) = v3;
  *(result + 56) = v11;
  v2 = *(a2 + 92);
  if ((v2 & 0x40000) == 0)
  {
LABEL_13:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v12 = *(a2 + 90);
  v3 |= 0x40000u;
  *(result + 92) = v3;
  *(result + 90) = v12;
  v2 = *(a2 + 92);
  if ((v2 & 0x20000) == 0)
  {
LABEL_14:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v13 = *(a2 + 89);
  v3 |= 0x20000u;
  *(result + 92) = v3;
  *(result + 89) = v13;
  v2 = *(a2 + 92);
  if ((v2 & 0x1000) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  v14 = *(a2 + 72);
  v3 |= 0x1000u;
  *(result + 92) = v3;
  *(result + 72) = v14;
  v2 = *(a2 + 92);
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  v15 = *(a2 + 68);
  v3 |= 0x800u;
  *(result + 92) = v3;
  *(result + 68) = v15;
  v2 = *(a2 + 92);
  if ((v2 & 2) == 0)
  {
LABEL_17:
    if ((v2 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  v16 = *(a2 + 16);
  v3 |= 2u;
  *(result + 92) = v3;
  *(result + 16) = v16;
  v2 = *(a2 + 92);
  if ((v2 & 1) == 0)
  {
LABEL_18:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  v17 = *(a2 + 8);
  v3 |= 1u;
  *(result + 92) = v3;
  *(result + 8) = v17;
  v2 = *(a2 + 92);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  v18 = *(a2 + 40);
  v3 |= 0x10u;
  *(result + 92) = v3;
  *(result + 40) = v18;
  v2 = *(a2 + 92);
  if ((v2 & 0x40) == 0)
  {
LABEL_20:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_37:
  v19 = *(a2 + 48);
  v3 |= 0x40u;
  *(result + 92) = v3;
  *(result + 48) = v19;
  v2 = *(a2 + 92);
  if ((v2 & 0x80) == 0)
  {
LABEL_21:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

LABEL_38:
  v20 = *(a2 + 52);
  v3 |= 0x80u;
  *(result + 92) = v3;
  *(result + 52) = v20;
  v2 = *(a2 + 92);
  if ((v2 & 0x20) == 0)
  {
LABEL_22:
    if ((v2 & 0x10000) == 0)
    {
      return result;
    }

LABEL_40:
    v22 = *(a2 + 88);
    *(result + 92) = v3 | 0x10000;
    *(result + 88) = v22;
    return result;
  }

LABEL_39:
  v21 = *(a2 + 44);
  v3 |= 0x20u;
  *(result + 92) = v3;
  *(result + 44) = v21;
  if ((*(a2 + 92) & 0x10000) != 0)
  {
    goto LABEL_40;
  }

  return result;
}

uint64_t sub_245DD1DAC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 92);
  if (v5)
  {
    v7 = *(a1 + 8);
    PB::TextFormatter::format(this, "gpsDeltaTimestamp");
    v5 = *(a1 + 92);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "gpsDeltaTimestampSeconds", *(a1 + 40));
  v5 = *(a1 + 92);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "gpsIsRealSample", *(a1 + 44));
  v5 = *(a1 + 92);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "gpsSpeedMetersPerSecond", *(a1 + 48));
  v5 = *(a1 + 92);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "gpsSpeedMilesPerHour", *(a1 + 52));
  v5 = *(a1 + 92);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "gpsTimestamp");
  v5 = *(a1 + 92);
  if ((v5 & 0x10000) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  v9 = *(a1 + 88);
  PB::TextFormatter::format(this, "loggedAtEpoch");
  v5 = *(a1 + 92);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  v10 = *(a1 + 56);
  PB::TextFormatter::format(this, "movingGpsCount");
  v5 = *(a1 + 92);
  if ((v5 & 0x20000) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  v11 = *(a1 + 89);
  PB::TextFormatter::format(this, "movingGpsCountResetRequired");
  v5 = *(a1 + 92);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "movingSpeedMetersPerSecondThreshold", *(a1 + 60));
  v5 = *(a1 + 92);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "movingSpeedMetersPerSecondThresholdFromSydneyB", *(a1 + 64));
  v5 = *(a1 + 92);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v12 = *(a1 + 68);
  PB::TextFormatter::format(this, "numLowOrFakeSamplesInHistory");
  v5 = *(a1 + 92);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  v13 = *(a1 + 72);
  PB::TextFormatter::format(this, "numSamplesInHistory");
  v5 = *(a1 + 92);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  v14 = *(a1 + 76);
  PB::TextFormatter::format(this, "staticGpsCount");
  v5 = *(a1 + 92);
  if ((v5 & 0x40000) == 0)
  {
LABEL_16:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  v15 = *(a1 + 90);
  PB::TextFormatter::format(this, "staticGpsCountResetRequired");
  v5 = *(a1 + 92);
  if ((v5 & 0x4000) == 0)
  {
LABEL_17:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "staticSpeedMetersPerSecondThreshold", *(a1 + 80));
  v5 = *(a1 + 92);
  if ((v5 & 0x8000) == 0)
  {
LABEL_18:
    if ((v5 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "staticSpeedMetersPerSecondThresholdFromSydneyB", *(a1 + 84));
  v5 = *(a1 + 92);
  if ((v5 & 4) == 0)
  {
LABEL_19:
    if ((v5 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_41:
  v16 = *(a1 + 24);
  PB::TextFormatter::format(this, "timestamp");
  if ((*(a1 + 92) & 8) != 0)
  {
LABEL_20:
    v6 = *(a1 + 32);
    PB::TextFormatter::format(this, "triggerTimestamp");
  }

LABEL_21:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DD2050(uint64_t a1, PB::Reader *this)
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
            goto LABEL_250;
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
      if ((v10 >> 3) <= 105)
      {
        if (v22 <= 100)
        {
          if (v22 > 2)
          {
            if (v22 == 3)
            {
              *(a1 + 92) |= 0x400u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
LABEL_131:
                *(this + 24) = 1;
                goto LABEL_246;
              }

              *(a1 + 64) = *(*this + v2);
              goto LABEL_205;
            }

            if (v22 == 4)
            {
              *(a1 + 92) |= 0x8000u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_131;
              }

              *(a1 + 84) = *(*this + v2);
              goto LABEL_205;
            }
          }

          else
          {
            if (v22 == 1)
            {
              *(a1 + 92) |= 0x200u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_131;
              }

              *(a1 + 60) = *(*this + v2);
              goto LABEL_205;
            }

            if (v22 == 2)
            {
              *(a1 + 92) |= 0x4000u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_131;
              }

              *(a1 + 80) = *(*this + v2);
              goto LABEL_205;
            }
          }
        }

        else
        {
          if (v22 <= 102)
          {
            if (v22 == 101)
            {
              *(a1 + 92) |= 4u;
              v75 = *(this + 1);
              v2 = *(this + 2);
              v76 = *this;
              if (v75 > 0xFFFFFFFFFFFFFFF5 || v75 + 10 > v2)
              {
                v114 = 0;
                v115 = 0;
                v79 = 0;
                if (v2 <= v75)
                {
                  v2 = *(this + 1);
                }

                v116 = v2 - v75;
                v117 = (v76 + v75);
                v118 = v75 + 1;
                while (1)
                {
                  if (!v116)
                  {
                    v79 = 0;
                    *(this + 24) = 1;
                    goto LABEL_229;
                  }

                  v119 = v118;
                  v120 = *v117;
                  *(this + 1) = v119;
                  v79 |= (v120 & 0x7F) << v114;
                  if ((v120 & 0x80) == 0)
                  {
                    break;
                  }

                  v114 += 7;
                  --v116;
                  ++v117;
                  v118 = v119 + 1;
                  v14 = v115++ > 8;
                  if (v14)
                  {
                    v79 = 0;
                    goto LABEL_228;
                  }
                }

                if (*(this + 24))
                {
                  v79 = 0;
                }

LABEL_228:
                v2 = v119;
              }

              else
              {
                v77 = 0;
                v78 = 0;
                v79 = 0;
                v80 = (v76 + v75);
                v81 = v75 + 1;
                while (1)
                {
                  v2 = v81;
                  *(this + 1) = v81;
                  v82 = *v80++;
                  v79 |= (v82 & 0x7F) << v77;
                  if ((v82 & 0x80) == 0)
                  {
                    break;
                  }

                  v77 += 7;
                  ++v81;
                  v14 = v78++ > 8;
                  if (v14)
                  {
                    v79 = 0;
                    break;
                  }
                }
              }

LABEL_229:
              *(a1 + 24) = v79;
            }

            else
            {
              *(a1 + 92) |= 8u;
              v35 = *(this + 1);
              v2 = *(this + 2);
              v36 = *this;
              if (v35 > 0xFFFFFFFFFFFFFFF5 || v35 + 10 > v2)
              {
                v135 = 0;
                v136 = 0;
                v39 = 0;
                if (v2 <= v35)
                {
                  v2 = *(this + 1);
                }

                v137 = v2 - v35;
                v138 = (v36 + v35);
                v139 = v35 + 1;
                while (1)
                {
                  if (!v137)
                  {
                    v39 = 0;
                    *(this + 24) = 1;
                    goto LABEL_241;
                  }

                  v140 = v139;
                  v141 = *v138;
                  *(this + 1) = v140;
                  v39 |= (v141 & 0x7F) << v135;
                  if ((v141 & 0x80) == 0)
                  {
                    break;
                  }

                  v135 += 7;
                  --v137;
                  ++v138;
                  v139 = v140 + 1;
                  v14 = v136++ > 8;
                  if (v14)
                  {
                    v39 = 0;
                    goto LABEL_240;
                  }
                }

                if (*(this + 24))
                {
                  v39 = 0;
                }

LABEL_240:
                v2 = v140;
              }

              else
              {
                v37 = 0;
                v38 = 0;
                v39 = 0;
                v40 = (v36 + v35);
                v41 = v35 + 1;
                while (1)
                {
                  v2 = v41;
                  *(this + 1) = v41;
                  v42 = *v40++;
                  v39 |= (v42 & 0x7F) << v37;
                  if ((v42 & 0x80) == 0)
                  {
                    break;
                  }

                  v37 += 7;
                  ++v41;
                  v14 = v38++ > 8;
                  if (v14)
                  {
                    v39 = 0;
                    break;
                  }
                }
              }

LABEL_241:
              *(a1 + 32) = v39;
            }

            goto LABEL_246;
          }

          switch(v22)
          {
            case 'g':
              *(a1 + 92) |= 0x2000u;
              v59 = *(this + 1);
              v2 = *(this + 2);
              v60 = *this;
              if (v59 > 0xFFFFFFFFFFFFFFF5 || v59 + 10 > v2)
              {
                v100 = 0;
                v101 = 0;
                v63 = 0;
                if (v2 <= v59)
                {
                  v2 = *(this + 1);
                }

                v102 = v2 - v59;
                v103 = (v60 + v59);
                v104 = v59 + 1;
                while (1)
                {
                  if (!v102)
                  {
                    LODWORD(v63) = 0;
                    *(this + 24) = 1;
                    goto LABEL_221;
                  }

                  v105 = v104;
                  v106 = *v103;
                  *(this + 1) = v105;
                  v63 |= (v106 & 0x7F) << v100;
                  if ((v106 & 0x80) == 0)
                  {
                    break;
                  }

                  v100 += 7;
                  --v102;
                  ++v103;
                  v104 = v105 + 1;
                  v14 = v101++ > 8;
                  if (v14)
                  {
                    LODWORD(v63) = 0;
                    goto LABEL_220;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v63) = 0;
                }

LABEL_220:
                v2 = v105;
              }

              else
              {
                v61 = 0;
                v62 = 0;
                v63 = 0;
                v64 = (v60 + v59);
                v65 = v59 + 1;
                while (1)
                {
                  v2 = v65;
                  *(this + 1) = v65;
                  v66 = *v64++;
                  v63 |= (v66 & 0x7F) << v61;
                  if ((v66 & 0x80) == 0)
                  {
                    break;
                  }

                  v61 += 7;
                  ++v65;
                  v14 = v62++ > 8;
                  if (v14)
                  {
                    LODWORD(v63) = 0;
                    break;
                  }
                }
              }

LABEL_221:
              *(a1 + 76) = v63;
              goto LABEL_246;
            case 'h':
              *(a1 + 92) |= 0x100u;
              v51 = *(this + 1);
              v2 = *(this + 2);
              v52 = *this;
              if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v2)
              {
                v93 = 0;
                v94 = 0;
                v55 = 0;
                if (v2 <= v51)
                {
                  v2 = *(this + 1);
                }

                v95 = v2 - v51;
                v96 = (v52 + v51);
                v97 = v51 + 1;
                while (1)
                {
                  if (!v95)
                  {
                    LODWORD(v55) = 0;
                    *(this + 24) = 1;
                    goto LABEL_217;
                  }

                  v98 = v97;
                  v99 = *v96;
                  *(this + 1) = v98;
                  v55 |= (v99 & 0x7F) << v93;
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
                    LODWORD(v55) = 0;
                    goto LABEL_216;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v55) = 0;
                }

LABEL_216:
                v2 = v98;
              }

              else
              {
                v53 = 0;
                v54 = 0;
                v55 = 0;
                v56 = (v52 + v51);
                v57 = v51 + 1;
                while (1)
                {
                  v2 = v57;
                  *(this + 1) = v57;
                  v58 = *v56++;
                  v55 |= (v58 & 0x7F) << v53;
                  if ((v58 & 0x80) == 0)
                  {
                    break;
                  }

                  v53 += 7;
                  ++v57;
                  v14 = v54++ > 8;
                  if (v14)
                  {
                    LODWORD(v55) = 0;
                    break;
                  }
                }
              }

LABEL_217:
              *(a1 + 56) = v55;
              goto LABEL_246;
            case 'i':
              *(a1 + 92) |= 0x40000u;
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

              *(a1 + 90) = v32;
              goto LABEL_246;
          }
        }
      }

      else if (v22 > 202)
      {
        if (v22 <= 204)
        {
          if (v22 == 203)
          {
            *(a1 + 92) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_131;
            }

            *(a1 + 40) = *(*this + v2);
          }

          else
          {
            *(a1 + 92) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_131;
            }

            *(a1 + 48) = *(*this + v2);
          }

          goto LABEL_205;
        }

        switch(v22)
        {
          case 0xCD:
            *(a1 + 92) |= 0x80u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_131;
            }

            *(a1 + 52) = *(*this + v2);
            goto LABEL_205;
          case 0xCE:
            *(a1 + 92) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_131;
            }

            *(a1 + 44) = *(*this + v2);
LABEL_205:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
            goto LABEL_246;
          case 0xCF:
            *(a1 + 92) |= 0x10000u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v34 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v33 = *(*this + v2++);
              *(this + 1) = v2;
              v34 = v33 != 0;
            }

            *(a1 + 88) = v34;
            goto LABEL_246;
        }
      }

      else if (v22 <= 107)
      {
        if (v22 == 106)
        {
          *(a1 + 92) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v92 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v91 = *(*this + v2++);
            *(this + 1) = v2;
            v92 = v91 != 0;
          }

          *(a1 + 89) = v92;
          goto LABEL_246;
        }

        if (v22 == 107)
        {
          *(a1 + 92) |= 0x1000u;
          v43 = *(this + 1);
          v2 = *(this + 2);
          v44 = *this;
          if (v43 > 0xFFFFFFFFFFFFFFF5 || v43 + 10 > v2)
          {
            v142 = 0;
            v143 = 0;
            v47 = 0;
            if (v2 <= v43)
            {
              v2 = *(this + 1);
            }

            v144 = v2 - v43;
            v145 = (v44 + v43);
            v146 = v43 + 1;
            while (1)
            {
              if (!v144)
              {
                LODWORD(v47) = 0;
                *(this + 24) = 1;
                goto LABEL_245;
              }

              v147 = v146;
              v148 = *v145;
              *(this + 1) = v147;
              v47 |= (v148 & 0x7F) << v142;
              if ((v148 & 0x80) == 0)
              {
                break;
              }

              v142 += 7;
              --v144;
              ++v145;
              v146 = v147 + 1;
              v14 = v143++ > 8;
              if (v14)
              {
                LODWORD(v47) = 0;
                goto LABEL_244;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v47) = 0;
            }

LABEL_244:
            v2 = v147;
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
              v2 = v49;
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
                LODWORD(v47) = 0;
                break;
              }
            }
          }

LABEL_245:
          *(a1 + 72) = v47;
          goto LABEL_246;
        }
      }

      else
      {
        switch(v22)
        {
          case 0x6C:
            *(a1 + 92) |= 0x800u;
            v83 = *(this + 1);
            v2 = *(this + 2);
            v84 = *this;
            if (v83 > 0xFFFFFFFFFFFFFFF5 || v83 + 10 > v2)
            {
              v121 = 0;
              v122 = 0;
              v87 = 0;
              if (v2 <= v83)
              {
                v2 = *(this + 1);
              }

              v123 = v2 - v83;
              v124 = (v84 + v83);
              v125 = v83 + 1;
              while (1)
              {
                if (!v123)
                {
                  LODWORD(v87) = 0;
                  *(this + 24) = 1;
                  goto LABEL_233;
                }

                v126 = v125;
                v127 = *v124;
                *(this + 1) = v126;
                v87 |= (v127 & 0x7F) << v121;
                if ((v127 & 0x80) == 0)
                {
                  break;
                }

                v121 += 7;
                --v123;
                ++v124;
                v125 = v126 + 1;
                v14 = v122++ > 8;
                if (v14)
                {
                  LODWORD(v87) = 0;
                  goto LABEL_232;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v87) = 0;
              }

LABEL_232:
              v2 = v126;
            }

            else
            {
              v85 = 0;
              v86 = 0;
              v87 = 0;
              v88 = (v84 + v83);
              v89 = v83 + 1;
              while (1)
              {
                v2 = v89;
                *(this + 1) = v89;
                v90 = *v88++;
                v87 |= (v90 & 0x7F) << v85;
                if ((v90 & 0x80) == 0)
                {
                  break;
                }

                v85 += 7;
                ++v89;
                v14 = v86++ > 8;
                if (v14)
                {
                  LODWORD(v87) = 0;
                  break;
                }
              }
            }

LABEL_233:
            *(a1 + 68) = v87;
            goto LABEL_246;
          case 0xC9:
            *(a1 + 92) |= 2u;
            v67 = *(this + 1);
            v2 = *(this + 2);
            v68 = *this;
            if (v67 > 0xFFFFFFFFFFFFFFF5 || v67 + 10 > v2)
            {
              v107 = 0;
              v108 = 0;
              v71 = 0;
              if (v2 <= v67)
              {
                v2 = *(this + 1);
              }

              v109 = v2 - v67;
              v110 = (v68 + v67);
              v111 = v67 + 1;
              while (1)
              {
                if (!v109)
                {
                  v71 = 0;
                  *(this + 24) = 1;
                  goto LABEL_225;
                }

                v112 = v111;
                v113 = *v110;
                *(this + 1) = v112;
                v71 |= (v113 & 0x7F) << v107;
                if ((v113 & 0x80) == 0)
                {
                  break;
                }

                v107 += 7;
                --v109;
                ++v110;
                v111 = v112 + 1;
                v14 = v108++ > 8;
                if (v14)
                {
                  v71 = 0;
                  goto LABEL_224;
                }
              }

              if (*(this + 24))
              {
                v71 = 0;
              }

LABEL_224:
              v2 = v112;
            }

            else
            {
              v69 = 0;
              v70 = 0;
              v71 = 0;
              v72 = (v68 + v67);
              v73 = v67 + 1;
              while (1)
              {
                v2 = v73;
                *(this + 1) = v73;
                v74 = *v72++;
                v71 |= (v74 & 0x7F) << v69;
                if ((v74 & 0x80) == 0)
                {
                  break;
                }

                v69 += 7;
                ++v73;
                v14 = v70++ > 8;
                if (v14)
                {
                  v71 = 0;
                  break;
                }
              }
            }

LABEL_225:
            *(a1 + 16) = v71;
            goto LABEL_246;
          case 0xCA:
            *(a1 + 92) |= 1u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v128 = 0;
              v129 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v130 = v2 - v23;
              v131 = (v24 + v23);
              v132 = v23 + 1;
              while (1)
              {
                if (!v130)
                {
                  v27 = 0;
                  *(this + 24) = 1;
                  goto LABEL_237;
                }

                v133 = v132;
                v134 = *v131;
                *(this + 1) = v133;
                v27 |= (v134 & 0x7F) << v128;
                if ((v134 & 0x80) == 0)
                {
                  break;
                }

                v128 += 7;
                --v130;
                ++v131;
                v132 = v133 + 1;
                v14 = v129++ > 8;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_236;
                }
              }

              if (*(this + 24))
              {
                v27 = 0;
              }

LABEL_236:
              v2 = v133;
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

LABEL_237:
            *(a1 + 8) = v27;
            goto LABEL_246;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v149 = 0;
        return v149 & 1;
      }

      v2 = *(this + 1);
LABEL_246:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_250:
  v149 = v4 ^ 1;
  return v149 & 1;
}

uint64_t sub_245DD2D4C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 92);
  if ((v4 & 0x200) != 0)
  {
    result = PB::Writer::write(this, *(result + 60));
    v4 = *(v3 + 92);
    if ((v4 & 0x4000) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 92);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 92);
  if ((v4 & 0x8000) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 92);
  if ((v4 & 4) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  v5 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v6 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = *(v3 + 76);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v8 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x40000) == 0)
  {
LABEL_10:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v9 = *(v3 + 90);
  result = PB::Writer::write(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x20000) == 0)
  {
LABEL_11:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v10 = *(v3 + 89);
  result = PB::Writer::write(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x1000) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v11 = *(v3 + 72);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  v12 = *(v3 + 68);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 2) == 0)
  {
LABEL_14:
    if ((v4 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  v13 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 1) == 0)
  {
LABEL_15:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v14 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x10) == 0)
  {
LABEL_16:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 92);
  if ((v4 & 0x40) == 0)
  {
LABEL_17:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 92);
  if ((v4 & 0x80) == 0)
  {
LABEL_18:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_19;
    }

LABEL_38:
    result = PB::Writer::write(this, *(v3 + 44));
    if ((*(v3 + 92) & 0x10000) == 0)
    {
      return result;
    }

    goto LABEL_39;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 92);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_19:
  if ((v4 & 0x10000) == 0)
  {
    return result;
  }

LABEL_39:
  v15 = *(v3 + 88);

  return PB::Writer::write(this);
}

void *sub_245DD2F98(void *result)
{
  *result = &unk_2858CDEA0;
  *(result + 172) = 0;
  return result;
}

void sub_245DD2FC0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245DD2FF8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CDEA0;
  *(a1 + 172) = 0;
  v2 = *(a2 + 172);
  if ((v2 & 0x20000000) != 0)
  {
    result = *(a2 + 140);
    v3 = 0x20000000;
    *(a1 + 172) = 0x20000000;
    *(a1 + 140) = result;
    v2 = *(a2 + 172);
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x8000000) != 0)
  {
LABEL_5:
    result = *(a2 + 132);
    v3 |= 0x8000000uLL;
    *(a1 + 172) = v3;
    *(a1 + 132) = result;
    v2 = *(a2 + 172);
  }

LABEL_6:
  if ((v2 & 0x2000000) != 0)
  {
    result = *(a2 + 124);
    v3 |= 0x2000000uLL;
    *(a1 + 172) = v3;
    *(a1 + 124) = result;
    v2 = *(a2 + 172);
    if ((v2 & 0x80000000) == 0)
    {
LABEL_8:
      if ((v2 & 0x100000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_53;
    }
  }

  else if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 148);
  v3 |= 0x80000000uLL;
  *(a1 + 172) = v3;
  *(a1 + 148) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x100000) == 0)
  {
LABEL_9:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  v5 = *(a2 + 104);
  v3 |= 0x100000uLL;
  *(a1 + 172) = v3;
  *(a1 + 104) = v5;
  v2 = *(a2 + 172);
  if ((v2 & 0x80000) == 0)
  {
LABEL_10:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_54:
  v6 = *(a2 + 100);
  v3 |= 0x80000uLL;
  *(a1 + 172) = v3;
  *(a1 + 100) = v6;
  v2 = *(a2 + 172);
  if ((v2 & 0x800000) == 0)
  {
LABEL_11:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = *(a2 + 116);
  v3 |= 0x800000uLL;
  *(a1 + 172) = v3;
  *(a1 + 116) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_12:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = *(a2 + 144);
  v3 |= 0x40000000uLL;
  *(a1 + 172) = v3;
  *(a1 + 144) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_13:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = *(a2 + 136);
  v3 |= 0x10000000uLL;
  *(a1 + 172) = v3;
  *(a1 + 136) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_14:
    if ((v2 & 0x100000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = *(a2 + 128);
  v3 |= 0x4000000uLL;
  *(a1 + 172) = v3;
  *(a1 + 128) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x100000000) == 0)
  {
LABEL_15:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = *(a2 + 152);
  v3 |= 0x100000000uLL;
  *(a1 + 172) = v3;
  *(a1 + 152) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x200000) == 0)
  {
LABEL_16:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  v7 = *(a2 + 108);
  v3 |= 0x200000uLL;
  *(a1 + 172) = v3;
  *(a1 + 108) = v7;
  v2 = *(a2 + 172);
  if ((v2 & 0x400000) == 0)
  {
LABEL_17:
    if ((v2 & 0x40000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  v8 = *(a2 + 112);
  v3 |= 0x400000uLL;
  *(a1 + 172) = v3;
  *(a1 + 112) = v8;
  v2 = *(a2 + 172);
  if ((v2 & 0x40000000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  v9 = *(a2 + 165);
  v3 |= 0x40000000000uLL;
  *(a1 + 172) = v3;
  *(a1 + 165) = v9;
  v2 = *(a2 + 172);
  if ((v2 & 0x10000) == 0)
  {
LABEL_19:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = *(a2 + 88);
  v3 |= 0x10000uLL;
  *(a1 + 172) = v3;
  *(a1 + 88) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x4000) == 0)
  {
LABEL_20:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = *(a2 + 80);
  v3 |= 0x4000uLL;
  *(a1 + 172) = v3;
  *(a1 + 80) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x1000) == 0)
  {
LABEL_21:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = *(a2 + 72);
  v3 |= 0x1000uLL;
  *(a1 + 172) = v3;
  *(a1 + 72) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x20000) == 0)
  {
LABEL_22:
    if ((v2 & 0x10000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = *(a2 + 92);
  v3 |= 0x20000uLL;
  *(a1 + 172) = v3;
  *(a1 + 92) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x10000000000) == 0)
  {
LABEL_23:
    if ((v2 & 0x200000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_68;
  }

LABEL_67:
  v10 = *(a2 + 163);
  v3 |= 0x10000000000uLL;
  *(a1 + 172) = v3;
  *(a1 + 163) = v10;
  v2 = *(a2 + 172);
  if ((v2 & 0x200000000) == 0)
  {
LABEL_24:
    if ((v2 & 0x100000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_69;
  }

LABEL_68:
  v11 = *(a2 + 156);
  v3 |= 0x200000000uLL;
  *(a1 + 172) = v3;
  *(a1 + 156) = v11;
  v2 = *(a2 + 172);
  if ((v2 & 0x100000000000) == 0)
  {
LABEL_25:
    if ((v2 & 0x800000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_70;
  }

LABEL_69:
  v12 = *(a2 + 167);
  v3 |= 0x100000000000uLL;
  *(a1 + 172) = v3;
  *(a1 + 167) = v12;
  v2 = *(a2 + 172);
  if ((v2 & 0x800000000) == 0)
  {
LABEL_26:
    if ((v2 & 0x4000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_71;
  }

LABEL_70:
  v13 = *(a2 + 158);
  v3 |= 0x800000000uLL;
  *(a1 + 172) = v3;
  *(a1 + 158) = v13;
  v2 = *(a2 + 172);
  if ((v2 & 0x4000000000) == 0)
  {
LABEL_27:
    if ((v2 & 0x80000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_72;
  }

LABEL_71:
  v14 = *(a2 + 161);
  v3 |= 0x4000000000uLL;
  *(a1 + 172) = v3;
  *(a1 + 161) = v14;
  v2 = *(a2 + 172);
  if ((v2 & 0x80000000000) == 0)
  {
LABEL_28:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_73;
  }

LABEL_72:
  v15 = *(a2 + 166);
  v3 |= 0x80000000000uLL;
  *(a1 + 172) = v3;
  *(a1 + 166) = v15;
  v2 = *(a2 + 172);
  if ((v2 & 0x8000) == 0)
  {
LABEL_29:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_74;
  }

LABEL_73:
  result = *(a2 + 84);
  v3 |= 0x8000uLL;
  *(a1 + 172) = v3;
  *(a1 + 84) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x2000) == 0)
  {
LABEL_30:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_75;
  }

LABEL_74:
  result = *(a2 + 76);
  v3 |= 0x2000uLL;
  *(a1 + 172) = v3;
  *(a1 + 76) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x40000) == 0)
  {
LABEL_31:
    if ((v2 & 0x20000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_76;
  }

LABEL_75:
  result = *(a2 + 96);
  v3 |= 0x40000uLL;
  *(a1 + 172) = v3;
  *(a1 + 96) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x20000000000) == 0)
  {
LABEL_32:
    if ((v2 & 0x400000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_77;
  }

LABEL_76:
  v16 = *(a2 + 164);
  v3 |= 0x20000000000uLL;
  *(a1 + 172) = v3;
  *(a1 + 164) = v16;
  v2 = *(a2 + 172);
  if ((v2 & 0x400000000) == 0)
  {
LABEL_33:
    if ((v2 & 0x200000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_78;
  }

LABEL_77:
  v17 = *(a2 + 157);
  v3 |= 0x400000000uLL;
  *(a1 + 172) = v3;
  *(a1 + 157) = v17;
  v2 = *(a2 + 172);
  if ((v2 & 0x200000000000) == 0)
  {
LABEL_34:
    if ((v2 & 0x1000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_79;
  }

LABEL_78:
  v18 = *(a2 + 168);
  v3 |= 0x200000000000uLL;
  *(a1 + 172) = v3;
  *(a1 + 168) = v18;
  v2 = *(a2 + 172);
  if ((v2 & 0x1000000000) == 0)
  {
LABEL_35:
    if ((v2 & 0x8000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_80;
  }

LABEL_79:
  v19 = *(a2 + 159);
  v3 |= 0x1000000000uLL;
  *(a1 + 172) = v3;
  *(a1 + 159) = v19;
  v2 = *(a2 + 172);
  if ((v2 & 0x8000000000) == 0)
  {
LABEL_36:
    if ((v2 & 0x2000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_81;
  }

LABEL_80:
  v20 = *(a2 + 162);
  v3 |= 0x8000000000uLL;
  *(a1 + 172) = v3;
  *(a1 + 162) = v20;
  v2 = *(a2 + 172);
  if ((v2 & 0x2000000000) == 0)
  {
LABEL_37:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_82;
  }

LABEL_81:
  v21 = *(a2 + 160);
  v3 |= 0x2000000000uLL;
  *(a1 + 172) = v3;
  *(a1 + 160) = v21;
  v2 = *(a2 + 172);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_38:
    if ((v2 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_83;
  }

LABEL_82:
  v22 = *(a2 + 120);
  v3 |= 0x1000000uLL;
  *(a1 + 172) = v3;
  *(a1 + 120) = v22;
  v2 = *(a2 + 172);
  if ((v2 & 4) == 0)
  {
LABEL_39:
    if ((v2 & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_84;
  }

LABEL_83:
  v23 = *(a2 + 24);
  v3 |= 4uLL;
  *(a1 + 172) = v3;
  *(a1 + 24) = v23;
  v2 = *(a2 + 172);
  if ((v2 & 8) == 0)
  {
LABEL_40:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_85;
  }

LABEL_84:
  v24 = *(a2 + 32);
  v3 |= 8uLL;
  *(a1 + 172) = v3;
  *(a1 + 32) = v24;
  v2 = *(a2 + 172);
  if ((v2 & 0x10) == 0)
  {
LABEL_41:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_86;
  }

LABEL_85:
  result = *(a2 + 40);
  v3 |= 0x10uLL;
  *(a1 + 172) = v3;
  *(a1 + 40) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x80) == 0)
  {
LABEL_42:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_87;
  }

LABEL_86:
  result = *(a2 + 52);
  v3 |= 0x80uLL;
  *(a1 + 172) = v3;
  *(a1 + 52) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x100) == 0)
  {
LABEL_43:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_88;
  }

LABEL_87:
  result = *(a2 + 56);
  v3 |= 0x100uLL;
  *(a1 + 172) = v3;
  *(a1 + 56) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x800) == 0)
  {
LABEL_44:
    if ((v2 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_89;
  }

LABEL_88:
  result = *(a2 + 68);
  v3 |= 0x800uLL;
  *(a1 + 172) = v3;
  *(a1 + 68) = result;
  v2 = *(a2 + 172);
  if ((v2 & 1) == 0)
  {
LABEL_45:
    if ((v2 & 2) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_90;
  }

LABEL_89:
  v25 = *(a2 + 8);
  v3 |= 1uLL;
  *(a1 + 172) = v3;
  *(a1 + 8) = v25;
  v2 = *(a2 + 172);
  if ((v2 & 2) == 0)
  {
LABEL_46:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_91;
  }

LABEL_90:
  v26 = *(a2 + 16);
  v3 |= 2uLL;
  *(a1 + 172) = v3;
  *(a1 + 16) = v26;
  v2 = *(a2 + 172);
  if ((v2 & 0x20) == 0)
  {
LABEL_47:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_92;
  }

LABEL_91:
  result = *(a2 + 44);
  v3 |= 0x20uLL;
  *(a1 + 172) = v3;
  *(a1 + 44) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x40) == 0)
  {
LABEL_48:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_93;
  }

LABEL_92:
  result = *(a2 + 48);
  v3 |= 0x40uLL;
  *(a1 + 172) = v3;
  *(a1 + 48) = result;
  v2 = *(a2 + 172);
  if ((v2 & 0x200) == 0)
  {
LABEL_49:
    if ((v2 & 0x400) == 0)
    {
      return result;
    }

LABEL_94:
    result = *(a2 + 64);
    *(a1 + 172) = v3 | 0x400;
    *(a1 + 64) = result;
    return result;
  }

LABEL_93:
  result = *(a2 + 60);
  v3 |= 0x200uLL;
  *(a1 + 172) = v3;
  *(a1 + 60) = result;
  if ((*(a2 + 172) & 0x400) != 0)
  {
    goto LABEL_94;
  }

  return result;
}