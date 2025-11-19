uint64_t CMMsl::RotationRate::readFrom(CMMsl::RotationRate *this, PB::Reader *a2)
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
        *(this + 28) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
LABEL_36:
          *(a2 + 24) = 1;
          goto LABEL_40;
        }

        *(this + 5) = *(*a2 + v2);
LABEL_38:
        v2 = *(a2 + 1) + 4;
LABEL_39:
        *(a2 + 1) = v2;
        goto LABEL_40;
      }

      if (v22 == 4)
      {
        *(this + 28) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 6) = *(*a2 + v2);
        goto LABEL_38;
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
          goto LABEL_36;
        }

        *(this + 1) = *(*a2 + v2);
        v2 = *(a2 + 1) + 8;
        goto LABEL_39;
      }

      if (v22 == 2)
      {
        *(this + 28) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_38;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_40:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::RotationRate::writeTo(uint64_t this, PB::Writer *a2)
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
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 20));
      if ((*(v3 + 28) & 8) == 0)
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
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 24);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::RotationRate::hash_value(CMMsl::RotationRate *this)
{
  if ((*(this + 28) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 28) & 4) != 0)
  {
LABEL_6:
    v4 = *(this + 5);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if ((*(this + 28) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v7 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 6);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  return v3 ^ *&v1 ^ v5 ^ v7;
}

void CMMsl::RunningArmSwingSignals::~RunningArmSwingSignals(CMMsl::RunningArmSwingSignals *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::RunningArmSwingSignals::RunningArmSwingSignals(CMMsl::RunningArmSwingSignals *this, const CMMsl::RunningArmSwingSignals *a2)
{
  *this = &unk_286C23250;
  *(this + 16) = 0;
  v2 = *(a2 + 64);
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    v3 = 2;
    *(this + 64) = 2;
    *(this + 2) = result;
    v2 = *(a2 + 64);
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 64) & 0x40) != 0)
  {
LABEL_5:
    result = *(a2 + 7);
    v3 |= 0x40u;
    *(this + 64) = v3;
    *(this + 7) = result;
    v2 = *(a2 + 64);
  }

LABEL_6:
  if (v2)
  {
    result = *(a2 + 1);
    v3 |= 1u;
    *(this + 64) = v3;
    *(this + 1) = result;
    v2 = *(a2 + 64);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 3);
  v3 |= 4u;
  *(this + 64) = v3;
  *(this + 3) = result;
  v2 = *(a2 + 64);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 64) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 64);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_16:
    result = *(a2 + 4);
    *(this + 64) = v3 | 8;
    *(this + 4) = result;
    return result;
  }

LABEL_15:
  result = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 64) = v3;
  *(this + 6) = result;
  if ((*(a2 + 64) & 8) != 0)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t CMMsl::RunningArmSwingSignals::operator=(uint64_t a1, const CMMsl::RunningArmSwingSignals *a2)
{
  if (a1 != a2)
  {
    CMMsl::RunningArmSwingSignals::RunningArmSwingSignals(v10, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v3;
    v4 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v11;
    v6 = v12;
    v7 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v7;
    v8 = *(a1 + 24);
    *(a1 + 24) = v6;
    v11 = v5;
    v12 = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::RunningArmSwingSignals *a2, CMMsl::RunningArmSwingSignals *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v9;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

double CMMsl::RunningArmSwingSignals::RunningArmSwingSignals(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23250;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

{
  *a1 = &unk_286C23250;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t CMMsl::RunningArmSwingSignals::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v11 = &unk_286C23250;
    v3 = *(a2 + 64);
    *(a2 + 64) = 0;
    v4 = *(a2 + 56);
    v16 = *(a1 + 64);
    v15 = *(a1 + 56);
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    v14 = *(a1 + 40);
    v7 = *(a1 + 24);
    v8 = *(a2 + 24);
    v9 = *(a2 + 40);
    *(a1 + 64) = v3;
    *(a1 + 56) = v4;
    *(a1 + 8) = v6;
    *(a1 + 40) = v9;
    *(a1 + 24) = v8;
    v12 = v5;
    v13 = v7;
    PB::Base::~Base(&v11);
  }

  return a1;
}

uint64_t CMMsl::RunningArmSwingSignals::formatText(CMMsl::RunningArmSwingSignals *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 64);
  if (v5)
  {
    PB::TextFormatter::format(a2, "cadence", *(this + 1));
    v5 = *(this + 64);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 64) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "startTime", *(this + 2));
  v5 = *(this + 64);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "swingAccelX", *(this + 3));
  v5 = *(this + 64);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "swingAccelXStandardized", *(this + 4));
  v5 = *(this + 64);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "swingAccelY", *(this + 5));
  v5 = *(this + 64);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "swingAccelZ", *(this + 6));
  if ((*(this + 64) & 0x40) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(a2, "timestamp", *(this + 7));
  }

LABEL_9:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::RunningArmSwingSignals::readFrom(CMMsl::RunningArmSwingSignals *this, PB::Reader *a2)
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
      switch(v22)
      {
        case 1:
          *(this + 64) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_49:
            *(a2 + 24) = 1;
            goto LABEL_52;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_51;
        case 2:
          *(this + 64) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_49;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_51;
        case 3:
          *(this + 64) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_49;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_51;
      }
    }

    else if (v22 > 6)
    {
      if (v22 == 7)
      {
        *(this + 64) |= 0x20u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_49;
        }

        *(this + 6) = *(*a2 + v2);
        goto LABEL_51;
      }

      if (v22 == 8)
      {
        *(this + 64) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_49;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_51;
      }
    }

    else
    {
      if (v22 == 5)
      {
        *(this + 64) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_49;
        }

        *(this + 3) = *(*a2 + v2);
        goto LABEL_51;
      }

      if (v22 == 6)
      {
        *(this + 64) |= 0x10u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_49;
        }

        *(this + 5) = *(*a2 + v2);
LABEL_51:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_52;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_52:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::RunningArmSwingSignals::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 64);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16));
    v4 = *(v3 + 64);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 64) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = PB::Writer::write(a2, *(v3 + 48));
    if ((*(v3 + 64) & 8) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 64);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_15:
  v5 = *(v3 + 32);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::RunningArmSwingSignals::hash_value(CMMsl::RunningArmSwingSignals *this)
{
  if ((*(this + 64) & 2) == 0)
  {
    v1 = 0.0;
    if ((*(this + 64) & 0x40) != 0)
    {
      goto LABEL_3;
    }

LABEL_24:
    v2 = 0.0;
    if (*(this + 64))
    {
      goto LABEL_6;
    }

LABEL_25:
    v3 = 0.0;
    if ((*(this + 64) & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_26:
    v4 = 0.0;
    if ((*(this + 64) & 0x10) != 0)
    {
      goto LABEL_12;
    }

LABEL_27:
    v5 = 0.0;
    if ((*(this + 64) & 0x20) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  v1 = *(this + 2);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 64) & 0x40) == 0)
  {
    goto LABEL_24;
  }

LABEL_3:
  v2 = *(this + 7);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 64) & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_6:
  v3 = *(this + 1);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 64) & 4) == 0)
  {
    goto LABEL_26;
  }

LABEL_9:
  v4 = *(this + 3);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((*(this + 64) & 0x10) == 0)
  {
    goto LABEL_27;
  }

LABEL_12:
  v5 = *(this + 5);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((*(this + 64) & 0x20) != 0)
  {
LABEL_15:
    v6 = *(this + 6);
    if (v6 == 0.0)
    {
      v6 = 0.0;
    }

    if ((*(this + 64) & 8) != 0)
    {
      goto LABEL_18;
    }

LABEL_29:
    v7 = 0.0;
    return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7;
  }

LABEL_28:
  v6 = 0.0;
  if ((*(this + 64) & 8) == 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  v7 = *(this + 4);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7;
}

void CMMsl::RunningCentripetalAccelSignals::~RunningCentripetalAccelSignals(CMMsl::RunningCentripetalAccelSignals *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::RunningCentripetalAccelSignals::RunningCentripetalAccelSignals(CMMsl::RunningCentripetalAccelSignals *this, const CMMsl::RunningCentripetalAccelSignals *a2)
{
  *this = &unk_286C23288;
  *(this + 30) = 0;
  v2 = *(a2 + 60);
  if ((v2 & 0x200) != 0)
  {
    result = *(a2 + 10);
    v3 = 512;
    *(this + 60) = 512;
    *(this + 10) = result;
    v2 = *(a2 + 60);
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 60) & 0x2000) != 0)
  {
LABEL_5:
    result = *(a2 + 14);
    v3 |= 0x2000u;
    *(this + 60) = v3;
    *(this + 14) = result;
    v2 = *(a2 + 60);
  }

LABEL_6:
  if ((v2 & 0x400) != 0)
  {
    result = *(a2 + 11);
    v3 |= 0x400u;
    *(this + 60) = v3;
    *(this + 11) = result;
    v2 = *(a2 + 60);
    if ((v2 & 0x800) == 0)
    {
LABEL_8:
      if ((v2 & 0x1000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 0x800) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 12);
  v3 |= 0x800u;
  *(this + 60) = v3;
  *(this + 12) = result;
  v2 = *(a2 + 60);
  if ((v2 & 0x1000) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = *(a2 + 13);
  v3 |= 0x1000u;
  *(this + 60) = v3;
  *(this + 13) = result;
  v2 = *(a2 + 60);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 60) = v3;
  *(this + 7) = result;
  v2 = *(a2 + 60);
  if ((v2 & 0x80) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 60) = v3;
  *(this + 8) = result;
  v2 = *(a2 + 60);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 60) = v3;
  *(this + 9) = result;
  v2 = *(a2 + 60);
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
  result = *(a2 + 4);
  v3 |= 8u;
  *(this + 60) = v3;
  *(this + 4) = result;
  v2 = *(a2 + 60);
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
  result = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 60) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 60);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 60) = v3;
  *(this + 6) = result;
  v2 = *(a2 + 60);
  if ((v2 & 1) == 0)
  {
LABEL_16:
    if ((v2 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = *(a2 + 1);
  v3 |= 1u;
  *(this + 60) = v3;
  *(this + 1) = result;
  v2 = *(a2 + 60);
  if ((v2 & 2) == 0)
  {
LABEL_17:
    if ((v2 & 4) == 0)
    {
      return result;
    }

LABEL_30:
    result = *(a2 + 3);
    *(this + 60) = v3 | 4;
    *(this + 3) = result;
    return result;
  }

LABEL_29:
  result = *(a2 + 2);
  v3 |= 2u;
  *(this + 60) = v3;
  *(this + 2) = result;
  if ((*(a2 + 60) & 4) != 0)
  {
    goto LABEL_30;
  }

  return result;
}

CMMsl *CMMsl::RunningCentripetalAccelSignals::operator=(CMMsl *a1, const CMMsl::RunningCentripetalAccelSignals *a2)
{
  if (a1 != a2)
  {
    CMMsl::RunningCentripetalAccelSignals::RunningCentripetalAccelSignals(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::RunningCentripetalAccelSignals *a2, CMMsl::RunningCentripetalAccelSignals *a3)
{
  v3 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v3;
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v5;
  v6 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v6;
  v7 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v7;
  v8 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v8;
  v9 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v11;
  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
  v13 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v13;
  v14 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v14;
  v15 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v15;
  v16 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v16;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

double CMMsl::RunningCentripetalAccelSignals::RunningCentripetalAccelSignals(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23288;
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = 0;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

CMMsl *CMMsl::RunningCentripetalAccelSignals::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::RunningCentripetalAccelSignals::RunningCentripetalAccelSignals(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::RunningCentripetalAccelSignals::formatText(CMMsl::RunningCentripetalAccelSignals *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 60);
  if (v5)
  {
    PB::TextFormatter::format(a2, "centerOfMassPrefiltAccelX", *(this + 1));
    v5 = *(this + 60);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "centerOfMassPrefiltAccelY", *(this + 2));
  v5 = *(this + 60);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "centerOfMassPrefiltAccelZ", *(this + 3));
  v5 = *(this + 60);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "centripetalAccelX", *(this + 4));
  v5 = *(this + 60);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "centripetalAccelY", *(this + 5));
  v5 = *(this + 60);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "centripetalAccelZ", *(this + 6));
  v5 = *(this + 60);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "centripetalRotationRateX", *(this + 7));
  v5 = *(this + 60);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "centripetalRotationRateY", *(this + 8));
  v5 = *(this + 60);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "centripetalRotationRateZ", *(this + 9));
  v5 = *(this + 60);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "startTime", *(this + 10));
  v5 = *(this + 60);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "swingVelocityX", *(this + 11));
  v5 = *(this + 60);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "swingVelocityY", *(this + 12));
  v5 = *(this + 60);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "swingVelocityZ", *(this + 13));
  if ((*(this + 60) & 0x2000) != 0)
  {
LABEL_15:
    PB::TextFormatter::format(a2, "timestamp", *(this + 14));
  }

