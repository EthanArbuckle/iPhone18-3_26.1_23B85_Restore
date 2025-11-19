uint64_t sub_245DD352C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 172);
  if ((v5 & 0x10) != 0)
  {
    PB::TextFormatter::format(this, "chaosAtMaxEnergy", *(a1 + 40));
    v5 = *(a1 + 172);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_53;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "chaosAtMaxEnergyRollover", *(a1 + 44));
  v5 = *(a1 + 172);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "chaosAtMaxEnergyRolloverTimestamp", *(a1 + 48));
  v5 = *(a1 + 172);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "chaosAtMaxEnergyTimestamp", *(a1 + 52));
  v5 = *(a1 + 172);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_6:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_55:
  v7 = *(a1 + 156);
  PB::TextFormatter::format(this, "chaosMet");
  v5 = *(a1 + 172);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_7:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_57;
  }

LABEL_56:
  v8 = *(a1 + 157);
  PB::TextFormatter::format(this, "chaosMetRollover");
  v5 = *(a1 + 172);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_57:
  v9 = *(a1 + 158);
  PB::TextFormatter::format(this, "chaosOrSaturationMet");
  v5 = *(a1 + 172);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_59;
  }

LABEL_58:
  v10 = *(a1 + 159);
  PB::TextFormatter::format(this, "chaosOrSaturationMetRollover");
  v5 = *(a1 + 172);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_60;
  }

