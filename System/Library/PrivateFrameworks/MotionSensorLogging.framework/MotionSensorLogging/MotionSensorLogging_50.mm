uint64_t CMMsl::Pressure::hash_value(CMMsl::Pressure *this)
{
  if (*(this + 24))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 24) & 2) != 0)
    {
LABEL_3:
      v2 = *(this + 4);
      v3 = LODWORD(v2);
      if (v2 == 0.0)
      {
        v3 = 0;
      }

      if ((*(this + 24) & 4) != 0)
      {
        goto LABEL_6;
      }

LABEL_13:
      v5 = 0;
      return v3 ^ *&v1 ^ v5;
    }
  }

  else
  {
    v1 = 0.0;
    if ((*(this + 24) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v4 = *(this + 5);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  return v3 ^ *&v1 ^ v5;
}

void CMMsl::PressureCalibration::~PressureCalibration(CMMsl::PressureCalibration *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::PressureCalibration::PressureCalibration(CMMsl::PressureCalibration *this, const CMMsl::PressureCalibration *a2)
{
  *this = &unk_286C22DB8;
  *(this + 8) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 0x20) != 0)
  {
    result = *(a2 + 7);
    v3 = 32;
    *(this + 32) = 32;
    *(this + 7) = result;
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
    result = *(a2 + 6);
    v3 |= 0x10u;
    *(this + 32) = v3;
    *(this + 6) = result;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 5);
    v3 |= 8u;
    *(this + 32) = v3;
    *(this + 5) = result;
    v2 = *(a2 + 32);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 2);
  v3 |= 1u;
  *(this + 32) = v3;
  *(this + 2) = result;
  v2 = *(a2 + 32);
  if ((v2 & 2) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      return result;
    }

LABEL_14:
    result = *(a2 + 4);
    *(this + 32) = v3 | 4;
    *(this + 4) = result;
    return result;
  }

