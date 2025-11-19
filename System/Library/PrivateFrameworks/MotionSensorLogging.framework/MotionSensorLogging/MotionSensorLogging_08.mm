uint64_t CMMsl::CalorieControllerMETsConsumed::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 224);
  if ((v4 & 0x1000) != 0)
  {
    this = PB::Writer::write(a2, *(this + 104));
    v4 = *(v3 + 224);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 224);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 224);
  if ((v4 & 0x40000) == 0)
  {
LABEL_5:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  v5 = *(v3 + 152);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 224);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 204));
  v4 = *(v3 + 224);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_7:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 216));
  v4 = *(v3 + 224);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_8:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2, *(v3 + 192));
  v4 = *(v3 + 224);
  if ((v4 & 0x100000) == 0)
  {
LABEL_9:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 160));
  v4 = *(v3 + 224);
  if ((v4 & 0x200000) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 164));
  v4 = *(v3 + 224);
  if ((v4 & 0x400) == 0)
  {
LABEL_11:
    if ((v4 & 0x2000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 224);
  if ((v4 & 0x2000000000) == 0)
  {
LABEL_12:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  v6 = *(v3 + 222);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 224);
  if ((v4 & 0x10) == 0)
  {
LABEL_13:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 224);
  if ((v4 & 0x4000) == 0)
  {
LABEL_14:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::write(a2, *(v3 + 120));
  v4 = *(v3 + 224);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  v7 = *(v3 + 200);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 224);
  if ((v4 & 0x2000) == 0)
  {
LABEL_16:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = PB::Writer::write(a2, *(v3 + 112));
  v4 = *(v3 + 224);
  if ((v4 & 0x8000) == 0)
  {
LABEL_17:
    if ((v4 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = PB::Writer::write(a2, *(v3 + 128));
  v4 = *(v3 + 224);
  if ((v4 & 8) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 224);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = PB::Writer::write(a2, *(v3 + 96));
  v4 = *(v3 + 224);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_20:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  v8 = *(v3 + 176);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 224);
  if ((v4 & 0x20000) == 0)
  {
LABEL_21:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = PB::Writer::write(a2, *(v3 + 144));
  v4 = *(v3 + 224);
  if ((v4 & 0x20) == 0)
  {
LABEL_22:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 224);
  if ((v4 & 0x40) == 0)
  {
LABEL_23:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 224);
  if ((v4 & 0x800000) == 0)
  {
LABEL_24:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  v9 = *(v3 + 172);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 224);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = PB::Writer::write(a2, *(v3 + 188));
  v4 = *(v3 + 224);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_26:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = PB::Writer::write(a2, *(v3 + 184));
  v4 = *(v3 + 224);
  if ((v4 & 0x10000) == 0)
  {
LABEL_27:
    if ((v4 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_66;
  }

LABEL_65:
  v10 = *(v3 + 136);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 224);
  if ((v4 & 1) == 0)
  {
LABEL_28:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_66:
  v11 = *(v3 + 8);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 224);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = PB::Writer::write(a2, *(v3 + 208));
  v4 = *(v3 + 224);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_30:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_69;
  }

LABEL_68:
  v12 = *(v3 + 180);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 224);
  if ((v4 & 0x80000) == 0)
  {
LABEL_31:
    if ((v4 & 0x1000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_70;
  }

LABEL_69:
  v13 = *(v3 + 156);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 224);
  if ((v4 & 0x1000000000) == 0)
  {
LABEL_32:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_71;
  }

LABEL_70:
  v14 = *(v3 + 221);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 224);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_33:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

LABEL_71:
  v15 = *(v3 + 220);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 224);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_34:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = PB::Writer::write(a2, *(v3 + 196));
  v4 = *(v3 + 224);
  if ((v4 & 0x100) == 0)
  {
LABEL_35:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 224);
  if ((v4 & 0x200) == 0)
  {
LABEL_36:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 224);
  if ((v4 & 0x400000) == 0)
  {
LABEL_37:
    if ((v4 & 4) == 0)
    {
      goto LABEL_38;
    }

LABEL_76:
    this = PB::Writer::write(a2, *(v3 + 24));
    if ((*(v3 + 224) & 0x200000000) == 0)
    {
      return this;
    }

    goto LABEL_77;
  }

LABEL_75:
  v16 = *(v3 + 168);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 224);
  if ((v4 & 4) != 0)
  {
    goto LABEL_76;
  }

LABEL_38:
  if ((v4 & 0x200000000) == 0)
  {
    return this;
  }

LABEL_77:
  v17 = *(v3 + 212);

  return PB::Writer::write(a2, v17);
}

BOOL CMMsl::CalorieControllerMETsConsumed::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 224);
  v3 = *(a2 + 224);
  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000000) != 0)
  {
    if ((v3 & 0x80000000) == 0 || *(a1 + 204) != *(a2 + 204))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000000) != 0)
  {
    if ((v3 & 0x400000000) == 0 || *(a1 + 216) != *(a2 + 216))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000000) != 0)
  {
    if ((v3 & 0x10000000) == 0 || *(a1 + 192) != *(a2 + 192))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 160) != *(a2 + 160))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 164) != *(a2 + 164))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000000000) != 0)
  {
    if ((v3 & 0x2000000000) == 0 || *(a1 + 222) != *(a2 + 222))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000000) != 0)
  {
    if ((v3 & 0x40000000) == 0 || *(a1 + 200) != *(a2 + 200))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000) != 0)
  {
    if ((v3 & 0x1000000) == 0 || *(a1 + 176) != *(a2 + 176))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    if ((v3 & 0x800000) == 0 || *(a1 + 172) != *(a2 + 172))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000000) != 0)
  {
    if ((v3 & 0x8000000) == 0 || *(a1 + 188) != *(a2 + 188))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000000) != 0)
  {
    if ((v3 & 0x4000000) == 0 || *(a1 + 184) != *(a2 + 184))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x100000000) != 0)
  {
    if ((v3 & 0x100000000) == 0 || *(a1 + 208) != *(a2 + 208))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000000) != 0)
  {
    if ((v3 & 0x2000000) == 0 || *(a1 + 180) != *(a2 + 180))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 156) != *(a2 + 156))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000000) != 0)
  {
    if ((v3 & 0x1000000000) == 0 || *(a1 + 221) != *(a2 + 221))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000000) != 0)
  {
    if ((v3 & 0x800000000) == 0 || *(a1 + 220) != *(a2 + 220))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000000) != 0)
  {
    if ((v3 & 0x20000000) == 0 || *(a1 + 196) != *(a2 + 196))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000) != 0)
  {
    if ((v3 & 0x400000) == 0 || *(a1 + 168) != *(a2 + 168))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x200000000) == 0;
  if ((v2 & 0x200000000) != 0)
  {
    return (v3 & 0x200000000) != 0 && *(a1 + 212) == *(a2 + 212);
  }

  return v4;
}

uint64_t CMMsl::CalorieControllerMETsConsumed::hash_value(CMMsl::CalorieControllerMETsConsumed *this)
{
  v1 = *(this + 28);
  if ((v1 & 0x1000) != 0)
  {
    if (*(this + 13) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 13);
    }
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 2) == 0)
  {
    v59 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_8;
    }

LABEL_105:
    v58 = 0.0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_106;
  }

  v47 = *(this + 2);
  if (v47 == 0.0)
  {
    v47 = 0.0;
  }

  v59 = v47;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_105;
  }

LABEL_8:
  v3 = *(this + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  v58 = v3;
  if ((v1 & 0x40000) != 0)
  {
LABEL_11:
    v57 = *(this + 38);
    if ((v1 & 0x80000000) != 0)
    {
      goto LABEL_12;
    }

LABEL_107:
    v56 = 0;
    if ((v1 & 0x400000000) != 0)
    {
      goto LABEL_15;
    }

LABEL_108:
    v55 = 0;
    if ((v1 & 0x10000000) != 0)
    {
      goto LABEL_18;
    }

LABEL_109:
    v54 = 0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_21;
    }

LABEL_110:
    v53 = 0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_24;
    }

LABEL_111:
    v52 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_27;
    }

LABEL_112:
    v51 = 0.0;
    if ((v1 & 0x2000000000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_113;
  }

LABEL_106:
  v57 = 0;
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_107;
  }

LABEL_12:
  v4 = *(this + 51);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  v56 = v5;
  if ((v1 & 0x400000000) == 0)
  {
    goto LABEL_108;
  }

LABEL_15:
  v6 = *(this + 54);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  v55 = v7;
  if ((v1 & 0x10000000) == 0)
  {
    goto LABEL_109;
  }

LABEL_18:
  v8 = *(this + 48);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  v54 = v9;
  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_110;
  }

LABEL_21:
  v10 = *(this + 40);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  v53 = v11;
  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_111;
  }

LABEL_24:
  v12 = *(this + 41);
  v13 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  v52 = v13;
  if ((v1 & 0x400) == 0)
  {
    goto LABEL_112;
  }

LABEL_27:
  v14 = *(this + 11);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  v51 = v14;
  if ((v1 & 0x2000000000) != 0)
  {
LABEL_30:
    v50 = *(this + 222);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_31;
    }

LABEL_114:
    v49 = 0.0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_34;
    }

LABEL_115:
    v16 = 0;
    if ((v1 & 0x40000000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_116;
  }

LABEL_113:
  v50 = 0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_114;
  }

LABEL_31:
  v15 = *(this + 5);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  v49 = v15;
  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_115;
  }

LABEL_34:
  if (*(this + 15) == 0.0)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(this + 15);
  }

  if ((v1 & 0x40000000) != 0)
  {
LABEL_38:
    v17 = *(this + 50);
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_39;
    }

LABEL_117:
    v18 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_43;
    }

LABEL_118:
    v19 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_47;
    }

LABEL_119:
    v20 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_51;
    }

LABEL_120:
    v21 = 0;
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_121;
  }

LABEL_116:
  v17 = 0;
  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_117;
  }

LABEL_39:
  if (*(this + 14) == 0.0)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(this + 14);
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_118;
  }

LABEL_43:
  if (*(this + 16) == 0.0)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(this + 16);
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_119;
  }

LABEL_47:
  if (*(this + 4) == 0.0)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(this + 4);
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_120;
  }

LABEL_51:
  if (*(this + 12) == 0.0)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(this + 12);
  }

  if ((v1 & 0x1000000) != 0)
  {
LABEL_55:
    v22 = *(this + 44);
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_56;
    }

LABEL_122:
    v23 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_60;
    }

LABEL_123:
    v24 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_64;
    }

LABEL_124:
    v25 = 0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_68;
    }

    goto LABEL_125;
  }

LABEL_121:
  v22 = 0;
  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_122;
  }

LABEL_56:
  if (*(this + 18) == 0.0)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(this + 18);
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_123;
  }

LABEL_60:
  if (*(this + 6) == 0.0)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(this + 6);
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_124;
  }

LABEL_64:
  if (*(this + 7) == 0.0)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(this + 7);
  }

  if ((v1 & 0x800000) != 0)
  {
LABEL_68:
    v26 = *(this + 43);
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_69;
    }

LABEL_126:
    v28 = 0;
    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_73;
    }

LABEL_127:
    v30 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_77;
    }

    goto LABEL_128;
  }