LABEL_16:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::RunningCentripetalAccelSignals::readFrom(CMMsl::RunningCentripetalAccelSignals *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_69:
    v22 = v4 ^ 1;
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
        goto LABEL_69;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 60) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_64;
        case 2u:
          *(this + 60) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_64;
        case 3u:
          *(this + 60) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_64;
        case 4u:
          *(this + 60) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_64;
        case 5u:
          *(this + 60) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_64;
        case 6u:
          *(this + 60) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_64;
        case 7u:
          *(this + 60) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_64;
        case 8u:
          *(this + 60) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_64;
        case 9u:
          *(this + 60) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_64;
        case 0xAu:
          *(this + 60) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_64;
        case 0xBu:
          *(this + 60) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_64;
        case 0xCu:
          *(this + 60) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_64;
        case 0xDu:
          *(this + 60) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_64;
        case 0xEu:
          *(this + 60) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_62:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 3) = *(*a2 + v2);
LABEL_64:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          break;
        default:
          goto LABEL_17;
      }

LABEL_65:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_69;
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
        goto LABEL_69;
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
      goto LABEL_65;
    }

    v22 = 0;
  }

  return v22 & 1;
}

uint64_t CMMsl::RunningCentripetalAccelSignals::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 120);
  if ((v4 & 0x200) != 0)
  {
    this = PB::Writer::write(a2, *(this + 80));
    v4 = *(v3 + 120);
    if ((v4 & 0x2000) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*(this + 120) & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 112));
  v4 = *(v3 + 120);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 120);
  if ((v4 & 0x800) == 0)
  {
LABEL_5:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 96));
  v4 = *(v3 + 120);
  if ((v4 & 0x1000) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 104));
  v4 = *(v3 + 120);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 120);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 120);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 120);
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
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 120);
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
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 120);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 120);
  if ((v4 & 1) == 0)
  {
LABEL_13:
    if ((v4 & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    this = PB::Writer::write(a2, *(v3 + 16));
    if ((*(v3 + 120) & 4) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 120);
  if ((v4 & 2) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_29:
  v5 = *(v3 + 24);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::RunningCentripetalAccelSignals::hash_value(CMMsl::RunningCentripetalAccelSignals *this)
{
  v1 = *(this + 60);
  if ((v1 & 0x200) == 0)
  {
    v2 = 0.0;
    if ((*(this + 60) & 0x2000) != 0)
    {
      goto LABEL_3;
    }

LABEL_45:
    v3 = 0.0;
    if ((*(this + 60) & 0x400) != 0)
    {
      goto LABEL_6;
    }

LABEL_46:
    v4 = 0.0;
    if ((*(this + 60) & 0x800) != 0)
    {
      goto LABEL_9;
    }

LABEL_47:
    v5 = 0.0;
    if ((*(this + 60) & 0x1000) != 0)
    {
      goto LABEL_12;
    }

LABEL_48:
    v6 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_15;
    }

LABEL_49:
    v7 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_18;
    }

LABEL_50:
    v8 = 0.0;
    if ((*(this + 60) & 0x100) != 0)
    {
      goto LABEL_21;
    }

LABEL_51:
    v9 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_24;
    }

LABEL_52:
    v10 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_27;
    }

LABEL_53:
    v11 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_30;
    }

LABEL_54:
    v12 = 0.0;
    if (v1)
    {
      goto LABEL_33;
    }

LABEL_55:
    v13 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_56;
  }

  v2 = *(this + 10);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 60) & 0x2000) == 0)
  {
    goto LABEL_45;
  }

LABEL_3:
  v3 = *(this + 14);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 60) & 0x400) == 0)
  {
    goto LABEL_46;
  }

LABEL_6:
  v4 = *(this + 11);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((*(this + 60) & 0x800) == 0)
  {
    goto LABEL_47;
  }

LABEL_9:
  v5 = *(this + 12);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((*(this + 60) & 0x1000) == 0)
  {
    goto LABEL_48;
  }

LABEL_12:
  v6 = *(this + 13);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_49;
  }

LABEL_15:
  v7 = *(this + 7);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_50;
  }

LABEL_18:
  v8 = *(this + 8);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((*(this + 60) & 0x100) == 0)
  {
    goto LABEL_51;
  }

LABEL_21:
  v9 = *(this + 9);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_52;
  }

LABEL_24:
  v10 = *(this + 4);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_53;
  }

LABEL_27:
  v11 = *(this + 5);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_54;
  }

LABEL_30:
  v12 = *(this + 6);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_33:
  v13 = *(this + 1);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  if ((v1 & 2) != 0)
  {
LABEL_36:
    v14 = *(this + 2);
    if (v14 == 0.0)
    {
      v14 = 0.0;
    }

    if ((v1 & 4) != 0)
    {
      goto LABEL_39;
    }

LABEL_57:
    v15 = 0.0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ *&v14 ^ *&v15;
  }

LABEL_56:
  v14 = 0.0;
  if ((v1 & 4) == 0)
  {
    goto LABEL_57;
  }

LABEL_39:
  v15 = *(this + 3);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ *&v14 ^ *&v15;
}