LABEL_13:
  result = *(a2 + 3);
  v3 |= 2u;
  *(this + 32) = v3;
  *(this + 3) = result;
  if ((*(a2 + 32) & 4) != 0)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t CMMsl::PressureCalibration::operator=(uint64_t a1, const CMMsl::PressureCalibration *a2)
{
  if (a1 != a2)
  {
    CMMsl::PressureCalibration::PressureCalibration(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::PressureCalibration *a2, CMMsl::PressureCalibration *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

float CMMsl::PressureCalibration::PressureCalibration(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22DB8;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C22DB8;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::PressureCalibration::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_286C22DB8;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v11 = *(a1 + 32);
    v10 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    v6 = *(a2 + 24);
    *(a1 + 32) = v3;
    *(a1 + 24) = v6;
    *(a1 + 8) = v5;
    v9 = v4;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::PressureCalibration::formatText(CMMsl::PressureCalibration *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if (v5)
  {
    PB::TextFormatter::format(a2, "inertialX", *(this + 2));
    v5 = *(this + 32);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "inertialY", *(this + 3));
  v5 = *(this + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "inertialZ", *(this + 4));
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "maxTemp", *(this + 5));
  v5 = *(this + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "medTocFactoryTemp", *(this + 6));
  if ((*(this + 32) & 0x20) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(a2, "medianToc", *(this + 7));
  }

LABEL_8:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PressureCalibration::readFrom(CMMsl::PressureCalibration *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 3)
    {
      switch(v22)
      {
        case 4:
          *(this + 32) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_44:
            *(a2 + 24) = 1;
            goto LABEL_47;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_46;
        case 5:
          *(this + 32) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_46;
        case 6:
          *(this + 32) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_46;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 32) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_46;
        case 2:
          *(this + 32) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_46;
        case 3:
          *(this + 32) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 5) = *(*a2 + v2);
LABEL_46:
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
          goto LABEL_47;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_47:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::PressureCalibration::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if ((v4 & 0x20) != 0)
  {
    this = PB::Writer::write(a2, *(this + 28));
    v4 = *(v3 + 32);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(this + 32) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 32);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 32);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = PB::Writer::write(a2, *(v3 + 12));
    if ((*(v3 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 32);
  if ((v4 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_13:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::PressureCalibration::hash_value(CMMsl::PressureCalibration *this)
{
  if ((*(this + 32) & 0x20) == 0)
  {
    v1 = 0;
    if ((*(this + 32) & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    v3 = 0;
    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    v5 = 0;
    if (*(this + 32))
    {
      goto LABEL_9;
    }

LABEL_23:
    v7 = 0;
    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v12 = *(this + 7);
  v1 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v1 = 0;
  }

  if ((*(this + 32) & 0x10) == 0)
  {
    goto LABEL_21;
  }

LABEL_3:
  v2 = *(this + 6);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  v4 = *(this + 5);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 32) & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v6 = *(this + 2);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 32) & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 3);
    v9 = LODWORD(v8);
    if (v8 == 0.0)
    {
      v9 = 0;
    }

    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_15;
    }

LABEL_25:
    v11 = 0;
    return v3 ^ v1 ^ v5 ^ v7 ^ v9 ^ v11;
  }

LABEL_24:
  v9 = 0;
  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_25;
  }

LABEL_15:
  v10 = *(this + 4);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  return v3 ^ v1 ^ v5 ^ v7 ^ v9 ^ v11;
}

void CMMsl::PressureCompensated::~PressureCompensated(CMMsl::PressureCompensated *this)
{
  v2 = *(this + 1);
  *this = &unk_286C22DF0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::PressureCompensated::~PressureCompensated(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::PressureCompensated::PressureCompensated(void *this, const CMMsl::PressureCompensated *a2)
{
  *this = &unk_286C22DF0;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::PressureCompensated *CMMsl::PressureCompensated::operator=(const CMMsl::PressureCompensated *a1, const CMMsl::PressureCompensated *a2)
{
  if (a1 != a2)
  {
    CMMsl::PressureCompensated::PressureCompensated(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::PressureCompensated::~PressureCompensated(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::PressureCompensated *a2, CMMsl::PressureCompensated *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::PressureCompensated::PressureCompensated(void *a1, uint64_t a2)
{
  *a1 = &unk_286C22DF0;
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
  *a1 = &unk_286C22DF0;
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

uint64_t CMMsl::PressureCompensated::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C22DF0;
    v6[1] = v4;
    CMMsl::PressureCompensated::~PressureCompensated(v6);
  }

  return a1;
}

uint64_t CMMsl::PressureCompensated::formatText(CMMsl::PressureCompensated *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PressureCompensated::readFrom(CMMsl::PressureCompensated *this, PB::Reader *a2)
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

uint64_t CMMsl::PressureCompensated::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::Pressure *CMMsl::PressureCompensated::hash_value(CMMsl::PressureCompensated *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Pressure::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::PressureCompensated::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::PressureFiltered::~PressureFiltered(CMMsl::PressureFiltered *this)
{
  v2 = *(this + 1);
  *this = &unk_286C22E28;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::PressureFiltered::~PressureFiltered(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::PressureFiltered::PressureFiltered(void *this, const CMMsl::PressureFiltered *a2)
{
  *this = &unk_286C22E28;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::PressureFiltered *CMMsl::PressureFiltered::operator=(const CMMsl::PressureFiltered *a1, const CMMsl::PressureFiltered *a2)
{
  if (a1 != a2)
  {
    CMMsl::PressureFiltered::PressureFiltered(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::PressureFiltered::~PressureFiltered(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::PressureFiltered *a2, CMMsl::PressureFiltered *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::PressureFiltered::PressureFiltered(void *a1, uint64_t a2)
{
  *a1 = &unk_286C22E28;
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
  *a1 = &unk_286C22E28;
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

uint64_t CMMsl::PressureFiltered::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C22E28;
    v6[1] = v4;
    CMMsl::PressureFiltered::~PressureFiltered(v6);
  }

  return a1;
}

uint64_t CMMsl::PressureFiltered::formatText(CMMsl::PressureFiltered *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PressureFiltered::readFrom(CMMsl::PressureFiltered *this, PB::Reader *a2)
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

uint64_t CMMsl::PressureFiltered::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::Pressure *CMMsl::PressureFiltered::hash_value(CMMsl::PressureFiltered *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Pressure::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::PressureFiltered::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::PressureFiltered1HzLowPass::~PressureFiltered1HzLowPass(CMMsl::PressureFiltered1HzLowPass *this)
{
  *this = &unk_286C22E60;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::PressureFiltered1HzLowPass::~PressureFiltered1HzLowPass(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::PressureFiltered1HzLowPass::PressureFiltered1HzLowPass(uint64_t this, const CMMsl::PressureFiltered1HzLowPass *a2)
{
  *this = &unk_286C22E60;
  *(this + 16) = 0;
  *(this + 24) = 0;
  if (*(a2 + 24))
  {
    v2 = *(a2 + 1);
    *(this + 24) = 1;
    *(this + 8) = v2;
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::PressureFiltered1HzLowPass::operator=(uint64_t a1, const CMMsl::PressureFiltered1HzLowPass *a2)
{
  if (a1 != a2)
  {
    CMMsl::PressureFiltered1HzLowPass::PressureFiltered1HzLowPass(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    CMMsl::PressureFiltered1HzLowPass::~PressureFiltered1HzLowPass(&v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PressureFiltered1HzLowPass *a2, CMMsl::PressureFiltered1HzLowPass *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  return result;
}

uint64_t CMMsl::PressureFiltered1HzLowPass::PressureFiltered1HzLowPass(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22E60;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  *(a2 + 16) = 0;
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::PressureFiltered1HzLowPass::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::PressureFiltered1HzLowPass::PressureFiltered1HzLowPass(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    CMMsl::PressureFiltered1HzLowPass::~PressureFiltered1HzLowPass(&v7);
  }

  return a1;
}

uint64_t CMMsl::PressureFiltered1HzLowPass::formatText(CMMsl::PressureFiltered1HzLowPass *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 24))
  {
    PB::TextFormatter::format(a2, "iostime", *(this + 1));
  }

  v5 = *(this + 2);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PressureFiltered1HzLowPass::readFrom(CMMsl::PressureFiltered1HzLowPass *this, PB::Reader *a2)
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
        goto LABEL_31;
      }

      if ((v10 >> 3) == 2)
      {
        operator new();
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 24) |= 1u;
        v22 = *(a2 + 1);
        if (v22 <= 0xFFFFFFFFFFFFFFF7 && v22 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v22);
          *(a2 + 1) += 8;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
LABEL_24:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          v23 = 0;
          return v23 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_31;
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

LABEL_31:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::PressureFiltered1HzLowPass::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 24))
  {
    this = PB::Writer::write(a2, *(this + 8));
  }

  v4 = *(v3 + 16);
  if (v4)
  {

    return PB::Writer::writeSubmessage(a2, v4);
  }

  return this;
}

uint64_t CMMsl::PressureFiltered1HzLowPass::hash_value(CMMsl::PressureFiltered1HzLowPass *this)
{
  if (*(this + 24))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }
  }

  else
  {
    v1 = 0.0;
  }

  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if ((*(v2 + 20) & 1) == 0)
    {
      v3 = 0;
    }

    v4 = *(v2 + 16);
    v5 = v4 == 0.0 || (*(v2 + 20) & 2) == 0;
    v6 = LODWORD(v4);
    if (v5)
    {
      v6 = 0;
    }

    v2 = v6 ^ v3;
  }

  return v2 ^ *&v1;
}

uint64_t CMMsl::PressureFiltered1HzLowPass::makeSuper(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

void CMMsl::PressureFilteredNoTemperature::~PressureFilteredNoTemperature(CMMsl::PressureFilteredNoTemperature *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::PressureFilteredNoTemperature::PressureFilteredNoTemperature(CMMsl::PressureFilteredNoTemperature *this, const CMMsl::PressureFilteredNoTemperature *a2)
{
  *this = &unk_286C22E98;
  *(this + 5) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 1);
    *(this + 20) = 1;
    *(this + 1) = v3;
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
    result = *(a2 + 4);
    *(this + 20) = v2;
    *(this + 4) = result;
  }

  return result;
}

uint64_t CMMsl::PressureFilteredNoTemperature::operator=(uint64_t a1, const CMMsl::PressureFilteredNoTemperature *a2)
{
  if (a1 != a2)
  {
    CMMsl::PressureFilteredNoTemperature::PressureFilteredNoTemperature(v7, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::PressureFilteredNoTemperature *a2, CMMsl::PressureFilteredNoTemperature *a3)
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

float CMMsl::PressureFilteredNoTemperature::PressureFilteredNoTemperature(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22E98;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C22E98;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::PressureFilteredNoTemperature::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a1 + 20);
    *(a1 + 20) = v3;
    v12 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v10[0] = &unk_286C22E98;
    v10[1] = v7;
    v8 = *(a1 + 16);
    *(a1 + 16) = v5;
    v11 = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::PressureFilteredNoTemperature::formatText(CMMsl::PressureFilteredNoTemperature *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "pressure", *(this + 4));
    v5 = *(this + 20);
  }

  if (v5)
  {
    v6 = *(this + 1);
    PB::TextFormatter::format(a2, "timestamp");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PressureFilteredNoTemperature::readFrom(CMMsl::PressureFilteredNoTemperature *this, PB::Reader *a2)
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
          goto LABEL_28;
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
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
        {
          *(this + 4) = *(*a2 + v2);
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 20) |= 1u;
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
              v26 = 0;
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
              v26 = 0;
              goto LABEL_45;
            }
          }

          if (*(a2 + 24))
          {
            v26 = 0;
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
              v26 = 0;
              break;
            }
          }
        }

LABEL_46:
        *(this + 1) = v26;
      }

      else
      {
LABEL_28:
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
        goto LABEL_28;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_51:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t CMMsl::PressureFilteredNoTemperature::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 16);

    return PB::Writer::write(a2, v6);
  }

  return this;
}

uint64_t CMMsl::PressureFilteredNoTemperature::hash_value(CMMsl::PressureFilteredNoTemperature *this)
{
  if ((*(this + 20) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v3 = 0;
    return v3 ^ v1;
  }

  v1 = *(this + 1);
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  return v3 ^ v1;
}

void CMMsl::PressureGps::~PressureGps(CMMsl::PressureGps *this)
{
  v2 = *(this + 1);
  *this = &unk_286C22ED0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::PressureGps::~PressureGps(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::PressureGps::PressureGps(void *this, const CMMsl::PressureGps *a2)
{
  *this = &unk_286C22ED0;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::PressureGps *CMMsl::PressureGps::operator=(const CMMsl::PressureGps *a1, const CMMsl::PressureGps *a2)
{
  if (a1 != a2)
  {
    CMMsl::PressureGps::PressureGps(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::PressureGps::~PressureGps(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::PressureGps *a2, CMMsl::PressureGps *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::PressureGps::PressureGps(void *a1, uint64_t a2)
{
  *a1 = &unk_286C22ED0;
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
  *a1 = &unk_286C22ED0;
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

uint64_t CMMsl::PressureGps::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C22ED0;
    v6[1] = v4;
    CMMsl::PressureGps::~PressureGps(v6);
  }

  return a1;
}

uint64_t CMMsl::PressureGps::formatText(CMMsl::PressureGps *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PressureGps::readFrom(CMMsl::PressureGps *this, PB::Reader *a2)
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

uint64_t CMMsl::PressureGps::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::Pressure *CMMsl::PressureGps::hash_value(CMMsl::PressureGps *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Pressure::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::PressureGps::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::PressureOscarEmu::~PressureOscarEmu(CMMsl::PressureOscarEmu *this)
{
  v2 = *(this + 1);
  *this = &unk_286C22F08;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::PressureOscarEmu::~PressureOscarEmu(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::PressureOscarEmu::PressureOscarEmu(void *this, const CMMsl::PressureOscarEmu *a2)
{
  *this = &unk_286C22F08;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::PressureOscarEmu *CMMsl::PressureOscarEmu::operator=(const CMMsl::PressureOscarEmu *a1, const CMMsl::PressureOscarEmu *a2)
{
  if (a1 != a2)
  {
    CMMsl::PressureOscarEmu::PressureOscarEmu(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::PressureOscarEmu::~PressureOscarEmu(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::PressureOscarEmu *a2, CMMsl::PressureOscarEmu *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::PressureOscarEmu::PressureOscarEmu(void *a1, uint64_t a2)
{
  *a1 = &unk_286C22F08;
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
  *a1 = &unk_286C22F08;
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

uint64_t CMMsl::PressureOscarEmu::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C22F08;
    v6[1] = v4;
    CMMsl::PressureOscarEmu::~PressureOscarEmu(v6);
  }

  return a1;
}

uint64_t CMMsl::PressureOscarEmu::formatText(CMMsl::PressureOscarEmu *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PressureOscarEmu::readFrom(CMMsl::PressureOscarEmu *this, PB::Reader *a2)
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

uint64_t CMMsl::PressureOscarEmu::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::Pressure *CMMsl::PressureOscarEmu::hash_value(CMMsl::PressureOscarEmu *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Pressure::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::PressureOscarEmu::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::PropagatedAnchor::~PropagatedAnchor(CMMsl::PropagatedAnchor *this)
{
  *this = &unk_286C22F40;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
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
  CMMsl::PropagatedAnchor::~PropagatedAnchor(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::PropagatedAnchor *CMMsl::PropagatedAnchor::PropagatedAnchor(CMMsl::PropagatedAnchor *this, const CMMsl::PropagatedAnchor *a2)
{
  *(this + 1) = 0;
  *this = &unk_286C22F40;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  if (*(a2 + 5))
  {
    operator new();
  }

  if (this != a2)
  {
    sub_25AD285D4(this + 1, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
  }

  if (*(a2 + 48))
  {
    v4 = *(a2 + 4);
    *(this + 48) |= 1u;
    *(this + 4) = v4;
  }

  return this;
}

uint64_t CMMsl::PropagatedAnchor::operator=(uint64_t a1, const CMMsl::PropagatedAnchor *a2)
{
  if (a1 != a2)
  {
    CMMsl::PropagatedAnchor::PropagatedAnchor(v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v6;
    v7 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v7;
    CMMsl::PropagatedAnchor::~PropagatedAnchor(v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PropagatedAnchor *a2, CMMsl::PropagatedAnchor *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

uint64_t CMMsl::PropagatedAnchor::PropagatedAnchor(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22F40;
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  v5 = *(a2 + 40);
  *(a2 + 40) = 0;
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_25AD28758(v4, (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t CMMsl::PropagatedAnchor::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::PropagatedAnchor::PropagatedAnchor(v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v6;
    v7 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v7;
    CMMsl::PropagatedAnchor::~PropagatedAnchor(v9);
  }

  return a1;
}

uint64_t CMMsl::PropagatedAnchor::formatText(CMMsl::PropagatedAnchor *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 48))
  {
    PB::TextFormatter::format(a2, "originalTimestamp", *(this + 4));
  }

  v5 = *(this + 5);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "pose");
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "velocity", v8);
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PropagatedAnchor::readFrom(CMMsl::PropagatedAnchor *this, PB::Reader *a2)
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
        goto LABEL_70;
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
        goto LABEL_70;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        if ((v10 & 7) != 2)
        {
          v41 = *(this + 2);
          v40 = *(this + 3);
          if (v41 >= v40)
          {
            v43 = *(this + 1);
            v44 = v41 - v43;
            v45 = (v41 - v43) >> 3;
            v46 = v45 + 1;
            if ((v45 + 1) >> 61)
            {
LABEL_74:
              sub_25AAE66B8();
            }

            v47 = v40 - v43;
            if (v47 >> 2 > v46)
            {
              v46 = v47 >> 2;
            }

            if (v47 >= 0x7FFFFFFFFFFFFFF8)
            {
              v48 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v48 = v46;
            }

            if (v48)
            {
              sub_25AD28710(v48);
            }

            v49 = (v41 - v43) >> 3;
            v50 = (8 * v45);
            v51 = (8 * v45 - 8 * v49);
            *v50 = 0;
            v42 = v50 + 1;
            memcpy(v51, v43, v44);
            v52 = *(this + 1);
            *(this + 1) = v51;
            *(this + 2) = v42;
            *(this + 3) = 0;
            if (v52)
            {
              operator delete(v52);
            }
          }

          else
          {
            *v41 = 0;
            v42 = v41 + 8;
          }

          *(this + 2) = v42;
          v53 = *(a2 + 1);
          if (v53 > 0xFFFFFFFFFFFFFFF7 || v53 + 8 > *(a2 + 2))
          {
LABEL_63:
            *(a2 + 24) = 1;
            goto LABEL_66;
          }

          *(v42 - 1) = *(*a2 + v53);
          goto LABEL_65;
        }

        if (PB::Reader::placeMark())
        {
          goto LABEL_72;
        }

        v23 = *(a2 + 1);
        v24 = *(a2 + 2);
        while (v23 < v24 && (*(a2 + 24) & 1) == 0)
        {
          v26 = *(this + 2);
          v25 = *(this + 3);
          if (v26 >= v25)
          {
            v28 = *(this + 1);
            v29 = v26 - v28;
            v30 = (v26 - v28) >> 3;
            v31 = v30 + 1;
            if ((v30 + 1) >> 61)
            {
              goto LABEL_74;
            }

            v32 = v25 - v28;
            if (v32 >> 2 > v31)
            {
              v31 = v32 >> 2;
            }

            if (v32 >= 0x7FFFFFFFFFFFFFF8)
            {
              v33 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v33 = v31;
            }

            if (v33)
            {
              sub_25AD28710(v33);
            }

            v34 = (v26 - v28) >> 3;
            v35 = (8 * v30);
            v36 = (8 * v30 - 8 * v34);
            *v35 = 0;
            v27 = v35 + 1;
            memcpy(v36, v28, v29);
            v37 = *(this + 1);
            *(this + 1) = v36;
            *(this + 2) = v27;
            *(this + 3) = 0;
            if (v37)
            {
              operator delete(v37);
            }
          }

          else
          {
            *v26 = 0;
            v27 = v26 + 8;
          }

          *(this + 2) = v27;
          v38 = *(a2 + 1);
          if (v38 > 0xFFFFFFFFFFFFFFF7 || v38 + 8 > *(a2 + 2))
          {
            *(a2 + 24) = 1;
            break;
          }

          *(v27 - 1) = *(*a2 + v38);
          v24 = *(a2 + 2);
          v23 = *(a2 + 1) + 8;
          *(a2 + 1) = v23;
        }

        PB::Reader::recallMark();
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
LABEL_72:
          v54 = 0;
          return v54 & 1;
        }
      }

LABEL_66:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_70;
      }
    }

    *(this + 48) |= 1u;
    v39 = *(a2 + 1);
    if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(a2 + 2))
    {
      goto LABEL_63;
    }

    *(this + 4) = *(*a2 + v39);
LABEL_65:
    *(a2 + 1) += 8;
    goto LABEL_66;
  }

LABEL_70:
  v54 = v4 ^ 1;
  return v54 & 1;
}

uint64_t CMMsl::PropagatedAnchor::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7);
  }

  if (*(v3 + 48))
  {
    v8 = *(v3 + 32);

    return PB::Writer::write(a2, v8);
  }

  return this;
}

uint64_t CMMsl::PropagatedAnchor::hash_value(CMMsl::PropagatedAnchor *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = CMMsl::Pose::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 1);
  v5 = *(this + 2);
  v6 = PBHashBytes();
  if (*(this + 48))
  {
    v7 = *(this + 4);
    if (v7 == 0.0)
    {
      v7 = 0.0;
    }
  }

  else
  {
    v7 = 0.0;
  }

  return v6 ^ v3 ^ *&v7;
}

uint64_t CMMsl::PropagatedAnchor::makePose(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

void CMMsl::Prox::~Prox(CMMsl::Prox *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::Prox::Prox(uint64_t this, const CMMsl::Prox *a2)
{
  *this = &unk_286C22F78;
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

const CMMsl::Prox *CMMsl::Prox::operator=(const CMMsl::Prox *a1, const CMMsl::Prox *a2)
{
  if (a1 != a2)
  {
    CMMsl::Prox::Prox(v7, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::Prox *a2, CMMsl::Prox *a3)
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

double CMMsl::Prox::Prox(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22F78;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C22F78;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::Prox::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8[0] = &unk_286C22F78;
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

uint64_t CMMsl::Prox::formatText(CMMsl::Prox *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "detectionMask");
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::Prox::readFrom(CMMsl::Prox *this, PB::Reader *a2)
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

uint64_t CMMsl::Prox::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t CMMsl::Prox::hash_value(CMMsl::Prox *this)
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

void CMMsl::ProxBaselineEstimatorState::~ProxBaselineEstimatorState(CMMsl::ProxBaselineEstimatorState *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::ProxBaselineEstimatorState::ProxBaselineEstimatorState(CMMsl::ProxBaselineEstimatorState *this, const CMMsl::ProxBaselineEstimatorState *a2)
{
  *this = &unk_286C22FB0;
  *(this + 22) = 0;
  v2 = *(a2 + 22);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 22) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 22);
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x100) != 0)
  {
LABEL_5:
    result = *(a2 + 11);
    v3 |= 0x100u;
    *(this + 22) = v3;
    *(this + 11) = result;
    v2 = *(a2 + 22);
  }

LABEL_6:
  if ((v2 & 0x400) != 0)
  {
    result = *(a2 + 13);
    v3 |= 0x400u;
    *(this + 22) = v3;
    *(this + 13) = result;
    v2 = *(a2 + 22);
    if ((v2 & 0x1000) == 0)
    {
LABEL_8:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 0x1000) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 15);
  v3 |= 0x1000u;
  *(this + 22) = v3;
  *(this + 15) = result;
  v2 = *(a2 + 22);
  if ((v2 & 0x800) == 0)
  {
LABEL_9:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = *(a2 + 14);
  v3 |= 0x800u;
  *(this + 22) = v3;
  *(this + 14) = result;
  v2 = *(a2 + 22);
  if ((v2 & 0x10000) == 0)
  {
LABEL_10:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = *(a2 + 19);
  v3 |= 0x10000u;
  *(this + 22) = v3;
  *(this + 19) = result;
  v2 = *(a2 + 22);
  if ((v2 & 0x20000) == 0)
  {
LABEL_11:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = *(a2 + 20);
  v3 |= 0x20000u;
  *(this + 22) = v3;
  *(this + 20) = result;
  v2 = *(a2 + 22);
  if ((v2 & 0x40000) == 0)
  {
LABEL_12:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v6 = *(a2 + 84);
  v3 |= 0x40000u;
  *(this + 22) = v3;
  *(this + 84) = v6;
  v2 = *(a2 + 22);
  if ((v2 & 0x4000) == 0)
  {
LABEL_13:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = *(a2 + 17);
  v3 |= 0x4000u;
  *(this + 22) = v3;
  *(this + 17) = result;
  v2 = *(a2 + 22);
  if ((v2 & 0x2000) == 0)
  {
LABEL_14:
    if ((v2 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = *(a2 + 16);
  v3 |= 0x2000u;
  *(this + 22) = v3;
  *(this + 16) = result;
  v2 = *(a2 + 22);
  if ((v2 & 2) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = *(a2 + 4);
  v3 |= 2u;
  *(this + 22) = v3;
  *(this + 4) = result;
  v2 = *(a2 + 22);
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 22) = v3;
  *(this + 8) = result;
  v2 = *(a2 + 22);
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 22) = v3;
  *(this + 9) = result;
  v2 = *(a2 + 22);
  if ((v2 & 0x80) == 0)
  {
LABEL_18:
    if ((v2 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 22) = v3;
  *(this + 10) = result;
  v2 = *(a2 + 22);
  if ((v2 & 4) == 0)
  {
LABEL_19:
    if ((v2 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = *(a2 + 5);
  v3 |= 4u;
  *(this + 22) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 22);
  if ((v2 & 8) == 0)
  {
LABEL_20:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 6);
  v3 |= 8u;
  *(this + 22) = v3;
  *(this + 6) = result;
  v2 = *(a2 + 22);
  if ((v2 & 0x10) == 0)
  {
LABEL_21:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 22) = v3;
  *(this + 7) = result;
  v2 = *(a2 + 22);
  if ((v2 & 0x8000) == 0)
  {
LABEL_22:
    if ((v2 & 0x200) == 0)
    {
      return result;
    }

LABEL_40:
    result = *(a2 + 12);
    *(this + 22) = v3 | 0x200;
    *(this + 12) = result;
    return result;
  }

LABEL_39:
  result = *(a2 + 18);
  v3 |= 0x8000u;
  *(this + 22) = v3;
  *(this + 18) = result;
  if ((*(a2 + 22) & 0x200) != 0)
  {
    goto LABEL_40;
  }

  return result;
}

CMMsl *CMMsl::ProxBaselineEstimatorState::operator=(CMMsl *a1, const CMMsl::ProxBaselineEstimatorState *a2)
{
  if (a1 != a2)
  {
    CMMsl::ProxBaselineEstimatorState::ProxBaselineEstimatorState(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::ProxBaselineEstimatorState *a2, CMMsl::ProxBaselineEstimatorState *a3)
{
  v3 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v5;
  v6 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v6;
  v7 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v7;
  v8 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v8;
  v9 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v9;
  v10 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v10;
  LOBYTE(v4) = *(this + 84);
  *(this + 84) = *(a2 + 84);
  *(a2 + 84) = v4;
  v11 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v11;
  v12 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v12;
  v13 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v13;
  v14 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v14;
  v15 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v15;
  v16 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v16;
  v17 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v17;
  v18 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v18;
  v19 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v19;
  v20 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v20;
  result = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = result;
  return result;
}

float CMMsl::ProxBaselineEstimatorState::ProxBaselineEstimatorState(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22FB0;
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 72) = *(a2 + 72);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

CMMsl *CMMsl::ProxBaselineEstimatorState::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::ProxBaselineEstimatorState::ProxBaselineEstimatorState(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::ProxBaselineEstimatorState::formatText(CMMsl::ProxBaselineEstimatorState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 22);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "baselineError", *(this + 4));
    v5 = *(this + 22);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "covariancePostMeasurement00", *(this + 5));
  v5 = *(this + 22);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "covariancePostMeasurement01", *(this + 6));
  v5 = *(this + 22);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "covariancePostMeasurement11", *(this + 7));
  v5 = *(this + 22);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "covariancePreMeasurement00", *(this + 8));
  v5 = *(this + 22);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "covariancePreMeasurement01", *(this + 9));
  v5 = *(this + 22);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "covariancePreMeasurement11", *(this + 10));
  v5 = *(this + 22);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "estimate", *(this + 11));
  v5 = *(this + 22);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "factoryXTalk", *(this + 12));
  v5 = *(this + 22);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "gain", *(this + 13));
  v5 = *(this + 22);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "intensity", *(this + 14));
  v5 = *(this + 22);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "measurement", *(this + 15));
  v5 = *(this + 22);
  if ((v5 & 0x40000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  v7 = *(this + 84);
  PB::TextFormatter::format(a2, "possibleObstructed");
  v5 = *(this + 22);
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
  PB::TextFormatter::format(a2, "proxBufferMax", *(this + 16));
  v5 = *(this + 22);
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
  PB::TextFormatter::format(a2, "proxBufferVariance", *(this + 17));
  v5 = *(this + 22);
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
  PB::TextFormatter::format(a2, "sensitivityCal", *(this + 18));
  v5 = *(this + 22);
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
  PB::TextFormatter::format(a2, "temperature", *(this + 19));
  v5 = *(this + 22);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "temperatureCalError", *(this + 20));
  if (*(this + 22))
  {
LABEL_20:
    v6 = *(this + 1);
    PB::TextFormatter::format(a2, "timestamp");
  }

LABEL_21:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ProxBaselineEstimatorState::readFrom(CMMsl::ProxBaselineEstimatorState *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_102:
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
        goto LABEL_102;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 22) |= 1u;
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
                v26 = 0;
                *(a2 + 24) = 1;
                goto LABEL_100;
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
                v26 = 0;
LABEL_99:
                v2 = v37;
                goto LABEL_100;
              }
            }

            if (*(a2 + 24))
            {
              v26 = 0;
            }

            goto LABEL_99;
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
              goto LABEL_100;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          v26 = 0;
LABEL_100:
          *(this + 1) = v26;
          break;
        case 2u:
          *(this + 22) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_80;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_92;
        case 3u:
          *(this + 22) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_80;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_92;
        case 4u:
          *(this + 22) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_80;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_92;
        case 5u:
          *(this + 22) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_80;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_92;
        case 6u:
          *(this + 22) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_80;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_92;
        case 7u:
          *(this + 22) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_80;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_92;
        case 8u:
          *(this + 22) |= 0x40000u;
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

          *(this + 84) = v31;
          break;
        case 9u:
          *(this + 22) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_80;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_92;
        case 0xAu:
          *(this + 22) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_80;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_92;
        case 0xBu:
          *(this + 22) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_80;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_92;
        case 0xCu:
          *(this + 22) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_80;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_92;
        case 0xDu:
          *(this + 22) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_80;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_92;
        case 0xEu:
          *(this + 22) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_80;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_92;
        case 0xFu:
          *(this + 22) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_80;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_92;
        case 0x10u:
          *(this + 22) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_80;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_92;
        case 0x11u:
          *(this + 22) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_80;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_92;
        case 0x12u:
          *(this + 22) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_80;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_92;
        case 0x13u:
          *(this + 22) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_80:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 12) = *(*a2 + v2);
LABEL_92:
            v2 = *(a2 + 1) + 4;
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
        goto LABEL_102;
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
        goto LABEL_102;
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

uint64_t CMMsl::ProxBaselineEstimatorState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 88);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 88);
    if ((v4 & 0x100) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 44));
  v4 = *(v3 + 88);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 52));
  v4 = *(v3 + 88);
  if ((v4 & 0x1000) == 0)
  {
LABEL_5:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 60));
  v4 = *(v3 + 88);
  if ((v4 & 0x800) == 0)
  {
LABEL_6:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 88);
  if ((v4 & 0x10000) == 0)
  {
LABEL_7:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 76));
  v4 = *(v3 + 88);
  if ((v4 & 0x20000) == 0)
  {
LABEL_8:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 88);
  if ((v4 & 0x40000) == 0)
  {
LABEL_9:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v6 = *(v3 + 84);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 88);
  if ((v4 & 0x4000) == 0)
  {
LABEL_10:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 68));
  v4 = *(v3 + 88);
  if ((v4 & 0x2000) == 0)
  {
LABEL_11:
    if ((v4 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 88);
  if ((v4 & 2) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 88);
  if ((v4 & 0x20) == 0)
  {
LABEL_13:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 88);
  if ((v4 & 0x40) == 0)
  {
LABEL_14:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 88);
  if ((v4 & 0x80) == 0)
  {
LABEL_15:
    if ((v4 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 88);
  if ((v4 & 4) == 0)
  {
LABEL_16:
    if ((v4 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 88);
  if ((v4 & 8) == 0)
  {
LABEL_17:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 88);
  if ((v4 & 0x10) == 0)
  {
LABEL_18:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

LABEL_38:
    this = PB::Writer::write(a2, *(v3 + 72));
    if ((*(v3 + 88) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_39;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 88);
  if ((v4 & 0x8000) != 0)
  {
    goto LABEL_38;
  }

LABEL_19:
  if ((v4 & 0x200) == 0)
  {
    return this;
  }

LABEL_39:
  v7 = *(v3 + 48);

  return PB::Writer::write(a2, v7);
}

uint64_t CMMsl::ProxBaselineEstimatorState::hash_value(CMMsl::ProxBaselineEstimatorState *this)
{
  v1 = *(this + 22);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_3;
    }

LABEL_47:
    v4 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_6;
    }

LABEL_48:
    v6 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_9;
    }

LABEL_49:
    v8 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_12;
    }

LABEL_50:
    v10 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_15;
    }

LABEL_51:
    v12 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_18;
    }

LABEL_52:
    v14 = 0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

  v2 = *(this + 1);
  if ((v1 & 0x100) == 0)
  {
    goto LABEL_47;
  }

LABEL_3:
  v3 = *(this + 11);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_48;
  }

LABEL_6:
  v5 = *(this + 13);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_49;
  }

LABEL_9:
  v7 = *(this + 15);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_50;
  }

LABEL_12:
  v9 = *(this + 14);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_51;
  }

LABEL_15:
  v11 = *(this + 19);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_52;
  }

LABEL_18:
  v13 = *(this + 20);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 0x40000) != 0)
  {
LABEL_21:
    v15 = *(this + 84);
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_22;
    }

LABEL_54:
    v17 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_25;
    }

LABEL_55:
    v19 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_28;
    }

LABEL_56:
    v21 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_31;
    }

LABEL_57:
    v23 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_34;
    }

LABEL_58:
    v25 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_37;
    }

LABEL_59:
    v27 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_60;
  }

LABEL_53:
  v15 = 0;
  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_54;
  }

LABEL_22:
  v16 = *(this + 17);
  v17 = LODWORD(v16);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_55;
  }

LABEL_25:
  v18 = *(this + 16);
  v19 = LODWORD(v18);
  if (v18 == 0.0)
  {
    v19 = 0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_56;
  }

LABEL_28:
  v20 = *(this + 4);
  v21 = LODWORD(v20);
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_57;
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
    goto LABEL_58;
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
    goto LABEL_59;
  }

LABEL_37:
  v26 = *(this + 10);
  v27 = LODWORD(v26);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

  if ((v1 & 4) != 0)
  {
LABEL_40:
    v28 = *(this + 5);
    v29 = LODWORD(v28);
    if (v28 == 0.0)
    {
      v29 = 0;
    }

    if ((v1 & 8) != 0)
    {
      goto LABEL_43;
    }

LABEL_61:
    v31 = 0;
    goto LABEL_62;
  }

LABEL_60:
  v29 = 0;
  if ((v1 & 8) == 0)
  {
    goto LABEL_61;
  }

LABEL_43:
  v30 = *(this + 6);
  v31 = LODWORD(v30);
  if (v30 == 0.0)
  {
    v31 = 0;
  }

LABEL_62:
  if ((v1 & 0x10) != 0)
  {
    v37 = *(this + 7);
    v32 = LODWORD(v37);
    if (v37 == 0.0)
    {
      v32 = 0;
    }

    if ((v1 & 0x8000) != 0)
    {
LABEL_64:
      v33 = *(this + 18);
      v34 = LODWORD(v33);
      if (v33 == 0.0)
      {
        v34 = 0;
      }

      if ((v1 & 0x200) != 0)
      {
        goto LABEL_67;
      }

LABEL_74:
      v36 = 0;
      return v4 ^ v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v15 ^ v17 ^ v19 ^ v21 ^ v23 ^ v25 ^ v27 ^ v29 ^ v31 ^ v32 ^ v34 ^ v36;
    }
  }

  else
  {
    v32 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_64;
    }
  }

  v34 = 0;
  if ((v1 & 0x200) == 0)
  {
    goto LABEL_74;
  }

LABEL_67:
  v35 = *(this + 12);
  v36 = LODWORD(v35);
  if (v35 == 0.0)
  {
    v36 = 0;
  }

  return v4 ^ v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v15 ^ v17 ^ v19 ^ v21 ^ v23 ^ v25 ^ v27 ^ v29 ^ v31 ^ v32 ^ v34 ^ v36;
}

void CMMsl::ProxCalibration::~ProxCalibration(CMMsl::ProxCalibration *this)
{
  *this = &unk_286C22FE8;
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
  CMMsl::ProxCalibration::~ProxCalibration(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::ProxCalibration *CMMsl::ProxCalibration::ProxCalibration(CMMsl::ProxCalibration *this, const CMMsl::ProxCalibration *a2)
{
  *this = &unk_286C22FE8;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 18) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  v5 = *(a2 + 72);
  if ((v5 & 2) != 0)
  {
    v7 = *(a2 + 15);
    v6 = 2;
    *(this + 72) = 2;
    *(this + 15) = v7;
    v5 = *(a2 + 72);
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if (*(a2 + 72))
  {
LABEL_5:
    v8 = *(a2 + 14);
    v6 |= 1u;
    *(this + 72) = v6;
    *(this + 14) = v8;
    v5 = *(a2 + 72);
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v11 = *(a2 + 16);
  v6 |= 4u;
  *(this + 72) = v6;
  *(this + 16) = v11;
  if ((*(a2 + 72) & 8) != 0)
  {
LABEL_8:
    v9 = *(a2 + 17);
    *(this + 72) = v6 | 8;
    *(this + 17) = v9;
  }

LABEL_9:
  if (this != a2)
  {
    sub_25AD287AC(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
    sub_25AD287AC(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  }

  return this;
}

uint64_t CMMsl::ProxCalibration::operator=(uint64_t a1, const CMMsl::ProxCalibration *a2)
{
  if (a1 != a2)
  {
    CMMsl::ProxCalibration::ProxCalibration(&v11, a2);
    v3 = v16;
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    *(a1 + 56) = v15;
    *(a1 + 64) = v3;
    v6 = *(a1 + 72);
    *(a1 + 72) = v17;
    v17 = v6;
    v15 = v4;
    v16 = v5;
    v7 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v7;
    v8 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v8;
    v9 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v9;
    CMMsl::ProxCalibration::~ProxCalibration(&v11);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::ProxCalibration *a2, CMMsl::ProxCalibration *a3)
{
  v3 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v3;
  v4 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v4;
  result = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = result;
  v6 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v6;
  v7 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v9;
  v10 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v10;
  v11 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v11;
  v12 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v12;
  v13 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v13;
  return result;
}

uint64_t CMMsl::ProxCalibration::ProxCalibration(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22FE8;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  sub_25AD28758(a1 + 8, (a2 + 8));
  sub_25AD28758(a1 + 32, (a2 + 32));
  return a1;
}

uint64_t CMMsl::ProxCalibration::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::ProxCalibration::ProxCalibration(&v11, a2);
    v3 = v16;
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    *(a1 + 56) = v15;
    *(a1 + 64) = v3;
    v6 = *(a1 + 72);
    *(a1 + 72) = v17;
    v17 = v6;
    v15 = v4;
    v16 = v5;
    v7 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v7;
    v8 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v8;
    v9 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v9;
    CMMsl::ProxCalibration::~ProxCalibration(&v11);
  }

  return a1;
}

uint64_t CMMsl::ProxCalibration::formatText(CMMsl::ProxCalibration *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 72);
  if (v5)
  {
    PB::TextFormatter::format(a2, "bC150RXAVE", *(this + 14));
    v5 = *(this + 72);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "gC0RXAVE", *(this + 15));
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "ntcRamp", v8);
  }

  v9 = *(this + 4);
  v10 = *(this + 5);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(a2, "rxXT", v11);
  }

  v12 = *(this + 72);
  if ((v12 & 4) != 0)
  {
    v13 = *(this + 16);
    PB::TextFormatter::format(a2, "versionPxCL");
    v12 = *(this + 72);
  }

  if ((v12 & 8) != 0)
  {
    v14 = *(this + 17);
    PB::TextFormatter::format(a2, "versionPxTC");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ProxCalibration::readFrom(CMMsl::ProxCalibration *this, PB::Reader *a2)
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
        goto LABEL_148;
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
      v22 = v10 & 7;
      if (v22 == 4)
      {
        v4 = 0;
        goto LABEL_148;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) > 3)
      {
        switch(v23)
        {
          case 4:
            *(this + 72) |= 8u;
            v51 = *(a2 + 1);
            v50 = *(a2 + 2);
            v52 = *a2;
            if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v50)
            {
              v76 = 0;
              v77 = 0;
              v55 = 0;
              v78 = (v52 + v51);
              v18 = v50 >= v51;
              v79 = v50 - v51;
              if (!v18)
              {
                v79 = 0;
              }

              v80 = v51 + 1;
              while (1)
              {
                if (!v79)
                {
                  LODWORD(v55) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_129;
                }

                v81 = *v78;
                *(a2 + 1) = v80;
                v55 |= (v81 & 0x7F) << v76;
                if ((v81 & 0x80) == 0)
                {
                  break;
                }

                v76 += 7;
                ++v78;
                --v79;
                ++v80;
                v14 = v77++ > 8;
                if (v14)
                {
LABEL_94:
                  LODWORD(v55) = 0;
                  goto LABEL_129;
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
                  goto LABEL_94;
                }
              }
            }

LABEL_129:
            *(this + 17) = v55;
            goto LABEL_144;
          case 5:
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
LABEL_150:
                v114 = 0;
                return v114 & 1;
              }

              v60 = *(a2 + 1);
              v61 = *(a2 + 2);
              while (v60 < v61 && (*(a2 + 24) & 1) == 0)
              {
                v63 = *(this + 2);
                v62 = *(this + 3);
                if (v63 >= v62)
                {
                  v65 = *(this + 1);
                  v66 = v63 - v65;
                  v67 = (v63 - v65) >> 2;
                  v68 = v67 + 1;
                  if ((v67 + 1) >> 62)
                  {
                    goto LABEL_152;
                  }

                  v69 = v62 - v65;
                  if (v69 >> 1 > v68)
                  {
                    v68 = v69 >> 1;
                  }

                  if (v69 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v70 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v70 = v68;
                  }

                  if (v70)
                  {
                    sub_25AD288E8(v70);
                  }

                  v71 = (v63 - v65) >> 2;
                  v72 = (4 * v67);
                  v73 = (4 * v67 - 4 * v71);
                  *v72 = 0;
                  v64 = v72 + 1;
                  memcpy(v73, v65, v66);
                  v74 = *(this + 1);
                  *(this + 1) = v73;
                  *(this + 2) = v64;
                  *(this + 3) = 0;
                  if (v74)
                  {
                    operator delete(v74);
                  }
                }

                else
                {
                  *v63 = 0;
                  v64 = v63 + 4;
                }

                *(this + 2) = v64;
                v75 = *(a2 + 1);
                if (v75 > 0xFFFFFFFFFFFFFFFBLL || v75 + 4 > *(a2 + 2))
                {
LABEL_107:
                  *(a2 + 24) = 1;
                  goto LABEL_108;
                }

                *(v64 - 1) = *(*a2 + v75);
                v61 = *(a2 + 2);
                v60 = *(a2 + 1) + 4;
                *(a2 + 1) = v60;
              }

              goto LABEL_108;
            }

            v92 = *(this + 2);
            v91 = *(this + 3);
            if (v92 >= v91)
            {
              v99 = *(this + 1);
              v100 = v92 - v99;
              v101 = (v92 - v99) >> 2;
              v102 = v101 + 1;
              if ((v101 + 1) >> 62)
              {
LABEL_152:
                sub_25AAE66B8();
              }

              v103 = v91 - v99;
              if (v103 >> 1 > v102)
              {
                v102 = v103 >> 1;
              }

              if (v103 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v104 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v104 = v102;
              }

              if (v104)
              {
                sub_25AD288E8(v104);
              }

              v109 = (v92 - v99) >> 2;
              v110 = (4 * v101);
              v111 = (4 * v101 - 4 * v109);
              *v110 = 0;
              v90 = v110 + 1;
              memcpy(v111, v99, v100);
              v112 = *(this + 1);
              *(this + 1) = v111;
              *(this + 2) = v90;
              *(this + 3) = 0;
              if (v112)
              {
                operator delete(v112);
              }
            }

            else
            {
              *v92 = 0;
              v90 = v92 + 4;
            }

            *(this + 2) = v90;
            break;
          case 6:
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_150;
              }

              v33 = *(a2 + 1);
              v34 = *(a2 + 2);
              while (v33 < v34 && (*(a2 + 24) & 1) == 0)
              {
                v36 = *(this + 5);
                v35 = *(this + 6);
                if (v36 >= v35)
                {
                  v38 = *(this + 4);
                  v39 = v36 - v38;
                  v40 = (v36 - v38) >> 2;
                  v41 = v40 + 1;
                  if ((v40 + 1) >> 62)
                  {
                    goto LABEL_152;
                  }

                  v42 = v35 - v38;
                  if (v42 >> 1 > v41)
                  {
                    v41 = v42 >> 1;
                  }

                  if (v42 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v43 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v43 = v41;
                  }

                  if (v43)
                  {
                    sub_25AD288E8(v43);
                  }

                  v44 = (v36 - v38) >> 2;
                  v45 = (4 * v40);
                  v46 = (4 * v40 - 4 * v44);
                  *v45 = 0;
                  v37 = v45 + 1;
                  memcpy(v46, v38, v39);
                  v47 = *(this + 4);
                  *(this + 4) = v46;
                  *(this + 5) = v37;
                  *(this + 6) = 0;
                  if (v47)
                  {
                    operator delete(v47);
                  }
                }

                else
                {
                  *v36 = 0;
                  v37 = v36 + 4;
                }

                *(this + 5) = v37;
                v48 = *(a2 + 1);
                if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(a2 + 2))
                {
                  goto LABEL_107;
                }

                *(v37 - 1) = *(*a2 + v48);
                v34 = *(a2 + 2);
                v33 = *(a2 + 1) + 4;
                *(a2 + 1) = v33;
              }

LABEL_108:
              PB::Reader::recallMark();
              goto LABEL_144;
            }

            v89 = *(this + 5);
            v88 = *(this + 6);
            if (v89 >= v88)
            {
              v93 = *(this + 4);
              v94 = v89 - v93;
              v95 = (v89 - v93) >> 2;
              v96 = v95 + 1;
              if ((v95 + 1) >> 62)
              {
                goto LABEL_152;
              }

              v97 = v88 - v93;
              if (v97 >> 1 > v96)
              {
                v96 = v97 >> 1;
              }

              if (v97 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v98 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v98 = v96;
              }

              if (v98)
              {
                sub_25AD288E8(v98);
              }

              v105 = (v89 - v93) >> 2;
              v106 = (4 * v95);
              v107 = (4 * v95 - 4 * v105);
              *v106 = 0;
              v90 = v106 + 1;
              memcpy(v107, v93, v94);
              v108 = *(this + 4);
              *(this + 4) = v107;
              *(this + 5) = v90;
              *(this + 6) = 0;
              if (v108)
              {
                operator delete(v108);
              }
            }

            else
            {
              *v89 = 0;
              v90 = v89 + 4;
            }

            *(this + 5) = v90;
            break;
          default:
LABEL_17:
            if ((PB::Reader::skip(a2) & 1) == 0)
            {
              goto LABEL_150;
            }

            goto LABEL_144;
        }

        v113 = *(a2 + 1);
        if (v113 > 0xFFFFFFFFFFFFFFFBLL || v113 + 4 > *(a2 + 2))
        {
LABEL_141:
          *(a2 + 24) = 1;
          goto LABEL_144;
        }

        *(v90 - 1) = *(*a2 + v113);
        goto LABEL_143;
      }

      if (v23 == 1)
      {
        break;
      }

      if (v23 == 2)
      {
        *(this + 72) |= 1u;
        v59 = *(a2 + 1);
        if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(a2 + 2))
        {
          goto LABEL_141;
        }

        *(this + 14) = *(*a2 + v59);
