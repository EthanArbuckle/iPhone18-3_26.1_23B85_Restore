uint64_t CMMsl::RelativeDeviceMotionComplexTransition::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 188);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 188);
    if ((v4 & 0x800000) == 0)
    {
LABEL_3:
      if ((v4 & 0x1000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_54;
    }
  }

  else if ((v4 & 0x800000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 104));
  v4 = *(v3 + 188);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_4:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = PB::Writer::write(a2, *(v3 + 108));
  v4 = *(v3 + 188);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = PB::Writer::write(a2, *(v3 + 112));
  v4 = *(v3 + 188);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 188);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 188);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 188);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = PB::Writer::write(a2, *(v3 + 132));
  v4 = *(v3 + 188);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 188);
  if ((v4 & 0x200000) == 0)
  {
LABEL_11:
    if ((v4 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = PB::Writer::write(a2, *(v3 + 96));
  v4 = *(v3 + 188);
  if ((v4 & 2) == 0)
  {
LABEL_12:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 188);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_13:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = PB::Writer::write(a2, *(v3 + 116));
  v4 = *(v3 + 188);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = PB::Writer::write(a2, *(v3 + 120));
  v4 = *(v3 + 188);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = PB::Writer::write(a2, *(v3 + 124));
  v4 = *(v3 + 188);
  if ((v4 & 0x40) == 0)
  {
LABEL_16:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 188);
  if ((v4 & 0x80) == 0)
  {
LABEL_17:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 188);
  if ((v4 & 0x100) == 0)
  {
LABEL_18:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = PB::Writer::write(a2, *(v3 + 44));
  v4 = *(v3 + 188);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_19:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = PB::Writer::write(a2, *(v3 + 136));
  v4 = *(v3 + 188);
  if ((v4 & 0x400) == 0)
  {
LABEL_20:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = PB::Writer::write(a2, *(v3 + 52));
  v4 = *(v3 + 188);
  if ((v4 & 0x400000) == 0)
  {
LABEL_21:
    if ((v4 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = PB::Writer::write(a2, *(v3 + 100));
  v4 = *(v3 + 188);
  if ((v4 & 4) == 0)
  {
LABEL_22:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 188);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_23:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = PB::Writer::write(a2, *(v3 + 148));
  v4 = *(v3 + 188);
  if ((v4 & 0x4000) == 0)
  {
LABEL_24:
    if ((v4 & 0x2000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = PB::Writer::write(a2, *(v3 + 68));
  v4 = *(v3 + 188);
  if ((v4 & 0x2000000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = PB::Writer::write(a2, *(v3 + 160));
  v4 = *(v3 + 188);
  if ((v4 & 0x20000) == 0)
  {
LABEL_26:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_77;
  }

LABEL_76:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 188);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_27:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = PB::Writer::write(a2, *(v3 + 152));
  v4 = *(v3 + 188);
  if ((v4 & 0x8000) == 0)
  {
LABEL_28:
    if ((v4 & 0x4000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 188);
  if ((v4 & 0x4000000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_80;
  }

LABEL_79:
  this = PB::Writer::write(a2, *(v3 + 164));
  v4 = *(v3 + 188);
  if ((v4 & 0x40000) == 0)
  {
LABEL_30:
    if ((v4 & 0x1000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_81;
  }

LABEL_80:
  this = PB::Writer::write(a2, *(v3 + 84));
  v4 = *(v3 + 188);
  if ((v4 & 0x1000000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_82;
  }

LABEL_81:
  this = PB::Writer::write(a2, *(v3 + 156));
  v4 = *(v3 + 188);
  if ((v4 & 0x10000) == 0)
  {
LABEL_32:
    if ((v4 & 0x8000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_83;
  }

LABEL_82:
  this = PB::Writer::write(a2, *(v3 + 76));
  v4 = *(v3 + 188);
  if ((v4 & 0x8000000000) == 0)
  {
LABEL_33:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_84;
  }

LABEL_83:
  this = PB::Writer::write(a2, *(v3 + 168));
  v4 = *(v3 + 188);
  if ((v4 & 0x80000) == 0)
  {
LABEL_34:
    if ((v4 & 0x200000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_85;
  }

LABEL_84:
  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 188);
  if ((v4 & 0x200000000000) == 0)
  {
LABEL_35:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_86;
  }

LABEL_85:
  v5 = *(v3 + 183);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 188);
  if ((v4 & 0x800) == 0)
  {
LABEL_36:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_87;
  }

LABEL_86:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 188);
  if ((v4 & 0x1000) == 0)
  {
LABEL_37:
    if ((v4 & 0x100000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_88;
  }

LABEL_87:
  this = PB::Writer::write(a2, *(v3 + 60));
  v4 = *(v3 + 188);
  if ((v4 & 0x100000000000) == 0)
  {
LABEL_38:
    if ((v4 & 0x400000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_89;
  }

LABEL_88:
  v6 = *(v3 + 182);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 188);
  if ((v4 & 0x400000000000) == 0)
  {
LABEL_39:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_90;
  }

LABEL_89:
  v7 = *(v3 + 184);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 188);
  if ((v4 & 0x2000) == 0)
  {
LABEL_40:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_91;
  }

LABEL_90:
  v8 = *(v3 + 64);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 188);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_41:
    if ((v4 & 0x200000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_92;
  }

LABEL_91:
  this = PB::Writer::write(a2, *(v3 + 140));
  v4 = *(v3 + 188);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_42:
    if ((v4 & 0x1000000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_93;
  }

LABEL_92:
  this = PB::Writer::write(a2, *(v3 + 144));
  v4 = *(v3 + 188);
  if ((v4 & 0x1000000000000) == 0)
  {
LABEL_43:
    if ((v4 & 0x80000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_94;
  }

LABEL_93:
  v9 = *(v3 + 186);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 188);
  if ((v4 & 0x80000000000) == 0)
  {
LABEL_44:
    if ((v4 & 0x40000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_95;
  }

LABEL_94:
  v10 = *(v3 + 181);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 188);
  if ((v4 & 0x40000000000) == 0)
  {
LABEL_45:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_96;
  }

LABEL_95:
  v11 = *(v3 + 180);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 188);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_46:
    if ((v4 & 0x20000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_97;
  }

LABEL_96:
  this = PB::Writer::write(a2, *(v3 + 128));
  v4 = *(v3 + 188);
  if ((v4 & 0x20000000000) == 0)
  {
LABEL_47:
    if ((v4 & 0x10000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_98;
  }

LABEL_97:
  this = PB::Writer::write(a2, *(v3 + 176));
  v4 = *(v3 + 188);
  if ((v4 & 0x10000000000) == 0)
  {
LABEL_48:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_99;
  }

LABEL_98:
  this = PB::Writer::write(a2, *(v3 + 172));
  v4 = *(v3 + 188);
  if ((v4 & 0x100000) == 0)
  {
LABEL_49:
    if ((v4 & 0x800000000000) == 0)
    {
      goto LABEL_50;
    }

LABEL_100:
    v13 = *(v3 + 185);
    this = PB::Writer::write(a2);
    if ((*(v3 + 188) & 0x2000000000000) == 0)
    {
      return this;
    }

    goto LABEL_101;
  }

LABEL_99:
  v12 = *(v3 + 92);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 188);
  if ((v4 & 0x800000000000) != 0)
  {
    goto LABEL_100;
  }

LABEL_50:
  if ((v4 & 0x2000000000000) == 0)
  {
    return this;
  }

LABEL_101:
  v14 = *(v3 + 187);

  return PB::Writer::write(a2);
}

uint64_t CMMsl::RelativeDeviceMotionComplexTransition::hash_value(CMMsl::RelativeDeviceMotionComplexTransition *this)
{
  v1 = *(this + 188);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_3;
    }

LABEL_137:
    v114 = 0;
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_138:
    v113 = 0;
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_9;
    }

LABEL_139:
    v112 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_140:
    v111 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_15;
    }

LABEL_141:
    v110 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_18;
    }

LABEL_142:
    v109 = 0;
    if ((v1 & 0x40000000) != 0)
    {
      goto LABEL_21;
    }

LABEL_143:
    v108 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_24;
    }

LABEL_144:
    v107 = 0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_27;
    }

LABEL_145:
    v106 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_30;
    }

LABEL_146:
    v105 = 0;
    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_33;
    }

LABEL_147:
    v104 = 0;
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_36;
    }

LABEL_148:
    v103 = 0;
    if ((v1 & 0x10000000) != 0)
    {
      goto LABEL_39;
    }

LABEL_149:
    v102 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_42;
    }

LABEL_150:
    v101 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_45;
    }

LABEL_151:
    v100 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_48;
    }

LABEL_152:
    v99 = 0;
    if ((v1 & 0x80000000) != 0)
    {
      goto LABEL_51;
    }

LABEL_153:
    v98 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_54;
    }

LABEL_154:
    v97 = 0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_57;
    }

LABEL_155:
    v96 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_60;
    }

LABEL_156:
    v95 = 0;
    if ((v1 & 0x400000000) != 0)
    {
      goto LABEL_63;
    }

LABEL_157:
    v94 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_66;
    }

LABEL_158:
    v93 = 0;
    if ((v1 & 0x2000000000) != 0)
    {
      goto LABEL_69;
    }

LABEL_159:
    v92 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_72;
    }

LABEL_160:
    v50 = 0;
    if ((v1 & 0x800000000) != 0)
    {
      goto LABEL_76;
    }

LABEL_161:
    v52 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_80;
    }

LABEL_162:
    v54 = 0;
    if ((v1 & 0x4000000000) != 0)
    {
      goto LABEL_84;
    }

LABEL_163:
    v56 = 0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_87;
    }

LABEL_164:
    v58 = 0;
    if ((v1 & 0x1000000000) != 0)
    {
      goto LABEL_90;
    }

LABEL_165:
    v60 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_93;
    }

LABEL_166:
    v62 = 0;
    if ((v1 & 0x8000000000) != 0)
    {
      goto LABEL_96;
    }

LABEL_167:
    v64 = 0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_99;
    }

LABEL_168:
    v66 = 0;
    if ((v1 & 0x200000000000) != 0)
    {
      goto LABEL_102;
    }

    goto LABEL_169;
  }

  if (*(this + 1) == 0.0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 1);
  }

  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_137;
  }

LABEL_3:
  v3 = *(this + 26);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  v114 = v4;
  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_138;
  }

LABEL_6:
  v5 = *(this + 27);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  v113 = v6;
  if ((v1 & 0x2000000) == 0)
  {
    goto LABEL_139;
  }

LABEL_9:
  v7 = *(this + 28);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  v112 = v8;
  if ((v1 & 8) == 0)
  {
    goto LABEL_140;
  }

LABEL_12:
  v9 = *(this + 6);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  v111 = v10;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_141;
  }

LABEL_15:
  v11 = *(this + 7);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  v110 = v12;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_142;
  }

LABEL_18:
  v13 = *(this + 8);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  v109 = v14;
  if ((v1 & 0x40000000) == 0)
  {
    goto LABEL_143;
  }

LABEL_21:
  v15 = *(this + 33);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  v108 = v16;
  if ((v1 & 0x200) == 0)
  {
    goto LABEL_144;
  }

LABEL_24:
  v17 = *(this + 12);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  v107 = v18;
  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_145;
  }

LABEL_27:
  v19 = *(this + 24);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  v106 = v20;
  if ((v1 & 2) == 0)
  {
    goto LABEL_146;
  }

LABEL_30:
  v21 = *(this + 4);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  v105 = v22;
  if ((v1 & 0x4000000) == 0)
  {
    goto LABEL_147;
  }

LABEL_33:
  v23 = *(this + 29);
  v24 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  v104 = v24;
  if ((v1 & 0x8000000) == 0)
  {
    goto LABEL_148;
  }

LABEL_36:
  v25 = *(this + 30);
  v26 = LODWORD(v25);
  if (v25 == 0.0)
  {
    v26 = 0;
  }

  v103 = v26;
  if ((v1 & 0x10000000) == 0)
  {
    goto LABEL_149;
  }

LABEL_39:
  v27 = *(this + 31);
  v28 = LODWORD(v27);
  if (v27 == 0.0)
  {
    v28 = 0;
  }

  v102 = v28;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_150;
  }

LABEL_42:
  v29 = *(this + 9);
  v30 = LODWORD(v29);
  if (v29 == 0.0)
  {
    v30 = 0;
  }

  v101 = v30;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_151;
  }

LABEL_45:
  v31 = *(this + 10);
  v32 = LODWORD(v31);
  if (v31 == 0.0)
  {
    v32 = 0;
  }

  v100 = v32;
  if ((v1 & 0x100) == 0)
  {
    goto LABEL_152;
  }

LABEL_48:
  v33 = *(this + 11);
  v34 = LODWORD(v33);
  if (v33 == 0.0)
  {
    v34 = 0;
  }

  v99 = v34;
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_153;
  }

LABEL_51:
  v35 = *(this + 34);
  v36 = LODWORD(v35);
  if (v35 == 0.0)
  {
    v36 = 0;
  }

  v98 = v36;
  if ((v1 & 0x400) == 0)
  {
    goto LABEL_154;
  }

LABEL_54:
  v37 = *(this + 13);
  v38 = LODWORD(v37);
  if (v37 == 0.0)
  {
    v38 = 0;
  }

  v97 = v38;
  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_155;
  }

LABEL_57:
  v39 = *(this + 25);
  v40 = LODWORD(v39);
  if (v39 == 0.0)
  {
    v40 = 0;
  }

  v96 = v40;
  if ((v1 & 4) == 0)
  {
    goto LABEL_156;
  }

LABEL_60:
  v41 = *(this + 5);
  v42 = LODWORD(v41);
  if (v41 == 0.0)
  {
    v42 = 0;
  }

  v95 = v42;
  if ((v1 & 0x400000000) == 0)
  {
    goto LABEL_157;
  }

LABEL_63:
  v43 = *(this + 37);
  v44 = LODWORD(v43);
  if (v43 == 0.0)
  {
    v44 = 0;
  }

  v94 = v44;
  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_158;
  }

LABEL_66:
  v45 = *(this + 17);
  v46 = LODWORD(v45);
  if (v45 == 0.0)
  {
    v46 = 0;
  }

  v93 = v46;
  if ((v1 & 0x2000000000) == 0)
  {
    goto LABEL_159;
  }

LABEL_69:
  v47 = *(this + 40);
  v48 = LODWORD(v47);
  if (v47 == 0.0)
  {
    v48 = 0;
  }

  v92 = v48;
  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_160;
  }

LABEL_72:
  v49 = *(this + 20);
  if (v49 == 0.0)
  {
    v50 = 0;
  }

  else
  {
    v50 = LODWORD(v49);
  }

  if ((v1 & 0x800000000) == 0)
  {
    goto LABEL_161;
  }

LABEL_76:
  v51 = *(this + 38);
  if (v51 == 0.0)
  {
    v52 = 0;
  }

  else
  {
    v52 = LODWORD(v51);
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_162;
  }

LABEL_80:
  v53 = *(this + 18);
  if (v53 == 0.0)
  {
    v54 = 0;
  }

  else
  {
    v54 = LODWORD(v53);
  }

  if ((v1 & 0x4000000000) == 0)
  {
    goto LABEL_163;
  }

LABEL_84:
  v55 = *(this + 41);
  v56 = LODWORD(v55);
  if (v55 == 0.0)
  {
    v56 = 0;
  }

  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_164;
  }

LABEL_87:
  v57 = *(this + 21);
  v58 = LODWORD(v57);
  if (v57 == 0.0)
  {
    v58 = 0;
  }

  if ((v1 & 0x1000000000) == 0)
  {
    goto LABEL_165;
  }

LABEL_90:
  v59 = *(this + 39);
  v60 = LODWORD(v59);
  if (v59 == 0.0)
  {
    v60 = 0;
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_166;
  }

LABEL_93:
  v61 = *(this + 19);
  v62 = LODWORD(v61);
  if (v61 == 0.0)
  {
    v62 = 0;
  }

  if ((v1 & 0x8000000000) == 0)
  {
    goto LABEL_167;
  }

