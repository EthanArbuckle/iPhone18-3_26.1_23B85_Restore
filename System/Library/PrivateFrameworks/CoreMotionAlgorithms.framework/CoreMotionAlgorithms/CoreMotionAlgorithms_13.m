uint64_t sub_245DEC764(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 360);
  if ((v4 & 0x800000) != 0)
  {
    result = PB::Writer::write(this, *(result + 132));
    v4 = *(v3 + 360);
    if ((v4 & 0x400000) == 0)
    {
LABEL_3:
      if ((v4 & 0x1000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_141;
    }
  }

  else if ((v4 & 0x400000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 360);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_4:
    if ((v4 & 0x20000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_141:
  v44 = *(v3 + 136);
  result = PB::Writer::writeVarInt(this);
  if ((*(v3 + 360) & 0x20000000000000) != 0)
  {
LABEL_5:
    v5 = *(v3 + 252);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_6:
  if ((*(v3 + 368) & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 300));
  }

  v6 = *(v3 + 360);
  if ((v6 & 0x800000000000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 276));
    v6 = *(v3 + 360);
    if ((v6 & 0x800000000000) == 0)
    {
LABEL_10:
      if ((v6 & 0x400000000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_145;
    }
  }

  else if ((v6 & 0x800000000000) == 0)
  {
    goto LABEL_10;
  }

  result = PB::Writer::write(this, *(v3 + 228));
  v6 = *(v3 + 360);
  if ((v6 & 0x400000000000) == 0)
  {
LABEL_11:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_146;
  }

LABEL_145:
  result = PB::Writer::write(this, *(v3 + 224));
  v6 = *(v3 + 360);
  if ((v6 & 0x200) == 0)
  {
LABEL_12:
    if ((v6 & 0x100000000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_147;
  }

LABEL_146:
  result = PB::Writer::write(this, *(v3 + 76));
  v6 = *(v3 + 360);
  if ((v6 & 0x100000000000000) == 0)
  {
LABEL_13:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_148;
  }

LABEL_147:
  v45 = *(v3 + 264);
  result = PB::Writer::writeVarInt(this);
  v6 = *(v3 + 360);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_14:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_148:
  v46 = *(v3 + 140);
  result = PB::Writer::writeVarInt(this);
  if ((*(v3 + 360) & 0x10000) != 0)
  {
LABEL_15:
    result = PB::Writer::write(this, *(v3 + 104));
  }

LABEL_16:
  v7 = *(v3 + 368);
  if ((v7 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 312));
    v7 = *(v3 + 368);
  }

  if ((v7 & 0x20) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 316));
  }

  v8 = *(v3 + 360);
  if ((v8 & 0x100000000000) != 0)
  {
    v47 = *(v3 + 216);
    result = PB::Writer::writeVarInt(this);
    v8 = *(v3 + 360);
    if ((v8 & 0x40000000000) == 0)
    {
LABEL_22:
      if ((v8 & 0x8000000000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_152;
    }
  }

  else if ((v8 & 0x40000000000) == 0)
  {
    goto LABEL_22;
  }

  v48 = *(v3 + 208);
  result = PB::Writer::writeVarInt(this);
  v8 = *(v3 + 360);
  if ((v8 & 0x8000000000000) == 0)
  {
LABEL_23:
    if ((v8 & 0x2000000000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_152:
  result = PB::Writer::write(this, *(v3 + 244));
  if ((*(v3 + 360) & 0x2000000000000000) != 0)
  {
LABEL_24:
    v9 = *(v3 + 284);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_25:
  if ((*(v3 + 368) & 4) != 0)
  {
    v10 = *(v3 + 304);
    result = PB::Writer::writeVarInt(this);
  }

  v11 = *(v3 + 360);
  if ((v11 & 0x4000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 144));
    v11 = *(v3 + 360);
    if ((v11 & 0x80) == 0)
    {
LABEL_29:
      if ((v11 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((v11 & 0x80) == 0)
  {
    goto LABEL_29;
  }

  v49 = *(v3 + 64);
  result = PB::Writer::writeVarInt(this);
  if (*(v3 + 360))
  {
LABEL_30:
    v12 = *(v3 + 8);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_31:
  v13 = *(v3 + 368);
  if ((v13 & 0x80) != 0)
  {
    v50 = *(v3 + 321);
    result = PB::Writer::write(this);
    v13 = *(v3 + 368);
    if ((v13 & 0x100) == 0)
    {
LABEL_33:
      if ((v13 & 0x10000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_159;
    }
  }

  else if ((v13 & 0x100) == 0)
  {
    goto LABEL_33;
  }

  v51 = *(v3 + 322);
  result = PB::Writer::write(this);
  v13 = *(v3 + 368);
  if ((v13 & 0x10000) == 0)
  {
LABEL_34:
    if ((v13 & 0x20000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_160;
  }

LABEL_159:
  v52 = *(v3 + 330);
  result = PB::Writer::write(this);
  v13 = *(v3 + 368);
  if ((v13 & 0x20000) == 0)
  {
LABEL_35:
    if ((v13 & 0x10000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_161;
  }

LABEL_160:
  v53 = *(v3 + 331);
  result = PB::Writer::write(this);
  v13 = *(v3 + 368);
  if ((v13 & 0x10000000) == 0)
  {
LABEL_36:
    if ((v13 & 0x4000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_162;
  }

LABEL_161:
  v54 = *(v3 + 342);
  result = PB::Writer::write(this);
  v13 = *(v3 + 368);
  if ((v13 & 0x4000000) == 0)
  {
LABEL_37:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_163;
  }

LABEL_162:
  v55 = *(v3 + 340);
  result = PB::Writer::write(this);
  v13 = *(v3 + 368);
  if ((v13 & 0x2000) == 0)
  {
LABEL_38:
    if ((v13 & 0x20000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_164;
  }

LABEL_163:
  v56 = *(v3 + 327);
  result = PB::Writer::write(this);
  v13 = *(v3 + 368);
  if ((v13 & 0x20000000) == 0)
  {
LABEL_39:
    if ((v13 & 0x40000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_165;
  }

LABEL_164:
  v57 = *(v3 + 343);
  result = PB::Writer::write(this);
  v13 = *(v3 + 368);
  if ((v13 & 0x40000000) == 0)
  {
LABEL_40:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_166;
  }

LABEL_165:
  v58 = *(v3 + 344);
  result = PB::Writer::write(this);
  v13 = *(v3 + 368);
  if ((v13 & 0x400) == 0)
  {
LABEL_41:
    if ((v13 & 0x2000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_167;
  }

LABEL_166:
  v59 = *(v3 + 324);
  result = PB::Writer::write(this);
  v13 = *(v3 + 368);
  if ((v13 & 0x2000000) == 0)
  {
LABEL_42:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_168;
  }

LABEL_167:
  v60 = *(v3 + 339);
  result = PB::Writer::write(this);
  v13 = *(v3 + 368);
  if ((v13 & 0x4000) == 0)
  {
LABEL_43:
    if ((v13 & 0x8000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_169;
  }

LABEL_168:
  v61 = *(v3 + 328);
  result = PB::Writer::write(this);
  v13 = *(v3 + 368);
  if ((v13 & 0x8000000) == 0)
  {
LABEL_44:
    if ((v13 & 0x100000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_170;
  }

LABEL_169:
  v62 = *(v3 + 341);
  result = PB::Writer::write(this);
  v13 = *(v3 + 368);
  if ((v13 & 0x100000) == 0)
  {
LABEL_45:
    if ((v13 & 0x8000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_171;
  }

LABEL_170:
  v63 = *(v3 + 334);
  result = PB::Writer::write(this);
  v13 = *(v3 + 368);
  if ((v13 & 0x8000000000) == 0)
  {
LABEL_46:
    if ((v13 & 0x800000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_172;
  }

LABEL_171:
  v64 = *(v3 + 353);
  result = PB::Writer::write(this);
  v13 = *(v3 + 368);
  if ((v13 & 0x800000000) == 0)
  {
LABEL_47:
    if ((v13 & 0x10000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_173;
  }

LABEL_172:
  v65 = *(v3 + 349);
  result = PB::Writer::write(this);
  v13 = *(v3 + 368);
  if ((v13 & 0x10000000000) == 0)
  {
LABEL_48:
    if ((v13 & 0x1000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_174;
  }

LABEL_173:
  v66 = *(v3 + 354);
  result = PB::Writer::write(this);
  v13 = *(v3 + 368);
  if ((v13 & 0x1000000000) == 0)
  {
LABEL_49:
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_175;
  }

LABEL_174:
  v67 = *(v3 + 350);
  result = PB::Writer::write(this);
  v13 = *(v3 + 368);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_50:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_176;
  }

LABEL_175:
  v68 = *(v3 + 345);
  result = PB::Writer::write(this);
  v13 = *(v3 + 368);
  if ((v13 & 0x1000) == 0)
  {
LABEL_51:
    if ((v13 & 0x200000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_177;
  }

LABEL_176:
  v69 = *(v3 + 326);
  result = PB::Writer::write(this);
  v13 = *(v3 + 368);
  if ((v13 & 0x200000) == 0)
  {
LABEL_52:
    if ((v13 & 0x20000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_178;
  }

LABEL_177:
  v70 = *(v3 + 335);
  result = PB::Writer::write(this);
  v13 = *(v3 + 368);
  if ((v13 & 0x20000000000) == 0)
  {
LABEL_53:
    if ((v13 & 0x2000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_178:
  v71 = *(v3 + 355);
  result = PB::Writer::write(this);
  if ((*(v3 + 368) & 0x2000000000) != 0)
  {
LABEL_54:
    v14 = *(v3 + 351);
    result = PB::Writer::write(this);
  }

LABEL_55:
  if ((*(v3 + 362) & 2) != 0)
  {
    v15 = *(v3 + 108);
    result = PB::Writer::writeVarInt(this);
  }

  v16 = *(v3 + 368);
  if ((v16 & 0x800000) != 0)
  {
    v72 = *(v3 + 337);
    result = PB::Writer::write(this);
    v16 = *(v3 + 368);
    if ((v16 & 0x1000000) == 0)
    {
LABEL_59:
      if ((v16 & 0x40) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }
  }

  else if ((v16 & 0x1000000) == 0)
  {
    goto LABEL_59;
  }

  v73 = *(v3 + 338);
  result = PB::Writer::write(this);
  if ((*(v3 + 368) & 0x40) != 0)
  {
LABEL_60:
    v17 = *(v3 + 320);
    result = PB::Writer::write(this);
  }

LABEL_61:
  if ((*(v3 + 362) & 4) != 0)
  {
    v18 = *(v3 + 112);
    result = PB::Writer::writeVarInt(this);
  }

  v19 = *(v3 + 368);
  if ((v19 & 0x100000000000) != 0)
  {
    v74 = *(v3 + 358);
    result = PB::Writer::write(this);
    v19 = *(v3 + 368);
    if ((v19 & 0x40000000000) == 0)
    {
LABEL_65:
      if ((v19 & 0x80000000000) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_185;
    }
  }

  else if ((v19 & 0x40000000000) == 0)
  {
    goto LABEL_65;
  }

  v75 = *(v3 + 356);
  result = PB::Writer::write(this);
  v19 = *(v3 + 368);
  if ((v19 & 0x80000000000) == 0)
  {
LABEL_66:
    if ((v19 & 0x400000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_186;
  }

LABEL_185:
  v76 = *(v3 + 357);
  result = PB::Writer::write(this);
  v19 = *(v3 + 368);
  if ((v19 & 0x400000000) == 0)
  {
LABEL_67:
    if ((v19 & 0x200000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_187;
  }

LABEL_186:
  v77 = *(v3 + 348);
  result = PB::Writer::write(this);
  v19 = *(v3 + 368);
  if ((v19 & 0x200000000) == 0)
  {
LABEL_68:
    if ((v19 & 0x100000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_187:
  v78 = *(v3 + 347);
  result = PB::Writer::write(this);
  if ((*(v3 + 368) & 0x100000000) != 0)
  {
LABEL_69:
    v20 = *(v3 + 346);
    result = PB::Writer::write(this);
  }

LABEL_70:
  v21 = *(v3 + 360);
  if ((v21 & 0x40000000000000) != 0)
  {
    v79 = *(v3 + 256);
    result = PB::Writer::writeVarInt(this);
    v21 = *(v3 + 360);
    if ((v21 & 0x80000000000000) == 0)
    {
LABEL_72:
      if ((v21 & 0x8000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_191;
    }
  }

  else if ((v21 & 0x80000000000000) == 0)
  {
    goto LABEL_72;
  }

  v80 = *(v3 + 260);
  result = PB::Writer::writeVarInt(this);
  v21 = *(v3 + 360);
  if ((v21 & 0x8000000) == 0)
  {
LABEL_73:
    if ((v21 & 0x10000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

LABEL_191:
  v81 = *(v3 + 148);
  result = PB::Writer::writeVarInt(this);
  if ((*(v3 + 360) & 0x10000000) != 0)
  {
LABEL_74:
    v22 = *(v3 + 152);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_75:
  v23 = *(v3 + 368);
  if ((v23 & 0x40000) != 0)
  {
    v24 = *(v3 + 332);
    result = PB::Writer::write(this);
    v23 = *(v3 + 368);
  }

  if ((v23 & 0x8000) != 0)
  {
    v25 = *(v3 + 329);
    result = PB::Writer::write(this);
  }

  v26 = *(v3 + 360);
  if ((v26 & 0x4000000000) != 0)
  {
    v82 = *(v3 + 192);
    result = PB::Writer::writeVarInt(this);
    v26 = *(v3 + 360);
    if ((v26 & 0x80000) == 0)
    {
LABEL_81:
      if ((v26 & 0x2000000000) == 0)
      {
        goto LABEL_82;
      }

LABEL_195:
      v84 = *(v3 + 188);
      result = PB::Writer::writeVarInt(this);
      if ((*(v3 + 360) & 0x8000000000000000) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_196;
    }
  }

  else if ((v26 & 0x80000) == 0)
  {
    goto LABEL_81;
  }

  v83 = *(v3 + 116);
  result = PB::Writer::writeVarInt(this);
  v26 = *(v3 + 360);
  if ((v26 & 0x2000000000) != 0)
  {
    goto LABEL_195;
  }

LABEL_82:
  if ((v26 & 0x8000000000000000) == 0)
  {
    goto LABEL_83;
  }

LABEL_196:
  result = PB::Writer::write(this, *(v3 + 292));
LABEL_83:
  if (*(v3 + 368))
  {
    result = PB::Writer::write(this, *(v3 + 296));
  }

  v27 = *(v3 + 360);
  if ((v27 & 0x400000000000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 272));
    v27 = *(v3 + 360);
    if ((v27 & 0x1000000000000000) == 0)
    {
LABEL_87:
      if ((v27 & 0x4000000000000000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_88;
    }
  }

  else if ((v27 & 0x1000000000000000) == 0)
  {
    goto LABEL_87;
  }

  v85 = *(v3 + 280);
  result = PB::Writer::writeVarInt(this);
  if ((*(v3 + 360) & 0x4000000000000000) != 0)
  {
LABEL_88:
    v28 = *(v3 + 288);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_89:
  if ((*(v3 + 369) & 8) != 0)
  {
    v29 = *(v3 + 325);
    result = PB::Writer::write(this);
  }

  v30 = *(v3 + 360);
  if ((v30 & 0x4000) != 0)
  {
    v86 = *(v3 + 96);
    result = PB::Writer::writeVarInt(this);
    v30 = *(v3 + 360);
    if ((v30 & 0x1000) == 0)
    {
LABEL_93:
      if ((v30 & 0x200000000000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_202;
    }
  }

  else if ((v30 & 0x1000) == 0)
  {
    goto LABEL_93;
  }

  result = PB::Writer::write(this, *(v3 + 88));
  v30 = *(v3 + 360);
  if ((v30 & 0x200000000000) == 0)
  {
LABEL_94:
    if ((v30 & 0x200000000000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_203;
  }

LABEL_202:
  v87 = *(v3 + 220);
  result = PB::Writer::writeVarInt(this);
  v30 = *(v3 + 360);
  if ((v30 & 0x200000000000000) == 0)
  {
LABEL_95:
    if ((v30 & 0x40) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_204;
  }

LABEL_203:
  v88 = *(v3 + 268);
  result = PB::Writer::writeVarInt(this);
  v30 = *(v3 + 360);
  if ((v30 & 0x40) == 0)
  {
LABEL_96:
    if ((v30 & 0x1000000000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_205;
  }

LABEL_204:
  v89 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v30 = *(v3 + 360);
  if ((v30 & 0x1000000000000) == 0)
  {
LABEL_97:
    if ((v30 & 0x2000000000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_206;
  }

LABEL_205:
  v90 = *(v3 + 232);
  result = PB::Writer::writeVarInt(this);
  v30 = *(v3 + 360);
  if ((v30 & 0x2000000000000) == 0)
  {
LABEL_98:
    if ((v30 & 0x100000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_207;
  }

LABEL_206:
  v91 = *(v3 + 236);
  result = PB::Writer::writeVarInt(this);
  v30 = *(v3 + 360);
  if ((v30 & 0x100000) == 0)
  {
LABEL_99:
    if ((v30 & 0x400) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_208;
  }

LABEL_207:
  result = PB::Writer::write(this, *(v3 + 120));
  v30 = *(v3 + 360);
  if ((v30 & 0x400) == 0)
  {
LABEL_100:
    if ((v30 & 0x200000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_209;
  }

LABEL_208:
  result = PB::Writer::write(this, *(v3 + 80));
  v30 = *(v3 + 360);
  if ((v30 & 0x200000) == 0)
  {
LABEL_101:
    if ((v30 & 0x800) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_210;
  }

LABEL_209:
  result = PB::Writer::write(this, *(v3 + 124));
  v30 = *(v3 + 360);
  if ((v30 & 0x800) == 0)
  {
LABEL_102:
    if ((v30 & 0x100) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

LABEL_210:
  result = PB::Writer::write(this, *(v3 + 84));
  if ((*(v3 + 360) & 0x100) != 0)
  {
LABEL_103:
    result = PB::Writer::write(this, *(v3 + 72));
  }

LABEL_104:
  v31 = *(v3 + 368);
  if ((v31 & 0x400000) != 0)
  {
    v32 = *(v3 + 336);
    result = PB::Writer::write(this);
    v31 = *(v3 + 368);
  }

  if ((v31 & 8) != 0)
  {
    v33 = *(v3 + 308);
    result = PB::Writer::writeVarInt(this);
  }

  v34 = *(v3 + 360);
  if ((v34 & 0x20000000) != 0)
  {
    v35 = *(v3 + 156);
    result = PB::Writer::writeVarInt(this);
    v34 = *(v3 + 360);
  }

  if ((v34 & 0x80000000) != 0)
  {
    v36 = *(v3 + 164);
    result = PB::Writer::writeVarInt(this);
  }

  if ((*(v3 + 372) & 0x40) != 0)
  {
    v37 = *(v3 + 352);
    result = PB::Writer::write(this);
  }

  v38 = *(v3 + 360);
  if ((v38 & 0x100000000) != 0)
  {
    v92 = *(v3 + 168);
    result = PB::Writer::writeVarInt(this);
    v38 = *(v3 + 360);
    if ((v38 & 0x40000000) == 0)
    {
LABEL_116:
      if ((v38 & 0x10000000000000) == 0)
      {
        goto LABEL_117;
      }

      goto LABEL_214;
    }
  }

  else if ((v38 & 0x40000000) == 0)
  {
    goto LABEL_116;
  }

  v93 = *(v3 + 160);
  result = PB::Writer::writeVarInt(this);
  v38 = *(v3 + 360);
  if ((v38 & 0x10000000000000) == 0)
  {
LABEL_117:
    if ((v38 & 0x8000000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_215;
  }

LABEL_214:
  result = PB::Writer::write(this, *(v3 + 248));
  v38 = *(v3 + 360);
  if ((v38 & 0x8000000000) == 0)
  {
LABEL_118:
    if ((v38 & 0x10000000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_216;
  }

LABEL_215:
  v94 = *(v3 + 196);
  result = PB::Writer::writeVarInt(this);
  v38 = *(v3 + 360);
  if ((v38 & 0x10000000000) == 0)
  {
LABEL_119:
    if ((v38 & 0x8000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_217;
  }

LABEL_216:
  v95 = *(v3 + 200);
  result = PB::Writer::writeVarInt(this);
  v38 = *(v3 + 360);
  if ((v38 & 0x8000) == 0)
  {
LABEL_120:
    if ((v38 & 0x80000000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_218;
  }

LABEL_217:
  result = PB::Writer::write(this, *(v3 + 100));
  v38 = *(v3 + 360);
  if ((v38 & 0x80000000000) == 0)
  {
LABEL_121:
    if ((v38 & 0x20000000000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_219;
  }

LABEL_218:
  v96 = *(v3 + 212);
  result = PB::Writer::writeVarInt(this);
  v38 = *(v3 + 360);
  if ((v38 & 0x20000000000) == 0)
  {
LABEL_122:
    if ((v38 & 0x1000000000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_220;
  }

LABEL_219:
  v97 = *(v3 + 204);
  result = PB::Writer::writeVarInt(this);
  v38 = *(v3 + 360);
  if ((v38 & 0x1000000000) == 0)
  {
LABEL_123:
    if ((v38 & 0x200000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_221;
  }

LABEL_220:
  v98 = *(v3 + 184);
  result = PB::Writer::writeVarInt(this);
  v38 = *(v3 + 360);
  if ((v38 & 0x200000000) == 0)
  {
LABEL_124:
    if ((v38 & 0x800000000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_221:
  v99 = *(v3 + 172);
  result = PB::Writer::writeVarInt(this);
  if ((*(v3 + 360) & 0x800000000) != 0)
  {
LABEL_125:
    v39 = *(v3 + 180);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_126:
  v40 = *(v3 + 368);
  if ((v40 & 0x200) != 0)
  {
    v41 = *(v3 + 323);
    result = PB::Writer::write(this);
    v40 = *(v3 + 368);
  }

  if ((v40 & 0x80000) != 0)
  {
    v42 = *(v3 + 333);
    result = PB::Writer::write(this);
  }

  v43 = *(v3 + 360);
  if ((v43 & 0x400000000) != 0)
  {
    v100 = *(v3 + 176);
    result = PB::Writer::writeVarInt(this);
    v43 = *(v3 + 360);
    if ((v43 & 2) == 0)
    {
LABEL_132:
      if ((v43 & 0x20) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_225;
    }
  }

  else if ((v43 & 2) == 0)
  {
    goto LABEL_132;
  }

  v101 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v43 = *(v3 + 360);
  if ((v43 & 0x20) == 0)
  {
LABEL_133:
    if ((v43 & 4) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_226;
  }

LABEL_225:
  v102 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v43 = *(v3 + 360);
  if ((v43 & 4) == 0)
  {
LABEL_134:
    if ((v43 & 8) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_227;
  }

LABEL_226:
  v103 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v43 = *(v3 + 360);
  if ((v43 & 8) == 0)
  {
LABEL_135:
    if ((v43 & 0x10) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_228;
  }

LABEL_227:
  v104 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v43 = *(v3 + 360);
  if ((v43 & 0x10) == 0)
  {
LABEL_136:
    if ((v43 & 0x4000000000000) == 0)
    {
      goto LABEL_137;
    }

LABEL_229:
    v106 = *(v3 + 240);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 360) & 0x2000) == 0)
    {
      return result;
    }

    goto LABEL_230;
  }

LABEL_228:
  v105 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v43 = *(v3 + 360);
  if ((v43 & 0x4000000000000) != 0)
  {
    goto LABEL_229;
  }

LABEL_137:
  if ((v43 & 0x2000) == 0)
  {
    return result;
  }

LABEL_230:
  v107 = *(v3 + 92);

  return PB::Writer::write(this, v107);
}

double sub_245DED344(uint64_t a1)
{
  *a1 = &unk_2858CE1E8;
  *(a1 + 204) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

void sub_245DED38C(PB::Base *this)
{
  *this = &unk_2858CE1E8;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(this + 2) = v6;
    operator delete(v6);
  }

  PB::Base::~Base(this);
}

void sub_245DED430(PB::Base *a1)
{
  sub_245DED38C(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DED468(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CE1E8;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 56) = 0u;
  v5 = (a1 + 56);
  *(a1 + 104) = 0u;
  v6 = (a1 + 104);
  *(a1 + 204) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  v7 = *(a2 + 204);
  if ((v7 & 0x1000) != 0)
  {
    v9 = *(a2 + 196);
    v8 = 4096;
    *(a1 + 204) = 4096;
    *(a1 + 196) = v9;
    v7 = *(a2 + 204);
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  if ((*(a2 + 204) & 0x800) != 0)
  {
LABEL_5:
    v10 = *(a2 + 192);
    v8 |= 0x800u;
    *(a1 + 204) = v8;
    *(a1 + 192) = v10;
    v7 = *(a2 + 204);
  }

LABEL_6:
  if ((v7 & 0x10) != 0)
  {
    v13 = *(a2 + 160);
    v8 |= 0x10u;
    *(a1 + 204) = v8;
    *(a1 + 160) = v13;
    v7 = *(a2 + 204);
    if ((v7 & 0x4000) == 0)
    {
LABEL_8:
      if ((v7 & 0x400) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }
  }

  else if ((v7 & 0x4000) == 0)
  {
    goto LABEL_8;
  }

  v14 = *(a2 + 201);
  v8 |= 0x4000u;
  *(a1 + 204) = v8;
  *(a1 + 201) = v14;
  v7 = *(a2 + 204);
  if ((v7 & 0x400) == 0)
  {
LABEL_9:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v15 = *(a2 + 188);
  v8 |= 0x400u;
  *(a1 + 204) = v8;
  *(a1 + 188) = v15;
  v7 = *(a2 + 204);
  if ((v7 & 0x2000) == 0)
  {
LABEL_10:
    if ((v7 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v16 = *(a2 + 200);
  v8 |= 0x2000u;
  *(a1 + 204) = v8;
  *(a1 + 200) = v16;
  v7 = *(a2 + 204);
  if ((v7 & 4) == 0)
  {
LABEL_11:
    if ((v7 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v17 = *(a2 + 144);
  v8 |= 4u;
  *(a1 + 204) = v8;
  *(a1 + 144) = v17;
  v7 = *(a2 + 204);
  if ((v7 & 8) == 0)
  {
LABEL_12:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v18 = *(a2 + 152);
  v8 |= 8u;
  *(a1 + 204) = v8;
  *(a1 + 152) = v18;
  v7 = *(a2 + 204);
  if ((v7 & 0x100) == 0)
  {
LABEL_13:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v19 = *(a2 + 180);
  v8 |= 0x100u;
  *(a1 + 204) = v8;
  *(a1 + 180) = v19;
  v7 = *(a2 + 204);
  if ((v7 & 0x80) == 0)
  {
LABEL_14:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v20 = *(a2 + 176);
  v8 |= 0x80u;
  *(a1 + 204) = v8;
  *(a1 + 176) = v20;
  v7 = *(a2 + 204);
  if ((v7 & 0x40) == 0)
  {
LABEL_15:
    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  v21 = *(a2 + 172);
  v8 |= 0x40u;
  *(a1 + 204) = v8;
  *(a1 + 172) = v21;
  v7 = *(a2 + 204);
  if ((v7 & 1) == 0)
  {
LABEL_16:
    if ((v7 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  v22 = *(a2 + 128);
  v8 |= 1u;
  *(a1 + 204) = v8;
  *(a1 + 128) = v22;
  v7 = *(a2 + 204);
  if ((v7 & 2) == 0)
  {
LABEL_17:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  v23 = *(a2 + 136);
  v8 |= 2u;
  *(a1 + 204) = v8;
  *(a1 + 136) = v23;
  v7 = *(a2 + 204);
  if ((v7 & 0x200) == 0)
  {
LABEL_18:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_34:
  v24 = *(a2 + 184);
  v8 |= 0x200u;
  *(a1 + 204) = v8;
  *(a1 + 184) = v24;
  if ((*(a2 + 204) & 0x20) != 0)
  {
LABEL_19:
    v11 = *(a2 + 168);
    *(a1 + 204) = v8 | 0x20;
    *(a1 + 168) = v11;
  }

LABEL_20:
  if (a1 != a2)
  {
    sub_245DF86C8((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
    sub_245DF86C8(v6, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 3);
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    sub_245DF843C(v5, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  }

  return a1;
}

uint64_t sub_245DED70C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 204);
  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "deltaGravity", *(a1 + 168));
    v5 = *(a1 + 204);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  v23 = *(a1 + 128);
  PB::TextFormatter::format(this, "epochFirstTimestamp");
  v5 = *(a1 + 204);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  v24 = *(a1 + 136);
  PB::TextFormatter::format(this, "epochLastTimestamp");
  v5 = *(a1 + 204);
  if ((v5 & 0x2000) == 0)
  {
LABEL_5:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  v25 = *(a1 + 200);
  PB::TextFormatter::format(this, "isSlowRollDetected");
  v5 = *(a1 + 204);
  if ((v5 & 0x4000) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  v26 = *(a1 + 201);
  PB::TextFormatter::format(this, "isSpinDetected");
  v5 = *(a1 + 204);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "maxDeltaAngleLong", *(a1 + 172));
  v5 = *(a1 + 204);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_37:
  PB::TextFormatter::format(this, "maxDeltaAngleShort", *(a1 + 176));
  if ((*(a1 + 204) & 0x100) != 0)
  {
LABEL_9:
    PB::TextFormatter::format(this, "slowRollCumCoherentAngle", *(a1 + 180));
  }

LABEL_10:
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "slowRollSegmentMaxAxisVariance", v8);
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(this, "slowRollSegmentMaxFiltRotRate", v11);
  }

  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  while (v12 != v13)
  {
    v14 = *v12++;
    PB::TextFormatter::format(this, "slowRollSegmentMinFiltRotRate", v14);
  }

  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  while (v15 != v16)
  {
    v17 = *v15++;
    PB::TextFormatter::format(this, "slowRollSegmentStartTimes");
  }

  v18 = *(a1 + 104);
  v19 = *(a1 + 112);
  while (v18 != v19)
  {
    v20 = *v18++;
    PB::TextFormatter::format(this, "slowRollSegmentStopTimes");
  }

  v21 = *(a1 + 204);
  if ((v21 & 4) != 0)
  {
    v27 = *(a1 + 144);
    PB::TextFormatter::format(this, "slowRollStartTime");
    v21 = *(a1 + 204);
    if ((v21 & 8) == 0)
    {
LABEL_22:
      if ((v21 & 0x200) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_41;
    }
  }

  else if ((v21 & 8) == 0)
  {
    goto LABEL_22;
  }

  v28 = *(a1 + 152);
  PB::TextFormatter::format(this, "slowRollStopTime");
  v21 = *(a1 + 204);
  if ((v21 & 0x200) == 0)
  {
LABEL_23:
    if ((v21 & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_42;
  }

LABEL_41:
  v29 = *(a1 + 184);
  PB::TextFormatter::format(this, "spatialSamplingCount");
  v21 = *(a1 + 204);
  if ((v21 & 0x400) == 0)
  {
LABEL_24:
    if ((v21 & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "spinCumulativeRotation", *(a1 + 188));
  v21 = *(a1 + 204);
  if ((v21 & 0x800) == 0)
  {
LABEL_25:
    if ((v21 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "spinCumulativeRotationThresholdDegrees", *(a1 + 192));
  v21 = *(a1 + 204);
  if ((v21 & 0x1000) == 0)
  {
LABEL_26:
    if ((v21 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_44:
  PB::TextFormatter::format(this, "spinGravityAngleThresholdDegrees", *(a1 + 196));
  if ((*(a1 + 204) & 0x10) != 0)
  {
LABEL_27:
    v22 = *(a1 + 160);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_28:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DEDA1C(uint64_t a1, PB::Reader *this)
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
        while (v17)
        {
          v20 = *v18;
          *(this + 1) = v19;
          v10 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            if (v4)
            {
              v10 = 0;
            }

            goto LABEL_21;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v78 = v15++ > 8;
          if (v78)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        v4 = 1;
        *(this + 24) = 1;
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
        v78 = v9++ > 8;
        if (v78)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v21 = v10 & 7;
      if (v4 & 1 | (v21 == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 108)
      {
        if (v22 > 204)
        {
          if (v22 <= 206)
          {
            if (v22 == 205)
            {
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_439;
                }

                if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
                {
                  v61 = *(a1 + 88);
                  while (1)
                  {
                    v167 = *(a1 + 96);
                    if (v61 >= v167)
                    {
                      v168 = *(a1 + 80);
                      v169 = v61 - v168;
                      v170 = (v61 - v168) >> 3;
                      v171 = v170 + 1;
                      if ((v170 + 1) >> 61)
                      {
                        goto LABEL_441;
                      }

                      v172 = v167 - v168;
                      if (v172 >> 2 > v171)
                      {
                        v171 = v172 >> 2;
                      }

                      if (v172 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v173 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v173 = v171;
                      }

                      if (v173)
                      {
                        sub_245DF8830(a1 + 80, v173);
                      }

                      v174 = (v61 - v168) >> 3;
                      v175 = (8 * v170);
                      v176 = (8 * v170 - 8 * v174);
                      *v175 = 0;
                      v61 = (v175 + 1);
                      memcpy(v176, v168, v169);
                      v177 = *(a1 + 80);
                      *(a1 + 80) = v176;
                      *(a1 + 88) = v61;
                      *(a1 + 96) = 0;
                      if (v177)
                      {
                        operator delete(v177);
                      }
                    }

                    else
                    {
                      *v61 = 0;
                      v61 += 8;
                    }

                    *(a1 + 88) = v61;
                    v179 = *(this + 1);
                    v178 = *(this + 2);
                    v180 = *this;
                    v181 = 0;
                    v182 = 0;
                    if (v179 > 0xFFFFFFFFFFFFFFF5 || v179 + 10 > v178)
                    {
                      break;
                    }

                    v189 = 0;
                    v190 = (v180 + v179);
                    v191 = v179 + 1;
                    while (1)
                    {
                      v187 = v191;
                      *(this + 1) = v191;
                      v192 = *v190++;
                      v189 |= (v192 & 0x7F) << v181;
                      if ((v192 & 0x80) == 0)
                      {
                        break;
                      }

                      v181 += 7;
                      ++v191;
                      v78 = v182++ > 8;
                      if (v78)
                      {
                        goto LABEL_244;
                      }
                    }

LABEL_247:
                    *(v61 - 1) = v189;
                    if (v187 >= v178 || (*(this + 24) & 1) != 0)
                    {
                      goto LABEL_316;
                    }
                  }

                  v189 = 0;
                  v184 = v178 - v179;
                  if (v178 < v179)
                  {
                    v184 = 0;
                  }

                  v185 = (v180 + v179);
                  v186 = v179 + 1;
                  while (v184)
                  {
                    v187 = v186;
                    v188 = *v185;
                    *(this + 1) = v187;
                    v189 |= (v188 & 0x7F) << v181;
                    if ((v188 & 0x80) == 0)
                    {
                      if (*(this + 24))
                      {
                        v189 = 0;
                      }

                      goto LABEL_247;
                    }

                    v181 += 7;
                    --v184;
                    ++v185;
                    v186 = v187 + 1;
                    v78 = v182++ > 8;
                    if (v78)
                    {
LABEL_244:
                      v189 = 0;
                      goto LABEL_247;
                    }
                  }

LABEL_315:
                  *(this + 24) = 1;
                  *(v61 - 1) = 0;
                }

                goto LABEL_316;
              }

              v223 = *(a1 + 88);
              v222 = *(a1 + 96);
              if (v223 >= v222)
              {
                v253 = *(a1 + 80);
                v254 = v223 - v253;
                v255 = (v223 - v253) >> 3;
                v256 = v255 + 1;
                if ((v255 + 1) >> 61)
                {
                  goto LABEL_441;
                }

                v257 = v222 - v253;
                if (v257 >> 2 > v256)
                {
                  v256 = v257 >> 2;
                }

                if (v257 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v258 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v258 = v256;
                }

                if (v258)
                {
                  sub_245DF8830(a1 + 80, v258);
                }

                v279 = (v223 - v253) >> 3;
                v280 = (8 * v255);
                v281 = (8 * v255 - 8 * v279);
                *v280 = 0;
                v224 = v280 + 1;
                memcpy(v281, v253, v254);
                v282 = *(a1 + 80);
                *(a1 + 80) = v281;
                *(a1 + 88) = v224;
                *(a1 + 96) = 0;
                if (v282)
                {
                  operator delete(v282);
                }
              }

              else
              {
                *v223 = 0;
                v224 = v223 + 8;
              }

              *(a1 + 88) = v224;
              v284 = *(this + 1);
              v283 = *(this + 2);
              v285 = *this;
              if (v284 <= 0xFFFFFFFFFFFFFFF5 && v284 + 10 <= v283)
              {
                v286 = 0;
                v287 = 0;
                v288 = 0;
                v289 = (v285 + v284);
                v290 = v284 + 1;
                while (1)
                {
                  *(this + 1) = v290;
                  v291 = *v289++;
                  v288 |= (v291 & 0x7F) << v286;
                  if ((v291 & 0x80) == 0)
                  {
                    goto LABEL_432;
                  }

                  v286 += 7;
                  ++v290;
                  v78 = v287++ > 8;
                  if (v78)
                  {
                    goto LABEL_428;
                  }
                }
              }

              v292 = 0;
              v293 = 0;
              v288 = 0;
              v16 = v283 >= v284;
              v294 = v283 - v284;
              if (!v16)
              {
                v294 = 0;
              }

              v295 = (v285 + v284);
              v296 = v284 + 1;
              while (v294)
              {
                v297 = *v295;
                *(this + 1) = v296;
                v288 |= (v297 & 0x7F) << v292;
                if ((v297 & 0x80) == 0)
                {
LABEL_430:
                  if (*(this + 24))
                  {
                    v288 = 0;
                  }

                  goto LABEL_432;
                }

                v292 += 7;
                --v294;
                ++v295;
                ++v296;
                v78 = v293++ > 8;
                if (v78)
                {
LABEL_428:
                  v288 = 0;
                  goto LABEL_432;
                }
              }
            }

            else
            {
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_439;
                }

                if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
                {
                  v61 = *(a1 + 112);
                  do
                  {
                    v62 = *(a1 + 120);
                    if (v61 >= v62)
                    {
                      v63 = *(a1 + 104);
                      v64 = v61 - v63;
                      v65 = (v61 - v63) >> 3;
                      v66 = v65 + 1;
                      if ((v65 + 1) >> 61)
                      {
                        goto LABEL_441;
                      }

                      v67 = v62 - v63;
                      if (v67 >> 2 > v66)
                      {
                        v66 = v67 >> 2;
                      }

                      if (v67 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v68 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v68 = v66;
                      }

                      if (v68)
                      {
                        sub_245DF8830(a1 + 104, v68);
                      }

                      v69 = (v61 - v63) >> 3;
                      v70 = (8 * v65);
                      v71 = (8 * v65 - 8 * v69);
                      *v70 = 0;
                      v61 = (v70 + 1);
                      memcpy(v71, v63, v64);
                      v72 = *(a1 + 104);
                      *(a1 + 104) = v71;
                      *(a1 + 112) = v61;
                      *(a1 + 120) = 0;
                      if (v72)
                      {
                        operator delete(v72);
                      }
                    }

                    else
                    {
                      *v61 = 0;
                      v61 += 8;
                    }

                    *(a1 + 112) = v61;
                    v74 = *(this + 1);
                    v73 = *(this + 2);
                    v75 = *this;
                    v76 = 0;
                    v77 = 0;
                    v78 = v74 > 0xFFFFFFFFFFFFFFF5 || v74 + 10 > v73;
                    if (v78)
                    {
                      v84 = 0;
                      v79 = v73 - v74;
                      if (v73 < v74)
                      {
                        v79 = 0;
                      }

                      v80 = (v75 + v74);
                      v81 = v74 + 1;
                      while (1)
                      {
                        if (!v79)
                        {
                          goto LABEL_315;
                        }

                        v82 = v81;
                        v83 = *v80;
                        *(this + 1) = v82;
                        v84 |= (v83 & 0x7F) << v76;
                        if ((v83 & 0x80) == 0)
                        {
                          break;
                        }

                        v76 += 7;
                        --v79;
                        ++v80;
                        v81 = v82 + 1;
                        v78 = v77++ > 8;
                        if (v78)
                        {
LABEL_124:
                          v84 = 0;
                          goto LABEL_127;
                        }
                      }

                      if (*(this + 24))
                      {
                        v84 = 0;
                      }
                    }

                    else
                    {
                      v84 = 0;
                      v85 = (v75 + v74);
                      v86 = v74 + 1;
                      while (1)
                      {
                        v82 = v86;
                        *(this + 1) = v86;
                        v87 = *v85++;
                        v84 |= (v87 & 0x7F) << v76;
                        if ((v87 & 0x80) == 0)
                        {
                          break;
                        }

                        v76 += 7;
                        ++v86;
                        v78 = v77++ > 8;
                        if (v78)
                        {
                          goto LABEL_124;
                        }
                      }
                    }

LABEL_127:
                    *(v61 - 1) = v84;
                  }

                  while (v82 < v73 && (*(this + 24) & 1) == 0);
                }

                goto LABEL_316;
              }

              v240 = *(a1 + 112);
              v239 = *(a1 + 120);
              if (v240 >= v239)
              {
                v265 = *(a1 + 104);
                v266 = v240 - v265;
                v267 = (v240 - v265) >> 3;
                v268 = v267 + 1;
                if ((v267 + 1) >> 61)
                {
LABEL_441:
                  sub_245DF85A4();
                }

                v269 = v239 - v265;
                if (v269 >> 2 > v268)
                {
                  v268 = v269 >> 2;
                }

                if (v269 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v270 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v270 = v268;
                }

                if (v270)
                {
                  sub_245DF8830(a1 + 104, v270);
                }

                v303 = (v240 - v265) >> 3;
                v304 = (8 * v267);
                v305 = (8 * v267 - 8 * v303);
                *v304 = 0;
                v224 = v304 + 1;
                memcpy(v305, v265, v266);
                v306 = *(a1 + 104);
                *(a1 + 104) = v305;
                *(a1 + 112) = v224;
                *(a1 + 120) = 0;
                if (v306)
                {
                  operator delete(v306);
                }
              }

              else
              {
                *v240 = 0;
                v224 = v240 + 8;
              }

              *(a1 + 112) = v224;
              v308 = *(this + 1);
              v307 = *(this + 2);
              v309 = *this;
              if (v308 <= 0xFFFFFFFFFFFFFFF5 && v308 + 10 <= v307)
              {
                v310 = 0;
                v311 = 0;
                v288 = 0;
                v312 = (v309 + v308);
                v313 = v308 + 1;
                while (1)
                {
                  *(this + 1) = v313;
                  v314 = *v312++;
                  v288 |= (v314 & 0x7F) << v310;
                  if ((v314 & 0x80) == 0)
                  {
                    goto LABEL_432;
                  }

                  v310 += 7;
                  ++v313;
                  v78 = v311++ > 8;
                  if (v78)
                  {
                    goto LABEL_428;
                  }
                }
              }

              v315 = 0;
              v316 = 0;
              v288 = 0;
              v16 = v307 >= v308;
              v317 = v307 - v308;
              if (!v16)
              {
                v317 = 0;
              }

              v318 = (v309 + v308);
              v319 = v308 + 1;
              while (v317)
              {
                v320 = *v318;
                *(this + 1) = v319;
                v288 |= (v320 & 0x7F) << v315;
                if ((v320 & 0x80) == 0)
                {
                  goto LABEL_430;
                }

                v315 += 7;
                --v317;
                ++v318;
                ++v319;
                v78 = v316++ > 8;
                if (v78)
                {
                  goto LABEL_428;
                }
              }
            }

            v288 = 0;
            *(this + 24) = 1;
LABEL_432:
            *(v224 - 1) = v288;
            goto LABEL_433;
          }

          switch(v22)
          {
            case 0xCF:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_439;
                }

                v145 = *(this + 1);
                v146 = *(this + 2);
                while (v145 < v146 && (*(this + 24) & 1) == 0)
                {
                  v148 = *(a1 + 16);
                  v147 = *(a1 + 24);
                  if (v148 >= v147)
                  {
                    v150 = *(a1 + 8);
                    v151 = v148 - v150;
                    v152 = (v148 - v150) >> 2;
                    v153 = v152 + 1;
                    if ((v152 + 1) >> 62)
                    {
                      goto LABEL_440;
                    }

                    v154 = v147 - v150;
                    if (v154 >> 1 > v153)
                    {
                      v153 = v154 >> 1;
                    }

                    if (v154 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v155 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v155 = v153;
                    }

                    if (v155)
                    {
                      sub_245DF85BC(a1 + 8, v155);
                    }

                    v156 = (v148 - v150) >> 2;
                    v157 = (4 * v152);
                    v158 = (4 * v152 - 4 * v156);
                    *v157 = 0;
                    v149 = v157 + 1;
                    memcpy(v158, v150, v151);
                    v159 = *(a1 + 8);
                    *(a1 + 8) = v158;
                    *(a1 + 16) = v149;
                    *(a1 + 24) = 0;
                    if (v159)
                    {
                      operator delete(v159);
                    }
                  }

                  else
                  {
                    *v148 = 0;
                    v149 = v148 + 4;
                  }

                  *(a1 + 16) = v149;
                  v160 = *(this + 1);
                  if (v160 > 0xFFFFFFFFFFFFFFFBLL || v160 + 4 > *(this + 2))
                  {
LABEL_314:
                    *(this + 24) = 1;
                    goto LABEL_316;
                  }

                  *(v149 - 1) = *(*this + v160);
                  v146 = *(this + 2);
                  v145 = *(this + 1) + 4;
                  *(this + 1) = v145;
                }

                goto LABEL_316;
              }

              v221 = *(a1 + 16);
              v220 = *(a1 + 24);
              if (v221 >= v220)
              {
                v247 = *(a1 + 8);
                v248 = v221 - v247;
                v249 = (v221 - v247) >> 2;
                v250 = v249 + 1;
                if ((v249 + 1) >> 62)
                {
                  goto LABEL_440;
                }

                v251 = v220 - v247;
                if (v251 >> 1 > v250)
                {
                  v250 = v251 >> 1;
                }

                if (v251 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v252 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v252 = v250;
                }

                if (v252)
                {
                  sub_245DF85BC(a1 + 8, v252);
                }

                v275 = (v221 - v247) >> 2;
                v276 = (4 * v249);
                v277 = (4 * v249 - 4 * v275);
                *v276 = 0;
                v219 = v276 + 1;
                memcpy(v277, v247, v248);
                v278 = *(a1 + 8);
                *(a1 + 8) = v277;
                *(a1 + 16) = v219;
                *(a1 + 24) = 0;
                if (v278)
                {
                  operator delete(v278);
                }
              }

              else
              {
                *v221 = 0;
                v219 = v221 + 4;
              }

              *(a1 + 16) = v219;
LABEL_407:
              v302 = *(this + 1);
              if (v302 > 0xFFFFFFFFFFFFFFFBLL || v302 + 4 > *(this + 2))
              {
                goto LABEL_409;
              }

              *(v219 - 1) = *(*this + v302);
              goto LABEL_411;
            case 0xD0:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_439;
                }

                v102 = *(this + 1);
                v103 = *(this + 2);
                while (v102 < v103 && (*(this + 24) & 1) == 0)
                {
                  v105 = *(a1 + 64);
                  v104 = *(a1 + 72);
                  if (v105 >= v104)
                  {
                    v107 = *(a1 + 56);
                    v108 = v105 - v107;
                    v109 = (v105 - v107) >> 2;
                    v110 = v109 + 1;
                    if ((v109 + 1) >> 62)
                    {
                      goto LABEL_440;
                    }

                    v111 = v104 - v107;
                    if (v111 >> 1 > v110)
                    {
                      v110 = v111 >> 1;
                    }

                    if (v111 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v112 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v112 = v110;
                    }

                    if (v112)
                    {
                      sub_245DF85BC(a1 + 56, v112);
                    }

                    v113 = (v105 - v107) >> 2;
                    v114 = (4 * v109);
                    v115 = (4 * v109 - 4 * v113);
                    *v114 = 0;
                    v106 = v114 + 1;
                    memcpy(v115, v107, v108);
                    v116 = *(a1 + 56);
                    *(a1 + 56) = v115;
                    *(a1 + 64) = v106;
                    *(a1 + 72) = 0;
                    if (v116)
                    {
                      operator delete(v116);
                    }
                  }

                  else
                  {
                    *v105 = 0;
                    v106 = v105 + 4;
                  }

                  *(a1 + 64) = v106;
                  v117 = *(this + 1);
                  if (v117 > 0xFFFFFFFFFFFFFFFBLL || v117 + 4 > *(this + 2))
                  {
                    goto LABEL_314;
                  }

                  *(v106 - 1) = *(*this + v117);
                  v103 = *(this + 2);
                  v102 = *(this + 1) + 4;
                  *(this + 1) = v102;
                }

                goto LABEL_316;
              }

              v218 = *(a1 + 64);
              v217 = *(a1 + 72);
              if (v218 >= v217)
              {
                v241 = *(a1 + 56);
                v242 = v218 - v241;
                v243 = (v218 - v241) >> 2;
                v244 = v243 + 1;
                if ((v243 + 1) >> 62)
                {
                  goto LABEL_440;
                }

                v245 = v217 - v241;
                if (v245 >> 1 > v244)
                {
                  v244 = v245 >> 1;
                }

                if (v245 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v246 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v246 = v244;
                }

                if (v246)
                {
                  sub_245DF85BC(a1 + 56, v246);
                }

                v271 = (v218 - v241) >> 2;
                v272 = (4 * v243);
                v273 = (4 * v243 - 4 * v271);
                *v272 = 0;
                v219 = v272 + 1;
                memcpy(v273, v241, v242);
                v274 = *(a1 + 56);
                *(a1 + 56) = v273;
                *(a1 + 64) = v219;
                *(a1 + 72) = 0;
                if (v274)
                {
                  operator delete(v274);
                }
              }

              else
              {
                *v218 = 0;
                v219 = v218 + 4;
              }

              *(a1 + 64) = v219;
              goto LABEL_407;
            case 0xD1:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_439;
                }

                v26 = *(this + 1);
                v27 = *(this + 2);
                while (v26 < v27 && (*(this + 24) & 1) == 0)
                {
                  v29 = *(a1 + 40);
                  v28 = *(a1 + 48);
                  if (v29 >= v28)
                  {
                    v31 = *(a1 + 32);
                    v32 = v29 - v31;
                    v33 = (v29 - v31) >> 2;
                    v34 = v33 + 1;
                    if ((v33 + 1) >> 62)
                    {
                      goto LABEL_440;
                    }

                    v35 = v28 - v31;
                    if (v35 >> 1 > v34)
                    {
                      v34 = v35 >> 1;
                    }

                    if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v36 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v36 = v34;
                    }

                    if (v36)
                    {
                      sub_245DF85BC(a1 + 32, v36);
                    }

                    v37 = (v29 - v31) >> 2;
                    v38 = (4 * v33);
                    v39 = (4 * v33 - 4 * v37);
                    *v38 = 0;
                    v30 = v38 + 1;
                    memcpy(v39, v31, v32);
                    v40 = *(a1 + 32);
                    *(a1 + 32) = v39;
                    *(a1 + 40) = v30;
                    *(a1 + 48) = 0;
                    if (v40)
                    {
                      operator delete(v40);
                    }
                  }

                  else
                  {
                    *v29 = 0;
                    v30 = v29 + 4;
                  }

                  *(a1 + 40) = v30;
                  v41 = *(this + 1);
                  if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(this + 2))
                  {
                    goto LABEL_314;
                  }

                  *(v30 - 1) = *(*this + v41);
                  v27 = *(this + 2);
                  v26 = *(this + 1) + 4;
                  *(this + 1) = v26;
                }

LABEL_316:
                PB::Reader::recallMark();
                goto LABEL_433;
              }

              v226 = *(a1 + 40);
              v225 = *(a1 + 48);
              if (v226 >= v225)
              {
                v259 = *(a1 + 32);
                v260 = v226 - v259;
                v261 = (v226 - v259) >> 2;
                v262 = v261 + 1;
                if ((v261 + 1) >> 62)
                {
LABEL_440:
                  sub_245DF85A4();
                }

                v263 = v225 - v259;
                if (v263 >> 1 > v262)
                {
                  v262 = v263 >> 1;
                }

                if (v263 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v264 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v264 = v262;
                }

                if (v264)
                {
                  sub_245DF85BC(a1 + 32, v264);
                }

                v298 = (v226 - v259) >> 2;
                v299 = (4 * v261);
                v300 = (4 * v261 - 4 * v298);
                *v299 = 0;
                v219 = v299 + 1;
                memcpy(v300, v259, v260);
                v301 = *(a1 + 32);
                *(a1 + 32) = v300;
                *(a1 + 40) = v219;
                *(a1 + 48) = 0;
                if (v301)
                {
                  operator delete(v301);
                }
              }

              else
              {
                *v226 = 0;
                v219 = v226 + 4;
              }

              *(a1 + 40) = v219;
              goto LABEL_407;
          }
        }

        else
        {
          if (v22 > 201)
          {
            if (v22 == 202)
            {
              *(a1 + 204) |= 2u;
              v128 = *(this + 1);
              v127 = *(this + 2);
              v129 = *this;
              if (v128 > 0xFFFFFFFFFFFFFFF5 || v128 + 10 > v127)
              {
                v205 = 0;
                v206 = 0;
                v132 = 0;
                v16 = v127 >= v128;
                v207 = v127 - v128;
                if (!v16)
                {
                  v207 = 0;
                }

                v208 = (v129 + v128);
                v209 = v128 + 1;
                while (1)
                {
                  if (!v207)
                  {
                    v132 = 0;
                    *(this + 24) = 1;
                    goto LABEL_371;
                  }

                  v210 = *v208;
                  *(this + 1) = v209;
                  v132 |= (v210 & 0x7F) << v205;
                  if ((v210 & 0x80) == 0)
                  {
                    break;
                  }

                  v205 += 7;
                  --v207;
                  ++v208;
                  ++v209;
                  v78 = v206++ > 8;
                  if (v78)
                  {
LABEL_275:
                    v132 = 0;
                    goto LABEL_371;
                  }
                }

                if (*(this + 24))
                {
                  v132 = 0;
                }
              }

              else
              {
                v130 = 0;
                v131 = 0;
                v132 = 0;
                v133 = (v129 + v128);
                v134 = v128 + 1;
                while (1)
                {
                  *(this + 1) = v134;
                  v135 = *v133++;
                  v132 |= (v135 & 0x7F) << v130;
                  if ((v135 & 0x80) == 0)
                  {
                    break;
                  }

                  v130 += 7;
                  ++v134;
                  v78 = v131++ > 8;
                  if (v78)
                  {
                    goto LABEL_275;
                  }
                }
              }

LABEL_371:
              *(a1 + 136) = v132;
              goto LABEL_433;
            }

            if (v22 == 203)
            {
              *(a1 + 204) |= 0x200u;
              v93 = *(this + 1);
              v92 = *(this + 2);
              v94 = *this;
              if (v93 > 0xFFFFFFFFFFFFFFF5 || v93 + 10 > v92)
              {
                v193 = 0;
                v194 = 0;
                v97 = 0;
                v16 = v92 >= v93;
                v195 = v92 - v93;
                if (!v16)
                {
                  v195 = 0;
                }

                v196 = (v94 + v93);
                v197 = v93 + 1;
                while (1)
                {
                  if (!v195)
                  {
                    LODWORD(v97) = 0;
                    *(this + 24) = 1;
                    goto LABEL_365;
                  }

                  v198 = *v196;
                  *(this + 1) = v197;
                  v97 |= (v198 & 0x7F) << v193;
                  if ((v198 & 0x80) == 0)
                  {
                    break;
                  }

                  v193 += 7;
                  --v195;
                  ++v196;
                  ++v197;
                  v78 = v194++ > 8;
                  if (v78)
                  {
LABEL_259:
                    LODWORD(v97) = 0;
                    goto LABEL_365;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v97) = 0;
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
                  v78 = v96++ > 8;
                  if (v78)
                  {
                    goto LABEL_259;
                  }
                }
              }

LABEL_365:
              *(a1 + 184) = v97;
              goto LABEL_433;
            }

            *(a1 + 204) |= 0x20u;
            v24 = *(this + 1);
            if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(this + 2))
            {
              goto LABEL_409;
            }

            *(a1 + 168) = *(*this + v24);
            goto LABEL_411;
          }

          if (v22 == 109)
          {
            *(a1 + 204) |= 0x40u;
            v162 = *(this + 1);
            if (v162 > 0xFFFFFFFFFFFFFFFBLL || v162 + 4 > *(this + 2))
            {
              goto LABEL_409;
            }

            *(a1 + 172) = *(*this + v162);
            goto LABEL_411;
          }

          if (v22 == 201)
          {
            *(a1 + 204) |= 1u;
            v44 = *(this + 1);
            v43 = *(this + 2);
            v45 = *this;
            if (v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v43)
            {
              v227 = 0;
              v228 = 0;
              v48 = 0;
              v16 = v43 >= v44;
              v229 = v43 - v44;
              if (!v16)
              {
                v229 = 0;
              }

              v230 = (v45 + v44);
              v231 = v44 + 1;
              while (1)
              {
                if (!v229)
                {
                  v48 = 0;
                  *(this + 24) = 1;
                  goto LABEL_377;
                }

                v232 = *v230;
                *(this + 1) = v231;
                v48 |= (v232 & 0x7F) << v227;
                if ((v232 & 0x80) == 0)
                {
                  break;
                }

                v227 += 7;
                --v229;
                ++v230;
                ++v231;
                v78 = v228++ > 8;
                if (v78)
                {
LABEL_303:
                  v48 = 0;
                  goto LABEL_377;
                }
              }

              if (*(this + 24))
              {
                v48 = 0;
              }
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
                *(this + 1) = v50;
                v51 = *v49++;
                v48 |= (v51 & 0x7F) << v46;
                if ((v51 & 0x80) == 0)
                {
                  break;
                }

                v46 += 7;
                ++v50;
                v78 = v47++ > 8;
                if (v78)
                {
                  goto LABEL_303;
                }
              }
            }

LABEL_377:
            *(a1 + 128) = v48;
            goto LABEL_433;
          }
        }
      }

      else if (v22 > 103)
      {
        if (v22 <= 105)
        {
          if (v22 == 104)
          {
            *(a1 + 204) |= 0x2000u;
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

            *(a1 + 200) = v166;
          }

          else
          {
            *(a1 + 204) |= 4u;
            v53 = *(this + 1);
            v52 = *(this + 2);
            v54 = *this;
            if (v53 > 0xFFFFFFFFFFFFFFF5 || v53 + 10 > v52)
            {
              v233 = 0;
              v234 = 0;
              v57 = 0;
              v16 = v52 >= v53;
              v235 = v52 - v53;
              if (!v16)
              {
                v235 = 0;
              }

              v236 = (v54 + v53);
              v237 = v53 + 1;
              while (1)
              {
                if (!v235)
                {
                  v57 = 0;
                  *(this + 24) = 1;
                  goto LABEL_380;
                }

                v238 = *v236;
                *(this + 1) = v237;
                v57 |= (v238 & 0x7F) << v233;
                if ((v238 & 0x80) == 0)
                {
                  break;
                }

                v233 += 7;
                --v235;
                ++v236;
                ++v237;
                v78 = v234++ > 8;
                if (v78)
                {
LABEL_311:
                  v57 = 0;
                  goto LABEL_380;
                }
              }

              if (*(this + 24))
              {
                v57 = 0;
              }
            }

            else
            {
              v55 = 0;
              v56 = 0;
              v57 = 0;
              v58 = (v54 + v53);
              v59 = v53 + 1;
              while (1)
              {
                *(this + 1) = v59;
                v60 = *v58++;
                v57 |= (v60 & 0x7F) << v55;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v55 += 7;
                ++v59;
                v78 = v56++ > 8;
                if (v78)
                {
                  goto LABEL_311;
                }
              }
            }

LABEL_380:
            *(a1 + 144) = v57;
          }

          goto LABEL_433;
        }

        switch(v22)
        {
          case 'j':
            *(a1 + 204) |= 8u;
            v137 = *(this + 1);
            v136 = *(this + 2);
            v138 = *this;
            if (v137 > 0xFFFFFFFFFFFFFFF5 || v137 + 10 > v136)
            {
              v211 = 0;
              v212 = 0;
              v141 = 0;
              v16 = v136 >= v137;
              v213 = v136 - v137;
              if (!v16)
              {
                v213 = 0;
              }

              v214 = (v138 + v137);
              v215 = v137 + 1;
              while (1)
              {
                if (!v213)
                {
                  v141 = 0;
                  *(this + 24) = 1;
                  goto LABEL_374;
                }

                v216 = *v214;
                *(this + 1) = v215;
                v141 |= (v216 & 0x7F) << v211;
                if ((v216 & 0x80) == 0)
                {
                  break;
                }

                v211 += 7;
                --v213;
                ++v214;
                ++v215;
                v78 = v212++ > 8;
                if (v78)
                {
LABEL_283:
                  v141 = 0;
                  goto LABEL_374;
                }
              }

              if (*(this + 24))
              {
                v141 = 0;
              }
            }

            else
            {
              v139 = 0;
              v140 = 0;
              v141 = 0;
              v142 = (v138 + v137);
              v143 = v137 + 1;
              while (1)
              {
                *(this + 1) = v143;
                v144 = *v142++;
                v141 |= (v144 & 0x7F) << v139;
                if ((v144 & 0x80) == 0)
                {
                  break;
                }

                v139 += 7;
                ++v143;
                v78 = v140++ > 8;
                if (v78)
                {
                  goto LABEL_283;
                }
              }
            }

LABEL_374:
            *(a1 + 152) = v141;
            goto LABEL_433;
          case 'k':
            *(a1 + 204) |= 0x100u;
            v101 = *(this + 1);
            if (v101 > 0xFFFFFFFFFFFFFFFBLL || v101 + 4 > *(this + 2))
            {
              goto LABEL_409;
            }

            *(a1 + 180) = *(*this + v101);
            goto LABEL_411;
          case 'l':
            *(a1 + 204) |= 0x80u;
            v25 = *(this + 1);
            if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(this + 2))
            {
              goto LABEL_409;
            }

            *(a1 + 176) = *(*this + v25);
            goto LABEL_411;
        }
      }

      else
      {
        if (v22 > 100)
        {
          if (v22 == 101)
          {
            *(a1 + 204) |= 0x10u;
            v119 = *(this + 1);
            v118 = *(this + 2);
            v120 = *this;
            if (v119 > 0xFFFFFFFFFFFFFFF5 || v119 + 10 > v118)
            {
              v199 = 0;
              v200 = 0;
              v123 = 0;
              v16 = v118 >= v119;
              v201 = v118 - v119;
              if (!v16)
              {
                v201 = 0;
              }

              v202 = (v120 + v119);
              v203 = v119 + 1;
              while (1)
              {
                if (!v201)
                {
                  v123 = 0;
                  *(this + 24) = 1;
                  goto LABEL_368;
                }

                v204 = *v202;
                *(this + 1) = v203;
                v123 |= (v204 & 0x7F) << v199;
                if ((v204 & 0x80) == 0)
                {
                  break;
                }

                v199 += 7;
                --v201;
                ++v202;
                ++v203;
                v78 = v200++ > 8;
                if (v78)
                {
LABEL_267:
                  v123 = 0;
                  goto LABEL_368;
                }
              }

              if (*(this + 24))
              {
                v123 = 0;
              }
            }

            else
            {
              v121 = 0;
              v122 = 0;
              v123 = 0;
              v124 = (v120 + v119);
              v125 = v119 + 1;
              while (1)
              {
                *(this + 1) = v125;
                v126 = *v124++;
                v123 |= (v126 & 0x7F) << v121;
                if ((v126 & 0x80) == 0)
                {
                  break;
                }

                v121 += 7;
                ++v125;
                v78 = v122++ > 8;
                if (v78)
                {
                  goto LABEL_267;
                }
              }
            }

LABEL_368:
            *(a1 + 160) = v123;
            goto LABEL_433;
          }

          if (v22 == 102)
          {
            *(a1 + 204) |= 0x4000u;
            v88 = *(this + 1);
            if (v88 >= *(this + 2))
            {
              v91 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v89 = v88 + 1;
              v90 = *(*this + v88);
              *(this + 1) = v89;
              v91 = v90 != 0;
            }

            *(a1 + 201) = v91;
            goto LABEL_433;
          }

          *(a1 + 204) |= 0x400u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(this + 2))
          {
LABEL_409:
            *(this + 24) = 1;
            goto LABEL_433;
          }

          *(a1 + 188) = *(*this + v23);
          goto LABEL_411;
        }

        if (v22 == 1)
        {
          *(a1 + 204) |= 0x1000u;
          v161 = *(this + 1);
          if (v161 > 0xFFFFFFFFFFFFFFFBLL || v161 + 4 > *(this + 2))
          {
            goto LABEL_409;
          }

          *(a1 + 196) = *(*this + v161);
          goto LABEL_411;
        }

        if (v22 == 2)
        {
          *(a1 + 204) |= 0x800u;
          v42 = *(this + 1);
          if (v42 > 0xFFFFFFFFFFFFFFFBLL || v42 + 4 > *(this + 2))
          {
            goto LABEL_409;
          }

          *(a1 + 192) = *(*this + v42);
LABEL_411:
          *(this + 1) += 4;
          goto LABEL_433;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_439:
        v321 = 0;
        return v321 & 1;
      }

LABEL_433:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v321 = v4 ^ 1;
  return v321 & 1;
}

uint64_t sub_245DEEFE4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 204);
  if ((v4 & 0x1000) != 0)
  {
    result = PB::Writer::write(this, *(result + 196));
    v4 = *(v3 + 204);
    if ((v4 & 0x800) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((*(result + 204) & 0x800) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 192));
  v4 = *(v3 + 204);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  v20 = *(v3 + 160);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 204);
  if ((v4 & 0x4000) == 0)
  {
LABEL_5:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  v21 = *(v3 + 201);
  result = PB::Writer::write(this);
  v4 = *(v3 + 204);
  if ((v4 & 0x400) == 0)
  {
LABEL_6:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 188));
  v4 = *(v3 + 204);
  if ((v4 & 0x2000) == 0)
  {
LABEL_7:
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  v22 = *(v3 + 200);
  result = PB::Writer::write(this);
  v4 = *(v3 + 204);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  v23 = *(v3 + 144);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 204);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  v24 = *(v3 + 152);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 204);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 180));
  v4 = *(v3 + 204);
  if ((v4 & 0x80) == 0)
  {
LABEL_11:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 176));
  v4 = *(v3 + 204);
  if ((v4 & 0x40) == 0)
  {
LABEL_12:
    if ((v4 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 172));
  v4 = *(v3 + 204);
  if ((v4 & 1) == 0)
  {
LABEL_13:
    if ((v4 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  v25 = *(v3 + 128);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 204);
  if ((v4 & 2) == 0)
  {
LABEL_14:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_15;
    }

LABEL_46:
    v27 = *(v3 + 184);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 204) & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_45:
  v26 = *(v3 + 136);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 204);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_46;
  }

LABEL_15:
  if ((v4 & 0x20) != 0)
  {
LABEL_16:
    result = PB::Writer::write(this, *(v3 + 168));
  }

LABEL_17:
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::writeVarInt(this);
  }

  v8 = *(v3 + 104);
  v9 = *(v3 + 112);
  while (v8 != v9)
  {
    v10 = *v8++;
    result = PB::Writer::writeVarInt(this);
  }

  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  while (v11 != v12)
  {
    v13 = *v11++;
    result = PB::Writer::write(this, v13);
  }

  v14 = *(v3 + 56);
  v15 = *(v3 + 64);
  while (v14 != v15)
  {
    v16 = *v14++;
    result = PB::Writer::write(this, v16);
  }

  v18 = *(v3 + 32);
  v17 = *(v3 + 40);
  while (v18 != v17)
  {
    v19 = *v18++;
    result = PB::Writer::write(this, v19);
  }

  return result;
}

uint64_t sub_245DEF254(uint64_t result)
{
  *result = &unk_2858CE220;
  *(result + 32) = 0;
  return result;
}

void sub_245DEF27C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DEF2B4(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CE220;
  *(result + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 32) = 1;
    *(result + 8) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 0x10) != 0)
  {
LABEL_5:
    v5 = *(a2 + 28);
    v3 |= 0x10u;
    *(result + 32) = v3;
    *(result + 28) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 20);
    v3 |= 4u;
    *(result + 32) = v3;
    *(result + 20) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        return result;
      }

LABEL_12:
      v8 = *(a2 + 24);
      *(result + 32) = v3 | 8;
      *(result + 24) = v8;
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 16);
  v3 |= 2u;
  *(result + 32) = v3;
  *(result + 16) = v7;
  if ((*(a2 + 32) & 8) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_245DEF36C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "currentCadence", *(a1 + 16));
    v5 = *(a1 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a1 + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 20);
  PB::TextFormatter::format(this, "deltaSteps");
  v5 = *(a1 + 32);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v8 = *(a1 + 24);
  PB::TextFormatter::format(this, "pedometerArmConstrainedState");
  v5 = *(a1 + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v9 = *(a1 + 28);
  PB::TextFormatter::format(this, "stepCount");
  if (*(a1 + 32))
  {
LABEL_6:
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_7:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DEF450(uint64_t a1, PB::Reader *this)
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
          *(a1 + 32) |= 1u;
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
          *(a1 + 8) = v51;
          goto LABEL_114;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 0x10u;
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
                LODWORD(v35) = 0;
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
                LODWORD(v35) = 0;
                goto LABEL_112;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v35) = 0;
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
                LODWORD(v35) = 0;
                break;
              }
            }
          }

LABEL_113:
          *(a1 + 28) = v35;
          goto LABEL_114;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 32) |= 4u;
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
                  LODWORD(v43) = 0;
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
                  LODWORD(v43) = 0;
                  goto LABEL_100;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
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
                  LODWORD(v43) = 0;
                  break;
                }
              }
            }

LABEL_101:
            *(a1 + 20) = v43;
            goto LABEL_114;
          case 4:
            *(a1 + 32) |= 2u;
            v2 = *(this + 1);
            if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
            {
              *(a1 + 16) = *(*this + v2);
              v2 = *(this + 1) + 4;
              *(this + 1) = v2;
            }

            else
            {
              *(this + 24) = 1;
            }

            goto LABEL_114;
          case 5:
            *(a1 + 32) |= 8u;
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
                  LODWORD(v27) = 0;
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
                  LODWORD(v27) = 0;
                  goto LABEL_108;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
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
                  LODWORD(v27) = 0;
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

uint64_t sub_245DEFA48(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 32);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = PB::Writer::write(this, *(v3 + 16));
    if ((*(v3 + 32) & 8) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  v7 = *(v3 + 20);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_11:
  v8 = *(v3 + 24);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245DEFB0C(uint64_t result)
{
  *result = &unk_2858CE258;
  *(result + 60) = 0;
  return result;
}

void sub_245DEFB34(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DEFB6C(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CE258;
  *(result + 60) = 0;
  v2 = *(a2 + 60);
  if ((v2 & 8) != 0)
  {
    v4 = *(a2 + 32);
    v3 = 8;
    *(result + 60) = 8;
    *(result + 32) = v4;
    v2 = *(a2 + 60);
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 60) & 0x100) != 0)
  {
LABEL_5:
    v5 = *(a2 + 56);
    v3 |= 0x100u;
    *(result + 60) = v3;
    *(result + 56) = v5;
    v2 = *(a2 + 60);
  }

LABEL_6:
  if ((v2 & 0x80) != 0)
  {
    v6 = *(a2 + 52);
    v3 |= 0x80u;
    *(result + 60) = v3;
    *(result + 52) = v6;
    v2 = *(a2 + 60);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 44);
  v3 |= 0x20u;
  *(result + 60) = v3;
  *(result + 44) = v7;
  v2 = *(a2 + 60);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a2 + 40);
  v3 |= 0x10u;
  *(result + 60) = v3;
  *(result + 40) = v8;
  v2 = *(a2 + 60);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(a2 + 48);
  v3 |= 0x40u;
  *(result + 60) = v3;
  *(result + 48) = v9;
  v2 = *(a2 + 60);
  if ((v2 & 4) == 0)
  {
LABEL_11:
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 24);
  v3 |= 4u;
  *(result + 60) = v3;
  *(result + 24) = v10;
  v2 = *(a2 + 60);
  if ((v2 & 1) == 0)
  {
LABEL_12:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_20:
    v12 = *(a2 + 16);
    *(result + 60) = v3 | 2;
    *(result + 16) = v12;
    return result;
  }

LABEL_19:
  v11 = *(a2 + 8);
  v3 |= 1u;
  *(result + 60) = v3;
  *(result + 8) = v11;
  if ((*(a2 + 60) & 2) != 0)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_245DEFC94(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 60);
  if ((v5 & 0x10) != 0)
  {
    PB::TextFormatter::format(this, "currentCadence", *(a1 + 40));
    v5 = *(a1 + 60);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "deltaSteps", *(a1 + 44));
  v5 = *(a1 + 60);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = *(a1 + 8);
  PB::TextFormatter::format(this, "epochFirstTimestamp");
  v5 = *(a1 + 60);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "epochLastTimestamp");
  v5 = *(a1 + 60);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a1 + 56);
  PB::TextFormatter::format(this, "hasSteps");
  v5 = *(a1 + 60);
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
  v10 = *(a1 + 48);
  PB::TextFormatter::format(this, "pedometerArmConstrainedState");
  v5 = *(a1 + 60);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "stepCount", *(a1 + 52));
  v5 = *(a1 + 60);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  v11 = *(a1 + 24);
  PB::TextFormatter::format(this, "stepCountEventTimestamp");
  if ((*(a1 + 60) & 8) != 0)
  {
LABEL_10:
    v6 = *(a1 + 32);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_11:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DEFDF8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_155;
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
      if ((v10 >> 3) <= 104)
      {
        if (v22 > 102)
        {
          if (v22 == 103)
          {
            *(a1 + 60) |= 0x80u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_72:
              *(this + 24) = 1;
              goto LABEL_151;
            }

            *(a1 + 52) = *(*this + v2);
            goto LABEL_125;
          }

          if (v22 == 104)
          {
            *(a1 + 60) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_72;
            }

            *(a1 + 44) = *(*this + v2);
            goto LABEL_125;
          }
        }

        else
        {
          if (v22 == 101)
          {
            *(a1 + 60) |= 8u;
            v41 = *(this + 1);
            v2 = *(this + 2);
            v42 = *this;
            if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
            {
              v72 = 0;
              v73 = 0;
              v45 = 0;
              if (v2 <= v41)
              {
                v2 = *(this + 1);
              }

              v74 = v2 - v41;
              v75 = (v42 + v41);
              v76 = v41 + 1;
              while (1)
              {
                if (!v74)
                {
                  v45 = 0;
                  *(this + 24) = 1;
                  goto LABEL_138;
                }

                v77 = v76;
                v78 = *v75;
                *(this + 1) = v77;
                v45 |= (v78 & 0x7F) << v72;
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
                  v45 = 0;
                  goto LABEL_137;
                }
              }

              if (*(this + 24))
              {
                v45 = 0;
              }

LABEL_137:
              v2 = v77;
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

LABEL_138:
            *(a1 + 32) = v45;
            goto LABEL_151;
          }

          if (v22 == 102)
          {
            *(a1 + 60) |= 0x100u;
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
            goto LABEL_151;
          }
        }
      }

      else if (v22 <= 106)
      {
        if (v22 == 105)
        {
          *(a1 + 60) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_72;
          }

          *(a1 + 40) = *(*this + v2);
LABEL_125:
          v2 = *(this + 1) + 4;
          *(this + 1) = v2;
          goto LABEL_151;
        }

        if (v22 == 106)
        {
          *(a1 + 60) |= 0x40u;
          v33 = *(this + 1);
          v2 = *(this + 2);
          v34 = *this;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
          {
            v65 = 0;
            v66 = 0;
            v37 = 0;
            if (v2 <= v33)
            {
              v2 = *(this + 1);
            }

            v67 = v2 - v33;
            v68 = (v34 + v33);
            v69 = v33 + 1;
            while (1)
            {
              if (!v67)
              {
                LODWORD(v37) = 0;
                *(this + 24) = 1;
                goto LABEL_134;
              }

              v70 = v69;
              v71 = *v68;
              *(this + 1) = v70;
              v37 |= (v71 & 0x7F) << v65;
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
                LODWORD(v37) = 0;
                goto LABEL_133;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v37) = 0;
            }

LABEL_133:
            v2 = v70;
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

LABEL_134:
          *(a1 + 48) = v37;
          goto LABEL_151;
        }
      }

      else
      {
        switch(v22)
        {
          case 0x6B:
            *(a1 + 60) |= 4u;
            v49 = *(this + 1);
            v2 = *(this + 2);
            v50 = *this;
            if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
            {
              v79 = 0;
              v80 = 0;
              v53 = 0;
              if (v2 <= v49)
              {
                v2 = *(this + 1);
              }

              v81 = v2 - v49;
              v82 = (v50 + v49);
              v83 = v49 + 1;
              while (1)
              {
                if (!v81)
                {
                  v53 = 0;
                  *(this + 24) = 1;
                  goto LABEL_142;
                }

                v84 = v83;
                v85 = *v82;
                *(this + 1) = v84;
                v53 |= (v85 & 0x7F) << v79;
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
                  v53 = 0;
                  goto LABEL_141;
                }
              }

              if (*(this + 24))
              {
                v53 = 0;
              }

LABEL_141:
              v2 = v84;
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

LABEL_142:
            *(a1 + 24) = v53;
            goto LABEL_151;
          case 0xC9:
            *(a1 + 60) |= 1u;
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
                  goto LABEL_150;
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
                  goto LABEL_149;
                }
              }

              if (*(this + 24))
              {
                v61 = 0;
              }

LABEL_149:
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

LABEL_150:
            *(a1 + 8) = v61;
            goto LABEL_151;
          case 0xCA:
            *(a1 + 60) |= 2u;
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
                  goto LABEL_146;
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
                  goto LABEL_145;
                }
              }

              if (*(this + 24))
              {
                v27 = 0;
              }

LABEL_145:
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

LABEL_146:
            *(a1 + 16) = v27;
            goto LABEL_151;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v100 = 0;
        return v100 & 1;
      }

      v2 = *(this + 1);
LABEL_151:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_155:
  v100 = v4 ^ 1;
  return v100 & 1;
}

uint64_t sub_245DF05D8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 60);
  if ((v4 & 8) != 0)
  {
    v5 = *(result + 32);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 60);
    if ((v4 & 0x100) == 0)
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(result + 60) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 56);
  result = PB::Writer::write(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 60);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 60);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 60);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v9 = *(v3 + 8);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 60) & 2) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  v8 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if (v4)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_19:
  v10 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

double sub_245DF070C(uint64_t a1)
{
  *a1 = &unk_2858CE290;
  *(a1 + 212) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

void sub_245DF0748(PB::Base *this)
{
  *this = &unk_2858CE290;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }

  PB::Base::~Base(this);
}

void sub_245DF07CC(PB::Base *a1)
{
  sub_245DF0748(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DF0804(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 56) = 0u;
  *a1 = &unk_2858CE290;
  *(a1 + 212) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  v5 = *(a2 + 212);
  if ((v5 & 4) != 0)
  {
    v7 = *(a2 + 96);
    v6 = 4;
    *(a1 + 212) = 4;
    *(a1 + 96) = v7;
    v5 = *(a2 + 212);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  v8 = *(a2 + 211);
  v6 |= 0x80000000;
  *(a1 + 212) = v6;
  *(a1 + 211) = v8;
  v5 = *(a2 + 212);
LABEL_6:
  if (v5)
  {
    v9 = *(a2 + 80);
    *(a1 + 212) = v6 | 1;
    *(a1 + 80) = v9;
  }

  if (a1 != a2)
  {
    sub_245DF86C8(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    sub_245DF843C((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  }

  v10 = *(a2 + 212);
  if ((v10 & 0x10000000) != 0)
  {
    v13 = *(a2 + 208);
    *(a1 + 212) |= 0x10000000u;
    *(a1 + 208) = v13;
    v10 = *(a2 + 212);
    if ((v10 & 0x20000000) == 0)
    {
LABEL_12:
      if ((v10 & 0x400000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_43;
    }
  }

  else if ((v10 & 0x20000000) == 0)
  {
    goto LABEL_12;
  }

  v14 = *(a2 + 209);
  *(a1 + 212) |= 0x20000000u;
  *(a1 + 209) = v14;
  v10 = *(a2 + 212);
  if ((v10 & 0x400000) == 0)
  {
LABEL_13:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  v15 = *(a2 + 184);
  *(a1 + 212) |= 0x400000u;
  *(a1 + 184) = v15;
  v10 = *(a2 + 212);
  if ((v10 & 0x10) == 0)
  {
LABEL_14:
    if ((v10 & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  v16 = *(a2 + 112);
  *(a1 + 212) |= 0x10u;
  *(a1 + 112) = v16;
  v10 = *(a2 + 212);
  if ((v10 & 0x80000) == 0)
  {
LABEL_15:
    if ((v10 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  v17 = *(a2 + 172);
  *(a1 + 212) |= 0x80000u;
  *(a1 + 172) = v17;
  v10 = *(a2 + 212);
  if ((v10 & 0x40000) == 0)
  {
LABEL_16:
    if ((v10 & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  v18 = *(a2 + 168);
  *(a1 + 212) |= 0x40000u;
  *(a1 + 168) = v18;
  v10 = *(a2 + 212);
  if ((v10 & 0x20000) == 0)
  {
LABEL_17:
    if ((v10 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  v19 = *(a2 + 164);
  *(a1 + 212) |= 0x20000u;
  *(a1 + 164) = v19;
  v10 = *(a2 + 212);
  if ((v10 & 0x10000) == 0)
  {
LABEL_18:
    if ((v10 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  v20 = *(a2 + 160);
  *(a1 + 212) |= 0x10000u;
  *(a1 + 160) = v20;
  v10 = *(a2 + 212);
  if ((v10 & 0x8000) == 0)
  {
LABEL_19:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  v21 = *(a2 + 156);
  *(a1 + 212) |= 0x8000u;
  *(a1 + 156) = v21;
  v10 = *(a2 + 212);
  if ((v10 & 0x4000) == 0)
  {
LABEL_20:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  v22 = *(a2 + 152);
  *(a1 + 212) |= 0x4000u;
  *(a1 + 152) = v22;
  v10 = *(a2 + 212);
  if ((v10 & 0x2000) == 0)
  {
LABEL_21:
    if ((v10 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  v23 = *(a2 + 148);
  *(a1 + 212) |= 0x2000u;
  *(a1 + 148) = v23;
  v10 = *(a2 + 212);
  if ((v10 & 0x100000) == 0)
  {
LABEL_22:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  v24 = *(a2 + 176);
  *(a1 + 212) |= 0x100000u;
  *(a1 + 176) = v24;
  v10 = *(a2 + 212);
  if ((v10 & 0x100) == 0)
  {
LABEL_23:
    if ((v10 & 0x1000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  v25 = *(a2 + 128);
  *(a1 + 212) |= 0x100u;
  *(a1 + 128) = v25;
  v10 = *(a2 + 212);
  if ((v10 & 0x1000000) == 0)
  {
LABEL_24:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  v26 = *(a2 + 192);
  *(a1 + 212) |= 0x1000000u;
  *(a1 + 192) = v26;
  v10 = *(a2 + 212);
  if ((v10 & 0x20) == 0)
  {
LABEL_25:
    if ((v10 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  v27 = *(a2 + 116);
  *(a1 + 212) |= 0x20u;
  *(a1 + 116) = v27;
  v10 = *(a2 + 212);
  if ((v10 & 8) == 0)
  {
LABEL_26:
    if ((v10 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  v28 = *(a2 + 104);
  *(a1 + 212) |= 8u;
  *(a1 + 104) = v28;
  v10 = *(a2 + 212);
  if ((v10 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v10 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  v29 = *(a2 + 196);
  *(a1 + 212) |= 0x2000000u;
  *(a1 + 196) = v29;
  v10 = *(a2 + 212);
  if ((v10 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v10 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  v30 = *(a2 + 200);
  *(a1 + 212) |= 0x4000000u;
  *(a1 + 200) = v30;
  v10 = *(a2 + 212);
  if ((v10 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_60;
  }

LABEL_59:
  v31 = *(a2 + 204);
  *(a1 + 212) |= 0x8000000u;
  *(a1 + 204) = v31;
  v10 = *(a2 + 212);
  if ((v10 & 0x800) == 0)
  {
LABEL_30:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_61;
  }

LABEL_60:
  v32 = *(a2 + 140);
  *(a1 + 212) |= 0x800u;
  *(a1 + 140) = v32;
  v10 = *(a2 + 212);
  if ((v10 & 0x80) == 0)
  {
LABEL_31:
    if ((v10 & 2) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_62;
  }

LABEL_61:
  v33 = *(a2 + 124);
  *(a1 + 212) |= 0x80u;
  *(a1 + 124) = v33;
  v10 = *(a2 + 212);
  if ((v10 & 2) == 0)
  {
LABEL_32:
    if ((v10 & 0x40000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_63;
  }

LABEL_62:
  v34 = *(a2 + 88);
  *(a1 + 212) |= 2u;
  *(a1 + 88) = v34;
  v10 = *(a2 + 212);
  if ((v10 & 0x40000000) == 0)
  {
LABEL_33:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  v35 = *(a2 + 210);
  *(a1 + 212) |= 0x40000000u;
  *(a1 + 210) = v35;
  v10 = *(a2 + 212);
  if ((v10 & 0x1000) == 0)
  {
LABEL_34:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_65;
  }

LABEL_64:
  v36 = *(a2 + 144);
  *(a1 + 212) |= 0x1000u;
  *(a1 + 144) = v36;
  v10 = *(a2 + 212);
  if ((v10 & 0x200) == 0)
  {
LABEL_35:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_66;
  }

LABEL_65:
  v37 = *(a2 + 132);
  *(a1 + 212) |= 0x200u;
  *(a1 + 132) = v37;
  v10 = *(a2 + 212);
  if ((v10 & 0x40) == 0)
  {
LABEL_36:
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_67;
  }

LABEL_66:
  v38 = *(a2 + 120);
  *(a1 + 212) |= 0x40u;
  *(a1 + 120) = v38;
  v10 = *(a2 + 212);
  if ((v10 & 0x200000) == 0)
  {
LABEL_37:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_38;
    }

LABEL_68:
    v40 = *(a2 + 136);
    *(a1 + 212) |= 0x400u;
    *(a1 + 136) = v40;
    if ((*(a2 + 212) & 0x800000) == 0)
    {
      return a1;
    }

    goto LABEL_39;
  }

LABEL_67:
  v39 = *(a2 + 180);
  *(a1 + 212) |= 0x200000u;
  *(a1 + 180) = v39;
  v10 = *(a2 + 212);
  if ((v10 & 0x400) != 0)
  {
    goto LABEL_68;
  }

LABEL_38:
  if ((v10 & 0x800000) != 0)
  {
LABEL_39:
    v11 = *(a2 + 188);
    *(a1 + 212) |= 0x800000u;
    *(a1 + 188) = v11;
  }

  return a1;
}

uint64_t sub_245DF0CAC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 212);
  if (v5)
  {
    PB::TextFormatter::format(this, "avgHorizontalDecelMax", *(a1 + 80));
    v5 = *(a1 + 212);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "avgHorizontalDecelThresholdCoupled", *(a1 + 112));
  v5 = *(a1 + 212);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_47:
  v19 = *(a1 + 116);
  PB::TextFormatter::format(this, "btHint");
  v5 = *(a1 + 212);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_48:
  v20 = *(a1 + 88);
  PB::TextFormatter::format(this, "companionAopTs");
  v5 = *(a1 + 212);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "currentWindowMean", *(a1 + 120));
  v5 = *(a1 + 212);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_50:
  v21 = *(a1 + 124);
  PB::TextFormatter::format(this, "enableMode");
  if ((*(a1 + 212) & 0x100) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(this, "impactThresholdUncoupled", *(a1 + 128));
  }

LABEL_9:
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "inertialAccel", v8);
  }

  v9 = *(a1 + 212);
  if ((v9 & 0x10000000) != 0)
  {
    v22 = *(a1 + 208);
    PB::TextFormatter::format(this, "isMounted");
    v9 = *(a1 + 212);
    if ((v9 & 0x20000000) == 0)
    {
LABEL_13:
      if ((v9 & 0x200) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_54;
    }
  }

  else if ((v9 & 0x20000000) == 0)
  {
    goto LABEL_13;
  }

  v23 = *(a1 + 209);
  PB::TextFormatter::format(this, "isSimulated");
  v9 = *(a1 + 212);
  if ((v9 & 0x200) == 0)
  {
LABEL_14:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "lastCompleted15sWindowMean", *(a1 + 132));
  v9 = *(a1 + 212);
  if ((v9 & 0x400) == 0)
  {
LABEL_15:
    if ((v9 & 0x40000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_55:
  v24 = *(a1 + 136);
  PB::TextFormatter::format(this, "locallyArmedBitmap");
  v9 = *(a1 + 212);
  if ((v9 & 0x40000000) == 0)
  {
LABEL_16:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_56:
  v25 = *(a1 + 210);
  PB::TextFormatter::format(this, "martyIsBicycle");
  v9 = *(a1 + 212);
  if ((v9 & 0x800) == 0)
  {
LABEL_17:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_57:
  v26 = *(a1 + 140);
  PB::TextFormatter::format(this, "martyTriggerPathBitmap");
  v9 = *(a1 + 212);
  if ((v9 & 0x1000) == 0)
  {
LABEL_18:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "maxMeanTenMinPreTrigger", *(a1 + 144));
  v9 = *(a1 + 212);
  if ((v9 & 0x2000) == 0)
  {
LABEL_19:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_59:
  v27 = *(a1 + 148);
  PB::TextFormatter::format(this, "nAccelGap");
  v9 = *(a1 + 212);
  if ((v9 & 0x4000) == 0)
  {
LABEL_20:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  v28 = *(a1 + 152);
  PB::TextFormatter::format(this, "nFullAccel");
  v9 = *(a1 + 212);
  if ((v9 & 0x8000) == 0)
  {
LABEL_21:
    if ((v9 & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  v29 = *(a1 + 156);
  PB::TextFormatter::format(this, "nFullDM");
  v9 = *(a1 + 212);
  if ((v9 & 0x10000) == 0)
  {
LABEL_22:
    if ((v9 & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  v30 = *(a1 + 160);
  PB::TextFormatter::format(this, "nOldAccel");
  v9 = *(a1 + 212);
  if ((v9 & 0x20000) == 0)
  {
LABEL_23:
    if ((v9 & 0x40000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  v31 = *(a1 + 164);
  PB::TextFormatter::format(this, "nOldDM");
  v9 = *(a1 + 212);
  if ((v9 & 0x40000) == 0)
  {
LABEL_24:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  v32 = *(a1 + 168);
  PB::TextFormatter::format(this, "nOldDt");
  v9 = *(a1 + 212);
  if ((v9 & 0x80000) == 0)
  {
LABEL_25:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_66;
  }

LABEL_65:
  v33 = *(a1 + 172);
  PB::TextFormatter::format(this, "nPrecondition");
  v9 = *(a1 + 212);
  if ((v9 & 0x100000) == 0)
  {
LABEL_26:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_67;
  }

LABEL_66:
  v34 = *(a1 + 176);
  PB::TextFormatter::format(this, "nUseNearest");
  v9 = *(a1 + 212);
  if ((v9 & 0x200000) == 0)
  {
LABEL_27:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

LABEL_67:
  v35 = *(a1 + 180);
  PB::TextFormatter::format(this, "numMaxEnvelopes");
  v9 = *(a1 + 212);
  if ((v9 & 0x400000) == 0)
  {
LABEL_28:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_68:
  v36 = *(a1 + 184);
  PB::TextFormatter::format(this, "numResets");
  if ((*(a1 + 212) & 0x800000) != 0)
  {
LABEL_29:
    v10 = *(a1 + 188);
    PB::TextFormatter::format(this, "overrideArmedBitmap");
  }

LABEL_30:
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "prevQ", v13);
  }

  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(this, "rawClampedAccel", v16);
  }

  v17 = *(a1 + 212);
  if (v17 < 0)
  {
    v37 = *(a1 + 211);
    PB::TextFormatter::format(this, "shouldTrigger");
    v17 = *(a1 + 212);
    if ((v17 & 4) == 0)
    {
LABEL_36:
      if ((v17 & 0x1000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_72;
    }
  }

  else if ((v17 & 4) == 0)
  {
    goto LABEL_36;
  }

  v38 = *(a1 + 96);
  PB::TextFormatter::format(this, "timestamp");
  v17 = *(a1 + 212);
  if ((v17 & 0x1000000) == 0)
  {
LABEL_37:
    if ((v17 & 0x2000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_73;
  }

LABEL_72:
  v39 = *(a1 + 192);
  PB::TextFormatter::format(this, "triggerPathBitmap");
  v17 = *(a1 + 212);
  if ((v17 & 0x2000000) == 0)
  {
LABEL_38:
    if ((v17 & 0x4000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(this, "vehicleProbabilityLongTermMean0", *(a1 + 196));
  v17 = *(a1 + 212);
  if ((v17 & 0x4000000) == 0)
  {
LABEL_39:
    if ((v17 & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(this, "vehicleProbabilityLongTermMean1", *(a1 + 200));
  v17 = *(a1 + 212);
  if ((v17 & 0x8000000) == 0)
  {
LABEL_40:
    if ((v17 & 8) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_75:
  PB::TextFormatter::format(this, "vehicleProbabilityLongTermMean2", *(a1 + 204));
  if ((*(a1 + 212) & 8) != 0)
  {
LABEL_41:
    v18 = *(a1 + 104);
    PB::TextFormatter::format(this, "vehicleProbabilityTs");
  }

LABEL_42:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DF1184(uint64_t a1, PB::Reader *this)
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
        goto LABEL_537;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 212) |= 4u;
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
                goto LABEL_487;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
            }

            while (!v14);
LABEL_331:
            v28 = 0;
            goto LABEL_487;
          }

          v324 = 0;
          v325 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v326 = v23 - v24;
          if (!v17)
          {
            v326 = 0;
          }

          v327 = (v25 + v24);
          v328 = v24 + 1;
          while (2)
          {
            if (v326)
            {
              v329 = *v327;
              *(this + 1) = v328;
              v28 |= (v329 & 0x7F) << v324;
              if (v329 < 0)
              {
                v324 += 7;
                --v326;
                ++v327;
                ++v328;
                v14 = v325++ > 8;
                if (v14)
                {
                  goto LABEL_331;
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

LABEL_487:
          *(a1 + 96) = v28;
          goto LABEL_533;
        case 2u:
          *(a1 + 212) |= 0x80000000;
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

          *(a1 + 211) = v155;
          goto LABEL_533;
        case 3u:
          *(a1 + 212) |= 1u;
          v122 = *(this + 1);
          if (v122 > 0xFFFFFFFFFFFFFFF7 || v122 + 8 > *(this + 2))
          {
            goto LABEL_529;
          }

          *(a1 + 80) = *(*this + v122);
          goto LABEL_523;
        case 4u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_539;
            }

            v132 = *(this + 1);
            v133 = *(this + 2);
            while (v132 < v133 && (*(this + 24) & 1) == 0)
            {
              v135 = *(a1 + 16);
              v134 = *(a1 + 24);
              if (v135 >= v134)
              {
                v137 = *(a1 + 8);
                v138 = v135 - v137;
                v139 = (v135 - v137) >> 3;
                v140 = v139 + 1;
                if ((v139 + 1) >> 61)
                {
                  goto LABEL_541;
                }

                v141 = v134 - v137;
                if (v141 >> 2 > v140)
                {
                  v140 = v141 >> 2;
                }

                v17 = v141 >= 0x7FFFFFFFFFFFFFF8;
                v142 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v17)
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
                v136 = v144 + 1;
                memcpy(v145, v137, v138);
                v146 = *(a1 + 8);
                *(a1 + 8) = v145;
                *(a1 + 16) = v136;
                *(a1 + 24) = 0;
                if (v146)
                {
                  operator delete(v146);
                }
              }

              else
              {
                *v135 = 0;
                v136 = v135 + 8;
              }

              *(a1 + 16) = v136;
              v147 = *(this + 1);
              if (v147 > 0xFFFFFFFFFFFFFFF7 || v147 + 8 > *(this + 2))
              {
                goto LABEL_416;
              }

              *(v136 - 1) = *(*this + v147);
              v133 = *(this + 2);
              v132 = *(this + 1) + 8;
              *(this + 1) = v132;
            }

            goto LABEL_417;
          }

          v331 = *(a1 + 16);
          v330 = *(a1 + 24);
          if (v331 >= v330)
          {
            v395 = *(a1 + 8);
            v396 = v331 - v395;
            v397 = (v331 - v395) >> 3;
            v398 = v397 + 1;
            if ((v397 + 1) >> 61)
            {
LABEL_541:
              sub_245DF85A4();
            }

            v399 = v330 - v395;
            if (v399 >> 2 > v398)
            {
              v398 = v399 >> 2;
            }

            v17 = v399 >= 0x7FFFFFFFFFFFFFF8;
            v400 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v17)
            {
              v400 = v398;
            }

            if (v400)
            {
              sub_245DF8830(a1 + 8, v400);
            }

            v411 = (v331 - v395) >> 3;
            v412 = (8 * v397);
            v413 = (8 * v397 - 8 * v411);
            *v412 = 0;
            v332 = v412 + 1;
            memcpy(v413, v395, v396);
            v414 = *(a1 + 8);
            *(a1 + 8) = v413;
            *(a1 + 16) = v332;
            *(a1 + 24) = 0;
            if (v414)
            {
              operator delete(v414);
            }
          }

          else
          {
            *v331 = 0;
            v332 = v331 + 8;
          }

          *(a1 + 16) = v332;
          v415 = *(this + 1);
          if (v415 <= 0xFFFFFFFFFFFFFFF7 && v415 + 8 <= *(this + 2))
          {
            *(v332 - 1) = *(*this + v415);
LABEL_523:
            v416 = *(this + 1) + 8;
            goto LABEL_532;
          }

          goto LABEL_529;
        case 5u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_539;
            }

            v86 = *(this + 1);
            v87 = *(this + 2);
            while (v86 < v87 && (*(this + 24) & 1) == 0)
            {
              v89 = *(a1 + 64);
              v88 = *(a1 + 72);
              if (v89 >= v88)
              {
                v91 = *(a1 + 56);
                v92 = v89 - v91;
                v93 = (v89 - v91) >> 2;
                v94 = v93 + 1;
                if ((v93 + 1) >> 62)
                {
                  goto LABEL_540;
                }

                v95 = v88 - v91;
                if (v95 >> 1 > v94)
                {
                  v94 = v95 >> 1;
                }

                v17 = v95 >= 0x7FFFFFFFFFFFFFFCLL;
                v96 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v17)
                {
                  v96 = v94;
                }

                if (v96)
                {
                  sub_245DF85BC(a1 + 56, v96);
                }

                v97 = (v89 - v91) >> 2;
                v98 = (4 * v93);
                v99 = (4 * v93 - 4 * v97);
                *v98 = 0;
                v90 = v98 + 1;
                memcpy(v99, v91, v92);
                v100 = *(a1 + 56);
                *(a1 + 56) = v99;
                *(a1 + 64) = v90;
                *(a1 + 72) = 0;
                if (v100)
                {
                  operator delete(v100);
                }
              }

              else
              {
                *v89 = 0;
                v90 = v89 + 4;
              }

              *(a1 + 64) = v90;
              v101 = *(this + 1);
              if (v101 > 0xFFFFFFFFFFFFFFFBLL || v101 + 4 > *(this + 2))
              {
                goto LABEL_416;
              }

              *(v90 - 1) = *(*this + v101);
              v87 = *(this + 2);
              v86 = *(this + 1) + 4;
              *(this + 1) = v86;
            }

            goto LABEL_417;
          }

          v310 = *(a1 + 64);
          v309 = *(a1 + 72);
          if (v310 >= v309)
          {
            v389 = *(a1 + 56);
            v390 = v310 - v389;
            v391 = (v310 - v389) >> 2;
            v392 = v391 + 1;
            if ((v391 + 1) >> 62)
            {
              goto LABEL_540;
            }

            v393 = v309 - v389;
            if (v393 >> 1 > v392)
            {
              v392 = v393 >> 1;
            }

            v17 = v393 >= 0x7FFFFFFFFFFFFFFCLL;
            v394 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v17)
            {
              v394 = v392;
            }

            if (v394)
            {
              sub_245DF85BC(a1 + 56, v394);
            }

            v407 = (v310 - v389) >> 2;
            v408 = (4 * v391);
            v409 = (4 * v391 - 4 * v407);
            *v408 = 0;
            v311 = v408 + 1;
            memcpy(v409, v389, v390);
            v410 = *(a1 + 56);
            *(a1 + 56) = v409;
            *(a1 + 64) = v311;
            *(a1 + 72) = 0;
            if (v410)
            {
              operator delete(v410);
            }
          }

          else
          {
            *v310 = 0;
            v311 = v310 + 4;
          }

          *(a1 + 64) = v311;
          goto LABEL_527;
        case 6u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_539:
              v422 = 0;
              return v422 & 1;
            }

            v175 = *(this + 1);
            v176 = *(this + 2);
            while (v175 < v176 && (*(this + 24) & 1) == 0)
            {
              v178 = *(a1 + 40);
              v177 = *(a1 + 48);
              if (v178 >= v177)
              {
                v180 = *(a1 + 32);
                v181 = v178 - v180;
                v182 = (v178 - v180) >> 2;
                v183 = v182 + 1;
                if ((v182 + 1) >> 62)
                {
                  goto LABEL_540;
                }

                v184 = v177 - v180;
                if (v184 >> 1 > v183)
                {
                  v183 = v184 >> 1;
                }

                v17 = v184 >= 0x7FFFFFFFFFFFFFFCLL;
                v185 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v17)
                {
                  v185 = v183;
                }

                if (v185)
                {
                  sub_245DF85BC(a1 + 32, v185);
                }

                v186 = (v178 - v180) >> 2;
                v187 = (4 * v182);
                v188 = (4 * v182 - 4 * v186);
                *v187 = 0;
                v179 = v187 + 1;
                memcpy(v188, v180, v181);
                v189 = *(a1 + 32);
                *(a1 + 32) = v188;
                *(a1 + 40) = v179;
                *(a1 + 48) = 0;
                if (v189)
                {
                  operator delete(v189);
                }
              }

              else
              {
                *v178 = 0;
                v179 = v178 + 4;
              }

              *(a1 + 40) = v179;
              v190 = *(this + 1);
              if (v190 > 0xFFFFFFFFFFFFFFFBLL || v190 + 4 > *(this + 2))
              {
LABEL_416:
                *(this + 24) = 1;
                break;
              }

              *(v179 - 1) = *(*this + v190);
              v176 = *(this + 2);
              v175 = *(this + 1) + 4;
              *(this + 1) = v175;
            }

LABEL_417:
            PB::Reader::recallMark();
          }

          else
          {
            v358 = *(a1 + 40);
            v357 = *(a1 + 48);
            if (v358 >= v357)
            {
              v401 = *(a1 + 32);
              v402 = v358 - v401;
              v403 = (v358 - v401) >> 2;
              v404 = v403 + 1;
              if ((v403 + 1) >> 62)
              {
LABEL_540:
                sub_245DF85A4();
              }

              v405 = v357 - v401;
              if (v405 >> 1 > v404)
              {
                v404 = v405 >> 1;
              }

              v17 = v405 >= 0x7FFFFFFFFFFFFFFCLL;
              v406 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v17)
              {
                v406 = v404;
              }

              if (v406)
              {
                sub_245DF85BC(a1 + 32, v406);
              }

              v417 = (v358 - v401) >> 2;
              v418 = (4 * v403);
              v419 = (4 * v403 - 4 * v417);
              *v418 = 0;
              v311 = v418 + 1;
              memcpy(v419, v401, v402);
              v420 = *(a1 + 32);
              *(a1 + 32) = v419;
              *(a1 + 40) = v311;
              *(a1 + 48) = 0;
              if (v420)
              {
                operator delete(v420);
              }
            }

            else
            {
              *v358 = 0;
              v311 = v358 + 4;
            }

            *(a1 + 40) = v311;
LABEL_527:
            v421 = *(this + 1);
            if (v421 <= 0xFFFFFFFFFFFFFFFBLL && v421 + 4 <= *(this + 2))
            {
              *(v311 - 1) = *(*this + v421);
LABEL_531:
              v416 = *(this + 1) + 4;
LABEL_532:
              *(this + 1) = v416;
            }

            else
            {
LABEL_529:
              *(this + 24) = 1;
            }
          }

LABEL_533:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_537;
          }

          break;
        case 7u:
          *(a1 + 212) |= 0x10000000u;
          v209 = *(this + 1);
          if (v209 >= *(this + 2))
          {
            v212 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v210 = v209 + 1;
            v211 = *(*this + v209);
            *(this + 1) = v210;
            v212 = v211 != 0;
          }

          *(a1 + 208) = v212;
          goto LABEL_533;
        case 8u:
          *(a1 + 212) |= 0x20000000u;
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

          *(a1 + 209) = v151;
          goto LABEL_533;
        case 9u:
          *(a1 + 212) |= 0x400000u;
          v224 = *(this + 1);
          v223 = *(this + 2);
          v225 = *this;
          if (v224 <= 0xFFFFFFFFFFFFFFF5 && v224 + 10 <= v223)
          {
            v226 = 0;
            v227 = 0;
            v228 = 0;
            v229 = (v225 + v224);
            v230 = v224 + 1;
            do
            {
              *(this + 1) = v230;
              v231 = *v229++;
              v228 |= (v231 & 0x7F) << v226;
              if ((v231 & 0x80) == 0)
              {
                goto LABEL_505;
              }

              v226 += 7;
              ++v230;
              v14 = v227++ > 8;
            }

            while (!v14);
LABEL_387:
            LODWORD(v228) = 0;
            goto LABEL_505;
          }

          v365 = 0;
          v366 = 0;
          v228 = 0;
          v17 = v223 >= v224;
          v367 = v223 - v224;
          if (!v17)
          {
            v367 = 0;
          }

          v368 = (v225 + v224);
          v369 = v224 + 1;
          while (2)
          {
            if (v367)
            {
              v370 = *v368;
              *(this + 1) = v369;
              v228 |= (v370 & 0x7F) << v365;
              if (v370 < 0)
              {
                v365 += 7;
                --v367;
                ++v368;
                ++v369;
                v14 = v366++ > 8;
                if (v14)
                {
                  goto LABEL_387;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v228) = 0;
              }
            }

            else
            {
              LODWORD(v228) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_505:
          *(a1 + 184) = v228;
          goto LABEL_533;
        case 0xAu:
          *(a1 + 212) |= 0x10u;
          v111 = *(this + 1);
          if (v111 > 0xFFFFFFFFFFFFFFFBLL || v111 + 4 > *(this + 2))
          {
            goto LABEL_529;
          }

          *(a1 + 112) = *(*this + v111);
          goto LABEL_531;
        case 0xBu:
          *(a1 + 212) |= 0x80000u;
          v215 = *(this + 1);
          v214 = *(this + 2);
          v216 = *this;
          if (v215 <= 0xFFFFFFFFFFFFFFF5 && v215 + 10 <= v214)
          {
            v217 = 0;
            v218 = 0;
            v219 = 0;
            v220 = (v216 + v215);
            v221 = v215 + 1;
            do
            {
              *(this + 1) = v221;
              v222 = *v220++;
              v219 |= (v222 & 0x7F) << v217;
              if ((v222 & 0x80) == 0)
              {
                goto LABEL_502;
              }

              v217 += 7;
              ++v221;
              v14 = v218++ > 8;
            }

            while (!v14);
LABEL_379:
            LODWORD(v219) = 0;
            goto LABEL_502;
          }

          v359 = 0;
          v360 = 0;
          v219 = 0;
          v17 = v214 >= v215;
          v361 = v214 - v215;
          if (!v17)
          {
            v361 = 0;
          }

          v362 = (v216 + v215);
          v363 = v215 + 1;
          while (2)
          {
            if (v361)
            {
              v364 = *v362;
              *(this + 1) = v363;
              v219 |= (v364 & 0x7F) << v359;
              if (v364 < 0)
              {
                v359 += 7;
                --v361;
                ++v362;
                ++v363;
                v14 = v360++ > 8;
                if (v14)
                {
                  goto LABEL_379;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v219) = 0;
              }
            }

            else
            {
              LODWORD(v219) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_502:
          *(a1 + 172) = v219;
          goto LABEL_533;
        case 0xCu:
          *(a1 + 212) |= 0x40000u;
          v78 = *(this + 1);
          v77 = *(this + 2);
          v79 = *this;
          if (v78 <= 0xFFFFFFFFFFFFFFF5 && v78 + 10 <= v77)
          {
            v80 = 0;
            v81 = 0;
            v82 = 0;
            v83 = (v79 + v78);
            v84 = v78 + 1;
            do
            {
              *(this + 1) = v84;
              v85 = *v83++;
              v82 |= (v85 & 0x7F) << v80;
              if ((v85 & 0x80) == 0)
              {
                goto LABEL_475;
              }

              v80 += 7;
              ++v84;
              v14 = v81++ > 8;
            }

            while (!v14);
LABEL_297:
            LODWORD(v82) = 0;
            goto LABEL_475;
          }

          v297 = 0;
          v298 = 0;
          v82 = 0;
          v17 = v77 >= v78;
          v299 = v77 - v78;
          if (!v17)
          {
            v299 = 0;
          }

          v300 = (v79 + v78);
          v301 = v78 + 1;
          while (2)
          {
            if (v299)
            {
              v302 = *v300;
              *(this + 1) = v301;
              v82 |= (v302 & 0x7F) << v297;
              if (v302 < 0)
              {
                v297 += 7;
                --v299;
                ++v300;
                ++v301;
                v14 = v298++ > 8;
                if (v14)
                {
                  goto LABEL_297;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v82) = 0;
              }
            }

            else
            {
              LODWORD(v82) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_475:
          *(a1 + 168) = v82;
          goto LABEL_533;
        case 0xDu:
          *(a1 + 212) |= 0x20000u;
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
                goto LABEL_478;
              }

              v105 += 7;
              ++v109;
              v14 = v106++ > 8;
            }

            while (!v14);
LABEL_305:
            LODWORD(v107) = 0;
            goto LABEL_478;
          }

          v303 = 0;
          v304 = 0;
          v107 = 0;
          v17 = v102 >= v103;
          v305 = v102 - v103;
          if (!v17)
          {
            v305 = 0;
          }

          v306 = (v104 + v103);
          v307 = v103 + 1;
          while (2)
          {
            if (v305)
            {
              v308 = *v306;
              *(this + 1) = v307;
              v107 |= (v308 & 0x7F) << v303;
              if (v308 < 0)
              {
                v303 += 7;
                --v305;
                ++v306;
                ++v307;
                v14 = v304++ > 8;
                if (v14)
                {
                  goto LABEL_305;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v107) = 0;
              }
            }

            else
            {
              LODWORD(v107) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_478:
          *(a1 + 164) = v107;
          goto LABEL_533;
        case 0xEu:
          *(a1 + 212) |= 0x10000u;
          v201 = *(this + 1);
          v200 = *(this + 2);
          v202 = *this;
          if (v201 <= 0xFFFFFFFFFFFFFFF5 && v201 + 10 <= v200)
          {
            v203 = 0;
            v204 = 0;
            v205 = 0;
            v206 = (v202 + v201);
            v207 = v201 + 1;
            do
            {
              *(this + 1) = v207;
              v208 = *v206++;
              v205 |= (v208 & 0x7F) << v203;
              if ((v208 & 0x80) == 0)
              {
                goto LABEL_499;
              }

              v203 += 7;
              ++v207;
              v14 = v204++ > 8;
            }

            while (!v14);
LABEL_369:
            LODWORD(v205) = 0;
            goto LABEL_499;
          }

          v351 = 0;
          v352 = 0;
          v205 = 0;
          v17 = v200 >= v201;
          v353 = v200 - v201;
          if (!v17)
          {
            v353 = 0;
          }

          v354 = (v202 + v201);
          v355 = v201 + 1;
          while (2)
          {
            if (v353)
            {
              v356 = *v354;
              *(this + 1) = v355;
              v205 |= (v356 & 0x7F) << v351;
              if (v356 < 0)
              {
                v351 += 7;
                --v353;
                ++v354;
                ++v355;
                v14 = v352++ > 8;
                if (v14)
                {
                  goto LABEL_369;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v205) = 0;
              }
            }

            else
            {
              LODWORD(v205) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_499:
          *(a1 + 160) = v205;
          goto LABEL_533;
        case 0xFu:
          *(a1 + 212) |= 0x8000u;
          v60 = *(this + 1);
          v59 = *(this + 2);
          v61 = *this;
          if (v60 <= 0xFFFFFFFFFFFFFFF5 && v60 + 10 <= v59)
          {
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v65 = (v61 + v60);
            v66 = v60 + 1;
            do
            {
              *(this + 1) = v66;
              v67 = *v65++;
              v64 |= (v67 & 0x7F) << v62;
              if ((v67 & 0x80) == 0)
              {
                goto LABEL_469;
              }

              v62 += 7;
              ++v66;
              v14 = v63++ > 8;
            }

            while (!v14);
LABEL_281:
            LODWORD(v64) = 0;
            goto LABEL_469;
          }

          v285 = 0;
          v286 = 0;
          v64 = 0;
          v17 = v59 >= v60;
          v287 = v59 - v60;
          if (!v17)
          {
            v287 = 0;
          }

          v288 = (v61 + v60);
          v289 = v60 + 1;
          while (2)
          {
            if (v287)
            {
              v290 = *v288;
              *(this + 1) = v289;
              v64 |= (v290 & 0x7F) << v285;
              if (v290 < 0)
              {
                v285 += 7;
                --v287;
                ++v288;
                ++v289;
                v14 = v286++ > 8;
                if (v14)
                {
                  goto LABEL_281;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v64) = 0;
              }
            }

            else
            {
              LODWORD(v64) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_469:
          *(a1 + 156) = v64;
          goto LABEL_533;
        case 0x10u:
          *(a1 + 212) |= 0x4000u;
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
                goto LABEL_484;
              }

              v126 += 7;
              ++v130;
              v14 = v127++ > 8;
            }

            while (!v14);
LABEL_323:
            LODWORD(v128) = 0;
            goto LABEL_484;
          }

          v318 = 0;
          v319 = 0;
          v128 = 0;
          v17 = v123 >= v124;
          v320 = v123 - v124;
          if (!v17)
          {
            v320 = 0;
          }

          v321 = (v125 + v124);
          v322 = v124 + 1;
          while (2)
          {
            if (v320)
            {
              v323 = *v321;
              *(this + 1) = v322;
              v128 |= (v323 & 0x7F) << v318;
              if (v323 < 0)
              {
                v318 += 7;
                --v320;
                ++v321;
                ++v322;
                v14 = v319++ > 8;
                if (v14)
                {
                  goto LABEL_323;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v128) = 0;
              }
            }

            else
            {
              LODWORD(v128) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_484:
          *(a1 + 152) = v128;
          goto LABEL_533;
        case 0x11u:
          *(a1 + 212) |= 0x2000u;
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
                goto LABEL_466;
              }

              v53 += 7;
              ++v57;
              v14 = v54++ > 8;
            }

            while (!v14);
LABEL_273:
            LODWORD(v55) = 0;
            goto LABEL_466;
          }

          v279 = 0;
          v280 = 0;
          v55 = 0;
          v17 = v50 >= v51;
          v281 = v50 - v51;
          if (!v17)
          {
            v281 = 0;
          }

          v282 = (v52 + v51);
          v283 = v51 + 1;
          while (2)
          {
            if (v281)
            {
              v284 = *v282;
              *(this + 1) = v283;
              v55 |= (v284 & 0x7F) << v279;
              if (v284 < 0)
              {
                v279 += 7;
                --v281;
                ++v282;
                ++v283;
                v14 = v280++ > 8;
                if (v14)
                {
                  goto LABEL_273;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v55) = 0;
              }
            }

            else
            {
              LODWORD(v55) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_466:
          *(a1 + 148) = v55;
          goto LABEL_533;
        case 0x12u:
          *(a1 + 212) |= 0x100000u;
          v158 = *(this + 1);
          v157 = *(this + 2);
          v159 = *this;
          if (v158 <= 0xFFFFFFFFFFFFFFF5 && v158 + 10 <= v157)
          {
            v160 = 0;
            v161 = 0;
            v162 = 0;
            v163 = (v159 + v158);
            v164 = v158 + 1;
            do
            {
              *(this + 1) = v164;
              v165 = *v163++;
              v162 |= (v165 & 0x7F) << v160;
              if ((v165 & 0x80) == 0)
              {
                goto LABEL_490;
              }

              v160 += 7;
              ++v164;
              v14 = v161++ > 8;
            }

            while (!v14);
LABEL_345:
            LODWORD(v162) = 0;
            goto LABEL_490;
          }

          v333 = 0;
          v334 = 0;
          v162 = 0;
          v17 = v157 >= v158;
          v335 = v157 - v158;
          if (!v17)
          {
            v335 = 0;
          }

          v336 = (v159 + v158);
          v337 = v158 + 1;
          while (2)
          {
            if (v335)
            {
              v338 = *v336;
              *(this + 1) = v337;
              v162 |= (v338 & 0x7F) << v333;
              if (v338 < 0)
              {
                v333 += 7;
                --v335;
                ++v336;
                ++v337;
                v14 = v334++ > 8;
                if (v14)
                {
                  goto LABEL_345;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v162) = 0;
              }
            }

            else
            {
              LODWORD(v162) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_490:
          *(a1 + 176) = v162;
          goto LABEL_533;
        case 0x13u:
          *(a1 + 212) |= 0x100u;
          v213 = *(this + 1);
          if (v213 > 0xFFFFFFFFFFFFFFFBLL || v213 + 4 > *(this + 2))
          {
            goto LABEL_529;
          }

          *(a1 + 128) = *(*this + v213);
          goto LABEL_531;
        case 0x14u:
          *(a1 + 212) |= 0x1000000u;
          v244 = *(this + 1);
          v243 = *(this + 2);
          v245 = *this;
          if (v244 <= 0xFFFFFFFFFFFFFFF5 && v244 + 10 <= v243)
          {
            v246 = 0;
            v247 = 0;
            v248 = 0;
            v249 = (v245 + v244);
            v250 = v244 + 1;
            do
            {
              *(this + 1) = v250;
              v251 = *v249++;
              v248 |= (v251 & 0x7F) << v246;
              if ((v251 & 0x80) == 0)
              {
                goto LABEL_511;
              }

              v246 += 7;
              ++v250;
              v14 = v247++ > 8;
            }

            while (!v14);
LABEL_405:
            LODWORD(v248) = 0;
            goto LABEL_511;
          }

          v377 = 0;
          v378 = 0;
          v248 = 0;
          v17 = v243 >= v244;
          v379 = v243 - v244;
          if (!v17)
          {
            v379 = 0;
          }

          v380 = (v245 + v244);
          v381 = v244 + 1;
          while (2)
          {
            if (v379)
            {
              v382 = *v380;
              *(this + 1) = v381;
              v248 |= (v382 & 0x7F) << v377;
              if (v382 < 0)
              {
                v377 += 7;
                --v379;
                ++v380;
                ++v381;
                v14 = v378++ > 8;
                if (v14)
                {
                  goto LABEL_405;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v248) = 0;
              }
            }

            else
            {
              LODWORD(v248) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_511:
          *(a1 + 192) = v248;
          goto LABEL_533;
        case 0x15u:
          *(a1 + 212) |= 0x20u;
          v167 = *(this + 1);
          v166 = *(this + 2);
          v168 = *this;
          if (v167 <= 0xFFFFFFFFFFFFFFF5 && v167 + 10 <= v166)
          {
            v169 = 0;
            v170 = 0;
            v171 = 0;
            v172 = (v168 + v167);
            v173 = v167 + 1;
            do
            {
              *(this + 1) = v173;
              v174 = *v172++;
              v171 |= (v174 & 0x7F) << v169;
              if ((v174 & 0x80) == 0)
              {
                goto LABEL_493;
              }

              v169 += 7;
              ++v173;
              v14 = v170++ > 8;
            }

            while (!v14);
LABEL_353:
            LODWORD(v171) = 0;
            goto LABEL_493;
          }

          v339 = 0;
          v340 = 0;
          v171 = 0;
          v17 = v166 >= v167;
          v341 = v166 - v167;
          if (!v17)
          {
            v341 = 0;
          }

          v342 = (v168 + v167);
          v343 = v167 + 1;
          while (2)
          {
            if (v341)
            {
              v344 = *v342;
              *(this + 1) = v343;
              v171 |= (v344 & 0x7F) << v339;
              if (v344 < 0)
              {
                v339 += 7;
                --v341;
                ++v342;
                ++v343;
                v14 = v340++ > 8;
                if (v14)
                {
                  goto LABEL_353;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v171) = 0;
              }
            }

            else
            {
              LODWORD(v171) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_493:
          *(a1 + 116) = v171;
          goto LABEL_533;
        case 0x16u:
          *(a1 + 212) |= 8u;
          v192 = *(this + 1);
          v191 = *(this + 2);
          v193 = *this;
          if (v192 <= 0xFFFFFFFFFFFFFFF5 && v192 + 10 <= v191)
          {
            v194 = 0;
            v195 = 0;
            v196 = 0;
            v197 = (v193 + v192);
            v198 = v192 + 1;
            do
            {
              *(this + 1) = v198;
              v199 = *v197++;
              v196 |= (v199 & 0x7F) << v194;
              if ((v199 & 0x80) == 0)
              {
                goto LABEL_496;
              }

              v194 += 7;
              ++v198;
              v14 = v195++ > 8;
            }

            while (!v14);
LABEL_361:
            v196 = 0;
            goto LABEL_496;
          }

          v345 = 0;
          v346 = 0;
          v196 = 0;
          v17 = v191 >= v192;
          v347 = v191 - v192;
          if (!v17)
          {
            v347 = 0;
          }

          v348 = (v193 + v192);
          v349 = v192 + 1;
          while (2)
          {
            if (v347)
            {
              v350 = *v348;
              *(this + 1) = v349;
              v196 |= (v350 & 0x7F) << v345;
              if (v350 < 0)
              {
                v345 += 7;
                --v347;
                ++v348;
                ++v349;
                v14 = v346++ > 8;
                if (v14)
                {
                  goto LABEL_361;
                }

                continue;
              }

              if (*(this + 24))
              {
                v196 = 0;
              }
            }

            else
            {
              v196 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_496:
          *(a1 + 104) = v196;
          goto LABEL_533;
        case 0x17u:
          *(a1 + 212) |= 0x2000000u;
          v242 = *(this + 1);
          if (v242 > 0xFFFFFFFFFFFFFFFBLL || v242 + 4 > *(this + 2))
          {
            goto LABEL_529;
          }

          *(a1 + 196) = *(*this + v242);
          goto LABEL_531;
        case 0x18u:
          *(a1 + 212) |= 0x4000000u;
          v252 = *(this + 1);
          if (v252 > 0xFFFFFFFFFFFFFFFBLL || v252 + 4 > *(this + 2))
          {
            goto LABEL_529;
          }

          *(a1 + 200) = *(*this + v252);
          goto LABEL_531;
        case 0x19u:
          *(a1 + 212) |= 0x8000000u;
          v121 = *(this + 1);
          if (v121 > 0xFFFFFFFFFFFFFFFBLL || v121 + 4 > *(this + 2))
          {
            goto LABEL_529;
          }

          *(a1 + 204) = *(*this + v121);
          goto LABEL_531;
        case 0x1Au:
          *(a1 + 212) |= 0x800u;
          v113 = *(this + 1);
          v112 = *(this + 2);
          v114 = *this;
          if (v113 <= 0xFFFFFFFFFFFFFFF5 && v113 + 10 <= v112)
          {
            v115 = 0;
            v116 = 0;
            v117 = 0;
            v118 = (v114 + v113);
            v119 = v113 + 1;
            do
            {
              *(this + 1) = v119;
              v120 = *v118++;
              v117 |= (v120 & 0x7F) << v115;
              if ((v120 & 0x80) == 0)
              {
                goto LABEL_481;
              }

              v115 += 7;
              ++v119;
              v14 = v116++ > 8;
            }

            while (!v14);
LABEL_315:
            LODWORD(v117) = 0;
            goto LABEL_481;
          }

          v312 = 0;
          v313 = 0;
          v117 = 0;
          v17 = v112 >= v113;
          v314 = v112 - v113;
          if (!v17)
          {
            v314 = 0;
          }

          v315 = (v114 + v113);
          v316 = v113 + 1;
          while (2)
          {
            if (v314)
            {
              v317 = *v315;
              *(this + 1) = v316;
              v117 |= (v317 & 0x7F) << v312;
              if (v317 < 0)
              {
                v312 += 7;
                --v314;
                ++v315;
                ++v316;
                v14 = v313++ > 8;
                if (v14)
                {
                  goto LABEL_315;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v117) = 0;
              }
            }

            else
            {
              LODWORD(v117) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_481:
          *(a1 + 140) = v117;
          goto LABEL_533;
        case 0x1Bu:
          *(a1 + 212) |= 0x80u;
          v259 = *(this + 1);
          v258 = *(this + 2);
          v260 = *this;
          if (v259 <= 0xFFFFFFFFFFFFFFF5 && v259 + 10 <= v258)
          {
            v261 = 0;
            v262 = 0;
            v263 = 0;
            v264 = (v260 + v259);
            v265 = v259 + 1;
            do
            {
              *(this + 1) = v265;
              v266 = *v264++;
              v263 |= (v266 & 0x7F) << v261;
              if ((v266 & 0x80) == 0)
              {
                goto LABEL_514;
              }

              v261 += 7;
              ++v265;
              v14 = v262++ > 8;
            }

            while (!v14);
LABEL_415:
            LODWORD(v263) = 0;
            goto LABEL_514;
          }

          v383 = 0;
          v384 = 0;
          v263 = 0;
          v17 = v258 >= v259;
          v385 = v258 - v259;
          if (!v17)
          {
            v385 = 0;
          }

          v386 = (v260 + v259);
          v387 = v259 + 1;
          while (2)
          {
            if (v385)
            {
              v388 = *v386;
              *(this + 1) = v387;
              v263 |= (v388 & 0x7F) << v383;
              if (v388 < 0)
              {
                v383 += 7;
                --v385;
                ++v386;
                ++v387;
                v14 = v384++ > 8;
                if (v14)
                {
                  goto LABEL_415;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v263) = 0;
              }
            }

            else
            {
              LODWORD(v263) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_514:
          *(a1 + 124) = v263;
          goto LABEL_533;
        case 0x1Cu:
          *(a1 + 212) |= 2u;
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
                goto LABEL_460;
              }

              v35 += 7;
              ++v39;
              v14 = v36++ > 8;
            }

            while (!v14);
LABEL_257:
            v37 = 0;
            goto LABEL_460;
          }

          v267 = 0;
          v268 = 0;
          v37 = 0;
          v17 = v32 >= v33;
          v269 = v32 - v33;
          if (!v17)
          {
            v269 = 0;
          }

          v270 = (v34 + v33);
          v271 = v33 + 1;
          while (2)
          {
            if (v269)
            {
              v272 = *v270;
              *(this + 1) = v271;
              v37 |= (v272 & 0x7F) << v267;
              if (v272 < 0)
              {
                v267 += 7;
                --v269;
                ++v270;
                ++v271;
                v14 = v268++ > 8;
                if (v14)
                {
                  goto LABEL_257;
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

LABEL_460:
          *(a1 + 88) = v37;
          goto LABEL_533;
        case 0x1Du:
          *(a1 + 212) |= 0x40000000u;
          v253 = *(this + 1);
          if (v253 >= *(this + 2))
          {
            v256 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v254 = v253 + 1;
            v255 = *(*this + v253);
            *(this + 1) = v254;
            v256 = v255 != 0;
          }

          *(a1 + 210) = v256;
          goto LABEL_533;
        case 0x1Eu:
          *(a1 + 212) |= 0x1000u;
          v257 = *(this + 1);
          if (v257 > 0xFFFFFFFFFFFFFFFBLL || v257 + 4 > *(this + 2))
          {
            goto LABEL_529;
          }

          *(a1 + 144) = *(*this + v257);
          goto LABEL_531;
        case 0x1Fu:
          *(a1 + 212) |= 0x200u;
          v232 = *(this + 1);
          if (v232 > 0xFFFFFFFFFFFFFFFBLL || v232 + 4 > *(this + 2))
          {
            goto LABEL_529;
          }

          *(a1 + 132) = *(*this + v232);
          goto LABEL_531;
        case 0x20u:
          *(a1 + 212) |= 0x40u;
          v156 = *(this + 1);
          if (v156 > 0xFFFFFFFFFFFFFFFBLL || v156 + 4 > *(this + 2))
          {
            goto LABEL_529;
          }

          *(a1 + 120) = *(*this + v156);
          goto LABEL_531;
        case 0x21u:
          *(a1 + 212) |= 0x200000u;
          v234 = *(this + 1);
          v233 = *(this + 2);
          v235 = *this;
          if (v234 <= 0xFFFFFFFFFFFFFFF5 && v234 + 10 <= v233)
          {
            v236 = 0;
            v237 = 0;
            v238 = 0;
            v239 = (v235 + v234);
            v240 = v234 + 1;
            do
            {
              *(this + 1) = v240;
              v241 = *v239++;
              v238 |= (v241 & 0x7F) << v236;
              if ((v241 & 0x80) == 0)
              {
                goto LABEL_508;
              }

              v236 += 7;
              ++v240;
              v14 = v237++ > 8;
            }

            while (!v14);
LABEL_397:
            LODWORD(v238) = 0;
            goto LABEL_508;
          }

          v371 = 0;
          v372 = 0;
          v238 = 0;
          v17 = v233 >= v234;
          v373 = v233 - v234;
          if (!v17)
          {
            v373 = 0;
          }

          v374 = (v235 + v234);
          v375 = v234 + 1;
          while (2)
          {
            if (v373)
            {
              v376 = *v374;
              *(this + 1) = v375;
              v238 |= (v376 & 0x7F) << v371;
              if (v376 < 0)
              {
                v371 += 7;
                --v373;
                ++v374;
                ++v375;
                v14 = v372++ > 8;
                if (v14)
                {
                  goto LABEL_397;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v238) = 0;
              }
            }

            else
            {
              LODWORD(v238) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_508:
          *(a1 + 180) = v238;
          goto LABEL_533;
        case 0x22u:
          *(a1 + 212) |= 0x400u;
          v69 = *(this + 1);
          v68 = *(this + 2);
          v70 = *this;
          if (v69 <= 0xFFFFFFFFFFFFFFF5 && v69 + 10 <= v68)
          {
            v71 = 0;
            v72 = 0;
            v73 = 0;
            v74 = (v70 + v69);
            v75 = v69 + 1;
            do
            {
              *(this + 1) = v75;
              v76 = *v74++;
              v73 |= (v76 & 0x7F) << v71;
              if ((v76 & 0x80) == 0)
              {
                goto LABEL_472;
              }

              v71 += 7;
              ++v75;
              v14 = v72++ > 8;
            }

            while (!v14);
LABEL_289:
            LODWORD(v73) = 0;
            goto LABEL_472;
          }

          v291 = 0;
          v292 = 0;
          v73 = 0;
          v17 = v68 >= v69;
          v293 = v68 - v69;
          if (!v17)
          {
            v293 = 0;
          }

          v294 = (v70 + v69);
          v295 = v69 + 1;
          while (2)
          {
            if (v293)
            {
              v296 = *v294;
              *(this + 1) = v295;
              v73 |= (v296 & 0x7F) << v291;
              if (v296 < 0)
              {
                v291 += 7;
                --v293;
                ++v294;
                ++v295;
                v14 = v292++ > 8;
                if (v14)
                {
                  goto LABEL_289;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v73) = 0;
              }
            }

            else
            {
              LODWORD(v73) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_472:
          *(a1 + 136) = v73;
          goto LABEL_533;
        case 0x23u:
          *(a1 + 212) |= 0x800000u;
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
                goto LABEL_463;
              }

              v44 += 7;
              ++v48;
              v14 = v45++ > 8;
            }

            while (!v14);
LABEL_265:
            LODWORD(v46) = 0;
            goto LABEL_463;
          }

          v273 = 0;
          v274 = 0;
          v46 = 0;
          v17 = v41 >= v42;
          v275 = v41 - v42;
          if (!v17)
          {
            v275 = 0;
          }

          v276 = (v43 + v42);
          v277 = v42 + 1;
          while (2)
          {
            if (v275)
            {
              v278 = *v276;
              *(this + 1) = v277;
              v46 |= (v278 & 0x7F) << v273;
              if (v278 < 0)
              {
                v273 += 7;
                --v275;
                ++v276;
                ++v277;
                v14 = v274++ > 8;
                if (v14)
                {
                  goto LABEL_265;
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

LABEL_463:
          *(a1 + 188) = v46;
          goto LABEL_533;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_539;
          }

          goto LABEL_533;
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

LABEL_537:
  v422 = v4 ^ 1;
  return v422 & 1;
}

uint64_t sub_245DF2E9C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 212);
  if ((v4 & 4) == 0)
  {
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_45:
    v16 = *(v3 + 211);
    result = PB::Writer::write(this);
    if ((*(v3 + 212) & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v15 = *(result + 96);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 212);
  if (v4 < 0)
  {
    goto LABEL_45;
  }

LABEL_3:
  if (v4)
  {
LABEL_4:
    result = PB::Writer::write(this, *(v3 + 80));
  }

LABEL_5:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v8 = *(v3 + 56);
  v9 = *(v3 + 64);
  while (v8 != v9)
  {
    v10 = *v8++;
    result = PB::Writer::write(this, v10);
  }

  v11 = *(v3 + 32);
  v12 = *(v3 + 40);
  while (v11 != v12)
  {
    v13 = *v11++;
    result = PB::Writer::write(this, v13);
  }

  v14 = *(v3 + 212);
  if ((v14 & 0x10000000) != 0)
  {
    v17 = *(v3 + 208);
    result = PB::Writer::write(this);
    v14 = *(v3 + 212);
    if ((v14 & 0x20000000) == 0)
    {
LABEL_16:
      if ((v14 & 0x400000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_49;
    }
  }

  else if ((v14 & 0x20000000) == 0)
  {
    goto LABEL_16;
  }

  v18 = *(v3 + 209);
  result = PB::Writer::write(this);
  v14 = *(v3 + 212);
  if ((v14 & 0x400000) == 0)
  {
LABEL_17:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  v19 = *(v3 + 184);
  result = PB::Writer::writeVarInt(this);
  v14 = *(v3 + 212);
  if ((v14 & 0x10) == 0)
  {
LABEL_18:
    if ((v14 & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 112));
  v14 = *(v3 + 212);
  if ((v14 & 0x80000) == 0)
  {
LABEL_19:
    if ((v14 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  v20 = *(v3 + 172);
  result = PB::Writer::writeVarInt(this);
  v14 = *(v3 + 212);
  if ((v14 & 0x40000) == 0)
  {
LABEL_20:
    if ((v14 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  v21 = *(v3 + 168);
  result = PB::Writer::writeVarInt(this);
  v14 = *(v3 + 212);
  if ((v14 & 0x20000) == 0)
  {
LABEL_21:
    if ((v14 & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  v22 = *(v3 + 164);
  result = PB::Writer::writeVarInt(this);
  v14 = *(v3 + 212);
  if ((v14 & 0x10000) == 0)
  {
LABEL_22:
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  v23 = *(v3 + 160);
  result = PB::Writer::writeVarInt(this);
  v14 = *(v3 + 212);
  if ((v14 & 0x8000) == 0)
  {
LABEL_23:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  v24 = *(v3 + 156);
  result = PB::Writer::writeVarInt(this);
  v14 = *(v3 + 212);
  if ((v14 & 0x4000) == 0)
  {
LABEL_24:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  v25 = *(v3 + 152);
  result = PB::Writer::writeVarInt(this);
  v14 = *(v3 + 212);
  if ((v14 & 0x2000) == 0)
  {
LABEL_25:
    if ((v14 & 0x100000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  v26 = *(v3 + 148);
  result = PB::Writer::writeVarInt(this);
  v14 = *(v3 + 212);
  if ((v14 & 0x100000) == 0)
  {
LABEL_26:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  v27 = *(v3 + 176);
  result = PB::Writer::writeVarInt(this);
  v14 = *(v3 + 212);
  if ((v14 & 0x100) == 0)
  {
LABEL_27:
    if ((v14 & 0x1000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 128));
  v14 = *(v3 + 212);
  if ((v14 & 0x1000000) == 0)
  {
LABEL_28:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  v28 = *(v3 + 192);
  result = PB::Writer::writeVarInt(this);
  v14 = *(v3 + 212);
  if ((v14 & 0x20) == 0)
  {
LABEL_29:
    if ((v14 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  v29 = *(v3 + 116);
  result = PB::Writer::writeVarInt(this);
  v14 = *(v3 + 212);
  if ((v14 & 8) == 0)
  {
LABEL_30:
    if ((v14 & 0x2000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  v30 = *(v3 + 104);
  result = PB::Writer::writeVarInt(this);
  v14 = *(v3 + 212);
  if ((v14 & 0x2000000) == 0)
  {
LABEL_31:
    if ((v14 & 0x4000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = PB::Writer::write(this, *(v3 + 196));
  v14 = *(v3 + 212);
  if ((v14 & 0x4000000) == 0)
  {
LABEL_32:
    if ((v14 & 0x8000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = PB::Writer::write(this, *(v3 + 200));
  v14 = *(v3 + 212);
  if ((v14 & 0x8000000) == 0)
  {
LABEL_33:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = PB::Writer::write(this, *(v3 + 204));
  v14 = *(v3 + 212);
  if ((v14 & 0x800) == 0)
  {
LABEL_34:
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_67;
  }

LABEL_66:
  v31 = *(v3 + 140);
  result = PB::Writer::writeVarInt(this);
  v14 = *(v3 + 212);
  if ((v14 & 0x80) == 0)
  {
LABEL_35:
    if ((v14 & 2) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_68;
  }

LABEL_67:
  v32 = *(v3 + 124);
  result = PB::Writer::writeVarInt(this);
  v14 = *(v3 + 212);
  if ((v14 & 2) == 0)
  {
LABEL_36:
    if ((v14 & 0x40000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_69;
  }

LABEL_68:
  v33 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v14 = *(v3 + 212);
  if ((v14 & 0x40000000) == 0)
  {
LABEL_37:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_70;
  }

LABEL_69:
  v34 = *(v3 + 210);
  result = PB::Writer::write(this);
  v14 = *(v3 + 212);
  if ((v14 & 0x1000) == 0)
  {
LABEL_38:
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_71;
  }

LABEL_70:
  result = PB::Writer::write(this, *(v3 + 144));
  v14 = *(v3 + 212);
  if ((v14 & 0x200) == 0)
  {
LABEL_39:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_72;
  }

LABEL_71:
  result = PB::Writer::write(this, *(v3 + 132));
  v14 = *(v3 + 212);
  if ((v14 & 0x40) == 0)
  {
LABEL_40:
    if ((v14 & 0x200000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_73;
  }

LABEL_72:
  result = PB::Writer::write(this, *(v3 + 120));
  v14 = *(v3 + 212);
  if ((v14 & 0x200000) == 0)
  {
LABEL_41:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_42;
    }

LABEL_74:
    v36 = *(v3 + 136);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 212) & 0x800000) == 0)
    {
      return result;
    }

    goto LABEL_75;
  }

LABEL_73:
  v35 = *(v3 + 180);
  result = PB::Writer::writeVarInt(this);
  v14 = *(v3 + 212);
  if ((v14 & 0x400) != 0)
  {
    goto LABEL_74;
  }

LABEL_42:
  if ((v14 & 0x800000) == 0)
  {
    return result;
  }

LABEL_75:
  v37 = *(v3 + 188);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245DF32C0(uint64_t result)
{
  *result = &unk_2858CE2C8;
  *(result + 96) = 0;
  return result;
}

void sub_245DF32E8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DF3320(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CE2C8;
  *(result + 96) = 0;
  v2 = *(a2 + 96);
  if ((v2 & 0x1000) != 0)
  {
    v4 = *(a2 + 88);
    v3 = 4096;
    *(result + 96) = 4096;
    *(result + 88) = v4;
    v2 = *(a2 + 96);
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 96) & 0x800) != 0)
  {
LABEL_5:
    v5 = *(a2 + 84);
    v3 |= 0x800u;
    *(result + 96) = v3;
    *(result + 84) = v5;
    v2 = *(a2 + 96);
  }

LABEL_6:
  if ((v2 & 0x100) != 0)
  {
    v6 = *(a2 + 72);
    v3 |= 0x100u;
    *(result + 96) = v3;
    *(result + 72) = v6;
    v2 = *(a2 + 96);
    if ((v2 & 0x80) == 0)
    {
LABEL_8:
      if ((v2 & 0x8000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 64);
  v3 |= 0x80u;
  *(result + 96) = v3;
  *(result + 64) = v7;
  v2 = *(a2 + 96);
  if ((v2 & 0x8000) == 0)
  {
LABEL_9:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v8 = *(a2 + 94);
  v3 |= 0x8000u;
  *(result + 96) = v3;
  *(result + 94) = v8;
  v2 = *(a2 + 96);
  if ((v2 & 0x4000) == 0)
  {
LABEL_10:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = *(a2 + 93);
  v3 |= 0x4000u;
  *(result + 96) = v3;
  *(result + 93) = v9;
  v2 = *(a2 + 96);
  if ((v2 & 0x2000) == 0)
  {
LABEL_11:
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = *(a2 + 92);
  v3 |= 0x2000u;
  *(result + 96) = v3;
  *(result + 92) = v10;
  v2 = *(a2 + 96);
  if ((v2 & 2) == 0)
  {
LABEL_12:
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v11 = *(a2 + 16);
  v3 |= 2u;
  *(result + 96) = v3;
  *(result + 16) = v11;
  v2 = *(a2 + 96);
  if ((v2 & 8) == 0)
  {
LABEL_13:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  v12 = *(a2 + 32);
  v3 |= 8u;
  *(result + 96) = v3;
  *(result + 32) = v12;
  v2 = *(a2 + 96);
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = *(a2 + 40);
  v3 |= 0x10u;
  *(result + 96) = v3;
  *(result + 40) = v13;
  v2 = *(a2 + 96);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  v14 = *(a2 + 48);
  v3 |= 0x20u;
  *(result + 96) = v3;
  *(result + 48) = v14;
  v2 = *(a2 + 96);
  if ((v2 & 0x40) == 0)
  {
LABEL_16:
    if ((v2 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = *(a2 + 56);
  v3 |= 0x40u;
  *(result + 96) = v3;
  *(result + 56) = v15;
  v2 = *(a2 + 96);
  if ((v2 & 1) == 0)
  {
LABEL_17:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = *(a2 + 8);
  v3 |= 1u;
  *(result + 96) = v3;
  *(result + 8) = v16;
  v2 = *(a2 + 96);
  if ((v2 & 0x400) == 0)
  {
LABEL_18:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  v17 = *(a2 + 80);
  v3 |= 0x400u;
  *(result + 96) = v3;
  *(result + 80) = v17;
  v2 = *(a2 + 96);
  if ((v2 & 0x200) == 0)
  {
LABEL_19:
    if ((v2 & 4) == 0)
    {
      return result;
    }

LABEL_34:
    v19 = *(a2 + 24);
    *(result + 96) = v3 | 4;
    *(result + 24) = v19;
    return result;
  }

LABEL_33:
  v18 = *(a2 + 76);
  v3 |= 0x200u;
  *(result + 96) = v3;
  *(result + 76) = v18;
  if ((*(a2 + 96) & 4) != 0)
  {
    goto LABEL_34;
  }

  return result;
}