LABEL_125:
  v26 = 0;
  if ((v1 & 0x8000000) == 0)
  {
    goto LABEL_126;
  }

LABEL_69:
  v27 = *(this + 47);
  if (v27 == 0.0)
  {
    v28 = 0;
  }

  else
  {
    v28 = LODWORD(v27);
  }

  if ((v1 & 0x4000000) == 0)
  {
    goto LABEL_127;
  }

LABEL_73:
  v29 = *(this + 46);
  if (v29 == 0.0)
  {
    v30 = 0;
  }

  else
  {
    v30 = LODWORD(v29);
  }

  if ((v1 & 0x10000) != 0)
  {
LABEL_77:
    v31 = *(this + 17);
    if (v1)
    {
      goto LABEL_78;
    }

    goto LABEL_129;
  }

LABEL_128:
  v31 = 0;
  if (v1)
  {
LABEL_78:
    v32 = *(this + 1);
    if ((v1 & 0x100000000) != 0)
    {
      goto LABEL_79;
    }

LABEL_130:
    v34 = 0;
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_82;
    }

    goto LABEL_131;
  }

LABEL_129:
  v32 = 0;
  if ((v1 & 0x100000000) == 0)
  {
    goto LABEL_130;
  }

LABEL_79:
  v33 = *(this + 52);
  v34 = LODWORD(v33);
  if (v33 == 0.0)
  {
    v34 = 0;
  }

  if ((v1 & 0x2000000) != 0)
  {
LABEL_82:
    v35 = *(this + 45);
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_83;
    }

    goto LABEL_132;
  }

LABEL_131:
  v35 = 0;
  if ((v1 & 0x80000) != 0)
  {
LABEL_83:
    v36 = *(this + 39);
    if ((v1 & 0x1000000000) != 0)
    {
      goto LABEL_84;
    }

    goto LABEL_133;
  }

LABEL_132:
  v36 = 0;
  if ((v1 & 0x1000000000) != 0)
  {
LABEL_84:
    v37 = *(this + 221);
    if ((v1 & 0x800000000) != 0)
    {
      goto LABEL_85;
    }

    goto LABEL_134;
  }

LABEL_133:
  v37 = 0;
  if ((v1 & 0x800000000) != 0)
  {
LABEL_85:
    v38 = *(this + 220);
    if ((v1 & 0x20000000) != 0)
    {
      goto LABEL_86;
    }

LABEL_135:
    v40 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_89;
    }

LABEL_136:
    v41 = 0.0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_92;
    }

LABEL_137:
    v42 = 0.0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_95;
    }

    goto LABEL_138;
  }

LABEL_134:
  v38 = 0;
  if ((v1 & 0x20000000) == 0)
  {
    goto LABEL_135;
  }

LABEL_86:
  v39 = *(this + 49);
  v40 = LODWORD(v39);
  if (v39 == 0.0)
  {
    v40 = 0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_136;
  }

LABEL_89:
  v41 = *(this + 9);
  if (v41 == 0.0)
  {
    v41 = 0.0;
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_137;
  }

LABEL_92:
  v42 = *(this + 10);
  if (v42 == 0.0)
  {
    v42 = 0.0;
  }

  if ((v1 & 0x400000) != 0)
  {
LABEL_95:
    v43 = *(this + 42);
    if ((v1 & 4) != 0)
    {
      goto LABEL_96;
    }

    goto LABEL_139;
  }

LABEL_138:
  v43 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_96:
    v44 = *(this + 3);
    if (v44 == 0.0)
    {
      v44 = 0.0;
    }

    if ((v1 & 0x200000000) != 0)
    {
      goto LABEL_99;
    }

LABEL_140:
    v46 = 0;
    return *&v59 ^ v2 ^ *&v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ *&v51 ^ v50 ^ *&v49 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v28 ^ v30 ^ v31 ^ v32 ^ v34 ^ v35 ^ v36 ^ v37 ^ v38 ^ v40 ^ *&v41 ^ *&v42 ^ v43 ^ *&v44 ^ v46;
  }

LABEL_139:
  v44 = 0.0;
  if ((v1 & 0x200000000) == 0)
  {
    goto LABEL_140;
  }

LABEL_99:
  v45 = *(this + 53);
  v46 = LODWORD(v45);
  if (v45 == 0.0)
  {
    v46 = 0;
  }

  return *&v59 ^ v2 ^ *&v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ *&v51 ^ v50 ^ *&v49 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v28 ^ v30 ^ v31 ^ v32 ^ v34 ^ v35 ^ v36 ^ v37 ^ v38 ^ v40 ^ *&v41 ^ *&v42 ^ v43 ^ *&v44 ^ v46;
}

uint64_t CMMsl::CalorimetryPauseEvent::CalorimetryPauseEvent(uint64_t this)
{
  *this = &unk_286C1F200;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_286C1F200;
  *(this + 12) = 0;
  return this;
}

void CMMsl::CalorimetryPauseEvent::~CalorimetryPauseEvent(CMMsl::CalorimetryPauseEvent *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::CalorimetryPauseEvent::CalorimetryPauseEvent(uint64_t this, const CMMsl::CalorimetryPauseEvent *a2)
{
  *this = &unk_286C1F200;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

{
  *this = &unk_286C1F200;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::CalorimetryPauseEvent::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_286C1F200;
    v3 = *(a2 + 8);
    v4 = *(a1 + 12);
    *(a1 + 12) = *(a2 + 12) & 1;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v7 = &unk_286C1F200;
    v3 = *(a2 + 12);
    *(a2 + 12) = 0;
    v4 = *(a2 + 8);
    v5 = *(a1 + 12);
    *(a1 + 12) = v3;
    v9 = v5;
    LOBYTE(v3) = *(a1 + 8);
    *(a1 + 8) = v4;
    v8 = v3;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::CalorimetryPauseEvent *a2, CMMsl::CalorimetryPauseEvent *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  LOBYTE(v3) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  return this;
}

uint64_t CMMsl::CalorimetryPauseEvent::CalorimetryPauseEvent(uint64_t result, uint64_t a2)
{
  *result = &unk_286C1F200;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = &unk_286C1F200;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t CMMsl::CalorimetryPauseEvent::formatText(CMMsl::CalorimetryPauseEvent *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    v5 = *(this + 8);
    PB::TextFormatter::format(a2, "pause");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::CalorimetryPauseEvent::readFrom(CMMsl::CalorimetryPauseEvent *this, PB::Reader *a2)
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
        goto LABEL_30;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
        v2 = *(a2 + 1);
        v3 = *(a2 + 2);
        if (v2 >= v3)
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

        *(this + 8) = v23;
      }

      else
      {
LABEL_22:
        if (!PB::Reader::skip(a2))
        {
          v24 = 0;
          return v24 & 1;
        }

        v2 = *(a2 + 1);
        v3 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_30;
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

LABEL_30:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t CMMsl::CalorimetryPauseEvent::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    v2 = *(this + 8);
    return PB::Writer::write(a2);
  }

  return this;
}

BOOL CMMsl::CalorimetryPauseEvent::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t CMMsl::CalorimetryPauseEvent::hash_value(CMMsl::CalorimetryPauseEvent *this)
{
  if (*(this + 12))
  {
    return *(this + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t CMMsl::CatherineHealthKitData::CatherineHealthKitData(uint64_t this)
{
  *this = &unk_286C1F238;
  *(this + 36) = 0;
  return this;
}

{
  *this = &unk_286C1F238;
  *(this + 36) = 0;
  return this;
}

void CMMsl::CatherineHealthKitData::~CatherineHealthKitData(CMMsl::CatherineHealthKitData *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::CatherineHealthKitData::CatherineHealthKitData(uint64_t this, const CMMsl::CatherineHealthKitData *a2)
{
  *this = &unk_286C1F238;
  *(this + 36) = 0;
  v2 = *(a2 + 36);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 3);
    v3 = 4;
    *(this + 36) = 4;
    *(this + 24) = v4;
    v2 = *(a2 + 36);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 36))
  {
LABEL_5:
    v5 = *(a2 + 1);
    v3 |= 1u;
    *(this + 36) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 36);
  }

LABEL_6:
  if ((v2 & 2) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return this;
    }

LABEL_10:
    v7 = *(a2 + 8);
    *(this + 36) = v3 | 8;
    *(this + 32) = v7;
    return this;
  }

  v6 = *(a2 + 2);
  v3 |= 2u;
  *(this + 36) = v3;
  *(this + 16) = v6;
  if ((*(a2 + 36) & 8) != 0)
  {
    goto LABEL_10;
  }

  return this;
}

uint64_t CMMsl::CatherineHealthKitData::operator=(uint64_t a1, const CMMsl::CatherineHealthKitData *a2)
{
  if (a1 != a2)
  {
    CMMsl::CatherineHealthKitData::CatherineHealthKitData(v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    *&v3 = v10;
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *(a1 + 24) = v9;
    *(a1 + 32) = v3;
    v9 = v4;
    v10 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::CatherineHealthKitData *a2, CMMsl::CatherineHealthKitData *a3)
{
  v3 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  v7 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v7;
  return result;
}

double CMMsl::CatherineHealthKitData::CatherineHealthKitData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1F238;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

{
  *a1 = &unk_286C1F238;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t CMMsl::CatherineHealthKitData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_286C1F238;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *(a2 + 36) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v3;
    v9 = v6;
    *&v3 = *(a1 + 24);
    *&v6 = *(a1 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    v10 = v3;
    v11 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::CatherineHealthKitData::formatText(CMMsl::CatherineHealthKitData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 36);
  if (v5)
  {
    PB::TextFormatter::format(a2, "endDate", *(this + 1));
    v5 = *(this + 36);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 36) & 8) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(this + 8);
  PB::TextFormatter::format(a2, "hkType");
  v5 = *(this + 36);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "hr", *(this + 2));
  if ((*(this + 36) & 4) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "startDate", *(this + 3));
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::CatherineHealthKitData::readFrom(CMMsl::CatherineHealthKitData *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 36) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_40:
          *(a2 + 24) = 1;
          goto LABEL_56;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_50;
      }

      if (v22 == 4)
      {
        *(this + 36) |= 8u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          v33 = (v24 + v23);
          v34 = v2 - v23;
          v35 = v23 + 1;
          while (1)
          {
            if (!v34)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_55;
            }

            v36 = v35;
            v37 = *v33;
            *(a2 + 1) = v36;
            v27 |= (v37 & 0x7F) << v31;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            ++v33;
            --v34;
            v35 = v36 + 1;
            v14 = v32++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_54;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_54:
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
            *(a2 + 1) = v29;
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

LABEL_55:
        *(this + 8) = v27;
        goto LABEL_56;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 36) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_40;
        }

        *(this + 3) = *(*a2 + v2);
        goto LABEL_50;
      }

      if (v22 == 2)
      {
        *(this + 36) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_40;
        }

        *(this + 1) = *(*a2 + v2);
LABEL_50:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_56;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v38 = 0;
      return v38 & 1;
    }

    v2 = *(a2 + 1);
LABEL_56:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::CatherineHealthKitData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 36);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24));
    v4 = *(v3 + 36);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 16));
      if ((*(v3 + 36) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 36) & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 36);
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 32);

  return PB::Writer::writeVarInt(a2);
}