void CMMsl::RunningFormMetrics::~RunningFormMetrics(CMMsl::RunningFormMetrics *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::RunningFormMetrics::RunningFormMetrics(CMMsl::RunningFormMetrics *this, const CMMsl::RunningFormMetrics *a2)
{
  *this = &unk_286C232C0;
  *(this + 28) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 0x40) != 0)
  {
    result = *(a2 + 7);
    v3 = 64;
    *(this + 28) = 64;
    *(this + 7) = result;
    v2 = *(a2 + 28);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x80) != 0)
  {
LABEL_5:
    result = *(a2 + 8);
    v3 |= 0x80uLL;
    *(this + 28) = v3;
    *(this + 8) = result;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 0x200000000) != 0)
  {
    v5 = *(a2 + 220);
    v3 |= 0x200000000uLL;
    *(this + 28) = v3;
    *(this + 220) = v5;
    v2 = *(a2 + 28);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 0x40000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_42;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 2);
  v3 |= 2uLL;
  *(this + 28) = v3;
  *(this + 2) = result;
  v2 = *(a2 + 28);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_9:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  v6 = *(a2 + 217);
  v3 |= 0x40000000uLL;
  *(this + 28) = v3;
  *(this + 217) = v6;
  v2 = *(a2 + 28);
  if ((v2 & 0x80000) == 0)
  {
LABEL_10:
    if ((v2 & 0x400000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = *(a2 + 20);
  v3 |= 0x80000uLL;
  *(this + 28) = v3;
  *(this + 20) = result;
  v2 = *(a2 + 28);
  if ((v2 & 0x400000000) == 0)
  {
LABEL_11:
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  v7 = *(a2 + 221);
  v3 |= 0x400000000uLL;
  *(this + 28) = v3;
  *(this + 221) = v7;
  v2 = *(a2 + 28);
  if ((v2 & 1) == 0)
  {
LABEL_12:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = *(a2 + 1);
  v3 |= 1uLL;
  *(this + 28) = v3;
  *(this + 1) = result;
  v2 = *(a2 + 28);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_13:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  v8 = *(a2 + 216);
  v3 |= 0x20000000uLL;
  *(this + 28) = v3;
  *(this + 216) = v8;
  v2 = *(a2 + 28);
  if ((v2 & 0x80000000) == 0)
  {
LABEL_14:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  v9 = *(a2 + 218);
  v3 |= 0x80000000uLL;
  *(this + 28) = v3;
  *(this + 218) = v9;
  v2 = *(a2 + 28);
  if ((v2 & 0x8000) == 0)
  {
LABEL_15:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = *(a2 + 16);
  v3 |= 0x8000uLL;
  *(this + 28) = v3;
  *(this + 16) = result;
  v2 = *(a2 + 28);
  if ((v2 & 0x40000) == 0)
  {
LABEL_16:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = *(a2 + 19);
  v3 |= 0x40000uLL;
  *(this + 28) = v3;
  *(this + 19) = result;
  v2 = *(a2 + 28);
  if ((v2 & 0x4000) == 0)
  {
LABEL_17:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = *(a2 + 15);
  v3 |= 0x4000uLL;
  *(this + 28) = v3;
  *(this + 15) = result;
  v2 = *(a2 + 28);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  v10 = *(a2 + 52);
  v3 |= 0x8000000uLL;
  *(this + 28) = v3;
  *(this + 52) = v10;
  v2 = *(a2 + 28);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_19:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  v11 = *(a2 + 51);
  v3 |= 0x4000000uLL;
  *(this + 28) = v3;
  *(this + 51) = v11;
  v2 = *(a2 + 28);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_20:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  v12 = *(a2 + 53);
  v3 |= 0x10000000uLL;
  *(this + 28) = v3;
  *(this + 53) = v12;
  v2 = *(a2 + 28);
  if ((v2 & 0x800000) == 0)
  {
LABEL_21:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  v13 = *(a2 + 48);
  v3 |= 0x800000uLL;
  *(this + 28) = v3;
  *(this + 48) = v13;
  v2 = *(a2 + 28);
  if ((v2 & 0x1000) == 0)
  {
LABEL_22:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = *(a2 + 13);
  v3 |= 0x1000uLL;
  *(this + 28) = v3;
  *(this + 13) = result;
  v2 = *(a2 + 28);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_23:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  v14 = *(a2 + 50);
  v3 |= 0x2000000uLL;
  *(this + 28) = v3;
  *(this + 50) = v14;
  v2 = *(a2 + 28);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_24:
    if ((v2 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  v15 = *(a2 + 49);
  v3 |= 0x1000000uLL;
  *(this + 28) = v3;
  *(this + 49) = v15;
  v2 = *(a2 + 28);
  if ((v2 & 8) == 0)
  {
LABEL_25:
    if ((v2 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = *(a2 + 4);
  v3 |= 8uLL;
  *(this + 28) = v3;
  *(this + 4) = result;
  v2 = *(a2 + 28);
  if ((v2 & 4) == 0)
  {
LABEL_26:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = *(a2 + 3);
  v3 |= 4uLL;
  *(this + 28) = v3;
  *(this + 3) = result;
  v2 = *(a2 + 28);
  if ((v2 & 0x10) == 0)
  {
LABEL_27:
    if ((v2 & 0x100000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = *(a2 + 5);
  v3 |= 0x10uLL;
  *(this + 28) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 28);
  if ((v2 & 0x100000000) == 0)
  {
LABEL_28:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  v16 = *(a2 + 219);
  v3 |= 0x100000000uLL;
  *(this + 28) = v3;
  *(this + 219) = v16;
  v2 = *(a2 + 28);
  if ((v2 & 0x100) == 0)
  {
LABEL_29:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = *(a2 + 9);
  v3 |= 0x100uLL;
  *(this + 28) = v3;
  *(this + 9) = result;
  v2 = *(a2 + 28);
  if ((v2 & 0x800) == 0)
  {
LABEL_30:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = *(a2 + 12);
  v3 |= 0x800uLL;
  *(this + 28) = v3;
  *(this + 12) = result;
  v2 = *(a2 + 28);
  if ((v2 & 0x10000) == 0)
  {
LABEL_31:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = *(a2 + 17);
  v3 |= 0x10000uLL;
  *(this + 28) = v3;
  *(this + 17) = result;
  v2 = *(a2 + 28);
  if ((v2 & 0x20000) == 0)
  {
LABEL_32:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = *(a2 + 18);
  v3 |= 0x20000uLL;
  *(this + 28) = v3;
  *(this + 18) = result;
  v2 = *(a2 + 28);
  if ((v2 & 0x20) == 0)
  {
LABEL_33:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = *(a2 + 6);
  v3 |= 0x20uLL;
  *(this + 28) = v3;
  *(this + 6) = result;
  v2 = *(a2 + 28);
  if ((v2 & 0x400000) == 0)
  {
LABEL_34:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = *(a2 + 23);
  v3 |= 0x400000uLL;
  *(this + 28) = v3;
  *(this + 23) = result;
  v2 = *(a2 + 28);
  if ((v2 & 0x2000) == 0)
  {
LABEL_35:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = *(a2 + 14);
  v3 |= 0x2000uLL;
  *(this + 28) = v3;
  *(this + 14) = result;
  v2 = *(a2 + 28);
  if ((v2 & 0x100000) == 0)
  {
LABEL_36:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = *(a2 + 21);
  v3 |= 0x100000uLL;
  *(this + 28) = v3;
  *(this + 21) = result;
  v2 = *(a2 + 28);
  if ((v2 & 0x200) == 0)
  {
LABEL_37:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_71;
  }

LABEL_70:
  result = *(a2 + 10);
  v3 |= 0x200uLL;
  *(this + 28) = v3;
  *(this + 10) = result;
  v2 = *(a2 + 28);
  if ((v2 & 0x200000) == 0)
  {
LABEL_38:
    if ((v2 & 0x400) == 0)
    {
      return result;
    }

LABEL_72:
    result = *(a2 + 11);
    *(this + 28) = v3 | 0x400;
    *(this + 11) = result;
    return result;
  }

LABEL_71:
  result = *(a2 + 22);
  v3 |= 0x200000uLL;
  *(this + 28) = v3;
  *(this + 22) = result;
  if ((*(a2 + 28) & 0x400) != 0)
  {
    goto LABEL_72;
  }

  return result;
}

CMMsl *CMMsl::RunningFormMetrics::operator=(CMMsl *a1, const CMMsl::RunningFormMetrics *a2)
{
  if (a1 != a2)
  {
    CMMsl::RunningFormMetrics::RunningFormMetrics(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::RunningFormMetrics *a2, CMMsl::RunningFormMetrics *a3)
{
  v3 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  LOBYTE(v3) = *(this + 220);
  *(this + 220) = *(a2 + 220);
  *(a2 + 220) = v3;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  LOBYTE(v3) = *(this + 217);
  *(this + 217) = *(a2 + 217);
  *(a2 + 217) = v3;
  v7 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v7;
  LOBYTE(v3) = *(this + 221);
  *(this + 221) = *(a2 + 221);
  *(a2 + 221) = v3;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  LOBYTE(v3) = *(this + 216);
  *(this + 216) = *(a2 + 216);
  *(a2 + 216) = v3;
  LOBYTE(v3) = *(this + 218);
  *(this + 218) = *(a2 + 218);
  *(a2 + 218) = v3;
  v9 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v9;
  v10 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v10;
  v11 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v11;
  LODWORD(v3) = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v3;
  LODWORD(v3) = *(this + 51);
  *(this + 51) = *(a2 + 51);
  *(a2 + 51) = v3;
  LODWORD(v3) = *(this + 53);
  *(this + 53) = *(a2 + 53);
  *(a2 + 53) = v3;
  LODWORD(v3) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v3;
  v12 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v12;
  LODWORD(v3) = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v3;
  LODWORD(v3) = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v3;
  v13 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v13;
  v14 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v14;
  v15 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v15;
  LOBYTE(v3) = *(this + 219);
  *(this + 219) = *(a2 + 219);
  *(a2 + 219) = v3;
  v16 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v16;
  v17 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v17;
  v18 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v18;
  v19 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v19;
  v20 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v20;
  v21 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v21;
  v22 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v22;
  v23 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v23;
  v24 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v24;
  v25 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v25;
  result = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = result;
  return result;
}

double CMMsl::RunningFormMetrics::RunningFormMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C232C0;
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 224) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 221) = *(a2 + 221);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 218) = *(a2 + 218);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 219) = *(a2 + 219);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 176) = *(a2 + 176);
  result = *(a2 + 88);
  *(a1 + 88) = result;
  return result;
}

CMMsl *CMMsl::RunningFormMetrics::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::RunningFormMetrics::RunningFormMetrics(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::RunningFormMetrics::formatText(CMMsl::RunningFormMetrics *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if (v5)
  {
    PB::TextFormatter::format(a2, "emptyField0", *(this + 1));
    v5 = *(this + 28);
    if ((v5 & 0x20000000) == 0)
    {
LABEL_3:
      if ((v5 & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((v5 & 0x20000000) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(this + 216);
  PB::TextFormatter::format(a2, "emptyField1");
  v5 = *(this + 28);
  if ((v5 & 0x800000) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  v7 = *(this + 48);
  PB::TextFormatter::format(a2, "emptyField2");
  v5 = *(this + 28);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "groundContactTime", *(this + 2));
  v5 = *(this + 28);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "groundContactTimeCadence", *(this + 3));
  v5 = *(this + 28);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "groundContactTimeGrade", *(this + 4));
  v5 = *(this + 28);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  v8 = *(this + 49);
  PB::TextFormatter::format(a2, "groundContactTimeGradeSource");
  v5 = *(this + 28);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  v9 = *(this + 50);
  PB::TextFormatter::format(a2, "groundContactTimeGradeType");
  v5 = *(this + 28);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  v10 = *(this + 217);
  PB::TextFormatter::format(a2, "groundContactTimeIsValid");
  v5 = *(this + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "groundContactTimePace", *(this + 5));
  v5 = *(this + 28);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  v11 = *(this + 51);
  PB::TextFormatter::format(a2, "groundContactTimeReportingStatus");
  v5 = *(this + 28);
  if ((v5 & 0x20) == 0)
  {
LABEL_13:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "groundContactTimeUnsmoothed", *(this + 6));
  v5 = *(this + 28);
  if ((v5 & 0x40) == 0)
  {
LABEL_14:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "groundContactTimeWindowEndTime", *(this + 7));
  v5 = *(this + 28);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  v12 = *(this + 218);
  PB::TextFormatter::format(a2, "isFlat");
  v5 = *(this + 28);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  v13 = *(this + 219);
  PB::TextFormatter::format(a2, "isFormBasedStrideLength");
  v5 = *(this + 28);
  if ((v5 & 0x80) == 0)
  {
LABEL_17:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "strideLength", *(this + 8));
  v5 = *(this + 28);
  if ((v5 & 0x100) == 0)
  {
LABEL_18:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "strideLengthCadence", *(this + 9));
  v5 = *(this + 28);
  if ((v5 & 0x200) == 0)
  {
LABEL_19:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "strideLengthGrade", *(this + 10));
  v5 = *(this + 28);
  if ((v5 & 0x400) == 0)
  {
LABEL_20:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(a2, "strideLengthGradeType", *(this + 11));
  v5 = *(this + 28);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_21:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  v14 = *(this + 220);
  PB::TextFormatter::format(a2, "strideLengthIsValid");
  v5 = *(this + 28);
  if ((v5 & 0x800) == 0)
  {
LABEL_22:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "strideLengthPace", *(this + 12));
  v5 = *(this + 28);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  v15 = *(this + 52);
  PB::TextFormatter::format(a2, "strideLengthReportingStatus");
  v5 = *(this + 28);
  if ((v5 & 0x1000) == 0)
  {
LABEL_24:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "strideLengthUncalibrated", *(this + 13));
  v5 = *(this + 28);
  if ((v5 & 0x2000) == 0)
  {
LABEL_25:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "strideLengthUnsmoothed", *(this + 14));
  v5 = *(this + 28);
  if ((v5 & 0x4000) == 0)
  {
LABEL_26:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(a2, "strideLengthWindowEndTime", *(this + 15));
  v5 = *(this + 28);
  if ((v5 & 0x8000) == 0)
  {
LABEL_27:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(a2, "timestamp", *(this + 16));
  v5 = *(this + 28);
  if ((v5 & 0x10000) == 0)
  {
LABEL_28:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(a2, "verticalOscCadence", *(this + 17));
  v5 = *(this + 28);
  if ((v5 & 0x20000) == 0)
  {
LABEL_29:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(a2, "verticalOscPace", *(this + 18));
  v5 = *(this + 28);
  if ((v5 & 0x40000) == 0)
  {
LABEL_30:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(a2, "verticalOscWindowEndTime", *(this + 19));
  v5 = *(this + 28);
  if ((v5 & 0x80000) == 0)
  {
LABEL_31:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(a2, "verticalOscillation", *(this + 20));
  v5 = *(this + 28);
  if ((v5 & 0x100000) == 0)
  {
LABEL_32:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(a2, "verticalOscillationGrade", *(this + 21));
  v5 = *(this + 28);
  if ((v5 & 0x200000) == 0)
  {
LABEL_33:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(a2, "verticalOscillationGradeType", *(this + 22));
  v5 = *(this + 28);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_72:
  v16 = *(this + 221);
  PB::TextFormatter::format(a2, "verticalOscillationIsValid");
  v5 = *(this + 28);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_73:
  v17 = *(this + 53);
  PB::TextFormatter::format(a2, "verticalOscillationReportingStatus");
  if ((*(this + 28) & 0x400000) != 0)
  {
LABEL_36:
    PB::TextFormatter::format(a2, "verticalOscillationUnsmoothed", *(this + 23));
  }

LABEL_37:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::RunningFormMetrics::readFrom(CMMsl::RunningFormMetrics *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_240:
    v124 = v4 ^ 1;
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
          *(this + 28) |= 0x40uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_205;
        case 2u:
          *(this + 28) |= 0x80uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_205;
        case 3u:
          *(this + 28) |= 0x200000000uLL;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v43 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v42 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v43 = v42 != 0;
          }

          *(this + 220) = v43;
          break;
        case 4u:
          *(this + 28) |= 2uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_205;
        case 5u:
          *(this + 28) |= 0x40000000uLL;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v39 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v38 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v39 = v38 != 0;
          }

          *(this + 217) = v39;
          break;
        case 6u:
          *(this + 28) |= 0x80000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_205;
        case 7u:
          *(this + 28) |= 0x400000000uLL;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v61 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v60 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v61 = v60 != 0;
          }

          *(this + 221) = v61;
          break;
        case 8u:
          *(this + 28) |= 1uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_205;
        case 9u:
          *(this + 28) |= 0x20000000uLL;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v71 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v70 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v71 = v70 != 0;
          }

          *(this + 216) = v71;
          break;
        case 0xAu:
          *(this + 28) |= 0x80000000uLL;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v41 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v40 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v41 = v40 != 0;
          }

          *(this + 218) = v41;
          break;
        case 0xBu:
          *(this + 28) |= 0x8000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_205;
        case 0xCu:
          *(this + 28) |= 0x40000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_205;
        case 0xDu:
          *(this + 28) |= 0x4000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_205;
        case 0xEu:
          *(this + 28) |= 0x8000000uLL;
          v52 = *(a2 + 1);
          v2 = *(a2 + 2);
          v53 = *a2;
          if (v52 > 0xFFFFFFFFFFFFFFF5 || v52 + 10 > v2)
          {
            v103 = 0;
            v104 = 0;
            v56 = 0;
            if (v2 <= v52)
            {
              v2 = *(a2 + 1);
            }

            v105 = (v53 + v52);
            v106 = v2 - v52;
            v107 = v52 + 1;
            while (1)
            {
              if (!v106)
              {
                LODWORD(v56) = 0;
                *(a2 + 24) = 1;
                goto LABEL_230;
              }

              v108 = v107;
              v109 = *v105;
              *(a2 + 1) = v108;
              v56 |= (v109 & 0x7F) << v103;
              if ((v109 & 0x80) == 0)
              {
                break;
              }

              v103 += 7;
              ++v105;
              --v106;
              v107 = v108 + 1;
              v14 = v104++ > 8;
              if (v14)
              {
                LODWORD(v56) = 0;
LABEL_229:
                v2 = v108;
                goto LABEL_230;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v56) = 0;
            }

            goto LABEL_229;
          }

          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = (v53 + v52);
          v58 = v52 + 1;
          do
          {
            v2 = v58;
            *(a2 + 1) = v58;
            v59 = *v57++;
            v56 |= (v59 & 0x7F) << v54;
            if ((v59 & 0x80) == 0)
            {
              goto LABEL_230;
            }

            v54 += 7;
            ++v58;
            v14 = v55++ > 8;
          }

          while (!v14);
          LODWORD(v56) = 0;
LABEL_230:
          *(this + 52) = v56;
          break;
        case 0xFu:
          *(this + 28) |= 0x4000000uLL;
          v30 = *(a2 + 1);
          v2 = *(a2 + 2);
          v31 = *a2;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v89 = 0;
            v90 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(a2 + 1);
            }

            v91 = (v31 + v30);
            v92 = v2 - v30;
            v93 = v30 + 1;
            while (1)
            {
              if (!v92)
              {
                LODWORD(v34) = 0;
                *(a2 + 24) = 1;
                goto LABEL_222;
              }

              v94 = v93;
              v95 = *v91;
              *(a2 + 1) = v94;
              v34 |= (v95 & 0x7F) << v89;
              if ((v95 & 0x80) == 0)
              {
                break;
              }

              v89 += 7;
              ++v91;
              --v92;
              v93 = v94 + 1;
              v14 = v90++ > 8;
              if (v14)
              {
                LODWORD(v34) = 0;
LABEL_221:
                v2 = v94;
                goto LABEL_222;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_221;
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
              goto LABEL_222;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_222:
          *(this + 51) = v34;
          break;
        case 0x10u:
          *(this + 28) |= 0x10000000uLL;
          v44 = *(a2 + 1);
          v2 = *(a2 + 2);
          v45 = *a2;
          if (v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v2)
          {
            v96 = 0;
            v97 = 0;
            v48 = 0;
            if (v2 <= v44)
            {
              v2 = *(a2 + 1);
            }

            v98 = (v45 + v44);
            v99 = v2 - v44;
            v100 = v44 + 1;
            while (1)
            {
              if (!v99)
              {
                LODWORD(v48) = 0;
                *(a2 + 24) = 1;
                goto LABEL_226;
              }

              v101 = v100;
              v102 = *v98;
              *(a2 + 1) = v101;
              v48 |= (v102 & 0x7F) << v96;
              if ((v102 & 0x80) == 0)
              {
                break;
              }

              v96 += 7;
              ++v98;
              --v99;
              v100 = v101 + 1;
              v14 = v97++ > 8;
              if (v14)
              {
                LODWORD(v48) = 0;
LABEL_225:
                v2 = v101;
                goto LABEL_226;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v48) = 0;
            }

            goto LABEL_225;
          }

          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = (v45 + v44);
          v50 = v44 + 1;
          do
          {
            v2 = v50;
            *(a2 + 1) = v50;
            v51 = *v49++;
            v48 |= (v51 & 0x7F) << v46;
            if ((v51 & 0x80) == 0)
            {
              goto LABEL_226;
            }

            v46 += 7;
            ++v50;
            v14 = v47++ > 8;
          }

          while (!v14);
          LODWORD(v48) = 0;
LABEL_226:
          *(this + 53) = v48;
          break;
        case 0x11u:
          *(this + 28) |= 0x800000uLL;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v82 = 0;
            v83 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v84 = (v23 + v22);
            v85 = v2 - v22;
            v86 = v22 + 1;
            while (1)
            {
              if (!v85)
              {
                LODWORD(v26) = 0;
                *(a2 + 24) = 1;
                goto LABEL_218;
              }

              v87 = v86;
              v88 = *v84;
              *(a2 + 1) = v87;
              v26 |= (v88 & 0x7F) << v82;
              if ((v88 & 0x80) == 0)
              {
                break;
              }

              v82 += 7;
              ++v84;
              --v85;
              v86 = v87 + 1;
              v14 = v83++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_217:
                v2 = v87;
                goto LABEL_218;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_217;
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
              goto LABEL_218;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_218:
          *(this + 48) = v26;
          break;
        case 0x12u:
          *(this + 28) |= 0x1000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_205;
        case 0x13u:
          *(this + 28) |= 0x2000000uLL;
          v62 = *(a2 + 1);
          v2 = *(a2 + 2);
          v63 = *a2;
          if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v2)
          {
            v110 = 0;
            v111 = 0;
            v66 = 0;
            if (v2 <= v62)
            {
              v2 = *(a2 + 1);
            }

            v112 = (v63 + v62);
            v113 = v2 - v62;
            v114 = v62 + 1;
            while (1)
            {
              if (!v113)
              {
                LODWORD(v66) = 0;
                *(a2 + 24) = 1;
                goto LABEL_234;
              }

              v115 = v114;
              v116 = *v112;
              *(a2 + 1) = v115;
              v66 |= (v116 & 0x7F) << v110;
              if ((v116 & 0x80) == 0)
              {
                break;
              }

              v110 += 7;
              ++v112;
              --v113;
              v114 = v115 + 1;
              v14 = v111++ > 8;
              if (v14)
              {
                LODWORD(v66) = 0;
LABEL_233:
                v2 = v115;
                goto LABEL_234;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v66) = 0;
            }

            goto LABEL_233;
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
              goto LABEL_234;
            }

            v64 += 7;
            ++v68;
            v14 = v65++ > 8;
          }

          while (!v14);
          LODWORD(v66) = 0;
LABEL_234:
          *(this + 50) = v66;
          break;
        case 0x14u:
          *(this + 28) |= 0x1000000uLL;
          v72 = *(a2 + 1);
          v2 = *(a2 + 2);
          v73 = *a2;
          if (v72 > 0xFFFFFFFFFFFFFFF5 || v72 + 10 > v2)
          {
            v117 = 0;
            v118 = 0;
            v76 = 0;
            if (v2 <= v72)
            {
              v2 = *(a2 + 1);
            }

            v119 = (v73 + v72);
            v120 = v2 - v72;
            v121 = v72 + 1;
            while (1)
            {
              if (!v120)
              {
                LODWORD(v76) = 0;
                *(a2 + 24) = 1;
                goto LABEL_238;
              }

              v122 = v121;
              v123 = *v119;
              *(a2 + 1) = v122;
              v76 |= (v123 & 0x7F) << v117;
              if ((v123 & 0x80) == 0)
              {
                break;
              }

              v117 += 7;
              ++v119;
              --v120;
              v121 = v122 + 1;
              v14 = v118++ > 8;
              if (v14)
              {
                LODWORD(v76) = 0;
LABEL_237:
                v2 = v122;
                goto LABEL_238;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v76) = 0;
            }

            goto LABEL_237;
          }

          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = (v73 + v72);
          v78 = v72 + 1;
          do
          {
            v2 = v78;
            *(a2 + 1) = v78;
            v79 = *v77++;
            v76 |= (v79 & 0x7F) << v74;
            if ((v79 & 0x80) == 0)
            {
              goto LABEL_238;
            }

            v74 += 7;
            ++v78;
            v14 = v75++ > 8;
          }

          while (!v14);
          LODWORD(v76) = 0;
LABEL_238:
          *(this + 49) = v76;
          break;
        case 0x15u:
          *(this + 28) |= 8uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_205;
        case 0x16u:
          *(this + 28) |= 4uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_205;
        case 0x17u:
          *(this + 28) |= 0x10uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_205;
        case 0x18u:
          *(this + 28) |= 0x100000000uLL;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v81 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v80 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v81 = v80 != 0;
          }

          *(this + 219) = v81;
          break;
        case 0x19u:
          *(this + 28) |= 0x100uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_205;
        case 0x1Au:
          *(this + 28) |= 0x800uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_205;
        case 0x1Bu:
          *(this + 28) |= 0x10000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_205;
        case 0x1Cu:
          *(this + 28) |= 0x20000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_205;
        case 0x1Du:
          *(this + 28) |= 0x20uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_205;
        case 0x1Eu:
          *(this + 28) |= 0x400000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 23) = *(*a2 + v2);
          goto LABEL_205;
        case 0x1Fu:
          *(this + 28) |= 0x2000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_205;
        case 0x20u:
          *(this + 28) |= 0x100000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_205;
        case 0x21u:
          *(this + 28) |= 0x200uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_205;
        case 0x22u:
          *(this + 28) |= 0x200000uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_143;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_205;
        case 0x23u:
          *(this + 28) |= 0x400uLL;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_143:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 11) = *(*a2 + v2);
LABEL_205:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          break;
        default:
          goto LABEL_17;
      }

LABEL_206:
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
      goto LABEL_206;
    }

    v124 = 0;
  }

  return v124 & 1;
}

uint64_t CMMsl::RunningFormMetrics::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 224);
  if ((v4 & 0x40) != 0)
  {
    this = PB::Writer::write(a2, *(this + 56));
    v4 = *(v3 + 224);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 0x200000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 224);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  v5 = *(v3 + 220);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 224);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 224);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  v6 = *(v3 + 217);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 224);
  if ((v4 & 0x80000) == 0)
  {
LABEL_7:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 160));
  v4 = *(v3 + 224);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  v7 = *(v3 + 221);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 224);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 224);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_10:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  v8 = *(v3 + 216);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 224);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_11:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  v9 = *(v3 + 218);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 224);
  if ((v4 & 0x8000) == 0)
  {
LABEL_12:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 128));
  v4 = *(v3 + 224);
  if ((v4 & 0x40000) == 0)
  {
LABEL_13:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 152));
  v4 = *(v3 + 224);
  if ((v4 & 0x4000) == 0)
  {
LABEL_14:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 120));
  v4 = *(v3 + 224);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  v10 = *(v3 + 208);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 224);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_16:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  v11 = *(v3 + 204);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 224);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  v12 = *(v3 + 212);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 224);
  if ((v4 & 0x800000) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  v13 = *(v3 + 192);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 224);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = PB::Writer::write(a2, *(v3 + 104));
  v4 = *(v3 + 224);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_20:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  v14 = *(v3 + 200);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 224);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_21:
    if ((v4 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  v15 = *(v3 + 196);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 224);
  if ((v4 & 8) == 0)
  {
LABEL_22:
    if ((v4 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 224);
  if ((v4 & 4) == 0)
  {
LABEL_23:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 224);
  if ((v4 & 0x10) == 0)
  {
LABEL_24:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 224);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  v16 = *(v3 + 219);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 224);
  if ((v4 & 0x100) == 0)
  {
LABEL_26:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 224);
  if ((v4 & 0x800) == 0)
  {
LABEL_27:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = PB::Writer::write(a2, *(v3 + 96));
  v4 = *(v3 + 224);
  if ((v4 & 0x10000) == 0)
  {
LABEL_28:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = PB::Writer::write(a2, *(v3 + 136));
  v4 = *(v3 + 224);
  if ((v4 & 0x20000) == 0)
  {
LABEL_29:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = PB::Writer::write(a2, *(v3 + 144));
  v4 = *(v3 + 224);
  if ((v4 & 0x20) == 0)
  {
LABEL_30:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 224);
  if ((v4 & 0x400000) == 0)
  {
LABEL_31:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = PB::Writer::write(a2, *(v3 + 184));
  v4 = *(v3 + 224);
  if ((v4 & 0x2000) == 0)
  {
LABEL_32:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = PB::Writer::write(a2, *(v3 + 112));
  v4 = *(v3 + 224);
  if ((v4 & 0x100000) == 0)
  {
LABEL_33:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = PB::Writer::write(a2, *(v3 + 168));
  v4 = *(v3 + 224);
  if ((v4 & 0x200) == 0)
  {
LABEL_34:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_35;
    }

LABEL_70:
    this = PB::Writer::write(a2, *(v3 + 176));
    if ((*(v3 + 224) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_71;
  }

LABEL_69:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 224);
  if ((v4 & 0x200000) != 0)
  {
    goto LABEL_70;
  }

LABEL_35:
  if ((v4 & 0x400) == 0)
  {
    return this;
  }

LABEL_71:
  v17 = *(v3 + 88);

  return PB::Writer::write(a2, v17);
}

uint64_t CMMsl::RunningFormMetrics::hash_value(CMMsl::RunningFormMetrics *this)
{
  v1 = *(this + 28);
  if ((v1 & 0x40) != 0)
  {
    if (*(this + 7) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 7);
    }
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 0x80) != 0)
  {
    v32 = *(this + 8);
    if (v32 == 0.0)
    {
      v32 = 0.0;
    }

    v41 = v32;
    if ((v1 & 0x200000000) != 0)
    {
LABEL_8:
      v40 = *(this + 220);
      if ((v1 & 2) != 0)
      {
        goto LABEL_9;
      }

LABEL_97:
      v39 = 0.0;
      if ((v1 & 0x40000000) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_98;
    }
  }

  else
  {
    v41 = 0.0;
    if ((v1 & 0x200000000) != 0)
    {
      goto LABEL_8;
    }
  }

  v40 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_97;
  }

LABEL_9:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  v39 = v3;
  if ((v1 & 0x40000000) != 0)
  {
LABEL_12:
    v38 = *(this + 217);
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_13;
    }

LABEL_99:
    v37 = 0.0;
    if ((v1 & 0x400000000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_100;
  }

LABEL_98:
  v38 = 0;
  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_99;
  }

LABEL_13:
  v4 = *(this + 20);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  v37 = v4;
  if ((v1 & 0x400000000) != 0)
  {
LABEL_16:
    v36 = *(this + 221);
    if (v1)
    {
      goto LABEL_17;
    }

LABEL_101:
    v35 = 0.0;
    if ((v1 & 0x20000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_102;
  }

LABEL_100:
  v36 = 0;
  if ((v1 & 1) == 0)
  {
    goto LABEL_101;
  }

LABEL_17:
  v5 = *(this + 1);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  v35 = v5;
  if ((v1 & 0x20000000) != 0)
  {
LABEL_20:
    v34 = *(this + 216);
    if ((v1 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_103;
  }

LABEL_102:
  v34 = 0;
  if ((v1 & 0x80000000) != 0)
  {
LABEL_21:
    v6 = *(this + 218);
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_22;
    }

LABEL_104:
    v7 = 0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_26;
    }

LABEL_105:
    v8 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_30;
    }

LABEL_106:
    v9 = 0;
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_107;
  }

LABEL_103:
  v6 = 0;
  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_104;
  }

LABEL_22:
  if (*(this + 16) == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(this + 16);
  }

  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_105;
  }

LABEL_26:
  if (*(this + 19) == 0.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(this + 19);
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_106;
  }

LABEL_30:
  if (*(this + 15) == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(this + 15);
  }

  if ((v1 & 0x8000000) != 0)
  {
LABEL_34:
    v10 = *(this + 52);
    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_108;
  }

LABEL_107:
  v10 = 0;
  if ((v1 & 0x4000000) != 0)
  {
LABEL_35:
    v11 = *(this + 51);
    if ((v1 & 0x10000000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_109;
  }

LABEL_108:
  v11 = 0;
  if ((v1 & 0x10000000) != 0)
  {
LABEL_36:
    v12 = *(this + 53);
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_110;
  }

LABEL_109:
  v12 = 0;
  if ((v1 & 0x800000) != 0)
  {
LABEL_37:
    v13 = *(this + 48);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_38;
    }

LABEL_111:
    v14 = 0;
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_112;
  }

LABEL_110:
  v13 = 0;
  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_111;
  }

LABEL_38:
  if (*(this + 13) == 0.0)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(this + 13);
  }

  if ((v1 & 0x2000000) != 0)
  {
LABEL_42:
    v15 = *(this + 50);
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_113;
  }

LABEL_112:
  v15 = 0;
  if ((v1 & 0x1000000) != 0)
  {
LABEL_43:
    v16 = *(this + 49);
    if ((v1 & 8) != 0)
    {
      goto LABEL_44;
    }

LABEL_114:
    v17 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_48;
    }

LABEL_115:
    v18 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_52;
    }

LABEL_116:
    v19 = 0;
    if ((v1 & 0x100000000) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_117;
  }

LABEL_113:
  v16 = 0;
  if ((v1 & 8) == 0)
  {
    goto LABEL_114;
  }

LABEL_44:
  if (*(this + 4) == 0.0)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(this + 4);
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_115;
  }

LABEL_48:
  if (*(this + 3) == 0.0)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(this + 3);
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_116;
  }

LABEL_52:
  if (*(this + 5) == 0.0)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(this + 5);
  }

  if ((v1 & 0x100000000) != 0)
  {
LABEL_56:
    v20 = *(this + 219);
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_57;
    }

LABEL_118:
    v21 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_61;
    }

LABEL_119:
    v22 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_65;
    }

LABEL_120:
    v23 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_69;
    }

LABEL_121:
    v24 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_72;
    }

LABEL_122:
    v25 = 0.0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_75;
    }

LABEL_123:
    v26 = 0.0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_78;
    }

LABEL_124:
    v27 = 0.0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_81;
    }

LABEL_125:
    v28 = 0.0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_84;
    }

LABEL_126:
    v29 = 0.0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_87;
    }

    goto LABEL_127;
  }

