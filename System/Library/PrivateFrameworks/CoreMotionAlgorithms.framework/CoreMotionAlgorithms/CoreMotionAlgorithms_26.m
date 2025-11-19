uint64_t sub_245E7AF44(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 188);
  if (v5)
  {
    PB::TextFormatter::format(this, "algDelay", *(a1 + 8));
    v5 = *(a1 + 188);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "biasFactor", *(a1 + 16));
  v5 = *(a1 + 188);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "deltaCalibratedPedometerDistance", *(a1 + 24));
  v5 = *(a1 + 188);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "deltaOdometerDistance", *(a1 + 32));
  v5 = *(a1 + 188);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "deltaOdometerTime", *(a1 + 40));
  v5 = *(a1 + 188);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "deltaPedometerTime", *(a1 + 48));
  v5 = *(a1 + 188);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "deltaRawPedometerDistance", *(a1 + 56));
  v5 = *(a1 + 188);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "endTime", *(a1 + 64));
  v5 = *(a1 + 188);
  if ((v5 & 0x100000) == 0)
  {
LABEL_10:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  v6 = *(a1 + 168);
  PB::TextFormatter::format(this, "gestureState");
  v5 = *(a1 + 188);
  if ((v5 & 0x200000) == 0)
  {
LABEL_11:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  v7 = *(a1 + 172);
  PB::TextFormatter::format(this, "gestureType");
  v5 = *(a1 + 188);
  if ((v5 & 0x800000) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  v8 = *(a1 + 180);
  PB::TextFormatter::format(this, "interruptFlag");
  v5 = *(a1 + 188);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  v9 = *(a1 + 181);
  PB::TextFormatter::format(this, "isTrackRunOdometer");
  v5 = *(a1 + 188);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  v10 = *(a1 + 182);
  PB::TextFormatter::format(this, "isValidOdometerSpeed");
  v5 = *(a1 + 188);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  v11 = *(a1 + 183);
  PB::TextFormatter::format(this, "isValidPedometerSpeed");
  v5 = *(a1 + 188);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  v12 = *(a1 + 184);
  PB::TextFormatter::format(this, "isValidRunningSpeed");
  v5 = *(a1 + 188);
  if ((v5 & 0x100) == 0)
  {
LABEL_17:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "kalmanEpsOdometer", *(a1 + 72));
  v5 = *(a1 + 188);
  if ((v5 & 0x200) == 0)
  {
LABEL_18:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "kalmanEpsPedometer", *(a1 + 80));
  v5 = *(a1 + 188);
  if ((v5 & 0x400) == 0)
  {
LABEL_19:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "kalmanGainOdometer", *(a1 + 88));
  v5 = *(a1 + 188);
  if ((v5 & 0x800) == 0)
  {
LABEL_20:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "kalmanGainPedometer", *(a1 + 96));
  v5 = *(a1 + 188);
  if ((v5 & 0x1000) == 0)
  {
LABEL_21:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "kalmanMeasurementNoiseOdometer", *(a1 + 104));
  v5 = *(a1 + 188);
  if ((v5 & 0x2000) == 0)
  {
LABEL_22:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "kalmanMeasurementNoisePedometer", *(a1 + 112));
  v5 = *(a1 + 188);
  if ((v5 & 0x4000) == 0)
  {
LABEL_23:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "kalmanProcessNoise", *(a1 + 120));
  v5 = *(a1 + 188);
  if ((v5 & 0x8000) == 0)
  {
LABEL_24:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "kalmanStateCovariance", *(a1 + 128));
  v5 = *(a1 + 188);
  if ((v5 & 0x400000) == 0)
  {
LABEL_25:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  v13 = *(a1 + 176);
  PB::TextFormatter::format(this, "odometerQuality");
  v5 = *(a1 + 188);
  if ((v5 & 0x10000) == 0)
  {
LABEL_26:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "odometerSpeed", *(a1 + 136));
  v5 = *(a1 + 188);
  if ((v5 & 0x20000) == 0)
  {
LABEL_27:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "pedometerSpeed", *(a1 + 144));
  v5 = *(a1 + 188);
  if ((v5 & 0x40000) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_59:
  PB::TextFormatter::format(this, "runningSpeed", *(a1 + 152));
  if ((*(a1 + 188) & 0x80000) != 0)
  {
LABEL_29:
    PB::TextFormatter::format(this, "startTime", *(a1 + 160));
  }

LABEL_30:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E7B308(uint64_t a1, PB::Reader *this)
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
          *(a1 + 188) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_115;
          }

          *(a1 + 160) = *(*this + v2);
          goto LABEL_151;
        case 2u:
          *(a1 + 188) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_115;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_151;
        case 3u:
          *(a1 + 188) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_115;
          }

          *(a1 + 152) = *(*this + v2);
          goto LABEL_151;
        case 4u:
          *(a1 + 188) |= 0x8000000u;
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

          *(a1 + 184) = v25;
          goto LABEL_152;
        case 5u:
          *(a1 + 188) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_115;
          }

          *(a1 + 144) = *(*this + v2);
          goto LABEL_151;
        case 6u:
          *(a1 + 188) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_115;
          }

          *(a1 + 136) = *(*this + v2);
          goto LABEL_151;
        case 7u:
          *(a1 + 188) |= 0x2000000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v45 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v44 = *(*this + v2++);
            *(this + 1) = v2;
            v45 = v44 != 0;
          }

          *(a1 + 182) = v45;
          goto LABEL_152;
        case 8u:
          *(a1 + 188) |= 0x4000000u;
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

          *(a1 + 183) = v27;
          goto LABEL_152;
        case 9u:
          *(a1 + 188) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_115;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_151;
        case 0xAu:
          *(a1 + 188) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_115;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_151;
        case 0xBu:
          *(a1 + 188) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_115;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_151;
        case 0xCu:
          *(a1 + 188) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_115;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_151;
        case 0xDu:
          *(a1 + 188) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_115;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_151;
        case 0xEu:
          *(a1 + 188) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_115;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_151;
        case 0xFu:
          *(a1 + 188) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_115;
          }

          *(a1 + 128) = *(*this + v2);
          goto LABEL_151;
        case 0x10u:
          *(a1 + 188) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_115;
          }

          *(a1 + 120) = *(*this + v2);
          goto LABEL_151;
        case 0x11u:
          *(a1 + 188) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_115;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_151;
        case 0x12u:
          *(a1 + 188) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_115;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_151;
        case 0x13u:
          *(a1 + 188) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_115;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_151;
        case 0x14u:
          *(a1 + 188) |= 0x400000u;
          v48 = *(this + 1);
          v2 = *(this + 2);
          v49 = *this;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v70 = 0;
            v71 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v2 = *(this + 1);
            }

            v72 = v2 - v48;
            v73 = (v49 + v48);
            v74 = v48 + 1;
            while (1)
            {
              if (!v72)
              {
                LODWORD(v52) = 0;
                *(this + 24) = 1;
                goto LABEL_169;
              }

              v75 = v74;
              v76 = *v73;
              *(this + 1) = v75;
              v52 |= (v76 & 0x7F) << v70;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              --v72;
              ++v73;
              v74 = v75 + 1;
              v14 = v71++ > 8;
              if (v14)
              {
                LODWORD(v52) = 0;
LABEL_168:
                v2 = v75;
                goto LABEL_169;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_168;
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
              goto LABEL_169;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_169:
          *(a1 + 176) = v52;
          goto LABEL_152;
        case 0x15u:
          *(a1 + 188) |= 0x100000u;
          v28 = *(this + 1);
          v2 = *(this + 2);
          v29 = *this;
          if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v2)
          {
            v56 = 0;
            v57 = 0;
            v32 = 0;
            if (v2 <= v28)
            {
              v2 = *(this + 1);
            }

            v58 = v2 - v28;
            v59 = (v29 + v28);
            v60 = v28 + 1;
            while (1)
            {
              if (!v58)
              {
                LODWORD(v32) = 0;
                *(this + 24) = 1;
                goto LABEL_161;
              }

              v61 = v60;
              v62 = *v59;
              *(this + 1) = v61;
              v32 |= (v62 & 0x7F) << v56;
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
                LODWORD(v32) = 0;
LABEL_160:
                v2 = v61;
                goto LABEL_161;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v32) = 0;
            }

            goto LABEL_160;
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
              goto LABEL_161;
            }

            v30 += 7;
            ++v34;
            v14 = v31++ > 8;
          }

          while (!v14);
          LODWORD(v32) = 0;
LABEL_161:
          *(a1 + 168) = v32;
          goto LABEL_152;
        case 0x16u:
          *(a1 + 188) |= 0x200000u;
          v36 = *(this + 1);
          v2 = *(this + 2);
          v37 = *this;
          if (v36 > 0xFFFFFFFFFFFFFFF5 || v36 + 10 > v2)
          {
            v63 = 0;
            v64 = 0;
            v40 = 0;
            if (v2 <= v36)
            {
              v2 = *(this + 1);
            }

            v65 = v2 - v36;
            v66 = (v37 + v36);
            v67 = v36 + 1;
            while (1)
            {
              if (!v65)
              {
                LODWORD(v40) = 0;
                *(this + 24) = 1;
                goto LABEL_165;
              }

              v68 = v67;
              v69 = *v66;
              *(this + 1) = v68;
              v40 |= (v69 & 0x7F) << v63;
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
                LODWORD(v40) = 0;
LABEL_164:
                v2 = v68;
                goto LABEL_165;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v40) = 0;
            }

            goto LABEL_164;
          }

          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = (v37 + v36);
          v42 = v36 + 1;
          do
          {
            v2 = v42;
            *(this + 1) = v42;
            v43 = *v41++;
            v40 |= (v43 & 0x7F) << v38;
            if ((v43 & 0x80) == 0)
            {
              goto LABEL_165;
            }

            v38 += 7;
            ++v42;
            v14 = v39++ > 8;
          }

          while (!v14);
          LODWORD(v40) = 0;
LABEL_165:
          *(a1 + 172) = v40;
          goto LABEL_152;
        case 0x17u:
          *(a1 + 188) |= 0x800000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v47 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v46 = *(*this + v2++);
            *(this + 1) = v2;
            v47 = v46 != 0;
          }

          *(a1 + 180) = v47;
          goto LABEL_152;
        case 0x18u:
          *(a1 + 188) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_115;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_151;
        case 0x19u:
          *(a1 + 188) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_115;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_151;
        case 0x1Au:
          *(a1 + 188) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_115;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_151;
        case 0x1Bu:
          *(a1 + 188) |= 0x800u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
          {
            *(a1 + 96) = *(*this + v2);
LABEL_151:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          else
          {
LABEL_115:
            *(this + 24) = 1;
          }

          goto LABEL_152;
        case 0x1Cu:
          *(a1 + 188) |= 0x1000000u;
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

          *(a1 + 181) = v23;
          goto LABEL_152;
        default:
          if (!PB::Reader::skip(this))
          {
            v77 = 0;
            return v77 & 1;
          }

          v2 = *(this + 1);
LABEL_152:
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
  v77 = v4 ^ 1;
  return v77 & 1;
}

uint64_t sub_245E7BDFC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 188);
  if ((v4 & 0x80000) != 0)
  {
    result = PB::Writer::write(this, *(result + 160));
    v4 = *(v3 + 188);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 188);
  if ((v4 & 0x40000) == 0)
  {
LABEL_4:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 152));
  v4 = *(v3 + 188);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_5:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  v5 = *(v3 + 184);
  result = PB::Writer::write(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x20000) == 0)
  {
LABEL_6:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 188);
  if ((v4 & 0x10000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 188);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_8:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  v6 = *(v3 + 182);
  result = PB::Writer::write(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_9:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  v7 = *(v3 + 183);
  result = PB::Writer::write(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x40) == 0)
  {
LABEL_10:
    if ((v4 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 188);
  if ((v4 & 8) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 188);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 188);
  if ((v4 & 0x10) == 0)
  {
LABEL_13:
    if ((v4 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 188);
  if ((v4 & 1) == 0)
  {
LABEL_14:
    if ((v4 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 188);
  if ((v4 & 2) == 0)
  {
LABEL_15:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 188);
  if ((v4 & 0x8000) == 0)
  {
LABEL_16:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 188);
  if ((v4 & 0x4000) == 0)
  {
LABEL_17:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 188);
  if ((v4 & 0x100) == 0)
  {
LABEL_18:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 188);
  if ((v4 & 0x200) == 0)
  {
LABEL_19:
    if ((v4 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 188);
  if ((v4 & 4) == 0)
  {
LABEL_20:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 188);
  if ((v4 & 0x400000) == 0)
  {
LABEL_21:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  v8 = *(v3 + 176);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x100000) == 0)
  {
LABEL_22:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  v9 = *(v3 + 168);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x200000) == 0)
  {
LABEL_23:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  v10 = *(v3 + 172);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x800000) == 0)
  {
LABEL_24:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  v11 = *(v3 + 180);
  result = PB::Writer::write(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x1000) == 0)
  {
LABEL_25:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 188);
  if ((v4 & 0x2000) == 0)
  {
LABEL_26:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 188);
  if ((v4 & 0x400) == 0)
  {
LABEL_27:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_28;
    }

LABEL_56:
    result = PB::Writer::write(this, *(v3 + 96));
    if ((*(v3 + 188) & 0x1000000) == 0)
    {
      return result;
    }

    goto LABEL_57;
  }

LABEL_55:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 188);
  if ((v4 & 0x800) != 0)
  {
    goto LABEL_56;
  }

LABEL_28:
  if ((v4 & 0x1000000) == 0)
  {
    return result;
  }

LABEL_57:
  v12 = *(v3 + 181);

  return PB::Writer::write(this);
}

uint64_t sub_245E7C144(uint64_t result)
{
  *result = &unk_2858D20D8;
  *(result + 136) = 0;
  return result;
}

void sub_245E7C16C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245E7C1A4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D20D8;
  *(a1 + 136) = 0;
  v2 = *(a2 + 136);
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 24);
    v3 = 4;
    *(a1 + 136) = 4;
    *(a1 + 24) = result;
    v2 = *(a2 + 136);
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x200) != 0)
  {
LABEL_5:
    result = *(a2 + 80);
    v3 |= 0x200u;
    *(a1 + 136) = v3;
    *(a1 + 80) = result;
    v2 = *(a2 + 136);
  }