BOOL CMMsl::CatherineHealthKitData::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 36) & 4) != 0)
  {
    if ((*(a2 + 36) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 36))
  {
    if ((*(a2 + 36) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 36))
  {
    return 0;
  }

  if ((*(a1 + 36) & 2) != 0)
  {
    if ((*(a2 + 36) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 36) & 8) == 0;
  if ((*(a1 + 36) & 8) != 0)
  {
    return (*(a2 + 36) & 8) != 0 && *(a1 + 32) == *(a2 + 32);
  }

  return v2;
}

uint64_t CMMsl::CatherineHealthKitData::hash_value(CMMsl::CatherineHealthKitData *this)
{
  if ((*(this + 36) & 4) == 0)
  {
    v1 = 0.0;
    if (*(this + 36))
    {
      goto LABEL_3;
    }

LABEL_13:
    v2 = 0.0;
    if ((*(this + 36) & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  v1 = *(this + 3);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 36) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 36) & 2) != 0)
  {
LABEL_6:
    v3 = *(this + 2);
    if (v3 == 0.0)
    {
      v3 = 0.0;
    }

    if ((*(this + 36) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v4 = 0;
    return *&v2 ^ *&v1 ^ *&v3 ^ v4;
  }

LABEL_14:
  v3 = 0.0;
  if ((*(this + 36) & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v4 = *(this + 8);
  return *&v2 ^ *&v1 ^ *&v3 ^ v4;
}

uint64_t CMMsl::ClefCalibration::ClefCalibration(uint64_t this)
{
  *this = &unk_286C1F270;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 64) = 0;
  return this;
}

{
  *this = &unk_286C1F270;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 64) = 0;
  return this;
}

void CMMsl::ClefCalibration::~ClefCalibration(CMMsl::ClefCalibration *this)
{
  *this = &unk_286C1F270;
  v2 = (this + 8);
  sub_25AD28930(&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_286C1F270;
  v2 = (this + 8);
  sub_25AD28930(&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_286C1F270;
  v2 = (this + 8);
  sub_25AD28930(&v2);
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::ClefCalibration::ClefCalibration(uint64_t this, const CMMsl::ClefCalibration *a2)
{
  *this = &unk_286C1F270;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 64) = 0;
  v2 = *(a2 + 64);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 9);
    v3 = 2;
    *(this + 64) = 2;
    *(this + 36) = v4;
    v2 = *(a2 + 64);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 64) & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 11);
    v3 |= 8u;
    *(this + 64) = v3;
    *(this + 44) = v5;
    v2 = *(a2 + 64);
  }

LABEL_6:
  if (v2)
  {
    v9 = *(a2 + 8);
    v3 |= 1u;
    *(this + 64) = v3;
    *(this + 32) = v9;
    v2 = *(a2 + 64);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(a2 + 10);
  v3 |= 4u;
  *(this + 64) = v3;
  *(this + 40) = v10;
  v2 = *(a2 + 64);
  if ((v2 & 0x80) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = *(a2 + 60);
  v3 |= 0x80u;
  *(this + 64) = v3;
  *(this + 60) = v11;
  v2 = *(a2 + 64);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = *(a2 + 12);
  v3 |= 0x10u;
  *(this + 64) = v3;
  *(this + 48) = v12;
  v2 = *(a2 + 64);
  if ((v2 & 0x20) == 0)
  {
LABEL_11:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_20:
  v13 = *(a2 + 13);
  v3 |= 0x20u;
  *(this + 64) = v3;
  *(this + 52) = v13;
  if ((*(a2 + 64) & 0x40) != 0)
  {
LABEL_12:
    v6 = *(a2 + 14);
    *(this + 64) = v3 | 0x40;
    *(this + 56) = v6;
  }

LABEL_13:
  v7 = *(a2 + 1);
  if (v7 != *(a2 + 2))
  {
    v8 = *v7;
    operator new();
  }

  return this;
}

uint64_t CMMsl::ClefCalibration::operator=(uint64_t a1, const CMMsl::ClefCalibration *a2)
{
  if (a1 != a2)
  {
    CMMsl::ClefCalibration::ClefCalibration(&v5, a2);
    CMMsl::swap(a1, &v5, v3);
    v5 = &unk_286C1F270;
    v7 = &v6;
    sub_25AD28930(&v7);
    PB::Base::~Base(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::ClefCalibration *a2, CMMsl::ClefCalibration *a3)
{
  v3 = *(this + 64);
  *(this + 64) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 36);
  *(this + 36) = *(a2 + 9);
  *(a2 + 9) = v4;
  v5 = *(this + 44);
  *(this + 44) = *(a2 + 11);
  *(a2 + 11) = v5;
  v6 = *(this + 32);
  *(this + 32) = *(a2 + 8);
  *(a2 + 8) = v6;
  v7 = *(this + 40);
  *(this + 40) = *(a2 + 10);
  *(a2 + 10) = v7;
  LOBYTE(v7) = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v7;
  v8 = *(this + 48);
  *(this + 48) = *(a2 + 12);
  *(a2 + 12) = v8;
  v9 = *(this + 52);
  *(this + 52) = *(a2 + 13);
  *(a2 + 13) = v9;
  v10 = *(this + 56);
  *(this + 56) = *(a2 + 14);
  *(a2 + 14) = v10;
  v11 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v11;
  v12 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v12;
  v13 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v13;
  return this;
}

uint64_t CMMsl::ClefCalibration::ClefCalibration(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1F270;
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  if (*(a1 + 8))
  {
    sub_25AD28984((a1 + 8));
    operator delete(*v4);
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t CMMsl::ClefCalibration::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::ClefCalibration::ClefCalibration(&v5, a2);
    CMMsl::swap(a1, &v5, v3);
    v5 = &unk_286C1F270;
    v7 = &v6;
    sub_25AD28930(&v7);
    PB::Base::~Base(&v5);
  }

  return a1;
}

uint64_t CMMsl::ClefCalibration::formatText(CMMsl::ClefCalibration *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 64);
  if (v5)
  {
    v12 = *(this + 8);
    PB::TextFormatter::format(a2, "gain");
    v5 = *(this + 64);
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

  else if ((*(this + 64) & 2) == 0)
  {
    goto LABEL_3;
  }

  v13 = *(this + 9);
  PB::TextFormatter::format(a2, "location");
  if ((*(this + 64) & 4) != 0)
  {
LABEL_4:
    v6 = *(this + 10);
    PB::TextFormatter::format(a2, "offset");
  }

LABEL_5:
  v7 = *(this + 1);
  v8 = *(this + 2);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, a2, "point");
  }

  v10 = *(this + 64);
  if ((v10 & 8) != 0)
  {
    v14 = *(this + 11);
    PB::TextFormatter::format(a2, "sensor");
    v10 = *(this + 64);
    if ((v10 & 0x10) == 0)
    {
LABEL_9:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((*(this + 64) & 0x10) == 0)
  {
    goto LABEL_9;
  }

  v15 = *(this + 12);
  PB::TextFormatter::format(a2, "tempCalA");
  v10 = *(this + 64);
  if ((v10 & 0x20) == 0)
  {
LABEL_10:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v16 = *(this + 13);
  PB::TextFormatter::format(a2, "tempCalB");
  v10 = *(this + 64);
  if ((v10 & 0x80) == 0)
  {
LABEL_11:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_22:
  v17 = *(this + 60);
  PB::TextFormatter::format(a2, "tempCalEnabled");
  if ((*(this + 64) & 0x40) != 0)
  {
LABEL_12:
    v11 = *(this + 14);
    PB::TextFormatter::format(a2, "tempCalT0");
  }

LABEL_13:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ClefCalibration::readFrom(CMMsl::ClefCalibration *this, PB::Reader *a2)
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
          goto LABEL_21;
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

LABEL_21:
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
          *(this + 64) |= 1u;
          v60 = *(a2 + 1);
          v59 = *(a2 + 2);
          v61 = *a2;
          if (v60 > 0xFFFFFFFFFFFFFFF5 || v60 + 10 > v59)
          {
            v114 = 0;
            v115 = 0;
            v64 = 0;
            v116 = (v61 + v60);
            v18 = v59 >= v60;
            v117 = v59 - v60;
            if (!v18)
            {
              v117 = 0;
            }

            v118 = v60 + 1;
            while (1)
            {
              if (!v117)
              {
                LODWORD(v64) = 0;
                *(a2 + 24) = 1;
                goto LABEL_165;
              }

              v119 = *v116;
              *(a2 + 1) = v118;
              v64 |= (v119 & 0x7F) << v114;
              if ((v119 & 0x80) == 0)
              {
                break;
              }

              v114 += 7;
              ++v116;
              --v117;
              ++v118;
              v14 = v115++ > 8;
              if (v14)
              {
LABEL_125:
                LODWORD(v64) = 0;
                goto LABEL_165;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v64) = 0;
            }
          }

          else
          {
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v65 = (v61 + v60);
            v66 = v60 + 1;
            while (1)
            {
              *(a2 + 1) = v66;
              v67 = *v65++;
              v64 |= (v67 & 0x7F) << v62;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              ++v66;
              v14 = v63++ > 8;
              if (v14)
              {
                goto LABEL_125;
              }
            }
          }

LABEL_165:
          *(this + 8) = v64;
          goto LABEL_18;
        }

        if (v22 == 4)
        {
          *(this + 64) |= 4u;
          v33 = *(a2 + 1);
          v32 = *(a2 + 2);
          v34 = *a2;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v96 = 0;
            v97 = 0;
            v37 = 0;
            v98 = (v34 + v33);
            v18 = v32 >= v33;
            v99 = v32 - v33;
            if (!v18)
            {
              v99 = 0;
            }

            v100 = v33 + 1;
            while (1)
            {
              if (!v99)
              {
                LODWORD(v37) = 0;
                *(a2 + 24) = 1;
                goto LABEL_156;
              }

              v101 = *v98;
              *(a2 + 1) = v100;
              v37 |= (v101 & 0x7F) << v96;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v96 += 7;
              ++v98;
              --v99;
              ++v100;
              v14 = v97++ > 8;
              if (v14)
              {
LABEL_101:
                LODWORD(v37) = 0;
                goto LABEL_156;
              }
            }

            if (*(a2 + 24))
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
              *(a2 + 1) = v39;
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
                goto LABEL_101;
              }
            }
          }

LABEL_156:
          *(this + 10) = v37;
          goto LABEL_18;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 64) |= 2u;
          v51 = *(a2 + 1);
          v50 = *(a2 + 2);
          v52 = *a2;
          if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v50)
          {
            v108 = 0;
            v109 = 0;
            v55 = 0;
            v110 = (v52 + v51);
            v18 = v50 >= v51;
            v111 = v50 - v51;
            if (!v18)
            {
              v111 = 0;
            }

            v112 = v51 + 1;
            while (1)
            {
              if (!v111)
              {
                LODWORD(v55) = 0;
                *(a2 + 24) = 1;
                goto LABEL_162;
              }

              v113 = *v110;
              *(a2 + 1) = v112;
              v55 |= (v113 & 0x7F) << v108;
              if ((v113 & 0x80) == 0)
              {
                break;
              }

              v108 += 7;
              ++v110;
              --v111;
              ++v112;
              v14 = v109++ > 8;
              if (v14)
              {
LABEL_117:
                LODWORD(v55) = 0;
                goto LABEL_162;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v55) = 0;
            }
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
              *(a2 + 1) = v57;
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
                goto LABEL_117;
              }
            }
          }

LABEL_162:
          *(this + 9) = v55;
          goto LABEL_18;
        }

        if (v22 == 2)
        {
          *(this + 64) |= 8u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v90 = 0;
            v91 = 0;
            v28 = 0;
            v92 = (v25 + v24);
            v18 = v23 >= v24;
            v93 = v23 - v24;
            if (!v18)
            {
              v93 = 0;
            }

            v94 = v24 + 1;
            while (1)
            {
              if (!v93)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_153;
              }

              v95 = *v92;
              *(a2 + 1) = v94;
              v28 |= (v95 & 0x7F) << v90;
              if ((v95 & 0x80) == 0)
              {
                break;
              }

              v90 += 7;
              ++v92;
              --v93;
              ++v94;
              v14 = v91++ > 8;
              if (v14)
              {
LABEL_93:
                LODWORD(v28) = 0;
                goto LABEL_153;
              }
            }

            if (*(a2 + 24))
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
              *(a2 + 1) = v30;
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
                goto LABEL_93;
              }
            }
          }