LABEL_117:
  v20 = 0;
  if ((v1 & 0x100) == 0)
  {
    goto LABEL_118;
  }

LABEL_57:
  if (*(this + 9) == 0.0)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(this + 9);
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_119;
  }

LABEL_61:
  if (*(this + 12) == 0.0)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(this + 12);
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_120;
  }

LABEL_65:
  if (*(this + 17) == 0.0)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(this + 17);
  }

  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_121;
  }

LABEL_69:
  v24 = *(this + 18);
  if (v24 == 0.0)
  {
    v24 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_122;
  }

LABEL_72:
  v25 = *(this + 6);
  if (v25 == 0.0)
  {
    v25 = 0.0;
  }

  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_123;
  }

LABEL_75:
  v26 = *(this + 23);
  if (v26 == 0.0)
  {
    v26 = 0.0;
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_124;
  }

LABEL_78:
  v27 = *(this + 14);
  if (v27 == 0.0)
  {
    v27 = 0.0;
  }

  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_125;
  }

LABEL_81:
  v28 = *(this + 21);
  if (v28 == 0.0)
  {
    v28 = 0.0;
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_126;
  }

LABEL_84:
  v29 = *(this + 10);
  if (v29 == 0.0)
  {
    v29 = 0.0;
  }

  if ((v1 & 0x200000) != 0)
  {
LABEL_87:
    v30 = *(this + 22);
    if (v30 == 0.0)
    {
      v30 = 0.0;
    }

    if ((v1 & 0x400) != 0)
    {
      goto LABEL_90;
    }

LABEL_128:
    v31 = 0.0;
    return *&v41 ^ v2 ^ v40 ^ *&v39 ^ v38 ^ *&v37 ^ v36 ^ *&v35 ^ v34 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ *&v24 ^ *&v25 ^ *&v26 ^ *&v27 ^ *&v28 ^ *&v29 ^ *&v30 ^ *&v31;
  }