LABEL_59:
  v11 = *(a1 + 160);
  PB::TextFormatter::format(this, "didProcess");
  v5 = *(a1 + 172);
  if ((v5 & 0x4000000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x8000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_61;
  }

LABEL_60:
  v12 = *(a1 + 161);
  PB::TextFormatter::format(this, "energyAndChaosOrSaturationMet");
  v5 = *(a1 + 172);
  if ((v5 & 0x8000000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_61:
  v13 = *(a1 + 162);
  PB::TextFormatter::format(this, "energyAndChaosOrSaturationMetRollover");
  v5 = *(a1 + 172);
  if ((v5 & 0x100) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "energyAtMaxChaos", *(a1 + 56));
  v5 = *(a1 + 172);
  if ((v5 & 0x200) == 0)
  {
LABEL_14:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(this, "energyAtMaxChaosRollover", *(a1 + 60));
  v5 = *(a1 + 172);
  if ((v5 & 0x400) == 0)
  {
LABEL_15:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(this, "energyAtMaxChaosRolloverTimestamp", *(a1 + 64));
  v5 = *(a1 + 172);
  if ((v5 & 0x800) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(this, "energyAtMaxChaosTimestamp", *(a1 + 68));
  v5 = *(a1 + 172);
  if ((v5 & 0x10000000000) == 0)
  {
LABEL_17:
    if ((v5 & 0x20000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_67;
  }

LABEL_66:
  v14 = *(a1 + 163);
  PB::TextFormatter::format(this, "energyMet");
  v5 = *(a1 + 172);
  if ((v5 & 0x20000000000) == 0)
  {
LABEL_18:
    if ((v5 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_68;
  }

LABEL_67:
  v15 = *(a1 + 164);
  PB::TextFormatter::format(this, "energyMetRollover");
  v5 = *(a1 + 172);
  if ((v5 & 1) == 0)
  {
LABEL_19:
    if ((v5 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_69;
  }

LABEL_68:
  v16 = *(a1 + 8);
  PB::TextFormatter::format(this, "epochFirstTimestamp");
  v5 = *(a1 + 172);
  if ((v5 & 2) == 0)
  {
LABEL_20:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_70;
  }

LABEL_69:
  v17 = *(a1 + 16);
  PB::TextFormatter::format(this, "epochLastTimestamp");
  v5 = *(a1 + 172);
  if ((v5 & 0x1000) == 0)
  {
LABEL_21:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(this, "maxChaos", *(a1 + 72));
  v5 = *(a1 + 172);
  if ((v5 & 0x2000) == 0)
  {
LABEL_22:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(this, "maxChaosRollover", *(a1 + 76));
  v5 = *(a1 + 172);
  if ((v5 & 0x4000) == 0)
  {
LABEL_23:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(this, "maxEnergy", *(a1 + 80));
  v5 = *(a1 + 172);
  if ((v5 & 0x8000) == 0)
  {
LABEL_24:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(this, "maxEnergyRollover", *(a1 + 84));
  v5 = *(a1 + 172);
  if ((v5 & 0x10000) == 0)
  {
LABEL_25:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(this, "maxRMS", *(a1 + 88));
  v5 = *(a1 + 172);
  if ((v5 & 0x20000) == 0)
  {
LABEL_26:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_76;
  }

LABEL_75:
  PB::TextFormatter::format(this, "maxSaturation", *(a1 + 92));
  v5 = *(a1 + 172);
  if ((v5 & 0x40000) == 0)
  {
LABEL_27:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_77;
  }

LABEL_76:
  PB::TextFormatter::format(this, "maxSaturationRollover", *(a1 + 96));
  v5 = *(a1 + 172);
  if ((v5 & 0x80000) == 0)
  {
LABEL_28:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_78;
  }

LABEL_77:
  v18 = *(a1 + 100);
  PB::TextFormatter::format(this, "parameterRollingEnergyWindowSize");
  v5 = *(a1 + 172);
  if ((v5 & 0x100000) == 0)
  {
LABEL_29:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_79;
  }

LABEL_78:
  v19 = *(a1 + 104);
  PB::TextFormatter::format(this, "parameterRollingPercentileWindowSize");
  v5 = *(a1 + 172);
  if ((v5 & 0x200000) == 0)
  {
LABEL_30:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_80;
  }

LABEL_79:
  v20 = *(a1 + 108);
  PB::TextFormatter::format(this, "parameterRolloverRollingEnergyWindowSize");
  v5 = *(a1 + 172);
  if ((v5 & 0x400000) == 0)
  {
LABEL_31:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_81;
  }

LABEL_80:
  v21 = *(a1 + 112);
  PB::TextFormatter::format(this, "parameterRolloverRollingPercentileWindowSize");
  v5 = *(a1 + 172);
  if ((v5 & 0x800000) == 0)
  {
LABEL_32:
    if ((v5 & 0x40000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_82;
  }

LABEL_81:
  PB::TextFormatter::format(this, "parameterSaturationY", *(a1 + 116));
  v5 = *(a1 + 172);
  if ((v5 & 0x40000000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x80000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_83;
  }

LABEL_82:
  v22 = *(a1 + 165);
  PB::TextFormatter::format(this, "passThru");
  v5 = *(a1 + 172);
  if ((v5 & 0x80000000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_84;
  }

LABEL_83:
  v23 = *(a1 + 166);
  PB::TextFormatter::format(this, "passThruRollover");
  v5 = *(a1 + 172);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x100000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_85;
  }

LABEL_84:
  v24 = *(a1 + 120);
  PB::TextFormatter::format(this, "rmsSampleCount");
  v5 = *(a1 + 172);
  if ((v5 & 0x100000000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x200000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_86;
  }

LABEL_85:
  v25 = *(a1 + 167);
  PB::TextFormatter::format(this, "saturationMet");
  v5 = *(a1 + 172);
  if ((v5 & 0x200000000000) == 0)
  {
LABEL_37:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_87;
  }

LABEL_86:
  v26 = *(a1 + 168);
  PB::TextFormatter::format(this, "saturationMetRollover");
  v5 = *(a1 + 172);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_38:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_88;
  }

LABEL_87:
  PB::TextFormatter::format(this, "thresholdChaos", *(a1 + 124));
  v5 = *(a1 + 172);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_39:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_89;
  }

LABEL_88:
  PB::TextFormatter::format(this, "thresholdChaosRollover", *(a1 + 128));
  v5 = *(a1 + 172);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_40:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_90;
  }

LABEL_89:
  PB::TextFormatter::format(this, "thresholdEnergy", *(a1 + 132));
  v5 = *(a1 + 172);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_41:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_91;
  }

LABEL_90:
  PB::TextFormatter::format(this, "thresholdEnergyRollover", *(a1 + 136));
  v5 = *(a1 + 172);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_42:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_92;
  }

LABEL_91:
  PB::TextFormatter::format(this, "thresholdMaxRMS", *(a1 + 140));
  v5 = *(a1 + 172);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_43:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_93;
  }

LABEL_92:
  PB::TextFormatter::format(this, "thresholdMaxRMSRollover", *(a1 + 144));
  v5 = *(a1 + 172);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_44:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_94;
  }

LABEL_93:
  PB::TextFormatter::format(this, "thresholdSaturationTime", *(a1 + 148));
  v5 = *(a1 + 172);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_45:
    if ((v5 & 4) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_95;
  }

LABEL_94:
  PB::TextFormatter::format(this, "thresholdSaturationTimeRollover", *(a1 + 152));
  v5 = *(a1 + 172);
  if ((v5 & 4) == 0)
  {
LABEL_46:
    if ((v5 & 8) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_95:
  v27 = *(a1 + 24);
  PB::TextFormatter::format(this, "timestamp");
  if ((*(a1 + 172) & 8) != 0)
  {
LABEL_47:
    v6 = *(a1 + 32);
    PB::TextFormatter::format(this, "triggerTimestamp");
  }

LABEL_48:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DD3B30(uint64_t a1, PB::Reader *this)
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
            goto LABEL_205;
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

      if ((v10 & 7) <= 4)
      {
        switch((v10 >> 3))
        {
          case 'e':
            *(a1 + 172) |= 0x40000000000uLL;
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

            *(a1 + 165) = v26;
            break;
          case 'f':
            *(a1 + 172) |= 0x10000uLL;
            v96 = *(this + 1);
            if (v96 > 0xFFFFFFFFFFFFFFFBLL || v96 + 4 > *(this + 2))
            {
              goto LABEL_118;
            }

            *(a1 + 88) = *(*this + v96);
            goto LABEL_184;
          case 'g':
            *(a1 + 172) |= 0x4000uLL;
            v74 = *(this + 1);
            if (v74 > 0xFFFFFFFFFFFFFFFBLL || v74 + 4 > *(this + 2))
            {
              goto LABEL_118;
            }

            *(a1 + 80) = *(*this + v74);
            goto LABEL_184;
          case 'h':
            *(a1 + 172) |= 0x1000uLL;
            v91 = *(this + 1);
            if (v91 > 0xFFFFFFFFFFFFFFFBLL || v91 + 4 > *(this + 2))
            {
              goto LABEL_118;
            }

            *(a1 + 72) = *(*this + v91);
            goto LABEL_184;
          case 'i':
            *(a1 + 172) |= 0x20000uLL;
            v67 = *(this + 1);
            if (v67 > 0xFFFFFFFFFFFFFFFBLL || v67 + 4 > *(this + 2))
            {
              goto LABEL_118;
            }

            *(a1 + 92) = *(*this + v67);
            goto LABEL_184;
          case 'j':
            *(a1 + 172) |= 0x10000000000uLL;
            v101 = *(this + 1);
            if (v101 >= *(this + 2))
            {
              v104 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v102 = v101 + 1;
              v103 = *(*this + v101);
              *(this + 1) = v102;
              v104 = v103 != 0;
            }

            *(a1 + 163) = v104;
            break;
          case 'k':
            *(a1 + 172) |= 0x200000000uLL;
            v106 = *(this + 1);
            if (v106 >= *(this + 2))
            {
              v109 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v107 = v106 + 1;
              v108 = *(*this + v106);
              *(this + 1) = v107;
              v109 = v108 != 0;
            }

            *(a1 + 156) = v109;
            break;
          case 'l':
            *(a1 + 172) |= 0x100000000000uLL;
            v92 = *(this + 1);
            if (v92 >= *(this + 2))
            {
              v95 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v93 = v92 + 1;
              v94 = *(*this + v92);
              *(this + 1) = v93;
              v95 = v94 != 0;
            }

            *(a1 + 167) = v95;
            break;
          case 'm':
            *(a1 + 172) |= 0x800000000uLL;
            v118 = *(this + 1);
            if (v118 >= *(this + 2))
            {
              v121 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v119 = v118 + 1;
              v120 = *(*this + v118);
              *(this + 1) = v119;
              v121 = v120 != 0;
            }

            *(a1 + 158) = v121;
            break;
          case 'n':
            *(a1 + 172) |= 0x4000000000uLL;
            v70 = *(this + 1);
            if (v70 >= *(this + 2))
            {
              v73 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v71 = v70 + 1;
              v72 = *(*this + v70);
              *(this + 1) = v71;
              v73 = v72 != 0;
            }

            *(a1 + 161) = v73;
            break;
          case 'o':
            *(a1 + 172) |= 0x80000000000uLL;
            v114 = *(this + 1);
            if (v114 >= *(this + 2))
            {
              v117 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v115 = v114 + 1;
              v116 = *(*this + v114);
              *(this + 1) = v115;
              v117 = v116 != 0;
            }

            *(a1 + 166) = v117;
            break;
          case 'p':
            *(a1 + 172) |= 0x8000uLL;
            v63 = *(this + 1);
            if (v63 > 0xFFFFFFFFFFFFFFFBLL || v63 + 4 > *(this + 2))
            {
              goto LABEL_118;
            }

            *(a1 + 84) = *(*this + v63);
            goto LABEL_184;
          case 'q':
            *(a1 + 172) |= 0x2000uLL;
            v69 = *(this + 1);
            if (v69 > 0xFFFFFFFFFFFFFFFBLL || v69 + 4 > *(this + 2))
            {
              goto LABEL_118;
            }

            *(a1 + 76) = *(*this + v69);
            goto LABEL_184;
          case 'r':
            *(a1 + 172) |= 0x40000uLL;
            v105 = *(this + 1);
            if (v105 <= 0xFFFFFFFFFFFFFFFBLL && v105 + 4 <= *(this + 2))
            {
              *(a1 + 96) = *(*this + v105);
LABEL_184:
              *(this + 1) += 4;
            }

            else
            {
LABEL_118:
              *(this + 24) = 1;
            }

            break;
          case 's':
            *(a1 + 172) |= 0x20000000000uLL;
            v31 = *(this + 1);
            if (v31 >= *(this + 2))
            {
              v34 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v32 = v31 + 1;
              v33 = *(*this + v31);
              *(this + 1) = v32;
              v34 = v33 != 0;
            }

            *(a1 + 164) = v34;
            break;
          case 't':
            *(a1 + 172) |= 0x400000000uLL;
            v85 = *(this + 1);
            if (v85 >= *(this + 2))
            {
              v88 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v86 = v85 + 1;
              v87 = *(*this + v85);
              *(this + 1) = v86;
              v88 = v87 != 0;
            }

            *(a1 + 157) = v88;
            break;
          case 'u':
            *(a1 + 172) |= 0x200000000000uLL;
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

            *(a1 + 168) = v30;
            break;
          case 'v':
            *(a1 + 172) |= 0x1000000000uLL;
            v97 = *(this + 1);
            if (v97 >= *(this + 2))
            {
              v100 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v98 = v97 + 1;
              v99 = *(*this + v97);
              *(this + 1) = v98;
              v100 = v99 != 0;
            }

            *(a1 + 159) = v100;
            break;
          case 'w':
            *(a1 + 172) |= 0x8000000000uLL;
            v110 = *(this + 1);
            if (v110 >= *(this + 2))
            {
              v113 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v111 = v110 + 1;
              v112 = *(*this + v110);
              *(this + 1) = v111;
              v113 = v112 != 0;
            }

            *(a1 + 162) = v113;
            break;
          default:
            JUMPOUT(0);
        }
      }

      else
      {
        switch((v10 >> 3))
        {
          case 1u:
            *(a1 + 172) |= 0x20000000uLL;
            v22 = *(this + 1);
            if (v22 > 0xFFFFFFFFFFFFFFFBLL || v22 + 4 > *(this + 2))
            {
              goto LABEL_118;
            }

            *(a1 + 140) = *(*this + v22);
            goto LABEL_184;
          case 2u:
            *(a1 + 172) |= 0x8000000uLL;
            v68 = *(this + 1);
            if (v68 > 0xFFFFFFFFFFFFFFFBLL || v68 + 4 > *(this + 2))
            {
              goto LABEL_118;
            }

            *(a1 + 132) = *(*this + v68);
            goto LABEL_184;
          case 3u:
            *(a1 + 172) |= 0x2000000uLL;
            v64 = *(this + 1);
            if (v64 > 0xFFFFFFFFFFFFFFFBLL || v64 + 4 > *(this + 2))
            {
              goto LABEL_118;
            }

            *(a1 + 124) = *(*this + v64);
            goto LABEL_184;
          case 4u:
            *(a1 + 172) |= 0x80000000uLL;
            v65 = *(this + 1);
            if (v65 > 0xFFFFFFFFFFFFFFFBLL || v65 + 4 > *(this + 2))
            {
              goto LABEL_118;
            }

            *(a1 + 148) = *(*this + v65);
            goto LABEL_184;
          case 5u:
            *(a1 + 172) |= 0x100000uLL;
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
                  goto LABEL_197;
                }

                v47 += 7;
                ++v51;
                v14 = v48++ > 8;
              }

              while (!v14);
LABEL_146:
              LODWORD(v49) = 0;
              goto LABEL_197;
            }

            v128 = 0;
            v129 = 0;
            v49 = 0;
            v17 = v44 >= v45;
            v130 = v44 - v45;
            if (!v17)
            {
              v130 = 0;
            }

            v131 = (v46 + v45);
            v132 = v45 + 1;
            while (2)
            {
              if (v130)
              {
                v133 = *v131;
                *(this + 1) = v132;
                v49 |= (v133 & 0x7F) << v128;
                if (v133 < 0)
                {
                  v128 += 7;
                  --v130;
                  ++v131;
                  ++v132;
                  v14 = v129++ > 8;
                  if (v14)
                  {
                    goto LABEL_146;
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

LABEL_197:
            *(a1 + 104) = v49;
            goto LABEL_185;
          case 6u:
            *(a1 + 172) |= 0x80000uLL;
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
                  goto LABEL_203;
                }

                v78 += 7;
                ++v82;
                v14 = v79++ > 8;
              }

              while (!v14);
LABEL_164:
              LODWORD(v80) = 0;
              goto LABEL_203;
            }

            v140 = 0;
            v141 = 0;
            v80 = 0;
            v17 = v75 >= v76;
            v142 = v75 - v76;
            if (!v17)
            {
              v142 = 0;
            }

            v143 = (v77 + v76);
            v144 = v76 + 1;
            while (2)
            {
              if (v142)
              {
                v145 = *v143;
                *(this + 1) = v144;
                v80 |= (v145 & 0x7F) << v140;
                if (v145 < 0)
                {
                  v140 += 7;
                  --v142;
                  ++v143;
                  ++v144;
                  v14 = v141++ > 8;
                  if (v14)
                  {
                    goto LABEL_164;
                  }

                  continue;
                }

                if (*(this + 24))
                {
                  LODWORD(v80) = 0;
                }
              }

              else
              {
                LODWORD(v80) = 0;
                *(this + 24) = 1;
              }

              break;
            }

LABEL_203:
            *(a1 + 100) = v80;
            goto LABEL_185;
          case 7u:
            *(a1 + 172) |= 0x800000uLL;
            v84 = *(this + 1);
            if (v84 > 0xFFFFFFFFFFFFFFFBLL || v84 + 4 > *(this + 2))
            {
              goto LABEL_118;
            }

            *(a1 + 116) = *(*this + v84);
            goto LABEL_184;
          case 8u:
            *(a1 + 172) |= 0x40000000uLL;
            v66 = *(this + 1);
            if (v66 > 0xFFFFFFFFFFFFFFFBLL || v66 + 4 > *(this + 2))
            {
              goto LABEL_118;
            }

            *(a1 + 144) = *(*this + v66);
            goto LABEL_184;
          case 9u:
            *(a1 + 172) |= 0x10000000uLL;
            v90 = *(this + 1);
            if (v90 > 0xFFFFFFFFFFFFFFFBLL || v90 + 4 > *(this + 2))
            {
              goto LABEL_118;
            }

            *(a1 + 136) = *(*this + v90);
            goto LABEL_184;
          case 0xAu:
            *(a1 + 172) |= 0x4000000uLL;
            v62 = *(this + 1);
            if (v62 > 0xFFFFFFFFFFFFFFFBLL || v62 + 4 > *(this + 2))
            {
              goto LABEL_118;
            }

            *(a1 + 128) = *(*this + v62);
            goto LABEL_184;
          case 0xBu:
            *(a1 + 172) |= 0x100000000uLL;
            v89 = *(this + 1);
            if (v89 > 0xFFFFFFFFFFFFFFFBLL || v89 + 4 > *(this + 2))
            {
              goto LABEL_118;
            }

            *(a1 + 152) = *(*this + v89);
            goto LABEL_184;
          case 0xCu:
            *(a1 + 172) |= 0x200000uLL;
            v36 = *(this + 1);
            v35 = *(this + 2);
            v37 = *this;
            if (v36 <= 0xFFFFFFFFFFFFFFF5 && v36 + 10 <= v35)
            {
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v41 = (v37 + v36);
              v42 = v36 + 1;
              do
              {
                *(this + 1) = v42;
                v43 = *v41++;
                v40 |= (v43 & 0x7F) << v38;
                if ((v43 & 0x80) == 0)
                {
                  goto LABEL_194;
                }

                v38 += 7;
                ++v42;
                v14 = v39++ > 8;
              }

              while (!v14);
LABEL_138:
              LODWORD(v40) = 0;
              goto LABEL_194;
            }

            v122 = 0;
            v123 = 0;
            v40 = 0;
            v17 = v35 >= v36;
            v124 = v35 - v36;
            if (!v17)
            {
              v124 = 0;
            }

            v125 = (v37 + v36);
            v126 = v36 + 1;
            while (2)
            {
              if (v124)
              {
                v127 = *v125;
                *(this + 1) = v126;
                v40 |= (v127 & 0x7F) << v122;
                if (v127 < 0)
                {
                  v122 += 7;
                  --v124;
                  ++v125;
                  ++v126;
                  v14 = v123++ > 8;
                  if (v14)
                  {
                    goto LABEL_138;
                  }

                  continue;
                }

                if (*(this + 24))
                {
                  LODWORD(v40) = 0;
                }
              }

              else
              {
                LODWORD(v40) = 0;
                *(this + 24) = 1;
              }

              break;
            }

LABEL_194:
            *(a1 + 108) = v40;
            goto LABEL_185;
          case 0xDu:
            *(a1 + 172) |= 0x400000uLL;
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
                  goto LABEL_200;
                }

                v56 += 7;
                ++v60;
                v14 = v57++ > 8;
              }

              while (!v14);
LABEL_154:
              LODWORD(v58) = 0;
              goto LABEL_200;
            }

            v134 = 0;
            v135 = 0;
            v58 = 0;
            v17 = v53 >= v54;
            v136 = v53 - v54;
            if (!v17)
            {
              v136 = 0;
            }

            v137 = (v55 + v54);
            v138 = v54 + 1;
            break;
          default:
            if (PB::Reader::skip(this))
            {
              goto LABEL_185;
            }

            v147 = 0;
            return v147 & 1;
        }

        while (1)
        {
          if (!v136)
          {
            LODWORD(v58) = 0;
            *(this + 24) = 1;
            goto LABEL_200;
          }

          v139 = *v137;
          *(this + 1) = v138;
          v58 |= (v139 & 0x7F) << v134;
          if ((v139 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          --v136;
          ++v137;
          ++v138;
          v14 = v135++ > 8;
          if (v14)
          {
            goto LABEL_154;
          }
        }

        if (*(this + 24))
        {
          LODWORD(v58) = 0;
        }

LABEL_200:
        *(a1 + 112) = v58;
      }

LABEL_185:
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

LABEL_205:
  v147 = v4 ^ 1;
  return v147 & 1;
}

uint64_t sub_245DD4F0C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 172);
  if ((v4 & 0x20000000) != 0)
  {
    result = PB::Writer::write(this, *(result + 140));
    v4 = *(v3 + 172);
    if ((v4 & 0x8000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x2000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_50;
    }
  }

  else if ((v4 & 0x8000000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 132));
  v4 = *(v3 + 172);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_4:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 124));
  v4 = *(v3 + 172);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 148));
  v4 = *(v3 + 172);
  if ((v4 & 0x100000) == 0)
  {
LABEL_6:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_53;
  }

LABEL_52:
  v5 = *(v3 + 104);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 172);
  if ((v4 & 0x80000) == 0)
  {
LABEL_7:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_54;
  }

LABEL_53:
  v6 = *(v3 + 100);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 172);
  if ((v4 & 0x800000) == 0)
  {
LABEL_8:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 172);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_9:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 172);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_10:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 172);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_11:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 172);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_12:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = PB::Writer::write(this, *(v3 + 152));
  v4 = *(v3 + 172);
  if ((v4 & 0x200000) == 0)
  {
LABEL_13:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_60;
  }

LABEL_59:
  v7 = *(v3 + 108);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 172);
  if ((v4 & 0x400000) == 0)
  {
LABEL_14:
    if ((v4 & 0x40000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_61;
  }

LABEL_60:
  v8 = *(v3 + 112);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 172);
  if ((v4 & 0x40000000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_62;
  }

LABEL_61:
  v9 = *(v3 + 165);
  result = PB::Writer::write(this);
  v4 = *(v3 + 172);
  if ((v4 & 0x10000) == 0)
  {
LABEL_16:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 172);
  if ((v4 & 0x4000) == 0)
  {
LABEL_17:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 172);
  if ((v4 & 0x1000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 172);
  if ((v4 & 0x20000) == 0)
  {
LABEL_19:
    if ((v4 & 0x10000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = PB::Writer::write(this, *(v3 + 92));
  v4 = *(v3 + 172);
  if ((v4 & 0x10000000000) == 0)
  {
LABEL_20:
    if ((v4 & 0x200000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_67;
  }

LABEL_66:
  v10 = *(v3 + 163);
  result = PB::Writer::write(this);
  v4 = *(v3 + 172);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_21:
    if ((v4 & 0x100000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_68;
  }

LABEL_67:
  v11 = *(v3 + 156);
  result = PB::Writer::write(this);
  v4 = *(v3 + 172);
  if ((v4 & 0x100000000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_69;
  }

LABEL_68:
  v12 = *(v3 + 167);
  result = PB::Writer::write(this);
  v4 = *(v3 + 172);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_23:
    if ((v4 & 0x4000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_70;
  }

LABEL_69:
  v13 = *(v3 + 158);
  result = PB::Writer::write(this);
  v4 = *(v3 + 172);
  if ((v4 & 0x4000000000) == 0)
  {
LABEL_24:
    if ((v4 & 0x80000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_71;
  }

LABEL_70:
  v14 = *(v3 + 161);
  result = PB::Writer::write(this);
  v4 = *(v3 + 172);
  if ((v4 & 0x80000000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_72;
  }

LABEL_71:
  v15 = *(v3 + 166);
  result = PB::Writer::write(this);
  v4 = *(v3 + 172);
  if ((v4 & 0x8000) == 0)
  {
LABEL_26:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_73;
  }

LABEL_72:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 172);
  if ((v4 & 0x2000) == 0)
  {
LABEL_27:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_74;
  }

LABEL_73:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 172);
  if ((v4 & 0x40000) == 0)
  {
LABEL_28:
    if ((v4 & 0x20000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_75;
  }

LABEL_74:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 172);
  if ((v4 & 0x20000000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_76;
  }

LABEL_75:
  v16 = *(v3 + 164);
  result = PB::Writer::write(this);
  v4 = *(v3 + 172);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_30:
    if ((v4 & 0x200000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_77;
  }

LABEL_76:
  v17 = *(v3 + 157);
  result = PB::Writer::write(this);
  v4 = *(v3 + 172);
  if ((v4 & 0x200000000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x1000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_78;
  }

LABEL_77:
  v18 = *(v3 + 168);
  result = PB::Writer::write(this);
  v4 = *(v3 + 172);
  if ((v4 & 0x1000000000) == 0)
  {
LABEL_32:
    if ((v4 & 0x8000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_79;
  }

LABEL_78:
  v19 = *(v3 + 159);
  result = PB::Writer::write(this);
  v4 = *(v3 + 172);
  if ((v4 & 0x8000000000) == 0)
  {
LABEL_33:
    if ((v4 & 0x2000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_80;
  }

LABEL_79:
  v20 = *(v3 + 162);
  result = PB::Writer::write(this);
  v4 = *(v3 + 172);
  if ((v4 & 0x2000000000) == 0)
  {
LABEL_34:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_81;
  }

LABEL_80:
  v21 = *(v3 + 160);
  result = PB::Writer::write(this);
  v4 = *(v3 + 172);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_35:
    if ((v4 & 4) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_82;
  }

LABEL_81:
  v22 = *(v3 + 120);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 172);
  if ((v4 & 4) == 0)
  {
LABEL_36:
    if ((v4 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_83;
  }

LABEL_82:
  v23 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 172);
  if ((v4 & 8) == 0)
  {
LABEL_37:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_84;
  }

LABEL_83:
  v24 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 172);
  if ((v4 & 0x10) == 0)
  {
LABEL_38:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_85;
  }

LABEL_84:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 172);
  if ((v4 & 0x80) == 0)
  {
LABEL_39:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_86;
  }

LABEL_85:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 172);
  if ((v4 & 0x100) == 0)
  {
LABEL_40:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_87;
  }

LABEL_86:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 172);
  if ((v4 & 0x800) == 0)
  {
LABEL_41:
    if ((v4 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_88;
  }

LABEL_87:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 172);
  if ((v4 & 1) == 0)
  {
LABEL_42:
    if ((v4 & 2) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_89;
  }

LABEL_88:
  v25 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 172);
  if ((v4 & 2) == 0)
  {
LABEL_43:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_90;
  }

LABEL_89:
  v26 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 172);
  if ((v4 & 0x20) == 0)
  {
LABEL_44:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_91;
  }

LABEL_90:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 172);
  if ((v4 & 0x40) == 0)
  {
LABEL_45:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_46;
    }

LABEL_92:
    result = PB::Writer::write(this, *(v3 + 60));
    if ((*(v3 + 172) & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_93;
  }

LABEL_91:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 172);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_92;
  }

LABEL_46:
  if ((v4 & 0x400) == 0)
  {
    return result;
  }

LABEL_93:
  v27 = *(v3 + 64);

  return PB::Writer::write(this, v27);
}

uint64_t sub_245DD544C(uint64_t result)
{
  *result = &unk_2858CDED8;
  *(result + 28) = 0;
  return result;
}

void sub_245DD5474(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DD54AC(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CDED8;
  *(result + 28) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 28) = 1;
    *(result + 8) = v4;
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
    v5 = *(a2 + 20);
    v3 |= 8u;
    *(result + 28) = v3;
    *(result + 20) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 24);
    v3 |= 0x10u;
    *(result + 28) = v3;
    *(result + 24) = v6;
    v2 = *(a2 + 28);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_12:
      v8 = *(a2 + 16);
      *(result + 28) = v3 | 4;
      *(result + 16) = v8;
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 12);
  v3 |= 2u;
  *(result + 28) = v3;
  *(result + 12) = v7;
  if ((*(a2 + 28) & 4) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_245DD5564(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if (v5)
  {
    PB::TextFormatter::format(this, "configThreshold1", *(a1 + 8));
    v5 = *(a1 + 28);
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

  else if ((*(a1 + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "debugX", *(a1 + 12));
  v5 = *(a1 + 28);
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
  v7 = *(a1 + 16);
  PB::TextFormatter::format(this, "debugY");
  v5 = *(a1 + 28);
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
  PB::TextFormatter::format(this, "outputA", *(a1 + 20));
  if ((*(a1 + 28) & 0x10) != 0)
  {
LABEL_6:
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "outputB");
  }

LABEL_7:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DD5648(uint64_t a1, PB::Reader *this)
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
            goto LABEL_85;
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
      if ((v10 >> 3) <= 100001)
      {
        if (v22 == 100000)
        {
          *(a1 + 28) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_50:
            *(this + 24) = 1;
            goto LABEL_81;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_70;
        }

        if (v22 == 100001)
        {
          *(a1 + 28) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_50;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_70;
        }
      }

      else
      {
        switch(v22)
        {
          case 0x186A2:
            *(a1 + 28) |= 0x10u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v39 = 0;
              v40 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v41 = v2 - v31;
              v42 = (v32 + v31);
              v43 = v31 + 1;
              while (1)
              {
                if (!v41)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_76;
                }

                v44 = v43;
                v45 = *v42;
                *(this + 1) = v44;
                v35 |= (v45 & 0x7F) << v39;
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
                  LODWORD(v35) = 0;
                  goto LABEL_75;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_75:
              v2 = v44;
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

LABEL_76:
            *(a1 + 24) = v35;
            goto LABEL_81;
          case 0x186A3:
            *(a1 + 28) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_50;
            }

            *(a1 + 12) = *(*this + v2);
LABEL_70:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
            goto LABEL_81;
          case 0x186A4:
            *(a1 + 28) |= 4u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v46 = 0;
              v47 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v48 = v2 - v23;
              v49 = (v24 + v23);
              v50 = v23 + 1;
              while (1)
              {
                if (!v48)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_80;
                }

                v51 = v50;
                v52 = *v49;
                *(this + 1) = v51;
                v27 |= (v52 & 0x7F) << v46;
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
                  LODWORD(v27) = 0;
                  goto LABEL_79;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_79:
              v2 = v51;
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

LABEL_80:
            *(a1 + 16) = v27;
            goto LABEL_81;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v53 = 0;
        return v53 & 1;
      }

      v2 = *(this + 1);
LABEL_81:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_85:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_245DD5AE0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 28);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 28);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = PB::Writer::write(this, *(v3 + 12));
    if ((*(v3 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  v5 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 28);
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
  v6 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245DD5BBC(uint64_t result)
{
  *result = &unk_2858CDF10;
  *(result + 44) = 0;
  return result;
}

void sub_245DD5BE4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DD5C1C(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CDF10;
  *(result + 44) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 8) != 0)
  {
    v4 = *(a2 + 32);
    v3 = 8;
    *(result + 44) = 8;
    *(result + 32) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 44))
  {
LABEL_5:
    v5 = *(a2 + 8);
    v3 |= 1u;
    *(result + 44) = v3;
    *(result + 8) = v5;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 16);
    v3 |= 2u;
    *(result + 44) = v3;
    *(result + 16) = v6;
    v2 = *(a2 + 44);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_12:
      v8 = *(a2 + 24);
      *(result + 44) = v3 | 4;
      *(result + 24) = v8;
      return result;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 40);
  v3 |= 0x10u;
  *(result + 44) = v3;
  *(result + 40) = v7;
  if ((*(a2 + 44) & 4) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_245DD5CD4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 44);
  if (v5)
  {
    v7 = *(a1 + 8);
    PB::TextFormatter::format(this, "epochFirstTimestamp");
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

  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "epochLastTimestamp");
  v5 = *(a1 + 44);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = *(a1 + 24);
  PB::TextFormatter::format(this, "maxNormTimestamp");
  v5 = *(a1 + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(this, "maxNormValue", *(a1 + 40));
  if ((*(a1 + 44) & 8) != 0)
  {
LABEL_6:
    v6 = *(a1 + 32);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_7:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DD5DB8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_118;
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
          *(a1 + 44) |= 8u;
          v47 = *(this + 1);
          v2 = *(this + 2);
          v48 = *this;
          if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
          {
            v62 = 0;
            v63 = 0;
            v51 = 0;
            if (v2 <= v47)
            {
              v2 = *(this + 1);
            }

            v64 = v2 - v47;
            v65 = (v48 + v47);
            v66 = v47 + 1;
            while (1)
            {
              if (!v64)
              {
                v51 = 0;
                *(this + 24) = 1;
                goto LABEL_105;
              }

              v67 = v66;
              v68 = *v65;
              *(this + 1) = v67;
              v51 |= (v68 & 0x7F) << v62;
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
                v51 = 0;
                goto LABEL_104;
              }
            }

            if (*(this + 24))
            {
              v51 = 0;
            }

LABEL_104:
            v2 = v67;
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

LABEL_105:
          *(a1 + 32) = v51;
          goto LABEL_114;
        }

        if (v22 == 2)
        {
          *(a1 + 44) |= 1u;
          v31 = *(this + 1);
          v2 = *(this + 2);
          v32 = *this;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v76 = 0;
            v77 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(this + 1);
            }

            v78 = v2 - v31;
            v79 = (v32 + v31);
            v80 = v31 + 1;
            while (1)
            {
              if (!v78)
              {
                v35 = 0;
                *(this + 24) = 1;
                goto LABEL_113;
              }

              v81 = v80;
              v82 = *v79;
              *(this + 1) = v81;
              v35 |= (v82 & 0x7F) << v76;
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
                v35 = 0;
                goto LABEL_112;
              }
            }

            if (*(this + 24))
            {
              v35 = 0;
            }

LABEL_112:
            v2 = v81;
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

LABEL_113:
          *(a1 + 8) = v35;
          goto LABEL_114;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 44) |= 2u;
            v39 = *(this + 1);
            v2 = *(this + 2);
            v40 = *this;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v55 = 0;
              v56 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(this + 1);
              }

              v57 = v2 - v39;
              v58 = (v40 + v39);
              v59 = v39 + 1;
              while (1)
              {
                if (!v57)
                {
                  v43 = 0;
                  *(this + 24) = 1;
                  goto LABEL_101;
                }

                v60 = v59;
                v61 = *v58;
                *(this + 1) = v60;
                v43 |= (v61 & 0x7F) << v55;
                if ((v61 & 0x80) == 0)
                {
                  break;
                }

                v55 += 7;
                --v57;
                ++v58;
                v59 = v60 + 1;
                v14 = v56++ > 8;
                if (v14)
                {
                  v43 = 0;
                  goto LABEL_100;
                }
              }

              if (*(this + 24))
              {
                v43 = 0;
              }

LABEL_100:
              v2 = v60;
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

LABEL_101:
            *(a1 + 16) = v43;
            goto LABEL_114;
          case 4:
            *(a1 + 44) |= 0x10u;
            v2 = *(this + 1);
            if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
            {
              *(a1 + 40) = *(*this + v2);
              v2 = *(this + 1) + 4;
              *(this + 1) = v2;
            }

            else
            {
              *(this + 24) = 1;
            }

            goto LABEL_114;
          case 5:
            *(a1 + 44) |= 4u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v69 = 0;
              v70 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v71 = v2 - v23;
              v72 = (v24 + v23);
              v73 = v23 + 1;
              while (1)
              {
                if (!v71)
                {
                  v27 = 0;
                  *(this + 24) = 1;
                  goto LABEL_109;
                }

                v74 = v73;
                v75 = *v72;
                *(this + 1) = v74;
                v27 |= (v75 & 0x7F) << v69;
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
                  v27 = 0;
                  goto LABEL_108;
                }
              }

              if (*(this + 24))
              {
                v27 = 0;
              }

LABEL_108:
              v2 = v74;
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

LABEL_109:
            *(a1 + 24) = v27;
            goto LABEL_114;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v83 = 0;
        return v83 & 1;
      }

      v2 = *(this + 1);
LABEL_114:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_118:
  v83 = v4 ^ 1;
  return v83 & 1;
}

uint64_t sub_245DD63B0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 44);
  if ((v4 & 8) != 0)
  {
    v5 = *(result + 32);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 44);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 44) & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 44);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = PB::Writer::write(this, *(v3 + 40));
    if ((*(v3 + 44) & 4) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  v7 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 44);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_11:
  v8 = *(v3 + 24);

  return PB::Writer::writeVarInt(this);
}

double sub_245DD6474(uint64_t a1)
{
  *a1 = &unk_2858CDF48;
  *(a1 + 152) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_245DD64A8(PB::Base *this)
{
  *this = &unk_2858CDF48;
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

void sub_245DD651C(PB::Base *a1)
{
  sub_245DD64A8(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DD6554(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CDF48;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 152) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v5 = *(a2 + 152);
  if ((v5 & 0x80) != 0)
  {
    v7 = *(a2 + 112);
    v6 = 128;
    *(a1 + 152) = 128;
    *(a1 + 112) = v7;
    v5 = *(a2 + 152);
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((v5 & 8) != 0)
  {
LABEL_5:
    v8 = *(a2 + 80);
    v6 |= 8u;
    *(a1 + 152) = v6;
    *(a1 + 80) = v8;
    v5 = *(a2 + 152);
  }

LABEL_6:
  if ((v5 & 0x800) != 0)
  {
    v13 = *(a2 + 128);
    v6 |= 0x800u;
    *(a1 + 152) = v6;
    *(a1 + 128) = v13;
    v5 = *(a2 + 152);
    if ((v5 & 0x10) == 0)
    {
LABEL_8:
      if ((v5 & 0x4000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v14 = *(a2 + 88);
  v6 |= 0x10u;
  *(a1 + 152) = v6;
  *(a1 + 88) = v14;
  v5 = *(a2 + 152);
  if ((v5 & 0x4000) == 0)
  {
LABEL_9:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v15 = *(a2 + 140);
  v6 |= 0x4000u;
  *(a1 + 152) = v6;
  *(a1 + 140) = v15;
  v5 = *(a2 + 152);
  if ((v5 & 0x8000) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v16 = *(a2 + 144);
  v6 |= 0x8000u;
  *(a1 + 152) = v6;
  *(a1 + 144) = v16;
  v5 = *(a2 + 152);
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
  v17 = *(a2 + 120);
  v6 |= 0x200u;
  *(a1 + 152) = v6;
  *(a1 + 120) = v17;
  v5 = *(a2 + 152);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  v18 = *(a2 + 124);
  v6 |= 0x400u;
  *(a1 + 152) = v6;
  *(a1 + 124) = v18;
  v5 = *(a2 + 152);
  if ((v5 & 0x20) == 0)
  {
LABEL_13:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  v19 = *(a2 + 96);
  v6 |= 0x20u;
  *(a1 + 152) = v6;
  *(a1 + 96) = v19;
  v5 = *(a2 + 152);
  if ((v5 & 0x100) == 0)
  {
LABEL_14:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v20 = *(a2 + 116);
  v6 |= 0x100u;
  *(a1 + 152) = v6;
  *(a1 + 116) = v20;
  v5 = *(a2 + 152);
  if ((v5 & 0x10000) == 0)
  {
LABEL_15:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v21 = *(a2 + 148);
  v6 |= 0x10000u;
  *(a1 + 152) = v6;
  *(a1 + 148) = v21;
  v5 = *(a2 + 152);
  if ((v5 & 0x40) == 0)
  {
LABEL_16:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v22 = *(a2 + 104);
  v6 |= 0x40u;
  *(a1 + 152) = v6;
  *(a1 + 104) = v22;
  v5 = *(a2 + 152);
  if ((v5 & 0x1000) == 0)
  {
LABEL_17:
    if ((v5 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  v23 = *(a2 + 132);
  v6 |= 0x1000u;
  *(a1 + 152) = v6;
  *(a1 + 132) = v23;
  v5 = *(a2 + 152);
  if ((v5 & 4) == 0)
  {
LABEL_18:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_38:
  v24 = *(a2 + 72);
  v6 |= 4u;
  *(a1 + 152) = v6;
  *(a1 + 72) = v24;
  if ((*(a2 + 152) & 0x2000) != 0)
  {
LABEL_19:
    v9 = *(a2 + 136);
    *(a1 + 152) = v6 | 0x2000;
    *(a1 + 136) = v9;
  }

LABEL_20:
  if (a1 != a2)
  {
    sub_245DF86C8(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  }

  v10 = *(a2 + 152);
  if ((v10 & 1) == 0)
  {
    if ((v10 & 2) == 0)
    {
      goto LABEL_24;
    }

LABEL_41:
    v26 = *(a2 + 64);
    *(a1 + 152) |= 2u;
    *(a1 + 64) = v26;
    if ((*(a2 + 152) & 0x20000) == 0)
    {
      return a1;
    }

    goto LABEL_25;
  }

  v25 = *(a2 + 56);
  *(a1 + 152) |= 1u;
  *(a1 + 56) = v25;
  v10 = *(a2 + 152);
  if ((v10 & 2) != 0)
  {
    goto LABEL_41;
  }

LABEL_24:
  if ((v10 & 0x20000) != 0)
  {
LABEL_25:
    v11 = *(a2 + 149);
    *(a1 + 152) |= 0x20000u;
    *(a1 + 149) = v11;
  }

  return a1;
}

uint64_t sub_245DD67E8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if ((*(a1 + 152) & 0x80) != 0)
  {
    PB::TextFormatter::format(this, "accelPeakThreshold", *(a1 + 112));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "allMaxNormTimestamps");
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "allMaxNormValues", v10);
  }

  v11 = *(a1 + 152);
  if (v11)
  {
    v13 = *(a1 + 56);
    PB::TextFormatter::format(this, "epochFirstTimestamp");
    v11 = *(a1 + 152);
    if ((v11 & 2) == 0)
    {
LABEL_9:
      if ((v11 & 0x10000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_30;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_9;
  }

  v14 = *(a1 + 64);
  PB::TextFormatter::format(this, "epochLastTimestamp");
  v11 = *(a1 + 152);
  if ((v11 & 0x10000) == 0)
  {
LABEL_10:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = *(a1 + 148);
  PB::TextFormatter::format(this, "isMAPDetected");
  v11 = *(a1 + 152);
  if ((v11 & 0x100) == 0)
  {
LABEL_11:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "magnitudePercentileThreshold", *(a1 + 116));
  v11 = *(a1 + 152);
  if ((v11 & 0x200) == 0)
  {
LABEL_12:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "magnitudePeriodicityLowerPercentile", *(a1 + 120));
  v11 = *(a1 + 152);
  if ((v11 & 0x400) == 0)
  {
LABEL_13:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "magnitudePeriodicityUpperPercentile", *(a1 + 124));
  v11 = *(a1 + 152);
  if ((v11 & 0x800) == 0)
  {
LABEL_14:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v16 = *(a1 + 128);
  PB::TextFormatter::format(this, "minNumPeaks");
  v11 = *(a1 + 152);
  if ((v11 & 0x1000) == 0)
  {
LABEL_15:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v17 = *(a1 + 132);
  PB::TextFormatter::format(this, "numPeaks");
  v11 = *(a1 + 152);
  if ((v11 & 0x2000) == 0)
  {
LABEL_16:
    if ((v11 & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "peakMagnitudePercentileDiff", *(a1 + 136));
  v11 = *(a1 + 152);
  if ((v11 & 0x20000) == 0)
  {
LABEL_17:
    if ((v11 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  v18 = *(a1 + 149);
  PB::TextFormatter::format(this, "peakSeparation");
  v11 = *(a1 + 152);
  if ((v11 & 4) == 0)
  {
LABEL_18:
    if ((v11 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  v19 = *(a1 + 72);
  PB::TextFormatter::format(this, "peakTimeDeltaPercentileDiff");
  v11 = *(a1 + 152);
  if ((v11 & 8) == 0)
  {
LABEL_19:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  v20 = *(a1 + 80);
  PB::TextFormatter::format(this, "peakToPeakMinimumSeparation");
  v11 = *(a1 + 152);
  if ((v11 & 0x10) == 0)
  {
LABEL_20:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_40:
  v21 = *(a1 + 88);
  PB::TextFormatter::format(this, "peakToPeakSeparationThreshold");
  v11 = *(a1 + 152);
  if ((v11 & 0x20) == 0)
  {
LABEL_21:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_41:
  v22 = *(a1 + 96);
  PB::TextFormatter::format(this, "timePercentileDiffThreshold");
  v11 = *(a1 + 152);
  if ((v11 & 0x4000) == 0)
  {
LABEL_22:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "timePeriodicityLowerPercentile", *(a1 + 140));
  v11 = *(a1 + 152);
  if ((v11 & 0x8000) == 0)
  {
LABEL_23:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_43:
  PB::TextFormatter::format(this, "timePeriodicityUpperPercentile", *(a1 + 144));
  if ((*(a1 + 152) & 0x40) != 0)
  {
LABEL_24:
    v12 = *(a1 + 104);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_25:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DD6AD0(uint64_t a1, PB::Reader *this)
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
        v14 = 0;
        v15 = 0;
        v10 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v7 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_361;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v10 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v152 = v15++ > 8;
          if (v152)
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
          v152 = v9++ > 8;
          if (v152)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      v21 = v10 & 7;
      if (v4 & 1 | (v21 == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 100)
      {
        if (v22 > 203)
        {
          if (v22 <= 205)
          {
            if (v22 == 204)
            {
              if (v21 != 2)
              {
                v205 = *(a1 + 16);
                v204 = *(a1 + 24);
                if (v205 >= v204)
                {
                  v222 = *(a1 + 8);
                  v223 = v205 - v222;
                  v224 = (v205 - v222) >> 3;
                  v225 = v224 + 1;
                  if ((v224 + 1) >> 61)
                  {
LABEL_365:
                    sub_245DF85A4();
                  }

                  v226 = v204 - v222;
                  if (v226 >> 2 > v225)
                  {
                    v225 = v226 >> 2;
                  }

                  if (v226 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v227 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v227 = v225;
                  }

                  if (v227)
                  {
                    sub_245DF8830(a1 + 8, v227);
                  }

                  v234 = (v205 - v222) >> 3;
                  v235 = (8 * v224);
                  v236 = (8 * v224 - 8 * v234);
                  *v235 = 0;
                  v206 = v235 + 1;
                  memcpy(v236, v222, v223);
                  v237 = *(a1 + 8);
                  *(a1 + 8) = v236;
                  *(a1 + 16) = v206;
                  *(a1 + 24) = 0;
                  if (v237)
                  {
                    operator delete(v237);
                  }
                }

                else
                {
                  *v205 = 0;
                  v206 = v205 + 8;
                }

                *(a1 + 16) = v206;
                v239 = *(this + 1);
                v238 = *(this + 2);
                v240 = *this;
                if (v239 > 0xFFFFFFFFFFFFFFF5 || v239 + 10 > v238)
                {
                  v247 = 0;
                  v248 = 0;
                  v243 = 0;
                  v16 = v238 >= v239;
                  v249 = v238 - v239;
                  if (!v16)
                  {
                    v249 = 0;
                  }

                  v250 = (v240 + v239);
                  v251 = v239 + 1;
                  while (1)
                  {
                    if (!v249)
                    {
                      v243 = 0;
                      *(this + 24) = 1;
                      goto LABEL_356;
                    }

                    v252 = *v250;
                    *(this + 1) = v251;
                    v243 |= (v252 & 0x7F) << v247;
                    if ((v252 & 0x80) == 0)
                    {
                      break;
                    }

                    v247 += 7;
                    --v249;
                    ++v250;
                    ++v251;
                    v152 = v248++ > 8;
                    if (v152)
                    {
LABEL_345:
                      v243 = 0;
                      goto LABEL_356;
                    }
                  }

                  if (*(this + 24))
                  {
                    v243 = 0;
                  }
                }

                else
                {
                  v241 = 0;
                  v242 = 0;
                  v243 = 0;
                  v244 = (v240 + v239);
                  v245 = v239 + 1;
                  while (1)
                  {
                    *(this + 1) = v245;
                    v246 = *v244++;
                    v243 |= (v246 & 0x7F) << v241;
                    if ((v246 & 0x80) == 0)
                    {
                      break;
                    }

                    v241 += 7;
                    ++v245;
                    v152 = v242++ > 8;
                    if (v152)
                    {
                      goto LABEL_345;
                    }
                  }
                }

LABEL_356:
                *(v206 - 1) = v243;
                goto LABEL_357;
              }

              if (PB::Reader::placeMark())
              {
                goto LABEL_363;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v135 = *(a1 + 16);
                while (1)
                {
                  v136 = *(a1 + 24);
                  if (v135 >= v136)
                  {
                    v137 = *(a1 + 8);
                    v138 = v135 - v137;
                    v139 = (v135 - v137) >> 3;
                    v140 = v139 + 1;
                    if ((v139 + 1) >> 61)
                    {
                      goto LABEL_365;
                    }

                    v141 = v136 - v137;
                    if (v141 >> 2 > v140)
                    {
                      v140 = v141 >> 2;
                    }

                    if (v141 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v142 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v142 = v140;
                    }

                    if (v142)
                    {
                      sub_245DF8830(a1 + 8, v142);
                    }

                    v143 = (v135 - v137) >> 3;
                    v144 = (8 * v139);
                    v145 = (8 * v139 - 8 * v143);
                    *v144 = 0;
                    v135 = (v144 + 1);
                    memcpy(v145, v137, v138);
                    v146 = *(a1 + 8);
                    *(a1 + 8) = v145;
                    *(a1 + 16) = v135;
                    *(a1 + 24) = 0;
                    if (v146)
                    {
                      operator delete(v146);
                    }
                  }

                  else
                  {
                    *v135 = 0;
                    v135 += 8;
                  }

                  *(a1 + 16) = v135;
                  v148 = *(this + 1);
                  v147 = *(this + 2);
                  v149 = *this;
                  v150 = 0;
                  v151 = 0;
                  v152 = v148 > 0xFFFFFFFFFFFFFFF5 || v148 + 10 > v147;
                  if (v152)
                  {
                    break;
                  }

                  v158 = 0;
                  v159 = (v149 + v148);
                  v160 = v148 + 1;
                  while (1)
                  {
                    v156 = v160;
                    *(this + 1) = v160;
                    v161 = *v159++;
                    v158 |= (v161 & 0x7F) << v150;
                    if ((v161 & 0x80) == 0)
                    {
                      break;
                    }

                    v150 += 7;
                    ++v160;
                    v152 = v151++ > 8;
                    if (v152)
                    {
                      goto LABEL_186;
                    }
                  }

LABEL_189:
                  *(v135 - 1) = v158;
                  if (v156 >= v147 || (*(this + 24) & 1) != 0)
                  {
                    goto LABEL_328;
                  }
                }

                v158 = 0;
                v153 = v147 - v148;
                if (v147 < v148)
                {
                  v153 = 0;
                }

                v154 = (v149 + v148);
                v155 = v148 + 1;
                while (v153)
                {
                  v156 = v155;
                  v157 = *v154;
                  *(this + 1) = v156;
                  v158 |= (v157 & 0x7F) << v150;
                  if ((v157 & 0x80) == 0)
                  {
                    if (*(this + 24))
                    {
                      v158 = 0;
                    }

                    goto LABEL_189;
                  }

                  v150 += 7;
                  --v153;
                  ++v154;
                  v155 = v156 + 1;
                  v152 = v151++ > 8;
                  if (v152)
                  {
LABEL_186:
                    v158 = 0;
                    goto LABEL_189;
                  }
                }

                *(this + 24) = 1;
                *(v135 - 1) = 0;
              }

              goto LABEL_328;
            }

            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_363;
              }

              v49 = *(this + 1);
              v50 = *(this + 2);
              while (v49 < v50 && (*(this + 24) & 1) == 0)
              {
                v52 = *(a1 + 40);
                v51 = *(a1 + 48);
                if (v52 >= v51)
                {
                  v54 = *(a1 + 32);
                  v55 = v52 - v54;
                  v56 = (v52 - v54) >> 2;
                  v57 = v56 + 1;
                  if ((v56 + 1) >> 62)
                  {
                    goto LABEL_364;
                  }

                  v58 = v51 - v54;
                  if (v58 >> 1 > v57)
                  {
                    v57 = v58 >> 1;
                  }

                  if (v58 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v59 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v59 = v57;
                  }

                  if (v59)
                  {
                    sub_245DF85BC(a1 + 32, v59);
                  }

                  v60 = (v52 - v54) >> 2;
                  v61 = (4 * v56);
                  v62 = (4 * v56 - 4 * v60);
                  *v61 = 0;
                  v53 = v61 + 1;
                  memcpy(v62, v54, v55);
                  v63 = *(a1 + 32);
                  *(a1 + 32) = v62;
                  *(a1 + 40) = v53;
                  *(a1 + 48) = 0;
                  if (v63)
                  {
                    operator delete(v63);
                  }
                }

                else
                {
                  *v52 = 0;
                  v53 = v52 + 4;
                }

                *(a1 + 40) = v53;
                v64 = *(this + 1);
                if (v64 > 0xFFFFFFFFFFFFFFFBLL || v64 + 4 > *(this + 2))
                {
                  *(this + 24) = 1;
                  break;
                }

                *(v53 - 1) = *(*this + v64);
                v50 = *(this + 2);
                v49 = *(this + 1) + 4;
                *(this + 1) = v49;
              }

LABEL_328:
              PB::Reader::recallMark();
              goto LABEL_357;
            }

            v220 = *(a1 + 40);
            v219 = *(a1 + 48);
            if (v220 >= v219)
            {
              v228 = *(a1 + 32);
              v229 = v220 - v228;
              v230 = (v220 - v228) >> 2;
              v231 = v230 + 1;
              if ((v230 + 1) >> 62)
              {
LABEL_364:
                sub_245DF85A4();
              }

              v232 = v219 - v228;
              if (v232 >> 1 > v231)
              {
                v231 = v232 >> 1;
              }

              if (v232 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v233 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v233 = v231;
              }

              if (v233)
              {
                sub_245DF85BC(a1 + 32, v233);
              }

              v253 = (v220 - v228) >> 2;
              v254 = (4 * v230);
              v255 = (4 * v230 - 4 * v253);
              *v254 = 0;
              v221 = v254 + 1;
              memcpy(v255, v228, v229);
              v256 = *(a1 + 32);
              *(a1 + 32) = v255;
              *(a1 + 40) = v221;
              *(a1 + 48) = 0;
              if (v256)
              {
                operator delete(v256);
              }
            }

            else
            {
              *v220 = 0;
              v221 = v220 + 4;
            }

            *(a1 + 40) = v221;
            v257 = *(this + 1);
            if (v257 > 0xFFFFFFFFFFFFFFFBLL || v257 + 4 > *(this + 2))
            {
LABEL_350:
              *(this + 24) = 1;
              goto LABEL_357;
            }

            *(v221 - 1) = *(*this + v257);
            goto LABEL_352;
          }

          switch(v22)
          {
            case 0xCE:
              *(a1 + 152) |= 1u;
              v121 = *(this + 1);
              v120 = *(this + 2);
              v122 = *this;
              if (v121 > 0xFFFFFFFFFFFFFFF5 || v121 + 10 > v120)
              {
                v198 = 0;
                v199 = 0;
                v125 = 0;
                v16 = v120 >= v121;
                v200 = v120 - v121;
                if (!v16)
                {
                  v200 = 0;
                }

                v201 = (v122 + v121);
                v202 = v121 + 1;
                while (1)
                {
                  if (!v200)
                  {
                    v125 = 0;
                    *(this + 24) = 1;
                    goto LABEL_320;
                  }

                  v203 = *v201;
                  *(this + 1) = v202;
                  v125 |= (v203 & 0x7F) << v198;
                  if ((v203 & 0x80) == 0)
                  {
                    break;
                  }

                  v198 += 7;
                  --v200;
                  ++v201;
                  ++v202;
                  v152 = v199++ > 8;
                  if (v152)
                  {
LABEL_249:
                    v125 = 0;
                    goto LABEL_320;
                  }
                }

                if (*(this + 24))
                {
                  v125 = 0;
                }
              }

              else
              {
                v123 = 0;
                v124 = 0;
                v125 = 0;
                v126 = (v122 + v121);
                v127 = v121 + 1;
                while (1)
                {
                  *(this + 1) = v127;
                  v128 = *v126++;
                  v125 |= (v128 & 0x7F) << v123;
                  if ((v128 & 0x80) == 0)
                  {
                    break;
                  }

                  v123 += 7;
                  ++v127;
                  v152 = v124++ > 8;
                  if (v152)
                  {
                    goto LABEL_249;
                  }
                }
              }

LABEL_320:
              *(a1 + 56) = v125;
              goto LABEL_357;
            case 0xCF:
              *(a1 + 152) |= 2u;
              v93 = *(this + 1);
              v92 = *(this + 2);
              v94 = *this;
              if (v93 > 0xFFFFFFFFFFFFFFF5 || v93 + 10 > v92)
              {
                v180 = 0;
                v181 = 0;
                v97 = 0;
                v16 = v92 >= v93;
                v182 = v92 - v93;
                if (!v16)
                {
                  v182 = 0;
                }

                v183 = (v94 + v93);
                v184 = v93 + 1;
                while (1)
                {
                  if (!v182)
                  {
                    v97 = 0;
                    *(this + 24) = 1;
                    goto LABEL_311;
                  }

                  v185 = *v183;
                  *(this + 1) = v184;
                  v97 |= (v185 & 0x7F) << v180;
                  if ((v185 & 0x80) == 0)
                  {
                    break;
                  }

                  v180 += 7;
                  --v182;
                  ++v183;
                  ++v184;
                  v152 = v181++ > 8;
                  if (v152)
                  {
LABEL_225:
                    v97 = 0;
                    goto LABEL_311;
                  }
                }

                if (*(this + 24))
                {
                  v97 = 0;
                }
              }

              else
              {
                v95 = 0;
                v96 = 0;
                v97 = 0;
                v98 = (v94 + v93);
                v99 = v93 + 1;
                while (1)
                {
                  *(this + 1) = v99;
                  v100 = *v98++;
                  v97 |= (v100 & 0x7F) << v95;
                  if ((v100 & 0x80) == 0)
                  {
                    break;
                  }

                  v95 += 7;
                  ++v99;
                  v152 = v96++ > 8;
                  if (v152)
                  {
                    goto LABEL_225;
                  }
                }
              }

LABEL_311:
              *(a1 + 64) = v97;
              goto LABEL_357;
            case 0xD0:
              *(a1 + 152) |= 0x20000u;
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

              *(a1 + 149) = v29;
              goto LABEL_357;
          }
        }

        else
        {
          if (v22 > 200)
          {
            if (v22 == 201)
            {
              *(a1 + 152) |= 0x1000u;
              v111 = *(this + 1);
              v110 = *(this + 2);
              v112 = *this;
              if (v111 > 0xFFFFFFFFFFFFFFF5 || v111 + 10 > v110)
              {
                v192 = 0;
                v193 = 0;
                v115 = 0;
                v16 = v110 >= v111;
                v194 = v110 - v111;
                if (!v16)
                {
                  v194 = 0;
                }

                v195 = (v112 + v111);
                v196 = v111 + 1;
                while (1)
                {
                  if (!v194)
                  {
                    LODWORD(v115) = 0;
                    *(this + 24) = 1;
                    goto LABEL_317;
                  }

                  v197 = *v195;
                  *(this + 1) = v196;
                  v115 |= (v197 & 0x7F) << v192;
                  if ((v197 & 0x80) == 0)
                  {
                    break;
                  }

                  v192 += 7;
                  --v194;
                  ++v195;
                  ++v196;
                  v152 = v193++ > 8;
                  if (v152)
                  {
LABEL_241:
                    LODWORD(v115) = 0;
                    goto LABEL_317;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v115) = 0;
                }
              }

              else
              {
                v113 = 0;
                v114 = 0;
                v115 = 0;
                v116 = (v112 + v111);
                v117 = v111 + 1;
                while (1)
                {
                  *(this + 1) = v117;
                  v118 = *v116++;
                  v115 |= (v118 & 0x7F) << v113;
                  if ((v118 & 0x80) == 0)
                  {
                    break;
                  }

                  v113 += 7;
                  ++v117;
                  v152 = v114++ > 8;
                  if (v152)
                  {
                    goto LABEL_241;
                  }
                }
              }

LABEL_317:
              *(a1 + 132) = v115;
              goto LABEL_357;
            }

            if (v22 == 202)
            {
              *(a1 + 152) |= 4u;
              v75 = *(this + 1);
              v74 = *(this + 2);
              v76 = *this;
              if (v75 > 0xFFFFFFFFFFFFFFF5 || v75 + 10 > v74)
              {
                v168 = 0;
                v169 = 0;
                v79 = 0;
                v16 = v74 >= v75;
                v170 = v74 - v75;
                if (!v16)
                {
                  v170 = 0;
                }

                v171 = (v76 + v75);
                v172 = v75 + 1;
                while (1)
                {
                  if (!v170)
                  {
                    v79 = 0;
                    *(this + 24) = 1;
                    goto LABEL_305;
                  }

                  v173 = *v171;
                  *(this + 1) = v172;
                  v79 |= (v173 & 0x7F) << v168;
                  if ((v173 & 0x80) == 0)
                  {
                    break;
                  }

                  v168 += 7;
                  --v170;
                  ++v171;
                  ++v172;
                  v152 = v169++ > 8;
                  if (v152)
                  {
LABEL_209:
                    v79 = 0;
                    goto LABEL_305;
                  }
                }

                if (*(this + 24))
                {
                  v79 = 0;
                }
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
                  *(this + 1) = v81;
                  v82 = *v80++;
                  v79 |= (v82 & 0x7F) << v77;
                  if ((v82 & 0x80) == 0)
                  {
                    break;
                  }

                  v77 += 7;
                  ++v81;
                  v152 = v78++ > 8;
                  if (v152)
                  {
                    goto LABEL_209;
                  }
                }
              }

LABEL_305:
              *(a1 + 72) = v79;
              goto LABEL_357;
            }

            *(a1 + 152) |= 0x2000u;
            v24 = *(this + 1);
            if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(this + 2))
            {
              goto LABEL_350;
            }

            *(a1 + 136) = *(*this + v24);
            goto LABEL_352;
          }

          if (v22 == 101)
          {
            *(a1 + 152) |= 0x10000u;
            v130 = *(this + 1);
            if (v130 >= *(this + 2))
            {
              v133 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v131 = v130 + 1;
              v132 = *(*this + v130);
              *(this + 1) = v131;
              v133 = v132 != 0;
            }

            *(a1 + 148) = v133;
            goto LABEL_357;
          }

          if (v22 == 102)
          {
            *(a1 + 152) |= 0x40u;
            v40 = *(this + 1);
            v39 = *(this + 2);
            v41 = *this;
            if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v39)
            {
              v213 = 0;
              v214 = 0;
              v44 = 0;
              v16 = v39 >= v40;
              v215 = v39 - v40;
              if (!v16)
              {
                v215 = 0;
              }

              v216 = (v41 + v40);
              v217 = v40 + 1;
              while (1)
              {
                if (!v215)
                {
                  v44 = 0;
                  *(this + 24) = 1;
                  goto LABEL_326;
                }

                v218 = *v216;
                *(this + 1) = v217;
                v44 |= (v218 & 0x7F) << v213;
                if ((v218 & 0x80) == 0)
                {
                  break;
                }

                v213 += 7;
                --v215;
                ++v216;
                ++v217;
                v152 = v214++ > 8;
                if (v152)
                {
LABEL_271:
                  v44 = 0;
                  goto LABEL_326;
                }
              }

              if (*(this + 24))
              {
                v44 = 0;
              }
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
                *(this + 1) = v46;
                v47 = *v45++;
                v44 |= (v47 & 0x7F) << v42;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v42 += 7;
                ++v46;
                v152 = v43++ > 8;
                if (v152)
                {
                  goto LABEL_271;
                }
              }
            }

LABEL_326:
            *(a1 + 104) = v44;
            goto LABEL_357;
          }
        }
      }

      else if (v22 > 5)
      {
        if (v22 <= 7)
        {
          if (v22 == 6)
          {
            *(a1 + 152) |= 0x8000u;
            v134 = *(this + 1);
            if (v134 > 0xFFFFFFFFFFFFFFFBLL || v134 + 4 > *(this + 2))
            {
              goto LABEL_350;
            }

            *(a1 + 144) = *(*this + v134);
          }

          else
          {
            *(a1 + 152) |= 0x200u;
            v48 = *(this + 1);
            if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(this + 2))
            {
              goto LABEL_350;
            }

            *(a1 + 120) = *(*this + v48);
          }

          goto LABEL_352;
        }

        switch(v22)
        {
          case 8:
            *(a1 + 152) |= 0x400u;
            v119 = *(this + 1);
            if (v119 > 0xFFFFFFFFFFFFFFFBLL || v119 + 4 > *(this + 2))
            {
              goto LABEL_350;
            }

            *(a1 + 124) = *(*this + v119);
            goto LABEL_352;
          case 9:
            *(a1 + 152) |= 0x20u;
            v84 = *(this + 1);
            v83 = *(this + 2);
            v85 = *this;
            if (v84 > 0xFFFFFFFFFFFFFFF5 || v84 + 10 > v83)
            {
              v174 = 0;
              v175 = 0;
              v88 = 0;
              v16 = v83 >= v84;
              v176 = v83 - v84;
              if (!v16)
              {
                v176 = 0;
              }

              v177 = (v85 + v84);
              v178 = v84 + 1;
              while (1)
              {
                if (!v176)
                {
                  v88 = 0;
                  *(this + 24) = 1;
                  goto LABEL_308;
                }

                v179 = *v177;
                *(this + 1) = v178;
                v88 |= (v179 & 0x7F) << v174;
                if ((v179 & 0x80) == 0)
                {
                  break;
                }

                v174 += 7;
                --v176;
                ++v177;
                ++v178;
                v152 = v175++ > 8;
                if (v152)
                {
LABEL_217:
                  v88 = 0;
                  goto LABEL_308;
                }
              }

              if (*(this + 24))
              {
                v88 = 0;
              }
            }

            else
            {
              v86 = 0;
              v87 = 0;
              v88 = 0;
              v89 = (v85 + v84);
              v90 = v84 + 1;
              while (1)
              {
                *(this + 1) = v90;
                v91 = *v89++;
                v88 |= (v91 & 0x7F) << v86;
                if ((v91 & 0x80) == 0)
                {
                  break;
                }

                v86 += 7;
                ++v90;
                v152 = v87++ > 8;
                if (v152)
                {
                  goto LABEL_217;
                }
              }
            }

LABEL_308:
            *(a1 + 96) = v88;
            goto LABEL_357;
          case 0xA:
            *(a1 + 152) |= 0x100u;
            v25 = *(this + 1);
            if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(this + 2))
            {
              goto LABEL_350;
            }

            *(a1 + 116) = *(*this + v25);
            goto LABEL_352;
        }
      }

      else
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *(a1 + 152) |= 0x800u;
            v102 = *(this + 1);
            v101 = *(this + 2);
            v103 = *this;
            if (v102 > 0xFFFFFFFFFFFFFFF5 || v102 + 10 > v101)
            {
              v186 = 0;
              v187 = 0;
              v106 = 0;
              v16 = v101 >= v102;
              v188 = v101 - v102;
              if (!v16)
              {
                v188 = 0;
              }

              v189 = (v103 + v102);
              v190 = v102 + 1;
              while (1)
              {
                if (!v188)
                {
                  LODWORD(v106) = 0;
                  *(this + 24) = 1;
                  goto LABEL_314;
                }

                v191 = *v189;
                *(this + 1) = v190;
                v106 |= (v191 & 0x7F) << v186;
                if ((v191 & 0x80) == 0)
                {
                  break;
                }

                v186 += 7;
                --v188;
                ++v189;
                ++v190;
                v152 = v187++ > 8;
                if (v152)
                {
LABEL_233:
                  LODWORD(v106) = 0;
                  goto LABEL_314;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v106) = 0;
              }
            }

            else
            {
              v104 = 0;
              v105 = 0;
              v106 = 0;
              v107 = (v103 + v102);
              v108 = v102 + 1;
              while (1)
              {
                *(this + 1) = v108;
                v109 = *v107++;
                v106 |= (v109 & 0x7F) << v104;
                if ((v109 & 0x80) == 0)
                {
                  break;
                }

                v104 += 7;
                ++v108;
                v152 = v105++ > 8;
                if (v152)
                {
                  goto LABEL_233;
                }
              }
            }

LABEL_314:
            *(a1 + 128) = v106;
            goto LABEL_357;
          }

          if (v22 == 4)
          {
            *(a1 + 152) |= 0x10u;
            v66 = *(this + 1);
            v65 = *(this + 2);
            v67 = *this;
            if (v66 > 0xFFFFFFFFFFFFFFF5 || v66 + 10 > v65)
            {
              v162 = 0;
              v163 = 0;
              v70 = 0;
              v16 = v65 >= v66;
              v164 = v65 - v66;
              if (!v16)
              {
                v164 = 0;
              }

              v165 = (v67 + v66);
              v166 = v66 + 1;
              while (1)
              {
                if (!v164)
                {
                  v70 = 0;
                  *(this + 24) = 1;
                  goto LABEL_302;
                }

                v167 = *v165;
                *(this + 1) = v166;
                v70 |= (v167 & 0x7F) << v162;
                if ((v167 & 0x80) == 0)
                {
                  break;
                }

                v162 += 7;
                --v164;
                ++v165;
                ++v166;
                v152 = v163++ > 8;
                if (v152)
                {
LABEL_201:
                  v70 = 0;
                  goto LABEL_302;
                }
              }

              if (*(this + 24))
              {
                v70 = 0;
              }
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
                *(this + 1) = v72;
                v73 = *v71++;
                v70 |= (v73 & 0x7F) << v68;
                if ((v73 & 0x80) == 0)
                {
                  break;
                }

                v68 += 7;
                ++v72;
                v152 = v69++ > 8;
                if (v152)
                {
                  goto LABEL_201;
                }
              }
            }

LABEL_302:
            *(a1 + 88) = v70;
            goto LABEL_357;
          }

          *(a1 + 152) |= 0x4000u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(this + 2))
          {
            goto LABEL_350;
          }

          *(a1 + 140) = *(*this + v23);
          goto LABEL_352;
        }

        if (v22 == 1)
        {
          *(a1 + 152) |= 0x80u;
          v129 = *(this + 1);
          if (v129 > 0xFFFFFFFFFFFFFFFBLL || v129 + 4 > *(this + 2))
          {
            goto LABEL_350;
          }

          *(a1 + 112) = *(*this + v129);
LABEL_352:
          *(this + 1) += 4;
          goto LABEL_357;
        }

        if (v22 == 2)
        {
          *(a1 + 152) |= 8u;
          v31 = *(this + 1);
          v30 = *(this + 2);
          v32 = *this;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v30)
          {
            v207 = 0;
            v208 = 0;
            v35 = 0;
            v16 = v30 >= v31;
            v209 = v30 - v31;
            if (!v16)
            {
              v209 = 0;
            }

            v210 = (v32 + v31);
            v211 = v31 + 1;
            while (1)
            {
              if (!v209)
              {
                v35 = 0;
                *(this + 24) = 1;
                goto LABEL_323;
              }

              v212 = *v210;
              *(this + 1) = v211;
              v35 |= (v212 & 0x7F) << v207;
              if ((v212 & 0x80) == 0)
              {
                break;
              }

              v207 += 7;
              --v209;
              ++v210;
              ++v211;
              v152 = v208++ > 8;
              if (v152)
              {
LABEL_263:
                v35 = 0;
                goto LABEL_323;
              }
            }

            if (*(this + 24))
            {
              v35 = 0;
            }
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
              *(this + 1) = v37;
              v38 = *v36++;
              v35 |= (v38 & 0x7F) << v33;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              ++v37;
              v152 = v34++ > 8;
              if (v152)
              {
                goto LABEL_263;
              }
            }
          }

LABEL_323:
          *(a1 + 80) = v35;
          goto LABEL_357;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_363:
        v258 = 0;
        return v258 & 1;
      }

LABEL_357:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_361:
  v258 = v4 ^ 1;
  return v258 & 1;
}

uint64_t sub_245DD7D04(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 152);
  if ((v4 & 0x80) != 0)
  {
    result = PB::Writer::write(this, *(result + 112));
    v4 = *(v3 + 152);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_3;
  }

  v12 = *(v3 + 80);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 152);
  if ((v4 & 0x800) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  v13 = *(v3 + 128);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 152);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  v14 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 152);
  if ((v4 & 0x4000) == 0)
  {
LABEL_6:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 140));
  v4 = *(v3 + 152);
  if ((v4 & 0x8000) == 0)
  {
LABEL_7:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 152);
  if ((v4 & 0x200) == 0)
  {
LABEL_8:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 152);
  if ((v4 & 0x400) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 124));
  v4 = *(v3 + 152);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  v15 = *(v3 + 96);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 152);
  if ((v4 & 0x100) == 0)
  {
LABEL_11:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 152);
  if ((v4 & 0x10000) == 0)
  {
LABEL_12:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  v16 = *(v3 + 148);
  result = PB::Writer::write(this);
  v4 = *(v3 + 152);
  if ((v4 & 0x40) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  v17 = *(v3 + 104);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 152);
  if ((v4 & 0x1000) == 0)
  {
LABEL_14:
    if ((v4 & 4) == 0)
    {
      goto LABEL_15;
    }

LABEL_40:
    v19 = *(v3 + 72);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 152) & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_39:
  v18 = *(v3 + 132);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 152);
  if ((v4 & 4) != 0)
  {
    goto LABEL_40;
  }

LABEL_15:
  if ((v4 & 0x2000) != 0)
  {
LABEL_16:
    result = PB::Writer::write(this, *(v3 + 136));
  }

LABEL_17:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::writeVarInt(this);
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    result = PB::Writer::write(this, v10);
  }

  v11 = *(v3 + 152);
  if ((v11 & 1) == 0)
  {
    if ((v11 & 2) == 0)
    {
      goto LABEL_25;
    }

LABEL_43:
    v21 = *(v3 + 64);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 152) & 0x20000) == 0)
    {
      return result;
    }

    goto LABEL_44;
  }

  v20 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v11 = *(v3 + 152);
  if ((v11 & 2) != 0)
  {
    goto LABEL_43;
  }

LABEL_25:
  if ((v11 & 0x20000) == 0)
  {
    return result;
  }

LABEL_44:
  v22 = *(v3 + 149);

  return PB::Writer::write(this);
}

uint64_t sub_245DD7F80(uint64_t result)
{
  *result = &unk_2858CDF80;
  *(result + 72) = 0;
  *(result + 112) = 0;
  return result;
}

void sub_245DD7FAC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DD7FE4(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CDF80;
  *(result + 72) = 0;
  *(result + 112) = 0;
  v2 = *(a2 + 112);
  if ((v2 & 0x40) != 0)
  {
    v4 = *(a2 + 56);
    v3 = 64;
    *(result + 112) = 64;
    *(result + 56) = v4;
    v2 = *(a2 + 112);
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
    *(result + 112) = v3;
    *(result + 32) = v5;
    v2 = *(a2 + 112);
  }

LABEL_6:
  if (v2)
  {
    v6 = *(a2 + 8);
    v3 |= 1u;
    *(result + 112) = v3;
    *(result + 8) = v6;
    v2 = *(a2 + 112);
    if ((v2 & 0x80) == 0)
    {
LABEL_8:
      if ((v2 & 0x1000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 64);
  v3 |= 0x80u;
  *(result + 112) = v3;
  *(result + 64) = v7;
  v2 = *(a2 + 112);
  if ((v2 & 0x1000) == 0)
  {
LABEL_9:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v8 = *(a2 + 84);
  v3 |= 0x1000u;
  *(result + 112) = v3;
  *(result + 84) = v8;
  v2 = *(a2 + 112);
  if ((v2 & 0x4000) == 0)
  {
LABEL_10:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v9 = *(a2 + 92);
  v3 |= 0x4000u;
  *(result + 112) = v3;
  *(result + 92) = v9;
  v2 = *(a2 + 112);
  if ((v2 & 0x10000) == 0)
  {
LABEL_11:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v10 = *(a2 + 100);
  v3 |= 0x10000u;
  *(result + 112) = v3;
  *(result + 100) = v10;
  v2 = *(a2 + 112);
  if ((v2 & 0x400) == 0)
  {
LABEL_12:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v11 = *(a2 + 76);
  v3 |= 0x400u;
  *(result + 112) = v3;
  *(result + 76) = v11;
  v2 = *(a2 + 112);
  if ((v2 & 0x2000) == 0)
  {
LABEL_13:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v12 = *(a2 + 88);
  v3 |= 0x2000u;
  *(result + 112) = v3;
  *(result + 88) = v12;
  v2 = *(a2 + 112);
  if ((v2 & 0x8000) == 0)
  {
LABEL_14:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v13 = *(a2 + 96);
  v3 |= 0x8000u;
  *(result + 112) = v3;
  *(result + 96) = v13;
  v2 = *(a2 + 112);
  if ((v2 & 0x20000) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  v14 = *(a2 + 104);
  v3 |= 0x20000u;
  *(result + 112) = v3;
  *(result + 104) = v14;
  v2 = *(a2 + 112);
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  v15 = *(a2 + 80);
  v3 |= 0x800u;
  *(result + 112) = v3;
  *(result + 80) = v15;
  v2 = *(a2 + 112);
  if ((v2 & 0x100) == 0)
  {
LABEL_17:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  v16 = *(a2 + 68);
  v3 |= 0x100u;
  *(result + 112) = v3;
  *(result + 68) = v16;
  v2 = *(a2 + 112);
  if ((v2 & 0x40000) == 0)
  {
LABEL_18:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  v17 = *(a2 + 108);
  v3 |= 0x40000u;
  *(result + 112) = v3;
  *(result + 108) = v17;
  v2 = *(a2 + 112);
  if ((v2 & 0x200) == 0)
  {
LABEL_19:
    if ((v2 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  v18 = *(a2 + 72);
  v3 |= 0x200u;
  *(result + 112) = v3;
  *(result + 72) = v18;
  v2 = *(a2 + 112);
  if ((v2 & 2) == 0)
  {
LABEL_20:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_37:
  v19 = *(a2 + 16);
  v3 |= 2u;
  *(result + 112) = v3;
  *(result + 16) = v19;
  v2 = *(a2 + 112);
  if ((v2 & 0x20) == 0)
  {
LABEL_21:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

LABEL_38:
  v20 = *(a2 + 48);
  v3 |= 0x20u;
  *(result + 112) = v3;
  *(result + 48) = v20;
  v2 = *(a2 + 112);
  if ((v2 & 0x10) == 0)
  {
LABEL_22:
    if ((v2 & 4) == 0)
    {
      return result;
    }

LABEL_40:
    v22 = *(a2 + 24);
    *(result + 112) = v3 | 4;
    *(result + 24) = v22;
    return result;
  }

LABEL_39:
  v21 = *(a2 + 40);
  v3 |= 0x10u;
  *(result + 112) = v3;
  *(result + 40) = v21;
  if ((*(a2 + 112) & 4) != 0)
  {
    goto LABEL_40;
  }

  return result;
}

uint64_t sub_245DD8228(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 112);
  if ((v5 & 0x80) != 0)
  {
    PB::TextFormatter::format(this, "accelMagnitude", *(a1 + 64));
    v5 = *(a1 + 112);
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "deltaVThisImpact", *(a1 + 68));
  v5 = *(a1 + 112);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  v7 = *(a1 + 8);
  PB::TextFormatter::format(this, "dimensions");
  v5 = *(a1 + 112);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "epochCounter");
  v5 = *(a1 + 112);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  v9 = *(a1 + 24);
  PB::TextFormatter::format(this, "jHG");
  v5 = *(a1 + 112);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  v10 = *(a1 + 32);
  PB::TextFormatter::format(this, "jImpactStart");
  v5 = *(a1 + 112);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  v11 = *(a1 + 40);
  PB::TextFormatter::format(this, "jLG");
  v5 = *(a1 + 112);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  v12 = *(a1 + 48);
  PB::TextFormatter::format(this, "nextTimestamp");
  v5 = *(a1 + 112);
  if ((v5 & 0x40000) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  v13 = *(a1 + 108);
  PB::TextFormatter::format(this, "partOfHgPath");
  v5 = *(a1 + 112);
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
  v14 = *(a1 + 72);
  PB::TextFormatter::format(this, "pointType");
  v5 = *(a1 + 112);
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
  PB::TextFormatter::format(this, "runningArclengthOverEpoch", *(a1 + 76));
  v5 = *(a1 + 112);
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
  PB::TextFormatter::format(this, "runningArclengthThisImpact", *(a1 + 80));
  v5 = *(a1 + 112);
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
  PB::TextFormatter::format(this, "runningDeltaVXOverEpoch", *(a1 + 84));
  v5 = *(a1 + 112);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "runningDeltaVXThisImpact", *(a1 + 88));
  v5 = *(a1 + 112);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "runningDeltaVYOverEpoch", *(a1 + 92));
  v5 = *(a1 + 112);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "runningDeltaVYThisImpact", *(a1 + 96));
  v5 = *(a1 + 112);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "runningDeltaVZOverEpoch", *(a1 + 100));
  v5 = *(a1 + 112);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_41:
  PB::TextFormatter::format(this, "runningDeltaVZThisImpact", *(a1 + 104));
  if ((*(a1 + 112) & 0x40) != 0)
  {
LABEL_20:
    v6 = *(a1 + 56);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_21:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DD84CC(uint64_t a1, PB::Reader *this)
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
        goto LABEL_225;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 112) |= 0x40u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v116 = 0;
            v117 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v118 = v2 - v22;
            v119 = (v23 + v22);
            v120 = v22 + 1;
            while (1)
            {
              if (!v118)
              {
                v26 = 0;
                *(this + 24) = 1;
                goto LABEL_208;
              }

              v121 = v120;
              v122 = *v119;
              *(this + 1) = v121;
              v26 |= (v122 & 0x7F) << v116;
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
                v26 = 0;
                goto LABEL_207;
              }
            }

            if (*(this + 24))
            {
              v26 = 0;
            }

LABEL_207:
            v2 = v121;
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
                goto LABEL_208;
              }

              v24 += 7;
              ++v28;
              v14 = v25++ > 8;
            }

            while (!v14);
            v26 = 0;
          }

LABEL_208:
          *(a1 + 56) = v26;
          goto LABEL_221;
        case 2u:
          *(a1 + 112) |= 8u;
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
                goto LABEL_212;
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
LABEL_211:
                v2 = v128;
                goto LABEL_212;
              }
            }

            if (*(this + 24))
            {
              v66 = 0;
            }

            goto LABEL_211;
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
              goto LABEL_212;
            }

            v64 += 7;
            ++v68;
            v14 = v65++ > 8;
          }

          while (!v14);
          v66 = 0;
LABEL_212:
          *(a1 + 32) = -(v66 & 1) ^ (v66 >> 1);
          goto LABEL_221;
        case 3u:
          *(a1 + 112) |= 1u;
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
                v50 = 0;
                *(this + 24) = 1;
                goto LABEL_200;
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
                v50 = 0;
LABEL_199:
                v2 = v107;
                goto LABEL_200;
              }
            }

            if (*(this + 24))
            {
              v50 = 0;
            }

            goto LABEL_199;
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
              goto LABEL_200;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          v50 = 0;
LABEL_200:
          *(a1 + 8) = v50;
          goto LABEL_221;
        case 4u:
          *(a1 + 112) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_180;
        case 5u:
          *(a1 + 112) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 84) = *(*this + v2);
          goto LABEL_180;
        case 6u:
          *(a1 + 112) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 92) = *(*this + v2);
          goto LABEL_180;
        case 7u:
          *(a1 + 112) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 100) = *(*this + v2);
          goto LABEL_180;
        case 8u:
          *(a1 + 112) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_180;
        case 9u:
          *(a1 + 112) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_180;
        case 0xAu:
          *(a1 + 112) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_180;
        case 0xBu:
          *(a1 + 112) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_180;
        case 0xCu:
          *(a1 + 112) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_110;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_180;
        case 0xDu:
          *(a1 + 112) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_110:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 68) = *(*this + v2);
LABEL_180:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          goto LABEL_221;
        case 0xEu:
          *(a1 + 112) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v79 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v78 = *(*this + v2++);
            *(this + 1) = v2;
            v79 = v78 != 0;
          }

          *(a1 + 108) = v79;
          goto LABEL_221;
        case 0xFu:
          *(a1 + 112) |= 0x200u;
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
                LODWORD(v42) = 0;
                *(this + 24) = 1;
                goto LABEL_196;
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
                LODWORD(v42) = 0;
LABEL_195:
                v2 = v100;
                goto LABEL_196;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_195;
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
              goto LABEL_196;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_196:
          *(a1 + 72) = v42;
          goto LABEL_221;
        case 0x10u:
          *(a1 + 112) |= 2u;
          v54 = *(this + 1);
          v2 = *(this + 2);
          v55 = *this;
          if (v54 > 0xFFFFFFFFFFFFFFF5 || v54 + 10 > v2)
          {
            v109 = 0;
            v110 = 0;
            v58 = 0;
            if (v2 <= v54)
            {
              v2 = *(this + 1);
            }

            v111 = v2 - v54;
            v112 = (v55 + v54);
            v113 = v54 + 1;
            while (1)
            {
              if (!v111)
              {
                v58 = 0;
                *(this + 24) = 1;
                goto LABEL_204;
              }

              v114 = v113;
              v115 = *v112;
              *(this + 1) = v114;
              v58 |= (v115 & 0x7F) << v109;
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
                v58 = 0;
LABEL_203:
                v2 = v114;
                goto LABEL_204;
              }
            }

            if (*(this + 24))
            {
              v58 = 0;
            }

            goto LABEL_203;
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
              goto LABEL_204;
            }

            v56 += 7;
            ++v60;
            v14 = v57++ > 8;
          }

          while (!v14);
          v58 = 0;
LABEL_204:
          *(a1 + 16) = v58;
          goto LABEL_221;
        case 0x11u:
          *(a1 + 112) |= 0x20u;
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
                v34 = 0;
                *(this + 24) = 1;
                goto LABEL_192;
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
                v34 = 0;
LABEL_191:
                v2 = v93;
                goto LABEL_192;
              }
            }

            if (*(this + 24))
            {
              v34 = 0;
            }

            goto LABEL_191;
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
              goto LABEL_192;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          v34 = 0;
LABEL_192:
          *(a1 + 48) = v34;
          goto LABEL_221;
        case 0x12u:
          *(a1 + 112) |= 0x10u;
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
                v74 = 0;
                *(this + 24) = 1;
                goto LABEL_216;
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
                v74 = 0;
LABEL_215:
                v2 = v135;
                goto LABEL_216;
              }
            }

            if (*(this + 24))
            {
              v74 = 0;
            }

            goto LABEL_215;
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
              goto LABEL_216;
            }

            v72 += 7;
            ++v76;
            v14 = v73++ > 8;
          }

          while (!v14);
          v74 = 0;
LABEL_216:
          *(a1 + 40) = v74;
          goto LABEL_221;
        case 0x13u:
          *(a1 + 112) |= 4u;
          v80 = *(this + 1);
          v2 = *(this + 2);
          v81 = *this;
          if (v80 > 0xFFFFFFFFFFFFFFF5 || v80 + 10 > v2)
          {
            v137 = 0;
            v138 = 0;
            v84 = 0;
            if (v2 <= v80)
            {
              v2 = *(this + 1);
            }

            v139 = v2 - v80;
            v140 = (v81 + v80);
            v141 = v80 + 1;
            while (1)
            {
              if (!v139)
              {
                v84 = 0;
                *(this + 24) = 1;
                goto LABEL_220;
              }

              v142 = v141;
              v143 = *v140;
              *(this + 1) = v142;
              v84 |= (v143 & 0x7F) << v137;
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
                v84 = 0;
LABEL_219:
                v2 = v142;
                goto LABEL_220;
              }
            }

            if (*(this + 24))
            {
              v84 = 0;
            }

            goto LABEL_219;
          }

          v82 = 0;
          v83 = 0;
          v84 = 0;
          v85 = (v81 + v80);
          v86 = v80 + 1;
          do
          {
            v2 = v86;
            *(this + 1) = v86;
            v87 = *v85++;
            v84 |= (v87 & 0x7F) << v82;
            if ((v87 & 0x80) == 0)
            {
              goto LABEL_220;
            }

            v82 += 7;
            ++v86;
            v14 = v83++ > 8;
          }

          while (!v14);
          v84 = 0;
LABEL_220:
          *(a1 + 24) = v84;
          goto LABEL_221;
        default:
          if (!PB::Reader::skip(this))
          {
            v144 = 0;
            return v144 & 1;
          }

          v2 = *(this + 1);
LABEL_221:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_225;
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

LABEL_225:
  v144 = v4 ^ 1;
  return v144 & 1;
}

uint64_t sub_245DD9164(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 112);
  if ((v4 & 0x40) != 0)
  {
    v5 = *(result + 56);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 112);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 32);
  result = PB::Writer::writeSInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v7 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 112);
  if ((v4 & 0x1000) == 0)
  {
LABEL_6:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 112);
  if ((v4 & 0x4000) == 0)
  {
LABEL_7:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 92));
  v4 = *(v3 + 112);
  if ((v4 & 0x10000) == 0)
  {
LABEL_8:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 112);
  if ((v4 & 0x400) == 0)
  {
LABEL_9:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 112);
  if ((v4 & 0x2000) == 0)
  {
LABEL_10:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 112);
  if ((v4 & 0x8000) == 0)
  {
LABEL_11:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 112);
  if ((v4 & 0x20000) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 112);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 112);
  if ((v4 & 0x100) == 0)
  {
LABEL_14:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 112);
  if ((v4 & 0x40000) == 0)
  {
LABEL_15:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v8 = *(v3 + 108);
  result = PB::Writer::write(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x200) == 0)
  {
LABEL_16:
    if ((v4 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  v9 = *(v3 + 72);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 2) == 0)
  {
LABEL_17:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  v10 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x20) == 0)
  {
LABEL_18:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_19;
    }

LABEL_38:
    v12 = *(v3 + 40);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 112) & 4) == 0)
    {
      return result;
    }

    goto LABEL_39;
  }