LABEL_143:
        *(a2 + 1) += 4;
        goto LABEL_144;
      }

      if (v23 != 3)
      {
        goto LABEL_17;
      }

      *(this + 72) |= 4u;
      v25 = *(a2 + 1);
      v24 = *(a2 + 2);
      v26 = *a2;
      if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
      {
        v82 = 0;
        v83 = 0;
        v29 = 0;
        v84 = (v26 + v25);
        v18 = v24 >= v25;
        v85 = v24 - v25;
        if (!v18)
        {
          v85 = 0;
        }

        v86 = v25 + 1;
        while (1)
        {
          if (!v85)
          {
            LODWORD(v29) = 0;
            *(a2 + 24) = 1;
            goto LABEL_132;
          }

          v87 = *v84;
          *(a2 + 1) = v86;
          v29 |= (v87 & 0x7F) << v82;
          if ((v87 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          ++v84;
          --v85;
          ++v86;
          v14 = v83++ > 8;
          if (v14)
          {
LABEL_102:
            LODWORD(v29) = 0;
            goto LABEL_132;
          }
        }

        if (*(a2 + 24))
        {
          LODWORD(v29) = 0;
        }
      }

      else
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = (v26 + v25);
        v31 = v25 + 1;
        while (1)
        {
          *(a2 + 1) = v31;
          v32 = *v30++;
          v29 |= (v32 & 0x7F) << v27;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          ++v31;
          v14 = v28++ > 8;
          if (v14)
          {
            goto LABEL_102;
          }
        }
      }

LABEL_132:
      *(this + 16) = v29;
LABEL_144:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_148;
      }
    }

    *(this + 72) |= 2u;
    v49 = *(a2 + 1);
    if (v49 > 0xFFFFFFFFFFFFFFFBLL || v49 + 4 > *(a2 + 2))
    {
      goto LABEL_141;
    }

    *(this + 15) = *(*a2 + v49);
    goto LABEL_143;
  }