LABEL_153:
          *(this + 11) = v28;
          goto LABEL_18;
        }
      }
    }

    else if (v22 <= 6)
    {
      if (v22 == 5)
      {
        *(this + 64) |= 0x80u;
        v77 = *(a2 + 1);
        if (v77 >= *(a2 + 2))
        {
          v80 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v78 = v77 + 1;
          v79 = *(*a2 + v77);
          *(a2 + 1) = v78;
          v80 = v79 != 0;
        }

        *(this + 60) = v80;
        goto LABEL_18;
      }

      if (v22 == 6)
      {
        *(this + 64) |= 0x10u;
        v42 = *(a2 + 1);
        v41 = *(a2 + 2);
        v43 = *a2;
        if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v41)
        {
          v102 = 0;
          v103 = 0;
          v46 = 0;
          v104 = (v43 + v42);
          v18 = v41 >= v42;
          v105 = v41 - v42;
          if (!v18)
          {
            v105 = 0;
          }

          v106 = v42 + 1;
          while (1)
          {
            if (!v105)
            {
              LODWORD(v46) = 0;
              *(a2 + 24) = 1;
              goto LABEL_159;
            }

            v107 = *v104;
            *(a2 + 1) = v106;
            v46 |= (v107 & 0x7F) << v102;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v102 += 7;
            ++v104;
            --v105;
            ++v106;
            v14 = v103++ > 8;
            if (v14)
            {
LABEL_109:
              LODWORD(v46) = 0;
              goto LABEL_159;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v46) = 0;
          }
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
            *(a2 + 1) = v48;
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
              goto LABEL_109;
            }
          }
        }

LABEL_159:
        *(this + 12) = v46;
        goto LABEL_18;
      }
    }

    else
    {
      switch(v22)
      {
        case 7:
          *(this + 64) |= 0x20u;
          v69 = *(a2 + 1);
          v68 = *(a2 + 2);
          v70 = *a2;
          if (v69 > 0xFFFFFFFFFFFFFFF5 || v69 + 10 > v68)
          {
            v120 = 0;
            v121 = 0;
            v73 = 0;
            v122 = (v70 + v69);
            v18 = v68 >= v69;
            v123 = v68 - v69;
            if (!v18)
            {
              v123 = 0;
            }

            v124 = v69 + 1;
            while (1)
            {
              if (!v123)
              {
                LODWORD(v73) = 0;
                *(a2 + 24) = 1;
                goto LABEL_168;
              }

              v125 = *v122;
              *(a2 + 1) = v124;
              v73 |= (v125 & 0x7F) << v120;
              if ((v125 & 0x80) == 0)
              {
                break;
              }

              v120 += 7;
              ++v122;
              --v123;
              ++v124;
              v14 = v121++ > 8;
              if (v14)
              {
LABEL_133:
                LODWORD(v73) = 0;
                goto LABEL_168;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v73) = 0;
            }
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
              *(a2 + 1) = v75;
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
                goto LABEL_133;
              }
            }
          }

LABEL_168:
          *(this + 13) = v73;
          goto LABEL_18;
        case 8:
          *(this + 64) |= 0x40u;
          v82 = *(a2 + 1);
          v81 = *(a2 + 2);
          v83 = *a2;
          if (v82 > 0xFFFFFFFFFFFFFFF5 || v82 + 10 > v81)
          {
            v126 = 0;
            v127 = 0;
            v86 = 0;
            v128 = (v83 + v82);
            v18 = v81 >= v82;
            v129 = v81 - v82;
            if (!v18)
            {
              v129 = 0;
            }

            v130 = v82 + 1;
            while (1)
            {
              if (!v129)
              {
                LODWORD(v86) = 0;
                *(a2 + 24) = 1;
                goto LABEL_171;
              }

              v131 = *v128;
              *(a2 + 1) = v130;
              v86 |= (v131 & 0x7F) << v126;
              if ((v131 & 0x80) == 0)
              {
                break;
              }

              v126 += 7;
              ++v128;
              --v129;
              ++v130;
              v14 = v127++ > 8;
              if (v14)
              {
LABEL_143:
                LODWORD(v86) = 0;
                goto LABEL_171;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v86) = 0;
            }
          }

          else
          {
            v84 = 0;
            v85 = 0;
            v86 = 0;
            v87 = (v83 + v82);
            v88 = v82 + 1;
            while (1)
            {
              *(a2 + 1) = v88;
              v89 = *v87++;
              v86 |= (v89 & 0x7F) << v84;
              if ((v89 & 0x80) == 0)
              {
                break;
              }

              v84 += 7;
              ++v88;
              v14 = v85++ > 8;
              if (v14)
              {
                goto LABEL_143;
              }
            }
          }

LABEL_171:
          *(this + 14) = v86;
          goto LABEL_18;
        case 9:
          operator new();
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v132 = 0;
      return v132 & 1;
    }

LABEL_18:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v132 = v4 ^ 1;
  return v132 & 1;
}

uint64_t CMMsl::ClefCalibration::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 64);
  if ((v4 & 2) != 0)
  {
    v9 = *(this + 36);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 64);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(this + 64) & 8) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(v3 + 44);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = *(v3 + 32);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v12 = *(v3 + 40);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v13 = *(v3 + 60);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    v15 = *(v3 + 52);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 64) & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v14 = *(v3 + 48);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 64);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v4 & 0x40) != 0)
  {
LABEL_9:
    v5 = *(v3 + 56);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_10:
  v7 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v7 != v6)
  {
    v8 = *v7++;
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  return this;
}

BOOL CMMsl::ClefCalibration::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a2 + 64);
  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v3 & v2 & 0x80) == 0)
  {
    if (((v3 | v2) & 0x80) != 0)
    {
      return 0;
    }

LABEL_25:
    if ((v2 & 0x10) != 0)
    {
      if ((v3 & 0x10) == 0 || *(a1 + 48) != *(a2 + 48))
      {
        return 0;
      }
    }

    else if ((v3 & 0x10) != 0)
    {
      return 0;
    }

    if ((v2 & 0x20) != 0)
    {
      if ((v3 & 0x20) == 0 || *(a1 + 52) != *(a2 + 52))
      {
        return 0;
      }
    }

    else if ((v3 & 0x20) != 0)
    {
      return 0;
    }

    if ((v2 & 0x40) != 0)
    {
      if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
      {
        return 0;
      }
    }

    else if ((v3 & 0x40) != 0)
    {
      return 0;
    }

    return sub_25AB3398C(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16));
  }

  if (*(a1 + 60) == *(a2 + 60))
  {
    goto LABEL_25;
  }

  return 0;
}

BOOL sub_25AB3398C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  if (a1 == a2)
  {
    return 1;
  }

  v5 = a3;
  v6 = a1 + 8;
  do
  {
    v7 = *v5++;
    result = CMMsl::ClefCalibrationPoint::operator==(*(v6 - 8), v7);
    v9 = !result || v6 == a2;
    v6 += 8;
  }

  while (!v9);
  return result;
}