LABEL_37:
  v11 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_38;
  }

LABEL_19:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_39:
  v13 = *(v3 + 24);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245DD93B0(uint64_t result)
{
  *result = &unk_2858CDFB8;
  *(result + 80) = 0;
  return result;
}

void sub_245DD93D8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245DD9410(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CDFB8;
  *(a1 + 80) = 0;
  v2 = *(a2 + 80);
  if ((v2 & 0x100) != 0)
  {
    v4 = *(a2 + 72);
    v3 = 256;
    *(a1 + 80) = 256;
    *(a1 + 72) = v4;
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
    result = *(a2 + 16);
    v3 |= 2u;
    *(a1 + 80) = v3;
    *(a1 + 16) = result;
    v2 = *(a2 + 80);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 24);
    v3 |= 4u;
    *(a1 + 80) = v3;
    *(a1 + 24) = result;
    v2 = *(a2 + 80);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 32);
  v3 |= 8u;
  *(a1 + 80) = v3;
  *(a1 + 32) = result;
  v2 = *(a2 + 80);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = *(a2 + 8);
  v3 |= 1u;
  *(a1 + 80) = v3;
  *(a1 + 8) = v6;
  v2 = *(a2 + 80);
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
  result = *(a2 + 48);
  v3 |= 0x20u;
  *(a1 + 80) = v3;
  *(a1 + 48) = result;
  v2 = *(a2 + 80);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = *(a2 + 56);
  v3 |= 0x40u;
  *(a1 + 80) = v3;
  *(a1 + 56) = result;
  v2 = *(a2 + 80);
  if ((v2 & 0x80) == 0)
  {
LABEL_12:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_20:
    result = *(a2 + 40);
    *(a1 + 80) = v3 | 0x10;
    *(a1 + 40) = result;
    return result;
  }