LABEL_6:
  if ((v2 & 0x4000) != 0)
  {
    result = *(a2 + 120);
    v3 |= 0x4000u;
    *(a1 + 136) = v3;
    *(a1 + 120) = result;
    v2 = *(a2 + 136);
    if ((v2 & 0x400) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 88);
  v3 |= 0x400u;
  *(a1 + 136) = v3;
  *(a1 + 88) = result;
  v2 = *(a2 + 136);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = *(a2 + 40);
  v3 |= 0x10u;
  *(a1 + 136) = v3;
  *(a1 + 40) = result;
  v2 = *(a2 + 136);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = *(a2 + 48);
  v3 |= 0x20u;
  *(a1 + 136) = v3;
  *(a1 + 48) = result;
  v2 = *(a2 + 136);
  if ((v2 & 0x80) == 0)
  {
LABEL_11:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = *(a2 + 64);
  v3 |= 0x80u;
  *(a1 + 136) = v3;
  *(a1 + 64) = result;
  v2 = *(a2 + 136);
  if ((v2 & 0x40) == 0)
  {
LABEL_12:
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = *(a2 + 56);
  v3 |= 0x40u;
  *(a1 + 136) = v3;
  *(a1 + 56) = result;
  v2 = *(a2 + 136);
  if ((v2 & 8) == 0)
  {
LABEL_13:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = *(a2 + 32);
  v3 |= 8u;
  *(a1 + 136) = v3;
  *(a1 + 32) = result;
  v2 = *(a2 + 136);
  if ((v2 & 0x1000) == 0)
  {
LABEL_14:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = *(a2 + 104);
  v3 |= 0x1000u;
  *(a1 + 136) = v3;
  *(a1 + 104) = result;
  v2 = *(a2 + 136);
  if ((v2 & 0x800) == 0)
  {
LABEL_15:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = *(a2 + 96);
  v3 |= 0x800u;
  *(a1 + 136) = v3;
  *(a1 + 96) = result;
  v2 = *(a2 + 136);
  if ((v2 & 0x2000) == 0)
  {
LABEL_16:
    if ((v2 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = *(a2 + 112);
  v3 |= 0x2000u;
  *(a1 + 136) = v3;
  *(a1 + 112) = result;
  v2 = *(a2 + 136);
  if ((v2 & 1) == 0)
  {
LABEL_17:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = *(a2 + 8);
  v3 |= 1u;
  *(a1 + 136) = v3;
  *(a1 + 8) = result;
  v2 = *(a2 + 136);
  if ((v2 & 0x8000) == 0)
  {
LABEL_18:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  v5 = *(a2 + 128);
  v3 |= 0x8000u;
  *(a1 + 136) = v3;
  *(a1 + 128) = v5;
  v2 = *(a2 + 136);
  if ((v2 & 0x10000) == 0)
  {
LABEL_19:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  v6 = *(a2 + 132);
  v3 |= 0x10000u;
  *(a1 + 136) = v3;
  *(a1 + 132) = v6;
  v2 = *(a2 + 136);
  if ((v2 & 0x100) == 0)
  {
LABEL_20:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_36:
    result = *(a2 + 16);
    *(a1 + 136) = v3 | 2;
    *(a1 + 16) = result;
    return result;
  }

LABEL_35:
  result = *(a2 + 72);
  v3 |= 0x100u;
  *(a1 + 136) = v3;
  *(a1 + 72) = result;
  if ((*(a2 + 136) & 2) != 0)
  {
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_245E7C3AC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 136);
  if ((v5 & 0x8000) != 0)
  {
    v6 = *(a1 + 128);
    PB::TextFormatter::format(this, "algorithmType");
    v5 = *(a1 + 136);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "alpha", *(a1 + 8));
  v5 = *(a1 + 136);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "cadence", *(a1 + 16));
  v5 = *(a1 + 136);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "formBasedStartTime", *(a1 + 24));
  v5 = *(a1 + 136);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "grade", *(a1 + 32));
  v5 = *(a1 + 136);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "heightCM", *(a1 + 40));
  v5 = *(a1 + 136);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "horizontalAccelMagnitudeMeanSqrt", *(a1 + 48));
  v5 = *(a1 + 136);
  if ((v5 & 0x10000) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v7 = *(a1 + 132);
  PB::TextFormatter::format(this, "isValid");
  v5 = *(a1 + 136);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "rotationRateGravityProjectionMax", *(a1 + 56));
  v5 = *(a1 + 136);
  if ((v5 & 0x80) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "rotationRateMagnitudeMin", *(a1 + 64));
  v5 = *(a1 + 136);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "speed", *(a1 + 72));
  v5 = *(a1 + 136);
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "speedBasedStartTime", *(a1 + 80));
  v5 = *(a1 + 136);
  if ((v5 & 0x400) == 0)
  {
LABEL_14:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "strideLength", *(a1 + 88));
  v5 = *(a1 + 136);
  if ((v5 & 0x800) == 0)
  {
LABEL_15:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "strideLengthFormBasedCalibrated", *(a1 + 96));
  v5 = *(a1 + 136);
  if ((v5 & 0x1000) == 0)
  {
LABEL_16:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "strideLengthFormBasedUncalibrated", *(a1 + 104));
  v5 = *(a1 + 136);
  if ((v5 & 0x2000) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  PB::TextFormatter::format(this, "strideLengthSpeedBased", *(a1 + 112));
  if ((*(a1 + 136) & 0x4000) != 0)
  {
LABEL_18:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 120));
  }

LABEL_19:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E7C610(uint64_t a1, PB::Reader *this)
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
        goto LABEL_100;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 136) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_90;
        case 2u:
          *(a1 + 136) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_90;
        case 3u:
          *(a1 + 136) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 120) = *(*this + v2);
          goto LABEL_90;
        case 4u:
          *(a1 + 136) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_90;
        case 5u:
          *(a1 + 136) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_90;
        case 6u:
          *(a1 + 136) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_90;
        case 7u:
          *(a1 + 136) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_90;
        case 8u:
          *(a1 + 136) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_90;
        case 9u:
          *(a1 + 136) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_90;
        case 0xAu:
          *(a1 + 136) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_90;
        case 0xBu:
          *(a1 + 136) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_90;
        case 0xCu:
          *(a1 + 136) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_90;
        case 0xDu:
          *(a1 + 136) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_90;
        case 0xEu:
          *(a1 + 136) |= 0x8000u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v32 = 0;
            v33 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(this + 1);
            }

            v34 = v2 - v24;
            v35 = (v25 + v24);
            v36 = v24 + 1;
            while (1)
            {
              if (!v34)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_95;
              }

              v37 = v36;
              v38 = *v35;
              *(this + 1) = v37;
              v28 |= (v38 & 0x7F) << v32;
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
                LODWORD(v28) = 0;
LABEL_94:
                v2 = v37;
                goto LABEL_95;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_94;
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
              goto LABEL_95;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_95:
          *(a1 + 128) = v28;
          goto LABEL_96;
        case 0xFu:
          *(a1 + 136) |= 0x10000u;
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

          *(a1 + 132) = v23;
          goto LABEL_96;
        case 0x10u:
          *(a1 + 136) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_90;
        case 0x11u:
          *(a1 + 136) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_78:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 16) = *(*this + v2);
LABEL_90:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_96;
        default:
          if (!PB::Reader::skip(this))
          {
            v39 = 0;
            return v39 & 1;
          }

          v2 = *(this + 1);
LABEL_96:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_100;
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

LABEL_100:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_245E7CC90(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 136);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
    v4 = *(v3 + 136);
    if ((v4 & 0x200) == 0)
    {
LABEL_3:
      if ((v4 & 0x4000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 136);
  if ((v4 & 0x4000) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 136);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 136);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 136);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 136);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 136);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 136);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 136);
  if ((v4 & 0x1000) == 0)
  {
LABEL_11:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 136);
  if ((v4 & 0x800) == 0)
  {
LABEL_12:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 136);
  if ((v4 & 0x2000) == 0)
  {
LABEL_13:
    if ((v4 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 136);
  if ((v4 & 1) == 0)
  {
LABEL_14:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 136);
  if ((v4 & 0x8000) == 0)
  {
LABEL_15:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  v5 = *(v3 + 128);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 136);
  if ((v4 & 0x10000) == 0)
  {
LABEL_16:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    result = PB::Writer::write(this, *(v3 + 72));
    if ((*(v3 + 136) & 2) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

LABEL_33:
  v6 = *(v3 + 132);
  result = PB::Writer::write(this);
  v4 = *(v3 + 136);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_35:
  v7 = *(v3 + 16);

  return PB::Writer::write(this, v7);
}

uint64_t sub_245E7CEA4(uint64_t result)
{
  *result = &unk_2858D2110;
  *(result + 40) = 0;
  return result;
}

void sub_245E7CECC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245E7CF04(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D2110;
  *(a1 + 40) = 0;
  v2 = *(a2 + 40);
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 24);
    v3 = 4;
    *(a1 + 40) = 4;
    *(a1 + 24) = result;
    v2 = *(a2 + 40);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 8) != 0)
  {
LABEL_5:
    result = *(a2 + 32);
    v3 |= 8u;
    *(a1 + 40) = v3;
    *(a1 + 32) = result;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 16);
    *(a1 + 40) = v3 | 2;
    *(a1 + 16) = result;
    return result;
  }

  result = *(a2 + 8);
  v3 |= 1u;
  *(a1 + 40) = v3;
  *(a1 + 8) = result;
  if ((*(a2 + 40) & 2) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_245E7CFA0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if (v5)
  {
    PB::TextFormatter::format(this, "displacement", *(a1 + 8));
    v5 = *(a1 + 40);
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

  else if ((*(a1 + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "endTime", *(a1 + 16));
  v5 = *(a1 + 40);
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
  PB::TextFormatter::format(this, "startTime", *(a1 + 24));
  if ((*(a1 + 40) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 32));
  }

LABEL_6:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E7D064(uint64_t a1, PB::Reader *this)
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
            goto LABEL_47;
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
          *(a1 + 40) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_40:
            *(this + 24) = 1;
            goto LABEL_43;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_42;
        }

        if (v22 == 4)
        {
          *(a1 + 40) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 40) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_42;
        }

        if (v22 == 2)
        {
          *(a1 + 40) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 32) = *(*this + v2);
LABEL_42:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_43;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_43:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_47:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245E7D2EC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
    v4 = *(v3 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 8));
      if ((*(v3 + 40) & 2) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 40) & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 40);
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_9:
  v5 = *(v3 + 16);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245E7D394(uint64_t result)
{
  *result = &unk_2858D2148;
  *(result + 212) = 0;
  return result;
}