LABEL_148:
  v114 = v4 ^ 1;
  return v114 & 1;
}

uint64_t CMMsl::ProxCalibration::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 72);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 60));
    v4 = *(v3 + 72);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      v12 = *(v3 + 64);
      this = PB::Writer::writeVarInt(a2);
      if ((*(v3 + 72) & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*(this + 72) & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 72);
  if ((v4 & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v4 & 8) != 0)
  {
LABEL_5:
    v5 = *(v3 + 68);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_6:
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    this = PB::Writer::write(a2, v8);
  }

  v10 = *(v3 + 32);
  v9 = *(v3 + 40);
  while (v10 != v9)
  {
    v11 = *v10++;
    this = PB::Writer::write(a2, v11);
  }

  return this;
}

uint64_t CMMsl::ProxCalibration::hash_value(CMMsl::ProxCalibration *this)
{
  if ((*(this + 72) & 2) == 0)
  {
    v2 = 0;
    if (*(this + 72))
    {
      goto LABEL_3;
    }

LABEL_11:
    v4 = 0;
    if ((*(this + 72) & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v5 = 0;
    if ((*(this + 72) & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v7 = *(this + 15);
  v2 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v2 = 0;
  }

  if ((*(this + 72) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  v3 = *(this + 14);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((*(this + 72) & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v5 = *(this + 16);
  if ((*(this + 72) & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v6 = *(this + 17);
LABEL_14:
  v8 = v4 ^ v2 ^ v5 ^ v6;
  v9 = *(this + 1);
  v10 = *(this + 2);
  v11 = v8 ^ PBHashBytes();
  v12 = *(this + 4);
  v13 = *(this + 5);
  return v11 ^ PBHashBytes();
}

void CMMsl::ProxPDP::~ProxPDP(CMMsl::ProxPDP *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::ProxPDP::ProxPDP(uint64_t this, const CMMsl::ProxPDP *a2)
{
  *this = &unk_286C23020;
  *(this + 48) = 0;
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 48) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 24);
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
    v5 = *(a2 + 6);
    v3 |= 8u;
    *(this + 48) = v3;
    *(this + 24) = v5;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    v6 = *(a2 + 8);
    v3 |= 0x20u;
    *(this + 48) = v3;
    *(this + 32) = v6;
    v2 = *(a2 + 24);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 48) = v3;
  *(this + 28) = v7;
  v2 = *(a2 + 24);
  if ((v2 & 2) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = *(a2 + 4);
  v3 |= 2u;
  *(this + 48) = v3;
  *(this + 16) = v8;
  v2 = *(a2 + 24);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 48) = v3;
  *(this + 36) = v9;
  v2 = *(a2 + 24);
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
  v10 = *(a2 + 5);
  v3 |= 4u;
  *(this + 48) = v3;
  *(this + 20) = v10;
  v2 = *(a2 + 24);
  if ((v2 & 0x80) == 0)
  {
LABEL_12:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 48) = v3;
  *(this + 40) = v11;
  v2 = *(a2 + 24);
  if ((v2 & 0x200) == 0)
  {
LABEL_13:
    if ((v2 & 0x100) == 0)
    {
      return this;
    }

LABEL_22:
    v13 = *(a2 + 44);
    *(this + 48) = v3 | 0x100;
    *(this + 44) = v13;
    return this;
  }

LABEL_21:
  v12 = *(a2 + 45);
  v3 |= 0x200u;
  *(this + 48) = v3;
  *(this + 45) = v12;
  if ((*(a2 + 24) & 0x100) != 0)
  {
    goto LABEL_22;
  }

  return this;
}

uint64_t CMMsl::ProxPDP::operator=(uint64_t a1, const CMMsl::ProxPDP *a2)
{
  if (a1 != a2)
  {
    CMMsl::ProxPDP::ProxPDP(v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v16;
    v16 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v11;
    v11 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v7;
    LOBYTE(v4) = *(a1 + 45);
    *(a1 + 45) = v15;
    v15 = v4;
    LOBYTE(v4) = *(a1 + 44);
    *(a1 + 44) = v14;
    v14 = v4;
    PB::Base::~Base(v9);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::ProxPDP *a2, CMMsl::ProxPDP *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  v7 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v7;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v9;
  v10 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v10;
  result = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = result;
  LOBYTE(v4) = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v4;
  LOBYTE(v4) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v4;
  return result;
}

float CMMsl::ProxPDP::ProxPDP(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23020;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 44) = *(a2 + 44);
  return result;
}

uint64_t CMMsl::ProxPDP::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::ProxPDP::ProxPDP(v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v16;
    v16 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v11;
    v11 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v7;
    LOBYTE(v4) = *(a1 + 45);
    *(a1 + 45) = v15;
    v15 = v4;
    LOBYTE(v4) = *(a1 + 44);
    *(a1 + 44) = v14;
    v14 = v4;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::ProxPDP::formatText(CMMsl::ProxPDP *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "ambient", *(this + 4));
    v5 = *(this + 24);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "baselineConfidence", *(this + 5));
  v5 = *(this + 24);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "intensity", *(this + 6));
  v5 = *(this + 24);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "intensityBaselineDelta", *(this + 7));
  v5 = *(this + 24);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "intensityCalDelta", *(this + 8));
  v5 = *(this + 24);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = *(this + 44);
  PB::TextFormatter::format(a2, "pocketFlag");
  v5 = *(this + 24);
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
  PB::TextFormatter::format(a2, "pocketProbability", *(this + 9));
  v5 = *(this + 24);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "rxNtcC", *(this + 10));
  v5 = *(this + 24);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v8 = *(this + 45);
  PB::TextFormatter::format(a2, "scanFlags");
  if (*(this + 24))
  {
LABEL_11:
    v6 = *(this + 1);
    PB::TextFormatter::format(a2, "timestamp");
  }

LABEL_12:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ProxPDP::readFrom(CMMsl::ProxPDP *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 5)
    {
      if (v22 <= 7)
      {
        if (v22 == 6)
        {
          *(this + 24) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_62:
            *(a2 + 24) = 1;
            goto LABEL_84;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_78;
        }

        if (v22 == 7)
        {
          *(this + 24) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_78;
        }
      }

      else
      {
        switch(v22)
        {
          case 8:
            *(this + 24) |= 0x80u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_62;
            }

            *(this + 10) = *(*a2 + v2);
            goto LABEL_78;
          case 9:
            *(this + 24) |= 0x200u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v34 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v33 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v34 = v33 != 0;
            }

            *(this + 45) = v34;
            goto LABEL_84;
          case 0xA:
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
            goto LABEL_84;
        }
      }
    }

    else if (v22 <= 2)
    {
      if (v22 == 1)
      {
        *(this + 24) |= 1u;
        v25 = *(a2 + 1);
        v2 = *(a2 + 2);
        v26 = *a2;
        if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
        {
          v35 = 0;
          v36 = 0;
          v29 = 0;
          if (v2 <= v25)
          {
            v2 = *(a2 + 1);
          }

          v37 = (v26 + v25);
          v38 = v2 - v25;
          v39 = v25 + 1;
          while (1)
          {
            if (!v38)
            {
              v29 = 0;
              *(a2 + 24) = 1;
              goto LABEL_83;
            }

            v40 = v39;
            v41 = *v37;
            *(a2 + 1) = v40;
            v29 |= (v41 & 0x7F) << v35;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            ++v37;
            --v38;
            v39 = v40 + 1;
            v14 = v36++ > 8;
            if (v14)
            {
              v29 = 0;
              goto LABEL_82;
            }
          }

          if (*(a2 + 24))
          {
            v29 = 0;
          }

LABEL_82:
          v2 = v40;
        }

        else
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = (v26 + v25);
          v31 = v25 + 1;
          while (1)
          {
            v2 = v31;
            *(a2 + 1) = v31;
            v32 = *v30++;
            v29 |= (v32 & 0x7F) << v27;
            if ((v32 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            ++v31;
            v14 = v28++ > 8;
            if (v14)
            {
              v29 = 0;
              break;
            }
          }
        }

LABEL_83:
        *(this + 1) = v29;
        goto LABEL_84;
      }

      if (v22 == 2)
      {
        *(this + 24) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_62;
        }

        *(this + 6) = *(*a2 + v2);
        goto LABEL_78;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 24) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_78;
        case 4:
          *(this + 24) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_78;
        case 5:
          *(this + 24) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 4) = *(*a2 + v2);
LABEL_78:
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
          goto LABEL_84;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v42 = 0;
      return v42 & 1;
    }

    v2 = *(a2 + 1);
LABEL_84:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v42 = v4 ^ 1;
  return v42 & 1;
}

uint64_t CMMsl::ProxPDP::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 48);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 48);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 48);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 48);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 48);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 48);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 48);
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
  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 48);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v6 = *(v3 + 45);
    this = PB::Writer::write(a2);
    if ((*(v3 + 48) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 48);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x100) == 0)
  {
    return this;
  }

