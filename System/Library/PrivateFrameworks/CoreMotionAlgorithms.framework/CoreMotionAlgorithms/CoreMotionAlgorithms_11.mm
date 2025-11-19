uint64_t sub_245DDB0A4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = (a1 + 316);
  v6 = *(a1 + 316);
  if ((v6 & 0x200) != 0)
  {
    PB::TextFormatter::format(this, "arclengthXYBiggestImpact", *(a1 + 80));
    v6 = *v5;
    if ((*v5 & 0x400) == 0)
    {
LABEL_3:
      if ((v6 & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_78;
    }
  }

  else if ((v6 & 0x400) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "arclengthXYOverEpoch", *(a1 + 84));
  v6 = *v5;
  if ((*v5 & 0x800) == 0)
  {
LABEL_4:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_79;
  }

LABEL_78:
  PB::TextFormatter::format(this, "arclengthXYZBiggestImpact", *(a1 + 88));
  v6 = *v5;
  if ((*v5 & 0x1000) == 0)
  {
LABEL_5:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_80;
  }

LABEL_79:
  PB::TextFormatter::format(this, "arclengthXYZOverEpoch", *(a1 + 92));
  v6 = *v5;
  if ((*v5 & 0x2000) == 0)
  {
LABEL_6:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_81;
  }

LABEL_80:
  PB::TextFormatter::format(this, "arclengthZBiggestImpact", *(a1 + 96));
  v6 = *v5;
  if ((*v5 & 0x4000) == 0)
  {
LABEL_7:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_82;
  }

LABEL_81:
  PB::TextFormatter::format(this, "arclengthZOverEpoch", *(a1 + 100));
  v6 = *v5;
  if ((*v5 & 0x8000) == 0)
  {
LABEL_8:
    if ((v6 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_83;
  }

LABEL_82:
  PB::TextFormatter::format(this, "configDecelPulseThreshold", *(a1 + 104));
  v6 = *v5;
  if ((*v5 & 1) == 0)
  {
LABEL_9:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_84;
  }

LABEL_83:
  v12 = *(a1 + 8);
  PB::TextFormatter::format(this, "deltaTriggerTime");
  v6 = *v5;
  if ((*v5 & 0x10000) == 0)
  {
LABEL_10:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_85;
  }

LABEL_84:
  PB::TextFormatter::format(this, "deltaVXYBiggestImpact", *(a1 + 108));
  v6 = *v5;
  if ((*v5 & 0x20000) == 0)
  {
LABEL_11:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_86;
  }

LABEL_85:
  PB::TextFormatter::format(this, "deltaVXYOverEpoch", *(a1 + 112));
  v6 = *v5;
  if ((*v5 & 0x40000) == 0)
  {
LABEL_12:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_87;
  }

LABEL_86:
  PB::TextFormatter::format(this, "deltaVXYUnconditional", *(a1 + 116));
  v6 = *v5;
  if ((*v5 & 0x80000) == 0)
  {
LABEL_13:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_88;
  }

LABEL_87:
  PB::TextFormatter::format(this, "deltaVXYZBiggestImpact", *(a1 + 120));
  v6 = *v5;
  if ((*v5 & 0x100000) == 0)
  {
LABEL_14:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_89;
  }

LABEL_88:
  PB::TextFormatter::format(this, "deltaVXYZOverEpoch", *(a1 + 124));
  v6 = *v5;
  if ((*v5 & 0x200000) == 0)
  {
LABEL_15:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_90;
  }

LABEL_89:
  PB::TextFormatter::format(this, "deltaVXYZUnconditional", *(a1 + 128));
  v6 = *v5;
  if ((*v5 & 0x400000) == 0)
  {
LABEL_16:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_91;
  }

LABEL_90:
  PB::TextFormatter::format(this, "deltaVZBiggestImpact", *(a1 + 132));
  v6 = *v5;
  if ((*v5 & 0x800000) == 0)
  {
LABEL_17:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_92;
  }

LABEL_91:
  PB::TextFormatter::format(this, "deltaVZOverEpoch", *(a1 + 136));
  v6 = *v5;
  if ((*v5 & 0x1000000) == 0)
  {
LABEL_18:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_93;
  }

LABEL_92:
  PB::TextFormatter::format(this, "deltaVZUnconditional", *(a1 + 140));
  v6 = *v5;
  if ((*v5 & 0x2000000) == 0)
  {
LABEL_19:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_94;
  }

LABEL_93:
  PB::TextFormatter::format(this, "durationXYBiggestImpact", *(a1 + 144));
  v6 = *v5;
  if ((*v5 & 0x4000000) == 0)
  {
LABEL_20:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_95;
  }

LABEL_94:
  PB::TextFormatter::format(this, "durationXYZBiggestImpact", *(a1 + 148));
  v6 = *v5;
  if ((*v5 & 0x8000000) == 0)
  {
LABEL_21:
    if ((v6 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_96;
  }

LABEL_95:
  PB::TextFormatter::format(this, "durationZBiggestImpact", *(a1 + 152));
  v6 = *v5;
  if ((*v5 & 2) == 0)
  {
LABEL_22:
    if ((v6 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_97;
  }

LABEL_96:
  v13 = *(a1 + 16);
  PB::TextFormatter::format(this, "epochFirstTimestamp");
  v6 = *v5;
  if ((*v5 & 4) == 0)
  {
LABEL_23:
    if ((v6 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_98;
  }

LABEL_97:
  v14 = *(a1 + 24);
  PB::TextFormatter::format(this, "epochLastTimestamp");
  v6 = *v5;
  if ((*v5 & 8) == 0)
  {
LABEL_24:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_99;
  }

LABEL_98:
  v15 = *(a1 + 32);
  PB::TextFormatter::format(this, "faultCounter");
  v6 = *v5;
  if ((*v5 & 0x10) == 0)
  {
LABEL_25:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_100;
  }

LABEL_99:
  v16 = *(a1 + 40);
  PB::TextFormatter::format(this, "hgAccelBufferSize");
  v6 = *v5;
  if ((*v5 & 0x10000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_101;
  }

LABEL_100:
  PB::TextFormatter::format(this, "hgArclengthXYBiggestImpact", *(a1 + 156));
  v6 = *v5;
  if ((*v5 & 0x20000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_102;
  }

LABEL_101:
  PB::TextFormatter::format(this, "hgArclengthXYOverEpoch", *(a1 + 160));
  v6 = *v5;
  if ((*v5 & 0x40000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_103;
  }

LABEL_102:
  PB::TextFormatter::format(this, "hgArclengthXYZBiggestImpact", *(a1 + 164));
  v6 = *v5;
  if ((*v5 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_104;
  }

LABEL_103:
  PB::TextFormatter::format(this, "hgArclengthXYZOverEpoch", *(a1 + 168));
  v6 = *v5;
  if ((*v5 & 0x100000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x200000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_105;
  }

LABEL_104:
  PB::TextFormatter::format(this, "hgArclengthZBiggestImpact", *(a1 + 172));
  v6 = *v5;
  if ((*v5 & 0x200000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x400000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_106;
  }

LABEL_105:
  PB::TextFormatter::format(this, "hgArclengthZOverEpoch", *(a1 + 176));
  v6 = *v5;
  if ((*v5 & 0x400000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x800000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_107;
  }

LABEL_106:
  PB::TextFormatter::format(this, "hgDeltaVXYBiggestImpact", *(a1 + 180));
  v6 = *v5;
  if ((*v5 & 0x800000000) == 0)
  {
LABEL_33:
    if ((v6 & 0x1000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_108;
  }

LABEL_107:
  PB::TextFormatter::format(this, "hgDeltaVXYOverEpoch", *(a1 + 184));
  v6 = *v5;
  if ((*v5 & 0x1000000000) == 0)
  {
LABEL_34:
    if ((v6 & 0x2000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_109;
  }

LABEL_108:
  PB::TextFormatter::format(this, "hgDeltaVXYUnconditional", *(a1 + 188));
  v6 = *v5;
  if ((*v5 & 0x2000000000) == 0)
  {
LABEL_35:
    if ((v6 & 0x4000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_110;
  }

LABEL_109:
  PB::TextFormatter::format(this, "hgDeltaVXYZBiggestImpact", *(a1 + 192));
  v6 = *v5;
  if ((*v5 & 0x4000000000) == 0)
  {
LABEL_36:
    if ((v6 & 0x8000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_111;
  }

LABEL_110:
  PB::TextFormatter::format(this, "hgDeltaVXYZOverEpoch", *(a1 + 196));
  v6 = *v5;
  if ((*v5 & 0x8000000000) == 0)
  {
LABEL_37:
    if ((v6 & 0x10000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_112;
  }

LABEL_111:
  PB::TextFormatter::format(this, "hgDeltaVXYZUnconditional", *(a1 + 200));
  v6 = *v5;
  if ((*v5 & 0x10000000000) == 0)
  {
LABEL_38:
    if ((v6 & 0x20000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_113;
  }

LABEL_112:
  PB::TextFormatter::format(this, "hgDeltaVZBiggestImpact", *(a1 + 204));
  v6 = *v5;
  if ((*v5 & 0x20000000000) == 0)
  {
LABEL_39:
    if ((v6 & 0x40000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_114;
  }

LABEL_113:
  PB::TextFormatter::format(this, "hgDeltaVZOverEpoch", *(a1 + 208));
  v6 = *v5;
  if ((*v5 & 0x40000000000) == 0)
  {
LABEL_40:
    if ((v6 & 0x80000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_115;
  }

LABEL_114:
  PB::TextFormatter::format(this, "hgDeltaVZUnconditional", *(a1 + 212));
  v6 = *v5;
  if ((*v5 & 0x80000000000) == 0)
  {
LABEL_41:
    if ((v6 & 0x100000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_116;
  }

LABEL_115:
  PB::TextFormatter::format(this, "hgDurationXYBiggestImpact", *(a1 + 216));
  v6 = *v5;
  if ((*v5 & 0x100000000000) == 0)
  {
LABEL_42:
    if ((v6 & 0x200000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_117;
  }

LABEL_116:
  PB::TextFormatter::format(this, "hgDurationXYZBiggestImpact", *(a1 + 220));
  v6 = *v5;
  if ((*v5 & 0x200000000000) == 0)
  {
LABEL_43:
    if ((v6 & 0x400000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_117:
  PB::TextFormatter::format(this, "hgDurationZBiggestImpact", *(a1 + 224));
  if ((*v5 & 0x400000000000) != 0)
  {
LABEL_44:
    PB::TextFormatter::format(this, "hgWeightCoeff", *(a1 + 228));
  }

LABEL_45:
  if ((*(a1 + 324) & 8) != 0)
  {
    v7 = *(a1 + 312);
    PB::TextFormatter::format(this, "isPulseDetected");
  }

  v8 = *v5;
  if ((*v5 & 0x800000000000) != 0)
  {
    PB::TextFormatter::format(this, "lgArclengthXYBiggestImpact", *(a1 + 232));
    v8 = *v5;
    if ((*v5 & 0x1000000000000) == 0)
    {
LABEL_49:
      if ((v8 & 0x2000000000000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_121;
    }
  }

  else if ((v8 & 0x1000000000000) == 0)
  {
    goto LABEL_49;
  }

  PB::TextFormatter::format(this, "lgArclengthXYOverEpoch", *(a1 + 236));
  v8 = *v5;
  if ((*v5 & 0x2000000000000) == 0)
  {
LABEL_50:
    if ((v8 & 0x4000000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_122;
  }

LABEL_121:
  PB::TextFormatter::format(this, "lgArclengthXYZBiggestImpact", *(a1 + 240));
  v8 = *v5;
  if ((*v5 & 0x4000000000000) == 0)
  {
LABEL_51:
    if ((v8 & 0x8000000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_123;
  }

LABEL_122:
  PB::TextFormatter::format(this, "lgArclengthXYZOverEpoch", *(a1 + 244));
  v8 = *v5;
  if ((*v5 & 0x8000000000000) == 0)
  {
LABEL_52:
    if ((v8 & 0x10000000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_124;
  }

LABEL_123:
  PB::TextFormatter::format(this, "lgArclengthZBiggestImpact", *(a1 + 248));
  v8 = *v5;
  if ((*v5 & 0x10000000000000) == 0)
  {
LABEL_53:
    if ((v8 & 0x20000000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_125;
  }

LABEL_124:
  PB::TextFormatter::format(this, "lgArclengthZOverEpoch", *(a1 + 252));
  v8 = *v5;
  if ((*v5 & 0x20000000000000) == 0)
  {
LABEL_54:
    if ((v8 & 0x40000000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_126;
  }

LABEL_125:
  PB::TextFormatter::format(this, "lgDeltaVXYBiggestImpact", *(a1 + 256));
  v8 = *v5;
  if ((*v5 & 0x40000000000000) == 0)
  {
LABEL_55:
    if ((v8 & 0x80000000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_127;
  }

LABEL_126:
  PB::TextFormatter::format(this, "lgDeltaVXYOverEpoch", *(a1 + 260));
  v8 = *v5;
  if ((*v5 & 0x80000000000000) == 0)
  {
LABEL_56:
    if ((v8 & 0x100000000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_128;
  }

LABEL_127:
  PB::TextFormatter::format(this, "lgDeltaVXYUnconditional", *(a1 + 264));
  v8 = *v5;
  if ((*v5 & 0x100000000000000) == 0)
  {
LABEL_57:
    if ((v8 & 0x200000000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_129;
  }

LABEL_128:
  PB::TextFormatter::format(this, "lgDeltaVXYZBiggestImpact", *(a1 + 268));
  v8 = *v5;
  if ((*v5 & 0x200000000000000) == 0)
  {
LABEL_58:
    if ((v8 & 0x400000000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_130;
  }

LABEL_129:
  PB::TextFormatter::format(this, "lgDeltaVXYZOverEpoch", *(a1 + 272));
  v8 = *v5;
  if ((*v5 & 0x400000000000000) == 0)
  {
LABEL_59:
    if ((v8 & 0x800000000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_131;
  }

LABEL_130:
  PB::TextFormatter::format(this, "lgDeltaVXYZUnconditional", *(a1 + 276));
  v8 = *v5;
  if ((*v5 & 0x800000000000000) == 0)
  {
LABEL_60:
    if ((v8 & 0x1000000000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_132;
  }

LABEL_131:
  PB::TextFormatter::format(this, "lgDeltaVZBiggestImpact", *(a1 + 280));
  v8 = *v5;
  if ((*v5 & 0x1000000000000000) == 0)
  {
LABEL_61:
    if ((v8 & 0x2000000000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_133;
  }

LABEL_132:
  PB::TextFormatter::format(this, "lgDeltaVZOverEpoch", *(a1 + 284));
  v8 = *v5;
  if ((*v5 & 0x2000000000000000) == 0)
  {
LABEL_62:
    if ((v8 & 0x4000000000000000) == 0)
    {
      goto LABEL_63;
    }

LABEL_134:
    PB::TextFormatter::format(this, "lgDurationXYBiggestImpact", *(a1 + 292));
    if ((*v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_135;
  }

LABEL_133:
  PB::TextFormatter::format(this, "lgDeltaVZUnconditional", *(a1 + 288));
  v8 = *v5;
  if ((*v5 & 0x4000000000000000) != 0)
  {
    goto LABEL_134;
  }

LABEL_63:
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_64;
  }

LABEL_135:
  PB::TextFormatter::format(this, "lgDurationXYZBiggestImpact", *(a1 + 296));
LABEL_64:
  v9 = *(a1 + 324);
  if (v9)
  {
    PB::TextFormatter::format(this, "lgDurationZBiggestImpact", *(a1 + 300));
    v9 = *(a1 + 324);
    if ((v9 & 2) == 0)
    {
LABEL_66:
      if ((v9 & 4) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }
  }

  else if ((*(a1 + 324) & 2) == 0)
  {
    goto LABEL_66;
  }

  PB::TextFormatter::format(this, "maxPulse", *(a1 + 304));
  if ((*(a1 + 324) & 4) != 0)
  {
LABEL_67:
    PB::TextFormatter::format(this, "maxPulseHeight", *(a1 + 308));
  }

LABEL_68:
  v10 = *v5;
  if ((*v5 & 0x20) != 0)
  {
    v17 = *(a1 + 48);
    PB::TextFormatter::format(this, "maxPulseStartTime");
    v10 = *v5;
    if ((*v5 & 0x40) == 0)
    {
LABEL_70:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_141;
    }
  }

  else if ((v10 & 0x40) == 0)
  {
    goto LABEL_70;
  }

  v18 = *(a1 + 56);
  PB::TextFormatter::format(this, "maxPulseTime");
  v10 = *v5;
  if ((*v5 & 0x80) == 0)
  {
LABEL_71:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_141:
  v19 = *(a1 + 64);
  PB::TextFormatter::format(this, "timestamp");
  if ((*v5 & 0x100) != 0)
  {
LABEL_72:
    v11 = *(a1 + 72);
    PB::TextFormatter::format(this, "triggerTimestamp");
  }

LABEL_73:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DDB970(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    v7 = (a1 + 316);
    do
    {
      v8 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v16 = 0;
        v17 = 0;
        v11 = 0;
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v8 + v2);
        v21 = v2 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_385;
          }

          v22 = *v20;
          *(this + 1) = v21;
          v11 |= (v22 & 0x7F) << v16;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v19;
          ++v20;
          ++v21;
          v15 = v17++ > 8;
          if (v15)
          {
LABEL_18:
            v11 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v11 = 0;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = (v8 + v2);
        v13 = v2 + 1;
        while (1)
        {
          *(this + 1) = v13;
          v14 = *v12++;
          v11 |= (v14 & 0x7F) << v9;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v9 += 7;
          ++v13;
          v15 = v10++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v11 & 7) == 4))
      {
        break;
      }

      v23 = v11 >> 3;
      if ((v11 >> 3) > 200)
      {
        switch(v23)
        {
          case 0xC9:
            *v7 |= 2uLL;
            v50 = *(this + 1);
            v49 = *(this + 2);
            v51 = *this;
            if (v50 > 0xFFFFFFFFFFFFFFF5 || v50 + 10 > v49)
            {
              v173 = 0;
              v174 = 0;
              v54 = 0;
              v18 = v49 >= v50;
              v175 = v49 - v50;
              if (!v18)
              {
                v175 = 0;
              }

              v176 = (v51 + v50);
              v177 = v50 + 1;
              while (1)
              {
                if (!v175)
                {
                  v54 = 0;
                  *(this + 24) = 1;
                  goto LABEL_362;
                }

                v178 = *v176;
                *(this + 1) = v177;
                v54 |= (v178 & 0x7F) << v173;
                if ((v178 & 0x80) == 0)
                {
                  break;
                }

                v173 += 7;
                --v175;
                ++v176;
                ++v177;
                v15 = v174++ > 8;
                if (v15)
                {
LABEL_283:
                  v54 = 0;
                  goto LABEL_362;
                }
              }

              if (*(this + 24))
              {
                v54 = 0;
              }
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
                *(this + 1) = v56;
                v57 = *v55++;
                v54 |= (v57 & 0x7F) << v52;
                if ((v57 & 0x80) == 0)
                {
                  break;
                }

                v52 += 7;
                ++v56;
                v15 = v53++ > 8;
                if (v15)
                {
                  goto LABEL_283;
                }
              }
            }

LABEL_362:
            *(a1 + 16) = v54;
            break;
          case 0xCA:
            *v7 |= 4uLL;
            v40 = *(this + 1);
            v39 = *(this + 2);
            v41 = *this;
            if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v39)
            {
              v167 = 0;
              v168 = 0;
              v44 = 0;
              v18 = v39 >= v40;
              v169 = v39 - v40;
              if (!v18)
              {
                v169 = 0;
              }

              v170 = (v41 + v40);
              v171 = v40 + 1;
              while (1)
              {
                if (!v169)
                {
                  v44 = 0;
                  *(this + 24) = 1;
                  goto LABEL_359;
                }

                v172 = *v170;
                *(this + 1) = v171;
                v44 |= (v172 & 0x7F) << v167;
                if ((v172 & 0x80) == 0)
                {
                  break;
                }

                v167 += 7;
                --v169;
                ++v170;
                ++v171;
                v15 = v168++ > 8;
                if (v15)
                {
LABEL_275:
                  v44 = 0;
                  goto LABEL_359;
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
                v15 = v43++ > 8;
                if (v15)
                {
                  goto LABEL_275;
                }
              }
            }

LABEL_359:
            *(a1 + 24) = v44;
            break;
          case 0x12D:
            *v7 |= 0x400000000000uLL;
            v28 = *(this + 1);
            if (v28 <= 0xFFFFFFFFFFFFFFFBLL && v28 + 4 <= *(this + 2))
            {
              *(a1 + 228) = *(*this + v28);
LABEL_344:
              *(this + 1) += 4;
            }

            else
            {
              *(this + 24) = 1;
            }

            break;
          default:
LABEL_266:
            if (!PB::Reader::skip(this))
            {
              v222 = 0;
              return v222 & 1;
            }

            break;
        }
      }

      else
      {
        switch(v23)
        {
          case 1:
            *(a1 + 324) |= 8u;
            v24 = *(this + 1);
            if (v24 >= *(this + 2))
            {
              v27 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v25 = v24 + 1;
              v26 = *(*this + v24);
              *(this + 1) = v25;
              v27 = v26 != 0;
            }

            *(a1 + 312) = v27;
            goto LABEL_345;
          case 2:
            *(a1 + 324) |= 2u;
            v102 = *(this + 1);
            if (v102 > 0xFFFFFFFFFFFFFFFBLL || v102 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 304) = *(*this + v102);
            goto LABEL_344;
          case 3:
            *(a1 + 324) |= 4u;
            v81 = *(this + 1);
            if (v81 > 0xFFFFFFFFFFFFFFFBLL || v81 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 308) = *(*this + v81);
            goto LABEL_344;
          case 4:
            *v7 |= 0x20uLL;
            v85 = *(this + 1);
            v84 = *(this + 2);
            v86 = *this;
            if (v85 <= 0xFFFFFFFFFFFFFFF5 && v85 + 10 <= v84)
            {
              v87 = 0;
              v88 = 0;
              v89 = 0;
              v90 = (v86 + v85);
              v91 = v85 + 1;
              do
              {
                *(this + 1) = v91;
                v92 = *v90++;
                v89 |= (v92 & 0x7F) << v87;
                if ((v92 & 0x80) == 0)
                {
                  goto LABEL_368;
                }

                v87 += 7;
                ++v91;
                v15 = v88++ > 8;
              }

              while (!v15);
LABEL_299:
              v89 = 0;
              goto LABEL_368;
            }

            v185 = 0;
            v186 = 0;
            v89 = 0;
            v18 = v84 >= v85;
            v187 = v84 - v85;
            if (!v18)
            {
              v187 = 0;
            }

            v188 = (v86 + v85);
            v189 = v85 + 1;
            while (2)
            {
              if (v187)
              {
                v190 = *v188;
                *(this + 1) = v189;
                v89 |= (v190 & 0x7F) << v185;
                if (v190 < 0)
                {
                  v185 += 7;
                  --v187;
                  ++v188;
                  ++v189;
                  v15 = v186++ > 8;
                  if (v15)
                  {
                    goto LABEL_299;
                  }

                  continue;
                }

                if (*(this + 24))
                {
                  v89 = 0;
                }
              }

              else
              {
                v89 = 0;
                *(this + 24) = 1;
              }

              break;
            }

LABEL_368:
            *(a1 + 48) = v89;
            goto LABEL_345;
          case 5:
            *v7 |= 0x40uLL;
            v66 = *(this + 1);
            v65 = *(this + 2);
            v67 = *this;
            if (v66 <= 0xFFFFFFFFFFFFFFF5 && v66 + 10 <= v65)
            {
              v68 = 0;
              v69 = 0;
              v70 = 0;
              v71 = (v67 + v66);
              v72 = v66 + 1;
              do
              {
                *(this + 1) = v72;
                v73 = *v71++;
                v70 |= (v73 & 0x7F) << v68;
                if ((v73 & 0x80) == 0)
                {
                  goto LABEL_365;
                }

                v68 += 7;
                ++v72;
                v15 = v69++ > 8;
              }

              while (!v15);
LABEL_291:
              v70 = 0;
              goto LABEL_365;
            }

            v179 = 0;
            v180 = 0;
            v70 = 0;
            v18 = v65 >= v66;
            v181 = v65 - v66;
            if (!v18)
            {
              v181 = 0;
            }

            v182 = (v67 + v66);
            v183 = v66 + 1;
            while (2)
            {
              if (v181)
              {
                v184 = *v182;
                *(this + 1) = v183;
                v70 |= (v184 & 0x7F) << v179;
                if (v184 < 0)
                {
                  v179 += 7;
                  --v181;
                  ++v182;
                  ++v183;
                  v15 = v180++ > 8;
                  if (v15)
                  {
                    goto LABEL_291;
                  }

                  continue;
                }

                if (*(this + 24))
                {
                  v70 = 0;
                }
              }

              else
              {
                v70 = 0;
                *(this + 24) = 1;
              }

              break;
            }

LABEL_365:
            *(a1 + 56) = v70;
            goto LABEL_345;
          case 6:
            *v7 |= 1uLL;
            v109 = *(this + 1);
            v108 = *(this + 2);
            v110 = *this;
            if (v109 <= 0xFFFFFFFFFFFFFFF5 && v109 + 10 <= v108)
            {
              v111 = 0;
              v112 = 0;
              v113 = 0;
              v114 = (v110 + v109);
              v115 = v109 + 1;
              do
              {
                *(this + 1) = v115;
                v116 = *v114++;
                v113 |= (v116 & 0x7F) << v111;
                if ((v116 & 0x80) == 0)
                {
                  goto LABEL_374;
                }

                v111 += 7;
                ++v115;
                v15 = v112++ > 8;
              }

              while (!v15);
LABEL_317:
              v113 = 0;
              goto LABEL_374;
            }

            v197 = 0;
            v198 = 0;
            v113 = 0;
            v18 = v108 >= v109;
            v199 = v108 - v109;
            if (!v18)
            {
              v199 = 0;
            }

            v200 = (v110 + v109);
            v201 = v109 + 1;
            while (2)
            {
              if (v199)
              {
                v202 = *v200;
                *(this + 1) = v201;
                v113 |= (v202 & 0x7F) << v197;
                if (v202 < 0)
                {
                  v197 += 7;
                  --v199;
                  ++v200;
                  ++v201;
                  v15 = v198++ > 8;
                  if (v15)
                  {
                    goto LABEL_317;
                  }

                  continue;
                }

                if (*(this + 24))
                {
                  v113 = 0;
                }
              }

              else
              {
                v113 = 0;
                *(this + 24) = 1;
              }

              break;
            }

LABEL_374:
            *(a1 + 8) = v113;
            goto LABEL_345;
          case 7:
            *v7 |= 0x8000uLL;
            v120 = *(this + 1);
            if (v120 > 0xFFFFFFFFFFFFFFFBLL || v120 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 104) = *(*this + v120);
            goto LABEL_344;
          case 8:
            *v7 |= 0x80uLL;
            v94 = *(this + 1);
            v93 = *(this + 2);
            v95 = *this;
            if (v94 <= 0xFFFFFFFFFFFFFFF5 && v94 + 10 <= v93)
            {
              v96 = 0;
              v97 = 0;
              v98 = 0;
              v99 = (v95 + v94);
              v100 = v94 + 1;
              do
              {
                *(this + 1) = v100;
                v101 = *v99++;
                v98 |= (v101 & 0x7F) << v96;
                if ((v101 & 0x80) == 0)
                {
                  goto LABEL_371;
                }

                v96 += 7;
                ++v100;
                v15 = v97++ > 8;
              }

              while (!v15);
LABEL_307:
              v98 = 0;
              goto LABEL_371;
            }

            v191 = 0;
            v192 = 0;
            v98 = 0;
            v18 = v93 >= v94;
            v193 = v93 - v94;
            if (!v18)
            {
              v193 = 0;
            }

            v194 = (v95 + v94);
            v195 = v94 + 1;
            while (2)
            {
              if (v193)
              {
                v196 = *v194;
                *(this + 1) = v195;
                v98 |= (v196 & 0x7F) << v191;
                if (v196 < 0)
                {
                  v191 += 7;
                  --v193;
                  ++v194;
                  ++v195;
                  v15 = v192++ > 8;
                  if (v15)
                  {
                    goto LABEL_307;
                  }

                  continue;
                }

                if (*(this + 24))
                {
                  v98 = 0;
                }
              }

              else
              {
                v98 = 0;
                *(this + 24) = 1;
              }

              break;
            }

LABEL_371:
            *(a1 + 64) = v98;
            goto LABEL_345;
          case 9:
            *v7 |= 0x100uLL;
            v124 = *(this + 1);
            v123 = *(this + 2);
            v125 = *this;
            if (v124 <= 0xFFFFFFFFFFFFFFF5 && v124 + 10 <= v123)
            {
              v126 = 0;
              v127 = 0;
              v128 = 0;
              v129 = (v125 + v124);
              v130 = v124 + 1;
              do
              {
                *(this + 1) = v130;
                v131 = *v129++;
                v128 |= (v131 & 0x7F) << v126;
                if ((v131 & 0x80) == 0)
                {
                  goto LABEL_377;
                }

                v126 += 7;
                ++v130;
                v15 = v127++ > 8;
              }

              while (!v15);
LABEL_325:
              v128 = 0;
              goto LABEL_377;
            }

            v203 = 0;
            v204 = 0;
            v128 = 0;
            v18 = v123 >= v124;
            v205 = v123 - v124;
            if (!v18)
            {
              v205 = 0;
            }

            v206 = (v125 + v124);
            v207 = v124 + 1;
            while (2)
            {
              if (v205)
              {
                v208 = *v206;
                *(this + 1) = v207;
                v128 |= (v208 & 0x7F) << v203;
                if (v208 < 0)
                {
                  v203 += 7;
                  --v205;
                  ++v206;
                  ++v207;
                  v15 = v204++ > 8;
                  if (v15)
                  {
                    goto LABEL_325;
                  }

                  continue;
                }

                if (*(this + 24))
                {
                  v128 = 0;
                }
              }

              else
              {
                v128 = 0;
                *(this + 24) = 1;
              }

              break;
            }

LABEL_377:
            *(a1 + 72) = v128;
            goto LABEL_345;
          case 10:
            *v7 |= 0x20000uLL;
            v78 = *(this + 1);
            if (v78 > 0xFFFFFFFFFFFFFFFBLL || v78 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 112) = *(*this + v78);
            goto LABEL_344;
          case 11:
            *v7 |= 0x10000uLL;
            v122 = *(this + 1);
            if (v122 > 0xFFFFFFFFFFFFFFFBLL || v122 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 108) = *(*this + v122);
            goto LABEL_344;
          case 12:
            *v7 |= 0x2000000uLL;
            v63 = *(this + 1);
            if (v63 > 0xFFFFFFFFFFFFFFFBLL || v63 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 144) = *(*this + v63);
            goto LABEL_344;
          case 13:
            *v7 |= 0x200uLL;
            v77 = *(this + 1);
            if (v77 > 0xFFFFFFFFFFFFFFFBLL || v77 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 80) = *(*this + v77);
            goto LABEL_344;
          case 14:
            *v7 |= 0x400uLL;
            v119 = *(this + 1);
            if (v119 > 0xFFFFFFFFFFFFFFFBLL || v119 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 84) = *(*this + v119);
            goto LABEL_344;
          case 15:
            *v7 |= 0x800000uLL;
            v59 = *(this + 1);
            if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 136) = *(*this + v59);
            goto LABEL_344;
          case 16:
            *v7 |= 0x4000uLL;
            v82 = *(this + 1);
            if (v82 > 0xFFFFFFFFFFFFFFFBLL || v82 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 100) = *(*this + v82);
            goto LABEL_344;
          case 17:
            *v7 |= 0x400000uLL;
            v48 = *(this + 1);
            if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 132) = *(*this + v48);
            goto LABEL_344;
          case 18:
            *v7 |= 0x2000uLL;
            v104 = *(this + 1);
            if (v104 > 0xFFFFFFFFFFFFFFFBLL || v104 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 96) = *(*this + v104);
            goto LABEL_344;
          case 19:
            *v7 |= 0x8000000uLL;
            v121 = *(this + 1);
            if (v121 > 0xFFFFFFFFFFFFFFFBLL || v121 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 152) = *(*this + v121);
            goto LABEL_344;
          case 20:
            *v7 |= 0x100000uLL;
            v137 = *(this + 1);
            if (v137 > 0xFFFFFFFFFFFFFFFBLL || v137 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 124) = *(*this + v137);
            goto LABEL_344;
          case 21:
            *v7 |= 0x1000uLL;
            v106 = *(this + 1);
            if (v106 > 0xFFFFFFFFFFFFFFFBLL || v106 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 92) = *(*this + v106);
            goto LABEL_344;
          case 22:
            *v7 |= 0x80000uLL;
            v118 = *(this + 1);
            if (v118 > 0xFFFFFFFFFFFFFFFBLL || v118 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 120) = *(*this + v118);
            goto LABEL_344;
          case 23:
            *v7 |= 0x800uLL;
            v135 = *(this + 1);
            if (v135 > 0xFFFFFFFFFFFFFFFBLL || v135 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 88) = *(*this + v135);
            goto LABEL_344;
          case 24:
            *v7 |= 0x4000000uLL;
            v141 = *(this + 1);
            if (v141 > 0xFFFFFFFFFFFFFFFBLL || v141 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 148) = *(*this + v141);
            goto LABEL_344;
          case 25:
            *v7 |= 0x40000000000000uLL;
            v80 = *(this + 1);
            if (v80 > 0xFFFFFFFFFFFFFFFBLL || v80 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 260) = *(*this + v80);
            goto LABEL_344;
          case 26:
            *v7 |= 0x20000000000000uLL;
            v79 = *(this + 1);
            if (v79 > 0xFFFFFFFFFFFFFFFBLL || v79 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 256) = *(*this + v79);
            goto LABEL_344;
          case 27:
            *v7 |= 0x4000000000000000uLL;
            v145 = *(this + 1);
            if (v145 > 0xFFFFFFFFFFFFFFFBLL || v145 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 292) = *(*this + v145);
            goto LABEL_344;
          case 28:
            *v7 |= 0x800000000000uLL;
            v37 = *(this + 1);
            if (v37 > 0xFFFFFFFFFFFFFFFBLL || v37 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 232) = *(*this + v37);
            goto LABEL_344;
          case 29:
            *v7 |= 0x1000000000000uLL;
            v142 = *(this + 1);
            if (v142 > 0xFFFFFFFFFFFFFFFBLL || v142 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 236) = *(*this + v142);
            goto LABEL_344;
          case 30:
            *v7 |= 0x1000000000000000uLL;
            v143 = *(this + 1);
            if (v143 > 0xFFFFFFFFFFFFFFFBLL || v143 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 284) = *(*this + v143);
            goto LABEL_344;
          case 31:
            *v7 |= 0x10000000000000uLL;
            v132 = *(this + 1);
            if (v132 > 0xFFFFFFFFFFFFFFFBLL || v132 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 252) = *(*this + v132);
            goto LABEL_344;
          case 32:
            *v7 |= 0x800000000000000uLL;
            v103 = *(this + 1);
            if (v103 > 0xFFFFFFFFFFFFFFFBLL || v103 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 280) = *(*this + v103);
            goto LABEL_344;
          case 33:
            *v7 |= 0x8000000000000uLL;
            v133 = *(this + 1);
            if (v133 > 0xFFFFFFFFFFFFFFFBLL || v133 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 248) = *(*this + v133);
            goto LABEL_344;
          case 34:
            *(a1 + 324) |= 1u;
            v60 = *(this + 1);
            if (v60 > 0xFFFFFFFFFFFFFFFBLL || v60 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 300) = *(*this + v60);
            goto LABEL_344;
          case 35:
            *v7 |= 0x200000000000000uLL;
            v38 = *(this + 1);
            if (v38 > 0xFFFFFFFFFFFFFFFBLL || v38 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 272) = *(*this + v38);
            goto LABEL_344;
          case 36:
            *v7 |= 0x4000000000000uLL;
            v35 = *(this + 1);
            if (v35 > 0xFFFFFFFFFFFFFFFBLL || v35 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 244) = *(*this + v35);
            goto LABEL_344;
          case 37:
            *v7 |= 0x100000000000000uLL;
            v36 = *(this + 1);
            if (v36 > 0xFFFFFFFFFFFFFFFBLL || v36 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 268) = *(*this + v36);
            goto LABEL_344;
          case 38:
            *v7 |= 0x2000000000000uLL;
            v31 = *(this + 1);
            if (v31 > 0xFFFFFFFFFFFFFFFBLL || v31 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 240) = *(*this + v31);
            goto LABEL_344;
          case 39:
            *v7 |= 0x8000000000000000;
            v144 = *(this + 1);
            if (v144 > 0xFFFFFFFFFFFFFFFBLL || v144 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 296) = *(*this + v144);
            goto LABEL_344;
          case 40:
            *v7 |= 0x800000000uLL;
            v136 = *(this + 1);
            if (v136 > 0xFFFFFFFFFFFFFFFBLL || v136 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 184) = *(*this + v136);
            goto LABEL_344;
          case 41:
            *v7 |= 0x400000000uLL;
            v74 = *(this + 1);
            if (v74 > 0xFFFFFFFFFFFFFFFBLL || v74 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 180) = *(*this + v74);
            goto LABEL_344;
          case 42:
            *v7 |= 0x80000000000uLL;
            v105 = *(this + 1);
            if (v105 > 0xFFFFFFFFFFFFFFFBLL || v105 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 216) = *(*this + v105);
            goto LABEL_344;
          case 43:
            *v7 |= 0x10000000uLL;
            v139 = *(this + 1);
            if (v139 > 0xFFFFFFFFFFFFFFFBLL || v139 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 156) = *(*this + v139);
            goto LABEL_344;
          case 44:
            *v7 |= 0x20000000uLL;
            v30 = *(this + 1);
            if (v30 > 0xFFFFFFFFFFFFFFFBLL || v30 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 160) = *(*this + v30);
            goto LABEL_344;
          case 45:
            *v7 |= 0x20000000000uLL;
            v58 = *(this + 1);
            if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 208) = *(*this + v58);
            goto LABEL_344;
          case 46:
            *v7 |= 0x200000000uLL;
            v134 = *(this + 1);
            if (v134 > 0xFFFFFFFFFFFFFFFBLL || v134 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 176) = *(*this + v134);
            goto LABEL_344;
          case 47:
            *v7 |= 0x10000000000uLL;
            v165 = *(this + 1);
            if (v165 > 0xFFFFFFFFFFFFFFFBLL || v165 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 204) = *(*this + v165);
            goto LABEL_344;
          case 48:
            *v7 |= 0x100000000uLL;
            v33 = *(this + 1);
            if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 172) = *(*this + v33);
            goto LABEL_344;
          case 49:
            *v7 |= 0x200000000000uLL;
            v61 = *(this + 1);
            if (v61 > 0xFFFFFFFFFFFFFFFBLL || v61 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 224) = *(*this + v61);
            goto LABEL_344;
          case 50:
            *v7 |= 0x4000000000uLL;
            v64 = *(this + 1);
            if (v64 > 0xFFFFFFFFFFFFFFFBLL || v64 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 196) = *(*this + v64);
            goto LABEL_344;
          case 51:
            *v7 |= 0x80000000uLL;
            v29 = *(this + 1);
            if (v29 > 0xFFFFFFFFFFFFFFFBLL || v29 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 168) = *(*this + v29);
            goto LABEL_344;
          case 52:
            *v7 |= 0x2000000000uLL;
            v166 = *(this + 1);
            if (v166 > 0xFFFFFFFFFFFFFFFBLL || v166 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 192) = *(*this + v166);
            goto LABEL_344;
          case 53:
            *v7 |= 0x40000000uLL;
            v164 = *(this + 1);
            if (v164 > 0xFFFFFFFFFFFFFFFBLL || v164 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 164) = *(*this + v164);
            goto LABEL_344;
          case 54:
            *v7 |= 0x100000000000uLL;
            v32 = *(this + 1);
            if (v32 > 0xFFFFFFFFFFFFFFFBLL || v32 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 220) = *(*this + v32);
            goto LABEL_344;
          case 55:
            *v7 |= 8uLL;
            v147 = *(this + 1);
            v146 = *(this + 2);
            v148 = *this;
            if (v147 <= 0xFFFFFFFFFFFFFFF5 && v147 + 10 <= v146)
            {
              v149 = 0;
              v150 = 0;
              v151 = 0;
              v152 = (v148 + v147);
              v153 = v147 + 1;
              do
              {
                *(this + 1) = v153;
                v154 = *v152++;
                v151 |= (v154 & 0x7F) << v149;
                if ((v154 & 0x80) == 0)
                {
                  goto LABEL_380;
                }

                v149 += 7;
                ++v153;
                v15 = v150++ > 8;
              }

              while (!v15);
LABEL_333:
              v151 = 0;
              goto LABEL_380;
            }

            v209 = 0;
            v210 = 0;
            v151 = 0;
            v18 = v146 >= v147;
            v211 = v146 - v147;
            if (!v18)
            {
              v211 = 0;
            }

            v212 = (v148 + v147);
            v213 = v147 + 1;
            while (2)
            {
              if (v211)
              {
                v214 = *v212;
                *(this + 1) = v213;
                v151 |= (v214 & 0x7F) << v209;
                if (v214 < 0)
                {
                  v209 += 7;
                  --v211;
                  ++v212;
                  ++v213;
                  v15 = v210++ > 8;
                  if (v15)
                  {
                    goto LABEL_333;
                  }

                  continue;
                }

                if (*(this + 24))
                {
                  v151 = 0;
                }
              }

              else
              {
                v151 = 0;
                *(this + 24) = 1;
              }

              break;
            }

LABEL_380:
            *(a1 + 32) = v151;
            goto LABEL_345;
          case 56:
            *v7 |= 0x10uLL;
            v156 = *(this + 1);
            v155 = *(this + 2);
            v157 = *this;
            if (v156 <= 0xFFFFFFFFFFFFFFF5 && v156 + 10 <= v155)
            {
              v158 = 0;
              v159 = 0;
              v160 = 0;
              v161 = (v157 + v156);
              v162 = v156 + 1;
              do
              {
                *(this + 1) = v162;
                v163 = *v161++;
                v160 |= (v163 & 0x7F) << v158;
                if ((v163 & 0x80) == 0)
                {
                  goto LABEL_383;
                }

                v158 += 7;
                ++v162;
                v15 = v159++ > 8;
              }

              while (!v15);
LABEL_341:
              v160 = 0;
              goto LABEL_383;
            }

            v215 = 0;
            v216 = 0;
            v160 = 0;
            v18 = v155 >= v156;
            v217 = v155 - v156;
            if (!v18)
            {
              v217 = 0;
            }

            v218 = (v157 + v156);
            v219 = v156 + 1;
            break;
          case 57:
            *v7 |= 0x1000000uLL;
            v34 = *(this + 1);
            if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 140) = *(*this + v34);
            goto LABEL_344;
          case 58:
            *v7 |= 0x2000000000000000uLL;
            v138 = *(this + 1);
            if (v138 > 0xFFFFFFFFFFFFFFFBLL || v138 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 288) = *(*this + v138);
            goto LABEL_344;
          case 59:
            *v7 |= 0x40000000000uLL;
            v62 = *(this + 1);
            if (v62 > 0xFFFFFFFFFFFFFFFBLL || v62 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 212) = *(*this + v62);
            goto LABEL_344;
          case 60:
            *v7 |= 0x40000uLL;
            v140 = *(this + 1);
            if (v140 > 0xFFFFFFFFFFFFFFFBLL || v140 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 116) = *(*this + v140);
            goto LABEL_344;
          case 61:
            *v7 |= 0x80000000000000uLL;
            v75 = *(this + 1);
            if (v75 > 0xFFFFFFFFFFFFFFFBLL || v75 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 264) = *(*this + v75);
            goto LABEL_344;
          case 62:
            *v7 |= 0x1000000000uLL;
            v107 = *(this + 1);
            if (v107 > 0xFFFFFFFFFFFFFFFBLL || v107 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 188) = *(*this + v107);
            goto LABEL_344;
          case 63:
            *v7 |= 0x200000uLL;
            v117 = *(this + 1);
            if (v117 > 0xFFFFFFFFFFFFFFFBLL || v117 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 128) = *(*this + v117);
            goto LABEL_344;
          case 64:
            *v7 |= 0x400000000000000uLL;
            v83 = *(this + 1);
            if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(a1 + 276) = *(*this + v83);
            goto LABEL_344;
          case 65:
            *v7 |= 0x8000000000uLL;
            v76 = *(this + 1);
            if (v76 <= 0xFFFFFFFFFFFFFFFBLL && v76 + 4 <= *(this + 2))
            {
              *(a1 + 200) = *(*this + v76);
              goto LABEL_344;
            }

LABEL_265:
            *(this + 24) = 1;
            goto LABEL_345;
          default:
            goto LABEL_266;
        }

        while (1)
        {
          if (!v217)
          {
            v160 = 0;
            *(this + 24) = 1;
            goto LABEL_383;
          }

          v220 = *v218;
          *(this + 1) = v219;
          v160 |= (v220 & 0x7F) << v215;
          if ((v220 & 0x80) == 0)
          {
            break;
          }

          v215 += 7;
          --v217;
          ++v218;
          ++v219;
          v15 = v216++ > 8;
          if (v15)
          {
            goto LABEL_341;
          }
        }

        if (*(this + 24))
        {
          v160 = 0;
        }

LABEL_383:
        *(a1 + 40) = v160;
      }

LABEL_345:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_385:
  v222 = v4 ^ 1;
  return v222 & 1;
}

uint64_t sub_245DDD1D0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 324);
  if ((v4 & 8) != 0)
  {
    v5 = *(result + 312);
    result = PB::Writer::write(this);
    v4 = *(v3 + 324);
  }

  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 304));
    v4 = *(v3 + 324);
  }

  v6 = (v3 + 316);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 308));
  }

  v7 = *v6;
  if ((*v6 & 0x20) != 0)
  {
    v9 = *(v3 + 48);
    result = PB::Writer::writeVarInt(this);
    v7 = *v6;
    if ((*v6 & 0x40) == 0)
    {
LABEL_9:
      if ((v7 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_77;
    }
  }

  else if ((v7 & 0x40) == 0)
  {
    goto LABEL_9;
  }

  v10 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v7 = *v6;
  if ((*v6 & 1) == 0)
  {
LABEL_10:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_78;
  }

LABEL_77:
  v11 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v7 = *v6;
  if ((*v6 & 0x8000) == 0)
  {
LABEL_11:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_79;
  }

LABEL_78:
  result = PB::Writer::write(this, *(v3 + 104));
  v7 = *v6;
  if ((*v6 & 0x80) == 0)
  {
LABEL_12:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_80;
  }

LABEL_79:
  v12 = *(v3 + 64);
  result = PB::Writer::writeVarInt(this);
  v7 = *v6;
  if ((*v6 & 0x100) == 0)
  {
LABEL_13:
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_81;
  }

LABEL_80:
  v13 = *(v3 + 72);
  result = PB::Writer::writeVarInt(this);
  v7 = *v6;
  if ((*v6 & 0x20000) == 0)
  {
LABEL_14:
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_82;
  }

LABEL_81:
  result = PB::Writer::write(this, *(v3 + 112));
  v7 = *v6;
  if ((*v6 & 0x10000) == 0)
  {
LABEL_15:
    if ((v7 & 0x2000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_83;
  }

LABEL_82:
  result = PB::Writer::write(this, *(v3 + 108));
  v7 = *v6;
  if ((*v6 & 0x2000000) == 0)
  {
LABEL_16:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_84;
  }

LABEL_83:
  result = PB::Writer::write(this, *(v3 + 144));
  v7 = *v6;
  if ((*v6 & 0x200) == 0)
  {
LABEL_17:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_85;
  }

LABEL_84:
  result = PB::Writer::write(this, *(v3 + 80));
  v7 = *v6;
  if ((*v6 & 0x400) == 0)
  {
LABEL_18:
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_86;
  }

LABEL_85:
  result = PB::Writer::write(this, *(v3 + 84));
  v7 = *v6;
  if ((*v6 & 0x800000) == 0)
  {
LABEL_19:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_87;
  }

LABEL_86:
  result = PB::Writer::write(this, *(v3 + 136));
  v7 = *v6;
  if ((*v6 & 0x4000) == 0)
  {
LABEL_20:
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_88;
  }

LABEL_87:
  result = PB::Writer::write(this, *(v3 + 100));
  v7 = *v6;
  if ((*v6 & 0x400000) == 0)
  {
LABEL_21:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_89;
  }

LABEL_88:
  result = PB::Writer::write(this, *(v3 + 132));
  v7 = *v6;
  if ((*v6 & 0x2000) == 0)
  {
LABEL_22:
    if ((v7 & 0x8000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_90;
  }

LABEL_89:
  result = PB::Writer::write(this, *(v3 + 96));
  v7 = *v6;
  if ((*v6 & 0x8000000) == 0)
  {
LABEL_23:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_91;
  }

LABEL_90:
  result = PB::Writer::write(this, *(v3 + 152));
  v7 = *v6;
  if ((*v6 & 0x100000) == 0)
  {
LABEL_24:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_92;
  }

LABEL_91:
  result = PB::Writer::write(this, *(v3 + 124));
  v7 = *v6;
  if ((*v6 & 0x1000) == 0)
  {
LABEL_25:
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_93;
  }

LABEL_92:
  result = PB::Writer::write(this, *(v3 + 92));
  v7 = *v6;
  if ((*v6 & 0x80000) == 0)
  {
LABEL_26:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_94;
  }

LABEL_93:
  result = PB::Writer::write(this, *(v3 + 120));
  v7 = *v6;
  if ((*v6 & 0x800) == 0)
  {
LABEL_27:
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_95;
  }

LABEL_94:
  result = PB::Writer::write(this, *(v3 + 88));
  v7 = *v6;
  if ((*v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v7 & 0x40000000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_96;
  }

LABEL_95:
  result = PB::Writer::write(this, *(v3 + 148));
  v7 = *v6;
  if ((*v6 & 0x40000000000000) == 0)
  {
LABEL_29:
    if ((v7 & 0x20000000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_97;
  }

LABEL_96:
  result = PB::Writer::write(this, *(v3 + 260));
  v7 = *v6;
  if ((*v6 & 0x20000000000000) == 0)
  {
LABEL_30:
    if ((v7 & 0x4000000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_98;
  }

LABEL_97:
  result = PB::Writer::write(this, *(v3 + 256));
  v7 = *v6;
  if ((*v6 & 0x4000000000000000) == 0)
  {
LABEL_31:
    if ((v7 & 0x800000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_99;
  }

LABEL_98:
  result = PB::Writer::write(this, *(v3 + 292));
  v7 = *v6;
  if ((*v6 & 0x800000000000) == 0)
  {
LABEL_32:
    if ((v7 & 0x1000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_100;
  }

LABEL_99:
  result = PB::Writer::write(this, *(v3 + 232));
  v7 = *v6;
  if ((*v6 & 0x1000000000000) == 0)
  {
LABEL_33:
    if ((v7 & 0x1000000000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_101;
  }

LABEL_100:
  result = PB::Writer::write(this, *(v3 + 236));
  v7 = *v6;
  if ((*v6 & 0x1000000000000000) == 0)
  {
LABEL_34:
    if ((v7 & 0x10000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_102;
  }

LABEL_101:
  result = PB::Writer::write(this, *(v3 + 284));
  v7 = *v6;
  if ((*v6 & 0x10000000000000) == 0)
  {
LABEL_35:
    if ((v7 & 0x800000000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_103;
  }

LABEL_102:
  result = PB::Writer::write(this, *(v3 + 252));
  v7 = *v6;
  if ((*v6 & 0x800000000000000) == 0)
  {
LABEL_36:
    if ((v7 & 0x8000000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_103:
  result = PB::Writer::write(this, *(v3 + 280));
  if ((*v6 & 0x8000000000000) != 0)
  {
LABEL_37:
    result = PB::Writer::write(this, *(v3 + 248));
  }

LABEL_38:
  if (*(v3 + 324))
  {
    result = PB::Writer::write(this, *(v3 + 300));
  }

  v8 = *v6;
  if ((*v6 & 0x200000000000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 272));
    v8 = *v6;
    if ((*v6 & 0x4000000000000) == 0)
    {
LABEL_42:
      if ((v8 & 0x100000000000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_107;
    }
  }

  else if ((v8 & 0x4000000000000) == 0)
  {
    goto LABEL_42;
  }

  result = PB::Writer::write(this, *(v3 + 244));
  v8 = *v6;
  if ((*v6 & 0x100000000000000) == 0)
  {
LABEL_43:
    if ((v8 & 0x2000000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_108;
  }

LABEL_107:
  result = PB::Writer::write(this, *(v3 + 268));
  v8 = *v6;
  if ((*v6 & 0x2000000000000) == 0)
  {
LABEL_44:
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_109;
  }

LABEL_108:
  result = PB::Writer::write(this, *(v3 + 240));
  v8 = *v6;
  if ((*v6 & 0x8000000000000000) == 0)
  {
LABEL_45:
    if ((v8 & 0x800000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_110;
  }

LABEL_109:
  result = PB::Writer::write(this, *(v3 + 296));
  v8 = *v6;
  if ((*v6 & 0x800000000) == 0)
  {
LABEL_46:
    if ((v8 & 0x400000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_111;
  }

LABEL_110:
  result = PB::Writer::write(this, *(v3 + 184));
  v8 = *v6;
  if ((*v6 & 0x400000000) == 0)
  {
LABEL_47:
    if ((v8 & 0x80000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_112;
  }

LABEL_111:
  result = PB::Writer::write(this, *(v3 + 180));
  v8 = *v6;
  if ((*v6 & 0x80000000000) == 0)
  {
LABEL_48:
    if ((v8 & 0x10000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_113;
  }

LABEL_112:
  result = PB::Writer::write(this, *(v3 + 216));
  v8 = *v6;
  if ((*v6 & 0x10000000) == 0)
  {
LABEL_49:
    if ((v8 & 0x20000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_114;
  }

LABEL_113:
  result = PB::Writer::write(this, *(v3 + 156));
  v8 = *v6;
  if ((*v6 & 0x20000000) == 0)
  {
LABEL_50:
    if ((v8 & 0x20000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_115;
  }

LABEL_114:
  result = PB::Writer::write(this, *(v3 + 160));
  v8 = *v6;
  if ((*v6 & 0x20000000000) == 0)
  {
LABEL_51:
    if ((v8 & 0x200000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_116;
  }

LABEL_115:
  result = PB::Writer::write(this, *(v3 + 208));
  v8 = *v6;
  if ((*v6 & 0x200000000) == 0)
  {
LABEL_52:
    if ((v8 & 0x10000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_117;
  }

LABEL_116:
  result = PB::Writer::write(this, *(v3 + 176));
  v8 = *v6;
  if ((*v6 & 0x10000000000) == 0)
  {
LABEL_53:
    if ((v8 & 0x100000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_118;
  }

LABEL_117:
  result = PB::Writer::write(this, *(v3 + 204));
  v8 = *v6;
  if ((*v6 & 0x100000000) == 0)
  {
LABEL_54:
    if ((v8 & 0x200000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_119;
  }

LABEL_118:
  result = PB::Writer::write(this, *(v3 + 172));
  v8 = *v6;
  if ((*v6 & 0x200000000000) == 0)
  {
LABEL_55:
    if ((v8 & 0x4000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_120;
  }

LABEL_119:
  result = PB::Writer::write(this, *(v3 + 224));
  v8 = *v6;
  if ((*v6 & 0x4000000000) == 0)
  {
LABEL_56:
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_121;
  }

LABEL_120:
  result = PB::Writer::write(this, *(v3 + 196));
  v8 = *v6;
  if ((*v6 & 0x80000000) == 0)
  {
LABEL_57:
    if ((v8 & 0x2000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_122;
  }

LABEL_121:
  result = PB::Writer::write(this, *(v3 + 168));
  v8 = *v6;
  if ((*v6 & 0x2000000000) == 0)
  {
LABEL_58:
    if ((v8 & 0x40000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_123;
  }

LABEL_122:
  result = PB::Writer::write(this, *(v3 + 192));
  v8 = *v6;
  if ((*v6 & 0x40000000) == 0)
  {
LABEL_59:
    if ((v8 & 0x100000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_124;
  }

LABEL_123:
  result = PB::Writer::write(this, *(v3 + 164));
  v8 = *v6;
  if ((*v6 & 0x100000000000) == 0)
  {
LABEL_60:
    if ((v8 & 8) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_125;
  }

LABEL_124:
  result = PB::Writer::write(this, *(v3 + 220));
  v8 = *v6;
  if ((*v6 & 8) == 0)
  {
LABEL_61:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_126;
  }

LABEL_125:
  v14 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v8 = *v6;
  if ((*v6 & 0x10) == 0)
  {
LABEL_62:
    if ((v8 & 0x1000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_127;
  }

LABEL_126:
  v15 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v8 = *v6;
  if ((*v6 & 0x1000000) == 0)
  {
LABEL_63:
    if ((v8 & 0x2000000000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_128;
  }

LABEL_127:
  result = PB::Writer::write(this, *(v3 + 140));
  v8 = *v6;
  if ((*v6 & 0x2000000000000000) == 0)
  {
LABEL_64:
    if ((v8 & 0x40000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_129;
  }

LABEL_128:
  result = PB::Writer::write(this, *(v3 + 288));
  v8 = *v6;
  if ((*v6 & 0x40000000000) == 0)
  {
LABEL_65:
    if ((v8 & 0x40000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_130;
  }

LABEL_129:
  result = PB::Writer::write(this, *(v3 + 212));
  v8 = *v6;
  if ((*v6 & 0x40000) == 0)
  {
LABEL_66:
    if ((v8 & 0x80000000000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_131;
  }

LABEL_130:
  result = PB::Writer::write(this, *(v3 + 116));
  v8 = *v6;
  if ((*v6 & 0x80000000000000) == 0)
  {
LABEL_67:
    if ((v8 & 0x1000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_132;
  }

LABEL_131:
  result = PB::Writer::write(this, *(v3 + 264));
  v8 = *v6;
  if ((*v6 & 0x1000000000) == 0)
  {
LABEL_68:
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_133;
  }

LABEL_132:
  result = PB::Writer::write(this, *(v3 + 188));
  v8 = *v6;
  if ((*v6 & 0x200000) == 0)
  {
LABEL_69:
    if ((v8 & 0x400000000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_134;
  }

LABEL_133:
  result = PB::Writer::write(this, *(v3 + 128));
  v8 = *v6;
  if ((*v6 & 0x400000000000000) == 0)
  {
LABEL_70:
    if ((v8 & 0x8000000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_135;
  }

LABEL_134:
  result = PB::Writer::write(this, *(v3 + 276));
  v8 = *v6;
  if ((*v6 & 0x8000000000) == 0)
  {
LABEL_71:
    if ((v8 & 2) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_136;
  }

LABEL_135:
  result = PB::Writer::write(this, *(v3 + 200));
  v8 = *v6;
  if ((*v6 & 2) == 0)
  {
LABEL_72:
    if ((v8 & 4) == 0)
    {
      goto LABEL_73;
    }

LABEL_137:
    v17 = *(v3 + 24);
    result = PB::Writer::writeVarInt(this);
    if ((*v6 & 0x400000000000) == 0)
    {
      return result;
    }

    goto LABEL_138;
  }

LABEL_136:
  v16 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v8 = *v6;
  if ((*v6 & 4) != 0)
  {
    goto LABEL_137;
  }

LABEL_73:
  if ((v8 & 0x400000000000) == 0)
  {
    return result;
  }

LABEL_138:
  v18 = *(v3 + 228);

  return PB::Writer::write(this, v18);
}

uint64_t sub_245DDD978(uint64_t result)
{
  *result = &unk_2858CE060;
  *(result + 28) = 0;
  return result;
}

void sub_245DDD9A0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DDD9D8(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CE060;
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

uint64_t sub_245DDDA90(uint64_t a1, PB::TextFormatter *this, char *a3)
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

uint64_t sub_245DDDB74(uint64_t a1, PB::Reader *this)
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

uint64_t sub_245DDE00C(uint64_t result, PB::Writer *this)
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

uint64_t sub_245DDE0E8(uint64_t result)
{
  *result = &unk_2858CE098;
  *(result + 28) = 0;
  return result;
}

void sub_245DDE110(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DDE148(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CE098;
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

uint64_t sub_245DDE200(uint64_t a1, PB::TextFormatter *this, char *a3)
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

uint64_t sub_245DDE2E4(uint64_t a1, PB::Reader *this)
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

uint64_t sub_245DDE77C(uint64_t result, PB::Writer *this)
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

uint64_t sub_245DDE858(uint64_t result)
{
  *result = &unk_2858CE0D0;
  *(result + 204) = 0;
  *(result + 212) = 0;
  return result;
}

void sub_245DDE884(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DDE8BC(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CE0D0;
  *(result + 204) = 0;
  *(result + 212) = 0;
  v2 = *(a2 + 204);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 204) = 1;
    *(result + 8) = v4;
    if ((*(a2 + 204) & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x10) != 0)
  {
LABEL_5:
    v5 = *(a2 + 40);
    v3 |= 0x10uLL;
    *(result + 204) = v3;
    *(result + 40) = v5;
  }

LABEL_6:
  if ((*(a2 + 212) & 2) != 0)
  {
    v7 = *(a2 + 188);
    v6 = 2;
    *(result + 212) = 2;
    *(result + 188) = v7;
  }

  else
  {
    v6 = 0;
  }

  if ((*(a2 + 206) & 0x20) != 0)
  {
    v8 = *(a2 + 108);
    v3 |= 0x200000uLL;
    *(result + 204) = v3;
    *(result + 108) = v8;
  }

  if ((*(a2 + 212) & 4) != 0)
  {
    v9 = *(a2 + 189);
    v6 |= 4u;
    *(result + 212) = v6;
    *(result + 189) = v9;
  }

  v10 = *(a2 + 204);
  if ((v10 & 2) != 0)
  {
    v61 = *(a2 + 16);
    v3 |= 2uLL;
    *(result + 204) = v3;
    *(result + 16) = v61;
    v10 = *(a2 + 204);
    if ((v10 & 0x400000) == 0)
    {
LABEL_15:
      if ((v10 & 0x4000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_128;
    }
  }

  else if ((v10 & 0x400000) == 0)
  {
    goto LABEL_15;
  }

  v62 = *(a2 + 112);
  v3 |= 0x400000uLL;
  *(result + 204) = v3;
  *(result + 112) = v62;
  v10 = *(a2 + 204);
  if ((v10 & 0x4000) == 0)
  {
LABEL_16:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_129;
  }

LABEL_128:
  v63 = *(a2 + 80);
  v3 |= 0x4000uLL;
  *(result + 204) = v3;
  *(result + 80) = v63;
  v10 = *(a2 + 204);
  if ((v10 & 0x40) == 0)
  {
LABEL_17:
    if ((v10 & 0x4000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_130;
  }

LABEL_129:
  v64 = *(a2 + 48);
  v3 |= 0x40uLL;
  *(result + 204) = v3;
  *(result + 48) = v64;
  v10 = *(a2 + 204);
  if ((v10 & 0x4000000) == 0)
  {
LABEL_18:
    if ((v10 & 0x400000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_131;
  }

LABEL_130:
  v65 = *(a2 + 128);
  v3 |= 0x4000000uLL;
  *(result + 204) = v3;
  *(result + 128) = v65;
  v10 = *(a2 + 204);
  if ((v10 & 0x400000000000000) == 0)
  {
LABEL_19:
    if ((v10 & 0x400000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_131:
  v66 = *(a2 + 181);
  v3 |= 0x400000000000000uLL;
  *(result + 204) = v3;
  *(result + 181) = v66;
  if ((*(a2 + 204) & 0x400000000) != 0)
  {
LABEL_20:
    v11 = *(a2 + 157);
    v3 |= 0x400000000uLL;
    *(result + 204) = v3;
    *(result + 157) = v11;
  }

LABEL_21:
  if ((*(a2 + 213) & 4) != 0)
  {
    v12 = *(a2 + 197);
    v6 |= 0x400u;
    *(result + 212) = v6;
    *(result + 197) = v12;
  }

  v13 = *(a2 + 204);
  if ((v13 & 0x40000000000) != 0)
  {
    v14 = *(a2 + 165);
    v3 |= 0x40000000000uLL;
    *(result + 204) = v3;
    *(result + 165) = v14;
    v13 = *(a2 + 204);
  }

  if ((v13 & 0x4000000000000) != 0)
  {
    v15 = *(a2 + 173);
    v3 |= 0x4000000000000uLL;
    *(result + 204) = v3;
    *(result + 173) = v15;
  }

  if ((*(a2 + 212) & 8) != 0)
  {
    v16 = *(a2 + 190);
    v6 |= 8u;
    *(result + 212) = v6;
    *(result + 190) = v16;
  }

  v17 = *(a2 + 204);
  if ((v17 & 0x40000) != 0)
  {
    v67 = *(a2 + 96);
    v3 |= 0x40000uLL;
    *(result + 204) = v3;
    *(result + 96) = v67;
    v17 = *(a2 + 204);
    if ((v17 & 0x400) == 0)
    {
LABEL_31:
      if ((v17 & 0x40000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_135;
    }
  }

  else if ((v17 & 0x400) == 0)
  {
    goto LABEL_31;
  }

  v68 = *(a2 + 64);
  v3 |= 0x400uLL;
  *(result + 204) = v3;
  *(result + 64) = v68;
  v17 = *(a2 + 204);
  if ((v17 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v17 & 0x4000000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_136;
  }

LABEL_135:
  v69 = *(a2 + 144);
  v3 |= 0x40000000uLL;
  *(result + 204) = v3;
  *(result + 144) = v69;
  v17 = *(a2 + 204);
  if ((v17 & 0x4000000000000000) == 0)
  {
LABEL_33:
    if ((v17 & 0x4000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_136:
  v70 = *(a2 + 185);
  v3 |= 0x4000000000000000uLL;
  *(result + 204) = v3;
  *(result + 185) = v70;
  if ((*(a2 + 204) & 0x4000000000) != 0)
  {
LABEL_34:
    v18 = *(a2 + 161);
    v3 |= 0x4000000000uLL;
    *(result + 204) = v3;
    *(result + 161) = v18;
  }

LABEL_35:
  if ((*(a2 + 213) & 0x40) != 0)
  {
    v19 = *(a2 + 201);
    v6 |= 0x4000u;
    *(result + 212) = v6;
    *(result + 201) = v19;
  }

  v20 = *(a2 + 204);
  if ((v20 & 0x400000000000) != 0)
  {
    v21 = *(a2 + 169);
    v3 |= 0x400000000000uLL;
    *(result + 204) = v3;
    *(result + 169) = v21;
    v20 = *(a2 + 204);
  }

  if ((v20 & 0x40000000000000) != 0)
  {
    v22 = *(a2 + 177);
    v3 |= 0x40000000000000uLL;
    *(result + 204) = v3;
    *(result + 177) = v22;
  }

  if ((*(a2 + 212) & 0x40) != 0)
  {
    v23 = *(a2 + 193);
    v6 |= 0x40u;
    *(result + 212) = v6;
    *(result + 193) = v23;
  }

  v24 = *(a2 + 204);
  if ((v24 & 4) != 0)
  {
    v71 = *(a2 + 24);
    v3 |= 4uLL;
    *(result + 204) = v3;
    *(result + 24) = v71;
    v24 = *(a2 + 204);
    if ((v24 & 0x800000) == 0)
    {
LABEL_45:
      if ((v24 & 0x8000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_140;
    }
  }

  else if ((v24 & 0x800000) == 0)
  {
    goto LABEL_45;
  }

  v72 = *(a2 + 116);
  v3 |= 0x800000uLL;
  *(result + 204) = v3;
  *(result + 116) = v72;
  v24 = *(a2 + 204);
  if ((v24 & 0x8000) == 0)
  {
LABEL_46:
    if ((v24 & 0x80) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_141;
  }

LABEL_140:
  v73 = *(a2 + 84);
  v3 |= 0x8000uLL;
  *(result + 204) = v3;
  *(result + 84) = v73;
  v24 = *(a2 + 204);
  if ((v24 & 0x80) == 0)
  {
LABEL_47:
    if ((v24 & 0x8000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_142;
  }

LABEL_141:
  v74 = *(a2 + 52);
  v3 |= 0x80uLL;
  *(result + 204) = v3;
  *(result + 52) = v74;
  v24 = *(a2 + 204);
  if ((v24 & 0x8000000) == 0)
  {
LABEL_48:
    if ((v24 & 0x800000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_143;
  }

LABEL_142:
  v75 = *(a2 + 132);
  v3 |= 0x8000000uLL;
  *(result + 204) = v3;
  *(result + 132) = v75;
  v24 = *(a2 + 204);
  if ((v24 & 0x800000000000000) == 0)
  {
LABEL_49:
    if ((v24 & 0x800000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_143:
  v76 = *(a2 + 182);
  v3 |= 0x800000000000000uLL;
  *(result + 204) = v3;
  *(result + 182) = v76;
  if ((*(a2 + 204) & 0x800000000) != 0)
  {
LABEL_50:
    v25 = *(a2 + 158);
    v3 |= 0x800000000uLL;
    *(result + 204) = v3;
    *(result + 158) = v25;
  }

LABEL_51:
  if ((*(a2 + 213) & 8) != 0)
  {
    v26 = *(a2 + 198);
    v6 |= 0x800u;
    *(result + 212) = v6;
    *(result + 198) = v26;
  }

  v27 = *(a2 + 204);
  if ((v27 & 0x80000000000) != 0)
  {
    v28 = *(a2 + 166);
    v3 |= 0x80000000000uLL;
    *(result + 204) = v3;
    *(result + 166) = v28;
    v27 = *(a2 + 204);
  }

  if ((v27 & 0x8000000000000) != 0)
  {
    v29 = *(a2 + 174);
    v3 |= 0x8000000000000uLL;
    *(result + 204) = v3;
    *(result + 174) = v29;
  }

  if ((*(a2 + 212) & 0x10) != 0)
  {
    v30 = *(a2 + 191);
    v6 |= 0x10u;
    *(result + 212) = v6;
    *(result + 191) = v30;
  }

  v31 = *(a2 + 204);
  if ((v31 & 0x80000) != 0)
  {
    v77 = *(a2 + 100);
    v3 |= 0x80000uLL;
    *(result + 204) = v3;
    *(result + 100) = v77;
    v31 = *(a2 + 204);
    if ((v31 & 0x800) == 0)
    {
LABEL_61:
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_147;
    }
  }

  else if ((v31 & 0x800) == 0)
  {
    goto LABEL_61;
  }

  v78 = *(a2 + 68);
  v3 |= 0x800uLL;
  *(result + 204) = v3;
  *(result + 68) = v78;
  v31 = *(a2 + 204);
  if ((v31 & 0x80000000) == 0)
  {
LABEL_62:
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_148;
  }

LABEL_147:
  v79 = *(a2 + 148);
  v3 |= 0x80000000uLL;
  *(result + 204) = v3;
  *(result + 148) = v79;
  v31 = *(a2 + 204);
  if ((v31 & 0x8000000000000000) == 0)
  {
LABEL_63:
    if ((v31 & 0x8000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_148:
  v80 = *(a2 + 186);
  v3 |= 0x8000000000000000;
  *(result + 204) = v3;
  *(result + 186) = v80;
  if ((*(a2 + 204) & 0x8000000000) != 0)
  {
LABEL_64:
    v32 = *(a2 + 162);
    v3 |= 0x8000000000uLL;
    *(result + 204) = v3;
    *(result + 162) = v32;
  }

LABEL_65:
  if ((*(a2 + 213) & 0x80) != 0)
  {
    v33 = *(a2 + 202);
    v6 |= 0x8000u;
    *(result + 212) = v6;
    *(result + 202) = v33;
  }

  v34 = *(a2 + 204);
  if ((v34 & 0x800000000000) != 0)
  {
    v35 = *(a2 + 170);
    v3 |= 0x800000000000uLL;
    *(result + 204) = v3;
    *(result + 170) = v35;
    v34 = *(a2 + 204);
  }

  if ((v34 & 0x80000000000000) != 0)
  {
    v36 = *(a2 + 178);
    v3 |= 0x80000000000000uLL;
    *(result + 204) = v3;
    *(result + 178) = v36;
  }

  if ((*(a2 + 212) & 0x80) != 0)
  {
    v37 = *(a2 + 194);
    v6 |= 0x80u;
    *(result + 212) = v6;
    *(result + 194) = v37;
  }

  v38 = *(a2 + 204);
  if ((v38 & 8) != 0)
  {
    v81 = *(a2 + 32);
    v3 |= 8uLL;
    *(result + 204) = v3;
    *(result + 32) = v81;
    v38 = *(a2 + 204);
    if ((v38 & 0x1000000) == 0)
    {
LABEL_75:
      if ((v38 & 0x10000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_152;
    }
  }

  else if ((v38 & 0x1000000) == 0)
  {
    goto LABEL_75;
  }

  v82 = *(a2 + 120);
  v3 |= 0x1000000uLL;
  *(result + 204) = v3;
  *(result + 120) = v82;
  v38 = *(a2 + 204);
  if ((v38 & 0x10000) == 0)
  {
LABEL_76:
    if ((v38 & 0x100) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_153;
  }

LABEL_152:
  v83 = *(a2 + 88);
  v3 |= 0x10000uLL;
  *(result + 204) = v3;
  *(result + 88) = v83;
  v38 = *(a2 + 204);
  if ((v38 & 0x100) == 0)
  {
LABEL_77:
    if ((v38 & 0x10000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_154;
  }

LABEL_153:
  v84 = *(a2 + 56);
  v3 |= 0x100uLL;
  *(result + 204) = v3;
  *(result + 56) = v84;
  v38 = *(a2 + 204);
  if ((v38 & 0x10000000) == 0)
  {
LABEL_78:
    if ((v38 & 0x1000000000000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_155;
  }

LABEL_154:
  v85 = *(a2 + 136);
  v3 |= 0x10000000uLL;
  *(result + 204) = v3;
  *(result + 136) = v85;
  v38 = *(a2 + 204);
  if ((v38 & 0x1000000000000000) == 0)
  {
LABEL_79:
    if ((v38 & 0x1000000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

LABEL_155:
  v86 = *(a2 + 183);
  v3 |= 0x1000000000000000uLL;
  *(result + 204) = v3;
  *(result + 183) = v86;
  if ((*(a2 + 204) & 0x1000000000) != 0)
  {
LABEL_80:
    v39 = *(a2 + 159);
    v3 |= 0x1000000000uLL;
    *(result + 204) = v3;
    *(result + 159) = v39;
  }

LABEL_81:
  if ((*(a2 + 213) & 0x10) != 0)
  {
    v40 = *(a2 + 199);
    v6 |= 0x1000u;
    *(result + 212) = v6;
    *(result + 199) = v40;
  }

  v41 = *(a2 + 204);
  if ((v41 & 0x100000000000) != 0)
  {
    v42 = *(a2 + 167);
    v3 |= 0x100000000000uLL;
    *(result + 204) = v3;
    *(result + 167) = v42;
    v41 = *(a2 + 204);
  }

  if ((v41 & 0x10000000000000) != 0)
  {
    v43 = *(a2 + 175);
    v3 |= 0x10000000000000uLL;
    *(result + 204) = v3;
    *(result + 175) = v43;
  }

  if ((*(a2 + 212) & 0x20) != 0)
  {
    v44 = *(a2 + 192);
    v6 |= 0x20u;
    *(result + 212) = v6;
    *(result + 192) = v44;
  }

  v45 = *(a2 + 204);
  if ((v45 & 0x100000) != 0)
  {
    v87 = *(a2 + 104);
    v3 |= 0x100000uLL;
    *(result + 204) = v3;
    *(result + 104) = v87;
    v45 = *(a2 + 204);
    if ((v45 & 0x1000) == 0)
    {
LABEL_91:
      if ((v45 & 0x100000000) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }
  }

  else if ((v45 & 0x1000) == 0)
  {
    goto LABEL_91;
  }

  v88 = *(a2 + 72);
  v3 |= 0x1000uLL;
  *(result + 204) = v3;
  *(result + 72) = v88;
  if ((*(a2 + 204) & 0x100000000) != 0)
  {
LABEL_92:
    v46 = *(a2 + 152);
    v3 |= 0x100000000uLL;
    *(result + 204) = v3;
    *(result + 152) = v46;
  }

LABEL_93:
  if (*(a2 + 212))
  {
    v47 = *(a2 + 187);
    v6 |= 1u;
    *(result + 212) = v6;
    *(result + 187) = v47;
  }

  if (*(a2 + 209))
  {
    v48 = *(a2 + 163);
    v3 |= 0x10000000000uLL;
    *(result + 204) = v3;
    *(result + 163) = v48;
  }

  if (*(a2 + 214))
  {
    v49 = *(a2 + 203);
    v6 |= 0x10000u;
    *(result + 212) = v6;
    *(result + 203) = v49;
  }

  v50 = *(a2 + 204);
  if ((v50 & 0x1000000000000) != 0)
  {
    v51 = *(a2 + 171);
    v3 |= 0x1000000000000uLL;
    *(result + 204) = v3;
    *(result + 171) = v51;
    v50 = *(a2 + 204);
  }

  if ((v50 & 0x100000000000000) != 0)
  {
    v52 = *(a2 + 179);
    v3 |= 0x100000000000000uLL;
    *(result + 204) = v3;
    *(result + 179) = v52;
  }

  if (*(a2 + 213))
  {
    v53 = *(a2 + 195);
    v6 |= 0x100u;
    *(result + 212) = v6;
    *(result + 195) = v53;
  }

  v54 = *(a2 + 204);
  if ((v54 & 0x2000) != 0)
  {
    v89 = *(a2 + 76);
    v3 |= 0x2000uLL;
    *(result + 204) = v3;
    *(result + 76) = v89;
    v54 = *(a2 + 204);
    if ((v54 & 0x20) == 0)
    {
LABEL_107:
      if ((v54 & 0x2000000) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_162;
    }
  }

  else if ((v54 & 0x20) == 0)
  {
    goto LABEL_107;
  }

  v90 = *(a2 + 44);
  v3 |= 0x20uLL;
  *(result + 204) = v3;
  *(result + 44) = v90;
  v54 = *(a2 + 204);
  if ((v54 & 0x2000000) == 0)
  {
LABEL_108:
    if ((v54 & 0x200000000000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_163;
  }

LABEL_162:
  v91 = *(a2 + 124);
  v3 |= 0x2000000uLL;
  *(result + 204) = v3;
  *(result + 124) = v91;
  v54 = *(a2 + 204);
  if ((v54 & 0x200000000000000) == 0)
  {
LABEL_109:
    if ((v54 & 0x200000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_110;
  }

LABEL_163:
  v92 = *(a2 + 180);
  v3 |= 0x200000000000000uLL;
  *(result + 204) = v3;
  *(result + 180) = v92;
  if ((*(a2 + 204) & 0x200000000) != 0)
  {
LABEL_110:
    v55 = *(a2 + 156);
    v3 |= 0x200000000uLL;
    *(result + 204) = v3;
    *(result + 156) = v55;
  }

LABEL_111:
  if ((*(a2 + 213) & 2) != 0)
  {
    v56 = *(a2 + 196);
    v6 |= 0x200u;
    *(result + 212) = v6;
    *(result + 196) = v56;
  }

  v57 = *(a2 + 204);
  if ((v57 & 0x20000000000) != 0)
  {
    v93 = *(a2 + 164);
    v3 |= 0x20000000000uLL;
    *(result + 204) = v3;
    *(result + 164) = v93;
    v57 = *(a2 + 204);
    if ((v57 & 0x2000000000000) == 0)
    {
LABEL_115:
      if ((v57 & 0x20000) == 0)
      {
        goto LABEL_116;
      }

      goto LABEL_167;
    }
  }

  else if ((v57 & 0x2000000000000) == 0)
  {
    goto LABEL_115;
  }

  v94 = *(a2 + 172);
  v3 |= 0x2000000000000uLL;
  *(result + 204) = v3;
  *(result + 172) = v94;
  v57 = *(a2 + 204);
  if ((v57 & 0x20000) == 0)
  {
LABEL_116:
    if ((v57 & 0x200) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_168;
  }

LABEL_167:
  v95 = *(a2 + 92);
  v3 |= 0x20000uLL;
  *(result + 204) = v3;
  *(result + 92) = v95;
  v57 = *(a2 + 204);
  if ((v57 & 0x200) == 0)
  {
LABEL_117:
    if ((v57 & 0x20000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_169;
  }

LABEL_168:
  v96 = *(a2 + 60);
  v3 |= 0x200uLL;
  *(result + 204) = v3;
  *(result + 60) = v96;
  v57 = *(a2 + 204);
  if ((v57 & 0x20000000) == 0)
  {
LABEL_118:
    if ((v57 & 0x2000000000000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_170;
  }

LABEL_169:
  v97 = *(a2 + 140);
  v3 |= 0x20000000uLL;
  *(result + 204) = v3;
  *(result + 140) = v97;
  v57 = *(a2 + 204);
  if ((v57 & 0x2000000000000000) == 0)
  {
LABEL_119:
    if ((v57 & 0x2000000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

LABEL_170:
  v98 = *(a2 + 184);
  v3 |= 0x2000000000000000uLL;
  *(result + 204) = v3;
  *(result + 184) = v98;
  if ((*(a2 + 204) & 0x2000000000) != 0)
  {
LABEL_120:
    v58 = *(a2 + 160);
    v3 |= 0x2000000000uLL;
    *(result + 204) = v3;
    *(result + 160) = v58;
  }

LABEL_121:
  if ((*(a2 + 213) & 0x20) != 0)
  {
    v59 = *(a2 + 200);
    *(result + 212) = v6 | 0x2000;
    *(result + 200) = v59;
  }

  v60 = *(a2 + 204);
  if ((v60 & 0x200000000000) == 0)
  {
    if ((v60 & 0x20000000000000) == 0)
    {
      return result;
    }

LABEL_173:
    v100 = *(a2 + 176);
    *(result + 204) = v3 | 0x20000000000000;
    *(result + 176) = v100;
    return result;
  }

  v99 = *(a2 + 168);
  v3 |= 0x200000000000uLL;
  *(result + 204) = v3;
  *(result + 168) = v99;
  if ((*(a2 + 204) & 0x20000000000000) != 0)
  {
    goto LABEL_173;
  }

  return result;
}

uint64_t sub_245DDF154(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 204);
  if ((v5 & 0x200000000) != 0)
  {
    v12 = *(a1 + 156);
    PB::TextFormatter::format(this, "chaosMet");
    v5 = *(a1 + 204);
    if ((v5 & 0x400000000) == 0)
    {
LABEL_3:
      if ((v5 & 0x800000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    }
  }

  else if ((v5 & 0x400000000) == 0)
  {
    goto LABEL_3;
  }

  v13 = *(a1 + 157);
  PB::TextFormatter::format(this, "chaosMet0");
  v5 = *(a1 + 204);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_4:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_92;
  }

LABEL_91:
  v14 = *(a1 + 158);
  PB::TextFormatter::format(this, "chaosMet1");
  v5 = *(a1 + 204);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_5:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_93;
  }

LABEL_92:
  v15 = *(a1 + 159);
  PB::TextFormatter::format(this, "chaosMet2");
  v5 = *(a1 + 204);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_6:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_94;
  }

LABEL_93:
  v16 = *(a1 + 160);
  PB::TextFormatter::format(this, "chaosMetRollover");
  v5 = *(a1 + 204);
  if ((v5 & 0x4000000000) == 0)
  {
LABEL_7:
    if ((v5 & 0x8000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_95;
  }

LABEL_94:
  v17 = *(a1 + 161);
  PB::TextFormatter::format(this, "chaosMetRollover0");
  v5 = *(a1 + 204);
  if ((v5 & 0x8000000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x10000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_96;
  }

LABEL_95:
  v18 = *(a1 + 162);
  PB::TextFormatter::format(this, "chaosMetRollover1");
  v5 = *(a1 + 204);
  if ((v5 & 0x10000000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x20000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_97;
  }

LABEL_96:
  v19 = *(a1 + 163);
  PB::TextFormatter::format(this, "chaosMetRollover2");
  v5 = *(a1 + 204);
  if ((v5 & 0x20000000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x40000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_98;
  }

LABEL_97:
  v20 = *(a1 + 164);
  PB::TextFormatter::format(this, "chaosOrSaturationMet");
  v5 = *(a1 + 204);
  if ((v5 & 0x40000000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x80000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_99;
  }

LABEL_98:
  v21 = *(a1 + 165);
  PB::TextFormatter::format(this, "chaosOrSaturationMet0");
  v5 = *(a1 + 204);
  if ((v5 & 0x80000000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x100000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_100;
  }

LABEL_99:
  v22 = *(a1 + 166);
  PB::TextFormatter::format(this, "chaosOrSaturationMet1");
  v5 = *(a1 + 204);
  if ((v5 & 0x100000000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x200000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_101;
  }

LABEL_100:
  v23 = *(a1 + 167);
  PB::TextFormatter::format(this, "chaosOrSaturationMet2");
  v5 = *(a1 + 204);
  if ((v5 & 0x200000000000) == 0)
  {
LABEL_14:
    if ((v5 & 0x400000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_102;
  }

LABEL_101:
  v24 = *(a1 + 168);
  PB::TextFormatter::format(this, "chaosOrSaturationMetRollover");
  v5 = *(a1 + 204);
  if ((v5 & 0x400000000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x800000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_103;
  }

LABEL_102:
  v25 = *(a1 + 169);
  PB::TextFormatter::format(this, "chaosOrSaturationMetRollover0");
  v5 = *(a1 + 204);
  if ((v5 & 0x800000000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x1000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_104;
  }

LABEL_103:
  v26 = *(a1 + 170);
  PB::TextFormatter::format(this, "chaosOrSaturationMetRollover1");
  v5 = *(a1 + 204);
  if ((v5 & 0x1000000000000) == 0)
  {
LABEL_17:
    if ((v5 & 0x2000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_105;
  }

LABEL_104:
  v27 = *(a1 + 171);
  PB::TextFormatter::format(this, "chaosOrSaturationMetRollover2");
  v5 = *(a1 + 204);
  if ((v5 & 0x2000000000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x4000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_106;
  }

LABEL_105:
  v28 = *(a1 + 172);
  PB::TextFormatter::format(this, "energyAndChaosOrSaturationMet");
  v5 = *(a1 + 204);
  if ((v5 & 0x4000000000000) == 0)
  {
LABEL_19:
    if ((v5 & 0x8000000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_107;
  }

LABEL_106:
  v29 = *(a1 + 173);
  PB::TextFormatter::format(this, "energyAndChaosOrSaturationMet0");
  v5 = *(a1 + 204);
  if ((v5 & 0x8000000000000) == 0)
  {
LABEL_20:
    if ((v5 & 0x10000000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_108;
  }

LABEL_107:
  v30 = *(a1 + 174);
  PB::TextFormatter::format(this, "energyAndChaosOrSaturationMet1");
  v5 = *(a1 + 204);
  if ((v5 & 0x10000000000000) == 0)
  {
LABEL_21:
    if ((v5 & 0x20000000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_109;
  }

LABEL_108:
  v31 = *(a1 + 175);
  PB::TextFormatter::format(this, "energyAndChaosOrSaturationMet2");
  v5 = *(a1 + 204);
  if ((v5 & 0x20000000000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x40000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_110;
  }

LABEL_109:
  v32 = *(a1 + 176);
  PB::TextFormatter::format(this, "energyAndChaosOrSaturationMetRollover");
  v5 = *(a1 + 204);
  if ((v5 & 0x40000000000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x80000000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_111;
  }

LABEL_110:
  v33 = *(a1 + 177);
  PB::TextFormatter::format(this, "energyAndChaosOrSaturationMetRollover0");
  v5 = *(a1 + 204);
  if ((v5 & 0x80000000000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x100000000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_112;
  }

LABEL_111:
  v34 = *(a1 + 178);
  PB::TextFormatter::format(this, "energyAndChaosOrSaturationMetRollover1");
  v5 = *(a1 + 204);
  if ((v5 & 0x100000000000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x200000000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_113;
  }

LABEL_112:
  v35 = *(a1 + 179);
  PB::TextFormatter::format(this, "energyAndChaosOrSaturationMetRollover2");
  v5 = *(a1 + 204);
  if ((v5 & 0x200000000000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x400000000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_114;
  }

LABEL_113:
  v36 = *(a1 + 180);
  PB::TextFormatter::format(this, "energyMet");
  v5 = *(a1 + 204);
  if ((v5 & 0x400000000000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x800000000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_115;
  }

LABEL_114:
  v37 = *(a1 + 181);
  PB::TextFormatter::format(this, "energyMet0");
  v5 = *(a1 + 204);
  if ((v5 & 0x800000000000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x1000000000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_116;
  }

LABEL_115:
  v38 = *(a1 + 182);
  PB::TextFormatter::format(this, "energyMet1");
  v5 = *(a1 + 204);
  if ((v5 & 0x1000000000000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x2000000000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_117;
  }

LABEL_116:
  v39 = *(a1 + 183);
  PB::TextFormatter::format(this, "energyMet2");
  v5 = *(a1 + 204);
  if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x4000000000000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_118:
    v41 = *(a1 + 185);
    PB::TextFormatter::format(this, "energyMetRollover0");
    if ((*(a1 + 204) & 0x8000000000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_119;
  }

LABEL_117:
  v40 = *(a1 + 184);
  PB::TextFormatter::format(this, "energyMetRollover");
  v5 = *(a1 + 204);
  if ((v5 & 0x4000000000000000) != 0)
  {
    goto LABEL_118;
  }

LABEL_31:
  if ((v5 & 0x8000000000000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_119:
  v42 = *(a1 + 186);
  PB::TextFormatter::format(this, "energyMetRollover1");
LABEL_32:
  if (*(a1 + 212))
  {
    v6 = *(a1 + 187);
    PB::TextFormatter::format(this, "energyMetRollover2");
  }

  v7 = *(a1 + 204);
  if ((v7 & 0x10) != 0)
  {
    v43 = *(a1 + 40);
    PB::TextFormatter::format(this, "epochNumber");
    v7 = *(a1 + 204);
    if ((v7 & 0x20) == 0)
    {
LABEL_36:
      if ((v7 & 0x40) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_122;
    }
  }

  else if ((v7 & 0x20) == 0)
  {
    goto LABEL_36;
  }

  PB::TextFormatter::format(this, "maxChaos", *(a1 + 44));
  v7 = *(a1 + 204);
  if ((v7 & 0x40) == 0)
  {
LABEL_37:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_123;
  }

LABEL_122:
  PB::TextFormatter::format(this, "maxChaos0", *(a1 + 48));
  v7 = *(a1 + 204);
  if ((v7 & 0x80) == 0)
  {
LABEL_38:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_124;
  }

LABEL_123:
  PB::TextFormatter::format(this, "maxChaos1", *(a1 + 52));
  v7 = *(a1 + 204);
  if ((v7 & 0x100) == 0)
  {
LABEL_39:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_125;
  }

LABEL_124:
  PB::TextFormatter::format(this, "maxChaos2", *(a1 + 56));
  v7 = *(a1 + 204);
  if ((v7 & 0x200) == 0)
  {
LABEL_40:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_126;
  }

LABEL_125:
  PB::TextFormatter::format(this, "maxChaosRollover", *(a1 + 60));
  v7 = *(a1 + 204);
  if ((v7 & 0x400) == 0)
  {
LABEL_41:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_127;
  }

LABEL_126:
  PB::TextFormatter::format(this, "maxChaosRollover0", *(a1 + 64));
  v7 = *(a1 + 204);
  if ((v7 & 0x800) == 0)
  {
LABEL_42:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_128;
  }

LABEL_127:
  PB::TextFormatter::format(this, "maxChaosRollover1", *(a1 + 68));
  v7 = *(a1 + 204);
  if ((v7 & 0x1000) == 0)
  {
LABEL_43:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_129;
  }

LABEL_128:
  PB::TextFormatter::format(this, "maxChaosRollover2", *(a1 + 72));
  v7 = *(a1 + 204);
  if ((v7 & 0x2000) == 0)
  {
LABEL_44:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_130;
  }

LABEL_129:
  PB::TextFormatter::format(this, "maxEnergy", *(a1 + 76));
  v7 = *(a1 + 204);
  if ((v7 & 0x4000) == 0)
  {
LABEL_45:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_131;
  }

LABEL_130:
  PB::TextFormatter::format(this, "maxEnergy0", *(a1 + 80));
  v7 = *(a1 + 204);
  if ((v7 & 0x8000) == 0)
  {
LABEL_46:
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_132;
  }

LABEL_131:
  PB::TextFormatter::format(this, "maxEnergy1", *(a1 + 84));
  v7 = *(a1 + 204);
  if ((v7 & 0x10000) == 0)
  {
LABEL_47:
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_133;
  }

LABEL_132:
  PB::TextFormatter::format(this, "maxEnergy2", *(a1 + 88));
  v7 = *(a1 + 204);
  if ((v7 & 0x20000) == 0)
  {
LABEL_48:
    if ((v7 & 0x40000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_134;
  }

LABEL_133:
  PB::TextFormatter::format(this, "maxEnergyRollover", *(a1 + 92));
  v7 = *(a1 + 204);
  if ((v7 & 0x40000) == 0)
  {
LABEL_49:
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_135;
  }

LABEL_134:
  PB::TextFormatter::format(this, "maxEnergyRollover0", *(a1 + 96));
  v7 = *(a1 + 204);
  if ((v7 & 0x80000) == 0)
  {
LABEL_50:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_136;
  }

LABEL_135:
  PB::TextFormatter::format(this, "maxEnergyRollover1", *(a1 + 100));
  v7 = *(a1 + 204);
  if ((v7 & 0x100000) == 0)
  {
LABEL_51:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_137;
  }

LABEL_136:
  PB::TextFormatter::format(this, "maxEnergyRollover2", *(a1 + 104));
  v7 = *(a1 + 204);
  if ((v7 & 0x200000) == 0)
  {
LABEL_52:
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_138;
  }

LABEL_137:
  PB::TextFormatter::format(this, "maxRMS", *(a1 + 108));
  v7 = *(a1 + 204);
  if ((v7 & 0x400000) == 0)
  {
LABEL_53:
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_139;
  }

LABEL_138:
  PB::TextFormatter::format(this, "maxRMS0", *(a1 + 112));
  v7 = *(a1 + 204);
  if ((v7 & 0x800000) == 0)
  {
LABEL_54:
    if ((v7 & 0x1000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_140;
  }

LABEL_139:
  PB::TextFormatter::format(this, "maxRMS1", *(a1 + 116));
  v7 = *(a1 + 204);
  if ((v7 & 0x1000000) == 0)
  {
LABEL_55:
    if ((v7 & 0x2000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_141;
  }

LABEL_140:
  PB::TextFormatter::format(this, "maxRMS2", *(a1 + 120));
  v7 = *(a1 + 204);
  if ((v7 & 0x2000000) == 0)
  {
LABEL_56:
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_142;
  }

LABEL_141:
  PB::TextFormatter::format(this, "maxSaturation", *(a1 + 124));
  v7 = *(a1 + 204);
  if ((v7 & 0x4000000) == 0)
  {
LABEL_57:
    if ((v7 & 0x8000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_143;
  }

LABEL_142:
  PB::TextFormatter::format(this, "maxSaturation0", *(a1 + 128));
  v7 = *(a1 + 204);
  if ((v7 & 0x8000000) == 0)
  {
LABEL_58:
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_144;
  }

LABEL_143:
  PB::TextFormatter::format(this, "maxSaturation1", *(a1 + 132));
  v7 = *(a1 + 204);
  if ((v7 & 0x10000000) == 0)
  {
LABEL_59:
    if ((v7 & 0x20000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_145;
  }

LABEL_144:
  PB::TextFormatter::format(this, "maxSaturation2", *(a1 + 136));
  v7 = *(a1 + 204);
  if ((v7 & 0x20000000) == 0)
  {
LABEL_60:
    if ((v7 & 0x40000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_146;
  }

LABEL_145:
  PB::TextFormatter::format(this, "maxSaturationRollover", *(a1 + 140));
  v7 = *(a1 + 204);
  if ((v7 & 0x40000000) == 0)
  {
LABEL_61:
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_147;
  }

LABEL_146:
  PB::TextFormatter::format(this, "maxSaturationRollover0", *(a1 + 144));
  v7 = *(a1 + 204);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_62:
    if ((v7 & 0x100000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_147:
  PB::TextFormatter::format(this, "maxSaturationRollover1", *(a1 + 148));
  if ((*(a1 + 204) & 0x100000000) != 0)
  {
LABEL_63:
    PB::TextFormatter::format(this, "maxSaturationRollover2", *(a1 + 152));
  }

LABEL_64:
  v8 = *(a1 + 212);
  if ((v8 & 2) != 0)
  {
    v44 = *(a1 + 188);
    PB::TextFormatter::format(this, "passThru");
    v8 = *(a1 + 212);
    if ((v8 & 4) == 0)
    {
LABEL_66:
      if ((v8 & 8) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_151;
    }
  }

  else if ((v8 & 4) == 0)
  {
    goto LABEL_66;
  }

  v45 = *(a1 + 189);
  PB::TextFormatter::format(this, "passThruRollover");
  v8 = *(a1 + 212);
  if ((v8 & 8) == 0)
  {
LABEL_67:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_152;
  }

LABEL_151:
  v46 = *(a1 + 190);
  PB::TextFormatter::format(this, "passthru0");
  v8 = *(a1 + 212);
  if ((v8 & 0x10) == 0)
  {
LABEL_68:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_153;
  }

LABEL_152:
  v47 = *(a1 + 191);
  PB::TextFormatter::format(this, "passthru1");
  v8 = *(a1 + 212);
  if ((v8 & 0x20) == 0)
  {
LABEL_69:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_154;
  }

LABEL_153:
  v48 = *(a1 + 192);
  PB::TextFormatter::format(this, "passthru2");
  v8 = *(a1 + 212);
  if ((v8 & 0x40) == 0)
  {
LABEL_70:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_155;
  }

LABEL_154:
  v49 = *(a1 + 193);
  PB::TextFormatter::format(this, "passthruRollover0");
  v8 = *(a1 + 212);
  if ((v8 & 0x80) == 0)
  {
LABEL_71:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_156;
  }

LABEL_155:
  v50 = *(a1 + 194);
  PB::TextFormatter::format(this, "passthruRollover1");
  v8 = *(a1 + 212);
  if ((v8 & 0x100) == 0)
  {
LABEL_72:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_157;
  }

LABEL_156:
  v51 = *(a1 + 195);
  PB::TextFormatter::format(this, "passthruRollover2");
  v8 = *(a1 + 212);
  if ((v8 & 0x200) == 0)
  {
LABEL_73:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_158;
  }

LABEL_157:
  v52 = *(a1 + 196);
  PB::TextFormatter::format(this, "saturationMet");
  v8 = *(a1 + 212);
  if ((v8 & 0x400) == 0)
  {
LABEL_74:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_159;
  }

LABEL_158:
  v53 = *(a1 + 197);
  PB::TextFormatter::format(this, "saturationMet0");
  v8 = *(a1 + 212);
  if ((v8 & 0x800) == 0)
  {
LABEL_75:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_160;
  }

LABEL_159:
  v54 = *(a1 + 198);
  PB::TextFormatter::format(this, "saturationMet1");
  v8 = *(a1 + 212);
  if ((v8 & 0x1000) == 0)
  {
LABEL_76:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_161;
  }

LABEL_160:
  v55 = *(a1 + 199);
  PB::TextFormatter::format(this, "saturationMet2");
  v8 = *(a1 + 212);
  if ((v8 & 0x2000) == 0)
  {
LABEL_77:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_162;
  }

LABEL_161:
  v56 = *(a1 + 200);
  PB::TextFormatter::format(this, "saturationMetRollover");
  v8 = *(a1 + 212);
  if ((v8 & 0x4000) == 0)
  {
LABEL_78:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_163;
  }

LABEL_162:
  v57 = *(a1 + 201);
  PB::TextFormatter::format(this, "saturationMetRollover0");
  v8 = *(a1 + 212);
  if ((v8 & 0x8000) == 0)
  {
LABEL_79:
    if ((v8 & 0x10000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

LABEL_163:
  v58 = *(a1 + 202);
  PB::TextFormatter::format(this, "saturationMetRollover1");
  if ((*(a1 + 212) & 0x10000) != 0)
  {
LABEL_80:
    v9 = *(a1 + 203);
    PB::TextFormatter::format(this, "saturationMetRollover2");
  }

LABEL_81:
  v10 = *(a1 + 204);
  if (v10)
  {
    v59 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
    v10 = *(a1 + 204);
    if ((v10 & 2) == 0)
    {
LABEL_83:
      if ((v10 & 4) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_167;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_83;
  }

  v60 = *(a1 + 16);
  PB::TextFormatter::format(this, "timestamp0");
  v10 = *(a1 + 204);
  if ((v10 & 4) == 0)
  {
LABEL_84:
    if ((v10 & 8) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_167:
  v61 = *(a1 + 24);
  PB::TextFormatter::format(this, "timestamp1");
  if ((*(a1 + 204) & 8) != 0)
  {
LABEL_85:
    v11 = *(a1 + 32);
    PB::TextFormatter::format(this, "timestamp2");
  }

LABEL_86:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DDFBB4(uint64_t a1, PB::Reader *this)
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
            goto LABEL_407;
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
      if ((v10 >> 3) > 1102)
      {
        if ((v10 >> 3) <= 0x44E)
        {
          switch(v22)
          {
            case 1103:
              *(a1 + 204) |= 4uLL;
              v51 = *(this + 1);
              v50 = *(this + 2);
              v52 = *this;
              if (v51 <= 0xFFFFFFFFFFFFFFF5 && v51 + 10 <= v50)
              {
                v53 = 0;
                v54 = 0;
                v55 = 0;
                v56 = (v52 + v51);
                v57 = v51 + 1;
                do
                {
                  *(this + 1) = v57;
                  v58 = *v56++;
                  v55 |= (v58 & 0x7F) << v53;
                  if ((v58 & 0x80) == 0)
                  {
                    goto LABEL_393;
                  }

                  v53 += 7;
                  ++v57;
                  v14 = v54++ > 8;
                }

                while (!v14);
LABEL_274:
                v55 = 0;
                goto LABEL_393;
              }

              v288 = 0;
              v289 = 0;
              v55 = 0;
              v17 = v50 >= v51;
              v290 = v50 - v51;
              if (!v17)
              {
                v290 = 0;
              }

              v291 = (v52 + v51);
              v292 = v51 + 1;
              break;
            case 1104:
              *(a1 + 204) |= 0x800000uLL;
              v119 = *(this + 1);
              if (v119 > 0xFFFFFFFFFFFFFFFBLL || v119 + 4 > *(this + 2))
              {
                goto LABEL_220;
              }

              *(a1 + 116) = *(*this + v119);
              goto LABEL_382;
            case 1105:
              *(a1 + 204) |= 0x8000uLL;
              v101 = *(this + 1);
              if (v101 > 0xFFFFFFFFFFFFFFFBLL || v101 + 4 > *(this + 2))
              {
                goto LABEL_220;
              }

              *(a1 + 84) = *(*this + v101);
              goto LABEL_382;
            case 1106:
              *(a1 + 204) |= 0x80uLL;
              v112 = *(this + 1);
              if (v112 > 0xFFFFFFFFFFFFFFFBLL || v112 + 4 > *(this + 2))
              {
                goto LABEL_220;
              }

              *(a1 + 52) = *(*this + v112);
              goto LABEL_382;
            case 1107:
              *(a1 + 204) |= 0x8000000uLL;
              v89 = *(this + 1);
              if (v89 > 0xFFFFFFFFFFFFFFFBLL || v89 + 4 > *(this + 2))
              {
                goto LABEL_220;
              }

              *(a1 + 132) = *(*this + v89);
              goto LABEL_382;
            case 1108:
              *(a1 + 204) |= 0x800000000000000uLL;
              v152 = *(this + 1);
              if (v152 >= *(this + 2))
              {
                v155 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v153 = v152 + 1;
                v154 = *(*this + v152);
                *(this + 1) = v153;
                v155 = v154 != 0;
              }

              *(a1 + 182) = v155;
              goto LABEL_383;
            case 1109:
              *(a1 + 204) |= 0x800000000uLL;
              v158 = *(this + 1);
              if (v158 >= *(this + 2))
              {
                v161 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v159 = v158 + 1;
                v160 = *(*this + v158);
                *(this + 1) = v159;
                v161 = v160 != 0;
              }

              *(a1 + 158) = v161;
              goto LABEL_383;
            case 1110:
              *(a1 + 212) |= 0x800u;
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

              *(a1 + 198) = v117;
              goto LABEL_383;
            case 1111:
              *(a1 + 204) |= 0x80000000000uLL;
              v175 = *(this + 1);
              if (v175 >= *(this + 2))
              {
                v178 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v176 = v175 + 1;
                v177 = *(*this + v175);
                *(this + 1) = v176;
                v178 = v177 != 0;
              }

              *(a1 + 166) = v178;
              goto LABEL_383;
            case 1112:
              *(a1 + 204) |= 0x8000000000000uLL;
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

              *(a1 + 174) = v95;
              goto LABEL_383;
            case 1113:
              *(a1 + 212) |= 0x10u;
              v171 = *(this + 1);
              if (v171 >= *(this + 2))
              {
                v174 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v172 = v171 + 1;
                v173 = *(*this + v171);
                *(this + 1) = v172;
                v174 = v173 != 0;
              }

              *(a1 + 191) = v174;
              goto LABEL_383;
            case 1114:
              *(a1 + 204) |= 0x80000uLL;
              v88 = *(this + 1);
              if (v88 > 0xFFFFFFFFFFFFFFFBLL || v88 + 4 > *(this + 2))
              {
                goto LABEL_220;
              }

              *(a1 + 100) = *(*this + v88);
              goto LABEL_382;
            case 1115:
              *(a1 + 204) |= 0x800uLL;
              v91 = *(this + 1);
              if (v91 > 0xFFFFFFFFFFFFFFFBLL || v91 + 4 > *(this + 2))
              {
                goto LABEL_220;
              }

              *(a1 + 68) = *(*this + v91);
              goto LABEL_382;
            case 1116:
              *(a1 + 204) |= 0x80000000uLL;
              v156 = *(this + 1);
              if (v156 > 0xFFFFFFFFFFFFFFFBLL || v156 + 4 > *(this + 2))
              {
LABEL_220:
                *(this + 24) = 1;
              }

              else
              {
                *(a1 + 148) = *(*this + v156);
LABEL_382:
                *(this + 1) += 4;
              }

              goto LABEL_383;
            case 1117:
              *(a1 + 204) |= 0x8000000000000000;
              v63 = *(this + 1);
              if (v63 >= *(this + 2))
              {
                v66 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v64 = v63 + 1;
                v65 = *(*this + v63);
                *(this + 1) = v64;
                v66 = v65 != 0;
              }

              *(a1 + 186) = v66;
              goto LABEL_383;
            case 1118:
              *(a1 + 204) |= 0x8000000000uLL;
              v104 = *(this + 1);
              if (v104 >= *(this + 2))
              {
                v107 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v105 = v104 + 1;
                v106 = *(*this + v104);
                *(this + 1) = v105;
                v107 = v106 != 0;
              }

              *(a1 + 162) = v107;
              goto LABEL_383;
            case 1119:
              *(a1 + 212) |= 0x8000u;
              v59 = *(this + 1);
              if (v59 >= *(this + 2))
              {
                v62 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v60 = v59 + 1;
                v61 = *(*this + v59);
                *(this + 1) = v60;
                v62 = v61 != 0;
              }

              *(a1 + 202) = v62;
              goto LABEL_383;
            case 1120:
              *(a1 + 204) |= 0x800000000000uLL;
              v138 = *(this + 1);
              if (v138 >= *(this + 2))
              {
                v141 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v139 = v138 + 1;
                v140 = *(*this + v138);
                *(this + 1) = v139;
                v141 = v140 != 0;
              }

              *(a1 + 170) = v141;
              goto LABEL_383;
            case 1121:
              *(a1 + 204) |= 0x80000000000000uLL;
              v163 = *(this + 1);
              if (v163 >= *(this + 2))
              {
                v166 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v164 = v163 + 1;
                v165 = *(*this + v163);
                *(this + 1) = v164;
                v166 = v165 != 0;
              }

              *(a1 + 178) = v166;
              goto LABEL_383;
            case 1122:
              *(a1 + 212) |= 0x80u;
              v272 = *(this + 1);
              if (v272 >= *(this + 2))
              {
                v275 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v273 = v272 + 1;
                v274 = *(*this + v272);
                *(this + 1) = v273;
                v275 = v274 != 0;
              }

              *(a1 + 194) = v275;
              goto LABEL_383;
            default:
              JUMPOUT(0);
          }

          while (1)
          {
            if (!v290)
            {
              v55 = 0;
              *(this + 24) = 1;
              goto LABEL_393;
            }

            v293 = *v291;
            *(this + 1) = v292;
            v55 |= (v293 & 0x7F) << v288;
            if ((v293 & 0x80) == 0)
            {
              break;
            }

            v288 += 7;
            --v290;
            ++v291;
            ++v292;
            v14 = v289++ > 8;
            if (v14)
            {
              goto LABEL_274;
            }
          }

          if (*(this + 24))
          {
            v55 = 0;
          }

LABEL_393:
          *(a1 + 24) = v55;
        }

        else
        {
          switch(v22)
          {
            case 1203:
              *(a1 + 204) |= 8uLL;
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
                    goto LABEL_396;
                  }

                  v35 += 7;
                  ++v39;
                  v14 = v36++ > 8;
                }

                while (!v14);
LABEL_294:
                v37 = 0;
                goto LABEL_396;
              }

              v294 = 0;
              v295 = 0;
              v37 = 0;
              v17 = v32 >= v33;
              v296 = v32 - v33;
              if (!v17)
              {
                v296 = 0;
              }

              v297 = (v34 + v33);
              v298 = v33 + 1;
              break;
            case 1204:
              *(a1 + 204) |= 0x1000000uLL;
              v157 = *(this + 1);
              if (v157 > 0xFFFFFFFFFFFFFFFBLL || v157 + 4 > *(this + 2))
              {
                goto LABEL_220;
              }

              *(a1 + 120) = *(*this + v157);
              goto LABEL_382;
            case 1205:
              *(a1 + 204) |= 0x10000uLL;
              v124 = *(this + 1);
              if (v124 > 0xFFFFFFFFFFFFFFFBLL || v124 + 4 > *(this + 2))
              {
                goto LABEL_220;
              }

              *(a1 + 88) = *(*this + v124);
              goto LABEL_382;
            case 1206:
              *(a1 + 204) |= 0x100uLL;
              v142 = *(this + 1);
              if (v142 > 0xFFFFFFFFFFFFFFFBLL || v142 + 4 > *(this + 2))
              {
                goto LABEL_220;
              }

              *(a1 + 56) = *(*this + v142);
              goto LABEL_382;
            case 1207:
              *(a1 + 204) |= 0x10000000uLL;
              v102 = *(this + 1);
              if (v102 > 0xFFFFFFFFFFFFFFFBLL || v102 + 4 > *(this + 2))
              {
                goto LABEL_220;
              }

              *(a1 + 136) = *(*this + v102);
              goto LABEL_382;
            case 1208:
              *(a1 + 204) |= 0x1000000000000000uLL;
              v203 = *(this + 1);
              if (v203 >= *(this + 2))
              {
                v206 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v204 = v203 + 1;
                v205 = *(*this + v203);
                *(this + 1) = v204;
                v206 = v205 != 0;
              }

              *(a1 + 183) = v206;
              goto LABEL_383;
            case 1209:
              *(a1 + 204) |= 0x1000000000uLL;
              v208 = *(this + 1);
              if (v208 >= *(this + 2))
              {
                v211 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v209 = v208 + 1;
                v210 = *(*this + v208);
                *(this + 1) = v209;
                v211 = v210 != 0;
              }

              *(a1 + 159) = v211;
              goto LABEL_383;
            case 1210:
              *(a1 + 212) |= 0x1000u;
              v148 = *(this + 1);
              if (v148 >= *(this + 2))
              {
                v151 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v149 = v148 + 1;
                v150 = *(*this + v148);
                *(this + 1) = v149;
                v151 = v150 != 0;
              }

              *(a1 + 199) = v151;
              goto LABEL_383;
            case 1211:
              *(a1 + 204) |= 0x100000000000uLL;
              v228 = *(this + 1);
              if (v228 >= *(this + 2))
              {
                v231 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v229 = v228 + 1;
                v230 = *(*this + v228);
                *(this + 1) = v229;
                v231 = v230 != 0;
              }

              *(a1 + 167) = v231;
              goto LABEL_383;
            case 1212:
              *(a1 + 204) |= 0x10000000000000uLL;
              v108 = *(this + 1);
              if (v108 >= *(this + 2))
              {
                v111 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v109 = v108 + 1;
                v110 = *(*this + v108);
                *(this + 1) = v109;
                v111 = v110 != 0;
              }

              *(a1 + 175) = v111;
              goto LABEL_383;
            case 1213:
              *(a1 + 212) |= 0x20u;
              v224 = *(this + 1);
              if (v224 >= *(this + 2))
              {
                v227 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v225 = v224 + 1;
                v226 = *(*this + v224);
                *(this + 1) = v225;
                v227 = v226 != 0;
              }

              *(a1 + 192) = v227;
              goto LABEL_383;
            case 1214:
              *(a1 + 204) |= 0x100000uLL;
              v90 = *(this + 1);
              if (v90 > 0xFFFFFFFFFFFFFFFBLL || v90 + 4 > *(this + 2))
              {
                goto LABEL_220;
              }

              *(a1 + 104) = *(*this + v90);
              goto LABEL_382;
            case 1215:
              *(a1 + 204) |= 0x1000uLL;
              v103 = *(this + 1);
              if (v103 > 0xFFFFFFFFFFFFFFFBLL || v103 + 4 > *(this + 2))
              {
                goto LABEL_220;
              }

              *(a1 + 72) = *(*this + v103);
              goto LABEL_382;
            case 1216:
              *(a1 + 204) |= 0x100000000uLL;
              v207 = *(this + 1);
              if (v207 > 0xFFFFFFFFFFFFFFFBLL || v207 + 4 > *(this + 2))
              {
                goto LABEL_220;
              }

              *(a1 + 152) = *(*this + v207);
              goto LABEL_382;
            case 1217:
              *(a1 + 212) |= 1u;
              v79 = *(this + 1);
              if (v79 >= *(this + 2))
              {
                v82 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v80 = v79 + 1;
                v81 = *(*this + v79);
                *(this + 1) = v80;
                v82 = v81 != 0;
              }

              *(a1 + 187) = v82;
              goto LABEL_383;
            case 1218:
              *(a1 + 204) |= 0x10000000000uLL;
              v134 = *(this + 1);
              if (v134 >= *(this + 2))
              {
                v137 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v135 = v134 + 1;
                v136 = *(*this + v134);
                *(this + 1) = v135;
                v137 = v136 != 0;
              }

              *(a1 + 163) = v137;
              goto LABEL_383;
            case 1219:
              *(a1 + 212) |= 0x10000u;
              v67 = *(this + 1);
              if (v67 >= *(this + 2))
              {
                v70 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v68 = v67 + 1;
                v69 = *(*this + v67);
                *(this + 1) = v68;
                v70 = v69 != 0;
              }

              *(a1 + 203) = v70;
              goto LABEL_383;
            case 1220:
              *(a1 + 204) |= 0x1000000000000uLL;
              v180 = *(this + 1);
              if (v180 >= *(this + 2))
              {
                v183 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v181 = v180 + 1;
                v182 = *(*this + v180);
                *(this + 1) = v181;
                v183 = v182 != 0;
              }

              *(a1 + 171) = v183;
              goto LABEL_383;
            case 1221:
              *(a1 + 204) |= 0x100000000000000uLL;
              v216 = *(this + 1);
              if (v216 >= *(this + 2))
              {
                v219 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v217 = v216 + 1;
                v218 = *(*this + v216);
                *(this + 1) = v217;
                v219 = v218 != 0;
              }

              *(a1 + 179) = v219;
              goto LABEL_383;
            case 1222:
              *(a1 + 212) |= 0x100u;
              v276 = *(this + 1);
              if (v276 >= *(this + 2))
              {
                v279 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v277 = v276 + 1;
                v278 = *(*this + v276);
                *(this + 1) = v277;
                v279 = v278 != 0;
              }

              *(a1 + 195) = v279;
              goto LABEL_383;
            default:
LABEL_243:
              if (PB::Reader::skip(this))
              {
                goto LABEL_383;
              }

              v319 = 0;
              return v319 & 1;
          }

          while (1)
          {
            if (!v296)
            {
              v37 = 0;
              *(this + 24) = 1;
              goto LABEL_396;
            }

            v299 = *v297;
            *(this + 1) = v298;
            v37 |= (v299 & 0x7F) << v294;
            if ((v299 & 0x80) == 0)
            {
              break;
            }

            v294 += 7;
            --v296;
            ++v297;
            ++v298;
            v14 = v295++ > 8;
            if (v14)
            {
              goto LABEL_294;
            }
          }

          if (*(this + 24))
          {
            v37 = 0;
          }

LABEL_396:
          *(a1 + 32) = v37;
        }
      }

      else
      {
        switch(v22)
        {
          case 'e':
            *(a1 + 204) |= 1uLL;
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
                  goto LABEL_399;
                }

                v26 += 7;
                ++v30;
                v14 = v27++ > 8;
              }

              while (!v14);
LABEL_318:
              v28 = 0;
              goto LABEL_399;
            }

            v300 = 0;
            v301 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v302 = v23 - v24;
            if (!v17)
            {
              v302 = 0;
            }

            v303 = (v25 + v24);
            v304 = v24 + 1;
            while (2)
            {
              if (v302)
              {
                v305 = *v303;
                *(this + 1) = v304;
                v28 |= (v305 & 0x7F) << v300;
                if (v305 < 0)
                {
                  v300 += 7;
                  --v302;
                  ++v303;
                  ++v304;
                  v14 = v301++ > 8;
                  if (v14)
                  {
                    goto LABEL_318;
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

LABEL_399:
            *(a1 + 8) = v28;
            goto LABEL_383;
          case 'f':
            *(a1 + 204) |= 0x10uLL;
            v194 = *(this + 1);
            v193 = *(this + 2);
            v195 = *this;
            if (v194 <= 0xFFFFFFFFFFFFFFF5 && v194 + 10 <= v193)
            {
              v196 = 0;
              v197 = 0;
              v198 = 0;
              v199 = (v195 + v194);
              v200 = v194 + 1;
              do
              {
                *(this + 1) = v200;
                v201 = *v199++;
                v198 |= (v201 & 0x7F) << v196;
                if ((v201 & 0x80) == 0)
                {
                  goto LABEL_402;
                }

                v196 += 7;
                ++v200;
                v14 = v197++ > 8;
              }

              while (!v14);
LABEL_326:
              LODWORD(v198) = 0;
              goto LABEL_402;
            }

            v306 = 0;
            v307 = 0;
            v198 = 0;
            v17 = v193 >= v194;
            v308 = v193 - v194;
            if (!v17)
            {
              v308 = 0;
            }

            v309 = (v195 + v194);
            v310 = v194 + 1;
            while (2)
            {
              if (v308)
              {
                v311 = *v309;
                *(this + 1) = v310;
                v198 |= (v311 & 0x7F) << v306;
                if (v311 < 0)
                {
                  v306 += 7;
                  --v308;
                  ++v309;
                  ++v310;
                  v14 = v307++ > 8;
                  if (v14)
                  {
                    goto LABEL_326;
                  }

                  continue;
                }

                if (*(this + 24))
                {
                  LODWORD(v198) = 0;
                }
              }

              else
              {
                LODWORD(v198) = 0;
                *(this + 24) = 1;
              }

              break;
            }

LABEL_402:
            *(a1 + 40) = v198;
            goto LABEL_383;
          case 'g':
            *(a1 + 212) |= 2u;
            v143 = *(this + 1);
            if (v143 >= *(this + 2))
            {
              v146 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v144 = v143 + 1;
              v145 = *(*this + v143);
              *(this + 1) = v144;
              v146 = v145 != 0;
            }

            *(a1 + 188) = v146;
            goto LABEL_383;
          case 'h':
            *(a1 + 204) |= 0x200000uLL;
            v179 = *(this + 1);
            if (v179 > 0xFFFFFFFFFFFFFFFBLL || v179 + 4 > *(this + 2))
            {
              goto LABEL_220;
            }

            *(a1 + 108) = *(*this + v179);
            goto LABEL_382;
          case 'i':
            *(a1 + 204) |= 0x2000uLL;
            v113 = *(this + 1);
            if (v113 > 0xFFFFFFFFFFFFFFFBLL || v113 + 4 > *(this + 2))
            {
              goto LABEL_220;
            }

            *(a1 + 76) = *(*this + v113);
            goto LABEL_382;
          case 'j':
            *(a1 + 204) |= 0x20uLL;
            v236 = *(this + 1);
            if (v236 > 0xFFFFFFFFFFFFFFFBLL || v236 + 4 > *(this + 2))
            {
              goto LABEL_220;
            }

            *(a1 + 44) = *(*this + v236);
            goto LABEL_382;
          case 'k':
            *(a1 + 204) |= 0x2000000uLL;
            v242 = *(this + 1);
            if (v242 > 0xFFFFFFFFFFFFFFFBLL || v242 + 4 > *(this + 2))
            {
              goto LABEL_220;
            }

            *(a1 + 124) = *(*this + v242);
            goto LABEL_382;
          case 'l':
            *(a1 + 204) |= 0x200000000000000uLL;
            v185 = *(this + 1);
            if (v185 >= *(this + 2))
            {
              v188 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v186 = v185 + 1;
              v187 = *(*this + v185);
              *(this + 1) = v186;
              v188 = v187 != 0;
            }

            *(a1 + 180) = v188;
            goto LABEL_383;
          case 'm':
            *(a1 + 204) |= 0x200000000uLL;
            v256 = *(this + 1);
            if (v256 >= *(this + 2))
            {
              v259 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v257 = v256 + 1;
              v258 = *(*this + v256);
              *(this + 1) = v257;
              v259 = v258 != 0;
            }

            *(a1 + 156) = v259;
            goto LABEL_383;
          case 'n':
            *(a1 + 212) |= 0x200u;
            v126 = *(this + 1);
            if (v126 >= *(this + 2))
            {
              v129 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v127 = v126 + 1;
              v128 = *(*this + v126);
              *(this + 1) = v127;
              v129 = v128 != 0;
            }

            *(a1 + 196) = v129;
            goto LABEL_383;
          case 'o':
            *(a1 + 204) |= 0x20000000000uLL;
            v252 = *(this + 1);
            if (v252 >= *(this + 2))
            {
              v255 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v253 = v252 + 1;
              v254 = *(*this + v252);
              *(this + 1) = v253;
              v255 = v254 != 0;
            }

            *(a1 + 164) = v255;
            goto LABEL_383;
          case 'p':
            *(a1 + 204) |= 0x2000000000000uLL;
            v96 = *(this + 1);
            if (v96 >= *(this + 2))
            {
              v99 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v97 = v96 + 1;
              v98 = *(*this + v96);
              *(this + 1) = v97;
              v99 = v98 != 0;
            }

            *(a1 + 172) = v99;
            goto LABEL_383;
          case 'q':
            *(a1 + 212) |= 4u;
            v120 = *(this + 1);
            if (v120 >= *(this + 2))
            {
              v123 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v121 = v120 + 1;
              v122 = *(*this + v120);
              *(this + 1) = v121;
              v123 = v122 != 0;
            }

            *(a1 + 189) = v123;
            goto LABEL_383;
          case 'r':
            *(a1 + 204) |= 0x20000uLL;
            v241 = *(this + 1);
            if (v241 > 0xFFFFFFFFFFFFFFFBLL || v241 + 4 > *(this + 2))
            {
              goto LABEL_220;
            }

            *(a1 + 92) = *(*this + v241);
            goto LABEL_382;
          case 's':
            *(a1 + 204) |= 0x200uLL;
            v83 = *(this + 1);
            if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(this + 2))
            {
              goto LABEL_220;
            }

            *(a1 + 60) = *(*this + v83);
            goto LABEL_382;
          case 't':
            *(a1 + 204) |= 0x20000000uLL;
            v162 = *(this + 1);
            if (v162 > 0xFFFFFFFFFFFFFFFBLL || v162 + 4 > *(this + 2))
            {
              goto LABEL_220;
            }

            *(a1 + 140) = *(*this + v162);
            goto LABEL_382;
          case 'u':
            *(a1 + 204) |= 0x2000000000000000uLL;
            v71 = *(this + 1);
            if (v71 >= *(this + 2))
            {
              v74 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v72 = v71 + 1;
              v73 = *(*this + v71);
              *(this + 1) = v72;
              v74 = v73 != 0;
            }

            *(a1 + 184) = v74;
            goto LABEL_383;
          case 'v':
            *(a1 + 204) |= 0x2000000000uLL;
            v212 = *(this + 1);
            if (v212 >= *(this + 2))
            {
              v215 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v213 = v212 + 1;
              v214 = *(*this + v212);
              *(this + 1) = v213;
              v215 = v214 != 0;
            }

            *(a1 + 160) = v215;
            goto LABEL_383;
          case 'w':
            *(a1 + 212) |= 0x2000u;
            v244 = *(this + 1);
            if (v244 >= *(this + 2))
            {
              v247 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v245 = v244 + 1;
              v246 = *(*this + v244);
              *(this + 1) = v245;
              v247 = v246 != 0;
            }

            *(a1 + 200) = v247;
            goto LABEL_383;
          case 'x':
            *(a1 + 204) |= 0x200000000000uLL;
            v280 = *(this + 1);
            if (v280 >= *(this + 2))
            {
              v283 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v281 = v280 + 1;
              v282 = *(*this + v280);
              *(this + 1) = v281;
              v283 = v282 != 0;
            }

            *(a1 + 168) = v283;
            goto LABEL_383;
          case 'y':
            *(a1 + 204) |= 0x20000000000000uLL;
            v232 = *(this + 1);
            if (v232 >= *(this + 2))
            {
              v235 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v233 = v232 + 1;
              v234 = *(*this + v232);
              *(this + 1) = v233;
              v235 = v234 != 0;
            }

            *(a1 + 176) = v235;
            goto LABEL_383;
          default:
            switch(v22)
            {
              case 1003:
                *(a1 + 204) |= 2uLL;
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
                      goto LABEL_405;
                    }

                    v44 += 7;
                    ++v48;
                    v14 = v45++ > 8;
                  }

                  while (!v14);
LABEL_336:
                  v46 = 0;
                  goto LABEL_405;
                }

                v312 = 0;
                v313 = 0;
                v46 = 0;
                v17 = v41 >= v42;
                v314 = v41 - v42;
                if (!v17)
                {
                  v314 = 0;
                }

                v315 = (v43 + v42);
                v316 = v42 + 1;
                break;
              case 1004:
                *(a1 + 204) |= 0x400000uLL;
                v202 = *(this + 1);
                if (v202 > 0xFFFFFFFFFFFFFFFBLL || v202 + 4 > *(this + 2))
                {
                  goto LABEL_220;
                }

                *(a1 + 112) = *(*this + v202);
                goto LABEL_382;
              case 1005:
                *(a1 + 204) |= 0x4000uLL;
                v147 = *(this + 1);
                if (v147 > 0xFFFFFFFFFFFFFFFBLL || v147 + 4 > *(this + 2))
                {
                  goto LABEL_220;
                }

                *(a1 + 80) = *(*this + v147);
                goto LABEL_382;
              case 1006:
                *(a1 + 204) |= 0x40uLL;
                v184 = *(this + 1);
                if (v184 > 0xFFFFFFFFFFFFFFFBLL || v184 + 4 > *(this + 2))
                {
                  goto LABEL_220;
                }

                *(a1 + 48) = *(*this + v184);
                goto LABEL_382;
              case 1007:
                *(a1 + 204) |= 0x4000000uLL;
                v118 = *(this + 1);
                if (v118 > 0xFFFFFFFFFFFFFFFBLL || v118 + 4 > *(this + 2))
                {
                  goto LABEL_220;
                }

                *(a1 + 128) = *(*this + v118);
                goto LABEL_382;
              case 1008:
                *(a1 + 204) |= 0x400000000000000uLL;
                v237 = *(this + 1);
                if (v237 >= *(this + 2))
                {
                  v240 = 0;
                  *(this + 24) = 1;
                }

                else
                {
                  v238 = v237 + 1;
                  v239 = *(*this + v237);
                  *(this + 1) = v238;
                  v240 = v239 != 0;
                }

                *(a1 + 181) = v240;
                goto LABEL_383;
              case 1009:
                *(a1 + 204) |= 0x400000000uLL;
                v248 = *(this + 1);
                if (v248 >= *(this + 2))
                {
                  v251 = 0;
                  *(this + 24) = 1;
                }

                else
                {
                  v249 = v248 + 1;
                  v250 = *(*this + v248);
                  *(this + 1) = v249;
                  v251 = v250 != 0;
                }

                *(a1 + 157) = v251;
                goto LABEL_383;
              case 1010:
                *(a1 + 212) |= 0x400u;
                v189 = *(this + 1);
                if (v189 >= *(this + 2))
                {
                  v192 = 0;
                  *(this + 24) = 1;
                }

                else
                {
                  v190 = v189 + 1;
                  v191 = *(*this + v189);
                  *(this + 1) = v190;
                  v192 = v191 != 0;
                }

                *(a1 + 197) = v192;
                goto LABEL_383;
              case 1011:
                *(a1 + 204) |= 0x40000000000uLL;
                v268 = *(this + 1);
                if (v268 >= *(this + 2))
                {
                  v271 = 0;
                  *(this + 24) = 1;
                }

                else
                {
                  v269 = v268 + 1;
                  v270 = *(*this + v268);
                  *(this + 1) = v269;
                  v271 = v270 != 0;
                }

                *(a1 + 165) = v271;
                goto LABEL_383;
              case 1012:
                *(a1 + 204) |= 0x4000000000000uLL;
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

                *(a1 + 173) = v133;
                goto LABEL_383;
              case 1013:
                *(a1 + 212) |= 8u;
                v264 = *(this + 1);
                if (v264 >= *(this + 2))
                {
                  v267 = 0;
                  *(this + 24) = 1;
                }

                else
                {
                  v265 = v264 + 1;
                  v266 = *(*this + v264);
                  *(this + 1) = v265;
                  v267 = v266 != 0;
                }

                *(a1 + 190) = v267;
                goto LABEL_383;
              case 1014:
                *(a1 + 204) |= 0x40000uLL;
                v100 = *(this + 1);
                if (v100 > 0xFFFFFFFFFFFFFFFBLL || v100 + 4 > *(this + 2))
                {
                  goto LABEL_220;
                }

                *(a1 + 96) = *(*this + v100);
                goto LABEL_382;
              case 1015:
                *(a1 + 204) |= 0x400uLL;
                v125 = *(this + 1);
                if (v125 > 0xFFFFFFFFFFFFFFFBLL || v125 + 4 > *(this + 2))
                {
                  goto LABEL_220;
                }

                *(a1 + 64) = *(*this + v125);
                goto LABEL_382;
              case 1016:
                *(a1 + 204) |= 0x40000000uLL;
                v243 = *(this + 1);
                if (v243 > 0xFFFFFFFFFFFFFFFBLL || v243 + 4 > *(this + 2))
                {
                  goto LABEL_220;
                }

                *(a1 + 144) = *(*this + v243);
                goto LABEL_382;
              case 1017:
                *(a1 + 204) |= 0x4000000000000000uLL;
                v84 = *(this + 1);
                if (v84 >= *(this + 2))
                {
                  v87 = 0;
                  *(this + 24) = 1;
                }

                else
                {
                  v85 = v84 + 1;
                  v86 = *(*this + v84);
                  *(this + 1) = v85;
                  v87 = v86 != 0;
                }

                *(a1 + 185) = v87;
                goto LABEL_383;
              case 1018:
                *(a1 + 204) |= 0x4000000000uLL;
                v167 = *(this + 1);
                if (v167 >= *(this + 2))
                {
                  v170 = 0;
                  *(this + 24) = 1;
                }

                else
                {
                  v168 = v167 + 1;
                  v169 = *(*this + v167);
                  *(this + 1) = v168;
                  v170 = v169 != 0;
                }

                *(a1 + 161) = v170;
                goto LABEL_383;
              case 1019:
                *(a1 + 212) |= 0x4000u;
                v75 = *(this + 1);
                if (v75 >= *(this + 2))
                {
                  v78 = 0;
                  *(this + 24) = 1;
                }

                else
                {
                  v76 = v75 + 1;
                  v77 = *(*this + v75);
                  *(this + 1) = v76;
                  v78 = v77 != 0;
                }

                *(a1 + 201) = v78;
                goto LABEL_383;
              case 1020:
                *(a1 + 204) |= 0x400000000000uLL;
                v220 = *(this + 1);
                if (v220 >= *(this + 2))
                {
                  v223 = 0;
                  *(this + 24) = 1;
                }

                else
                {
                  v221 = v220 + 1;
                  v222 = *(*this + v220);
                  *(this + 1) = v221;
                  v223 = v222 != 0;
                }

                *(a1 + 169) = v223;
                goto LABEL_383;
              case 1021:
                *(a1 + 204) |= 0x40000000000000uLL;
                v260 = *(this + 1);
                if (v260 >= *(this + 2))
                {
                  v263 = 0;
                  *(this + 24) = 1;
                }

                else
                {
                  v261 = v260 + 1;
                  v262 = *(*this + v260);
                  *(this + 1) = v261;
                  v263 = v262 != 0;
                }

                *(a1 + 177) = v263;
                goto LABEL_383;
              case 1022:
                *(a1 + 212) |= 0x40u;
                v284 = *(this + 1);
                if (v284 >= *(this + 2))
                {
                  v287 = 0;
                  *(this + 24) = 1;
                }

                else
                {
                  v285 = v284 + 1;
                  v286 = *(*this + v284);
                  *(this + 1) = v285;
                  v287 = v286 != 0;
                }

                *(a1 + 193) = v287;
                goto LABEL_383;
              default:
                goto LABEL_243;
            }

            break;
        }

        while (1)
        {
          if (!v314)
          {
            v46 = 0;
            *(this + 24) = 1;
            goto LABEL_405;
          }

          v317 = *v315;
          *(this + 1) = v316;
          v46 |= (v317 & 0x7F) << v312;
          if ((v317 & 0x80) == 0)
          {
            break;
          }

          v312 += 7;
          --v314;
          ++v315;
          ++v316;
          v14 = v313++ > 8;
          if (v14)
          {
            goto LABEL_336;
          }
        }

        if (*(this + 24))
        {
          v46 = 0;
        }

LABEL_405:
        *(a1 + 16) = v46;
      }

LABEL_383:
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

LABEL_407:
  v319 = v4 ^ 1;
  return v319 & 1;
}

uint64_t sub_245DE16BC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 204);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 204);
  }

  if ((v4 & 0x10) != 0)
  {
    v6 = *(v3 + 40);
    result = PB::Writer::writeVarInt(this);
  }

  if ((*(v3 + 212) & 2) != 0)
  {
    v7 = *(v3 + 188);
    result = PB::Writer::write(this);
  }

  v8 = *(v3 + 204);
  if ((v8 & 0x200000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 108));
    v8 = *(v3 + 204);
    if ((v8 & 0x2000) == 0)
    {
LABEL_9:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_126;
    }
  }

  else if ((v8 & 0x2000) == 0)
  {
    goto LABEL_9;
  }

  result = PB::Writer::write(this, *(v3 + 76));
  v8 = *(v3 + 204);
  if ((v8 & 0x20) == 0)
  {
LABEL_10:
    if ((v8 & 0x2000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_127;
  }

LABEL_126:
  result = PB::Writer::write(this, *(v3 + 44));
  v8 = *(v3 + 204);
  if ((v8 & 0x2000000) == 0)
  {
LABEL_11:
    if ((v8 & 0x200000000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_128;
  }

LABEL_127:
  result = PB::Writer::write(this, *(v3 + 124));
  v8 = *(v3 + 204);
  if ((v8 & 0x200000000000000) == 0)
  {
LABEL_12:
    if ((v8 & 0x200000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_128:
  v60 = *(v3 + 180);
  result = PB::Writer::write(this);
  if ((*(v3 + 204) & 0x200000000) != 0)
  {
LABEL_13:
    v9 = *(v3 + 156);
    result = PB::Writer::write(this);
  }

LABEL_14:
  if ((*(v3 + 213) & 2) != 0)
  {
    v10 = *(v3 + 196);
    result = PB::Writer::write(this);
  }

  v11 = *(v3 + 204);
  if ((v11 & 0x20000000000) != 0)
  {
    v12 = *(v3 + 164);
    result = PB::Writer::write(this);
    v11 = *(v3 + 204);
  }

  if ((v11 & 0x2000000000000) != 0)
  {
    v13 = *(v3 + 172);
    result = PB::Writer::write(this);
  }

  if ((*(v3 + 212) & 4) != 0)
  {
    v14 = *(v3 + 189);
    result = PB::Writer::write(this);
  }

  v15 = *(v3 + 204);
  if ((v15 & 0x20000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 92));
    v15 = *(v3 + 204);
    if ((v15 & 0x200) == 0)
    {
LABEL_24:
      if ((v15 & 0x20000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_132;
    }
  }

  else if ((v15 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  result = PB::Writer::write(this, *(v3 + 60));
  v15 = *(v3 + 204);
  if ((v15 & 0x20000000) == 0)
  {
LABEL_25:
    if ((v15 & 0x2000000000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_133;
  }

LABEL_132:
  result = PB::Writer::write(this, *(v3 + 140));
  v15 = *(v3 + 204);
  if ((v15 & 0x2000000000000000) == 0)
  {
LABEL_26:
    if ((v15 & 0x2000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_133:
  v61 = *(v3 + 184);
  result = PB::Writer::write(this);
  if ((*(v3 + 204) & 0x2000000000) != 0)
  {
LABEL_27:
    v16 = *(v3 + 160);
    result = PB::Writer::write(this);
  }

LABEL_28:
  if ((*(v3 + 213) & 0x20) != 0)
  {
    v17 = *(v3 + 200);
    result = PB::Writer::write(this);
  }

  v18 = *(v3 + 204);
  if ((v18 & 0x200000000000) != 0)
  {
    v62 = *(v3 + 168);
    result = PB::Writer::write(this);
    v18 = *(v3 + 204);
    if ((v18 & 0x20000000000000) == 0)
    {
LABEL_32:
      if ((v18 & 2) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_137;
    }
  }

  else if ((v18 & 0x20000000000000) == 0)
  {
    goto LABEL_32;
  }

  v63 = *(v3 + 176);
  result = PB::Writer::write(this);
  v18 = *(v3 + 204);
  if ((v18 & 2) == 0)
  {
LABEL_33:
    if ((v18 & 0x400000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_138;
  }

LABEL_137:
  v64 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v18 = *(v3 + 204);
  if ((v18 & 0x400000) == 0)
  {
LABEL_34:
    if ((v18 & 0x4000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_139;
  }

LABEL_138:
  result = PB::Writer::write(this, *(v3 + 112));
  v18 = *(v3 + 204);
  if ((v18 & 0x4000) == 0)
  {
LABEL_35:
    if ((v18 & 0x40) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_140;
  }

LABEL_139:
  result = PB::Writer::write(this, *(v3 + 80));
  v18 = *(v3 + 204);
  if ((v18 & 0x40) == 0)
  {
LABEL_36:
    if ((v18 & 0x4000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_141;
  }

LABEL_140:
  result = PB::Writer::write(this, *(v3 + 48));
  v18 = *(v3 + 204);
  if ((v18 & 0x4000000) == 0)
  {
LABEL_37:
    if ((v18 & 0x400000000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_142;
  }

LABEL_141:
  result = PB::Writer::write(this, *(v3 + 128));
  v18 = *(v3 + 204);
  if ((v18 & 0x400000000000000) == 0)
  {
LABEL_38:
    if ((v18 & 0x400000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_142:
  v65 = *(v3 + 181);
  result = PB::Writer::write(this);
  if ((*(v3 + 204) & 0x400000000) != 0)
  {
LABEL_39:
    v19 = *(v3 + 157);
    result = PB::Writer::write(this);
  }

LABEL_40:
  if ((*(v3 + 213) & 4) != 0)
  {
    v20 = *(v3 + 197);
    result = PB::Writer::write(this);
  }

  v21 = *(v3 + 204);
  if ((v21 & 0x40000000000) != 0)
  {
    v22 = *(v3 + 165);
    result = PB::Writer::write(this);
    v21 = *(v3 + 204);
  }

  if ((v21 & 0x4000000000000) != 0)
  {
    v23 = *(v3 + 173);
    result = PB::Writer::write(this);
  }

  if ((*(v3 + 212) & 8) != 0)
  {
    v24 = *(v3 + 190);
    result = PB::Writer::write(this);
  }

  v25 = *(v3 + 204);
  if ((v25 & 0x40000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 96));
    v25 = *(v3 + 204);
    if ((v25 & 0x400) == 0)
    {
LABEL_50:
      if ((v25 & 0x40000000) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_146;
    }
  }

  else if ((v25 & 0x400) == 0)
  {
    goto LABEL_50;
  }

  result = PB::Writer::write(this, *(v3 + 64));
  v25 = *(v3 + 204);
  if ((v25 & 0x40000000) == 0)
  {
LABEL_51:
    if ((v25 & 0x4000000000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_147;
  }

LABEL_146:
  result = PB::Writer::write(this, *(v3 + 144));
  v25 = *(v3 + 204);
  if ((v25 & 0x4000000000000000) == 0)
  {
LABEL_52:
    if ((v25 & 0x4000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_147:
  v66 = *(v3 + 185);
  result = PB::Writer::write(this);
  if ((*(v3 + 204) & 0x4000000000) != 0)
  {
LABEL_53:
    v26 = *(v3 + 161);
    result = PB::Writer::write(this);
  }

LABEL_54:
  if ((*(v3 + 213) & 0x40) != 0)
  {
    v27 = *(v3 + 201);
    result = PB::Writer::write(this);
  }

  v28 = *(v3 + 204);
  if ((v28 & 0x400000000000) != 0)
  {
    v29 = *(v3 + 169);
    result = PB::Writer::write(this);
    v28 = *(v3 + 204);
  }

  if ((v28 & 0x40000000000000) != 0)
  {
    v30 = *(v3 + 177);
    result = PB::Writer::write(this);
  }

  if ((*(v3 + 212) & 0x40) != 0)
  {
    v31 = *(v3 + 193);
    result = PB::Writer::write(this);
  }

  v32 = *(v3 + 204);
  if ((v32 & 4) != 0)
  {
    v67 = *(v3 + 24);
    result = PB::Writer::writeVarInt(this);
    v32 = *(v3 + 204);
    if ((v32 & 0x800000) == 0)
    {
LABEL_64:
      if ((v32 & 0x8000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_151;
    }
  }

  else if ((v32 & 0x800000) == 0)
  {
    goto LABEL_64;
  }

  result = PB::Writer::write(this, *(v3 + 116));
  v32 = *(v3 + 204);
  if ((v32 & 0x8000) == 0)
  {
LABEL_65:
    if ((v32 & 0x80) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_152;
  }

LABEL_151:
  result = PB::Writer::write(this, *(v3 + 84));
  v32 = *(v3 + 204);
  if ((v32 & 0x80) == 0)
  {
LABEL_66:
    if ((v32 & 0x8000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_153;
  }

LABEL_152:
  result = PB::Writer::write(this, *(v3 + 52));
  v32 = *(v3 + 204);
  if ((v32 & 0x8000000) == 0)
  {
LABEL_67:
    if ((v32 & 0x800000000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_154;
  }

LABEL_153:
  result = PB::Writer::write(this, *(v3 + 132));
  v32 = *(v3 + 204);
  if ((v32 & 0x800000000000000) == 0)
  {
LABEL_68:
    if ((v32 & 0x800000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_154:
  v68 = *(v3 + 182);
  result = PB::Writer::write(this);
  if ((*(v3 + 204) & 0x800000000) != 0)
  {
LABEL_69:
    v33 = *(v3 + 158);
    result = PB::Writer::write(this);
  }

LABEL_70:
  if ((*(v3 + 213) & 8) != 0)
  {
    v34 = *(v3 + 198);
    result = PB::Writer::write(this);
  }

  v35 = *(v3 + 204);
  if ((v35 & 0x80000000000) != 0)
  {
    v36 = *(v3 + 166);
    result = PB::Writer::write(this);
    v35 = *(v3 + 204);
  }

  if ((v35 & 0x8000000000000) != 0)
  {
    v37 = *(v3 + 174);
    result = PB::Writer::write(this);
  }

  if ((*(v3 + 212) & 0x10) != 0)
  {
    v38 = *(v3 + 191);
    result = PB::Writer::write(this);
  }

  v39 = *(v3 + 204);
  if ((v39 & 0x80000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 100));
    v39 = *(v3 + 204);
    if ((v39 & 0x800) == 0)
    {
LABEL_80:
      if ((v39 & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_158;
    }
  }

  else if ((v39 & 0x800) == 0)
  {
    goto LABEL_80;
  }

  result = PB::Writer::write(this, *(v3 + 68));
  v39 = *(v3 + 204);
  if ((v39 & 0x80000000) == 0)
  {
LABEL_81:
    if ((v39 & 0x8000000000000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_159;
  }

LABEL_158:
  result = PB::Writer::write(this, *(v3 + 148));
  v39 = *(v3 + 204);
  if ((v39 & 0x8000000000000000) == 0)
  {
LABEL_82:
    if ((v39 & 0x8000000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_159:
  v69 = *(v3 + 186);
  result = PB::Writer::write(this);
  if ((*(v3 + 204) & 0x8000000000) != 0)
  {
LABEL_83:
    v40 = *(v3 + 162);
    result = PB::Writer::write(this);
  }

LABEL_84:
  if ((*(v3 + 213) & 0x80) != 0)
  {
    v41 = *(v3 + 202);
    result = PB::Writer::write(this);
  }

  v42 = *(v3 + 204);
  if ((v42 & 0x800000000000) != 0)
  {
    v43 = *(v3 + 170);
    result = PB::Writer::write(this);
    v42 = *(v3 + 204);
  }

  if ((v42 & 0x80000000000000) != 0)
  {
    v44 = *(v3 + 178);
    result = PB::Writer::write(this);
  }

  if ((*(v3 + 212) & 0x80) != 0)
  {
    v45 = *(v3 + 194);
    result = PB::Writer::write(this);
  }

  v46 = *(v3 + 204);
  if ((v46 & 8) != 0)
  {
    v70 = *(v3 + 32);
    result = PB::Writer::writeVarInt(this);
    v46 = *(v3 + 204);
    if ((v46 & 0x1000000) == 0)
    {
LABEL_94:
      if ((v46 & 0x10000) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_163;
    }
  }

  else if ((v46 & 0x1000000) == 0)
  {
    goto LABEL_94;
  }

  result = PB::Writer::write(this, *(v3 + 120));
  v46 = *(v3 + 204);
  if ((v46 & 0x10000) == 0)
  {
LABEL_95:
    if ((v46 & 0x100) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_164;
  }

LABEL_163:
  result = PB::Writer::write(this, *(v3 + 88));
  v46 = *(v3 + 204);
  if ((v46 & 0x100) == 0)
  {
LABEL_96:
    if ((v46 & 0x10000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_165;
  }

LABEL_164:
  result = PB::Writer::write(this, *(v3 + 56));
  v46 = *(v3 + 204);
  if ((v46 & 0x10000000) == 0)
  {
LABEL_97:
    if ((v46 & 0x1000000000000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_166;
  }

LABEL_165:
  result = PB::Writer::write(this, *(v3 + 136));
  v46 = *(v3 + 204);
  if ((v46 & 0x1000000000000000) == 0)
  {
LABEL_98:
    if ((v46 & 0x1000000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

LABEL_166:
  v71 = *(v3 + 183);
  result = PB::Writer::write(this);
  if ((*(v3 + 204) & 0x1000000000) != 0)
  {
LABEL_99:
    v47 = *(v3 + 159);
    result = PB::Writer::write(this);
  }

LABEL_100:
  if ((*(v3 + 213) & 0x10) != 0)
  {
    v48 = *(v3 + 199);
    result = PB::Writer::write(this);
  }

  v49 = *(v3 + 204);
  if ((v49 & 0x100000000000) != 0)
  {
    v50 = *(v3 + 167);
    result = PB::Writer::write(this);
    v49 = *(v3 + 204);
  }

  if ((v49 & 0x10000000000000) != 0)
  {
    v51 = *(v3 + 175);
    result = PB::Writer::write(this);
  }

  if ((*(v3 + 212) & 0x20) != 0)
  {
    v52 = *(v3 + 192);
    result = PB::Writer::write(this);
  }

  v53 = *(v3 + 204);
  if ((v53 & 0x100000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 104));
    v53 = *(v3 + 204);
    if ((v53 & 0x1000) == 0)
    {
LABEL_110:
      if ((v53 & 0x100000000) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_111;
    }
  }

  else if ((v53 & 0x1000) == 0)
  {
    goto LABEL_110;
  }

  result = PB::Writer::write(this, *(v3 + 72));
  if ((*(v3 + 204) & 0x100000000) != 0)
  {
LABEL_111:
    result = PB::Writer::write(this, *(v3 + 152));
  }

LABEL_112:
  if (*(v3 + 212))
  {
    v54 = *(v3 + 187);
    result = PB::Writer::write(this);
  }

  if (*(v3 + 209))
  {
    v55 = *(v3 + 163);
    result = PB::Writer::write(this);
  }

  if (*(v3 + 214))
  {
    v56 = *(v3 + 203);
    result = PB::Writer::write(this);
  }

  v57 = *(v3 + 204);
  if ((v57 & 0x1000000000000) != 0)
  {
    v58 = *(v3 + 171);
    result = PB::Writer::write(this);
    v57 = *(v3 + 204);
  }

  if ((v57 & 0x100000000000000) != 0)
  {
    v59 = *(v3 + 179);
    result = PB::Writer::write(this);
  }

  if (*(v3 + 213))
  {
    v72 = *(v3 + 195);

    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_245DE1F4C(uint64_t result)
{
  *result = &unk_2858CE108;
  *(result + 32) = 0;
  return result;
}

void sub_245DE1F74(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DE1FAC(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CE108;
  *(result + 32) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 16);
    v3 = 2;
    *(result + 32) = 2;
    *(result + 16) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 32))
  {
LABEL_5:
    v5 = *(a2 + 8);
    v3 |= 1u;
    *(result + 32) = v3;
    *(result + 8) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_10:
    v7 = *(a2 + 28);
    *(result + 32) = v3 | 8;
    *(result + 28) = v7;
    return result;
  }

  v6 = *(a2 + 24);
  v3 |= 4u;
  *(result + 32) = v3;
  *(result + 24) = v6;
  if ((*(a2 + 32) & 8) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_245DE2048(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "distanceToNearestRoad", *(a1 + 24));
    v5 = *(a1 + 32);
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

  else if ((*(a1 + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 28);
  PB::TextFormatter::format(this, "roadClass");
  v5 = *(a1 + 32);
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
  v8 = *(a1 + 8);
  PB::TextFormatter::format(this, "searchTimestamp");
  if ((*(a1 + 32) & 2) != 0)
  {
LABEL_5:
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_6:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DE210C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_97;
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
          *(a1 + 32) |= 4u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
          {
            *(a1 + 24) = *(*this + v2);
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          else
          {
            *(this + 24) = 1;
          }

          goto LABEL_93;
        }

        if (v22 == 4)
        {
          *(a1 + 32) |= 8u;
          v31 = *(this + 1);
          v2 = *(this + 2);
          v32 = *this;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v54 = 0;
            v55 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(this + 1);
            }

            v56 = v2 - v31;
            v57 = (v32 + v31);
            v58 = v31 + 1;
            while (1)
            {
              if (!v56)
              {
                LODWORD(v35) = 0;
                *(this + 24) = 1;
                goto LABEL_88;
              }

              v59 = v58;
              v60 = *v57;
              *(this + 1) = v59;
              v35 |= (v60 & 0x7F) << v54;
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
                LODWORD(v35) = 0;
                goto LABEL_87;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_87:
            v2 = v59;
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

LABEL_88:
          *(a1 + 28) = v35;
          goto LABEL_93;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 32) |= 2u;
          v39 = *(this + 1);
          v2 = *(this + 2);
          v40 = *this;
          if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
          {
            v61 = 0;
            v62 = 0;
            v43 = 0;
            if (v2 <= v39)
            {
              v2 = *(this + 1);
            }

            v63 = v2 - v39;
            v64 = (v40 + v39);
            v65 = v39 + 1;
            while (1)
            {
              if (!v63)
              {
                v43 = 0;
                *(this + 24) = 1;
                goto LABEL_92;
              }

              v66 = v65;
              v67 = *v64;
              *(this + 1) = v66;
              v43 |= (v67 & 0x7F) << v61;
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
                v43 = 0;
                goto LABEL_91;
              }
            }

            if (*(this + 24))
            {
              v43 = 0;
            }

LABEL_91:
            v2 = v66;
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

LABEL_92:
          *(a1 + 16) = v43;
          goto LABEL_93;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 1u;
          v23 = *(this + 1);
          v2 = *(this + 2);
          v24 = *this;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v47 = 0;
            v48 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(this + 1);
            }

            v49 = v2 - v23;
            v50 = (v24 + v23);
            v51 = v23 + 1;
            while (1)
            {
              if (!v49)
              {
                v27 = 0;
                *(this + 24) = 1;
                goto LABEL_84;
              }

              v52 = v51;
              v53 = *v50;
              *(this + 1) = v52;
              v27 |= (v53 & 0x7F) << v47;
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
                v27 = 0;
                goto LABEL_83;
              }
            }

            if (*(this + 24))
            {
              v27 = 0;
            }

LABEL_83:
            v2 = v52;
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

LABEL_84:
          *(a1 + 8) = v27;
          goto LABEL_93;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v68 = 0;
        return v68 & 1;
      }

      v2 = *(this + 1);
LABEL_93:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_97:
  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t sub_245DE25F8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if ((v4 & 2) != 0)
  {
    v5 = *(result + 16);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 32);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 24));
      if ((*(v3 + 32) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
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
  v7 = *(v3 + 28);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245DE26A0(uint64_t result)
{
  *result = &unk_2858CE140;
  *(result + 40) = 0;
  return result;
}

void sub_245DE26C8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DE2700(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CE140;
  *(result + 40) = 0;
  v2 = *(a2 + 40);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 24);
    v3 = 4;
    *(result + 40) = 4;
    *(result + 24) = v4;
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
    v5 = *(a2 + 32);
    v3 |= 8u;
    *(result + 40) = v3;
    *(result + 32) = v5;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 36);
    v3 |= 0x10u;
    *(result + 40) = v3;
    *(result + 36) = v6;
    v2 = *(a2 + 40);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        return result;
      }

LABEL_12:
      v8 = *(a2 + 16);
      *(result + 40) = v3 | 2;
      *(result + 16) = v8;
      return result;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 8);
  v3 |= 1u;
  *(result + 40) = v3;
  *(result + 8) = v7;
  if ((*(a2 + 40) & 2) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_245DE27B8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(this, "distanceToNearestRoad", *(a1 + 32));
    v5 = *(a1 + 40);
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

  else if ((*(a1 + 40) & 1) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 8);
  PB::TextFormatter::format(this, "epochFirstTimestamp");
  v5 = *(a1 + 40);
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
  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "epochLastTimestamp");
  v5 = *(a1 + 40);
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
  v9 = *(a1 + 36);
  PB::TextFormatter::format(this, "roadClass");
  if ((*(a1 + 40) & 4) != 0)
  {
LABEL_6:
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_7:

  return MEMORY[0x2821A4560](this);
}