LABEL_96:
  v63 = *(this + 42);
  v64 = LODWORD(v63);
  if (v63 == 0.0)
  {
    v64 = 0;
  }

  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_168;
  }

LABEL_99:
  v65 = *(this + 22);
  v66 = LODWORD(v65);
  if (v65 == 0.0)
  {
    v66 = 0;
  }

  if ((v1 & 0x200000000000) != 0)
  {
LABEL_102:
    v67 = *(this + 183);
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_103;
    }

LABEL_170:
    v69 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_106;
    }

LABEL_171:
    v71 = 0;
    if ((v1 & 0x100000000000) != 0)
    {
      goto LABEL_109;
    }

    goto LABEL_172;
  }

LABEL_169:
  v67 = 0;
  if ((v1 & 0x800) == 0)
  {
    goto LABEL_170;
  }

LABEL_103:
  v68 = *(this + 14);
  v69 = LODWORD(v68);
  if (v68 == 0.0)
  {
    v69 = 0;
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_171;
  }

LABEL_106:
  v70 = *(this + 15);
  v71 = LODWORD(v70);
  if (v70 == 0.0)
  {
    v71 = 0;
  }

  if ((v1 & 0x100000000000) != 0)
  {
LABEL_109:
    v72 = *(this + 182);
    if ((v1 & 0x400000000000) != 0)
    {
      goto LABEL_110;
    }

    goto LABEL_173;
  }

LABEL_172:
  v72 = 0;
  if ((v1 & 0x400000000000) != 0)
  {
LABEL_110:
    v73 = *(this + 184);
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_111;
    }

    goto LABEL_174;
  }

LABEL_173:
  v73 = 0;
  if ((v1 & 0x2000) != 0)
  {
LABEL_111:
    v74 = *(this + 16);
    if ((v1 & 0x100000000) != 0)
    {
      goto LABEL_112;
    }

LABEL_175:
    v76 = 0;
    if ((v1 & 0x200000000) != 0)
    {
      goto LABEL_115;
    }

LABEL_176:
    v78 = 0;
    if ((v1 & 0x1000000000000) != 0)
    {
      goto LABEL_118;
    }

    goto LABEL_177;
  }

LABEL_174:
  v74 = 0;
  if ((v1 & 0x100000000) == 0)
  {
    goto LABEL_175;
  }

LABEL_112:
  v75 = *(this + 35);
  v76 = LODWORD(v75);
  if (v75 == 0.0)
  {
    v76 = 0;
  }

  if ((v1 & 0x200000000) == 0)
  {
    goto LABEL_176;
  }

LABEL_115:
  v77 = *(this + 36);
  v78 = LODWORD(v77);
  if (v77 == 0.0)
  {
    v78 = 0;
  }

  if ((v1 & 0x1000000000000) != 0)
  {
LABEL_118:
    v79 = *(this + 186);
    if ((v1 & 0x80000000000) != 0)
    {
      goto LABEL_119;
    }

    goto LABEL_178;
  }

LABEL_177:
  v79 = 0;
  if ((v1 & 0x80000000000) != 0)
  {
LABEL_119:
    v80 = *(this + 181);
    if ((v1 & 0x40000000000) != 0)
    {
      goto LABEL_120;
    }

    goto LABEL_179;
  }

LABEL_178:
  v80 = 0;
  if ((v1 & 0x40000000000) != 0)
  {
LABEL_120:
    v81 = *(this + 180);
    if ((v1 & 0x20000000) != 0)
    {
      goto LABEL_121;
    }

LABEL_180:
    v83 = 0;
    if ((v1 & 0x20000000000) != 0)
    {
      goto LABEL_124;
    }

LABEL_181:
    v85 = 0;
    if ((v1 & 0x10000000000) != 0)
    {
      goto LABEL_127;
    }

LABEL_182:
    v87 = 0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_130;
    }

    goto LABEL_183;
  }

LABEL_179:
  v81 = 0;
  if ((v1 & 0x20000000) == 0)
  {
    goto LABEL_180;
  }

LABEL_121:
  v82 = *(this + 32);
  v83 = LODWORD(v82);
  if (v82 == 0.0)
  {
    v83 = 0;
  }

  if ((v1 & 0x20000000000) == 0)
  {
    goto LABEL_181;
  }

LABEL_124:
  v84 = *(this + 44);
  v85 = LODWORD(v84);
  if (v84 == 0.0)
  {
    v85 = 0;
  }

  if ((v1 & 0x10000000000) == 0)
  {
    goto LABEL_182;
  }

LABEL_127:
  v86 = *(this + 43);
  v87 = LODWORD(v86);
  if (v86 == 0.0)
  {
    v87 = 0;
  }

  if ((v1 & 0x100000) != 0)
  {
LABEL_130:
    v88 = *(this + 23);
    if ((v1 & 0x800000000000) != 0)
    {
      goto LABEL_131;
    }

LABEL_184:
    v89 = 0;
    if ((v1 & 0x2000000000000) != 0)
    {
      goto LABEL_132;
    }

LABEL_185:
    v90 = 0;
    return v114 ^ v2 ^ v113 ^ v112 ^ v111 ^ v110 ^ v109 ^ v108 ^ v107 ^ v106 ^ v105 ^ v104 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v50 ^ v52 ^ v54 ^ v56 ^ v58 ^ v60 ^ v62 ^ v64 ^ v66 ^ v67 ^ v69 ^ v71 ^ v72 ^ v73 ^ v74 ^ v76 ^ v78 ^ v79 ^ v80 ^ v81 ^ v83 ^ v85 ^ v87 ^ v88 ^ v89 ^ v90;
  }

LABEL_183:
  v88 = 0;
  if ((v1 & 0x800000000000) == 0)
  {
    goto LABEL_184;
  }

LABEL_131:
  v89 = *(this + 185);
  if ((v1 & 0x2000000000000) == 0)
  {
    goto LABEL_185;
  }

LABEL_132:
  v90 = *(this + 187);
  return v114 ^ v2 ^ v113 ^ v112 ^ v111 ^ v110 ^ v109 ^ v108 ^ v107 ^ v106 ^ v105 ^ v104 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v50 ^ v52 ^ v54 ^ v56 ^ v58 ^ v60 ^ v62 ^ v64 ^ v66 ^ v67 ^ v69 ^ v71 ^ v72 ^ v73 ^ v74 ^ v76 ^ v78 ^ v79 ^ v80 ^ v81 ^ v83 ^ v85 ^ v87 ^ v88 ^ v89 ^ v90;
}