void sub_245E7D3BC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E7D3F4(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D2148;
  *(result + 212) = 0;
  v2 = *(a2 + 212);
  if ((v2 & 0x40000) != 0)
  {
    v4 = *(a2 + 152);
    v3 = 0x40000;
    *(result + 212) = 0x40000;
    *(result + 152) = v4;
    v2 = *(a2 + 212);
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
    v5 = *(a2 + 120);
    v3 |= 0x4000u;
    *(result + 212) = v3;
    *(result + 120) = v5;
    v2 = *(a2 + 212);
  }

LABEL_6:
  if ((v2 & 0x400) != 0)
  {
    v6 = *(a2 + 88);
    v3 |= 0x400u;
    *(result + 212) = v3;
    *(result + 88) = v6;
    v2 = *(a2 + 212);
    if ((v2 & 0x800) == 0)
    {
LABEL_8:
      if ((v2 & 0x1000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 0x800) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 96);
  v3 |= 0x800u;
  *(result + 212) = v3;
  *(result + 96) = v7;
  v2 = *(a2 + 212);
  if ((v2 & 0x1000) == 0)
  {
LABEL_9:
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v8 = *(a2 + 104);
  v3 |= 0x1000u;
  *(result + 212) = v3;
  *(result + 104) = v8;
  v2 = *(a2 + 212);
  if ((v2 & 2) == 0)
  {
LABEL_10:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  v9 = *(a2 + 16);
  v3 |= 2u;
  *(result + 212) = v3;
  *(result + 16) = v9;
  v2 = *(a2 + 212);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_11:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  v10 = *(a2 + 200);
  v3 |= 0x1000000u;
  *(result + 212) = v3;
  *(result + 200) = v10;
  v2 = *(a2 + 212);
  if ((v2 & 0x200000) == 0)
  {
LABEL_12:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  v11 = *(a2 + 176);
  v3 |= 0x200000u;
  *(result + 212) = v3;
  *(result + 176) = v11;
  v2 = *(a2 + 212);
  if ((v2 & 0x100000) == 0)
  {
LABEL_13:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  v12 = *(a2 + 168);
  v3 |= 0x100000u;
  *(result + 212) = v3;
  *(result + 168) = v12;
  v2 = *(a2 + 212);
  if ((v2 & 0x20000) == 0)
  {
LABEL_14:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  v13 = *(a2 + 144);
  v3 |= 0x20000u;
  *(result + 212) = v3;
  *(result + 144) = v13;
  v2 = *(a2 + 212);
  if ((v2 & 0x8000) == 0)
  {
LABEL_15:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  v14 = *(a2 + 128);
  v3 |= 0x8000u;
  *(result + 212) = v3;
  *(result + 128) = v14;
  v2 = *(a2 + 212);
  if ((v2 & 0x200) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  v15 = *(a2 + 80);
  v3 |= 0x200u;
  *(result + 212) = v3;
  *(result + 80) = v15;
  v2 = *(a2 + 212);
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  v16 = *(a2 + 56);
  v3 |= 0x40u;
  *(result + 212) = v3;
  *(result + 56) = v16;
  v2 = *(a2 + 212);
  if ((v2 & 0x20) == 0)
  {
LABEL_18:
    if ((v2 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  v17 = *(a2 + 48);
  v3 |= 0x20u;
  *(result + 212) = v3;
  *(result + 48) = v17;
  v2 = *(a2 + 212);
  if ((v2 & 8) == 0)
  {
LABEL_19:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  v18 = *(a2 + 32);
  v3 |= 8u;
  *(result + 212) = v3;
  *(result + 32) = v18;
  v2 = *(a2 + 212);
  if ((v2 & 0x800000) == 0)
  {
LABEL_20:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  v19 = *(a2 + 192);
  v3 |= 0x800000u;
  *(result + 212) = v3;
  *(result + 192) = v19;
  v2 = *(a2 + 212);
  if ((v2 & 0x10) == 0)
  {
LABEL_21:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  v20 = *(a2 + 40);
  v3 |= 0x10u;
  *(result + 212) = v3;
  *(result + 40) = v20;
  v2 = *(a2 + 212);
  if ((v2 & 0x2000) == 0)
  {
LABEL_22:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  v21 = *(a2 + 112);
  v3 |= 0x2000u;
  *(result + 212) = v3;
  *(result + 112) = v21;
  v2 = *(a2 + 212);
  if ((v2 & 0x100) == 0)
  {
LABEL_23:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

LABEL_47:
  v22 = *(a2 + 72);
  v3 |= 0x100u;
  *(result + 212) = v3;
  *(result + 72) = v22;
  v2 = *(a2 + 212);
  if ((v2 & 0x10000) == 0)
  {
LABEL_24:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_48:
  v23 = *(a2 + 136);
  v3 |= 0x10000u;
  *(result + 212) = v3;
  *(result + 136) = v23;
  v2 = *(a2 + 212);
  if ((v2 & 0x80) == 0)
  {
LABEL_25:
    if ((v2 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_50;
  }

LABEL_49:
  v24 = *(a2 + 64);
  v3 |= 0x80u;
  *(result + 212) = v3;
  *(result + 64) = v24;
  v2 = *(a2 + 212);
  if ((v2 & 4) == 0)
  {
LABEL_26:
    if ((v2 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_51;
  }

LABEL_50:
  v25 = *(a2 + 24);
  v3 |= 4u;
  *(result + 212) = v3;
  *(result + 24) = v25;
  v2 = *(a2 + 212);
  if ((v2 & 1) == 0)
  {
LABEL_27:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_52;
  }

LABEL_51:
  v26 = *(a2 + 8);
  v3 |= 1u;
  *(result + 212) = v3;
  *(result + 8) = v26;
  v2 = *(a2 + 212);
  if ((v2 & 0x400000) == 0)
  {
LABEL_28:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_53;
  }

LABEL_52:
  v27 = *(a2 + 184);
  v3 |= 0x400000u;
  *(result + 212) = v3;
  *(result + 184) = v27;
  v2 = *(a2 + 212);
  if ((v2 & 0x80000) == 0)
  {
LABEL_29:
    if ((v2 & 0x2000000) == 0)
    {
      return result;
    }

LABEL_54:
    v29 = *(a2 + 208);
    *(result + 212) = v3 | 0x2000000;
    *(result + 208) = v29;
    return result;
  }

LABEL_53:
  v28 = *(a2 + 160);
  v3 |= 0x80000u;
  *(result + 212) = v3;
  *(result + 160) = v28;
  if ((*(a2 + 212) & 0x2000000) != 0)
  {
    goto LABEL_54;
  }

  return result;
}

uint64_t sub_245E7D6F8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 212);
  if (v5)
  {
    PB::TextFormatter::format(this, "centerOfMassAccelZAmplitudeBackwards", *(a1 + 8));
    v5 = *(a1 + 212);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "height", *(a1 + 16));
  v5 = *(a1 + 212);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "integratedAngleYg", *(a1 + 24));
  v5 = *(a1 + 212);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "integratedAngleYgBackwards", *(a1 + 32));
  v5 = *(a1 + 212);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "integratedCenterOfAccelZMaxBackwards", *(a1 + 40));
  v5 = *(a1 + 212);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "integratedRotationAxisWZ", *(a1 + 48));
  v5 = *(a1 + 212);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "integratedRotationAxisWZForwards", *(a1 + 56));
  v5 = *(a1 + 212);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "integratedRotationRateYBackwards", *(a1 + 64));
  v5 = *(a1 + 212);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "integratedUserAccelTForwards", *(a1 + 72));
  v5 = *(a1 + 212);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "integratedUserAccelY", *(a1 + 80));
  v5 = *(a1 + 212);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "integratedVelocityZ", *(a1 + 88));
  v5 = *(a1 + 212);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "integratedVelocityZBackwards", *(a1 + 96));
  v5 = *(a1 + 212);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "integratedVelocityZForwards", *(a1 + 104));
  v5 = *(a1 + 212);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  v6 = *(a1 + 208);
  PB::TextFormatter::format(this, "isValidPeak");
  v5 = *(a1 + 212);
  if ((v5 & 0x2000) == 0)
  {
LABEL_16:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "medianCadence", *(a1 + 112));
  v5 = *(a1 + 212);
  if ((v5 & 0x4000) == 0)
  {
LABEL_17:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "peakTime", *(a1 + 120));
  v5 = *(a1 + 212);
  if ((v5 & 0x8000) == 0)
  {
LABEL_18:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "rotationAxisWTAmplitudeXForwards", *(a1 + 128));
  v5 = *(a1 + 212);
  if ((v5 & 0x10000) == 0)
  {
LABEL_19:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "rotationRateMaxZForwards", *(a1 + 136));
  v5 = *(a1 + 212);
  if ((v5 & 0x20000) == 0)
  {
LABEL_20:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "rotationTMaxZForwards", *(a1 + 144));
  v5 = *(a1 + 212);
  if ((v5 & 0x40000) == 0)
  {
LABEL_21:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "startTime", *(a1 + 152));
  v5 = *(a1 + 212);
  if ((v5 & 0x80000) == 0)
  {
LABEL_22:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "strideLengthCadence", *(a1 + 160));
  v5 = *(a1 + 212);
  if ((v5 & 0x100000) == 0)
  {
LABEL_23:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "swingAccelAmplitudeYBackwards", *(a1 + 168));
  v5 = *(a1 + 212);
  if ((v5 & 0x200000) == 0)
  {
LABEL_24:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "swingAccelMeanXBackwards", *(a1 + 176));
  v5 = *(a1 + 212);
  if ((v5 & 0x400000) == 0)
  {
LABEL_25:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "swingAccelTZMean", *(a1 + 184));
  v5 = *(a1 + 212);
  if ((v5 & 0x800000) == 0)
  {
LABEL_26:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_55:
  PB::TextFormatter::format(this, "userAccelTMeanXBackards", *(a1 + 192));
  if ((*(a1 + 212) & 0x1000000) != 0)
  {
LABEL_27:
    PB::TextFormatter::format(this, "weight", *(a1 + 200));
  }

LABEL_28:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E7DA7C(uint64_t a1, PB::Reader *this)
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
        goto LABEL_110;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 212) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 152) = *(*this + v2);
          goto LABEL_105;
        case 2u:
          *(a1 + 212) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 120) = *(*this + v2);
          goto LABEL_105;
        case 3u:
          *(a1 + 212) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_105;
        case 4u:
          *(a1 + 212) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_105;
        case 5u:
          *(a1 + 212) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_105;
        case 6u:
          *(a1 + 212) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_105;
        case 7u:
          *(a1 + 212) |= 0x1000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 200) = *(*this + v2);
          goto LABEL_105;
        case 8u:
          *(a1 + 212) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 176) = *(*this + v2);
          goto LABEL_105;
        case 9u:
          *(a1 + 212) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 168) = *(*this + v2);
          goto LABEL_105;
        case 0xAu:
          *(a1 + 212) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 144) = *(*this + v2);
          goto LABEL_105;
        case 0xBu:
          *(a1 + 212) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 128) = *(*this + v2);
          goto LABEL_105;
        case 0xCu:
          *(a1 + 212) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_105;
        case 0xDu:
          *(a1 + 212) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_105;
        case 0xEu:
          *(a1 + 212) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_105;
        case 0xFu:
          *(a1 + 212) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_105;
        case 0x10u:
          *(a1 + 212) |= 0x800000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 192) = *(*this + v2);
          goto LABEL_105;
        case 0x11u:
          *(a1 + 212) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_105;
        case 0x12u:
          *(a1 + 212) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_105;
        case 0x13u:
          *(a1 + 212) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_105;
        case 0x14u:
          *(a1 + 212) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 136) = *(*this + v2);
          goto LABEL_105;
        case 0x15u:
          *(a1 + 212) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_105;
        case 0x16u:
          *(a1 + 212) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_105;
        case 0x17u:
          *(a1 + 212) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_105;
        case 0x18u:
          *(a1 + 212) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 184) = *(*this + v2);
          goto LABEL_105;
        case 0x19u:
          *(a1 + 212) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_99:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 160) = *(*this + v2);
LABEL_105:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_106;
        case 0x1Au:
          *(a1 + 212) |= 0x2000000u;
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

          *(a1 + 208) = v23;
          goto LABEL_106;
        default:
          if (!PB::Reader::skip(this))
          {
            v24 = 0;
            return v24 & 1;
          }

          v2 = *(this + 1);
LABEL_106:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_110;
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