LABEL_21:
  v7 = *(v3 + 44);

  return PB::Writer::write(a2);
}

uint64_t CMMsl::ProxPDP::hash_value(CMMsl::ProxPDP *this)
{
  v1 = *(this + 24);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_27:
    v4 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_28:
    v6 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_9;
    }

LABEL_29:
    v8 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_30:
    v10 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    v12 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_18;
    }

LABEL_32:
    v14 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_21;
    }

LABEL_33:
    v16 = 0;
    if ((*(this + 24) & 0x200) != 0)
    {
      goto LABEL_24;
    }

LABEL_34:
    v17 = 0;
    if ((*(this + 24) & 0x100) != 0)
    {
      goto LABEL_25;
    }

LABEL_35:
    v18 = 0;
    return v4 ^ v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v17 ^ v18;
  }

  v2 = *(this + 1);
  if ((v1 & 8) == 0)
  {
    goto LABEL_27;
  }

LABEL_3:
  v3 = *(this + 6);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_28;
  }

LABEL_6:
  v5 = *(this + 8);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_29;
  }

LABEL_9:
  v7 = *(this + 7);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_30;
  }

LABEL_12:
  v9 = *(this + 4);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  v11 = *(this + 9);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_32;
  }

LABEL_18:
  v13 = *(this + 5);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_33;
  }

LABEL_21:
  v15 = *(this + 10);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((*(this + 24) & 0x200) == 0)
  {
    goto LABEL_34;
  }

LABEL_24:
  v17 = *(this + 45);
  if ((*(this + 24) & 0x100) == 0)
  {
    goto LABEL_35;
  }

LABEL_25:
  v18 = *(this + 44);
  return v4 ^ v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v17 ^ v18;
}

void CMMsl::RawAudio::~RawAudio(CMMsl::RawAudio *this)
{
  *this = &unk_286C23058;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::RawAudio::~RawAudio(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::RawAudio *CMMsl::RawAudio::RawAudio(char **this, char **a2)
{
  *this = &unk_286C23058;
  this[1] = 0;
  v3 = this + 1;
  this[2] = 0;
  this[3] = 0;
  if (this != a2)
  {
    sub_25AD287AC(v3, a2[1], a2[2], (a2[2] - a2[1]) >> 2);
  }

  return this;
}

uint64_t CMMsl::RawAudio::operator=(uint64_t a1, char **a2)
{
  if (a1 != a2)
  {
    CMMsl::RawAudio::RawAudio(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    CMMsl::RawAudio::~RawAudio(&v6);
  }

  return a1;
}

void *CMMsl::swap(void *this, CMMsl::RawAudio *a2, CMMsl::RawAudio *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  return this;
}

void *CMMsl::RawAudio::RawAudio(void *a1, uint64_t a2)
{
  *a1 = &unk_286C23058;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  sub_25AD28758((a1 + 1), (a2 + 8));
  return a1;
}

{
  *a1 = &unk_286C23058;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  sub_25AD28758((a1 + 1), (a2 + 8));
  return a1;
}

uint64_t CMMsl::RawAudio::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_286C23058;
    v3 = *(a2 + 24);
    v4 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v3;
    v10 = v6;
    CMMsl::RawAudio::~RawAudio(&v8);
  }

  return a1;
}

uint64_t CMMsl::RawAudio::formatText(CMMsl::RawAudio *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "volts");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::RawAudio::readFrom(CMMsl::RawAudio *this, PB::Reader *a2)
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
        v38 = v9++ > 8;
        if (v38)
        {
          goto LABEL_59;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_97;
      }

      if ((v10 >> 3) == 1)
      {
        if ((v10 & 7) == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_99;
          }

          if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
          {
            v21 = *(this + 2);
            while (1)
            {
              v22 = *(this + 3);
              if (v21 >= v22)
              {
                v23 = *(this + 1);
                v24 = v21 - v23;
                v25 = (v21 - v23) >> 2;
                v26 = v25 + 1;
                if ((v25 + 1) >> 62)
                {
                  goto LABEL_101;
                }

                v27 = v22 - v23;
                if (v27 >> 1 > v26)
                {
                  v26 = v27 >> 1;
                }

                if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v28 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v28 = v26;
                }

                if (v28)
                {
                  sub_25AD288E8(v28);
                }

                v29 = (v21 - v23) >> 2;
                v30 = (4 * v25);
                v31 = (4 * v25 - 4 * v29);
                *v30 = 0;
                v21 = (v30 + 1);
                memcpy(v31, v23, v24);
                v32 = *(this + 1);
                *(this + 1) = v31;
                *(this + 2) = v21;
                *(this + 3) = 0;
                if (v32)
                {
                  operator delete(v32);
                }
              }

              else
              {
                *v21 = 0;
                v21 += 4;
              }

              *(this + 2) = v21;
              v34 = *(a2 + 1);
              v33 = *(a2 + 2);
              v35 = *a2;
              v36 = 0;
              v37 = 0;
              v38 = v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v33;
              if (v38)
              {
                break;
              }

              v44 = 0;
              v45 = (v35 + v34);
              v46 = v34 + 1;
              while (1)
              {
                v42 = v46;
                *(a2 + 1) = v46;
                v47 = *v45++;
                v44 |= (v47 & 0x7F) << v36;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v36 += 7;
                ++v46;
                v38 = v37++ > 8;
                if (v38)
                {
                  goto LABEL_53;
                }
              }

LABEL_56:
              *(v21 - 1) = v44;
              if (v42 >= v33 || (*(a2 + 24) & 1) != 0)
              {
                goto LABEL_74;
              }
            }

            v44 = 0;
            v39 = (v35 + v34);
            v40 = v33 - v34;
            if (v33 < v34)
            {
              v40 = 0;
            }

            v41 = v34 + 1;
            while (v40)
            {
              v42 = v41;
              v43 = *v39;
              *(a2 + 1) = v42;
              v44 |= (v43 & 0x7F) << v36;
              if ((v43 & 0x80) == 0)
              {
                if (*(a2 + 24))
                {
                  LODWORD(v44) = 0;
                }

                goto LABEL_56;
              }

              v36 += 7;
              ++v39;
              --v40;
              v41 = v42 + 1;
              v38 = v37++ > 8;
              if (v38)
              {
LABEL_53:
                LODWORD(v44) = 0;
                goto LABEL_56;
              }
            }

            *(a2 + 24) = 1;
            *(v21 - 1) = 0;
          }

LABEL_74:
          PB::Reader::recallMark();
        }

        else
        {
          v49 = *(this + 2);
          v48 = *(this + 3);
          if (v49 >= v48)
          {
            v51 = *(this + 1);
            v52 = v49 - v51;
            v53 = (v49 - v51) >> 2;
            v54 = v53 + 1;
            if ((v53 + 1) >> 62)
            {
LABEL_101:
              sub_25AAE66B8();
            }

            v55 = v48 - v51;
            if (v55 >> 1 > v54)
            {
              v54 = v55 >> 1;
            }

            if (v55 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v56 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v56 = v54;
            }

            if (v56)
            {
              sub_25AD288E8(v56);
            }

            v57 = (v49 - v51) >> 2;
            v58 = (4 * v53);
            v59 = (4 * v53 - 4 * v57);
            *v58 = 0;
            v50 = v58 + 1;
            memcpy(v59, v51, v52);
            v60 = *(this + 1);
            *(this + 1) = v59;
            *(this + 2) = v50;
            *(this + 3) = 0;
            if (v60)
            {
              operator delete(v60);
            }
          }

          else
          {
            *v49 = 0;
            v50 = v49 + 4;
          }

          *(this + 2) = v50;
          v62 = *(a2 + 1);
          v61 = *(a2 + 2);
          v63 = *a2;
          if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v61)
          {
            v70 = 0;
            v71 = 0;
            v66 = 0;
            v72 = (v63 + v62);
            v17 = v61 >= v62;
            v73 = v61 - v62;
            if (!v17)
            {
              v73 = 0;
            }

            v74 = v62 + 1;
            while (1)
            {
              if (!v73)
              {
                LODWORD(v66) = 0;
                *(a2 + 24) = 1;
                goto LABEL_95;
              }

              v75 = *v72;
              *(a2 + 1) = v74;
              v66 |= (v75 & 0x7F) << v70;
              if ((v75 & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              ++v72;
              --v73;
              ++v74;
              v38 = v71++ > 8;
              if (v38)
              {
LABEL_91:
                LODWORD(v66) = 0;
                goto LABEL_95;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v66) = 0;
            }
          }

          else
          {
            v64 = 0;
            v65 = 0;
            v66 = 0;
            v67 = (v63 + v62);
            v68 = v62 + 1;
            while (1)
            {
              *(a2 + 1) = v68;
              v69 = *v67++;
              v66 |= (v69 & 0x7F) << v64;
              if ((v69 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              ++v68;
              v38 = v65++ > 8;
              if (v38)
              {
                goto LABEL_91;
              }
            }
          }

LABEL_95:
          *(v50 - 1) = v66;
        }
      }

      else
      {
LABEL_59:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
LABEL_99:
          v76 = 0;
          return v76 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_97;
      }
    }

    v14 = 0;
    v15 = 0;
    v10 = 0;
    v16 = (v7 + v2);
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
      v10 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v38 = v15++ > 8;
      if (v38)
      {
        goto LABEL_59;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_97:
  v76 = v4 ^ 1;
  return v76 & 1;
}

uint64_t CMMsl::RawAudio::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeVarInt(a2))
  {
    v5 = *v2++;
  }

  return this;
}

uint64_t CMMsl::RawAudio::hash_value(CMMsl::RawAudio *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  return PBHashBytes();
}

void CMMsl::RelDMInSystemConfig::~RelDMInSystemConfig(CMMsl::RelDMInSystemConfig *this)
{
  v2 = *(this + 1);
  *this = &unk_286C23090;
  *(this + 1) = 0;
  if (v2)
  {
    sub_25AD28A30(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::RelDMInSystemConfig::~RelDMInSystemConfig(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::RelDMInSystemConfig::RelDMInSystemConfig(uint64_t this, const CMMsl::RelDMInSystemConfig *a2)
{
  *this = &unk_286C23090;
  *(this + 8) = 0;
  *(this + 24) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    v2 = *(a2 + 2);
    *(this + 24) |= 1u;
    *(this + 16) = v2;
  }

  return this;
}

uint64_t CMMsl::RelDMInSystemConfig::operator=(uint64_t a1, const CMMsl::RelDMInSystemConfig *a2)
{
  if (a1 != a2)
  {
    CMMsl::RelDMInSystemConfig::RelDMInSystemConfig(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    CMMsl::RelDMInSystemConfig::~RelDMInSystemConfig(&v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::RelDMInSystemConfig *a2, CMMsl::RelDMInSystemConfig *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

uint64_t CMMsl::RelDMInSystemConfig::RelDMInSystemConfig(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23090;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    sub_25AD28A30(v5);
  }

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t CMMsl::RelDMInSystemConfig::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::RelDMInSystemConfig::RelDMInSystemConfig(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    CMMsl::RelDMInSystemConfig::~RelDMInSystemConfig(&v7);
  }

  return a1;
}

uint64_t CMMsl::RelDMInSystemConfig::formatText(CMMsl::RelDMInSystemConfig *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 24))
  {
    PB::TextFormatter::format(a2, "value", *(this + 2));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::RelDMInSystemConfig::readFrom(CMMsl::RelDMInSystemConfig *this, PB::Reader *a2)
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
        goto LABEL_31;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 24) |= 1u;
        v22 = *(a2 + 1);
        if (v22 <= 0xFFFFFFFFFFFFFFF7 && v22 + 8 <= *(a2 + 2))
        {
          *(this + 2) = *(*a2 + v22);
          *(a2 + 1) += 8;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          operator new();
        }

LABEL_22:
        if (!PB::Reader::skip(a2))
        {
          v23 = 0;
          return v23 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_31;
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

LABEL_31:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::RelDMInSystemConfig::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 8))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 24))
  {
    v4 = *(v3 + 16);

    return PB::Writer::write(a2, v4);
  }

  return this;
}

unint64_t CMMsl::RelDMInSystemConfig::hash_value(CMMsl::RelDMInSystemConfig *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = sub_25AD28AE4(v2);
  }

  if (*(this + 24))
  {
    v3 = *(this + 2);
    if (v3 == 0.0)
    {
      v3 = 0.0;
    }
  }

  else
  {
    v3 = 0.0;
  }

  return *&v3 ^ v2;
}