void CMMsl::RelativeDeviceMotionCorrelatedMotion::~RelativeDeviceMotionCorrelatedMotion(CMMsl::RelativeDeviceMotionCorrelatedMotion *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::RelativeDeviceMotionCorrelatedMotion::RelativeDeviceMotionCorrelatedMotion(uint64_t this, const CMMsl::RelativeDeviceMotionCorrelatedMotion *a2)
{
  *this = &unk_286C23100;
  *(this + 128) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 3);
    v3 = 4;
    *(this + 128) = 4;
    *(this + 24) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x100000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 25);
    v3 |= 0x100000u;
    *(this + 128) = v3;
    *(this + 100) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 0x80) != 0)
  {
    v6 = *(a2 + 12);
    v3 |= 0x80u;
    *(this + 128) = v3;
    *(this + 48) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 0x80000) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_39;
    }
  }

  else if ((v2 & 0x80000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 24);
  v3 |= 0x80000u;
  *(this + 128) = v3;
  *(this + 96) = v7;
  v2 = *(a2 + 32);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  v8 = *(a2 + 11);
  v3 |= 0x40u;
  *(this + 128) = v3;
  *(this + 44) = v8;
  v2 = *(a2 + 32);
  if ((v2 & 0x4000) == 0)
  {
LABEL_10:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  v9 = *(a2 + 19);
  v3 |= 0x4000u;
  *(this + 128) = v3;
  *(this + 76) = v9;
  v2 = *(a2 + 32);
  if ((v2 & 0x2000) == 0)
  {
LABEL_11:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  v10 = *(a2 + 18);
  v3 |= 0x2000u;
  *(this + 128) = v3;
  *(this + 72) = v10;
  v2 = *(a2 + 32);
  if ((v2 & 0x1000) == 0)
  {
LABEL_12:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  v11 = *(a2 + 17);
  v3 |= 0x1000u;
  *(this + 128) = v3;
  *(this + 68) = v11;
  v2 = *(a2 + 32);
  if ((v2 & 0x800000) == 0)
  {
LABEL_13:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  v12 = *(a2 + 28);
  v3 |= 0x800000u;
  *(this + 128) = v3;
  *(this + 112) = v12;
  v2 = *(a2 + 32);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_14:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  v13 = *(a2 + 124);
  v3 |= 0x20000000u;
  *(this + 128) = v3;
  *(this + 124) = v13;
  v2 = *(a2 + 32);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_15:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  v14 = *(a2 + 120);
  v3 |= 0x2000000u;
  *(this + 128) = v3;
  *(this + 120) = v14;
  v2 = *(a2 + 32);
  if ((v2 & 0x400) == 0)
  {
LABEL_16:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  v15 = *(a2 + 15);
  v3 |= 0x400u;
  *(this + 128) = v3;
  *(this + 60) = v15;
  v2 = *(a2 + 32);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_17:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  v16 = *(a2 + 123);
  v3 |= 0x10000000u;
  *(this + 128) = v3;
  *(this + 123) = v16;
  v2 = *(a2 + 32);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  v17 = *(a2 + 125);
  v3 |= 0x40000000u;
  *(this + 128) = v3;
  *(this + 125) = v17;
  v2 = *(a2 + 32);
  if ((v2 & 0x40000) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  v18 = *(a2 + 23);
  v3 |= 0x40000u;
  *(this + 128) = v3;
  *(this + 92) = v18;
  v2 = *(a2 + 32);
  if ((v2 & 0x20) == 0)
  {
LABEL_20:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  v19 = *(a2 + 10);
  v3 |= 0x20u;
  *(this + 128) = v3;
  *(this + 40) = v19;
  v2 = *(a2 + 32);
  if ((v2 & 0x20000) == 0)
  {
LABEL_21:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  v20 = *(a2 + 22);
  v3 |= 0x20000u;
  *(this + 128) = v3;
  *(this + 88) = v20;
  v2 = *(a2 + 32);
  if ((v2 & 0x10) == 0)
  {
LABEL_22:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  v21 = *(a2 + 9);
  v3 |= 0x10u;
  *(this + 128) = v3;
  *(this + 36) = v21;
  v2 = *(a2 + 32);
  if ((v2 & 0x100) == 0)
  {
LABEL_23:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  v22 = *(a2 + 13);
  v3 |= 0x100u;
  *(this + 128) = v3;
  *(this + 52) = v22;
  v2 = *(a2 + 32);
  if ((v2 & 0x400000) == 0)
  {
LABEL_24:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  v23 = *(a2 + 27);
  v3 |= 0x400000u;
  *(this + 128) = v3;
  *(this + 108) = v23;
  v2 = *(a2 + 32);
  if ((v2 & 0x80000000) == 0)
  {
LABEL_25:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  v24 = *(a2 + 126);
  v3 |= 0x80000000;
  *(this + 128) = v3;
  *(this + 126) = v24;
  v2 = *(a2 + 32);
  if ((v2 & 0x10000) == 0)
  {
LABEL_26:
    if ((v2 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  v25 = *(a2 + 21);
  v3 |= 0x10000u;
  *(this + 128) = v3;
  *(this + 84) = v25;
  v2 = *(a2 + 32);
  if ((v2 & 8) == 0)
  {
LABEL_27:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  v26 = *(a2 + 8);
  v3 |= 8u;
  *(this + 128) = v3;
  *(this + 32) = v26;
  v2 = *(a2 + 32);
  if ((v2 & 0x200) == 0)
  {
LABEL_28:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  v27 = *(a2 + 14);
  v3 |= 0x200u;
  *(this + 128) = v3;
  *(this + 56) = v27;
  v2 = *(a2 + 32);
  if ((v2 & 0x200000) == 0)
  {
LABEL_29:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_60;
  }

LABEL_59:
  v28 = *(a2 + 26);
  v3 |= 0x200000u;
  *(this + 128) = v3;
  *(this + 104) = v28;
  v2 = *(a2 + 32);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_30:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_61;
  }

LABEL_60:
  v29 = *(a2 + 121);
  v3 |= 0x4000000u;
  *(this + 128) = v3;
  *(this + 121) = v29;
  v2 = *(a2 + 32);
  if ((v2 & 0x800) == 0)
  {
LABEL_31:
    if ((v2 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_62;
  }

LABEL_61:
  v30 = *(a2 + 16);
  v3 |= 0x800u;
  *(this + 128) = v3;
  *(this + 64) = v30;
  v2 = *(a2 + 32);
  if ((v2 & 1) == 0)
  {
LABEL_32:
    if ((v2 & 2) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_63;
  }

LABEL_62:
  v31 = *(a2 + 1);
  v3 |= 1u;
  *(this + 128) = v3;
  *(this + 8) = v31;
  v2 = *(a2 + 32);
  if ((v2 & 2) == 0)
  {
LABEL_33:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  v32 = *(a2 + 2);
  v3 |= 2u;
  *(this + 128) = v3;
  *(this + 16) = v32;
  v2 = *(a2 + 32);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_34:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_65;
  }

LABEL_64:
  v33 = *(a2 + 29);
  v3 |= 0x1000000u;
  *(this + 128) = v3;
  *(this + 116) = v33;
  v2 = *(a2 + 32);
  if ((v2 & 0x8000) == 0)
  {
LABEL_35:
    if ((v2 & 0x8000000) == 0)
    {
      return this;
    }

LABEL_66:
    v35 = *(a2 + 122);
    *(this + 128) = v3 | 0x8000000;
    *(this + 122) = v35;
    return this;
  }

LABEL_65:
  v34 = *(a2 + 20);
  v3 |= 0x8000u;
  *(this + 128) = v3;
  *(this + 80) = v34;
  if ((*(a2 + 32) & 0x8000000) != 0)
  {
    goto LABEL_66;
  }

  return this;
}

CMMsl *CMMsl::RelativeDeviceMotionCorrelatedMotion::operator=(CMMsl *a1, const CMMsl::RelativeDeviceMotionCorrelatedMotion *a2)
{
  if (a1 != a2)
  {
    CMMsl::RelativeDeviceMotionCorrelatedMotion::RelativeDeviceMotionCorrelatedMotion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::RelativeDeviceMotionCorrelatedMotion *a2, CMMsl::RelativeDeviceMotionCorrelatedMotion *a3)
{
  v3 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  LODWORD(v4) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v4;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LODWORD(v4) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v4;
  LODWORD(v4) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v4;
  LODWORD(v4) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v4;
  LODWORD(v4) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v4;
  LOBYTE(v3) = *(this + 124);
  *(this + 124) = *(a2 + 124);
  *(a2 + 124) = v3;
  LOBYTE(v3) = *(this + 120);
  *(this + 120) = *(a2 + 120);
  *(a2 + 120) = v3;
  LODWORD(v4) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v4;
  LOBYTE(v3) = *(this + 123);
  *(this + 123) = *(a2 + 123);
  *(a2 + 123) = v3;
  LOBYTE(v3) = *(this + 125);
  *(this + 125) = *(a2 + 125);
  *(a2 + 125) = v3;
  LODWORD(v4) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  LODWORD(v4) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v4;
  LOBYTE(v3) = *(this + 126);
  *(this + 126) = *(a2 + 126);
  *(a2 + 126) = v3;
  LODWORD(v4) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  LODWORD(v4) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v4;
  LOBYTE(v3) = *(this + 121);
  *(this + 121) = *(a2 + 121);
  *(a2 + 121) = v3;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  LODWORD(v6) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v6;
  result = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = result;
  LOBYTE(v3) = *(this + 122);
  *(this + 122) = *(a2 + 122);
  *(a2 + 122) = v3;
  return result;
}

float CMMsl::RelativeDeviceMotionCorrelatedMotion::RelativeDeviceMotionCorrelatedMotion(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23100;
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 123) = *(a2 + 123);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 126) = *(a2 + 126);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 116) = *(a2 + 116);
  result = *(a2 + 80);
  *(a1 + 80) = result;
  *(a1 + 122) = *(a2 + 122);
  return result;
}

CMMsl *CMMsl::RelativeDeviceMotionCorrelatedMotion::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::RelativeDeviceMotionCorrelatedMotion::RelativeDeviceMotionCorrelatedMotion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::RelativeDeviceMotionCorrelatedMotion::formatText(CMMsl::RelativeDeviceMotionCorrelatedMotion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "auxAvgOmegaAroundGrav2s", *(this + 8));
    v5 = *(this + 32);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "auxAvgOmegaAroundGravLong", *(this + 9));
  v5 = *(this + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "auxAvgOmegaAroundGravShort", *(this + 10));
  v5 = *(this + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "auxAvgOmegaLong", *(this + 11));
  v5 = *(this + 32);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "auxAvgOmegaShort", *(this + 12));
  v5 = *(this + 32);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "auxHistoricalOmegaStdMax", *(this + 13));
  v5 = *(this + 32);
  if ((v5 & 0x200) == 0)
  {
LABEL_8:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "auxOverSrcYawDiffSum", *(this + 14));
  v5 = *(this + 32);
  if ((v5 & 0x400) == 0)
  {
LABEL_9:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "dotRotGrav", *(this + 15));
  v5 = *(this + 32);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  v6 = *(this + 120);
  PB::TextFormatter::format(a2, "hasUnCorrelatedSrcMotion");
  v5 = *(this + 32);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  v7 = *(this + 121);
  PB::TextFormatter::format(a2, "inHeadTurnState");
  v5 = *(this + 32);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  v8 = *(this + 122);
  PB::TextFormatter::format(a2, "inLikelySlowBodyTurnPed");
  v5 = *(this + 32);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  v9 = *(this + 123);
  PB::TextFormatter::format(a2, "isInCorrelatedActivity");
  v5 = *(this + 32);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_14:
    if ((v5 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  v10 = *(this + 124);
  PB::TextFormatter::format(a2, "isInCorrelatedMotion");
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
LABEL_15:
    if ((v5 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "lastHeadTurnStartTime", *(this + 1));
  v5 = *(this + 32);
  if ((v5 & 2) == 0)
  {
LABEL_16:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "lastHeadTurnStopTime", *(this + 2));
  v5 = *(this + 32);
  if ((v5 & 0x800) == 0)
  {
LABEL_17:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "lastHeadTurnYawRadians", *(this + 16));
  v5 = *(this + 32);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  v11 = *(this + 125);
  PB::TextFormatter::format(a2, "likelyOnGymMachine");
  v5 = *(this + 32);
  if ((v5 & 0x1000) == 0)
  {
LABEL_19:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "relOmegaMeanLong", *(this + 17));
  v5 = *(this + 32);
  if ((v5 & 0x2000) == 0)
  {
LABEL_20:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "relOmegaVarLong", *(this + 18));
  v5 = *(this + 32);
  if ((v5 & 0x4000) == 0)
  {
LABEL_21:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "relOmegaVarShort", *(this + 19));
  v5 = *(this + 32);
  if ((v5 & 0x8000) == 0)
  {
LABEL_22:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "srcAccumulatedYaw4s", *(this + 20));
  v5 = *(this + 32);
  if ((v5 & 0x10000) == 0)
  {
LABEL_23:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(a2, "srcAvgOmegaAroundGrav2s", *(this + 21));
  v5 = *(this + 32);
  if ((v5 & 0x20000) == 0)
  {
LABEL_24:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(a2, "srcAvgOmegaAroundGravLong", *(this + 22));
  v5 = *(this + 32);
  if ((v5 & 0x40000) == 0)
  {
LABEL_25:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "srcAvgOmegaAroundGravShort", *(this + 23));
  v5 = *(this + 32);
  if ((v5 & 0x80000) == 0)
  {
LABEL_26:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(a2, "srcAvgOmegaLong", *(this + 24));
  v5 = *(this + 32);
  if ((v5 & 0x100000) == 0)
  {
LABEL_27:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "srcAvgOmegaShort", *(this + 25));
  v5 = *(this + 32);
  if ((v5 & 0x200000) == 0)
  {
LABEL_28:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "srcAvgYawBufferSum", *(this + 26));
  v5 = *(this + 32);
  if ((v5 & 0x400000) == 0)
  {
LABEL_29:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(a2, "srcHistoricalOmegaStdMax", *(this + 27));
  v5 = *(this + 32);
  if ((v5 & 0x800000) == 0)
  {
LABEL_30:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(a2, "srcRotationAxisAlignment", *(this + 28));
  v5 = *(this + 32);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(a2, "srcYawBufferLongStd", *(this + 29));
  v5 = *(this + 32);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_32:
    if ((v5 & 4) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_67:
  v12 = *(this + 126);
  PB::TextFormatter::format(a2, "steadyStatePedestrian");
  if ((*(this + 32) & 4) != 0)
  {
LABEL_33:
    PB::TextFormatter::format(a2, "timestamp", *(this + 3));
  }

LABEL_34:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::RelativeDeviceMotionCorrelatedMotion::readFrom(CMMsl::RelativeDeviceMotionCorrelatedMotion *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_132:
    v36 = v4 ^ 1;
  }

  else
  {
    while (1)
    {
      v7 = *a2;
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
        *(a2 + 1) = v12;
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
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_132;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 32) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_104;
        case 2u:
          *(this + 32) |= 0x100000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 25) = *(*a2 + v2);
          goto LABEL_126;
        case 3u:
          *(this + 32) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_126;
        case 4u:
          *(this + 32) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 24) = *(*a2 + v2);
          goto LABEL_126;
        case 5u:
          *(this + 32) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_126;
        case 6u:
          *(this + 32) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_126;
        case 7u:
          *(this + 32) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_126;
        case 8u:
          *(this + 32) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_126;
        case 9u:
          *(this + 32) |= 0x800000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 28) = *(*a2 + v2);
          goto LABEL_126;
        case 0xAu:
          *(this + 32) |= 0x20000000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v25 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v24 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v25 = v24 != 0;
          }

          *(this + 124) = v25;
          break;
        case 0xBu:
          *(this + 32) |= 0x2000000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v35 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v34 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v35 = v34 != 0;
          }

          *(this + 120) = v35;
          break;
        case 0xCu:
          *(this + 32) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_126;
        case 0xDu:
          *(this + 32) |= 0x10000000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v23 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v22 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v23 = v22 != 0;
          }

          *(this + 123) = v23;
          break;
        case 0xEu:
          *(this + 32) |= 0x40000000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v33 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v32 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v33 = v32 != 0;
          }

          *(this + 125) = v33;
          break;
        case 0xFu:
          *(this + 32) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 23) = *(*a2 + v2);
          goto LABEL_126;
        case 0x10u:
          *(this + 32) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_126;
        case 0x11u:
          *(this + 32) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_126;
        case 0x12u:
          *(this + 32) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_126;
        case 0x13u:
          *(this + 32) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_126;
        case 0x14u:
          *(this + 32) |= 0x400000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 27) = *(*a2 + v2);
          goto LABEL_126;
        case 0x15u:
          *(this + 32) |= 0x80000000;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v31 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v30 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v31 = v30 != 0;
          }

          *(this + 126) = v31;
          break;
        case 0x16u:
          *(this + 32) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_126;
        case 0x17u:
          *(this + 32) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_126;
        case 0x18u:
          *(this + 32) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_126;
        case 0x19u:
          *(this + 32) |= 0x200000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 26) = *(*a2 + v2);
          goto LABEL_126;
        case 0x1Au:
          *(this + 32) |= 0x4000000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v27 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v26 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v27 = v26 != 0;
          }

          *(this + 121) = v27;
          break;
        case 0x1Bu:
          *(this + 32) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_126;
        case 0x1Cu:
          *(this + 32) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_104;
        case 0x1Du:
          *(this + 32) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 2) = *(*a2 + v2);
LABEL_104:
          v2 = *(a2 + 1) + 8;
          goto LABEL_127;
        case 0x1Eu:
          *(this + 32) |= 0x1000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 29) = *(*a2 + v2);
          goto LABEL_126;
        case 0x1Fu:
          *(this + 32) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_110:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 20) = *(*a2 + v2);
LABEL_126:
            v2 = *(a2 + 1) + 4;
LABEL_127:
            *(a2 + 1) = v2;
          }

          break;
        case 0x20u:
          *(this + 32) |= 0x8000000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v29 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v28 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v29 = v28 != 0;
          }

          *(this + 122) = v29;
          break;
        default:
          goto LABEL_17;
      }

LABEL_128:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_132;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    do
    {
      if (!v19)
      {
        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_132;
      }

      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
    }

    while (!v14);
LABEL_17:
    if (PB::Reader::skip(a2))
    {
      v2 = *(a2 + 1);
      goto LABEL_128;
    }

    v36 = 0;
  }

  return v36 & 1;
}

uint64_t CMMsl::RelativeDeviceMotionCorrelatedMotion::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 128);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24));
    v4 = *(v3 + 128);
    if ((v4 & 0x100000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v4 & 0x100000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 100));
  v4 = *(v3 + 128);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 128);
  if ((v4 & 0x80000) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 96));
  v4 = *(v3 + 128);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 44));
  v4 = *(v3 + 128);
  if ((v4 & 0x4000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 76));
  v4 = *(v3 + 128);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 128);
  if ((v4 & 0x1000) == 0)
  {
LABEL_9:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 68));
  v4 = *(v3 + 128);
  if ((v4 & 0x800000) == 0)
  {
LABEL_10:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 112));
  v4 = *(v3 + 128);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_11:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  v5 = *(v3 + 124);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 128);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_12:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  v6 = *(v3 + 120);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 128);
  if ((v4 & 0x400) == 0)
  {
LABEL_13:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 60));
  v4 = *(v3 + 128);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  v7 = *(v3 + 123);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 128);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  v8 = *(v3 + 125);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 128);
  if ((v4 & 0x40000) == 0)
  {
LABEL_16:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 92));
  v4 = *(v3 + 128);
  if ((v4 & 0x20) == 0)
  {
LABEL_17:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 128);
  if ((v4 & 0x20000) == 0)
  {
LABEL_18:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 128);
  if ((v4 & 0x10) == 0)
  {
LABEL_19:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 128);
  if ((v4 & 0x100) == 0)
  {
LABEL_20:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::write(a2, *(v3 + 52));
  v4 = *(v3 + 128);
  if ((v4 & 0x400000) == 0)
  {
LABEL_21:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = PB::Writer::write(a2, *(v3 + 108));
  v4 = *(v3 + 128);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  v9 = *(v3 + 126);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 128);
  if ((v4 & 0x10000) == 0)
  {
LABEL_23:
    if ((v4 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = PB::Writer::write(a2, *(v3 + 84));
  v4 = *(v3 + 128);
  if ((v4 & 8) == 0)
  {
LABEL_24:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 128);
  if ((v4 & 0x200) == 0)
  {
LABEL_25:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 128);
  if ((v4 & 0x200000) == 0)
  {
LABEL_26:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = PB::Writer::write(a2, *(v3 + 104));
  v4 = *(v3 + 128);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  v10 = *(v3 + 121);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 128);
  if ((v4 & 0x800) == 0)
  {
LABEL_28:
    if ((v4 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 128);
  if ((v4 & 1) == 0)
  {
LABEL_29:
    if ((v4 & 2) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 128);
  if ((v4 & 2) == 0)
  {
LABEL_30:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 128);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_32;
    }

LABEL_64:
    this = PB::Writer::write(a2, *(v3 + 80));
    if ((*(v3 + 128) & 0x8000000) == 0)
    {
      return this;
    }

    goto LABEL_65;
  }

LABEL_63:
  this = PB::Writer::write(a2, *(v3 + 116));
  v4 = *(v3 + 128);
  if ((v4 & 0x8000) != 0)
  {
    goto LABEL_64;
  }

LABEL_32:
  if ((v4 & 0x8000000) == 0)
  {
    return this;
  }

LABEL_65:
  v11 = *(v3 + 122);

  return PB::Writer::write(a2);
}

uint64_t CMMsl::RelativeDeviceMotionCorrelatedMotion::hash_value(CMMsl::RelativeDeviceMotionCorrelatedMotion *this)
{
  v1 = *(this + 32);
  if ((v1 & 4) != 0)
  {
    if (*(this + 3) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 3);
    }
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 0x100000) == 0)
  {
    v61 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_8;
    }

LABEL_102:
    v60 = 0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_11;
    }

LABEL_103:
    v59 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_14;
    }

LABEL_104:
    v58 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_17;
    }

LABEL_105:
    v57 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_20;
    }

LABEL_106:
    v12 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_24;
    }

LABEL_107:
    v14 = 0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_28;
    }

LABEL_108:
    v16 = 0;
    if ((v1 & 0x20000000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_109;
  }

  v54 = *(this + 25);
  v55 = LODWORD(v54);
  if (v54 == 0.0)
  {
    v55 = 0;
  }

  v61 = v55;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_102;
  }

LABEL_8:
  v3 = *(this + 12);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  v60 = v4;
  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_103;
  }

LABEL_11:
  v5 = *(this + 24);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  v59 = v6;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_104;
  }

LABEL_14:
  v7 = *(this + 11);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  v58 = v8;
  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_105;
  }

LABEL_17:
  v9 = *(this + 19);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  v57 = v10;
  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_106;
  }

LABEL_20:
  v11 = *(this + 18);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = LODWORD(v11);
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_107;
  }

LABEL_24:
  v13 = *(this + 17);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  else
  {
    v14 = LODWORD(v13);
  }

  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_108;
  }

LABEL_28:
  v15 = *(this + 28);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  else
  {
    v16 = LODWORD(v15);
  }

  if ((v1 & 0x20000000) != 0)
  {
LABEL_32:
    v17 = *(this + 124);
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_110;
  }

LABEL_109:
  v17 = 0;
  if ((v1 & 0x2000000) != 0)
  {
LABEL_33:
    v18 = *(this + 120);
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_34;
    }

LABEL_111:
    v20 = 0;
    if ((v1 & 0x10000000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_112;
  }

LABEL_110:
  v18 = 0;
  if ((v1 & 0x400) == 0)
  {
    goto LABEL_111;
  }

LABEL_34:
  v19 = *(this + 15);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  else
  {
    v20 = LODWORD(v19);
  }

  if ((v1 & 0x10000000) != 0)
  {
LABEL_38:
    v21 = *(this + 123);
    if ((v1 & 0x40000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_113;
  }

LABEL_112:
  v21 = 0;
  if ((v1 & 0x40000000) != 0)
  {
LABEL_39:
    v22 = *(this + 125);
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_40;
    }

LABEL_114:
    v24 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_44;
    }

LABEL_115:
    v26 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_48;
    }

LABEL_116:
    v28 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_52;
    }

LABEL_117:
    v30 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_56;
    }

LABEL_118:
    v32 = 0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_60;
    }

LABEL_119:
    v34 = 0;
    if (v1 < 0)
    {
      goto LABEL_64;
    }

    goto LABEL_120;
  }

LABEL_113:
  v22 = 0;
  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_114;
  }

LABEL_40:
  v23 = *(this + 23);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  else
  {
    v24 = LODWORD(v23);
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_115;
  }

LABEL_44:
  v25 = *(this + 10);
  if (v25 == 0.0)
  {
    v26 = 0;
  }

  else
  {
    v26 = LODWORD(v25);
  }

  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_116;
  }

LABEL_48:
  v27 = *(this + 22);
  if (v27 == 0.0)
  {
    v28 = 0;
  }

  else
  {
    v28 = LODWORD(v27);
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_117;
  }

LABEL_52:
  v29 = *(this + 9);
  if (v29 == 0.0)
  {
    v30 = 0;
  }

  else
  {
    v30 = LODWORD(v29);
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_118;
  }