uint64_t CMMsl::ClefCalibration::hash_value(CMMsl::ClefCalibration *this)
{
  if ((*(this + 64) & 2) != 0)
  {
    v1 = *(this + 9);
    if ((*(this + 64) & 8) != 0)
    {
LABEL_3:
      v2 = *(this + 11);
      if (*(this + 64))
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 64) & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if (*(this + 64))
  {
LABEL_4:
    v3 = *(this + 8);
    if ((*(this + 64) & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v3 = 0;
  if ((*(this + 64) & 4) != 0)
  {
LABEL_5:
    v4 = *(this + 10);
    if ((*(this + 64) & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4 = 0;
  if ((*(this + 64) & 0x80) != 0)
  {
LABEL_6:
    v5 = *(this + 60);
    if ((*(this + 64) & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
  if ((*(this + 64) & 0x10) != 0)
  {
LABEL_7:
    v6 = *(this + 12);
    if ((*(this + 64) & 0x20) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v7 = 0;
    if ((*(this + 64) & 0x40) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v6 = 0;
  if ((*(this + 64) & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v7 = *(this + 13);
  if ((*(this + 64) & 0x40) != 0)
  {
LABEL_9:
    v8 = *(this + 14);
    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
LABEL_18:
  v10 = *(this + 1);
  v9 = *(this + 2);
  if (v10 == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v13 = *v10++;
      v12 = v13;
      v14 = *(v13 + 20);
      v15 = *(v13 + 8);
      v16 = *(v13 + 12);
      if ((v14 & 1) == 0)
      {
        v15 = 0;
      }

      v17 = *(v12 + 16);
      if ((v14 & 4) == 0)
      {
        v17 = 0;
      }

      if ((v14 & 2) != 0)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      v11 ^= v15 ^ v17 ^ v18;
    }

    while (v10 != v9);
  }

  return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v11;
}

uint64_t CMMsl::ClefCalibrationPoint::ClefCalibrationPoint(uint64_t this)
{
  *this = &unk_286C1F2A8;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C1F2A8;
  *(this + 20) = 0;
  return this;
}

void CMMsl::ClefCalibrationPoint::~ClefCalibrationPoint(CMMsl::ClefCalibrationPoint *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::ClefCalibrationPoint::ClefCalibrationPoint(uint64_t this, const CMMsl::ClefCalibrationPoint *a2)
{
  *this = &unk_286C1F2A8;
  *(this + 20) = 0;
  v2 = *(a2 + 20);
  if (v2)
  {
    v4 = *(a2 + 2);
    v3 = 1;
    *(this + 20) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 20);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 20) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 4);
    v3 |= 4u;
    *(this + 20) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 20);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 3);
    *(this + 20) = v3 | 2;
    *(this + 12) = v6;
  }

  return this;
}

uint64_t CMMsl::ClefCalibrationPoint::operator=(uint64_t a1, const CMMsl::ClefCalibrationPoint *a2)
{
  if (a1 != a2)
  {
    CMMsl::ClefCalibrationPoint::ClefCalibrationPoint(v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    PB::Base::~Base(v5);
  }

  return a1;
}

_DWORD *CMMsl::swap(_DWORD *this, CMMsl::ClefCalibrationPoint *a2, CMMsl::ClefCalibrationPoint *a3)
{
  v3 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v6;
  return this;
}

uint64_t CMMsl::ClefCalibrationPoint::ClefCalibrationPoint(uint64_t result, _DWORD *a2)
{
  *result = &unk_286C1F2A8;
  *(result + 20) = a2[5];
  a2[5] = 0;
  *(result + 8) = a2[2];
  *(result + 16) = a2[4];
  *(result + 12) = a2[3];
  return result;
}

{
  *result = &unk_286C1F2A8;
  *(result + 20) = a2[5];
  a2[5] = 0;
  *(result + 8) = a2[2];
  *(result + 16) = a2[4];
  *(result + 12) = a2[3];
  return result;
}

uint64_t CMMsl::ClefCalibrationPoint::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6 = &unk_286C1F2A8;
    v3 = *(a2 + 8);
    *(a2 + 20) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v7 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

uint64_t CMMsl::ClefCalibrationPoint::formatText(CMMsl::ClefCalibrationPoint *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if (v5)
  {
    v7 = *(this + 2);
    PB::TextFormatter::format(a2, "base");
    v5 = *(this + 20);
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

  else if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 3);
  PB::TextFormatter::format(a2, "distance");
  if ((*(this + 20) & 4) != 0)
  {
LABEL_4:
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "peak");
  }

LABEL_5:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ClefCalibrationPoint::readFrom(CMMsl::ClefCalibrationPoint *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
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
        goto LABEL_90;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 20) |= 2u;
        v39 = *(a2 + 1);
        v2 = *(a2 + 2);
        v40 = *a2;
        if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
        {
          v54 = 0;
          v55 = 0;
          v43 = 0;
          if (v2 <= v39)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v56 = (v40 + v39);
          v57 = v3 - v39;
          v58 = v39 + 1;
          while (1)
          {
            if (!v57)
            {
              LODWORD(v43) = 0;
              *(a2 + 24) = 1;
              goto LABEL_84;
            }

            v59 = v58;
            v60 = *v56;
            *(a2 + 1) = v59;
            v43 |= (v60 & 0x7F) << v54;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            ++v56;
            --v57;
            v58 = v59 + 1;
            v14 = v55++ > 8;
            if (v14)
            {
              LODWORD(v43) = 0;
              goto LABEL_83;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v43) = 0;
          }

LABEL_83:
          v3 = v59;
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
            v3 = v45;
            *(a2 + 1) = v45;
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

LABEL_84:
        *(this + 3) = v43;
      }

      else if (v22 == 2)
      {
        *(this + 20) |= 4u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v47 = 0;
          v48 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v49 = (v32 + v31);
          v50 = v3 - v31;
          v51 = v31 + 1;
          while (1)
          {
            if (!v50)
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
              goto LABEL_80;
            }

            v52 = v51;
            v53 = *v49;
            *(a2 + 1) = v52;
            v35 |= (v53 & 0x7F) << v47;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            ++v49;
            --v50;
            v51 = v52 + 1;
            v14 = v48++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_79;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_79:
          v3 = v52;
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
            *(a2 + 1) = v37;
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

LABEL_80:
        *(this + 4) = v35;
      }

      else if (v22 == 1)
      {
        *(this + 20) |= 1u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v61 = 0;
          v62 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v63 = (v24 + v23);
          v64 = v3 - v23;
          v65 = v23 + 1;
          while (1)
          {
            if (!v64)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_88;
            }

            v66 = v65;
            v67 = *v63;
            *(a2 + 1) = v66;
            v27 |= (v67 & 0x7F) << v61;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            ++v63;
            --v64;
            v65 = v66 + 1;
            v14 = v62++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_87;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_87:
          v3 = v66;
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
            *(a2 + 1) = v29;
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

LABEL_88:
        *(this + 2) = v27;
      }

      else
      {
LABEL_17:
        if (!PB::Reader::skip(a2))
        {
          v68 = 0;
          return v68 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_90;
      }
    }

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
  }

LABEL_90:
  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t CMMsl::ClefCalibrationPoint::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 20) & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = *(v3 + 16);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 20) & 2) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  v5 = *(this + 8);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 20);
  if ((v4 & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = *(v3 + 12);

  return PB::Writer::writeVarInt(a2);
}

BOOL CMMsl::ClefCalibrationPoint::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  if ((*(a1 + 20) & 4) != 0)
  {
    if ((*(a2 + 20) & 4) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 12) == *(a2 + 12);
  }

  return v2;
}

uint64_t CMMsl::ClefCalibrationPoint::hash_value(CMMsl::ClefCalibrationPoint *this)
{
  if ((*(this + 20) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 20) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v2 = 0;
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v3 = 0;
    return v2 ^ v1 ^ v3;
  }

  v1 = *(this + 2);
  if ((*(this + 20) & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(this + 4);
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v3 = *(this + 3);
  return v2 ^ v1 ^ v3;
}

uint64_t CMMsl::ClefMeasurement::ClefMeasurement(uint64_t this)
{
  *this = &unk_286C1F2E0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_286C1F2E0;
  *(this + 16) = 0;
  return this;
}

void CMMsl::ClefMeasurement::~ClefMeasurement(CMMsl::ClefMeasurement *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::ClefMeasurement::ClefMeasurement(CMMsl::ClefMeasurement *this, const CMMsl::ClefMeasurement *a2)
{
  *this = &unk_286C1F2E0;
  *(this + 4) = 0;
  if (*(a2 + 16))
  {
    result = *(a2 + 2);
    *(this + 16) = 1;
    *(this + 2) = result;
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
    result = *(a2 + 3);
    *(this + 16) = v2;
    *(this + 3) = result;
  }

  return result;
}

uint64_t CMMsl::ClefMeasurement::operator=(uint64_t a1, const CMMsl::ClefMeasurement *a2)
{
  if (a1 != a2)
  {
    CMMsl::ClefMeasurement::ClefMeasurement(v6, a2);
    v3 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::ClefMeasurement *a2, CMMsl::ClefMeasurement *a3)
{
  v3 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

float CMMsl::ClefMeasurement::ClefMeasurement(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1F2E0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

{
  *a1 = &unk_286C1F2E0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

uint64_t CMMsl::ClefMeasurement::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7[0] = &unk_286C1F2E0;
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    v8 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 16) = v3;
    *(a1 + 8) = v5;
    v7[1] = v4;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t CMMsl::ClefMeasurement::formatText(CMMsl::ClefMeasurement *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 16);
  if (v5)
  {
    PB::TextFormatter::format(a2, "concha", *(this + 2));
    v5 = *(this + 16);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "tragus", *(this + 3));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ClefMeasurement::readFrom(CMMsl::ClefMeasurement *this, PB::Reader *a2)
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
            goto LABEL_24;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_35;
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
          goto LABEL_24;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_35;
      }

      if ((v10 >> 3) == 2)
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 16) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_28;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_30:
        v2 = *(a2 + 1) + 4;
        *(a2 + 1) = v2;
        goto LABEL_31;
      }

LABEL_24:
      if (!PB::Reader::skip(a2))
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
LABEL_31:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_35;
      }
    }

    *(this + 16) |= 2u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
    {
LABEL_28:
      *(a2 + 24) = 1;
      goto LABEL_31;
    }

    *(this + 3) = *(*a2 + v2);
    goto LABEL_30;
  }

LABEL_35:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::ClefMeasurement::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 16);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 12);

    return PB::Writer::write(a2, v5);
  }

  return this;
}

BOOL CMMsl::ClefMeasurement::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  v2 = (*(a2 + 16) & 2) == 0;
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*(a2 + 16) & 2) != 0 && *(a1 + 12) == *(a2 + 12);
  }

  return v2;
}

uint64_t CMMsl::ClefMeasurement::hash_value(CMMsl::ClefMeasurement *this)
{
  if (*(this + 16))
  {
    v4 = *(this + 2);
    v1 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v1 = 0;
    }

    if ((*(this + 16) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v3 = 0;
    return v3 ^ v1;
  }

  v1 = 0;
  if ((*(this + 16) & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 = *(this + 3);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  return v3 ^ v1;
}

uint64_t CMMsl::ClefTemperature::ClefTemperature(uint64_t this)
{
  *this = &unk_286C1F318;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_286C1F318;
  *(this + 16) = 0;
  return this;
}

void CMMsl::ClefTemperature::~ClefTemperature(CMMsl::ClefTemperature *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::ClefTemperature::ClefTemperature(uint64_t this, const CMMsl::ClefTemperature *a2)
{
  *this = &unk_286C1F318;
  *(this + 16) = 0;
  if (*(a2 + 16))
  {
    v3 = *(a2 + 2);
    *(this + 16) = 1;
    *(this + 8) = v3;
    v2 = 3;
    if ((*(a2 + 16) & 2) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 16) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 3);
    *(this + 16) = v2;
    *(this + 12) = v4;
  }

  return this;
}

uint64_t CMMsl::ClefTemperature::operator=(uint64_t a1, const CMMsl::ClefTemperature *a2)
{
  if (a1 != a2)
  {
    CMMsl::ClefTemperature::ClefTemperature(v6, a2);
    v3 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

_DWORD *CMMsl::swap(_DWORD *this, CMMsl::ClefTemperature *a2, CMMsl::ClefTemperature *a3)
{
  v3 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  return this;
}

uint64_t CMMsl::ClefTemperature::ClefTemperature(uint64_t result, _DWORD *a2)
{
  *result = &unk_286C1F318;
  *(result + 16) = a2[4];
  a2[4] = 0;
  *(result + 8) = a2[2];
  *(result + 12) = a2[3];
  return result;
}

{
  *result = &unk_286C1F318;
  *(result + 16) = a2[4];
  a2[4] = 0;
  *(result + 8) = a2[2];
  *(result + 12) = a2[3];
  return result;
}

uint64_t CMMsl::ClefTemperature::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7[0] = &unk_286C1F318;
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    v8 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 16) = v3;
    *(a1 + 8) = v5;
    v7[1] = v4;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t CMMsl::ClefTemperature::formatText(CMMsl::ClefTemperature *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 16);
  if (v5)
  {
    v6 = *(this + 2);
    PB::TextFormatter::format(a2, "conchaTemp");
    v5 = *(this + 16);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 3);
    PB::TextFormatter::format(a2, "tragusTemp");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ClefTemperature::readFrom(CMMsl::ClefTemperature *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
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
          goto LABEL_28;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_69;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 16) |= 2u;
        v30 = *(a2 + 1);
        v2 = *(a2 + 2);
        v31 = *a2;
        if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
        {
          v45 = 0;
          v46 = 0;
          v34 = 0;
          if (v2 <= v30)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v47 = (v31 + v30);
          v48 = v3 - v30;
          v49 = v30 + 1;
          while (1)
          {
            if (!v48)
            {
              LODWORD(v34) = 0;
              *(a2 + 24) = 1;
              goto LABEL_64;
            }

            v50 = v49;
            v51 = *v47;
            *(a2 + 1) = v50;
            v34 |= (v51 & 0x7F) << v45;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            ++v47;
            --v48;
            v49 = v50 + 1;
            v14 = v46++ > 8;
            if (v14)
            {
              LODWORD(v34) = 0;
              goto LABEL_63;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v34) = 0;
          }

LABEL_63:
          v3 = v50;
        }

        else
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          while (1)
          {
            v3 = v36;
            *(a2 + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
              LODWORD(v34) = 0;
              break;
            }
          }
        }

LABEL_64:
        *(this + 3) = v34;
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 16) |= 1u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v38 = 0;
          v39 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v40 = (v23 + v22);
          v41 = v3 - v22;
          v42 = v22 + 1;
          while (1)
          {
            if (!v41)
            {
              LODWORD(v26) = 0;
              *(a2 + 24) = 1;
              goto LABEL_60;
            }

            v43 = v42;
            v44 = *v40;
            *(a2 + 1) = v43;
            v26 |= (v44 & 0x7F) << v38;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            ++v40;
            --v41;
            v42 = v43 + 1;
            v14 = v39++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              goto LABEL_59;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_59:
          v3 = v43;
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
            v3 = v28;
            *(a2 + 1) = v28;
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

LABEL_60:
        *(this + 2) = v26;
      }

      else
      {
LABEL_28:
        if (!PB::Reader::skip(a2))
        {
          v52 = 0;
          return v52 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_69;
      }
    }

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
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_28;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_69:
  v52 = v4 ^ 1;
  return v52 & 1;
}

uint64_t CMMsl::ClefTemperature::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 16);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 12);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL CMMsl::ClefTemperature::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  v2 = (*(a2 + 16) & 2) == 0;
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*(a2 + 16) & 2) != 0 && *(a1 + 12) == *(a2 + 12);
  }

  return v2;
}