void CMMsl::RelativeDeviceMotionComplexTransition::~RelativeDeviceMotionComplexTransition(CMMsl::RelativeDeviceMotionComplexTransition *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::RelativeDeviceMotionComplexTransition::RelativeDeviceMotionComplexTransition(uint64_t this, const CMMsl::RelativeDeviceMotionComplexTransition *a2)
{
  *this = &unk_286C230C8;
  *(this + 188) = 0;
  v2 = *(a2 + 188);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 188) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 188);
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x800000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 26);
    v3 |= 0x800000uLL;
    *(this + 188) = v3;
    *(this + 104) = v5;
    v2 = *(a2 + 188);
  }

LABEL_6:
  if ((v2 & 0x1000000) != 0)
  {
    v6 = *(a2 + 27);
    v3 |= 0x1000000uLL;
    *(this + 188) = v3;
    *(this + 108) = v6;
    v2 = *(a2 + 188);
    if ((v2 & 0x2000000) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_57;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 28);
  v3 |= 0x2000000uLL;
  *(this + 188) = v3;
  *(this + 112) = v7;
  v2 = *(a2 + 188);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_57:
  v8 = *(a2 + 6);
  v3 |= 8uLL;
  *(this + 188) = v3;
  *(this + 24) = v8;
  v2 = *(a2 + 188);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

LABEL_58:
  v9 = *(a2 + 7);
  v3 |= 0x10uLL;
  *(this + 188) = v3;
  *(this + 28) = v9;
  v2 = *(a2 + 188);
  if ((v2 & 0x20) == 0)
  {
LABEL_11:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_60;
  }

LABEL_59:
  v10 = *(a2 + 8);
  v3 |= 0x20uLL;
  *(this + 188) = v3;
  *(this + 32) = v10;
  v2 = *(a2 + 188);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_12:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_61;
  }

LABEL_60:
  v11 = *(a2 + 33);
  v3 |= 0x40000000uLL;
  *(this + 188) = v3;
  *(this + 132) = v11;
  v2 = *(a2 + 188);
  if ((v2 & 0x200) == 0)
  {
LABEL_13:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_62;
  }

LABEL_61:
  v12 = *(a2 + 12);
  v3 |= 0x200uLL;
  *(this + 188) = v3;
  *(this + 48) = v12;
  v2 = *(a2 + 188);
  if ((v2 & 0x200000) == 0)
  {
LABEL_14:
    if ((v2 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_63;
  }

LABEL_62:
  v13 = *(a2 + 24);
  v3 |= 0x200000uLL;
  *(this + 188) = v3;
  *(this + 96) = v13;
  v2 = *(a2 + 188);
  if ((v2 & 2) == 0)
  {
LABEL_15:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_64;
  }

LABEL_63:
  v14 = *(a2 + 4);
  v3 |= 2uLL;
  *(this + 188) = v3;
  *(this + 16) = v14;
  v2 = *(a2 + 188);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_16:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_65;
  }

LABEL_64:
  v15 = *(a2 + 29);
  v3 |= 0x4000000uLL;
  *(this + 188) = v3;
  *(this + 116) = v15;
  v2 = *(a2 + 188);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_17:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_66;
  }

LABEL_65:
  v16 = *(a2 + 30);
  v3 |= 0x8000000uLL;
  *(this + 188) = v3;
  *(this + 120) = v16;
  v2 = *(a2 + 188);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_67;
  }

LABEL_66:
  v17 = *(a2 + 31);
  v3 |= 0x10000000uLL;
  *(this + 188) = v3;
  *(this + 124) = v17;
  v2 = *(a2 + 188);
  if ((v2 & 0x40) == 0)
  {
LABEL_19:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_68;
  }

LABEL_67:
  v18 = *(a2 + 9);
  v3 |= 0x40uLL;
  *(this + 188) = v3;
  *(this + 36) = v18;
  v2 = *(a2 + 188);
  if ((v2 & 0x80) == 0)
  {
LABEL_20:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_69;
  }

LABEL_68:
  v19 = *(a2 + 10);
  v3 |= 0x80uLL;
  *(this + 188) = v3;
  *(this + 40) = v19;
  v2 = *(a2 + 188);
  if ((v2 & 0x100) == 0)
  {
LABEL_21:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_70;
  }

LABEL_69:
  v20 = *(a2 + 11);
  v3 |= 0x100uLL;
  *(this + 188) = v3;
  *(this + 44) = v20;
  v2 = *(a2 + 188);
  if ((v2 & 0x80000000) == 0)
  {
LABEL_22:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_71;
  }

LABEL_70:
  v21 = *(a2 + 34);
  v3 |= 0x80000000uLL;
  *(this + 188) = v3;
  *(this + 136) = v21;
  v2 = *(a2 + 188);
  if ((v2 & 0x400) == 0)
  {
LABEL_23:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_72;
  }