LABEL_56:
  v31 = *(this + 13);
  if (v31 == 0.0)
  {
    v32 = 0;
  }

  else
  {
    v32 = LODWORD(v31);
  }

  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_119;
  }

LABEL_60:
  v33 = *(this + 27);
  if (v33 == 0.0)
  {
    v34 = 0;
  }

  else
  {
    v34 = LODWORD(v33);
  }

  if (v1 < 0)
  {
LABEL_64:
    v35 = *(this + 126);
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_65;
    }

LABEL_121:
    v37 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_69;
    }

LABEL_122:
    v39 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_73;
    }

LABEL_123:
    v41 = 0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_77;
    }

LABEL_124:
    v43 = 0;
    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_81;
    }

    goto LABEL_125;
  }

LABEL_120:
  v35 = 0;
  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_121;
  }

LABEL_65:
  v36 = *(this + 21);
  if (v36 == 0.0)
  {
    v37 = 0;
  }

  else
  {
    v37 = LODWORD(v36);
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_122;
  }

LABEL_69:
  v38 = *(this + 8);
  if (v38 == 0.0)
  {
    v39 = 0;
  }

  else
  {
    v39 = LODWORD(v38);
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_123;
  }

LABEL_73:
  v40 = *(this + 14);
  if (v40 == 0.0)
  {
    v41 = 0;
  }

  else
  {
    v41 = LODWORD(v40);
  }

  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_124;
  }

LABEL_77:
  v42 = *(this + 26);
  if (v42 == 0.0)
  {
    v43 = 0;
  }

  else
  {
    v43 = LODWORD(v42);
  }

  if ((v1 & 0x4000000) != 0)
  {
LABEL_81:
    v44 = *(this + 121);
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_82;
    }

LABEL_126:
    v46 = 0;
    if (v1)
    {
      goto LABEL_86;
    }

LABEL_127:
    v47 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_89;
    }

LABEL_128:
    v48 = 0.0;
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_92;
    }

LABEL_129:
    v50 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_95;
    }

    goto LABEL_130;
  }

LABEL_125:
  v44 = 0;
  if ((v1 & 0x800) == 0)
  {
    goto LABEL_126;
  }

LABEL_82:
  v45 = *(this + 16);
  if (v45 == 0.0)
  {
    v46 = 0;
  }

  else
  {
    v46 = LODWORD(v45);
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_127;
  }

LABEL_86:
  v47 = *(this + 1);
  if (v47 == 0.0)
  {
    v47 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_128;
  }

LABEL_89:
  v48 = *(this + 2);
  if (v48 == 0.0)
  {
    v48 = 0.0;
  }

  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_129;
  }

LABEL_92:
  v49 = *(this + 29);
  v50 = LODWORD(v49);
  if (v49 == 0.0)
  {
    v50 = 0;
  }

  if ((v1 & 0x8000) != 0)
  {
LABEL_95:
    v51 = *(this + 20);
    v52 = LODWORD(v51);
    if (v51 == 0.0)
    {
      v52 = 0;
    }

    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_98;
    }

LABEL_131:
    v53 = 0;
    return v61 ^ v2 ^ v60 ^ v59 ^ v58 ^ v57 ^ v12 ^ v14 ^ v16 ^ v17 ^ v18 ^ v20 ^ v21 ^ v22 ^ v24 ^ v26 ^ v28 ^ v30 ^ v32 ^ v34 ^ v35 ^ v37 ^ v39 ^ v41 ^ v43 ^ v44 ^ v46 ^ *&v47 ^ *&v48 ^ v50 ^ v52 ^ v53;
  }

LABEL_130:
  v52 = 0;
  if ((v1 & 0x8000000) == 0)
  {
    goto LABEL_131;
  }

LABEL_98:
  v53 = *(this + 122);
  return v61 ^ v2 ^ v60 ^ v59 ^ v58 ^ v57 ^ v12 ^ v14 ^ v16 ^ v17 ^ v18 ^ v20 ^ v21 ^ v22 ^ v24 ^ v26 ^ v28 ^ v30 ^ v32 ^ v34 ^ v35 ^ v37 ^ v39 ^ v41 ^ v43 ^ v44 ^ v46 ^ *&v47 ^ *&v48 ^ v50 ^ v52 ^ v53;
}