uint64_t CMMsl::ClefTemperature::hash_value(CMMsl::ClefTemperature *this)
{
  if (*(this + 16))
  {
    v1 = *(this + 2);
    if ((*(this + 16) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = 0;
    return v2 ^ v1;
  }

  v1 = 0;
  if ((*(this + 16) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = *(this + 3);
  return v2 ^ v1;
}

uint64_t CMMsl::CoarseElevationChange::CoarseElevationChange(uint64_t this)
{
  *this = &unk_286C1F350;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C1F350;
  *(this + 20) = 0;
  return this;
}

void CMMsl::CoarseElevationChange::~CoarseElevationChange(CMMsl::CoarseElevationChange *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::CoarseElevationChange::CoarseElevationChange(uint64_t this, const CMMsl::CoarseElevationChange *a2)
{
  *this = &unk_286C1F350;
  *(this + 20) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 1);
    *(this + 20) = 1;
    *(this + 8) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 2) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 4);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

const CMMsl::CoarseElevationChange *CMMsl::CoarseElevationChange::operator=(const CMMsl::CoarseElevationChange *a1, const CMMsl::CoarseElevationChange *a2)
{
  if (a1 != a2)
  {
    CMMsl::CoarseElevationChange::CoarseElevationChange(v7, a2);
    v3 = v9;
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    *(a1 + 1) = v8;
    *(a1 + 2) = v3;
    v8 = v4;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::CoarseElevationChange *a2, CMMsl::CoarseElevationChange *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  return result;
}

double CMMsl::CoarseElevationChange::CoarseElevationChange(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1F350;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C1F350;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::CoarseElevationChange::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8[0] = &unk_286C1F350;
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    *(a2 + 20) = 0;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    v8[1] = v5;
    v8[2] = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::CoarseElevationChange::formatText(CMMsl::CoarseElevationChange *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "elevationAscended");
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "startTime", *(this + 1));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::CoarseElevationChange::readFrom(CMMsl::CoarseElevationChange *this, PB::Reader *a2)
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
          goto LABEL_24;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_51;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 2u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v2 = *(a2 + 1);
          }

          v32 = (v23 + v22);
          v33 = v2 - v22;
          v34 = v22 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v26) = 0;
              *(a2 + 24) = 1;
              goto LABEL_46;
            }

            v35 = v34;
            v36 = *v32;
            *(a2 + 1) = v35;
            v26 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            ++v32;
            --v33;
            v34 = v35 + 1;
            v14 = v31++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              goto LABEL_45;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_45:
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
            *(a2 + 1) = v28;
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

LABEL_46:
        *(this + 4) = v26;
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 20) |= 1u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
LABEL_24:
        if (!PB::Reader::skip(a2))
        {
          v37 = 0;
          return v37 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_51;
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
        goto LABEL_24;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_51:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t CMMsl::CoarseElevationChange::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL CMMsl::CoarseElevationChange::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::CoarseElevationChange::hash_value(CMMsl::CoarseElevationChange *this)
{
  if (*(this + 20))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0;
    return v2 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 4);
  return v2 ^ *&v1;
}

uint64_t CMMsl::CompanionStepCountElevation::CompanionStepCountElevation(uint64_t this)
{
  *this = &unk_286C1F388;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_286C1F388;
  *(this + 24) = 0;
  return this;
}

void CMMsl::CompanionStepCountElevation::~CompanionStepCountElevation(CMMsl::CompanionStepCountElevation *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::CompanionStepCountElevation::CompanionStepCountElevation(uint64_t this, const CMMsl::CompanionStepCountElevation *a2)
{
  *this = &unk_286C1F388;
  *(this + 24) = 0;
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 24) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 24) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 4);
    v3 |= 2u;
    *(this + 24) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 5);
    *(this + 24) = v3 | 4;
    *(this + 20) = v6;
  }

  return this;
}

uint64_t CMMsl::CompanionStepCountElevation::operator=(uint64_t a1, const CMMsl::CompanionStepCountElevation *a2)
{
  if (a1 != a2)
  {
    CMMsl::CompanionStepCountElevation::CompanionStepCountElevation(&v8, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v3;
    v4 = v10;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(a1 + 8) = v9;
    *(a1 + 16) = v4;
    v9 = v5;
    v10 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::CompanionStepCountElevation *a2, CMMsl::CompanionStepCountElevation *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  return result;
}

double CMMsl::CompanionStepCountElevation::CompanionStepCountElevation(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1F388;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return result;
}

{
  *a1 = &unk_286C1F388;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return result;
}

uint64_t CMMsl::CompanionStepCountElevation::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v6;
    v8[0] = &unk_286C1F388;
    v9 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8[1] = v4;
    v8[2] = v5;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::CompanionStepCountElevation::formatText(CMMsl::CompanionStepCountElevation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "elevationAscended");
    v5 = *(this + 24);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 5);
  PB::TextFormatter::format(a2, "elevationDescended");
  if (*(this + 24))
  {
LABEL_4:
    PB::TextFormatter::format(a2, "startTime", *(this + 1));
  }

LABEL_5:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::CompanionStepCountElevation::readFrom(CMMsl::CompanionStepCountElevation *this, PB::Reader *a2)
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
          goto LABEL_17;
        }
      }

LABEL_22:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_71;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 24) |= 4u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v46 = 0;
          v47 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v2 = *(a2 + 1);
          }

          v48 = (v32 + v31);
          v49 = v2 - v31;
          v50 = v31 + 1;
          while (1)
          {
            if (!v49)
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
              goto LABEL_69;
            }

            v51 = v50;
            v52 = *v48;
            *(a2 + 1) = v51;
            v35 |= (v52 & 0x7F) << v46;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            ++v48;
            --v49;
            v50 = v51 + 1;
            v14 = v47++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_68;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_68:
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
            *(a2 + 1) = v37;
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

LABEL_69:
        *(this + 5) = v35;
      }

      else if (v22 == 2)
      {
        *(this + 24) |= 2u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v39 = 0;
          v40 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          v41 = (v24 + v23);
          v42 = v2 - v23;
          v43 = v23 + 1;
          while (1)
          {
            if (!v42)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_65;
            }

            v44 = v43;
            v45 = *v41;
            *(a2 + 1) = v44;
            v27 |= (v45 & 0x7F) << v39;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            ++v41;
            --v42;
            v43 = v44 + 1;
            v14 = v40++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_64;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_64:
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
            *(a2 + 1) = v29;
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

LABEL_65:
        *(this + 4) = v27;
      }

      else if (v22 == 1)
      {
        *(this + 24) |= 1u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
LABEL_17:
        if (!PB::Reader::skip(a2))
        {
          v53 = 0;
          return v53 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_71;
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
  }

LABEL_71:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::CompanionStepCountElevation::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 24) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = *(v3 + 16);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 24) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 8));
  v4 = *(v3 + 24);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v6 = *(v3 + 20);

  return PB::Writer::writeVarInt(a2);
}

BOOL CMMsl::CompanionStepCountElevation::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 24))
  {
    return 0;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 4) == 0;
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*(a2 + 24) & 4) != 0 && *(a1 + 20) == *(a2 + 20);
  }

  return v2;
}

uint64_t CMMsl::CompanionStepCountElevation::hash_value(CMMsl::CompanionStepCountElevation *this)
{
  if ((*(this + 24) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 24) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v2 = 0;
    if ((*(this + 24) & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    v3 = 0;
    return v2 ^ *&v1 ^ v3;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v2 = *(this + 4);
  if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v3 = *(this + 5);
  return v2 ^ *&v1 ^ v3;
}

uint64_t CMMsl::Compass::Compass(uint64_t this)
{
  *this = &unk_286C1F3C0;
  *(this + 68) = 0;
  return this;
}

{
  *this = &unk_286C1F3C0;
  *(this + 68) = 0;
  return this;
}

void CMMsl::Compass::~Compass(CMMsl::Compass *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::Compass::Compass(CMMsl::Compass *this, const CMMsl::Compass *a2)
{
  *this = &unk_286C1F3C0;
  *(this + 17) = 0;
  v2 = *(a2 + 34);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 34) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 34);
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 34) & 0x800) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 14);
    v3 |= 0x800u;
    *(this + 34) = v3;
    *(this + 14) = v4;
    v2 = *(a2 + 34);
  }