LABEL_19:
  result = *(a2 + 64);
  v3 |= 0x80u;
  *(a1 + 80) = v3;
  *(a1 + 64) = result;
  if ((*(a2 + 80) & 0x10) != 0)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_245DD9538(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v7 = *(a1 + 8);
    PB::TextFormatter::format(this, "epochCounter");
    v5 = *(a1 + 80);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "inertialAccelX", *(a1 + 16));
  v5 = *(a1 + 80);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "inertialAccelY", *(a1 + 24));
  v5 = *(a1 + 80);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "inertialAccelZ", *(a1 + 32));
  v5 = *(a1 + 80);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "quaternionW", *(a1 + 40));
  v5 = *(a1 + 80);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "quaternionX", *(a1 + 48));
  v5 = *(a1 + 80);
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
  PB::TextFormatter::format(this, "quaternionY", *(a1 + 56));
  v5 = *(a1 + 80);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(this, "quaternionZ", *(a1 + 64));
  if ((*(a1 + 80) & 0x100) != 0)
  {
LABEL_10:
    v6 = *(a1 + 72);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_11:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DD969C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_103;
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
            *(a1 + 80) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_68:
              *(this + 24) = 1;
              goto LABEL_99;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_88;
          }

          if (v22 == 4)
          {
            *(a1 + 80) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_88;
          }
        }

        else
        {
          if (v22 == 1)
          {
            *(a1 + 80) |= 0x100u;
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
                v2 = *(this + 1);
              }

              v41 = v2 - v23;
              v42 = (v24 + v23);
              v43 = v23 + 1;
              while (1)
              {
                if (!v41)
                {
                  v27 = 0;
                  *(this + 24) = 1;
                  goto LABEL_94;
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
                  goto LABEL_93;
                }
              }

              if (*(this + 24))
              {
                v27 = 0;
              }

LABEL_93:
              v2 = v44;
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

LABEL_94:
            *(a1 + 72) = v27;
            goto LABEL_99;
          }

          if (v22 == 2)
          {
            *(a1 + 80) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_88;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(a1 + 80) |= 1u;
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
              v2 = *(this + 1);
            }

            v48 = v2 - v31;
            v49 = (v32 + v31);
            v50 = v31 + 1;
            while (1)
            {
              if (!v48)
              {
                v35 = 0;
                *(this + 24) = 1;
                goto LABEL_98;
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
                v35 = 0;
                goto LABEL_97;
              }
            }

            if (*(this + 24))
            {
              v35 = 0;
            }