void CMMsl::RelativeDeviceMotionInternal::~RelativeDeviceMotionInternal(CMMsl::RelativeDeviceMotionInternal *this)
{
  *this = &unk_286C23138;
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

{
  CMMsl::RelativeDeviceMotionInternal::~RelativeDeviceMotionInternal(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::RelativeDeviceMotionInternal *CMMsl::RelativeDeviceMotionInternal::RelativeDeviceMotionInternal(CMMsl::RelativeDeviceMotionInternal *this, const CMMsl::RelativeDeviceMotionInternal *a2)
{
  *this = &unk_286C23138;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 41) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  v5 = *(a2 + 41);
  if ((v5 & 2) != 0)
  {
    v7 = *(a2 + 8);
    v6 = 2;
    *(this + 41) = 2;
    *(this + 8) = v7;
    v5 = *(a2 + 41);
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((v5 & 0x800) != 0)
  {
LABEL_5:
    v8 = *(a2 + 27);
    v6 |= 0x800u;
    *(this + 41) = v6;
    *(this + 27) = v8;
    v5 = *(a2 + 41);
  }

LABEL_6:
  if ((v5 & 0x1000) != 0)
  {
    v13 = *(a2 + 28);
    v6 |= 0x1000u;
    *(this + 41) = v6;
    *(this + 28) = v13;
    v5 = *(a2 + 41);
    if ((v5 & 0x2000) == 0)
    {
LABEL_8:
      if ((v5 & 0x4000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_43;
    }
  }

  else if ((v5 & 0x2000) == 0)
  {
    goto LABEL_8;
  }

  v14 = *(a2 + 29);
  v6 |= 0x2000u;
  *(this + 41) = v6;
  *(this + 29) = v14;
  v5 = *(a2 + 41);
  if ((v5 & 0x4000) == 0)
  {
LABEL_9:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_43:
  v15 = *(a2 + 30);
  v6 |= 0x4000u;
  *(this + 41) = v6;
  *(this + 30) = v15;
  v5 = *(a2 + 41);
  if ((v5 & 0x8000) == 0)
  {
LABEL_10:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_44:
  v16 = *(a2 + 31);
  v6 |= 0x8000u;
  *(this + 41) = v6;
  *(this + 31) = v16;
  v5 = *(a2 + 41);
  if ((v5 & 0x10000) == 0)
  {
LABEL_11:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_45:
  v17 = *(a2 + 32);
  v6 |= 0x10000u;
  *(this + 41) = v6;
  *(this + 32) = v17;
  v5 = *(a2 + 41);
  if ((v5 & 0x80000) == 0)
  {
LABEL_12:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_47;
  }

LABEL_46:
  v18 = *(a2 + 35);
  v6 |= 0x80000u;
  *(this + 41) = v6;
  *(this + 35) = v18;
  v5 = *(a2 + 41);
  if ((v5 & 0x100000) == 0)
  {
LABEL_13:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_48;
  }

LABEL_47:
  v19 = *(a2 + 36);
  v6 |= 0x100000u;
  *(this + 41) = v6;
  *(this + 36) = v19;
  v5 = *(a2 + 41);
  if ((v5 & 0x200000) == 0)
  {
LABEL_14:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_49;
  }

LABEL_48:
  v20 = *(a2 + 37);
  v6 |= 0x200000u;
  *(this + 41) = v6;
  *(this + 37) = v20;
  v5 = *(a2 + 41);
  if ((v5 & 0x100) == 0)
  {
LABEL_15:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_50;
  }

LABEL_49:
  v21 = *(a2 + 24);
  v6 |= 0x100u;
  *(this + 41) = v6;
  *(this + 24) = v21;
  v5 = *(a2 + 41);
  if ((v5 & 0x200) == 0)
  {
LABEL_16:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_51;
  }

LABEL_50:
  v22 = *(a2 + 25);
  v6 |= 0x200u;
  *(this + 41) = v6;
  *(this + 25) = v22;
  v5 = *(a2 + 41);
  if ((v5 & 0x400) == 0)
  {
LABEL_17:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_51:
  v23 = *(a2 + 26);
  v6 |= 0x400u;
  *(this + 41) = v6;
  *(this + 26) = v23;
  if ((*(a2 + 41) & 0x80) != 0)
  {
LABEL_18:
    v9 = *(a2 + 23);
    *(this + 41) = v6 | 0x80;
    *(this + 23) = v9;
  }

LABEL_19:
  if (this != a2)
  {
    sub_25AD287AC(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    sub_25AD287AC(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  v10 = *(a2 + 41);
  if ((v10 & 0x8000000) != 0)
  {
    v24 = *(a2 + 157);
    *(this + 41) |= 0x8000000u;
    *(this + 157) = v24;
    v10 = *(a2 + 41);
    if ((v10 & 0x400000) == 0)
    {
LABEL_23:
      if ((v10 & 0x1000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_55;
    }
  }

  else if ((v10 & 0x400000) == 0)
  {
    goto LABEL_23;
  }

  v25 = *(a2 + 152);
  *(this + 41) |= 0x400000u;
  *(this + 152) = v25;
  v10 = *(a2 + 41);
  if ((v10 & 0x1000000) == 0)
  {
LABEL_24:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  v26 = *(a2 + 154);
  *(this + 41) |= 0x1000000u;
  *(this + 154) = v26;
  v10 = *(a2 + 41);
  if ((v10 & 0x10) == 0)
  {
LABEL_25:
    if ((v10 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  v27 = *(a2 + 20);
  *(this + 41) |= 0x10u;
  *(this + 20) = v27;
  v10 = *(a2 + 41);
  if ((v10 & 8) == 0)
  {
LABEL_26:
    if ((v10 & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  v28 = *(a2 + 19);
  *(this + 41) |= 8u;
  *(this + 19) = v28;
  v10 = *(a2 + 41);
  if ((v10 & 4) == 0)
  {
LABEL_27:
    if ((v10 & 0x20000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  v29 = *(a2 + 18);
  *(this + 41) |= 4u;
  *(this + 18) = v29;
  v10 = *(a2 + 41);
  if ((v10 & 0x20000000) == 0)
  {
LABEL_28:
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  v30 = *(a2 + 159);
  *(this + 41) |= 0x20000000u;
  *(this + 159) = v30;
  v10 = *(a2 + 41);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v10 & 0x800000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_60:
  v31 = *(a2 + 161);
  *(this + 41) |= 0x80000000;
  *(this + 161) = v31;
  v10 = *(a2 + 41);
  if ((v10 & 0x800000) == 0)
  {
LABEL_30:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_62;
  }

LABEL_61:
  v32 = *(a2 + 153);
  *(this + 41) |= 0x800000u;
  *(this + 153) = v32;
  v10 = *(a2 + 41);
  if ((v10 & 0x20) == 0)
  {
LABEL_31:
    if ((v10 & 0x40000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_63;
  }

LABEL_62:
  v33 = *(a2 + 21);
  *(this + 41) |= 0x20u;
  *(this + 21) = v33;
  v10 = *(a2 + 41);
  if ((v10 & 0x40000) == 0)
  {
LABEL_32:
    if ((v10 & 0x10000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_64;
  }

LABEL_63:
  v34 = *(a2 + 34);
  *(this + 41) |= 0x40000u;
  *(this + 34) = v34;
  v10 = *(a2 + 41);
  if ((v10 & 0x10000000) == 0)
  {
LABEL_33:
    if ((v10 & 0x4000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_65;
  }

LABEL_64:
  v35 = *(a2 + 158);
  *(this + 41) |= 0x10000000u;
  *(this + 158) = v35;
  v10 = *(a2 + 41);
  if ((v10 & 0x4000000) == 0)
  {
LABEL_34:
    if ((v10 & 0x40000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_66;
  }

LABEL_65:
  v36 = *(a2 + 156);
  *(this + 41) |= 0x4000000u;
  *(this + 156) = v36;
  v10 = *(a2 + 41);
  if ((v10 & 0x40000000) == 0)
  {
LABEL_35:
    if ((v10 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_67;
  }

LABEL_66:
  v37 = *(a2 + 160);
  *(this + 41) |= 0x40000000u;
  *(this + 160) = v37;
  v10 = *(a2 + 41);
  if ((v10 & 1) == 0)
  {
LABEL_36:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_68;
  }

LABEL_67:
  v38 = *(a2 + 7);
  *(this + 41) |= 1u;
  *(this + 7) = v38;
  v10 = *(a2 + 41);
  if ((v10 & 0x40) == 0)
  {
LABEL_37:
    if ((v10 & 0x2000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_69:
    v40 = *(a2 + 155);
    *(this + 41) |= 0x2000000u;
    *(this + 155) = v40;
    if ((*(a2 + 41) & 0x20000) == 0)
    {
      return this;
    }

    goto LABEL_39;
  }

LABEL_68:
  v39 = *(a2 + 22);
  *(this + 41) |= 0x40u;
  *(this + 22) = v39;
  v10 = *(a2 + 41);
  if ((v10 & 0x2000000) != 0)
  {
    goto LABEL_69;
  }

LABEL_38:
  if ((v10 & 0x20000) != 0)
  {
LABEL_39:
    v11 = *(a2 + 33);
    *(this + 41) |= 0x20000u;
    *(this + 33) = v11;
  }

  return this;
}

CMMsl *CMMsl::RelativeDeviceMotionInternal::operator=(CMMsl *a1, const CMMsl::RelativeDeviceMotionInternal *a2)
{
  if (a1 != a2)
  {
    CMMsl::RelativeDeviceMotionInternal::RelativeDeviceMotionInternal(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::RelativeDeviceMotionInternal::~RelativeDeviceMotionInternal(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::RelativeDeviceMotionInternal *a2, CMMsl::RelativeDeviceMotionInternal *a3)
{
  v3 = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v4;
  LODWORD(v4) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v4;
  LODWORD(v4) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v4;
  LODWORD(v4) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v4;
  LODWORD(v4) = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v4;
  LODWORD(v4) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  LODWORD(v4) = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v4;
  LODWORD(v4) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v4;
  LODWORD(v4) = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v4;
  LODWORD(v4) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v4;
  LODWORD(v4) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v4;
  LODWORD(v4) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v4;
  LODWORD(v4) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v9;
  v10 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v10;
  LOBYTE(v10) = *(this + 157);
  *(this + 157) = *(a2 + 157);
  *(a2 + 157) = v10;
  LOBYTE(v10) = *(this + 152);
  *(this + 152) = *(a2 + 152);
  *(a2 + 152) = v10;
  LOBYTE(v10) = *(this + 154);
  *(this + 154) = *(a2 + 154);
  *(a2 + 154) = v10;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v4;
  LODWORD(v4) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v4;
  LODWORD(v4) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v4;
  LOBYTE(v10) = *(this + 159);
  *(this + 159) = *(a2 + 159);
  *(a2 + 159) = v10;
  LOBYTE(v10) = *(this + 161);
  *(this + 161) = *(a2 + 161);
  *(a2 + 161) = v10;
  LOBYTE(v10) = *(this + 153);
  *(this + 153) = *(a2 + 153);
  *(a2 + 153) = v10;
  LODWORD(v4) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v4;
  LODWORD(v10) = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v10;
  LOBYTE(v10) = *(this + 158);
  *(this + 158) = *(a2 + 158);
  *(a2 + 158) = v10;
  LOBYTE(v10) = *(this + 156);
  *(this + 156) = *(a2 + 156);
  *(a2 + 156) = v10;
  LOBYTE(v10) = *(this + 160);
  *(this + 160) = *(a2 + 160);
  *(a2 + 160) = v10;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  LODWORD(v10) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v10;
  LOBYTE(v10) = *(this + 155);
  *(this + 155) = *(a2 + 155);
  *(a2 + 155) = v10;
  LODWORD(v10) = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v10;
  return result;
}

uint64_t CMMsl::RelativeDeviceMotionInternal::RelativeDeviceMotionInternal(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23138;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 164) = *(a2 + 164);
  *(a2 + 164) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 92) = *(a2 + 92);
  sub_25AD28758(a1 + 32, (a2 + 32));
  sub_25AD28758(v4, (a2 + 8));
  *(a1 + 157) = *(a2 + 157);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 154) = *(a2 + 154);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 159) = *(a2 + 159);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 158) = *(a2 + 158);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 155) = *(a2 + 155);
  *(a1 + 132) = *(a2 + 132);
  return a1;
}

CMMsl *CMMsl::RelativeDeviceMotionInternal::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::RelativeDeviceMotionInternal::RelativeDeviceMotionInternal(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::RelativeDeviceMotionInternal::~RelativeDeviceMotionInternal(v5);
  }

  return a1;
}

uint64_t CMMsl::RelativeDeviceMotionInternal::formatText(CMMsl::RelativeDeviceMotionInternal *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 41);
  if ((v5 & 0x400000) != 0)
  {
    v15 = *(this + 152);
    PB::TextFormatter::format(a2, "btz");
    v5 = *(this + 41);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "btzDisturbanceDuration", *(this + 18));
  v5 = *(this + 41);
  if ((v5 & 0x800000) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

LABEL_45:
  v16 = *(this + 153);
  PB::TextFormatter::format(a2, "btzIsCurrentlyQuiescent");
  v5 = *(this + 41);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "btzQuiescentDurationLoose", *(this + 19));
  v5 = *(this + 41);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "btzQuiescentDurationStrict", *(this + 20));
  v5 = *(this + 41);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "btzStaticPoseDuration", *(this + 21));
  v5 = *(this + 41);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_49:
  v17 = *(this + 154);
  PB::TextFormatter::format(a2, "centeredBoresight");
  v5 = *(this + 41);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_51;
  }

LABEL_50:
  v18 = *(this + 155);
  PB::TextFormatter::format(a2, "centeredBoresightInHighDynamics");
  v5 = *(this + 41);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_51:
  v19 = *(this + 22);
  PB::TextFormatter::format(a2, "clientMode");
  if ((*(this + 41) & 0x4000000) != 0)
  {
LABEL_11:
    v6 = *(this + 156);
    PB::TextFormatter::format(a2, "inComplexTransitionState");
  }

LABEL_12:
  v7 = *(this + 1);
  v8 = *(this + 2);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::TextFormatter::format(a2, "noiseVariance", v9);
  }

  v10 = *(this + 41);
  if ((v10 & 0x8000000) != 0)
  {
    v20 = *(this + 157);
    PB::TextFormatter::format(a2, "pinnedBoresight");
    v10 = *(this + 41);
    if ((v10 & 0x80) == 0)
    {
LABEL_16:
      if ((v10 & 0x100) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_55;
    }
  }

  else if ((v10 & 0x80) == 0)
  {
    goto LABEL_16;
  }

  PB::TextFormatter::format(a2, "qHat_W", *(this + 23));
  v10 = *(this + 41);
  if ((v10 & 0x100) == 0)
  {
LABEL_17:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "qHat_X", *(this + 24));
  v10 = *(this + 41);
  if ((v10 & 0x200) == 0)
  {
LABEL_18:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "qHat_Y", *(this + 25));
  v10 = *(this + 41);
  if ((v10 & 0x400) == 0)
  {
LABEL_19:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "qHat_Z", *(this + 26));
  v10 = *(this + 41);
  if ((v10 & 0x800) == 0)
  {
LABEL_20:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(a2, "rBoresight_X", *(this + 27));
  v10 = *(this + 41);
  if ((v10 & 0x1000) == 0)
  {
LABEL_21:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(a2, "rBoresight_Y", *(this + 28));
  v10 = *(this + 41);
  if ((v10 & 0x2000) == 0)
  {
LABEL_22:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "rBoresight_Z", *(this + 29));
  v10 = *(this + 41);
  if ((v10 & 0x4000) == 0)
  {
LABEL_23:
    if ((v10 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(a2, "rHat_X", *(this + 30));
  v10 = *(this + 41);
  if ((v10 & 0x8000) == 0)
  {
LABEL_24:
    if ((v10 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "rHat_Y", *(this + 31));
  v10 = *(this + 41);
  if ((v10 & 0x10000) == 0)
  {
LABEL_25:
    if ((v10 & 0x10000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "rHat_Z", *(this + 32));
  v10 = *(this + 41);
  if ((v10 & 0x10000000) == 0)
  {
LABEL_26:
    if ((v10 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_64:
  v21 = *(this + 158);
  PB::TextFormatter::format(a2, "requestingCamera");
  if (*(this + 41))
  {
LABEL_27:
    PB::TextFormatter::format(a2, "srcTimestamp", *(this + 7));
  }

LABEL_28:
  v11 = *(this + 4);
  v12 = *(this + 5);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(a2, "stateVariance", v13);
  }

  v14 = *(this + 41);
  if ((v14 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 8));
    v14 = *(this + 41);
    if ((v14 & 0x20000000) == 0)
    {
LABEL_32:
      if ((v14 & 0x20000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_68;
    }
  }

  else if ((v14 & 0x20000000) == 0)
  {
    goto LABEL_32;
  }

  v22 = *(this + 159);
  PB::TextFormatter::format(a2, "tracking1IMU");
  v14 = *(this + 41);
  if ((v14 & 0x20000) == 0)
  {
LABEL_33:
    if ((v14 & 0x40000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_69;
  }

LABEL_68:
  v23 = *(this + 33);
  PB::TextFormatter::format(a2, "trackingBehavior");
  v14 = *(this + 41);
  if ((v14 & 0x40000000) == 0)
  {
LABEL_34:
    if ((v14 & 0x40000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_70;
  }

LABEL_69:
  v24 = *(this + 160);
  PB::TextFormatter::format(a2, "trackingDisabled");
  v14 = *(this + 41);
  if ((v14 & 0x40000) == 0)
  {
LABEL_35:
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_71;
  }

LABEL_70:
  v25 = *(this + 34);
  PB::TextFormatter::format(a2, "trackingScheme");
  v14 = *(this + 41);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_36:
    if ((v14 & 0x80000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_72;
  }

LABEL_71:
  v26 = *(this + 161);
  PB::TextFormatter::format(a2, "useRelaxedQuiescenceBounds");
  v14 = *(this + 41);
  if ((v14 & 0x80000) == 0)
  {
LABEL_37:
    if ((v14 & 0x100000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(a2, "vHat_X", *(this + 35));
  v14 = *(this + 41);
  if ((v14 & 0x100000) == 0)
  {
LABEL_38:
    if ((v14 & 0x200000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_73:
  PB::TextFormatter::format(a2, "vHat_Y", *(this + 36));
  if ((*(this + 41) & 0x200000) != 0)
  {
LABEL_39:
    PB::TextFormatter::format(a2, "vHat_Z", *(this + 37));
  }

LABEL_40:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::RelativeDeviceMotionInternal::readFrom(CMMsl::RelativeDeviceMotionInternal *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
    goto LABEL_254;
  }

  do
  {
    v7 = *a2;
    if (v2 <= 0xFFFFFFFFFFFFFFF5 && v2 + 10 <= v3)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
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
          goto LABEL_17;
        }
      }

LABEL_19:
      v22 = v10 & 7;
      if (v22 == 4)
      {
        v4 = 0;
        break;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 41) |= 2u;
          v23 = *(a2 + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
          {
            goto LABEL_246;
          }

          *(this + 8) = *(*a2 + v23);
          goto LABEL_139;
        case 2u:
          *(this + 41) |= 0x800u;
          v85 = *(a2 + 1);
          if (v85 > 0xFFFFFFFFFFFFFFFBLL || v85 + 4 > *(a2 + 2))
          {
            goto LABEL_246;
          }

          *(this + 27) = *(*a2 + v85);
          goto LABEL_248;
        case 3u:
          *(this + 41) |= 0x1000u;
          v66 = *(a2 + 1);
          if (v66 > 0xFFFFFFFFFFFFFFFBLL || v66 + 4 > *(a2 + 2))
          {
            goto LABEL_246;
          }

          *(this + 28) = *(*a2 + v66);
          goto LABEL_248;
        case 4u:
          *(this + 41) |= 0x2000u;
          v83 = *(a2 + 1);
          if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(a2 + 2))
          {
            goto LABEL_246;
          }

          *(this + 29) = *(*a2 + v83);
          goto LABEL_248;
        case 5u:
          *(this + 41) |= 0x4000u;
          v58 = *(a2 + 1);
          if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(a2 + 2))
          {
            goto LABEL_246;
          }

          *(this + 30) = *(*a2 + v58);
          goto LABEL_248;
        case 6u:
          *(this + 41) |= 0x8000u;
          v100 = *(a2 + 1);
          if (v100 > 0xFFFFFFFFFFFFFFFBLL || v100 + 4 > *(a2 + 2))
          {
            goto LABEL_246;
          }

          *(this + 31) = *(*a2 + v100);
          goto LABEL_248;
        case 7u:
          *(this + 41) |= 0x10000u;
          v103 = *(a2 + 1);
          if (v103 > 0xFFFFFFFFFFFFFFFBLL || v103 + 4 > *(a2 + 2))
          {
            goto LABEL_246;
          }

          *(this + 32) = *(*a2 + v103);
          goto LABEL_248;
        case 8u:
          *(this + 41) |= 0x80000u;
          v84 = *(a2 + 1);
          if (v84 > 0xFFFFFFFFFFFFFFFBLL || v84 + 4 > *(a2 + 2))
          {
            goto LABEL_246;
          }

          *(this + 35) = *(*a2 + v84);
          goto LABEL_248;
        case 9u:
          *(this + 41) |= 0x100000u;
          v109 = *(a2 + 1);
          if (v109 > 0xFFFFFFFFFFFFFFFBLL || v109 + 4 > *(a2 + 2))
          {
            goto LABEL_246;
          }

          *(this + 36) = *(*a2 + v109);
          goto LABEL_248;
        case 0xAu:
          *(this + 41) |= 0x200000u;
          v60 = *(a2 + 1);
          if (v60 > 0xFFFFFFFFFFFFFFFBLL || v60 + 4 > *(a2 + 2))
          {
            goto LABEL_246;
          }

          *(this + 37) = *(*a2 + v60);
          goto LABEL_248;
        case 0xBu:
          *(this + 41) |= 0x100u;
          v108 = *(a2 + 1);
          if (v108 > 0xFFFFFFFFFFFFFFFBLL || v108 + 4 > *(a2 + 2))
          {
            goto LABEL_246;
          }

          *(this + 24) = *(*a2 + v108);
          goto LABEL_248;
        case 0xCu:
          *(this + 41) |= 0x200u;
          v57 = *(a2 + 1);
          if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(a2 + 2))
          {
            goto LABEL_246;
          }

          *(this + 25) = *(*a2 + v57);
          goto LABEL_248;
        case 0xDu:
          *(this + 41) |= 0x400u;
          v59 = *(a2 + 1);
          if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(a2 + 2))
          {
            goto LABEL_246;
          }

          *(this + 26) = *(*a2 + v59);
          goto LABEL_248;
        case 0xEu:
          *(this + 41) |= 0x80u;
          v102 = *(a2 + 1);
          if (v102 > 0xFFFFFFFFFFFFFFFBLL || v102 + 4 > *(a2 + 2))
          {
            goto LABEL_246;
          }

          *(this + 23) = *(*a2 + v102);
          goto LABEL_248;
        case 0xFu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_256;
            }

            v32 = *(a2 + 1);
            v33 = *(a2 + 2);
            while (v32 < v33 && (*(a2 + 24) & 1) == 0)
            {
              v35 = *(this + 5);
              v34 = *(this + 6);
              if (v35 >= v34)
              {
                v37 = *(this + 4);
                v38 = v35 - v37;
                v39 = (v35 - v37) >> 2;
                v40 = v39 + 1;
                if ((v39 + 1) >> 62)
                {
                  goto LABEL_258;
                }

                v41 = v34 - v37;
                if (v41 >> 1 > v40)
                {
                  v40 = v41 >> 1;
                }

                if (v41 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v42 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v42 = v40;
                }

                if (v42)
                {
                  sub_25AD288E8(v42);
                }

                v43 = (v35 - v37) >> 2;
                v44 = (4 * v39);
                v45 = (4 * v39 - 4 * v43);
                *v44 = 0;
                v36 = v44 + 1;
                memcpy(v45, v37, v38);
                v46 = *(this + 4);
                *(this + 4) = v45;
                *(this + 5) = v36;
                *(this + 6) = 0;
                if (v46)
                {
                  operator delete(v46);
                }
              }

              else
              {
                *v35 = 0;
                v36 = v35 + 4;
              }

              *(this + 5) = v36;
              v47 = *(a2 + 1);
              if (v47 > 0xFFFFFFFFFFFFFFFBLL || v47 + 4 > *(a2 + 2))
              {
                goto LABEL_208;
              }

              *(v36 - 1) = *(*a2 + v47);
              v33 = *(a2 + 2);
              v32 = *(a2 + 1) + 4;
              *(a2 + 1) = v32;
            }

LABEL_209:
            PB::Reader::recallMark();
            goto LABEL_250;
          }

          v149 = *(this + 5);
          v148 = *(this + 6);
          if (v149 < v148)
          {
            *v149 = 0;
            v150 = v149 + 4;
LABEL_240:
            *(this + 5) = v150;
LABEL_244:
            v185 = *(a2 + 1);
            if (v185 <= 0xFFFFFFFFFFFFFFFBLL && v185 + 4 <= *(a2 + 2))
            {
              *(v150 - 1) = *(*a2 + v185);
LABEL_248:
              v111 = *(a2 + 1) + 4;
LABEL_249:
              *(a2 + 1) = v111;
            }

            else
            {
LABEL_246:
              *(a2 + 24) = 1;
            }

            goto LABEL_250;
          }

          v165 = *(this + 4);
          v166 = v149 - v165;
          v167 = (v149 - v165) >> 2;
          v168 = v167 + 1;
          if (!((v167 + 1) >> 62))
          {
            v169 = v148 - v165;
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
              sub_25AD288E8(v170);
            }

            v177 = (v149 - v165) >> 2;
            v178 = (4 * v167);
            v179 = (4 * v167 - 4 * v177);
            *v178 = 0;
            v150 = v178 + 1;
            memcpy(v179, v165, v166);
            v180 = *(this + 4);
            *(this + 4) = v179;
            *(this + 5) = v150;
            *(this + 6) = 0;
            if (v180)
            {
              operator delete(v180);
            }

            goto LABEL_240;
          }

          goto LABEL_258;
        case 0x10u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_256;
            }

            v67 = *(a2 + 1);
            v68 = *(a2 + 2);
            while (v67 < v68 && (*(a2 + 24) & 1) == 0)
            {
              v70 = *(this + 2);
              v69 = *(this + 3);
              if (v70 >= v69)
              {
                v72 = *(this + 1);
                v73 = v70 - v72;
                v74 = (v70 - v72) >> 2;
                v75 = v74 + 1;
                if ((v74 + 1) >> 62)
                {
                  goto LABEL_258;
                }

                v76 = v69 - v72;
                if (v76 >> 1 > v75)
                {
                  v75 = v76 >> 1;
                }

                if (v76 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v77 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v77 = v75;
                }

                if (v77)
                {
                  sub_25AD288E8(v77);
                }

                v78 = (v70 - v72) >> 2;
                v79 = (4 * v74);
                v80 = (4 * v74 - 4 * v78);
                *v79 = 0;
                v71 = v79 + 1;
                memcpy(v80, v72, v73);
                v81 = *(this + 1);
                *(this + 1) = v80;
                *(this + 2) = v71;
                *(this + 3) = 0;
                if (v81)
                {
                  operator delete(v81);
                }
              }

              else
              {
                *v70 = 0;
                v71 = v70 + 4;
              }

              *(this + 2) = v71;
              v82 = *(a2 + 1);
              if (v82 > 0xFFFFFFFFFFFFFFFBLL || v82 + 4 > *(a2 + 2))
              {
LABEL_208:
                *(a2 + 24) = 1;
                goto LABEL_209;
              }

              *(v71 - 1) = *(*a2 + v82);
              v68 = *(a2 + 2);
              v67 = *(a2 + 1) + 4;
              *(a2 + 1) = v67;
            }

            goto LABEL_209;
          }

          v152 = *(this + 2);
          v151 = *(this + 3);
          if (v152 >= v151)
          {
            v171 = *(this + 1);
            v172 = v152 - v171;
            v173 = (v152 - v171) >> 2;
            v174 = v173 + 1;
            if ((v173 + 1) >> 62)
            {
LABEL_258:
              sub_25AAE66B8();
            }

            v175 = v151 - v171;
            if (v175 >> 1 > v174)
            {
              v174 = v175 >> 1;
            }

            if (v175 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v176 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v176 = v174;
            }

            if (v176)
            {
              sub_25AD288E8(v176);
            }

            v181 = (v152 - v171) >> 2;
            v182 = (4 * v173);
            v183 = (4 * v173 - 4 * v181);
            *v182 = 0;
            v150 = v182 + 1;
            memcpy(v183, v171, v172);
            v184 = *(this + 1);
            *(this + 1) = v183;
            *(this + 2) = v150;
            *(this + 3) = 0;
            if (v184)
            {
              operator delete(v184);
            }
          }

          else
          {
            *v152 = 0;
            v150 = v152 + 4;
          }

          *(this + 2) = v150;
          goto LABEL_244;
        case 0x11u:
          *(this + 41) |= 0x8000000u;
          v28 = *(a2 + 1);
          if (v28 >= *(a2 + 2))
          {
            v31 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v29 = v28 + 1;
            v30 = *(*a2 + v28);
            *(a2 + 1) = v29;
            v31 = v30 != 0;
          }

          *(this + 157) = v31;
          goto LABEL_250;
        case 0x12u:
          *(this + 41) |= 0x400000u;
          v95 = *(a2 + 1);
          if (v95 >= *(a2 + 2))
          {
            v98 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v96 = v95 + 1;
            v97 = *(*a2 + v95);
            *(a2 + 1) = v96;
            v98 = v97 != 0;
          }

          *(this + 152) = v98;
          goto LABEL_250;
        case 0x13u:
          *(this + 41) |= 0x1000000u;
          v104 = *(a2 + 1);
          if (v104 >= *(a2 + 2))
          {
            v107 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v105 = v104 + 1;
            v106 = *(*a2 + v104);
            *(a2 + 1) = v105;
            v107 = v106 != 0;
          }

          *(this + 154) = v107;
          goto LABEL_250;
        case 0x14u:
          *(this + 41) |= 0x10u;
          v120 = *(a2 + 1);
          if (v120 > 0xFFFFFFFFFFFFFFFBLL || v120 + 4 > *(a2 + 2))
          {
            goto LABEL_246;
          }

          *(this + 20) = *(*a2 + v120);
          goto LABEL_248;
        case 0x15u:
          *(this + 41) |= 8u;
          v99 = *(a2 + 1);
          if (v99 > 0xFFFFFFFFFFFFFFFBLL || v99 + 4 > *(a2 + 2))
          {
            goto LABEL_246;
          }

          *(this + 19) = *(*a2 + v99);
          goto LABEL_248;
        case 0x16u:
          *(this + 41) |= 4u;
          v101 = *(a2 + 1);
          if (v101 > 0xFFFFFFFFFFFFFFFBLL || v101 + 4 > *(a2 + 2))
          {
            goto LABEL_246;
          }

          *(this + 18) = *(*a2 + v101);
          goto LABEL_248;
        case 0x17u:
          *(this + 41) |= 0x20000000u;
          v116 = *(a2 + 1);
          if (v116 >= *(a2 + 2))
          {
            v119 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v117 = v116 + 1;
            v118 = *(*a2 + v116);
            *(a2 + 1) = v117;
            v119 = v118 != 0;
          }

          *(this + 159) = v119;
          goto LABEL_250;
        case 0x18u:
          *(this + 41) |= 0x80000000;
          v121 = *(a2 + 1);
          if (v121 >= *(a2 + 2))
          {
            v124 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v122 = v121 + 1;
            v123 = *(*a2 + v121);
            *(a2 + 1) = v122;
            v124 = v123 != 0;
          }

          *(this + 161) = v124;
          goto LABEL_250;
        case 0x19u:
          *(this + 41) |= 0x800000u;
          v62 = *(a2 + 1);
          if (v62 >= *(a2 + 2))
          {
            v65 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v63 = v62 + 1;
            v64 = *(*a2 + v62);
            *(a2 + 1) = v63;
            v65 = v64 != 0;
          }

          *(this + 153) = v65;
          goto LABEL_250;
        case 0x1Au:
          *(this + 41) |= 0x20u;
          v61 = *(a2 + 1);
          if (v61 > 0xFFFFFFFFFFFFFFFBLL || v61 + 4 > *(a2 + 2))
          {
            goto LABEL_246;
          }

          *(this + 21) = *(*a2 + v61);
          goto LABEL_248;
        case 0x1Bu:
          *(this + 41) |= 0x40000u;
          v134 = *(a2 + 1);
          v133 = *(a2 + 2);
          v135 = *a2;
          if (v134 <= 0xFFFFFFFFFFFFFFF5 && v134 + 10 <= v133)
          {
            v136 = 0;
            v137 = 0;
            v138 = 0;
            v139 = (v135 + v134);
            v140 = v134 + 1;
            do
            {
              *(a2 + 1) = v140;
              v141 = *v139++;
              v138 |= (v141 & 0x7F) << v136;
              if ((v141 & 0x80) == 0)
              {
                goto LABEL_237;
              }

              v136 += 7;
              ++v140;
              v14 = v137++ > 8;
            }

            while (!v14);
LABEL_207:
            LODWORD(v138) = 0;
            goto LABEL_237;
          }

          v159 = 0;
          v160 = 0;
          v138 = 0;
          v161 = (v135 + v134);
          v18 = v133 >= v134;
          v162 = v133 - v134;
          if (!v18)
          {
            v162 = 0;
          }

          v163 = v134 + 1;
          while (2)
          {
            if (v162)
            {
              v164 = *v161;
              *(a2 + 1) = v163;
              v138 |= (v164 & 0x7F) << v159;
              if (v164 < 0)
              {
                v159 += 7;
                ++v161;
                --v162;
                ++v163;
                v14 = v160++ > 8;
                if (v14)
                {
                  goto LABEL_207;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v138) = 0;
              }
            }

            else
            {
              LODWORD(v138) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_237:
          *(this + 34) = v138;
          goto LABEL_250;
        case 0x1Cu:
          *(this + 41) |= 0x10000000u;
          v24 = *(a2 + 1);
          if (v24 >= *(a2 + 2))
          {
            v27 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v25 = v24 + 1;
            v26 = *(*a2 + v24);
            *(a2 + 1) = v25;
            v27 = v26 != 0;
          }

          *(this + 158) = v27;
          goto LABEL_250;
        case 0x1Du:
          *(this + 41) |= 0x4000000u;
          v125 = *(a2 + 1);
          if (v125 >= *(a2 + 2))
          {
            v128 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v126 = v125 + 1;
            v127 = *(*a2 + v125);
            *(a2 + 1) = v126;
            v128 = v127 != 0;
          }

          *(this + 156) = v128;
          goto LABEL_250;
        case 0x1Eu:
          *(this + 41) |= 0x40000000u;
          v129 = *(a2 + 1);
          if (v129 >= *(a2 + 2))
          {
            v132 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v130 = v129 + 1;
            v131 = *(*a2 + v129);
            *(a2 + 1) = v130;
            v132 = v131 != 0;
          }

          *(this + 160) = v132;
          goto LABEL_250;
        case 0x1Fu:
          *(this + 41) |= 1u;
          v110 = *(a2 + 1);
          if (v110 > 0xFFFFFFFFFFFFFFF7 || v110 + 8 > *(a2 + 2))
          {
            goto LABEL_246;
          }

          *(this + 7) = *(*a2 + v110);
LABEL_139:
          v111 = *(a2 + 1) + 8;
          goto LABEL_249;
        case 0x20u:
          *(this + 41) |= 0x40u;
          v87 = *(a2 + 1);
          v86 = *(a2 + 2);
          v88 = *a2;
          if (v87 <= 0xFFFFFFFFFFFFFFF5 && v87 + 10 <= v86)
          {
            v89 = 0;
            v90 = 0;
            v91 = 0;
            v92 = (v88 + v87);
            v93 = v87 + 1;
            do
            {
              *(a2 + 1) = v93;
              v94 = *v92++;
              v91 |= (v94 & 0x7F) << v89;
              if ((v94 & 0x80) == 0)
              {
                goto LABEL_234;
              }

              v89 += 7;
              ++v93;
              v14 = v90++ > 8;
            }

            while (!v14);
LABEL_185:
            LODWORD(v91) = 0;
            goto LABEL_234;
          }

          v153 = 0;
          v154 = 0;
          v91 = 0;
          v155 = (v88 + v87);
          v18 = v86 >= v87;
          v156 = v86 - v87;
          if (!v18)
          {
            v156 = 0;
          }

          v157 = v87 + 1;
          while (2)
          {
            if (v156)
            {
              v158 = *v155;
              *(a2 + 1) = v157;
              v91 |= (v158 & 0x7F) << v153;
              if (v158 < 0)
              {
                v153 += 7;
                ++v155;
                --v156;
                ++v157;
                v14 = v154++ > 8;
                if (v14)
                {
                  goto LABEL_185;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v91) = 0;
              }
            }

            else
            {
              LODWORD(v91) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_234:
          *(this + 22) = v91;
          goto LABEL_250;
        case 0x21u:
          *(this + 41) |= 0x2000000u;
          v112 = *(a2 + 1);
          if (v112 >= *(a2 + 2))
          {
            v115 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v113 = v112 + 1;
            v114 = *(*a2 + v112);
            *(a2 + 1) = v113;
            v115 = v114 != 0;
          }

          *(this + 155) = v115;
          goto LABEL_250;
        case 0x22u:
          *(this + 41) |= 0x20000u;
          v49 = *(a2 + 1);
          v48 = *(a2 + 2);
          v50 = *a2;
          if (v49 <= 0xFFFFFFFFFFFFFFF5 && v49 + 10 <= v48)
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            v54 = (v50 + v49);
            v55 = v49 + 1;
            do
            {
              *(a2 + 1) = v55;
              v56 = *v54++;
              v53 |= (v56 & 0x7F) << v51;
              if ((v56 & 0x80) == 0)
              {
                goto LABEL_231;
              }

              v51 += 7;
              ++v55;
              v14 = v52++ > 8;
            }

            while (!v14);
LABEL_171:
            LODWORD(v53) = 0;
            goto LABEL_231;
          }

          v142 = 0;
          v143 = 0;
          v53 = 0;
          v144 = (v50 + v49);
          v18 = v48 >= v49;
          v145 = v48 - v49;
          if (!v18)
          {
            v145 = 0;
          }

          v146 = v49 + 1;
          while (2)
          {
            if (v145)
            {
              v147 = *v144;
              *(a2 + 1) = v146;
              v53 |= (v147 & 0x7F) << v142;
              if (v147 < 0)
              {
                v142 += 7;
                ++v144;
                --v145;
                ++v146;
                v14 = v143++ > 8;
                if (v14)
                {
                  goto LABEL_171;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v53) = 0;
              }
            }

            else
            {
              LODWORD(v53) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_231:
          *(this + 33) = v53;
          goto LABEL_250;
        default:
          goto LABEL_17;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    do
    {
      if (!v19)
      {
        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_254;
      }

      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
    }

    while (!v14);
LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
LABEL_256:
      v186 = 0;
      return v186 & 1;
    }

LABEL_250:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  while (v2 < v3 && (*(a2 + 24) & 1) == 0);
LABEL_254:
  v186 = v4 ^ 1;
  return v186 & 1;
}

uint64_t CMMsl::RelativeDeviceMotionInternal::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 164);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 64));
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

  this = PB::Writer::write(a2, *(v3 + 108));
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
  this = PB::Writer::write(a2, *(v3 + 112));
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
  this = PB::Writer::write(a2, *(v3 + 116));
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
  this = PB::Writer::write(a2, *(v3 + 120));
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
  this = PB::Writer::write(a2, *(v3 + 124));
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
  this = PB::Writer::write(a2, *(v3 + 128));
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
  this = PB::Writer::write(a2, *(v3 + 140));
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
  this = PB::Writer::write(a2, *(v3 + 144));
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
  this = PB::Writer::write(a2, *(v3 + 148));
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
  this = PB::Writer::write(a2, *(v3 + 96));
  v4 = *(v3 + 164);
  if ((v4 & 0x200) == 0)
  {
LABEL_13:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_14;
    }

LABEL_53:
    this = PB::Writer::write(a2, *(v3 + 104));
    if ((*(v3 + 164) & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_52:
  this = PB::Writer::write(a2, *(v3 + 100));
  v4 = *(v3 + 164);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_53;
  }

LABEL_14:
  if ((v4 & 0x80) != 0)
  {
LABEL_15:
    this = PB::Writer::write(a2, *(v3 + 92));
  }

LABEL_16:
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7);
  }

  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::write(a2, v10);
  }

  v11 = *(v3 + 164);
  if ((v11 & 0x8000000) != 0)
  {
    v12 = *(v3 + 157);
    this = PB::Writer::write(a2);
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
  this = PB::Writer::write(a2);
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
  this = PB::Writer::write(a2);
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
  this = PB::Writer::write(a2, *(v3 + 80));
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
  this = PB::Writer::write(a2, *(v3 + 76));
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
  this = PB::Writer::write(a2, *(v3 + 72));
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
  this = PB::Writer::write(a2);
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
  this = PB::Writer::write(a2);
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
  this = PB::Writer::write(a2);
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
  this = PB::Writer::write(a2, *(v3 + 84));
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
  this = PB::Writer::writeVarInt(a2);
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
  this = PB::Writer::write(a2);
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
  this = PB::Writer::write(a2);
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
  this = PB::Writer::write(a2);
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
  this = PB::Writer::write(a2, *(v3 + 56));
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
    this = PB::Writer::write(a2);
    if ((*(v3 + 164) & 0x20000) == 0)
    {
      return this;
    }

    goto LABEL_72;
  }

LABEL_70:
  v22 = *(v3 + 88);
  this = PB::Writer::writeVarInt(a2);
  v11 = *(v3 + 164);
  if ((v11 & 0x2000000) != 0)
  {
    goto LABEL_71;
  }

LABEL_39:
  if ((v11 & 0x20000) == 0)
  {
    return this;
  }

LABEL_72:
  v24 = *(v3 + 132);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::RelativeDeviceMotionInternal::hash_value(CMMsl::RelativeDeviceMotionInternal *this)
{
  v2 = *(this + 41);
  if ((v2 & 2) == 0)
  {
    v3 = 0;
    if ((v2 & 0x800) != 0)
    {
      goto LABEL_3;
    }

LABEL_51:
    v66 = 0;
    if ((v2 & 0x1000) != 0)
    {
      goto LABEL_6;
    }

LABEL_52:
    v65 = 0;
    if ((v2 & 0x2000) != 0)
    {
      goto LABEL_9;
    }

LABEL_53:
    v64 = 0;
    if ((v2 & 0x4000) != 0)
    {
      goto LABEL_12;
    }

LABEL_54:
    v63 = 0;
    if ((v2 & 0x8000) != 0)
    {
      goto LABEL_15;
    }

LABEL_55:
    v62 = 0;
    if ((v2 & 0x10000) != 0)
    {
      goto LABEL_18;
    }

LABEL_56:
    v61 = 0;
    if ((v2 & 0x80000) != 0)
    {
      goto LABEL_21;
    }

LABEL_57:
    v60 = 0;
    if ((v2 & 0x100000) != 0)
    {
      goto LABEL_24;
    }

LABEL_58:
    v19 = 0;
    if ((v2 & 0x200000) != 0)
    {
      goto LABEL_28;
    }

LABEL_59:
    v21 = 0;
    if ((v2 & 0x100) != 0)
    {
      goto LABEL_32;
    }

LABEL_60:
    v23 = 0;
    if ((v2 & 0x200) != 0)
    {
      goto LABEL_36;
    }

LABEL_61:
    v25 = 0;
    if ((v2 & 0x400) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_62;
  }

  if (*(this + 8) == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + 8);
  }

  if ((v2 & 0x800) == 0)
  {
    goto LABEL_51;
  }

LABEL_3:
  v4 = *(this + 27);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  v66 = v5;
  if ((v2 & 0x1000) == 0)
  {
    goto LABEL_52;
  }

LABEL_6:
  v6 = *(this + 28);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  v65 = v7;
  if ((v2 & 0x2000) == 0)
  {
    goto LABEL_53;
  }

LABEL_9:
  v8 = *(this + 29);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  v64 = v9;
  if ((v2 & 0x4000) == 0)
  {
    goto LABEL_54;
  }

LABEL_12:
  v10 = *(this + 30);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  v63 = v11;
  if ((v2 & 0x8000) == 0)
  {
    goto LABEL_55;
  }

LABEL_15:
  v12 = *(this + 31);
  v13 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  v62 = v13;
  if ((v2 & 0x10000) == 0)
  {
    goto LABEL_56;
  }

LABEL_18:
  v14 = *(this + 32);
  v15 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  v61 = v15;
  if ((v2 & 0x80000) == 0)
  {
    goto LABEL_57;
  }

LABEL_21:
  v16 = *(this + 35);
  v17 = LODWORD(v16);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  v60 = v17;
  if ((v2 & 0x100000) == 0)
  {
    goto LABEL_58;
  }

LABEL_24:
  v18 = *(this + 36);
  if (v18 == 0.0)
  {
    v19 = 0;
  }

  else
  {
    v19 = LODWORD(v18);
  }

  if ((v2 & 0x200000) == 0)
  {
    goto LABEL_59;
  }

LABEL_28:
  v20 = *(this + 37);
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  else
  {
    v21 = LODWORD(v20);
  }

  if ((v2 & 0x100) == 0)
  {
    goto LABEL_60;
  }

LABEL_32:
  v22 = *(this + 24);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

  else
  {
    v23 = LODWORD(v22);
  }

  if ((v2 & 0x200) == 0)
  {
    goto LABEL_61;
  }

LABEL_36:
  v24 = *(this + 25);
  if (v24 == 0.0)
  {
    v25 = 0;
  }

  else
  {
    v25 = LODWORD(v24);
  }

  if ((v2 & 0x400) != 0)
  {
LABEL_40:
    v26 = *(this + 26);
    if (v26 == 0.0)
    {
      v27 = 0;
    }

    else
    {
      v27 = LODWORD(v26);
    }

    if ((v2 & 0x80) != 0)
    {
      goto LABEL_44;
    }

LABEL_63:
    v29 = 0;
    goto LABEL_64;
  }

LABEL_62:
  v27 = 0;
  if ((v2 & 0x80) == 0)
  {
    goto LABEL_63;
  }

LABEL_44:
  v28 = *(this + 23);
  if (v28 == 0.0)
  {
    v29 = 0;
  }

  else
  {
    v29 = LODWORD(v28);
  }

LABEL_64:
  v30 = *(this + 4);
  v31 = *(this + 5);
  v32 = PBHashBytes();
  v33 = *(this + 1);
  v34 = *(this + 2);
  v35 = PBHashBytes();
  v36 = *(this + 41);
  if ((v36 & 0x8000000) != 0)
  {
    v37 = *(this + 157);
    if ((v36 & 0x400000) != 0)
    {
LABEL_66:
      v38 = *(this + 152);
      if ((v36 & 0x1000000) != 0)
      {
        goto LABEL_67;
      }

      goto LABEL_95;
    }
  }

  else
  {
    v37 = 0;
    if ((v36 & 0x400000) != 0)
    {
      goto LABEL_66;
    }
  }

  v38 = 0;
  if ((v36 & 0x1000000) != 0)
  {
LABEL_67:
    v39 = *(this + 154);
    if ((v36 & 0x10) != 0)
    {
      goto LABEL_68;
    }

LABEL_96:
    v41 = 0;
    if ((v36 & 8) != 0)
    {
      goto LABEL_71;
    }

LABEL_97:
    v43 = 0;
    if ((v36 & 4) != 0)
    {
      goto LABEL_74;
    }

LABEL_98:
    v45 = 0;
    if ((v36 & 0x20000000) != 0)
    {
      goto LABEL_77;
    }

    goto LABEL_99;
  }

LABEL_95:
  v39 = 0;
  if ((v36 & 0x10) == 0)
  {
    goto LABEL_96;
  }

LABEL_68:
  v40 = *(this + 20);
  v41 = LODWORD(v40);
  if (v40 == 0.0)
  {
    v41 = 0;
  }

  if ((v36 & 8) == 0)
  {
    goto LABEL_97;
  }

LABEL_71:
  v42 = *(this + 19);
  v43 = LODWORD(v42);
  if (v42 == 0.0)
  {
    v43 = 0;
  }

  if ((v36 & 4) == 0)
  {
    goto LABEL_98;
  }

LABEL_74:
  v44 = *(this + 18);
  v45 = LODWORD(v44);
  if (v44 == 0.0)
  {
    v45 = 0;
  }

  if ((v36 & 0x20000000) != 0)
  {
LABEL_77:
    v46 = *(this + 159);
    if (v36 < 0)
    {
      goto LABEL_78;
    }

    goto LABEL_100;
  }

LABEL_99:
  v46 = 0;
  if (v36 < 0)
  {
LABEL_78:
    v47 = *(this + 161);
    if ((v36 & 0x800000) != 0)
    {
      goto LABEL_79;
    }

    goto LABEL_101;
  }

LABEL_100:
  v47 = 0;
  if ((v36 & 0x800000) != 0)
  {
LABEL_79:
    v48 = *(this + 153);
    if ((v36 & 0x20) != 0)
    {
      goto LABEL_80;
    }

LABEL_102:
    v50 = 0;
    if ((v36 & 0x40000) != 0)
    {
      goto LABEL_83;
    }

    goto LABEL_103;
  }

LABEL_101:
  v48 = 0;
  if ((v36 & 0x20) == 0)
  {
    goto LABEL_102;
  }

LABEL_80:
  v49 = *(this + 21);
  v50 = LODWORD(v49);
  if (v49 == 0.0)
  {
    v50 = 0;
  }

  if ((v36 & 0x40000) != 0)
  {
LABEL_83:
    v51 = *(this + 34);
    if ((v36 & 0x10000000) != 0)
    {
      goto LABEL_84;
    }

    goto LABEL_104;
  }

LABEL_103:
  v51 = 0;
  if ((v36 & 0x10000000) != 0)
  {
LABEL_84:
    v52 = *(this + 158);
    if ((v36 & 0x4000000) != 0)
    {
      goto LABEL_85;
    }

    goto LABEL_105;
  }

LABEL_104:
  v52 = 0;
  if ((v36 & 0x4000000) != 0)
  {
LABEL_85:
    v53 = *(this + 156);
    if ((v36 & 0x40000000) != 0)
    {
      goto LABEL_86;
    }

    goto LABEL_106;
  }

LABEL_105:
  v53 = 0;
  if ((v36 & 0x40000000) != 0)
  {
LABEL_86:
    v54 = *(this + 160);
    if (v36)
    {
      goto LABEL_87;
    }

LABEL_107:
    v55 = 0.0;
    if ((v36 & 0x40) != 0)
    {
      goto LABEL_90;
    }

    goto LABEL_108;
  }

LABEL_106:
  v54 = 0;
  if ((v36 & 1) == 0)
  {
    goto LABEL_107;
  }

LABEL_87:
  v55 = *(this + 7);
  if (v55 == 0.0)
  {
    v55 = 0.0;
  }

  if ((v36 & 0x40) != 0)
  {
LABEL_90:
    v56 = *(this + 22);
    if ((v36 & 0x2000000) != 0)
    {
      goto LABEL_91;
    }

LABEL_109:
    v57 = 0;
    if ((v36 & 0x20000) != 0)
    {
      goto LABEL_92;
    }

LABEL_110:
    v58 = 0;
    return v66 ^ v3 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v19 ^ v21 ^ v23 ^ v25 ^ v27 ^ v29 ^ v32 ^ v35 ^ v37 ^ v38 ^ v39 ^ v41 ^ v43 ^ v45 ^ v46 ^ v47 ^ v48 ^ v50 ^ v51 ^ v52 ^ v53 ^ v54 ^ *&v55 ^ v56 ^ v57 ^ v58;
  }

LABEL_108:
  v56 = 0;
  if ((v36 & 0x2000000) == 0)
  {
    goto LABEL_109;
  }

LABEL_91:
  v57 = *(this + 155);
  if ((v36 & 0x20000) == 0)
  {
    goto LABEL_110;
  }

LABEL_92:
  v58 = *(this + 33);
  return v66 ^ v3 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v19 ^ v21 ^ v23 ^ v25 ^ v27 ^ v29 ^ v32 ^ v35 ^ v37 ^ v38 ^ v39 ^ v41 ^ v43 ^ v45 ^ v46 ^ v47 ^ v48 ^ v50 ^ v51 ^ v52 ^ v53 ^ v54 ^ *&v55 ^ v56 ^ v57 ^ v58;
}

void CMMsl::RelativeGravityConstraints::~RelativeGravityConstraints(CMMsl::RelativeGravityConstraints *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::RelativeGravityConstraints::RelativeGravityConstraints(CMMsl::RelativeGravityConstraints *this, const CMMsl::RelativeGravityConstraints *a2)
{
  *this = &unk_286C23170;
  *(this + 12) = 0;
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 24) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 24);
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
    LODWORD(v4) = *(a2 + 8);
    v3 |= 0x20u;
    *(this + 24) = v3;
    *(this + 8) = v4;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    LODWORD(v4) = *(a2 + 4);
    v3 |= 2u;
    *(this + 24) = v3;
    *(this + 4) = v4;
    v2 = *(a2 + 24);
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

  LODWORD(v4) = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 24) = v3;
  *(this + 7) = v4;
  v2 = *(a2 + 24);
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
  LODWORD(v4) = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 24) = v3;
  *(this + 9) = v4;
  v2 = *(a2 + 24);
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
  LODWORD(v4) = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 24) = v3;
  *(this + 10) = v4;
  v2 = *(a2 + 24);
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
  *(this + 24) = v3;
  *(this + 44) = v5;
  v2 = *(a2 + 24);
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
  LODWORD(v4) = *(a2 + 6);
  v3 |= 8u;
  *(this + 24) = v3;
  *(this + 6) = v4;
  if ((*(a2 + 24) & 4) == 0)
  {
    return *&v4;
  }

LABEL_20:
  LODWORD(v4) = *(a2 + 5);
  *(this + 24) = v3 | 4;
  *(this + 5) = v4;
  return *&v4;
}

uint64_t CMMsl::RelativeGravityConstraints::operator=(uint64_t a1, const CMMsl::RelativeGravityConstraints *a2)
{
  if (a1 != a2)
  {
    CMMsl::RelativeGravityConstraints::RelativeGravityConstraints(v8, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v5;
    LODWORD(v4) = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v4;
    LOBYTE(v3) = *(a1 + 44);
    *(a1 + 44) = v13;
    v13 = v3;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::RelativeGravityConstraints *a2, CMMsl::RelativeGravityConstraints *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LOBYTE(v3) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v3;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  return result;
}

float CMMsl::RelativeGravityConstraints::RelativeGravityConstraints(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23170;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 20);
  *(a1 + 20) = result;
  return result;
}

uint64_t CMMsl::RelativeGravityConstraints::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::RelativeGravityConstraints::RelativeGravityConstraints(v8, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v5;
    LODWORD(v4) = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v4;
    LOBYTE(v3) = *(a1 + 44);
    *(a1 + 44) = v13;
    v13 = v3;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::RelativeGravityConstraints::formatText(CMMsl::RelativeGravityConstraints *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "avgRotationMax", *(this + 4));
    v5 = *(this + 24);
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

  PB::TextFormatter::format(a2, "historicalDisturbanceDuration", *(this + 5));
  v5 = *(this + 24);
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
  PB::TextFormatter::format(a2, "historicalQuiescenceDuration", *(this + 6));
  v5 = *(this + 24);
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
  PB::TextFormatter::format(a2, "instAccelMagDiff", *(this + 7));
  v5 = *(this + 24);
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
  PB::TextFormatter::format(a2, "instRotationMax", *(this + 8));
  v5 = *(this + 24);
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
  v6 = *(this + 44);
  PB::TextFormatter::format(a2, "isAvgGrav");
  v5 = *(this + 24);
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
  PB::TextFormatter::format(a2, "lpfAccelMagDiff", *(this + 9));
  v5 = *(this + 24);
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
  PB::TextFormatter::format(a2, "measNoiseVar", *(this + 10));
  if (*(this + 24))
  {
LABEL_10:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_11:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::RelativeGravityConstraints::readFrom(CMMsl::RelativeGravityConstraints *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
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
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 4)
    {
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(this + 24) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_57:
            *(a2 + 24) = 1;
            goto LABEL_63;
          }

          *(this + 4) = *(*a2 + v2);
LABEL_61:
          v2 = *(a2 + 1) + 4;
LABEL_62:
          *(a2 + 1) = v2;
          goto LABEL_63;
        }

        if (v22 == 4)
        {
          *(this + 24) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_57;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_61;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 24) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_57;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_62;
        }

        if (v22 == 2)
        {
          *(this + 24) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_57;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_61;
        }
      }
    }

    else if (v22 <= 6)
    {
      if (v22 == 5)
      {
        *(this + 24) |= 0x40u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_57;
        }

        *(this + 9) = *(*a2 + v2);
        goto LABEL_61;
      }

      if (v22 == 6)
      {
        *(this + 24) |= 0x80u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_57;
        }

        *(this + 10) = *(*a2 + v2);
        goto LABEL_61;
      }
    }

    else
    {
      switch(v22)
      {
        case 7:
          *(this + 24) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v24 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v23 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v24 = v23 != 0;
          }

          *(this + 44) = v24;
          goto LABEL_63;
        case 8:
          *(this + 24) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_57;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_61;
        case 9:
          *(this + 24) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_57;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_61;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v25 = 0;
      return v25 & 1;
    }

    v2 = *(a2 + 1);
LABEL_63:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t CMMsl::RelativeGravityConstraints::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 48);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
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

  this = PB::Writer::write(a2, *(v3 + 32));
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
  this = PB::Writer::write(a2, *(v3 + 16));
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
  this = PB::Writer::write(a2, *(v3 + 28));
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
  this = PB::Writer::write(a2, *(v3 + 36));
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
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 48);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = PB::Writer::write(a2, *(v3 + 24));
    if ((*(v3 + 48) & 4) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  v5 = *(v3 + 44);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 48);
  if ((v4 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_19:
  v6 = *(v3 + 20);

  return PB::Writer::write(a2, v6);
}

uint64_t CMMsl::RelativeGravityConstraints::hash_value(CMMsl::RelativeGravityConstraints *this)
{
  v1 = *(this + 24);
  if ((v1 & 1) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_28:
    v4 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_29:
    v6 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_9;
    }

LABEL_30:
    v8 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_12;
    }

LABEL_31:
    v10 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_15;
    }

LABEL_32:
    v12 = 0;
    if ((*(this + 24) & 0x100) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_28;
  }

LABEL_3:
  v3 = *(this + 8);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_29;
  }

LABEL_6:
  v5 = *(this + 4);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_30;
  }

LABEL_9:
  v7 = *(this + 7);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_31;
  }

LABEL_12:
  v9 = *(this + 9);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_32;
  }

LABEL_15:
  v11 = *(this + 10);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((*(this + 24) & 0x100) != 0)
  {
LABEL_18:
    v13 = *(this + 44);
    if ((v1 & 8) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  v13 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_19:
    v14 = *(this + 6);
    v15 = LODWORD(v14);
    if (v14 == 0.0)
    {
      v15 = 0;
    }

    if ((v1 & 4) != 0)
    {
      goto LABEL_22;
    }

LABEL_35:
    v17 = 0;
    return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v13 ^ v15 ^ v17;
  }

LABEL_34:
  v15 = 0;
  if ((v1 & 4) == 0)
  {
    goto LABEL_35;
  }

LABEL_22:
  v16 = *(this + 5);
  v17 = LODWORD(v16);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v13 ^ v15 ^ v17;
}

void CMMsl::RelativeGravityCorrection::~RelativeGravityCorrection(CMMsl::RelativeGravityCorrection *this)
{
  v2 = *(this + 1);
  *this = &unk_286C231A8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::RelativeGravityCorrection::~RelativeGravityCorrection(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::RelativeGravityCorrection::RelativeGravityCorrection(uint64_t this, const CMMsl::RelativeGravityCorrection *a2)
{
  *this = &unk_286C231A8;
  *(this + 8) = 0;
  *(this + 20) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 20))
  {
    v2 = *(a2 + 16);
    *(this + 20) |= 1u;
    *(this + 16) = v2;
  }

  return this;
}

uint64_t CMMsl::RelativeGravityCorrection::operator=(uint64_t a1, const CMMsl::RelativeGravityCorrection *a2)
{
  if (a1 != a2)
  {
    CMMsl::RelativeGravityCorrection::RelativeGravityCorrection(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOBYTE(v4) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    CMMsl::RelativeGravityCorrection::~RelativeGravityCorrection(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::RelativeGravityCorrection *a2, CMMsl::RelativeGravityCorrection *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LOBYTE(v4) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  return this;
}

uint64_t CMMsl::RelativeGravityCorrection::RelativeGravityCorrection(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C231A8;
  *(a1 + 8) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t CMMsl::RelativeGravityCorrection::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::RelativeGravityCorrection::RelativeGravityCorrection(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOBYTE(v4) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    CMMsl::RelativeGravityCorrection::~RelativeGravityCorrection(v6);
  }

  return a1;
}

uint64_t CMMsl::RelativeGravityCorrection::formatText(CMMsl::RelativeGravityCorrection *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "correction");
  }

  if (*(this + 20))
  {
    v6 = *(this + 16);
    PB::TextFormatter::format(a2, "isAvgGrav");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::RelativeGravityCorrection::readFrom(CMMsl::RelativeGravityCorrection *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
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
        *(a2 + 1) = v12;
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
          goto LABEL_22;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_32;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 1u;
        v22 = *(a2 + 1);
        if (v22 >= *(a2 + 2))
        {
          v25 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v23 = v22 + 1;
          v24 = *(*a2 + v22);
          *(a2 + 1) = v23;
          v25 = v24 != 0;
        }

        *(this + 16) = v25;
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          operator new();
        }

LABEL_22:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          v27 = 0;
          return v27 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_32;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_32:
  v27 = v4 ^ 1;
  return v27 & 1;
}

uint64_t CMMsl::RelativeGravityCorrection::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 20))
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(a2);
  }

  return this;
}

unint64_t CMMsl::RelativeGravityCorrection::hash_value(CMMsl::RelativeGravityCorrection *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = CMMsl::DeviceMotionCorrection::hash_value(v2);
  }

  if (*(this + 20))
  {
    v3 = *(this + 16);
  }

  else
  {
    v3 = 0;
  }

  return v3 ^ v2;
}

uint64_t CMMsl::RelativeGravityCorrection::makeCorrection(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::RhythmicGnssOperatorStatus::~RhythmicGnssOperatorStatus(CMMsl::RhythmicGnssOperatorStatus *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::RhythmicGnssOperatorStatus::RhythmicGnssOperatorStatus(uint64_t this, const CMMsl::RhythmicGnssOperatorStatus *a2)
{
  *this = &unk_286C231E0;
  *(this + 24) = 0;
  v2 = *(a2 + 24);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 3);
    v3 = 2;
    *(this + 24) = 2;
    *(this + 12) = v4;
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
    *(this + 24) = v3;
    *(this + 20) = v5;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 4);
    v3 |= 4u;
    *(this + 24) = v3;
    *(this + 16) = v6;
    v2 = *(a2 + 24);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        return this;
      }

LABEL_12:
      v8 = *(a2 + 21);
      *(this + 24) = v3 | 0x10;
      *(this + 21) = v8;
      return this;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 2);
  v3 |= 1u;
  *(this + 24) = v3;
  *(this + 8) = v7;
  if ((*(a2 + 24) & 0x10) != 0)
  {
    goto LABEL_12;
  }

  return this;
}

uint64_t CMMsl::RhythmicGnssOperatorStatus::operator=(uint64_t a1, const CMMsl::RhythmicGnssOperatorStatus *a2)
{
  if (a1 != a2)
  {
    CMMsl::RhythmicGnssOperatorStatus::RhythmicGnssOperatorStatus(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v3;
    LOWORD(v3) = *(a1 + 20);
    *(a1 + 20) = v10;
    v10 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::RhythmicGnssOperatorStatus *a2, CMMsl::RhythmicGnssOperatorStatus *a3)
{
  v3 = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v4;
  LOBYTE(v4) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v4;
  v5 = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 8);
  *(this + 8) = *(a2 + 2);
  *(a2 + 2) = v6;
  LOBYTE(v6) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v6;
  return this;
}

uint64_t CMMsl::RhythmicGnssOperatorStatus::RhythmicGnssOperatorStatus(uint64_t result, uint64_t a2)
{
  *result = &unk_286C231E0;
  *(result + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(result + 12) = *(a2 + 12);
  *(result + 20) = *(a2 + 20);
  *(result + 16) = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  *(result + 21) = *(a2 + 21);
  return result;
}

{
  *result = &unk_286C231E0;
  *(result + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(result + 12) = *(a2 + 12);
  *(result + 20) = *(a2 + 20);
  *(result + 16) = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  *(result + 21) = *(a2 + 21);
  return result;
}

uint64_t CMMsl::RhythmicGnssOperatorStatus::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v14 = &unk_286C231E0;
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v4 = *(a2 + 20);
    v6 = *(a2 + 12);
    v5 = *(a2 + 16);
    v7 = *(a2 + 8);
    v8 = *(a2 + 21);
    v9 = *(a1 + 24);
    *(a1 + 24) = v3;
    v20 = v9;
    LOBYTE(v3) = *(a1 + 20);
    *(a1 + 20) = v4;
    v18 = v3;
    v10 = *(a1 + 12);
    v11 = *(a1 + 16);
    *(a1 + 12) = v6;
    *(a1 + 16) = v5;
    v16 = v10;
    v17 = v11;
    v12 = *(a1 + 8);
    *(a1 + 8) = v7;
    v15 = v12;
    LOBYTE(v10) = *(a1 + 21);
    *(a1 + 21) = v8;
    v19 = v10;
    PB::Base::~Base(&v14);
  }

  return a1;
}

uint64_t CMMsl::RhythmicGnssOperatorStatus::formatText(CMMsl::RhythmicGnssOperatorStatus *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if ((v5 & 8) != 0)
  {
    v7 = *(this + 20);
    PB::TextFormatter::format(a2, "activeGnssSession");
    v5 = *(this + 24);
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

  else if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 2);
  PB::TextFormatter::format(a2, "currentModesOfOperation");
  v5 = *(this + 24);
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
  v9 = *(this + 3);
  PB::TextFormatter::format(a2, "gnssModeOfOperation");
  v5 = *(this + 24);
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
  v10 = *(this + 21);
  PB::TextFormatter::format(a2, "hasSubscribedRhythmicClient");
  if ((*(this + 24) & 4) != 0)
  {
LABEL_6:
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "rhythmicMode");
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::RhythmicGnssOperatorStatus::readFrom(CMMsl::RhythmicGnssOperatorStatus *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v3);
      v18 = v2 >= v3;
      v19 = v2 - v3;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v3 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_22;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v3);
    v12 = v3 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
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
        goto LABEL_17;
      }
    }

LABEL_22:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 2)
    {
      if (v22 == 1)
      {
        *(this + 24) |= 2u;
        v43 = *(a2 + 1);
        v2 = *(a2 + 2);
        v44 = *a2;
        if (v43 > 0xFFFFFFFFFFFFFFF5 || v43 + 10 > v2)
        {
          v65 = 0;
          v66 = 0;
          v47 = 0;
          if (v2 <= v43)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v67 = (v44 + v43);
          v68 = v3 - v43;
          v69 = v43 + 1;
          while (1)
          {
            if (!v68)
            {
              LODWORD(v47) = 0;
              *(a2 + 24) = 1;
              goto LABEL_99;
            }

            v70 = v69;
            v71 = *v67;
            *(a2 + 1) = v70;
            v47 |= (v71 & 0x7F) << v65;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            ++v67;
            --v68;
            v69 = v70 + 1;
            v14 = v66++ > 8;
            if (v14)
            {
              LODWORD(v47) = 0;
              goto LABEL_98;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v47) = 0;
          }

LABEL_98:
          v3 = v70;
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
            v3 = v49;
            *(a2 + 1) = v49;
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

LABEL_99:
        *(this + 3) = v47;
        goto LABEL_19;
      }

      if (v22 == 2)
      {
        *(this + 24) |= 8u;
        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
        if (v3 >= v2)
        {
          v26 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v25 = *(*a2 + v3++);
          *(a2 + 1) = v3;
          v26 = v25 != 0;
        }

        *(this + 20) = v26;
        goto LABEL_19;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 24) |= 4u;
          v27 = *(a2 + 1);
          v2 = *(a2 + 2);
          v28 = *a2;
          if (v27 > 0xFFFFFFFFFFFFFFF5 || v27 + 10 > v2)
          {
            v51 = 0;
            v52 = 0;
            v31 = 0;
            if (v2 <= v27)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v53 = (v28 + v27);
            v54 = v3 - v27;
            v55 = v27 + 1;
            while (1)
            {
              if (!v54)
              {
                LODWORD(v31) = 0;
                *(a2 + 24) = 1;
                goto LABEL_91;
              }

              v56 = v55;
              v57 = *v53;
              *(a2 + 1) = v56;
              v31 |= (v57 & 0x7F) << v51;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              ++v53;
              --v54;
              v55 = v56 + 1;
              v14 = v52++ > 8;
              if (v14)
              {
                LODWORD(v31) = 0;
                goto LABEL_90;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v31) = 0;
            }

LABEL_90:
            v3 = v56;
          }

          else
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = (v28 + v27);
            v33 = v27 + 1;
            while (1)
            {
              v3 = v33;
              *(a2 + 1) = v33;
              v34 = *v32++;
              v31 |= (v34 & 0x7F) << v29;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              ++v33;
              v14 = v30++ > 8;
              if (v14)
              {
                LODWORD(v31) = 0;
                break;
              }
            }
          }

LABEL_91:
          *(this + 4) = v31;
          goto LABEL_19;
        case 4:
          *(this + 24) |= 1u;
          v35 = *(a2 + 1);
          v2 = *(a2 + 2);
          v36 = *a2;
          if (v35 > 0xFFFFFFFFFFFFFFF5 || v35 + 10 > v2)
          {
            v58 = 0;
            v59 = 0;
            v39 = 0;
            if (v2 <= v35)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v60 = (v36 + v35);
            v61 = v3 - v35;
            v62 = v35 + 1;
            while (1)
            {
              if (!v61)
              {
                LODWORD(v39) = 0;
                *(a2 + 24) = 1;
                goto LABEL_95;
              }

              v63 = v62;
              v64 = *v60;
              *(a2 + 1) = v63;
              v39 |= (v64 & 0x7F) << v58;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              ++v60;
              --v61;
              v62 = v63 + 1;
              v14 = v59++ > 8;
              if (v14)
              {
                LODWORD(v39) = 0;
                goto LABEL_94;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v39) = 0;
            }

LABEL_94:
            v3 = v63;
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
              v3 = v41;
              *(a2 + 1) = v41;
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
                LODWORD(v39) = 0;
                break;
              }
            }
          }

LABEL_95:
          *(this + 2) = v39;
          goto LABEL_19;
        case 5:
          *(this + 24) |= 0x10u;
          v3 = *(a2 + 1);
          v2 = *(a2 + 2);
          if (v3 >= v2)
          {
            v24 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v23 = *(*a2 + v3++);
            *(a2 + 1) = v3;
            v24 = v23 != 0;
          }

          *(this + 21) = v24;
          goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v72 = 0;
      return v72 & 1;
    }

    v3 = *(a2 + 1);
    v2 = *(a2 + 2);
LABEL_19:
    v4 = *(a2 + 24);
  }

  v72 = v4 ^ 1;
  return v72 & 1;
}

uint64_t CMMsl::RhythmicGnssOperatorStatus::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 2) != 0)
  {
    v5 = *(this + 12);
    this = PB::Writer::writeVarInt(a2);
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

  else if ((*(this + 24) & 8) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 20);
  this = PB::Writer::write(a2);
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
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 24) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  v7 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 24);
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v9 = *(v3 + 21);

  return PB::Writer::write(a2);
}

uint64_t CMMsl::RhythmicGnssOperatorStatus::hash_value(CMMsl::RhythmicGnssOperatorStatus *this)
{
  if ((*(this + 24) & 2) != 0)
  {
    v1 = *(this + 3);
    if ((*(this + 24) & 8) != 0)
    {
LABEL_3:
      v2 = *(this + 20);
      if ((*(this + 24) & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 24) & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 24) & 4) != 0)
  {
LABEL_4:
    v3 = *(this + 4);
    if (*(this + 24))
    {
      goto LABEL_5;
    }

LABEL_10:
    v4 = 0;
    if ((*(this + 24) & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v5 = 0;
    return v2 ^ v1 ^ v3 ^ v4 ^ v5;
  }

LABEL_9:
  v3 = 0;
  if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v4 = *(this + 2);
  if ((*(this + 24) & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v5 = *(this + 21);
  return v2 ^ v1 ^ v3 ^ v4 ^ v5;
}

void CMMsl::RotationRate::~RotationRate(CMMsl::RotationRate *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::RotationRate::RotationRate(CMMsl::RotationRate *this, const CMMsl::RotationRate *a2)
{
  *this = &unk_286C23218;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 1) = v4;
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
    LODWORD(v4) = *(a2 + 4);
    v3 |= 2u;
    *(this + 28) = v3;
    *(this + 4) = v4;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    LODWORD(v4) = *(a2 + 5);
    v3 |= 4u;
    *(this + 28) = v3;
    *(this + 5) = v4;
    if ((*(a2 + 28) & 8) == 0)
    {
      return *&v4;
    }
  }

  else if ((v2 & 8) == 0)
  {
    return *&v4;
  }

  LODWORD(v4) = *(a2 + 6);
  *(this + 28) = v3 | 8;
  *(this + 6) = v4;
  return *&v4;
}

uint64_t CMMsl::RotationRate::operator=(uint64_t a1, const CMMsl::RotationRate *a2)
{
  if (a1 != a2)
  {
    CMMsl::RotationRate::RotationRate(&v9, a2);
    v3 = v11;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    *(a1 + 8) = v10;
    *(a1 + 16) = v3;
    v6 = *(a1 + 28);
    *(a1 + 28) = v13;
    v13 = v6;
    v10 = v4;
    v11 = v5;
    v7 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::RotationRate *a2, CMMsl::RotationRate *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  return result;
}

float CMMsl::RotationRate::RotationRate(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23218;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

{
  *a1 = &unk_286C23218;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t CMMsl::RotationRate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 24);
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v7;
    v9[0] = &unk_286C23218;
    v11 = *(a1 + 28);
    *(a1 + 28) = v3;
    v9[1] = v5;
    v9[2] = v6;
    LODWORD(v5) = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v5;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::RotationRate::formatText(CMMsl::RotationRate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
    v5 = *(this + 28);
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

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "x", *(this + 4));
  v5 = *(this + 28);
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
  PB::TextFormatter::format(a2, "y", *(this + 5));
  if ((*(this + 28) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "z", *(this + 6));
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}