LABEL_71:
  v22 = *(a2 + 13);
  v3 |= 0x400uLL;
  *(this + 188) = v3;
  *(this + 52) = v22;
  v2 = *(a2 + 188);
  if ((v2 & 0x400000) == 0)
  {
LABEL_24:
    if ((v2 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_73;
  }

LABEL_72:
  v23 = *(a2 + 25);
  v3 |= 0x400000uLL;
  *(this + 188) = v3;
  *(this + 100) = v23;
  v2 = *(a2 + 188);
  if ((v2 & 4) == 0)
  {
LABEL_25:
    if ((v2 & 0x400000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_74;
  }

LABEL_73:
  v24 = *(a2 + 5);
  v3 |= 4uLL;
  *(this + 188) = v3;
  *(this + 20) = v24;
  v2 = *(a2 + 188);
  if ((v2 & 0x400000000) == 0)
  {
LABEL_26:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_75;
  }

LABEL_74:
  v25 = *(a2 + 37);
  v3 |= 0x400000000uLL;
  *(this + 188) = v3;
  *(this + 148) = v25;
  v2 = *(a2 + 188);
  if ((v2 & 0x4000) == 0)
  {
LABEL_27:
    if ((v2 & 0x2000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_76;
  }

LABEL_75:
  v26 = *(a2 + 17);
  v3 |= 0x4000uLL;
  *(this + 188) = v3;
  *(this + 68) = v26;
  v2 = *(a2 + 188);
  if ((v2 & 0x2000000000) == 0)
  {
LABEL_28:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_77;
  }

LABEL_76:
  v27 = *(a2 + 40);
  v3 |= 0x2000000000uLL;
  *(this + 188) = v3;
  *(this + 160) = v27;
  v2 = *(a2 + 188);
  if ((v2 & 0x20000) == 0)
  {
LABEL_29:
    if ((v2 & 0x800000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_78;
  }

LABEL_77:
  v28 = *(a2 + 20);
  v3 |= 0x20000uLL;
  *(this + 188) = v3;
  *(this + 80) = v28;
  v2 = *(a2 + 188);
  if ((v2 & 0x800000000) == 0)
  {
LABEL_30:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_79;
  }

LABEL_78:
  v29 = *(a2 + 38);
  v3 |= 0x800000000uLL;
  *(this + 188) = v3;
  *(this + 152) = v29;
  v2 = *(a2 + 188);
  if ((v2 & 0x8000) == 0)
  {
LABEL_31:
    if ((v2 & 0x4000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_80;
  }

LABEL_79:
  v30 = *(a2 + 18);
  v3 |= 0x8000uLL;
  *(this + 188) = v3;
  *(this + 72) = v30;
  v2 = *(a2 + 188);
  if ((v2 & 0x4000000000) == 0)
  {
LABEL_32:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_81;
  }

LABEL_80:
  v31 = *(a2 + 41);
  v3 |= 0x4000000000uLL;
  *(this + 188) = v3;
  *(this + 164) = v31;
  v2 = *(a2 + 188);
  if ((v2 & 0x40000) == 0)
  {
LABEL_33:
    if ((v2 & 0x1000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_82;
  }

LABEL_81:
  v32 = *(a2 + 21);
  v3 |= 0x40000uLL;
  *(this + 188) = v3;
  *(this + 84) = v32;
  v2 = *(a2 + 188);
  if ((v2 & 0x1000000000) == 0)
  {
LABEL_34:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_83;
  }

LABEL_82:
  v33 = *(a2 + 39);
  v3 |= 0x1000000000uLL;
  *(this + 188) = v3;
  *(this + 156) = v33;
  v2 = *(a2 + 188);
  if ((v2 & 0x10000) == 0)
  {
LABEL_35:
    if ((v2 & 0x8000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_84;
  }

LABEL_83:
  v34 = *(a2 + 19);
  v3 |= 0x10000uLL;
  *(this + 188) = v3;
  *(this + 76) = v34;
  v2 = *(a2 + 188);
  if ((v2 & 0x8000000000) == 0)
  {
LABEL_36:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_85;
  }

LABEL_84:
  v35 = *(a2 + 42);
  v3 |= 0x8000000000uLL;
  *(this + 188) = v3;
  *(this + 168) = v35;
  v2 = *(a2 + 188);
  if ((v2 & 0x80000) == 0)
  {
LABEL_37:
    if ((v2 & 0x200000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_86;
  }

LABEL_85:
  v36 = *(a2 + 22);
  v3 |= 0x80000uLL;
  *(this + 188) = v3;
  *(this + 88) = v36;
  v2 = *(a2 + 188);
  if ((v2 & 0x200000000000) == 0)
  {
LABEL_38:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_87;
  }

LABEL_86:
  v37 = *(a2 + 183);
  v3 |= 0x200000000000uLL;
  *(this + 188) = v3;
  *(this + 183) = v37;
  v2 = *(a2 + 188);
  if ((v2 & 0x800) == 0)
  {
LABEL_39:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_88;
  }

LABEL_87:
  v38 = *(a2 + 14);
  v3 |= 0x800uLL;
  *(this + 188) = v3;
  *(this + 56) = v38;
  v2 = *(a2 + 188);
  if ((v2 & 0x1000) == 0)
  {
LABEL_40:
    if ((v2 & 0x100000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_89;
  }

LABEL_88:
  v39 = *(a2 + 15);
  v3 |= 0x1000uLL;
  *(this + 188) = v3;
  *(this + 60) = v39;
  v2 = *(a2 + 188);
  if ((v2 & 0x100000000000) == 0)
  {
LABEL_41:
    if ((v2 & 0x400000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_90;
  }

LABEL_89:
  v40 = *(a2 + 182);
  v3 |= 0x100000000000uLL;
  *(this + 188) = v3;
  *(this + 182) = v40;
  v2 = *(a2 + 188);
  if ((v2 & 0x400000000000) == 0)
  {
LABEL_42:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_91;
  }

LABEL_90:
  v41 = *(a2 + 184);
  v3 |= 0x400000000000uLL;
  *(this + 188) = v3;
  *(this + 184) = v41;
  v2 = *(a2 + 188);
  if ((v2 & 0x2000) == 0)
  {
LABEL_43:
    if ((v2 & 0x100000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_92;
  }

LABEL_91:
  v42 = *(a2 + 16);
  v3 |= 0x2000uLL;
  *(this + 188) = v3;
  *(this + 64) = v42;
  v2 = *(a2 + 188);
  if ((v2 & 0x100000000) == 0)
  {
LABEL_44:
    if ((v2 & 0x200000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_93;
  }

LABEL_92:
  v43 = *(a2 + 35);
  v3 |= 0x100000000uLL;
  *(this + 188) = v3;
  *(this + 140) = v43;
  v2 = *(a2 + 188);
  if ((v2 & 0x200000000) == 0)
  {
LABEL_45:
    if ((v2 & 0x1000000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_94;
  }

LABEL_93:
  v44 = *(a2 + 36);
  v3 |= 0x200000000uLL;
  *(this + 188) = v3;
  *(this + 144) = v44;
  v2 = *(a2 + 188);
  if ((v2 & 0x1000000000000) == 0)
  {
LABEL_46:
    if ((v2 & 0x80000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_95;
  }

LABEL_94:
  v45 = *(a2 + 186);
  v3 |= 0x1000000000000uLL;
  *(this + 188) = v3;
  *(this + 186) = v45;
  v2 = *(a2 + 188);
  if ((v2 & 0x80000000000) == 0)
  {
LABEL_47:
    if ((v2 & 0x40000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_96;
  }

LABEL_95:
  v46 = *(a2 + 181);
  v3 |= 0x80000000000uLL;
  *(this + 188) = v3;
  *(this + 181) = v46;
  v2 = *(a2 + 188);
  if ((v2 & 0x40000000000) == 0)
  {
LABEL_48:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_97;
  }

LABEL_96:
  v47 = *(a2 + 180);
  v3 |= 0x40000000000uLL;
  *(this + 188) = v3;
  *(this + 180) = v47;
  v2 = *(a2 + 188);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_49:
    if ((v2 & 0x20000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_98;
  }

LABEL_97:
  v48 = *(a2 + 32);
  v3 |= 0x20000000uLL;
  *(this + 188) = v3;
  *(this + 128) = v48;
  v2 = *(a2 + 188);
  if ((v2 & 0x20000000000) == 0)
  {
LABEL_50:
    if ((v2 & 0x10000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_99;
  }

LABEL_98:
  v49 = *(a2 + 44);
  v3 |= 0x20000000000uLL;
  *(this + 188) = v3;
  *(this + 176) = v49;
  v2 = *(a2 + 188);
  if ((v2 & 0x10000000000) == 0)
  {
LABEL_51:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_100;
  }

LABEL_99:
  v50 = *(a2 + 43);
  v3 |= 0x10000000000uLL;
  *(this + 188) = v3;
  *(this + 172) = v50;
  v2 = *(a2 + 188);
  if ((v2 & 0x100000) == 0)
  {
LABEL_52:
    if ((v2 & 0x800000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_101;
  }

LABEL_100:
  v51 = *(a2 + 23);
  v3 |= 0x100000uLL;
  *(this + 188) = v3;
  *(this + 92) = v51;
  v2 = *(a2 + 188);
  if ((v2 & 0x800000000000) == 0)
  {
LABEL_53:
    if ((v2 & 0x2000000000000) == 0)
    {
      return this;
    }

LABEL_102:
    v53 = *(a2 + 187);
    *(this + 188) = v3 | 0x2000000000000;
    *(this + 187) = v53;
    return this;
  }

LABEL_101:
  v52 = *(a2 + 185);
  v3 |= 0x800000000000uLL;
  *(this + 188) = v3;
  *(this + 185) = v52;
  if ((*(a2 + 188) & 0x2000000000000) != 0)
  {
    goto LABEL_102;
  }

  return this;
}

CMMsl *CMMsl::RelativeDeviceMotionComplexTransition::operator=(CMMsl *a1, const CMMsl::RelativeDeviceMotionComplexTransition *a2)
{
  if (a1 != a2)
  {
    CMMsl::RelativeDeviceMotionComplexTransition::RelativeDeviceMotionComplexTransition(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::RelativeDeviceMotionComplexTransition *a2, CMMsl::RelativeDeviceMotionComplexTransition *a3)
{
  v3 = *(this + 188);
  *(this + 188) = *(a2 + 188);
  *(a2 + 188) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v4;
  LODWORD(v4) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v4;
  LODWORD(v4) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v4;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LODWORD(v4) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v4;
  LODWORD(v4) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v4;
  LODWORD(v4) = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v4;
  LODWORD(v4) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  LODWORD(v4) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v4;
  LODWORD(v4) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v4;
  LODWORD(v4) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v4;
  LODWORD(v4) = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v4;
  LODWORD(v4) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v4;
  LODWORD(v4) = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v4;
  LODWORD(v4) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v4;
  LODWORD(v4) = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v4;
  LODWORD(v4) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v4;
  LODWORD(v4) = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v4;
  LODWORD(v4) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v4;
  LOBYTE(v3) = *(this + 183);
  *(this + 183) = *(a2 + 183);
  *(a2 + 183) = v3;
  LODWORD(v4) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  LODWORD(v4) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v4;
  LOBYTE(v3) = *(this + 182);
  *(this + 182) = *(a2 + 182);
  *(a2 + 182) = v3;
  LOBYTE(v3) = *(this + 184);
  *(this + 184) = *(a2 + 184);
  *(a2 + 184) = v3;
  LODWORD(v3) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  LODWORD(v4) = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v4;
  LODWORD(v4) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v4;
  LOBYTE(v3) = *(this + 186);
  *(this + 186) = *(a2 + 186);
  *(a2 + 186) = v3;
  LOBYTE(v3) = *(this + 181);
  *(this + 181) = *(a2 + 181);
  *(a2 + 181) = v3;
  LOBYTE(v3) = *(this + 180);
  *(this + 180) = *(a2 + 180);
  *(a2 + 180) = v3;
  LODWORD(v4) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  LODWORD(v4) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v4;
  result = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = result;
  LODWORD(v3) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v3;
  LOBYTE(v3) = *(this + 185);
  *(this + 185) = *(a2 + 185);
  *(a2 + 185) = v3;
  LOBYTE(v3) = *(this + 187);
  *(this + 187) = *(a2 + 187);
  *(a2 + 187) = v3;
  return result;
}

float CMMsl::RelativeDeviceMotionComplexTransition::RelativeDeviceMotionComplexTransition(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C230C8;
  *(a1 + 188) = *(a2 + 188);
  *(a2 + 188) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 183) = *(a2 + 183);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 182) = *(a2 + 182);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 186) = *(a2 + 186);
  *(a1 + 181) = *(a2 + 181);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 176) = *(a2 + 176);
  result = *(a2 + 172);
  *(a1 + 172) = result;
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 187) = *(a2 + 187);
  return result;
}

CMMsl *CMMsl::RelativeDeviceMotionComplexTransition::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::RelativeDeviceMotionComplexTransition::RelativeDeviceMotionComplexTransition(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::RelativeDeviceMotionComplexTransition::formatText(CMMsl::RelativeDeviceMotionComplexTransition *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 188);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "auxHorizontalRotation", *(this + 4));
    v5 = *(this + 188);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_57;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "auxHorizontalTranslation", *(this + 5));
  v5 = *(this + 188);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "auxOmegaInertial_X", *(this + 6));
  v5 = *(this + 188);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(a2, "auxOmegaInertial_Y", *(this + 7));
  v5 = *(this + 188);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(a2, "auxOmegaInertial_Z", *(this + 8));
  v5 = *(this + 188);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "auxUserAccelInertial_X", *(this + 9));
  v5 = *(this + 188);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(a2, "auxUserAccelInertial_Y", *(this + 10));
  v5 = *(this + 188);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "auxUserAccelInertial_Z", *(this + 11));
  v5 = *(this + 188);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "auxVerticalRotation", *(this + 12));
  v5 = *(this + 188);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x40000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(a2, "auxVerticalTranslation", *(this + 13));
  v5 = *(this + 188);
  if ((v5 & 0x40000000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_66;
  }

LABEL_65:
  v7 = *(this + 180);
  PB::TextFormatter::format(a2, "blockHeadTurnFalsePositive");
  v5 = *(this + 188);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(a2, "bodyTurnDetectionVerticalRotationSrc", *(this + 14));
  v5 = *(this + 188);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(a2, "bodyTurnMaximaBaseline", *(this + 15));
  v5 = *(this + 188);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x80000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_69;
  }

LABEL_68:
  v8 = *(this + 16);
  PB::TextFormatter::format(a2, "counterBodyTurnAboveBaseline");
  v5 = *(this + 188);
  if ((v5 & 0x80000000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_70;
  }

LABEL_69:
  v9 = *(this + 181);
  PB::TextFormatter::format(a2, "hasRecentHeadTurn");
  v5 = *(this + 188);
  if ((v5 & 0x4000) == 0)
  {
LABEL_17:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(a2, "horizontalRotationSimilarity", *(this + 17));
  v5 = *(this + 188);
  if ((v5 & 0x8000) == 0)
  {
LABEL_18:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(a2, "horizontalRotationSimilarityBaseline", *(this + 18));
  v5 = *(this + 188);
  if ((v5 & 0x10000) == 0)
  {
LABEL_19:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(a2, "horizontalRotationSimilarityThreshold", *(this + 19));
  v5 = *(this + 188);
  if ((v5 & 0x20000) == 0)
  {
LABEL_20:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(a2, "horizontalTranslationSimilarity", *(this + 20));
  v5 = *(this + 188);
  if ((v5 & 0x40000) == 0)
  {
LABEL_21:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(a2, "horizontalTranslationSimilarityBaseline", *(this + 21));
  v5 = *(this + 188);
  if ((v5 & 0x80000) == 0)
  {
LABEL_22:
    if ((v5 & 0x100000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_76;
  }

LABEL_75:
  PB::TextFormatter::format(a2, "horizontalTranslationSimilarityThreshold", *(this + 22));
  v5 = *(this + 188);
  if ((v5 & 0x100000000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x200000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_77;
  }

LABEL_76:
  v10 = *(this + 182);
  PB::TextFormatter::format(a2, "inBodyTurn");
  v5 = *(this + 188);
  if ((v5 & 0x200000000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x400000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_78;
  }

LABEL_77:
  v11 = *(this + 183);
  PB::TextFormatter::format(a2, "inComplexTransitionState");
  v5 = *(this + 188);
  if ((v5 & 0x400000000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_79;
  }

LABEL_78:
  v12 = *(this + 184);
  PB::TextFormatter::format(a2, "inStrongBodyTurn");
  v5 = *(this + 188);
  if ((v5 & 0x100000) == 0)
  {
LABEL_26:
    if ((v5 & 0x800000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_80;
  }

LABEL_79:
  v13 = *(this + 23);
  PB::TextFormatter::format(a2, "longBodyTurnCounter");
  v5 = *(this + 188);
  if ((v5 & 0x800000000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x1000000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_81;
  }

LABEL_80:
  v14 = *(this + 185);
  PB::TextFormatter::format(a2, "longBodyTurnState");
  v5 = *(this + 188);
  if ((v5 & 0x1000000000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_82;
  }

LABEL_81:
  v15 = *(this + 186);
  PB::TextFormatter::format(a2, "overrideHeadTurn");
  v5 = *(this + 188);
  if ((v5 & 0x200000) == 0)
  {
LABEL_29:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_83;
  }

LABEL_82:
  PB::TextFormatter::format(a2, "srcHorizontalRotation", *(this + 24));
  v5 = *(this + 188);
  if ((v5 & 0x400000) == 0)
  {
LABEL_30:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_84;
  }

LABEL_83:
  PB::TextFormatter::format(a2, "srcHorizontalTranslation", *(this + 25));
  v5 = *(this + 188);
  if ((v5 & 0x800000) == 0)
  {
LABEL_31:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_85;
  }

LABEL_84:
  PB::TextFormatter::format(a2, "srcOmegaInertial_X", *(this + 26));
  v5 = *(this + 188);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_86;
  }

LABEL_85:
  PB::TextFormatter::format(a2, "srcOmegaInertial_Y", *(this + 27));
  v5 = *(this + 188);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_87;
  }

LABEL_86:
  PB::TextFormatter::format(a2, "srcOmegaInertial_Z", *(this + 28));
  v5 = *(this + 188);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_88;
  }

LABEL_87:
  PB::TextFormatter::format(a2, "srcUserAccelInertial_X", *(this + 29));
  v5 = *(this + 188);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_89;
  }

LABEL_88:
  PB::TextFormatter::format(a2, "srcUserAccelInertial_Y", *(this + 30));
  v5 = *(this + 188);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_90;
  }

LABEL_89:
  PB::TextFormatter::format(a2, "srcUserAccelInertial_Z", *(this + 31));
  v5 = *(this + 188);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_37:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_91;
  }

LABEL_90:
  PB::TextFormatter::format(a2, "srcVertToHrzRotRatio", *(this + 32));
  v5 = *(this + 188);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_38:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_92;
  }

LABEL_91:
  PB::TextFormatter::format(a2, "srcVerticalRotation", *(this + 33));
  v5 = *(this + 188);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_39:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_93;
  }

LABEL_92:
  PB::TextFormatter::format(a2, "srcVerticalTranslation", *(this + 34));
  v5 = *(this + 188);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_40:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_94;
  }

LABEL_93:
  PB::TextFormatter::format(a2, "srcYawRotationExtremaBuffer", *(this + 35));
  v5 = *(this + 188);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_41:
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_95;
  }

LABEL_94:
  PB::TextFormatter::format(a2, "srcYawRotationMaximaBaseline", *(this + 36));
  v5 = *(this + 188);
  if ((v5 & 1) == 0)
  {
LABEL_42:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_96;
  }

LABEL_95:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  v5 = *(this + 188);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_43:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_97;
  }

LABEL_96:
  PB::TextFormatter::format(a2, "verticalRotationSimilarity", *(this + 37));
  v5 = *(this + 188);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_44:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_98;
  }

LABEL_97:
  PB::TextFormatter::format(a2, "verticalRotationSimilarityBaseline", *(this + 38));
  v5 = *(this + 188);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_45:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_99;
  }

LABEL_98:
  PB::TextFormatter::format(a2, "verticalRotationSimilarityThreshold", *(this + 39));
  v5 = *(this + 188);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_46:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_100;
  }

LABEL_99:
  PB::TextFormatter::format(a2, "verticalTranslationSimilarity", *(this + 40));
  v5 = *(this + 188);
  if ((v5 & 0x4000000000) == 0)
  {
LABEL_47:
    if ((v5 & 0x8000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_101;
  }

LABEL_100:
  PB::TextFormatter::format(a2, "verticalTranslationSimilarityBaseline", *(this + 41));
  v5 = *(this + 188);
  if ((v5 & 0x8000000000) == 0)
  {
LABEL_48:
    if ((v5 & 0x10000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_102;
  }

LABEL_101:
  PB::TextFormatter::format(a2, "verticalTranslationSimilarityThreshold", *(this + 42));
  v5 = *(this + 188);
  if ((v5 & 0x10000000000) == 0)
  {
LABEL_49:
    if ((v5 & 0x20000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_103;
  }

LABEL_102:
  PB::TextFormatter::format(a2, "yawRateSimilarity1000ms", *(this + 43));
  v5 = *(this + 188);
  if ((v5 & 0x20000000000) == 0)
  {
LABEL_50:
    if ((v5 & 0x2000000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_103:
  PB::TextFormatter::format(a2, "yawRateSimilarity200ms", *(this + 44));
  if ((*(this + 188) & 0x2000000000000) != 0)
  {
LABEL_51:
    v6 = *(this + 187);
    PB::TextFormatter::format(a2, "yawRateSimilarityState");
  }

LABEL_52:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::RelativeDeviceMotionComplexTransition::readFrom(CMMsl::RelativeDeviceMotionComplexTransition *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_218:
    v126 = v4 ^ 1;
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
        goto LABEL_218;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 188) |= 1uLL;
          v22 = *(a2 + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 1) = *(*a2 + v22);
          v23 = *(a2 + 1) + 8;
          goto LABEL_205;
        case 2u:
          *(this + 188) |= 0x800000uLL;
          v74 = *(a2 + 1);
          if (v74 > 0xFFFFFFFFFFFFFFFBLL || v74 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 26) = *(*a2 + v74);
          goto LABEL_204;
        case 3u:
          *(this + 188) |= 0x1000000uLL;
          v70 = *(a2 + 1);
          if (v70 > 0xFFFFFFFFFFFFFFFBLL || v70 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 27) = *(*a2 + v70);
          goto LABEL_204;
        case 4u:
          *(this + 188) |= 0x2000000uLL;
          v72 = *(a2 + 1);
          if (v72 > 0xFFFFFFFFFFFFFFFBLL || v72 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 28) = *(*a2 + v72);
          goto LABEL_204;
        case 5u:
          *(this + 188) |= 8uLL;
          v64 = *(a2 + 1);
          if (v64 > 0xFFFFFFFFFFFFFFFBLL || v64 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 6) = *(*a2 + v64);
          goto LABEL_204;
        case 6u:
          *(this + 188) |= 0x10uLL;
          v82 = *(a2 + 1);
          if (v82 > 0xFFFFFFFFFFFFFFFBLL || v82 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 7) = *(*a2 + v82);
          goto LABEL_204;
        case 7u:
          *(this + 188) |= 0x20uLL;
          v85 = *(a2 + 1);
          if (v85 > 0xFFFFFFFFFFFFFFFBLL || v85 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 8) = *(*a2 + v85);
          goto LABEL_204;
        case 8u:
          *(this + 188) |= 0x40000000uLL;
          v73 = *(a2 + 1);
          if (v73 > 0xFFFFFFFFFFFFFFFBLL || v73 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 33) = *(*a2 + v73);
          goto LABEL_204;
        case 9u:
          *(this + 188) |= 0x200uLL;
          v88 = *(a2 + 1);
          if (v88 > 0xFFFFFFFFFFFFFFFBLL || v88 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 12) = *(*a2 + v88);
          goto LABEL_204;
        case 0xAu:
          *(this + 188) |= 0x200000uLL;
          v67 = *(a2 + 1);
          if (v67 > 0xFFFFFFFFFFFFFFFBLL || v67 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 24) = *(*a2 + v67);
          goto LABEL_204;
        case 0xBu:
          *(this + 188) |= 2uLL;
          v87 = *(a2 + 1);
          if (v87 > 0xFFFFFFFFFFFFFFFBLL || v87 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 4) = *(*a2 + v87);
          goto LABEL_204;
        case 0xCu:
          *(this + 188) |= 0x4000000uLL;
          v59 = *(a2 + 1);
          if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 29) = *(*a2 + v59);
          goto LABEL_204;
        case 0xDu:
          *(this + 188) |= 0x8000000uLL;
          v66 = *(a2 + 1);
          if (v66 > 0xFFFFFFFFFFFFFFFBLL || v66 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 30) = *(*a2 + v66);
          goto LABEL_204;
        case 0xEu:
          *(this + 188) |= 0x10000000uLL;
          v84 = *(a2 + 1);
          if (v84 > 0xFFFFFFFFFFFFFFFBLL || v84 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 31) = *(*a2 + v84);
          goto LABEL_204;
        case 0xFu:
          *(this + 188) |= 0x40uLL;
          v50 = *(a2 + 1);
          if (v50 > 0xFFFFFFFFFFFFFFFBLL || v50 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 9) = *(*a2 + v50);
          goto LABEL_204;
        case 0x10u:
          *(this + 188) |= 0x80uLL;
          v71 = *(a2 + 1);
          if (v71 > 0xFFFFFFFFFFFFFFFBLL || v71 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 10) = *(*a2 + v71);
          goto LABEL_204;
        case 0x11u:
          *(this + 188) |= 0x100uLL;
          v48 = *(a2 + 1);
          if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 11) = *(*a2 + v48);
          goto LABEL_204;
        case 0x12u:
          *(this + 188) |= 0x80000000uLL;
          v76 = *(a2 + 1);
          if (v76 > 0xFFFFFFFFFFFFFFFBLL || v76 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 34) = *(*a2 + v76);
          goto LABEL_204;
        case 0x13u:
          *(this + 188) |= 0x400uLL;
          v86 = *(a2 + 1);
          if (v86 > 0xFFFFFFFFFFFFFFFBLL || v86 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 13) = *(*a2 + v86);
          goto LABEL_204;
        case 0x14u:
          *(this + 188) |= 0x400000uLL;
          v94 = *(a2 + 1);
          if (v94 > 0xFFFFFFFFFFFFFFFBLL || v94 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 25) = *(*a2 + v94);
          goto LABEL_204;
        case 0x15u:
          *(this + 188) |= 4uLL;
          v81 = *(a2 + 1);
          if (v81 > 0xFFFFFFFFFFFFFFFBLL || v81 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 5) = *(*a2 + v81);
          goto LABEL_204;
        case 0x16u:
          *(this + 188) |= 0x400000000uLL;
          v83 = *(a2 + 1);
          if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 37) = *(*a2 + v83);
          goto LABEL_204;
        case 0x17u:
          *(this + 188) |= 0x4000uLL;
          v92 = *(a2 + 1);
          if (v92 > 0xFFFFFFFFFFFFFFFBLL || v92 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 17) = *(*a2 + v92);
          goto LABEL_204;
        case 0x18u:
          *(this + 188) |= 0x2000000000uLL;
          v99 = *(a2 + 1);
          if (v99 > 0xFFFFFFFFFFFFFFFBLL || v99 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 40) = *(*a2 + v99);
          goto LABEL_204;
        case 0x19u:
          *(this + 188) |= 0x20000uLL;
          v69 = *(a2 + 1);
          if (v69 > 0xFFFFFFFFFFFFFFFBLL || v69 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 20) = *(*a2 + v69);
          goto LABEL_204;
        case 0x1Au:
          *(this + 188) |= 0x800000000uLL;
          v68 = *(a2 + 1);
          if (v68 > 0xFFFFFFFFFFFFFFFBLL || v68 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 38) = *(*a2 + v68);
          goto LABEL_204;
        case 0x1Bu:
          *(this + 188) |= 0x8000uLL;
          v111 = *(a2 + 1);
          if (v111 > 0xFFFFFFFFFFFFFFFBLL || v111 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 18) = *(*a2 + v111);
          goto LABEL_204;
        case 0x1Cu:
          *(this + 188) |= 0x4000000000uLL;
          v46 = *(a2 + 1);
          if (v46 > 0xFFFFFFFFFFFFFFFBLL || v46 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 41) = *(*a2 + v46);
          goto LABEL_204;
        case 0x1Du:
          *(this + 188) |= 0x40000uLL;
          v100 = *(a2 + 1);
          if (v100 > 0xFFFFFFFFFFFFFFFBLL || v100 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 21) = *(*a2 + v100);
          goto LABEL_204;
        case 0x1Eu:
          *(this + 188) |= 0x1000000000uLL;
          v101 = *(a2 + 1);
          if (v101 > 0xFFFFFFFFFFFFFFFBLL || v101 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 39) = *(*a2 + v101);
          goto LABEL_204;
        case 0x1Fu:
          *(this + 188) |= 0x10000uLL;
          v89 = *(a2 + 1);
          if (v89 > 0xFFFFFFFFFFFFFFFBLL || v89 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 19) = *(*a2 + v89);
          goto LABEL_204;
        case 0x20u:
          *(this + 188) |= 0x8000000000uLL;
          v75 = *(a2 + 1);
          if (v75 > 0xFFFFFFFFFFFFFFFBLL || v75 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 42) = *(*a2 + v75);
          goto LABEL_204;
        case 0x21u:
          *(this + 188) |= 0x80000uLL;
          v90 = *(a2 + 1);
          if (v90 > 0xFFFFFFFFFFFFFFFBLL || v90 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 22) = *(*a2 + v90);
          goto LABEL_204;
        case 0x22u:
          *(this + 188) |= 0x200000000000uLL;
          v51 = *(a2 + 1);
          if (v51 >= *(a2 + 2))
          {
            v54 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v52 = v51 + 1;
            v53 = *(*a2 + v51);
            *(a2 + 1) = v52;
            v54 = v53 != 0;
          }

          *(this + 183) = v54;
          goto LABEL_206;
        case 0x23u:
          *(this + 188) |= 0x800uLL;
          v47 = *(a2 + 1);
          if (v47 > 0xFFFFFFFFFFFFFFFBLL || v47 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 14) = *(*a2 + v47);
          goto LABEL_204;
        case 0x24u:
          *(this + 188) |= 0x1000uLL;
          v41 = *(a2 + 1);
          if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 15) = *(*a2 + v41);
          goto LABEL_204;
        case 0x25u:
          *(this + 188) |= 0x100000000000uLL;
          v42 = *(a2 + 1);
          if (v42 >= *(a2 + 2))
          {
            v45 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v43 = v42 + 1;
            v44 = *(*a2 + v42);
            *(a2 + 1) = v43;
            v45 = v44 != 0;
          }

          *(this + 182) = v45;
          goto LABEL_206;
        case 0x26u:
          *(this + 188) |= 0x400000000000uLL;
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

          *(this + 184) = v31;
          goto LABEL_206;
        case 0x27u:
          *(this + 188) |= 0x2000uLL;
          v103 = *(a2 + 1);
          v102 = *(a2 + 2);
          v104 = *a2;
          if (v103 <= 0xFFFFFFFFFFFFFFF5 && v103 + 10 <= v102)
          {
            v105 = 0;
            v106 = 0;
            v107 = 0;
            v108 = (v104 + v103);
            v109 = v103 + 1;
            do
            {
              *(a2 + 1) = v109;
              v110 = *v108++;
              v107 |= (v110 & 0x7F) << v105;
              if ((v110 & 0x80) == 0)
              {
                goto LABEL_216;
              }

              v105 += 7;
              ++v109;
              v14 = v106++ > 8;
            }

            while (!v14);
LABEL_202:
            LODWORD(v107) = 0;
            goto LABEL_216;
          }

          v119 = 0;
          v120 = 0;
          v107 = 0;
          v121 = (v104 + v103);
          v18 = v102 >= v103;
          v122 = v102 - v103;
          if (!v18)
          {
            v122 = 0;
          }

          v123 = v103 + 1;
          while (2)
          {
            if (v122)
            {
              v124 = *v121;
              *(a2 + 1) = v123;
              v107 |= (v124 & 0x7F) << v119;
              if (v124 < 0)
              {
                v119 += 7;
                ++v121;
                --v122;
                ++v123;
                v14 = v120++ > 8;
                if (v14)
                {
                  goto LABEL_202;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v107) = 0;
              }
            }

            else
            {
              LODWORD(v107) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_216:
          *(this + 16) = v107;
          goto LABEL_206;
        case 0x28u:
          *(this + 188) |= 0x100000000uLL;
          v93 = *(a2 + 1);
          if (v93 > 0xFFFFFFFFFFFFFFFBLL || v93 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 35) = *(*a2 + v93);
          goto LABEL_204;
        case 0x29u:
          *(this + 188) |= 0x200000000uLL;
          v65 = *(a2 + 1);
          if (v65 > 0xFFFFFFFFFFFFFFFBLL || v65 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 36) = *(*a2 + v65);
          goto LABEL_204;
        case 0x2Au:
          *(this + 188) |= 0x1000000000000uLL;
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

          *(this + 186) = v80;
          goto LABEL_206;
        case 0x2Bu:
          *(this + 188) |= 0x80000000000uLL;
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

          *(this + 181) = v98;
          goto LABEL_206;
        case 0x2Cu:
          *(this + 188) |= 0x40000000000uLL;
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

          *(this + 180) = v27;
          goto LABEL_206;
        case 0x2Du:
          *(this + 188) |= 0x20000000uLL;
          v49 = *(a2 + 1);
          if (v49 > 0xFFFFFFFFFFFFFFFBLL || v49 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 32) = *(*a2 + v49);
          goto LABEL_204;
        case 0x2Eu:
          *(this + 188) |= 0x20000000000uLL;
          v91 = *(a2 + 1);
          if (v91 > 0xFFFFFFFFFFFFFFFBLL || v91 + 4 > *(a2 + 2))
          {
            goto LABEL_170;
          }

          *(this + 44) = *(*a2 + v91);
          goto LABEL_204;
        case 0x2Fu:
          *(this + 188) |= 0x10000000000uLL;
          v112 = *(a2 + 1);
          if (v112 <= 0xFFFFFFFFFFFFFFFBLL && v112 + 4 <= *(a2 + 2))
          {
            *(this + 43) = *(*a2 + v112);
LABEL_204:
            v23 = *(a2 + 1) + 4;
LABEL_205:
            *(a2 + 1) = v23;
          }

          else
          {
LABEL_170:
            *(a2 + 24) = 1;
          }

          goto LABEL_206;
        case 0x30u:
          *(this + 188) |= 0x100000uLL;
          v33 = *(a2 + 1);
          v32 = *(a2 + 2);
          v34 = *a2;
          if (v33 <= 0xFFFFFFFFFFFFFFF5 && v33 + 10 <= v32)
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = (v34 + v33);
            v39 = v33 + 1;
            do
            {
              *(a2 + 1) = v39;
              v40 = *v38++;
              v37 |= (v40 & 0x7F) << v35;
              if ((v40 & 0x80) == 0)
              {
                goto LABEL_213;
              }

              v35 += 7;
              ++v39;
              v14 = v36++ > 8;
            }

            while (!v14);
LABEL_180:
            LODWORD(v37) = 0;
            goto LABEL_213;
          }

          v113 = 0;
          v114 = 0;
          v37 = 0;
          v115 = (v34 + v33);
          v18 = v32 >= v33;
          v116 = v32 - v33;
          if (!v18)
          {
            v116 = 0;
          }

          v117 = v33 + 1;
          break;
        case 0x31u:
          *(this + 188) |= 0x800000000000uLL;
          v55 = *(a2 + 1);
          if (v55 >= *(a2 + 2))
          {
            v58 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v56 = v55 + 1;
            v57 = *(*a2 + v55);
            *(a2 + 1) = v56;
            v58 = v57 != 0;
          }

          *(this + 185) = v58;
          goto LABEL_206;
        case 0x32u:
          *(this + 188) |= 0x2000000000000uLL;
          v60 = *(a2 + 1);
          if (v60 >= *(a2 + 2))
          {
            v63 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v61 = v60 + 1;
            v62 = *(*a2 + v60);
            *(a2 + 1) = v61;
            v63 = v62 != 0;
          }

          *(this + 187) = v63;
          goto LABEL_206;
        default:
          goto LABEL_17;
      }

      while (1)
      {
        if (!v116)
        {
          LODWORD(v37) = 0;
          *(a2 + 24) = 1;
          goto LABEL_213;
        }

        v118 = *v115;
        *(a2 + 1) = v117;
        v37 |= (v118 & 0x7F) << v113;
        if ((v118 & 0x80) == 0)
        {
          break;
        }

        v113 += 7;
        ++v115;
        --v116;
        ++v117;
        v14 = v114++ > 8;
        if (v14)
        {
          goto LABEL_180;
        }
      }

      if (*(a2 + 24))
      {
        LODWORD(v37) = 0;
      }

LABEL_213:
      *(this + 23) = v37;
LABEL_206:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_218;
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
        goto LABEL_218;
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
      goto LABEL_206;
    }

    v126 = 0;
  }

  return v126 & 1;
}