LABEL_110:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t sub_245E7E248(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 212);
  if ((v4 & 0x40000) != 0)
  {
    result = PB::Writer::write(this, *(result + 152));
    v4 = *(v3 + 212);
    if ((v4 & 0x4000) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v4 & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 212);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 212);
  if ((v4 & 0x800) == 0)
  {
LABEL_5:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 212);
  if ((v4 & 0x1000) == 0)
  {
LABEL_6:
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 212);
  if ((v4 & 2) == 0)
  {
LABEL_7:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 212);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_8:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 200));
  v4 = *(v3 + 212);
  if ((v4 & 0x200000) == 0)
  {
LABEL_9:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 176));
  v4 = *(v3 + 212);
  if ((v4 & 0x100000) == 0)
  {
LABEL_10:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 168));
  v4 = *(v3 + 212);
  if ((v4 & 0x20000) == 0)
  {
LABEL_11:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 212);
  if ((v4 & 0x8000) == 0)
  {
LABEL_12:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 212);
  if ((v4 & 0x200) == 0)
  {
LABEL_13:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 212);
  if ((v4 & 0x40) == 0)
  {
LABEL_14:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 212);
  if ((v4 & 0x20) == 0)
  {
LABEL_15:
    if ((v4 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 212);
  if ((v4 & 8) == 0)
  {
LABEL_16:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 212);
  if ((v4 & 0x800000) == 0)
  {
LABEL_17:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 192));
  v4 = *(v3 + 212);
  if ((v4 & 0x10) == 0)
  {
LABEL_18:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 212);
  if ((v4 & 0x2000) == 0)
  {
LABEL_19:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 212);
  if ((v4 & 0x100) == 0)
  {
LABEL_20:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 212);
  if ((v4 & 0x10000) == 0)
  {
LABEL_21:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 212);
  if ((v4 & 0x80) == 0)
  {
LABEL_22:
    if ((v4 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 212);
  if ((v4 & 4) == 0)
  {
LABEL_23:
    if ((v4 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 212);
  if ((v4 & 1) == 0)
  {
LABEL_24:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 212);
  if ((v4 & 0x400000) == 0)
  {
LABEL_25:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

LABEL_52:
    result = PB::Writer::write(this, *(v3 + 160));
    if ((*(v3 + 212) & 0x2000000) == 0)
    {
      return result;
    }

    goto LABEL_53;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 184));
  v4 = *(v3 + 212);
  if ((v4 & 0x80000) != 0)
  {
    goto LABEL_52;
  }

LABEL_26:
  if ((v4 & 0x2000000) == 0)
  {
    return result;
  }

LABEL_53:
  v5 = *(v3 + 208);

  return PB::Writer::write(this);
}

uint64_t sub_245E7E558(uint64_t result)
{
  *result = &unk_2858D2180;
  *(result + 208) = 0;
  return result;
}

void sub_245E7E580(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245E7E5B8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D2180;
  *(a1 + 208) = 0;
  v2 = *(a2 + 208);
  if ((v2 & 0x400) != 0)
  {
    result = *(a2 + 88);
    v3 = 1024;
    *(a1 + 208) = 1024;
    *(a1 + 88) = result;
    v2 = *(a2 + 208);
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x10000) != 0)
  {
LABEL_5:
    result = *(a2 + 136);
    v3 |= 0x10000u;
    *(a1 + 208) = v3;
    *(a1 + 136) = result;
    v2 = *(a2 + 208);
  }

LABEL_6:
  if (v2)
  {
    result = *(a2 + 8);
    v3 |= 1u;
    *(a1 + 208) = v3;
    *(a1 + 8) = result;
    v2 = *(a2 + 208);
    if ((v2 & 0x800000) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 0x800000) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 192);
  v3 |= 0x800000u;
  *(a1 + 208) = v3;
  *(a1 + 192) = result;
  v2 = *(a2 + 208);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = *(a2 + 56);
  v3 |= 0x40u;
  *(a1 + 208) = v3;
  *(a1 + 56) = result;
  v2 = *(a2 + 208);
  if ((v2 & 0x800) == 0)
  {
LABEL_10:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = *(a2 + 96);
  v3 |= 0x800u;
  *(a1 + 208) = v3;
  *(a1 + 96) = result;
  v2 = *(a2 + 208);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = *(a2 + 200);
  v3 |= 0x1000000u;
  *(a1 + 208) = v3;
  *(a1 + 200) = result;
  v2 = *(a2 + 208);
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = *(a2 + 48);
  v3 |= 0x20u;
  *(a1 + 208) = v3;
  *(a1 + 48) = result;
  v2 = *(a2 + 208);
  if ((v2 & 0x80) == 0)
  {
LABEL_13:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = *(a2 + 64);
  v3 |= 0x80u;
  *(a1 + 208) = v3;
  *(a1 + 64) = result;
  v2 = *(a2 + 208);
  if ((v2 & 0x100000) == 0)
  {
LABEL_14:
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 168);
  v3 |= 0x100000u;
  *(a1 + 208) = v3;
  *(a1 + 168) = result;
  v2 = *(a2 + 208);
  if ((v2 & 8) == 0)
  {
LABEL_15:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = *(a2 + 32);
  v3 |= 8u;
  *(a1 + 208) = v3;
  *(a1 + 32) = result;
  v2 = *(a2 + 208);
  if ((v2 & 0x200000) == 0)
  {
LABEL_16:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 176);
  v3 |= 0x200000u;
  *(a1 + 208) = v3;
  *(a1 + 176) = result;
  v2 = *(a2 + 208);
  if ((v2 & 0x8000) == 0)
  {
LABEL_17:
    if ((v2 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = *(a2 + 128);
  v3 |= 0x8000u;
  *(a1 + 208) = v3;
  *(a1 + 128) = result;
  v2 = *(a2 + 208);
  if ((v2 & 4) == 0)
  {
LABEL_18:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = *(a2 + 24);
  v3 |= 4u;
  *(a1 + 208) = v3;
  *(a1 + 24) = result;
  v2 = *(a2 + 208);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = *(a2 + 40);
  v3 |= 0x10u;
  *(a1 + 208) = v3;
  *(a1 + 40) = result;
  v2 = *(a2 + 208);
  if ((v2 & 0x200) == 0)
  {
LABEL_20:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = *(a2 + 80);
  v3 |= 0x200u;
  *(a1 + 208) = v3;
  *(a1 + 80) = result;
  v2 = *(a2 + 208);
  if ((v2 & 0x2000) == 0)
  {
LABEL_21:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = *(a2 + 112);
  v3 |= 0x2000u;
  *(a1 + 208) = v3;
  *(a1 + 112) = result;
  v2 = *(a2 + 208);
  if ((v2 & 0x1000) == 0)
  {
LABEL_22:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = *(a2 + 104);
  v3 |= 0x1000u;
  *(a1 + 208) = v3;
  *(a1 + 104) = result;
  v2 = *(a2 + 208);
  if ((v2 & 0x4000) == 0)
  {
LABEL_23:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = *(a2 + 120);
  v3 |= 0x4000u;
  *(a1 + 208) = v3;
  *(a1 + 120) = result;
  v2 = *(a2 + 208);
  if ((v2 & 0x80000) == 0)
  {
LABEL_24:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = *(a2 + 160);
  v3 |= 0x80000u;
  *(a1 + 208) = v3;
  *(a1 + 160) = result;
  v2 = *(a2 + 208);
  if ((v2 & 0x400000) == 0)
  {
LABEL_25:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = *(a2 + 184);
  v3 |= 0x400000u;
  *(a1 + 208) = v3;
  *(a1 + 184) = result;
  v2 = *(a2 + 208);
  if ((v2 & 0x40000) == 0)
  {
LABEL_26:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = *(a2 + 152);
  v3 |= 0x40000u;
  *(a1 + 208) = v3;
  *(a1 + 152) = result;
  v2 = *(a2 + 208);
  if ((v2 & 0x20000) == 0)
  {
LABEL_27:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = *(a2 + 144);
  v3 |= 0x20000u;
  *(a1 + 208) = v3;
  *(a1 + 144) = result;
  v2 = *(a2 + 208);
  if ((v2 & 0x100) == 0)
  {
LABEL_28:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_52:
    result = *(a2 + 16);
    *(a1 + 208) = v3 | 2;
    *(a1 + 16) = result;
    return result;
  }

LABEL_51:
  result = *(a2 + 72);
  v3 |= 0x100u;
  *(a1 + 208) = v3;
  *(a1 + 72) = result;
  if ((*(a2 + 208) & 2) != 0)
  {
    goto LABEL_52;
  }

  return result;
}

uint64_t sub_245E7E8A0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 208);
  if (v5)
  {
    PB::TextFormatter::format(this, "acceleration", *(a1 + 8));
    v5 = *(a1 + 208);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "centerOfMassAccelAmplitude", *(a1 + 16));
  v5 = *(a1 + 208);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "centerOfMassAccelMax", *(a1 + 24));
  v5 = *(a1 + 208);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "centripetalAccelMeanY", *(a1 + 32));
  v5 = *(a1 + 208);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "centripetalAccelMeanZ", *(a1 + 40));
  v5 = *(a1 + 208);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "height", *(a1 + 48));
  v5 = *(a1 + 208);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "position", *(a1 + 56));
  v5 = *(a1 + 208);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "rotationProjectedGravityAmplitude", *(a1 + 64));
  v5 = *(a1 + 208);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "rotationRateMean", *(a1 + 72));
  v5 = *(a1 + 208);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "rotationRateMeanX", *(a1 + 80));
  v5 = *(a1 + 208);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "startTime", *(a1 + 88));
  v5 = *(a1 + 208);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "strideLengthCadence", *(a1 + 96));
  v5 = *(a1 + 208);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "swingAccelAmplitudeY", *(a1 + 104));
  v5 = *(a1 + 208);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "swingAccelAmplitudeZ", *(a1 + 112));
  v5 = *(a1 + 208);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "swingAccelMaxY", *(a1 + 120));
  v5 = *(a1 + 208);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "swingAccelMaxZ", *(a1 + 128));
  v5 = *(a1 + 208);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 136));
  v5 = *(a1 + 208);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "userAccelAmplitudeZ", *(a1 + 144));
  v5 = *(a1 + 208);
  if ((v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "userAccelMaxX", *(a1 + 152));
  v5 = *(a1 + 208);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "userAccelMaxY", *(a1 + 160));
  v5 = *(a1 + 208);
  if ((v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "userAccelMean", *(a1 + 168));
  v5 = *(a1 + 208);
  if ((v5 & 0x200000) == 0)
  {
LABEL_23:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "userAccelMeanY", *(a1 + 176));
  v5 = *(a1 + 208);
  if ((v5 & 0x400000) == 0)
  {
LABEL_24:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "userAccelProjectedGravityAmplitudeCadence", *(a1 + 184));
  v5 = *(a1 + 208);
  if ((v5 & 0x800000) == 0)
  {
LABEL_25:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_53:
  PB::TextFormatter::format(this, "velocity", *(a1 + 192));
  if ((*(a1 + 208) & 0x1000000) != 0)
  {
LABEL_26:
    PB::TextFormatter::format(this, "weight", *(a1 + 200));
  }

LABEL_27:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E7EC04(uint64_t a1, PB::Reader *this)
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
        goto LABEL_106;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 208) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_101;
        case 2u:
          *(a1 + 208) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 136) = *(*this + v2);
          goto LABEL_101;
        case 3u:
          *(a1 + 208) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_101;
        case 4u:
          *(a1 + 208) |= 0x800000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 192) = *(*this + v2);
          goto LABEL_101;
        case 5u:
          *(a1 + 208) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_101;
        case 6u:
          *(a1 + 208) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_101;
        case 7u:
          *(a1 + 208) |= 0x1000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 200) = *(*this + v2);
          goto LABEL_101;
        case 8u:
          *(a1 + 208) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_101;
        case 9u:
          *(a1 + 208) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_101;
        case 0xAu:
          *(a1 + 208) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 168) = *(*this + v2);
          goto LABEL_101;
        case 0xBu:
          *(a1 + 208) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_101;
        case 0xCu:
          *(a1 + 208) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 176) = *(*this + v2);
          goto LABEL_101;
        case 0xDu:
          *(a1 + 208) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 128) = *(*this + v2);
          goto LABEL_101;
        case 0xEu:
          *(a1 + 208) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_101;
        case 0xFu:
          *(a1 + 208) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_101;
        case 0x10u:
          *(a1 + 208) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_101;
        case 0x11u:
          *(a1 + 208) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_101;
        case 0x12u:
          *(a1 + 208) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_101;
        case 0x13u:
          *(a1 + 208) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 120) = *(*this + v2);
          goto LABEL_101;
        case 0x14u:
          *(a1 + 208) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 160) = *(*this + v2);
          goto LABEL_101;
        case 0x15u:
          *(a1 + 208) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 184) = *(*this + v2);
          goto LABEL_101;
        case 0x16u:
          *(a1 + 208) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 152) = *(*this + v2);
          goto LABEL_101;
        case 0x17u:
          *(a1 + 208) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 144) = *(*this + v2);
          goto LABEL_101;
        case 0x18u:
          *(a1 + 208) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_101;
        case 0x19u:
          *(a1 + 208) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_97:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 16) = *(*this + v2);
LABEL_101:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_102;
        default:
          if (!PB::Reader::skip(this))
          {
            v22 = 0;
            return v22 & 1;
          }

          v2 = *(this + 1);
LABEL_102:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_106;
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

LABEL_106:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_245E7F384(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 208);
  if ((v4 & 0x400) != 0)
  {
    result = PB::Writer::write(this, *(result + 88));
    v4 = *(v3 + 208);
    if ((v4 & 0x10000) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v4 & 0x10000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 208);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 208);
  if ((v4 & 0x800000) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 192));
  v4 = *(v3 + 208);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 208);
  if ((v4 & 0x800) == 0)
  {
LABEL_7:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 208);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_8:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 200));
  v4 = *(v3 + 208);
  if ((v4 & 0x20) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 208);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 208);
  if ((v4 & 0x100000) == 0)
  {
LABEL_11:
    if ((v4 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 168));
  v4 = *(v3 + 208);
  if ((v4 & 8) == 0)
  {
LABEL_12:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 208);
  if ((v4 & 0x200000) == 0)
  {
LABEL_13:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 176));
  v4 = *(v3 + 208);
  if ((v4 & 0x8000) == 0)
  {
LABEL_14:
    if ((v4 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 208);
  if ((v4 & 4) == 0)
  {
LABEL_15:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 208);
  if ((v4 & 0x10) == 0)
  {
LABEL_16:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 208);
  if ((v4 & 0x200) == 0)
  {
LABEL_17:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 208);
  if ((v4 & 0x2000) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 208);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 208);
  if ((v4 & 0x4000) == 0)
  {
LABEL_20:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 208);
  if ((v4 & 0x80000) == 0)
  {
LABEL_21:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 160));
  v4 = *(v3 + 208);
  if ((v4 & 0x400000) == 0)
  {
LABEL_22:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 184));
  v4 = *(v3 + 208);
  if ((v4 & 0x40000) == 0)
  {
LABEL_23:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 152));
  v4 = *(v3 + 208);
  if ((v4 & 0x20000) == 0)
  {
LABEL_24:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_25;
    }

LABEL_50:
    result = PB::Writer::write(this, *(v3 + 72));
    if ((*(v3 + 208) & 2) == 0)
    {
      return result;
    }

    goto LABEL_51;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 208);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_50;
  }

LABEL_25:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_51:
  v5 = *(v3 + 16);

  return PB::Writer::write(this, v5);
}

void *sub_245E7F678(void *result)
{
  *result = &unk_2858D21B8;
  result[1] = 0;
  return result;
}

void sub_245E7F698(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D21B8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245E7F718(PB::Base *a1)
{
  sub_245E7F698(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245E7F750(void *result, uint64_t a2)
{
  *result = &unk_2858D21B8;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245E7F7F8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E7F874(int a1, PB::Reader *this)
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

uint64_t sub_245E7FA90(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245E7FAAC(void *result)
{
  *result = &unk_2858D21F0;
  result[1] = 0;
  return result;
}

void sub_245E7FACC(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D21F0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245E7FB4C(PB::Base *a1)
{
  sub_245E7FACC(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245E7FB84(void *result, uint64_t a2)
{
  *result = &unk_2858D21F0;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245E7FC2C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E7FCA8(int a1, PB::Reader *this)
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

uint64_t sub_245E7FEC4(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_245E7FEE0(uint64_t result)
{
  *result = &unk_2858D2228;
  *(result + 20) = 0;
  return result;
}

void sub_245E7FF08(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E7FF40(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D2228;
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

uint64_t sub_245E7FFA4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "code");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    v7 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E80020(uint64_t a1, PB::Reader *this)
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

uint64_t sub_245E803A0(uint64_t result, PB::Writer *this)
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

uint64_t sub_245E8040C(uint64_t result)
{
  *result = &unk_2858D2260;
  *(result + 28) = 0;
  return result;
}

void sub_245E80434(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E8046C(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D2260;
  *(result + 28) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 28) = 1;
    *(result + 8) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 20);
    v3 |= 4u;
    *(result + 28) = v3;
    *(result + 20) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 2) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_10:
    v7 = *(a2 + 24);
    *(result + 28) = v3 | 8;
    *(result + 24) = v7;
    return result;
  }

  v6 = *(a2 + 16);
  v3 |= 2u;
  *(result + 28) = v3;
  *(result + 16) = v6;
  if ((*(a2 + 28) & 8) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_245E80508(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "dramDurationMs");
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

  v8 = *(a1 + 24);
  PB::TextFormatter::format(this, "hapticsOn");
  v5 = *(a1 + 28);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = *(a1 + 8);
  PB::TextFormatter::format(this, "timestamp");
  if ((*(a1 + 28) & 4) != 0)
  {
LABEL_5:
    v6 = *(a1 + 20);
    PB::TextFormatter::format(this, "vehicularFlags");
  }

LABEL_6:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E805CC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_101;
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
      if ((v10 >> 3) > 2)
      {
        if (v23 == 3)
        {
          *(a1 + 28) |= 2u;
          v42 = *(this + 1);
          v2 = *(this + 2);
          v43 = *this;
          if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v2)
          {
            v64 = 0;
            v65 = 0;
            v46 = 0;
            if (v2 <= v42)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v66 = v3 - v42;
            v67 = (v43 + v42);
            v68 = v42 + 1;
            while (1)
            {
              if (!v66)
              {
                LODWORD(v46) = 0;
                *(this + 24) = 1;
                goto LABEL_96;
              }

              v69 = v68;
              v70 = *v67;
              *(this + 1) = v69;
              v46 |= (v70 & 0x7F) << v64;
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
                LODWORD(v46) = 0;
                goto LABEL_95;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v46) = 0;
            }

LABEL_95:
            v3 = v69;
          }

          else
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v47 = (v43 + v42);
            v48 = v42 + 1;
            while (1)
            {
              v3 = v48;
              *(this + 1) = v48;
              v49 = *v47++;
              v46 |= (v49 & 0x7F) << v44;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              ++v48;
              v14 = v45++ > 8;
              if (v14)
              {
                LODWORD(v46) = 0;
                break;
              }
            }
          }

LABEL_96:
          *(a1 + 16) = v46;
          goto LABEL_97;
        }

        if (v23 == 4)
        {
          *(a1 + 28) |= 8u;
          v3 = *(this + 1);
          v2 = *(this + 2);
          if (v3 >= v2)
          {
            v33 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v32 = *(*this + v3++);
            *(this + 1) = v3;
            v33 = v32 != 0;
          }

          *(a1 + 24) = v33;
          goto LABEL_97;
        }
      }

      else
      {
        if (v23 == 1)
        {
          *(a1 + 28) |= 1u;
          v34 = *(this + 1);
          v2 = *(this + 2);
          v35 = *this;
          if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v2)
          {
            v57 = 0;
            v58 = 0;
            v38 = 0;
            if (v2 <= v34)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v59 = v3 - v34;
            v60 = (v35 + v34);
            v61 = v34 + 1;
            while (1)
            {
              if (!v59)
              {
                v38 = 0;
                *(this + 24) = 1;
                goto LABEL_92;
              }

              v62 = v61;
              v63 = *v60;
              *(this + 1) = v62;
              v38 |= (v63 & 0x7F) << v57;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              --v59;
              ++v60;
              v61 = v62 + 1;
              v14 = v58++ > 8;
              if (v14)
              {
                v38 = 0;
                goto LABEL_91;
              }
            }

            if (*(this + 24))
            {
              v38 = 0;
            }

LABEL_91:
            v3 = v62;
          }

          else
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = (v35 + v34);
            v40 = v34 + 1;
            while (1)
            {
              v3 = v40;
              *(this + 1) = v40;
              v41 = *v39++;
              v38 |= (v41 & 0x7F) << v36;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              ++v40;
              v14 = v37++ > 8;
              if (v14)
              {
                v38 = 0;
                break;
              }
            }
          }

LABEL_92:
          *(a1 + 8) = v38;
          goto LABEL_97;
        }

        if (v23 == 2)
        {
          *(a1 + 28) |= 4u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v50 = 0;
            v51 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v52 = v3 - v24;
            v53 = (v25 + v24);
            v54 = v24 + 1;
            while (1)
            {
              if (!v52)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_88;
              }

              v55 = v54;
              v56 = *v53;
              *(this + 1) = v55;
              v28 |= (v56 & 0x7F) << v50;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              --v52;
              ++v53;
              v54 = v55 + 1;
              v14 = v51++ > 8;
              if (v14)
              {
                LODWORD(v28) = 0;
                goto LABEL_87;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }

LABEL_87:
            v3 = v55;
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
                LODWORD(v28) = 0;
                break;
              }
            }
          }

LABEL_88:
          *(a1 + 20) = v28;
          goto LABEL_97;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v71 = 0;
        return v71 & 1;
      }

      v3 = *(this + 1);
      v2 = *(this + 2);
LABEL_97:
      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_101:
  v71 = v4 ^ 1;
  return v71 & 1;
}

uint64_t sub_245E80AAC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 28);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = *(v3 + 16);
      result = PB::Writer::writeVarInt(this);
      if ((*(v3 + 28) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 20);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 28);
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v8 = *(v3 + 24);

  return PB::Writer::write(this);
}