LABEL_6:
  if ((v2 & 0x2000) != 0)
  {
    LODWORD(v4) = *(a2 + 16);
    v3 |= 0x2000u;
    *(this + 34) = v3;
    *(this + 16) = v4;
    v2 = *(a2 + 34);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(v4) = *(a2 + 4);
  v3 |= 2u;
  *(this + 34) = v3;
  *(this + 4) = v4;
  v2 = *(a2 + 34);
  if ((v2 & 0x100) == 0)
  {
LABEL_9:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  LODWORD(v4) = *(a2 + 11);
  v3 |= 0x100u;
  *(this + 34) = v3;
  *(this + 11) = v4;
  v2 = *(a2 + 34);
  if ((v2 & 0x200) == 0)
  {
LABEL_10:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  LODWORD(v4) = *(a2 + 12);
  v3 |= 0x200u;
  *(this + 34) = v3;
  *(this + 12) = v4;
  v2 = *(a2 + 34);
  if ((v2 & 0x400) == 0)
  {
LABEL_11:
    if ((v2 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  LODWORD(v4) = *(a2 + 13);
  v3 |= 0x400u;
  *(this + 34) = v3;
  *(this + 13) = v4;
  v2 = *(a2 + 34);
  if ((v2 & 4) == 0)
  {
LABEL_12:
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  LODWORD(v4) = *(a2 + 5);
  v3 |= 4u;
  *(this + 34) = v3;
  *(this + 5) = v4;
  v2 = *(a2 + 34);
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
  LODWORD(v4) = *(a2 + 6);
  v3 |= 8u;
  *(this + 34) = v3;
  *(this + 6) = v4;
  v2 = *(a2 + 34);
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
  LODWORD(v4) = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 34) = v3;
  *(this + 7) = v4;
  v2 = *(a2 + 34);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  v5 = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 34) = v3;
  *(this + 8) = v5;
  v2 = *(a2 + 34);
  if ((v2 & 0x1000) == 0)
  {
LABEL_16:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  LODWORD(v4) = *(a2 + 15);
  v3 |= 0x1000u;
  *(this + 34) = v3;
  *(this + 15) = v4;
  v2 = *(a2 + 34);
  if ((v2 & 0x80) == 0)
  {
LABEL_17:
    if ((v2 & 0x40) == 0)
    {
      return *&v4;
    }

    goto LABEL_30;
  }

LABEL_29:
  LODWORD(v4) = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 34) = v3;
  *(this + 10) = v4;
  if ((*(a2 + 34) & 0x40) == 0)
  {
    return *&v4;
  }

LABEL_30:
  LODWORD(v4) = *(a2 + 9);
  *(this + 34) = v3 | 0x40;
  *(this + 9) = v4;
  return *&v4;
}

CMMsl *CMMsl::Compass::operator=(CMMsl *a1, const CMMsl::Compass *a2)
{
  if (a1 != a2)
  {
    CMMsl::Compass::Compass(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::Compass *a2, CMMsl::Compass *a3)
{
  v3 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LODWORD(v4) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  LODWORD(v4) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  result = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = result;
  return result;
}

float CMMsl::Compass::Compass(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1F3C0;
  *(a1 + 68) = *(a2 + 68);
  *(a2 + 68) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  return result;
}

CMMsl *CMMsl::Compass::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::Compass::Compass(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::Compass::formatText(CMMsl::Compass *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 34);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "accuracy", *(this + 4));
    v5 = *(this + 34);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "biasX", *(this + 5));
  v5 = *(this + 34);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "biasY", *(this + 6));
  v5 = *(this + 34);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "biasZ", *(this + 7));
  v5 = *(this + 34);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v6 = *(this + 8);
  PB::TextFormatter::format(a2, "calibrationLevel");
  v5 = *(this + 34);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "horizontal", *(this + 9));
  v5 = *(this + 34);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "inclination", *(this + 10));
  v5 = *(this + 34);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "magneticFieldX", *(this + 11));
  v5 = *(this + 34);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "magneticFieldY", *(this + 12));
  v5 = *(this + 34);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "magneticFieldZ", *(this + 13));
  v5 = *(this + 34);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "magneticHeading", *(this + 14));
  v5 = *(this + 34);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "magnitude", *(this + 15));
  v5 = *(this + 34);
  if ((v5 & 1) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  if ((*(this + 34) & 0x2000) != 0)
  {
LABEL_15:
    PB::TextFormatter::format(a2, "trueHeading", *(this + 16));
  }

LABEL_16:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::Compass::readFrom(CMMsl::Compass *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_87:
    v37 = v4 ^ 1;
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
        goto LABEL_87;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 34) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_77;
        case 2u:
          *(this + 34) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_76;
        case 3u:
          *(this + 34) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_76;
        case 4u:
          *(this + 34) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_76;
        case 5u:
          *(this + 34) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_76;
        case 6u:
          *(this + 34) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_76;
        case 7u:
          *(this + 34) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_76;
        case 8u:
          *(this + 34) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_76;
        case 9u:
          *(this + 34) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_76;
        case 0xAu:
          *(this + 34) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_76;
        case 0xBu:
          *(this + 34) |= 0x20u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v30 = 0;
            v31 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v32 = (v23 + v22);
            v33 = v2 - v22;
            v34 = v22 + 1;
            while (1)
            {
              if (!v33)
              {
                LODWORD(v26) = 0;
                *(a2 + 24) = 1;
                goto LABEL_82;
              }

              v35 = v34;
              v36 = *v32;
              *(a2 + 1) = v35;
              v26 |= (v36 & 0x7F) << v30;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              ++v32;
              --v33;
              v34 = v35 + 1;
              v14 = v31++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_81:
                v2 = v35;
                goto LABEL_82;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_81;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          do
          {
            v2 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              goto LABEL_82;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_82:
          *(this + 8) = v26;
          break;
        case 0xCu:
          *(this + 34) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_76;
        case 0xDu:
          *(this + 34) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_76;
        case 0xEu:
          *(this + 34) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_66:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 9) = *(*a2 + v2);
LABEL_76:
            v2 = *(a2 + 1) + 4;
LABEL_77:
            *(a2 + 1) = v2;
          }

          break;
        default:
          goto LABEL_17;
      }

LABEL_83:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_87;
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
        goto LABEL_87;
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
      goto LABEL_83;
    }

    v37 = 0;
  }

  return v37 & 1;
}

uint64_t CMMsl::Compass::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 68);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 68);
    if ((v4 & 0x800) == 0)
    {
LABEL_3:
      if ((v4 & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*(this + 68) & 0x800) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 68);
  if ((v4 & 0x2000) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 0x100) == 0)
  {
LABEL_6:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 44));
  v4 = *(v3 + 68);
  if ((v4 & 0x200) == 0)
  {
LABEL_7:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 68);
  if ((v4 & 0x400) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 52));
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 68);
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
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 68);
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
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 68);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v5 = *(v3 + 32);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 68);
  if ((v4 & 0x1000) == 0)
  {
LABEL_13:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    this = PB::Writer::write(a2, *(v3 + 40));
    if ((*(v3 + 68) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 60));
  v4 = *(v3 + 68);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v4 & 0x40) == 0)
  {
    return this;
  }

LABEL_29:
  v6 = *(v3 + 36);

  return PB::Writer::write(a2, v6);
}

BOOL CMMsl::Compass::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 68);
  v3 = *(a2 + 68);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((*(a1 + 68) & 0x800) != 0)
  {
    if ((*(a2 + 68) & 0x800) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x800) != 0)
  {
    return 0;
  }

  if ((*(a1 + 68) & 0x2000) != 0)
  {
    if ((*(a2 + 68) & 0x2000) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 68) & 0x100) != 0)
  {
    if ((*(a2 + 68) & 0x100) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(a1 + 68) & 0x200) != 0)
  {
    if ((*(a2 + 68) & 0x200) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 68) & 0x400) != 0)
  {
    if ((*(a2 + 68) & 0x400) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 68) & 0x1000) != 0)
  {
    if ((*(a2 + 68) & 0x1000) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x40) == 0;
  if ((v2 & 0x40) != 0)
  {
    return (v3 & 0x40) != 0 && *(a1 + 36) == *(a2 + 36);
  }

  return v4;
}

uint64_t CMMsl::Compass::hash_value(CMMsl::Compass *this)
{
  v1 = *(this + 34);
  if ((v1 & 1) == 0)
  {
    v2 = 0.0;
    if ((*(this + 34) & 0x800) != 0)
    {
      goto LABEL_3;
    }

LABEL_43:
    v4 = 0;
    if ((*(this + 34) & 0x2000) != 0)
    {
      goto LABEL_6;
    }

LABEL_44:
    v6 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_45:
    v8 = 0;
    if ((*(this + 34) & 0x100) != 0)
    {
      goto LABEL_12;
    }

LABEL_46:
    v10 = 0;
    if ((*(this + 34) & 0x200) != 0)
    {
      goto LABEL_15;
    }

LABEL_47:
    v12 = 0;
    if ((*(this + 34) & 0x400) != 0)
    {
      goto LABEL_18;
    }

LABEL_48:
    v14 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_21;
    }

LABEL_49:
    v16 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_24;
    }

LABEL_50:
    v18 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_27;
    }

LABEL_51:
    v20 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_52;
  }

  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 34) & 0x800) == 0)
  {
    goto LABEL_43;
  }

LABEL_3:
  v3 = *(this + 14);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((*(this + 34) & 0x2000) == 0)
  {
    goto LABEL_44;
  }

LABEL_6:
  v5 = *(this + 16);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_45;
  }

LABEL_9:
  v7 = *(this + 4);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((*(this + 34) & 0x100) == 0)
  {
    goto LABEL_46;
  }

LABEL_12:
  v9 = *(this + 11);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((*(this + 34) & 0x200) == 0)
  {
    goto LABEL_47;
  }

LABEL_15:
  v11 = *(this + 12);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((*(this + 34) & 0x400) == 0)
  {
    goto LABEL_48;
  }

LABEL_18:
  v13 = *(this + 13);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_49;
  }

LABEL_21:
  v15 = *(this + 5);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_50;
  }

LABEL_24:
  v17 = *(this + 6);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_51;
  }

LABEL_27:
  v19 = *(this + 7);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  if ((v1 & 0x20) != 0)
  {
LABEL_30:
    v21 = *(this + 8);
    if ((*(this + 34) & 0x1000) != 0)
    {
      goto LABEL_31;
    }

LABEL_53:
    v23 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_54;
  }

LABEL_52:
  v21 = 0;
  if ((*(this + 34) & 0x1000) == 0)
  {
    goto LABEL_53;
  }

LABEL_31:
  v22 = *(this + 15);
  v23 = LODWORD(v22);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

  if ((v1 & 0x80) != 0)
  {
LABEL_34:
    v24 = *(this + 10);
    v25 = LODWORD(v24);
    if (v24 == 0.0)
    {
      v25 = 0;
    }

    if ((v1 & 0x40) != 0)
    {
      goto LABEL_37;
    }

LABEL_55:
    v27 = 0;
    return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v21 ^ v23 ^ v25 ^ v27;
  }

LABEL_54:
  v25 = 0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_55;
  }

LABEL_37:
  v26 = *(this + 9);
  v27 = LODWORD(v26);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

  return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v21 ^ v23 ^ v25 ^ v27;
}

uint64_t CMMsl::CompassAlignment::CompassAlignment(uint64_t this)
{
  *this = &unk_286C1F3F8;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C1F3F8;
  *(this + 20) = 0;
  return this;
}

void CMMsl::CompassAlignment::~CompassAlignment(CMMsl::CompassAlignment *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::CompassAlignment::CompassAlignment(uint64_t this, const CMMsl::CompassAlignment *a2)
{
  *this = &unk_286C1F3F8;
  *(this + 20) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 1);
    *(this + 20) = 1;
    *(this + 8) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 2) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 4);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