LABEL_97:
            v2 = v51;
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

LABEL_98:
          *(a1 + 8) = v35;
          goto LABEL_99;
        }

        if (v22 == 6)
        {
          *(a1 + 80) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_88;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(a1 + 80) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 56) = *(*this + v2);
            goto LABEL_88;
          case 8:
            *(a1 + 80) |= 0x80u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 64) = *(*this + v2);
            goto LABEL_88;
          case 9:
            *(a1 + 80) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 40) = *(*this + v2);
LABEL_88:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_99;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v53 = 0;
        return v53 & 1;
      }

      v2 = *(this + 1);
LABEL_99:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_103:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_245DD9C0C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 80);
  if ((v4 & 0x100) != 0)
  {
    v5 = *(result + 72);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 80);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
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

    goto LABEL_14;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 80);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 80);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 80);
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
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 80);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    result = PB::Writer::write(this, *(v3 + 64));
    if ((*(v3 + 80) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 80);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 0x10) == 0)
  {
    return result;
  }

LABEL_19:
  v7 = *(v3 + 40);

  return PB::Writer::write(this, v7);
}

uint64_t sub_245DD9D40(uint64_t result)
{
  *result = &unk_2858CDFF0;
  *(result + 104) = 0;
  return result;
}

void sub_245DD9D68(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245DD9DA0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CDFF0;
  *(a1 + 104) = 0;
  v2 = *(a2 + 104);
  if ((v2 & 0x800) != 0)
  {
    v4 = *(a2 + 96);
    v3 = 2048;
    *(a1 + 104) = 2048;
    *(a1 + 96) = v4;
    v2 = *(a2 + 104);
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
    *(a1 + 104) = v3;
    *(a1 + 40) = result;
    v2 = *(a2 + 104);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    result = *(a2 + 48);
    v3 |= 0x20u;
    *(a1 + 104) = v3;
    *(a1 + 48) = result;
    v2 = *(a2 + 104);
    if ((v2 & 0x40) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 56);
  v3 |= 0x40u;
  *(a1 + 104) = v3;
  *(a1 + 56) = result;
  v2 = *(a2 + 104);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = *(a2 + 32);
  v3 |= 8u;
  *(a1 + 104) = v3;
  *(a1 + 32) = v6;
  v2 = *(a2 + 104);
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = *(a2 + 72);
  v3 |= 0x100u;
  *(a1 + 104) = v3;
  *(a1 + 72) = result;
  v2 = *(a2 + 104);
  if ((v2 & 0x200) == 0)
  {
LABEL_11:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = *(a2 + 80);
  v3 |= 0x200u;
  *(a1 + 104) = v3;
  *(a1 + 80) = result;
  v2 = *(a2 + 104);
  if ((v2 & 0x400) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = *(a2 + 88);
  v3 |= 0x400u;
  *(a1 + 104) = v3;
  *(a1 + 88) = result;
  v2 = *(a2 + 104);
  if ((v2 & 0x80) == 0)
  {
LABEL_13:
    if ((v2 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = *(a2 + 64);
  v3 |= 0x80u;
  *(a1 + 104) = v3;
  *(a1 + 64) = result;
  v2 = *(a2 + 104);
  if ((v2 & 1) == 0)
  {
LABEL_14:
    if ((v2 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = *(a2 + 8);
  v3 |= 1u;
  *(a1 + 104) = v3;
  *(a1 + 8) = result;
  v2 = *(a2 + 104);
  if ((v2 & 2) == 0)
  {
LABEL_15:
    if ((v2 & 4) == 0)
    {
      return result;
    }

LABEL_26:
    result = *(a2 + 24);
    *(a1 + 104) = v3 | 4;
    *(a1 + 24) = result;
    return result;
  }

LABEL_25:
  result = *(a2 + 16);
  v3 |= 2u;
  *(a1 + 104) = v3;
  *(a1 + 16) = result;
  if ((*(a2 + 104) & 4) != 0)
  {
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_245DD9F1C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 104);
  if (v5)
  {
    PB::TextFormatter::format(this, "bodyAccelX", *(a1 + 8));
    v5 = *(a1 + 104);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "bodyAccelY", *(a1 + 16));
  v5 = *(a1 + 104);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "bodyAccelZ", *(a1 + 24));
  v5 = *(a1 + 104);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = *(a1 + 32);
  PB::TextFormatter::format(this, "epochCounter");
  v5 = *(a1 + 104);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "inertialAccelX", *(a1 + 40));
  v5 = *(a1 + 104);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "inertialAccelY", *(a1 + 48));
  v5 = *(a1 + 104);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "inertialAccelZ", *(a1 + 56));
  v5 = *(a1 + 104);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "quaternionW", *(a1 + 64));
  v5 = *(a1 + 104);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "quaternionX", *(a1 + 72));
  v5 = *(a1 + 104);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "quaternionY", *(a1 + 80));
  v5 = *(a1 + 104);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  PB::TextFormatter::format(this, "quaternionZ", *(a1 + 88));
  if ((*(a1 + 104) & 0x800) != 0)
  {
LABEL_13:
    v6 = *(a1 + 96);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_14:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DDA0E0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_115;
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
      if ((v10 >> 3) > 6)
      {
        if (v22 > 9)
        {
          switch(v22)
          {
            case 0xA:
              *(a1 + 104) |= 1u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
LABEL_80:
                *(this + 24) = 1;
                goto LABEL_111;
              }

              *(a1 + 8) = *(*this + v2);
              goto LABEL_100;
            case 0xB:
              *(a1 + 104) |= 2u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_80;
              }

              *(a1 + 16) = *(*this + v2);
              goto LABEL_100;
            case 0xC:
              *(a1 + 104) |= 4u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_80;
              }

              *(a1 + 24) = *(*this + v2);
              goto LABEL_100;
          }
        }

        else
        {
          switch(v22)
          {
            case 7:
              *(a1 + 104) |= 0x200u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_80;
              }

              *(a1 + 80) = *(*this + v2);
              goto LABEL_100;
            case 8:
              *(a1 + 104) |= 0x400u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_80;
              }

              *(a1 + 88) = *(*this + v2);
              goto LABEL_100;
            case 9:
              *(a1 + 104) |= 0x80u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_80;
              }

              *(a1 + 64) = *(*this + v2);
              goto LABEL_100;
          }
        }
      }

      else if (v22 > 3)
      {
        switch(v22)
        {
          case 4:
            *(a1 + 104) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_80;
            }

            *(a1 + 56) = *(*this + v2);
            goto LABEL_100;
          case 5:
            *(a1 + 104) |= 8u;
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
                v2 = *(this + 1);
              }

              v48 = v2 - v31;
              v49 = (v32 + v31);
              v50 = v31 + 1;
              while (1)
              {
                if (!v48)
                {
                  v35 = 0;
                  *(this + 24) = 1;
                  goto LABEL_110;
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
                  v35 = 0;
                  goto LABEL_109;
                }
              }

              if (*(this + 24))
              {
                v35 = 0;
              }