uint64_t sub_245E80B54(uint64_t result)
{
  *result = &unk_2858D2298;
  *(result + 52) = 0;
  return result;
}

void sub_245E80B7C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E80BB4(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D2298;
  *(result + 52) = 0;
  v2 = *(a2 + 52);
  if ((v2 & 0x20) != 0)
  {
    v4 = *(a2 + 44);
    v3 = 32;
    *(result + 52) = 32;
    *(result + 44) = v4;
    v2 = *(a2 + 52);
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 52) & 0x40) != 0)
  {
LABEL_5:
    v5 = *(a2 + 48);
    v3 |= 0x40u;
    *(result + 52) = v3;
    *(result + 48) = v5;
    v2 = *(a2 + 52);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 40);
    v3 |= 0x10u;
    *(result + 52) = v3;
    *(result + 40) = v6;
    v2 = *(a2 + 52);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 32);
  v3 |= 8u;
  *(result + 52) = v3;
  *(result + 32) = v7;
  v2 = *(a2 + 52);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(a2 + 8);
  v3 |= 1u;
  *(result + 52) = v3;
  *(result + 8) = v8;
  v2 = *(a2 + 52);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_16:
    v10 = *(a2 + 16);
    *(result + 52) = v3 | 2;
    *(result + 16) = v10;
    return result;
  }

LABEL_15:
  v9 = *(a2 + 24);
  v3 |= 4u;
  *(result + 52) = v3;
  *(result + 24) = v9;
  if ((*(a2 + 52) & 2) != 0)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_245E80CA4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 52);
  if (v5)
  {
    v7 = *(a1 + 8);
    PB::TextFormatter::format(this, "createdAtTimestamp");
    v5 = *(a1 + 52);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 52) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 40);
  PB::TextFormatter::format(this, "epochNumber");
  v5 = *(a1 + 52);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = *(a1 + 16);
  PB::TextFormatter::format(this, "epochTimestamp");
  v5 = *(a1 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10 = *(a1 + 24);
  PB::TextFormatter::format(this, "lastRealTriggerTimestamp");
  v5 = *(a1 + 52);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = *(a1 + 44);
  PB::TextFormatter::format(this, "mode");
  v5 = *(a1 + 52);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v12 = *(a1 + 32);
  PB::TextFormatter::format(this, "receivedAtTimestamp");
  if ((*(a1 + 52) & 0x40) != 0)
  {
LABEL_8:
    v6 = *(a1 + 48);
    PB::TextFormatter::format(this, "sessionNumber");
  }

LABEL_9:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E80DC8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_185;
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
      if ((v10 >> 3) <= 4)
      {
        switch(v23)
        {
          case 2:
            *(a1 + 52) |= 0x20u;
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
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v82 = v3 - v48;
              v83 = (v49 + v48);
              v84 = v48 + 1;
              while (1)
              {
                if (!v82)
                {
                  LODWORD(v52) = 0;
                  *(this + 24) = 1;
                  goto LABEL_156;
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
                  goto LABEL_155;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v52) = 0;
              }

LABEL_155:
              v3 = v85;
            }

            else
            {
              v50 = 0;
              v51 = 0;
              v52 = 0;
              v53 = (v49 + v48);
              v54 = v48 + 1;
              while (1)
              {
                v3 = v54;
                *(this + 1) = v54;
                v55 = *v53++;
                v52 |= (v55 & 0x7F) << v50;
                if ((v55 & 0x80) == 0)
                {
                  break;
                }

                v50 += 7;
                ++v54;
                v14 = v51++ > 8;
                if (v14)
                {
                  LODWORD(v52) = 0;
                  break;
                }
              }
            }

LABEL_156:
            *(a1 + 44) = v52;
            goto LABEL_181;
          case 3:
            *(a1 + 52) |= 0x40u;
            v72 = *(this + 1);
            v2 = *(this + 2);
            v73 = *this;
            if (v72 > 0xFFFFFFFFFFFFFFF5 || v72 + 10 > v2)
            {
              v122 = 0;
              v123 = 0;
              v76 = 0;
              if (v2 <= v72)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v124 = v3 - v72;
              v125 = (v73 + v72);
              v126 = v72 + 1;
              while (1)
              {
                if (!v124)
                {
                  LODWORD(v76) = 0;
                  *(this + 24) = 1;
                  goto LABEL_180;
                }

                v127 = v126;
                v128 = *v125;
                *(this + 1) = v127;
                v76 |= (v128 & 0x7F) << v122;
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
                  LODWORD(v76) = 0;
                  goto LABEL_179;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v76) = 0;
              }

LABEL_179:
              v3 = v127;
            }

            else
            {
              v74 = 0;
              v75 = 0;
              v76 = 0;
              v77 = (v73 + v72);
              v78 = v72 + 1;
              while (1)
              {
                v3 = v78;
                *(this + 1) = v78;
                v79 = *v77++;
                v76 |= (v79 & 0x7F) << v74;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v74 += 7;
                ++v78;
                v14 = v75++ > 8;
                if (v14)
                {
                  LODWORD(v76) = 0;
                  break;
                }
              }
            }

LABEL_180:
            *(a1 + 48) = v76;
            goto LABEL_181;
          case 4:
            *(a1 + 52) |= 0x10u;
            v32 = *(this + 1);
            v2 = *(this + 2);
            v33 = *this;
            if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
            {
              v115 = 0;
              v116 = 0;
              v36 = 0;
              if (v2 <= v32)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v117 = v3 - v32;
              v118 = (v33 + v32);
              v119 = v32 + 1;
              while (1)
              {
                if (!v117)
                {
                  LODWORD(v36) = 0;
                  *(this + 24) = 1;
                  goto LABEL_176;
                }

                v120 = v119;
                v121 = *v118;
                *(this + 1) = v120;
                v36 |= (v121 & 0x7F) << v115;
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
                  LODWORD(v36) = 0;
                  goto LABEL_175;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v36) = 0;
              }

LABEL_175:
              v3 = v120;
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

LABEL_176:
            *(a1 + 40) = v36;
            goto LABEL_181;
        }
      }

      else if (v23 > 99)
      {
        if (v23 == 100)
        {
          *(a1 + 52) |= 4u;
          v64 = *(this + 1);
          v2 = *(this + 2);
          v65 = *this;
          if (v64 > 0xFFFFFFFFFFFFFFF5 || v64 + 10 > v2)
          {
            v94 = 0;
            v95 = 0;
            v68 = 0;
            if (v2 <= v64)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v96 = v3 - v64;
            v97 = (v65 + v64);
            v98 = v64 + 1;
            while (1)
            {
              if (!v96)
              {
                v68 = 0;
                *(this + 24) = 1;
                goto LABEL_164;
              }

              v99 = v98;
              v100 = *v97;
              *(this + 1) = v99;
              v68 |= (v100 & 0x7F) << v94;
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
                v68 = 0;
                goto LABEL_163;
              }
            }

            if (*(this + 24))
            {
              v68 = 0;
            }

LABEL_163:
            v3 = v99;
          }

          else
          {
            v66 = 0;
            v67 = 0;
            v68 = 0;
            v69 = (v65 + v64);
            v70 = v64 + 1;
            while (1)
            {
              v3 = v70;
              *(this + 1) = v70;
              v71 = *v69++;
              v68 |= (v71 & 0x7F) << v66;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              ++v70;
              v14 = v67++ > 8;
              if (v14)
              {
                v68 = 0;
                break;
              }
            }
          }

LABEL_164:
          *(a1 + 24) = v68;
          goto LABEL_181;
        }

        if (v23 == 101)
        {
          *(a1 + 52) |= 2u;
          v40 = *(this + 1);
          v2 = *(this + 2);
          v41 = *this;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v108 = 0;
            v109 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v110 = v3 - v40;
            v111 = (v41 + v40);
            v112 = v40 + 1;
            while (1)
            {
              if (!v110)
              {
                v44 = 0;
                *(this + 24) = 1;
                goto LABEL_172;
              }

              v113 = v112;
              v114 = *v111;
              *(this + 1) = v113;
              v44 |= (v114 & 0x7F) << v108;
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
                v44 = 0;
                goto LABEL_171;
              }
            }

            if (*(this + 24))
            {
              v44 = 0;
            }

LABEL_171:
            v3 = v113;
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
                v44 = 0;
                break;
              }
            }
          }

LABEL_172:
          *(a1 + 16) = v44;
          goto LABEL_181;
        }
      }

      else
      {
        if (v23 == 5)
        {
          *(a1 + 52) |= 8u;
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
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v89 = v3 - v56;
            v90 = (v57 + v56);
            v91 = v56 + 1;
            while (1)
            {
              if (!v89)
              {
                v60 = 0;
                *(this + 24) = 1;
                goto LABEL_160;
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
                v60 = 0;
                goto LABEL_159;
              }
            }

            if (*(this + 24))
            {
              v60 = 0;
            }

LABEL_159:
            v3 = v92;
          }

          else
          {
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v61 = (v57 + v56);
            v62 = v56 + 1;
            while (1)
            {
              v3 = v62;
              *(this + 1) = v62;
              v63 = *v61++;
              v60 |= (v63 & 0x7F) << v58;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              ++v62;
              v14 = v59++ > 8;
              if (v14)
              {
                v60 = 0;
                break;
              }
            }
          }

LABEL_160:
          *(a1 + 32) = v60;
          goto LABEL_181;
        }

        if (v23 == 6)
        {
          *(a1 + 52) |= 1u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v101 = 0;
            v102 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v103 = v3 - v24;
            v104 = (v25 + v24);
            v105 = v24 + 1;
            while (1)
            {
              if (!v103)
              {
                v28 = 0;
                *(this + 24) = 1;
                goto LABEL_168;
              }

              v106 = v105;
              v107 = *v104;
              *(this + 1) = v106;
              v28 |= (v107 & 0x7F) << v101;
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
                v28 = 0;
                goto LABEL_167;
              }
            }

            if (*(this + 24))
            {
              v28 = 0;
            }

LABEL_167:
            v3 = v106;
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

LABEL_168:
          *(a1 + 8) = v28;
          goto LABEL_181;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v129 = 0;
        return v129 & 1;
      }

      v3 = *(this + 1);
      v2 = *(this + 2);
LABEL_181:
      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_185:
  v129 = v4 ^ 1;
  return v129 & 1;
}

uint64_t sub_245E81694(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 52);
  if ((v4 & 0x20) != 0)
  {
    v5 = *(result + 44);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 52);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 52) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v7 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v8 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v10 = *(v3 + 24);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 52) & 2) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  v9 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_15:
  v11 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

void *sub_245E81790(void *result)
{
  *result = &unk_2858D22D0;
  *(result + 212) = 0;
  return result;
}

void sub_245E817B8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E817F0(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D22D0;
  *(result + 212) = 0;
  v2 = *(a2 + 212);
  if ((v2 & 0x800) != 0)
  {
    v4 = *(a2 + 96);
    v3 = 2048;
    *(result + 212) = 2048;
    *(result + 96) = v4;
    v2 = *(a2 + 212);
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x200000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 140);
    v3 |= 0x200000uLL;
    *(result + 212) = v3;
    *(result + 140) = v5;
    v2 = *(a2 + 212);
  }

