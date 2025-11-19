uint64_t CMMsl::CompassCalibration::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 80);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
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

  this = PB::Writer::write(a2, *(v3 + 16));
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
  this = PB::Writer::write(a2, *(v3 + 20));
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
  this = PB::Writer::write(a2, *(v3 + 24));
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
  this = PB::Writer::write(a2, *(v3 + 64));
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
  this = PB::Writer::write(a2, *(v3 + 68));
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
  this = PB::Writer::write(a2, *(v3 + 72));
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
  this = PB::Writer::write(a2, *(v3 + 60));
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
  this = PB::Writer::write(a2, *(v3 + 32));
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
  this = PB::Writer::write(a2, *(v3 + 36));
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
  this = PB::Writer::write(a2, *(v3 + 40));
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
  this = PB::Writer::write(a2, *(v3 + 48));
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
  this = PB::Writer::write(a2, *(v3 + 52));
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
  this = PB::Writer::write(a2, *(v3 + 56));
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
  this = PB::Writer::writeVarInt(a2);
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
    this = PB::Writer::write(a2);
    if ((*(v3 + 80) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_37;
  }

LABEL_35:
  v6 = *(v3 + 77);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 80);
  if ((v4 & 0x10000) != 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  if ((v4 & 0x100) == 0)
  {
    return this;
  }

LABEL_37:
  v8 = *(v3 + 44);

  return PB::Writer::write(a2, v8);
}

BOOL CMMsl::CompassCalibration::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a2 + 80);
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

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
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

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
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

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
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

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 77) != *(a2 + 77))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  v4 = (*(a2 + 80) & 0x100) == 0;
  if ((v2 & 0x100) != 0)
  {
    return (v3 & 0x100) != 0 && *(a1 + 44) == *(a2 + 44);
  }

  return v4;
}

uint64_t CMMsl::CompassCalibration::hash_value(CMMsl::CompassCalibration *this)
{
  v1 = *(this + 20);
  if ((v1 & 1) == 0)
  {
    v2 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_47:
    v4 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_48:
    v6 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_49:
    v8 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_12;
    }

LABEL_50:
    v10 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_15;
    }

LABEL_51:
    v12 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_18;
    }

LABEL_52:
    v14 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_21;
    }

LABEL_53:
    v16 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_24;
    }

LABEL_54:
    v18 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_27;
    }

LABEL_55:
    v20 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_30;
    }

LABEL_56:
    v22 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_33;
    }

LABEL_57:
    v24 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_36;
    }

LABEL_58:
    v26 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_39;
    }

LABEL_59:
    v28 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_42;
    }

LABEL_60:
    v29 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_61;
  }

  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_47;
  }

LABEL_3:
  v3 = *(this + 4);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_48;
  }

LABEL_6:
  v5 = *(this + 5);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_49;
  }

LABEL_9:
  v7 = *(this + 6);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_50;
  }

LABEL_12:
  v9 = *(this + 16);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_51;
  }

LABEL_15:
  v11 = *(this + 17);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_52;
  }

LABEL_18:
  v13 = *(this + 18);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_53;
  }

LABEL_21:
  v15 = *(this + 15);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_54;
  }

LABEL_24:
  v17 = *(this + 8);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_55;
  }

LABEL_27:
  v19 = *(this + 9);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_56;
  }

LABEL_30:
  v21 = *(this + 10);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_57;
  }

LABEL_33:
  v23 = *(this + 12);
  v24 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_58;
  }

LABEL_36:
  v25 = *(this + 13);
  v26 = LODWORD(v25);
  if (v25 == 0.0)
  {
    v26 = 0;
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_59;
  }

LABEL_39:
  v27 = *(this + 14);
  v28 = LODWORD(v27);
  if (v27 == 0.0)
  {
    v28 = 0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_60;
  }

LABEL_42:
  v29 = *(this + 7);
  if ((v1 & 0x20000) != 0)
  {
LABEL_43:
    v30 = *(this + 77);
    goto LABEL_62;
  }

LABEL_61:
  v30 = 0;
LABEL_62:
  if ((v1 & 0x10000) == 0)
  {
    v31 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_64;
    }

LABEL_68:
    v33 = 0;
    return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v29 ^ v30 ^ v31 ^ v33;
  }

  v31 = *(this + 76);
  if ((v1 & 0x100) == 0)
  {
    goto LABEL_68;
  }

LABEL_64:
  v32 = *(this + 11);
  v33 = LODWORD(v32);
  if (v32 == 0.0)
  {
    v33 = 0;
  }

  return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v29 ^ v30 ^ v31 ^ v33;
}

uint64_t CMMsl::CompassCalibrationAttempt::CompassCalibrationAttempt(uint64_t this)
{
  *this = &unk_286C1F468;
  *(this + 80) = 0;
  return this;
}

{
  *this = &unk_286C1F468;
  *(this + 80) = 0;
  return this;
}

void CMMsl::CompassCalibrationAttempt::~CompassCalibrationAttempt(CMMsl::CompassCalibrationAttempt *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::CompassCalibrationAttempt::CompassCalibrationAttempt(CMMsl::CompassCalibrationAttempt *this, const CMMsl::CompassCalibrationAttempt *a2)
{
  *this = &unk_286C1F468;
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

  LODWORD(v4) = *(a2 + 6);
  v3 |= 8u;
  *(this + 20) = v3;
  *(this + 6) = v4;
  v2 = *(a2 + 20);
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
  LODWORD(v4) = *(a2 + 14);
  v3 |= 0x800u;
  *(this + 20) = v3;
  *(this + 14) = v4;
  v2 = *(a2 + 20);
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
  LODWORD(v4) = *(a2 + 15);
  v3 |= 0x1000u;
  *(this + 20) = v3;
  *(this + 15) = v4;
  v2 = *(a2 + 20);
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
  LODWORD(v4) = *(a2 + 16);
  v3 |= 0x2000u;
  *(this + 20) = v3;
  *(this + 16) = v4;
  v2 = *(a2 + 20);
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
  LODWORD(v4) = *(a2 + 13);
  v3 |= 0x400u;
  *(this + 20) = v3;
  *(this + 13) = v4;
  v2 = *(a2 + 20);
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
  LODWORD(v4) = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 20) = v3;
  *(this + 7) = v4;
  v2 = *(a2 + 20);
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
  LODWORD(v4) = *(a2 + 18);
  v3 |= 0x8000u;
  *(this + 20) = v3;
  *(this + 18) = v4;
  v2 = *(a2 + 20);
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
  *(this + 20) = v3;
  *(this + 76) = v5;
  v2 = *(a2 + 20);
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
  LODWORD(v4) = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 20) = v3;
  *(this + 8) = v4;
  v2 = *(a2 + 20);
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
  LODWORD(v4) = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 20) = v3;
  *(this + 9) = v4;
  v2 = *(a2 + 20);
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
  LODWORD(v4) = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 20) = v3;
  *(this + 10) = v4;
  v2 = *(a2 + 20);
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
  LODWORD(v4) = *(a2 + 17);
  v3 |= 0x4000u;
  *(this + 20) = v3;
  *(this + 17) = v4;
  v2 = *(a2 + 20);
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
  v6 = *(a2 + 11);
  v3 |= 0x100u;
  *(this + 20) = v3;
  *(this + 11) = v6;
  if ((*(a2 + 20) & 0x200) == 0)
  {
    return *&v4;
  }

LABEL_36:
  LODWORD(v4) = *(a2 + 12);
  *(this + 20) = v3 | 0x200;
  *(this + 12) = v4;
  return *&v4;
}

CMMsl *CMMsl::CompassCalibrationAttempt::operator=(CMMsl *a1, const CMMsl::CompassCalibrationAttempt *a2)
{
  if (a1 != a2)
  {
    CMMsl::CompassCalibrationAttempt::CompassCalibrationAttempt(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::CompassCalibrationAttempt *a2, CMMsl::CompassCalibrationAttempt *a3)
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
  LODWORD(v4) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  LODWORD(v4) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  LODWORD(v4) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v4;
  LOBYTE(v3) = *(this + 76);
  *(this + 76) = *(a2 + 76);
  *(a2 + 76) = v3;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v4;
  v5 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v5;
  result = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = result;
  return result;
}

float CMMsl::CompassCalibrationAttempt::CompassCalibrationAttempt(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1F468;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 44) = *(a2 + 44);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

CMMsl *CMMsl::CompassCalibrationAttempt::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::CompassCalibrationAttempt::CompassCalibrationAttempt(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::CompassCalibrationAttempt::formatText(CMMsl::CompassCalibrationAttempt *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "biasX", *(this + 4));
    v5 = *(this + 20);
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

  PB::TextFormatter::format(a2, "biasY", *(this + 5));
  v5 = *(this + 20);
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
  PB::TextFormatter::format(a2, "biasZ", *(this + 6));
  v5 = *(this + 20);
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
  PB::TextFormatter::format(a2, "cost", *(this + 7));
  v5 = *(this + 20);
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
  PB::TextFormatter::format(a2, "coverage2d", *(this + 8));
  v5 = *(this + 20);
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
  PB::TextFormatter::format(a2, "coverage3d", *(this + 9));
  v5 = *(this + 20);
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
  PB::TextFormatter::format(a2, "earthDiffRatio", *(this + 10));
  v5 = *(this + 20);
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
  v6 = *(this + 76);
  PB::TextFormatter::format(a2, "isPlanar");
  v5 = *(this + 20);
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
  v7 = *(this + 11);
  PB::TextFormatter::format(a2, "numberOfSamples");
  v5 = *(this + 20);
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
  PB::TextFormatter::format(a2, "planarity", *(this + 12));
  v5 = *(this + 20);
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
  PB::TextFormatter::format(a2, "quality", *(this + 13));
  v5 = *(this + 20);
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
  PB::TextFormatter::format(a2, "scaleX", *(this + 14));
  v5 = *(this + 20);
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
  PB::TextFormatter::format(a2, "scaleY", *(this + 15));
  v5 = *(this + 20);
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
  PB::TextFormatter::format(a2, "scaleZ", *(this + 16));
  v5 = *(this + 20);
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
  PB::TextFormatter::format(a2, "timeSpan", *(this + 17));
  v5 = *(this + 20);
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
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  if ((*(this + 20) & 0x8000) != 0)
  {
LABEL_18:
    PB::TextFormatter::format(a2, "unitDistance", *(this + 18));
  }

LABEL_19:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::CompassCalibrationAttempt::readFrom(CMMsl::CompassCalibrationAttempt *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_97:
    v39 = v4 ^ 1;
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
        goto LABEL_97;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 20) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_87;
        case 2u:
          *(this + 20) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_86;
        case 3u:
          *(this + 20) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_86;
        case 4u:
          *(this + 20) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_86;
        case 5u:
          *(this + 20) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_86;
        case 6u:
          *(this + 20) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_86;
        case 7u:
          *(this + 20) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_86;
        case 8u:
          *(this + 20) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_86;
        case 9u:
          *(this + 20) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_86;
        case 0xAu:
          *(this + 20) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_86;
        case 0xBu:
          *(this + 20) |= 0x10000u;
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

          *(this + 76) = v31;
          break;
        case 0xCu:
          *(this + 20) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_86;
        case 0xDu:
          *(this + 20) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_86;
        case 0xEu:
          *(this + 20) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_86;
        case 0xFu:
          *(this + 20) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_86;
        case 0x10u:
          *(this + 20) |= 0x100u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v32 = 0;
            v33 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v34 = (v23 + v22);
            v35 = v2 - v22;
            v36 = v22 + 1;
            while (1)
            {
              if (!v35)
              {
                LODWORD(v26) = 0;
                *(a2 + 24) = 1;
                goto LABEL_92;
              }

              v37 = v36;
              v38 = *v34;
              *(a2 + 1) = v37;
              v26 |= (v38 & 0x7F) << v32;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              ++v34;
              --v35;
              v36 = v37 + 1;
              v14 = v33++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_91:
                v2 = v37;
                goto LABEL_92;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_91;
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
              goto LABEL_92;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_92:
          *(this + 11) = v26;
          break;
        case 0x11u:
          *(this + 20) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_74:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 12) = *(*a2 + v2);
LABEL_86:
            v2 = *(a2 + 1) + 4;
LABEL_87:
            *(a2 + 1) = v2;
          }

          break;
        default:
          goto LABEL_17;
      }