const CMMsl::CompassAlignment *CMMsl::CompassAlignment::operator=(const CMMsl::CompassAlignment *a1, const CMMsl::CompassAlignment *a2)
{
  if (a1 != a2)
  {
    CMMsl::CompassAlignment::CompassAlignment(v7, a2);
    v3 = v9;
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    *(a1 + 1) = v8;
    *(a1 + 2) = v3;
    v8 = v4;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::CompassAlignment *a2, CMMsl::CompassAlignment *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  return result;
}

double CMMsl::CompassAlignment::CompassAlignment(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1F3F8;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C1F3F8;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::CompassAlignment::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8[0] = &unk_286C1F3F8;
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    *(a2 + 20) = 0;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    v8[1] = v5;
    v8[2] = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::CompassAlignment::formatText(CMMsl::CompassAlignment *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "compassJustAlignedToStableField");
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::CompassAlignment::readFrom(CMMsl::CompassAlignment *this, PB::Reader *a2)
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
          goto LABEL_24;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_51;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 2u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v2 = *(a2 + 1);
          }

          v32 = (v23 + v22);
          v33 = v2 - v22;
          v34 = v22 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v26) = 0;
              *(a2 + 24) = 1;
              goto LABEL_46;
            }

            v35 = v34;
            v36 = *v32;
            *(a2 + 1) = v35;
            v26 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            ++v32;
            --v33;
            v34 = v35 + 1;
            v14 = v31++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              goto LABEL_45;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_45:
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
            *(a2 + 1) = v28;
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

LABEL_46:
        *(this + 4) = v26;
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 20) |= 1u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
LABEL_24:
        if (!PB::Reader::skip(a2))
        {
          v37 = 0;
          return v37 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_51;
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
        goto LABEL_24;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_51:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t CMMsl::CompassAlignment::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL CMMsl::CompassAlignment::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::CompassAlignment::hash_value(CMMsl::CompassAlignment *this)
{
  if (*(this + 20))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0;
    return v2 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 4);
  return v2 ^ *&v1;
}

uint64_t CMMsl::CompassCalibration::CompassCalibration(uint64_t this)
{
  *this = &unk_286C1F430;
  *(this + 80) = 0;
  return this;
}

{
  *this = &unk_286C1F430;
  *(this + 80) = 0;
  return this;
}

void CMMsl::CompassCalibration::~CompassCalibration(CMMsl::CompassCalibration *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::CompassCalibration::CompassCalibration(CMMsl::CompassCalibration *this, const CMMsl::CompassCalibration *a2)
{
  *this = &unk_286C1F430;
  *(this + 20) = 0;
  v2 = *(a2 + 20);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 20) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 20);
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
    LODWORD(v4) = *(a2 + 4);
    v3 |= 2u;
    *(this + 20) = v3;
    *(this + 4) = v4;
    v2 = *(a2 + 20);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    LODWORD(v4) = *(a2 + 5);
    v3 |= 4u;
    *(this + 20) = v3;
    *(this + 5) = v4;
    v2 = *(a2 + 20);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x2000) == 0)
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

  LODWORD(v4) = *(a2 + 6);
  v3 |= 8u;
  *(this + 20) = v3;
  *(this + 6) = v4;
  v2 = *(a2 + 20);
  if ((v2 & 0x2000) == 0)
  {
LABEL_9:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  LODWORD(v4) = *(a2 + 16);
  v3 |= 0x2000u;
  *(this + 20) = v3;
  *(this + 16) = v4;
  v2 = *(a2 + 20);
  if ((v2 & 0x4000) == 0)
  {
LABEL_10:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  LODWORD(v4) = *(a2 + 17);
  v3 |= 0x4000u;
  *(this + 20) = v3;
  *(this + 17) = v4;
  v2 = *(a2 + 20);
  if ((v2 & 0x8000) == 0)
  {
LABEL_11:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  LODWORD(v4) = *(a2 + 18);
  v3 |= 0x8000u;
  *(this + 20) = v3;
  *(this + 18) = v4;
  v2 = *(a2 + 20);
  if ((v2 & 0x1000) == 0)
  {
LABEL_12:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  LODWORD(v4) = *(a2 + 15);
  v3 |= 0x1000u;
  *(this + 20) = v3;
  *(this + 15) = v4;
  v2 = *(a2 + 20);
  if ((v2 & 0x20) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  LODWORD(v4) = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 20) = v3;
  *(this + 8) = v4;
  v2 = *(a2 + 20);
  if ((v2 & 0x40) == 0)
  {
LABEL_14:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  LODWORD(v4) = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 20) = v3;
  *(this + 9) = v4;
  v2 = *(a2 + 20);
  if ((v2 & 0x80) == 0)
  {
LABEL_15:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  LODWORD(v4) = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 20) = v3;
  *(this + 10) = v4;
  v2 = *(a2 + 20);
  if ((v2 & 0x200) == 0)
  {
LABEL_16:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  LODWORD(v4) = *(a2 + 12);
  v3 |= 0x200u;
  *(this + 20) = v3;
  *(this + 12) = v4;
  v2 = *(a2 + 20);
  if ((v2 & 0x400) == 0)
  {
LABEL_17:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  LODWORD(v4) = *(a2 + 13);
  v3 |= 0x400u;
  *(this + 20) = v3;
  *(this + 13) = v4;
  v2 = *(a2 + 20);
  if ((v2 & 0x800) == 0)
  {
LABEL_18:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_34:
  LODWORD(v4) = *(a2 + 14);
  v3 |= 0x800u;
  *(this + 20) = v3;
  *(this + 14) = v4;
  v2 = *(a2 + 20);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_35:
  v5 = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 20) = v3;
  *(this + 7) = v5;
  v2 = *(a2 + 20);
  if ((v2 & 0x20000) == 0)
  {
LABEL_20:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  v6 = *(a2 + 77);
  v3 |= 0x20000u;
  *(this + 20) = v3;
  *(this + 77) = v6;
  v2 = *(a2 + 20);
  if ((v2 & 0x10000) == 0)
  {
LABEL_21:
    if ((v2 & 0x100) == 0)
    {
      return *&v4;
    }

    goto LABEL_38;
  }

LABEL_37:
  v7 = *(a2 + 76);
  v3 |= 0x10000u;
  *(this + 20) = v3;
  *(this + 76) = v7;
  if ((*(a2 + 20) & 0x100) == 0)
  {
    return *&v4;
  }

LABEL_38:
  LODWORD(v4) = *(a2 + 11);
  *(this + 20) = v3 | 0x100;
  *(this + 11) = v4;
  return *&v4;
}

CMMsl *CMMsl::CompassCalibration::operator=(CMMsl *a1, const CMMsl::CompassCalibration *a2)
{
  if (a1 != a2)
  {
    CMMsl::CompassCalibration::CompassCalibration(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::CompassCalibration *a2, CMMsl::CompassCalibration *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  LODWORD(v4) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v4;
  LODWORD(v4) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v4;
  LODWORD(v4) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LODWORD(v4) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  LODWORD(v4) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  v5 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v5;
  LOBYTE(v5) = *(this + 77);
  *(this + 77) = *(a2 + 77);
  *(a2 + 77) = v5;
  LOBYTE(v5) = *(this + 76);
  *(this + 76) = *(a2 + 76);
  *(a2 + 76) = v5;
  result = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = result;
  return result;
}

float CMMsl::CompassCalibration::CompassCalibration(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1F430;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 76) = *(a2 + 76);
  result = *(a2 + 44);
  *(a1 + 44) = result;
  return result;
}

CMMsl *CMMsl::CompassCalibration::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::CompassCalibration::CompassCalibration(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::CompassCalibration::formatText(CMMsl::CompassCalibration *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 0x10000) != 0)
  {
    v6 = *(this + 76);
    PB::TextFormatter::format(a2, "apAwake");
    v5 = *(this + 20);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "biasX", *(this + 4));
  v5 = *(this + 20);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "biasY", *(this + 5));
  v5 = *(this + 20);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "biasZ", *(this + 6));
  v5 = *(this + 20);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = *(this + 7);
  PB::TextFormatter::format(a2, "calibrationLevel");
  v5 = *(this + 20);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "cost", *(this + 8));
  v5 = *(this + 20);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "coverage", *(this + 9));
  v5 = *(this + 20);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "earthDiffRatio", *(this + 10));
  v5 = *(this + 20);
  if ((v5 & 0x20000) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  v8 = *(this + 77);
  PB::TextFormatter::format(a2, "hasConsistency");
  v5 = *(this + 20);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "planarity", *(this + 11));
  v5 = *(this + 20);
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
  PB::TextFormatter::format(a2, "poseX", *(this + 12));
  v5 = *(this + 20);
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
  PB::TextFormatter::format(a2, "poseY", *(this + 13));
  v5 = *(this + 20);
  if ((v5 & 0x800) == 0)
  {
LABEL_14:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "poseZ", *(this + 14));
  v5 = *(this + 20);
  if ((v5 & 0x1000) == 0)
  {
LABEL_15:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "quality", *(this + 15));
  v5 = *(this + 20);
  if ((v5 & 0x2000) == 0)
  {
LABEL_16:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "scaleX", *(this + 16));
  v5 = *(this + 20);
  if ((v5 & 0x4000) == 0)
  {
LABEL_17:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "scaleY", *(this + 17));
  v5 = *(this + 20);
  if ((v5 & 0x8000) == 0)
  {
LABEL_18:
    if ((v5 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "scaleZ", *(this + 18));
  if (*(this + 20))
  {
LABEL_19:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_20:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::CompassCalibration::readFrom(CMMsl::CompassCalibration *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_101:
    v41 = v4 ^ 1;
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
        goto LABEL_101;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 20) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_91;
        case 2u:
          *(this + 20) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_90;
        case 3u:
          *(this + 20) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_90;
        case 4u:
          *(this + 20) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_90;
        case 5u:
          *(this + 20) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_90;
        case 6u:
          *(this + 20) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_90;
        case 7u:
          *(this + 20) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_90;
        case 8u:
          *(this + 20) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_90;
        case 9u:
          *(this + 20) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_90;
        case 0xAu:
          *(this + 20) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_90;
        case 0xBu:
          *(this + 20) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_90;
        case 0xCu:
          *(this + 20) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_90;
        case 0xDu:
          *(this + 20) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_90;
        case 0xEu:
          *(this + 20) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_76;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_90;
        case 0xFu:
          *(this + 20) |= 0x10u;
          v24 = *(a2 + 1);
          v2 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v34 = 0;
            v35 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(a2 + 1);
            }

            v36 = (v25 + v24);
            v37 = v2 - v24;
            v38 = v24 + 1;
            while (1)
            {
              if (!v37)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_96;
              }

              v39 = v38;
              v40 = *v36;
              *(a2 + 1) = v39;
              v28 |= (v40 & 0x7F) << v34;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              ++v36;
              --v37;
              v38 = v39 + 1;
              v14 = v35++ > 8;
              if (v14)
              {
                LODWORD(v28) = 0;
LABEL_95:
                v2 = v39;
                goto LABEL_96;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_95;
          }

          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          do
          {
            v2 = v30;
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              goto LABEL_96;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_96:
          *(this + 7) = v28;
          break;
        case 0x10u:
          *(this + 20) |= 0x20000u;
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

          *(this + 77) = v33;
          break;
        case 0x11u:
          *(this + 20) |= 0x10000u;
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

          *(this + 76) = v23;
          break;
        case 0x12u:
          *(this + 20) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_76:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 11) = *(*a2 + v2);
LABEL_90:
            v2 = *(a2 + 1) + 4;
LABEL_91:
            *(a2 + 1) = v2;
          }

          break;
        default:
          goto LABEL_17;
      }

LABEL_97:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_101;
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
        goto LABEL_101;
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
      goto LABEL_97;
    }

    v41 = 0;
  }

  return v41 & 1;
}