LABEL_127:
  v30 = 0.0;
  if ((v1 & 0x400) == 0)
  {
    goto LABEL_128;
  }

LABEL_90:
  v31 = *(this + 11);
  if (v31 == 0.0)
  {
    v31 = 0.0;
  }

  return *&v41 ^ v2 ^ v40 ^ *&v39 ^ v38 ^ *&v37 ^ v36 ^ *&v35 ^ v34 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ *&v24 ^ *&v25 ^ *&v26 ^ *&v27 ^ *&v28 ^ *&v29 ^ *&v30 ^ *&v31;
}

void CMMsl::RunningPower::~RunningPower(CMMsl::RunningPower *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::RunningPower::RunningPower(uint64_t this, const CMMsl::RunningPower *a2)
{
  *this = &unk_286C232F8;
  *(this + 128) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 0x40) != 0)
  {
    v4 = *(a2 + 7);
    v3 = 64;
    *(this + 128) = 64;
    *(this + 56) = v4;
    v2 = *(a2 + 32);
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
    v5 = *(a2 + 6);
    v3 |= 0x20u;
    *(this + 128) = v3;
    *(this + 48) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 0x100) != 0)
  {
    v6 = *(a2 + 9);
    v3 |= 0x100u;
    *(this + 128) = v3;
    *(this + 72) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 0x100000) == 0)
    {
LABEL_8:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  else if ((v2 & 0x100000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 124);
  v3 |= 0x100000u;
  *(this + 128) = v3;
  *(this + 124) = v7;
  v2 = *(a2 + 32);
  if ((v2 & 0x800) == 0)
  {
LABEL_9:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v8 = *(a2 + 12);
  v3 |= 0x800u;
  *(this + 128) = v3;
  *(this + 96) = v8;
  v2 = *(a2 + 32);
  if ((v2 & 0x400) == 0)
  {
LABEL_10:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v9 = *(a2 + 11);
  v3 |= 0x400u;
  *(this + 128) = v3;
  *(this + 88) = v9;
  v2 = *(a2 + 32);
  if ((v2 & 0x2000) == 0)
  {
LABEL_11:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v10 = *(a2 + 27);
  v3 |= 0x2000u;
  *(this + 128) = v3;
  *(this + 108) = v10;
  v2 = *(a2 + 32);
  if ((v2 & 0x1000) == 0)
  {
LABEL_12:
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  v11 = *(a2 + 26);
  v3 |= 0x1000u;
  *(this + 128) = v3;
  *(this + 104) = v11;
  v2 = *(a2 + 32);
  if ((v2 & 2) == 0)
  {
LABEL_13:
    if ((v2 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  v12 = *(a2 + 2);
  v3 |= 2u;
  *(this + 128) = v3;
  *(this + 16) = v12;
  v2 = *(a2 + 32);
  if ((v2 & 8) == 0)
  {
LABEL_14:
    if ((v2 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v13 = *(a2 + 4);
  v3 |= 8u;
  *(this + 128) = v3;
  *(this + 32) = v13;
  v2 = *(a2 + 32);
  if ((v2 & 4) == 0)
  {
LABEL_15:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v14 = *(a2 + 3);
  v3 |= 4u;
  *(this + 128) = v3;
  *(this + 24) = v14;
  v2 = *(a2 + 32);
  if ((v2 & 0x80000) == 0)
  {
LABEL_16:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v15 = *(a2 + 123);
  v3 |= 0x80000u;
  *(this + 128) = v3;
  *(this + 123) = v15;
  v2 = *(a2 + 32);
  if ((v2 & 0x10) == 0)
  {
LABEL_17:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  v16 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 128) = v3;
  *(this + 40) = v16;
  v2 = *(a2 + 32);
  if ((v2 & 0x200) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  v17 = *(a2 + 10);
  v3 |= 0x200u;
  *(this + 128) = v3;
  *(this + 80) = v17;
  v2 = *(a2 + 32);
  if ((v2 & 0x80) == 0)
  {
LABEL_19:
    if ((v2 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  v18 = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 128) = v3;
  *(this + 64) = v18;
  v2 = *(a2 + 32);
  if ((v2 & 1) == 0)
  {
LABEL_20:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_40:
  v19 = *(a2 + 1);
  v3 |= 1u;
  *(this + 128) = v3;
  *(this + 8) = v19;
  v2 = *(a2 + 32);
  if ((v2 & 0x200000) == 0)
  {
LABEL_21:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_41:
  v20 = *(a2 + 125);
  v3 |= 0x200000u;
  *(this + 128) = v3;
  *(this + 125) = v20;
  v2 = *(a2 + 32);
  if ((v2 & 0x20000) == 0)
  {
LABEL_22:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_43;
  }

LABEL_42:
  v21 = *(a2 + 121);
  v3 |= 0x20000u;
  *(this + 128) = v3;
  *(this + 121) = v21;
  v2 = *(a2 + 32);
  if ((v2 & 0x8000) == 0)
  {
LABEL_23:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_43:
  v22 = *(a2 + 29);
  v3 |= 0x8000u;
  *(this + 128) = v3;
  *(this + 116) = v22;
  v2 = *(a2 + 32);
  if ((v2 & 0x10000) == 0)
  {
LABEL_24:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_45;
  }

LABEL_44:
  v23 = *(a2 + 120);
  v3 |= 0x10000u;
  *(this + 128) = v3;
  *(this + 120) = v23;
  v2 = *(a2 + 32);
  if ((v2 & 0x40000) == 0)
  {
LABEL_25:
    if ((v2 & 0x4000) == 0)
    {
      return this;
    }

LABEL_46:
    v25 = *(a2 + 28);
    *(this + 128) = v3 | 0x4000;
    *(this + 112) = v25;
    return this;
  }

LABEL_45:
  v24 = *(a2 + 122);
  v3 |= 0x40000u;
  *(this + 128) = v3;
  *(this + 122) = v24;
  if ((*(a2 + 32) & 0x4000) != 0)
  {
    goto LABEL_46;
  }

  return this;
}

CMMsl *CMMsl::RunningPower::operator=(CMMsl *a1, const CMMsl::RunningPower *a2)
{
  if (a1 != a2)
  {
    CMMsl::RunningPower::RunningPower(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::RunningPower *a2, CMMsl::RunningPower *a3)
{
  v3 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v6;
  LOBYTE(v3) = *(this + 124);
  *(this + 124) = *(a2 + 124);
  *(a2 + 124) = v3;
  v7 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v7;
  v8 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v8;
  v9 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v9;
  v10 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v10;
  v11 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v11;
  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
  v13 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v13;
  LOBYTE(v10) = *(this + 123);
  *(this + 123) = *(a2 + 123);
  *(a2 + 123) = v10;
  v14 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v14;
  v15 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v15;
  v16 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v16;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  LOBYTE(v10) = *(this + 125);
  *(this + 125) = *(a2 + 125);
  *(a2 + 125) = v10;
  LOBYTE(v10) = *(this + 121);
  *(this + 121) = *(a2 + 121);
  *(a2 + 121) = v10;
  v18 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v18;
  LOBYTE(v18) = *(this + 120);
  *(this + 120) = *(a2 + 120);
  *(a2 + 120) = v18;
  LOBYTE(v18) = *(this + 122);
  *(this + 122) = *(a2 + 122);
  *(a2 + 122) = v18;
  v19 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v19;
  return result;
}

double CMMsl::RunningPower::RunningPower(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C232F8;
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 123) = *(a2 + 123);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 122) = *(a2 + 122);
  *(a1 + 112) = *(a2 + 112);
  return result;
}

CMMsl *CMMsl::RunningPower::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::RunningPower::RunningPower(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::RunningPower::formatText(CMMsl::RunningPower *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 0x1000) != 0)
  {
    v6 = *(this + 26);
    PB::TextFormatter::format(a2, "activityType");
    v5 = *(this + 32);
    if ((v5 & 0x2000) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 27);
  PB::TextFormatter::format(a2, "activityTypeWithoutOverride");
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "currentCadence", *(this + 1));
  v5 = *(this + 32);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "currentPace", *(this + 2));
  v5 = *(this + 32);
  if ((v5 & 0x4000) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  v8 = *(this + 28);
  PB::TextFormatter::format(a2, "elevationSource");
  v5 = *(this + 32);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "eta", *(this + 3));
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "grade", *(this + 4));
  v5 = *(this + 32);
  if ((v5 & 0x8000) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  v9 = *(this + 29);
  PB::TextFormatter::format(a2, "gradeOnsetCounter");
  v5 = *(this + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "horizSpeed", *(this + 5));
  v5 = *(this + 32);
  if ((v5 & 0x10000) == 0)
  {
LABEL_11:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  v10 = *(this + 120);
  PB::TextFormatter::format(a2, "isArmConstrainedStateValid");
  v5 = *(this + 32);
  if ((v5 & 0x20000) == 0)
  {
LABEL_12:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  v11 = *(this + 121);
  PB::TextFormatter::format(a2, "isGradeOnsetEscalated");
  v5 = *(this + 32);
  if ((v5 & 0x40000) == 0)
  {
LABEL_13:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  v12 = *(this + 122);
  PB::TextFormatter::format(a2, "isRunning");
  v5 = *(this + 32);
  if ((v5 & 0x80000) == 0)
  {
LABEL_14:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  v13 = *(this + 123);
  PB::TextFormatter::format(a2, "isValid");
  v5 = *(this + 32);
  if ((v5 & 0x100000) == 0)
  {
LABEL_15:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  v14 = *(this + 124);
  PB::TextFormatter::format(a2, "isWeightSet");
  v5 = *(this + 32);
  if ((v5 & 0x200000) == 0)
  {
LABEL_16:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  v15 = *(this + 125);
  PB::TextFormatter::format(a2, "isWorkoutSelected");
  v5 = *(this + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_17:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "powerWattage", *(this + 6));
  v5 = *(this + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_18:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "startTime", *(this + 7));
  v5 = *(this + 32);
  if ((v5 & 0x80) == 0)
  {
LABEL_19:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "userHeight", *(this + 8));
  v5 = *(this + 32);
  if ((v5 & 0x100) == 0)
  {
LABEL_20:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "userWeight", *(this + 9));
  v5 = *(this + 32);
  if ((v5 & 0x200) == 0)
  {
LABEL_21:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "verticalSpeed", *(this + 10));
  v5 = *(this + 32);
  if ((v5 & 0x400) == 0)
  {
LABEL_22:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "wLoad", *(this + 11));
  if ((*(this + 32) & 0x800) != 0)
  {
LABEL_23:
    PB::TextFormatter::format(a2, "workrateMETs", *(this + 12));
  }

LABEL_24:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::RunningPower::readFrom(CMMsl::RunningPower *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_167:
    v94 = v4 ^ 1;
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
        goto LABEL_167;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 32) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_94;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_142;
        case 2u:
          *(this + 32) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_94;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_142;
        case 3u:
          *(this + 32) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_94;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_142;
        case 4u:
          *(this + 32) |= 0x100000u;
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

          *(this + 124) = v27;
          break;
        case 5u:
          *(this + 32) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_94;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_142;
        case 6u:
          *(this + 32) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_94;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_142;
        case 7u:
          *(this + 32) |= 0x2000u;
          v48 = *(a2 + 1);
          v2 = *(a2 + 2);
          v49 = *a2;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v80 = 0;
            v81 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v2 = *(a2 + 1);
            }

            v82 = (v49 + v48);
            v83 = v2 - v48;
            v84 = v48 + 1;
            while (1)
            {
              if (!v83)
              {
                LODWORD(v52) = 0;
                *(a2 + 24) = 1;
                goto LABEL_158;
              }

              v85 = v84;
              v86 = *v82;
              *(a2 + 1) = v85;
              v52 |= (v86 & 0x7F) << v80;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v80 += 7;
              ++v82;
              --v83;
              v84 = v85 + 1;
              v14 = v81++ > 8;
              if (v14)
              {
                LODWORD(v52) = 0;
LABEL_157:
                v2 = v85;
                goto LABEL_158;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_157;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = (v49 + v48);
          v54 = v48 + 1;
          do
          {
            v2 = v54;
            *(a2 + 1) = v54;
            v55 = *v53++;
            v52 |= (v55 & 0x7F) << v50;
            if ((v55 & 0x80) == 0)
            {
              goto LABEL_158;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_158:
          *(this + 27) = v52;
          break;
        case 8u:
          *(this + 32) |= 0x1000u;
          v28 = *(a2 + 1);
          v2 = *(a2 + 2);
          v29 = *a2;
          if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v2)
          {
            v66 = 0;
            v67 = 0;
            v32 = 0;
            if (v2 <= v28)
            {
              v2 = *(a2 + 1);
            }

            v68 = (v29 + v28);
            v69 = v2 - v28;
            v70 = v28 + 1;
            while (1)
            {
              if (!v69)
              {
                LODWORD(v32) = 0;
                *(a2 + 24) = 1;
                goto LABEL_150;
              }

              v71 = v70;
              v72 = *v68;
              *(a2 + 1) = v71;
              v32 |= (v72 & 0x7F) << v66;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              ++v68;
              --v69;
              v70 = v71 + 1;
              v14 = v67++ > 8;
              if (v14)
              {
                LODWORD(v32) = 0;
LABEL_149:
                v2 = v71;
                goto LABEL_150;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v32) = 0;
            }

            goto LABEL_149;
          }

          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = (v29 + v28);
          v34 = v28 + 1;
          do
          {
            v2 = v34;
            *(a2 + 1) = v34;
            v35 = *v33++;
            v32 |= (v35 & 0x7F) << v30;
            if ((v35 & 0x80) == 0)
            {
              goto LABEL_150;
            }

            v30 += 7;
            ++v34;
            v14 = v31++ > 8;
          }

          while (!v14);
          LODWORD(v32) = 0;
LABEL_150:
          *(this + 26) = v32;
          break;
        case 9u:
          *(this + 32) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_94;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_142;
        case 0xAu:
          *(this + 32) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_94;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_142;
        case 0xBu:
          *(this + 32) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_94;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_142;
        case 0xCu:
          *(this + 32) |= 0x80000u;
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

          *(this + 123) = v25;
          break;
        case 0xDu:
          *(this + 32) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_94;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_142;
        case 0xEu:
          *(this + 32) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_94;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_142;
        case 0xFu:
          *(this + 32) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_94;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_142;
        case 0x10u:
          *(this + 32) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_94:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 1) = *(*a2 + v2);
LABEL_142:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          break;
        case 0x11u:
          *(this + 32) |= 0x200000u;
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

          *(this + 125) = v23;
          break;
        case 0x12u:
          *(this + 32) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v37 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v36 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v37 = v36 != 0;
          }

          *(this + 121) = v37;
          break;
        case 0x13u:
          *(this + 32) |= 0x8000u;
          v56 = *(a2 + 1);
          v2 = *(a2 + 2);
          v57 = *a2;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v87 = 0;
            v88 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v2 = *(a2 + 1);
            }

            v89 = (v57 + v56);
            v90 = v2 - v56;
            v91 = v56 + 1;
            while (1)
            {
              if (!v90)
              {
                LODWORD(v60) = 0;
                *(a2 + 24) = 1;
                goto LABEL_162;
              }

              v92 = v91;
              v93 = *v89;
              *(a2 + 1) = v92;
              v60 |= (v93 & 0x7F) << v87;
              if ((v93 & 0x80) == 0)
              {
                break;
              }

              v87 += 7;
              ++v89;
              --v90;
              v91 = v92 + 1;
              v14 = v88++ > 8;
              if (v14)
              {
                LODWORD(v60) = 0;
LABEL_161:
                v2 = v92;
                goto LABEL_162;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v60) = 0;
            }

            goto LABEL_161;
          }

          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = (v57 + v56);
          v62 = v56 + 1;
          do
          {
            v2 = v62;
            *(a2 + 1) = v62;
            v63 = *v61++;
            v60 |= (v63 & 0x7F) << v58;
            if ((v63 & 0x80) == 0)
            {
              goto LABEL_162;
            }

            v58 += 7;
            ++v62;
            v14 = v59++ > 8;
          }

          while (!v14);
          LODWORD(v60) = 0;
LABEL_162:
          *(this + 29) = v60;
          break;
        case 0x14u:
          *(this + 32) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v65 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v64 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v65 = v64 != 0;
          }

          *(this + 120) = v65;
          break;
        case 0x15u:
          *(this + 32) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v39 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v38 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v39 = v38 != 0;
          }

          *(this + 122) = v39;
          break;
        case 0x16u:
          *(this + 32) |= 0x4000u;
          v40 = *(a2 + 1);
          v2 = *(a2 + 2);
          v41 = *a2;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v73 = 0;
            v74 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v2 = *(a2 + 1);
            }

            v75 = (v41 + v40);
            v76 = v2 - v40;
            v77 = v40 + 1;
            while (1)
            {
              if (!v76)
              {
                LODWORD(v44) = 0;
                *(a2 + 24) = 1;
                goto LABEL_154;
              }

              v78 = v77;
              v79 = *v75;
              *(a2 + 1) = v78;
              v44 |= (v79 & 0x7F) << v73;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v73 += 7;
              ++v75;
              --v76;
              v77 = v78 + 1;
              v14 = v74++ > 8;
              if (v14)
              {
                LODWORD(v44) = 0;
LABEL_153:
                v2 = v78;
                goto LABEL_154;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v44) = 0;
            }

            goto LABEL_153;
          }

          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = (v41 + v40);
          v46 = v40 + 1;
          do
          {
            v2 = v46;
            *(a2 + 1) = v46;
            v47 = *v45++;
            v44 |= (v47 & 0x7F) << v42;
            if ((v47 & 0x80) == 0)
            {
              goto LABEL_154;
            }

            v42 += 7;
            ++v46;
            v14 = v43++ > 8;
          }

          while (!v14);
          LODWORD(v44) = 0;
LABEL_154:
          *(this + 28) = v44;
          break;
        default:
          goto LABEL_17;
      }

LABEL_163:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_167;
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
        goto LABEL_167;
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
      goto LABEL_163;
    }

    v94 = 0;
  }

  return v94 & 1;
}

uint64_t CMMsl::RunningPower::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 128);
  if ((v4 & 0x40) != 0)
  {
    this = PB::Writer::write(a2, *(this + 56));
    v4 = *(v3 + 128);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 128);
  if ((v4 & 0x100) == 0)
  {
LABEL_4:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 128);
  if ((v4 & 0x100000) == 0)
  {
LABEL_5:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  v5 = *(v3 + 124);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 128);
  if ((v4 & 0x800) == 0)
  {
LABEL_6:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 96));
  v4 = *(v3 + 128);
  if ((v4 & 0x400) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 128);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  v6 = *(v3 + 108);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 128);
  if ((v4 & 0x1000) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  v7 = *(v3 + 104);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 128);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 128);
  if ((v4 & 8) == 0)
  {
LABEL_11:
    if ((v4 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 128);
  if ((v4 & 4) == 0)
  {
LABEL_12:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 128);
  if ((v4 & 0x80000) == 0)
  {
LABEL_13:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v8 = *(v3 + 123);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 128);
  if ((v4 & 0x10) == 0)
  {
LABEL_14:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 128);
  if ((v4 & 0x200) == 0)
  {
LABEL_15:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 128);
  if ((v4 & 0x80) == 0)
  {
LABEL_16:
    if ((v4 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 128);
  if ((v4 & 1) == 0)
  {
LABEL_17:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 128);
  if ((v4 & 0x200000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  v9 = *(v3 + 125);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 128);
  if ((v4 & 0x20000) == 0)
  {
LABEL_19:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  v10 = *(v3 + 121);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 128);
  if ((v4 & 0x8000) == 0)
  {
LABEL_20:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  v11 = *(v3 + 116);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 128);
  if ((v4 & 0x10000) == 0)
  {
LABEL_21:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

LABEL_44:
    v13 = *(v3 + 122);
    this = PB::Writer::write(a2);
    if ((*(v3 + 128) & 0x4000) == 0)
    {
      return this;
    }

    goto LABEL_45;
  }

LABEL_43:
  v12 = *(v3 + 120);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 128);
  if ((v4 & 0x40000) != 0)
  {
    goto LABEL_44;
  }

LABEL_22:
  if ((v4 & 0x4000) == 0)
  {
    return this;
  }

LABEL_45:
  v14 = *(v3 + 112);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::RunningPower::hash_value(CMMsl::RunningPower *this)
{
  v1 = *(this + 32);
  if ((v1 & 0x40) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_43:
    v3 = 0.0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_6;
    }

LABEL_44:
    v4 = 0.0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

  v2 = *(this + 7);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_43;
  }

LABEL_3:
  v3 = *(this + 6);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_44;
  }

LABEL_6:
  v4 = *(this + 9);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 0x100000) != 0)
  {
LABEL_9:
    v5 = *(this + 124);
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_10;
    }

LABEL_46:
    v6 = 0.0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_13;
    }

LABEL_47:
    v7 = 0.0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_45:
  v5 = 0;
  if ((v1 & 0x800) == 0)
  {
    goto LABEL_46;
  }

LABEL_10:
  v6 = *(this + 12);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_47;
  }

LABEL_13:
  v7 = *(this + 11);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 0x2000) != 0)
  {
LABEL_16:
    v8 = *(this + 27);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  v8 = 0;
  if ((v1 & 0x1000) != 0)
  {
LABEL_17:
    v9 = *(this + 26);
    if ((v1 & 2) != 0)
    {
      goto LABEL_18;
    }

LABEL_50:
    v10 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_21;
    }

LABEL_51:
    v11 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_24;
    }

LABEL_52:
    v12 = 0.0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_53;
  }

LABEL_49:
  v9 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_50;
  }

LABEL_18:
  v10 = *(this + 2);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_51;
  }

LABEL_21:
  v11 = *(this + 4);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_52;
  }

LABEL_24:
  v12 = *(this + 3);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  if ((v1 & 0x80000) != 0)
  {
LABEL_27:
    v13 = *(this + 123);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_28;
    }

LABEL_54:
    v14 = 0.0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_31;
    }

LABEL_55:
    v15 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_56;
  }

LABEL_53:
  v13 = 0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_54;
  }