LABEL_93:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_97;
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
        goto LABEL_97;
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
      goto LABEL_93;
    }

    v39 = 0;
  }

  return v39 & 1;
}

uint64_t CMMsl::CompassCalibrationAttempt::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 80);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
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

  this = PB::Writer::write(a2, *(v3 + 16));
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
  this = PB::Writer::write(a2, *(v3 + 20));
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
  this = PB::Writer::write(a2, *(v3 + 24));
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
  this = PB::Writer::write(a2, *(v3 + 56));
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
  this = PB::Writer::write(a2, *(v3 + 60));
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
  this = PB::Writer::write(a2, *(v3 + 64));
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
  this = PB::Writer::write(a2, *(v3 + 52));
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
  this = PB::Writer::write(a2, *(v3 + 28));
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
  this = PB::Writer::write(a2, *(v3 + 72));
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
  this = PB::Writer::write(a2);
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
  this = PB::Writer::write(a2, *(v3 + 32));
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
  this = PB::Writer::write(a2, *(v3 + 36));
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
  this = PB::Writer::write(a2, *(v3 + 40));
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
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 80) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_35;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 68));
  v4 = *(v3 + 80);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v4 & 0x200) == 0)
  {
    return this;
  }

LABEL_35:
  v7 = *(v3 + 48);

  return PB::Writer::write(a2, v7);
}

BOOL CMMsl::CompassCalibrationAttempt::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a2 + 80);
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

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
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

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
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

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
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

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  v4 = (*(a2 + 80) & 0x200) == 0;
  if ((v2 & 0x200) != 0)
  {
    return (v3 & 0x200) != 0 && *(a1 + 48) == *(a2 + 48);
  }

  return v4;
}

uint64_t CMMsl::CompassCalibrationAttempt::hash_value(CMMsl::CompassCalibrationAttempt *this)
{
  v1 = *(this + 20);
  if ((v1 & 1) == 0)
  {
    v2 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_50:
    v4 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_51:
    v6 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_52:
    v8 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_12;
    }

LABEL_53:
    v10 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_15;
    }

LABEL_54:
    v12 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_18;
    }

LABEL_55:
    v14 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_21;
    }

LABEL_56:
    v16 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_24;
    }

LABEL_57:
    v18 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_27;
    }

LABEL_58:
    v20 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_50;
  }

LABEL_3:
  v3 = *(this + 4);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_51;
  }

LABEL_6:
  v5 = *(this + 5);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_52;
  }

LABEL_9:
  v7 = *(this + 6);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_53;
  }

LABEL_12:
  v9 = *(this + 14);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_54;
  }

LABEL_15:
  v11 = *(this + 15);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_55;
  }

LABEL_18:
  v13 = *(this + 16);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_56;
  }

LABEL_21:
  v15 = *(this + 13);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_57;
  }

LABEL_24:
  v17 = *(this + 7);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_58;
  }

LABEL_27:
  v19 = *(this + 18);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  if ((v1 & 0x10000) != 0)
  {
LABEL_30:
    v21 = *(this + 76);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_31;
    }

LABEL_60:
    v23 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_34;
    }

LABEL_61:
    v25 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_37;
    }

LABEL_62:
    v27 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_40;
    }

LABEL_63:
    v29 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_64;
  }

LABEL_59:
  v21 = 0;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_60;
  }

LABEL_31:
  v22 = *(this + 8);
  v23 = LODWORD(v22);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_61;
  }

LABEL_34:
  v24 = *(this + 9);
  v25 = LODWORD(v24);
  if (v24 == 0.0)
  {
    v25 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_62;
  }

LABEL_37:
  v26 = *(this + 10);
  v27 = LODWORD(v26);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_63;
  }

LABEL_40:
  v28 = *(this + 17);
  v29 = LODWORD(v28);
  if (v28 == 0.0)
  {
    v29 = 0;
  }

  if ((v1 & 0x100) != 0)
  {
LABEL_43:
    v30 = *(this + 11);
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_44;
    }

LABEL_65:
    v32 = 0;
    return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v21 ^ v23 ^ v25 ^ v27 ^ v29 ^ v30 ^ v32;
  }

LABEL_64:
  v30 = 0;
  if ((v1 & 0x200) == 0)
  {
    goto LABEL_65;
  }

LABEL_44:
  v31 = *(this + 12);
  v32 = LODWORD(v31);
  if (v31 == 0.0)
  {
    v32 = 0;
  }

  return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v21 ^ v23 ^ v25 ^ v27 ^ v29 ^ v30 ^ v32;
}