LABEL_109:
              v2 = v51;
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

LABEL_110:
            *(a1 + 32) = v35;
            goto LABEL_111;
          case 6:
            *(a1 + 104) |= 0x100u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_80;
            }

            *(a1 + 72) = *(*this + v2);
            goto LABEL_100;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 104) |= 0x800u;
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
                v2 = *(this + 1);
              }

              v41 = v2 - v23;
              v42 = (v24 + v23);
              v43 = v23 + 1;
              while (1)
              {
                if (!v41)
                {
                  v27 = 0;
                  *(this + 24) = 1;
                  goto LABEL_106;
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
                  goto LABEL_105;
                }
              }

              if (*(this + 24))
              {
                v27 = 0;
              }

LABEL_105:
              v2 = v44;
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

LABEL_106:
            *(a1 + 96) = v27;
            goto LABEL_111;
          case 2:
            *(a1 + 104) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_80;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_100;
          case 3:
            *(a1 + 104) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_80;
            }

            *(a1 + 48) = *(*this + v2);
LABEL_100:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_111;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v53 = 0;
        return v53 & 1;
      }

      v2 = *(this + 1);
LABEL_111:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_115:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_245DDA710(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 104);
  if ((v4 & 0x800) != 0)
  {
    v5 = *(result + 96);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 104);
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

  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 104);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 104);
  if ((v4 & 0x40) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 104);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 104);
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 104);
  if ((v4 & 0x200) == 0)
  {
LABEL_8:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 104);
  if ((v4 & 0x400) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 104);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 104);
  if ((v4 & 1) == 0)
  {
LABEL_11:
    if ((v4 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    result = PB::Writer::write(this, *(v3 + 16));
    if ((*(v3 + 104) & 4) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 104);
  if ((v4 & 2) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_25:
  v7 = *(v3 + 24);

  return PB::Writer::write(this, v7);
}

uint64_t sub_245DDA898(uint64_t result)
{
  *result = &unk_2858CE028;
  *(result + 324) = 0;
  *(result + 316) = 0;
  return result;
}

void sub_245DDA8C8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245DDA900(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CE028;
  v2 = (a1 + 316);
  *(a1 + 324) = 0;
  *(a1 + 316) = 0;
  v3 = *(a2 + 324);
  if ((v3 & 8) != 0)
  {
    v5 = *(a2 + 312);
    v4 = 8;
    *(a1 + 324) = 8;
    *(a1 + 312) = v5;
    v3 = *(a2 + 324);
    if ((v3 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = 0;
  if ((*(a2 + 324) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 304);
    v4 |= 2u;
    *(a1 + 324) = v4;
    *(a1 + 304) = result;
    v3 = *(a2 + 324);
  }

LABEL_6:
  if ((v3 & 4) != 0)
  {
    result = *(a2 + 308);
    v4 |= 4u;
    *(a1 + 324) = v4;
    *(a1 + 308) = result;
  }

  v7 = (a2 + 316);
  v8 = *(a2 + 316);
  if ((v8 & 0x20) != 0)
  {
    v10 = *(a2 + 48);
    v9 = 32;
    *v2 = 32;
    *(a1 + 48) = v10;
    v8 = *v7;
    if ((*v7 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v9 = 0;
  if ((v8 & 0x40) != 0)
  {
LABEL_12:
    v11 = *(a2 + 56);
    v9 |= 0x40uLL;
    *v2 = v9;
    *(a1 + 56) = v11;
    v8 = *v7;
  }

LABEL_13:
  if (v8)
  {
    v13 = *(a2 + 8);
    v9 |= 1uLL;
    *v2 = v9;
    *(a1 + 8) = v13;
    v8 = *v7;
    if ((*v7 & 0x8000) == 0)
    {
LABEL_15:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_81;
    }
  }

  else if ((v8 & 0x8000) == 0)
  {
    goto LABEL_15;
  }

  result = *(a2 + 104);
  v9 |= 0x8000uLL;
  *v2 = v9;
  *(a1 + 104) = result;
  v8 = *v7;
  if ((*v7 & 0x80) == 0)
  {
LABEL_16:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_82;
  }

LABEL_81:
  v14 = *(a2 + 64);
  v9 |= 0x80uLL;
  *v2 = v9;
  *(a1 + 64) = v14;
  v8 = *v7;
  if ((*v7 & 0x100) == 0)
  {
LABEL_17:
    if ((v8 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_83;
  }

LABEL_82:
  v15 = *(a2 + 72);
  v9 |= 0x100uLL;
  *v2 = v9;
  *(a1 + 72) = v15;
  v8 = *v7;
  if ((*v7 & 0x20000) == 0)
  {
LABEL_18:
    if ((v8 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_84;
  }

LABEL_83:
  result = *(a2 + 112);
  v9 |= 0x20000uLL;
  *v2 = v9;
  *(a1 + 112) = result;
  v8 = *v7;
  if ((*v7 & 0x10000) == 0)
  {
LABEL_19:
    if ((v8 & 0x2000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_85;
  }

LABEL_84:
  result = *(a2 + 108);
  v9 |= 0x10000uLL;
  *v2 = v9;
  *(a1 + 108) = result;
  v8 = *v7;
  if ((*v7 & 0x2000000) == 0)
  {
LABEL_20:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_86;
  }

LABEL_85:
  result = *(a2 + 144);
  v9 |= 0x2000000uLL;
  *v2 = v9;
  *(a1 + 144) = result;
  v8 = *v7;
  if ((*v7 & 0x200) == 0)
  {
LABEL_21:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_87;
  }

LABEL_86:
  result = *(a2 + 80);
  v9 |= 0x200uLL;
  *v2 = v9;
  *(a1 + 80) = result;
  v8 = *v7;
  if ((*v7 & 0x400) == 0)
  {
LABEL_22:
    if ((v8 & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_88;
  }

LABEL_87:
  result = *(a2 + 84);
  v9 |= 0x400uLL;
  *v2 = v9;
  *(a1 + 84) = result;
  v8 = *v7;
  if ((*v7 & 0x800000) == 0)
  {
LABEL_23:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_89;
  }

LABEL_88:
  result = *(a2 + 136);
  v9 |= 0x800000uLL;
  *v2 = v9;
  *(a1 + 136) = result;
  v8 = *v7;
  if ((*v7 & 0x4000) == 0)
  {
LABEL_24:
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_90;
  }

LABEL_89:
  result = *(a2 + 100);
  v9 |= 0x4000uLL;
  *v2 = v9;
  *(a1 + 100) = result;
  v8 = *v7;
  if ((*v7 & 0x400000) == 0)
  {
LABEL_25:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_91;
  }

LABEL_90:
  result = *(a2 + 132);
  v9 |= 0x400000uLL;
  *v2 = v9;
  *(a1 + 132) = result;
  v8 = *v7;
  if ((*v7 & 0x2000) == 0)
  {
LABEL_26:
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_92;
  }

LABEL_91:
  result = *(a2 + 96);
  v9 |= 0x2000uLL;
  *v2 = v9;
  *(a1 + 96) = result;
  v8 = *v7;
  if ((*v7 & 0x8000000) == 0)
  {
LABEL_27:
    if ((v8 & 0x100000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_93;
  }

LABEL_92:
  result = *(a2 + 152);
  v9 |= 0x8000000uLL;
  *v2 = v9;
  *(a1 + 152) = result;
  v8 = *v7;
  if ((*v7 & 0x100000) == 0)
  {
LABEL_28:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_94;
  }

LABEL_93:
  result = *(a2 + 124);
  v9 |= 0x100000uLL;
  *v2 = v9;
  *(a1 + 124) = result;
  v8 = *v7;
  if ((*v7 & 0x1000) == 0)
  {
LABEL_29:
    if ((v8 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_95;
  }

LABEL_94:
  result = *(a2 + 92);
  v9 |= 0x1000uLL;
  *v2 = v9;
  *(a1 + 92) = result;
  v8 = *v7;
  if ((*v7 & 0x80000) == 0)
  {
LABEL_30:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_96;
  }

LABEL_95:
  result = *(a2 + 120);
  v9 |= 0x80000uLL;
  *v2 = v9;
  *(a1 + 120) = result;
  v8 = *v7;
  if ((*v7 & 0x800) == 0)
  {
LABEL_31:
    if ((v8 & 0x4000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_97;
  }

LABEL_96:
  result = *(a2 + 88);
  v9 |= 0x800uLL;
  *v2 = v9;
  *(a1 + 88) = result;
  v8 = *v7;
  if ((*v7 & 0x4000000) == 0)
  {
LABEL_32:
    if ((v8 & 0x40000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_98;
  }

LABEL_97:
  result = *(a2 + 148);
  v9 |= 0x4000000uLL;
  *v2 = v9;
  *(a1 + 148) = result;
  v8 = *v7;
  if ((*v7 & 0x40000000000000) == 0)
  {
LABEL_33:
    if ((v8 & 0x20000000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_99;
  }

LABEL_98:
  result = *(a2 + 260);
  v9 |= 0x40000000000000uLL;
  *v2 = v9;
  *(a1 + 260) = result;
  v8 = *v7;
  if ((*v7 & 0x20000000000000) == 0)
  {
LABEL_34:
    if ((v8 & 0x4000000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_100;
  }

LABEL_99:
  result = *(a2 + 256);
  v9 |= 0x20000000000000uLL;
  *v2 = v9;
  *(a1 + 256) = result;
  v8 = *v7;
  if ((*v7 & 0x4000000000000000) == 0)
  {
LABEL_35:
    if ((v8 & 0x800000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_101;
  }

LABEL_100:
  result = *(a2 + 292);
  v9 |= 0x4000000000000000uLL;
  *v2 = v9;
  *(a1 + 292) = result;
  v8 = *v7;
  if ((*v7 & 0x800000000000) == 0)
  {
LABEL_36:
    if ((v8 & 0x1000000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_102;
  }

LABEL_101:
  result = *(a2 + 232);
  v9 |= 0x800000000000uLL;
  *v2 = v9;
  *(a1 + 232) = result;
  v8 = *v7;
  if ((*v7 & 0x1000000000000) == 0)
  {
LABEL_37:
    if ((v8 & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_103;
  }

LABEL_102:
  result = *(a2 + 236);
  v9 |= 0x1000000000000uLL;
  *v2 = v9;
  *(a1 + 236) = result;
  v8 = *v7;
  if ((*v7 & 0x1000000000000000) == 0)
  {
LABEL_38:
    if ((v8 & 0x10000000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_104;
  }

LABEL_103:
  result = *(a2 + 284);
  v9 |= 0x1000000000000000uLL;
  *v2 = v9;
  *(a1 + 284) = result;
  v8 = *v7;
  if ((*v7 & 0x10000000000000) == 0)
  {
LABEL_39:
    if ((v8 & 0x800000000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_105;
  }

LABEL_104:
  result = *(a2 + 252);
  v9 |= 0x10000000000000uLL;
  *v2 = v9;
  *(a1 + 252) = result;
  v8 = *v7;
  if ((*v7 & 0x800000000000000) == 0)
  {
LABEL_40:
    if ((v8 & 0x8000000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_105:
  result = *(a2 + 280);
  v9 |= 0x800000000000000uLL;
  *v2 = v9;
  *(a1 + 280) = result;
  if ((*v7 & 0x8000000000000) != 0)
  {
LABEL_41:
    result = *(a2 + 248);
    v9 |= 0x8000000000000uLL;
    *v2 = v9;
    *(a1 + 248) = result;
  }

LABEL_42:
  if (*(a2 + 324))
  {
    result = *(a2 + 300);
    *(a1 + 324) = v4 | 1;
    *(a1 + 300) = result;
  }

  v12 = *v7;
  if ((*v7 & 0x200000000000000) != 0)
  {
    result = *(a2 + 272);
    v9 |= 0x200000000000000uLL;
    *v2 = v9;
    *(a1 + 272) = result;
    v12 = *v7;
    if ((*v7 & 0x4000000000000) == 0)
    {
LABEL_46:
      if ((v12 & 0x100000000000000) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_109;
    }
  }

  else if ((v12 & 0x4000000000000) == 0)
  {
    goto LABEL_46;
  }

  result = *(a2 + 244);
  v9 |= 0x4000000000000uLL;
  *v2 = v9;
  *(a1 + 244) = result;
  v12 = *v7;
  if ((*v7 & 0x100000000000000) == 0)
  {
LABEL_47:
    if ((v12 & 0x2000000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_110;
  }

LABEL_109:
  result = *(a2 + 268);
  v9 |= 0x100000000000000uLL;
  *v2 = v9;
  *(a1 + 268) = result;
  v12 = *v7;
  if ((*v7 & 0x2000000000000) == 0)
  {
LABEL_48:
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_111;
  }

LABEL_110:
  result = *(a2 + 240);
  v9 |= 0x2000000000000uLL;
  *v2 = v9;
  *(a1 + 240) = result;
  v12 = *v7;
  if ((*v7 & 0x8000000000000000) == 0)
  {
LABEL_49:
    if ((v12 & 0x800000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_112;
  }

LABEL_111:
  result = *(a2 + 296);
  v9 |= 0x8000000000000000;
  *v2 = v9;
  *(a1 + 296) = result;
  v12 = *v7;
  if ((*v7 & 0x800000000) == 0)
  {
LABEL_50:
    if ((v12 & 0x400000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_113;
  }

LABEL_112:
  result = *(a2 + 184);
  v9 |= 0x800000000uLL;
  *v2 = v9;
  *(a1 + 184) = result;
  v12 = *v7;
  if ((*v7 & 0x400000000) == 0)
  {
LABEL_51:
    if ((v12 & 0x80000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_114;
  }

LABEL_113:
  result = *(a2 + 180);
  v9 |= 0x400000000uLL;
  *v2 = v9;
  *(a1 + 180) = result;
  v12 = *v7;
  if ((*v7 & 0x80000000000) == 0)
  {
LABEL_52:
    if ((v12 & 0x10000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_115;
  }

LABEL_114:
  result = *(a2 + 216);
  v9 |= 0x80000000000uLL;
  *v2 = v9;
  *(a1 + 216) = result;
  v12 = *v7;
  if ((*v7 & 0x10000000) == 0)
  {
LABEL_53:
    if ((v12 & 0x20000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_116;
  }

LABEL_115:
  result = *(a2 + 156);
  v9 |= 0x10000000uLL;
  *v2 = v9;
  *(a1 + 156) = result;
  v12 = *v7;
  if ((*v7 & 0x20000000) == 0)
  {
LABEL_54:
    if ((v12 & 0x20000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_117;
  }

LABEL_116:
  result = *(a2 + 160);
  v9 |= 0x20000000uLL;
  *v2 = v9;
  *(a1 + 160) = result;
  v12 = *v7;
  if ((*v7 & 0x20000000000) == 0)
  {
LABEL_55:
    if ((v12 & 0x200000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_118;
  }

LABEL_117:
  result = *(a2 + 208);
  v9 |= 0x20000000000uLL;
  *v2 = v9;
  *(a1 + 208) = result;
  v12 = *v7;
  if ((*v7 & 0x200000000) == 0)
  {
LABEL_56:
    if ((v12 & 0x10000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_119;
  }

LABEL_118:
  result = *(a2 + 176);
  v9 |= 0x200000000uLL;
  *v2 = v9;
  *(a1 + 176) = result;
  v12 = *v7;
  if ((*v7 & 0x10000000000) == 0)
  {
LABEL_57:
    if ((v12 & 0x100000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_120;
  }

LABEL_119:
  result = *(a2 + 204);
  v9 |= 0x10000000000uLL;
  *v2 = v9;
  *(a1 + 204) = result;
  v12 = *v7;
  if ((*v7 & 0x100000000) == 0)
  {
LABEL_58:
    if ((v12 & 0x200000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_121;
  }

LABEL_120:
  result = *(a2 + 172);
  v9 |= 0x100000000uLL;
  *v2 = v9;
  *(a1 + 172) = result;
  v12 = *v7;
  if ((*v7 & 0x200000000000) == 0)
  {
LABEL_59:
    if ((v12 & 0x4000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_122;
  }

LABEL_121:
  result = *(a2 + 224);
  v9 |= 0x200000000000uLL;
  *v2 = v9;
  *(a1 + 224) = result;
  v12 = *v7;
  if ((*v7 & 0x4000000000) == 0)
  {
LABEL_60:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_123;
  }

LABEL_122:
  result = *(a2 + 196);
  v9 |= 0x4000000000uLL;
  *v2 = v9;
  *(a1 + 196) = result;
  v12 = *v7;
  if ((*v7 & 0x80000000) == 0)
  {
LABEL_61:
    if ((v12 & 0x2000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_124;
  }

LABEL_123:
  result = *(a2 + 168);
  v9 |= 0x80000000uLL;
  *v2 = v9;
  *(a1 + 168) = result;
  v12 = *v7;
  if ((*v7 & 0x2000000000) == 0)
  {
LABEL_62:
    if ((v12 & 0x40000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_125;
  }

LABEL_124:
  result = *(a2 + 192);
  v9 |= 0x2000000000uLL;
  *v2 = v9;
  *(a1 + 192) = result;
  v12 = *v7;
  if ((*v7 & 0x40000000) == 0)
  {
LABEL_63:
    if ((v12 & 0x100000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_126;
  }

LABEL_125:
  result = *(a2 + 164);
  v9 |= 0x40000000uLL;
  *v2 = v9;
  *(a1 + 164) = result;
  v12 = *v7;
  if ((*v7 & 0x100000000000) == 0)
  {
LABEL_64:
    if ((v12 & 8) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_127;
  }

LABEL_126:
  result = *(a2 + 220);
  v9 |= 0x100000000000uLL;
  *v2 = v9;
  *(a1 + 220) = result;
  v12 = *v7;
  if ((*v7 & 8) == 0)
  {
LABEL_65:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_128;
  }

LABEL_127:
  v16 = *(a2 + 32);
  v9 |= 8uLL;
  *v2 = v9;
  *(a1 + 32) = v16;
  v12 = *v7;
  if ((*v7 & 0x10) == 0)
  {
LABEL_66:
    if ((v12 & 0x1000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_129;
  }

LABEL_128:
  v17 = *(a2 + 40);
  v9 |= 0x10uLL;
  *v2 = v9;
  *(a1 + 40) = v17;
  v12 = *v7;
  if ((*v7 & 0x1000000) == 0)
  {
LABEL_67:
    if ((v12 & 0x2000000000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_130;
  }

LABEL_129:
  result = *(a2 + 140);
  v9 |= 0x1000000uLL;
  *v2 = v9;
  *(a1 + 140) = result;
  v12 = *v7;
  if ((*v7 & 0x2000000000000000) == 0)
  {
LABEL_68:
    if ((v12 & 0x40000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_131;
  }

LABEL_130:
  result = *(a2 + 288);
  v9 |= 0x2000000000000000uLL;
  *v2 = v9;
  *(a1 + 288) = result;
  v12 = *v7;
  if ((*v7 & 0x40000000000) == 0)
  {
LABEL_69:
    if ((v12 & 0x40000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_132;
  }

LABEL_131:
  result = *(a2 + 212);
  v9 |= 0x40000000000uLL;
  *v2 = v9;
  *(a1 + 212) = result;
  v12 = *v7;
  if ((*v7 & 0x40000) == 0)
  {
LABEL_70:
    if ((v12 & 0x80000000000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_133;
  }

LABEL_132:
  result = *(a2 + 116);
  v9 |= 0x40000uLL;
  *v2 = v9;
  *(a1 + 116) = result;
  v12 = *v7;
  if ((*v7 & 0x80000000000000) == 0)
  {
LABEL_71:
    if ((v12 & 0x1000000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_134;
  }

LABEL_133:
  result = *(a2 + 264);
  v9 |= 0x80000000000000uLL;
  *v2 = v9;
  *(a1 + 264) = result;
  v12 = *v7;
  if ((*v7 & 0x1000000000) == 0)
  {
LABEL_72:
    if ((v12 & 0x200000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_135;
  }

LABEL_134:
  result = *(a2 + 188);
  v9 |= 0x1000000000uLL;
  *v2 = v9;
  *(a1 + 188) = result;
  v12 = *v7;
  if ((*v7 & 0x200000) == 0)
  {
LABEL_73:
    if ((v12 & 0x400000000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_136;
  }

LABEL_135:
  result = *(a2 + 128);
  v9 |= 0x200000uLL;
  *v2 = v9;
  *(a1 + 128) = result;
  v12 = *v7;
  if ((*v7 & 0x400000000000000) == 0)
  {
LABEL_74:
    if ((v12 & 0x8000000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_137;
  }

LABEL_136:
  result = *(a2 + 276);
  v9 |= 0x400000000000000uLL;
  *v2 = v9;
  *(a1 + 276) = result;
  v12 = *v7;
  if ((*v7 & 0x8000000000) == 0)
  {
LABEL_75:
    if ((v12 & 2) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_138;
  }

LABEL_137:
  result = *(a2 + 200);
  v9 |= 0x8000000000uLL;
  *v2 = v9;
  *(a1 + 200) = result;
  v12 = *v7;
  if ((*v7 & 2) == 0)
  {
LABEL_76:
    if ((v12 & 4) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_139;
  }

LABEL_138:
  v18 = *(a2 + 16);
  v9 |= 2uLL;
  *v2 = v9;
  *(a1 + 16) = v18;
  v12 = *v7;
  if ((*v7 & 4) == 0)
  {
LABEL_77:
    if ((v12 & 0x400000000000) == 0)
    {
      return result;
    }

LABEL_140:
    result = *(a2 + 228);
    *v2 = v9 | 0x400000000000;
    *(a1 + 228) = result;
    return result;
  }

LABEL_139:
  v19 = *(a2 + 24);
  v9 |= 4uLL;
  *v2 = v9;
  *(a1 + 24) = v19;
  if ((*v7 & 0x400000000000) != 0)
  {
    goto LABEL_140;
  }

  return result;
}