LABEL_28:
  v14 = *(this + 5);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_55;
  }

LABEL_31:
  v15 = *(this + 10);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  if ((v1 & 0x80) != 0)
  {
LABEL_34:
    v16 = *(this + 8);
    if (v16 == 0.0)
    {
      v16 = 0.0;
    }

    if (v1)
    {
      goto LABEL_37;
    }

LABEL_57:
    v17 = 0.0;
    goto LABEL_58;
  }

LABEL_56:
  v16 = 0.0;
  if ((v1 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_37:
  v17 = *(this + 1);
  if (v17 == 0.0)
  {
    v17 = 0.0;
  }

LABEL_58:
  if ((v1 & 0x200000) != 0)
  {
    v18 = *(this + 125);
    if ((v1 & 0x20000) != 0)
    {
LABEL_60:
      v19 = *(this + 121);
      if ((v1 & 0x8000) != 0)
      {
        goto LABEL_61;
      }

      goto LABEL_67;
    }
  }

  else
  {
    v18 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_60;
    }
  }

  v19 = 0;
  if ((v1 & 0x8000) != 0)
  {
LABEL_61:
    v20 = *(this + 29);
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_68;
  }

LABEL_67:
  v20 = 0;
  if ((v1 & 0x10000) != 0)
  {
LABEL_62:
    v21 = *(this + 120);
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_63;
    }

LABEL_69:
    v22 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_64;
    }