double CMMsl::CompassConstraints::CompassConstraints(CMMsl::CompassConstraints *this)
{
  *this = &unk_286C1F4A0;
  *(this + 31) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_286C1F4A0;
  *(this + 31) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

void CMMsl::CompassConstraints::~CompassConstraints(CMMsl::CompassConstraints *this)
{
  *this = &unk_286C1F4A0;
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
  CMMsl::CompassConstraints::~CompassConstraints(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::CompassConstraints *CMMsl::CompassConstraints::CompassConstraints(CMMsl::CompassConstraints *this, const CMMsl::CompassConstraints *a2)
{
  *this = &unk_286C1F4A0;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 31) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  v5 = *(a2 + 31);
  if (v5)
  {
    v7 = *(a2 + 7);
    v6 = 1;
    *(this + 31) = 1;
    *(this + 7) = v7;
    v5 = *(a2 + 31);
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
    v8 = *(a2 + 22);
    v6 |= 0x80u;
    *(this + 31) = v6;
    *(this + 22) = v8;
    v5 = *(a2 + 31);
  }

LABEL_6:
  if ((v5 & 0x4000) != 0)
  {
    v13 = *(a2 + 29);
    v6 |= 0x4000u;
    *(this + 31) = v6;
    *(this + 29) = v13;
    v5 = *(a2 + 31);
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

  v14 = *(a2 + 17);
  v6 |= 4u;
  *(this + 31) = v6;
  *(this + 17) = v14;
  if ((*(a2 + 31) & 0x20) != 0)
  {
LABEL_9:
    v9 = *(a2 + 20);
    *(this + 31) = v6 | 0x20;
    *(this + 20) = v9;
  }

LABEL_10:
  if (this != a2)
  {
    sub_25AD287AC(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
    sub_25AD287AC(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  }

  v10 = *(a2 + 31);
  if ((v10 & 0x800) != 0)
  {
    v15 = *(a2 + 26);
    *(this + 31) |= 0x800u;
    *(this + 26) = v15;
    v10 = *(a2 + 31);
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

  v16 = *(a2 + 23);
  *(this + 31) |= 0x100u;
  *(this + 23) = v16;
  v10 = *(a2 + 31);
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
  v17 = *(a2 + 16);
  *(this + 31) |= 2u;
  *(this + 16) = v17;
  v10 = *(a2 + 31);
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
  v18 = *(a2 + 19);
  *(this + 31) |= 0x10u;
  *(this + 19) = v18;
  v10 = *(a2 + 31);
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
  v19 = *(a2 + 18);
  *(this + 31) |= 8u;
  *(this + 18) = v19;
  v10 = *(a2 + 31);
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
  v20 = *(a2 + 25);
  *(this + 31) |= 0x400u;
  *(this + 25) = v20;
  v10 = *(a2 + 31);
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
  *(this + 31) |= 0x10000u;
  *(this + 121) = v21;
  v10 = *(a2 + 31);
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
  *(this + 31) |= 0x8000u;
  *(this + 120) = v22;
  v10 = *(a2 + 31);
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
  v23 = *(a2 + 24);
  *(this + 31) |= 0x200u;
  *(this + 24) = v23;
  v10 = *(a2 + 31);
  if ((v10 & 0x1000) == 0)
  {
LABEL_22:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_23;
    }

LABEL_39:
    v25 = *(a2 + 21);
    *(this + 31) |= 0x40u;
    *(this + 21) = v25;
    if ((*(a2 + 31) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_24;
  }

LABEL_38:
  v24 = *(a2 + 27);
  *(this + 31) |= 0x1000u;
  *(this + 27) = v24;
  v10 = *(a2 + 31);
  if ((v10 & 0x40) != 0)
  {
    goto LABEL_39;
  }

LABEL_23:
  if ((v10 & 0x2000) != 0)
  {
LABEL_24:
    v11 = *(a2 + 28);
    *(this + 31) |= 0x2000u;
    *(this + 28) = v11;
  }

  return this;
}

CMMsl *CMMsl::CompassConstraints::operator=(CMMsl *a1, const CMMsl::CompassConstraints *a2)
{
  if (a1 != a2)
  {
    CMMsl::CompassConstraints::CompassConstraints(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::CompassConstraints::~CompassConstraints(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::CompassConstraints *a2, CMMsl::CompassConstraints *a3)
{
  v3 = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v4;
  LODWORD(v4) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v4;
  LODWORD(v4) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v4;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v10;
  LODWORD(v4) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v4;
  LODWORD(v4) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  LODWORD(v10) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v10;
  LODWORD(v10) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v10;
  LODWORD(v4) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v4;
  LOBYTE(v10) = *(this + 121);
  *(this + 121) = *(a2 + 121);
  *(a2 + 121) = v10;
  LOBYTE(v10) = *(this + 120);
  *(this + 120) = *(a2 + 120);
  *(a2 + 120) = v10;
  LODWORD(v4) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v4;
  LODWORD(v4) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v4;
  LODWORD(v4) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v4;
  result = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = result;
  return result;
}

uint64_t CMMsl::CompassConstraints::CompassConstraints(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1F4A0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 124) = *(a2 + 124);
  *(a2 + 124) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 80) = *(a2 + 80);
  sub_25AD28758(a1 + 8, (a2 + 8));
  sub_25AD28758(a1 + 32, (a2 + 32));
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

CMMsl *CMMsl::CompassConstraints::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::CompassConstraints::CompassConstraints(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::CompassConstraints::~CompassConstraints(v5);
  }

  return a1;
}

uint64_t CMMsl::CompassConstraints::formatText(CMMsl::CompassConstraints *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if ((*(this + 124) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "attitudeDelta", *(this + 16));
  }

  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "calibratedField", v7);
  }

  v8 = *(this + 31);
  if ((v8 & 0x8000) != 0)
  {
    v14 = *(this + 120);
    PB::TextFormatter::format(a2, "doCorrection");
    v8 = *(this + 31);
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

  PB::TextFormatter::format(a2, "horizontal", *(this + 17));
  v8 = *(this + 31);
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
  v15 = *(this + 18);
  PB::TextFormatter::format(a2, "isOnSphere");
  v8 = *(this + 31);
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
  v16 = *(this + 19);
  PB::TextFormatter::format(a2, "isRotating");
  if ((*(this + 31) & 0x10000) != 0)
  {
LABEL_10:
    v9 = *(this + 121);
    PB::TextFormatter::format(a2, "isTraversingSphere");
  }

LABEL_11:
  v10 = *(this + 4);
  v11 = *(this + 5);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(a2, "predictedField", v12);
  }

  v13 = *(this + 31);
  if ((v13 & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "scale", *(this + 20));
    v13 = *(this + 31);
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

  PB::TextFormatter::format(a2, "timerUnitDistanceThreshold", *(this + 21));
  v13 = *(this + 31);
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
  PB::TextFormatter::format(a2, "timestamp", *(this + 7));
  v13 = *(this + 31);
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
  PB::TextFormatter::format(a2, "unitDistance", *(this + 22));
  v13 = *(this + 31);
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
  PB::TextFormatter::format(a2, "unitDistanceLargeBufferDelta", *(this + 23));
  v13 = *(this + 31);
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
  PB::TextFormatter::format(a2, "unitDistanceLargeBufferMax", *(this + 24));
  v13 = *(this + 31);
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
  PB::TextFormatter::format(a2, "unitDistanceReference", *(this + 25));
  v13 = *(this + 31);
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
  PB::TextFormatter::format(a2, "unitDistanceSmallBufferDelta", *(this + 26));
  v13 = *(this + 31);
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
  PB::TextFormatter::format(a2, "unitDistanceThreshold", *(this + 27));
  v13 = *(this + 31);
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
  PB::TextFormatter::format(a2, "unitDistanceThresholdApplied", *(this + 28));
  if ((*(this + 31) & 0x4000) != 0)
  {
LABEL_24:
    PB::TextFormatter::format(a2, "vertical", *(this + 29));
  }

LABEL_25:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::CompassConstraints::readFrom(CMMsl::CompassConstraints *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
    goto LABEL_184;
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
          *(this + 31) |= 1u;
          v23 = *(a2 + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
          {
            goto LABEL_176;
          }

          *(this + 7) = *(*a2 + v23);
          v24 = *(a2 + 1) + 8;
          goto LABEL_179;
        case 2u:
          *(this + 31) |= 0x80u;
          v46 = *(a2 + 1);
          if (v46 > 0xFFFFFFFFFFFFFFFBLL || v46 + 4 > *(a2 + 2))
          {
            goto LABEL_176;
          }

          *(this + 22) = *(*a2 + v46);
          goto LABEL_178;
        case 3u:
          *(this + 31) |= 0x4000u;
          v42 = *(a2 + 1);
          if (v42 > 0xFFFFFFFFFFFFFFFBLL || v42 + 4 > *(a2 + 2))
          {
            goto LABEL_176;
          }

          *(this + 29) = *(*a2 + v42);
          goto LABEL_178;
        case 4u:
          *(this + 31) |= 4u;
          v44 = *(a2 + 1);
          if (v44 > 0xFFFFFFFFFFFFFFFBLL || v44 + 4 > *(a2 + 2))
          {
            goto LABEL_176;
          }

          *(this + 17) = *(*a2 + v44);
          goto LABEL_178;
        case 5u:
          *(this + 31) |= 0x20u;
          v39 = *(a2 + 1);
          if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(a2 + 2))
          {
            goto LABEL_176;
          }

          *(this + 20) = *(*a2 + v39);
          goto LABEL_178;
        case 6u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_186;
            }

            v48 = *(a2 + 1);
            v49 = *(a2 + 2);
            while (v48 < v49 && (*(a2 + 24) & 1) == 0)
            {
              v51 = *(this + 2);
              v50 = *(this + 3);
              if (v51 >= v50)
              {
                v53 = *(this + 1);
                v54 = v51 - v53;
                v55 = (v51 - v53) >> 2;
                v56 = v55 + 1;
                if ((v55 + 1) >> 62)
                {
                  goto LABEL_188;
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
                  sub_25AD288E8(v58);
                }

                v59 = (v51 - v53) >> 2;
                v60 = (4 * v55);
                v61 = (4 * v55 - 4 * v59);
                *v60 = 0;
                v52 = v60 + 1;
                memcpy(v61, v53, v54);
                v62 = *(this + 1);
                *(this + 1) = v61;
                *(this + 2) = v52;
                *(this + 3) = 0;
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

              *(this + 2) = v52;
              v63 = *(a2 + 1);
              if (v63 > 0xFFFFFFFFFFFFFFFBLL || v63 + 4 > *(a2 + 2))
              {
                goto LABEL_142;
              }

              *(v52 - 1) = *(*a2 + v63);
              v49 = *(a2 + 2);
              v48 = *(a2 + 1) + 4;
              *(a2 + 1) = v48;
            }

LABEL_143:
            PB::Reader::recallMark();
            goto LABEL_180;
          }

          v102 = *(this + 2);
          v101 = *(this + 3);
          if (v102 < v101)
          {
            *v102 = 0;
            v103 = v102 + 4;
LABEL_170:
            *(this + 2) = v103;
LABEL_174:
            v132 = *(a2 + 1);
            if (v132 <= 0xFFFFFFFFFFFFFFFBLL && v132 + 4 <= *(a2 + 2))
            {
              *(v103 - 1) = *(*a2 + v132);
LABEL_178:
              v24 = *(a2 + 1) + 4;
LABEL_179:
              *(a2 + 1) = v24;
            }

            else
            {
LABEL_176:
              *(a2 + 24) = 1;
            }

            goto LABEL_180;
          }

          v112 = *(this + 1);
          v113 = v102 - v112;
          v114 = (v102 - v112) >> 2;
          v115 = v114 + 1;
          if (!((v114 + 1) >> 62))
          {
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
              sub_25AD288E8(v117);
            }

            v124 = (v102 - v112) >> 2;
            v125 = (4 * v114);
            v126 = (4 * v114 - 4 * v124);
            *v125 = 0;
            v103 = v125 + 1;
            memcpy(v126, v112, v113);
            v127 = *(this + 1);
            *(this + 1) = v126;
            *(this + 2) = v103;
            *(this + 3) = 0;
            if (v127)
            {
              operator delete(v127);
            }

            goto LABEL_170;
          }

          goto LABEL_188;
        case 7u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_186;
            }

            v68 = *(a2 + 1);
            v69 = *(a2 + 2);
            while (v68 < v69 && (*(a2 + 24) & 1) == 0)
            {
              v71 = *(this + 5);
              v70 = *(this + 6);
              if (v71 >= v70)
              {
                v73 = *(this + 4);
                v74 = v71 - v73;
                v75 = (v71 - v73) >> 2;
                v76 = v75 + 1;
                if ((v75 + 1) >> 62)
                {
                  goto LABEL_188;
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
                  sub_25AD288E8(v78);
                }

                v79 = (v71 - v73) >> 2;
                v80 = (4 * v75);
                v81 = (4 * v75 - 4 * v79);
                *v80 = 0;
                v72 = v80 + 1;
                memcpy(v81, v73, v74);
                v82 = *(this + 4);
                *(this + 4) = v81;
                *(this + 5) = v72;
                *(this + 6) = 0;
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

              *(this + 5) = v72;
              v83 = *(a2 + 1);
              if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(a2 + 2))
              {
LABEL_142:
                *(a2 + 24) = 1;
                goto LABEL_143;
              }

              *(v72 - 1) = *(*a2 + v83);
              v69 = *(a2 + 2);
              v68 = *(a2 + 1) + 4;
              *(a2 + 1) = v68;
            }

            goto LABEL_143;
          }

          v111 = *(this + 5);
          v110 = *(this + 6);
          if (v111 >= v110)
          {
            v118 = *(this + 4);
            v119 = v111 - v118;
            v120 = (v111 - v118) >> 2;
            v121 = v120 + 1;
            if ((v120 + 1) >> 62)
            {
LABEL_188:
              sub_25AAE66B8();
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
              sub_25AD288E8(v123);
            }

            v128 = (v111 - v118) >> 2;
            v129 = (4 * v120);
            v130 = (4 * v120 - 4 * v128);
            *v129 = 0;
            v103 = v129 + 1;
            memcpy(v130, v118, v119);
            v131 = *(this + 4);
            *(this + 4) = v130;
            *(this + 5) = v103;
            *(this + 6) = 0;
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

          *(this + 5) = v103;
          goto LABEL_174;
        case 8u:
          *(this + 31) |= 0x800u;
          v45 = *(a2 + 1);
          if (v45 > 0xFFFFFFFFFFFFFFFBLL || v45 + 4 > *(a2 + 2))
          {
            goto LABEL_176;
          }

          *(this + 26) = *(*a2 + v45);
          goto LABEL_178;
        case 9u:
          *(this + 31) |= 0x100u;
          v94 = *(a2 + 1);
          if (v94 > 0xFFFFFFFFFFFFFFFBLL || v94 + 4 > *(a2 + 2))
          {
            goto LABEL_176;
          }

          *(this + 23) = *(*a2 + v94);
          goto LABEL_178;
        case 0xAu:
          *(this + 31) |= 2u;
          v41 = *(a2 + 1);
          if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(a2 + 2))
          {
            goto LABEL_176;
          }

          *(this + 16) = *(*a2 + v41);
          goto LABEL_178;
        case 0xBu:
          *(this + 31) |= 0x10u;
          v86 = *(a2 + 1);
          v85 = *(a2 + 2);
          v87 = *a2;
          if (v86 <= 0xFFFFFFFFFFFFFFF5 && v86 + 10 <= v85)
          {
            v88 = 0;
            v89 = 0;
            v90 = 0;
            v91 = (v87 + v86);
            v92 = v86 + 1;
            do
            {
              *(a2 + 1) = v92;
              v93 = *v91++;
              v90 |= (v93 & 0x7F) << v88;
              if ((v93 & 0x80) == 0)
              {
                goto LABEL_167;
              }

              v88 += 7;
              ++v92;
              v14 = v89++ > 8;
            }

            while (!v14);
LABEL_137:
            LODWORD(v90) = 0;
            goto LABEL_167;
          }

          v104 = 0;
          v105 = 0;
          v90 = 0;
          v106 = (v87 + v86);
          v18 = v85 >= v86;
          v107 = v85 - v86;
          if (!v18)
          {
            v107 = 0;
          }

          v108 = v86 + 1;
          while (2)
          {
            if (v107)
            {
              v109 = *v106;
              *(a2 + 1) = v108;
              v90 |= (v109 & 0x7F) << v104;
              if (v109 < 0)
              {
                v104 += 7;
                ++v106;
                --v107;
                ++v108;
                v14 = v105++ > 8;
                if (v14)
                {
                  goto LABEL_137;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v90) = 0;
              }
            }

            else
            {
              LODWORD(v90) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_167:
          *(this + 19) = v90;
          goto LABEL_180;
        case 0xCu:
          *(this + 31) |= 8u;
          v31 = *(a2 + 1);
          v30 = *(a2 + 2);
          v32 = *a2;
          if (v31 <= 0xFFFFFFFFFFFFFFF5 && v31 + 10 <= v30)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = (v32 + v31);
            v37 = v31 + 1;
            do
            {
              *(a2 + 1) = v37;
              v38 = *v36++;
              v35 |= (v38 & 0x7F) << v33;
              if ((v38 & 0x80) == 0)
              {
                goto LABEL_164;
              }

              v33 += 7;
              ++v37;
              v14 = v34++ > 8;
            }

            while (!v14);
LABEL_127:
            LODWORD(v35) = 0;
            goto LABEL_164;
          }

          v95 = 0;
          v96 = 0;
          v35 = 0;
          v97 = (v32 + v31);
          v18 = v30 >= v31;
          v98 = v30 - v31;
          if (!v18)
          {
            v98 = 0;
          }

          v99 = v31 + 1;
          while (2)
          {
            if (v98)
            {
              v100 = *v97;
              *(a2 + 1) = v99;
              v35 |= (v100 & 0x7F) << v95;
              if (v100 < 0)
              {
                v95 += 7;
                ++v97;
                --v98;
                ++v99;
                v14 = v96++ > 8;
                if (v14)
                {
                  goto LABEL_127;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v35) = 0;
              }
            }

            else
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_164:
          *(this + 18) = v35;
          goto LABEL_180;
        case 0xDu:
          *(this + 31) |= 0x400u;
          v40 = *(a2 + 1);
          if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(a2 + 2))
          {
            goto LABEL_176;
          }

          *(this + 25) = *(*a2 + v40);
          goto LABEL_178;
        case 0xEu:
          *(this + 31) |= 0x10000u;
          v64 = *(a2 + 1);
          if (v64 >= *(a2 + 2))
          {
            v67 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v65 = v64 + 1;
            v66 = *(*a2 + v64);
            *(a2 + 1) = v65;
            v67 = v66 != 0;
          }

          *(this + 121) = v67;
          goto LABEL_180;
        case 0xFu:
          *(this + 31) |= 0x8000u;
          v26 = *(a2 + 1);
          if (v26 >= *(a2 + 2))
          {
            v29 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v27 = v26 + 1;
            v28 = *(*a2 + v26);
            *(a2 + 1) = v27;
            v29 = v28 != 0;
          }

          *(this + 120) = v29;
          goto LABEL_180;
        case 0x10u:
          *(this + 31) |= 0x200u;
          v43 = *(a2 + 1);
          if (v43 > 0xFFFFFFFFFFFFFFFBLL || v43 + 4 > *(a2 + 2))
          {
            goto LABEL_176;
          }

          *(this + 24) = *(*a2 + v43);
          goto LABEL_178;
        case 0x11u:
          *(this + 31) |= 0x1000u;
          v25 = *(a2 + 1);
          if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(a2 + 2))
          {
            goto LABEL_176;
          }

          *(this + 27) = *(*a2 + v25);
          goto LABEL_178;
        case 0x12u:
          *(this + 31) |= 0x40u;
          v47 = *(a2 + 1);
          if (v47 > 0xFFFFFFFFFFFFFFFBLL || v47 + 4 > *(a2 + 2))
          {
            goto LABEL_176;
          }

          *(this + 21) = *(*a2 + v47);
          goto LABEL_178;
        case 0x13u:
          *(this + 31) |= 0x2000u;
          v84 = *(a2 + 1);
          if (v84 > 0xFFFFFFFFFFFFFFFBLL || v84 + 4 > *(a2 + 2))
          {
            goto LABEL_176;
          }

          *(this + 28) = *(*a2 + v84);
          goto LABEL_178;
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
        goto LABEL_184;
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
LABEL_186:
      v133 = 0;
      return v133 & 1;
    }

LABEL_180:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  while (v2 < v3 && (*(a2 + 24) & 1) == 0);
LABEL_184:
  v133 = v4 ^ 1;
  return v133 & 1;
}

uint64_t CMMsl::CompassConstraints::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 124);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 56));
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

  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 124);
  if ((v4 & 0x4000) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_29:
    this = PB::Writer::write(a2, *(v3 + 68));
    if ((*(v3 + 124) & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 116));
  v4 = *(v3 + 124);
  if ((v4 & 4) != 0)
  {
    goto LABEL_29;
  }

LABEL_5:
  if ((v4 & 0x20) != 0)
  {
LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 80));
  }