LABEL_6:
  if ((v2 & 0x40) != 0)
  {
    v6 = *(a2 + 56);
    v3 |= 0x40uLL;
    *(result + 212) = v3;
    *(result + 56) = v6;
    v2 = *(a2 + 212);
    if ((v2 & 0x10000) == 0)
    {
LABEL_8:
      if ((v2 & 0x1000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_47;
    }
  }

  else if ((v2 & 0x10000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 120);
  v3 |= 0x10000uLL;
  *(result + 212) = v3;
  *(result + 120) = v7;
  v2 = *(a2 + 212);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_9:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  v8 = *(a2 + 152);
  v3 |= 0x1000000uLL;
  *(result + 212) = v3;
  *(result + 152) = v8;
  v2 = *(a2 + 212);
  if ((v2 & 0x100000) == 0)
  {
LABEL_10:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  v9 = *(a2 + 136);
  v3 |= 0x100000uLL;
  *(result + 212) = v3;
  *(result + 136) = v9;
  v2 = *(a2 + 212);
  if ((v2 & 0x20) == 0)
  {
LABEL_11:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  v10 = *(a2 + 48);
  v3 |= 0x20uLL;
  *(result + 212) = v3;
  *(result + 48) = v10;
  v2 = *(a2 + 212);
  if ((v2 & 0x40000) == 0)
  {
LABEL_12:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  v11 = *(a2 + 128);
  v3 |= 0x40000uLL;
  *(result + 212) = v3;
  *(result + 128) = v11;
  v2 = *(a2 + 212);
  if ((v2 & 0x800000) == 0)
  {
LABEL_13:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  v12 = *(a2 + 148);
  v3 |= 0x800000uLL;
  *(result + 212) = v3;
  *(result + 148) = v12;
  v2 = *(a2 + 212);
  if ((v2 & 0x400000) == 0)
  {
LABEL_14:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  v13 = *(a2 + 144);
  v3 |= 0x400000uLL;
  *(result + 212) = v3;
  *(result + 144) = v13;
  v2 = *(a2 + 212);
  if ((v2 & 0x80) == 0)
  {
LABEL_15:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  v14 = *(a2 + 64);
  v3 |= 0x80uLL;
  *(result + 212) = v3;
  *(result + 64) = v14;
  v2 = *(a2 + 212);
  if ((v2 & 0x20000) == 0)
  {
LABEL_16:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  v15 = *(a2 + 124);
  v3 |= 0x20000uLL;
  *(result + 212) = v3;
  *(result + 124) = v15;
  v2 = *(a2 + 212);
  if ((v2 & 0x80000) == 0)
  {
LABEL_17:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  v16 = *(a2 + 132);
  v3 |= 0x80000uLL;
  *(result + 212) = v3;
  *(result + 132) = v16;
  v2 = *(a2 + 212);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  v17 = *(a2 + 176);
  v3 |= 0x40000000uLL;
  *(result + 212) = v3;
  *(result + 176) = v17;
  v2 = *(a2 + 212);
  if ((v2 & 0x200) == 0)
  {
LABEL_19:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  v18 = *(a2 + 80);
  v3 |= 0x200uLL;
  *(result + 212) = v3;
  *(result + 80) = v18;
  v2 = *(a2 + 212);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_20:
    if ((v2 & 0x200000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  v19 = *(a2 + 156);
  v3 |= 0x2000000uLL;
  *(result + 212) = v3;
  *(result + 156) = v19;
  v2 = *(a2 + 212);
  if ((v2 & 0x200000000) == 0)
  {
LABEL_21:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  v20 = *(a2 + 188);
  v3 |= 0x200000000uLL;
  *(result + 212) = v3;
  *(result + 188) = v20;
  v2 = *(a2 + 212);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_22:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  v21 = *(a2 + 172);
  v3 |= 0x20000000uLL;
  *(result + 212) = v3;
  *(result + 172) = v21;
  v2 = *(a2 + 212);
  if ((v2 & 0x100) == 0)
  {
LABEL_23:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  v22 = *(a2 + 72);
  v3 |= 0x100uLL;
  *(result + 212) = v3;
  *(result + 72) = v22;
  v2 = *(a2 + 212);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_24:
    if ((v2 & 0x100000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  v23 = *(a2 + 164);
  v3 |= 0x8000000uLL;
  *(result + 212) = v3;
  *(result + 164) = v23;
  v2 = *(a2 + 212);
  if ((v2 & 0x100000000) == 0)
  {
LABEL_25:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  v24 = *(a2 + 184);
  v3 |= 0x100000000uLL;
  *(result + 212) = v3;
  *(result + 184) = v24;
  v2 = *(a2 + 212);
  if ((v2 & 0x80000000) == 0)
  {
LABEL_26:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  v25 = *(a2 + 180);
  v3 |= 0x80000000uLL;
  *(result + 212) = v3;
  *(result + 180) = v25;
  v2 = *(a2 + 212);
  if ((v2 & 0x400) == 0)
  {
LABEL_27:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_66;
  }

LABEL_65:
  v26 = *(a2 + 88);
  v3 |= 0x400uLL;
  *(result + 212) = v3;
  *(result + 88) = v26;
  v2 = *(a2 + 212);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_66:
  v27 = *(a2 + 160);
  v3 |= 0x4000000uLL;
  *(result + 212) = v3;
  *(result + 160) = v27;
  v2 = *(a2 + 212);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_29:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_67:
  v28 = *(a2 + 168);
  v3 |= 0x10000000uLL;
  *(result + 212) = v3;
  *(result + 168) = v28;
  v2 = *(a2 + 212);
  if ((v2 & 0x2000) == 0)
  {
LABEL_30:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_69;
  }

LABEL_68:
  v29 = *(a2 + 108);
  v3 |= 0x2000uLL;
  *(result + 212) = v3;
  *(result + 108) = v29;
  v2 = *(a2 + 212);
  if ((v2 & 0x8000) == 0)
  {
LABEL_31:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_70;
  }

LABEL_69:
  v30 = *(a2 + 116);
  v3 |= 0x8000uLL;
  *(result + 212) = v3;
  *(result + 116) = v30;
  v2 = *(a2 + 212);
  if ((v2 & 0x4000) == 0)
  {
LABEL_32:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_71;
  }

LABEL_70:
  v31 = *(a2 + 112);
  v3 |= 0x4000uLL;
  *(result + 212) = v3;
  *(result + 112) = v31;
  v2 = *(a2 + 212);
  if ((v2 & 0x10) == 0)
  {
LABEL_33:
    if ((v2 & 8) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

LABEL_71:
  v32 = *(a2 + 40);
  v3 |= 0x10uLL;
  *(result + 212) = v3;
  *(result + 40) = v32;
  v2 = *(a2 + 212);
  if ((v2 & 8) == 0)
  {
LABEL_34:
    if ((v2 & 0x800000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_72:
  v33 = *(a2 + 32);
  v3 |= 8uLL;
  *(result + 212) = v3;
  *(result + 32) = v33;
  v2 = *(a2 + 212);
  if ((v2 & 0x800000000) == 0)
  {
LABEL_35:
    if ((v2 & 0x2000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_74;
  }

LABEL_73:
  v34 = *(a2 + 196);
  v3 |= 0x800000000uLL;
  *(result + 212) = v3;
  *(result + 196) = v34;
  v2 = *(a2 + 212);
  if ((v2 & 0x2000000000) == 0)
  {
LABEL_36:
    if ((v2 & 0x1000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_75;
  }

LABEL_74:
  v35 = *(a2 + 204);
  v3 |= 0x2000000000uLL;
  *(result + 212) = v3;
  *(result + 204) = v35;
  v2 = *(a2 + 212);
  if ((v2 & 0x1000000000) == 0)
  {
LABEL_37:
    if ((v2 & 0x400000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_76;
  }

LABEL_75:
  v36 = *(a2 + 200);
  v3 |= 0x1000000000uLL;
  *(result + 212) = v3;
  *(result + 200) = v36;
  v2 = *(a2 + 212);
  if ((v2 & 0x400000000) == 0)
  {
LABEL_38:
    if ((v2 & 0x4000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_77;
  }

LABEL_76:
  v37 = *(a2 + 192);
  v3 |= 0x400000000uLL;
  *(result + 212) = v3;
  *(result + 192) = v37;
  v2 = *(a2 + 212);
  if ((v2 & 0x4000000000) == 0)
  {
LABEL_39:
    if ((v2 & 0x8000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_78;
  }

LABEL_77:
  v38 = *(a2 + 208);
  v3 |= 0x4000000000uLL;
  *(result + 212) = v3;
  *(result + 208) = v38;
  v2 = *(a2 + 212);
  if ((v2 & 0x8000000000) == 0)
  {
LABEL_40:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_79;
  }

LABEL_78:
  v39 = *(a2 + 209);
  v3 |= 0x8000000000uLL;
  *(result + 212) = v3;
  *(result + 209) = v39;
  v2 = *(a2 + 212);
  if ((v2 & 0x1000) == 0)
  {
LABEL_41:
    if ((v2 & 4) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_80;
  }

LABEL_79:
  v40 = *(a2 + 104);
  v3 |= 0x1000uLL;
  *(result + 212) = v3;
  *(result + 104) = v40;
  v2 = *(a2 + 212);
  if ((v2 & 4) == 0)
  {
LABEL_42:
    if ((v2 & 2) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_81;
  }

LABEL_80:
  v41 = *(a2 + 24);
  v3 |= 4uLL;
  *(result + 212) = v3;
  *(result + 24) = v41;
  v2 = *(a2 + 212);
  if ((v2 & 2) == 0)
  {
LABEL_43:
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_82:
    v43 = *(a2 + 8);
    *(result + 212) = v3 | 1;
    *(result + 8) = v43;
    return result;
  }

LABEL_81:
  v42 = *(a2 + 16);
  v3 |= 2uLL;
  *(result + 212) = v3;
  *(result + 16) = v42;
  if (*(a2 + 212))
  {
    goto LABEL_82;
  }

  return result;
}

uint64_t sub_245E81C7C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 212);
  if (v5)
  {
    v7 = *(a1 + 8);
    PB::TextFormatter::format(this, "calculationTimestamp");
    v5 = *(a1 + 212);
    if ((v5 & 0x1000) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  else if ((v5 & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 104);
  PB::TextFormatter::format(this, "dramDuration");
  v5 = *(a1 + 212);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_47:
  v9 = *(a1 + 16);
  PB::TextFormatter::format(this, "dramMaxTimestamp");
  v5 = *(a1 + 212);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_48:
  v10 = *(a1 + 24);
  PB::TextFormatter::format(this, "dramMinTimestamp");
  v5 = *(a1 + 212);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_49:
  v11 = *(a1 + 32);
  PB::TextFormatter::format(this, "epochMaxTimestamp");
  v5 = *(a1 + 212);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  v12 = *(a1 + 40);
  PB::TextFormatter::format(this, "epochMinTimestamp");
  v5 = *(a1 + 212);
  if ((v5 & 0x2000) == 0)
  {
LABEL_8:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "maxRMS", *(a1 + 108));
  v5 = *(a1 + 212);
  if ((v5 & 0x4000) == 0)
  {
LABEL_9:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  v13 = *(a1 + 112);
  PB::TextFormatter::format(this, "numPointsInEpoch");
  v5 = *(a1 + 212);
  if ((v5 & 0x8000) == 0)
  {
LABEL_10:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  v14 = *(a1 + 116);
  PB::TextFormatter::format(this, "numShortAudio");
  v5 = *(a1 + 212);
  if ((v5 & 0x10000) == 0)
  {
LABEL_11:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "planarChaosAtMaxEnergy", *(a1 + 120));
  v5 = *(a1 + 212);
  if ((v5 & 0x20000) == 0)
  {
LABEL_12:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "planarChaosAtMaxSaturation", *(a1 + 124));
  v5 = *(a1 + 212);
  if ((v5 & 0x40000) == 0)
  {
LABEL_13:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "planarEnergyAtMaxChaos", *(a1 + 128));
  v5 = *(a1 + 212);
  if ((v5 & 0x80000) == 0)
  {
LABEL_14:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "planarEnergyAtMaxSaturation", *(a1 + 132));
  v5 = *(a1 + 212);
  if ((v5 & 0x100000) == 0)
  {
LABEL_15:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "planarMaxChaos", *(a1 + 136));
  v5 = *(a1 + 212);
  if ((v5 & 0x200000) == 0)
  {
LABEL_16:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(this, "planarMaxEnergy", *(a1 + 140));
  v5 = *(a1 + 212);
  if ((v5 & 0x400000) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(this, "planarMaxSaturation", *(a1 + 144));
  v5 = *(a1 + 212);
  if ((v5 & 0x4000000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_62;
  }

LABEL_61:
  v15 = *(a1 + 208);
  PB::TextFormatter::format(this, "planarPassThru");
  v5 = *(a1 + 212);
  if ((v5 & 0x800000) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "planarSaturationAtMaxChaos", *(a1 + 148));
  v5 = *(a1 + 212);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_20:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(this, "planarSaturationAtMaxEnergy", *(a1 + 152));
  v5 = *(a1 + 212);
  if ((v5 & 0x20) == 0)
  {
LABEL_21:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_65;
  }

LABEL_64:
  v16 = *(a1 + 48);
  PB::TextFormatter::format(this, "planarTimestampAtMaxChaos");
  v5 = *(a1 + 212);
  if ((v5 & 0x40) == 0)
  {
LABEL_22:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_66;
  }

LABEL_65:
  v17 = *(a1 + 56);
  PB::TextFormatter::format(this, "planarTimestampAtMaxEnergy");
  v5 = *(a1 + 212);
  if ((v5 & 0x80) == 0)
  {
LABEL_23:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_67;
  }

LABEL_66:
  v18 = *(a1 + 64);
  PB::TextFormatter::format(this, "planarTimestampAtMaxSaturation");
  v5 = *(a1 + 212);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(this, "rolloverChaosAtMaxEnergy", *(a1 + 156));
  v5 = *(a1 + 212);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(this, "rolloverChaosAtMaxSaturation", *(a1 + 160));
  v5 = *(a1 + 212);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(this, "rolloverEnergyAtMaxChaos", *(a1 + 164));
  v5 = *(a1 + 212);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(this, "rolloverEnergyAtMaxSaturation", *(a1 + 168));
  v5 = *(a1 + 212);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(this, "rolloverMaxChaos", *(a1 + 172));
  v5 = *(a1 + 212);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(this, "rolloverMaxEnergy", *(a1 + 176));
  v5 = *(a1 + 212);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x8000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(this, "rolloverMaxSaturation", *(a1 + 180));
  v5 = *(a1 + 212);
  if ((v5 & 0x8000000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  v19 = *(a1 + 209);
  PB::TextFormatter::format(this, "rolloverPassThru");
  v5 = *(a1 + 212);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  PB::TextFormatter::format(this, "rolloverSaturationAtMaxChaos", *(a1 + 184));
  v5 = *(a1 + 212);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  PB::TextFormatter::format(this, "rolloverSaturationAtMaxEnergy", *(a1 + 188));
  v5 = *(a1 + 212);
  if ((v5 & 0x100) == 0)
  {
LABEL_34:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_78;
  }

LABEL_77:
  v20 = *(a1 + 72);
  PB::TextFormatter::format(this, "rolloverTimestampAtMaxChaos");
  v5 = *(a1 + 212);
  if ((v5 & 0x200) == 0)
  {
LABEL_35:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_78:
  v21 = *(a1 + 80);
  PB::TextFormatter::format(this, "rolloverTimestampAtMaxEnergy");
  v5 = *(a1 + 212);
  if ((v5 & 0x400) == 0)
  {
LABEL_36:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_80;
  }

LABEL_79:
  v22 = *(a1 + 88);
  PB::TextFormatter::format(this, "rolloverTimestampAtMaxSaturation");
  v5 = *(a1 + 212);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_37:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_81;
  }

LABEL_80:
  PB::TextFormatter::format(this, "soundEnvelopeCount", *(a1 + 192));
  v5 = *(a1 + 212);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_38:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_82;
  }

LABEL_81:
  PB::TextFormatter::format(this, "soundMaxMeanOverArmSession", *(a1 + 196));
  v5 = *(a1 + 212);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_39:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_82:
  PB::TextFormatter::format(this, "soundMeanCurrentWindow", *(a1 + 200));
  v5 = *(a1 + 212);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_40:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_83:
  PB::TextFormatter::format(this, "soundMeanLast15s", *(a1 + 204));
  if ((*(a1 + 212) & 0x800) != 0)
  {
LABEL_41:
    v6 = *(a1 + 96);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_42:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245E821C0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_393;
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
          *(a1 + 212) |= 0x800uLL;
          v23 = *(this + 1);
          v22 = *(this + 2);
          v24 = *this;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
          {
            v218 = 0;
            v219 = 0;
            v27 = 0;
            v17 = v22 >= v23;
            v220 = v22 - v23;
            if (!v17)
            {
              v220 = 0;
            }

            v221 = (v24 + v23);
            v222 = v23 + 1;
            do
            {
              if (!v220)
              {
                v27 = 0;
                *(this + 24) = 1;
                goto LABEL_364;
              }

              v223 = *v221;
              *(this + 1) = v222;
              v27 |= (v223 & 0x7F) << v218;
              if ((v223 & 0x80) == 0)
              {
                if (*(this + 24))
                {
                  v27 = 0;
                }

                goto LABEL_364;
              }

              v218 += 7;
              --v220;
              ++v221;
              ++v222;
              v14 = v219++ > 8;
            }

            while (!v14);
LABEL_254:
            v27 = 0;
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
                goto LABEL_254;
              }
            }
          }

LABEL_364:
          *(a1 + 96) = v27;
          goto LABEL_329;
        case 2u:
          *(a1 + 212) |= 0x200000uLL;
          v95 = *(this + 1);
          if (v95 > 0xFFFFFFFFFFFFFFFBLL || v95 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 140) = *(*this + v95);
          goto LABEL_328;
        case 3u:
          *(a1 + 212) |= 0x40uLL;
          v84 = *(this + 1);
          v83 = *(this + 2);
          v85 = *this;
          if (v84 <= 0xFFFFFFFFFFFFFFF5 && v84 + 10 <= v83)
          {
            v86 = 0;
            v87 = 0;
            v88 = 0;
            v89 = (v85 + v84);
            v90 = v84 + 1;
            do
            {
              *(this + 1) = v90;
              v91 = *v89++;
              v88 |= (v91 & 0x7F) << v86;
              if ((v91 & 0x80) == 0)
              {
                goto LABEL_361;
              }

              v86 += 7;
              ++v90;
              v14 = v87++ > 8;
            }

            while (!v14);
LABEL_246:
            v88 = 0;
            goto LABEL_361;
          }

          v212 = 0;
          v213 = 0;
          v88 = 0;
          v17 = v83 >= v84;
          v214 = v83 - v84;
          if (!v17)
          {
            v214 = 0;
          }

          v215 = (v85 + v84);
          v216 = v84 + 1;
          while (2)
          {
            if (v214)
            {
              v217 = *v215;
              *(this + 1) = v216;
              v88 |= (v217 & 0x7F) << v212;
              if (v217 < 0)
              {
                v212 += 7;
                --v214;
                ++v215;
                ++v216;
                v14 = v213++ > 8;
                if (v14)
                {
                  goto LABEL_246;
                }

                continue;
              }

              if (*(this + 24))
              {
                v88 = 0;
              }
            }

            else
            {
              v88 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_361:
          *(a1 + 56) = v88;
          goto LABEL_329;
        case 4u:
          *(a1 + 212) |= 0x10000uLL;
          v93 = *(this + 1);
          if (v93 > 0xFFFFFFFFFFFFFFFBLL || v93 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 120) = *(*this + v93);
          goto LABEL_328;
        case 5u:
          *(a1 + 212) |= 0x1000000uLL;
          v78 = *(this + 1);
          if (v78 > 0xFFFFFFFFFFFFFFFBLL || v78 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 152) = *(*this + v78);
          goto LABEL_328;
        case 6u:
          *(a1 + 212) |= 0x100000uLL;
          v99 = *(this + 1);
          if (v99 > 0xFFFFFFFFFFFFFFFBLL || v99 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 136) = *(*this + v99);
          goto LABEL_328;
        case 7u:
          *(a1 + 212) |= 0x20uLL;
          v103 = *(this + 1);
          v102 = *(this + 2);
          v104 = *this;
          if (v103 <= 0xFFFFFFFFFFFFFFF5 && v103 + 10 <= v102)
          {
            v105 = 0;
            v106 = 0;
            v107 = 0;
            v108 = (v104 + v103);
            v109 = v103 + 1;
            do
            {
              *(this + 1) = v109;
              v110 = *v108++;
              v107 |= (v110 & 0x7F) << v105;
              if ((v110 & 0x80) == 0)
              {
                goto LABEL_367;
              }

              v105 += 7;
              ++v109;
              v14 = v106++ > 8;
            }

            while (!v14);
LABEL_262:
            v107 = 0;
            goto LABEL_367;
          }

          v224 = 0;
          v225 = 0;
          v107 = 0;
          v17 = v102 >= v103;
          v226 = v102 - v103;
          if (!v17)
          {
            v226 = 0;
          }

          v227 = (v104 + v103);
          v228 = v103 + 1;
          while (2)
          {
            if (v226)
            {
              v229 = *v227;
              *(this + 1) = v228;
              v107 |= (v229 & 0x7F) << v224;
              if (v229 < 0)
              {
                v224 += 7;
                --v226;
                ++v227;
                ++v228;
                v14 = v225++ > 8;
                if (v14)
                {
                  goto LABEL_262;
                }

                continue;
              }

              if (*(this + 24))
              {
                v107 = 0;
              }
            }

            else
            {
              v107 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_367:
          *(a1 + 48) = v107;
          goto LABEL_329;
        case 8u:
          *(a1 + 212) |= 0x40000uLL;
          v94 = *(this + 1);
          if (v94 > 0xFFFFFFFFFFFFFFFBLL || v94 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 128) = *(*this + v94);
          goto LABEL_328;
        case 9u:
          *(a1 + 212) |= 0x800000uLL;
          v129 = *(this + 1);
          if (v129 > 0xFFFFFFFFFFFFFFFBLL || v129 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 148) = *(*this + v129);
          goto LABEL_328;
        case 0xAu:
          *(a1 + 212) |= 0x400000uLL;
          v80 = *(this + 1);
          if (v80 > 0xFFFFFFFFFFFFFFFBLL || v80 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 144) = *(*this + v80);
          goto LABEL_328;
        case 0xBu:
          *(a1 + 212) |= 0x80uLL;
          v121 = *(this + 1);
          v120 = *(this + 2);
          v122 = *this;
          if (v121 <= 0xFFFFFFFFFFFFFFF5 && v121 + 10 <= v120)
          {
            v123 = 0;
            v124 = 0;
            v125 = 0;
            v126 = (v122 + v121);
            v127 = v121 + 1;
            do
            {
              *(this + 1) = v127;
              v128 = *v126++;
              v125 |= (v128 & 0x7F) << v123;
              if ((v128 & 0x80) == 0)
              {
                goto LABEL_373;
              }

              v123 += 7;
              ++v127;
              v14 = v124++ > 8;
            }

            while (!v14);
LABEL_278:
            v125 = 0;
            goto LABEL_373;
          }

          v236 = 0;
          v237 = 0;
          v125 = 0;
          v17 = v120 >= v121;
          v238 = v120 - v121;
          if (!v17)
          {
            v238 = 0;
          }

          v239 = (v122 + v121);
          v240 = v121 + 1;
          while (2)
          {
            if (v238)
            {
              v241 = *v239;
              *(this + 1) = v240;
              v125 |= (v241 & 0x7F) << v236;
              if (v241 < 0)
              {
                v236 += 7;
                --v238;
                ++v239;
                ++v240;
                v14 = v237++ > 8;
                if (v14)
                {
                  goto LABEL_278;
                }

                continue;
              }

              if (*(this + 24))
              {
                v125 = 0;
              }
            }

            else
            {
              v125 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_373:
          *(a1 + 64) = v125;
          goto LABEL_329;
        case 0xCu:
          *(a1 + 212) |= 0x20000uLL;
          v77 = *(this + 1);
          if (v77 > 0xFFFFFFFFFFFFFFFBLL || v77 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 124) = *(*this + v77);
          goto LABEL_328;
        case 0xDu:
          *(a1 + 212) |= 0x80000uLL;
          v79 = *(this + 1);
          if (v79 > 0xFFFFFFFFFFFFFFFBLL || v79 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 132) = *(*this + v79);
          goto LABEL_328;
        case 0xEu:
          *(a1 + 212) |= 0x40000000uLL;
          v101 = *(this + 1);
          if (v101 > 0xFFFFFFFFFFFFFFFBLL || v101 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 176) = *(*this + v101);
          goto LABEL_328;
        case 0xFu:
          *(a1 + 212) |= 0x200uLL;
          v68 = *(this + 1);
          v67 = *(this + 2);
          v69 = *this;
          if (v68 <= 0xFFFFFFFFFFFFFFF5 && v68 + 10 <= v67)
          {
            v70 = 0;
            v71 = 0;
            v72 = 0;
            v73 = (v69 + v68);
            v74 = v68 + 1;
            do
            {
              *(this + 1) = v74;
              v75 = *v73++;
              v72 |= (v75 & 0x7F) << v70;
              if ((v75 & 0x80) == 0)
              {
                goto LABEL_358;
              }

              v70 += 7;
              ++v74;
              v14 = v71++ > 8;
            }

            while (!v14);
LABEL_238:
            v72 = 0;
            goto LABEL_358;
          }

          v206 = 0;
          v207 = 0;
          v72 = 0;
          v17 = v67 >= v68;
          v208 = v67 - v68;
          if (!v17)
          {
            v208 = 0;
          }

          v209 = (v69 + v68);
          v210 = v68 + 1;
          while (2)
          {
            if (v208)
            {
              v211 = *v209;
              *(this + 1) = v210;
              v72 |= (v211 & 0x7F) << v206;
              if (v211 < 0)
              {
                v206 += 7;
                --v208;
                ++v209;
                ++v210;
                v14 = v207++ > 8;
                if (v14)
                {
                  goto LABEL_238;
                }

                continue;
              }

              if (*(this + 24))
              {
                v72 = 0;
              }
            }

            else
            {
              v72 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_358:
          *(a1 + 80) = v72;
          goto LABEL_329;
        case 0x10u:
          *(a1 + 212) |= 0x2000000uLL;
          v92 = *(this + 1);
          if (v92 > 0xFFFFFFFFFFFFFFFBLL || v92 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 156) = *(*this + v92);
          goto LABEL_328;
        case 0x11u:
          *(a1 + 212) |= 0x200000000uLL;
          v66 = *(this + 1);
          if (v66 > 0xFFFFFFFFFFFFFFFBLL || v66 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 188) = *(*this + v66);
          goto LABEL_328;
        case 0x12u:
          *(a1 + 212) |= 0x20000000uLL;
          v97 = *(this + 1);
          if (v97 > 0xFFFFFFFFFFFFFFFBLL || v97 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 172) = *(*this + v97);
          goto LABEL_328;
        case 0x13u:
          *(a1 + 212) |= 0x100uLL;
          v112 = *(this + 1);
          v111 = *(this + 2);
          v113 = *this;
          if (v112 <= 0xFFFFFFFFFFFFFFF5 && v112 + 10 <= v111)
          {
            v114 = 0;
            v115 = 0;
            v116 = 0;
            v117 = (v113 + v112);
            v118 = v112 + 1;
            do
            {
              *(this + 1) = v118;
              v119 = *v117++;
              v116 |= (v119 & 0x7F) << v114;
              if ((v119 & 0x80) == 0)
              {
                goto LABEL_370;
              }

              v114 += 7;
              ++v118;
              v14 = v115++ > 8;
            }

            while (!v14);
LABEL_270:
            v116 = 0;
            goto LABEL_370;
          }

          v230 = 0;
          v231 = 0;
          v116 = 0;
          v17 = v111 >= v112;
          v232 = v111 - v112;
          if (!v17)
          {
            v232 = 0;
          }

          v233 = (v113 + v112);
          v234 = v112 + 1;
          while (2)
          {
            if (v232)
            {
              v235 = *v233;
              *(this + 1) = v234;
              v116 |= (v235 & 0x7F) << v230;
              if (v235 < 0)
              {
                v230 += 7;
                --v232;
                ++v233;
                ++v234;
                v14 = v231++ > 8;
                if (v14)
                {
                  goto LABEL_270;
                }

                continue;
              }

              if (*(this + 24))
              {
                v116 = 0;
              }
            }

            else
            {
              v116 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_370:
          *(a1 + 72) = v116;
          goto LABEL_329;
        case 0x14u:
          *(a1 + 212) |= 0x8000000uLL;
          v150 = *(this + 1);
          if (v150 > 0xFFFFFFFFFFFFFFFBLL || v150 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 164) = *(*this + v150);
          goto LABEL_328;
        case 0x15u:
          *(a1 + 212) |= 0x100000000uLL;
          v98 = *(this + 1);
          if (v98 > 0xFFFFFFFFFFFFFFFBLL || v98 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 184) = *(*this + v98);
          goto LABEL_328;
        case 0x16u:
          *(a1 + 212) |= 0x80000000uLL;
          v100 = *(this + 1);
          if (v100 > 0xFFFFFFFFFFFFFFFBLL || v100 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 180) = *(*this + v100);
          goto LABEL_328;
        case 0x17u:
          *(a1 + 212) |= 0x400uLL;
          v133 = *(this + 1);
          v132 = *(this + 2);
          v134 = *this;
          if (v133 <= 0xFFFFFFFFFFFFFFF5 && v133 + 10 <= v132)
          {
            v135 = 0;
            v136 = 0;
            v137 = 0;
            v138 = (v134 + v133);
            v139 = v133 + 1;
            do
            {
              *(this + 1) = v139;
              v140 = *v138++;
              v137 |= (v140 & 0x7F) << v135;
              if ((v140 & 0x80) == 0)
              {
                goto LABEL_376;
              }

              v135 += 7;
              ++v139;
              v14 = v136++ > 8;
            }

            while (!v14);
LABEL_286:
            v137 = 0;
            goto LABEL_376;
          }

          v242 = 0;
          v243 = 0;
          v137 = 0;
          v17 = v132 >= v133;
          v244 = v132 - v133;
          if (!v17)
          {
            v244 = 0;
          }

          v245 = (v134 + v133);
          v246 = v133 + 1;
          while (2)
          {
            if (v244)
            {
              v247 = *v245;
              *(this + 1) = v246;
              v137 |= (v247 & 0x7F) << v242;
              if (v247 < 0)
              {
                v242 += 7;
                --v244;
                ++v245;
                ++v246;
                v14 = v243++ > 8;
                if (v14)
                {
                  goto LABEL_286;
                }

                continue;
              }

              if (*(this + 24))
              {
                v137 = 0;
              }
            }

            else
            {
              v137 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_376:
          *(a1 + 88) = v137;
          goto LABEL_329;
        case 0x18u:
          *(a1 + 212) |= 0x4000000uLL;
          v151 = *(this + 1);
          if (v151 > 0xFFFFFFFFFFFFFFFBLL || v151 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 160) = *(*this + v151);
          goto LABEL_328;
        case 0x19u:
          *(a1 + 212) |= 0x10000000uLL;
          v82 = *(this + 1);
          if (v82 > 0xFFFFFFFFFFFFFFFBLL || v82 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 168) = *(*this + v82);
          goto LABEL_328;
        case 0x1Au:
          *(a1 + 212) |= 0x2000uLL;
          v81 = *(this + 1);
          if (v81 > 0xFFFFFFFFFFFFFFFBLL || v81 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 108) = *(*this + v81);
          goto LABEL_328;
        case 0x1Bu:
          *(a1 + 212) |= 0x8000uLL;
          v180 = *(this + 1);
          v179 = *(this + 2);
          v181 = *this;
          if (v180 <= 0xFFFFFFFFFFFFFFF5 && v180 + 10 <= v179)
          {
            v182 = 0;
            v183 = 0;
            v184 = 0;
            v185 = (v181 + v180);
            v186 = v180 + 1;
            do
            {
              *(this + 1) = v186;
              v187 = *v185++;
              v184 |= (v187 & 0x7F) << v182;
              if ((v187 & 0x80) == 0)
              {
                goto LABEL_391;
              }

              v182 += 7;
              ++v186;
              v14 = v183++ > 8;
            }

            while (!v14);
LABEL_326:
            LODWORD(v184) = 0;
            goto LABEL_391;
          }

          v272 = 0;
          v273 = 0;
          v184 = 0;
          v17 = v179 >= v180;
          v274 = v179 - v180;
          if (!v17)
          {
            v274 = 0;
          }

          v275 = (v181 + v180);
          v276 = v180 + 1;
          while (2)
          {
            if (v274)
            {
              v277 = *v275;
              *(this + 1) = v276;
              v184 |= (v277 & 0x7F) << v272;
              if (v277 < 0)
              {
                v272 += 7;
                --v274;
                ++v275;
                ++v276;
                v14 = v273++ > 8;
                if (v14)
                {
                  goto LABEL_326;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v184) = 0;
              }
            }

            else
            {
              LODWORD(v184) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_391:
          *(a1 + 116) = v184;
          goto LABEL_329;
        case 0x1Cu:
          *(a1 + 212) |= 0x4000uLL;
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
                goto LABEL_355;
              }

              v56 += 7;
              ++v60;
              v14 = v57++ > 8;
            }

            while (!v14);
LABEL_228:
            LODWORD(v58) = 0;
            goto LABEL_355;
          }

          v200 = 0;
          v201 = 0;
          v58 = 0;
          v17 = v53 >= v54;
          v202 = v53 - v54;
          if (!v17)
          {
            v202 = 0;
          }

          v203 = (v55 + v54);
          v204 = v54 + 1;
          while (2)
          {
            if (v202)
            {
              v205 = *v203;
              *(this + 1) = v204;
              v58 |= (v205 & 0x7F) << v200;
              if (v205 < 0)
              {
                v200 += 7;
                --v202;
                ++v203;
                ++v204;
                v14 = v201++ > 8;
                if (v14)
                {
                  goto LABEL_228;
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

LABEL_355:
          *(a1 + 112) = v58;
          goto LABEL_329;
        case 0x1Du:
          *(a1 + 212) |= 0x10uLL;
          v153 = *(this + 1);
          v152 = *(this + 2);
          v154 = *this;
          if (v153 <= 0xFFFFFFFFFFFFFFF5 && v153 + 10 <= v152)
          {
            v155 = 0;
            v156 = 0;
            v157 = 0;
            v158 = (v154 + v153);
            v159 = v153 + 1;
            do
            {
              *(this + 1) = v159;
              v160 = *v158++;
              v157 |= (v160 & 0x7F) << v155;
              if ((v160 & 0x80) == 0)
              {
                goto LABEL_382;
              }

              v155 += 7;
              ++v159;
              v14 = v156++ > 8;
            }

            while (!v14);
LABEL_302:
            v157 = 0;
            goto LABEL_382;
          }

          v254 = 0;
          v255 = 0;
          v157 = 0;
          v17 = v152 >= v153;
          v256 = v152 - v153;
          if (!v17)
          {
            v256 = 0;
          }

          v257 = (v154 + v153);
          v258 = v153 + 1;
          while (2)
          {
            if (v256)
            {
              v259 = *v257;
              *(this + 1) = v258;
              v157 |= (v259 & 0x7F) << v254;
              if (v259 < 0)
              {
                v254 += 7;
                --v256;
                ++v257;
                ++v258;
                v14 = v255++ > 8;
                if (v14)
                {
                  goto LABEL_302;
                }

                continue;
              }

              if (*(this + 24))
              {
                v157 = 0;
              }
            }

            else
            {
              v157 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_382:
          *(a1 + 40) = v157;
          goto LABEL_329;
        case 0x1Eu:
          *(a1 + 212) |= 8uLL;
          v162 = *(this + 1);
          v161 = *(this + 2);
          v163 = *this;
          if (v162 <= 0xFFFFFFFFFFFFFFF5 && v162 + 10 <= v161)
          {
            v164 = 0;
            v165 = 0;
            v166 = 0;
            v167 = (v163 + v162);
            v168 = v162 + 1;
            do
            {
              *(this + 1) = v168;
              v169 = *v167++;
              v166 |= (v169 & 0x7F) << v164;
              if ((v169 & 0x80) == 0)
              {
                goto LABEL_385;
              }

              v164 += 7;
              ++v168;
              v14 = v165++ > 8;
            }

            while (!v14);
LABEL_310:
            v166 = 0;
            goto LABEL_385;
          }

          v260 = 0;
          v261 = 0;
          v166 = 0;
          v17 = v161 >= v162;
          v262 = v161 - v162;
          if (!v17)
          {
            v262 = 0;
          }

          v263 = (v163 + v162);
          v264 = v162 + 1;
          while (2)
          {
            if (v262)
            {
              v265 = *v263;
              *(this + 1) = v264;
              v166 |= (v265 & 0x7F) << v260;
              if (v265 < 0)
              {
                v260 += 7;
                --v262;
                ++v263;
                ++v264;
                v14 = v261++ > 8;
                if (v14)
                {
                  goto LABEL_310;
                }

                continue;
              }

              if (*(this + 24))
              {
                v166 = 0;
              }
            }

            else
            {
              v166 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_385:
          *(a1 + 32) = v166;
          goto LABEL_329;
        case 0x1Fu:
          *(a1 + 212) |= 0x800000000uLL;
          v130 = *(this + 1);
          if (v130 > 0xFFFFFFFFFFFFFFFBLL || v130 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 196) = *(*this + v130);
          goto LABEL_328;
        case 0x20u:
          *(a1 + 212) |= 0x2000000000uLL;
          v96 = *(this + 1);
          if (v96 > 0xFFFFFFFFFFFFFFFBLL || v96 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 204) = *(*this + v96);
          goto LABEL_328;
        case 0x21u:
          *(a1 + 212) |= 0x1000000000uLL;
          v131 = *(this + 1);
          if (v131 > 0xFFFFFFFFFFFFFFFBLL || v131 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 200) = *(*this + v131);
          goto LABEL_328;
        case 0x22u:
          *(a1 + 212) |= 0x400000000uLL;
          v76 = *(this + 1);
          if (v76 > 0xFFFFFFFFFFFFFFFBLL || v76 + 4 > *(this + 2))
          {
LABEL_172:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 192) = *(*this + v76);
LABEL_328:
            *(this + 1) += 4;
          }

          goto LABEL_329;
        case 0x23u:
          *(a1 + 212) |= 0x4000000000uLL;
          v62 = *(this + 1);
          if (v62 >= *(this + 2))
          {
            v65 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v63 = v62 + 1;
            v64 = *(*this + v62);
            *(this + 1) = v63;
            v65 = v64 != 0;
          }

          *(a1 + 208) = v65;
          goto LABEL_329;
        case 0x24u:
          *(a1 + 212) |= 0x8000000000uLL;
          v40 = *(this + 1);
          if (v40 >= *(this + 2))
          {
            v43 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v41 = v40 + 1;
            v42 = *(*this + v40);
            *(this + 1) = v41;
            v43 = v42 != 0;
          }

          *(a1 + 209) = v43;
          goto LABEL_329;
        case 0x25u:
          *(a1 + 212) |= 0x1000uLL;
          v45 = *(this + 1);
          v44 = *(this + 2);
          v46 = *this;
          if (v45 <= 0xFFFFFFFFFFFFFFF5 && v45 + 10 <= v44)
          {
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = (v46 + v45);
            v51 = v45 + 1;
            do
            {
              *(this + 1) = v51;
              v52 = *v50++;
              v49 |= (v52 & 0x7F) << v47;
              if ((v52 & 0x80) == 0)
              {
                goto LABEL_352;
              }

              v47 += 7;
              ++v51;
              v14 = v48++ > 8;
            }

            while (!v14);
LABEL_220:
            LODWORD(v49) = 0;
            goto LABEL_352;
          }

          v194 = 0;
          v195 = 0;
          v49 = 0;
          v17 = v44 >= v45;
          v196 = v44 - v45;
          if (!v17)
          {
            v196 = 0;
          }

          v197 = (v46 + v45);
          v198 = v45 + 1;
          while (2)
          {
            if (v196)
            {
              v199 = *v197;
              *(this + 1) = v198;
              v49 |= (v199 & 0x7F) << v194;
              if (v199 < 0)
              {
                v194 += 7;
                --v196;
                ++v197;
                ++v198;
                v14 = v195++ > 8;
                if (v14)
                {
                  goto LABEL_220;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v49) = 0;
              }
            }

            else
            {
              LODWORD(v49) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_352:
          *(a1 + 104) = v49;
          goto LABEL_329;
        case 0x26u:
          *(a1 + 212) |= 4uLL;
          v32 = *(this + 1);
          v31 = *(this + 2);
          v33 = *this;
          if (v32 <= 0xFFFFFFFFFFFFFFF5 && v32 + 10 <= v31)
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = (v33 + v32);
            v38 = v32 + 1;
            do
            {
              *(this + 1) = v38;
              v39 = *v37++;
              v36 |= (v39 & 0x7F) << v34;
              if ((v39 & 0x80) == 0)
              {
                goto LABEL_349;
              }

              v34 += 7;
              ++v38;
              v14 = v35++ > 8;
            }

            while (!v14);
LABEL_210:
            v36 = 0;
            goto LABEL_349;
          }

          v188 = 0;
          v189 = 0;
          v36 = 0;
          v17 = v31 >= v32;
          v190 = v31 - v32;
          if (!v17)
          {
            v190 = 0;
          }

          v191 = (v33 + v32);
          v192 = v32 + 1;
          while (2)
          {
            if (v190)
            {
              v193 = *v191;
              *(this + 1) = v192;
              v36 |= (v193 & 0x7F) << v188;
              if (v193 < 0)
              {
                v188 += 7;
                --v190;
                ++v191;
                ++v192;
                v14 = v189++ > 8;
                if (v14)
                {
                  goto LABEL_210;
                }

                continue;
              }

              if (*(this + 24))
              {
                v36 = 0;
              }
            }

            else
            {
              v36 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_349:
          *(a1 + 24) = v36;
          goto LABEL_329;
        case 0x27u:
          *(a1 + 212) |= 2uLL;
          v171 = *(this + 1);
          v170 = *(this + 2);
          v172 = *this;
          if (v171 <= 0xFFFFFFFFFFFFFFF5 && v171 + 10 <= v170)
          {
            v173 = 0;
            v174 = 0;
            v175 = 0;
            v176 = (v172 + v171);
            v177 = v171 + 1;
            do
            {
              *(this + 1) = v177;
              v178 = *v176++;
              v175 |= (v178 & 0x7F) << v173;
              if ((v178 & 0x80) == 0)
              {
                goto LABEL_388;
              }

              v173 += 7;
              ++v177;
              v14 = v174++ > 8;
            }

            while (!v14);
LABEL_318:
            v175 = 0;
            goto LABEL_388;
          }

          v266 = 0;
          v267 = 0;
          v175 = 0;
          v17 = v170 >= v171;
          v268 = v170 - v171;
          if (!v17)
          {
            v268 = 0;
          }

          v269 = (v172 + v171);
          v270 = v171 + 1;
          while (2)
          {
            if (v268)
            {
              v271 = *v269;
              *(this + 1) = v270;
              v175 |= (v271 & 0x7F) << v266;
              if (v271 < 0)
              {
                v266 += 7;
                --v268;
                ++v269;
                ++v270;
                v14 = v267++ > 8;
                if (v14)
                {
                  goto LABEL_318;
                }

                continue;
              }

              if (*(this + 24))
              {
                v175 = 0;
              }
            }

            else
            {
              v175 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_388:
          *(a1 + 16) = v175;
          goto LABEL_329;
        case 0x28u:
          *(a1 + 212) |= 1uLL;
          v142 = *(this + 1);
          v141 = *(this + 2);
          v143 = *this;
          if (v142 <= 0xFFFFFFFFFFFFFFF5 && v142 + 10 <= v141)
          {
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v147 = (v143 + v142);
            v148 = v142 + 1;
            do
            {
              *(this + 1) = v148;
              v149 = *v147++;
              v146 |= (v149 & 0x7F) << v144;
              if ((v149 & 0x80) == 0)
              {
                goto LABEL_379;
              }

              v144 += 7;
              ++v148;
              v14 = v145++ > 8;
            }

            while (!v14);
LABEL_294:
            v146 = 0;
            goto LABEL_379;
          }

          v248 = 0;
          v249 = 0;
          v146 = 0;
          v17 = v141 >= v142;
          v250 = v141 - v142;
          if (!v17)
          {
            v250 = 0;
          }

          v251 = (v143 + v142);
          v252 = v142 + 1;
          break;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_329;
          }

          v279 = 0;
          return v279 & 1;
      }

      while (1)
      {
        if (!v250)
        {
          v146 = 0;
          *(this + 24) = 1;
          goto LABEL_379;
        }

        v253 = *v251;
        *(this + 1) = v252;
        v146 |= (v253 & 0x7F) << v248;
        if ((v253 & 0x80) == 0)
        {
          break;
        }

        v248 += 7;
        --v250;
        ++v251;
        ++v252;
        v14 = v249++ > 8;
        if (v14)
        {
          goto LABEL_294;
        }
      }

      if (*(this + 24))
      {
        v146 = 0;
      }

LABEL_379:
      *(a1 + 8) = v146;
LABEL_329:
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

LABEL_393:
  v279 = v4 ^ 1;
  return v279 & 1;
}