LABEL_70:
    v23 = 0;
    return *&v3 ^ *&v2 ^ *&v4 ^ v5 ^ *&v6 ^ *&v7 ^ v8 ^ v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ v13 ^ *&v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23;
  }

LABEL_68:
  v21 = 0;
  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_69;
  }

LABEL_63:
  v22 = *(this + 122);
  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_70;
  }

LABEL_64:
  v23 = *(this + 28);
  return *&v3 ^ *&v2 ^ *&v4 ^ v5 ^ *&v6 ^ *&v7 ^ v8 ^ v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ v13 ^ *&v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23;
}

void CMMsl::RunningRotationAxis::~RunningRotationAxis(CMMsl::RunningRotationAxis *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::RunningRotationAxis::RunningRotationAxis(CMMsl::RunningRotationAxis *this, const CMMsl::RunningRotationAxis *a2)
{
  *this = &unk_286C23330;
  *(this + 12) = 0;
  v2 = *(a2 + 48);
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 4);
    v3 = 8;
    *(this + 48) = 8;
    *(this + 4) = result;
    v2 = *(a2 + 48);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 48) & 0x10) != 0)
  {
LABEL_5:
    result = *(a2 + 5);
    v3 |= 0x10u;
    *(this + 48) = v3;
    *(this + 5) = result;
    v2 = *(a2 + 48);
  }