LABEL_7:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7);
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::write(a2, v10);
  }

  v11 = *(v3 + 124);
  if ((v11 & 0x800) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 104));
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

  this = PB::Writer::write(a2, *(v3 + 92));
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
  this = PB::Writer::write(a2, *(v3 + 64));
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
  this = PB::Writer::writeVarInt(a2);
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
  this = PB::Writer::writeVarInt(a2);
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
  this = PB::Writer::write(a2, *(v3 + 100));
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
  this = PB::Writer::write(a2);
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
  this = PB::Writer::write(a2);
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
  this = PB::Writer::write(a2, *(v3 + 96));
  v11 = *(v3 + 124);
  if ((v11 & 0x1000) == 0)
  {
LABEL_23:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_24;
    }

LABEL_41:
    this = PB::Writer::write(a2, *(v3 + 84));
    if ((*(v3 + 124) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_42;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 108));
  v11 = *(v3 + 124);
  if ((v11 & 0x40) != 0)
  {
    goto LABEL_41;
  }

LABEL_24:
  if ((v11 & 0x2000) == 0)
  {
    return this;
  }

LABEL_42:
  v16 = *(v3 + 112);

  return PB::Writer::write(a2, v16);
}

BOOL CMMsl::CompassConstraints::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 124);
  v3 = *(a2 + 124);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 116) != *(a2 + 116))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a2 + 8);
  if (v4 - v5 != *(a2 + 16) - v6)
  {
    return 0;
  }

  while (v5 != v4)
  {
    if (*v5 != *v6)
    {
      return 0;
    }

    ++v5;
    ++v6;
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a2 + 32);
  if (v7 - v8 != *(a2 + 40) - v9)
  {
    return 0;
  }

  while (v8 != v7)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 100) != *(a2 + 100))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 121) != *(a2 + 121))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 108) != *(a2 + 108))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  v10 = (*(a2 + 124) & 0x2000) == 0;
  if ((v2 & 0x2000) != 0)
  {
    return (v3 & 0x2000) != 0 && *(a1 + 112) == *(a2 + 112);
  }

  return v10;
}

uint64_t CMMsl::CompassConstraints::hash_value(CMMsl::CompassConstraints *this)
{
  v2 = *(this + 31);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 0x80) != 0)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = 0;
    if ((v2 & 0x4000) != 0)
    {
      goto LABEL_7;
    }

LABEL_23:
    v7 = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

  if (*(this + 7) == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + 7);
  }

  if ((v2 & 0x80) == 0)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = *(this + 22);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = LODWORD(v4);
  }

  if ((v2 & 0x4000) == 0)
  {
    goto LABEL_23;
  }

LABEL_7:
  v6 = *(this + 29);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = LODWORD(v6);
  }

  if ((v2 & 4) != 0)
  {
LABEL_11:
    v8 = *(this + 17);
    if (v8 == 0.0)
    {
      v9 = 0;
    }

    else
    {
      v9 = LODWORD(v8);
    }

    if ((v2 & 0x20) != 0)
    {
      goto LABEL_15;
    }

LABEL_25:
    v11 = 0;
    goto LABEL_26;
  }

LABEL_24:
  v9 = 0;
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_25;
  }

LABEL_15:
  v10 = *(this + 20);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  else
  {
    v11 = LODWORD(v10);
  }

LABEL_26:
  v12 = *(this + 1);
  v13 = *(this + 2);
  v14 = PBHashBytes();
  v15 = *(this + 4);
  v16 = *(this + 5);
  v17 = PBHashBytes();
  v18 = *(this + 31);
  if ((v18 & 0x800) == 0)
  {
    v19 = 0;
    if ((v18 & 0x100) != 0)
    {
      goto LABEL_28;
    }

LABEL_56:
    v21 = 0;
    if ((v18 & 2) != 0)
    {
      goto LABEL_31;
    }

LABEL_57:
    v23 = 0;
    if ((v18 & 0x10) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_58;
  }

  v38 = *(this + 26);
  v19 = LODWORD(v38);
  if (v38 == 0.0)
  {
    v19 = 0;
  }

  if ((v18 & 0x100) == 0)
  {
    goto LABEL_56;
  }

LABEL_28:
  v20 = *(this + 23);
  v21 = LODWORD(v20);
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  if ((v18 & 2) == 0)
  {
    goto LABEL_57;
  }

LABEL_31:
  v22 = *(this + 16);
  v23 = LODWORD(v22);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

  if ((v18 & 0x10) != 0)
  {
LABEL_34:
    v24 = *(this + 19);
    if ((v18 & 8) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_59;
  }

LABEL_58:
  v24 = 0;
  if ((v18 & 8) != 0)
  {
LABEL_35:
    v25 = *(this + 18);
    if ((v18 & 0x400) != 0)
    {
      goto LABEL_36;
    }

LABEL_60:
    v27 = 0;
    if ((v18 & 0x10000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_61;
  }

LABEL_59:
  v25 = 0;
  if ((v18 & 0x400) == 0)
  {
    goto LABEL_60;
  }

LABEL_36:
  v26 = *(this + 25);
  v27 = LODWORD(v26);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

  if ((v18 & 0x10000) != 0)
  {
LABEL_39:
    v28 = *(this + 121);
    if ((v18 & 0x8000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_62;
  }

LABEL_61:
  v28 = 0;
  if ((v18 & 0x8000) != 0)
  {
LABEL_40:
    v29 = *(this + 120);
    if ((v18 & 0x200) != 0)
    {
      goto LABEL_41;
    }

LABEL_63:
    v31 = 0;
    if ((v18 & 0x1000) != 0)
    {
      goto LABEL_44;
    }

LABEL_64:
    v33 = 0;
    if ((v18 & 0x40) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_65;
  }

LABEL_62:
  v29 = 0;
  if ((v18 & 0x200) == 0)
  {
    goto LABEL_63;
  }

LABEL_41:
  v30 = *(this + 24);
  v31 = LODWORD(v30);
  if (v30 == 0.0)
  {
    v31 = 0;
  }

  if ((v18 & 0x1000) == 0)
  {
    goto LABEL_64;
  }

LABEL_44:
  v32 = *(this + 27);
  v33 = LODWORD(v32);
  if (v32 == 0.0)
  {
    v33 = 0;
  }

  if ((v18 & 0x40) != 0)
  {
LABEL_47:
    v34 = *(this + 21);
    v35 = LODWORD(v34);
    if (v34 == 0.0)
    {
      v35 = 0;
    }

    if ((v18 & 0x2000) != 0)
    {
      goto LABEL_50;
    }

LABEL_66:
    v37 = 0;
    return v5 ^ v3 ^ v7 ^ v9 ^ v11 ^ v14 ^ v17 ^ v19 ^ v21 ^ v23 ^ v24 ^ v25 ^ v27 ^ v28 ^ v29 ^ v31 ^ v33 ^ v35 ^ v37;
  }

LABEL_65:
  v35 = 0;
  if ((v18 & 0x2000) == 0)
  {
    goto LABEL_66;
  }

LABEL_50:
  v36 = *(this + 28);
  v37 = LODWORD(v36);
  if (v36 == 0.0)
  {
    v37 = 0;
  }

  return v5 ^ v3 ^ v7 ^ v9 ^ v11 ^ v14 ^ v17 ^ v19 ^ v21 ^ v23 ^ v24 ^ v25 ^ v27 ^ v28 ^ v29 ^ v31 ^ v33 ^ v35 ^ v37;
}

void *CMMsl::CompassCorrection::CompassCorrection(void *this)
{
  *this = &unk_286C1F4D8;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C1F4D8;
  this[1] = 0;
  return this;
}

void CMMsl::CompassCorrection::~CompassCorrection(CMMsl::CompassCorrection *this)
{
  v2 = *(this + 1);
  *this = &unk_286C1F4D8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::CompassCorrection::~CompassCorrection(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::CompassCorrection::CompassCorrection(void *this, const CMMsl::CompassCorrection *a2)
{
  *this = &unk_286C1F4D8;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::CompassCorrection *CMMsl::CompassCorrection::operator=(const CMMsl::CompassCorrection *a1, const CMMsl::CompassCorrection *a2)
{
  if (a1 != a2)
  {
    CMMsl::CompassCorrection::CompassCorrection(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::CompassCorrection::~CompassCorrection(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::CompassCorrection *a2, CMMsl::CompassCorrection *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::CompassCorrection::CompassCorrection(void *a1, uint64_t a2)
{
  *a1 = &unk_286C1F4D8;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = &unk_286C1F4D8;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::CompassCorrection::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C1F4D8;
    v6[1] = v4;
    CMMsl::CompassCorrection::~CompassCorrection(v6);
  }

  return a1;
}

uint64_t CMMsl::CompassCorrection::formatText(CMMsl::CompassCorrection *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "correction");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::CompassCorrection::readFrom(CMMsl::CompassCorrection *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
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
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::CompassCorrection::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

BOOL CMMsl::CompassCorrection::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::DeviceMotionCorrection::operator==(v2, v3);
  }

  return result;
}

CMMsl::DeviceMotionCorrection *CMMsl::CompassCorrection::hash_value(CMMsl::CompassCorrection *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::DeviceMotionCorrection::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::CompassCorrection::makeCorrection(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::ComplexHandMotion::ComplexHandMotion(uint64_t this)
{
  *this = &unk_286C1F510;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C1F510;
  *(this + 28) = 0;
  return this;
}

void CMMsl::ComplexHandMotion::~ComplexHandMotion(CMMsl::ComplexHandMotion *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::ComplexHandMotion::ComplexHandMotion(uint64_t this, const CMMsl::ComplexHandMotion *a2)
{
  *this = &unk_286C1F510;
  *(this + 28) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 8) = v4;
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
    v5 = *(a2 + 2);
    v3 |= 2u;
    *(this + 28) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 4) == 0)
    {
      return this;
    }

LABEL_10:
    v7 = *(a2 + 24);
    *(this + 28) = v3 | 4;
    *(this + 24) = v7;
    return this;
  }

  v6 = *(a2 + 25);
  v3 |= 8u;
  *(this + 28) = v3;
  *(this + 25) = v6;
  if ((*(a2 + 28) & 4) != 0)
  {
    goto LABEL_10;
  }

  return this;
}

uint64_t CMMsl::ComplexHandMotion::operator=(uint64_t a1, const CMMsl::ComplexHandMotion *a2)
{
  if (a1 != a2)
  {
    CMMsl::ComplexHandMotion::ComplexHandMotion(&v6, a2);
    v3 = *(a1 + 28);
    *(a1 + 28) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOWORD(v3) = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    PB::Base::~Base(&v6);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::ComplexHandMotion *a2, CMMsl::ComplexHandMotion *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  LOBYTE(v3) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v3;
  LOBYTE(v3) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  return result;
}

double CMMsl::ComplexHandMotion::ComplexHandMotion(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1F510;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 24) = *(a2 + 24);
  return result;
}

{
  *a1 = &unk_286C1F510;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 24) = *(a2 + 24);
  return result;
}

uint64_t CMMsl::ComplexHandMotion::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_286C1F510;
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 24);
    v11 = *(a1 + 28);
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    *(a1 + 28) = v3;
    *(a1 + 8) = v6;
    v9 = v5;
    LOWORD(v3) = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v3;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::ComplexHandMotion::formatText(CMMsl::ComplexHandMotion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 4) != 0)
  {
    v6 = *(this + 24);
    PB::TextFormatter::format(a2, "finalDecision");
    v5 = *(this + 28);
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

  else if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 25);
  PB::TextFormatter::format(a2, "instantDecision");
  v5 = *(this + 28);
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
  PB::TextFormatter::format(a2, "timeStart", *(this + 1));
  if ((*(this + 28) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "timeStop", *(this + 2));
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ComplexHandMotion::readFrom(CMMsl::ComplexHandMotion *this, PB::Reader *a2)
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
        *(this + 28) |= 8u;
        v2 = *(a2 + 1);
        if (v2 >= *(a2 + 2))
        {
          v26 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v25 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v26 = v25 != 0;
        }

        *(this + 25) = v26;
        goto LABEL_41;
      }

      if (v22 == 4)
      {
        *(this + 28) |= 4u;
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

        *(this + 24) = v24;
        goto LABEL_41;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 28) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_32:
          *(a2 + 24) = 1;
          goto LABEL_41;
        }

        *(this + 1) = *(*a2 + v2);
        goto LABEL_40;
      }

      if (v22 == 2)
      {
        *(this + 28) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_32;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_40:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_41;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v27 = 0;
      return v27 & 1;
    }

    v2 = *(a2 + 1);
LABEL_41:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v27 = v4 ^ 1;
  return v27 & 1;
}

uint64_t CMMsl::ComplexHandMotion::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
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
      this = PB::Writer::write(a2);
      if ((*(v3 + 28) & 4) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 28);
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_9:
  v6 = *(v3 + 24);

  return PB::Writer::write(a2);
}

BOOL CMMsl::ComplexHandMotion::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  if ((*(a1 + 28) & 2) != 0)
  {
    if ((*(a2 + 28) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 28) & 8) != 0)
  {
    if ((*(a2 + 28) & 8) == 0 || *(a1 + 25) != *(a2 + 25))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 8) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 4) == 0;
  if ((*(a1 + 28) & 4) != 0)
  {
    return (*(a2 + 28) & 4) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

uint64_t CMMsl::ComplexHandMotion::hash_value(CMMsl::ComplexHandMotion *this)
{
  if ((*(this + 28) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    v2 = 0.0;
    if ((*(this + 28) & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v3 = 0;
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v4 = 0;
    return *&v2 ^ *&v1 ^ v3 ^ v4;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  v2 = *(this + 2);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v3 = *(this + 25);
  if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v4 = *(this + 24);
  return *&v2 ^ *&v1 ^ v3 ^ v4;
}

void *CMMsl::ConstrainedIntegratorModelPredictedPose::ConstrainedIntegratorModelPredictedPose(void *this)
{
  *this = &unk_286C1F548;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C1F548;
  this[1] = 0;
  return this;
}

void CMMsl::ConstrainedIntegratorModelPredictedPose::~ConstrainedIntegratorModelPredictedPose(CMMsl::ConstrainedIntegratorModelPredictedPose *this)
{
  v2 = *(this + 1);
  *this = &unk_286C1F548;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::ConstrainedIntegratorModelPredictedPose::~ConstrainedIntegratorModelPredictedPose(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::ConstrainedIntegratorModelPredictedPose::ConstrainedIntegratorModelPredictedPose(void *this, const CMMsl::ConstrainedIntegratorModelPredictedPose *a2)
{
  *this = &unk_286C1F548;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::ConstrainedIntegratorModelPredictedPose *CMMsl::ConstrainedIntegratorModelPredictedPose::operator=(const CMMsl::ConstrainedIntegratorModelPredictedPose *a1, const CMMsl::ConstrainedIntegratorModelPredictedPose *a2)
{
  if (a1 != a2)
  {
    CMMsl::ConstrainedIntegratorModelPredictedPose::ConstrainedIntegratorModelPredictedPose(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::ConstrainedIntegratorModelPredictedPose::~ConstrainedIntegratorModelPredictedPose(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::ConstrainedIntegratorModelPredictedPose *a2, CMMsl::ConstrainedIntegratorModelPredictedPose *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::ConstrainedIntegratorModelPredictedPose::ConstrainedIntegratorModelPredictedPose(void *a1, uint64_t a2)
{
  *a1 = &unk_286C1F548;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = &unk_286C1F548;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::ConstrainedIntegratorModelPredictedPose::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C1F548;
    v6[1] = v4;
    CMMsl::ConstrainedIntegratorModelPredictedPose::~ConstrainedIntegratorModelPredictedPose(v6);
  }

  return a1;
}

uint64_t CMMsl::ConstrainedIntegratorModelPredictedPose::formatText(CMMsl::ConstrainedIntegratorModelPredictedPose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ConstrainedIntegratorModelPredictedPose::readFrom(CMMsl::ConstrainedIntegratorModelPredictedPose *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
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
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::ConstrainedIntegratorModelPredictedPose::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

BOOL CMMsl::ConstrainedIntegratorModelPredictedPose::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::BioMotionPredictedPose::operator==(v2, v3);
  }

  return result;
}

CMMsl::BioMotionPredictedPose *CMMsl::ConstrainedIntegratorModelPredictedPose::hash_value(CMMsl::ConstrainedIntegratorModelPredictedPose *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::BioMotionPredictedPose::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::ConstrainedIntegratorModelPredictedPose::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void *CMMsl::ConstrainedIntegratorPose::ConstrainedIntegratorPose(void *this)
{
  *this = &unk_286C1F580;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C1F580;
  this[1] = 0;
  return this;
}

void CMMsl::ConstrainedIntegratorPose::~ConstrainedIntegratorPose(CMMsl::ConstrainedIntegratorPose *this)
{
  v2 = *(this + 1);
  *this = &unk_286C1F580;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::ConstrainedIntegratorPose::~ConstrainedIntegratorPose(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::ConstrainedIntegratorPose::ConstrainedIntegratorPose(void *this, const CMMsl::ConstrainedIntegratorPose *a2)
{
  *this = &unk_286C1F580;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::ConstrainedIntegratorPose *CMMsl::ConstrainedIntegratorPose::operator=(const CMMsl::ConstrainedIntegratorPose *a1, const CMMsl::ConstrainedIntegratorPose *a2)
{
  if (a1 != a2)
  {
    CMMsl::ConstrainedIntegratorPose::ConstrainedIntegratorPose(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::ConstrainedIntegratorPose::~ConstrainedIntegratorPose(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::ConstrainedIntegratorPose *a2, CMMsl::ConstrainedIntegratorPose *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::ConstrainedIntegratorPose::ConstrainedIntegratorPose(void *a1, uint64_t a2)
{
  *a1 = &unk_286C1F580;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = &unk_286C1F580;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::ConstrainedIntegratorPose::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C1F580;
    v6[1] = v4;
    CMMsl::ConstrainedIntegratorPose::~ConstrainedIntegratorPose(v6);
  }

  return a1;
}

uint64_t CMMsl::ConstrainedIntegratorPose::formatText(CMMsl::ConstrainedIntegratorPose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ConstrainedIntegratorPose::readFrom(CMMsl::ConstrainedIntegratorPose *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
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
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::ConstrainedIntegratorPose::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

BOOL CMMsl::ConstrainedIntegratorPose::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::BioMotionPose::operator==(v2, v3);
  }

  return result;
}

CMMsl::BioMotionPose *CMMsl::ConstrainedIntegratorPose::hash_value(CMMsl::ConstrainedIntegratorPose *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::BioMotionPose::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::ConstrainedIntegratorPose::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::CoprocessorReplyGaitMetrics::CoprocessorReplyGaitMetrics(uint64_t this)
{
  *this = &unk_286C1F5B8;
  *(this + 92) = 0;
  return this;
}

{
  *this = &unk_286C1F5B8;
  *(this + 92) = 0;
  return this;
}

void CMMsl::CoprocessorReplyGaitMetrics::~CoprocessorReplyGaitMetrics(CMMsl::CoprocessorReplyGaitMetrics *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::CoprocessorReplyGaitMetrics::CoprocessorReplyGaitMetrics(CMMsl::CoprocessorReplyGaitMetrics *this, const CMMsl::CoprocessorReplyGaitMetrics *a2)
{
  *this = &unk_286C1F5B8;
  *(this + 23) = 0;
  v2 = *(a2 + 23);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 23) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 23);
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
    result = *(a2 + 22);
    v3 |= 0x80000u;
    *(this + 23) = v3;
    *(this + 22) = result;
    v2 = *(a2 + 23);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    result = *(a2 + 7);
    v3 |= 0x10u;
    *(this + 23) = v3;
    *(this + 7) = result;
    v2 = *(a2 + 23);
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

  result = *(a2 + 18);
  v3 |= 0x8000u;
  *(this + 23) = v3;
  *(this + 18) = result;
  v2 = *(a2 + 23);
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
  v6 = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 23) = v3;
  *(this + 8) = v6;
  v2 = *(a2 + 23);
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
  v7 = *(a2 + 6);
  v3 |= 8u;
  *(this + 23) = v3;
  *(this + 6) = v7;
  v2 = *(a2 + 23);
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
  v8 = *(a2 + 14);
  v3 |= 0x800u;
  *(this + 23) = v3;
  *(this + 14) = v8;
  v2 = *(a2 + 23);
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
  v9 = *(a2 + 11);
  v3 |= 0x100u;
  *(this + 23) = v3;
  *(this + 11) = v9;
  v2 = *(a2 + 23);
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
  v10 = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 23) = v3;
  *(this + 10) = v10;
  v2 = *(a2 + 23);
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
  v11 = *(a2 + 12);
  v3 |= 0x200u;
  *(this + 23) = v3;
  *(this + 12) = v11;
  v2 = *(a2 + 23);
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
  result = *(a2 + 5);
  v3 |= 4u;
  *(this + 23) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 23);
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
  result = *(a2 + 4);
  v3 |= 2u;
  *(this + 23) = v3;
  *(this + 4) = result;
  v2 = *(a2 + 23);
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
  v12 = *(a2 + 13);
  v3 |= 0x400u;
  *(this + 23) = v3;
  *(this + 13) = v12;
  v2 = *(a2 + 23);
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
  v13 = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 23) = v3;
  *(this + 9) = v13;
  v2 = *(a2 + 23);
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
  result = *(a2 + 15);
  v3 |= 0x1000u;
  *(this + 23) = v3;
  *(this + 15) = result;
  v2 = *(a2 + 23);
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
  result = *(a2 + 16);
  v3 |= 0x2000u;
  *(this + 23) = v3;
  *(this + 16) = result;
  v2 = *(a2 + 23);
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
  result = *(a2 + 17);
  v3 |= 0x4000u;
  *(this + 23) = v3;
  *(this + 17) = result;
  v2 = *(a2 + 23);
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
  result = *(a2 + 19);
  v3 |= 0x10000u;
  *(this + 23) = v3;
  *(this + 19) = result;
  v2 = *(a2 + 23);
  if ((v2 & 0x20000) == 0)
  {
LABEL_23:
    if ((v2 & 0x40000) == 0)
    {
      return result;
    }

LABEL_42:
    result = *(a2 + 21);
    *(this + 23) = v3 | 0x40000;
    *(this + 21) = result;
    return result;
  }

LABEL_41:
  result = *(a2 + 20);
  v3 |= 0x20000u;
  *(this + 23) = v3;
  *(this + 20) = result;
  if ((*(a2 + 23) & 0x40000) != 0)
  {
    goto LABEL_42;
  }

  return result;
}

CMMsl *CMMsl::CoprocessorReplyGaitMetrics::operator=(CMMsl *a1, const CMMsl::CoprocessorReplyGaitMetrics *a2)
{
  if (a1 != a2)
  {
    CMMsl::CoprocessorReplyGaitMetrics::CoprocessorReplyGaitMetrics(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::CoprocessorReplyGaitMetrics *a2, CMMsl::CoprocessorReplyGaitMetrics *a3)
{
  v3 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v5;
  v6 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v6;
  v7 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v7;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v9;
  LODWORD(v4) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  v10 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v10;
  v11 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v12;
  v13 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v13;
  v14 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v14;
  result = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = result;
  return result;
}

float CMMsl::CoprocessorReplyGaitMetrics::CoprocessorReplyGaitMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1F5B8;
  *(a1 + 92) = *(a2 + 92);
  *(a2 + 92) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  result = *(a2 + 84);
  *(a1 + 84) = result;
  return result;
}

CMMsl *CMMsl::CoprocessorReplyGaitMetrics::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::CoprocessorReplyGaitMetrics::CoprocessorReplyGaitMetrics(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::CoprocessorReplyGaitMetrics::formatText(CMMsl::CoprocessorReplyGaitMetrics *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 23);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "asymmetryProbabilityEstimate", *(this + 4));
    v5 = *(this + 23);
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

  PB::TextFormatter::format(a2, "cycleTime", *(this + 5));
  v5 = *(this + 23);
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
  v6 = *(this + 6);
  PB::TextFormatter::format(a2, "deviceSide");
  v5 = *(this + 23);
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
  PB::TextFormatter::format(a2, "doubleSupportEstimate", *(this + 7));
  v5 = *(this + 23);
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
  v7 = *(this + 8);
  PB::TextFormatter::format(a2, "gaitPhase");
  v5 = *(this + 23);
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
  v8 = *(this + 9);
  PB::TextFormatter::format(a2, "segmentsRejectedByIsCadenceConcordant");
  v5 = *(this + 23);
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
  v9 = *(this + 10);
  PB::TextFormatter::format(a2, "segmentsRejectedByIsFeasibleWalkingSpeed");
  v5 = *(this + 23);
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
  v10 = *(this + 11);
  PB::TextFormatter::format(a2, "segmentsRejectedByIsNotRunning");
  v5 = *(this + 23);
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
  v11 = *(this + 12);
  PB::TextFormatter::format(a2, "segmentsRejectedByIsPendular");
  v5 = *(this + 23);
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
  v12 = *(this + 13);
  PB::TextFormatter::format(a2, "segmentsRejectedByIsSufficientVerticalTwist");
  v5 = *(this + 23);
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
  v13 = *(this + 14);
  PB::TextFormatter::format(a2, "segmentsRejectedByIsSwingStanceCycle");
  v5 = *(this + 23);
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
  PB::TextFormatter::format(a2, "stepIndexOfHarmonicityAP", *(this + 15));
  v5 = *(this + 23);
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
  PB::TextFormatter::format(a2, "stepIndexOfHarmonicityML", *(this + 16));
  v5 = *(this + 23);
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
  PB::TextFormatter::format(a2, "stepIndexOfHarmonicityVT", *(this + 17));
  v5 = *(this + 23);
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
  PB::TextFormatter::format(a2, "stepLengthEstimate", *(this + 18));
  v5 = *(this + 23);
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
  PB::TextFormatter::format(a2, "swingIndexOfHarmonicityAP", *(this + 19));
  v5 = *(this + 23);
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
  PB::TextFormatter::format(a2, "swingIndexOfHarmonicityML", *(this + 20));
  v5 = *(this + 23);
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
  PB::TextFormatter::format(a2, "swingIndexOfHarmonicityVT", *(this + 21));
  v5 = *(this + 23);
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
  v14 = *(this + 1);
  PB::TextFormatter::format(a2, "timestamp");
  if ((*(this + 23) & 0x80000) != 0)
  {
LABEL_21:
    PB::TextFormatter::format(a2, "walkSpeedEstimate", *(this + 22));
  }

LABEL_22:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::CoprocessorReplyGaitMetrics::readFrom(CMMsl::CoprocessorReplyGaitMetrics *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_240:
    v157 = v4 ^ 1;
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
        goto LABEL_240;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 23) |= 1u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v122 = 0;
            v123 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v124 = (v23 + v22);
            v125 = v2 - v22;
            v126 = v22 + 1;
            while (1)
            {
              if (!v125)
              {
                v26 = 0;
                *(a2 + 24) = 1;
                goto LABEL_219;
              }

              v127 = v126;
              v128 = *v124;
              *(a2 + 1) = v127;
              v26 |= (v128 & 0x7F) << v122;
              if ((v128 & 0x80) == 0)
              {
                break;
              }

              v122 += 7;
              ++v124;
              --v125;
              v126 = v127 + 1;
              v14 = v123++ > 8;
              if (v14)
              {
                v26 = 0;
LABEL_218:
                v2 = v127;
                goto LABEL_219;
              }
            }

            if (*(a2 + 24))
            {
              v26 = 0;
            }

            goto LABEL_218;
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
              goto LABEL_219;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          v26 = 0;
LABEL_219:
          *(this + 1) = v26;
          break;
        case 2u:
          *(this + 23) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_116;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_190;
        case 3u:
          *(this + 23) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_116;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_190;
        case 4u:
          *(this + 23) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_116;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_190;
        case 5u:
          *(this + 23) |= 0x20u;
          v30 = *(a2 + 1);
          v2 = *(a2 + 2);
          v31 = *a2;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v94 = 0;
            v95 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(a2 + 1);
            }

            v96 = (v31 + v30);
            v97 = v2 - v30;
            v98 = v30 + 1;
            while (1)
            {
              if (!v97)
              {
                LODWORD(v34) = 0;
                *(a2 + 24) = 1;
                goto LABEL_203;
              }

              v99 = v98;
              v100 = *v96;
              *(a2 + 1) = v99;
              v34 |= (v100 & 0x7F) << v94;
              if ((v100 & 0x80) == 0)
              {
                break;
              }

              v94 += 7;
              ++v96;
              --v97;
              v98 = v99 + 1;
              v14 = v95++ > 8;
              if (v14)
              {
                LODWORD(v34) = 0;
LABEL_202:
                v2 = v99;
                goto LABEL_203;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_202;
          }

          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          do
          {
            v2 = v36;
            *(a2 + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              goto LABEL_203;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_203:
          *(this + 8) = v34;
          break;
        case 6u:
          *(this + 23) |= 8u;
          v62 = *(a2 + 1);
          v2 = *(a2 + 2);
          v63 = *a2;
          if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v2)
          {
            v129 = 0;
            v130 = 0;
            v66 = 0;
            if (v2 <= v62)
            {
              v2 = *(a2 + 1);
            }

            v131 = (v63 + v62);
            v132 = v2 - v62;
            v133 = v62 + 1;
            while (1)
            {
              if (!v132)
              {
                LODWORD(v66) = 0;
                *(a2 + 24) = 1;
                goto LABEL_223;
              }

              v134 = v133;
              v135 = *v131;
              *(a2 + 1) = v134;
              v66 |= (v135 & 0x7F) << v129;
              if ((v135 & 0x80) == 0)
              {
                break;
              }

              v129 += 7;
              ++v131;
              --v132;
              v133 = v134 + 1;
              v14 = v130++ > 8;
              if (v14)
              {
                LODWORD(v66) = 0;
LABEL_222:
                v2 = v134;
                goto LABEL_223;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v66) = 0;
            }

            goto LABEL_222;
          }

          v64 = 0;
          v65 = 0;
          v66 = 0;
          v67 = (v63 + v62);
          v68 = v62 + 1;
          do
          {
            v2 = v68;
            *(a2 + 1) = v68;
            v69 = *v67++;
            v66 |= (v69 & 0x7F) << v64;
            if ((v69 & 0x80) == 0)
            {
              goto LABEL_223;
            }

            v64 += 7;
            ++v68;
            v14 = v65++ > 8;
          }

          while (!v14);
          LODWORD(v66) = 0;
LABEL_223:
          *(this + 6) = v66;
          break;
        case 7u:
          *(this + 23) |= 0x800u;
          v78 = *(a2 + 1);
          v2 = *(a2 + 2);
          v79 = *a2;
          if (v78 > 0xFFFFFFFFFFFFFFF5 || v78 + 10 > v2)
          {
            v143 = 0;
            v144 = 0;
            v82 = 0;
            if (v2 <= v78)
            {
              v2 = *(a2 + 1);
            }

            v145 = (v79 + v78);
            v146 = v2 - v78;
            v147 = v78 + 1;
            while (1)
            {
              if (!v146)
              {
                LODWORD(v82) = 0;
                *(a2 + 24) = 1;
                goto LABEL_231;
              }

              v148 = v147;
              v149 = *v145;
              *(a2 + 1) = v148;
              v82 |= (v149 & 0x7F) << v143;
              if ((v149 & 0x80) == 0)
              {
                break;
              }

              v143 += 7;
              ++v145;
              --v146;
              v147 = v148 + 1;
              v14 = v144++ > 8;
              if (v14)
              {
                LODWORD(v82) = 0;
LABEL_230:
                v2 = v148;
                goto LABEL_231;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v82) = 0;
            }

            goto LABEL_230;
          }

          v80 = 0;
          v81 = 0;
          v82 = 0;
          v83 = (v79 + v78);
          v84 = v78 + 1;
          do
          {
            v2 = v84;
            *(a2 + 1) = v84;
            v85 = *v83++;
            v82 |= (v85 & 0x7F) << v80;
            if ((v85 & 0x80) == 0)
            {
              goto LABEL_231;
            }

            v80 += 7;
            ++v84;
            v14 = v81++ > 8;
          }

          while (!v14);
          LODWORD(v82) = 0;
LABEL_231:
          *(this + 14) = v82;
          break;
        case 8u:
          *(this + 23) |= 0x100u;
          v54 = *(a2 + 1);
          v2 = *(a2 + 2);
          v55 = *a2;
          if (v54 > 0xFFFFFFFFFFFFFFF5 || v54 + 10 > v2)
          {
            v115 = 0;
            v116 = 0;
            v58 = 0;
            if (v2 <= v54)
            {
              v2 = *(a2 + 1);
            }

            v117 = (v55 + v54);
            v118 = v2 - v54;
            v119 = v54 + 1;
            while (1)
            {
              if (!v118)
              {
                LODWORD(v58) = 0;
                *(a2 + 24) = 1;
                goto LABEL_215;
              }

              v120 = v119;
              v121 = *v117;
              *(a2 + 1) = v120;
              v58 |= (v121 & 0x7F) << v115;
              if ((v121 & 0x80) == 0)
              {
                break;
              }

              v115 += 7;
              ++v117;
              --v118;
              v119 = v120 + 1;
              v14 = v116++ > 8;
              if (v14)
              {
                LODWORD(v58) = 0;
LABEL_214:
                v2 = v120;
                goto LABEL_215;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v58) = 0;
            }

            goto LABEL_214;
          }

          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = (v55 + v54);
          v60 = v54 + 1;
          do
          {
            v2 = v60;
            *(a2 + 1) = v60;
            v61 = *v59++;
            v58 |= (v61 & 0x7F) << v56;
            if ((v61 & 0x80) == 0)
            {
              goto LABEL_215;
            }

            v56 += 7;
            ++v60;
            v14 = v57++ > 8;
          }

          while (!v14);
          LODWORD(v58) = 0;
LABEL_215:
          *(this + 11) = v58;
          break;
        case 9u:
          *(this + 23) |= 0x80u;
          v86 = *(a2 + 1);
          v2 = *(a2 + 2);
          v87 = *a2;
          if (v86 > 0xFFFFFFFFFFFFFFF5 || v86 + 10 > v2)
          {
            v150 = 0;
            v151 = 0;
            v90 = 0;
            if (v2 <= v86)
            {
              v2 = *(a2 + 1);
            }

            v152 = (v87 + v86);
            v153 = v2 - v86;
            v154 = v86 + 1;
            while (1)
            {
              if (!v153)
              {
                LODWORD(v90) = 0;
                *(a2 + 24) = 1;
                goto LABEL_235;
              }

              v155 = v154;
              v156 = *v152;
              *(a2 + 1) = v155;
              v90 |= (v156 & 0x7F) << v150;
              if ((v156 & 0x80) == 0)
              {
                break;
              }

              v150 += 7;
              ++v152;
              --v153;
              v154 = v155 + 1;
              v14 = v151++ > 8;
              if (v14)
              {
                LODWORD(v90) = 0;
LABEL_234:
                v2 = v155;
                goto LABEL_235;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v90) = 0;
            }

            goto LABEL_234;
          }

          v88 = 0;
          v89 = 0;
          v90 = 0;
          v91 = (v87 + v86);
          v92 = v86 + 1;
          do
          {
            v2 = v92;
            *(a2 + 1) = v92;
            v93 = *v91++;
            v90 |= (v93 & 0x7F) << v88;
            if ((v93 & 0x80) == 0)
            {
              goto LABEL_235;
            }

            v88 += 7;
            ++v92;
            v14 = v89++ > 8;
          }

          while (!v14);
          LODWORD(v90) = 0;
LABEL_235:
          *(this + 10) = v90;
          break;
        case 0xAu:
          *(this + 23) |= 0x200u;
          v46 = *(a2 + 1);
          v2 = *(a2 + 2);
          v47 = *a2;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v108 = 0;
            v109 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(a2 + 1);
            }

            v110 = (v47 + v46);
            v111 = v2 - v46;
            v112 = v46 + 1;
            while (1)
            {
              if (!v111)
              {
                LODWORD(v50) = 0;
                *(a2 + 24) = 1;
                goto LABEL_211;
              }

              v113 = v112;
              v114 = *v110;
              *(a2 + 1) = v113;
              v50 |= (v114 & 0x7F) << v108;
              if ((v114 & 0x80) == 0)
              {
                break;
              }

              v108 += 7;
              ++v110;
              --v111;
              v112 = v113 + 1;
              v14 = v109++ > 8;
              if (v14)
              {
                LODWORD(v50) = 0;
LABEL_210:
                v2 = v113;
                goto LABEL_211;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_210;
          }

          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = (v47 + v46);
          v52 = v46 + 1;
          do
          {
            v2 = v52;
            *(a2 + 1) = v52;
            v53 = *v51++;
            v50 |= (v53 & 0x7F) << v48;
            if ((v53 & 0x80) == 0)
            {
              goto LABEL_211;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_211:
          *(this + 12) = v50;
          break;
        case 0xBu:
          *(this + 23) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_116;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_190;
        case 0xCu:
          *(this + 23) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_116;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_190;
        case 0xDu:
          *(this + 23) |= 0x400u;
          v38 = *(a2 + 1);
          v2 = *(a2 + 2);
          v39 = *a2;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v101 = 0;
            v102 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(a2 + 1);
            }

            v103 = (v39 + v38);
            v104 = v2 - v38;
            v105 = v38 + 1;
            while (1)
            {
              if (!v104)
              {
                LODWORD(v42) = 0;
                *(a2 + 24) = 1;
                goto LABEL_207;
              }

              v106 = v105;
              v107 = *v103;
              *(a2 + 1) = v106;
              v42 |= (v107 & 0x7F) << v101;
              if ((v107 & 0x80) == 0)
              {
                break;
              }

              v101 += 7;
              ++v103;
              --v104;
              v105 = v106 + 1;
              v14 = v102++ > 8;
              if (v14)
              {
                LODWORD(v42) = 0;
LABEL_206:
                v2 = v106;
                goto LABEL_207;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_206;
          }

          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = (v39 + v38);
          v44 = v38 + 1;
          do
          {
            v2 = v44;
            *(a2 + 1) = v44;
            v45 = *v43++;
            v42 |= (v45 & 0x7F) << v40;
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_207;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_207:
          *(this + 13) = v42;
          break;
        case 0xEu:
          *(this + 23) |= 0x40u;
          v70 = *(a2 + 1);
          v2 = *(a2 + 2);
          v71 = *a2;
          if (v70 > 0xFFFFFFFFFFFFFFF5 || v70 + 10 > v2)
          {
            v136 = 0;
            v137 = 0;
            v74 = 0;
            if (v2 <= v70)
            {
              v2 = *(a2 + 1);
            }

            v138 = (v71 + v70);
            v139 = v2 - v70;
            v140 = v70 + 1;
            while (1)
            {
              if (!v139)
              {
                LODWORD(v74) = 0;
                *(a2 + 24) = 1;
                goto LABEL_227;
              }

              v141 = v140;
              v142 = *v138;
              *(a2 + 1) = v141;
              v74 |= (v142 & 0x7F) << v136;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v136 += 7;
              ++v138;
              --v139;
              v140 = v141 + 1;
              v14 = v137++ > 8;
              if (v14)
              {
                LODWORD(v74) = 0;
LABEL_226:
                v2 = v141;
                goto LABEL_227;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v74) = 0;
            }

            goto LABEL_226;
          }

          v72 = 0;
          v73 = 0;
          v74 = 0;
          v75 = (v71 + v70);
          v76 = v70 + 1;
          do
          {
            v2 = v76;
            *(a2 + 1) = v76;
            v77 = *v75++;
            v74 |= (v77 & 0x7F) << v72;
            if ((v77 & 0x80) == 0)
            {
              goto LABEL_227;
            }

            v72 += 7;
            ++v76;
            v14 = v73++ > 8;
          }

          while (!v14);
          LODWORD(v74) = 0;
LABEL_227:
          *(this + 9) = v74;
          break;
        case 0xFu:
          *(this + 23) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_116;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_190;
        case 0x10u:
          *(this + 23) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_116;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_190;
        case 0x11u:
          *(this + 23) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_116;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_190;
        case 0x12u:
          *(this + 23) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_116;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_190;
        case 0x13u:
          *(this + 23) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_116;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_190;
        case 0x14u:
          *(this + 23) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
          {
            *(this + 21) = *(*a2 + v2);
LABEL_190:
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
          }

          else
          {
LABEL_116:
            *(a2 + 24) = 1;
          }

          break;
        default:
          goto LABEL_17;
      }

LABEL_236:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_240;
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
        goto LABEL_240;
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
      goto LABEL_236;
    }

    v157 = 0;
  }

  return v157 & 1;
}

uint64_t CMMsl::CoprocessorReplyGaitMetrics::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 92);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
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

  this = PB::Writer::write(a2, *(v3 + 88));
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
  this = PB::Writer::write(a2, *(v3 + 28));
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
  this = PB::Writer::write(a2, *(v3 + 72));
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
  this = PB::Writer::writeVarInt(a2);
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
  this = PB::Writer::writeVarInt(a2);
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
  this = PB::Writer::writeVarInt(a2);
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
  this = PB::Writer::writeVarInt(a2);
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
  this = PB::Writer::writeVarInt(a2);
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
  this = PB::Writer::writeVarInt(a2);
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
  this = PB::Writer::write(a2, *(v3 + 20));
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
  this = PB::Writer::write(a2, *(v3 + 16));
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
  this = PB::Writer::writeVarInt(a2);
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
  this = PB::Writer::writeVarInt(a2);
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
  this = PB::Writer::write(a2, *(v3 + 60));
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
  this = PB::Writer::write(a2, *(v3 + 64));
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
  this = PB::Writer::write(a2, *(v3 + 68));
  v4 = *(v3 + 92);
  if ((v4 & 0x10000) == 0)
  {
LABEL_19:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

LABEL_40:
    this = PB::Writer::write(a2, *(v3 + 80));
    if ((*(v3 + 92) & 0x40000) == 0)
    {
      return this;
    }

    goto LABEL_41;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 76));
  v4 = *(v3 + 92);
  if ((v4 & 0x20000) != 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  if ((v4 & 0x40000) == 0)
  {
    return this;
  }

LABEL_41:
  v14 = *(v3 + 84);

  return PB::Writer::write(a2, v14);
}

BOOL CMMsl::CoprocessorReplyGaitMetrics::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 92);
  v3 = *(a2 + 92);
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

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
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

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
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

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
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

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
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

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x40000) == 0;
  if ((v2 & 0x40000) != 0)
  {
    return (v3 & 0x40000) != 0 && *(a1 + 84) == *(a2 + 84);
  }

  return v4;
}

uint64_t CMMsl::CoprocessorReplyGaitMetrics::hash_value(CMMsl::CoprocessorReplyGaitMetrics *this)
{
  v1 = *(this + 23);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_3;
    }

LABEL_33:
    v4 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_34:
    v6 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v8 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

  v2 = *(this + 1);
  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_33;
  }

LABEL_3:
  v3 = *(this + 22);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_34;
  }

LABEL_6:
  v5 = *(this + 7);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_35;
  }

LABEL_9:
  v7 = *(this + 18);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x20) != 0)
  {
LABEL_12:
    v9 = *(this + 8);
    if ((v1 & 8) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  v9 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_13:
    v10 = *(this + 6);
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  v10 = 0;
  if ((v1 & 0x800) != 0)
  {
LABEL_14:
    v11 = *(this + 14);
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  v11 = 0;
  if ((v1 & 0x100) != 0)
  {
LABEL_15:
    v12 = *(this + 11);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  v12 = 0;
  if ((v1 & 0x80) != 0)
  {
LABEL_16:
    v13 = *(this + 10);
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  v13 = 0;
  if ((v1 & 0x200) != 0)
  {
LABEL_17:
    v14 = *(this + 12);
    if ((v1 & 4) != 0)
    {
      goto LABEL_18;
    }

LABEL_42:
    v16 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_21;
    }

LABEL_43:
    v18 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_41:
  v14 = 0;
  if ((v1 & 4) == 0)
  {
    goto LABEL_42;
  }

LABEL_18:
  v15 = *(this + 5);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_43;
  }

LABEL_21:
  v17 = *(this + 4);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 0x400) != 0)
  {
LABEL_24:
    v19 = *(this + 13);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_45;
  }

LABEL_44:
  v19 = 0;
  if ((v1 & 0x40) != 0)
  {
LABEL_25:
    v20 = *(this + 9);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_46;
  }

LABEL_45:
  v20 = 0;
  if ((v1 & 0x1000) != 0)
  {
LABEL_26:
    v21 = *(this + 15);
    v22 = LODWORD(v21);
    if (v21 == 0.0)
    {
      v22 = 0;
    }

    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_29;
    }

LABEL_47:
    v24 = 0;
    goto LABEL_48;
  }

LABEL_46:
  v22 = 0;
  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_47;
  }

LABEL_29:
  v23 = *(this + 16);
  v24 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

LABEL_48:
  if ((v1 & 0x4000) == 0)
  {
    v25 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_50;
    }

LABEL_62:
    v27 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_63;
  }

  v32 = *(this + 17);
  v25 = LODWORD(v32);
  if (v32 == 0.0)
  {
    v25 = 0;
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_62;
  }

LABEL_50:
  v26 = *(this + 19);
  v27 = LODWORD(v26);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

  if ((v1 & 0x20000) != 0)
  {
LABEL_53:
    v28 = *(this + 20);
    v29 = LODWORD(v28);
    if (v28 == 0.0)
    {
      v29 = 0;
    }

    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_56;
    }

LABEL_64:
    v31 = 0;
    return v4 ^ v2 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v16 ^ v18 ^ v19 ^ v20 ^ v22 ^ v24 ^ v25 ^ v27 ^ v29 ^ v31;
  }

LABEL_63:
  v29 = 0;
  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_64;
  }

LABEL_56:
  v30 = *(this + 21);
  v31 = LODWORD(v30);
  if (v30 == 0.0)
  {
    v31 = 0;
  }

  return v4 ^ v2 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v16 ^ v18 ^ v19 ^ v20 ^ v22 ^ v24 ^ v25 ^ v27 ^ v29 ^ v31;
}

uint64_t CMMsl::CourseConstraints::CourseConstraints(uint64_t this)
{
  *this = &unk_286C1F5F0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C1F5F0;
  *(this + 20) = 0;
  return this;
}

void CMMsl::CourseConstraints::~CourseConstraints(CMMsl::CourseConstraints *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::CourseConstraints::CourseConstraints(CMMsl::CourseConstraints *this, const CMMsl::CourseConstraints *a2)
{
  *this = &unk_286C1F5F0;
  *(this + 5) = 0;
  if ((*(a2 + 20) & 1) == 0)
  {
    v2 = 2;
    if ((*(a2 + 20) & 2) == 0)
    {
      return *&v3;
    }

    goto LABEL_5;
  }

  v3 = *(a2 + 1);
  *(this + 20) = 1;
  *(this + 1) = v3;
  v2 = 3;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    LODWORD(v3) = *(a2 + 4);
    *(this + 20) = v2;
    *(this + 4) = v3;
  }

  return *&v3;
}

uint64_t CMMsl::CourseConstraints::operator=(uint64_t a1, const CMMsl::CourseConstraints *a2)
{
  if (a1 != a2)
  {
    CMMsl::CourseConstraints::CourseConstraints(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LODWORD(v4) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::CourseConstraints *a2, CMMsl::CourseConstraints *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

float CMMsl::CourseConstraints::CourseConstraints(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1F5F0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C1F5F0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::CourseConstraints::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = &unk_286C1F5F0;
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a1 + 20);
    *(a1 + 20) = v3;
    v11 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9[1] = v7;
    LODWORD(v4) = *(a1 + 16);
    *(a1 + 16) = v5;
    v10 = v4;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::CourseConstraints::formatText(CMMsl::CourseConstraints *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
    v5 = *(this + 20);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "yaw", *(this + 4));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::CourseConstraints::readFrom(CMMsl::CourseConstraints *this, PB::Reader *a2)
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
        *(this + 20) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_28;
        }

        *(this + 1) = *(*a2 + v2);
        v2 = *(a2 + 1) + 8;
LABEL_30:
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

    *(this + 20) |= 2u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
    {
LABEL_28:
      *(a2 + 24) = 1;
      goto LABEL_31;
    }

    *(this + 4) = *(*a2 + v2);
    v2 = *(a2 + 1) + 4;
    goto LABEL_30;
  }

LABEL_35:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::CourseConstraints::writeTo(uint64_t this, PB::Writer *a2)
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

    return PB::Writer::write(a2, v5);
  }

  return this;
}

BOOL CMMsl::CourseConstraints::operator==(uint64_t a1, uint64_t a2)
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

uint64_t CMMsl::CourseConstraints::hash_value(CMMsl::CourseConstraints *this)
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

LABEL_9:
    v3 = 0;
    return v3 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  return v3 ^ *&v1;
}

void *CMMsl::CourseCorrection::CourseCorrection(void *this)
{
  *this = &unk_286C1F628;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C1F628;
  this[1] = 0;
  return this;
}

void CMMsl::CourseCorrection::~CourseCorrection(CMMsl::CourseCorrection *this)
{
  v2 = *(this + 1);
  *this = &unk_286C1F628;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::CourseCorrection::~CourseCorrection(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::CourseCorrection::CourseCorrection(void *this, const CMMsl::CourseCorrection *a2)
{
  *this = &unk_286C1F628;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::CourseCorrection *CMMsl::CourseCorrection::operator=(const CMMsl::CourseCorrection *a1, const CMMsl::CourseCorrection *a2)
{
  if (a1 != a2)
  {
    CMMsl::CourseCorrection::CourseCorrection(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::CourseCorrection::~CourseCorrection(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::CourseCorrection *a2, CMMsl::CourseCorrection *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::CourseCorrection::CourseCorrection(void *a1, uint64_t a2)
{
  *a1 = &unk_286C1F628;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = &unk_286C1F628;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::CourseCorrection::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C1F628;
    v6[1] = v4;
    CMMsl::CourseCorrection::~CourseCorrection(v6);
  }

  return a1;
}

uint64_t CMMsl::CourseCorrection::formatText(CMMsl::CourseCorrection *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "correction");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::CourseCorrection::readFrom(CMMsl::CourseCorrection *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
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
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::CourseCorrection::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

BOOL CMMsl::CourseCorrection::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::DeviceMotionCorrection::operator==(v2, v3);
  }

  return result;
}

CMMsl::DeviceMotionCorrection *CMMsl::CourseCorrection::hash_value(CMMsl::CourseCorrection *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::DeviceMotionCorrection::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::CourseCorrection::makeCorrection(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::CourseFusion::CourseFusion(uint64_t this)
{
  *this = &unk_286C1F660;
  *(this + 64) = 0;
  return this;
}

{
  *this = &unk_286C1F660;
  *(this + 64) = 0;
  return this;
}

void CMMsl::CourseFusion::~CourseFusion(CMMsl::CourseFusion *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::CourseFusion::CourseFusion(uint64_t this, const CMMsl::CourseFusion *a2)
{
  *this = &unk_286C1F660;
  *(this + 64) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 64) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 0x800) != 0)
  {
LABEL_5:
    v5 = *(a2 + 14);
    v3 |= 0x800u;
    *(this + 64) = v3;
    *(this + 56) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 6);
    v3 |= 8u;
    *(this + 64) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 32);
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

  v7 = *(a2 + 11);
  v3 |= 0x100u;
  *(this + 64) = v3;
  *(this + 44) = v7;
  v2 = *(a2 + 32);
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
  v8 = *(a2 + 12);
  v3 |= 0x200u;
  *(this + 64) = v3;
  *(this + 48) = v8;
  v2 = *(a2 + 32);
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
  v9 = *(a2 + 5);
  v3 |= 4u;
  *(this + 64) = v3;
  *(this + 20) = v9;
  v2 = *(a2 + 32);
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
  *(this + 64) = v3;
  *(this + 60) = v10;
  v2 = *(a2 + 32);
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
  v11 = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 64) = v3;
  *(this + 28) = v11;
  v2 = *(a2 + 32);
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
  v12 = *(a2 + 4);
  v3 |= 2u;
  *(this + 64) = v3;
  *(this + 16) = v12;
  v2 = *(a2 + 32);
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
  v13 = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 64) = v3;
  *(this + 36) = v13;
  v2 = *(a2 + 32);
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
  *(this + 64) = v3;
  *(this + 62) = v14;
  v2 = *(a2 + 32);
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
  *(this + 64) = v3;
  *(this + 63) = v15;
  v2 = *(a2 + 32);
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
  v16 = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 64) = v3;
  *(this + 40) = v16;
  v2 = *(a2 + 32);
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
  v17 = *(a2 + 13);
  v3 |= 0x400u;
  *(this + 64) = v3;
  *(this + 52) = v17;
  v2 = *(a2 + 32);
  if ((v2 & 0x20) == 0)
  {
LABEL_19:
    if ((v2 & 0x2000) == 0)
    {
      return this;
    }

LABEL_34:
    v19 = *(a2 + 61);
    *(this + 64) = v3 | 0x2000;
    *(this + 61) = v19;
    return this;
  }

LABEL_33:
  v18 = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 64) = v3;
  *(this + 32) = v18;
  if ((*(a2 + 32) & 0x2000) != 0)
  {
    goto LABEL_34;
  }

  return this;
}

CMMsl *CMMsl::CourseFusion::operator=(CMMsl *a1, const CMMsl::CourseFusion *a2)
{
  if (a1 != a2)
  {
    CMMsl::CourseFusion::CourseFusion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::CourseFusion *a2, CMMsl::CourseFusion *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LOBYTE(v3) = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v3;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LOBYTE(v3) = *(this + 62);
  *(this + 62) = *(a2 + 62);
  *(a2 + 62) = v3;
  LOBYTE(v3) = *(this + 63);
  *(this + 63) = *(a2 + 63);
  *(a2 + 63) = v3;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  result = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = result;
  LOBYTE(v3) = *(this + 61);
  *(this + 61) = *(a2 + 61);
  *(a2 + 61) = v3;
  return result;
}