LABEL_6:
  if (v2)
  {
    result = *(a2 + 1);
    v3 |= 1u;
    *(this + 48) = v3;
    *(this + 1) = result;
    v2 = *(a2 + 48);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_12:
      result = *(a2 + 3);
      *(this + 48) = v3 | 4;
      *(this + 3) = result;
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 2);
  v3 |= 2u;
  *(this + 48) = v3;
  *(this + 2) = result;
  if ((*(a2 + 48) & 4) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t CMMsl::RunningRotationAxis::operator=(uint64_t a1, const CMMsl::RunningRotationAxis *a2)
{
  if (a1 != a2)
  {
    CMMsl::RunningRotationAxis::RunningRotationAxis(v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v13;
    v13 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v4;
    v5 = v11;
    v6 = *(a1 + 8);
    *(a1 + 8) = v10;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v10 = v6;
    v11 = v7;
    PB::Base::~Base(v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::RunningRotationAxis *a2, CMMsl::RunningRotationAxis *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

double CMMsl::RunningRotationAxis::RunningRotationAxis(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23330;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

{
  *a1 = &unk_286C23330;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t CMMsl::RunningRotationAxis::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10 = &unk_286C23330;
    v3 = *(a2 + 48);
    *(a2 + 48) = 0;
    v4 = *(a2 + 40);
    v14 = *(a1 + 48);
    v13 = *(a1 + 40);
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    v7 = *(a1 + 24);
    v8 = *(a2 + 24);
    *(a1 + 48) = v3;
    *(a1 + 40) = v4;
    *(a1 + 8) = v6;
    *(a1 + 24) = v8;
    v11 = v5;
    v12 = v7;
    PB::Base::~Base(&v10);
  }

  return a1;
}

uint64_t CMMsl::RunningRotationAxis::formatText(CMMsl::RunningRotationAxis *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 48);
  if (v5)
  {
    PB::TextFormatter::format(a2, "primaryAxisX", *(this + 1));
    v5 = *(this + 48);
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

  else if ((*(this + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "primaryAxisY", *(this + 2));
  v5 = *(this + 48);
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
  PB::TextFormatter::format(a2, "primaryAxisZ", *(this + 3));
  v5 = *(this + 48);
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
  PB::TextFormatter::format(a2, "startTime", *(this + 4));
  if ((*(this + 48) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "timestamp", *(this + 5));
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::RunningRotationAxis::readFrom(CMMsl::RunningRotationAxis *this, PB::Reader *a2)
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
    if ((v10 >> 3) <= 2)
    {
      if (v22 == 1)
      {
        *(this + 48) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_40:
          *(a2 + 24) = 1;
          goto LABEL_43;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_42;
      }

      if (v22 == 2)
      {
        *(this + 48) |= 0x10u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_40;
        }

        *(this + 5) = *(*a2 + v2);
        goto LABEL_42;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 48) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_42;
        case 4:
          *(this + 48) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_42;
        case 5:
          *(this + 48) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 3) = *(*a2 + v2);
LABEL_42:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_43;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_43:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::RunningRotationAxis::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 48);
  if ((v4 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(this + 32));
    v4 = *(v3 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 48) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 48);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::write(a2, *(v3 + 16));
    if ((*(v3 + 48) & 4) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 48);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_11:
  v5 = *(v3 + 24);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::RunningRotationAxis::hash_value(CMMsl::RunningRotationAxis *this)
{
  if ((*(this + 48) & 8) == 0)
  {
    v1 = 0.0;
    if ((*(this + 48) & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_18:
    v2 = 0.0;
    if (*(this + 48))
    {
      goto LABEL_6;
    }

LABEL_19:
    v3 = 0.0;
    if ((*(this + 48) & 2) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  v1 = *(this + 4);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 48) & 0x10) == 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  v2 = *(this + 5);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 48) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_6:
  v3 = *(this + 1);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 48) & 2) != 0)
  {
LABEL_9:
    v4 = *(this + 2);
    if (v4 == 0.0)
    {
      v4 = 0.0;
    }

    if ((*(this + 48) & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_21:
    v5 = 0.0;
    return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ *&v5;
  }

LABEL_20:
  v4 = 0.0;
  if ((*(this + 48) & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  v5 = *(this + 3);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ *&v5;
}

void CMMsl::RunningSpeedKFResult::~RunningSpeedKFResult(CMMsl::RunningSpeedKFResult *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::RunningSpeedKFResult::RunningSpeedKFResult(uint64_t this, const CMMsl::RunningSpeedKFResult *a2)
{
  *this = &unk_286C23368;
  *(this + 188) = 0;
  v2 = *(a2 + 47);
  if ((v2 & 0x80000) != 0)
  {
    v4 = *(a2 + 20);
    v3 = 0x80000;
    *(this + 188) = 0x80000;
    *(this + 160) = v4;
    v2 = *(a2 + 47);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x80) != 0)
  {
LABEL_5:
    v5 = *(a2 + 8);
    v3 |= 0x80u;
    *(this + 188) = v3;
    *(this + 64) = v5;
    v2 = *(a2 + 47);
  }

LABEL_6:
  if ((v2 & 0x40000) != 0)
  {
    v6 = *(a2 + 19);
    v3 |= 0x40000u;
    *(this + 188) = v3;
    *(this + 152) = v6;
    v2 = *(a2 + 47);
    if ((v2 & 0x8000000) == 0)
    {
LABEL_8:
      if ((v2 & 0x20000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_35;
    }
  }

  else if ((v2 & 0x8000000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 184);
  v3 |= 0x8000000u;
  *(this + 188) = v3;
  *(this + 184) = v7;
  v2 = *(a2 + 47);
  if ((v2 & 0x20000) == 0)
  {
LABEL_9:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  v8 = *(a2 + 18);
  v3 |= 0x20000u;
  *(this + 188) = v3;
  *(this + 144) = v8;
  v2 = *(a2 + 47);
  if ((v2 & 0x10000) == 0)
  {
LABEL_10:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  v9 = *(a2 + 17);
  v3 |= 0x10000u;
  *(this + 188) = v3;
  *(this + 136) = v9;
  v2 = *(a2 + 47);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_11:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  v10 = *(a2 + 182);
  v3 |= 0x2000000u;
  *(this + 188) = v3;
  *(this + 182) = v10;
  v2 = *(a2 + 47);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  v11 = *(a2 + 183);
  v3 |= 0x4000000u;
  *(this + 188) = v3;
  *(this + 183) = v11;
  v2 = *(a2 + 47);
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  v12 = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 188) = v3;
  *(this + 56) = v12;
  v2 = *(a2 + 47);
  if ((v2 & 8) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  v13 = *(a2 + 4);
  v3 |= 8u;
  *(this + 188) = v3;
  *(this + 32) = v13;
  v2 = *(a2 + 47);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  v14 = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 188) = v3;
  *(this + 48) = v14;
  v2 = *(a2 + 47);
  if ((v2 & 0x10) == 0)
  {
LABEL_16:
    if ((v2 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  v15 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 188) = v3;
  *(this + 40) = v15;
  v2 = *(a2 + 47);
  if ((v2 & 1) == 0)
  {
LABEL_17:
    if ((v2 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  v16 = *(a2 + 1);
  v3 |= 1u;
  *(this + 188) = v3;
  *(this + 8) = v16;
  v2 = *(a2 + 47);
  if ((v2 & 2) == 0)
  {
LABEL_18:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  v17 = *(a2 + 2);
  v3 |= 2u;
  *(this + 188) = v3;
  *(this + 16) = v17;
  v2 = *(a2 + 47);
  if ((v2 & 0x8000) == 0)
  {
LABEL_19:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  v18 = *(a2 + 16);
  v3 |= 0x8000u;
  *(this + 188) = v3;
  *(this + 128) = v18;
  v2 = *(a2 + 47);
  if ((v2 & 0x4000) == 0)
  {
LABEL_20:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  v19 = *(a2 + 15);
  v3 |= 0x4000u;
  *(this + 188) = v3;
  *(this + 120) = v19;
  v2 = *(a2 + 47);
  if ((v2 & 0x100) == 0)
  {
LABEL_21:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  v20 = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 188) = v3;
  *(this + 72) = v20;
  v2 = *(a2 + 47);
  if ((v2 & 0x200) == 0)
  {
LABEL_22:
    if ((v2 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  v21 = *(a2 + 10);
  v3 |= 0x200u;
  *(this + 188) = v3;
  *(this + 80) = v21;
  v2 = *(a2 + 47);
  if ((v2 & 4) == 0)
  {
LABEL_23:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  v22 = *(a2 + 3);
  v3 |= 4u;
  *(this + 188) = v3;
  *(this + 24) = v22;
  v2 = *(a2 + 47);
  if ((v2 & 0x400000) == 0)
  {
LABEL_24:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  v23 = *(a2 + 44);
  v3 |= 0x400000u;
  *(this + 188) = v3;
  *(this + 176) = v23;
  v2 = *(a2 + 47);
  if ((v2 & 0x100000) == 0)
  {
LABEL_25:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_52;
  }

LABEL_51:
  v24 = *(a2 + 42);
  v3 |= 0x100000u;
  *(this + 188) = v3;
  *(this + 168) = v24;
  v2 = *(a2 + 47);
  if ((v2 & 0x200000) == 0)
  {
LABEL_26:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_53;
  }

LABEL_52:
  v25 = *(a2 + 43);
  v3 |= 0x200000u;
  *(this + 188) = v3;
  *(this + 172) = v25;
  v2 = *(a2 + 47);
  if ((v2 & 0x800000) == 0)
  {
LABEL_27:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_54;
  }

LABEL_53:
  v26 = *(a2 + 180);
  v3 |= 0x800000u;
  *(this + 188) = v3;
  *(this + 180) = v26;
  v2 = *(a2 + 47);
  if ((v2 & 0x1000) == 0)
  {
LABEL_28:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_55;
  }

LABEL_54:
  v27 = *(a2 + 13);
  v3 |= 0x1000u;
  *(this + 188) = v3;
  *(this + 104) = v27;
  v2 = *(a2 + 47);
  if ((v2 & 0x2000) == 0)
  {
LABEL_29:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_56;
  }

LABEL_55:
  v28 = *(a2 + 14);
  v3 |= 0x2000u;
  *(this + 188) = v3;
  *(this + 112) = v28;
  v2 = *(a2 + 47);
  if ((v2 & 0x400) == 0)
  {
LABEL_30:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_57;
  }

LABEL_56:
  v29 = *(a2 + 11);
  v3 |= 0x400u;
  *(this + 188) = v3;
  *(this + 88) = v29;
  v2 = *(a2 + 47);
  if ((v2 & 0x800) == 0)
  {
LABEL_31:
    if ((v2 & 0x1000000) == 0)
    {
      return this;
    }

LABEL_58:
    v31 = *(a2 + 181);
    *(this + 188) = v3 | 0x1000000;
    *(this + 181) = v31;
    return this;
  }

LABEL_57:
  v30 = *(a2 + 12);
  v3 |= 0x800u;
  *(this + 188) = v3;
  *(this + 96) = v30;
  if ((*(a2 + 47) & 0x1000000) != 0)
  {
    goto LABEL_58;
  }

  return this;
}

CMMsl *CMMsl::RunningSpeedKFResult::operator=(CMMsl *a1, const CMMsl::RunningSpeedKFResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::RunningSpeedKFResult::RunningSpeedKFResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::RunningSpeedKFResult *a2, CMMsl::RunningSpeedKFResult *a3)
{
  v3 = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v3;
  v4 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  v6 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v6;
  LOBYTE(v3) = *(this + 184);
  *(this + 184) = *(a2 + 184);
  *(a2 + 184) = v3;
  v7 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v7;
  v8 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v8;
  LOBYTE(v3) = *(this + 182);
  *(this + 182) = *(a2 + 182);
  *(a2 + 182) = v3;
  LOBYTE(v3) = *(this + 183);
  *(this + 183) = *(a2 + 183);
  *(a2 + 183) = v3;
  v9 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v10;
  v11 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v11;
  v12 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v12;
  v13 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v13;
  v14 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v14;
  v15 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v15;
  v16 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v16;
  v17 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v17;
  v18 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v18;
  v19 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v19;
  v20 = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v20;
  v21 = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v21;
  v22 = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v22;
  LOBYTE(v22) = *(this + 180);
  *(this + 180) = *(a2 + 180);
  *(a2 + 180) = v22;
  v23 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v23;
  v24 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v24;
  v25 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v25;
  result = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = result;
  LOBYTE(v22) = *(this + 181);
  *(this + 181) = *(a2 + 181);
  *(a2 + 181) = v22;
  return result;
}

double CMMsl::RunningSpeedKFResult::RunningSpeedKFResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23368;
  *(a1 + 188) = *(a2 + 188);
  *(a2 + 188) = 0;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 182) = *(a2 + 182);
  *(a1 + 183) = *(a2 + 183);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 88) = *(a2 + 88);
  result = *(a2 + 96);
  *(a1 + 96) = result;
  *(a1 + 181) = *(a2 + 181);
  return result;
}

CMMsl *CMMsl::RunningSpeedKFResult::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::RunningSpeedKFResult::RunningSpeedKFResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::RunningSpeedKFResult::formatText(CMMsl::RunningSpeedKFResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 47);
  if (v5)
  {
    PB::TextFormatter::format(a2, "algDelay", *(this + 1));
    v5 = *(this + 47);
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

  PB::TextFormatter::format(a2, "biasFactor", *(this + 2));
  v5 = *(this + 47);
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
  PB::TextFormatter::format(a2, "deltaCalibratedPedometerDistance", *(this + 3));
  v5 = *(this + 47);
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
  PB::TextFormatter::format(a2, "deltaOdometerDistance", *(this + 4));
  v5 = *(this + 47);
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
  PB::TextFormatter::format(a2, "deltaOdometerTime", *(this + 5));
  v5 = *(this + 47);
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
  PB::TextFormatter::format(a2, "deltaPedometerTime", *(this + 6));
  v5 = *(this + 47);
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
  PB::TextFormatter::format(a2, "deltaRawPedometerDistance", *(this + 7));
  v5 = *(this + 47);
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
  PB::TextFormatter::format(a2, "endTime", *(this + 8));
  v5 = *(this + 47);
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
  v6 = *(this + 42);
  PB::TextFormatter::format(a2, "gestureState");
  v5 = *(this + 47);
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
  v7 = *(this + 43);
  PB::TextFormatter::format(a2, "gestureType");
  v5 = *(this + 47);
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
  v8 = *(this + 180);
  PB::TextFormatter::format(a2, "interruptFlag");
  v5 = *(this + 47);
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
  v9 = *(this + 181);
  PB::TextFormatter::format(a2, "isTrackRunOdometer");
  v5 = *(this + 47);
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
  v10 = *(this + 182);
  PB::TextFormatter::format(a2, "isValidOdometerSpeed");
  v5 = *(this + 47);
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
  v11 = *(this + 183);
  PB::TextFormatter::format(a2, "isValidPedometerSpeed");
  v5 = *(this + 47);
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
  v12 = *(this + 184);
  PB::TextFormatter::format(a2, "isValidRunningSpeed");
  v5 = *(this + 47);
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
  PB::TextFormatter::format(a2, "kalmanEpsOdometer", *(this + 9));
  v5 = *(this + 47);
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
  PB::TextFormatter::format(a2, "kalmanEpsPedometer", *(this + 10));
  v5 = *(this + 47);
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
  PB::TextFormatter::format(a2, "kalmanGainOdometer", *(this + 11));
  v5 = *(this + 47);
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
  PB::TextFormatter::format(a2, "kalmanGainPedometer", *(this + 12));
  v5 = *(this + 47);
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
  PB::TextFormatter::format(a2, "kalmanMeasurementNoiseOdometer", *(this + 13));
  v5 = *(this + 47);
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
  PB::TextFormatter::format(a2, "kalmanMeasurementNoisePedometer", *(this + 14));
  v5 = *(this + 47);
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
  PB::TextFormatter::format(a2, "kalmanProcessNoise", *(this + 15));
  v5 = *(this + 47);
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
  PB::TextFormatter::format(a2, "kalmanStateCovariance", *(this + 16));
  v5 = *(this + 47);
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
  v13 = *(this + 44);
  PB::TextFormatter::format(a2, "odometerQuality");
  v5 = *(this + 47);
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
  PB::TextFormatter::format(a2, "odometerSpeed", *(this + 17));
  v5 = *(this + 47);
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
  PB::TextFormatter::format(a2, "pedometerSpeed", *(this + 18));
  v5 = *(this + 47);
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
  PB::TextFormatter::format(a2, "runningSpeed", *(this + 19));
  if ((*(this + 47) & 0x80000) != 0)
  {
LABEL_29:
    PB::TextFormatter::format(a2, "startTime", *(this + 20));
  }

LABEL_30:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::RunningSpeedKFResult::readFrom(CMMsl::RunningSpeedKFResult *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_167:
    v77 = v4 ^ 1;
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
        goto LABEL_167;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 47) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_111;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_147;
        case 2u:
          *(this + 47) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_111;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_147;
        case 3u:
          *(this + 47) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_111;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_147;
        case 4u:
          *(this + 47) |= 0x8000000u;
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

          *(this + 184) = v25;
          break;
        case 5u:
          *(this + 47) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_111;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_147;
        case 6u:
          *(this + 47) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_111;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_147;
        case 7u:
          *(this + 47) |= 0x2000000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v45 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v44 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v45 = v44 != 0;
          }

          *(this + 182) = v45;
          break;
        case 8u:
          *(this + 47) |= 0x4000000u;
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

          *(this + 183) = v27;
          break;
        case 9u:
          *(this + 47) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_111;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_147;
        case 0xAu:
          *(this + 47) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_111;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_147;
        case 0xBu:
          *(this + 47) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_111;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_147;
        case 0xCu:
          *(this + 47) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_111;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_147;
        case 0xDu:
          *(this + 47) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_111;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_147;
        case 0xEu:
          *(this + 47) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_111;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_147;
        case 0xFu:
          *(this + 47) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_111;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_147;
        case 0x10u:
          *(this + 47) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_111;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_147;
        case 0x11u:
          *(this + 47) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_111;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_147;
        case 0x12u:
          *(this + 47) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_111;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_147;
        case 0x13u:
          *(this + 47) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_111;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_147;
        case 0x14u:
          *(this + 47) |= 0x400000u;
          v48 = *(a2 + 1);
          v2 = *(a2 + 2);
          v49 = *a2;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v70 = 0;
            v71 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v2 = *(a2 + 1);
            }

            v72 = (v49 + v48);
            v73 = v2 - v48;
            v74 = v48 + 1;
            while (1)
            {
              if (!v73)
              {
                LODWORD(v52) = 0;
                *(a2 + 24) = 1;
                goto LABEL_165;
              }

              v75 = v74;
              v76 = *v72;
              *(a2 + 1) = v75;
              v52 |= (v76 & 0x7F) << v70;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              ++v72;
              --v73;
              v74 = v75 + 1;
              v14 = v71++ > 8;
              if (v14)
              {
                LODWORD(v52) = 0;
LABEL_164:
                v2 = v75;
                goto LABEL_165;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_164;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = (v49 + v48);
          v54 = v48 + 1;
          do
          {
            v2 = v54;
            *(a2 + 1) = v54;
            v55 = *v53++;
            v52 |= (v55 & 0x7F) << v50;
            if ((v55 & 0x80) == 0)
            {
              goto LABEL_165;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_165:
          *(this + 44) = v52;
          break;
        case 0x15u:
          *(this + 47) |= 0x100000u;
          v28 = *(a2 + 1);
          v2 = *(a2 + 2);
          v29 = *a2;
          if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v2)
          {
            v56 = 0;
            v57 = 0;
            v32 = 0;
            if (v2 <= v28)
            {
              v2 = *(a2 + 1);
            }

            v58 = (v29 + v28);
            v59 = v2 - v28;
            v60 = v28 + 1;
            while (1)
            {
              if (!v59)
              {
                LODWORD(v32) = 0;
                *(a2 + 24) = 1;
                goto LABEL_157;
              }

              v61 = v60;
              v62 = *v58;
              *(a2 + 1) = v61;
              v32 |= (v62 & 0x7F) << v56;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              ++v58;
              --v59;
              v60 = v61 + 1;
              v14 = v57++ > 8;
              if (v14)
              {
                LODWORD(v32) = 0;
LABEL_156:
                v2 = v61;
                goto LABEL_157;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v32) = 0;
            }

            goto LABEL_156;
          }

          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = (v29 + v28);
          v34 = v28 + 1;
          do
          {
            v2 = v34;
            *(a2 + 1) = v34;
            v35 = *v33++;
            v32 |= (v35 & 0x7F) << v30;
            if ((v35 & 0x80) == 0)
            {
              goto LABEL_157;
            }

            v30 += 7;
            ++v34;
            v14 = v31++ > 8;
          }

          while (!v14);
          LODWORD(v32) = 0;
LABEL_157:
          *(this + 42) = v32;
          break;
        case 0x16u:
          *(this + 47) |= 0x200000u;
          v36 = *(a2 + 1);
          v2 = *(a2 + 2);
          v37 = *a2;
          if (v36 > 0xFFFFFFFFFFFFFFF5 || v36 + 10 > v2)
          {
            v63 = 0;
            v64 = 0;
            v40 = 0;
            if (v2 <= v36)
            {
              v2 = *(a2 + 1);
            }

            v65 = (v37 + v36);
            v66 = v2 - v36;
            v67 = v36 + 1;
            while (1)
            {
              if (!v66)
              {
                LODWORD(v40) = 0;
                *(a2 + 24) = 1;
                goto LABEL_161;
              }

              v68 = v67;
              v69 = *v65;
              *(a2 + 1) = v68;
              v40 |= (v69 & 0x7F) << v63;
              if ((v69 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              ++v65;
              --v66;
              v67 = v68 + 1;
              v14 = v64++ > 8;
              if (v14)
              {
                LODWORD(v40) = 0;
LABEL_160:
                v2 = v68;
                goto LABEL_161;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v40) = 0;
            }

            goto LABEL_160;
          }

          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = (v37 + v36);
          v42 = v36 + 1;
          do
          {
            v2 = v42;
            *(a2 + 1) = v42;
            v43 = *v41++;
            v40 |= (v43 & 0x7F) << v38;
            if ((v43 & 0x80) == 0)
            {
              goto LABEL_161;
            }

            v38 += 7;
            ++v42;
            v14 = v39++ > 8;
          }

          while (!v14);
          LODWORD(v40) = 0;
LABEL_161:
          *(this + 43) = v40;
          break;
        case 0x17u:
          *(this + 47) |= 0x800000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v47 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v46 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v47 = v46 != 0;
          }

          *(this + 180) = v47;
          break;
        case 0x18u:
          *(this + 47) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_111;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_147;
        case 0x19u:
          *(this + 47) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_111;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_147;
        case 0x1Au:
          *(this + 47) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_111;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_147;
        case 0x1Bu:
          *(this + 47) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
          {
            *(this + 12) = *(*a2 + v2);
LABEL_147:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          else
          {
LABEL_111:
            *(a2 + 24) = 1;
          }

          break;
        case 0x1Cu:
          *(this + 47) |= 0x1000000u;
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

          *(this + 181) = v23;
          break;
        default:
          goto LABEL_17;
      }

LABEL_148:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_167;
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
        goto LABEL_167;
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
      goto LABEL_148;
    }

    v77 = 0;
  }

  return v77 & 1;
}